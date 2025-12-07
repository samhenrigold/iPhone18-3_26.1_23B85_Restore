unint64_t sub_188F15FE0(unint64_t result, __int16 a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 2 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

unint64_t sub_188F16024(unint64_t result, uint64_t a2, char a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

uint64_t sub_188F16068(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for IntelligenceUI.PromptAmbiguityID(0);
  result = sub_188F16994(a2, v8 + *(*(v9 - 8) + 72) * a1, type metadata accessor for IntelligenceUI.PromptAmbiguityID);
  v11 = a4[7] + 72 * a1;
  *(v11 + 64) = *(a3 + 64);
  v12 = *(a3 + 48);
  *(v11 + 32) = *(a3 + 32);
  *(v11 + 48) = v12;
  v13 = *(a3 + 16);
  *v11 = *a3;
  *(v11 + 16) = v13;
  v14 = a4[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v16;
  }

  return result;
}

uint64_t sub_188F16138(unint64_t a1, uint64_t a2, __int16 a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for IntelligenceUI.PromptAmbiguityID(0);
  result = sub_188F16994(a2, v8 + *(*(v9 - 8) + 72) * a1, type metadata accessor for IntelligenceUI.PromptAmbiguityID);
  v11 = (a4[7] + 2 * a1);
  *v11 = a3 & 1;
  v11[1] = HIBYTE(a3) & 1;
  v12 = a4[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v14;
  }

  return result;
}

uint64_t sub_188F161FC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a5[6];
  v11 = type metadata accessor for IntelligenceUI.PromptAmbiguityID(0);
  result = sub_188F16994(a2, v10 + *(*(v11 - 8) + 72) * a1, type metadata accessor for IntelligenceUI.PromptAmbiguityID);
  v13 = (a5[7] + 16 * a1);
  *v13 = a3;
  v13[1] = a4;
  v14 = a5[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v16;
  }

  return result;
}

uint64_t sub_188F162B8(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for IntelligenceUI.PromptAmbiguityID(0);
  sub_188F16994(a2, v8 + *(*(v9 - 8) + 72) * a1, type metadata accessor for IntelligenceUI.PromptAmbiguityID);
  v10 = a4[7];
  v11 = type metadata accessor for IntelligenceUI.PromptEntryView.AmbiguityAppearanceConfiguration(0);
  result = sub_188F16994(a3, v10 + *(*(v11 - 8) + 72) * a1, type metadata accessor for IntelligenceUI.PromptEntryView.AmbiguityAppearanceConfiguration);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

unint64_t sub_188F163A4(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

unint64_t sub_188F163F4(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  a7[(result >> 6) + 8] |= 1 << result;
  *(a7[6] + 8 * result) = a2;
  v7 = (a7[7] + 32 * result);
  *v7 = a3;
  v7[1] = a4;
  v7[2] = a5;
  v7[3] = a6;
  v8 = a7[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a7[2] = v10;
  }

  return result;
}

unint64_t sub_188F16440(unint64_t result, char a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + result) = a2 & 1;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

uint64_t sub_188F16488(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a5[6];
  v11 = sub_18A4A29D8();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a2, v11);
  v13 = (a5[7] + 16 * a1);
  *v13 = a3;
  v13[1] = a4;
  v14 = a5[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v16;
  }

  return result;
}

unint64_t sub_188F16548(unint64_t result, char a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  *(a5[6] + result) = a2 & 1;
  v5 = (a5[7] + 16 * result);
  *v5 = a3;
  v5[1] = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t sub_188F16594(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_18A4A5448();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

double sub_188F166FC(uint64_t a1, uint64_t a2)
{
  v2 = sub_188F14D80(a1, a2);
  [v2 bounds];
  v4 = v3;

  return v4;
}

void sub_188F16760(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_188F14D80(a2, a3);
  [v4 insertSubview:a1 atIndex:0];
}

char *sub_188F167B8(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtCE5UIKitCSo13UIWindowSceneP33_FDF62CE22547DB2BF49759240B89F9C117TextureController__textureWindow] = 0;
  type metadata accessor for _UISharedTextureController();
  v4 = v3;
  v5 = objc_allocWithZone(v3);
  v6 = &v5[OBJC_IVAR____TtC5UIKitP33_FDF62CE22547DB2BF49759240B89F9C126_UISharedTextureController_delegate];
  *&v5[OBJC_IVAR____TtC5UIKitP33_FDF62CE22547DB2BF49759240B89F9C126_UISharedTextureController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v5[OBJC_IVAR____TtC5UIKitP33_FDF62CE22547DB2BF49759240B89F9C126_UISharedTextureController_sharingContexts] = sub_188E8E398(MEMORY[0x1E69E7CC0]);
  *(v6 + 1) = 0;
  swift_unknownObjectWeakAssign();
  v10.receiver = v5;
  v10.super_class = v4;
  *&v1[OBJC_IVAR____TtCE5UIKitCSo13UIWindowSceneP33_FDF62CE22547DB2BF49759240B89F9C117TextureController_manager] = objc_msgSendSuper2(&v10, sel_init);
  swift_unknownObjectWeakAssign();
  v9.receiver = v1;
  v9.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v9, sel_init);
  *(*&v7[OBJC_IVAR____TtCE5UIKitCSo13UIWindowSceneP33_FDF62CE22547DB2BF49759240B89F9C117TextureController_manager] + OBJC_IVAR____TtC5UIKitP33_FDF62CE22547DB2BF49759240B89F9C126_UISharedTextureController_delegate + 8) = &off_1EFACAE58;
  swift_unknownObjectWeakAssign();
  return v7;
}

void sub_188F168E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_188F14B84(a1, a2);
  v5 = *&v4[OBJC_IVAR____TtC5UIKitP33_FDF62CE22547DB2BF49759240B89F9C136_UISelfTargetingTextureWindowStorage_containerView];
  v6 = v5;

  if (v5)
  {
    [v6 removeFromSuperview];
  }

  v7 = sub_188F14B84(a1, a2);
  v8 = *&v7[OBJC_IVAR____TtC5UIKitP33_FDF62CE22547DB2BF49759240B89F9C136_UISelfTargetingTextureWindowStorage_containerView];
  *&v7[OBJC_IVAR____TtC5UIKitP33_FDF62CE22547DB2BF49759240B89F9C136_UISelfTargetingTextureWindowStorage_containerView] = 0;
}

uint64_t sub_188F16994(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_188F16A10()
{
  result = qword_1EA936E90;
  if (!qword_1EA936E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA936E90);
  }

  return result;
}

uint64_t UITextEffectView.ReplacementTextEffect.__allocating_init(chunk:view:delegate:fromColor:)(void *a1, void *a2, void *a3, void *a4)
{
  v9 = a3[3];
  v10 = a3[4];
  v11 = __swift_mutable_project_boxed_opaque_existential_1(a3, v9);
  v12 = sub_188F1FB70(a1, a2, v11, a4, v4, v9, v10);

  __swift_destroy_boxed_opaque_existential_0Tm(a3);
  return v12;
}

void sub_188F16B1C(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 16);
  *(v3 + 16) = v2;
  v5 = v2;
}

void *sub_188F16B74()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

void sub_188F16BB8(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

void sub_188F16C50(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 24);
  *(v3 + 24) = v2;
  v5 = v2;
}

id sub_188F16CA8()
{
  swift_beginAccess();
  v1 = *(v0 + 24);

  return v1;
}

void sub_188F16CEC(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 24);
  *(v1 + 24) = a1;
}

double sub_188F16DA4(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for UITextEffectView.EffectID(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_188ECA980(a1, v6);
  v7 = *a2;
  v8 = OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_id;
  swift_beginAccess();
  sub_188F1FC88(v6, v7 + v8);
  swift_endAccess();
  return result;
}

uint64_t sub_188F16E5C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_id;
  swift_beginAccess();
  return sub_188ECA980(v1 + v3, a1);
}

double sub_188F16EB4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_id;
  swift_beginAccess();
  sub_188F1FC88(a1, v1 + v3);
  swift_endAccess();
  return result;
}

uint64_t sub_188F16F74()
{
  v1 = OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_lineAnimationEnabled;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_188F16FB8(char a1)
{
  v3 = OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_lineAnimationEnabled;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_188F17068@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_alongsideBuildInAnimation);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_188F21164;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_188A52E38(v4, v5);
}

double sub_188F17108(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_188F21178;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_alongsideBuildInAnimation);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_188A52E38(v3, v4);
  return sub_188A55B8C(v8, v9);
}

uint64_t sub_188F17270@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_alongsideBuildInCompletion);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_188E3FE50;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_188A52E38(v4, v5);
}

double sub_188F17310(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_188EB2CAC;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_alongsideBuildInCompletion);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_188A52E38(v3, v4);
  return sub_188A55B8C(v8, v9);
}

uint64_t sub_188F17478@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_alongsideBuildOutAnimation);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_188F20F60;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_188A52E38(v4, v5);
}

double sub_188F17518(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_188F20F58;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_alongsideBuildOutAnimation);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_188A52E38(v3, v4);
  return sub_188A55B8C(v8, v9);
}

uint64_t sub_188F17680@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_alongsideBuildOutCompletion);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_188A4B574;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_188A52E38(v4, v5);
}

double sub_188F17720(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_188A6D638;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_alongsideBuildOutCompletion);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_188A52E38(v3, v4);
  return sub_188A55B8C(v8, v9);
}

uint64_t sub_188F17808(void *a1, void (*a2)(void, void, __n128))
{
  v4 = (v2 + *a1);
  swift_beginAccess();
  v5 = *v4;
  (a2)(*v4, v4[1]);
  return v5;
}

uint64_t sub_188F17890(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v8 = (v4 + *a3);
  swift_beginAccess();
  v9 = *v8;
  v10 = v8[1];
  *v8 = a1;
  v8[1] = a2;
  return a4(v9, v10);
}

void sub_188F17954(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_washInColor;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

void *sub_188F179B4()
{
  v1 = OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_washInColor;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_188F17A00(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_washInColor;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

double sub_188F17AB8()
{
  result = 2.0;
  xmmword_1EA92ECD0 = xmmword_18A651880;
  return result;
}

uint64_t UITextEffectView.ReplacementTextEffect.__allocating_init(chunk:view:delegate:)(void *a1, void *a2, void *a3)
{
  swift_allocObject();
  v7 = sub_188F1FCEC(a1, a2, a3, v6);

  return v7;
}

uint64_t UITextEffectView.ReplacementTextEffect.init(chunk:view:delegate:)(void *a1, void *a2, void *a3, double a4)
{
  v6 = sub_188F1FCEC(a1, a2, a3, a4);

  return v6;
}

uint64_t UITextEffectView.ReplacementTextEffect.init(chunk:view:delegate:fromColor:)(void *a1, void *a2, void *a3, void *a4)
{
  v5 = v4;
  v10 = a3[3];
  v11 = a3[4];
  v12 = __swift_mutable_project_boxed_opaque_existential_1(a3, v10);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v15, v13);
  v17 = sub_188F1F888(a1, a2, v15, a4, v5, v10, v11);

  __swift_destroy_boxed_opaque_existential_0Tm(a3);
  return v17;
}

unint64_t sub_188F17C94(void *a1)
{
  v2 = [a1 parameters];
  v3 = [v2 _textLineRects];

  if (v3)
  {
    sub_188A921E4();
    v4 = sub_18A4A7548();

    if (v4 >> 62)
    {
      v5 = sub_18A4A7F68();
    }

    else
    {
      v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v3 = v5 > 1;
  }

  if (UIAccessibilityIsReduceMotionEnabled())
  {
    return 0;
  }

  v6 = OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_lineAnimationEnabled;
  swift_beginAccess();
  if ((*(v1 + v6) & 1) == 0)
  {
    return 0;
  }

  return v3;
}

void sub_188F17D80(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934728, &unk_18A64C610);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v52[-v5];
  swift_beginAccess();
  v7 = *(v1 + 16);
  if (v7 && *(v2 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_isValid) == 1)
  {
    v8 = *(v2 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_effectViewOut);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934968, &qword_18A64D478);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_18A64BFB0;
    v10 = v7;
    v11 = [a1 view];
    [v11 bounds];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;

    v54.origin.x = v13;
    v54.origin.y = v15;
    v54.size.width = v17;
    v54.size.height = v19;
    Width = CGRectGetWidth(v54);
    v21 = sub_1890005B8();
    v22 = objc_allocWithZone(UIColor);
    aBlock[4] = sub_18913686C;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_188BC2240;
    aBlock[3] = &block_descriptor_26;
    v23 = _Block_copy(aBlock);
    v24 = [v22 initWithDynamicProvider_];
    _Block_release(v23);

    v25 = [a1 parameters];
    v26 = [v25 _textLineRects];

    if (v26)
    {
      sub_188A921E4();
      v27 = sub_18A4A7548();

      if (v27 >> 62)
      {
        v28 = sub_18A4A7F68();
      }

      else
      {
        v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v28 == 1)
      {
        v29 = 1;
      }

      else
      {
        v29 = 2;
      }
    }

    else
    {
      v29 = 2;
    }

    *(v9 + 56) = &type metadata for UIRBDirectionalLightEffectView.Replacement.OutgoingEffect;
    *(v9 + 64) = &protocol witness table for UIRBDirectionalLightEffectView.Replacement.OutgoingEffect;
    v30 = swift_allocObject();
    *(v9 + 32) = v30;
    v31 = [objc_opt_self() functionWithName_];
    *(v30 + 5) = v29;
    *(v30 + 6) = v31;
    v30[2] = Width;
    v30[3] = v21;
    *(v30 + 4) = v24;
    *(*&v8[OBJC_IVAR____TtC5UIKit30UIRBDirectionalLightEffectView_drawingView] + OBJC_IVAR____TtCC5UIKit30UIRBDirectionalLightEffectViewP33_5F98E6BE5B93275EE5D20586FF75585B11DrawingView_effects) = v9;

    sub_189230C30();
    [v10 addSubview_];
    sub_188F18320(v8, a1);
    if (sub_188F17C94(a1))
    {
      v32 = [a1 view];
      type metadata accessor for TextLineWaveAnimator();
      swift_allocObject();
      v33 = a1;
      v34 = sub_1891EC6CC(v33, v32);

      v35 = (v2 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_alongsideBuildOutAnimation);
      swift_beginAccess();
      v37 = *v35;
      v36 = v35[1];
      v38 = swift_allocObject();
      v38[2] = v34;
      v38[3] = v37;
      v38[4] = v36;
      v39 = &v8[OBJC_IVAR____TtC5UIKit30UIRBDirectionalLightEffectView_alongsideAnimation];
      swift_beginAccess();
      v40 = *v39;
      v41 = v39[1];
      *v39 = sub_188F21170;
      v39[1] = v38;
      sub_188A52E38(v37, v36);

      sub_188A55B8C(v40, v41);
      *(v2 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_fromLineAnimator) = v34;
    }

    else
    {
      v42 = (v2 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_alongsideBuildOutAnimation);
      swift_beginAccess();
      v44 = *v42;
      v43 = v42[1];
      v45 = &v8[OBJC_IVAR____TtC5UIKit30UIRBDirectionalLightEffectView_alongsideAnimation];
      swift_beginAccess();
      v46 = *v45;
      v47 = v45[1];
      *v45 = v44;
      v45[1] = v43;
      sub_188A52E38(v44, v43);
      sub_188A55B8C(v46, v47);
    }

    v48 = sub_18A4A76C8();
    (*(*(v48 - 8) + 56))(v6, 1, 1, v48);
    sub_18A4A76A8();

    v49 = sub_18A4A7698();
    v50 = swift_allocObject();
    v51 = MEMORY[0x1E69E85E0];
    v50[2] = v49;
    v50[3] = v51;
    v50[4] = v2;
    sub_188F18724(0, 0, v6, &unk_18A6518A8, v50);
  }
}

void sub_188F18320(void *a1, id a2)
{
  v5 = [a2 view];
  swift_beginAccess();
  v6 = *(v2 + 16);
  if (v6)
  {
    v7 = *(v2 + 16);
  }

  else
  {
    v7 = a1;
    v6 = 0;
  }

  v8 = v6;
  [v5 frame];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = [a2 target];
  v18 = [v17 container];

  [v7 convertRect:v18 fromCoordinateSpace:{v10, v12, v14, v16}];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;

  [a1 setCenter_];
  v27.origin.x = 0.0;
  v27.origin.y = 0.0;
  v27.size.width = v24;
  v27.size.height = v26;
  v28 = CGRectInset(v27, 0.0, -80.0);
  [a1 setBounds_];
  [v5 setFrame_];
  [a1 setMaskView_];
}

uint64_t sub_188F184DC()
{
  v0[2] = sub_18A4A76A8();
  v0[3] = sub_18A4A7698();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_188F18588;

  return sub_188F18D18();
}

uint64_t sub_188F18588()
{

  v1 = sub_18A4A7678();

  return MEMORY[0x1EEE6DFA0](sub_188F186C4, v1, v0);
}

uint64_t sub_188F186C4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_188F18724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934728, &unk_18A64C610);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_188F20F68(a3, v25 - v10);
  v12 = sub_18A4A76C8();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_188A3F5FC(v11, &qword_1EA934728, &unk_18A64C610);
  }

  else
  {
    sub_18A4A76B8();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_18A4A7678();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_18A4A7318() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_188A3F5FC(a3, &qword_1EA934728, &unk_18A64C610);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_188A3F5FC(a3, &qword_1EA934728, &unk_18A64C610);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_188F18A14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934728, &unk_18A64C610);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_188F20F68(a3, v25 - v10);
  v12 = sub_18A4A76C8();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_188A3F5FC(v11, &qword_1EA934728, &unk_18A64C610);
  }

  else
  {
    sub_18A4A76B8();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_18A4A7678();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_18A4A7318() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936EB8, &qword_18A651AD8);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_188A3F5FC(a3, &qword_1EA934728, &unk_18A64C610);

      return v22;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_188A3F5FC(a3, &qword_1EA934728, &unk_18A64C610);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936EB8, &qword_18A651AD8);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_188F18D18()
{
  v1[30] = v0;
  sub_18A4A76A8();
  v1[31] = sub_18A4A7698();
  v3 = sub_18A4A7678();
  v1[32] = v3;
  v1[33] = v2;

  return MEMORY[0x1EEE6DFA0](sub_188F18DB0, v3, v2);
}

uint64_t sub_188F18DB0()
{
  v1 = v0[30];
  if (*(v1 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_isValid) == 1 && (swift_beginAccess(), v2 = *(v1 + 16), (v0[34] = v2) != 0))
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    v0[35] = Strong;
    if (Strong)
    {
      v4 = Strong;
      v5 = v0[30];
      swift_beginAccess();
      v6 = *(v5 + 24);
      v0[36] = v6;
      v0[2] = v0;
      v0[3] = sub_188F190BC;
      v7 = swift_continuation_init();
      v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936EB0, &qword_18A651A60);
      v0[10] = MEMORY[0x1E69E9820];
      v0[11] = 1107296256;
      v0[12] = sub_188F194AC;
      v0[13] = &block_descriptor_102_0;
      v0[14] = v7;
      v8 = v2;
      [v4 updateTextChunkVisibilityForAnimation:v6 visible:0 completionHandler:v0 + 10];

      return MEMORY[0x1EEE6DEC8](v0 + 2);
    }

    else
    {
      v10 = v0[30];
      v11 = swift_allocObject();
      v12 = v2;
      swift_weakInit();
      v13 = (v10 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_alongsideBuildOutCompletion);
      swift_beginAccess();
      v15 = *v13;
      v14 = v13[1];
      v16 = swift_allocObject();
      v0[37] = v16;
      v16[2] = v11;
      v16[3] = v15;
      v16[4] = v14;
      sub_188A52E38(v15, v14);
      sub_189230A38(0, sub_188F20E04, v16);
      v17 = swift_task_alloc();
      v0[38] = v17;
      *v17 = v0;
      v17[1] = sub_188F19318;

      return sub_188F19C10();
    }
  }

  else
  {

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_188F190BC()
{
  v1 = *(*v0 + 264);
  v2 = *(*v0 + 256);

  return MEMORY[0x1EEE6DFA0](sub_188F191C4, v2, v1);
}

uint64_t sub_188F191C4()
{
  v1 = v0[36];
  swift_unknownObjectRelease();

  v2 = v0[30];
  v3 = swift_allocObject();
  swift_weakInit();
  v4 = (v2 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_alongsideBuildOutCompletion);
  swift_beginAccess();
  v6 = *v4;
  v5 = v4[1];
  v7 = swift_allocObject();
  v0[37] = v7;
  v7[2] = v3;
  v7[3] = v6;
  v7[4] = v5;
  sub_188A52E38(v6, v5);
  sub_189230A38(0, sub_188F20E04, v7);
  v8 = swift_task_alloc();
  v0[38] = v8;
  *v8 = v0;
  v8[1] = sub_188F19318;

  return sub_188F19C10();
}

uint64_t sub_188F19318()
{
  v1 = *v0;

  v2 = *(v1 + 264);
  v3 = *(v1 + 256);

  return MEMORY[0x1EEE6DFA0](sub_188F19438, v3, v2);
}

uint64_t sub_188F19438()
{
  v1 = *(v0 + 272);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_188F194AC(uint64_t a1)
{
  __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));

  return swift_continuation_resume();
}

uint64_t sub_188F194E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[28] = a5;
  v6[29] = a6;
  v6[27] = a4;
  sub_18A4A76A8();
  v6[30] = sub_18A4A7698();
  v8 = sub_18A4A7678();
  v6[31] = v8;
  v6[32] = v7;

  return MEMORY[0x1EEE6DFA0](sub_188F1957C, v8, v7);
}

uint64_t sub_188F1957C()
{
  v1 = v0[27];
  swift_beginAccess();
  v2 = *(v1 + 16);
  v0[33] = v2;
  if (v2 && (swift_beginAccess(), Strong = swift_unknownObjectWeakLoadStrong(), (v0[34] = Strong) != 0))
  {
    v4 = Strong;
    v5 = v0[27];
    swift_beginAccess();
    v6 = *(v5 + 24);
    v0[35] = v6;
    v0[2] = v0;
    v0[3] = sub_188F19768;
    v7 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936EB0, &qword_18A651A60);
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = sub_188F194AC;
    v0[13] = &block_descriptor_114_0;
    v0[14] = v7;
    v8 = v2;
    [v4 finishAnimationFor:v6 completionHandler:v0 + 10];

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }

  else
  {

    v10 = v0[28];
    if (v10)
    {
      v10(v9);
    }

    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_188F19768()
{
  v1 = *(*v0 + 256);
  v2 = *(*v0 + 248);

  return MEMORY[0x1EEE6DFA0](sub_188F19870, v2, v1);
}

uint64_t sub_188F19870()
{
  v1 = v0[35];
  v2 = v0[33];

  swift_unknownObjectRelease();

  v3 = v0[28];
  if (v3)
  {
    v3();
  }

  v4 = v0[1];

  return v4();
}

double sub_188F19904()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934728, &unk_18A64C610);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v10 - v3;
  v5 = sub_18A4A76C8();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  sub_18A4A76A8();

  v6 = sub_18A4A7698();
  v7 = swift_allocObject();
  v8 = MEMORY[0x1E69E85E0];
  v7[2] = v6;
  v7[3] = v8;
  v7[4] = v1;
  sub_188F18724(0, 0, v4, &unk_18A6518B8, v7);

  return result;
}

uint64_t sub_188F19A28()
{
  v0[2] = sub_18A4A76A8();
  v0[3] = sub_18A4A7698();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_188F19AD4;

  return sub_188F19C10();
}

uint64_t sub_188F19AD4()
{

  v1 = sub_18A4A7678();

  return MEMORY[0x1EEE6DFA0](sub_188F2117C, v1, v0);
}

uint64_t sub_188F19C10()
{
  v1[80] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934728, &unk_18A64C610);
  v1[81] = swift_task_alloc();
  type metadata accessor for UITextEffectView.EffectID(0);
  v1[82] = swift_task_alloc();
  v1[83] = sub_18A4A76A8();
  v1[84] = sub_18A4A7698();
  v3 = sub_18A4A7678();
  v1[85] = v3;
  v1[86] = v2;

  return MEMORY[0x1EEE6DFA0](sub_188F19D14, v3, v2);
}

uint64_t sub_188F19D14()
{
  v1 = *(v0 + 640);
  swift_beginAccess();
  v2 = *(v1 + 16);
  *(v0 + 696) = v2;
  if (v2 && (v3 = *(v0 + 640), *(v3 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_isValid) == 1))
  {
    v4 = qword_1EA92ECC8;
    v5 = v2;
    if (v4 != -1)
    {
      swift_once();
      v3 = *(v0 + 640);
    }

    v6 = xmmword_1EA92ECD0;
    *(v0 + 704) = xmmword_1EA92ECD0;
    v7 = v3[7];
    v8 = v3[8];
    __swift_project_boxed_opaque_existential_0(v3 + 4, v7);
    swift_beginAccess();
    v9 = v3[3];
    *(v0 + 720) = v9;
    *(v0 + 600) = v6;
    *(v0 + 608) = *(&v6 + 1) + *(&v6 + 1);
    v10 = *(v8 + 8);
    v11 = v9;
    v16 = (v10 + *v10);
    v12 = swift_task_alloc();
    *(v0 + 728) = v12;
    *v12 = v0;
    v12[1] = sub_188F19F68;
    v13 = *(v0 + 640);

    return v16(v11, v13, v0 + 600, v7, v8);
  }

  else
  {

    v15 = *(v0 + 8);

    return v15();
  }
}

uint64_t sub_188F19F68(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 720);
  *(*v1 + 736) = a1;

  v4 = *(v2 + 688);
  v5 = *(v2 + 680);

  return MEMORY[0x1EEE6DFA0](sub_188F1A0B0, v5, v4);
}

uint64_t sub_188F1A0B0()
{
  v1 = *(v0 + 736);
  if (v1)
  {
    v2 = *(v0 + 640);
    v3 = OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_washInColor;
    swift_beginAccess();
    v4 = *(v2 + v3);
    v5 = *(v0 + 640);
    if (v4)
    {
      v6 = *(v5 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_effectViewIn);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934968, &qword_18A64D478);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_18A64BFB0;
      v8 = v4;
      v9 = [v1 view];
      [v9 bounds];
      v11 = v10;
      v13 = v12;
      v15 = v14;
      v17 = v16;

      v108.origin.x = v11;
      v108.origin.y = v13;
      v108.size.width = v15;
      v108.size.height = v17;
      Width = CGRectGetWidth(v108);
      v19 = v1;
      v20 = sub_1890005B8();

      v21 = v19;
      v22 = [v21 parameters];
      v23 = [v22 _textLineRects];

      if (v23)
      {
        sub_188A921E4();
        v24 = sub_18A4A7548();

        if (v24 >> 62)
        {
          v25 = sub_18A4A7F68();
        }

        else
        {
          v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v25 == 1)
        {
          v26 = 1;
        }

        else
        {
          v26 = 2;
        }
      }

      else
      {

        v26 = 2;
      }

      *(v7 + 56) = &type metadata for UIRBDirectionalLightEffectView.Replacement.IncomingEffect;
      *(v7 + 64) = &protocol witness table for UIRBDirectionalLightEffectView.Replacement.IncomingEffect;
      v57 = swift_allocObject();
      *(v7 + 32) = v57;
      v58 = *MEMORY[0x1E6979ED0];
      v59 = objc_opt_self();
      v60 = v8;
      v61 = [v59 functionWithName_];
      *(v57 + 5) = v26;
      *(v57 + 6) = v61;
      v57[2] = Width;
      v57[3] = v20;
      *(v57 + 4) = v60;
      *(*&v6[OBJC_IVAR____TtC5UIKit30UIRBDirectionalLightEffectView_drawingView] + OBJC_IVAR____TtCC5UIKit30UIRBDirectionalLightEffectViewP33_5F98E6BE5B93275EE5D20586FF75585B11DrawingView_effects) = v7;

      sub_189230C30();
    }

    else
    {
      v6 = *(v5 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_effectViewIn);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934968, &qword_18A64D478);
      v38 = swift_allocObject();
      *(v38 + 16) = xmmword_18A64BFB0;
      v39 = [v1 view];
      [v39 bounds];
      v41 = v40;
      v43 = v42;
      v45 = v44;
      v47 = v46;

      v109.origin.x = v41;
      v109.origin.y = v43;
      v109.size.width = v45;
      v109.size.height = v47;
      v48 = CGRectGetWidth(v109);
      v49 = v1;
      v50 = sub_1890005B8();

      v51 = v49;
      v52 = [v51 parameters];
      v53 = [v52 _textLineRects];

      if (v53)
      {
        sub_188A921E4();
        v54 = sub_18A4A7548();

        if (v54 >> 62)
        {
          v55 = sub_18A4A7F68();
        }

        else
        {
          v55 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v55 == 1)
        {
          v56 = 1;
        }

        else
        {
          v56 = 2;
        }
      }

      else
      {

        v56 = 2;
      }

      v62 = [objc_opt_self() labelColor];
      *(v38 + 56) = &type metadata for UIRBDirectionalLightEffectView.Replacement.IncomingEffect;
      *(v38 + 64) = &protocol witness table for UIRBDirectionalLightEffectView.Replacement.IncomingEffect;
      v63 = swift_allocObject();
      *(v38 + 32) = v63;
      v64 = [objc_opt_self() functionWithName_];
      *(v63 + 5) = v56;
      *(v63 + 6) = v64;
      v63[2] = v48;
      v63[3] = v50;
      *(v63 + 4) = v62;
      *(*&v6[OBJC_IVAR____TtC5UIKit30UIRBDirectionalLightEffectView_drawingView] + OBJC_IVAR____TtCC5UIKit30UIRBDirectionalLightEffectViewP33_5F98E6BE5B93275EE5D20586FF75585B11DrawingView_effects) = v38;

      sub_189230C30();
    }

    v65 = *(v0 + 696);
    v66 = *(*(v0 + 640) + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_effectViewOut);
    v67 = v1;
    [v65 insertSubview:v6 belowSubview:v66];
    v68 = v67;
    sub_188F18320(v6, v68);

    [v6 frame];
    v70 = v69;
    v72 = v71;
    v74 = v73;
    v76 = v75;
    [v66 frame];
    v112.origin.x = v77;
    v112.origin.y = v78;
    v112.size.width = v79;
    v112.size.height = v80;
    v110.origin.x = v70;
    v110.origin.y = v72;
    v110.size.width = v74;
    v110.size.height = v76;
    v111 = CGRectUnion(v110, v112);
    [v66 setFrame_];
    LOBYTE(v66) = sub_188F17C94(v68);

    v81 = *(v0 + 640);
    if (v66)
    {
      v82 = v68;

      v83 = [v82 view];
      type metadata accessor for TextLineWaveAnimator();
      swift_allocObject();
      v106 = sub_1891EC6CC(v82, v83);

      v84 = (v81 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_alongsideBuildInAnimation);
      swift_beginAccess();
      v86 = *v84;
      v85 = v84[1];
      v87 = swift_allocObject();
      v87[2] = v106;
      v87[3] = v86;
      v87[4] = v85;
      v88 = &v6[OBJC_IVAR____TtC5UIKit30UIRBDirectionalLightEffectView_alongsideAnimation];
      swift_beginAccess();
      v89 = *v88;
      v90 = v88[1];
      *v88 = sub_188F20CF0;
      v88[1] = v87;
      sub_188A52E38(v86, v85);

      sub_188A55B8C(v89, v90);
      *(v81 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_toLineAnimator) = v106;
    }

    else
    {

      v91 = (v81 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_alongsideBuildInAnimation);
      swift_beginAccess();
      v93 = *v91;
      v92 = v91[1];
      v94 = &v6[OBJC_IVAR____TtC5UIKit30UIRBDirectionalLightEffectView_alongsideAnimation];
      swift_beginAccess();
      v95 = *v94;
      v96 = v94[1];
      *v94 = v93;
      v94[1] = v92;
      sub_188A52E38(v93, v92);
      sub_188A55B8C(v95, v96);
    }

    v97 = *(v0 + 696);
    v98 = *(v0 + 640);
    v99 = swift_allocObject();
    swift_weakInit();
    v100 = (v98 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_alongsideBuildInCompletion);
    swift_beginAccess();
    v102 = *v100;
    v101 = v100[1];
    v103 = swift_allocObject();
    v103[2] = v99;
    v103[3] = v102;
    v103[4] = v101;
    sub_188A52E38(v102, v101);
    sub_189230A38(0, sub_188F20CB4, v103);

    v104 = *(v0 + 8);

    return v104();
  }

  else
  {
    v27 = *(v0 + 704);
    v28 = *(v0 + 640);
    v29 = *(v0 + 712) + *(v0 + 712);
    v30 = v28[7];
    v31 = v28[8];
    __swift_project_boxed_opaque_existential_0(v28 + 4, v30);
    v32 = v28[3];
    *(v0 + 744) = v32;
    *(v0 + 616) = v27;
    *(v0 + 624) = v29;
    v33 = *(v31 + 16);
    v34 = v32;
    v105 = (v33 + *v33);
    v35 = swift_task_alloc();
    *(v0 + 752) = v35;
    *v35 = v0;
    v35[1] = sub_188F1A9D0;
    v36 = *(v0 + 640);

    return v105(v34, v36, v0 + 616, v30, v31);
  }
}

