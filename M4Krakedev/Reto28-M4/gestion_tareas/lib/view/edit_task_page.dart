import 'package:flutter/material.dart';
import '../models/task.dart';
import '../services/database_Helper.dart';

class EditTaskPage extends StatefulWidget {
  final Task task;
  const EditTaskPage({super.key, required this.task});

  @override
  State<EditTaskPage> createState() => _EditTaskPageState();
}

class _EditTaskPageState extends State<EditTaskPage> {
  late TextEditingController titleController;
  late TextEditingController descriptionController;
  late TextEditingController dueDateController;
  late String status;

  @override
  void initState() {
    super.initState();
    titleController = TextEditingController(text: widget.task.title);
    descriptionController =
        TextEditingController(text: widget.task.description);
    dueDateController = TextEditingController(text: widget.task.dueDate);
    status = widget.task.status;
  }

  @override
  void dispose() {
    titleController.dispose();
    descriptionController.dispose();
    dueDateController.dispose();
    super.dispose();
  }

  String? _validateDate(String? value) {
    if (value == null || value.isEmpty) return 'La fecha es obligatoria';
    final regex = RegExp(r'^\d{4}-\d{2}-\d{2}$');
    if (!regex.hasMatch(value)) return 'Formato inválido (YYYY-MM-DD)';
    return null;
  }

  Future<void> _selectDate() async {
    DateTime now = DateTime.now();
    DateTime initialDate;
    try {
      initialDate = DateTime.parse(dueDateController.text);
    } catch (_) {
      initialDate = now;
    }

    DateTime? picked = await showDatePicker(
      context: context,
      initialDate: initialDate,
      firstDate: DateTime(now.year - 5),
      lastDate: DateTime(now.year + 5),
    );
    if (picked != null) {
      String formatted = picked.toIso8601String().split('T')[0];
      setState(() {
        dueDateController.text = formatted;
      });
    }
  }

  final _formKey = GlobalKey<FormState>();

  void _updateTask() async {
    if (_formKey.currentState!.validate()) {
      final updatedTask = Task(
        id: widget.task.id,
        title: titleController.text.trim(),
        description: descriptionController.text.trim(),
        dueDate: dueDateController.text.trim(),
        status: status,
      );
      await DatabaseHelper().updateTask(updatedTask);
      Navigator.pop(context, true);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Editar Tarea')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              TextFormField(
                controller: titleController,
                decoration: const InputDecoration(labelText: 'Título'),
                validator: (value) => value == null || value.isEmpty
                    ? 'El título es obligatorio'
                    : null,
              ),
              const SizedBox(height: 12),
              TextFormField(
                controller: descriptionController,
                decoration: const InputDecoration(labelText: 'Descripción'),
                maxLines: 3,
              ),
              const SizedBox(height: 12),
              TextFormField(
                controller: dueDateController,
                decoration: InputDecoration(
                  labelText: 'Fecha de vencimiento (YYYY-MM-DD)',
                  suffixIcon: IconButton(
                    icon: const Icon(Icons.calendar_today),
                    onPressed: _selectDate,
                  ),
                ),
                validator: _validateDate,
                readOnly: true,
              ),
              const SizedBox(height: 12),
              DropdownButtonFormField<String>(
                value: status,
                items: const [
                  DropdownMenuItem(
                      value: 'Pendiente', child: Text('Pendiente')),
                  DropdownMenuItem(
                      value: 'Completada', child: Text('Completada')),
                ],
                onChanged: (val) {
                  if (val != null) {
                    setState(() {
                      status = val;
                    });
                  }
                },
                decoration: const InputDecoration(labelText: 'Estado'),
              ),
              const SizedBox(height: 24),
              ElevatedButton(
                onPressed: _updateTask,
                child: const Text('Actualizar'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
