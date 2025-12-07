@interface CRXCEnrollmentData
- (BOOL)isEqual:(id)equal;
- (CRXCEnrollmentData)init;
- (CRXCEnrollmentData)initWithAccPayload:(id)payload accPayloadLeft:(id)left accPayloadRight:(id)right enrollmentName:(id)name issueDate:(id)date calibrationDataLeft:(id)dataLeft calibrationDataRight:(id)dataRight;
- (CRXCEnrollmentData)initWithAccPayload:(id)payload enrollmentName:(id)name issueDate:(id)date calibrationDataLeft:(id)left calibrationDataRight:(id)right;
- (CRXCEnrollmentData)initWithAccPayloadLeft:(id)left accPayloadRight:(id)right enrollmentName:(id)name issueDate:(id)date calibrationDataLeft:(id)dataLeft calibrationDataRight:(id)dataRight;
- (NSString)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CRXCEnrollmentData

- (CRXCEnrollmentData)initWithAccPayload:(id)payload enrollmentName:(id)name issueDate:(id)date calibrationDataLeft:(id)left calibrationDataRight:(id)right
{
  v36[1] = self;
  v12 = sub_100080D98();
  __chkstk_darwin(v12 - 8, v13, v14);
  v16 = v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  payloadCopy = payload;
  dateCopy = date;
  nameCopy = name;
  leftCopy = left;
  v36[0] = right;
  rightCopy = right;
  v22 = sub_100080CF8();
  v24 = v23;

  if (nameCopy)
  {
    v25 = sub_1000812B8();
    v27 = v26;
  }

  else
  {
    v25 = 0;
    v27 = 0;
  }

  sub_100080D78();

  if (!leftCopy)
  {
    v28 = 0;
    v30 = 0;
    if (rightCopy)
    {
      goto LABEL_6;
    }

LABEL_8:
    v31 = 0;
    v33 = 0;
    goto LABEL_9;
  }

  v28 = sub_1000812B8();
  v30 = v29;

  if (!rightCopy)
  {
    goto LABEL_8;
  }

LABEL_6:
  v31 = sub_1000812B8();
  v33 = v32;

LABEL_9:
  v34 = sub_10005D728(v22, v24, v25, v27, v16, v28, v30, v31, v33);
  sub_100006A34(v22, v24);
  return v34;
}

- (CRXCEnrollmentData)initWithAccPayloadLeft:(id)left accPayloadRight:(id)right enrollmentName:(id)name issueDate:(id)date calibrationDataLeft:(id)dataLeft calibrationDataRight:(id)dataRight
{
  selfCopy = self;
  v14 = sub_100080D98();
  __chkstk_darwin(v14 - 8, v15, v16);
  v18 = v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  leftCopy = left;
  rightCopy = right;
  dateCopy = date;
  nameCopy = name;
  v42[1] = dataLeft;
  dataLeftCopy = dataLeft;
  v42[2] = dataRight;
  dataRightCopy = dataRight;
  v25 = sub_100080CF8();
  v44 = v26;

  v27 = sub_100080CF8();
  v29 = v28;

  if (nameCopy)
  {
    v30 = sub_1000812B8();
    v43 = v31;
  }

  else
  {
    v30 = 0;
    v43 = 0;
  }

  sub_100080D78();

  if (!dataLeftCopy)
  {
    v32 = 0;
    v34 = 0;
    if (dataRightCopy)
    {
      goto LABEL_6;
    }

LABEL_8:
    v35 = 0;
    v37 = 0;
    goto LABEL_9;
  }

  v32 = sub_1000812B8();
  v34 = v33;

  if (!dataRightCopy)
  {
    goto LABEL_8;
  }

LABEL_6:
  v35 = sub_1000812B8();
  v37 = v36;

LABEL_9:
  v41 = v35;
  v38 = v44;
  v39 = sub_10005D888(v25, v44, v27, v29, v30, v43, v18, v32, v34, v41, v37);
  sub_100006A34(v27, v29);
  sub_100006A34(v25, v38);
  return v39;
}

