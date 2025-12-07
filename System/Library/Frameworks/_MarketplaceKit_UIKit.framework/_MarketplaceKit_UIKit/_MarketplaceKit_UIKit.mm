__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_23B7CD6C0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23B7CD6E0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

void type metadata accessor for CGSize()
{
  if (!qword_27E184F40)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27E184F40);
    }
  }
}

_MarketplaceKit_UIKit::ActionButton::ButtonImagePlacement_optional __swiftcall ActionButton.ButtonImagePlacement.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_23B7CD788()
{
  v1 = *v0;
  sub_23B7DA578();
  MEMORY[0x23EEA9D00](v1);
  return sub_23B7DA598();
}

uint64_t sub_23B7CD7FC(uint64_t a1)
{
  v2 = *v1;
  sub_23B7DA578();
  MEMORY[0x23EEA9D00](v2);
  return sub_23B7DA598();
}

id ActionButton.init(action:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E184FB0, &qword_23B7DAE80);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v32 - v6;
  v8 = &v2[OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton__label];
  *v8 = 32;
  v8[1] = 0xE100000000000000;
  v9 = &v2[OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton__imageName];
  *v9 = 0;
  v9[1] = 0;
  v10 = OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton__backgroundColor;
  v11 = objc_opt_self();
  *&v2[v10] = [v11 whiteColor];
  *&v2[OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton__borderWidth] = 0;
  v12 = OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton__borderColor;
  *&v2[v12] = [v11 clearColor];
  v2[OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton__imagePlacement] = 1;
  v13 = &v2[OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton__size];
  *v13 = 0;
  v13[1] = 0;
  *&v2[OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton__fontSize] = 0x4028000000000000;
  v14 = OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton_slotView;
  *&v2[v14] = [objc_allocWithZone(MEMORY[0x277D76260]) init];
  v2[OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton_performingAction] = 0;
  sub_23B7D4A18(a1, &v2[OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton_action], type metadata accessor for ActionButton.Action);
  v15 = *MEMORY[0x277CD5040];
  v16 = sub_23B7DA148();
  v17 = *(v16 - 8);
  (*(v17 + 104))(v7, v15, v16);
  (*(v17 + 56))(v7, 0, 1, v16);
  v18 = [v11 whiteColor];
  v19 = [v18 CGColor];

  v20 = [v11 blueColor];
  v21 = [v20 CGColor];

  v22 = [v11 clearColor];
  v23 = [v22 CGColor];

  v24 = objc_allocWithZone(sub_23B7DA168());
  v25 = sub_23B7DA158();
  v26 = type metadata accessor for SecureButtonContentDelegate();
  v27 = objc_allocWithZone(v26);
  *&v27[OBJC_IVAR____TtC21_MarketplaceKit_UIKit27SecureButtonContentDelegate_templateTag] = v25;
  v33.receiver = v27;
  v33.super_class = v26;
  v28 = v25;
  *&v2[OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton_contentDelegate] = objc_msgSendSuper2(&v33, sel_init);
  v29 = type metadata accessor for ActionButton(0);
  v32.receiver = v2;
  v32.super_class = v29;
  v30 = objc_msgSendSuper2(&v32, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_23B7CF19C();

  sub_23B7D47F8(a1, type metadata accessor for ActionButton.Action);
  return v30;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_23B7CDD08(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_23B7CDE1C(void *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  sub_23B7DA348();
  sub_23B7DA338();
  sub_23B7DA328();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8.receiver = a1;
  v8.super_class = type metadata accessor for ActionButton(0);
  v6 = objc_msgSendSuper2(&v8, *a4);

  return v6;
}

void sub_23B7CDEEC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, const char **a5)
{
  sub_23B7DA348();
  sub_23B7DA338();
  sub_23B7DA328();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10.receiver = a1;
  v10.super_class = type metadata accessor for ActionButton(0);
  v8 = *a5;
  v9 = a1;
  objc_msgSendSuper2(&v10, v8, a3);
  sub_23B7CF0C4();
}

id sub_23B7CE34C(uint64_t *a1, char **a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  v5 = &(*a2)[OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton__label];
  *v5 = v3;
  *(v5 + 1) = v2;

  sub_23B7CF0C4();
  v6 = *&v4[OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton_contentDelegate];
  v7 = sub_23B7CF5D4();
  v8 = *(v6 + OBJC_IVAR____TtC21_MarketplaceKit_UIKit27SecureButtonContentDelegate_templateTag);
  *(v6 + OBJC_IVAR____TtC21_MarketplaceKit_UIKit27SecureButtonContentDelegate_templateTag) = v7;

  [*&v4[OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton_slotView] _updateContent];

  return [v4 setNeedsLayout];
}

uint64_t sub_23B7CE3F0()
{
  v1 = *(v0 + OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton__label);

  return v1;
}

id sub_23B7CE42C(uint64_t a1, uint64_t a2)
{
  v3 = &v2[OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton__label];
  *v3 = a1;
  *(v3 + 1) = a2;

  sub_23B7CF0C4();
  v4 = *&v2[OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton_contentDelegate];
  v5 = sub_23B7CF5D4();
  v6 = *(v4 + OBJC_IVAR____TtC21_MarketplaceKit_UIKit27SecureButtonContentDelegate_templateTag);
  *(v4 + OBJC_IVAR____TtC21_MarketplaceKit_UIKit27SecureButtonContentDelegate_templateTag) = v5;

  [*&v2[OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton_slotView] _updateContent];

  return [v2 setNeedsLayout];
}

uint64_t (*sub_23B7CE4C4(void *a1))()
{
  v3 = OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton__label;
  a1[2] = v1;
  a1[3] = v3;
  v4 = (v1 + v3);
  v5 = v4[1];
  *a1 = *v4;
  a1[1] = v5;

  return sub_23B7CE520;
}

id sub_23B7CE520(void *a1, char a2)
{
  v2 = a1[2];
  v3 = &v2[a1[3]];
  v4 = a1[1];
  *v3 = *a1;
  *(v3 + 1) = v4;
  if (a2)
  {

    sub_23B7CF0C4();
    v5 = *&v2[OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton_contentDelegate];
    v6 = sub_23B7CF5D4();
    v7 = *(v5 + OBJC_IVAR____TtC21_MarketplaceKit_UIKit27SecureButtonContentDelegate_templateTag);
    *(v5 + OBJC_IVAR____TtC21_MarketplaceKit_UIKit27SecureButtonContentDelegate_templateTag) = v6;

    [*&v2[OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton_slotView] _updateContent];
    [v2 setNeedsLayout];
  }

  else
  {

    sub_23B7CF0C4();
    v9 = *&v2[OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton_contentDelegate];
    v10 = sub_23B7CF5D4();
    v11 = *(v9 + OBJC_IVAR____TtC21_MarketplaceKit_UIKit27SecureButtonContentDelegate_templateTag);
    *(v9 + OBJC_IVAR____TtC21_MarketplaceKit_UIKit27SecureButtonContentDelegate_templateTag) = v10;

    [*&v2[OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton_slotView] _updateContent];

    return [v2 setNeedsLayout];
  }
}

id sub_23B7CE64C(uint64_t *a1, char **a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  v5 = &(*a2)[OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton__imageName];
  *v5 = v3;
  *(v5 + 1) = v2;

  sub_23B7CF0C4();
  v6 = *&v4[OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton_contentDelegate];
  v7 = sub_23B7CF5D4();
  v8 = *(v6 + OBJC_IVAR____TtC21_MarketplaceKit_UIKit27SecureButtonContentDelegate_templateTag);
  *(v6 + OBJC_IVAR____TtC21_MarketplaceKit_UIKit27SecureButtonContentDelegate_templateTag) = v7;

  [*&v4[OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton_slotView] _updateContent];

  return [v4 setNeedsLayout];
}

uint64_t sub_23B7CE6F0()
{
  v1 = *(v0 + OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton__imageName);

  return v1;
}

id sub_23B7CE72C(uint64_t a1, uint64_t a2)
{
  v3 = &v2[OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton__imageName];
  *v3 = a1;
  *(v3 + 1) = a2;

  sub_23B7CF0C4();
  v4 = *&v2[OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton_contentDelegate];
  v5 = sub_23B7CF5D4();
  v6 = *(v4 + OBJC_IVAR____TtC21_MarketplaceKit_UIKit27SecureButtonContentDelegate_templateTag);
  *(v4 + OBJC_IVAR____TtC21_MarketplaceKit_UIKit27SecureButtonContentDelegate_templateTag) = v5;

  [*&v2[OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton_slotView] _updateContent];

  return [v2 setNeedsLayout];
}

id (*sub_23B7CE7C4(void *a1))(void *a1, char a2)
{
  v3 = OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton__imageName;
  a1[2] = v1;
  a1[3] = v3;
  v4 = (v1 + v3);
  v5 = v4[1];
  *a1 = *v4;
  a1[1] = v5;

  return sub_23B7CE520;
}

id sub_23B7CE834(_BYTE *a1)
{
  v1[OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton__imagePlacement] = *a1;
  sub_23B7CF0C4();
  v2 = *&v1[OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton_contentDelegate];
  v3 = sub_23B7CF5D4();
  v4 = *(v2 + OBJC_IVAR____TtC21_MarketplaceKit_UIKit27SecureButtonContentDelegate_templateTag);
  *(v2 + OBJC_IVAR____TtC21_MarketplaceKit_UIKit27SecureButtonContentDelegate_templateTag) = v3;

  [*&v1[OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton_slotView] _updateContent];

  return [v1 setNeedsLayout];
}

id (*sub_23B7CE8C0(uint64_t a1))(char **a1)
{
  v2 = OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton__imagePlacement;
  *a1 = v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = *(v1 + v2);
  return sub_23B7CE8F4;
}

id sub_23B7CE8F4(char **a1)
{
  v1 = *a1;
  a1[1][*a1] = *(a1 + 16);
  sub_23B7CF0C4();
  v2 = *&v1[OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton_contentDelegate];
  v3 = sub_23B7CF5D4();
  v4 = *(v2 + OBJC_IVAR____TtC21_MarketplaceKit_UIKit27SecureButtonContentDelegate_templateTag);
  *(v2 + OBJC_IVAR____TtC21_MarketplaceKit_UIKit27SecureButtonContentDelegate_templateTag) = v3;

  [*&v1[OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton_slotView] _updateContent];

  return [v1 setNeedsLayout];
}

id sub_23B7CE990(double a1, double a2)
{
  v3 = &v2[OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton__size];
  *v3 = a1;
  v3[1] = a2;
  [v2 frame];
  [v2 setFrame_];
  sub_23B7CF0C4();
  v4 = *&v2[OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton_contentDelegate];
  v5 = sub_23B7CF5D4();
  v6 = *(v4 + OBJC_IVAR____TtC21_MarketplaceKit_UIKit27SecureButtonContentDelegate_templateTag);
  *(v4 + OBJC_IVAR____TtC21_MarketplaceKit_UIKit27SecureButtonContentDelegate_templateTag) = v5;

  [*&v2[OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton_slotView] _updateContent];

  return [v2 setNeedsLayout];
}

id (*sub_23B7CEA54(uint64_t a1))(double *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton__size);
  *(a1 + 16) = v1;
  *a1 = v2;
  return sub_23B7CEA88;
}

