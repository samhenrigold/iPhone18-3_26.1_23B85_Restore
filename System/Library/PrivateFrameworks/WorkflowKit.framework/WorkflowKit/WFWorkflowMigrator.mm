@interface WFWorkflowMigrator
+ (id)migrationClasses;
+ (id)migrationClassesWithDependencies;
+ (id)orderedMigrationClassesWithoutDependencies;
+ (void)initialize;
+ (void)migrateWorkflowIfNeeded:(id)needed completion:(id)completion;
+ (void)registerAllWorkflowKitMigrationClasses;
+ (void)registerMigrationClass:(Class)class;
@end

@implementation WFWorkflowMigrator

+ (id)migrationClassesWithDependencies
{
  migrationClasses = [self migrationClasses];
  v3 = [migrationClasses if_compactMap:&__block_literal_global_248];

  return v3;
}

void *__54__WFWorkflowMigrator_migrationClassesWithDependencies__block_invoke(uint64_t a1, void *a2)
{
  v3 = objc_opt_self();
  v4 = [v3 migrationClassDependencies];
  if (![v4 count])
  {
    a2 = 0;
  }

  v5 = a2;

  return a2;
}

+ (id)orderedMigrationClassesWithoutDependencies
{
  v3 = objc_alloc(MEMORY[0x1E695DFA0]);
  migrationClasses = [self migrationClasses];
  v5 = [migrationClasses if_compactMap:&__block_literal_global_246];
  v6 = [v3 initWithSet:v5];

  return v6;
}

id __64__WFWorkflowMigrator_orderedMigrationClassesWithoutDependencies__block_invoke(uint64_t a1, void *a2)
{
  v3 = objc_opt_self();
  v4 = [v3 migrationClassDependencies];

  if (v4 && [v4 count])
  {
    v5 = 0;
  }

  else
  {
    v5 = a2;
  }

  return v5;
}