- (CRXCEnrollmentData)initWithAccPayload:(id)payload accPayloadLeft:(id)left accPayloadRight:(id)right enrollmentName:(id)name issueDate:(id)date calibrationDataLeft:(id)dataLeft calibrationDataRight:(id)dataRight
{
  v16 = sub_100080D98();
  v68 = *(v16 - 8);
  v69 = v16;
  __chkstk_darwin(v16, v17, v18);
  v20 = &v62 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (payload)
  {
    leftCopy = left;
    rightCopy = right;
    nameCopy = name;
    dateCopy = date;
    dataLeftCopy = dataLeft;
    dataRightCopy = dataRight;
    payloadCopy = payload;
    v28 = sub_100080CF8();
    v66 = v29;
    v67 = v28;

    if (left)
    {
      goto LABEL_3;
    }
  }

  else
  {
    leftCopy2 = left;
    rightCopy2 = right;
    nameCopy2 = name;
    dateCopy2 = date;
    dataLeftCopy2 = dataLeft;
    dataRightCopy2 = dataRight;
    v66 = 0xF000000000000000;
    v67 = 0;
    if (left)
    {
LABEL_3:
      v30 = sub_100080CF8();
      v64 = v31;
      v65 = v30;

      if (right)
      {
        goto LABEL_4;
      }

LABEL_8:
      v63 = 0;
      v33 = 0xF000000000000000;
      if (name)
      {
        goto LABEL_5;
      }

      goto LABEL_9;
    }
  }

  v64 = 0xF000000000000000;
  v65 = 0;
  if (!right)
  {
    goto LABEL_8;
  }

LABEL_4:
  v63 = sub_100080CF8();
  v33 = v32;

  if (name)
  {
LABEL_5:
    v34 = sub_1000812B8();
    v36 = v35;

    goto LABEL_10;
  }

LABEL_9:
  v34 = 0;
  v36 = 0;
LABEL_10:
  sub_100080D78();

  if (!dataLeft)
  {
    v43 = 0;
    v45 = 0;
    if (dataRight)
    {
      goto LABEL_12;
    }

LABEL_14:
    v46 = 0;
    v48 = 0;
    goto LABEL_15;
  }

  v43 = sub_1000812B8();
  v45 = v44;

  if (!dataRight)
  {
    goto LABEL_14;
  }

LABEL_12:
  v46 = sub_1000812B8();
  v48 = v47;

LABEL_15:
  v49 = (self + OBJC_IVAR___CRXCEnrollmentData_accPayload);
  v50 = v66;
  *v49 = v67;
  v49[1] = v50;
  v51 = (self + OBJC_IVAR___CRXCEnrollmentData_accPayloadLeft);
  v52 = v64;
  *v51 = v65;
  v51[1] = v52;
  v53 = (self + OBJC_IVAR___CRXCEnrollmentData_accPayloadRight);
  *v53 = v63;
  v53[1] = v33;
  v54 = (self + OBJC_IVAR___CRXCEnrollmentData_enrollmentName);
  *v54 = v34;
  v54[1] = v36;
  v56 = v68;
  v55 = v69;
  (*(v68 + 16))(self + OBJC_IVAR___CRXCEnrollmentData_issueDate, v20, v69);
  v57 = (self + OBJC_IVAR___CRXCEnrollmentData_calibrationDataLeft);
  *v57 = v43;
  v57[1] = v45;
  v58 = (self + OBJC_IVAR___CRXCEnrollmentData_calibrationDataRight);
  *v58 = v46;
  v58[1] = v48;
  v59 = type metadata accessor for CRXCEnrollmentData(0);
  v70.receiver = self;
  v70.super_class = v59;
  v60 = [(CRXCEnrollmentData *)&v70 init];
  (*(v56 + 8))(v20, v55);
  return v60;
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_100081658();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = CRXCEnrollmentData.isEqual(_:)(v8);

  sub_10000D014(v8);
  return v6 & 1;
}

- (NSString)description
{
  selfCopy = self;
  CRXCEnrollmentData.description.getter();

  v3 = sub_100081288();

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  CRXCEnrollmentData.encode(with:)(coderCopy);
}

- (CRXCEnrollmentData)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end