uint64_t (*sub_23B7CEACC(void *a1))()
{
  v2 = OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton__fontSize;
  v3 = *(v1 + OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton__fontSize);
  a1[1] = v1;
  a1[2] = v2;
  *a1 = v3;
  return sub_23B7D4DD8;
}

id sub_23B7CEB00(double *a1, id *a2)
{
  v2 = *a2;
  [*a2 _setCornerRadius_];
  sub_23B7CF0C4();
  v3 = *&v2[OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton_contentDelegate];
  v4 = sub_23B7CF5D4();
  v5 = *(v3 + OBJC_IVAR____TtC21_MarketplaceKit_UIKit27SecureButtonContentDelegate_templateTag);
  *(v3 + OBJC_IVAR____TtC21_MarketplaceKit_UIKit27SecureButtonContentDelegate_templateTag) = v4;

  [*&v2[OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton_slotView] _updateContent];

  return [v2 setNeedsLayout];
}

id sub_23B7CEBA4()
{
  [v0 _setCornerRadius_];
  sub_23B7CF0C4();
  v1 = *&v0[OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton_contentDelegate];
  v2 = sub_23B7CF5D4();
  v3 = *(v1 + OBJC_IVAR____TtC21_MarketplaceKit_UIKit27SecureButtonContentDelegate_templateTag);
  *(v1 + OBJC_IVAR____TtC21_MarketplaceKit_UIKit27SecureButtonContentDelegate_templateTag) = v2;

  [*&v0[OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton_slotView] _updateContent];

  return [v0 setNeedsLayout];
}

id (*sub_23B7CEC30(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  [v1 _cornerRadius];
  *a1 = v3;
  return sub_23B7CEC84;
}

id sub_23B7CEC84(uint64_t a1)
{
  v1 = *(a1 + 8);
  [v1 _setCornerRadius_];
  sub_23B7CF0C4();
  v2 = *&v1[OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton_contentDelegate];
  v3 = sub_23B7CF5D4();
  v4 = *(v2 + OBJC_IVAR____TtC21_MarketplaceKit_UIKit27SecureButtonContentDelegate_templateTag);
  *(v2 + OBJC_IVAR____TtC21_MarketplaceKit_UIKit27SecureButtonContentDelegate_templateTag) = v3;

  [*&v1[OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton_slotView] _updateContent];

  return [v1 setNeedsLayout];
}

id sub_23B7CED18(void *a1, char **a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = *a2;
  *&(*a2)[*a5] = *a1;
  sub_23B7CF0C4();
  v6 = *&v5[OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton_contentDelegate];
  v7 = sub_23B7CF5D4();
  v8 = *(v6 + OBJC_IVAR____TtC21_MarketplaceKit_UIKit27SecureButtonContentDelegate_templateTag);
  *(v6 + OBJC_IVAR____TtC21_MarketplaceKit_UIKit27SecureButtonContentDelegate_templateTag) = v7;

  [*&v5[OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton_slotView] _updateContent];

  return [v5 setNeedsLayout];
}

id sub_23B7CEDC0(void *a1, double a2)
{
  *&v2[*a1] = a2;
  sub_23B7CF0C4();
  v3 = *&v2[OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton_contentDelegate];
  v4 = sub_23B7CF5D4();
  v5 = *(v3 + OBJC_IVAR____TtC21_MarketplaceKit_UIKit27SecureButtonContentDelegate_templateTag);
  *(v3 + OBJC_IVAR____TtC21_MarketplaceKit_UIKit27SecureButtonContentDelegate_templateTag) = v4;

  [*&v2[OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton_slotView] _updateContent];

  return [v2 setNeedsLayout];
}

uint64_t (*sub_23B7CEE44(void *a1))()
{
  v2 = OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton__borderWidth;
  v3 = *(v1 + OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton__borderWidth);
  a1[1] = v1;
  a1[2] = v2;
  *a1 = v3;
  return sub_23B7CEE78;
}

id sub_23B7CEE7C(void *a1)
{
  v1 = a1[1];
  *&v1[a1[2]] = *a1;
  sub_23B7CF0C4();
  v2 = *&v1[OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton_contentDelegate];
  v3 = sub_23B7CF5D4();
  v4 = *(v2 + OBJC_IVAR____TtC21_MarketplaceKit_UIKit27SecureButtonContentDelegate_templateTag);
  *(v2 + OBJC_IVAR____TtC21_MarketplaceKit_UIKit27SecureButtonContentDelegate_templateTag) = v3;

  [*&v1[OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton_slotView] _updateContent];

  return [v1 setNeedsLayout];
}

void sub_23B7CEF14(void *a1)
{
  sub_23B7D2984(a1);
}

void (*sub_23B7CEF4C(void *a1))(uint64_t a1, char a2)
{
  v2 = OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton__borderColor;
  a1[1] = v1;
  a1[2] = v2;
  v3 = *(v1 + v2);
  *a1 = v3;
  v4 = v3;
  return sub_23B7CEFA4;
}

void sub_23B7CEFA4(uint64_t a1, char a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = *a1;
  v6 = *&v4[v3];
  *&v4[v3] = *a1;
  v7 = v5;
  v15 = v7;
  if (a2)
  {
    v8 = v7;

    sub_23B7CF0C4();
    v9 = *&v4[OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton_contentDelegate];
    v10 = sub_23B7CF5D4();
    v11 = *(v9 + OBJC_IVAR____TtC21_MarketplaceKit_UIKit27SecureButtonContentDelegate_templateTag);
    *(v9 + OBJC_IVAR____TtC21_MarketplaceKit_UIKit27SecureButtonContentDelegate_templateTag) = v10;

    [*&v4[OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton_slotView] _updateContent];
    [v4 setNeedsLayout];
  }

  else
  {

    sub_23B7CF0C4();
    v12 = *&v4[OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton_contentDelegate];
    v13 = sub_23B7CF5D4();
    v14 = *(v12 + OBJC_IVAR____TtC21_MarketplaceKit_UIKit27SecureButtonContentDelegate_templateTag);
    *(v12 + OBJC_IVAR____TtC21_MarketplaceKit_UIKit27SecureButtonContentDelegate_templateTag) = v13;

    [*&v4[OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton_slotView] _updateContent];
    [v4 setNeedsLayout];
  }
}

id sub_23B7CF0C4()
{
  if ([v0 isEnabled])
  {
    v1 = [v0 traitCollection];
    v2 = [v1 userInterfaceStyle] == 2;

    v3 = *&v0[OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton_slotView];
    v4 = [v0 isHighlighted];
    v5 = dbl_23B7DAE50[v2];
    if (!v4)
    {
      v5 = 1.0;
    }

    v6 = v3;
  }

  else
  {
    v6 = *&v0[OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton_slotView];
    v5 = 0.25;
  }

  return [v6 setAlpha_];
}

id sub_23B7CF19C()
{
  v1 = v0;
  v2 = type metadata accessor for ActionButton.Action(0);
  MEMORY[0x28223BE20](v2, v3);
  v5 = (v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *&v1[OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton_slotView];
  [v6 _setContentDelegate_];
  [v1 addTarget:v1 action:sel_defaultAction_event_ forControlEvents:64];
  v7 = [objc_opt_self() whiteColor];
  [v6 setTintColor_];

  [v1 setIsAccessibilityElement_];
  sub_23B7D4A18(&v1[OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton_action], v5, type metadata accessor for ActionButton.Action);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      v9 = *v5;
      v26 = 0;
      v27 = 0xE000000000000000;
      sub_23B7DA3D8();

      v10 = 0x68636E75614CLL;
      goto LABEL_7;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v9 = *v5;
    v26 = 0;
    v27 = 0xE000000000000000;
    sub_23B7DA3D8();

    v10 = 0x6574656C6544;
LABEL_7:
    v26 = v10 & 0xFFFFFFFFFFFFLL | 0x20000000000000;
    v27 = 0xE700000000000000;
    v25[1] = v9;
    v11 = sub_23B7DA548();
    MEMORY[0x23EEA9A40](v11);

    MEMORY[0x23EEA9A40](0x6E6F7474754220, 0xE700000000000000);
    goto LABEL_8;
  }

  sub_23B7D47F8(v5, type metadata accessor for ActionButton.Action);

LABEL_8:
  v12 = sub_23B7DA298();

  [v1 setAccessibilityIdentifier_];

  [v6 setUserInteractionEnabled_];
  [v6 setTranslatesAutoresizingMaskIntoConstraints_];
  [v1 addSubview_];
  v13 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E185068, &unk_23B7DB070);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_23B7DAE60;
  v15 = [v6 centerXAnchor];
  v16 = [v1 centerXAnchor];
  v17 = [v15 constraintEqualToAnchor_];

  *(v14 + 32) = v17;
  v18 = [v6 centerYAnchor];
  v19 = [v1 centerYAnchor];
  v20 = [v18 constraintEqualToAnchor_];

  *(v14 + 40) = v20;
  sub_23B7D4D84();
  v21 = sub_23B7DA2F8();

  [v13 activateConstraints_];

  LODWORD(v22) = 1144750080;
  [v1 setContentHuggingPriority:1 forAxis:v22];
  LODWORD(v23) = 1144750080;
  return [v1 setContentHuggingPriority:0 forAxis:v23];
}