uint64_t sub_188F1A9D0()
{
  v1 = *v0;
  v2 = *(*v0 + 744);

  v3 = *(v1 + 688);
  v4 = *(v1 + 680);

  return MEMORY[0x1EEE6DFA0](sub_188F1AB10, v4, v3);
}

uint64_t sub_188F1AB10()
{
  v0[95] = OBJC_IVAR____TtC5UIKit16UITextEffectView_source;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[96] = Strong;
  if (Strong)
  {
    v0[97] = swift_getObjectType();
    v2 = swift_task_alloc();
    v0[98] = v2;
    *v2 = v0;
    v2[1] = sub_188F1AD4C;

    return sub_1890007EC();
  }

  else
  {
    v4 = v0[87];
    v5 = v0[81];
    v6 = v0[80];

    v7 = v6[7];
    v8 = v6[8];
    __swift_project_boxed_opaque_existential_0(v6 + 4, v7);
    (*(v8 + 24))(v6, v7, v8);
    v9 = sub_18A4A76C8();
    (*(*(v9 - 8) + 56))(v5, 1, 1, v9);

    v10 = sub_18A4A7698();
    v11 = swift_allocObject();
    v12 = MEMORY[0x1E69E85E0];
    v11[2] = v10;
    v11[3] = v12;
    v11[4] = v6;
    sub_188F18724(0, 0, v5, &unk_18A651A48, v11);

    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_188F1AD4C(char a1)
{
  v2 = *v1;
  *(*v1 + 848) = a1;

  v3 = *(v2 + 688);
  v4 = *(v2 + 680);

  return MEMORY[0x1EEE6DFA0](sub_188F1AE74, v4, v3);
}

uint64_t sub_188F1AE74()
{
  if (*(v0 + 848) == 1)
  {
    v1 = *(*(v0 + 640) + 24);
    *(v0 + 792) = v1;
    v2 = v1;
    v3 = swift_task_alloc();
    *(v0 + 800) = v3;
    *v3 = v0;
    v3[1] = sub_188F1B09C;

    return sub_189000AD8(v2);
  }

  else
  {
    swift_unknownObjectRelease();
    v5 = *(v0 + 696);
    v6 = *(v0 + 648);
    v7 = *(v0 + 640);

    v8 = v7[7];
    v9 = v7[8];
    __swift_project_boxed_opaque_existential_0(v7 + 4, v8);
    (*(v9 + 24))(v7, v8, v9);
    v10 = sub_18A4A76C8();
    (*(*(v10 - 8) + 56))(v6, 1, 1, v10);

    v11 = sub_18A4A7698();
    v12 = swift_allocObject();
    v13 = MEMORY[0x1E69E85E0];
    v12[2] = v11;
    v12[3] = v13;
    v12[4] = v7;
    sub_188F18724(0, 0, v6, &unk_18A651A48, v12);

    v14 = *(v0 + 8);

    return v14();
  }
}

uint64_t sub_188F1B09C(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 792);
  *(*v1 + 849) = a1;

  v4 = *(v2 + 688);
  v5 = *(v2 + 680);

  return MEMORY[0x1EEE6DFA0](sub_188F1B1E4, v5, v4);
}

uint64_t sub_188F1B1E4()
{
  if (*(v0 + 849) != 1)
  {
    swift_unknownObjectRelease();
    goto LABEL_10;
  }

  v1 = *(v0 + 696);
  v2 = *(v0 + 656);
  v3 = *(v0 + 640);
  v4 = OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_id;
  swift_beginAccess();
  sub_188ECA980(v3 + v4, v2);
  v5 = OBJC_IVAR____TtC5UIKit16UITextEffectView_textEffects;
  swift_beginAccess();
  v6 = *(v1 + v5);
  if (!*(v6 + 16))
  {
LABEL_9:
    swift_unknownObjectRelease();
    sub_188ECAA48(*(v0 + 656));
    *(v0 + 272) = 0u;
    *(v0 + 288) = 0u;
    *(v0 + 304) = 0;
    sub_188A3F5FC(v0 + 272, &qword_1EA936EA0, &unk_18A651A50);
    goto LABEL_10;
  }

  v7 = *(v0 + 656);

  v8 = sub_188E8B92C(v7);
  if ((v9 & 1) == 0)
  {

    goto LABEL_9;
  }

  v10 = *(v0 + 656);
  sub_188A53994(*(v6 + 56) + 40 * v8, v0 + 272);
  sub_188ECAA48(v10);

  sub_188A3F5FC(v0 + 272, &qword_1EA936EA0, &unk_18A651A50);
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 808) = Strong;
  if (Strong)
  {
    v12 = Strong;
    v13 = v0 + 16;
    v14 = *(*(v0 + 640) + 24);
    *(v0 + 816) = v14;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 632;
    *(v0 + 24) = sub_188F1BE08;
    v15 = swift_continuation_init();
    *(v0 + 200) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936EA8, &unk_18A65CB10);
    *(v0 + 144) = MEMORY[0x1E69E9820];
    *(v0 + 152) = 1107296256;
    *(v0 + 160) = sub_188F1D34C;
    *(v0 + 168) = &block_descriptor_81_0;
    *(v0 + 176) = v15;
    [v12 targetedPreviewFor:v14 completionHandler:v0 + 144];
LABEL_16:

    return MEMORY[0x1EEE6DEC8](v13);
  }

  *(v0 + 824) = 0;
  swift_beginAccess();
  v27 = swift_unknownObjectWeakLoadStrong();
  *(v0 + 832) = v27;
  if (v27)
  {
    v28 = v27;
    v13 = v0 + 80;
    v29 = *(*(v0 + 640) + 24);
    *(v0 + 840) = v29;
    *(v0 + 80) = v0;
    *(v0 + 88) = sub_188F1C94C;
    v30 = swift_continuation_init();
    *(v0 + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936EB0, &qword_18A651A60);
    *(v0 + 208) = MEMORY[0x1E69E9820];
    *(v0 + 216) = 1107296256;
    *(v0 + 224) = sub_188F194AC;
    *(v0 + 232) = &block_descriptor_84_0;
    *(v0 + 240) = v30;
    [v28 prepareForAnimationFor:v29 completionHandler:v0 + 208];
    goto LABEL_16;
  }

  swift_unknownObjectRelease();
  v31 = *(v0 + 824);
  if (v31)
  {
    v32 = *(v0 + 640);
    v33 = OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_washInColor;
    swift_beginAccess();
    v34 = *(v32 + v33);
    v35 = *(v0 + 640);
    if (v34)
    {
      v36 = *(v35 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_effectViewIn);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934968, &qword_18A64D478);
      v37 = swift_allocObject();
      *(v37 + 16) = xmmword_18A64BFB0;
      v38 = v34;
      v39 = [v31 view];
      [v39 bounds];
      v41 = v40;
      v43 = v42;
      v45 = v44;
      v47 = v46;

      v125.origin.x = v41;
      v125.origin.y = v43;
      v125.size.width = v45;
      v125.size.height = v47;
      Width = CGRectGetWidth(v125);
      v49 = v31;
      v50 = sub_1890005B8();

      v51 = v49;
      v52 = [v51 parameters];
      v53 = [v52 _textLineRects];

      if (v53)
      {
        sub_188A921E4();
        v54 = sub_18A4A7548();

        if (v54 >> 62)
        {
          v55 = sub_18A4A7F68();
        }

        else
        {
          v55 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v55 == 1)
        {
          v56 = 1;
        }

        else
        {
          v56 = 2;
        }
      }

      else
      {

        v56 = 2;
      }

      *(v37 + 56) = &type metadata for UIRBDirectionalLightEffectView.Replacement.IncomingEffect;
      *(v37 + 64) = &protocol witness table for UIRBDirectionalLightEffectView.Replacement.IncomingEffect;
      v76 = swift_allocObject();
      *(v37 + 32) = v76;
      v77 = *MEMORY[0x1E6979ED0];
      v78 = objc_opt_self();
      v79 = v38;
      v80 = [v78 functionWithName_];
      *(v76 + 5) = v56;
      *(v76 + 6) = v80;
      v76[2] = Width;
      v76[3] = v50;
      *(v76 + 4) = v79;
      *(*&v36[OBJC_IVAR____TtC5UIKit30UIRBDirectionalLightEffectView_drawingView] + OBJC_IVAR____TtCC5UIKit30UIRBDirectionalLightEffectViewP33_5F98E6BE5B93275EE5D20586FF75585B11DrawingView_effects) = v37;

      sub_189230C30();
    }

    else
    {
      v36 = *(v35 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_effectViewIn);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934968, &qword_18A64D478);
      v57 = swift_allocObject();
      *(v57 + 16) = xmmword_18A64BFB0;
      v58 = [v31 view];
      [v58 bounds];
      v60 = v59;
      v62 = v61;
      v64 = v63;
      v66 = v65;

      v126.origin.x = v60;
      v126.origin.y = v62;
      v126.size.width = v64;
      v126.size.height = v66;
      v67 = CGRectGetWidth(v126);
      v68 = v31;
      v69 = sub_1890005B8();

      v70 = v68;
      v71 = [v70 parameters];
      v72 = [v71 _textLineRects];

      if (v72)
      {
        sub_188A921E4();
        v73 = sub_18A4A7548();

        if (v73 >> 62)
        {
          v74 = sub_18A4A7F68();
        }

        else
        {
          v74 = *((v73 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v74 == 1)
        {
          v75 = 1;
        }

        else
        {
          v75 = 2;
        }
      }

      else
      {

        v75 = 2;
      }

      v81 = [objc_opt_self() labelColor];
      *(v57 + 56) = &type metadata for UIRBDirectionalLightEffectView.Replacement.IncomingEffect;
      *(v57 + 64) = &protocol witness table for UIRBDirectionalLightEffectView.Replacement.IncomingEffect;
      v82 = swift_allocObject();
      *(v57 + 32) = v82;
      v83 = [objc_opt_self() functionWithName_];
      *(v82 + 5) = v75;
      *(v82 + 6) = v83;
      v82[2] = v67;
      v82[3] = v69;
      *(v82 + 4) = v81;
      *(*&v36[OBJC_IVAR____TtC5UIKit30UIRBDirectionalLightEffectView_drawingView] + OBJC_IVAR____TtCC5UIKit30UIRBDirectionalLightEffectViewP33_5F98E6BE5B93275EE5D20586FF75585B11DrawingView_effects) = v57;

      sub_189230C30();
    }

    v84 = *(v0 + 696);
    v85 = *(*(v0 + 640) + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_effectViewOut);
    v86 = v31;
    [v84 insertSubview:v36 belowSubview:v85];
    v87 = v86;
    sub_188F18320(v36, v87);

    [v36 frame];
    v89 = v88;
    v91 = v90;
    v93 = v92;
    v95 = v94;
    [v85 frame];
    v129.origin.x = v96;
    v129.origin.y = v97;
    v129.size.width = v98;
    v129.size.height = v99;
    v127.origin.x = v89;
    v127.origin.y = v91;
    v127.size.width = v93;
    v127.size.height = v95;
    v128 = CGRectUnion(v127, v129);
    [v85 setFrame_];
    LOBYTE(v85) = sub_188F17C94(v87);

    v100 = *(v0 + 640);
    if (v85)
    {
      v101 = v87;

      v102 = [v101 view];
      type metadata accessor for TextLineWaveAnimator();
      swift_allocObject();
      v123 = sub_1891EC6CC(v101, v102);

      v103 = (v100 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_alongsideBuildInAnimation);
      swift_beginAccess();
      v105 = *v103;
      v104 = v103[1];
      v106 = swift_allocObject();
      v106[2] = v123;
      v106[3] = v105;
      v106[4] = v104;
      v107 = &v36[OBJC_IVAR____TtC5UIKit30UIRBDirectionalLightEffectView_alongsideAnimation];
      swift_beginAccess();
      v108 = *v107;
      v109 = v107[1];
      *v107 = sub_188F20CF0;
      v107[1] = v106;
      sub_188A52E38(v105, v104);

      sub_188A55B8C(v108, v109);
      *(v100 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_toLineAnimator) = v123;
    }

    else
    {

      v110 = (v100 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_alongsideBuildInAnimation);
      swift_beginAccess();
      v112 = *v110;
      v111 = v110[1];
      v113 = &v36[OBJC_IVAR____TtC5UIKit30UIRBDirectionalLightEffectView_alongsideAnimation];
      swift_beginAccess();
      v114 = *v113;
      v115 = v113[1];
      *v113 = v112;
      v113[1] = v111;
      sub_188A52E38(v112, v111);
      sub_188A55B8C(v114, v115);
    }

    v116 = *(v0 + 696);
    v117 = *(v0 + 640);
    v118 = swift_allocObject();
    swift_weakInit();
    v119 = (v117 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_alongsideBuildInCompletion);
    swift_beginAccess();
    v121 = *v119;
    v120 = v119[1];
    v122 = swift_allocObject();
    v122[2] = v118;
    v122[3] = v121;
    v122[4] = v120;
    sub_188A52E38(v121, v120);
    sub_189230A38(0, sub_188F20CB4, v122);

    goto LABEL_11;
  }

LABEL_10:
  v16 = *(v0 + 696);
  v17 = *(v0 + 648);
  v18 = *(v0 + 640);

  v19 = v18[7];
  v20 = v18[8];
  __swift_project_boxed_opaque_existential_0(v18 + 4, v19);
  (*(v20 + 24))(v18, v19, v20);
  v21 = sub_18A4A76C8();
  (*(*(v21 - 8) + 56))(v17, 1, 1, v21);

  v22 = sub_18A4A7698();
  v23 = swift_allocObject();
  v24 = MEMORY[0x1E69E85E0];
  v23[2] = v22;
  v23[3] = v24;
  v23[4] = v18;
  sub_188F18724(0, 0, v17, &unk_18A651A48, v23);

LABEL_11:

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_188F1BE08()
{
  v1 = *(*v0 + 688);
  v2 = *(*v0 + 680);

  return MEMORY[0x1EEE6DFA0](sub_188F1BF10, v2, v1);
}

uint64_t sub_188F1BF10()
{
  v1 = v0[102];
  v2 = v0[79];
  swift_unknownObjectRelease();

  v0[103] = v2;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[104] = Strong;
  if (Strong)
  {
    v4 = Strong;
    v5 = *(v0[80] + 24);
    v0[105] = v5;
    v0[10] = v0;
    v0[11] = sub_188F1C94C;
    v6 = swift_continuation_init();
    v0[33] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936EB0, &qword_18A651A60);
    v0[26] = MEMORY[0x1E69E9820];
    v0[27] = 1107296256;
    v0[28] = sub_188F194AC;
    v0[29] = &block_descriptor_84_0;
    v0[30] = v6;
    [v4 prepareForAnimationFor:v5 completionHandler:v0 + 26];

    return MEMORY[0x1EEE6DEC8](v0 + 10);
  }

  else
  {
    swift_unknownObjectRelease();
    v7 = v0[103];
    if (v7)
    {
      v8 = v0[80];
      v9 = OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_washInColor;
      swift_beginAccess();
      v10 = *(v8 + v9);
      v11 = v0[80];
      if (v10)
      {
        v12 = *(v11 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_effectViewIn);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934968, &qword_18A64D478);
        v13 = swift_allocObject();
        *(v13 + 16) = xmmword_18A64BFB0;
        v14 = v10;
        v15 = [v7 view];
        [v15 bounds];
        v17 = v16;
        v19 = v18;
        v21 = v20;
        v23 = v22;

        v112.origin.x = v17;
        v112.origin.y = v19;
        v112.size.width = v21;
        v112.size.height = v23;
        Width = CGRectGetWidth(v112);
        v25 = v7;
        v26 = sub_1890005B8();

        v27 = v25;
        v28 = [v27 parameters];
        v29 = [v28 _textLineRects];

        if (v29)
        {
          sub_188A921E4();
          v30 = sub_18A4A7548();

          if (v30 >> 62)
          {
            v31 = sub_18A4A7F68();
          }

          else
          {
            v31 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          if (v31 == 1)
          {
            v32 = 1;
          }

          else
          {
            v32 = 2;
          }
        }

        else
        {

          v32 = 2;
        }

        *(v13 + 56) = &type metadata for UIRBDirectionalLightEffectView.Replacement.IncomingEffect;
        *(v13 + 64) = &protocol witness table for UIRBDirectionalLightEffectView.Replacement.IncomingEffect;
        v61 = swift_allocObject();
        *(v13 + 32) = v61;
        v62 = *MEMORY[0x1E6979ED0];
        v63 = objc_opt_self();
        v64 = v14;
        v65 = [v63 functionWithName_];
        *(v61 + 5) = v32;
        *(v61 + 6) = v65;
        v61[2] = Width;
        v61[3] = v26;
        *(v61 + 4) = v64;
        *(*&v12[OBJC_IVAR____TtC5UIKit30UIRBDirectionalLightEffectView_drawingView] + OBJC_IVAR____TtCC5UIKit30UIRBDirectionalLightEffectViewP33_5F98E6BE5B93275EE5D20586FF75585B11DrawingView_effects) = v13;

        sub_189230C30();
      }

      else
      {
        v12 = *(v11 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_effectViewIn);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934968, &qword_18A64D478);
        v42 = swift_allocObject();
        *(v42 + 16) = xmmword_18A64BFB0;
        v43 = [v7 view];
        [v43 bounds];
        v45 = v44;
        v47 = v46;
        v49 = v48;
        v51 = v50;

        v113.origin.x = v45;
        v113.origin.y = v47;
        v113.size.width = v49;
        v113.size.height = v51;
        v52 = CGRectGetWidth(v113);
        v53 = v7;
        v54 = sub_1890005B8();

        v55 = v53;
        v56 = [v55 parameters];
        v57 = [v56 _textLineRects];

        if (v57)
        {
          sub_188A921E4();
          v58 = sub_18A4A7548();

          if (v58 >> 62)
          {
            v59 = sub_18A4A7F68();
          }

          else
          {
            v59 = *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          if (v59 == 1)
          {
            v60 = 1;
          }

          else
          {
            v60 = 2;
          }
        }

        else
        {

          v60 = 2;
        }

        v66 = [objc_opt_self() labelColor];
        *(v42 + 56) = &type metadata for UIRBDirectionalLightEffectView.Replacement.IncomingEffect;
        *(v42 + 64) = &protocol witness table for UIRBDirectionalLightEffectView.Replacement.IncomingEffect;
        v67 = swift_allocObject();
        *(v42 + 32) = v67;
        v68 = [objc_opt_self() functionWithName_];
        *(v67 + 5) = v60;
        *(v67 + 6) = v68;
        v67[2] = v52;
        v67[3] = v54;
        *(v67 + 4) = v66;
        *(*&v12[OBJC_IVAR____TtC5UIKit30UIRBDirectionalLightEffectView_drawingView] + OBJC_IVAR____TtCC5UIKit30UIRBDirectionalLightEffectViewP33_5F98E6BE5B93275EE5D20586FF75585B11DrawingView_effects) = v42;

        sub_189230C30();
      }

      v69 = v0[87];
      v70 = *(v0[80] + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_effectViewOut);
      v71 = v7;
      [v69 insertSubview:v12 belowSubview:v70];
      v72 = v71;
      sub_188F18320(v12, v72);

      [v12 frame];
      v74 = v73;
      v76 = v75;
      v78 = v77;
      v80 = v79;
      [v70 frame];
      v116.origin.x = v81;
      v116.origin.y = v82;
      v116.size.width = v83;
      v116.size.height = v84;
      v114.origin.x = v74;
      v114.origin.y = v76;
      v114.size.width = v78;
      v114.size.height = v80;
      v115 = CGRectUnion(v114, v116);
      [v70 setFrame_];
      LOBYTE(v70) = sub_188F17C94(v72);

      v85 = v0[80];
      if (v70)
      {
        v86 = v72;

        v87 = [v86 view];
        type metadata accessor for TextLineWaveAnimator();
        swift_allocObject();
        v110 = sub_1891EC6CC(v86, v87);

        v88 = (v85 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_alongsideBuildInAnimation);
        swift_beginAccess();
        v90 = *v88;
        v89 = v88[1];
        v91 = swift_allocObject();
        v91[2] = v110;
        v91[3] = v90;
        v91[4] = v89;
        v92 = &v12[OBJC_IVAR____TtC5UIKit30UIRBDirectionalLightEffectView_alongsideAnimation];
        swift_beginAccess();
        v93 = *v92;
        v94 = v92[1];
        *v92 = sub_188F20CF0;
        v92[1] = v91;
        sub_188A52E38(v90, v89);

        sub_188A55B8C(v93, v94);
        *(v85 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_toLineAnimator) = v110;
      }

      else
      {

        v95 = (v85 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_alongsideBuildInAnimation);
        swift_beginAccess();
        v97 = *v95;
        v96 = v95[1];
        v98 = &v12[OBJC_IVAR____TtC5UIKit30UIRBDirectionalLightEffectView_alongsideAnimation];
        swift_beginAccess();
        v99 = *v98;
        v100 = v98[1];
        *v98 = v97;
        v98[1] = v96;
        sub_188A52E38(v97, v96);
        sub_188A55B8C(v99, v100);
      }

      v101 = v0[87];
      v102 = v0[80];
      v103 = swift_allocObject();
      swift_weakInit();
      v104 = (v102 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_alongsideBuildInCompletion);
      swift_beginAccess();
      v106 = *v104;
      v105 = v104[1];
      v107 = swift_allocObject();
      v107[2] = v103;
      v107[3] = v106;
      v107[4] = v105;
      sub_188A52E38(v106, v105);
      sub_189230A38(0, sub_188F20CB4, v107);
    }

    else
    {
      v33 = v0[87];
      v34 = v0[81];
      v35 = v0[80];

      v36 = v35[7];
      v37 = v35[8];
      __swift_project_boxed_opaque_existential_0(v35 + 4, v36);
      (*(v37 + 24))(v35, v36, v37);
      v38 = sub_18A4A76C8();
      (*(*(v38 - 8) + 56))(v34, 1, 1, v38);

      v39 = sub_18A4A7698();
      v40 = swift_allocObject();
      v41 = MEMORY[0x1E69E85E0];
      v40[2] = v39;
      v40[3] = v41;
      v40[4] = v35;
      sub_188F18724(0, 0, v34, &unk_18A651A48, v40);
    }

    v108 = v0[1];

    return v108();
  }
}

uint64_t sub_188F1C94C()
{
  v1 = *(*v0 + 688);
  v2 = *(*v0 + 680);

  return MEMORY[0x1EEE6DFA0](sub_188F1CA54, v2, v1);
}

uint64_t sub_188F1CA54()
{
  v1 = v0[105];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  v2 = v0[103];
  if (v2)
  {
    v3 = v0[80];
    v4 = OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_washInColor;
    swift_beginAccess();
    v5 = *(v3 + v4);
    v6 = v0[80];
    if (v5)
    {
      v7 = *(v6 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_effectViewIn);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934968, &qword_18A64D478);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_18A64BFB0;
      v9 = v5;
      v10 = [v2 view];
      [v10 bounds];
      v12 = v11;
      v14 = v13;
      v16 = v15;
      v18 = v17;

      v107.origin.x = v12;
      v107.origin.y = v14;
      v107.size.width = v16;
      v107.size.height = v18;
      Width = CGRectGetWidth(v107);
      v20 = v2;
      v21 = sub_1890005B8();

      v22 = v20;
      v23 = [v22 parameters];
      v24 = [v23 _textLineRects];

      if (v24)
      {
        sub_188A921E4();
        v25 = sub_18A4A7548();

        if (v25 >> 62)
        {
          v26 = sub_18A4A7F68();
        }

        else
        {
          v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v26 == 1)
        {
          v27 = 1;
        }

        else
        {
          v27 = 2;
        }
      }

      else
      {

        v27 = 2;
      }

      *(v8 + 56) = &type metadata for UIRBDirectionalLightEffectView.Replacement.IncomingEffect;
      *(v8 + 64) = &protocol witness table for UIRBDirectionalLightEffectView.Replacement.IncomingEffect;
      v56 = swift_allocObject();
      *(v8 + 32) = v56;
      v57 = *MEMORY[0x1E6979ED0];
      v58 = objc_opt_self();
      v59 = v9;
      v60 = [v58 functionWithName_];
      *(v56 + 5) = v27;
      *(v56 + 6) = v60;
      v56[2] = Width;
      v56[3] = v21;
      *(v56 + 4) = v59;
      *(*&v7[OBJC_IVAR____TtC5UIKit30UIRBDirectionalLightEffectView_drawingView] + OBJC_IVAR____TtCC5UIKit30UIRBDirectionalLightEffectViewP33_5F98E6BE5B93275EE5D20586FF75585B11DrawingView_effects) = v8;

      sub_189230C30();
    }

    else
    {
      v7 = *(v6 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_effectViewIn);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934968, &qword_18A64D478);
      v37 = swift_allocObject();
      *(v37 + 16) = xmmword_18A64BFB0;
      v38 = [v2 view];
      [v38 bounds];
      v40 = v39;
      v42 = v41;
      v44 = v43;
      v46 = v45;

      v108.origin.x = v40;
      v108.origin.y = v42;
      v108.size.width = v44;
      v108.size.height = v46;
      v47 = CGRectGetWidth(v108);
      v48 = v2;
      v49 = sub_1890005B8();

      v50 = v48;
      v51 = [v50 parameters];
      v52 = [v51 _textLineRects];

      if (v52)
      {
        sub_188A921E4();
        v53 = sub_18A4A7548();

        if (v53 >> 62)
        {
          v54 = sub_18A4A7F68();
        }

        else
        {
          v54 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v54 == 1)
        {
          v55 = 1;
        }

        else
        {
          v55 = 2;
        }
      }

      else
      {

        v55 = 2;
      }

      v61 = [objc_opt_self() labelColor];
      *(v37 + 56) = &type metadata for UIRBDirectionalLightEffectView.Replacement.IncomingEffect;
      *(v37 + 64) = &protocol witness table for UIRBDirectionalLightEffectView.Replacement.IncomingEffect;
      v62 = swift_allocObject();
      *(v37 + 32) = v62;
      v63 = [objc_opt_self() functionWithName_];
      *(v62 + 5) = v55;
      *(v62 + 6) = v63;
      v62[2] = v47;
      v62[3] = v49;
      *(v62 + 4) = v61;
      *(*&v7[OBJC_IVAR____TtC5UIKit30UIRBDirectionalLightEffectView_drawingView] + OBJC_IVAR____TtCC5UIKit30UIRBDirectionalLightEffectViewP33_5F98E6BE5B93275EE5D20586FF75585B11DrawingView_effects) = v37;

      sub_189230C30();
    }

    v64 = v0[87];
    v65 = *(v0[80] + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_effectViewOut);
    v66 = v2;
    [v64 insertSubview:v7 belowSubview:v65];
    v67 = v66;
    sub_188F18320(v7, v67);

    [v7 frame];
    v69 = v68;
    v71 = v70;
    v73 = v72;
    v75 = v74;
    [v65 frame];
    v111.origin.x = v76;
    v111.origin.y = v77;
    v111.size.width = v78;
    v111.size.height = v79;
    v109.origin.x = v69;
    v109.origin.y = v71;
    v109.size.width = v73;
    v109.size.height = v75;
    v110 = CGRectUnion(v109, v111);
    [v65 setFrame_];
    LOBYTE(v65) = sub_188F17C94(v67);

    v80 = v0[80];
    if (v65)
    {
      v81 = v67;

      v82 = [v81 view];
      type metadata accessor for TextLineWaveAnimator();
      swift_allocObject();
      v105 = sub_1891EC6CC(v81, v82);

      v83 = (v80 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_alongsideBuildInAnimation);
      swift_beginAccess();
      v85 = *v83;
      v84 = v83[1];
      v86 = swift_allocObject();
      v86[2] = v105;
      v86[3] = v85;
      v86[4] = v84;
      v87 = &v7[OBJC_IVAR____TtC5UIKit30UIRBDirectionalLightEffectView_alongsideAnimation];
      swift_beginAccess();
      v88 = *v87;
      v89 = v87[1];
      *v87 = sub_188F20CF0;
      v87[1] = v86;
      sub_188A52E38(v85, v84);

      sub_188A55B8C(v88, v89);
      *(v80 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_toLineAnimator) = v105;
    }

    else
    {

      v90 = (v80 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_alongsideBuildInAnimation);
      swift_beginAccess();
      v92 = *v90;
      v91 = v90[1];
      v93 = &v7[OBJC_IVAR____TtC5UIKit30UIRBDirectionalLightEffectView_alongsideAnimation];
      swift_beginAccess();
      v94 = *v93;
      v95 = v93[1];
      *v93 = v92;
      v93[1] = v91;
      sub_188A52E38(v92, v91);
      sub_188A55B8C(v94, v95);
    }

    v96 = v0[87];
    v97 = v0[80];
    v98 = swift_allocObject();
    swift_weakInit();
    v99 = (v97 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_alongsideBuildInCompletion);
    swift_beginAccess();
    v101 = *v99;
    v100 = v99[1];
    v102 = swift_allocObject();
    v102[2] = v98;
    v102[3] = v101;
    v102[4] = v100;
    sub_188A52E38(v101, v100);
    sub_189230A38(0, sub_188F20CB4, v102);
  }

  else
  {
    v28 = v0[87];
    v29 = v0[81];
    v30 = v0[80];

    v31 = v30[7];
    v32 = v30[8];
    __swift_project_boxed_opaque_existential_0(v30 + 4, v31);
    (*(v32 + 24))(v30, v31, v32);
    v33 = sub_18A4A76C8();
    (*(*(v33 - 8) + 56))(v29, 1, 1, v33);

    v34 = sub_18A4A7698();
    v35 = swift_allocObject();
    v36 = MEMORY[0x1E69E85E0];
    v35[2] = v34;
    v35[3] = v36;
    v35[4] = v30;
    sub_188F18724(0, 0, v29, &unk_18A651A48, v35);
  }

  v103 = v0[1];

  return v103();
}

