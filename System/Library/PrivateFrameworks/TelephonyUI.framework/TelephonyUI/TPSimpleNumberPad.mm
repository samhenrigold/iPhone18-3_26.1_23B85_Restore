@interface TPSimpleNumberPad
+ (id)_numberPadCharacters;
- (TPSimpleNumberPad)initWithButtons:(id)buttons;
- (TPSimpleNumberPad)initWithFrame:(CGRect)frame style:(int64_t)style;
- (void)_deleteButtonClicked:(id)clicked withEvent:(id)event;
- (void)_updateDeleteButton;
- (void)buttonUp:(id)up;
- (void)setNumberButtonsEnabled:(BOOL)enabled;
- (void)setShowsDeleteButton:(BOOL)button;
@end

@implementation TPSimpleNumberPad

+ (id)_numberPadCharacters
{
  if (_numberPadCharacters_onceToken != -1)
  {
    +[TPSimpleNumberPad _numberPadCharacters];
  }

  v3 = _numberPadCharacters_numberPadCharacters;

  return v3;
}

void __41__TPSimpleNumberPad__numberPadCharacters__block_invoke()
{
  v14[12] = *MEMORY[0x1E69E9840];
  v13 = [MEMORY[0x1E696AD98] numberWithInt:0];
  v14[0] = v13;
  v12 = [MEMORY[0x1E696AD98] numberWithInt:1];
  v14[1] = v12;
  v0 = [MEMORY[0x1E696AD98] numberWithInt:2];
  v14[2] = v0;
  v1 = [MEMORY[0x1E696AD98] numberWithInt:3];
  v14[3] = v1;
  v2 = [MEMORY[0x1E696AD98] numberWithInt:4];
  v14[4] = v2;
  v3 = [MEMORY[0x1E696AD98] numberWithInt:5];
  v14[5] = v3;
  v4 = [MEMORY[0x1E696AD98] numberWithInt:6];
  v14[6] = v4;
  v5 = [MEMORY[0x1E696AD98] numberWithInt:7];
  v14[7] = v5;
  v6 = [MEMORY[0x1E696AD98] numberWithInt:8];
  v14[8] = v6;
  v7 = [MEMORY[0x1E696AD98] numberWithInt:13];
  v14[9] = v7;
  v8 = [MEMORY[0x1E696AD98] numberWithInt:10];
  v14[10] = v8;
  v9 = [MEMORY[0x1E696AD98] numberWithInt:13];
  v14[11] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:12];
  v11 = _numberPadCharacters_numberPadCharacters;
  _numberPadCharacters_numberPadCharacters = v10;
}

- (TPSimpleNumberPad)initWithButtons:(id)buttons
{
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Please call -[PHVoicemailSetupPINNumberPad initWithFrame:]"];
  NSLog(&cfstr_TuassertionFai.isa, v5);

  if (_TUAssertShouldCrashApplication())
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TPSimpleNumberPad.m" lineNumber:59 description:@"Please call -[PHVoicemailSetupPINNumberPad initWithFrame:]"];
  }

  return 0;
}