id sub_23B7CF5D4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E184FB0, &qword_23B7DAE80);
  MEMORY[0x28223BE20](v1 - 8, v2);

  sub_23B7DA138();
  v3 = [*&v0[OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton__backgroundColor] CGColor];
  result = [v0 tintColor];
  if (result)
  {
    v5 = result;
    v6 = [result CGColor];

    [v0 _cornerRadius];
    v7 = [*&v0[OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton__borderColor] CGColor];
    v8 = objc_allocWithZone(sub_23B7DA168());
    return sub_23B7DA158();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23B7CF7CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[13] = a6;
  v7[14] = a7;
  v7[11] = a4;
  v7[12] = a5;
  v8 = sub_23B7DA258();
  v7[15] = v8;
  v7[16] = *(v8 - 8);
  v7[17] = swift_task_alloc();
  v9 = sub_23B7DA1A8();
  v7[18] = v9;
  v7[19] = *(v9 - 8);
  v7[20] = swift_task_alloc();
  v7[21] = swift_task_alloc();
  v10 = sub_23B7DA178();
  v7[22] = v10;
  v7[23] = *(v10 - 8);
  v7[24] = swift_task_alloc();
  v7[25] = swift_task_alloc();
  v7[26] = swift_task_alloc();
  v7[27] = type metadata accessor for ActionButton.Action(0);
  v7[28] = swift_task_alloc();
  v7[29] = swift_task_alloc();
  v7[30] = swift_task_alloc();
  v7[31] = type metadata accessor for InstallConfiguration(0);
  v7[32] = swift_task_alloc();
  v11 = sub_23B7DA0C8();
  v7[33] = v11;
  v7[34] = *(v11 - 8);
  v7[35] = swift_task_alloc();
  v7[36] = swift_task_alloc();
  v12 = sub_23B7DA1F8();
  v7[37] = v12;
  v7[38] = *(v12 - 8);
  v7[39] = swift_task_alloc();
  v13 = sub_23B7DA218();
  v7[40] = v13;
  v7[41] = *(v13 - 8);
  v7[42] = swift_task_alloc();
  v14 = sub_23B7DA1B8();
  v7[43] = v14;
  v7[44] = *(v14 - 8);
  v7[45] = swift_task_alloc();
  v15 = sub_23B7DA1E8();
  v7[46] = v15;
  v7[47] = *(v15 - 8);
  v7[48] = swift_task_alloc();
  sub_23B7DA348();
  v7[49] = sub_23B7DA338();
  v17 = sub_23B7DA328();
  v7[50] = v17;
  v7[51] = v16;

  return MEMORY[0x2822009F8](sub_23B7CFBF0, v17, v16);
}

uint64_t sub_23B7CFBF0()
{
  v1 = v0[12];
  (*(v0[44] + 16))(v0[45], v0[11], v0[43]);
  v2 = v1;
  sub_23B7DA1D8();
  v3 = swift_task_alloc();
  v0[52] = v3;
  *v3 = v0;
  v3[1] = sub_23B7CFCCC;
  v4 = v0[42];

  return MEMORY[0x282123830](v4);
}

uint64_t sub_23B7CFCCC()
{
  v2 = *v1;
  *(*v1 + 424) = v0;

  v3 = *(v2 + 408);
  v4 = *(v2 + 400);
  if (v0)
  {
    v5 = sub_23B7D03B4;
  }

  else
  {
    v5 = sub_23B7CFE08;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_23B7CFE08()
{
  v2 = v0[38];
  v1 = v0[39];
  v3 = v0[37];
  sub_23B7DA208();
  v4 = (*(v2 + 88))(v1, v3);
  if (v4 == *MEMORY[0x277CD5098])
  {
    v5 = v0[39];
    v6 = v0[36];
    v7 = v0[33];
    v8 = v0[34];
    v9 = v0[30];
    v10 = v0[13];
    (*(v0[38] + 96))(v5, v0[37]);
    (*(v8 + 32))(v6, v5, v7);
    sub_23B7D4A18(v10 + OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton_action, v9, type metadata accessor for ActionButton.Action);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v11 = v0[31];
      v12 = v0[32];
      sub_23B7D473C(v0[30], v12);
      v41 = (*(v12 + *(v11 + 20)) + **(v12 + *(v11 + 20)));
      v13 = swift_task_alloc();
      v0[54] = v13;
      *v13 = v0;
      v13[1] = sub_23B7D0844;
      v14 = v0 + 5;
LABEL_16:

      return v41(v14);
    }

    v42 = v0[48];
    v21 = v0[46];
    v22 = v0[47];
    v24 = v0[41];
    v23 = v0[42];
    v25 = v0[40];
    v27 = v0[36];
    v28 = v0[33];
    v26 = v0[34];
    v29 = v0[30];
  }

  else
  {
    if (v4 != *MEMORY[0x277CD50A0])
    {
      if (v4 != *MEMORY[0x277CD50A8])
      {
        return sub_23B7DA428();
      }

      v30 = v0[48];
      v31 = v0[46];
      v32 = v0[47];
      v34 = v0[41];
      v33 = v0[42];
      v35 = v0[40];

      (*(v34 + 8))(v33, v35);
      (*(v32 + 8))(v30, v31);
      *(v0[13] + OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton_performingAction) = 0;
      goto LABEL_11;
    }

    v15 = v0[39];
    v17 = v0[34];
    v16 = v0[35];
    v18 = v0[33];
    v19 = v0[29];
    v20 = v0[13];
    (*(v0[38] + 96))(v15, v0[37]);
    (*(v17 + 32))(v16, v15, v18);
    sub_23B7D4A18(v20 + OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton_action, v19, type metadata accessor for ActionButton.Action);
    if (!swift_getEnumCaseMultiPayload())
    {
      v38 = v0[29];
      v0[60] = *v38;
      v39 = v38[1];
      v0[61] = v38[2];
      v41 = (v39 + *v39);
      v40 = swift_task_alloc();
      v0[62] = v40;
      *v40 = v0;
      v40[1] = sub_23B7D1424;
      v14 = v0 + 8;
      goto LABEL_16;
    }

    v42 = v0[48];
    v21 = v0[46];
    v22 = v0[47];
    v24 = v0[41];
    v23 = v0[42];
    v25 = v0[40];
    v26 = v0[34];
    v27 = v0[35];
    v28 = v0[33];
    v29 = v0[29];
  }

  (*(v26 + 8))(v27, v28);
  (*(v24 + 8))(v23, v25);
  (*(v22 + 8))(v42, v21);
  sub_23B7D47F8(v29, type metadata accessor for ActionButton.Action);
LABEL_11:

  v36 = v0[1];

  return v36();
}

uint64_t sub_23B7D03B4()
{
  v31 = v0;
  v1 = v0[48];
  v2 = v0[46];
  v3 = v0[47];

  (*(v3 + 8))(v1, v2);
  v4 = v0[53];
  sub_23B7DA228();
  v5 = v4;
  v6 = sub_23B7DA248();
  v7 = sub_23B7DA378();

  if (os_log_type_enabled(v6, v7))
  {
    v27 = v0[16];
    v28 = v0[15];
    v29 = v0[17];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v30 = v9;
    *v8 = 136446210;
    swift_getErrorValue();
    v10 = v4;
    v11 = *(v0[3] - 8);
    swift_task_alloc();
    (*(v11 + 16))();
    v12 = sub_23B7DA2A8();
    v14 = v13;

    v15 = v12;
    v4 = v10;
    v16 = sub_23B7D7840(v15, v14, &v30);

    *(v8 + 4) = v16;
    _os_log_impl(&dword_23B7CC000, v6, v7, "[ActionButton] Error performing action: %{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x23EEAA190](v9, -1, -1);
    MEMORY[0x23EEAA190](v8, -1, -1);

    (*(v27 + 8))(v29, v28);
  }

  else
  {
    v17 = v0[16];
    v18 = v0[17];
    v19 = v0[15];

    (*(v17 + 8))(v18, v19);
  }

  sub_23B7D4A18(v0[13] + OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton_action, v0[28], type metadata accessor for ActionButton.Action);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      goto LABEL_17;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    goto LABEL_17;
  }

  v21 = v0[14];
  sub_23B7D47F8(v0[28], type metadata accessor for ActionButton.Action);
  if (v21 >> 62)
  {
    v22 = sub_23B7DA438();
    if (!v22)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v22)
    {
      goto LABEL_17;
    }
  }

  result = sub_23B7DA128();
  if (v22 < 1)
  {
    __break(1u);
    return result;
  }

  if ((v21 & 0xC000000000000001) != 0)
  {
    v24 = 0;
    do
    {
      MEMORY[0x23EEA9B60](v24++, v0[14]);
      sub_23B7DA118();
      sub_23B7DA0E8();

      swift_unknownObjectRelease();
    }

    while (v22 != v24);
  }

  else
  {
    v25 = v0[14] + 32;
    do
    {
      v25 += 8;

      sub_23B7DA118();
      sub_23B7DA0E8();

      --v22;
    }

    while (v22);
  }

LABEL_17:

  *(v0[13] + OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton_performingAction) = 0;

  v26 = v0[1];

  return v26();
}

uint64_t sub_23B7D0844()
{
  v1 = *v0;

  v2 = *(v1 + 408);
  v3 = *(v1 + 400);

  return MEMORY[0x2822009F8](sub_23B7D0964, v3, v2);
}

uint64_t sub_23B7D0964()
{
  v2 = v0[5];
  v1 = v0[6];
  v0[55] = v2;
  v0[56] = v1;
  v3 = v0[7];
  v0[57] = v3;
  if (!v1)
  {
    (*(v0[34] + 16))(v0[26], v0[36], v0[33]);
    v9 = MEMORY[0x277CD5048];
    goto LABEL_10;
  }

  if (!v3)
  {

LABEL_8:
    v23 = 0;
    v8 = 0xF000000000000000;
    goto LABEL_9;
  }

  v4 = v3;
  v5 = [v4 externalizedContext];
  if (!v5)
  {

    goto LABEL_8;
  }

  v6 = v5;
  v23 = sub_23B7DA0B8();
  v8 = v7;

LABEL_9:
  v10 = v0[36];
  v11 = v0[33];
  v12 = v0[34];
  v13 = v0[26];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E185060, &qword_23B7DB068);
  v15 = (v13 + *(v14 + 48));
  v16 = (v13 + *(v14 + 64));
  (*(v12 + 16))(v13, v10, v11);
  *v15 = v2;
  v15[1] = v1;
  *v16 = v23;
  v16[1] = v8;
  v9 = MEMORY[0x277CD5050];
