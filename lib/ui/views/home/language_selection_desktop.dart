part of language_selection_view;

class _LanguageSelectionDesktop extends StatelessWidget {
  final LanguageSelectionViewModel viewModel;
  const _LanguageSelectionDesktop(this.viewModel);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Desktop'),
        backgroundColor: Colors.amber,
      ),
      body: const Center(),
    );
  }
}