- (TPSimpleNumberPad)initWithFrame:(CGRect)frame style:(int64_t)style
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v53 = *MEMORY[0x1E69E9840];
  v10 = +[TPSimpleNumberPad _numberPadCharacters];
  v11 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v10, "count")}];
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v12 = v10;
  v13 = [v12 countByEnumeratingWithState:&v48 objects:v52 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v49;
    do
    {
      v16 = 0;
      do
      {
        if (*v49 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [objc_alloc(-[TPSimpleNumberPad numberPadButtonClass](self "numberPadButtonClass"))];
        [v11 addObject:v17];

        ++v16;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v48 objects:v52 count:16];
    }

    while (v14);
  }

  v47.receiver = self;
  v47.super_class = TPSimpleNumberPad;
  v18 = [(TPNumberPad *)&v47 initWithButtons:v11];
  v19 = v18;
  if (v18)
  {
    [(TPSimpleNumberPad *)v18 setFrame:x, y, width, height];
    v20 = [MEMORY[0x1E69DC738] buttonWithType:1];
    deleteButton = v19->_deleteButton;
    v19->_deleteButton = v20;

    [(UIButton *)v19->_deleteButton setTranslatesAutoresizingMaskIntoConstraints:0];
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(UIButton *)v19->_deleteButton setBackgroundColor:clearColor];

    LODWORD(v23) = 1148846080;
    [(UIButton *)v19->_deleteButton setContentCompressionResistancePriority:0 forAxis:v23];
    LODWORD(v24) = 1148846080;
    [(UIButton *)v19->_deleteButton setContentCompressionResistancePriority:1 forAxis:v24];
    LODWORD(v25) = 1148846080;
    [(UIButton *)v19->_deleteButton setContentHuggingPriority:0 forAxis:v25];
    LODWORD(v26) = 1148846080;
    [(UIButton *)v19->_deleteButton setContentHuggingPriority:1 forAxis:v26];
    v27 = [MEMORY[0x1E69DB878] systemFontOfSize:18.0];
    titleLabel = [(UIButton *)v19->_deleteButton titleLabel];
    [titleLabel setFont:v27];

    v29 = v19->_deleteButton;
    v32 = TelephonyUIBundle(v30, v31);
    v33 = [v32 localizedStringForKey:@"DELETE" value:&stru_1F2CA8008 table:@"General"];
    [(UIButton *)v29 setTitle:v33 forState:0];

    v34 = v19->_deleteButton;
    dynamicLabelColor = [MEMORY[0x1E69DC888] dynamicLabelColor];
    [(UIButton *)v34 setTintColor:dynamicLabelColor];

    v36 = v19->_deleteButton;
    dynamicLabelColor2 = [MEMORY[0x1E69DC888] dynamicLabelColor];
    [(UIButton *)v36 setTitleColor:dynamicLabelColor2 forState:0];

    [(UIButton *)v19->_deleteButton addTarget:v19 action:sel__deleteButtonClicked_withEvent_ forControlEvents:64];
    [(TPSimpleNumberPad *)v19 addSubview:v19->_deleteButton];
    v38 = MEMORY[0x1E696ACD8];
    v39 = v19->_deleteButton;
    v40 = [v11 objectAtIndexedSubscript:8];
    v41 = [v38 constraintWithItem:v39 attribute:9 relatedBy:0 toItem:v40 attribute:9 multiplier:1.0 constant:0.0];
    [(TPSimpleNumberPad *)v19 addConstraint:v41];

    v42 = MEMORY[0x1E696ACD8];
    v43 = v19->_deleteButton;
    v44 = [v11 objectAtIndexedSubscript:10];
    v45 = [v42 constraintWithItem:v43 attribute:10 relatedBy:0 toItem:v44 attribute:10 multiplier:1.0 constant:0.0];
    [(TPSimpleNumberPad *)v19 addConstraint:v45];

    [(TPSimpleNumberPad *)v19 _updateDeleteButton];
  }

  return v19;
}

- (void)buttonUp:(id)up
{
  upCopy = up;
  delegate = [(TPSimpleNumberPad *)self delegate];

  if (delegate)
  {
    delegate2 = [(TPSimpleNumberPad *)self delegate];
    v6 = TPStringForNumberPadCharacter([upCopy character]);
    [delegate2 simpleNumberPad:self buttonPressedWithCharacter:v6];
  }
}

- (void)_deleteButtonClicked:(id)clicked withEvent:(id)event
{
  v5 = [(TPSimpleNumberPad *)self delegate:clicked];

  if (v5)
  {
    delegate = [(TPSimpleNumberPad *)self delegate];
    [delegate simpleNumberPadDeletePressed:self];
  }
}

- (void)_updateDeleteButton
{
  deleteButton = self->_deleteButton;
  showsDeleteButton = [(TPSimpleNumberPad *)self showsDeleteButton];
  v5 = 0.0;
  if (showsDeleteButton)
  {
    v5 = 1.0;
  }

  [(UIButton *)deleteButton setAlpha:v5];
  v6 = self->_deleteButton;
  showsDeleteButton2 = [(TPSimpleNumberPad *)self showsDeleteButton];

  [(UIButton *)v6 setEnabled:showsDeleteButton2];
}

- (void)setShowsDeleteButton:(BOOL)button
{
  if (self->_showsDeleteButton != button)
  {
    self->_showsDeleteButton = button;
    [(TPSimpleNumberPad *)self _updateDeleteButton];
  }
}

- (void)setNumberButtonsEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v16 = *MEMORY[0x1E69E9840];
  if ([(TPNumberPad *)self numberButtonsEnabled]!= enabled)
  {
    v14.receiver = self;
    v14.super_class = TPSimpleNumberPad;
    [(TPNumberPad *)&v14 setNumberButtonsEnabled:enabledCopy];
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    buttons = [(TPNumberPad *)self buttons];
    v6 = [buttons countByEnumeratingWithState:&v10 objects:v15 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v11;
      do
      {
        v9 = 0;
        do
        {
          if (*v11 != v8)
          {
            objc_enumerationMutation(buttons);
          }

          [*(*(&v10 + 1) + 8 * v9++) setGreyedOut:enabledCopy ^ 1];
        }

        while (v7 != v9);
        v7 = [buttons countByEnumeratingWithState:&v10 objects:v15 count:16];
      }

      while (v7);
    }
  }
}

@end