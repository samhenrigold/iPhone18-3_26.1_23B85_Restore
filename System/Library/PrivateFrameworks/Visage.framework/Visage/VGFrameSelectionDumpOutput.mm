@interface VGFrameSelectionDumpOutput
- (VGFrameSelectionDumpOutput)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation VGFrameSelectionDumpOutput

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selectedPoses = self->_selectedPoses;
  v5 = NSStringFromSelector(sel_selectedPoses);
  [coderCopy encodeObject:selectedPoses forKey:v5];
}

- (VGFrameSelectionDumpOutput)initWithCoder:(id)coder
{
  v15[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = VGFrameSelectionDumpOutput;
  v5 = [(VGFrameSelectionDumpOutput *)&v14 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v15[0] = objc_opt_class();
    v15[1] = objc_opt_class();
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];
    v8 = [v6 setWithArray:v7];
    v9 = NSStringFromSelector(sel_selectedPoses);
    v10 = [coderCopy decodeObjectOfClasses:v8 forKey:v9];
    selectedPoses = v5->_selectedPoses;
    v5->_selectedPoses = v10;

    v12 = v5;
  }

  return v5;
}

@end