uint64_t sub_188F1D34C(uint64_t a1, void *a2)
{
  **(*(*__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56)) + 64) + 40) = a2;
  v3 = a2;

  return swift_continuation_resume();
}

void sub_188F1D3B0(uint64_t a1, void (*a2)(float), float a3)
{
  v6 = a3;
  *(a1 + 32) = a3;
  sub_1891EBD30();
  Height = CGRectGetHeight(v8);
  sub_1891EB8C0((Height + *(a1 + 48) + *(a1 + 48)) * v6 - *(a1 + 48));
  if (a2)
  {
    a2(a3);
  }
}

double sub_188F1D428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934728, &unk_18A64C610);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v18 - v9;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    v14 = sub_18A4A76C8();
    (*(*(v14 - 8) + 56))(v10, 1, 1, v14);
    sub_18A4A76A8();

    sub_188A52E38(a2, a3);
    v15 = sub_18A4A7698();
    v16 = swift_allocObject();
    v17 = MEMORY[0x1E69E85E0];
    v16[2] = v15;
    v16[3] = v17;
    v16[4] = v13;
    v16[5] = a2;
    v16[6] = a3;
    sub_188F18724(0, 0, v10, a5, v16);
  }

  return result;
}

uint64_t sub_188F1D598(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[50] = a5;
  v6[51] = a6;
  v6[49] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934728, &unk_18A64C610);
  v6[52] = swift_task_alloc();
  v6[53] = sub_18A4A76A8();
  v6[54] = sub_18A4A7698();
  v8 = sub_18A4A7678();
  v6[55] = v8;
  v6[56] = v7;

  return MEMORY[0x1EEE6DFA0](sub_188F1D670, v8, v7);
}

uint64_t sub_188F1D670()
{
  v1 = v0[49];
  swift_beginAccess();
  v2 = *(v1 + 16);
  v0[57] = v2;
  if (!v2)
  {

    v11 = v0[50];
    if (!v11)
    {
      goto LABEL_6;
    }

LABEL_5:
    v11(v10);
    goto LABEL_6;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[58] = Strong;
  if (Strong)
  {
    v4 = Strong;
    v5 = v0[49];
    swift_beginAccess();
    v6 = *(v5 + 24);
    v0[59] = v6;
    v0[2] = v0;
    v0[3] = sub_188F1DA88;
    v7 = swift_continuation_init();
    v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936EB0, &qword_18A651A60);
    v0[18] = MEMORY[0x1E69E9820];
    v0[19] = 1107296256;
    v0[20] = sub_188F194AC;
    v0[21] = &block_descriptor_96_0;
    v0[22] = v7;
    v8 = v2;
    [v4 updateTextChunkVisibilityForAnimation:v6 visible:1 completionHandler:v0 + 18];
    v9 = v0 + 2;
LABEL_11:

    return MEMORY[0x1EEE6DEC8](v9);
  }

  v22 = v2;
  swift_beginAccess();
  v23 = swift_unknownObjectWeakLoadStrong();
  v0[60] = v23;
  if (v23)
  {
    v24 = v23;
    v25 = v0[49];
    swift_beginAccess();
    v26 = *(v25 + 24);
    v0[61] = v26;
    v0[10] = v0;
    v0[11] = sub_188F1DE54;
    v27 = swift_continuation_init();
    v0[33] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936EB0, &qword_18A651A60);
    v0[26] = MEMORY[0x1E69E9820];
    v0[27] = 1107296256;
    v0[28] = sub_188F194AC;
    v0[29] = &block_descriptor_99_2;
    v0[30] = v27;
    [v24 finishAnimationFor:v26 completionHandler:v0 + 26];
    v9 = v0 + 10;
    goto LABEL_11;
  }

  v28 = v0[57];

  v11 = v0[50];
  if (v11)
  {
    goto LABEL_5;
  }

LABEL_6:
  v12 = v0[52];
  v13 = v0[49];
  v14 = v13[7];
  v15 = v13[8];
  __swift_project_boxed_opaque_existential_0(v13 + 4, v14);
  (*(v15 + 24))(v13, v14, v15);
  v16 = sub_18A4A76C8();
  (*(*(v16 - 8) + 56))(v12, 1, 1, v16);

  v17 = sub_18A4A7698();
  v18 = swift_allocObject();
  v19 = MEMORY[0x1E69E85E0];
  v18[2] = v17;
  v18[3] = v19;
  v18[4] = v13;
  sub_188F18724(0, 0, v12, &unk_18A651A78, v18);

  v20 = v0[1];

  return v20();
}

uint64_t sub_188F1DA88()
{
  v1 = *(*v0 + 448);
  v2 = *(*v0 + 440);

  return MEMORY[0x1EEE6DFA0](sub_188F1DB90, v2, v1);
}

uint64_t sub_188F1DB90()
{
  v1 = v0[59];
  swift_unknownObjectRelease();

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[60] = Strong;
  if (Strong)
  {
    v3 = Strong;
    v4 = v0[49];
    swift_beginAccess();
    v5 = *(v4 + 24);
    v0[61] = v5;
    v0[10] = v0;
    v0[11] = sub_188F1DE54;
    v6 = swift_continuation_init();
    v0[33] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936EB0, &qword_18A651A60);
    v0[26] = MEMORY[0x1E69E9820];
    v0[27] = 1107296256;
    v0[28] = sub_188F194AC;
    v0[29] = &block_descriptor_99_2;
    v0[30] = v6;
    [v3 finishAnimationFor:v5 completionHandler:v0 + 26];

    return MEMORY[0x1EEE6DEC8](v0 + 10);
  }

  else
  {
    v7 = v0[57];

    v8 = v0[50];
    if (v8)
    {
      v8();
    }

    v9 = v0[52];
    v10 = v0[49];
    v11 = v10[7];
    v12 = v10[8];
    __swift_project_boxed_opaque_existential_0(v10 + 4, v11);
    (*(v12 + 24))(v10, v11, v12);
    v13 = sub_18A4A76C8();
    (*(*(v13 - 8) + 56))(v9, 1, 1, v13);

    v14 = sub_18A4A7698();
    v15 = swift_allocObject();
    v16 = MEMORY[0x1E69E85E0];
    v15[2] = v14;
    v15[3] = v16;
    v15[4] = v10;
    sub_188F18724(0, 0, v9, &unk_18A651A78, v15);

    v17 = v0[1];

    return v17();
  }
}

uint64_t sub_188F1DE54()
{
  v1 = *(*v0 + 448);
  v2 = *(*v0 + 440);

  return MEMORY[0x1EEE6DFA0](sub_188F1DF5C, v2, v1);
}

uint64_t sub_188F1DF5C()
{
  v1 = v0[61];
  v2 = v0[57];

  swift_unknownObjectRelease();

  v3 = v0[50];
  if (v3)
  {
    v3();
  }

  v4 = v0[52];
  v5 = v0[49];
  v6 = v5[7];
  v7 = v5[8];
  __swift_project_boxed_opaque_existential_0(v5 + 4, v6);
  (*(v7 + 24))(v5, v6, v7);
  v8 = sub_18A4A76C8();
  (*(*(v8 - 8) + 56))(v4, 1, 1, v8);

  v9 = sub_18A4A7698();
  v10 = swift_allocObject();
  v11 = MEMORY[0x1E69E85E0];
  v10[2] = v9;
  v10[3] = v11;
  v10[4] = v5;
  sub_188F18724(0, 0, v4, &unk_18A651A78, v10);

  v12 = v0[1];

  return v12();
}

double sub_188F1E0E0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934728, &unk_18A64C610);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v8 - v1;
  v3 = sub_18A4A76C8();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  sub_18A4A76A8();
  v4 = sub_18A4A7698();
  v5 = swift_allocObject();
  v6 = MEMORY[0x1E69E85E0];
  *(v5 + 16) = v4;
  *(v5 + 24) = v6;
  sub_188F18724(0, 0, v2, &unk_18A6518C8, v5);

  return result;
}

uint64_t sub_188F1E1EC()
{
  sub_18A4A76A8();
  *(v0 + 16) = sub_18A4A7698();
  v2 = sub_18A4A7678();

  return MEMORY[0x1EEE6DFA0](sub_188F1E280, v2, v1);
}

uint64_t sub_188F1E280()
{

  v1 = *(v0 + 8);

  return v1();
}

double sub_188F1E2E0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934728, &unk_18A64C610);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v10 - v3;
  v5 = sub_18A4A76C8();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  sub_18A4A76A8();

  v6 = sub_18A4A7698();
  v7 = swift_allocObject();
  v8 = MEMORY[0x1E69E85E0];
  v7[2] = v6;
  v7[3] = v8;
  v7[4] = v1;
  sub_188F18724(0, 0, v4, &unk_18A65EF60, v7);

  return result;
}

uint64_t sub_188F1E404(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[41] = a4;
  sub_18A4A76A8();
  v4[42] = sub_18A4A7698();
  v6 = sub_18A4A7678();
  v4[43] = v6;
  v4[44] = v5;

  return MEMORY[0x1EEE6DFA0](sub_188F1E49C, v6, v5);
}

uint64_t sub_188F1E49C()
{
  v1 = v0[41];
  swift_beginAccess();
  v2 = *(v1 + 16);
  v0[45] = v2;
  if (v2)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    v0[46] = Strong;
    if (Strong)
    {
      v4 = Strong;
      v5 = v0 + 2;
      v6 = v0[41];
      swift_beginAccess();
      v7 = *(v6 + 24);
      v0[47] = v7;
      v0[2] = v0;
      v0[3] = sub_188F1E7E4;
      v8 = swift_continuation_init();
      v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936EB0, &qword_18A651A60);
      v0[18] = MEMORY[0x1E69E9820];
      v0[19] = 1107296256;
      v0[20] = sub_188F194AC;
      v0[21] = &block_descriptor_171;
      v0[22] = v8;
      v9 = v2;
      [v4 updateTextChunkVisibilityForAnimation:v7 visible:1 completionHandler:v0 + 18];
LABEL_10:

      return MEMORY[0x1EEE6DEC8](v5);
    }

    v13 = v2;
    swift_beginAccess();
    v14 = swift_unknownObjectWeakLoadStrong();
    v0[48] = v14;
    if (v14)
    {
      v15 = v14;
      v5 = v0 + 10;
      v16 = v0[41];
      swift_beginAccess();
      v17 = *(v16 + 24);
      v0[49] = v17;
      v0[10] = v0;
      v0[11] = sub_188F1EAF0;
      v18 = swift_continuation_init();
      v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936EB0, &qword_18A651A60);
      v0[18] = MEMORY[0x1E69E9820];
      v0[19] = 1107296256;
      v0[20] = sub_188F194AC;
      v0[21] = &block_descriptor_174_0;
      v0[22] = v18;
      [v15 finishAnimationFor:v17 completionHandler:v0 + 18];
      goto LABEL_10;
    }

    v19 = v0[45];
  }

  else
  {
  }

  v10 = v0[41];
  *(v10 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_isValid) = 0;
  [*(v10 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_effectViewOut) removeFromSuperview];
  [*(v10 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_effectViewIn) removeFromSuperview];
  v11 = v0[1];

  return v11();
}

uint64_t sub_188F1E7E4()
{
  v1 = *(*v0 + 352);
  v2 = *(*v0 + 344);

  return MEMORY[0x1EEE6DFA0](sub_188F1E8EC, v2, v1);
}

uint64_t sub_188F1E8EC()
{
  v1 = v0[47];
  swift_unknownObjectRelease();

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[48] = Strong;
  if (Strong)
  {
    v3 = Strong;
    v4 = v0[41];
    swift_beginAccess();
    v5 = *(v4 + 24);
    v0[49] = v5;
    v0[10] = v0;
    v0[11] = sub_188F1EAF0;
    v6 = swift_continuation_init();
    v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936EB0, &qword_18A651A60);
    v0[18] = MEMORY[0x1E69E9820];
    v0[19] = 1107296256;
    v0[20] = sub_188F194AC;
    v0[21] = &block_descriptor_174_0;
    v0[22] = v6;
    [v3 finishAnimationFor:v5 completionHandler:v0 + 18];

    return MEMORY[0x1EEE6DEC8](v0 + 10);
  }

  else
  {
    v7 = v0[45];

    v8 = v0[41];
    *(v8 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_isValid) = 0;
    [*(v8 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_effectViewOut) removeFromSuperview];
    [*(v8 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_effectViewIn) removeFromSuperview];
    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_188F1EAF0()
{
  v1 = *(*v0 + 352);
  v2 = *(*v0 + 344);

  return MEMORY[0x1EEE6DFA0](sub_188F1EBF8, v2, v1);
}

uint64_t sub_188F1EBF8()
{
  v1 = v0[49];
  v2 = v0[45];

  swift_unknownObjectRelease();

  v3 = v0[41];
  *(v3 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_isValid) = 0;
  [*(v3 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_effectViewOut) removeFromSuperview];
  [*(v3 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_effectViewIn) removeFromSuperview];
  v4 = v0[1];

  return v4();
}

uint64_t sub_188F1ECB4(uint64_t a1, uint64_t a2, _OWORD *a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_188EC93B4;

  return UITextEffectView.ReplacementTextEffect.Delegate.performReplacementAndGeneratePreview(for:effect:animation:)(a1, a2, a3, a4, a5);
}

uint64_t UITextEffectView.ReplacementTextEffect.Delegate.performReplacementAndGeneratePreview(for:effect:animation:)(uint64_t a1, uint64_t a2, _OWORD *a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = *a3;
  v12 = (*(a5 + 32) + **(a5 + 32));
  v10 = swift_task_alloc();
  *(v5 + 32) = v10;
  *v10 = v5;
  v10[1] = sub_188F1EEC0;

  return v12(a1, a2, v5 + 16, a4, a5);
}

uint64_t sub_188F1EEC0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1(0);
}

uint64_t UITextEffectView.ReplacementTextEffect.deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 32));
  sub_188ECAA48(v0 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_id);
  sub_188A55B8C(*(v0 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_alongsideBuildInAnimation), *(v0 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_alongsideBuildInAnimation + 8));
  sub_188A55B8C(*(v0 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_alongsideBuildInCompletion), *(v0 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_alongsideBuildInCompletion + 8));
  sub_188A55B8C(*(v0 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_alongsideBuildOutAnimation), *(v0 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_alongsideBuildOutAnimation + 8));
  sub_188A55B8C(*(v0 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_alongsideBuildOutCompletion), *(v0 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_alongsideBuildOutCompletion + 8));

  v1 = *(v0 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_replacementOutLightConfiguration);
  v2 = *(v0 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_replacementOutLightConfiguration + 8);

  v3 = *(v0 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_replacementInLightConfiguration);
  v4 = *(v0 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_replacementInLightConfiguration + 8);

  return v0;
}

uint64_t UITextEffectView.ReplacementTextEffect.__deallocating_deinit()
{
  UITextEffectView.ReplacementTextEffect.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_188F1F150@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_id;
  swift_beginAccess();
  return sub_188ECA980(v3 + v4, a1);
}

id sub_188F1F1AC()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 24);

  return v2;
}

void *sub_188F1F1FC()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 16);
  v3 = v2;
  return v2;
}

double sub_188F1F268()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934728, &unk_18A64C610);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v8 - v1;
  v3 = sub_18A4A76C8();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  sub_18A4A76A8();
  v4 = sub_18A4A7698();
  v5 = swift_allocObject();
  v6 = MEMORY[0x1E69E85E0];
  *(v5 + 16) = v4;
  *(v5 + 24) = v6;
  sub_188F18724(0, 0, v2, &unk_18A651AB0, v5);

  return result;
}

double sub_188F1F374()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934728, &unk_18A64C610);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v10 - v2;
  v4 = *v0;
  v5 = sub_18A4A76C8();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  sub_18A4A76A8();

  v6 = sub_18A4A7698();
  v7 = swift_allocObject();
  v8 = MEMORY[0x1E69E85E0];
  v7[2] = v6;
  v7[3] = v8;
  v7[4] = v4;
  sub_188F18724(0, 0, v3, &unk_18A651AA8, v7);

  return result;
}

double sub_188F1F498()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934728, &unk_18A64C610);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v10 - v2;
  v4 = *v0;
  v5 = sub_18A4A76C8();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  sub_18A4A76A8();

  v6 = sub_18A4A7698();
  v7 = swift_allocObject();
  v8 = MEMORY[0x1E69E85E0];
  v7[2] = v6;
  v7[3] = v8;
  v7[4] = v4;
  sub_188F18724(0, 0, v3, &unk_18A651AA0, v7);

  return result;
}

uint64_t sub_188F1F5BC(uint64_t a1, uint64_t a2, _OWORD *a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_188F21174;

  return UITextEffectView.ReplacementTextEffect.Delegate.performReplacementAndGeneratePreview(for:effect:animation:)(a1, a2, a3, a4, a5);
}

uint64_t sub_188F1F680(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_188F1F774;

  return v5(v2 + 32);
}

uint64_t sub_188F1F774()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_188F1F888(void *a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v46[3] = a6;
  v46[4] = a7;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v46);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_0, a3, a6);
  *(a5 + 16) = 0;
  sub_18A4A29C8();
  *(a5 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_lineAnimationEnabled) = 1;
  v14 = (a5 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_alongsideBuildInAnimation);
  *v14 = 0;
  v14[1] = 0;
  v15 = (a5 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_alongsideBuildInCompletion);
  *v15 = 0;
  v15[1] = 0;
  v16 = (a5 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_alongsideBuildOutAnimation);
  *v16 = 0;
  v16[1] = 0;
  v17 = (a5 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_alongsideBuildOutCompletion);
  *v17 = 0;
  v17[1] = 0;
  *(a5 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_washInColor) = 0;
  v18 = OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_effectViewOut;
  type metadata accessor for UIRBDirectionalLightEffectView();
  v20 = v19;
  *(a5 + v18) = [objc_allocWithZone(v19) initWithFrame_];
  v21 = OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_effectViewIn;
  *(a5 + v21) = [objc_allocWithZone(v20) initWithFrame_];
  *(a5 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_fromLineAnimator) = 0;
  *(a5 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_toLineAnimator) = 0;
  *(a5 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_isValid) = 1;
  swift_beginAccess();
  v22 = *(a5 + 16);
  *(a5 + 16) = a2;
  v23 = a2;

  *(a5 + 24) = a1;
  sub_188A53994(v46, a5 + 32);
  v24 = objc_opt_self();
  v25 = a1;
  v26 = a4;
  v27 = [v24 clearColor];
  if (qword_1EA92F268 != -1)
  {
    v43 = v27;
    swift_once();
    v27 = v43;
  }

  v28 = qword_1EA92F270;
  v29 = a5 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_replacementOutLightConfiguration;
  *v29 = v26;
  *(v29 + 8) = v27;
  __asm { FMOV            V0.2D, #3.0 }

  *(v29 + 16) = _Q0;
  *(v29 + 32) = _Q0;
  *(v29 + 48) = v28;
  v35 = qword_1EA92F290;

  if (v35 != -1)
  {
    swift_once();
  }

  v36 = qword_1EA92F298;
  v37 = qword_1EA92F2A0;
  v38 = qword_1EA92F2C8;
  v39 = qword_1EA92F2A0;

  v40 = v36;
  v44 = unk_1EA92F2B8;
  v45 = xmmword_1EA92F2A8;
  __swift_destroy_boxed_opaque_existential_0Tm(v46);
  v41 = a5 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_replacementInLightConfiguration;
  *v41 = v40;
  *(v41 + 8) = v37;
  *(v41 + 16) = v45;
  *(v41 + 32) = v44;
  *(v41 + 48) = v38;
  return a5;
}

uint64_t sub_188F1FB70(void *a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for UITextEffectView.ReplacementTextEffect(0);
  v16 = swift_allocObject();
  (*(v13 + 16))(v15, a3, a6);
  return sub_188F1F888(a1, a2, v15, a4, v16, a6, a7);
}

uint64_t sub_188F1FC88(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UITextEffectView.EffectID(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_188F1FCEC(void *a1, void *a2, void *a3, double a4)
{
  *(v4 + 16) = 0;
  sub_18A4A29C8();
  *(v4 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_lineAnimationEnabled) = 1;
  v8 = (v4 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_alongsideBuildInAnimation);
  *v8 = 0;
  v8[1] = 0;
  v9 = (v4 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_alongsideBuildInCompletion);
  *v9 = 0;
  v9[1] = 0;
  v10 = (v4 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_alongsideBuildOutAnimation);
  *v10 = 0;
  v10[1] = 0;
  v11 = (v4 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_alongsideBuildOutCompletion);
  *v11 = 0;
  v11[1] = 0;
  *(v4 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_washInColor) = 0;
  v12 = OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_effectViewOut;
  type metadata accessor for UIRBDirectionalLightEffectView();
  v14 = v13;
  *(v4 + v12) = [objc_allocWithZone(v13) initWithFrame_];
  v15 = OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_effectViewIn;
  *(v4 + v15) = [objc_allocWithZone(v14) initWithFrame_];
  *(v4 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_fromLineAnimator) = 0;
  *(v4 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_toLineAnimator) = 0;
  *(v4 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_isValid) = 1;
  swift_beginAccess();
  v16 = *(v4 + 16);
  *(v4 + 16) = a2;
  v17 = a2;

  *(v4 + 24) = a1;
  sub_188A53994(a3, v4 + 32);
  v18 = qword_1EA931CD8;
  v19 = a1;
  if (v18 != -1)
  {
    swift_once();
  }

  v20 = qword_1EA934CC8;
  v21 = unk_1EA934CD0;
  v22 = qword_1EA934CF8;
  v23 = v4 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_replacementOutLightConfiguration;
  v24 = xmmword_1EA934CD8;
  v25 = unk_1EA934CE8;
  *v23 = qword_1EA934CC8;
  *(v23 + 8) = v21;
  *(v23 + 16) = v24;
  *(v23 + 32) = v25;
  *(v23 + 48) = v22;
  v26 = qword_1EA92F290;
  v27 = v20;
  v28 = v21;

  if (v26 != -1)
  {
    swift_once();
  }

  v29 = qword_1EA92F298;
  v30 = qword_1EA92F2A0;
  v31 = qword_1EA92F2C8;
  v32 = qword_1EA92F2A0;

  v33 = v29;
  v36 = unk_1EA92F2B8;
  v37 = xmmword_1EA92F2A8;
  __swift_destroy_boxed_opaque_existential_0Tm(a3);
  v34 = v4 + OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_replacementInLightConfiguration;
  *v34 = v33;
  *(v34 + 8) = v30;
  *(v34 + 16) = v37;
  *(v34 + 32) = v36;
  *(v34 + 48) = v31;
  return v4;
}

uint64_t sub_188F1FF60()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_188C48500;

  return sub_188F184DC();
}

uint64_t sub_188F20014()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_188C48500;

  return sub_188F19A28();
}

uint64_t sub_188F200C8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_188C48500;

  return sub_188F1E1EC();
}

uint64_t type metadata accessor for UITextEffectView.ReplacementTextEffect(uint64_t a1)
{
  result = qword_1EA92F618;
  if (!qword_1EA92F618)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_188F201C8(uint64_t a1)
{
  result = sub_18A4A29D8();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t dispatch thunk of UITextEffectView.ReplacementTextEffect.Delegate.performReplacementAndGeneratePreview(for:effect:animation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 8) + **(a5 + 8));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_188EC93B4;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of UITextEffectView.ReplacementTextEffect.Delegate.performAnimatedReplacement(for:effect:animation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 16) + **(a5 + 16));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_188C48500;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of UITextEffectView.ReplacementTextEffect.Delegate.performReplacement(for:effect:animation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 32) + **(a5 + 32));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_188C48500;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t sub_188F20C00(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_188C48500;

  return sub_188F1E404(a1, v4, v5, v6);
}

uint64_t sub_188F20D10(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_188C482B4;

  return sub_188F1D598(a1, v4, v5, v6, v7, v8);
}

uint64_t objectdestroy_86Tm()
{
  swift_unknownObjectRelease();

  if (*(v0 + 40))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_188F20E90(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_188C48500;

  return sub_188F194E0(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_188F20F68(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934728, &unk_18A64C610);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_188F20FD8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_188C48500;

  return sub_188F1F680(a1, v4);
}

uint64_t sub_188F21090(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_188C482B4;

  return sub_188F1F680(a1, v4);
}

void sub_188F21184(void *a1@<X8>)
{
  v2 = *v1;
  v3 = -1 << *(*v1 + 32);
  v4 = ~v3;
  *a1 = *v1;
  v7 = *(v2 + 64);
  v5 = v2 + 64;
  v6 = v7;
  v8 = -v3;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  a1[1] = v5;
  a1[2] = v4;
  a1[3] = 0;
  a1[4] = v9 & v6;
}

uint64_t sub_188F211CC()
{
  sub_188F213D4(*v0);
  v2 = v1;

  return v2;
}

uint64_t sub_188F2120C()
{
  v1 = *v0;
  sub_18A4A8888();
  MEMORY[0x18CFE37E0](v1);
  sub_18A4A7348();
  return sub_18A4A88E8();
}

uint64_t sub_188F21270(uint64_t a1)
{
  MEMORY[0x18CFE37E0](*v1);

  return sub_18A4A7348();
}

uint64_t sub_188F212C4()
{
  v1 = *v0;
  sub_18A4A8888();
  MEMORY[0x18CFE37E0](v1);
  sub_18A4A7348();
  return sub_18A4A88E8();
}

uint64_t sub_188F21324(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (a1[1] == a2[1] && a1[2] == a2[2])
  {
    return 1;
  }

  else
  {
    return sub_18A4A86C8();
  }
}

unint64_t sub_188F21380()
{
  result = qword_1EA936EC8;
  if (!qword_1EA936EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA936EC8);
  }

  return result;
}

void sub_188F213D4(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = 0x4EC4EC4EC4EC4EC5;
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA936EE8, &qword_18A651C08);
    v4 = swift_allocObject();
    v5 = 2 * ((_swift_stdlib_malloc_size(v4) - 32) / 104);
    v4[2] = v2;
    v4[3] = v5;
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
    v5 = *(MEMORY[0x1E69E7CC0] + 24);
  }

  v6 = -1 << *(a1 + 32);
  v7 = ~v6;
  v8 = *(a1 + 64);
  v9 = -v6;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v46 = a1;
  v47 = a1 + 64;
  v11 = v4 + 4;
  v12 = v5 >> 1;
  v48 = v7;
  v49 = 0;
  v50 = v10 & v8;
  if (v2)
  {
    v12 -= v2;

    while (1)
    {
      sub_188A813A8(&v39);
      if (!v39)
      {
        goto LABEL_37;
      }

      v13 = v40;
      *v11 = v39;
      *(v11 + 1) = v13;
      v14 = v41;
      v15 = v42;
      v16 = v43;
      v17 = v44;
      v11[12] = v45;
      *(v11 + 4) = v16;
      *(v11 + 5) = v17;
      *(v11 + 2) = v14;
      *(v11 + 3) = v15;
      v11 += 13;
      if (!--v2)
      {
        goto LABEL_13;
      }
    }
  }