LABEL_10:
  v17 = v0[25];
  v18 = v0[26];
  v19 = v0[22];
  v20 = v0[23];
  (*(v20 + 104))(v18, *v9, v19);
  (*(v20 + 16))(v17, v18, v19);
  sub_23B7DA198();
  v21 = swift_task_alloc();
  v0[58] = v21;
  *v21 = v0;
  v21[1] = sub_23B7D0B64;

  return MEMORY[0x282123810]();
}

uint64_t sub_23B7D0B64()
{
  v2 = *v1;
  *(*v1 + 472) = v0;

  v3 = *(v2 + 408);
  v4 = *(v2 + 400);
  if (v0)
  {
    v5 = sub_23B7D0ECC;
  }

  else
  {
    v5 = sub_23B7D0CA0;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_23B7D0CA0()
{
  v12 = v0[56];
  v1 = v0[55];
  v2 = v0[47];
  v20 = v0[46];
  v21 = v0[48];
  v3 = v0[41];
  v17 = v0[40];
  v18 = v0[42];
  v16 = v0[36];
  v4 = v0[34];
  v14 = v0[57];
  v15 = v0[33];
  v19 = v0[32];
  v13 = v0[26];
  v6 = v0[22];
  v5 = v0[23];
  v7 = v0[21];
  v9 = v0[18];
  v8 = v0[19];

  sub_23B7D4D40(v1, v12, v14);
  (*(v8 + 8))(v7, v9);
  (*(v5 + 8))(v13, v6);
  (*(v4 + 8))(v16, v15);
  (*(v3 + 8))(v18, v17);
  (*(v2 + 8))(v21, v20);
  sub_23B7D47F8(v19, type metadata accessor for InstallConfiguration);
  *(v0[13] + OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton_performingAction) = 0;

  v10 = v0[1];

  return v10();
}

uint64_t sub_23B7D0ECC()
{
  v47 = v0;
  v33 = v0[56];
  v1 = v0[55];
  v2 = v0[47];
  v42 = v0[46];
  v44 = v0[48];
  v3 = v0[41];
  v38 = v0[40];
  v39 = v0[42];
  v37 = v0[36];
  v4 = v0[34];
  v35 = v0[57];
  v36 = v0[33];
  v40 = v0[32];
  v34 = v0[26];
  v6 = v0[22];
  v5 = v0[23];
  v7 = v0[21];
  v9 = v0[18];
  v8 = v0[19];

  sub_23B7D4D40(v1, v33, v35);
  (*(v8 + 8))(v7, v9);
  (*(v5 + 8))(v34, v6);
  (*(v4 + 8))(v37, v36);
  (*(v3 + 8))(v39, v38);
  (*(v2 + 8))(v44, v42);
  sub_23B7D47F8(v40, type metadata accessor for InstallConfiguration);
  v10 = v0[59];
  sub_23B7DA228();
  v11 = v10;
  v12 = sub_23B7DA248();
  v13 = sub_23B7DA378();

  if (os_log_type_enabled(v12, v13))
  {
    v41 = v0[16];
    v43 = v0[15];
    v45 = v0[17];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v46 = v15;
    *v14 = 136446210;
    swift_getErrorValue();
    v16 = v10;
    v17 = *(v0[3] - 8);
    swift_task_alloc();
    (*(v17 + 16))();
    v18 = sub_23B7DA2A8();
    v20 = v19;

    v21 = v18;
    v10 = v16;
    v22 = sub_23B7D7840(v21, v20, &v46);

    *(v14 + 4) = v22;
    _os_log_impl(&dword_23B7CC000, v12, v13, "[ActionButton] Error performing action: %{public}s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x23EEAA190](v15, -1, -1);
    MEMORY[0x23EEAA190](v14, -1, -1);

    (*(v41 + 8))(v45, v43);
  }

  else
  {
    v23 = v0[16];
    v24 = v0[17];
    v25 = v0[15];

    (*(v23 + 8))(v24, v25);
  }

  sub_23B7D4A18(v0[13] + OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton_action, v0[28], type metadata accessor for ActionButton.Action);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      goto LABEL_17;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    goto LABEL_17;
  }

  v27 = v0[14];
  sub_23B7D47F8(v0[28], type metadata accessor for ActionButton.Action);
  if (v27 >> 62)
  {
    v28 = sub_23B7DA438();
    if (!v28)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v28)
    {
      goto LABEL_17;
    }
  }

  result = sub_23B7DA128();
  if (v28 < 1)
  {
    __break(1u);
    return result;
  }

  if ((v27 & 0xC000000000000001) != 0)
  {
    v30 = 0;
    do
    {
      MEMORY[0x23EEA9B60](v30++, v0[14]);
      sub_23B7DA118();
      sub_23B7DA0E8();

      swift_unknownObjectRelease();
    }

    while (v28 != v30);
  }

  else
  {
    v31 = v0[14] + 32;
    do
    {
      v31 += 8;

      sub_23B7DA118();
      sub_23B7DA0E8();

      --v28;
    }

    while (v28);
  }

LABEL_17:

  *(v0[13] + OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton_performingAction) = 0;

  v32 = v0[1];

  return v32();
}

uint64_t sub_23B7D1424()
{
  v1 = *v0;

  v2 = *(v1 + 408);
  v3 = *(v1 + 400);

  return MEMORY[0x2822009F8](sub_23B7D1544, v3, v2);
}

uint64_t sub_23B7D1544()
{
  v2 = v0[8];
  v1 = v0[9];
  v0[63] = v2;
  v0[64] = v1;
  if (!v2)
  {
    (*(v0[34] + 16))(v0[24], v0[35], v0[33]);
    v8 = MEMORY[0x277CD5058];
    goto LABEL_10;
  }

  if (!v1)
  {

LABEL_8:
    v7 = 0xF000000000000000;
    goto LABEL_9;
  }

  v3 = v1;
  v4 = [v3 externalizedContext];
  if (!v4)
  {

    v1 = 0;
    goto LABEL_8;
  }

  v5 = v4;
  v1 = sub_23B7DA0B8();
  v7 = v6;

LABEL_9:
  v10 = v0[34];
  v9 = v0[35];
  v11 = v0[33];
  v12 = v0[24];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E185058, &qword_23B7DB060);
  v14 = *(v13 + 48);
  v15 = (v12 + *(v13 + 64));
  (*(v10 + 16))(v12, v9, v11);
  *(v12 + v14) = v2;
  *v15 = v1;
  v15[1] = v7;
  v8 = MEMORY[0x277CD5060];
LABEL_10:
  v16 = v0[24];
  v17 = v0[25];
  v18 = v0[22];
  v19 = v0[23];
  (*(v19 + 104))(v16, *v8, v18);
  (*(v19 + 16))(v17, v16, v18);
  sub_23B7DA198();
  v20 = swift_task_alloc();
  v0[65] = v20;
  *v20 = v0;
  v20[1] = sub_23B7D1734;

  return MEMORY[0x282123810]();
}

