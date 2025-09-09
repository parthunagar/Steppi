part of language_selection_view;
class _LanguageSelectionTablet extends StatelessWidget {
  final LanguageSelectionViewModel viewModel;
  _LanguageSelectionTablet(this.viewModel);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tablet'),
        backgroundColor: Colors.indigo,
      ),
      body: const Center(
        
      ),
      
    );
  }
}
