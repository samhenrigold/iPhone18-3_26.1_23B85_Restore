@interface TIKeyboardInputManager_intl_HWR
- (BOOL)isDummyCandidate:(id)candidate;
- (CHRecognizer)recognizer;
- (id)addInputObject:(id)object withContext:(id)context;
- (id)candidateResultSet;
- (id)defaultCandidate;
- (id)handleKeyboardInput:(id)input;
- (id)recognitionResultsForStrokes:(id)strokes context:(id)context;
- (unint64_t)initialSelectedIndex;
- (unsigned)inputCount;
- (void)addInput:(id)input withContext:(id)context;
- (void)clearInput;
- (void)deleteFromInputWithContext:(id)context;
- (void)updateCandidates;
@end

@implementation TIKeyboardInputManager_intl_HWR

- (CHRecognizer)recognizer
{
  if (recognizer___onceToken != -1)
  {
    [TIKeyboardInputManager_intl_HWR recognizer];
  }

  v3 = recognizer___recognizer;

  return v3;
}

- (id)recognitionResultsForStrokes:(id)strokes context:(id)context
{
  v16[1] = *MEMORY[0x29EDCA608];
  strokesCopy = strokes;
  contextCopy = context;
  v8 = objc_alloc_init(MEMORY[0x29EDC0DF0]);
  if ([strokesCopy numberOfStrokes])
  {
    v9 = 0;
    do
    {
      if ([strokesCopy numberOfPointsInStrokeAtIndex:v9])
      {
        v10 = 0;
        do
        {
          [strokesCopy pointAtIndex:v10 inStrokeAtIndex:v9];
          [v8 addPoint:?];
          ++v10;
        }

        while (v10 < [strokesCopy numberOfPointsInStrokeAtIndex:v9]);
      }

      [v8 endStroke];
      ++v9;
    }

    while (v9 < [strokesCopy numberOfStrokes]);
  }

  if (contextCopy)
  {
    v15 = *MEMORY[0x29EDC0DE8];
    v16[0] = contextCopy;
    v11 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
  }

  else
  {
    v11 = 0;
  }

  recognizer = [(TIKeyboardInputManager_intl_HWR *)self recognizer];
  v13 = [recognizer recognitionResultsForDrawing:v8 options:v11];

  return v13;
}

- (void)updateCandidates
{
  v24 = *MEMORY[0x29EDCA608];
  userDrawing = [(TIKeyboardInputManager_intl_HWR *)self userDrawing];

  if (userDrawing)
  {
    v4 = [(TIKeyboardInputManager_intl_HWR *)self contextBeforeWithDesiredLength:10];
    userDrawing2 = [(TIKeyboardInputManager_intl_HWR *)self userDrawing];
    v6 = [(TIKeyboardInputManager_intl_HWR *)self recognitionResultsForStrokes:userDrawing2 context:v4];

    v7 = [MEMORY[0x29EDB8DE8] arrayWithCapacity:{objc_msgSend(v6, "count")}];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v18 objects:v23 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v19;
      do
      {
        v12 = 0;
        do
        {
          if (*v19 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = MEMORY[0x29EDC7088];
          string = [*(*(&v18 + 1) + 8 * v12) string];
          v15 = [v13 candidateWithUnchangedInput:string];
          [v7 addObject:v15];

          ++v12;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v18 objects:v23 count:16];
      }

      while (v10);
    }

    if ([v7 count])
    {
      [(TIKeyboardInputManager_intl_HWR *)self setCandidates:v7];
      candidateResultSet = [(TIKeyboardInputManager_intl_HWR *)self candidateResultSet];
      [(TIKeyboardInputManager_intl_HWR *)self closeCandidateGenerationContextWithResults:candidateResultSet];
    }

    else
    {
      candidateResultSet = [MEMORY[0x29EDB8E28] null];
      v22 = candidateResultSet;
      v17 = [MEMORY[0x29EDB8D80] arrayWithObjects:&v22 count:1];
      [(TIKeyboardInputManager_intl_HWR *)self setCandidates:v17];
    }
  }
}

- (id)candidateResultSet
{
  candidates = [(TIKeyboardInputManager_intl_HWR *)self candidates];
  if (!candidates || (v4 = candidates, -[TIKeyboardInputManager_intl_HWR candidates](self, "candidates"), v5 = objc_claimAutoreleasedReturnValue(), [v5 firstObject], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(MEMORY[0x29EDB8E28], "null"), v7 = objc_claimAutoreleasedReturnValue(), v7, v6, v5, v4, v6 == v7))
  {
    dummySet = [MEMORY[0x29EDC7080] dummySet];
  }

  else
  {
    candidates2 = [(TIKeyboardInputManager_intl_HWR *)self candidates];
    dummySet = [(TIKeyboardInputManager_intl_HWR *)self candidateResultSetFromCandidates:candidates2];
  }

  return dummySet;
}

