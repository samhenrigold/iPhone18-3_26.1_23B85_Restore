@interface EARTranscriptionEvaluator
- (void)evaluateMessagesContext:(id)context recognizedText:(id)text correctedText:(id)correctedText asrID:(id)d speechProfilePath:(id)path reply:(id)reply;
@end

@implementation EARTranscriptionEvaluator

- (void)evaluateMessagesContext:(id)context recognizedText:(id)text correctedText:(id)correctedText asrID:(id)d speechProfilePath:(id)path reply:(id)reply
{
  v11 = sub_100046BBC();
  v53 = *(v11 - 8);
  v54 = v11;
  __chkstk_darwin(v11);
  v13 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = _Block_copy(reply);
  sub_10000ECEC(&qword_10006F9C0, &unk_10004CF70);
  v15 = sub_100046EFC();
  v16 = sub_100046E5C();
  v18 = v17;
  v19 = sub_100046E5C();
  v21 = v20;
  sub_100046BAC();
  if (path)
  {
    v22 = sub_100046E5C();
    path = v23;
  }

  else
  {
    v22 = 0;
  }

  _Block_copy(v14);
  selfCopy = self;
  sub_10001C6A4(v15, v16, v18, v19, v21, v13, v22, path, selfCopy, v14);
  _Block_release(v14);

  v15, v25, v26, v27, v28, v29, v30, v31;
  v18, v32, v33, v34, v35, v36, v37, v38;
  v21, v39, v40, v41, v42, v43, v44, v45;
  path, v46, v47, v48, v49, v50, v51, v52;
  (*(v53 + 8))(v13, v54);
}

@end