uint64_t sub_23B7D1734()
{
  v2 = *v1;
  *(*v1 + 528) = v0;

  v3 = *(v2 + 408);
  v4 = *(v2 + 400);
  if (v0)
  {
    v5 = sub_23B7D1A84;
  }

  else
  {
    v5 = sub_23B7D1870;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_23B7D1870()
{
  v2 = v0[63];
  v1 = v0[64];
  v3 = v0[47];
  v18 = v0[46];
  v19 = v0[48];
  v4 = v0[41];
  v16 = v0[40];
  v17 = v0[42];
  v5 = v0[34];
  v14 = v0[33];
  v15 = v0[35];
  v6 = v0[23];
  v13 = v0[24];
  v12 = v0[22];
  v7 = v0[19];
  v8 = v0[20];
  v9 = v0[18];

  sub_23B7D4D00(v2, v1);

  (*(v7 + 8))(v8, v9);
  (*(v6 + 8))(v13, v12);
  (*(v5 + 8))(v15, v14);
  (*(v4 + 8))(v17, v16);
  (*(v3 + 8))(v19, v18);
  *(v0[13] + OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton_performingAction) = 0;

  v10 = v0[1];

  return v10();
}

uint64_t sub_23B7D1A84()
{
  v45 = v0;
  v2 = v0[63];
  v1 = v0[64];
  v3 = v0[47];
  v40 = v0[46];
  v42 = v0[48];
  v4 = v0[41];
  v37 = v0[40];
  v38 = v0[42];
  v5 = v0[34];
  v35 = v0[33];
  v36 = v0[35];
  v6 = v0[23];
  v34 = v0[24];
  v33 = v0[22];
  v7 = v0[19];
  v8 = v0[20];
  v9 = v0[18];

  sub_23B7D4D00(v2, v1);

  (*(v7 + 8))(v8, v9);
  (*(v6 + 8))(v34, v33);
  (*(v5 + 8))(v36, v35);
  (*(v4 + 8))(v38, v37);
  (*(v3 + 8))(v42, v40);
  v10 = v0[66];
  sub_23B7DA228();
  v11 = v10;
  v12 = sub_23B7DA248();
  v13 = sub_23B7DA378();

  if (os_log_type_enabled(v12, v13))
  {
    v39 = v0[16];
    v41 = v0[15];
    v43 = v0[17];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v44 = v15;
    *v14 = 136446210;
    swift_getErrorValue();
    v16 = v10;
    v17 = *(v0[3] - 8);
    swift_task_alloc();
    (*(v17 + 16))();
    v18 = sub_23B7DA2A8();
    v20 = v19;

    v21 = v18;
    v10 = v16;
    v22 = sub_23B7D7840(v21, v20, &v44);

    *(v14 + 4) = v22;
    _os_log_impl(&dword_23B7CC000, v12, v13, "[ActionButton] Error performing action: %{public}s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x23EEAA190](v15, -1, -1);
    MEMORY[0x23EEAA190](v14, -1, -1);

    (*(v39 + 8))(v43, v41);
  }

  else
  {
    v23 = v0[16];
    v24 = v0[17];
    v25 = v0[15];

    (*(v23 + 8))(v24, v25);
  }

  sub_23B7D4A18(v0[13] + OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton_action, v0[28], type metadata accessor for ActionButton.Action);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      goto LABEL_17;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    goto LABEL_17;
  }

  v27 = v0[14];
  sub_23B7D47F8(v0[28], type metadata accessor for ActionButton.Action);
  if (v27 >> 62)
  {
    v28 = sub_23B7DA438();
    if (!v28)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v28)
    {
      goto LABEL_17;
    }
  }

  result = sub_23B7DA128();
  if (v28 < 1)
  {
    __break(1u);
    return result;
  }

  if ((v27 & 0xC000000000000001) != 0)
  {
    v30 = 0;
    do
    {
      MEMORY[0x23EEA9B60](v30++, v0[14]);
      sub_23B7DA118();
      sub_23B7DA0E8();

      swift_unknownObjectRelease();
    }

    while (v28 != v30);
  }

  else
  {
    v31 = v0[14] + 32;
    do
    {
      v31 += 8;

      sub_23B7DA118();
      sub_23B7DA0E8();

      --v28;
    }

    while (v28);
  }

LABEL_17:

  *(v0[13] + OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton_performingAction) = 0;

  v32 = v0[1];

  return v32();
}

uint64_t sub_23B7D1FC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E185038, &qword_23B7DB028);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = v26 - v11;
  sub_23B7D4A80(a3, v26 - v11);
  v13 = sub_23B7DA368();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_23B7D4AF0(v12);
  }

  else
  {
    sub_23B7DA358();
    (*(v14 + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_23B7DA328();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_23B7DA2B8() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_23B7D4AF0(a3);

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_23B7D4AF0(a3);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

id ActionButton.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id ActionButton.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActionButton(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_23B7D257C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_23B7D2674;

  return v6(a1);
}

uint64_t sub_23B7D2674()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void sub_23B7D276C()
{
  v1 = (v0 + OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton__label);
  *v1 = 32;
  v1[1] = 0xE100000000000000;
  v2 = (v0 + OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton__imageName);
  *v2 = 0;
  v2[1] = 0;
  v3 = OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton__backgroundColor;
  v4 = objc_opt_self();
  *(v0 + v3) = [v4 whiteColor];
  *(v0 + OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton__borderWidth) = 0;
  v5 = OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton__borderColor;
  *(v0 + v5) = [v4 clearColor];
  *(v0 + OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton__imagePlacement) = 1;
  v6 = (v0 + OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton__size);
  *v6 = 0;
  v6[1] = 0;
  *(v0 + OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton__fontSize) = 0x4028000000000000;
  v7 = OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton_slotView;
  *(v0 + v7) = [objc_allocWithZone(MEMORY[0x277D76260]) init];
  *(v0 + OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton_performingAction) = 0;
  sub_23B7DA428();
  __break(1u);
}

id sub_23B7D28B8(id a1)
{
  v2 = a1;
  if (!a1)
  {
    a1 = [objc_opt_self() whiteColor];
  }

  v3 = *&v1[OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton__backgroundColor];
  *&v1[OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton__backgroundColor] = a1;
  v4 = v2;

  sub_23B7CF0C4();
  v5 = *&v1[OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton_contentDelegate];
  v6 = sub_23B7CF5D4();
  v7 = *(v5 + OBJC_IVAR____TtC21_MarketplaceKit_UIKit27SecureButtonContentDelegate_templateTag);
  *(v5 + OBJC_IVAR____TtC21_MarketplaceKit_UIKit27SecureButtonContentDelegate_templateTag) = v6;

  [*&v1[OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton_slotView] _updateContent];

  return [v1 setNeedsLayout];
}

id sub_23B7D2984(void *a1)
{
  v2 = *&v1[OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton__borderColor];
  *&v1[OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton__borderColor] = a1;
  v3 = a1;

  sub_23B7CF0C4();
  v4 = *&v1[OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton_contentDelegate];
  v5 = sub_23B7CF5D4();
  v6 = *(v4 + OBJC_IVAR____TtC21_MarketplaceKit_UIKit27SecureButtonContentDelegate_templateTag);
  *(v4 + OBJC_IVAR____TtC21_MarketplaceKit_UIKit27SecureButtonContentDelegate_templateTag) = v5;

  [*&v1[OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton_slotView] _updateContent];

  return [v1 setNeedsLayout];
}

unint64_t sub_23B7D2A1C()
{
  result = qword_27E185010;
  if (!qword_27E185010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E185010);
  }

  return result;
}

uint64_t sub_23B7D2A70@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = (*a1 + OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton__label);
  v3 = v2[1];
  *a2 = *v2;
  a2[1] = v3;
}

uint64_t sub_23B7D2A90@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = (*a1 + OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton__imageName);
  v3 = v2[1];
  *a2 = *v2;
  a2[1] = v3;
}

__n128 sub_23B7D2B00@<Q0>(void *a1@<X0>, __n128 *a2@<X8>)
{
  result = *(*a1 + OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton__size);
  *a2 = result;
  return result;
}

double sub_23B7D2B40@<D0>(void *a1@<X0>, double *a2@<X8>)
{
  result = *(*a1 + OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton__fontSize);
  *a2 = result;
  return result;
}

id sub_23B7D2B78@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 _cornerRadius];
  *a2 = v4;
  return result;
}

double sub_23B7D2BB0@<D0>(void *a1@<X0>, double *a2@<X8>)
{
  result = *(*a1 + OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton__borderWidth);
  *a2 = result;
  return result;
}

id sub_23B7D2BE8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = *(*a1 + OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton__borderColor);
  *a2 = v2;
  return v2;
}

void sub_23B7D2C00(id *a1)
{
  v1 = *a1;
  sub_23B7D2984(v1);
}

