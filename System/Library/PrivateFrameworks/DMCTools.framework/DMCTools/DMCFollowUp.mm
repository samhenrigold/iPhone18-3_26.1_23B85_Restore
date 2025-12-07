@interface DMCFollowUp
+ (BOOL)clearWithClientID:(id)d error:(id *)error;
+ (BOOL)clearWithID:(id)d clientID:(id)iD error:(id *)error;
- (BOOL)clearAndReturnError:(id *)error;
- (BOOL)presentAndReturnError:(id *)error;
- (DMCFollowUp)init;
- (DMCFollowUp)initWithStyle:(unint64_t)style identifier:(id)identifier clientID:(id)d userInfo:(id)info title:(id)title message:(id)message notificationTitle:(id)notificationTitle notificationMessage:(id)self0 actionTitle:(id)self1 actionURL:(id)self2 dismissTitle:(id)self3 dismissURL:(id)self4;
- (NSDictionary)userInfo;
@end

@implementation DMCFollowUp

- (NSDictionary)userInfo
{

  v2 = sub_247F23E9C();

  return v2;
}

- (DMCFollowUp)initWithStyle:(unint64_t)style identifier:(id)identifier clientID:(id)d userInfo:(id)info title:(id)title message:(id)message notificationTitle:(id)notificationTitle notificationMessage:(id)self0 actionTitle:(id)self1 actionURL:(id)self2 dismissTitle:(id)self3 dismissURL:(id)self4
{
  styleCopy = style;
  selfCopy = self;
  actionTitleCopy = actionTitle;
  lCopy = l;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE7ED30, &qword_247F25660);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v43 - v15;
  v57 = sub_247F23D3C();
  v17 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v19 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_247F23F3C();
  v55 = v21;
  v56 = v20;
  v22 = sub_247F23F3C();
  v53 = v23;
  v54 = v22;
  v52 = sub_247F23EAC();
  v24 = sub_247F23F3C();
  v50 = v25;
  v51 = v24;
  v26 = sub_247F23F3C();
  v48 = v27;
  v49 = v26;
  if (notificationTitle)
  {
    v28 = sub_247F23F3C();
    v44 = v29;
    v45 = v28;
    dismissTitleCopy2 = dismissTitle;
    rLCopy2 = rL;
    if (notificationMessage)
    {
LABEL_3:
      v43 = sub_247F23F3C();
      v33 = v32;
      goto LABEL_6;
    }
  }

  else
  {
    v44 = 0;
    v45 = 0;
    dismissTitleCopy2 = dismissTitle;
    rLCopy2 = rL;
    if (notificationMessage)
    {
      goto LABEL_3;
    }
  }

  v43 = 0;
  v33 = 0;
LABEL_6:
  v34 = sub_247F23F3C();
  v36 = v35;
  sub_247F23CFC();
  if (!dismissTitleCopy2)
  {
    v37 = 0;
    v39 = rLCopy2;
    if (v39)
    {
      goto LABEL_8;
    }

LABEL_10:
    v41 = 1;
    goto LABEL_11;
  }

  v37 = sub_247F23F3C();
  dismissTitleCopy2 = v38;
  v39 = rLCopy2;
  if (!v39)
  {
    goto LABEL_10;
  }

LABEL_8:
  v40 = v39;
  sub_247F23CFC();

  v41 = 0;
LABEL_11:
  (*(v17 + 56))(v16, v41, 1, v57);
  DMCFollowUp.init(style:identifier:clientID:userInfo:title:message:notificationTitle:notificationMessage:actionTitle:actionURL:dismissTitle:dismiss:)(styleCopy, v56, v55, v54, v53, v52, v51, v50, v49, v48, v45, v44, v43, v33, v34, v36, v19, v37, dismissTitleCopy2, v16);
  return result;
}

- (BOOL)presentAndReturnError:(id *)error
{
  selfCopy = self;
  DMCFollowUp.present()();

  if (v5)
  {
    if (error)
    {
      v6 = sub_247F23C8C();

      v7 = v6;
      *error = v6;
    }

    else
    {
    }
  }

  return v5 == 0;
}

- (BOOL)clearAndReturnError:(id *)error
{
  selfCopy = self;
  controller = [(DMCFollowUp *)selfCopy controller];
  sub_247F0F93C(controller);

  return 1;
}

+ (BOOL)clearWithClientID:(id)d error:(id *)error
{
  v4 = sub_247F23F3C();
  sub_247F0F9E0(v4, v5);

  return 1;
}

+ (BOOL)clearWithID:(id)d clientID:(id)iD error:(id *)error
{
  v5 = sub_247F23F3C();
  v7 = v6;
  v8 = sub_247F23F3C();
  sub_247F0FC14(v5, v7, v8, v9);

  return 1;
}

- (DMCFollowUp)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end