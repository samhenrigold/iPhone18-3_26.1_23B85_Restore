@interface AssetManager
- (id)absoluteURLForAssetPath:(id)path;
@end

@implementation AssetManager

- (id)absoluteURLForAssetPath:(id)path
{
  sub_1AF0D0EA0(0, &qword_1ED7315E0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v17[-v5];
  v7 = sub_1AFDFCEF8();
  v9 = v8;
  selfCopy = self;
  v17[12] = 1;
  sub_1AF8AF2FC(v7, v9, 0x100000000, v6);

  v11 = sub_1AFDFC128();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v6, 1, v11);
  v14 = 0;
  if (v13 != 1)
  {
    v15 = sub_1AFDFC048();
    (*(v12 + 8))(v6, v11);
    v14 = v15;
  }

  return v14;
}

@end