uint64_t sub_23B7D2C54(uint64_t a1)
{
  result = type metadata accessor for ActionButton.Action(319);
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_23B7D3358(uint64_t a1)
{
  result = type metadata accessor for InstallConfiguration(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ActionButton.ButtonImagePlacement(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ActionButton.ButtonImagePlacement(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_23B7D3538(void *a1)
{
  v2 = v1;
  v4 = sub_23B7DA258();
  v5 = *(v4 - 8);
  v97 = v4;
  v98 = v5;
  v7 = MEMORY[0x28223BE20](v4, v6);
  v94 = &v85 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7, v9);
  v95 = &v85 - v11;
  v13 = MEMORY[0x28223BE20](v10, v12);
  v15 = &v85 - v14;
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v85 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E185038, &qword_23B7DB028);
  MEMORY[0x28223BE20](v19 - 8, v20);
  v96 = &v85 - v21;
  v22 = type metadata accessor for InstallConfiguration(0);
  MEMORY[0x28223BE20](v22 - 8, v23);
  v25 = &v85 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for InstallMetadata(0);
  v93 = *(v26 - 8);
  MEMORY[0x28223BE20](v26, v27);
  v29 = &v85 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for ActionButton.Action(0);
  MEMORY[0x28223BE20](v30, v31);
  v33 = (&v85 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  v34 = sub_23B7DA1B8();
  v35 = *(*(v34 - 8) + 64);
  v37 = MEMORY[0x28223BE20](v34, v36);
  v39 = MEMORY[0x28223BE20](v37, v38);
  if (v2[OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton_performingAction])
  {
    sub_23B7DA228();
    v43 = sub_23B7DA248();
    v44 = sub_23B7DA378();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_23B7CC000, v43, v44, "[ActionButton] Ignoring press for ongoing action", v45, 2u);
      MEMORY[0x23EEAA190](v45, -1, -1);
    }

    return v98[1](v15, v97);
  }

  v90 = OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton_performingAction;
  v88 = v42;
  v91 = (&v85 - v40);
  v92 = v39;
  v89 = v41;
  v47 = [a1 _authenticationMessage];
  if (v47)
  {
    v48 = v47;
    v2[v90] = 1;
    v100 = MEMORY[0x277D84F90];
    sub_23B7D4A18(&v2[OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton_action], v33, type metadata accessor for ActionButton.Action);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v86 = v2;
        sub_23B7D473C(v33, v25);
        sub_23B7DA098();
        swift_allocObject();
        sub_23B7DA088();
        sub_23B7D47A0();
        v69 = sub_23B7DA078();
        v71 = v70;
        v87 = v48;

        v72 = v91;
        *v91 = v69;
        v72[1] = v71;
        (*(v89 + 104))();
        sub_23B7DA128();
        sub_23B7D48A4(v69, v71);
        sub_23B7DA118();
        sub_23B7DA0F8();

        sub_23B7DA118();
        sub_23B7DA108();

        MEMORY[0x23EEA9A60](v73);
        if (*((v100 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v100 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_23B7DA308();
        }

        sub_23B7DA318();
        sub_23B7D48F8(v69, v71);
        v59 = v100;
        sub_23B7D47F8(v25, type metadata accessor for InstallConfiguration);
        goto LABEL_28;
      }

      v87 = v48;
      v55 = v91;
      *v91 = *v33;
      v56 = MEMORY[0x277CD5080];
    }

    else
    {
      if (!EnumCaseMultiPayload)
      {
        v86 = v2;
        v50 = *v33;
        v51 = v33[2];
        sub_23B7DA098();
        swift_allocObject();
        sub_23B7DA088();
        v99 = v50;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E185048, &qword_23B7DB040);
        sub_23B7D494C();
        v60 = sub_23B7DA078();
        v62 = v61;
        v87 = v48;

        v63 = v91;
        *v91 = v60;
        v63[1] = v62;
        (*(v89 + 104))();
        v64 = *(v50 + 16);
        if (v64)
        {
          v98 = v51;
          sub_23B7DA128();
          v65 = v93;
          v66 = v50 + ((*(v93 + 80) + 32) & ~*(v93 + 80));

          v97 = v60;
          sub_23B7D48A4(v60, v62);
          v67 = *(v65 + 72);
          do
          {
            sub_23B7D4A18(v66, v29, type metadata accessor for InstallMetadata);
            sub_23B7DA118();
            sub_23B7DA0F8();

            sub_23B7DA118();
            sub_23B7DA108();

            MEMORY[0x23EEA9A60](v68);
            if (*((v100 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v100 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v95 = *((v100 & 0xFFFFFFFFFFFFFF8) + 0x10);
              sub_23B7DA308();
            }

            sub_23B7DA318();
            v59 = v100;
            sub_23B7D47F8(v29, type metadata accessor for InstallMetadata);
            v66 += v67;
            --v64;
          }

          while (v64);
          v60 = v97;
        }

        else
        {

          sub_23B7D48A4(v60, v62);
          v59 = MEMORY[0x277D84F90];
        }

        swift_bridgeObjectRelease_n();
        sub_23B7D48F8(v60, v62);
LABEL_28:
        v2 = v86;
        v55 = v91;
        v58 = v92;
        v57 = v89;
        goto LABEL_29;
      }

      v87 = v48;
      v55 = v91;
      *v91 = *v33;
      v56 = MEMORY[0x277CD5078];
    }

    v57 = v89;
    v58 = v92;
    (*(v89 + 104))(v55, *v56, v92);
    v59 = MEMORY[0x277D84F90];
LABEL_29:
    v74 = sub_23B7DA368();
    (*(*(v74 - 8) + 56))(v96, 1, 1, v74);
    v75 = v88;
    (*(v57 + 16))(v88, v55, v58);
    sub_23B7DA348();
    v76 = v87;
    v98 = v2;
    v77 = sub_23B7DA338();
    v78 = (*(v57 + 80) + 32) & ~*(v57 + 80);
    v79 = (v35 + v78 + 7) & 0xFFFFFFFFFFFFFFF8;
    v80 = (v79 + 15) & 0xFFFFFFFFFFFFFFF8;
    v81 = swift_allocObject();
    v82 = MEMORY[0x277D85700];
    *(v81 + 16) = v77;
    *(v81 + 24) = v82;
    v83 = v81 + v78;
    v84 = v92;
    (*(v57 + 32))(v83, v75, v92);
    *(v81 + v79) = v76;
    *(v81 + v80) = v98;
    *(v81 + ((v80 + 15) & 0xFFFFFFFFFFFFFFF8)) = v59;
    sub_23B7D1FC4(0, 0, v96, &unk_23B7DB038, v81);

    return (*(v57 + 8))(v91, v84);
  }

  sub_23B7DA228();
  v52 = sub_23B7DA248();
  v53 = sub_23B7DA378();
  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    *v54 = 0;
    _os_log_impl(&dword_23B7CC000, v52, v53, "[ActionButton] Unable to authenticate button press", v54, 2u);
    MEMORY[0x23EEAA190](v54, -1, -1);
  }

  return v98[1](v18, v97);
}

uint64_t sub_23B7D43FC()
{
  v1 = sub_23B7DA1B8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, ((v6 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_23B7D44FC(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_23B7DA1B8() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = *(v1 + v7);
  v12 = *(v1 + v8);
  v13 = *(v1 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_23B7D4648;

  return sub_23B7CF7CC(a1, v9, v10, v1 + v6, v11, v12, v13);
}

uint64_t sub_23B7D4648()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_23B7D473C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InstallConfiguration(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_23B7D47A0()
{
  result = qword_27E185040;
  if (!qword_27E185040)
  {
    type metadata accessor for InstallMetadata(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E185040);
  }

  return result;
}

uint64_t sub_23B7D47F8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_23B7D48A4(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_23B7D48F8(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

unint64_t sub_23B7D494C()
{
  result = qword_27E185050;
  if (!qword_27E185050)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E185048, &qword_23B7DB040);
    sub_23B7D47A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E185050);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_23B7D4A18(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23B7D4A80(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E185038, &qword_23B7DB028);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23B7D4AF0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E185038, &qword_23B7DB028);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23B7D4B58()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23B7D4B90(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23B7D4DD4;

  return sub_23B7D257C(a1, v4);
}

uint64_t sub_23B7D4C48(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23B7D4648;

  return sub_23B7D257C(a1, v4);
}

void sub_23B7D4D00(uint64_t a1, void *a2)
{
  if (a1)
  {
  }
}

void sub_23B7D4D40(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
  }
}

unint64_t sub_23B7D4D84()
{
  result = qword_27E185070;
  if (!qword_27E185070)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E185070);
  }

  return result;
}

uint64_t sub_23B7D4DFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x746E756F636361 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_23B7DA558();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_23B7D4E90(uint64_t a1)
{
  v2 = sub_23B7D58C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B7D4ECC(uint64_t a1)
{
  v2 = sub_23B7D58C8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B7D4F08()
{
  v1 = 0x6552686372616573;
  if (*v0 != 1)
  {
    v1 = 0x69746E6568747561;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x50746375646F7270;
  }
}

uint64_t sub_23B7D4F84@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_23B7D6D78(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_23B7D4FB8(uint64_t a1)
{
  v2 = sub_23B7D5874();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B7D4FF4(uint64_t a1)
{
  v2 = sub_23B7D5874();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B7D5048()
{
  if (*v0)
  {
    return 0x726556656C707061;
  }

  else
  {
    return 0x657449656C707061;
  }
}

uint64_t sub_23B7D5098@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x657449656C707061 && a2 == 0xEB0000000044496DLL;
  if (v6 || (sub_23B7DA558() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x726556656C707061 && a2 == 0xEE0044496E6F6973)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_23B7DA558();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_23B7D518C(uint64_t a1)
{
  v2 = sub_23B7D5970();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B7D51C8(uint64_t a1)
{
  v2 = sub_23B7D5970();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B7D5208()
{
  sub_23B7DA578();
  MEMORY[0x23EEA9D00](0);
  return sub_23B7DA598();
}

uint64_t sub_23B7D5278(uint64_t a1)
{
  sub_23B7DA578();
  MEMORY[0x23EEA9D00](0);
  return sub_23B7DA598();
}

uint64_t sub_23B7D52CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7972657571 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_23B7DA558();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_23B7D535C(uint64_t a1)
{
  v2 = sub_23B7D591C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B7D5398(uint64_t a1)
{
  v2 = sub_23B7D591C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MarketplaceDisplayOption.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E185078, &qword_23B7DB080);
  v32 = *(v3 - 8);
  v33 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v6 = &v27 - v5;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E185080, &qword_23B7DB088);
  v29 = *(v31 - 8);
  MEMORY[0x28223BE20](v31, v7);
  v9 = &v27 - v8;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E185088, &qword_23B7DB090);
  v28 = *(v30 - 8);
  MEMORY[0x28223BE20](v30, v10);
  v12 = &v27 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E185090, &qword_23B7DB098);
  v36 = *(v13 - 8);
  v37 = v13;
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v27 - v15;
  v17 = *v1;
  v34 = v1[1];
  v35 = v17;
  v18 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B7D5874();
  sub_23B7DA5B8();
  if (v18 >> 6)
  {
    if (v18 >> 6 == 1)
    {
      v42 = 1;
      sub_23B7D591C();
      v19 = v37;
      sub_23B7DA4D8();
      v20 = v31;
      sub_23B7DA508();
      (*(v29 + 8))(v9, v20);
      return (*(v36 + 8))(v16, v19);
    }

    v43 = 2;
    sub_23B7D58C8();
    v23 = v37;
    sub_23B7DA4D8();
    v26 = v33;
    sub_23B7DA508();
    (*(v32 + 8))(v6, v26);
  }

  else
  {
    v22 = v28;
    v41 = 0;
    sub_23B7D5970();
    v23 = v37;
    sub_23B7DA4D8();
    v40 = 0;
    v24 = v30;
    v25 = v38;
    sub_23B7DA538();
    if (!v25)
    {
      v39 = 1;
      sub_23B7DA4F8();
    }

    (*(v22 + 8))(v12, v24);
  }

  return (*(v36 + 8))(v16, v23);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_23B7D5874()
{
  result = qword_27E185098;
  if (!qword_27E185098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E185098);
  }

  return result;
}

unint64_t sub_23B7D58C8()
{
  result = qword_27E1850A0;
  if (!qword_27E1850A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1850A0);
  }

  return result;
}

unint64_t sub_23B7D591C()
{
  result = qword_27E1850A8;
  if (!qword_27E1850A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1850A8);
  }

  return result;
}

unint64_t sub_23B7D5970()
{
  result = qword_27E1850B0;
  if (!qword_27E1850B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1850B0);
  }

  return result;
}

uint64_t MarketplaceDisplayOption.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1850B8, &qword_23B7DB0A0);
  v55 = *(v51 - 8);
  MEMORY[0x28223BE20](v51, v3);
  v57 = &v50 - v4;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1850C0, &qword_23B7DB0A8);
  v54 = *(v52 - 8);
  MEMORY[0x28223BE20](v52, v5);
  v7 = &v50 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1850C8, &qword_23B7DB0B0);
  v53 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v50 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1850D0, &qword_23B7DB0B8);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v50 - v15;
  v17 = a1[3];
  v59 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_23B7D5874();
  v18 = v58;
  sub_23B7DA5A8();
  if (!v18)
  {
    v50 = v8;
    v19 = v57;
    v58 = v13;
    v20 = v16;
    v21 = sub_23B7DA4C8();
    v22 = *(v21 + 16);
    v23 = v12;
    if (!v22 || ((v24 = *(v21 + 32), v22 == 1) ? (v25 = v24 == 3) : (v25 = 1), v25))
    {
      v26 = sub_23B7DA408();
      swift_allocError();
      v28 = v27;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1850D8, &qword_23B7DB0C0);
      *v28 = &type metadata for MarketplaceDisplayOption;
      sub_23B7DA458();
      sub_23B7DA3F8();
      (*(*(v26 - 8) + 104))(v28, *MEMORY[0x277D84160], v26);
      swift_willThrow();
      (*(v58 + 8))(v20, v12);
      swift_unknownObjectRelease();
    }

    else
    {
      if (*(v21 + 32))
      {
        v29 = v16;
        if (v24 == 1)
        {
          v63 = 1;
          sub_23B7D591C();
          v30 = v7;
          v31 = v23;
          sub_23B7DA448();
          v32 = v58;
          v33 = v52;
          v41 = sub_23B7DA488();
          v43 = v42;
          (*(v54 + 8))(v30, v33);
          (*(v32 + 8))(v29, v31);
          swift_unknownObjectRelease();
          v44 = 64;
          v45 = v56;
        }

        else
        {
          v64 = 2;
          sub_23B7D58C8();
          v38 = v19;
          sub_23B7DA448();
          v39 = v58;
          v45 = v56;
          v54 = v23;
          v40 = v51;
          v41 = sub_23B7DA488();
          v43 = v47;
          (*(v55 + 8))(v38, v40);
          (*(v39 + 8))(v29, v54);
          swift_unknownObjectRelease();
          v44 = 0x80;
        }
      }

      else
      {
        v62 = 0;
        sub_23B7D5970();
        v34 = v11;
        v35 = v16;
        v36 = v23;
        sub_23B7DA448();
        v61 = 0;
        v37 = v50;
        v57 = sub_23B7DA4B8();
        v60 = 1;
        v43 = sub_23B7DA478();
        v49 = v48;
        (*(v53 + 8))(v34, v37);
        (*(v58 + 8))(v35, v36);
        swift_unknownObjectRelease();
        v44 = v49 & 1;
        v45 = v56;
        v41 = v57;
      }

      *v45 = v41;
      *(v45 + 8) = v43;
      *(v45 + 16) = v44;
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(v59);
}

uint64_t UISceneConnectionOptions.marketplaceDisplayOption.getter()
{
  v0 = sub_23B7DA0D8();
  v1 = sub_23B7D6128();

  return MEMORY[0x2821DDDF8](v0, v0, &type metadata for MarketplaceDisplayOption, v1);
}

unint64_t sub_23B7D6128()
{
  result = qword_27E1850E0;
  if (!qword_27E1850E0)
  {
    sub_23B7DA0D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1850E0);
  }

  return result;
}

uint64_t sub_23B7D619C(uint64_t a1, uint64_t *a2, void *a3)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = *(a2 + 16);
  v7 = a3[3];
  v8 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v7);
  v10[0] = v4;
  v10[1] = v5;
  v11 = v6;
  return (*(v8 + 8))(a1, v10, v7, v8);
}