LABEL_13:
  sub_188A813A8(v37);
  if (*&v37[0])
  {
    while (1)
    {
      v43 = v37[4];
      v44 = v37[5];
      v45 = v38;
      v39 = v37[0];
      v40 = v37[1];
      v41 = v37[2];
      v42 = v37[3];
      if (!v12)
      {
        v18 = v4[3];
        if (((v18 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_35;
        }

        v19 = v18 & 0xFFFFFFFFFFFFFFFELL;
        if (v19 <= 1)
        {
          v20 = 1;
        }

        else
        {
          v20 = v19;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA936EE8, &qword_18A651C08);
        v21 = swift_allocObject();
        v22 = v3;
        v23 = ((_swift_stdlib_malloc_size(v21) - 32) * v3) >> 64;
        v24 = (v23 >> 5) + (v23 >> 63);
        v21[2] = v20;
        v21[3] = 2 * v24;
        v25 = (v21 + 4);
        v26 = v4[3] >> 1;
        if (v4[2])
        {
          if (v21 != v4 || v25 >= &v4[13 * v26 + 4])
          {
            memmove(v21 + 4, v4 + 4, 104 * v26);
          }

          v4[2] = 0;
        }

        v11 = (v25 + 104 * v26);
        v12 = (v24 & 0x7FFFFFFFFFFFFFFFLL) - v26;

        v4 = v21;
        v3 = v22;
      }

      v28 = __OFSUB__(v12--, 1);
      if (v28)
      {
        break;
      }

      v29 = v40;
      *v11 = v39;
      *(v11 + 1) = v29;
      v30 = v41;
      v31 = v42;
      v32 = v43;
      v33 = v44;
      v11[12] = v45;
      *(v11 + 4) = v32;
      *(v11 + 5) = v33;
      *(v11 + 2) = v30;
      *(v11 + 3) = v31;
      v11 += 13;
      sub_188A813A8(v37);
      if (!*&v37[0])
      {
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

LABEL_30:
  sub_188E036A4(v46);
  sub_188A3F5FC(v37, &qword_1EA936EE0, &qword_18A651C00);
  v34 = v4[3];
  if (v34 >= 2)
  {
    v35 = v34 >> 1;
    v28 = __OFSUB__(v35, v12);
    v36 = v35 - v12;
    if (v28)
    {
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
      return;
    }

    v4[2] = v36;
  }
}

void sub_188F216CC(uint64_t a1)
{

  sub_1890A2A38();
  v2 = MEMORY[0x1E69E7CC0];
  v3 = 0;
  if (v1)
  {
    v4 = (MEMORY[0x1E69E7CC0] + 32);
    while (1)
    {
      if (!v3)
      {
        v5 = v2[3];
        if (((v5 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_23;
        }

        v6 = v1;
        v7 = v5 & 0xFFFFFFFFFFFFFFFELL;
        if (v7 <= 1)
        {
          v8 = 1;
        }

        else
        {
          v8 = v7;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA933EB0, &unk_18A64BA50);
        v9 = swift_allocObject();
        v10 = _swift_stdlib_malloc_size(v9);
        v11 = v10 - 32;
        if (v10 < 32)
        {
          v11 = v10 - 25;
        }

        v12 = v11 >> 3;
        v9[2] = v8;
        v9[3] = (2 * (v11 >> 3)) | 1;
        v13 = (v9 + 4);
        v14 = v2[3] >> 1;
        if (v2[2])
        {
          v15 = v2 + 4;
          if (v9 != v2 || v13 >= v15 + 8 * v14)
          {
            memmove(v9 + 4, v15, 8 * v14);
          }

          v2[2] = 0;
        }

        v4 = (v13 + 8 * v14);
        v3 = (v12 & 0x7FFFFFFFFFFFFFFFLL) - v14;

        v2 = v9;
        v1 = v6;
      }

      v16 = __OFSUB__(v3--, 1);
      if (v16)
      {
        break;
      }

      *v4++ = v1;
      sub_1890A2A38();
      if (!v1)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

LABEL_18:
  sub_188E036A4(a1);
  v17 = v2[3];
  if (v17 >= 2)
  {
    v18 = v17 >> 1;
    v16 = __OFSUB__(v18, v3);
    v19 = v18 - v3;
    if (v16)
    {
LABEL_24:
      __break(1u);
      return;
    }

    v2[2] = v19;
  }
}

uint64_t sub_188F21890(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 40))
  {
    return (*a1 + 127);
  }

  v3 = (((*a1 >> 57) >> 6) | (2 * ((*a1 >> 57) & 0x38 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_188F218EC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x3F | ((-a2 & 0x7F) << 6);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
      *(result + 8) = 0u;
      *(result + 24) = 0u;
    }
  }

  return result;
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_188F21980(uint64_t result, int a2, int a3)
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

unint64_t sub_188F219CC()
{
  result = qword_1ED48BEC0;
  if (!qword_1ED48BEC0)
  {
    type metadata accessor for AttributeScopes.UIKitAttributes(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED48BEC0);
  }

  return result;
}

uint64_t sub_188F21A30(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935C40, &qword_18A64F470);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_188F21AA0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935C40, &qword_18A64F470);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_188F21B08()
{
  result = qword_1EA930C60;
  if (!qword_1EA930C60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EA930C60);
  }

  return result;
}

void (*UINavigationItem.attributedTitle.modify(void *a1))(uint64_t a1, uint64_t a2)
{
  v2 = v1;
  *a1 = v1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935C40, &qword_18A64F470) - 8) + 64);
  if (MEMORY[0x1E69E7D08])
  {
    a1[1] = swift_coroFrameAlloc();
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    a1[1] = malloc(v4);
    v5 = malloc(v4);
  }

  v6 = v5;
  a1[2] = v5;
  if ([v2 attributedTitle])
  {
    type metadata accessor for AttributeScopes.UIKitAttributes(0);
    sub_188F219CC();
    v7 = 0;
    sub_18A4A25C8();
  }

  else
  {
    v7 = 1;
  }

  v8 = sub_18A4A2588();
  (*(*(v8 - 8) + 56))(v6, v7, 1, v8);
  return sub_188F21CB0;
}

uint64_t sub_188F21CD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935C40, &qword_18A64F470);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v11 - v8;
  sub_188F21A30(a1, &v11 - v8);
  return a5(v9);
}

void (*UINavigationItem.attributedSubtitle.modify(void *a1))(uint64_t a1, uint64_t a2)
{
  v2 = v1;
  *a1 = v1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935C40, &qword_18A64F470) - 8) + 64);
  if (MEMORY[0x1E69E7D08])
  {
    a1[1] = swift_coroFrameAlloc();
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    a1[1] = malloc(v4);
    v5 = malloc(v4);
  }

  v6 = v5;
  a1[2] = v5;
  if ([v2 attributedSubtitle])
  {
    type metadata accessor for AttributeScopes.UIKitAttributes(0);
    sub_188F219CC();
    v7 = 0;
    sub_18A4A25C8();
  }

  else
  {
    v7 = 1;
  }

  v8 = sub_18A4A2588();
  (*(*(v8 - 8) + 56))(v6, v7, 1, v8);
  return sub_188F21ED8;
}

void sub_188F21EF0(uint64_t a1, char a2, void (*a3)(void *))
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (a2)
  {
    sub_188F21A30(v5, v4);
    a3(v4);
    sub_188F21AA0(v5);
  }

  else
  {
    a3(v5);
  }

  free(v5);

  free(v4);
}

uint64_t sub_188F21F78@<X0>(SEL *a1@<X0>, uint64_t a2@<X8>)
{
  if ([v2 *a1])
  {
    type metadata accessor for AttributeScopes.UIKitAttributes(0);
    sub_188F219CC();
    sub_18A4A25C8();
    v4 = 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = sub_18A4A2588();
  v6 = *(*(v5 - 8) + 56);

  return v6(a2, v4, 1, v5);
}

uint64_t sub_188F22054@<X0>(id *a1@<X0>, SEL *a2@<X3>, uint64_t a3@<X8>)
{
  if ([*a1 *a2])
  {
    type metadata accessor for AttributeScopes.UIKitAttributes(0);
    sub_188F219CC();
    sub_18A4A25C8();
    v4 = 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = sub_18A4A2588();
  v6 = *(*(v5 - 8) + 56);

  return v6(a3, v4, 1, v5);
}

uint64_t sub_188F2213C(uint64_t a1, SEL *a2)
{
  v4 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935C40, &qword_18A64F470);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v18[-v7];
  v9 = sub_18A4A2588();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v18[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v18[-v14];
  sub_188F21A30(a1, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_188F21AA0(v8);
    [v4 *a2];
    return sub_188F21AA0(a1);
  }

  else
  {
    (*(v10 + 32))(v15, v8, v9);
    sub_188F21B08();
    (*(v10 + 16))(v12, v15, v9);
    type metadata accessor for AttributeScopes.UIKitAttributes(0);
    sub_188F219CC();
    v17 = sub_18A4A7AB8();
    [v4 *a2];

    sub_188F21AA0(a1);
    return (*(v10 + 8))(v15, v9);
  }
}

void (*UINavigationItem.largeAttributedSubtitle.modify(void *a1))(uint64_t a1, char a2)
{
  v2 = v1;
  *a1 = v1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935C40, &qword_18A64F470) - 8) + 64);
  if (MEMORY[0x1E69E7D08])
  {
    a1[1] = swift_coroFrameAlloc();
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    a1[1] = malloc(v4);
    v5 = malloc(v4);
  }

  v6 = v5;
  a1[2] = v5;
  if ([v2 largeAttributedSubtitle])
  {
    type metadata accessor for AttributeScopes.UIKitAttributes(0);
    sub_188F219CC();
    v7 = 0;
    sub_18A4A25C8();
  }

  else
  {
    v7 = 1;
  }

  v8 = sub_18A4A2588();
  (*(*(v8 - 8) + 56))(v6, v7, 1, v8);
  return sub_188F224E8;
}

id sub_188F22588(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = objc_opt_self();
  v5 = sub_18A4A7258();
  v6 = [v4 defaultNavigationItem:a1 shouldEndRenamingWithTitle:v5];

  return v6;
}

Swift::Bool __swiftcall UINavigationItemRenameDelegate.navigationItem(_:shouldEndRenamingWith:)(UINavigationItem *_, Swift::String shouldEndRenamingWith)
{
  v3 = objc_opt_self();
  v4 = sub_18A4A7258();
  v5 = [v3 defaultNavigationItem:_ shouldEndRenamingWithTitle:v4];

  return v5;
}

id sub_188F226C8(uint64_t a1)
{
  v2 = _s35_UINavigationItemSwiftRenameHandlerCMa();
  v5.receiver = v1;
  v5.super_class = v3;
  return objc_msgSendSuper2(&v5, sel_dealloc, v2);
}

void sub_188F2270C(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 _renameHandler];
  if (!v3)
  {
    goto LABEL_5;
  }

  v4 = v3;
  _s35_UINavigationItemSwiftRenameHandlerCMa();
  v5 = swift_dynamicCastClass();
  if (!v5)
  {

LABEL_5:
    Strong = 0;
    v8 = 0;
    goto LABEL_6;
  }

  v6 = v5 + OBJC_IVAR____TtCE5UIKitCSo16UINavigationItem35_UINavigationItemSwiftRenameHandler_delegate;
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);

LABEL_6:
  *a2 = Strong;
  a2[1] = v8;
}

void UINavigationItem.renameDelegate.setter(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    _s35_UINavigationItemSwiftRenameHandlerCMa();
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v5 = swift_allocObject();
    *(v5 + 24) = a2;
    swift_unknownObjectWeakInit();
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v31 = sub_188F23A5C;
    v32 = v6;
    v27 = MEMORY[0x1E69E9820];
    v28 = 1107296256;
    v29 = sub_188F22E58;
    v30 = &block_descriptor_28;
    v7 = _Block_copy(&v27);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    swift_unknownObjectRetain();

    v9 = [ObjCClassFromMetadata handlerWithDidEndRenamingHandler_];
    _Block_release(v7);

    v10 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v11 = swift_allocObject();
    *(v11 + 24) = a2;
    swift_unknownObjectWeakInit();
    v12 = swift_allocObject();
    *(v12 + 16) = v10;
    *(v12 + 24) = v11;
    v31 = sub_188F23A64;
    v32 = v12;
    v27 = MEMORY[0x1E69E9820];
    v28 = 1107296256;
    v29 = sub_188F23000;
    v30 = &block_descriptor_16_0;
    v13 = _Block_copy(&v27);
    v14 = v9;

    [v14 setShouldBeginRenamingHandler_];
    _Block_release(v13);
    v15 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v16 = swift_allocObject();
    *(v16 + 24) = a2;
    swift_unknownObjectWeakInit();
    v17 = swift_allocObject();
    *(v17 + 16) = v15;
    *(v17 + 24) = v16;
    v31 = sub_188F23A6C;
    v32 = v17;
    v27 = MEMORY[0x1E69E9820];
    v28 = 1107296256;
    v29 = sub_188F23238;
    v30 = &block_descriptor_24_0;
    v18 = _Block_copy(&v27);

    [v14 setWillBeginRenamingWithRangeHandler_];
    _Block_release(v18);
    v19 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v20 = swift_allocObject();
    *(v20 + 24) = a2;
    swift_unknownObjectWeakInit();
    v21 = swift_allocObject();
    *(v21 + 16) = v19;
    *(v21 + 24) = v20;
    v31 = sub_188F23A74;
    v32 = v21;
    v27 = MEMORY[0x1E69E9820];
    v28 = 1107296256;
    v29 = sub_188F2341C;
    v30 = &block_descriptor_32;
    v22 = _Block_copy(&v27);

    [v14 setShouldEndRenamingHandler_];
    _Block_release(v22);
    v23 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v24 = swift_allocObject();
    *(v24 + 24) = a2;
    swift_unknownObjectWeakInit();
    v25 = swift_allocObject();
    *(v25 + 16) = v23;
    *(v25 + 24) = v24;
    v31 = sub_188F23A7C;
    v32 = v25;
    v27 = MEMORY[0x1E69E9820];
    v28 = 1107296256;
    v29 = sub_188F23690;
    v30 = &block_descriptor_40_0;
    v26 = _Block_copy(&v27);

    [v14 setFileURLForRenaming_];
    _Block_release(v26);
    *&v14[OBJC_IVAR____TtCE5UIKitCSo16UINavigationItem35_UINavigationItemSwiftRenameHandler_delegate + 8] = a2;
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
    [v2 _setRenameHandler_];
    swift_unknownObjectRelease();
  }

  else
  {

    [v2 _setRenameHandler_];
  }
}

void sub_188F22D24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v9 = *(a4 + 24);
      ObjectType = swift_getObjectType();
      (*(v9 + 8))(v8, a1, a2, ObjectType, v9);

      swift_unknownObjectRelease();
      return;
    }
  }

  v11 = objc_opt_self();
  swift_beginAccess();
  v12 = swift_unknownObjectWeakLoadStrong();
  v13 = sub_18A4A7258();
  [v11 defaultNavigationItem:v12 didEndRenamingWithTitle:v13];
}

double sub_188F22E58(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = sub_18A4A7288();
  v5 = v4;

  v2(v3, v5);

  return result;
}

uint64_t sub_188F22EC4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v5 = *(a2 + 24);
      ObjectType = swift_getObjectType();
      v7 = (*(v5 + 16))(v4, ObjectType, v5);

      swift_unknownObjectRelease();
      return v7 & 1;
    }
  }

  swift_beginAccess();
  v8 = swift_unknownObjectWeakLoadStrong();
  swift_beginAccess();
  v9 = swift_unknownObjectWeakLoadStrong();
  if (v9)
  {
    swift_unknownObjectRelease();
  }

  v7 = [objc_opt_self() defaultNavigationItemShouldBeginRenaming:v8 forValidDelegate:v9 != 0];

  return v7 & 1;
}

uint64_t sub_188F23000(uint64_t a1)
{
  v1 = *(a1 + 32);

  LOBYTE(v1) = v1(v2);

  return v1 & 1;
}

uint64_t sub_188F23040(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_6;
  }

  v10 = Strong;
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {

LABEL_6:
    v20 = objc_opt_self();
    swift_beginAccess();
    v21 = swift_unknownObjectWeakLoadStrong();
    v22 = sub_18A4A7258();
    v23 = [v20 defaultNavigationItem:v21 willBeginRenamingWithSuggestedTitle:v22 selectedRange:a3];

    v18 = sub_18A4A7288();
    return v18;
  }

  v11 = *(a5 + 24);
  result = sub_18A4A7908();
  if ((v14 & 1) == 0)
  {
    v15 = result;
    v16 = v13;
    ObjectType = swift_getObjectType();
    v18 = (*(v11 + 24))(v10, a1, a2, v15, v16, ObjectType, v11);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936F60, &qword_18A651E00);
    sub_188F23AD4();
    sub_188C72980();
    *a3 = sub_18A4A7CC8();
    a3[1] = v19;

    swift_unknownObjectRelease();
    return v18;
  }

  __break(1u);
  return result;
}

id sub_188F23238(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = sub_18A4A7288();
  v7 = v6;

  v4(v5, v7, a3);

  v8 = sub_18A4A7258();

  return v8;
}

uint64_t sub_188F232DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_5;
  }

  v8 = Strong;
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {

LABEL_5:
    v12 = objc_opt_self();
    swift_beginAccess();
    v13 = swift_unknownObjectWeakLoadStrong();
    v14 = sub_18A4A7258();
    v11 = [v12 defaultNavigationItem:v13 shouldEndRenamingWithTitle:v14];

    return v11 & 1;
  }

  v9 = *(a4 + 24);
  ObjectType = swift_getObjectType();
  v11 = (*(v9 + 32))(v8, a1, a2, ObjectType, v9);

  swift_unknownObjectRelease();
  return v11 & 1;
}

uint64_t sub_188F2341C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = sub_18A4A7288();
  v5 = v4;

  LOBYTE(v3) = v2(v3, v5);

  return v3 & 1;
}

uint64_t sub_188F23484@<X0>(uint64_t a3@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93C760, &unk_18A650510);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v18 - v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_9;
  }

  v8 = Strong;
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {

    goto LABEL_9;
  }

  v18[1] = &unk_1EFF8BFE0;
  v9 = swift_dynamicCastObjCProtocolConditional();
  if (!v9 || (v10 = v9, ([v9 respondsToSelector_] & 1) == 0))
  {

    swift_unknownObjectRelease();
LABEL_9:
    v15 = sub_18A4A28E8();
    return (*(*(v15 - 8) + 56))(a3, 1, 1, v15);
  }

  v11 = v8;
  swift_unknownObjectRetain();
  v12 = [v10 _navigationItemFileURLForRenaming_];
  if (v12)
  {
    v13 = v12;
    sub_18A4A28D8();

    v14 = 0;
  }

  else
  {
    v14 = 1;
  }

  v17 = sub_18A4A28E8();
  (*(*(v17 - 8) + 56))(v6, v14, 1, v17);
  sub_188EC213C(v6, a3);

  return swift_unknownObjectRelease_n();
}

id sub_188F23690(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93C760, &unk_18A650510);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v13 - v3;
  v5 = *(a1 + 32);

  v5(v6);

  v7 = sub_18A4A28E8();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 48))(v4, 1, v7);
  v10 = 0;
  if (v9 != 1)
  {
    v11 = sub_18A4A28C8();
    (*(v8 + 8))(v4, v7);
    v10 = v11;
  }

  return v10;
}

void (*UINavigationItem.renameDelegate.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v3 = [v1 _renameHandler];
  if (!v3)
  {
    goto LABEL_5;
  }

  v4 = v3;
  _s35_UINavigationItemSwiftRenameHandlerCMa();
  v5 = swift_dynamicCastClass();
  if (!v5)
  {

LABEL_5:
    Strong = 0;
    v8 = 0;
    goto LABEL_6;
  }

  v6 = v5 + OBJC_IVAR____TtCE5UIKitCSo16UINavigationItem35_UINavigationItemSwiftRenameHandler_delegate;
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);

LABEL_6:
  *a1 = Strong;
  a1[1] = v8;
  return sub_188F23874;
}

void sub_188F23874(uint64_t *a1, char a2)
{
  v2 = a1[1];
  if (a2)
  {
    v3 = swift_unknownObjectRetain();
    UINavigationItem.renameDelegate.setter(v3, v2);

    swift_unknownObjectRelease();
  }

  else
  {
    UINavigationItem.renameDelegate.setter(*a1, v2);
  }
}

uint64_t _s5UIKit30UINavigationItemRenameDelegatePAAE010navigationC0_21willBeginRenamingWith13selectedRangeSS_SnySS5IndexVGtSo0bC0C_SSAItF_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13[2] = *MEMORY[0x1E69E9840];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936F60, &qword_18A651E00);
  sub_188F23AD4();
  sub_188C72980();
  v13[0] = sub_18A4A7CC8();
  v13[1] = v6;
  v7 = objc_opt_self();
  v8 = sub_18A4A7258();
  v9 = [v7 defaultNavigationItem:a1 willBeginRenamingWithSuggestedTitle:v8 selectedRange:v13];

  v10 = sub_18A4A7288();
  sub_18A4A7908();
  if (v11)
  {
    __break(1u);
  }

  return v10;
}

unint64_t sub_188F23AD4()
{
  result = qword_1EA936F68;
  if (!qword_1EA936F68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA936F60, &qword_18A651E00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA936F68);
  }

  return result;
}

Swift::Void __swiftcall UIHostingViewBase.transform3DDidChange(oldValue:)(CATransform3D *oldValue)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (sub_18A4A46F8())
    {
      [v3 transform3D];
      v4 = *&oldValue->m33;
      *&v8.m31 = *&oldValue->m31;
      *&v8.m33 = v4;
      v5 = *&oldValue->m43;
      *&v8.m41 = *&oldValue->m41;
      *&v8.m43 = v5;
      v6 = *&oldValue->m13;
      *&v8.m11 = *&oldValue->m11;
      *&v8.m13 = v6;
      v7 = *&oldValue->m23;
      *&v8.m21 = *&oldValue->m21;
      *&v8.m23 = v7;
      if (!CATransform3DEqualToTransform(&a, &v8))
      {
        swift_getObjectType();
        sub_18A4A5588();
        sub_18A4A58B8();
      }

      swift_unknownObjectRelease();
    }
  }
}

Swift::Void __swiftcall UIHostingViewBase.transformDidChange(oldValue:)(CGAffineTransform *oldValue)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    if (sub_18A4A46F8())
    {
      [v2 transform];
      if ((sub_18A4A7A08() & 1) == 0)
      {
        swift_getObjectType();
        sub_18A4A5588();
        sub_18A4A58B8();
      }

      swift_unknownObjectRelease();
    }
  }
}

Swift::Void __swiftcall UIHostingViewBase.clipsToBoundsDidChange(oldValue:)(Swift::Bool oldValue)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (sub_18A4A46F8())
    {
      if ([v3 clipsToBounds] != oldValue)
      {
        swift_getObjectType();
        sub_18A4A5588();
        sub_18A4A58B8();
      }

      swift_unknownObjectRelease();
    }
  }
}

Swift::Void __swiftcall UIHostingViewBase.tintColorDidChange()()
{
  if (sub_18A4A46F8())
  {
    swift_getObjectType();
    sub_18A4A5538();
    sub_18A4A58B8();

    swift_unknownObjectRelease();
  }
}

double UIHostingViewBase._geometryChanged(_:forAncestor:)()
{
  if (sub_18A4A46F8())
  {
    v2 = OBJC_IVAR____TtC5UIKit17UIHostingViewBase_registeredForGeometryChanges;
    swift_beginAccess();
    if (*(v0 + v2) == 1)
    {
      v3 = sub_18A4A5588();
      sub_18A4A5568();
      sub_18A4A5568();
      if (sub_18A4A5568() != v3)
      {
        sub_18A4A5568();
      }

      sub_18A4A6CD8();
      if (sub_18A4A53A8())
      {
        v4 = sub_18A4A5578();
        sub_18A4A5568();
        if (sub_18A4A5568() != v4)
        {
          sub_18A4A5568();
        }
      }

      swift_getObjectType();
      sub_18A4A58B8();
    }

    swift_unknownObjectRelease();
  }

  return result;
}

double UIHostingViewBase._baselineOffsets(at:)(double a1, double a2)
{
  if (!sub_18A4A46F8())
  {
    return 2.22507386e-308;
  }

  if (a1 == 0.0 && a2 == 0.0)
  {
    swift_getObjectType();
    sub_18A4A4E08();
    sub_18A4A5888();
  }

  swift_getObjectType();
  sub_18A4A5368();
  v4 = COERCE_DOUBLE(sub_18A4A58A8());
  v6 = v5;
  sub_18A4A5358();
  sub_18A4A58A8();
  if (v6)
  {
    v7 = 2.22507386e-308;
  }

  else
  {
    v7 = v4;
  }

  swift_unknownObjectRelease();
  return v7;
}

Swift::Void __swiftcall UIHostingViewBase._updateTransform()()
{
  v1 = v0;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if ((sub_18A4A47F8() & 1) != 0 || (v4 = OBJC_IVAR____TtC5UIKit17UIHostingViewBase_registeredForGeometryChanges, swift_beginAccess(), *(v1 + v4) != 1))
    {
    }

    else
    {
      [v3 _unregisterForGeometryChanges];

      *(v1 + v4) = 0;
    }
  }
}

Swift::Void __swiftcall UIHostingViewBase._updateSize()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong bounds];
    sub_18A4A4728();
  }
}

uint64_t (*UIHostingViewBase.uiView.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC5UIKit17UIHostingViewBase_uiView;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_188F2437C;
}

double UIHostingViewBase.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC5UIKit17UIHostingViewBase_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return result;
}

void (*UIHostingViewBase.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC5UIKit17UIHostingViewBase_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_188F2448C;
}

void sub_188F2448C(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t (*UIHostingViewBase.updateDelegate.modify(uint64_t *a1))()
{
  a1[2] = *(v1 + OBJC_IVAR____TtC5UIKit17UIHostingViewBase_viewGraph);
  *a1 = sub_18A4A46F8();
  a1[1] = v3;
  return sub_188F24568;
}

void sub_188F24568(void *a1, char a2)
{
  if (a2)
  {
    swift_unknownObjectRetain();
    sub_18A4A4708();

    swift_unknownObjectRelease();
  }

  else
  {
    sub_18A4A4708();
  }
}

uint64_t UIHostingViewBase.safeAreaRegions.getter()
{
  v1 = OBJC_IVAR____TtC5UIKit17UIHostingViewBase_safeAreaRegions;
  swift_beginAccess();
  return *(v0 + v1);
}

double sub_188F2461C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC5UIKit17UIHostingViewBase_safeAreaRegions;
  swift_beginAccess();
  if (*(v1 + v3) != a1)
  {
    sub_18A4A6CD8();
    if (sub_18A4A53A8())
    {
      v5 = *(v1 + v3);
      v6 = (sub_18A4A4D08() & ~v5) == 0;
    }

    else
    {
      v6 = 0;
    }

    if (((v6 ^ ((sub_18A4A4D08() & ~a1) != 0)) & 1) == 0)
    {
      if (v6)
      {
        Strong = 0;
      }

      else
      {
        swift_beginAccess();
        Strong = swift_unknownObjectWeakLoadStrong();
      }

      sub_188AFF7D0(Strong);
    }

    if (sub_18A4A46F8())
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9344B0, &qword_18A651E20);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_18A64BFA0;
      v9 = sub_18A4A5578();
      *(inited + 32) = v9;
      v10 = sub_18A4A5548();
      *(inited + 34) = v10;
      sub_18A4A5568();
      sub_18A4A5568();
      if (sub_18A4A5568() != v9)
      {
        sub_18A4A5568();
      }

      sub_18A4A5568();
      if (sub_18A4A5568() != v10)
      {
        sub_18A4A5568();
      }

      swift_getObjectType();
      sub_18A4A58B8();
      swift_unknownObjectRelease();
    }
  }

  return result;
}

void (*UIHostingViewBase.safeAreaRegions.modify(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC5UIKit17UIHostingViewBase_safeAreaRegions;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);
  return sub_188F2486C;
}

void sub_188F2486C(uint64_t a1)
{
  v1 = *a1;
  v3 = *(*a1 + 32);
  v2 = *(*a1 + 40);
  v4 = *(*a1 + 24);
  v5 = *(v3 + v2);
  *(v3 + v2) = v4;
  sub_188F2461C(v5);

  free(v1);
}

__n128 UIHostingViewBase.configuration.getter@<Q0>(__n128 *a1@<X8>)
{
  result = *(v1 + OBJC_IVAR____TtC5UIKit17UIHostingViewBase_configuration);
  *a1 = result;
  return result;
}

uint64_t sub_188F24918(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936FE0, &qword_18A651E28);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v9 - v6;
  sub_188A3F29C(a1, &v9 - v6, &qword_1EA936FE0, &qword_18A651E28);
  sub_188A3F29C(v7, v4, &qword_1EA936FE0, &qword_18A651E28);
  sub_18A4A4868();
  return sub_188A3F5FC(v7, &qword_1EA936FE0, &qword_18A651E28);
}

void (*UIHostingViewBase.initialInheritedEnvironment.modify(void **a1))(uint64_t a1, char a2)
{
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936FE0, &qword_18A651E28) - 8) + 64);
  if (MEMORY[0x1E69E7D08])
  {
    *a1 = swift_coroFrameAlloc();
    a1[1] = swift_coroFrameAlloc();
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    *a1 = malloc(v3);
    a1[1] = malloc(v3);
    v4 = malloc(v3);
  }

  v5 = *(v1 + OBJC_IVAR____TtC5UIKit17UIHostingViewBase_viewGraph);
  a1[2] = v4;
  a1[3] = v5;
  sub_18A4A4858();
  return sub_188F24AF8;
}

void sub_188F24AF8(uint64_t a1, char a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  sub_188A3F29C(v5, v4, &qword_1EA936FE0, &qword_18A651E28);
  v6 = *a1;
  if (a2)
  {
    sub_188A3F29C(v4, v6, &qword_1EA936FE0, &qword_18A651E28);
    sub_18A4A4868();
    sub_188A3F5FC(v4, &qword_1EA936FE0, &qword_18A651E28);
  }

  else
  {
    sub_18A4A4868();
  }

  sub_188A3F5FC(v5, &qword_1EA936FE0, &qword_18A651E28);
  free(v5);
  free(v4);

  free(v6);
}

uint64_t (*UIHostingViewBase.inheritedEnvironment.modify(uint64_t a1))()
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_188F27F0C;
}

uint64_t sub_188F24C4C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  swift_beginAccess();
  return sub_188A3F29C(v2 + v4, a2, &qword_1EA936FE0, &qword_18A651E28);
}

uint64_t sub_188F24CB0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936FE0, &qword_18A651E28);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v14 - v9;
  sub_188A3F29C(a1, &v14 - v9, &qword_1EA936FE0, &qword_18A651E28);
  v11 = *a2;
  v12 = *a5;
  swift_beginAccess();
  sub_188C11DE8(v10, v11 + v12);
  swift_endAccess();
  if (sub_18A4A46F8())
  {
    swift_getObjectType();
    sub_18A4A5538();
    sub_18A4A58B8();
    swift_unknownObjectRelease();
  }

  return sub_188A3F5FC(v10, &qword_1EA936FE0, &qword_18A651E28);
}

uint64_t (*UIHostingViewBase.environmentOverride.modify(uint64_t a1))()
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_188F24E44;
}

double sub_188F24E48(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0 && sub_18A4A46F8())
  {
    swift_getObjectType();
    sub_18A4A5538();
    sub_18A4A58B8();

    swift_unknownObjectRelease();
  }

  return result;
}

