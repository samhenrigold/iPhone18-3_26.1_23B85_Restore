@interface PKFrequencySelectionCollectionViewCell
- (_TtC9PassKitUI38PKFrequencySelectionCollectionViewCell)initWithCoder:(id)coder;
- (_TtC9PassKitUI38PKFrequencySelectionCollectionViewCell)initWithFrame:(CGRect)frame;
- (void)configureWithOptions:(id)options selectedFrequency:(unint64_t)frequency selectedDate:(id)date isEditable:(BOOL)editable titleColor:(id)color changeHandler:(id)handler;
@end

@implementation PKFrequencySelectionCollectionViewCell

- (void)configureWithOptions:(id)options selectedFrequency:(unint64_t)frequency selectedDate:(id)date isEditable:(BOOL)editable titleColor:(id)color changeHandler:(id)handler
{
  colorCopy = color;
  editableCopy = editable;
  frequencyCopy = frequency;
  selfCopy = self;
  v9 = sub_1BE04AF64();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v43 - v14;
  v16 = _Block_copy(handler);
  v43 = sub_1BE052744();
  v45 = v15;
  sub_1BE04AEE4();
  v17 = swift_allocObject();
  *(v17 + 2) = v16;
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v10 + 16))(v12, v15, v9);
  v19 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v20 = v19 + v11;
  v21 = swift_allocObject();
  v22 = v43;
  *(v21 + 2) = v18;
  *(v21 + 3) = v22;
  *(v21 + 4) = frequencyCopy;
  v23 = v12;
  v24 = v9;
  (*(v10 + 32))(&v21[v19], v23, v9);
  v21[v20] = editableCopy;
  v25 = colorCopy;
  *&v21[(v20 & 0xFFFFFFFFFFFFFFF8) + 8] = colorCopy;
  v26 = &v21[((v20 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8];
  *v26 = sub_1BD7CE270;
  v26[1] = v17;
  v27 = v25;
  v28 = selfCopy;
  sub_1BE048964();
  sub_1BE048964();
  sub_1BE052E74();
  v18, v29, v30, v31, v32, v33, v34, v35;
  [(PKFrequencySelectionCollectionViewCell *)v28 setNeedsUpdateConfiguration];

  v17, v36, v37, v38, v39, v40, v41, v42;
  (*(v10 + 8))(v45, v24);
}

- (_TtC9PassKitUI38PKFrequencySelectionCollectionViewCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for PKFrequencySelectionCollectionViewCell();
  return [(PKFrequencySelectionCollectionViewCell *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC9PassKitUI38PKFrequencySelectionCollectionViewCell)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for PKFrequencySelectionCollectionViewCell();
  coderCopy = coder;
  v5 = [(PKFrequencySelectionCollectionViewCell *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end