- (id)defaultCandidate
{
  v18 = *MEMORY[0x29EDCA608];
  candidates = [(TIKeyboardInputManager_intl_HWR *)self candidates];
  v4 = [candidates count];

  if (v4)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    candidates2 = [(TIKeyboardInputManager_intl_HWR *)self candidates];
    v6 = [candidates2 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(candidates2);
          }

          v10 = *(*(&v13 + 1) + 8 * i);
          if (![(TIKeyboardInputManager_intl_HWR *)self isDummyCandidate:v10])
          {
            v11 = v10;
            goto LABEL_12;
          }
        }

        v7 = [candidates2 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    v11 = 0;
LABEL_12:
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (unint64_t)initialSelectedIndex
{
  candidates = [(TIKeyboardInputManager_intl_HWR *)self candidates];
  if ([candidates count] && -[TIKeyboardInputManager_intl_HWR inputCount](self, "inputCount"))
  {
    initialSelectedIndex = 0;
  }

  else
  {
    v6.receiver = self;
    v6.super_class = TIKeyboardInputManager_intl_HWR;
    initialSelectedIndex = [(TIKeyboardInputManager_intl_HWR *)&v6 initialSelectedIndex];
  }

  return initialSelectedIndex;
}

- (BOOL)isDummyCandidate:(id)candidate
{
  v3 = MEMORY[0x29EDB8E28];
  candidateCopy = candidate;
  null = [v3 null];
  v6 = [candidateCopy isEqual:null];

  return v6;
}

- (id)handleKeyboardInput:(id)input
{
  inputCopy = input;
  v5 = objc_alloc(MEMORY[0x29EDC7228]);
  keyboardState = [(TIKeyboardInputManager_intl_HWR *)self keyboardState];
  v7 = [v5 initWithKeyboardState:keyboardState];

  if ([inputCopy isBackspace])
  {
    [(TIKeyboardInputManager_intl_HWR *)self deleteFromInputWithContext:v7];
  }

  else
  {
    [(TIKeyboardInputManager_intl_HWR *)self addInput:inputCopy withContext:v7];
  }

  output = [v7 output];

  return output;
}

- (void)addInput:(id)input withContext:(id)context
{
  inputCopy = input;
  contextCopy = context;
  candidates = [(TIKeyboardInputManager_intl_HWR *)self candidates];
  if (candidates)
  {
    v8 = candidates;
    object = [inputCopy object];

    if (object)
    {
      [(TIKeyboardInputManager_intl_HWR *)self acceptCurrentCandidateWithContext:contextCopy];
      [(TIKeyboardInputManager_intl_HWR *)self setCandidates:0];
    }
  }

  object2 = [inputCopy object];

  if (object2)
  {
    object3 = [inputCopy object];
    v12 = [(TIKeyboardInputManager_intl_HWR *)self addInputObject:object3 withContext:contextCopy];
    [inputCopy setString:v12];
  }

  string = [inputCopy string];
  if (string)
  {
    [contextCopy insertText:string];
  }
}

- (id)addInputObject:(id)object withContext:(id)context
{
  v30[1] = *MEMORY[0x29EDCA608];
  contextCopy = context;
  [(TIKeyboardInputManager_intl_HWR *)self setUserDrawing:object];
  userDrawing = [(TIKeyboardInputManager_intl_HWR *)self userDrawing];
  numberOfStrokes = [userDrawing numberOfStrokes];

  if (!numberOfStrokes)
  {
    [(TIKeyboardInputManager_intl_HWR *)self clearInput];
    v25 = &stru_2A25253D8;
    goto LABEL_12;
  }

  [(TIKeyboardInputManager_intl_HWR *)self updateCandidates];
  defaultCandidate = [(TIKeyboardInputManager_intl_HWR *)self defaultCandidate];
  candidate = [defaultCandidate candidate];

  v11 = [MEMORY[0x29EDB9F50] characterSetWithCharactersInString:@"-_一"];
  userDrawing2 = [(TIKeyboardInputManager_intl_HWR *)self userDrawing];
  if ([userDrawing2 numberOfStrokes] == 1)
  {
    v13 = [v11 characterIsMember:{objc_msgSend(candidate, "_firstChar")}];

    if (v13)
    {
      userDrawing3 = [(TIKeyboardInputManager_intl_HWR *)self userDrawing];
      v15 = [userDrawing3 numberOfPointsInStrokeAtIndex:0];

      userDrawing4 = [(TIKeyboardInputManager_intl_HWR *)self userDrawing];
      [userDrawing4 pointAtIndex:0 inStrokeAtIndex:0];
      v18 = v17;

      userDrawing5 = [(TIKeyboardInputManager_intl_HWR *)self userDrawing];
      [userDrawing5 pointAtIndex:v15 - 1 inStrokeAtIndex:0];
      v21 = v20;

      if (v18 >= v21)
      {
        [contextCopy deleteBackward:1];
        v22 = [MEMORY[0x29EDC7088] candidateWithUnchangedInput:@"DELETE"];
        v29 = v22;
        v23 = MEMORY[0x29EDB8D80];
        v24 = &v29;
      }

      else
      {
        [contextCopy insertText:@" "];
        v22 = [MEMORY[0x29EDC7088] candidateWithUnchangedInput:&stru_2A25253D8];
        v30[0] = v22;
        v23 = MEMORY[0x29EDB8D80];
        v24 = v30;
      }

      v27 = [v23 arrayWithObjects:v24 count:1];
      [(TIKeyboardInputManager_intl_HWR *)self setCandidates:v27];

      v26 = 0;
      goto LABEL_11;
    }
  }

  else
  {
  }

  v26 = candidate;
LABEL_11:
  v25 = v26;

LABEL_12:

  return v25;
}

- (void)clearInput
{
  [(TIKeyboardInputManager_intl_HWR *)self setUserDrawing:0];
  [(TIKeyboardInputManager_intl_HWR *)self setCandidates:0];
  v3.receiver = self;
  v3.super_class = TIKeyboardInputManager_intl_HWR;
  [(TIKeyboardInputManager_intl_HWR *)&v3 clearInput];
}

- (void)deleteFromInputWithContext:(id)context
{
  contextCopy = context;
  [(TIKeyboardInputManager_intl_HWR *)self clearInput];
  [contextCopy deleteBackward:1];
}

- (unsigned)inputCount
{
  userDrawing = [(TIKeyboardInputManager_intl_HWR *)self userDrawing];
  numberOfStrokes = [userDrawing numberOfStrokes];

  return numberOfStrokes;
}

@end