void *UIHostingViewBase.traitCollectionOverride.getter()
{
  v1 = OBJC_IVAR____TtC5UIKit17UIHostingViewBase_traitCollectionOverride;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_188F24F28(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC5UIKit17UIHostingViewBase_traitCollectionOverride;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
  sub_188F2505C(v5);
}

void UIHostingViewBase.traitCollectionOverride.setter(void *a1)
{
  v3 = OBJC_IVAR____TtC5UIKit17UIHostingViewBase_traitCollectionOverride;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  if (!v4)
  {
    if (!a1)
    {
      return;
    }

    goto LABEL_5;
  }

  if (v4 != a1)
  {
LABEL_5:
    v5 = a1;
    if (sub_18A4A46F8())
    {
      swift_getObjectType();
      sub_18A4A5538();
      sub_18A4A58B8();

      swift_unknownObjectRelease();
    }

    else
    {
    }

    a1 = v4;
  }
}

double sub_188F2505C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC5UIKit17UIHostingViewBase_traitCollectionOverride;
  swift_beginAccess();
  v5 = *(v1 + v3);
  if (!a1)
  {
    if (!v5)
    {
      return result;
    }

    goto LABEL_9;
  }

  if (v5)
  {
    v6 = v5 == a1;
  }

  else
  {
    v6 = 0;
  }

  if (!v6)
  {
LABEL_9:
    if (sub_18A4A46F8())
    {
      swift_getObjectType();
      sub_18A4A5538();
      sub_18A4A58B8();
      swift_unknownObjectRelease();
    }
  }

  return result;
}

void (*UIHostingViewBase.traitCollectionOverride.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC5UIKit17UIHostingViewBase_traitCollectionOverride;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  v6 = *(v1 + v5);
  *(v4 + 24) = v6;
  v7 = v6;
  return sub_188F251A0;
}

void sub_188F251A0(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = (*a1 + 24);
  v3 = *v4;
  v6 = *(*a1 + 32);
  v5 = *(*a1 + 40);
  v7 = *(v6 + v5);
  *(v6 + v5) = *v4;
  if ((a2 & 1) == 0)
  {
    if (v7)
    {
      if (v7 == v3)
      {
        goto LABEL_18;
      }
    }

    else if (!v3)
    {
      goto LABEL_19;
    }

    v9 = v3;
    if (sub_18A4A46F8())
    {
      swift_getObjectType();
      sub_18A4A5538();
      sub_18A4A58B8();
      swift_unknownObjectRelease();
    }

    v3 = v7;
    goto LABEL_18;
  }

  if (v7)
  {
    if (v7 == v3)
    {
      goto LABEL_17;
    }

LABEL_9:
    v8 = v3;
    if (sub_18A4A46F8())
    {
      swift_getObjectType();
      sub_18A4A5538();
      sub_18A4A58B8();
      swift_unknownObjectRelease();
    }

    goto LABEL_17;
  }

  if (v3)
  {
    goto LABEL_9;
  }

  v10 = 0;
LABEL_17:
  v3 = *v4;
LABEL_18:

LABEL_19:

  free(v2);
}

uint64_t UIHostingViewBase.canAdvanceTimeAutomatically.getter()
{
  v1 = OBJC_IVAR____TtC5UIKit17UIHostingViewBase_canAdvanceTimeAutomatically;
  swift_beginAccess();
  return *(v0 + v1);
}

void UIHostingViewBase.canAdvanceTimeAutomatically.setter(char a1)
{
  v3 = OBJC_IVAR____TtC5UIKit17UIHostingViewBase_canAdvanceTimeAutomatically;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t UIHostingViewBase.allowUIKitAnimationsForNextUpdate.getter()
{
  v1 = OBJC_IVAR____TtC5UIKit17UIHostingViewBase_allowUIKitAnimationsForNextUpdate;
  swift_beginAccess();
  return *(v0 + v1);
}

void UIHostingViewBase.allowUIKitAnimationsForNextUpdate.setter(char a1)
{
  v3 = OBJC_IVAR____TtC5UIKit17UIHostingViewBase_allowUIKitAnimationsForNextUpdate;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t UIHostingViewBase._updateFidelity.getter()
{
  v1 = OBJC_IVAR____TtC5UIKit17UIHostingViewBase__updateFidelity;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_188F25518(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC5UIKit17UIHostingViewBase__updateFidelity;
  swift_beginAccess();
  *(v3 + v4) = v2;
  if ((sub_18A4A4D48() & 1) == 0)
  {
    UIHostingViewBase.requestUpdateForFidelity()();
  }
}

void UIHostingViewBase._updateFidelity.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC5UIKit17UIHostingViewBase__updateFidelity;
  swift_beginAccess();
  *(v1 + v3) = a1;
  if ((sub_18A4A4D48() & 1) == 0)
  {
    UIHostingViewBase.requestUpdateForFidelity()();
  }
}

void (*UIHostingViewBase._updateFidelity.modify(uint64_t *a1))(uint64_t a1, __n128 a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC5UIKit17UIHostingViewBase__updateFidelity;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);
  return sub_188F25678;
}

void sub_188F25678(uint64_t a1, __n128 a2)
{
  v2 = *a1;
  *(*(*a1 + 32) + *(*a1 + 40)) = *(*a1 + 24);
  if ((sub_18A4A4D48() & 1) == 0)
  {
    UIHostingViewBase.requestUpdateForFidelity()();
  }

  free(v2);
}

Swift::Void __swiftcall UIHostingViewBase.updateRemovedState(uiView:)(UIView_optional *uiView)
{
  v2 = v1;
  if (uiView)
  {
    v3 = uiView;
  }

  else
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      return;
    }

    v3 = Strong;
    uiView = 0;
  }

  v5 = uiView;
  v6 = [(UIView_optional *)v3 window];
  if (v6)
  {
  }

  v7 = OBJC_IVAR____TtC5UIKit17UIHostingViewBase_isHiddenForReuse;
  swift_beginAccess();
  if (*(v2 + v7))
  {
    sub_18A4A4738();
  }

  sub_18A4A47E8();
}

uint64_t (*UIHostingViewBase.isHiddenForReuse.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC5UIKit17UIHostingViewBase_isHiddenForReuse;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_188F25848;
}

void sub_188F25848(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      v6 = [Strong window];
      if (v6)
      {
      }

      if (*(v3[3] + v3[4]) == 1)
      {
        sub_18A4A4738();
      }

      sub_18A4A47E8();
    }
  }

  free(v3);
}

uint64_t UIHostingViewBase.isEnteringForeground.getter()
{
  v1 = OBJC_IVAR____TtC5UIKit17UIHostingViewBase_isEnteringForeground;
  swift_beginAccess();
  return *(v0 + v1);
}

void UIHostingViewBase.isEnteringForeground.setter(char a1)
{
  v3 = OBJC_IVAR____TtC5UIKit17UIHostingViewBase_isEnteringForeground;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t UIHostingViewBase.isExitingForeground.getter()
{
  v1 = OBJC_IVAR____TtC5UIKit17UIHostingViewBase_isExitingForeground;
  swift_beginAccess();
  return *(v0 + v1);
}

void UIHostingViewBase.isExitingForeground.setter(char a1)
{
  v3 = OBJC_IVAR____TtC5UIKit17UIHostingViewBase_isExitingForeground;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t UIHostingViewBase.isCapturingSnapshots.getter()
{
  v1 = OBJC_IVAR____TtC5UIKit17UIHostingViewBase_isCapturingSnapshots;
  swift_beginAccess();
  return *(v0 + v1);
}

void UIHostingViewBase.isCapturingSnapshots.setter(char a1)
{
  v3 = OBJC_IVAR____TtC5UIKit17UIHostingViewBase_isCapturingSnapshots;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

void UIHostingViewBase.isRotatingWindow.setter(char a1)
{
  v3 = OBJC_IVAR____TtC5UIKit17UIHostingViewBase_isRotatingWindow;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t UIHostingViewBase.isResizingWindow.getter()
{
  v1 = OBJC_IVAR____TtC5UIKit17UIHostingViewBase_isResizingWindow;
  swift_beginAccess();
  return *(v0 + v1);
}

void UIHostingViewBase.isResizingWindow.setter(char a1)
{
  v3 = OBJC_IVAR____TtC5UIKit17UIHostingViewBase_isResizingWindow;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t UIHostingViewBase.sceneActivationState.setter(uint64_t result, char a2)
{
  v3 = v2 + OBJC_IVAR____TtC5UIKit17UIHostingViewBase__sceneActivationState;
  *v3 = result;
  *(v3 + 8) = a2 & 1;
  return result;
}

void (*UIHostingViewBase.sceneActivationState.modify(uint64_t *a1))(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v6 = Strong, v7 = [Strong window], v6, v8 = objc_msgSend(v7, sel__windowHostingScene), v7, v8))
  {

    v9 = *(v1 + OBJC_IVAR____TtC5UIKit17UIHostingViewBase__sceneActivationState);
    v10 = *(v1 + OBJC_IVAR____TtC5UIKit17UIHostingViewBase__sceneActivationState + 8);
  }

  else
  {
    v9 = 0;
    v10 = 1;
  }

  *(v4 + 24) = v9;
  *(v4 + 32) = v10;
  return sub_188F25ED8;
}

void sub_188F25ED8(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(v1 + 32);
  v3 = *(v1 + 40) + OBJC_IVAR____TtC5UIKit17UIHostingViewBase__sceneActivationState;
  *v3 = *(v1 + 24);
  *(v3 + 8) = v2;
  free(v1);
}

uint64_t UIHostingViewBase.registeredForGeometryChanges.getter()
{
  v1 = OBJC_IVAR____TtC5UIKit17UIHostingViewBase_registeredForGeometryChanges;
  swift_beginAccess();
  return *(v0 + v1);
}

void UIHostingViewBase.registeredForGeometryChanges.setter(char a1)
{
  v3 = OBJC_IVAR____TtC5UIKit17UIHostingViewBase_registeredForGeometryChanges;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t (*UIHostingViewBase.observedWindow.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC5UIKit17UIHostingViewBase_observedWindow;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_188F27F10;
}

void sub_188F260A4(id **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[3];
  swift_unknownObjectWeakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

id UIHostingViewBase.init(viewGraph:options:)(uint64_t a1, uint64_t *a2)
{
  ObjectType = swift_getObjectType();
  v6 = *a2;
  swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR____TtC5UIKit17UIHostingViewBase_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v7 = OBJC_IVAR____TtC5UIKit17UIHostingViewBase_safeAreaRegions;
  *&v2[v7] = sub_18A4A4CF8();
  v8 = OBJC_IVAR____TtC5UIKit17UIHostingViewBase_inheritedEnvironment;
  v9 = sub_18A4A5318();
  v10 = *(*(v9 - 8) + 56);
  v10(&v2[v8], 1, 1, v9);
  v10(&v2[OBJC_IVAR____TtC5UIKit17UIHostingViewBase_environmentOverride], 1, 1, v9);
  *&v2[OBJC_IVAR____TtC5UIKit17UIHostingViewBase_traitCollectionOverride] = 0;
  v11 = OBJC_IVAR____TtC5UIKit17UIHostingViewBase_cachedContainerShape;
  v12 = sub_18A4A5728();
  (*(*(v12 - 8) + 56))(&v2[v11], 1, 1, v12);
  v2[OBJC_IVAR____TtC5UIKit17UIHostingViewBase_canAdvanceTimeAutomatically] = 1;
  v2[OBJC_IVAR____TtC5UIKit17UIHostingViewBase_allowUIKitAnimationsForNextUpdate] = 0;
  sub_18A4A5C78();
  v2[OBJC_IVAR____TtC5UIKit17UIHostingViewBase_pendingPreferencesUpdate] = 0;
  v2[OBJC_IVAR____TtC5UIKit17UIHostingViewBase_pendingPostDisappearPreferencesUpdate] = 0;
  v13 = OBJC_IVAR____TtC5UIKit17UIHostingViewBase__updateFidelity;
  *&v2[v13] = sub_18A4A4D38();
  v2[OBJC_IVAR____TtC5UIKit17UIHostingViewBase_isHiddenForReuse] = 0;
  v2[OBJC_IVAR____TtC5UIKit17UIHostingViewBase_isEnteringForeground] = 0;
  v2[OBJC_IVAR____TtC5UIKit17UIHostingViewBase_isExitingForeground] = 0;
  v2[OBJC_IVAR____TtC5UIKit17UIHostingViewBase_isCapturingSnapshots] = 0;
  v2[OBJC_IVAR____TtC5UIKit17UIHostingViewBase_isRotatingWindow] = 0;
  v2[OBJC_IVAR____TtC5UIKit17UIHostingViewBase_isResizingWindow] = 0;
  v14 = &v2[OBJC_IVAR____TtC5UIKit17UIHostingViewBase__sceneActivationState];
  *v14 = 0;
  v14[8] = 1;
  v2[OBJC_IVAR____TtC5UIKit17UIHostingViewBase_registeredForGeometryChanges] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v15 = &v2[OBJC_IVAR____TtC5UIKit17UIHostingViewBase_keyboardFrame];
  *v15 = 0u;
  *(v15 + 1) = 0u;
  v15[32] = 1;
  v16 = &v2[OBJC_IVAR____TtC5UIKit17UIHostingViewBase_inactiveKeyboardFrame];
  *v16 = 0u;
  *(v16 + 1) = 0u;
  v16[32] = 1;
  *&v2[OBJC_IVAR____TtC5UIKit17UIHostingViewBase_keyboardSeed] = 0;
  *&v2[OBJC_IVAR____TtC5UIKit17UIHostingViewBase____lazy_storage___trackingElement] = 0;
  v2[OBJC_IVAR____TtC5UIKit17UIHostingViewBase_isUpdatingKeyboard] = 0;
  v20[0] = v6;
  v20[1] = 0;
  sub_188AFB738(v20);
  *&v2[OBJC_IVAR____TtC5UIKit17UIHostingViewBase_viewGraph] = a1;
  v17 = &v2[OBJC_IVAR____TtC5UIKit17UIHostingViewBase_configuration];
  *v17 = v6;
  v17[1] = 0;
  v19.receiver = v2;
  v19.super_class = ObjectType;
  return objc_msgSendSuper2(&v19, sel_init);
}

id UIHostingViewBase.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id UIHostingViewBase.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_188F2650C()
{
  result = sub_188F26530();
  byte_1EA930110 = result & 1;
  return result;
}

uint64_t sub_188F26530()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    v2 = sub_18A4A7288();
    v4 = v3;

    if (v2 == 0xD00000000000001BLL && 0x800000018A692E10 == v4)
    {
      LOBYTE(v1) = 1;
    }

    else
    {
      LOBYTE(v1) = sub_18A4A86C8();
    }
  }

  return v1 & 1;
}

void sub_188F26600(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    swift_beginAccess();
    v3 = swift_unknownObjectWeakLoadStrong();
    if (v3)
    {
      v4 = v3;
      v5 = [v4 window];
      if (v5)
      {
      }

      v6 = OBJC_IVAR____TtC5UIKit17UIHostingViewBase_isHiddenForReuse;
      swift_beginAccess();
      if (v2[v6] == 1)
      {
        sub_18A4A4738();
      }

      sub_18A4A47E8();
    }

    else
    {
      v4 = v2;
    }
  }
}

Swift::Void __swiftcall UIHostingViewBase.__boundingPathMayHaveChanged(for:relativeToBoundsOriginOnly:)(UIView_optional *a1, Swift::Bool relativeToBoundsOriginOnly)
{
  if (sub_18A4A46F8())
  {
    v3 = OBJC_IVAR____TtC5UIKit17UIHostingViewBase_registeredForGeometryChanges;
    swift_beginAccess();
    if (*(v2 + v3) == 1)
    {
      swift_getObjectType();
      sub_18A4A5588();
      sub_18A4A58B8();
    }

    swift_unknownObjectRelease();
  }
}

uint64_t UIHostingViewBase.updateGraphInputs(_:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935D48, &qword_18A651E60);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v20 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v20 - v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v20 - v7;
  v9 = sub_18A4A4908();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    (*(v10 + 56))(v8, 1, 1, v9);
    goto LABEL_6;
  }

  v14 = Strong;
  v15 = [Strong traitCollection];
  v16 = [v15 userInterfaceIdiom];

  ViewGraphHost.Idiom.init(_uiIdiom:)(v16, v8);
  v17 = *(v10 + 48);
  if (v17(v8, 1, v9) == 1)
  {
LABEL_6:
    v19 = v8;
    return sub_188A3F5FC(v19, &qword_1EA935D48, &qword_18A651E60);
  }

  (*(v10 + 32))(v12, v8, v9);
  sub_18A4A45C8();
  if (v17(v5, 1, v9) == 1)
  {
    sub_188A3F5FC(v5, &qword_1EA935D48, &qword_18A651E60);
    (*(v10 + 16))(v2, v12, v9);
    (*(v10 + 56))(v2, 0, 1, v9);
    sub_18A4A45D8();
    return (*(v10 + 8))(v12, v9);
  }

  (*(v10 + 8))(v12, v9);
  v19 = v5;
  return sub_188A3F5FC(v19, &qword_1EA935D48, &qword_18A651E60);
}

Swift::Void __swiftcall UIHostingViewBase.startDisplayLink(delay:)(Swift::Double delay)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    MEMORY[0x1EEE9AC00](Strong);
    v3 = v2;
    sub_18A4A4768();
  }
}

void *sub_188F26BC4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA937038, &unk_18A6521E0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v15[-v2];
  v4 = type metadata accessor for _GlassBackgroundStyle(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;
    v10 = OBJC_IVAR____TtC5UIKit17UIHostingViewBase_traitCollectionOverride;
    swift_beginAccess();
    v11 = *(v0 + v10);
    if (v11)
    {
      v12 = *(v0 + v10);
    }

    else
    {
      v12 = [v9 traitCollection];
      v11 = 0;
    }

    v13 = v11;
    v14 = [(UIView *)v9 _typedStorage];
    sub_188A61B4C(v3);

    if ((*(v5 + 48))(v3, 1, v4) == 1)
    {

      return sub_188A3F5FC(v3, &qword_1EA937038, &unk_18A6521E0);
    }

    else
    {
      sub_188F27E98(v3, v7, type metadata accessor for _GlassBackgroundStyle);
      sub_188EB4730(v7, v12);

      return sub_188AD77B4(v7);
    }
  }

  return result;
}

id UIHostingViewBase.renderingRootView.getter()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return [objc_allocWithZone(UIView) init];
  }

  return result;
}

void UIHostingViewBase.rootContainerShape()(void *a1@<X8>)
{
  v4 = sub_18A4A5728();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936FF0, &qword_18A651E38);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v30 - v12;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    v16 = OBJC_IVAR____TtC5UIKit17UIHostingViewBase_cachedContainerShape;
    swift_beginAccess();
    sub_188A3F29C(v2 + v16, v13, &qword_1EA936FF0, &qword_18A651E38);
    if ((*(v5 + 48))(v13, 1, v4) == 1)
    {
      sub_188A3F5FC(v13, &qword_1EA936FF0, &qword_18A651E38);
      v17 = v15;
      sub_188AF11B0(v17, [v17 traitCollection], v7);
      v18 = _UIViewMaskingConfigurationSPIEnabled();

      if (v18)
      {
        sub_188F27A90(v7, v10, v19);
        (*(v5 + 56))(v10, 0, 1, v4);
        swift_beginAccess();
        sub_188F27A20(v10, v2 + v16);
        swift_endAccess();
      }

      v20 = MEMORY[0x1E697FF20];
      v21 = v7;
    }

    else
    {

      v20 = MEMORY[0x1E697FF20];
      v21 = v13;
    }

    sub_188F27E98(v21, a1, v20);
  }

  else
  {
    (*(v5 + 56))(v10, 1, 1, v4);
    v22 = OBJC_IVAR____TtC5UIKit17UIHostingViewBase_cachedContainerShape;
    swift_beginAccess();
    sub_188F27A20(v10, v2 + v22);
    swift_endAccess();
    v23 = *(v4 + 20);
    v24 = *MEMORY[0x1E697F468];
    v25 = sub_18A4A53E8();
    (*(*(v25 - 8) + 104))(a1 + v23, v24, v25);
    sub_18A4A55A8();
    *a1 = v26;
    a1[1] = v27;
    a1[2] = v28;
    a1[3] = v29;
  }
}

Swift::Void __swiftcall UIHostingViewBase.updateTransformWithoutGeometryObservation()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = OBJC_IVAR____TtC5UIKit17UIHostingViewBase_registeredForGeometryChanges;
    swift_beginAccess();
    v4 = *(v0 + v3);
    v5 = swift_unknownObjectWeakLoadStrong();
    if (v5)
    {
      v6 = v5;
      if ((sub_18A4A47F8() & 1) != 0 || (*(v0 + v3) & 1) == 0)
      {

        if (v4)
        {
LABEL_11:

          return;
        }

LABEL_9:
        if (*(v0 + v3) == 1)
        {
          [v2 _unregisterForGeometryChanges];

          *(v0 + v3) = 0;
          return;
        }

        goto LABEL_11;
      }

      [v6 _unregisterForGeometryChanges];

      *(v0 + v3) = 0;
    }

    if (v4)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }
}

double sub_188F27364(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = sub_18A4A4808() & 1;
  sub_18A4A4818();
  if (v1 != v2 && sub_18A4A46F8())
  {
    swift_getObjectType();
    sub_18A4A5538();
    sub_18A4A58B8();

    swift_unknownObjectRelease();
  }

  return result;
}

double UIHostingViewBase.accessibilityEnabled.setter(uint64_t a1)
{
  v1 = a1 & 1;
  v2 = sub_18A4A4808() & 1;
  sub_18A4A4818();
  if (v2 != v1 && sub_18A4A46F8())
  {
    swift_getObjectType();
    sub_18A4A5538();
    sub_18A4A58B8();

    swift_unknownObjectRelease();
  }

  return result;
}

double (*UIHostingViewBase.accessibilityEnabled.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = *(v1 + OBJC_IVAR____TtC5UIKit17UIHostingViewBase_viewGraph);
  *(a1 + 8) = sub_18A4A4808() & 1;
  return sub_188F274FC;
}

double sub_188F274FC(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = sub_18A4A4808();
  sub_18A4A4818();
  if (((v1 ^ v2) & 1) != 0 && sub_18A4A46F8())
  {
    swift_getObjectType();
    sub_18A4A5538();
    sub_18A4A58B8();

    swift_unknownObjectRelease();
  }

  return result;
}

void sub_188F275A4(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = sub_18A4A2458();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18A4A2418();
  v10 = *(v7 + 8);
  v11 = a1;
  v10(v9, v6);
  v12 = OBJC_IVAR____TtC5UIKit17UIHostingViewBase_isRotatingWindow;
  swift_beginAccess();
  v11[v12] = a4;
}

uint64_t sub_188F27A20(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936FF0, &qword_18A651E38);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_188F27A90(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = sub_18A4A5728();
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_188F27AF8()
{
  result = qword_1EA937028;
  if (!qword_1EA937028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA937028);
  }

  return result;
}

unint64_t sub_188F27B50()
{
  result = qword_1EA937030;
  if (!qword_1EA937030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA937030);
  }

  return result;
}

uint64_t keypath_get_40Tm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  return sub_188A3F29C(v4 + v5, a3, &qword_1EA936FE0, &qword_18A651E28);
}

void keypath_get_36Tm(uint64_t *a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  *a3 = *(v4 + v5);
}

uint64_t keypath_getTm@<X0>(uint64_t *a3@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a3 = result;
  return result;
}

double keypath_setTm(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return result;
}

void sub_188F27D58(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_18A4A7D38();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for UIHostingViewBase.Configuration(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_188F27E98(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_188F27F58(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (*(a1 + 8))
  {
    sub_188A3F5FC(a1, &qword_1EA937060, &unk_18A6522F0);
    v5 = sub_188A403F4(a2);
    v7 = v6;
    if (v6)
    {
      v8 = v5;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v10 = *v2;
      v13 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_188FA080C();
        v10 = v13;
      }

      sub_188A3F704(*(v10 + 56) + 8 * v8, &v15, &qword_1EA936E70, &unk_18A64E880);
      sub_188F9C63C(v8, v10);
      *v3 = v10;
    }

    else
    {
      v15 = 0;
    }

    v16 = (v7 & 1) == 0;
    return sub_188A3F5FC(&v15, &qword_1EA937060, &unk_18A6522F0);
  }

  else
  {
    sub_188A3F704(a1, &v15, &qword_1EA936E70, &unk_18A64E880);
    v11 = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    result = sub_188E9D94C(&v15, a2, v11);
    *v2 = v14;
  }

  return result;
}

uint64_t sub_188F28088(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA937050, &unk_18A6522D0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v21 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA935770, &qword_18A64F2D0);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v21 - v12;
  if ((*(v10 + 48))(a1, 1, v9, v11) == 1)
  {
    sub_188A3F5FC(a1, &qword_1EA937050, &unk_18A6522D0);
    v14 = sub_188A86B54(a2);
    if (v15)
    {
      v16 = v14;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v18 = *v3;
      v22 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_188FA0830();
        v18 = v22;
      }

      sub_188A3F704(*(v18 + 56) + *(v10 + 72) * v16, v8, &unk_1EA935770, &qword_18A64F2D0);
      sub_188F9C650(v16, v18);
      *v3 = v18;
      (*(v10 + 56))(v8, 0, 1, v9);
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    return sub_188A3F5FC(v8, &qword_1EA937050, &unk_18A6522D0);
  }

  else
  {
    sub_188A3F704(a1, v13, &unk_1EA935770, &qword_18A64F2D0);
    v19 = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    result = sub_188E9DA70(v13, a2, v19);
    *v3 = v22;
  }

  return result;
}

uint64_t sub_188F282DC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v2;
    sub_188E9DF9C(a1, a2, isUniquelyReferenced_nonNull_native);
    result = sub_188C4680C(a2);
    *v2 = v13;
  }

  else
  {
    v8 = sub_188C46540(a2);
    if (v9)
    {
      v10 = v8;
      v11 = swift_isUniquelyReferenced_nonNull_native();
      v12 = *v2;
      v14 = *v3;
      if (!v11)
      {
        sub_188FA0EE8();
        v12 = v14;
      }

      sub_188C4680C(*(v12 + 48) + 48 * v10);

      sub_188C4D458();
      result = sub_188C4680C(a2);
      *v3 = v12;
    }

    else
    {

      return sub_188C4680C(a2);
    }
  }

  return result;
}

void sub_188F283E4(uint64_t a1, void *a2)
{
  if (*(a1 + 24))
  {
    v4 = *(a1 + 16);
    v7[0] = *a1;
    v7[1] = v4;
    v8 = *(a1 + 32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *v2;
    sub_188E9E140(v7, a2, isUniquelyReferenced_nonNull_native);

    *v2 = v6;
  }

  else
  {
    sub_188A3F5FC(a1, &qword_1EA934740, &qword_18A64C660);
    sub_1891E9650(a2, v7);

    sub_188A3F5FC(v7, &qword_1EA934740, &qword_18A64C660);
  }
}

void sub_188F284A0(uint64_t a1, void *a2)
{
  if (*(a1 + 24))
  {
    v4 = *(a1 + 16);
    v7[0] = *a1;
    v7[1] = v4;
    v8 = *(a1 + 32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *v2;
    sub_188E9E654(v7, a2, isUniquelyReferenced_nonNull_native);

    *v2 = v6;
  }

  else
  {
    sub_188A3F5FC(a1, &unk_1EA937A80, &unk_18A650500);
    sub_1891E9700(a2, v7);

    sub_188A3F5FC(v7, &unk_1EA937A80, &unk_18A650500);
  }
}

void sub_188F2855C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v3;
    sub_188E9E78C(a1, a2, a3, isUniquelyReferenced_nonNull_native);
    *v3 = v14;
  }

  else
  {
    v9 = sub_188E8B838(a2, a3);
    if (v10)
    {
      v11 = v9;
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v3;
      v15 = *v4;
      if (!v12)
      {
        sub_188FA1F34();
        v13 = v15;
      }

      sub_188F9D40C(v11, v13);
      *v4 = v13;
    }
  }
}

uint64_t sub_188F28630(void *a1, uint64_t a2)
{
  v3 = v2;
  if (*a1)
  {
    v5 = 0;
  }

  else
  {
    v5 = a1[1] == 1;
  }

  if (v5)
  {
    sub_188A3F5FC(a1, &qword_1EA9352B8, &qword_18A64F0C8);
    v8 = sub_188A403F4(a2);
    if (v9)
    {
      v10 = v8;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v12 = *v2;
      v14 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_188FA2094();
        v12 = v14;
      }

      sub_188E8FC60(*(v12 + 56) + 16 * v10, &v15);
      sub_188F9D5A4(v10, v12);
      *v3 = v12;
    }

    else
    {
      v15 = xmmword_18A64C520;
    }

    return sub_188A3F5FC(&v15, &qword_1EA9352B8, &qword_18A64F0C8);
  }

  else
  {
    sub_188E8FC60(a1, &v15);
    v6 = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v2;
    result = sub_188E9E8CC(&v15, a2, v6);
    *v2 = v13;
  }

  return result;
}

uint64_t sub_188F28740(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_188A5EBAC(a1, v7);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *v2;
    sub_188E9EE24(v7, a2, isUniquelyReferenced_nonNull_native);
    result = sub_188F29FEC(a2, type metadata accessor for UITextEffectView.EffectID);
    *v2 = v6;
  }

  else
  {
    sub_188A3F5FC(a1, &qword_1EA936EA0, &unk_18A651A50);
    sub_1891E9960(a2, v7);
    sub_188F29FEC(a2, type metadata accessor for UITextEffectView.EffectID);
    return sub_188A3F5FC(v7, &qword_1EA936EA0, &unk_18A651A50);
  }

  return result;
}

void sub_188F28824(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v2;
    sub_188E9F2D8(a1, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v10;
  }

  else
  {
    sub_188C4585C(a2);
    if (v7)
    {
      v8 = swift_isUniquelyReferenced_nonNull_native();
      v9 = *v2;
      v11 = *v3;
      if (!v8)
      {
        sub_188FA39F4();
        v9 = v11;
      }

      sub_188FA9CDC();
      *v3 = v9;
    }
  }
}

uint64_t sub_188F288E4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (*(a1 + 8))
  {
    sub_188A3F5FC(a1, &qword_1EA9377A0, &unk_18A652310);
    v5 = sub_188A403F4(a2);
    v7 = v6;
    if (v6)
    {
      v8 = v5;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v10 = *v2;
      v13 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_188FA3E00();
        v10 = v13;
      }

      sub_188E904EC(*(v10 + 56) + 8 * v8, &v15);
      sub_188F9DDC8(v8, v10);
      *v3 = v10;
    }

    else
    {
      v15 = 0;
    }

    v16 = (v7 & 1) == 0;
    return sub_188A3F5FC(&v15, &qword_1EA9377A0, &unk_18A652310);
  }

  else
  {
    sub_188E904EC(a1, &v15);
    v11 = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    result = sub_188E9F43C(&v15, a2, v11);
    *v2 = v14;
  }

  return result;
}

