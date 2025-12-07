@interface BKUIContainerScrollView
- (BKUIContainerScrollView)initWithFrame:(CGRect)frame buttonTray:(id)tray;
@end

@implementation BKUIContainerScrollView

- (BKUIContainerScrollView)initWithFrame:(CGRect)frame buttonTray:(id)tray
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v75[4] = *MEMORY[0x277D85DE8];
  trayCopy = tray;
  v72.receiver = self;
  v72.super_class = BKUIContainerScrollView;
  height = [(BKUIContainerScrollView *)&v72 initWithFrame:x, y, width, height];
  if (height)
  {
    v12 = objc_alloc(MEMORY[0x277D75D18]);
    v13 = [v12 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    scrollContentView = height->_scrollContentView;
    height->_scrollContentView = v13;

    [(UIView *)height->_scrollContentView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(BKUIContainerScrollView *)height addSubview:height->_scrollContentView];
    centerXAnchor = [(UIView *)height->_scrollContentView centerXAnchor];
    [(BKUIContainerScrollView *)height centerXAnchor];
    v16 = obj = tray;
    v17 = [centerXAnchor constraintEqualToAnchor:v16];
    horizontalConstraint = height->_horizontalConstraint;
    height->_horizontalConstraint = v17;

    v57 = MEMORY[0x277CCAAD0];
    topAnchor = [(UIView *)height->_scrollContentView topAnchor];
    topAnchor2 = [(BKUIContainerScrollView *)height topAnchor];
    v59 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v75[0] = v59;
    widthAnchor = [(UIView *)height->_scrollContentView widthAnchor];
    widthAnchor2 = [(BKUIContainerScrollView *)height widthAnchor];
    v21 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
    v75[1] = v21;
    bottomAnchor = [(UIView *)height->_scrollContentView bottomAnchor];
    [(BKUIContainerScrollView *)height bottomAnchor];
    v23 = v67 = trayCopy;
    v24 = [bottomAnchor constraintEqualToAnchor:v23];
    v75[2] = v24;
    v75[3] = height->_horizontalConstraint;
    v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v75 count:4];
    [v57 activateConstraints:v25];

    v26 = objc_alloc_init(BKUIPearlInstructionView);
    instructionView = height->_instructionView;
    height->_instructionView = v26;

    [(BKUIPearlInstructionView *)height->_instructionView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)height->_scrollContentView addSubview:height->_instructionView];
    topAnchor3 = [(BKUIPearlInstructionView *)height->_instructionView topAnchor];
    topAnchor4 = [(UIView *)height->_scrollContentView topAnchor];
    v30 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
    instructionViewTopConstraint = height->_instructionViewTopConstraint;
    height->_instructionViewTopConstraint = v30;

    objc_storeStrong(&height->_buttonTray, obj);
    [(BKUIButtonTray *)height->_buttonTray setTranslatesAutoresizingMaskIntoConstraints:0];
    bottomAnchor2 = [(BKUIPearlInstructionView *)height->_instructionView bottomAnchor];
    topAnchor5 = [(BKUIButtonTray *)height->_buttonTray topAnchor];
    v34 = [bottomAnchor2 constraintLessThanOrEqualToAnchor:topAnchor5 constant:-25.0];
    buttonTrayTopAnchor = height->_buttonTrayTopAnchor;
    height->_buttonTrayTopAnchor = v34;

    v64 = MEMORY[0x277CCAAD0];
    v74[0] = height->_instructionViewTopConstraint;
    leadingAnchor = [(BKUIPearlInstructionView *)height->_instructionView leadingAnchor];
    leadingAnchor2 = [(UIView *)height->_scrollContentView leadingAnchor];
    v38 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v74[1] = v38;
    trailingAnchor = [(BKUIPearlInstructionView *)height->_instructionView trailingAnchor];
    trailingAnchor2 = [(UIView *)height->_scrollContentView trailingAnchor];
    v41 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v74[2] = v41;
    v42 = [MEMORY[0x277CBEA60] arrayWithObjects:v74 count:3];
    [v64 activateConstraints:v42];

    [(UIView *)height->_scrollContentView addSubview:height->_buttonTray];
    heightAnchor = [(UIView *)height->_scrollContentView heightAnchor];
    heightAnchor2 = [(BKUIContainerScrollView *)height heightAnchor];
    v43 = [heightAnchor constraintGreaterThanOrEqualToAnchor:heightAnchor2];
    pinButtonTrayToScrollViewBottomConstraint = height->_pinButtonTrayToScrollViewBottomConstraint;
    height->_pinButtonTrayToScrollViewBottomConstraint = v43;

    v56 = MEMORY[0x277CCAAD0];
    bottomAnchor3 = [(BKUIButtonTray *)height->_buttonTray bottomAnchor];
    bottomAnchor4 = [(UIView *)height->_scrollContentView bottomAnchor];
    v45 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
    v73[0] = v45;
    v73[1] = height->_pinButtonTrayToScrollViewBottomConstraint;
    leadingAnchor3 = [(BKUIButtonTray *)height->_buttonTray leadingAnchor];
    leadingAnchor4 = [(UIView *)height->_scrollContentView leadingAnchor];
    v48 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    v73[2] = v48;
    trailingAnchor3 = [(BKUIButtonTray *)height->_buttonTray trailingAnchor];
    trailingAnchor4 = [(UIView *)height->_scrollContentView trailingAnchor];
    v51 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    v73[3] = v51;
    v73[4] = height->_buttonTrayTopAnchor;
    v52 = [MEMORY[0x277CBEA60] arrayWithObjects:v73 count:5];
    [v56 activateConstraints:v52];

    trayCopy = v67;
    v71.receiver = height;
    v71.super_class = BKUIContainerScrollView;
    [(BKUIContainerScrollView *)&v71 setTranslatesAutoresizingMaskIntoConstraints:0];
    v53 = *MEMORY[0x277CBF3A8];
    v54 = *(MEMORY[0x277CBF3A8] + 8);
    v70.receiver = height;
    v70.super_class = BKUIContainerScrollView;
    [(BKUIContainerScrollView *)&v70 setContentSize:v53, v54];
    v69.receiver = height;
    v69.super_class = BKUIContainerScrollView;
    [(BKUIContainerScrollView *)&v69 setIndicatorStyle:2];
    v68.receiver = height;
    v68.super_class = BKUIContainerScrollView;
    [(BKUIContainerScrollView *)&v68 setContentInsetAdjustmentBehavior:2];
  }

  return height;
}

@end