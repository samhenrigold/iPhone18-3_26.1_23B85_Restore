@interface INIntentSlotDescription
@end

@implementation INIntentSlotDescription

void __92__INIntentSlotDescription_Workflow__wf_updatedParameterDefinition_parameterClass_localizer___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [*(*(*(a1 + 32) + 8) + 40) objectForKey:v5];

  if (!v7)
  {
    v8 = *(*(*(a1 + 32) + 8) + 40);
    v13 = v5;
    v14[0] = v6;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    v10 = [v8 definitionByAddingEntriesInDictionary:v9];
    v11 = *(*(a1 + 32) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;
  }
}

@end