_OWORD *sub_188F289F4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (*(a1 + 24))
  {
    sub_188A55538(a1, v14);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    result = sub_188E9F93C(v14, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
  }

  else
  {
    sub_188A3F5FC(a1, &qword_1EA934050, qword_18A64CA10);
    v7 = sub_188A403F4(a2);
    if (v8)
    {
      v9 = v7;
      v10 = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v2;
      v13 = *v3;
      if (!v10)
      {
        sub_188FA45C8();
        v11 = v13;
      }

      sub_188A55538((*(v11 + 56) + 32 * v9), v14);
      sub_188F9E27C(v9, v11);
      *v3 = v11;
    }

    else
    {
      memset(v14, 0, sizeof(v14));
    }

    return sub_188A3F5FC(v14, &qword_1EA934050, qword_18A64CA10);
  }

  return result;
}

void sub_188F28AF8(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v3;
    sub_188E9FBA0(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v14;
  }

  else
  {
    v8 = sub_188E8B480(a2, a3);
    if (v9)
    {
      v10 = v8;
      v11 = swift_isUniquelyReferenced_nonNull_native();
      v12 = *v3;
      v15 = *v4;
      if (!v11)
      {
        sub_188FA48D0();
        v12 = v15;
      }

      sub_188F9E3EC(v10, v12);
      *v4 = v12;
    }

    else
    {
    }
  }
}

uint64_t sub_188F28C0C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (*(a1 + 24))
  {
    sub_188A5EBAC(a1, v14);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    result = sub_188E9FE18(v14, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
  }

  else
  {
    sub_188A3F5FC(a1, &qword_1EA937068, &qword_18A652300);
    v7 = sub_188C4585C(a2);
    if (v8)
    {
      v9 = v7;
      v10 = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v2;
      v13 = *v3;
      if (!v10)
      {
        sub_188FA4BA8();
        v11 = v13;
      }

      sub_188A5EBAC((*(v11 + 56) + 40 * v9), v14);
      sub_188F9E100(v9, v11);
      *v3 = v11;
    }

    else
    {
      v15 = 0;
      memset(v14, 0, sizeof(v14));
    }

    return sub_188A3F5FC(v14, &qword_1EA937068, &qword_18A652300);
  }

  return result;
}

uint64_t sub_188F28D18(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (*(a1 + 24))
  {
    sub_188F166A0(a1, v14);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    result = sub_188EA018C(v14, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
  }

  else
  {
    sub_188A3F5FC(a1, &qword_1EA939C50, &qword_18A65C640);
    v7 = sub_188A403F4(a2);
    if (v8)
    {
      v9 = v7;
      v10 = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v2;
      v13 = *v3;
      if (!v10)
      {
        sub_188FA5400();
        v11 = v13;
      }

      sub_188F166A0(*(v11 + 56) + 32 * v9, v14);
      sub_188F9E7DC(v9, v11);
      *v3 = v11;
    }

    else
    {
      memset(v14, 0, sizeof(v14));
    }

    return sub_188A3F5FC(v14, &qword_1EA939C50, &qword_18A65C640);
  }

  return result;
}

uint64_t sub_188F28E1C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (*(a1 + 32))
  {
    result = sub_188A403F4(a2);
    if (v6)
    {
      v7 = result;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v9 = *v2;
      v15 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_188FA55B8();
        v9 = v15;
      }

      result = sub_188F9E27C(v7, v9);
      *v3 = v9;
    }
  }

  else
  {
    v11 = *(a1 + 16);
    v10 = *(a1 + 24);
    v13 = *a1;
    v12 = *(a1 + 8);
    v14 = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v2;
    result = sub_188EA0454(a2, v14, v13, v12, v11, v10);
    *v2 = v16;
  }

  return result;
}

uint64_t sub_188F28EF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93E6C0, &qword_18A6509D0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v23 - v9;
  v11 = type metadata accessor for UITextEffectView.EffectID(0);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v12 + 48))(a1, 1, v11, v13) == 1)
  {
    sub_188A3F5FC(a1, &qword_1EA93E6C0, &qword_18A6509D0);
    v16 = sub_188E8BC0C(a2, a3);
    if (v17)
    {
      v18 = v16;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v20 = *v4;
      v24 = *v4;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_188FA5724();
        v20 = v24;
      }

      sub_188F29F84(*(v20 + 56) + *(v12 + 72) * v18, v10, type metadata accessor for UITextEffectView.EffectID);
      sub_188F9EADC(v18, v20);
      *v4 = v20;
      (*(v12 + 56))(v10, 0, 1, v11);
    }

    else
    {
      (*(v12 + 56))(v10, 1, 1, v11);
    }

    return sub_188A3F5FC(v10, &qword_1EA93E6C0, &qword_18A6509D0);
  }

  else
  {
    sub_188F29F84(a1, v15, type metadata accessor for UITextEffectView.EffectID);
    v21 = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v4;
    result = sub_188EA0908(v15, a2, a3, v21);
    *v4 = v24;
  }

  return result;
}

uint64_t sub_188F29154(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    sub_188EA0A6C(a1, a2, isUniquelyReferenced_nonNull_native);
    result = sub_188F29FEC(a2, _s8CacheKeyVMa);
    *v2 = v15;
  }

  else
  {
    v8 = sub_188E8BC8C(a2);
    if (v9)
    {
      v10 = v8;
      v11 = swift_isUniquelyReferenced_nonNull_native();
      v12 = *v2;
      v16 = *v3;
      if (!v11)
      {
        sub_188FA5EEC();
        v12 = v16;
      }

      v13 = *(v12 + 48);
      v14 = _s8CacheKeyVMa(0);
      sub_188F29FEC(v13 + *(*(v14 - 8) + 72) * v10, _s8CacheKeyVMa);

      sub_188F9ECBC(v10, v12);
      result = sub_188F29FEC(a2, _s8CacheKeyVMa);
      *v3 = v12;
    }

    else
    {
      return sub_188F29FEC(a2, _s8CacheKeyVMa);
    }
  }

  return result;
}

uint64_t sub_188F292A4(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 64) == 255)
  {
    sub_188A3F5FC(a1, &qword_1EA937080, &unk_18A652320);
    sub_1891E9F20(a2, v9);
    sub_188F29FEC(a2, type metadata accessor for IntelligenceUI.PromptAmbiguityID);
    return sub_188A3F5FC(v9, &qword_1EA937080, &unk_18A652320);
  }

  else
  {
    v4 = *(a1 + 48);
    v9[2] = *(a1 + 32);
    v9[3] = v4;
    v10 = *(a1 + 64);
    v5 = *(a1 + 16);
    v9[0] = *a1;
    v9[1] = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v2;
    sub_188EA10A0(v9, a2, isUniquelyReferenced_nonNull_native);
    result = sub_188F29FEC(a2, type metadata accessor for IntelligenceUI.PromptAmbiguityID);
    *v2 = v8;
  }

  return result;
}

uint64_t sub_188F2939C(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA937078, &unk_18A66AFC0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v15 - v6;
  v8 = type metadata accessor for IntelligenceUI.PromptEntryView.AmbiguityAppearanceConfiguration(0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v12 + 48))(a1, 1, v9) == 1)
  {
    sub_188A3F5FC(a1, &qword_1EA937078, &unk_18A66AFC0);
    sub_1891EA018(a2, v7);
    sub_188F29FEC(a2, type metadata accessor for IntelligenceUI.PromptAmbiguityID);
    return sub_188A3F5FC(v7, &qword_1EA937078, &unk_18A66AFC0);
  }

  else
  {
    sub_188F29F84(a1, v11, type metadata accessor for IntelligenceUI.PromptEntryView.AmbiguityAppearanceConfiguration);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v2;
    sub_188EA1550(v11, a2, isUniquelyReferenced_nonNull_native);
    result = sub_188F29FEC(a2, type metadata accessor for IntelligenceUI.PromptAmbiguityID);
    *v2 = v16;
  }

  return result;
}

void sub_188F29584(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v4;
    sub_188EA16FC(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);

    *v4 = v18;
  }

  else
  {
    v11 = sub_188B0944C(a3, a4);
    v13 = v12;

    if (v13)
    {
      v14 = swift_isUniquelyReferenced_nonNull_native();
      v15 = *v5;
      v19 = *v5;
      if (!v14)
      {
        sub_188FA7B88();
        v15 = v19;
      }

      v16 = *(v15 + 56) + 16 * v11;
      v17 = *v16;

      sub_188F9F628(v11, v15);
      *v5 = v15;
    }
  }
}

void sub_188F29690(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  if (a2)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v5;
    sub_188EA1864(a1, a2, a3, a4, a5, isUniquelyReferenced_nonNull_native);
    *v5 = v21;
  }

  else
  {
    v13 = sub_188B85570(a5);
    if (v14)
    {
      v15 = v13;
      v16 = swift_isUniquelyReferenced_nonNull_native();
      v17 = *v5;
      v22 = *v6;
      if (!v16)
      {
        sub_188FA7F80();
        v17 = v22;
      }

      v18 = *(v17 + 56) + 32 * v15;
      v19 = *(v18 + 8);
      v20 = *(v18 + 16);

      sub_188F9F7D8(v15, v17);
      *v6 = v17;
    }
  }
}

double sub_188F29788(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v29 - v12;
  swift_beginAccess();
  v14 = *(v3 + 16);
  if (*(v14 + 16) && (v15 = sub_188E8B838(a2, a3), (v16 & 1) != 0))
  {
    v17 = *(*(v14 + 56) + 8 * v15);
    v18 = a1;
    v19 = *(v8 + 16);
    v19(v13, v18, a2);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v30 = v17;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v17 = sub_188E4B7D0(0, v17[2] + 1, 1, v17);
      v30 = v17;
    }

    v22 = v17[2];
    v21 = v17[3];
    if (v22 >= v21 >> 1)
    {
      v17 = sub_188E4B7D0((v21 > 1), v22 + 1, 1, v17);
      v30 = v17;
    }

    v19(v10, v13, a2);
    sub_188F29E00(v22, v10, &v30, a2, a3);
    (*(v8 + 8))(v13, a2);
    swift_beginAccess();
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v29 = *(v4 + 16);
    *(v4 + 16) = 0x8000000000000000;
    sub_188E9E78C(v17, a2, a3, v23);
    v24 = v29;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934440, &qword_18A6521F0);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_18A64BFB0;
    *(v25 + 56) = a2;
    *(v25 + 64) = a3;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v25 + 32));
    (*(v8 + 16))(boxed_opaque_existential_0, a1, a2);
    swift_beginAccess();
    v27 = swift_isUniquelyReferenced_nonNull_native();
    v30 = *(v4 + 16);
    *(v4 + 16) = 0x8000000000000000;
    sub_188E9E78C(v25, a2, a3, v27);
    v24 = v30;
  }

  *(v4 + 16) = v24;
  swift_endAccess();
  return result;
}

void sub_188F29A68(uint64_t a1, uint64_t (*a2)(char *, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  swift_beginAccess();
  v9 = *(v5 + 16);
  if (!*(v9 + 16) || (v10 = sub_188E8B838(a4, a5), (v11 & 1) == 0))
  {
    v16 = 0;
LABEL_17:
    swift_beginAccess();
    sub_188F2855C(v16, a4, a5);
    swift_endAccess();
    return;
  }

  v12 = *(*(v9 + 56) + 8 * v10);
  v13 = *(v12 + 16);

  if (!v13)
  {
    v16 = MEMORY[0x1E69E7CC0];
LABEL_16:

    goto LABEL_17;
  }

  v14 = 0;
  v15 = v12 + 32;
  v16 = MEMORY[0x1E69E7CC0];
  v22 = a4;
  v23 = a5;
  v17 = a3;
  while (v14 < *(v12 + 16))
  {
    sub_188A53994(v15, v26);
    if (sub_188F29C7C(v26, a2, v17, v6, a4))
    {
      sub_188A5EBAC(v26, v25);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v27 = v16;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_188E6D19C(0, *(v16 + 16) + 1, 1);
        v17 = a3;
        v16 = v27;
      }

      v20 = *(v16 + 16);
      v19 = *(v16 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_188E6D19C((v19 > 1), v20 + 1, 1);
        v17 = a3;
        v16 = v27;
      }

      *(v16 + 16) = v20 + 1;
      sub_188A5EBAC(v25, v16 + 40 * v20 + 32);
      a4 = v22;
      a5 = v23;
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_0Tm(v26);
    }

    ++v14;
    v15 += 40;
    if (v13 == v14)
    {
      goto LABEL_16;
    }
  }

  __break(1u);

  __swift_destroy_boxed_opaque_existential_0Tm(v26);

  __break(1u);
}

BOOL sub_188F29C7C(uint64_t a1, uint64_t (*a2)(char *, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v14[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_188A53994(v11, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934448, &qword_18A64D4F0);
  swift_dynamicCast();
  LOBYTE(a4) = a2(v10, a4);
  (*(v8 + 8))(v10, a5);
  return (a4 & 1) == 0;
}

uint64_t UITransitionComponentResponseContext.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_188F29E00(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_0, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_188A5EBAC(&v12, v10 + 40 * a1 + 32);
}

unint64_t sub_188F29F30()
{
  result = qword_1EA937040;
  if (!qword_1EA937040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA937040);
  }

  return result;
}

uint64_t sub_188F29F84(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_188F29FEC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

char *sub_188F2A05C(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC5UIKit30_UIMorphAnimationContainerView_kickView;
  type metadata accessor for _UIMorphAnimationContainerView.TransformView();
  *&v4[v9] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v10 = &v4[OBJC_IVAR____TtC5UIKit30_UIMorphAnimationContainerView_name];
  type metadata accessor for _UIMorphAnimationContainerView();
  *v10 = 0;
  *(v10 + 1) = 0;
  v18.receiver = v4;
  v18.super_class = v11;
  v12 = objc_msgSendSuper2(&v18, sel_initWithFrame_, a1, a2, a3, a4);
  v13 = OBJC_IVAR____TtC5UIKit30_UIMorphAnimationContainerView_kickView;
  v14 = *&v12[OBJC_IVAR____TtC5UIKit30_UIMorphAnimationContainerView_kickView];
  v15 = v12;
  v16 = v14;
  [v15 bounds];
  [v16 setFrame_];

  [*&v12[v13] setAutoresizingMask_];
  [v15 addSubview_];

  return v15;
}

id sub_188F2A49C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_188F2A56C()
{
  result = qword_1EA930EB0;
  if (!qword_1EA930EB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EA930EB0);
  }

  return result;
}

void sub_188F2A64C(void *a1)
{
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  *(v3 + 24) = v1;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_188F2AF98;
  *(v4 + 24) = v3;
  v21 = sub_188A4B574;
  v22 = v4;
  v17 = MEMORY[0x1E69E9820];
  v18 = 1107296256;
  v19 = sub_188A4A968;
  v20 = &block_descriptor_30;
  v5 = _Block_copy(&v17);
  v6 = a1;
  v7 = v1;

  [v6 appendProem:v7 block:v5];
  _Block_release(v5);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return;
  }

  v9 = [v6 style];
  v10 = [v9 verbosity];

  if (v10 == 2)
  {

    return;
  }

  v11 = [objc_opt_self() succinctStyle];
  v12 = swift_allocObject();
  *(v12 + 16) = v6;
  *(v12 + 24) = v7;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_188F2AFA0;
  *(v13 + 24) = v12;
  v21 = sub_188E3FE50;
  v22 = v13;
  v17 = MEMORY[0x1E69E9820];
  v18 = 1107296256;
  v19 = sub_188A4A968;
  v20 = &block_descriptor_15_1;
  v14 = _Block_copy(&v17);
  v15 = v6;
  v16 = v7;

  [v15 overlayStyle:v11 block:v14];

  _Block_release(v14);
  LOBYTE(v14) = swift_isEscapingClosureAtFileLocation();

  if (v14)
  {
    goto LABEL_7;
  }
}

void sub_188F2A94C(void *a1, id a2)
{
  v3 = [a2 collectorInteraction];
  v4 = sub_18A4A7258();
}

void sub_188F2A9F0(void *a1, void *a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  *(v4 + 24) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_188F2AFA8;
  *(v5 + 24) = v4;
  v9[4] = sub_188E3FE50;
  v9[5] = v5;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_188A4A968;
  v9[3] = &block_descriptor_25_2;
  v6 = _Block_copy(v9);
  v7 = a2;
  v8 = a1;

  [v8 appendBodySectionWithName:0 block:v6];
  _Block_release(v6);
  LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

  if (v8)
  {
    __break(1u);
  }
}

double sub_188F2AB54(uint64_t a1, void *a2)
{
  v4 = OBJC_IVAR____UIScrollPocketLumaObserverInteraction_lumaValues;
  swift_beginAccess();
  v5 = *(a1 + v4);
  if (*(v5 + 16) && (v6 = sub_188C4585C(1), (v7 & 1) != 0))
  {
    v8 = *(*(v5 + 56) + 8 * v6);
    swift_endAccess();
    v9 = _NSStringFromUIUserInterfaceStyle(v8);
    v10 = sub_18A4A7258();
    [a2 appendString:v9 withName:v10];
  }

  else
  {
    swift_endAccess();
  }

  swift_beginAccess();
  v11 = *(a1 + v4);
  if (*(v11 + 16) && (v12 = sub_188C4585C(2), (v13 & 1) != 0))
  {
    v14 = *(*(v11 + 56) + 8 * v12);
    swift_endAccess();
    v15 = _NSStringFromUIUserInterfaceStyle(v14);
    v16 = sub_18A4A7258();
    [a2 appendString:v15 withName:v16];
  }

  else
  {
    swift_endAccess();
  }

  swift_beginAccess();
  v17 = *(a1 + v4);
  if (*(v17 + 16) && (v18 = sub_188C4585C(4), (v19 & 1) != 0))
  {
    v20 = *(*(v17 + 56) + 8 * v18);
    swift_endAccess();
    v21 = _NSStringFromUIUserInterfaceStyle(v20);
    v22 = sub_18A4A7258();
    [a2 appendString:v21 withName:v22];
  }

  else
  {
    swift_endAccess();
  }

  swift_beginAccess();
  v23 = *(a1 + v4);
  if (*(v23 + 16) && (v24 = sub_188C4585C(8), (v25 & 1) != 0))
  {
    v26 = *(*(v23 + 56) + 8 * v24);
    swift_endAccess();
    v27 = _NSStringFromUIUserInterfaceStyle(v26);
    v28 = sub_18A4A7258();
    [a2 appendString:v27 withName:v28];
  }

  else
  {
    swift_endAccess();
  }

  return result;
}

id _UIScrollPocketLumaObserverInteraction.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t type metadata accessor for _UIScrollPocketLumaObserverInteraction()
{
  result = qword_1EA9370C0;
  if (!qword_1EA9370C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EA9370C0);
  }

  return result;
}

id _UIFloatingContentView.setGlass(_:for:)(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93BA10, &qword_18A6526E0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v19[-v6];
  v8 = type metadata accessor for _Glass(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v19[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v19[-v13];
  sub_188A3F29C(a1, v7, &unk_1EA93BA10, &qword_18A6526E0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_188A3F5FC(v7, &unk_1EA93BA10, &qword_18A6526E0);
    return [v2 removeGlassForState_];
  }

  else
  {
    sub_188C4CD1C(v7, v14);
    sub_188C4C96C(v14, v11);
    v16 = [objc_allocWithZone(_UIViewGlass) init];
    v21 = v8;
    v22 = &protocol witness table for _Glass;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v20);
    sub_188C4CD1C(v11, boxed_opaque_existential_0);
    v18 = OBJC_IVAR____UIViewGlass__underlyingMaterial;
    swift_beginAccess();
    __swift_destroy_boxed_opaque_existential_0Tm(&v16[v18]);
    sub_188A5EBAC(&v20, &v16[v18]);
    swift_endAccess();
    [v2 setGlass:v16 forState:a2];

    return sub_188B7533C(v14);
  }
}

uint64_t _UIFloatingContentView.glass(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [v2 glassForState_];
  if (v4)
  {
    v5 = OBJC_IVAR____UIViewGlass__underlyingMaterial;
    v6 = v4;
    swift_beginAccess();
    sub_188A53994(v6 + v5, v11);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA933ED0, &qword_18A654D10);
    v7 = type metadata accessor for _Glass(0);
    swift_dynamicCast();
    return (*(*(v7 - 8) + 56))(a2, 0, 1, v7);
  }

  else
  {
    v9 = type metadata accessor for _Glass(0);
    v10 = *(*(v9 - 8) + 56);

    return v10(a2, 1, 1, v9);
  }
}

void _UIFloatingContentView.setBackgroundMaterial(_:for:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_188A3F29C(a1, &v7, &unk_1EA93C9A0, qword_18A6513A0);
  if (v8)
  {
    sub_188A5EBAC(&v7, v9);
    v5 = v10;
    v6 = v11;
    __swift_project_boxed_opaque_existential_0(v9, v10);
    [v3 setBackgroundMaterial:sub_188C8D2B4(v5 forState:{v6), a2}];
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
  }

  else
  {
    sub_188A3F5FC(&v7, &unk_1EA93C9A0, qword_18A6513A0);
    [v2 removeBackgroundMaterialForState_];
  }
}

double _UIFloatingContentView.backgroundMaterial(for:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if ([v2 backgroundMaterialForState_])
  {
    ObjectType = swift_getObjectType();
    sub_18901EB8C(ObjectType, a2);

    swift_unknownObjectRelease();
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_188F2B4B0(uint64_t a1)
{
  result = 0;
  if (a1 > 3)
  {
    if (a1 <= 7)
    {
      if (a1 == 4)
      {
        swift_getKeyPath();
        sub_188F2E184(&qword_1ED491960, &unk_18A652470);
        sub_18A4A2C08();

        return *(v1 + 176);
      }

      if (a1 != 5)
      {
        return result;
      }

      swift_getKeyPath();
      sub_188F2E184(&qword_1ED491960, &unk_18A652470);
      sub_18A4A2C08();

      if (*(v1 + 152) == 1)
      {
        swift_getKeyPath();
        sub_18A4A2C08();

        if (*(v1 + 184))
        {
          return *(v1 + 176);
        }
      }

      swift_getKeyPath();
      sub_18A4A2C08();

      if (*(v1 + 152))
      {
        v11 = 0.0;
      }

      else
      {
        v11 = *(v1 + 144);
      }

      swift_getKeyPath();
      sub_18A4A2C08();

      v12 = *(v1 + 176);
      v13 = *(v1 + 184);
      goto LABEL_59;
    }

    switch(a1)
    {
      case 8:
        swift_getKeyPath();
        sub_188F2E184(&qword_1ED491960, &unk_18A652470);
        sub_18A4A2C08();

        return *(v1 + 192);
      case 10:
        swift_getKeyPath();
        sub_188F2E184(&qword_1ED491960, &unk_18A652470);
        sub_18A4A2C08();

        if (*(v1 + 168) != 1 || (swift_getKeyPath(), sub_18A4A2C08(), , (*(v1 + 200) & 1) == 0))
        {
          swift_getKeyPath();
          sub_18A4A2C08();

          v4 = *(v1 + 160);
          v5 = *(v1 + 168);
          goto LABEL_55;
        }

        break;
      case 12:
        swift_getKeyPath();
        sub_188F2E184(&qword_1ED491960, &unk_18A652470);
        sub_18A4A2C08();

        if (*(v1 + 184) != 1 || (swift_getKeyPath(), sub_18A4A2C08(), , (*(v1 + 200) & 1) == 0))
        {
          swift_getKeyPath();
          sub_18A4A2C08();

          v4 = *(v1 + 176);
          v5 = *(v1 + 184);
LABEL_55:
          if (v5)
          {
            v11 = 0.0;
          }

          else
          {
            v11 = v4;
          }

          swift_getKeyPath();
          sub_18A4A2C08();

          v12 = *(v1 + 192);
          v13 = *(v1 + 200);
LABEL_59:
          if (v13)
          {
            v12 = 0.0;
          }

          if (v11 > v12)
          {
            v12 = v11;
          }

          return *&v12;
        }

        break;
      default:
        return result;
    }

    return *(v1 + 192);
  }

  if (a1 > 1)
  {
    if (a1 == 2)
    {
      swift_getKeyPath();
      sub_188F2E184(&qword_1ED491960, &unk_18A652470);
      sub_18A4A2C08();

      return *(v1 + 160);
    }

    swift_getKeyPath();
    sub_188F2E184(&qword_1ED491960, &unk_18A652470);
    sub_18A4A2C08();

    if (*(v1 + 152) == 1)
    {
      swift_getKeyPath();
      sub_18A4A2C08();

      if (*(v1 + 168))
      {
        return *(v1 + 160);
      }
    }

    swift_getKeyPath();
    sub_18A4A2C08();

    if (*(v1 + 152))
    {
      v11 = 0.0;
    }

    else
    {
      v11 = *(v1 + 144);
    }

    swift_getKeyPath();
    sub_18A4A2C08();

    v12 = *(v1 + 160);
    v13 = *(v1 + 168);
    goto LABEL_59;
  }

  if (a1 == -1)
  {
    swift_getKeyPath();
    sub_188F2E184(&qword_1ED491960, &unk_18A652470);
    sub_18A4A2C08();

    if (*(v1 + 152) == 1)
    {
      swift_getKeyPath();
      sub_18A4A2C08();

      if (*(v1 + 168) == 1)
      {
        swift_getKeyPath();
        sub_18A4A2C08();

        if (*(v1 + 184) == 1)
        {
          swift_getKeyPath();
          sub_18A4A2C08();

          if (*(v1 + 200))
          {
            return *(v1 + 192);
          }
        }
      }
    }

    swift_getKeyPath();
    sub_18A4A2C08();

    v6 = 0.0;
    if (*(v1 + 152))
    {
      v7 = 0.0;
    }

    else
    {
      v7 = *(v1 + 144);
    }

    swift_getKeyPath();
    sub_18A4A2C08();

    if (*(v1 + 168))
    {
      v8 = 0.0;
    }

    else
    {
      v8 = *(v1 + 160);
    }

    swift_getKeyPath();
    sub_18A4A2C08();

    if (!*(v1 + 184))
    {
      v6 = *(v1 + 176);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934210, &qword_18A64FD80);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_18A64BFB0;
    swift_getKeyPath();
    sub_18A4A2C08();

    if (*(v1 + 200) != 1)
    {
      v10 = *(v1 + 192);
      *(inited + 32) = v10;

      if (v7 > v8)
      {
        v14 = v7;
      }

      else
      {
        v14 = v8;
      }

      if (v14 <= v6)
      {
        v14 = v6;
      }

      if (v14 > v10)
      {
        v10 = v14;
      }

      return *&v10;
    }

    *(inited + 32) = 0;

    if (v7 <= v8)
    {
      if (v8 > v6)
      {
        if (v8 > 0.0)
        {
          v10 = v8;
        }

        else
        {
          v10 = 0.0;
        }

        return *&v10;
      }
    }

    else if (v7 > v6)
    {
      if (v7 > 0.0)
      {
        v10 = v7;
      }

      else
      {
        v10 = 0.0;
      }

      return *&v10;
    }

    if (v6 > 0.0)
    {
      v10 = v6;
    }

    else
    {
      v10 = 0.0;
    }

    return *&v10;
  }

  if (a1 == 1)
  {
    swift_getKeyPath();
    sub_188F2E184(&qword_1ED491960, &unk_18A652470);
    sub_18A4A2C08();

    return *(v1 + 144);
  }

  return result;
}

void sub_188F2BE40(float64_t a1, float64_t a2, float64_t a3, float64_t a4)
{
  v5.f64[0] = a1;
  v5.f64[1] = a2;
  v6.f64[0] = a3;
  v6.f64[1] = a4;
  if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v4[7], v5), vceqq_f64(v4[8], v6)))))
  {
    v4[7].f64[0] = a1;
    v4[7].f64[1] = a2;
    v4[8].f64[0] = a3;
    v4[8].f64[1] = a4;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_188F2E184(&qword_1ED491960, &unk_18A652470);
    sub_18A4A2BF8();
  }
}

void sub_188F2BF74()
{
  v1 = COERCE_DOUBLE(sub_188F2D504(1));
  v3 = v2;
  v4 = COERCE_DOUBLE(sub_188F2D504(2));
  v6 = v5;
  v7 = COERCE_DOUBLE(sub_188F2D504(4));
  v9 = v8;
  v10 = COERCE_DOUBLE(sub_188F2D504(8));
  v12 = v11;
  v13 = *(v0 + 96);
  if (!*(v13 + 16))
  {
LABEL_71:
    sub_188F2CC54(*&v1, v3 & 1);
    sub_188F2CED8(*&v4, v6 & 1);
    sub_188F2D15C(*&v7, v9 & 1);
    sub_188F2D3E0(*&v10, v12 & 1);
    return;
  }

  v33 = *(v13 + 16);

  v14 = v33;
  v15 = 0;
  v16 = v12;
  while (v15 < *(v13 + 16))
  {
    v19 = *(v13 + 8 * v15 + 32);
    if (v19 <= 4)
    {
      if (v19 == -1)
      {
        if (v3)
        {
          v22 = 0.0;
        }

        else
        {
          v22 = v1;
        }

        if (v6)
        {
          v23 = 0.0;
        }

        else
        {
          v23 = v4;
        }

        if (v9)
        {
          v24 = 0.0;
        }

        else
        {
          v24 = v7;
        }

        v25 = v16;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934210, &qword_18A64FD80);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_18A64BFB0;
        if ((v25 & 1) == 0)
        {
          v27 = v10;
          *(inited + 32) = v10;

          if (v22 > v23)
          {
            v32 = v22;
          }

          else
          {
            v32 = v23;
          }

          if (v32 <= v24)
          {
            v32 = v24;
          }

          v14 = v33;
          if (v32 > v10)
          {
            v27 = v32;
          }

          goto LABEL_69;
        }

        *(inited + 32) = 0;

        if (v22 <= v23)
        {
          v14 = v33;
          if (v23 > v24)
          {
            if (v23 > 0.0)
            {
              v27 = v23;
            }

            else
            {
              v27 = 0.0;
            }

            goto LABEL_69;
          }
        }

        else
        {
          v14 = v33;
          if (v22 > v24)
          {
            if (v22 > 0.0)
            {
              v27 = v22;
            }

            else
            {
              v27 = 0.0;
            }

LABEL_69:
            v16 = 0;
            v9 = 0;
            v6 = 0;
            v3 = 0;
            v10 = v27;
            v7 = v27;
            v4 = v27;
            v1 = v27;
            goto LABEL_10;
          }
        }

        if (v24 > 0.0)
        {
          v27 = v24;
        }

        else
        {
          v27 = 0.0;
        }

        goto LABEL_69;
      }

      if (v19 != 3)
      {
        goto LABEL_73;
      }

      v30 = v1;
      if (v3)
      {
        v30 = 0.0;
      }

      v31 = v4;
      if (v6)
      {
        v31 = 0.0;
      }

      if (v30 <= v31)
      {
        v30 = v31;
      }

      v4 = v30;
      v1 = v30;
      v6 = 0;
      goto LABEL_54;
    }

    switch(v19)
    {
      case 5:
        v28 = v1;
        if (v3)
        {
          v28 = 0.0;
        }

        v29 = v7;
        if (v9)
        {
          v29 = 0.0;
        }

        if (v28 <= v29)
        {
          v28 = v29;
        }

        v7 = v28;
        v1 = v28;
        v9 = 0;
LABEL_54:
        v3 = 0;
        break;
      case 10:
        v17 = v4;
        if (v6)
        {
          v17 = 0.0;
        }

        v18 = v10;
        if (v16)
        {
          v18 = 0.0;
        }

        if (v17 <= v18)
        {
          v17 = v18;
        }

        v10 = v17;
        v4 = v17;
        v16 = 0;
        v6 = 0;
        break;
      case 12:
        v20 = v7;
        if (v9)
        {
          v20 = 0.0;
        }

        v21 = v10;
        if (v16)
        {
          v21 = 0.0;
        }

        if (v20 <= v21)
        {
          v20 = v21;
        }

        v10 = v20;
        v7 = v20;
        v16 = 0;
        v9 = 0;
        break;
      default:
        goto LABEL_73;
    }

LABEL_10:
    if (v14 == ++v15)
    {
      v12 = v16;

      goto LABEL_71;
    }
  }

  __break(1u);
