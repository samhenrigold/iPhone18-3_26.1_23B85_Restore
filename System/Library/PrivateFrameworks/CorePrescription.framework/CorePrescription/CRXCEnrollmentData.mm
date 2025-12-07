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
  v34[1] = self;
  v12 = sub_247365B94();
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  payloadCopy = payload;
  dateCopy = date;
  nameCopy = name;
  leftCopy = left;
  v34[0] = right;
  rightCopy = right;
  v20 = sub_247365B44();
  v22 = v21;

  if (nameCopy)
  {
    v23 = sub_247365C64();
    v25 = v24;
  }

  else
  {
    v23 = 0;
    v25 = 0;
  }

  sub_247365B74();

  if (!leftCopy)
  {
    v26 = 0;
    v28 = 0;
    if (rightCopy)
    {
      goto LABEL_6;
    }

LABEL_8:
    v29 = 0;
    v31 = 0;
    goto LABEL_9;
  }

  v26 = sub_247365C64();
  v28 = v27;

  if (!rightCopy)
  {
    goto LABEL_8;
  }

LABEL_6:
  v29 = sub_247365C64();
  v31 = v30;

LABEL_9:
  v32 = sub_24734F7FC(v20, v22, v23, v25, v14, v26, v28, v29, v31);
  sub_247347880(v20, v22);
  return v32;
}

- (CRXCEnrollmentData)initWithAccPayloadLeft:(id)left accPayloadRight:(id)right enrollmentName:(id)name issueDate:(id)date calibrationDataLeft:(id)dataLeft calibrationDataRight:(id)dataRight
{
  selfCopy = self;
  v14 = sub_247365B94();
  MEMORY[0x28223BE20](v14 - 8);
  v16 = v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  leftCopy = left;
  rightCopy = right;
  dateCopy = date;
  nameCopy = name;
  v40[1] = dataLeft;
  dataLeftCopy = dataLeft;
  v40[2] = dataRight;
  dataRightCopy = dataRight;
  v23 = sub_247365B44();
  v42 = v24;

  v25 = sub_247365B44();
  v27 = v26;

  if (nameCopy)
  {
    v28 = sub_247365C64();
    v41 = v29;
  }

  else
  {
    v28 = 0;
    v41 = 0;
  }

  sub_247365B74();

  if (!dataLeftCopy)
  {
    v30 = 0;
    v32 = 0;
    if (dataRightCopy)
    {
      goto LABEL_6;
    }

LABEL_8:
    v33 = 0;
    v35 = 0;
    goto LABEL_9;
  }

  v30 = sub_247365C64();
  v32 = v31;

  if (!dataRightCopy)
  {
    goto LABEL_8;
  }

LABEL_6:
  v33 = sub_247365C64();
  v35 = v34;

LABEL_9:
  v39 = v33;
  v36 = v42;
  v37 = sub_24734F95C(v23, v42, v25, v27, v28, v41, v16, v30, v32, v39, v35);
  sub_247347880(v25, v27);
  sub_247347880(v23, v36);
  return v37;
}

- (CRXCEnrollmentData)initWithAccPayload:(id)payload accPayloadLeft:(id)left accPayloadRight:(id)right enrollmentName:(id)name issueDate:(id)date calibrationDataLeft:(id)dataLeft calibrationDataRight:(id)dataRight
{
  v16 = sub_247365B94();
  v66 = *(v16 - 8);
  v67 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (payload)
  {
    leftCopy = left;
    rightCopy = right;
    nameCopy = name;
    dateCopy = date;
    dataLeftCopy = dataLeft;
    dataRightCopy = dataRight;
    payloadCopy = payload;
    v26 = sub_247365B44();
    v64 = v27;
    v65 = v26;

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
    v64 = 0xF000000000000000;
    v65 = 0;
    if (left)
    {
LABEL_3:
      v28 = sub_247365B44();
      v62 = v29;
      v63 = v28;

      if (right)
      {
        goto LABEL_4;
      }

LABEL_8:
      v61 = 0;
      v31 = 0xF000000000000000;
      if (name)
      {
        goto LABEL_5;
      }

      goto LABEL_9;
    }
  }

  v62 = 0xF000000000000000;
  v63 = 0;
  if (!right)
  {
    goto LABEL_8;
  }

LABEL_4:
  v61 = sub_247365B44();
  v31 = v30;

  if (name)
  {
LABEL_5:
    v32 = sub_247365C64();
    v34 = v33;

    goto LABEL_10;
  }

LABEL_9:
  v32 = 0;
  v34 = 0;
LABEL_10:
  sub_247365B74();

  if (!dataLeft)
  {
    v41 = 0;
    v43 = 0;
    if (dataRight)
    {
      goto LABEL_12;
    }

LABEL_14:
    v44 = 0;
    v46 = 0;
    goto LABEL_15;
  }

  v41 = sub_247365C64();
  v43 = v42;

  if (!dataRight)
  {
    goto LABEL_14;
  }

LABEL_12:
  v44 = sub_247365C64();
  v46 = v45;

LABEL_15:
  v47 = (self + OBJC_IVAR___CRXCEnrollmentData_accPayload);
  v48 = v64;
  *v47 = v65;
  v47[1] = v48;
  v49 = (self + OBJC_IVAR___CRXCEnrollmentData_accPayloadLeft);
  v50 = v62;
  *v49 = v63;
  v49[1] = v50;
  v51 = (self + OBJC_IVAR___CRXCEnrollmentData_accPayloadRight);
  *v51 = v61;
  v51[1] = v31;
  v52 = (self + OBJC_IVAR___CRXCEnrollmentData_enrollmentName);
  *v52 = v32;
  v52[1] = v34;
  v54 = v66;
  v53 = v67;
  (*(v66 + 16))(self + OBJC_IVAR___CRXCEnrollmentData_issueDate, v18, v67);
  v55 = (self + OBJC_IVAR___CRXCEnrollmentData_calibrationDataLeft);
  *v55 = v41;
  v55[1] = v43;
  v56 = (self + OBJC_IVAR___CRXCEnrollmentData_calibrationDataRight);
  *v56 = v44;
  v56[1] = v46;
  v57 = type metadata accessor for CRXCEnrollmentData(0);
  v68.receiver = self;
  v68.super_class = v57;
  v58 = [(CRXCEnrollmentData *)&v68 init];
  (*(v54 + 8))(v18, v53);
  return v58;
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_247365DC4();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = sub_24734E274(v8);

  sub_247347038(v8);
  return v6 & 1;
}

- (NSString)description
{
  selfCopy = self;
  sub_24734E79C();

  v3 = sub_247365C44();

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_24734EB78(coderCopy);
}

- (CRXCEnrollmentData)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end