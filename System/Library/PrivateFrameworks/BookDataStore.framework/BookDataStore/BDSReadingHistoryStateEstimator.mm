@interface BDSReadingHistoryStateEstimator
- (id)estimateCurrentStateInfoWithExistingStateInfo:(id)info;
@end

@implementation BDSReadingHistoryStateEstimator

- (id)estimateCurrentStateInfoWithExistingStateInfo:(id)info
{
  v5 = sub_1E4650534(&unk_1ECF74C48, &qword_1E471D598);
  v6 = v5 - 8;
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v25 - v12;
  v14 = sub_1E4709CCC();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  infoCopy = info;
  selfCopy = self;
  sub_1E4709CBC();
  sub_1E469FA98(v13, &v13[*(v6 + 56)], v18);
  sub_1E465E0B0(v13, v9, &unk_1ECF74C48, &qword_1E471D598);
  v21 = *(v6 + 56);
  v22 = sub_1E469FF74(v9, &v9[v21], infoCopy);

  sub_1E465E050(v13, &unk_1ECF74C48, &qword_1E471D598);
  v23 = *(v15 + 8);
  v23(v18, v14);
  v23(&v9[v21], v14);
  v23(v9, v14);

  return v22;
}

@end