uint64_t (*sub_23B7D6224(uint64_t a1))(uint64_t a1, uint64_t *a2)
{
  sub_23B7D6F14(a1, v3);
  v1 = swift_allocObject();
  sub_23B7D6FB0(v3, v1 + 16);
  return sub_23B7D7010;
}

unint64_t sub_23B7D6290()
{
  result = qword_27E1850E8;
  if (!qword_27E1850E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1850E8);
  }

  return result;
}

unint64_t sub_23B7D62E8()
{
  result = qword_27E1850F0;
  if (!qword_27E1850F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1850F0);
  }

  return result;
}

uint64_t sub_23B7D6358@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_23B7D6F14(a1, v5);
  v3 = swift_allocObject();
  sub_23B7D6FB0(v5, v3 + 16);
  result = swift_allocObject();
  *(result + 16) = sub_23B7D6FC8;
  *(result + 24) = v3;
  *a2 = sub_23B7D6FD0;
  a2[1] = result;
  return result;
}

uint64_t sub_23B7D63E8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;

  sub_23B7DA288();
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_23B7D64BC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 17))
  {
    return (*a1 + 126);
  }

  v3 = ((*(a1 + 16) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 16) >> 1) & 0x1F))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_23B7D6510(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 16) = 0;
    *result = a2 - 126;
    *(result + 8) = 0;
    if (a3 >= 0x7E)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MarketplaceDisplayOption.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MarketplaceDisplayOption.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MarketplaceDisplayOption.ProductPageCodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MarketplaceDisplayOption.ProductPageCodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_23B7D687C(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *sub_23B7D68CC(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_23B7D695C()
{
  result = qword_27E1850F8;
  if (!qword_27E1850F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1850F8);
  }

  return result;
}

unint64_t sub_23B7D69B4()
{
  result = qword_27E185100;
  if (!qword_27E185100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E185100);
  }

  return result;
}

unint64_t sub_23B7D6A0C()
{
  result = qword_27E185108;
  if (!qword_27E185108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E185108);
  }

  return result;
}

unint64_t sub_23B7D6A64()
{
  result = qword_27E185110;
  if (!qword_27E185110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E185110);
  }

  return result;
}

unint64_t sub_23B7D6ABC()
{
  result = qword_27E185118;
  if (!qword_27E185118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E185118);
  }

  return result;
}

unint64_t sub_23B7D6B14()
{
  result = qword_27E185120;
  if (!qword_27E185120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E185120);
  }

  return result;
}

unint64_t sub_23B7D6B6C()
{
  result = qword_27E185128;
  if (!qword_27E185128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E185128);
  }

  return result;
}

unint64_t sub_23B7D6BC4()
{
  result = qword_27E185130;
  if (!qword_27E185130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E185130);
  }

  return result;
}

unint64_t sub_23B7D6C1C()
{
  result = qword_27E185138;
  if (!qword_27E185138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E185138);
  }

  return result;
}

unint64_t sub_23B7D6C74()
{
  result = qword_27E185140;
  if (!qword_27E185140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E185140);
  }

  return result;
}

unint64_t sub_23B7D6CCC()
{
  result = qword_27E185148;
  if (!qword_27E185148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E185148);
  }

  return result;
}

unint64_t sub_23B7D6D24()
{
  result = qword_27E185150;
  if (!qword_27E185150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E185150);
  }

  return result;
}

