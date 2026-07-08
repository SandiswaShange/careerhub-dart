import 'package:flutter/material.dart';

class JobStatusBadge extends StatelessWidget {
  final bool isOpen;

  const JobStatusBadge({super.key, required this.isOpen});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return Chip(
      label: Text(
        isOpen ? "Open" : "Closed",
        style: textTheme.labelSmall?.copyWith(
          color: isOpen
              ? colorScheme.onPrimaryContainer
              : colorScheme.onErrorContainer,
        ),
      ),
      backgroundColor: isOpen
          ? colorScheme.primaryContainer
          : colorScheme.errorContainer,
    );
  }
}