LABEL_73:
  sub_18A4A80E8();
  MEMORY[0x18CFE22D0](0xD000000000000039, 0x800000018A693220);
  type metadata accessor for UIRectCorner(0);
  sub_18A4A82D8();
  MEMORY[0x18CFE22D0](41, 0xE100000000000000);
  sub_18A4A8398();
  __break(1u);
}

_BYTE *sub_188F2C344(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = a1;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    while ((v1 & 1) != 0)
    {
      swift_getKeyPath();
      sub_188F2E184(&qword_1ED491960, &unk_18A652470);

      sub_18A4A2C08();

      if (!Strong[152])
      {
        v1 &= ~1uLL;
      }

      if ((v1 & 2) != 0)
      {
        goto LABEL_12;
      }

LABEL_14:
      if ((v1 & 4) != 0)
      {
        swift_getKeyPath();
        sub_188F2E184(&qword_1ED491960, &unk_18A652470);
        sub_18A4A2C08();

        if (!Strong[184])
        {
          v1 &= ~4uLL;
        }

        if ((v1 & 8) == 0)
        {
          goto LABEL_4;
        }
      }

      else if ((v1 & 8) == 0)
      {
        goto LABEL_4;
      }

      swift_getKeyPath();
      sub_188F2E184(&qword_1ED491960, &unk_18A652470);
      sub_18A4A2C08();

      if (Strong[200])
      {
        goto LABEL_5;
      }

      v1 &= ~8uLL;
LABEL_4:
      if (!v1)
      {

        return Strong;
      }

LABEL_5:
      v3 = swift_weakLoadStrong();

      Strong = v3;
      if (!v3)
      {
        return Strong;
      }
    }

    if ((v1 & 2) == 0)
    {
      goto LABEL_14;
    }

LABEL_12:
    swift_getKeyPath();
    sub_188F2E184(&qword_1ED491960, &unk_18A652470);
    sub_18A4A2C08();

    if (!Strong[168])
    {
      v1 &= ~2uLL;
    }

    goto LABEL_14;
  }

  return Strong;
}

uint64_t sub_188F2C5A8()
{
  swift_getKeyPath();
  sub_188F2E184(&qword_1ED491960, &unk_18A652470);
  sub_18A4A2C08();

  return swift_unknownObjectWeakLoadStrong();
}

double sub_188F2C638@<D0>(_OWORD *a1@<X8>)
{
  swift_getKeyPath();
  *&v10[0] = v1;
  sub_188F2E184(&qword_1ED491960, &unk_18A652470);
  sub_18A4A2C08();

  if (*(v1 + 152))
  {
    v3 = 0.0;
  }

  else
  {
    v3 = *(v1 + 144);
  }

  swift_getKeyPath();
  *&v10[0] = v1;
  sub_18A4A2C08();

  if (*(v1 + 168))
  {
    v4 = 0.0;
  }

  else
  {
    v4 = *(v1 + 160);
  }

  swift_getKeyPath();
  *&v10[0] = v1;
  sub_18A4A2C08();

  if (*(v1 + 184))
  {
    v5 = 0.0;
  }

  else
  {
    v5 = *(v1 + 176);
  }

  swift_getKeyPath();
  *&v10[0] = v1;
  sub_18A4A2C08();

  if (*(v1 + 200))
  {
    v6 = 0.0;
  }

  else
  {
    v6 = *(v1 + 192);
  }

  CACornerRadiiMake(v10, v3, v4, v5, v6);
  v7 = v10[1];
  *a1 = v10[0];
  a1[1] = v7;
  result = *&v11;
  v9 = v12;
  a1[2] = v11;
  a1[3] = v9;
  return result;
}

uint64_t sub_188F2C82C@<X0>(uint64_t *a2@<X8>)
{
  swift_getKeyPath();
  sub_188F2E184(&qword_1ED491960, &unk_18A652470);
  sub_18A4A2C08();

  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

double sub_188F2C8C4(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_188F2E184(&qword_1ED491960, &unk_18A652470);
  sub_18A4A2BF8();

  return result;
}

double sub_188F2C998()
{
  swift_getKeyPath();
  sub_188F2E184(&qword_1ED491960, &unk_18A652470);
  sub_18A4A2C08();

  return *(v0 + 112);
}

__n128 sub_188F2CA28@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_188F2E184(&qword_1ED491960, &unk_18A652470);
  sub_18A4A2C08();

  result = *(v3 + 112);
  v5 = *(v3 + 128);
  *a2 = result;
  *(a2 + 16) = v5;
  return result;
}

double *sub_188F2CAE8(double *result, double a2, double a3, double a4, double a5)
{
  result[14] = a2;
  result[15] = a3;
  result[16] = a4;
  result[17] = a5;
  return result;
}

uint64_t sub_188F2CAF4()
{
  swift_getKeyPath();
  sub_188F2E184(&qword_1ED491960, &unk_18A652470);
  sub_18A4A2C08();

  return *(v0 + 144);
}

void sub_188F2CB84(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_188F2E184(&qword_1ED491960, &unk_18A652470);
  sub_18A4A2C08();

  v4 = *(v3 + 152);
  *a2 = *(v3 + 144);
  *(a2 + 8) = v4;
}

double sub_188F2CC54(uint64_t a1, char a2)
{
  if ((*(v2 + 152) & 1) == 0)
  {
    if (a2)
    {
      goto LABEL_7;
    }

    result = *(v2 + 144);
    if (result != *&a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    *(v2 + 144) = *&a1;
    *(v2 + 152) = a2 & 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_6;
  }

LABEL_7:
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  sub_188F2E184(&qword_1ED491960, &unk_18A652470);
  sub_18A4A2BF8();

  return result;
}

uint64_t sub_188F2CD78()
{
  swift_getKeyPath();
  sub_188F2E184(&qword_1ED491960, &unk_18A652470);
  sub_18A4A2C08();

  return *(v0 + 160);
}

void sub_188F2CE08(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_188F2E184(&qword_1ED491960, &unk_18A652470);
  sub_18A4A2C08();

  v4 = *(v3 + 168);
  *a2 = *(v3 + 160);
  *(a2 + 8) = v4;
}

double sub_188F2CED8(uint64_t a1, char a2)
{
  if ((*(v2 + 168) & 1) == 0)
  {
    if (a2)
    {
      goto LABEL_7;
    }

    result = *(v2 + 160);
    if (result != *&a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    *(v2 + 160) = *&a1;
    *(v2 + 168) = a2 & 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_6;
  }

LABEL_7:
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  sub_188F2E184(&qword_1ED491960, &unk_18A652470);
  sub_18A4A2BF8();

  return result;
}

uint64_t sub_188F2CFFC()
{
  swift_getKeyPath();
  sub_188F2E184(&qword_1ED491960, &unk_18A652470);
  sub_18A4A2C08();

  return *(v0 + 176);
}

void sub_188F2D08C(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_188F2E184(&qword_1ED491960, &unk_18A652470);
  sub_18A4A2C08();

  v4 = *(v3 + 184);
  *a2 = *(v3 + 176);
  *(a2 + 8) = v4;
}

double sub_188F2D15C(uint64_t a1, char a2)
{
  if ((*(v2 + 184) & 1) == 0)
  {
    if (a2)
    {
      goto LABEL_7;
    }

    result = *(v2 + 176);
    if (result != *&a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    *(v2 + 176) = *&a1;
    *(v2 + 184) = a2 & 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_6;
  }

LABEL_7:
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  sub_188F2E184(&qword_1ED491960, &unk_18A652470);
  sub_18A4A2BF8();

  return result;
}

uint64_t sub_188F2D280()
{
  swift_getKeyPath();
  sub_188F2E184(&qword_1ED491960, &unk_18A652470);
  sub_18A4A2C08();

  return *(v0 + 192);
}

void sub_188F2D310(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_188F2E184(&qword_1ED491960, &unk_18A652470);
  sub_18A4A2C08();

  v4 = *(v3 + 200);
  *a2 = *(v3 + 192);
  *(a2 + 8) = v4;
}

double sub_188F2D3E0(uint64_t a1, char a2)
{
  if ((*(v2 + 200) & 1) == 0)
  {
    if (a2)
    {
      goto LABEL_7;
    }

    result = *(v2 + 192);
    if (result != *&a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    *(v2 + 192) = *&a1;
    *(v2 + 200) = a2 & 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_6;
  }

LABEL_7:
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  sub_188F2E184(&qword_1ED491960, &unk_18A652470);
  sub_18A4A2BF8();

  return result;
}

uint64_t sub_188F2D504(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 80);
  v22 = *(v1 + 64);
  v23 = v4;
  v5 = *(v1 + 48);
  v21[0] = *(v1 + 32);
  v21[1] = v5;
  v16 = v22;
  v17 = *(v1 + 80);
  v24 = *(v1 + 96);
  v18 = *(v1 + 96);
  v14 = v21[0];
  v15 = v3;
  sub_188E41F80(v21, v25);
  sub_18904B624(a1, &v19);
  v25[2] = v16;
  v25[3] = v17;
  v26 = v18;
  v25[0] = v14;
  v25[1] = v15;
  sub_188E4342C(v25);
  if (v20 == 255)
  {
    return 0;
  }

  v6 = v19;
  if (v20)
  {
    sub_188F2D6AC(a1);
    v6 = v7;
  }

  swift_getKeyPath();
  sub_188F2E184(&qword_1ED491960, &unk_18A652470);
  sub_18A4A2C08();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    [Strong bounds];
    v10 = CGRectGetWidth(v27) * 0.5;
    [v9 bounds];
    Height = CGRectGetHeight(v28);
    swift_unknownObjectRelease();
    v12 = Height * 0.5;
    if (Height * 0.5 >= v10)
    {
      v12 = v10;
    }

    if (v12 < v6)
    {
      v6 = v12;
    }
  }

  return *&v6;
}

void sub_188F2D6AC(uint64_t a1)
{
  swift_getKeyPath();
  sub_188F2E184(&qword_1ED491960, &unk_18A652470);
  sub_18A4A2C08();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = sub_188F2C344(a1);
    if (!v4)
    {
      swift_unknownObjectRelease();
      return;
    }

    v5 = v4;
    swift_getKeyPath();
    sub_18A4A2C08();

    v6 = swift_unknownObjectWeakLoadStrong();
    if (!v6)
    {
      swift_unknownObjectRelease();

      return;
    }

    v7 = v6;
    *&v8 = COERCE_DOUBLE(sub_188F2B4B0(a1));
    if (v9)
    {
      sub_18A4A80E8();
      MEMORY[0x18CFE22D0](0xD000000000000047, 0x800000018A693260);
      type metadata accessor for UIRectCorner(0);
      sub_18A4A82D8();
      MEMORY[0x18CFE22D0](41, 0xE100000000000000);
    }

    else
    {
      v10 = *&v8;
      [v7 bounds];
      v12 = v11;
      v14 = v13;
      v16 = v15;
      rect = v17;
      swift_getKeyPath();
      sub_18A4A2C08();

      v18 = v5[15];
      v19 = v5[17];
      if (a1 > 3)
      {
        if (a1 == 4)
        {
          v33.origin.x = v12;
          v33.origin.y = v14;
          v33.size.width = v16;
          v33.size.height = rect;
          v21 = v5[16];
          v20 = CGRectGetHeight(v33) - v10 - v21;
          goto LABEL_15;
        }

        v30 = v5[16];
        if (a1 == 8)
        {
          v34.origin.x = v12;
          v34.origin.y = v14;
          v34.size.width = v16;
          v34.size.height = rect;
          v18 = CGRectGetWidth(v34) - v10 - v19;
          v35.origin.x = v12;
          v35.origin.y = v14;
          v35.size.width = v16;
          v35.size.height = rect;
          v20 = CGRectGetHeight(v35) - v10 - v30;
          goto LABEL_15;
        }
      }

      else
      {
        v20 = v5[14];
        if (a1 == 1)
        {
LABEL_15:
          [v3 bounds];
          [v3 convertRect:v7 toCoordinateSpace:?];
          v39.origin.x = v22;
          v39.origin.y = v23;
          v39.size.width = v24;
          v39.size.height = v25;
          v36.origin.x = v18;
          v36.origin.y = v20;
          v36.size.width = v10;
          v36.size.height = v10;
          v37 = CGRectIntersection(v36, v39);
          x = v37.origin.x;
          y = v37.origin.y;
          width = v37.size.width;
          height = v37.size.height;
          CGRectGetWidth(v37);
          v38.origin.x = x;
          v38.origin.y = y;
          v38.size.width = width;
          v38.size.height = height;
          CGRectGetHeight(v38);
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();

          return;
        }

        if (a1 == 2)
        {
          v32.origin.x = v12;
          v32.origin.y = v14;
          v32.size.width = v16;
          v32.size.height = rect;
          v18 = CGRectGetWidth(v32) - v10 - v19;
          goto LABEL_15;
        }
      }

      sub_18A4A80E8();
      MEMORY[0x18CFE22D0](0xD000000000000032, 0x800000018A6932B0);
      type metadata accessor for UIRectCorner(0);
      sub_18A4A82D8();
      MEMORY[0x18CFE22D0](41, 0xE100000000000000);
    }

    sub_18A4A8398();
    __break(1u);
  }
}

uint64_t sub_188F2DAFC()
{
  swift_getKeyPath();
  sub_188F2E184(&qword_1ED491960, &unk_18A652470);
  sub_18A4A2C08();

  if (swift_unknownObjectWeakLoadStrong())
  {
    v1 = sub_18A4A72F8();
    v3 = v2;
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0xE300000000000000;
    v1 = 7104878;
  }

  v4 = 0xEB00000000646569;
  v5 = 0x6669636570736E75;
  sub_18A4A80E8();
  MEMORY[0x18CFE22D0](0xD000000000000014, 0x800000018A6931D0);
  sub_18A4A82D8();
  MEMORY[0x18CFE22D0](0x3A72656E776F203BLL, 0xE900000000000020);
  MEMORY[0x18CFE22D0](v1, v3);

  MEMORY[0x18CFE22D0](0x206969646172203BLL, 0xEB0000000028203DLL);
  swift_getKeyPath();
  sub_18A4A2C08();

  v6 = 0x6669636570736E75;
  v7 = 0xEB00000000646569;
  if ((v0[152] & 1) == 0)
  {
    v6 = sub_18A4A76F8();
    v7 = v8;
  }

  MEMORY[0x18CFE22D0](v6, v7);

  MEMORY[0x18CFE22D0](8236, 0xE200000000000000);
  swift_getKeyPath();
  sub_18A4A2C08();

  v9 = 0x6669636570736E75;
  v10 = 0xEB00000000646569;
  if ((v0[168] & 1) == 0)
  {
    v9 = sub_18A4A76F8();
    v10 = v11;
  }

  MEMORY[0x18CFE22D0](v9, v10);

  MEMORY[0x18CFE22D0](8236, 0xE200000000000000);
  swift_getKeyPath();
  sub_18A4A2C08();

  v12 = 0x6669636570736E75;
  v13 = 0xEB00000000646569;
  if ((v0[184] & 1) == 0)
  {
    v12 = sub_18A4A76F8();
    v13 = v14;
  }

  MEMORY[0x18CFE22D0](v12, v13);

  MEMORY[0x18CFE22D0](8236, 0xE200000000000000);
  swift_getKeyPath();
  sub_18A4A2C08();

  if ((v0[200] & 1) == 0)
  {
    v5 = sub_18A4A76F8();
    v4 = v15;
  }

  MEMORY[0x18CFE22D0](v5, v4);

  MEMORY[0x18CFE22D0](15913, 0xE200000000000000);
  return 0;
}

uint64_t sub_188F2DE7C()
{
  sub_188B223B8(v0 + 24);

  swift_weakDestroy();
  v1 = OBJC_IVAR____TtC5UIKit17_UICornerProvider___observationRegistrar;
  v2 = sub_18A4A2C48();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for _UICornerProvider(uint64_t a1)
{
  result = qword_1ED491AE0;
  if (!qword_1ED491AE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_188F2DF84(uint64_t a1)
{
  result = sub_18A4A2C48();
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

uint64_t sub_188F2E070()
{
  v1 = *v0;
  sub_18A4A8888();
  MEMORY[0x18CFE37E0](*(v1 + 16));
  return sub_18A4A88E8();
}

uint64_t sub_188F2E0E8()
{
  v1 = *v0;
  sub_18A4A8888();
  MEMORY[0x18CFE37E0](*(v1 + 16));
  return sub_18A4A88E8();
}

uint64_t sub_188F2E184(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for _UICornerProvider(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_188F2E1C8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  *(v1 + 192) = *(v0 + 24);
  *(v1 + 200) = v2;
}

void sub_188F2E1DC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  *(v1 + 176) = *(v0 + 24);
  *(v1 + 184) = v2;
}

void sub_188F2E1F0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  *(v1 + 160) = *(v0 + 24);
  *(v1 + 168) = v2;
}

void sub_188F2E204()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  *(v1 + 144) = *(v0 + 24);
  *(v1 + 152) = v2;
}

__n128 sub_188F2E278()
{
  v1 = *(v0 + 16);
  result = *(v0 + 24);
  v3 = *(v0 + 40);
  *(v1 + 112) = result;
  *(v1 + 128) = v3;
  return result;
}

uint64_t sub_188F2E28C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_unknownObjectWeakInit();
  swift_weakInit();
  *(a3 + 112) = UIEdgeInsetsZero;
  *(a3 + 144) = 0;
  *(a3 + 152) = 1;
  *(a3 + 160) = 0;
  *(a3 + 168) = 1;
  *(a3 + 176) = 0;
  *(a3 + 184) = 1;
  *(a3 + 192) = 0;
  *(a3 + 200) = 1;
  sub_18A4A2C38();
  swift_unknownObjectRetain();
  sub_188B223B8(a3 + 24);
  swift_unknownObjectWeakInit();
  swift_unknownObjectRelease();
  v6 = *(a2 + 48);
  *(a3 + 64) = *(a2 + 32);
  *(a3 + 80) = v6;
  *(a3 + 96) = *(a2 + 64);
  v7 = *(a2 + 16);
  *(a3 + 32) = *a2;
  *(a3 + 48) = v7;
  *(a3 + 16) = a1;
  return a3;
}

void sub_188F2E36C(void *a1, char a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  if (!a5)
  {
    [*(v6 + OBJC_IVAR____UIMagicMorphAnimation_groupCompletion) increment];
    v15 = a1;
    if (a1)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v12 = *(v6 + OBJC_IVAR____UIMagicMorphAnimation_groupCompletion);
  v26 = a5;
  v27 = a6;
  aBlock = MEMORY[0x1E69E9820];
  v23 = 1107296256;
  v24 = sub_188A4A8F0;
  v25 = &block_descriptor_54_0;
  v13 = _Block_copy(&aBlock);
  sub_188D738F4(a5, a6);
  sub_188D738F4(a5, a6);
  v14 = v12;

  [v14 addCompletion_];
  _Block_release(v13);

  sub_188A55B8C(a5, a6);
  v15 = a1;
  if (!a1)
  {
LABEL_3:
    v15 = [objc_opt_self() behaviorWithDampingRatio:1.0 response:0.4];
  }

LABEL_4:
  v16 = objc_opt_self();
  v17 = swift_allocObject();
  *(v17 + 16) = a3;
  *(v17 + 24) = a4;
  v26 = sub_188D84768;
  v27 = v17;
  aBlock = MEMORY[0x1E69E9820];
  v23 = 1107296256;
  v24 = sub_188A4A8F0;
  v25 = &block_descriptor_31;
  v18 = _Block_copy(&aBlock);
  swift_unknownObjectRetain();

  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v26 = sub_188D764CC;
  v27 = v19;
  aBlock = MEMORY[0x1E69E9820];
  v23 = 1107296256;
  v24 = sub_188C3DD6C;
  v25 = &block_descriptor_51_0;
  v20 = _Block_copy(&aBlock);

  [v16 _animateUsingSpringBehavior_tracking_animations_completion_];
  _Block_release(v20);
  _Block_release(v18);
  swift_unknownObjectRelease();
}

id sub_188F2E75C()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____UIMagicMorphAnimation_intermediateStepDelayTimer;
  v3 = *&v0[OBJC_IVAR____UIMagicMorphAnimation_intermediateStepDelayTimer];
  if (v3)
  {
    v4 = v3;
    [v4 invalidate];
    v5 = *&v0[v2];
    *&v0[v2] = 0;

    [*&v0[OBJC_IVAR____UIMagicMorphAnimation_groupCompletion] complete];
  }

  v7.receiver = v0;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

void sub_188F2E908(char *a1, uint64_t a2, int a3, int a4, void *a5, char *a6, uint64_t (*a7)(), void *a8)
{
  v9 = v8;
  v338 = a8;
  v339 = a5;
  v340 = a6;
  v341 = a7;
  v331 = a4;
  *&v344 = a2;
  v12 = sub_18A4A6E18();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v321 = &v315 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v322 = sub_18A4A6E58();
  v15 = *(v322 - 8);
  MEMORY[0x1EEE9AC00](v322);
  v319 = &v315 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v326 = sub_18A4A6E88();
  v318 = *(v326 - 8);
  MEMORY[0x1EEE9AC00](v326);
  v317 = &v315 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v325 = &v315 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93BA10, &qword_18A6526E0);
  v21 = MEMORY[0x1EEE9AC00](v20 - 8);
  v23 = &v315 - v22;
  v24 = [a1 target];
  v25 = [v24 container];

  v26 = [v25 _window];
  v335 = v26;
  if (!v26)
  {
LABEL_116:
    aBlock.origin.x = 0.0;
    aBlock.origin.y = -2.68156159e154;
    sub_18A4A80E8();
    MEMORY[0x18CFE22D0](0xD000000000000061, 0x800000018A693850);
    v310 = [a1 view];
    v311 = [v310 _conciseParentDescription];

    v312 = sub_18A4A7288();
    v314 = v313;

    MEMORY[0x18CFE22D0](v312, v314);

    sub_18A4A8398();
    __break(1u);
    return;
  }

  if ([a1 _resolvedBackgroundMaterial])
  {
    ObjectType = swift_getObjectType();
    sub_18901EB8C(ObjectType, &aBlock);
    swift_unknownObjectRelease();
    if (*&aBlock.size.height)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA933ED0, &qword_18A654D10);
      v28 = type metadata accessor for _Glass(0);
      v29 = swift_dynamicCast();
      (*(*(v28 - 8) + 56))(v23, v29 ^ 1u, 1, v28);
      goto LABEL_7;
    }
  }

  else
  {
    *&v365 = 0;
    memset(&aBlock, 0, sizeof(aBlock));
  }

  sub_188A3F5FC(&aBlock, &unk_1EA93C9A0, qword_18A6513A0);
  v28 = type metadata accessor for _Glass(0);
  (*(*(v28 - 8) + 56))(v23, 1, 1, v28);
LABEL_7:
  v347 = a1;
  LODWORD(v342.width) = a3;
  v320 = v15;
  v323 = v13;
  v324 = v12;
  type metadata accessor for _Glass(0);
  LODWORD(v15) = (*(*(v28 - 8) + 48))(v23, 1, v28);
  sub_188A3F5FC(v23, &unk_1EA93BA10, &qword_18A6526E0);
  v345 = v9;
  isEscapingClosureAtFileLocation = *(v9 + OBJC_IVAR____UIMagicMorphAnimation_morphView);
  v31 = *(v344 + OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimation10Parameters_crossBlurWhenMorphing);
  v32 = &qword_1EA937000;
  if (v31 != 2)
  {
    goto LABEL_27;
  }

  a1 = *(isEscapingClosureAtFileLocation + OBJC_IVAR____UIMagicMorphView_crossBlurWhenMorphing);
  v33 = [v347 view];
  v34 = &selRef__layoutSubviewsForBoundsChange_;
  v35 = [v33 _matchedViewIdentifier];

  if (!v35)
  {
    goto LABEL_24;
  }

  v346 = sub_18A4A7288();
  v37 = v36;

  v38 = OBJC_IVAR____UIMagicMorphAnimation_animationItems;
  v39 = v345;
  swift_beginAccess();
  v40 = *(v39 + v38);
  if (v40 >> 62)
  {
    v41 = sub_18A4A7F68();
    if (!v41)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v41 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v41)
    {
      goto LABEL_23;
    }
  }

  v42 = v41 - 1;
  if (__OFSUB__(v41, 1))
  {
    goto LABEL_111;
  }

  if ((v40 & 0xC000000000000001) != 0)
  {
    goto LABEL_112;
  }

  if ((v42 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_114:
    __break(1u);
LABEL_115:
    __break(1u);
    goto LABEL_116;
  }

  if (v42 >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_114;
  }

  v43 = *(v40 + 8 * v42 + 32);
  while (1)
  {
    v44 = *&v43[OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimationP33_27010C79BBE8436D7F6A5CD454B184E54Item_preview];

    v45 = [v44 view];
    v46 = [v45 v34[370]];

    if (!v46)
    {
LABEL_23:

LABEL_24:
      if (v15)
      {
        LOBYTE(v31) = a1;
      }

      else
      {
        LOBYTE(v31) = 1;
      }

      goto LABEL_27;
    }

    v47 = sub_18A4A7288();
    v49 = v48;

    if (v346 == v47 && v37 == v49)
    {

      LOBYTE(v31) = 0;
      goto LABEL_27;
    }

    v50 = sub_18A4A86C8();

    LOBYTE(v31) = 0;
    if ((v50 & 1) == 0)
    {
      goto LABEL_24;
    }

LABEL_27:
    sub_188D738F8(v31 & 1);
    v51 = v32[27];
    v52 = v345;
    swift_beginAccess();
    v53 = *(v52 + v51);
    if (!(v53 >> 62))
    {
      *&v336 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_29;
    }

    while (1)
    {
      *&v336 = sub_18A4A7F68();
      v53 = *(v52 + v51);
LABEL_29:
      v54 = v347;
      *&v343.x = isEscapingClosureAtFileLocation;
      v337 = v51;
      isEscapingClosureAtFileLocation = v53 >> 62 ? sub_18A4A7F68() : *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (!isEscapingClosureAtFileLocation)
      {
        break;
      }

      v55 = 0;
      v346 = (v53 & 0xC000000000000001);
      v51 = v53 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v346)
        {
          v56 = sub_188E49688(v55, v53);
        }

        else
        {
          if (v55 >= *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_107;
          }

          v56 = *(v53 + 8 * v55 + 32);
        }

        v57 = v56;
        v58 = v55 + 1;
        if (__OFADD__(v55, 1))
        {
          break;
        }

        v52 = &selRef_verticalMenuCornerRadius;
        v59 = [*&v56[OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimationP33_27010C79BBE8436D7F6A5CD454B184E54Item_preview] view];
        v60 = [v54 view];

        if (v59 == v60)
        {
          goto LABEL_45;
        }

        ++v55;
        v54 = v347;
        if (v58 == isEscapingClosureAtFileLocation)
        {
          goto LABEL_41;
        }
      }

      __break(1u);
LABEL_107:
      __break(1u);
    }