+ (void)migrateWorkflowIfNeeded:(id)needed completion:(id)completion
{
  v69 = *MEMORY[0x1E69E9840];
  neededCopy = needed;
  completionCopy = completion;
  orderedMigrationClassesWithoutDependencies = [self orderedMigrationClassesWithoutDependencies];
  selfCopy = self;
  [self migrationClassesWithDependencies];
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  obj = v64 = 0u;
  v40 = [obj countByEnumeratingWithState:&v61 objects:v68 count:16];
  if (v40)
  {
    v37 = *v62;
    do
    {
      v6 = 0;
      do
      {
        if (*v62 != v37)
        {
          objc_enumerationMutation(obj);
        }

        v43 = v6;
        v7 = *(*(&v61 + 1) + 8 * v6);
        v8 = [objc_alloc(MEMORY[0x1E695DFA0]) initWithObject:v7];
        v57 = 0u;
        v58 = 0u;
        v59 = 0u;
        v60 = 0u;
        v9 = obj;
        v10 = [v9 countByEnumeratingWithState:&v57 objects:v67 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v58;
          do
          {
            for (i = 0; i != v11; ++i)
            {
              if (*v58 != v12)
              {
                objc_enumerationMutation(v9);
              }

              v14 = *(*(&v57 + 1) + 8 * i);
              migrationClassDependencies = [v7 migrationClassDependencies];
              if ([migrationClassDependencies containsObject:v14])
              {
              }

              else
              {
                migrationClassDependencies2 = [v14 migrationClassDependencies];
                v17 = [migrationClassDependencies2 containsObject:v7];

                if (!v17)
                {
                  continue;
                }
              }

              [v8 addObject:v14];
            }

            v11 = [v9 countByEnumeratingWithState:&v57 objects:v67 count:16];
          }

          while (v11);
        }

        [v8 sortUsingComparator:&__block_literal_global_233];
        [orderedMigrationClassesWithoutDependencies unionOrderedSet:v8];

        v6 = v43 + 1;
      }

      while (v43 + 1 != v40);
      v40 = [v9 countByEnumeratingWithState:&v61 objects:v68 count:16];
    }

    while (v40);
  }

  v18 = neededCopy;
  v44 = [neededCopy objectForKey:@"WFWorkflowClientVersion"];
  v41 = objc_opt_new();
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v19 = orderedMigrationClassesWithoutDependencies;
  v20 = [v19 countByEnumeratingWithState:&v53 objects:v66 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v54;
    do
    {
      for (j = 0; j != v21; ++j)
      {
        if (*v54 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v53 + 1) + 8 * j);
        v49 = 0u;
        v50 = 0u;
        v51 = 0u;
        v52 = 0u;
        migrationClassDependencies3 = [v24 migrationClassDependencies];
        v26 = [migrationClassDependencies3 countByEnumeratingWithState:&v49 objects:v65 count:16];
        if (v26)
        {
          v27 = v26;
          v28 = *v50;
          do
          {
            v29 = 0;
            do
            {
              if (*v50 != v28)
              {
                objc_enumerationMutation(migrationClassDependencies3);
              }

              v30 = [v19 indexOfObject:*(*(&v49 + 1) + 8 * v29)];
              if (v30 >= [v19 indexOfObject:v24])
              {
                currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
                [currentHandler handleFailureInMethod:a2 object:selfCopy file:@"WFWorkflowMigrator.m" lineNumber:175 description:@"Dependent migration class is either missing or part of a circular dependency."];
              }

              ++v29;
            }

            while (v27 != v29);
            v27 = [migrationClassDependencies3 countByEnumeratingWithState:&v49 objects:v65 count:16];
          }

          while (v27);
        }

        v18 = neededCopy;
        if ([v24 workflowNeedsMigration:neededCopy fromClientVersion:v44])
        {
          [v41 addObject:v24];
        }
      }

      v21 = [v19 countByEnumeratingWithState:&v53 objects:v66 count:16];
    }

    while (v21);
  }

  if ([v41 count])
  {
    v32 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __57__WFWorkflowMigrator_migrateWorkflowIfNeeded_completion___block_invoke_2;
    block[3] = &unk_1E837ECE0;
    v46 = v18;
    v47 = v41;
    v33 = completionCopy;
    v48 = completionCopy;
    dispatch_async(v32, block);
  }

  else
  {
    v33 = completionCopy;
    (*(completionCopy + 2))(completionCopy, 0, v18, 0);
  }
}

void __57__WFWorkflowMigrator_migrateWorkflowIfNeeded_completion___block_invoke_2(uint64_t a1)
{
  DeepCopy = CFPropertyListCreateDeepCopy(*MEMORY[0x1E695E480], *(a1 + 32), 1uLL);
  v3 = objc_opt_new();
  v4 = [*(a1 + 40) array];
  v5 = [v4 copy];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __57__WFWorkflowMigrator_migrateWorkflowIfNeeded_completion___block_invoke_3;
  v13[3] = &unk_1E837EC90;
  v14 = DeepCopy;
  v15 = v3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __57__WFWorkflowMigrator_migrateWorkflowIfNeeded_completion___block_invoke_5;
  v9[3] = &unk_1E837ECB8;
  v6 = *(a1 + 48);
  v11 = v15;
  v12 = v6;
  v10 = v14;
  v7 = v15;
  v8 = v14;
  [v5 if_enumerateAsynchronouslyInSequence:v13 completionHandler:v9];
}

void __57__WFWorkflowMigrator_migrateWorkflowIfNeeded_completion___block_invoke_3(uint64_t a1, objc_class *a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = objc_alloc_init(a2);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __57__WFWorkflowMigrator_migrateWorkflowIfNeeded_completion___block_invoke_4;
  v10[3] = &unk_1E837EC68;
  v8 = *(a1 + 32);
  v11 = *(a1 + 40);
  v12 = v6;
  v9 = v6;
  [v7 migrateWorkflowIfNeeded:v8 completion:v10];
}