uint64_t sub_23B7D6D78(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x50746375646F7270 && a2 == 0xEB00000000656761;
  if (v4 || (sub_23B7DA558() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6552686372616573 && a2 == 0xED000073746C7573 || (sub_23B7DA558() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x69746E6568747561 && a2 == 0xEE006E6F69746163)
  {

    return 2;
  }

  else
  {
    v6 = sub_23B7DA558();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_23B7D6EA4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23B7D6EDC(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

uint64_t sub_23B7D6F14(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_23B7D6F78()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_23B7D6FB0(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

id sub_23B7D70DC(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SecureButtonContentDelegate();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_23B7D7144(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_23B7D71AC()
{
  if (qword_27E184F38 != -1)
  {
    swift_once();
  }

  v0 = *(qword_27E1852D8 + 16);
  aBlock[4] = sub_23B7D758C;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23B7D7144;
  aBlock[3] = &block_descriptor;
  v1 = _Block_copy(aBlock);
  v2 = [v0 synchronousRemoteObjectProxyWithErrorHandler_];
  _Block_release(v1);
  sub_23B7DA3B8();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E185230, &qword_23B7DB738);
  swift_dynamicCast();
  return v4;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_23B7D72FC()
{
  result = [objc_allocWithZone(type metadata accessor for XPCClient()) init];
  qword_27E1852D0 = result;
  return result;
}

id sub_23B7D73BC()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_23B7D741C()
{
  type metadata accessor for RenderingService();
  v0 = swift_allocObject();
  v1 = objc_allocWithZone(MEMORY[0x277CCAE80]);
  v2 = sub_23B7DA298();
  v3 = [v1 initWithMachServiceName:v2 options:0];

  v4 = objc_opt_self();
  v5 = &unk_284E44370;
  v6 = [v4 interfaceWithProtocol_];

  [v3 setExportedInterface_];
  if (qword_27E184F30 != -1)
  {
    swift_once();
  }

  [v3 setExportedObject_];
  v7 = UISSlotMachineInterface();
  [v3 setRemoteObjectInterface_];

  result = [v3 resume];
  *(v0 + 16) = v3;
  qword_27E1852D8 = v0;
  return result;
}

uint64_t sub_23B7D758C(void *a1)
{
  v2 = sub_23B7DA258();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23B7DA238();
  v7 = a1;
  v8 = sub_23B7DA248();
  v9 = sub_23B7DA378();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v20 = v11;
    *v10 = 136315138;
    ErrorValue = swift_getErrorValue();
    MEMORY[0x28223BE20](ErrorValue, v19[1]);
    (*(v14 + 16))(v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
    v15 = sub_23B7DA2A8();
    v17 = sub_23B7D7840(v15, v16, &v20);

    *(v10 + 4) = v17;
    _os_log_impl(&dword_23B7CC000, v8, v9, "Error fetching remote proxy: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x23EEAA190](v11, -1, -1);
    MEMORY[0x23EEAA190](v10, -1, -1);
  }

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_23B7D77E4()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

unint64_t sub_23B7D7840(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_23B7D790C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_23B7D7DE8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_23B7D790C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_23B7D7A18(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_23B7DA418();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_23B7D7A18(uint64_t a1, unint64_t a2)
{
  v3 = sub_23B7D7A64(a1, a2);
  sub_23B7D7B94(&unk_284E35958);
  return v3;
}

void *sub_23B7D7A64(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_23B7D7C80(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_23B7DA418();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_23B7DA2D8();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_23B7D7C80(v10, 0);
        result = sub_23B7DA3C8();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_23B7D7B94(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_23B7D7CF4(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_23B7D7C80(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E185240, &qword_23B7DB788);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_23B7D7CF4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E185240, &qword_23B7DB788);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_23B7D7DE8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_23B7D7E54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InstallMetadata(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t InstallConfiguration.confirmInstall.getter()
{
  v1 = *(v0 + *(type metadata accessor for InstallConfiguration(0) + 20));

  return v1;
}

uint64_t InstallConfiguration.init(install:confirmInstall:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_23B7D7F84(a1, a4);
  result = type metadata accessor for InstallConfiguration(0);
  v8 = (a4 + *(result + 20));
  *v8 = a2;
  v8[1] = a3;
  return result;
}

uint64_t sub_23B7D7F84(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InstallMetadata(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t InstallMetadata.account.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t InstallMetadata.alternativeDistributionPackage.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for InstallMetadata(0) + 24);
  v4 = sub_23B7DA0A8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t InstallMetadata.appShareURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for InstallMetadata(0) + 32);

  return sub_23B7D8104(v3, a1);
}

uint64_t sub_23B7D8104(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E185248, &qword_23B7DB790);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t InstallMetadata.appShareURL.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for InstallMetadata(0) + 32);

  return sub_23B7D81B8(a1, v3);
}

uint64_t sub_23B7D81B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E185248, &qword_23B7DB790);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t InstallMetadata.requestAgeException.setter(char a1)
{
  result = type metadata accessor for InstallMetadata(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t InstallMetadata.init(account:appleItemID:alternativeDistributionPackage:isUpdate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, char *a6@<X8>)
{
  v9 = type metadata accessor for InstallMetadata(0);
  v10 = v9[8];
  v11 = sub_23B7DA0A8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 56);
  v13(&a6[v10], 1, 1, v11);
  v14 = v9[9];
  *a6 = a1;
  *(a6 + 1) = a2;
  *(a6 + 2) = a3;
  (*(v12 + 32))(&a6[v9[6]], a4, v11);
  a6[v9[7]] = a5;
  sub_23B7D842C(&a6[v10]);
  result = (v13)(&a6[v10], 1, 1, v11);
  a6[v14] = 0;
  return result;
}

uint64_t sub_23B7D842C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E185248, &qword_23B7DB790);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t InstallMetadata.init(account:appleItemID:alternativeDistributionPackage:isUpdate:appShareURL:requestAgeException:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, char a7@<W6>, char *a8@<X8>)
{
  v13 = type metadata accessor for InstallMetadata(0);
  v14 = v13[8];
  v15 = sub_23B7DA0A8();
  v16 = *(v15 - 8);
  (*(v16 + 56))(&a8[v14], 1, 1, v15);
  v17 = v13[9];
  *a8 = a1;
  *(a8 + 1) = a2;
  *(a8 + 2) = a3;
  (*(v16 + 32))(&a8[v13[6]], a4, v15);
  a8[v13[7]] = a5;
  result = sub_23B7D81B8(a6, &a8[v14]);
  a8[v17] = a7;
  return result;
}

uint64_t sub_23B7D85AC()
{
  v1 = *v0;
  v2 = 0x746E756F636361;
  v3 = 0x6574616470557369;
  v4 = 0x6572616853707061;
  if (v1 != 4)
  {
    v4 = 0xD000000000000013;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x657449656C707061;
  if (v1 != 1)
  {
    v5 = 0xD00000000000001ELL;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_23B7D867C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_23B7D9DDC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_23B7D86B0(uint64_t a1)
{
  v2 = sub_23B7D89B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B7D86EC(uint64_t a1)
{
  v2 = sub_23B7D89B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t InstallMetadata.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E185250, &qword_23B7DB798);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B7D89B0();
  sub_23B7DA5B8();
  v15 = 0;
  sub_23B7DA508();
  if (!v1)
  {
    v14 = 1;
    sub_23B7DA538();
    type metadata accessor for InstallMetadata(0);
    v13 = 2;
    sub_23B7DA0A8();
    sub_23B7D8E90(&qword_27E185260, MEMORY[0x277CC9268]);
    sub_23B7DA528();
    v12 = 3;
    sub_23B7DA518();
    v11 = 4;
    sub_23B7DA4E8();
    v10 = 5;
    sub_23B7DA518();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_23B7D89B0()
{
  result = qword_27E185258;
  if (!qword_27E185258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E185258);
  }

  return result;
}

uint64_t InstallMetadata.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E185248, &qword_23B7DB790);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v32 = &v31 - v5;
  v6 = sub_23B7DA0A8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E185268, &qword_23B7DB7A0);
  v33 = *(v11 - 8);
  v34 = v11;
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v31 - v13;
  v15 = type metadata accessor for InstallMetadata(0);
  v17 = MEMORY[0x28223BE20](v15, v16);
  v19 = *(v7 + 56);
  v37 = *(v17 + 32);
  v20 = (&v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19(v20 + v37, 1, 1, v6);
  v21 = a1[3];
  v38 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_23B7D89B0();
  v35 = v14;
  v22 = v36;
  sub_23B7DA5A8();
  if (v22)
  {
    v24 = v37;
    __swift_destroy_boxed_opaque_existential_0(v38);
    return sub_23B7D842C(v20 + v24);
  }

  else
  {
    v23 = v33;
    v44 = 0;
    *v20 = sub_23B7DA488();
    v20[1] = v25;
    v43 = 1;
    v26 = sub_23B7DA4B8();
    v27 = v37;
    v20[2] = v26;
    v42 = 2;
    v36 = sub_23B7D8E90(&qword_27E185270, MEMORY[0x277CC9280]);
    sub_23B7DA4A8();
    (*(v7 + 32))(v20 + v15[6], v10, v6);
    v41 = 3;
    *(v20 + v15[7]) = sub_23B7DA498() & 1;
    v40 = 4;
    sub_23B7DA468();
    sub_23B7D81B8(v32, v20 + v27);
    v39 = 5;
    v28 = sub_23B7DA498();
    v29 = v15[9];
    (*(v23 + 8))(v35, v34);
    *(v20 + v29) = v28 & 1;
    sub_23B7D7E54(v20, v31);
    __swift_destroy_boxed_opaque_existential_0(v38);
    return sub_23B7D8ED4(v20);
  }
}

uint64_t sub_23B7D8E90(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_23B7DA0A8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23B7D8ED4(uint64_t a1)
{
  v2 = type metadata accessor for InstallMetadata(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23B7D8F64(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = *(*(v3 + 48) + 8 * v12);
    v14 = (*(v3 + 56) + 16 * v12);
    v15 = *v14;
    v16 = v14[1];
    v17 = sub_23B7D90D4(v13);
    if (v18)
    {
      v19 = (*(a2 + 56) + 16 * v17);
      result = *v19;
      if (*v19 == v15 && v19[1] == v16)
      {
        continue;
      }

      result = sub_23B7DA558();
      if (result)
      {
        continue;
      }
    }

    return 0;
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t BatchInstallConfiguration.confirmInstall.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t BatchInstallConfiguration.init(installs:confirmInstall:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

unint64_t sub_23B7D90D4(uint64_t a1)
{
  v2 = sub_23B7DA568();

  return sub_23B7D9118(a1, v2);
}

unint64_t sub_23B7D9118(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

BOOL _s21_MarketplaceKit_UIKit30BatchInstallConfirmationResultO2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = *a2;
  v4 = a2[1];
  if (!*a1)
  {
    if (!v5)
    {
      sub_23B7D4D00(0, v2);
      sub_23B7D4D00(0, v4);
      return 1;
    }

    goto LABEL_9;
  }

  if (!v5)
  {
LABEL_9:
    sub_23B7D9FEC(*a2, a2[1]);
    sub_23B7D9FEC(v3, v2);
LABEL_11:
    sub_23B7D4D00(v3, v2);
    sub_23B7D4D00(v5, v4);
    return 0;
  }

  sub_23B7D9FEC(*a2, a2[1]);
  sub_23B7D9FEC(v3, v2);
  v6 = v4;
  v7 = v2;
  if ((sub_23B7D8F64(v3, v5) & 1) == 0)
  {

    goto LABEL_11;
  }

  if (v2)
  {
    if (v4)
    {
      sub_23B7DA02C();
      v8 = v7;
      v9 = sub_23B7DA398();

      sub_23B7D4D00(v3, v2);
      sub_23B7D4D00(v5, v4);

      return (v9 & 1) != 0;
    }

    sub_23B7D4D00(v3, v2);
    sub_23B7D4D00(v5, 0);
    v6 = v7;
LABEL_17:

    return 0;
  }

  sub_23B7D4D00(v3, 0);
  sub_23B7D4D00(v5, v4);
  if (v4)
  {
    goto LABEL_17;
  }

  return 1;
}

uint64_t get_enum_tag_for_layout_string_21_MarketplaceKit_UIKit25InstallConfirmationResultO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_23B7D9330(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23B7D9380(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

void *sub_23B7D93D8(void *result, int a2)
{
  if (a2 < 0)
  {
    result[1] = 0;
    result[2] = 0;
    *result = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t sub_23B7D9420(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for InstallMetadata(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_23B7D94F0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for InstallMetadata(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_23B7D95A8(uint64_t a1)
{
  result = type metadata accessor for InstallMetadata(319);
  if (v2 <= 0x3F)
  {
    result = sub_23B7D962C();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_23B7D962C()
{
  result = qword_27E185288;
  if (!qword_27E185288)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_27E185288);
  }

  return result;
}

uint64_t sub_23B7D9690(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_23B7DA0A8();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E185248, &qword_23B7DB790);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_23B7D97D4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_23B7DA0A8();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E185248, &qword_23B7DB790);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_23B7D9904(uint64_t a1)
{
  sub_23B7DA0A8();
  if (v1 <= 0x3F)
  {
    sub_23B7D99A8(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_23B7D99A8(uint64_t a1)
{
  if (!qword_27E1852A0)
  {
    sub_23B7DA0A8();
    v1 = sub_23B7DA3A8();
    if (!v2)
    {
      atomic_store(v1, &qword_27E1852A0);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_21_MarketplaceKit_UIKit30BatchInstallConfirmationResultO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_23B7D9A18(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23B7D9A68(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void *sub_23B7D9ABC(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

uint64_t sub_23B7D9AEC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_23B7D9B34(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for InstallMetadata.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for InstallMetadata.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_23B7D9CD8()
{
  result = qword_27E1852A8;
  if (!qword_27E1852A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1852A8);
  }

  return result;
}

unint64_t sub_23B7D9D30()
{
  result = qword_27E1852B0;
  if (!qword_27E1852B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1852B0);
  }

  return result;
}

unint64_t sub_23B7D9D88()
{
  result = qword_27E1852B8;
  if (!qword_27E1852B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1852B8);
  }

  return result;
}

uint64_t sub_23B7D9DDC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E756F636361 && a2 == 0xE700000000000000;
  if (v4 || (sub_23B7DA558() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x657449656C707061 && a2 == 0xEB0000000044496DLL || (sub_23B7DA558() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001ELL && 0x800000023B7DCDE0 == a2 || (sub_23B7DA558() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6574616470557369 && a2 == 0xE800000000000000 || (sub_23B7DA558() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6572616853707061 && a2 == 0xEB000000004C5255 || (sub_23B7DA558() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000013 && 0x800000023B7DCE00 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_23B7DA558();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_23B7D9FEC(uint64_t result, void *a2)
{
  if (result)
  {
    v2 = a2;
  }

  return result;
}

unint64_t sub_23B7DA02C()
{
  result = qword_27E1852C0;
  if (!qword_27E1852C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E1852C0);
  }

  return result;
}