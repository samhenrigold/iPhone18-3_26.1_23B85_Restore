@interface ICHTMLSearchIndexerDataSource
@end

@implementation ICHTMLSearchIndexerDataSource

void __55__ICHTMLSearchIndexerDataSource_App__mainThreadContext__block_invoke(uint64_t a1, uint64_t a2)
{
  if (_UIApplicationIsExtension())
  {
    v3 = kICSearchTableRowAttribute_block_invoke_mainNoteContext;
    if (!kICSearchTableRowAttribute_block_invoke_mainNoteContext)
    {
      v4 = [objc_alloc(MEMORY[0x277D35930]) initForMainContext];
      v5 = kICSearchTableRowAttribute_block_invoke_mainNoteContext;
      kICSearchTableRowAttribute_block_invoke_mainNoteContext = v4;

      v3 = kICSearchTableRowAttribute_block_invoke_mainNoteContext;
    }

    v6 = [v3 managedObjectContext];
    v7 = *(*(a1 + 32) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }

  else
  {
    v13 = [NSClassFromString(&cfstr_Notesapp.isa) sharedNotesApp];
    v9 = [v13 noteContext];
    v10 = [v9 managedObjectContext];
    v11 = *(*(a1 + 32) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;

    v8 = v13;
  }
}

@end