uint64_t __57__WFWorkflowMigrator_migrateWorkflowIfNeeded_completion___block_invoke_4(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) unionSet:a2];
  v3 = *(*(a1 + 40) + 16);

  return v3();
}

uint64_t __57__WFWorkflowMigrator_migrateWorkflowIfNeeded_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = [a2 migrationClassDependencies];
  if ([v5 containsObject:a3])
  {
    v6 = 1;
  }

  else
  {
    v7 = [a3 migrationClassDependencies];
    v6 = [v7 containsObject:a2] << 63 >> 63;
  }

  return v6;
}

+ (void)registerMigrationClass:(Class)class
{
  migrationClasses = [self migrationClasses];
  [migrationClasses addObject:class];
}

+ (id)migrationClasses
{
  if (migrationClasses_onceToken != -1)
  {
    dispatch_once(&migrationClasses_onceToken, &__block_literal_global_69201);
  }

  v3 = migrationClasses_migrationClasses;

  return v3;
}

void __38__WFWorkflowMigrator_migrationClasses__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v1 = migrationClasses_migrationClasses;
  migrationClasses_migrationClasses = v0;
}

+ (void)registerAllWorkflowKitMigrationClasses
{
  v13[58] = *MEMORY[0x1E69E9840];
  v13[0] = objc_opt_class();
  v13[1] = objc_opt_class();
  v13[2] = objc_opt_class();
  v13[3] = objc_opt_class();
  v13[4] = objc_opt_class();
  v13[5] = objc_opt_class();
  v13[6] = objc_opt_class();
  v13[7] = objc_opt_class();
  v13[8] = objc_opt_class();
  v13[9] = objc_opt_class();
  v13[10] = objc_opt_class();
  v13[11] = objc_opt_class();
  v13[12] = objc_opt_class();
  v13[13] = objc_opt_class();
  v13[14] = objc_opt_class();
  v13[15] = objc_opt_class();
  v13[16] = objc_opt_class();
  v13[17] = objc_opt_class();
  v13[18] = objc_opt_class();
  v13[19] = objc_opt_class();
  v13[20] = objc_opt_class();
  v13[21] = objc_opt_class();
  v13[22] = objc_opt_class();
  v13[23] = objc_opt_class();
  v13[24] = objc_opt_class();
  v13[25] = objc_opt_class();
  v13[26] = objc_opt_class();
  v13[27] = objc_opt_class();
  v13[28] = objc_opt_class();
  v13[29] = objc_opt_class();
  v13[30] = objc_opt_class();
  v13[31] = objc_opt_class();
  v13[32] = objc_opt_class();
  v13[33] = objc_opt_class();
  v13[34] = objc_opt_class();
  v13[35] = objc_opt_class();
  v13[36] = objc_opt_class();
  v13[37] = objc_opt_class();
  v13[38] = objc_opt_class();
  v13[39] = objc_opt_class();
  v13[40] = objc_opt_class();
  v13[41] = objc_opt_class();
  v13[42] = objc_opt_class();
  v13[43] = objc_opt_class();
  v13[44] = objc_opt_class();
  v13[45] = objc_opt_class();
  v13[46] = objc_opt_class();
  v13[47] = objc_opt_class();
  v13[48] = objc_opt_class();
  v13[49] = objc_opt_class();
  v13[50] = objc_opt_class();
  v13[51] = objc_opt_class();
  v13[52] = objc_opt_class();
  v13[53] = objc_opt_class();
  v13[54] = objc_opt_class();
  v13[55] = objc_opt_class();
  v13[56] = objc_opt_class();
  v13[57] = objc_opt_class();
  [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:58];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = v11 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [self registerMigrationClass:{*(*(&v8 + 1) + 8 * v7++), v8}];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {

    [self registerAllWorkflowKitMigrationClasses];
  }
}

@end