LABEL_41:

    type metadata accessor for _UIMagicMorphAnimation.Item();
    v62 = v61;
    v63 = objc_allocWithZone(v61);
    v63[OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimationP33_27010C79BBE8436D7F6A5CD454B184E54Item_tracksPresentationLayer] = 1;
    *&v63[OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimationP33_27010C79BBE8436D7F6A5CD454B184E54Item_reparentingView] = 0;
    *&v63[OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimationP33_27010C79BBE8436D7F6A5CD454B184E54Item_morphView] = 0;
    v64 = &v63[OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimationP33_27010C79BBE8436D7F6A5CD454B184E54Item_alongsideAnimations];
    *v64 = 0;
    v64[1] = 0;
    v65 = &v63[OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimationP33_27010C79BBE8436D7F6A5CD454B184E54Item_completion];
    *v65 = 0;
    v65[1] = 0;
    *&v63[OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimationP33_27010C79BBE8436D7F6A5CD454B184E54Item_preview] = v54;
    v66 = v341;
    v67 = v338;
    *v65 = v341;
    v65[1] = v67;
    sub_188D738F4(v66, v67);
    v348.receiver = v63;
    v348.super_class = v62;
    v68 = v54;
    v69 = objc_msgSendSuper2(&v348, sel_init);
    v70 = &v69[OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimationP33_27010C79BBE8436D7F6A5CD454B184E54Item_alongsideAnimations];
    v71 = *&v69[OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimationP33_27010C79BBE8436D7F6A5CD454B184E54Item_alongsideAnimations];
    v72 = *&v69[OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimationP33_27010C79BBE8436D7F6A5CD454B184E54Item_alongsideAnimations + 8];
    v74 = v339;
    v73 = v340;
    *v70 = v339;
    *(v70 + 1) = v73;
    v75 = v69;
    sub_188A55B8C(v71, v72);
    v76 = *&v75[OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimationP33_27010C79BBE8436D7F6A5CD454B184E54Item_preview];
    sub_188D738F4(v74, v73);
    sub_188A34624(0, &qword_1ED48F680, off_1E70EAD78);
    v77 = v76;
    v78 = sub_18A4A7518();
    [v77 set:v78 overlayViews:?];

    v75[OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimationP33_27010C79BBE8436D7F6A5CD454B184E54Item_tracksPresentationLayer] = 1;
    v79 = v345;
    v80 = v337;
    swift_beginAccess();
    v57 = v75;
    MEMORY[0x18CFE2450]();
    if (*((*&v80[v79] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v80[v79] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18A4A7588();
    }

    sub_18A4A75F8();
    swift_endAccess();
    v81 = objc_opt_self();
    v82 = swift_allocObject();
    *(v82 + 16) = v345;
    *(v82 + 24) = v57;
    *(v82 + 32) = v331 & 1;
    v83 = swift_allocObject();
    v84 = sub_188F365F8;
    *(v83 + 16) = sub_188F365F8;
    *(v83 + 24) = v82;
    *&v365 = sub_188E3FE50;
    *(&v365 + 1) = v83;
    *&aBlock.origin.x = MEMORY[0x1E69E9820];
    *&aBlock.origin.y = 1107296256;
    v32 = v345;
    *&aBlock.size.width = sub_188A4A968;
    *&aBlock.size.height = &block_descriptor_456;
    v85 = _Block_copy(&aBlock);
    v86 = v32;

    [v81 performWithoutAnimation_];
    _Block_release(v85);
    LOBYTE(v81) = swift_isEscapingClosureAtFileLocation();

    if (v81)
    {
      __break(1u);
LABEL_45:

      v87 = &v57[OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimationP33_27010C79BBE8436D7F6A5CD454B184E54Item_alongsideAnimations];
      v88 = *&v57[OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimationP33_27010C79BBE8436D7F6A5CD454B184E54Item_alongsideAnimations];
      v89 = *&v57[OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimationP33_27010C79BBE8436D7F6A5CD454B184E54Item_alongsideAnimations + 8];
      v91 = v339;
      v90 = v340;
      *v87 = v339;
      *(v87 + 1) = v90;
      v57 = v57;
      sub_188A55B8C(v88, v89);
      v57[OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimationP33_27010C79BBE8436D7F6A5CD454B184E54Item_tracksPresentationLayer] = 1;
      sub_188D738F4(v91, v90);
      v92 = v347;
      sub_188F34A2C(v347);

      x = v343.x;
      sub_1890DFB38(v92);
      *(*&x + OBJC_IVAR____UIMagicMorphView_contentSizeDidChange) = 1;
      [*&x setNeedsLayout];
      if ([objc_opt_self() _isInAnimationBlock])
      {
        [*&x layoutIfNeeded];
      }

      sub_1890E07A8();
      v84 = v341;
      if (v341)
      {
        v94 = &v57[OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimationP33_27010C79BBE8436D7F6A5CD454B184E54Item_completion];
        v95 = *&v57[OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimationP33_27010C79BBE8436D7F6A5CD454B184E54Item_completion];
        if (v95)
        {
          v96 = v94[1];
          v97 = swift_allocObject();
          v97[2] = v95;
          v97[3] = v96;
          v98 = v338;
          v97[4] = v84;
          v97[5] = v98;
          v99 = *v94;
          v100 = v94[1];
          *v94 = sub_188F365B4;
          v94[1] = v97;
          sub_188D738F4(v84, v98);
          sub_188D738F4(v95, v96);
          sub_188A55B8C(v99, v100);
        }

        else
        {
          v101 = v338;
          *v94 = v341;
          v94[1] = v101;
        }

        v84 = 0;
      }

      v82 = 0;
      v32 = v345;
    }

    v330 = OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimationP33_27010C79BBE8436D7F6A5CD454B184E54Item_preview;
    v102 = *&v57[OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimationP33_27010C79BBE8436D7F6A5CD454B184E54Item_preview];
    v103 = v57;
    v104 = [v102 target];
    v37 = [v104 container];
    v105 = swift_allocObject();
    v340 = v103;
    *(v105 + 16) = v103;
    sub_188D73B5C(sub_188F36814, v105);
    v15 = v106;

    v338 = v37;
    v339 = v104;
    v337 = v15;
    v332 = v84;
    v333 = v82;
    if (v336)
    {
      v328 = v57;
      v107 = OBJC_IVAR____UIMagicMorphAnimation_groupCompletion;
      [*(v32 + OBJC_IVAR____UIMagicMorphAnimation_groupCompletion) increment];
      *&v336 = *(v32 + OBJC_IVAR____UIMagicMorphAnimation_animationContainerView);
      v108 = OBJC_IVAR____UIMagicMorphDestination_preview;
      v109 = *(v15 + OBJC_IVAR____UIMagicMorphDestination_preview);
      v110 = *(v336 + OBJC_IVAR____TtC5UIKit30_UIMorphAnimationContainerView_kickView);
      [v109 _center];
      [v110 convertPoint:v37 fromCoordinateSpace:?];
      v112 = v111;
      v114 = v113;

      v115 = v345;
      [*(v15 + v108) _sizeRespectingOverridesUsingPresentationLayer_];
      v117 = v116;
      v119 = v118;
      v120 = *(v344 + OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimation10Parameters_widthSpring);
      v121 = swift_allocObject();
      swift_unknownObjectUnownedInit();
      v122 = swift_allocObject();
      v122[2] = v121;
      v122[3] = v117;
      v122[4] = v119;
      v347 = v107;
      v123 = *(v107 + v115);

      [v123 increment];
      v124 = v120;
      if (!v120)
      {
        v124 = [objc_opt_self() behaviorWithDampingRatio:1.0 response:0.4];
      }

      v125 = objc_opt_self();
      v126 = swift_allocObject();
      *(v126 + 16) = sub_188F36460;
      *(v126 + 24) = v122;
      *&v365 = sub_188E3FE58;
      *(&v365 + 1) = v126;
      *&aBlock.origin.x = MEMORY[0x1E69E9820];
      *&aBlock.origin.y = 1107296256;
      *&aBlock.size.width = sub_188A4A8F0;
      *&aBlock.size.height = &block_descriptor_274;
      v127 = _Block_copy(&aBlock);
      swift_unknownObjectRetain();

      v128 = swift_allocObject();
      swift_unknownObjectWeakInit();
      *&v365 = sub_188E3FE98;
      *(&v365 + 1) = v128;
      *&aBlock.origin.x = MEMORY[0x1E69E9820];
      *&aBlock.origin.y = 1107296256;
      *&aBlock.size.width = sub_188C3DD6C;
      *&aBlock.size.height = &block_descriptor_279;
      v129 = _Block_copy(&aBlock);

      v346 = v125;
      [v125 _animateUsingSpringBehavior_tracking_animations_completion_];
      _Block_release(v129);
      _Block_release(v127);

      swift_unknownObjectRelease();
      v130 = *(v344 + OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimation10Parameters_heightSpring);
      v131 = swift_allocObject();
      swift_unknownObjectUnownedInit();
      v132 = swift_allocObject();
      v132[2] = v131;
      v132[3] = v117;
      v132[4] = v119;
      v133 = *(v347 + v115);

      [v133 increment];
      v134 = v130;
      v135 = v115;
      if (!v130)
      {
        v134 = [objc_opt_self() behaviorWithDampingRatio:1.0 response:0.4];
      }

      v136 = swift_allocObject();
      *(v136 + 16) = sub_188F3646C;
      *(v136 + 24) = v132;
      *&v365 = sub_188E3FE58;
      *(&v365 + 1) = v136;
      *&aBlock.origin.x = MEMORY[0x1E69E9820];
      *&aBlock.origin.y = 1107296256;
      *&aBlock.size.width = sub_188A4A8F0;
      *&aBlock.size.height = &block_descriptor_290;
      v137 = _Block_copy(&aBlock);
      swift_unknownObjectRetain();

      v138 = swift_allocObject();
      swift_unknownObjectWeakInit();
      *&v365 = sub_188E3FE98;
      *(&v365 + 1) = v138;
      *&aBlock.origin.x = MEMORY[0x1E69E9820];
      *&aBlock.origin.y = 1107296256;
      *&aBlock.size.width = sub_188C3DD6C;
      *&aBlock.size.height = &block_descriptor_295;
      v139 = _Block_copy(&aBlock);

      [v346 _animateUsingSpringBehavior_tracking_animations_completion_];
      _Block_release(v139);
      _Block_release(v137);

      swift_unknownObjectRelease();
      v140 = *(v344 + OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimation10Parameters_morphSpring);
      v141 = swift_allocObject();
      swift_unknownObjectUnownedInit();
      v142 = swift_allocObject();
      v143 = v337;
      *&v327 = v142;
      *(v142 + 16) = v141;
      *(v142 + 24) = v143;
      v144 = swift_allocObject();
      v145 = v340;
      *(v144 + 16) = v340;
      *(v144 + 24) = v135;
      v146 = *(v347 + v135);
      *&v365 = sub_188F3675C;
      *(&v365 + 1) = v144;
      *&aBlock.origin.x = MEMORY[0x1E69E9820];
      *&aBlock.origin.y = 1107296256;
      *&aBlock.size.width = sub_188A4A8F0;
      *&aBlock.size.height = &block_descriptor_305_0;
      v147 = _Block_copy(&aBlock);
      swift_retain_n();
      v148 = v135;
      v329 = v145;
      v149 = v143;
      v334 = v141;

      v150 = v146;

      [v150 addCompletion_];
      _Block_release(v147);

      v151 = v140;
      if (!v140)
      {
        v151 = [objc_opt_self() behaviorWithDampingRatio:1.0 response:0.4];
      }

      v152 = swift_allocObject();
      v153 = v327;
      *(v152 + 16) = sub_188F36478;
      *(v152 + 24) = v153;
      *&v365 = sub_188E3FE58;
      *(&v365 + 1) = v152;
      *&aBlock.origin.x = MEMORY[0x1E69E9820];
      *&aBlock.origin.y = 1107296256;
      *&aBlock.size.width = sub_188A4A8F0;
      *&aBlock.size.height = &block_descriptor_312_0;
      v154 = _Block_copy(&aBlock);
      v316 = v140;
      swift_unknownObjectRetain();

      v155 = swift_allocObject();
      swift_unknownObjectWeakInit();
      *&v365 = sub_188E3FE98;
      *(&v365 + 1) = v155;
      *&aBlock.origin.x = MEMORY[0x1E69E9820];
      *&aBlock.origin.y = 1107296256;
      *&aBlock.size.width = sub_188C3DD6C;
      *&aBlock.size.height = &block_descriptor_317;
      v156 = _Block_copy(&aBlock);

      [v346 _animateUsingSpringBehavior_tracking_animations_completion_];
      _Block_release(v156);
      _Block_release(v154);

      swift_unknownObjectRelease();
      v157 = objc_opt_self();
      v158 = [v157 behaviorWithDampingRatio:0.8 response:0.4];
      v159 = swift_allocObject();
      swift_unknownObjectUnownedInit();
      v160 = swift_allocObject();
      v161 = v344;
      *(v160 + 16) = v159;
      *(v160 + 24) = v161;
      v162 = *(v347 + v345);

      v163 = v161;
      [v162 increment];
      v164 = v158;
      v341 = v148;
      if (!v158)
      {
        v164 = [v157 behaviorWithDampingRatio:1.0 response:0.4];
      }

      v165 = swift_allocObject();
      *(v165 + 16) = sub_188F36480;
      *(v165 + 24) = v160;
      *&v365 = sub_188E3FE58;
      *(&v365 + 1) = v165;
      *&aBlock.origin.x = MEMORY[0x1E69E9820];
      *&aBlock.origin.y = 1107296256;
      *&aBlock.size.width = sub_188A4A8F0;
      *&aBlock.size.height = &block_descriptor_330;
      v166 = _Block_copy(&aBlock);
      v334 = v157;

      v167 = v158;

      v168 = swift_allocObject();
      swift_unknownObjectWeakInit();
      *&v365 = sub_188E3FE98;
      *(&v365 + 1) = v168;
      *&aBlock.origin.x = MEMORY[0x1E69E9820];
      *&aBlock.origin.y = 1107296256;
      *&aBlock.size.width = sub_188C3DD6C;
      *&aBlock.size.height = &block_descriptor_335;
      v169 = _Block_copy(&aBlock);

      [v346 _animateUsingSpringBehavior_tracking_animations_completion_];
      v170 = v169;
      v171 = v334;
      _Block_release(v170);
      _Block_release(v166);

      swift_unknownObjectRelease();
      v172 = [v171 behaviorWithDampingRatio:0.6 response:1.0];
      v173 = swift_allocObject();
      swift_unknownObjectUnownedInit();
      v174 = swift_allocObject();
      *(v174 + 16) = v173;
      *(v174 + 24) = v163;
      v175 = v347;
      v176 = *(v347 + v345);
      *&v344 = v163;

      [v176 increment];
      v177 = v172;
      if (!v172)
      {
        v177 = [v171 behaviorWithDampingRatio:1.0 response:0.4];
      }

      v178 = swift_allocObject();
      *(v178 + 16) = sub_188F36488;
      *(v178 + 24) = v174;
      *&v365 = sub_188E3FE58;
      *(&v365 + 1) = v178;
      *&aBlock.origin.x = MEMORY[0x1E69E9820];
      *&aBlock.origin.y = 1107296256;
      *&aBlock.size.width = sub_188A4A8F0;
      *&aBlock.size.height = &block_descriptor_346;
      v179 = _Block_copy(&aBlock);

      v180 = v172;

      v181 = swift_allocObject();
      swift_unknownObjectWeakInit();
      *&v365 = sub_188E3FE98;
      *(&v365 + 1) = v181;
      *&aBlock.origin.x = MEMORY[0x1E69E9820];
      *&aBlock.origin.y = 1107296256;
      *&aBlock.size.width = sub_188C3DD6C;
      *&aBlock.size.height = &block_descriptor_351;
      v182 = _Block_copy(&aBlock);

      [v346 _animateUsingSpringBehavior_tracking_animations_completion_];
      _Block_release(v182);
      _Block_release(v179);

      swift_unknownObjectRelease();
      v183 = *(v344 + OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimation10Parameters_positionXSpring);
      v184 = swift_allocObject();
      swift_unknownObjectUnownedInit();
      v185 = swift_allocObject();
      v185[2] = v184;
      v185[3] = v112;
      v185[4] = v114;
      v186 = *(v175 + v345);

      [v186 increment];
      v187 = v183;
      width_low = LOBYTE(v342.width);
      if (!v183)
      {
        v187 = [v334 behaviorWithDampingRatio:1.0 response:0.4];
      }

      v189 = swift_allocObject();
      *(v189 + 16) = sub_188F36490;
      *(v189 + 24) = v185;
      *&v365 = sub_188E3FE58;
      *(&v365 + 1) = v189;
      *&aBlock.origin.x = MEMORY[0x1E69E9820];
      *&aBlock.origin.y = 1107296256;
      *&aBlock.size.width = sub_188A4A8F0;
      *&aBlock.size.height = &block_descriptor_362;
      v190 = _Block_copy(&aBlock);
      swift_unknownObjectRetain();

      v191 = swift_allocObject();
      swift_unknownObjectWeakInit();
      *&v365 = sub_188E3FE98;
      *(&v365 + 1) = v191;
      *&aBlock.origin.x = MEMORY[0x1E69E9820];
      *&aBlock.origin.y = 1107296256;
      *&aBlock.size.width = sub_188C3DD6C;
      *&aBlock.size.height = &block_descriptor_367;
      v192 = _Block_copy(&aBlock);

      v193 = v346;
      [v346 _animateUsingSpringBehavior_tracking_animations_completion_];
      _Block_release(v192);
      _Block_release(v190);

      swift_unknownObjectRelease();
      v194 = *(v344 + OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimation10Parameters_positionYSpring);
      v195 = swift_allocObject();
      swift_unknownObjectUnownedInit();
      v196 = swift_allocObject();
      v196[2] = v195;
      v196[3] = v112;
      v196[4] = v114;
      v197 = *(v347 + v345);

      [v197 increment];
      v198 = v194;
      if (!v194)
      {
        v198 = [v334 behaviorWithDampingRatio:1.0 response:0.4];
      }

      v199 = swift_allocObject();
      *(v199 + 16) = sub_188F3649C;
      *(v199 + 24) = v196;
      *&v365 = sub_188E3FE58;
      *(&v365 + 1) = v199;
      *&aBlock.origin.x = MEMORY[0x1E69E9820];
      *&aBlock.origin.y = 1107296256;
      *&aBlock.size.width = sub_188A4A8F0;
      *&aBlock.size.height = &block_descriptor_378_0;
      v200 = _Block_copy(&aBlock);
      swift_unknownObjectRetain();

      v201 = swift_allocObject();
      v202 = v341;
      swift_unknownObjectWeakInit();
      *&v365 = sub_188E3FE98;
      *(&v365 + 1) = v201;
      *&aBlock.origin.x = MEMORY[0x1E69E9820];
      *&aBlock.origin.y = 1107296256;
      *&aBlock.size.width = sub_188C3DD6C;
      *&aBlock.size.height = &block_descriptor_383;
      v203 = _Block_copy(&aBlock);

      [v193 _animateUsingSpringBehavior_tracking_animations_completion_];
      _Block_release(v203);
      _Block_release(v200);

      swift_unknownObjectRelease();
      v204 = *(v344 + OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimation10Parameters_transformSpring);
      v205 = swift_allocObject();
      swift_unknownObjectUnownedInit();
      *&v343.x = OBJC_IVAR____UIMagicMorphAnimation_currentItem;
      v206 = *(v202 + OBJC_IVAR____UIMagicMorphAnimation_currentItem);
      v207 = swift_allocObject();
      v209 = v338;
      v208 = v339;
      v207[2] = v205;
      v207[3] = v208;
      v210 = v336;
      v207[4] = v206;
      v207[5] = v210;
      v207[6] = v209;
      v211 = *(v347 + v345);
      v212 = v206;
      v213 = v209;
      v214 = v208;
      v215 = v212;

      v216 = v210;
      [v211 increment];
      v217 = v204;
      if (!v204)
      {
        v217 = [v334 behaviorWithDampingRatio:1.0 response:0.4];
      }

      v218 = swift_allocObject();
      *(v218 + 16) = sub_188F364FC;
      *(v218 + 24) = v207;
      *&v365 = sub_188E3FE58;
      *(&v365 + 1) = v218;
      *&aBlock.origin.x = MEMORY[0x1E69E9820];
      *&aBlock.origin.y = 1107296256;
      *&aBlock.size.width = sub_188A4A8F0;
      *&aBlock.size.height = &block_descriptor_394;
      v219 = _Block_copy(&aBlock);
      swift_unknownObjectRetain();

      v220 = swift_allocObject();
      v221 = v341;
      swift_unknownObjectWeakInit();
      *&v365 = sub_188E3FE98;
      *(&v365 + 1) = v220;
      *&aBlock.origin.x = MEMORY[0x1E69E9820];
      *&aBlock.origin.y = 1107296256;
      *&aBlock.size.width = sub_188C3DD6C;
      *&aBlock.size.height = &block_descriptor_399_0;
      v222 = _Block_copy(&aBlock);

      [v346 _animateUsingSpringBehavior_tracking_animations_completion_];
      _Block_release(v222);
      _Block_release(v219);

      swift_unknownObjectRelease();
      v223 = *&v328[v330];
      sub_18923B914(&v350);

      v224 = v350;
      a1 = v221;
      v225 = v329;
      if (v350 != 2)
      {
        v356 = v350;
        v357 = v351;
        v358 = v352;
        v359[0] = v353[0];
        *(v359 + 10) = *(v353 + 10);
        v226 = *&v221[*&v343.x];
        if (!v226 || (v227 = *(v226 + OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimationP33_27010C79BBE8436D7F6A5CD454B184E54Item_preview), sub_18923B914(v354), v342 = v354[1], v343 = v354[0], v336 = v354[2], v327 = v354[3], v228 = v355, v227, LOBYTE(v343.x) == 2) || (v361 = v351, v362 = v352, v363[0] = v353[0], *(v363 + 10) = *(v353 + 10), v360 = v224, aBlock.origin = v343, aBlock.size = v342, v365 = v336, v366 = v327, v367 = v228, (sub_1890844B4(&v360, &aBlock) & 1) == 0))
        {
          if (!v316)
          {
            goto LABEL_115;
          }

          objc_opt_self();
          v229 = swift_dynamicCastObjCClassUnconditional();
          sub_189082DE4(&v356, v229);
        }
      }

      v230 = *&v225[OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimationP33_27010C79BBE8436D7F6A5CD454B184E54Item_alongsideAnimations];
      if (v230)
      {
        v231 = *&v225[OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimationP33_27010C79BBE8436D7F6A5CD454B184E54Item_alongsideAnimations + 8];

        v232 = v334;
        v233 = [v334 behaviorWithDampingRatio:1.0 response:0.35];
        [*(v347 + v345) increment];
        v234 = v233;
        if (!v233)
        {
          v234 = [v232 behaviorWithDampingRatio:1.0 response:0.4];
        }

        v235 = swift_allocObject();
        *(v235 + 16) = v230;
        *(v235 + 24) = v231;
        *&v349.tx = sub_188E3FE58;
        *&v349.ty = v235;
        *&v349.a = MEMORY[0x1E69E9820];
        *&v349.b = 1107296256;
        *&v349.c = sub_188A4A8F0;
        *&v349.d = &block_descriptor_428;
        v236 = _Block_copy(&v349);
        sub_188D738F4(v230, v231);
        v237 = v233;

        v238 = swift_allocObject();
        swift_unknownObjectWeakInit();
        *&v349.tx = sub_188E3FE98;
        *&v349.ty = v238;
        *&v349.a = MEMORY[0x1E69E9820];
        *&v349.b = 1107296256;
        *&v349.c = sub_188C3DD6C;
        *&v349.d = &block_descriptor_433;
        v239 = _Block_copy(&v349);

        [v346 _animateUsingSpringBehavior_tracking_animations_completion_];
        _Block_release(v239);
        _Block_release(v236);

        swift_unknownObjectRelease();
        sub_188A55B8C(v230, v231);
        v225 = v329;
      }

      if (UIAccessibilityPrefersCrossFadeTransitions())
      {
        goto LABEL_81;
      }

      if (a1[OBJC_IVAR____UIMagicMorphAnimation_reparentsDuringMorph] != 1)
      {
        goto LABEL_81;
      }

      if ((v331 & 1) == 0)
      {
        goto LABEL_81;
      }

      v259 = *&a1[OBJC_IVAR____UIMagicMorphAnimation_currentReparentingItem];
      if (!v259)
      {
        goto LABEL_81;
      }

      v260 = OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimationP33_27010C79BBE8436D7F6A5CD454B184E54Item_reparentingView;
      v261 = *&v259[OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimationP33_27010C79BBE8436D7F6A5CD454B184E54Item_reparentingView];
      v262 = *&v225[OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimationP33_27010C79BBE8436D7F6A5CD454B184E54Item_reparentingView];
      if (v261)
      {
        if (!v262)
        {
          v268 = v259;
          goto LABEL_98;
        }

        type metadata accessor for _UIReparentingView();
        v263 = v259;
        v264 = v262;
        v265 = v261;
        v266 = sub_18A4A7C88();

        if (v266)
        {

          goto LABEL_81;
        }

        v261 = *&v259[v260];
        if (v261)
        {
LABEL_98:
          [v261 setUserInteractionEnabled_];
        }
      }

      else
      {
        if (!v262)
        {
          goto LABEL_81;
        }

        v267 = v259;
      }

      v269 = *&v225[v260];
      v270 = v344;
      if (v269)
      {
        [v269 setUserInteractionEnabled_];
      }

      v271 = *(v270 + OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimation10Parameters_reparentingOptions);
      v272 = *(v270 + OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimation10Parameters_reparentingOptions + 8);
      v273 = swift_allocObject();
      *(v273 + 16) = v259;
      *(v273 + 24) = v225;
      *(v273 + 32) = v272;
      if (v272 == 1)
      {
        v274 = v225;
        v275 = v259;
        v276 = &selRef_imageGlyphCompositionalLayout;
      }

      else
      {
        v277 = OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimationP33_27010C79BBE8436D7F6A5CD454B184E54Item_preview;
        v278 = *&v259[OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimationP33_27010C79BBE8436D7F6A5CD454B184E54Item_preview];
        v279 = v225;
        v280 = v259;
        [v278 size];
        v282 = v281;
        v284 = v283;
        v285 = [*&v259[v277] target];
        [v285 transform];
        v343 = *&v349.c;
        v344 = *&v349.a;
        v342 = *&v349.tx;

        *&v349.a = v344;
        *&v349.c = v343;
        *&v349.tx = v342;
        v368.width = v282;
        v368.height = v284;
        v286 = CGSizeApplyAffineTransform(v368, &v349);
        v287 = v328;
        v288 = v330;
        [*&v328[v330] size];
        v290 = v289;
        v292 = v291;
        v293 = [*&v287[v288] target];
        [v293 transform];
        v343 = *&v349.c;
        v344 = *&v349.a;
        v342 = *&v349.tx;

        *&v349.a = v344;
        *&v349.c = v343;
        *&v349.tx = v342;
        v369.width = v290;
        v369.height = v292;
        v294 = CGSizeApplyAffineTransform(v369, &v349);
        v276 = &selRef_imageGlyphCompositionalLayout;
        if (v286.width * v286.height >= v294.width * v294.height)
        {
          sub_188A34624(0, &qword_1ED490540, 0x1E69E9610);
          *&v344 = sub_18A4A7A68();
          v300 = v317;
          sub_18A4A6E68();
          UIAnimationDragCoefficient();
          sub_18A4A6EB8();
          v346 = *(v318 + 8);
          (v346)(v300, v326);
          v301 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v302 = swift_allocObject();
          v302[2] = v301;
          v302[3] = v271;
          v302[4] = sub_188F36514;
          v302[5] = v273;
          *&v349.tx = sub_188F36520;
          *&v349.ty = v302;
          *&v349.a = MEMORY[0x1E69E9820];
          *&v349.b = 1107296256;
          *&v349.c = sub_188A4A8F0;
          *&v349.d = &block_descriptor_409;
          v303 = _Block_copy(&v349);
          swift_unknownObjectRetain();

          v304 = v319;
          sub_18A4A6E38();
          *&v349.a = MEMORY[0x1E69E7CC0];
          sub_188D7609C();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA935AC0, &qword_18A64F960);
          sub_188BA3728();
          v305 = v280;
          v306 = v321;
          v307 = v324;
          sub_18A4A7EB8();
          v308 = v325;
          v309 = v344;
          MEMORY[0x18CFE2990](v325, v304, v306, v303);
          _Block_release(v303);

          (*(v323 + 8))(v306, v307);
          v320[1](v304, v322);
          (v346)(v308, v326);
          goto LABEL_81;
        }
      }

      v295 = *(v347 + v345);
      swift_unknownObjectRetain();
      [v295 v276[153]];
      v296 = swift_allocObject();
      *(v296 + 16) = sub_188F36514;
      *(v296 + 24) = v273;
      *&v349.tx = sub_188E3FE58;
      *&v349.ty = v296;
      *&v349.a = MEMORY[0x1E69E9820];
      *&v349.b = 1107296256;
      *&v349.c = sub_188A4A8F0;
      *&v349.d = &block_descriptor_416;
      v297 = _Block_copy(&v349);
      swift_unknownObjectRetain();

      v298 = swift_allocObject();
      swift_unknownObjectWeakInit();
      *&v349.tx = sub_188E3FE98;
      *&v349.ty = v298;
      *&v349.a = MEMORY[0x1E69E9820];
      *&v349.b = 1107296256;
      *&v349.c = sub_188C3DD6C;
      *&v349.d = &block_descriptor_421_0;
      v299 = _Block_copy(&v349);

      [v346 _animateUsingSpringBehavior_tracking_animations_completion_];
      _Block_release(v299);
      _Block_release(v297);

      swift_unknownObjectRelease_n();
LABEL_81:
      [*(v347 + v345) complete];
      v240 = 0;
      v241 = 0;
      v242 = v332;
      goto LABEL_86;
    }

    v243 = sub_188D845C8();
    v244 = [objc_opt_self() mainRunLoop];
    [v243 addToRunLoop:v244 forMode:*MEMORY[0x1E695DA28]];

    v245 = *(v32 + OBJC_IVAR____UIMagicMorphAnimation____lazy_storage___geometryTrackingDisplayLink);
    LOBYTE(aBlock.origin.x) = 1;
    sub_18A4A79D8();
    [v245 setPreferredFrameRateRange_];

    v347 = objc_opt_self();
    v241 = swift_allocObject();
    v246 = v335;
    v241[2] = v32;
    v241[3] = v246;
    v241[4] = v15;
    v241[5] = v37;
    v241[6] = v104;
    v42 = v104;
    v40 = swift_allocObject();
    *(v40 + 16) = sub_188F36584;
    *(v40 + 24) = v241;
    *&v365 = sub_188E3FE50;
    *(&v365 + 1) = v40;
    *&aBlock.origin.x = MEMORY[0x1E69E9820];
    *&aBlock.origin.y = 1107296256;
    *&aBlock.size.width = sub_188A4A968;
    *&aBlock.size.height = &block_descriptor_443;
    a1 = _Block_copy(&aBlock);
    v34 = *(&v365 + 1);
    v247 = v32;
    v248 = v15;
    v249 = v37;
    v250 = v42;

    v251 = v246;

    [v347 performWithoutAnimation_];
    _Block_release(a1);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      break;
    }

    __break(1u);
LABEL_111:
    __break(1u);
LABEL_112:

    v43 = sub_188E49688(v42, v40);
  }

  v252 = *&v340[OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimationP33_27010C79BBE8436D7F6A5CD454B184E54Item_completion];
  v242 = v332;
  if (v252)
  {
    v253 = *&v340[OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimationP33_27010C79BBE8436D7F6A5CD454B184E54Item_completion + 8];

    v252(v254);
    sub_188A55B8C(v252, v253);
  }

  v240 = sub_188F36584;
LABEL_86:
  v255 = v337;
  v256 = v333;
  v257 = v340;
  v258 = v340;
  sub_188D7B348(v257);

  sub_188A55B8C(v242, v256);
  sub_188A55B8C(v240, v241);
}