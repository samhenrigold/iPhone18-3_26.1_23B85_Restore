uint64_t sub_1A3DA2E04(uint64_t a1)
{
  sub_1A3C8C10C(&unk_1EB1208B0, &unk_1A5304050);
  sub_1A3C8C10C(&qword_1EB135B70, &unk_1A530E760);

  return sub_1A524E7E4();
}

void sub_1A3DA2F10(uint64_t a1)
{
  if (!qword_1EB12C170)
  {
    sub_1A3DA2F78(255);
    sub_1A3DA3064();
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB12C170);
    }
  }
}

void sub_1A3DA2F78(uint64_t a1)
{
  if (!qword_1EB12C178)
  {
    sub_1A5249F24();
    sub_1A5249F14();
    sub_1A3DA32BC(&qword_1EB12C180, MEMORY[0x1E697CBC0], MEMORY[0x1E697CBB8]);
    sub_1A3DA32BC(&qword_1EB12C188, MEMORY[0x1E697CBB0], MEMORY[0x1E697CBA8]);
    v1 = sub_1A5248094();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB12C178);
    }
  }
}

void sub_1A3DA3064()
{
  if (!qword_1EB127B10)
  {
    v0 = sub_1A5249C54();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB127B10);
    }
  }
}

void sub_1A3DA30BC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1A5249F34();
  v5 = MEMORY[0x1EEE9AC00](v4);
  (*(v7 + 16))(&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5);
  sub_1A52480A4();
  v8 = sub_1A524B3D4();
  v9 = sub_1A524A064();
  sub_1A3DA2F10(0);
  v11 = a2 + *(v10 + 36);
  *v11 = v8;
  *(v11 + 8) = v9;
}

unint64_t sub_1A3DA31DC()
{
  result = qword_1EB12C190;
  if (!qword_1EB12C190)
  {
    sub_1A3DA2F10(255);
    sub_1A3DA32BC(&qword_1EB12C198, sub_1A3DA2F78, MEMORY[0x1E697BF38]);
    sub_1A3DA32BC(&qword_1EB127B20, sub_1A3DA3064, MEMORY[0x1E6980468]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12C190);
  }

  return result;
}

uint64_t sub_1A3DA32BC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1A3DA3304(uint64_t a1)
{
  if (!qword_1EB13AE60)
  {
    sub_1A3C52C70(255, &qword_1EB12C1B0, off_1E771F698);
    v1 = sub_1A524CB74();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13AE60);
    }
  }
}

char *sub_1A3DA336C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1A3C38BD4(0xD000000000000031);
  sub_1A3C38BD4(0xD000000000000029);
  v38 = a2;
  v39 = a3;
  v40 = a4;
  sub_1A3DA4238(0, &unk_1EB12C1A0, MEMORY[0x1E6981948]);
  MEMORY[0x1A5906C60](&v37);
  v8 = v37;
  v9 = v37 & 0xFFFFFFFFFFFFFF8;
  if (!(v37 >> 62))
  {
    v10 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_22:
    v12 = MEMORY[0x1E69E7CC0];
    goto LABEL_23;
  }

LABEL_21:
  v10 = sub_1A524E2B4();
  if (!v10)
  {
    goto LABEL_22;
  }

LABEL_3:
  v11 = 0;
  v12 = MEMORY[0x1E69E7CC0];
  do
  {
    v13 = v11;
    while (1)
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x1A59097F0](v13, v8);
      }

      else
      {
        if (v13 >= *(v9 + 16))
        {
          goto LABEL_20;
        }

        v14 = *(v8 + 8 * v13 + 32);
      }

      v15 = v14;
      v11 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v16 = PXSharedAlbumsAddressForParticipant(v14);
      if (v16)
      {
        break;
      }

      ++v13;
      if (v11 == v10)
      {
        goto LABEL_23;
      }
    }

    v17 = v16;
    v36 = a1;
    v18 = sub_1A524C674();
    v20 = v19;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = sub_1A3D3D914(0, *(v12 + 2) + 1, 1, v12);
    }

    v22 = *(v12 + 2);
    v21 = *(v12 + 3);
    if (v22 >= v21 >> 1)
    {
      v12 = sub_1A3D3D914((v21 > 1), v22 + 1, 1, v12);
    }

    *(v12 + 2) = v22 + 1;
    v23 = &v12[16 * v22];
    *(v23 + 4) = v18;
    *(v23 + 5) = v20;
    a1 = v36;
  }

  while (v11 != v10);
LABEL_23:

  v24 = sub_1A3C4467C(v12);

  result = [objc_opt_self() maxSubscribersPerStream];
  v26 = *(v24 + 16);
  v27 = __OFSUB__(result, v26);
  v28 = &result[-v26];
  if (v27)
  {
    __break(1u);
  }

  else
  {
    v29 = v28 & ~(v28 >> 63);
    v30 = objc_opt_self();
    v31 = sub_1A524C634();

    v32 = sub_1A524C634();

    v33 = sub_1A524CF34();

    sub_1A3DA4164(0);
    sub_1A5249FD4();
    v34 = v38;
    v35 = [v30 recipientPickerViewControllerWithTitle:v31 toLabel:v32 usedAddresses:v33 maxRecipients:v29 verificationType:0 delegate:v38];

    return v35;
  }

  return result;
}

id sub_1A3DA369C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = &v7[OBJC_IVAR____TtCV12PhotosUICore27SharedAlbumSubscriberPicker38SharedAlbumSubscriberPickerCoordinator_subscriberPicker];
  *v8 = a1;
  *(v8 + 1) = a2;
  *(v8 + 2) = a3;
  v10.receiver = v7;
  v10.super_class = v3;
  return objc_msgSendSuper2(&v10, sel_init);
}

void sub_1A3DA3704()
{
  swift_beginAccess();

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

double sub_1A3DA377C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = (v3 + OBJC_IVAR____TtCV12PhotosUICore27SharedAlbumSubscriberPicker38SharedAlbumSubscriberPickerCoordinator_subscriberPicker);
  swift_beginAccess();
  *v7 = a1;
  v7[1] = a2;
  v7[2] = a3;

  return result;
}

id sub_1A3DA3860(void *a1, unint64_t a2, __n128 a3)
{
  if (a2 >> 62)
  {
    goto LABEL_34;
  }

  if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    while ((a2 & 0xC000000000000001) == 0)
    {
      if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v4 = *(a2 + 32);
        goto LABEL_6;
      }

      __break(1u);
LABEL_34:
      if (!sub_1A524E2B4())
      {
        return [a1 dismissViewControllerAnimated:1 completion:{0, a3.n128_f64[0]}];
      }
    }

    v4 = MEMORY[0x1A59097F0](0, a2);
LABEL_6:
    v5 = v4;
    v6 = [v4 emailAddressString];
    if (v6)
    {
      v7 = v6;
      v8 = sub_1A524C674();
      v10 = v9;

      sub_1A3D9E6B8();
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_1A52F8E10;
      *(v11 + 32) = v8;
      *(v11 + 40) = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = [v5 phoneNumberString];
    if (v12)
    {
      v13 = v12;
      v14 = sub_1A524C674();
      v16 = v15;

      sub_1A3D9E6B8();
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_1A52F8E10;
      *(v17 + 32) = v14;
      *(v17 + 40) = v16;
    }

    else
    {
      v17 = 0;
    }

    v18 = [v5 firstName];
    if (v18)
    {
      v19 = v18;
      sub_1A524C674();
      v21 = v20;
    }

    else
    {
      v21 = 0;
    }

    v22 = [v5 lastName];
    if (v22)
    {
      v23 = v22;
      sub_1A524C674();
      v25 = v24;
    }

    else
    {
      v25 = 0;
    }

    v26 = [v5 localizedName];
    if (v26)
    {
      v27 = v26;
      sub_1A524C674();
      v29 = v28;

      if (v21)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v29 = 0;
      if (v21)
      {
LABEL_20:
        v30 = sub_1A524C634();

        if (v25)
        {
          goto LABEL_21;
        }

        goto LABEL_27;
      }
    }

    v30 = 0;
    if (v25)
    {
LABEL_21:
      v31 = sub_1A524C634();

      if (v29)
      {
        goto LABEL_22;
      }

      goto LABEL_28;
    }

LABEL_27:
    v31 = 0;
    if (v29)
    {
LABEL_22:
      v32 = sub_1A524C634();

      if (v11)
      {
        goto LABEL_23;
      }

      goto LABEL_29;
    }

LABEL_28:
    v32 = 0;
    if (v11)
    {
LABEL_23:
      v33 = sub_1A524CA14();

      if (v17)
      {
LABEL_24:
        v34 = sub_1A524CA14();

        goto LABEL_31;
      }

LABEL_30:
      v34 = 0;
LABEL_31:
      LOWORD(v38) = 1;
      v35 = [objc_allocWithZone(PXSharedAlbumParticipant) initWithPersonID:0 firstName:v30 lastName:v31 fullName:v32 emails:v33 phones:v34 acceptanceStatus:v38];

      (*((*MEMORY[0x1E69E7D40] & *v40) + 0x58))();
      sub_1A3DA4238(0, &unk_1EB12C1A0, MEMORY[0x1E6981948]);
      v36 = v35;

      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

LABEL_29:
    v33 = 0;
    if (v17)
    {
      goto LABEL_24;
    }

    goto LABEL_30;
  }

  return [a1 dismissViewControllerAnimated:1 completion:{0, a3.n128_f64[0]}];
}

id sub_1A3DA3E0C(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for SharedAlbumSubscriberPicker.SharedAlbumSubscriberPickerCoordinator(a1, a2);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_1A3DA3E9C(uint64_t x0_0, uint64_t a2)
{
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = type metadata accessor for SharedAlbumSubscriberPicker.SharedAlbumSubscriberPickerCoordinator(x0_0, a2);
  v8 = objc_allocWithZone(v7);
  v9 = &v8[OBJC_IVAR____TtCV12PhotosUICore27SharedAlbumSubscriberPicker38SharedAlbumSubscriberPickerCoordinator_subscriberPicker];
  *v9 = v4;
  *(v9 + 1) = v5;
  *(v9 + 2) = v6;
  v10 = v8;
  v11 = v7;

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A3DA3F30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A3DA41C0();

  return MEMORY[0x1EEDDB778](a1, a2, a3, v6);
}

uint64_t sub_1A3DA3F94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A3DA41C0();

  return MEMORY[0x1EEDDB740](a1, a2, a3, v6);
}

void sub_1A3DA3FF8(uint64_t a1)
{
  sub_1A3DA41C0();
  sub_1A5249ED4();
  __break(1u);
}

__n128 sub_1A3DA4020@<Q0>(uint64_t a1@<X8>)
{
  v3 = MEMORY[0x1E69E7CC0];
  sub_1A3DA3304(0);
  sub_1A524B694();
  sub_1A3DA4238(0, &qword_1EB12C1D0, MEMORY[0x1E6981790]);
  sub_1A524B6C4();

  result = v4;
  *a1 = v3;
  *(a1 + 8) = v4;
  return result;
}

uint64_t sub_1A3DA40CC(uint64_t a1)
{
  v2 = sub_1A3DA440C();

  return MEMORY[0x1EEDD9FE8](a1, v2);
}

uint64_t sub_1A3DA4118(uint64_t a1)
{
  v2 = sub_1A3DA440C();

  return MEMORY[0x1EEDD9FE0](a1, v2);
}

void sub_1A3DA4164(uint64_t a1)
{
  if (!qword_1EB12C1B8)
  {
    sub_1A3DA41C0();
    v1 = sub_1A5249FF4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB12C1B8);
    }
  }
}

unint64_t sub_1A3DA41C0()
{
  result = qword_1EB12C1C0;
  if (!qword_1EB12C1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12C1C0);
  }

  return result;
}

void sub_1A3DA4238(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1A3DA3304(255);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1A3DA429C()
{
  result = qword_1EB12C1D8;
  if (!qword_1EB12C1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12C1D8);
  }

  return result;
}

unint64_t sub_1A3DA42F4()
{
  result = qword_1EB12C1E0;
  if (!qword_1EB12C1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12C1E0);
  }

  return result;
}

uint64_t sub_1A3DA4364(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A3DA43AC(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_1A3DA440C()
{
  result = qword_1EB12C1F8;
  if (!qword_1EB12C1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12C1F8);
  }

  return result;
}

uint64_t sub_1A3DA44A8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12PhotosUICore23PXEditAutomationManager__collectAssetObserver;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

uint64_t sub_1A3DA45A8(uint64_t a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1A3DA4608(uint64_t *a1))(void **a1, char a2)
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
  v5 = OBJC_IVAR____TtC12PhotosUICore23PXEditAutomationManager__automationDelegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1A3DA46A0;
}

void sub_1A3DA46A0(void **a1, char a2)
{
  v3 = *a1;
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

char *sub_1A3DA4720(uint64_t a1)
{
  v2 = objc_allocWithZone(v1);
  *&v2[OBJC_IVAR____TtC12PhotosUICore23PXEditAutomationManager__collectAssetObserver] = 0;
  swift_unknownObjectWeakInit();
  v6.receiver = v2;
  v6.super_class = v1;
  v3 = objc_msgSendSuper2(&v6, sel_init);
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v4 = v3;
  sub_1A3DA4A14();

  swift_unknownObjectRelease();
  return v4;
}

id sub_1A3DA47D4()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x60))();
  if (v2)
  {
    v4 = v2;
    v5 = [objc_opt_self() defaultCenter];
    [v5 removeObserver_];

    (*((*v1 & *v0) + 0x68))(0);
    v2 = swift_unknownObjectRelease();
  }

  v7.receiver = v0;
  v7.super_class = type metadata accessor for PXEditAutomationManager(v2, v3);
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

void sub_1A3DA4A14()
{
  v1 = sub_1A524C634();
  v2 = [objc_opt_self() defaultCenter];
  v3 = objc_opt_self();
  v4 = v1;
  v5 = [v3 mainQueue];
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9[4] = sub_1A3DA4C20;
  v9[5] = v6;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1A3C7C848;
  v9[3] = &block_descriptor_12;
  v7 = _Block_copy(v9);

  v8 = [v2 addObserverForName:v4 object:0 queue:v5 usingBlock:v7];
  _Block_release(v7);

  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x68))(v8);
}

id sub_1A3DA4C5C(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for PhotosDetailsTimeWidgetView(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = (&v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for PhotosDetailsTimeWidgetViewModel(0);
  v7 = MEMORY[0x1E69E7D40];
  v8 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x108);
  v9 = a1;
  v10 = v8();
  v11 = (*((*v7 & *v2) + 0xA8))();
  v12 = sub_1A3E94328(v9, v10, v11);
  v13 = *((*v7 & *v2) + 0xE0);
  v14 = v12;
  v13(v12);
  sub_1A3DA4DF4(0);
  v15 = v14;
  sub_1A46451D4(v15, v6);
  v16 = PXSecureLockscreenSwiftUIHostingController.__allocating_init(rootView:)(v6);

  return v16;
}

void sub_1A3DA4DF4(uint64_t a1)
{
  if (!qword_1EB1293B8)
  {
    v2 = type metadata accessor for PhotosDetailsTimeWidgetView(255);
    v3 = sub_1A3DA4E58();
    v5 = type metadata accessor for PXSecureLockscreenSwiftUIHostingController(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_1EB1293B8);
    }
  }
}

unint64_t sub_1A3DA4E58()
{
  result = qword_1EB12AB48;
  if (!qword_1EB12AB48)
  {
    type metadata accessor for PhotosDetailsTimeWidgetView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12AB48);
  }

  return result;
}

double sub_1A3DA4EB0()
{
  v1 = sub_1A52486A4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PhotosDetailsTimeWidgetView(0);
  v6 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x108))();
  v7 = [v6 contentSizeCategory];

  sub_1A412028C(v7, v4);
  v8 = sub_1A4394B64(v4, v5, &off_1EE6E6C90);
  (*(v2 + 8))(v4, v1);
  return v8;
}

id sub_1A3DA51F8(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for PhotosDetailsTimeWidget(a1, a2);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void PhotosSearchResults.allResultAssetUUIDs.getter()
{
  type metadata accessor for PhotosSearchResults(0);

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void PhotosSearchResults.matchedContextualVideoThumbnailIdentifiers.getter()
{
  type metadata accessor for PhotosSearchResults(0);

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A3DA5294()
{
  result = type metadata accessor for PhotosSearchResults(0);
  v2 = *(v0 + *(result + 28));
  if (!*(v2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = 1 << *(v2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v2 + 64);
  v7 = (v4 + 63) >> 6;
  while (v6)
  {
    v8 = v3;
LABEL_11:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    if (*(*(*(v2 + 56) + ((v8 << 9) | (8 * v9))) + 16))
    {
      return 1;
    }
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= v7)
    {
      return 0;
    }

    v6 = *(v2 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A3DA535C()
{
  v1 = type metadata accessor for PhotosSearchResults(0);
  v2 = 0;
  result = 0;
  v4 = *(v0 + *(v1 + 28));
  v5 = 1 << *(v4 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v4 + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = v2;
LABEL_10:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = *(*(*(v4 + 56) + ((v9 << 9) | (8 * v10))) + 16);
    v12 = __OFADD__(result, v11);
    result += v11;
    if (v12)
    {
      __break(1u);
      return result;
    }
  }

  while (1)
  {
    v9 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    if (v9 >= v8)
    {
      return result;
    }

    v7 = *(v4 + 64 + 8 * v9);
    ++v2;
    if (v7)
    {
      v2 = v9;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

void sub_1A3DA541C(char a1)
{
  v3 = sub_1A5243994();
  v32 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v31 = v24 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v30 = v24 - v9;
  sub_1A3C30560(0, &unk_1EB12C270, sub_1A3DA5F68, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v34 = v24 - v12;
  if ((a1 & 1) == 0)
  {
    v13 = type metadata accessor for PhotosSearchResults(0);
    if (*(*(v1 + *(v13 + 24)) + 16))
    {
      v14 = v13;
      v15 = [objc_opt_self() sharedSession];
      v16 = sub_1A524CA14();
      v17 = *(v1 + *(v14 + 52));
      if (v17)
      {
        sub_1A3C52C70(0, &qword_1EB126610, 0x1E696AD98);
        v17 = sub_1A524C3D4();
      }

      [v15 reportTopResultsShown:v16 retrievalTypeMap:v17];
    }
  }

  v18 = type metadata accessor for PhotosSearchResults(0);
  if (*(*(v1 + v18[5]) + 16))
  {
    v19 = [objc_opt_self() sharedSession];
    v20 = sub_1A524CA14();
    v21 = *(v1 + v18[13]);
    if (v21)
    {
      sub_1A3C52C70(0, &qword_1EB126610, 0x1E696AD98);
      v21 = sub_1A524C3D4();
    }

    [v19 reportAllResultsShown:v20 retrievalTypeMap:v21];
  }

  if (sub_1A3DA5294())
  {
    v26 = v5;
    v27 = sub_1A3DAE1F8(MEMORY[0x1E69E7CC0]);
    v22 = *(v1 + v18[8]);
    v28 = v32 + 16;
    v35 = v32 + 32;
    v25 = v32 + 88;
    v24[17] = *MEMORY[0x1E69C2700];
    v24[13] = *MEMORY[0x1E69C26F8];
    v23 = *MEMORY[0x1E69C26E8];
    v24[11] = *MEMORY[0x1E69C2710];
    v24[12] = v23;
    v24[10] = *MEMORY[0x1E69C26E0];
    v24[3] = *MEMORY[0x1E69C26F0];
    v24[2] = *MEMORY[0x1E69C26D0];
    v24[1] = *MEMORY[0x1E69C2708];
    v24[0] = *MEMORY[0x1E69C26D8];
    v33 = v32 + 8;
    v29 = v22;
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }
}

void sub_1A3DA5F68(uint64_t a1)
{
  if (!qword_1EB140640)
  {
    sub_1A5243994();
    sub_1A3C2DCD4(255, &qword_1EB126ED0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB140640);
    }
  }
}

void sub_1A3DA6000(unint64_t a1)
{
  v2 = v1;
  if (qword_1EB15B580 != -1)
  {
    swift_once();
  }

  v4 = sub_1A5246F24();
  __swift_project_value_buffer(v4, qword_1EB15B588);
  v5 = sub_1A5246F04();
  v6 = sub_1A524D244();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1A3C1C000, v5, v6, "Started saving current search", v7, 2u);
    MEMORY[0x1A590EEC0](v7, -1, -1);
  }

  v9 = *(v2 + *(type metadata accessor for PhotosSearchResults(0) + 56));
  if (v9)
  {
    type metadata accessor for PhotosSearchUtilities(0, v8);
    v17 = v9;
    static PhotosSearchUtilities.saveRecentSearch(_:in:)(v17, a1);
    v13 = sub_1A5246F04();
    v14 = sub_1A524D264();
    if (os_log_type_enabled(v13, v14))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_1A3C1C000, v13, v14, "Finished saving current search", v16, 2u);
      MEMORY[0x1A590EEC0](v16, -1, -1);
    }

    v12 = v17;
  }

  else
  {
    oslog = sub_1A5246F04();
    v10 = sub_1A524D244();
    if (os_log_type_enabled(oslog, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1A3C1C000, oslog, v10, "Skipping saving current search: unknown search query", v11, 2u);
      MEMORY[0x1A590EEC0](v11, -1, -1);
    }

    v12 = oslog;
  }
}

void sub_1A3DA633C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A5243994();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v55 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v54 = &v49 - v8;
  sub_1A3C30560(0, &unk_1EB12C270, sub_1A3DA5F68, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14.n128_f64[0] = MEMORY[0x1EEE9AC00](v12);
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v53 = &v49 - v13;
    v15 = 0;
    v16 = a1 + 64;
    v17 = 1 << *(a1 + 32);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & *(a1 + 64);
    v20 = (v17 + 63) >> 6;
    v49 = v5 + 16;
    v50 = a1;
    v57 = v11;
    v58 = (v5 + 32);
    v51 = (v5 + 8);
    v52 = a2;
    while (1)
    {
      if (v19)
      {
        v56 = (v19 - 1) & v19;
        v21 = __clz(__rbit64(v19)) | (v15 << 6);
        goto LABEL_17;
      }

      v22 = v20 <= v15 + 1 ? v15 + 1 : v20;
      v23 = v22 - 1;
      while (1)
      {
        v24 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          goto LABEL_39;
        }

        if (v24 >= v20)
        {
          break;
        }

        v25 = *(v16 + 8 * v24);
        ++v15;
        if (v25)
        {
          v56 = (v25 - 1) & v25;
          v21 = __clz(__rbit64(v25)) | (v24 << 6);
LABEL_17:
          (*(v5 + 16))(v54, *(a1 + 48) + *(v5 + 72) * v21, v4, v14);
          v26 = *(*(a1 + 56) + 8 * v21);
          sub_1A3DA5F68(0);
          v28 = v27;
          v29 = *(v27 + 48);
          v30 = v57;
          (*(v5 + 32))(v57);
          *&v30[v29] = v26;
          (*(*(v28 - 8) + 56))(v30, 0, 1, v28);
          _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
        }
      }

      sub_1A3DA5F68(0);
      v48 = v47;
      (*(*(v47 - 8) + 56))(v11, 1, 1, v47);
      v56 = 0;
      v15 = v23;
      v31 = v53;
      sub_1A3DAE2E4(v11, v53);
      sub_1A3DA5F68(0);
      if ((*(*(v48 - 8) + 48))(v31, 1, v48) == 1)
      {
        break;
      }

      v32 = *(v48 + 48);
      v33 = v55;
      (*v58)(v55, v31, v4);
      v34 = *(v31 + v32);
      v35 = v52;
      v36 = sub_1A3DAC880(v33);
      LOBYTE(v32) = v37;
      (*v51)(v33, v4);
      if ((v32 & 1) == 0 || (v38 = *(*(v35 + 56) + 8 * v36), v39 = *(v38 + 16), v39 != *(v34 + 16)))
      {
LABEL_36:

        return;
      }

      v40 = v5;
      v41 = v4;
      v42 = v50;
      if (v39)
      {
        v43 = v38 == v34;
      }

      else
      {
        v43 = 1;
      }

      if (!v43)
      {
        v44 = (v38 + 40);
        v45 = (v34 + 40);
        while (v39)
        {
          v46 = *(v44 - 1) == *(v45 - 1) && *v44 == *v45;
          if (!v46 && (sub_1A524EAB4() & 1) == 0)
          {
            goto LABEL_36;
          }

          v44 += 2;
          v45 += 2;
          if (!--v39)
          {
            goto LABEL_6;
          }
        }

        __break(1u);
LABEL_39:
        __break(1u);
        return;
      }

LABEL_6:

      a1 = v42;
      v4 = v41;
      v5 = v40;
      v19 = v56;
      v11 = v57;
    }
  }
}

void sub_1A3DA67E8(uint64_t a1, uint64_t a2)
{
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v2 = 1 << *(a1 + 32);
    v3 = -1;
    if (v2 < 64)
    {
      v3 = ~(-1 << v2);
    }

    if ((v3 & *(a1 + 64)) != 0)
    {
LABEL_10:
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    v4 = 0;
    while (1)
    {
      v5 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if (v5 >= ((v2 + 63) >> 6))
      {
        return;
      }

      ++v4;
      if (*(a1 + 64 + 8 * v5))
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1A3DA6968(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v2 = 1 << *(result + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  if ((v3 & *(result + 64)) != 0)
  {
LABEL_10:
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v4 = 0;
  while (1)
  {
    v5 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v5 >= ((v2 + 63) >> 6))
    {
      return 1;
    }

    ++v4;
    if (*(result + 64 + 8 * v5))
    {
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

void sub_1A3DA6B0C(uint64_t a1, uint64_t a2)
{
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v2 = 1 << *(a1 + 32);
    v3 = -1;
    if (v2 < 64)
    {
      v3 = ~(-1 << v2);
    }

    if ((v3 & *(a1 + 64)) != 0)
    {
LABEL_10:
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    v4 = 0;
    while (1)
    {
      v5 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if (v5 >= ((v2 + 63) >> 6))
      {
        return;
      }

      ++v4;
      if (*(a1 + 64 + 8 * v5))
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

id sub_1A3DA6C44()
{
  v1 = [*(v0 + 16) photoLibrary];

  return v1;
}

void sub_1A3DA6C7C(uint64_t a1, uint64_t a2)
{
  v3 = sub_1A5246F24();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C30560(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v22 - v8;
  v10 = sub_1A5240554();
  if (v10)
  {
    v11 = v10;
    v23 = sub_1A524C674();
    v24 = v12;
    sub_1A524E384();
    if (*(v11 + 16) && (v13 = sub_1A3D5C0BC(v25), (v14 & 1) != 0))
    {
      sub_1A3C2F0BC(*(v11 + 56) + 32 * v13, v26);
      sub_1A3D5FAFC(v25);

      sub_1A3DAF588();
      if (swift_dynamicCast())
      {
        v15 = v23;
        v16 = sub_1A524CCB4();
        (*(*(v16 - 8) + 56))(v9, 1, 1, v16);
        v17 = swift_allocObject();
        v17[2] = 0;
        v17[3] = 0;
        v17[4] = a2;
        v17[5] = v15;

        sub_1A3D4D930(0, 0, v9, &unk_1A52FCBA0, v17);

        return;
      }
    }

    else
    {

      sub_1A3D5FAFC(v25);
    }
  }

  v18 = sub_1A45350E8();
  (*(v4 + 16))(v6, v18, v3);
  v19 = sub_1A524D244();
  v20 = sub_1A5246F04();
  if (os_log_type_enabled(v20, v19))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_1A3C1C000, v20, v19, "Failed to get reply handle for update notification", v21, 2u);
    MEMORY[0x1A590EEC0](v21, -1, -1);
  }

  (*(v4 + 8))(v6, v3);
}

uint64_t sub_1A3DA6F90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[84] = a5;
  v5[83] = a4;
  sub_1A3C30560(0, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720]);
  v5[85] = swift_task_alloc();
  v6 = type metadata accessor for PhotosSearchResults(0);
  v5[86] = v6;
  v5[87] = *(v6 - 8);
  v5[88] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A3DA70B0, 0, 0);
}

uint64_t sub_1A3DA70B0(uint64_t a1, uint64_t a2)
{
  v2[81] = MEMORY[0x1E69E7CC0];
  v2[89] = objc_opt_self();
  v2[90] = sub_1A524CC54();
  v2[91] = sub_1A524CC44();
  v4 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A3DA7164, v4, v3);
}

uint64_t sub_1A3DA7164()
{
  v1 = *(v0 + 712);

  *(v0 + 736) = [v1 px_sharedApplication];

  return MEMORY[0x1EEE6DFA0](sub_1A3DA71EC, 0, 0);
}

uint64_t sub_1A3DA71EC(__n128 a1)
{
  *(v1 + 744) = sub_1A524CC44();
  v3 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A3DA7278, v3, v2);
}

uint64_t sub_1A3DA7278()
{
  v1 = *(v0 + 736);

  *(v0 + 752) = [v1 px_firstKeyWindow];

  return MEMORY[0x1EEE6DFA0](sub_1A3DA7304, 0, 0);
}

uint64_t sub_1A3DA7304(__n128 a1)
{
  if (*(v1 + 752))
  {
    *(v1 + 760) = sub_1A524CC44();
    v2 = sub_1A524CBC4();
    v4 = v3;
    v5 = sub_1A3DA7730;
  }

  else
  {
    *(v1 + 808) = 0u;
    sub_1A3DAED90(MEMORY[0x1E69E7CC0]);

    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    *(v1 + 824) = Strong;
    if (!Strong)
    {
      (*(*(v1 + 696) + 56))(*(v1 + 680), 1, 1, *(v1 + 688));
      sub_1A3C330B0(*(v1 + 680), &qword_1EB125F80, type metadata accessor for PhotosSearchResults);
      sub_1A3C30560(0, &qword_1EB1261A0, sub_1A3DAF684, MEMORY[0x1E69E6F90]);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1A52F8E10;
      *(v1 + 568) = 1868983913;
      *(v1 + 576) = 0xE400000000000000;
      v9 = MEMORY[0x1E69E6158];
      sub_1A524E384();
      *(inited + 96) = v9;
      *(inited + 72) = 0xD00000000000001ALL;
      *(inited + 80) = 0x80000001A53B66E0;
      v10 = sub_1A3DAED90(inited);
      swift_setDeallocating();
      sub_1A3DAF48C(inited + 32, sub_1A3DAF684);
      v11 = swift_initStackObject();
      *(v11 + 16) = xmmword_1A52FC9F0;
      *(v1 + 584) = sub_1A524C674();
      *(v1 + 592) = v12;
      sub_1A524E384();
      sub_1A3DAF6E8(0, &qword_1EB120DA0, MEMORY[0x1E69E5E28]);
      *(v11 + 96) = v13;
      *(v11 + 72) = v10;
      *(v1 + 600) = sub_1A524C674();
      *(v1 + 608) = v14;
      sub_1A524E384();
      v15 = *(v1 + 648);
      sub_1A3C2DCD4(0, &unk_1EB12C320, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E62F8]);
      *(v11 + 168) = v16;
      *(v11 + 144) = v15;
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    *(v1 + 832) = OBJC_IVAR____TtC12PhotosUICore19PhotosSearchManager_mostRecentSearchResult;
    *(v1 + 840) = sub_1A524CC44();
    v2 = sub_1A524CBC4();
    v4 = v7;
    v5 = sub_1A3DA8184;
  }

  return MEMORY[0x1EEE6DFA0](v5, v2, v4);
}

uint64_t sub_1A3DA7730()
{
  v1 = *(v0 + 752);

  *(v0 + 768) = [v1 rootViewController];

  return MEMORY[0x1EEE6DFA0](sub_1A3DA77BC, 0, 0);
}

uint64_t sub_1A3DA77BC()
{
  if (v0[96])
  {
    v1 = swift_allocObject();
    v0[97] = v1;
    *(v1 + 16) = v0 + 81;
    v2 = swift_allocObject();
    v0[98] = v2;
    *(v2 + 16) = sub_1A3DAF7B8;
    *(v2 + 24) = v1;
    v0[63] = sub_1A3D9C868;
    v0[64] = v2;
    v0[59] = MEMORY[0x1E69E9820];
    v0[60] = 1107296256;
    v0[61] = sub_1A3D9A79C;
    v0[62] = &block_descriptor_57;
    v0[99] = _Block_copy(v0 + 59);

    v0[100] = sub_1A524CC44();
    v3 = sub_1A524CBC4();
    v5 = v4;
    v6 = sub_1A3DA7CB4;
  }

  else
  {
    *(v0 + 101) = 0u;
    sub_1A3DAED90(MEMORY[0x1E69E7CC0]);

    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    v0[103] = Strong;
    if (!Strong)
    {
      (*(v0[87] + 56))(v0[85], 1, 1, v0[86]);
      sub_1A3C330B0(v0[85], &qword_1EB125F80, type metadata accessor for PhotosSearchResults);
      sub_1A3C30560(0, &qword_1EB1261A0, sub_1A3DAF684, MEMORY[0x1E69E6F90]);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1A52F8E10;
      v0[71] = 1868983913;
      v0[72] = 0xE400000000000000;
      v10 = MEMORY[0x1E69E6158];
      sub_1A524E384();
      *(inited + 96) = v10;
      *(inited + 72) = 0xD00000000000001ALL;
      *(inited + 80) = 0x80000001A53B66E0;
      v11 = sub_1A3DAED90(inited);
      swift_setDeallocating();
      sub_1A3DAF48C(inited + 32, sub_1A3DAF684);
      v12 = swift_initStackObject();
      *(v12 + 16) = xmmword_1A52FC9F0;
      v0[73] = sub_1A524C674();
      v0[74] = v13;
      sub_1A524E384();
      sub_1A3DAF6E8(0, &qword_1EB120DA0, MEMORY[0x1E69E5E28]);
      *(v12 + 96) = v14;
      *(v12 + 72) = v11;
      v0[75] = sub_1A524C674();
      v0[76] = v15;
      sub_1A524E384();
      v16 = v0[81];
      sub_1A3C2DCD4(0, &unk_1EB12C320, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E62F8]);
      *(v12 + 168) = v17;
      *(v12 + 144) = v16;
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    v0[104] = OBJC_IVAR____TtC12PhotosUICore19PhotosSearchManager_mostRecentSearchResult;
    v0[105] = sub_1A524CC44();
    v3 = sub_1A524CBC4();
    v5 = v8;
    v6 = sub_1A3DA8184;
  }

  return MEMORY[0x1EEE6DFA0](v6, v3, v5);
}

uint64_t sub_1A3DA7CB4()
{
  v1 = *(v0 + 792);
  v2 = *(v0 + 768);

  [v2 px:0 enumerateDescendantViewControllersWithOptions:v1 usingBlock:?];
  _Block_release(v1);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
  }

  else
  {
    v3 = sub_1A3DA7D84;
    v4 = 0;
    v5 = 0;
  }

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1A3DA7D84()
{
  *(v0 + 816) = *(v0 + 776);
  *(v0 + 808) = sub_1A3DAF7B8;
  sub_1A3DAED90(MEMORY[0x1E69E7CC0]);

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 824) = Strong;
  if (!Strong)
  {
    (*(*(v0 + 696) + 56))(*(v0 + 680), 1, 1, *(v0 + 688));
    sub_1A3C330B0(*(v0 + 680), &qword_1EB125F80, type metadata accessor for PhotosSearchResults);
    sub_1A3C30560(0, &qword_1EB1261A0, sub_1A3DAF684, MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1A52F8E10;
    *(v0 + 568) = 1868983913;
    *(v0 + 576) = 0xE400000000000000;
    v5 = MEMORY[0x1E69E6158];
    sub_1A524E384();
    *(inited + 96) = v5;
    *(inited + 72) = 0xD00000000000001ALL;
    *(inited + 80) = 0x80000001A53B66E0;
    v6 = sub_1A3DAED90(inited);
    swift_setDeallocating();
    sub_1A3DAF48C(inited + 32, sub_1A3DAF684);
    v7 = swift_initStackObject();
    *(v7 + 16) = xmmword_1A52FC9F0;
    *(v0 + 584) = sub_1A524C674();
    *(v0 + 592) = v8;
    sub_1A524E384();
    sub_1A3DAF6E8(0, &qword_1EB120DA0, MEMORY[0x1E69E5E28]);
    *(v7 + 96) = v9;
    *(v7 + 72) = v6;
    *(v0 + 600) = sub_1A524C674();
    *(v0 + 608) = v10;
    sub_1A524E384();
    v11 = *(v0 + 648);
    sub_1A3C2DCD4(0, &unk_1EB12C320, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E62F8]);
    *(v7 + 168) = v12;
    *(v7 + 144) = v11;
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  *(v0 + 832) = OBJC_IVAR____TtC12PhotosUICore19PhotosSearchManager_mostRecentSearchResult;
  *(v0 + 840) = sub_1A524CC44();
  v3 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A3DA8184, v3, v2);
}

uint64_t sub_1A3DA8184()
{
  v1 = v0[104];
  v2 = v0[103];
  v3 = v0[85];

  swift_beginAccess();
  sub_1A3C308D4(v2 + v1, v3, &qword_1EB125F80, type metadata accessor for PhotosSearchResults);

  return MEMORY[0x1EEE6DFA0](sub_1A3DA823C, 0, 0);
}

void sub_1A3DA823C()
{
  v1 = v0[87];
  v2 = v0[86];
  v3 = v0[85];

  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    sub_1A3C330B0(v0[85], &qword_1EB125F80, type metadata accessor for PhotosSearchResults);
    sub_1A3C30560(0, &qword_1EB1261A0, sub_1A3DAF684, MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1A52F8E10;
    v0[71] = 1868983913;
    v0[72] = 0xE400000000000000;
    v5 = MEMORY[0x1E69E6158];
    sub_1A524E384();
    *(inited + 96) = v5;
    *(inited + 72) = 0xD00000000000001ALL;
    *(inited + 80) = 0x80000001A53B66E0;
    v6 = sub_1A3DAED90(inited);
    swift_setDeallocating();
    v7 = sub_1A3DAF684;
    v8 = inited + 32;
  }

  else
  {
    v9 = v0[88];
    v10 = v0[86];
    sub_1A3DAF754(v0[85], v9);
    v11 = *(v9 + *(v10 + 56));
    if (!v11)
    {
      v15 = v0[88];
      v16 = v0[86];
      sub_1A3C30560(0, &qword_1EB1261A0, sub_1A3DAF684, MEMORY[0x1E69E6F90]);
      *(swift_initStackObject() + 16) = xmmword_1A52FC9F0;
      v0[77] = 0x4955557465737361;
      v0[78] = 0xEA00000000007344;
      v17 = MEMORY[0x1E69E6158];
      sub_1A524E384();
      v0[82] = *(v15 + *(v16 + 20));
      sub_1A3C2DCD4(0, &qword_1EB126ED0, v17, MEMORY[0x1E69E62F8]);
      sub_1A3DAED2C(&qword_1EB126EC0, &qword_1EB126ED0, v17, MEMORY[0x1E69E6310]);
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    v12 = objc_opt_self();
    v13 = v11;
    v14 = [v12 jsonForSearchQueryResult_];
    v6 = sub_1A524C3E4();

    v8 = v0[88];
    v7 = type metadata accessor for PhotosSearchResults;
  }

  sub_1A3DAF48C(v8, v7);
  sub_1A3C30560(0, &qword_1EB1261A0, sub_1A3DAF684, MEMORY[0x1E69E6F90]);
  v18 = swift_initStackObject();
  *(v18 + 16) = xmmword_1A52FC9F0;
  v0[73] = sub_1A524C674();
  v0[74] = v19;
  sub_1A524E384();
  sub_1A3DAF6E8(0, &qword_1EB120DA0, MEMORY[0x1E69E5E28]);
  *(v18 + 96) = v20;
  *(v18 + 72) = v6;
  v0[75] = sub_1A524C674();
  v0[76] = v21;
  sub_1A524E384();
  v22 = v0[81];
  sub_1A3C2DCD4(0, &unk_1EB12C320, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E62F8]);
  *(v18 + 168) = v23;
  *(v18 + 144) = v22;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

double sub_1A3DA8860(void *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_1A524BEE4();
  MEMORY[0x1EEE9AC00](v12);
  v13 = swift_allocObject();
  swift_weakInit();
  sub_1A3C308D4(a2, v20, &qword_1EB129AC0, sub_1A3C295A0);
  v14 = swift_allocObject();
  v15 = v20[1];
  *(v14 + 24) = v20[0];
  *(v14 + 16) = v13;
  *(v14 + 40) = v15;
  *(v14 + 56) = v21;
  *(v14 + 64) = a1;
  *(v14 + 72) = a5;
  *(v14 + 80) = a6;
  *(v14 + 88) = a3;
  *(v14 + 96) = a4 & 1;
  aBlock[4] = sub_1A3DAE378;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3C2E0D0;
  aBlock[3] = &block_descriptor_13;
  _Block_copy(aBlock);
  sub_1A3C2E114(&qword_1EB12B1E0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  v16 = MEMORY[0x1E69E7F60];
  sub_1A3C30560(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1A3C2A778(&qword_1EB12B1B0, &qword_1EB12B1C0, v16);

  v17 = a1;

  sub_1A524E224();
  sub_1A524BFE4();
  swift_allocObject();
  sub_1A524BFD4();

  if (qword_1EB174110 != -1)
  {
    swift_once();
  }

  sub_1A524D4A4();

  return result;
}

void sub_1A3DA8B54(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v13 = sub_1A52414C4();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v121 = &v108 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = sub_1A524BEE4();
  v117 = *(v118 - 8);
  MEMORY[0x1EEE9AC00](v118);
  v114 = &v108 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_1A524BF64();
  v115 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116);
  v113 = &v108 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    v120 = a4;
    [*(Strong + 16) cancelQueryWithQueryId_];
    sub_1A3C308D4(a2, &v128, &qword_1EB129AC0, sub_1A3C295A0);
    v119 = a2;
    v122 = a5;
    v111 = v13;
    v110 = v14;
    v112 = a6;
    v109 = a7;
    if (v129)
    {
      sub_1A3C34460(&v128, &aBlock);
      if (*(v19 + 40))
      {
        v108 = v19;
        __swift_project_boxed_opaque_existential_1(&aBlock, v125);
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }

      v20 = objc_opt_self();
      v21 = [*(v19 + 16) photoLibrary];
      v22 = [v20 px:v21 searchAssetFetchOptionsForPhotoLibrary:?];

      sub_1A3C2DCD4(0, &qword_1EB12B260, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_1A52F8E10;
      *(v23 + 32) = sub_1A524C674();
      *(v23 + 40) = v24;
      v25 = sub_1A524CA14();

      [v22 setFetchPropertySets_];

      v26 = v125;
      v27 = v126;
      __swift_project_boxed_opaque_existential_1(&aBlock, v125);
      v28 = v27[7](v22, v26, v27);
      v29 = v125;
      v30 = v126;
      __swift_project_boxed_opaque_existential_1(&aBlock, v125);
      v31 = v30[1](v29, v30);
      v33 = v32;

      *(v19 + 32) = v31;
      *(v19 + 40) = v33;
      *(v19 + 48) = v28;
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    sub_1A3C330B0(&v128, &qword_1EB129AC0, sub_1A3C295A0);
    v34 = *(v19 + 24) == 1 && *(a2 + 3) == 0;
    v35 = [a3 string];
    v36 = sub_1A524C674();
    v38 = v37;

    v39 = HIBYTE(v38) & 0xF;
    if ((v38 & 0x2000000000000000) == 0)
    {
      v39 = v36 & 0xFFFFFFFFFFFFLL;
    }

    if (v39)
    {
      v119 = a3;
      v40 = [objc_allocWithZone(MEMORY[0x1E6978A70]) init];
      sub_1A3C52C70(0, &qword_1EB126A10, off_1E771E328);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v42 = [ObjCClassFromMetadata sharedInstance];
      v43 = [v42 maxSearchSuggestions];

      [v40 setSuggestionLimit_];
      if (v109)
      {
        v112 = sub_1A52403B4();
      }

      v44 = [v40 setLocationInQueryStringForSuggestionGeneration_];
      v45 = v34;
      if (v34)
      {
        if (MEMORY[0x1A590D320](v44))
        {
          v46 = 0;
        }

        else
        {
          v48 = [ObjCClassFromMetadata sharedInstance];
          v46 = [v48 maxRankedCollectionSearchResults];
        }

        [v40 setMaxRankedCollectionSearchResults_];
        v49 = [ObjCClassFromMetadata sharedInstance];
        v47 = [v49 maxRankedAssetSearchResults];
      }

      else
      {
        [v40 setMaxRankedCollectionSearchResults_];
        v47 = 0;
      }

      [v40 setMaxRankedAssetSearchResults_];
      v50 = [ObjCClassFromMetadata sharedInstance];
      v51 = [v50 maxSearchResults];

      [v40 setMaxSearchResults_];
      [v40 setEnableQueryMatchDetails_];
      [v40 setScopedIdentifiers_];

      v52 = [ObjCClassFromMetadata sharedInstance];
      LODWORD(v50) = [v52 enableEmbeddingSearch];

      [v40 setDisableSemanticSearch_];
      v53 = [ObjCClassFromMetadata sharedInstance];
      LODWORD(v50) = [v53 enableMetadataSearch];

      [v40 setDisableMetadataSearch_];
      v54 = [ObjCClassFromMetadata sharedInstance];
      v55 = [v54 minNumberOfResultsForNextTokenGeneration];

      [v40 setMinNumberOfResultsForNextTokenGeneration_];
      v56 = [ObjCClassFromMetadata sharedInstance];
      v57 = [v56 enableEmbeddingOnlyResultsInExactMatches];

      [v40 setEnableEmbeddingOnlyResultsInExactMatches_];
      sub_1A3C2DCD4(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
      v58 = swift_allocObject();
      *(v58 + 16) = xmmword_1A52F9790;
      v59 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
      v60 = sub_1A524C634();
      v61 = [v59 initWithKey:v60 ascending:0];

      *(v58 + 32) = v61;
      sub_1A3C52C70(0, &qword_1EB126B60, 0x1E696AEB0);
      v62 = sub_1A524CA14();

      [v40 setSortDescriptors_];

      v63 = 1;
      [v40 setFetchContextualThumbnails_];
      v64 = [ObjCClassFromMetadata sharedInstance];
      LOBYTE(v61) = [v64 enableExactMatchResults];

      if ((v61 & 1) == 0)
      {
        v65 = [ObjCClassFromMetadata sharedInstance];
        v66 = [v65 enableHybridMatchResults];

        if (v66)
        {
          v63 = 2;
        }

        else
        {
          v63 = 3;
        }
      }

      [v40 setMatchType_];
      if (v45)
      {
        v67 = 3;
      }

      else
      {
        v67 = 1;
      }

      [v40 setSearchQueryResultTypes_];
      v68 = [ObjCClassFromMetadata sharedInstance];
      [v68 searchQueryTimeout];
      v70 = v69;

      [v40 setSpotlightQueryTimeout_];
      v71 = [ObjCClassFromMetadata sharedInstance];
      v72 = [v71 enableNextTokenSuggestions];

      [v40 setEnableNextTokenSuggestions_];
      [v40 setSpotlightQUTypes_];
      v73 = MEMORY[0x1E69E6530];
      sub_1A3C2DCD4(0, &qword_1EB1261E0, MEMORY[0x1E69E6530], MEMORY[0x1E69E6F90]);
      v74 = swift_allocObject();
      *(v74 + 16) = xmmword_1A52FCA00;
      *(v74 + 32) = xmmword_1A52FCA10;
      *(v74 + 48) = xmmword_1A52FCA20;
      *(v74 + 64) = 38;
      *&aBlock = v74;
      sub_1A3C2E114(&qword_1EB12AF50, MEMORY[0x1E6969B50], MEMORY[0x1E6969B90]);
      sub_1A3C2DCD4(0, &qword_1EB126E90, v73, MEMORY[0x1E69E62F8]);
      sub_1A3DAED2C(&qword_1EB126E80, &qword_1EB126E90, v73, MEMORY[0x1E69E6328]);
      v75 = v121;
      v76 = v111;
      sub_1A524E224();
      v77 = sub_1A5241414();
      (*(v110 + 8))(v75, v76);
      [v40 setSubstringMatchedCategories_];

      v78 = *(v19 + 16);
      v79 = swift_allocObject();
      v80 = v119;
      v79[2] = v19;
      v79[3] = v80;
      v81 = v122;
      v79[4] = v120;
      v79[5] = v81;
      v126 = sub_1A3DAED84;
      v127 = v79;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      v124 = sub_1A3DAF914;
      v125 = &block_descriptor_18;
      v82 = _Block_copy(&aBlock);

      v83 = v78;
      v84 = v40;
      v85 = v80;

      v86 = [v83 performSearch:v85 searchOptions:v84 resultsHandler:v82];
      _Block_release(v82);

      if (qword_1EB15B580 != -1)
      {
        swift_once();
      }

      v87 = sub_1A5246F24();
      __swift_project_value_buffer(v87, qword_1EB15B588);
      v88 = v84;
      v89 = v85;
      v90 = sub_1A5246F04();
      v91 = sub_1A524D224();

      if (os_log_type_enabled(v90, v91))
      {
        v92 = swift_slowAlloc();
        v93 = swift_slowAlloc();
        *v92 = 138412802;
        *(v92 + 4) = v89;
        *(v92 + 12) = 1024;
        *(v92 + 14) = v86;
        *(v92 + 18) = 2112;
        *(v92 + 20) = v88;
        *v93 = v89;
        v93[1] = v40;
        v94 = v88;
        v95 = v89;
        _os_log_impl(&dword_1A3C1C000, v90, v91, "Searching %@ (%d) with options: %@", v92, 0x1Cu);
        sub_1A3C2F060(0, &qword_1EB12B150, &qword_1EB12B160, 0x1E69E58C0, sub_1A3C52C70);
        swift_arrayDestroy();
        MEMORY[0x1A590EEC0](v93, -1, -1);
        MEMORY[0x1A590EEC0](v92, -1, -1);
        v88 = v90;
        v90 = v94;
      }

      *(v19 + 28) = v86;
    }

    else
    {
      sub_1A3C308D4(v119, &aBlock, &qword_1EB129AC0, sub_1A3C295A0);
      if (v125)
      {
        sub_1A3C34460(&aBlock, &v128);
        __swift_destroy_boxed_opaque_existential_0(&v128);
      }

      else
      {

        sub_1A3C330B0(&aBlock, &qword_1EB129AC0, sub_1A3C295A0);
      }

      if (qword_1EB15B580 != -1)
      {
        swift_once();
      }

      v96 = sub_1A5246F24();
      __swift_project_value_buffer(v96, qword_1EB15B588);
      v97 = sub_1A5246F04();
      v98 = sub_1A524D224();
      if (os_log_type_enabled(v97, v98))
      {
        v99 = swift_slowAlloc();
        *v99 = 0;
        _os_log_impl(&dword_1A3C1C000, v97, v98, "Searching for empty string without a container: returning nil", v99, 2u);
        MEMORY[0x1A590EEC0](v99, -1, -1);
      }

      sub_1A3C52C70(0, &qword_1EB12B180, 0x1E69E9610);
      v100 = sub_1A524D474();
      v101 = swift_allocObject();
      v102 = v120;
      v101[2] = v19;
      v101[3] = v102;
      v101[4] = a5;
      v126 = sub_1A3DAF404;
      v127 = v101;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      v124 = sub_1A3C2E0D0;
      v125 = &block_descriptor_24;
      v103 = _Block_copy(&aBlock);

      v104 = v113;
      sub_1A524BF14();
      *&v128 = MEMORY[0x1E69E7CC0];
      sub_1A3C2E114(&qword_1EB12B1E0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
      v105 = MEMORY[0x1E69E7F60];
      sub_1A3C30560(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
      sub_1A3C2A778(&qword_1EB12B1B0, &qword_1EB12B1C0, v105);
      v106 = v114;
      v107 = v118;
      sub_1A524E224();
      MEMORY[0x1A5908800](0, v104, v106, v103);
      _Block_release(v103);

      (*(v117 + 8))(v106, v107);
      (*(v115 + 8))(v104, v116);
    }
  }
}

void sub_1A3DAA130(uint64_t a1, void *a2, uint64_t a3, void (*a4)(char *, void), uint64_t (*a5)(uint64_t))
{
  v17[1] = a5;
  v17[2] = a4;
  v17[0] = type metadata accessor for PhotosSearchResults;
  sub_1A3C30560(0, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = type metadata accessor for PhotosSearchResults(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a2[3];
  v11 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v12);
  v13 = (*(v11 + 32))(v12, v11);
  v15 = v14;
  sub_1A52411B4();
  *&v10[v8[14]] = 0;
  v16 = &v10[v8[15]];
  *v16 = v13;
  v16[1] = v15;
  *&v10[v8[5]] = a1;
  *&v10[v8[6]] = MEMORY[0x1E69E7CC0];
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A3DAA4AC(uint64_t a1, void (*a2)(_BYTE *, void))
{
  sub_1A3C30560(0, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for PhotosSearchResults(0);
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 1, 1, v7);
  v9 = OBJC_IVAR____TtC12PhotosUICore19PhotosSearchManager_mostRecentSearchResult;
  swift_beginAccess();
  sub_1A3C9B11C(v6, a1 + v9);
  swift_endAccess();
  v8(v6, 1, 1, v7);
  a2(v6, 0);
  return sub_1A3C330B0(v6, &qword_1EB125F80, type metadata accessor for PhotosSearchResults);
}

void sub_1A3DAA624(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5, void (*a6)(uint64_t, uint64_t), uint64_t a7)
{
  v262 = a7;
  v273 = a5;
  sub_1A3C30560(0, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v267 = &v260[-v13];
  v272 = type metadata accessor for PhotosSearchResults(0);
  MEMORY[0x1EEE9AC00](v272);
  MEMORY[0x1EEE9AC00](v14);
  v270 = &v260[-v15];
  v263 = a6;
  v266 = v16;
  v265 = v17;
  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        if (qword_1EB15B580 != -1)
        {
          swift_once();
        }

        v18 = sub_1A5246F24();
        __swift_project_value_buffer(v18, qword_1EB15B588);
        v19 = a1;
        v20 = sub_1A5246F04();
        v21 = sub_1A524D224();

        if (!os_log_type_enabled(v20, v21))
        {
          goto LABEL_34;
        }

        v22 = a4;
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        *v23 = 138412290;
        v25 = [v19 searchQuery];
        v26 = [v25 searchText];

        *(v23 + 4) = v26;
        *v24 = v26;
        v27 = "Successfully searched for %@";
        goto LABEL_27;
      }

LABEL_15:
      if (qword_1EB15B580 != -1)
      {
        goto LABEL_178;
      }

      goto LABEL_16;
    }

    if (qword_1EB15B580 != -1)
    {
      swift_once();
    }

    v40 = sub_1A5246F24();
    __swift_project_value_buffer(v40, qword_1EB15B588);
    v38 = a1;
    v41 = a3;
    v20 = sub_1A5246F04();
    v31 = sub_1A524D244();

    if (!os_log_type_enabled(v20, v31))
    {
      goto LABEL_34;
    }

    goto LABEL_21;
  }

  if (a2 != 2)
  {
    if (a2 != 3)
    {
      goto LABEL_15;
    }

    if (qword_1EB15B580 != -1)
    {
      swift_once();
    }

    v28 = sub_1A5246F24();
    __swift_project_value_buffer(v28, qword_1EB15B588);
    v29 = a1;
    v30 = a3;
    v20 = sub_1A5246F04();
    v31 = sub_1A524D244();

    if (!os_log_type_enabled(v20, v31))
    {
      goto LABEL_34;
    }

    v22 = a4;
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v23 = 138412546;
    v32 = [v29 searchQuery];
    v33 = [v32 searchText];

    *(v23 + 4) = v33;
    *v24 = v33;
    *(v23 + 12) = 2112;
    if (a3)
    {
      v34 = a3;
      v35 = _swift_stdlib_bridgeErrorToNSError();
      v36 = v35;
    }

    else
    {
      v35 = 0;
      v36 = 0;
    }

    *(v23 + 14) = v35;
    v24[1] = v36;
    v51 = "Failed searching for %@ with error: %@";
LABEL_32:
    _os_log_impl(&dword_1A3C1C000, v20, v31, v51, v23, 0x16u);
    sub_1A3C2F060(0, &qword_1EB12B150, &qword_1EB12B160, 0x1E69E58C0, sub_1A3C52C70);
    swift_arrayDestroy();
    goto LABEL_33;
  }

  if (qword_1EB15B580 != -1)
  {
    swift_once();
  }

  v47 = sub_1A5246F24();
  __swift_project_value_buffer(v47, qword_1EB15B588);
  v48 = a1;
  v20 = sub_1A5246F04();
  v21 = sub_1A524D264();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = a4;
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v23 = 138412290;
    v49 = [v48 searchQuery];
    v50 = [v49 searchText];

    *(v23 + 4) = v50;
    *v24 = v50;
    v27 = "Cancelled searching for %@";
LABEL_27:
    _os_log_impl(&dword_1A3C1C000, v20, v21, v27, v23, 0xCu);
    sub_1A3CB65E4(v24);
LABEL_33:
    MEMORY[0x1A590EEC0](v24, -1, -1);
    MEMORY[0x1A590EEC0](v23, -1, -1);
    a4 = v22;
  }

LABEL_34:

  v52 = [objc_opt_self() sharedSession];
  v264 = a4;
  v53 = [*(a4 + 16) photoLibrary];
  [v52 reportSearchQueryExecutionCompleted:a1 forLibrary:v53];

  if (a2 == 2)
  {
    return;
  }

  v54 = a1;
  v55 = v270;
  sub_1A52411B4();
  v56 = v272;
  *&v55[v272[14]] = v54;
  v57 = &v55[v56[15]];
  *v57 = 0;
  v57[1] = 0;
  v271 = v54;
  v58 = [v271 searchResults];
  v59 = MEMORY[0x1E69E7CC0];
  if (!v58)
  {
    goto LABEL_68;
  }

  v60 = v58;
  sub_1A3C52C70(0, &qword_1EB12C298, 0x1E6978A90);
  v61 = sub_1A524CA34();

  *&v274[0] = v59;
  if (v61 >> 62)
  {
    goto LABEL_65;
  }

  v62 = *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_38:
  v63 = MEMORY[0x1E69E7CC0];
  if (v62)
  {
    a3 = 4;
    while (1)
    {
      v64 = a3 - 4;
      if ((v61 & 0xC000000000000001) != 0)
      {
        v65 = MEMORY[0x1A59097F0](a3 - 4, v61);
        a1 = a3 - 3;
        if (__OFADD__(v64, 1))
        {
LABEL_49:
          __break(1u);
LABEL_50:
          v68 = *&v274[0];
          goto LABEL_52;
        }
      }

      else
      {
        if (v64 >= *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_65:
          v62 = sub_1A524E2B4();
          goto LABEL_38;
        }

        v65 = *(v61 + 8 * a3);
        a1 = a3 - 3;
        if (__OFADD__(v64, 1))
        {
          goto LABEL_49;
        }
      }

      v66 = v65;
      v67 = PHSearchResult.isAsset.getter();

      if (v67)
      {
        sub_1A524E514();
        sub_1A524E564();
        sub_1A524E574();
        sub_1A524E524();
      }

      else
      {
      }

      ++a3;
      if (a1 == v62)
      {
        goto LABEL_50;
      }
    }
  }

  v68 = MEMORY[0x1E69E7CC0];
LABEL_52:

  if (v68 < 0 || (v68 & 0x4000000000000000) != 0)
  {
    a4 = sub_1A524E2B4();
    if (a4)
    {
      goto LABEL_55;
    }

LABEL_67:

    v59 = MEMORY[0x1E69E7CC0];
    goto LABEL_68;
  }

  a4 = *(v68 + 16);
  if (!a4)
  {
    goto LABEL_67;
  }

LABEL_55:
  *&v274[0] = v63;
  sub_1A3C57108(0, a4 & ~(a4 >> 63), 0);
  if (a4 < 0)
  {
    __break(1u);
LABEL_180:
    __break(1u);
LABEL_181:
    __break(1u);
LABEL_182:
    a2 = sub_1A524E2B4();
    if (!a2)
    {
LABEL_183:
      v156 = MEMORY[0x1E69E7CC0];
      goto LABEL_184;
    }

    goto LABEL_164;
  }

  v69 = 0;
  v59 = *&v274[0];
  a3 = v68 & 0xC000000000000001;
  do
  {
    if (a3)
    {
      v70 = MEMORY[0x1A59097F0](v69, v68);
    }

    else
    {
      v70 = *(v68 + 8 * v69 + 32);
    }

    v71 = v70;
    v72 = [v71 uuid];
    v73 = sub_1A524C674();
    v75 = v74;

    *&v274[0] = v59;
    a1 = *(v59 + 16);
    v76 = *(v59 + 24);
    if (a1 >= v76 >> 1)
    {
      sub_1A3C57108((v76 > 1), a1 + 1, 1);
      v59 = *&v274[0];
    }

    ++v69;
    *(v59 + 16) = a1 + 1;
    v77 = v59 + 16 * a1;
    *(v77 + 32) = v73;
    *(v77 + 40) = v75;
  }

  while (a4 != v69);

LABEL_68:
  *&v270[v272[5]] = v59;
  v78 = [v271 rankedAssetSearchResults];
  v79 = MEMORY[0x1E69E7CC0];
  if (!v78)
  {
    goto LABEL_101;
  }

  v80 = v78;
  sub_1A3C52C70(0, &qword_1EB12C298, 0x1E6978A90);
  v81 = sub_1A524CA34();

  *&v274[0] = v79;
  if (v81 >> 62)
  {
    goto LABEL_98;
  }

  v82 = *((v81 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_71:
  v83 = MEMORY[0x1E69E7CC0];
  if (v82)
  {
    a3 = 4;
    while (1)
    {
      v84 = a3 - 4;
      if ((v81 & 0xC000000000000001) != 0)
      {
        v85 = MEMORY[0x1A59097F0](a3 - 4, v81);
        a1 = a3 - 3;
        if (__OFADD__(v84, 1))
        {
LABEL_82:
          __break(1u);
LABEL_83:
          v88 = *&v274[0];
          goto LABEL_85;
        }
      }

      else
      {
        if (v84 >= *((v81 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_98:
          v82 = sub_1A524E2B4();
          goto LABEL_71;
        }

        v85 = *(v81 + 8 * a3);
        a1 = a3 - 3;
        if (__OFADD__(v84, 1))
        {
          goto LABEL_82;
        }
      }

      v86 = v85;
      v87 = PHSearchResult.isAsset.getter();

      if (v87)
      {
        sub_1A524E514();
        sub_1A524E564();
        sub_1A524E574();
        sub_1A524E524();
      }

      else
      {
      }

      ++a3;
      if (a1 == v82)
      {
        goto LABEL_83;
      }
    }
  }

  v88 = MEMORY[0x1E69E7CC0];
LABEL_85:

  if ((v88 & 0x8000000000000000) == 0 && (v88 & 0x4000000000000000) == 0)
  {
    a4 = *(v88 + 16);
    if (a4)
    {
      goto LABEL_88;
    }

LABEL_100:

    v79 = MEMORY[0x1E69E7CC0];
    goto LABEL_101;
  }

  a4 = sub_1A524E2B4();
  if (!a4)
  {
    goto LABEL_100;
  }

LABEL_88:
  *&v274[0] = v83;
  sub_1A3C57108(0, a4 & ~(a4 >> 63), 0);
  if (a4 < 0)
  {
    goto LABEL_180;
  }

  v89 = 0;
  v79 = *&v274[0];
  a3 = v88 & 0xC000000000000001;
  do
  {
    if (a3)
    {
      v90 = MEMORY[0x1A59097F0](v89, v88);
    }

    else
    {
      v90 = *(v88 + 8 * v89 + 32);
    }

    v91 = v90;
    v92 = [v91 uuid];
    v93 = sub_1A524C674();
    v95 = v94;

    *&v274[0] = v79;
    a1 = *(v79 + 16);
    v96 = *(v79 + 24);
    if (a1 >= v96 >> 1)
    {
      sub_1A3C57108((v96 > 1), a1 + 1, 1);
      v79 = *&v274[0];
    }

    ++v89;
    *(v79 + 16) = a1 + 1;
    v97 = v79 + 16 * a1;
    *(v97 + 32) = v93;
    *(v97 + 40) = v95;
  }

  while (a4 != v89);

LABEL_101:
  v98 = v270;
  *&v270[v272[6]] = v79;
  v99 = PHSearchQueryResult.collectionResultsUUIDs.getter();
  if (!v99)
  {
    v99 = sub_1A3DAEED0(MEMORY[0x1E69E7CC0]);
  }

  *&v98[v272[7]] = v99;
  v100 = PHSearchQueryResult.rankedCollectionResultsUUIDs.getter();
  if (!v100)
  {
    v100 = sub_1A3DAEED0(MEMORY[0x1E69E7CC0]);
  }

  *&v98[v272[8]] = v100;
  v101 = PHSearchQueryResult.rankedCollectionResultScores.getter();
  if (!v101)
  {
    v101 = sub_1A3DAF0C0(MEMORY[0x1E69E7CC0]);
  }

  v102 = v272;
  *&v98[v272[9]] = v101;
  v103 = v271;
  *&v98[v102[10]] = PHSearchQueryResult.matchInfo.getter();
  v104 = [v103 searchResults];
  if (v104)
  {
    v105 = v104;
    sub_1A3C52C70(0, &qword_1EB12C298, 0x1E6978A90);
    v106 = sub_1A524CA34();

    *&v274[0] = MEMORY[0x1E69E7CC0];
    if (v106 >> 62)
    {
      goto LABEL_124;
    }

    v107 = *((v106 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v107)
    {
      while (1)
      {
        v108 = 4;
        while (1)
        {
          v109 = v108 - 4;
          if ((v106 & 0xC000000000000001) == 0)
          {
            break;
          }

          v110 = MEMORY[0x1A59097F0](v108 - 4, v106);
          a3 = v108 - 3;
          if (__OFADD__(v109, 1))
          {
LABEL_120:
            __break(1u);
LABEL_121:
            v113 = *&v274[0];
            goto LABEL_126;
          }

LABEL_116:
          v111 = v110;
          v112 = PHSearchResult.isAsset.getter();

          if (v112)
          {
            sub_1A524E514();
            sub_1A524E564();
            sub_1A524E574();
            sub_1A524E524();
          }

          else
          {
          }

          ++v108;
          if (a3 == v107)
          {
            goto LABEL_121;
          }
        }

        if (v109 < *((v106 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          break;
        }

        __break(1u);
LABEL_124:
        v107 = sub_1A524E2B4();
        if (!v107)
        {
          goto LABEL_125;
        }
      }

      v110 = *(v106 + 8 * v108);
      a3 = v108 - 3;
      if (__OFADD__(v109, 1))
      {
        goto LABEL_120;
      }

      goto LABEL_116;
    }

LABEL_125:
    v113 = MEMORY[0x1E69E7CC0];
LABEL_126:

    v114 = sub_1A3DAF1D4(MEMORY[0x1E69E7CC0]);
    if (v113 < 0 || (v113 & 0x4000000000000000) != 0)
    {
      goto LABEL_158;
    }

    a4 = *(v113 + 16);
    if (a4)
    {
LABEL_129:
      for (i = 0; ; i = a1)
      {
        while (1)
        {
          if ((v113 & 0xC000000000000001) != 0)
          {
            v116 = MEMORY[0x1A59097F0](i, v113);
          }

          else
          {
            if (i >= *(v113 + 16))
            {
              goto LABEL_157;
            }

            v116 = *(v113 + 8 * i + 32);
          }

          v117 = v116;
          a1 = i + 1;
          if (__OFADD__(i, 1))
          {
            __break(1u);
LABEL_157:
            __break(1u);
LABEL_158:
            a4 = sub_1A524E2B4();
            if (!a4)
            {
              goto LABEL_159;
            }

            goto LABEL_129;
          }

          v118 = [v116 uuid];
          v119 = sub_1A524C674();
          a3 = v120;

          v121 = [v117 matchedThumbnailIdentifier];
          if (v121)
          {
            break;
          }

          v122 = sub_1A3C5DCA4(v119, a3);
          v124 = v123;

          if (v124)
          {
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *&v274[0] = v114;
            if (!isUniquelyReferenced_nonNull_native)
            {
              sub_1A3DADC84();
              v114 = *&v274[0];
            }

            sub_1A3DAD688(v122, v114, v142);
LABEL_151:

            if (a1 == a4)
            {
              goto LABEL_159;
            }

            goto LABEL_152;
          }

          ++i;
          if (a1 == a4)
          {
            goto LABEL_159;
          }
        }

        v125 = v121;
        v268 = sub_1A524C674();
        v269 = v126;

        v127 = swift_isUniquelyReferenced_nonNull_native();
        *&v274[0] = v114;
        v129 = sub_1A3C5DCA4(v119, a3);
        v130 = v114[2];
        v131 = (v128 & 1) == 0;
        v132 = v130 + v131;
        if (__OFADD__(v130, v131))
        {
          goto LABEL_181;
        }

        if (v114[3] >= v132)
        {
          if (v127)
          {
            if (v128)
            {
              goto LABEL_150;
            }
          }

          else
          {
            v145 = v128;
            sub_1A3DADC84();
            if (v145)
            {
              goto LABEL_150;
            }
          }
        }

        else
        {
          v261 = v128;
          sub_1A3DAD3B8(v132, v127);
          v133 = sub_1A3C5DCA4(v119, a3);
          if ((v261 & 1) != (v134 & 1))
          {
            goto LABEL_295;
          }

          v129 = v133;
          if (v261)
          {
LABEL_150:

            v114 = *&v274[0];
            v143 = (*(*&v274[0] + 56) + 16 * v129);
            v144 = v269;
            *v143 = v268;
            v143[1] = v144;

            goto LABEL_151;
          }
        }

        v114 = *&v274[0];
        *(*&v274[0] + 8 * (v129 >> 6) + 64) |= 1 << v129;
        v135 = (v114[6] + 16 * v129);
        *v135 = v119;
        v135[1] = a3;
        v136 = (v114[7] + 16 * v129);
        v137 = v269;
        *v136 = v268;
        v136[1] = v137;

        v138 = v114[2];
        v139 = __OFADD__(v138, 1);
        v140 = v138 + 1;
        if (v139)
        {
          goto LABEL_293;
        }

        v114[2] = v140;
        if (a1 == a4)
        {
          break;
        }

LABEL_152:
        ;
      }
    }

LABEL_159:
  }

  else
  {
    v114 = 0;
  }

  *&v270[v272[11]] = v114;
  sub_1A3C52C70(0, &qword_1EB126A10, off_1E771E328);
  v146 = [swift_getObjCClassFromMetadata() sharedInstance];
  v147 = [v146 showSearchDebugBadges];

  if (!v147)
  {
    goto LABEL_175;
  }

  v148 = [v271 searchResults];
  if (!v148)
  {
    goto LABEL_175;
  }

  v149 = v148;
  sub_1A3C52C70(0, &qword_1EB12C298, 0x1E6978A90);
  a4 = sub_1A524CA34();

  *&v274[0] = MEMORY[0x1E69E7CC0];
  if (a4 >> 62)
  {
    goto LABEL_182;
  }

  a2 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!a2)
  {
    goto LABEL_183;
  }

LABEL_164:
  v150 = 4;
  do
  {
    v151 = v150 - 4;
    if ((a4 & 0xC000000000000001) != 0)
    {
      v152 = MEMORY[0x1A59097F0](v150 - 4, a4);
      a3 = v150 - 3;
      if (__OFADD__(v151, 1))
      {
LABEL_174:
        __break(1u);
LABEL_175:
        v155 = 0;
        goto LABEL_211;
      }
    }

    else
    {
      if (v151 >= *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_178:
        swift_once();
LABEL_16:
        v37 = sub_1A5246F24();
        __swift_project_value_buffer(v37, qword_1EB15B588);
        v38 = a1;
        v39 = a3;
        v20 = sub_1A5246F04();
        v31 = sub_1A524D244();

        if (os_log_type_enabled(v20, v31))
        {
LABEL_21:
          v22 = a4;
          v23 = swift_slowAlloc();
          v24 = swift_slowAlloc();
          *v23 = 138412546;
          v42 = [v38 searchQuery];
          v43 = [v42 searchText];

          *(v23 + 4) = v43;
          *v24 = v43;
          *(v23 + 12) = 2112;
          if (a3)
          {
            v44 = a3;
            v45 = _swift_stdlib_bridgeErrorToNSError();
            v46 = v45;
          }

          else
          {
            v45 = 0;
            v46 = 0;
          }

          *(v23 + 14) = v45;
          v24[1] = v46;
          v51 = "Unknown status for searching %@ with error: %@";
          goto LABEL_32;
        }

        goto LABEL_34;
      }

      v152 = *(a4 + 8 * v150);
      a3 = v150 - 3;
      if (__OFADD__(v151, 1))
      {
        goto LABEL_174;
      }
    }

    v153 = v152;
    v154 = PHSearchResult.isAsset.getter();

    if (v154)
    {
      sub_1A524E514();
      sub_1A524E564();
      sub_1A524E574();
      sub_1A524E524();
    }

    else
    {
    }

    ++v150;
  }

  while (a3 != a2);
  v156 = *&v274[0];
LABEL_184:

  v155 = sub_1A3DAF2F8(MEMORY[0x1E69E7CC0]);
  if (v156 < 0 || (v156 & 0x4000000000000000) != 0)
  {
    goto LABEL_209;
  }

  v157 = *(v156 + 16);
  if (v157)
  {
LABEL_187:
    v269 = v156 & 0xC000000000000001;
    v158 = 4;
    v268 = v156;
    while (1)
    {
      v161 = v158 - 4;
      if (v269)
      {
        v162 = MEMORY[0x1A59097F0](v158 - 4, v156);
      }

      else
      {
        if (v161 >= *(v156 + 16))
        {
          goto LABEL_206;
        }

        v162 = *(v156 + 8 * v158);
      }

      v163 = v162;
      v164 = v158 - 3;
      if (__OFADD__(v161, 1))
      {
        __break(1u);
LABEL_206:
        __break(1u);
LABEL_207:
        __break(1u);
LABEL_208:
        __break(1u);
LABEL_209:
        v157 = sub_1A524E2B4();
        if (!v157)
        {
          goto LABEL_210;
        }

        goto LABEL_187;
      }

      v156 = v157;
      v165 = [v162 uuid];
      v166 = sub_1A524C674();
      v168 = v167;

      v169 = [v163 retrievalType];
      v170 = swift_isUniquelyReferenced_nonNull_native();
      *&v274[0] = v155;
      v171 = sub_1A3C5DCA4(v166, v168);
      v173 = v155[2];
      v174 = (v172 & 1) == 0;
      v139 = __OFADD__(v173, v174);
      v175 = v173 + v174;
      if (v139)
      {
        goto LABEL_207;
      }

      v176 = v172;
      if (v155[3] < v175)
      {
        break;
      }

      if (v170)
      {
        goto LABEL_199;
      }

      v181 = v171;
      sub_1A3DADB0C();
      v171 = v181;
      if (v176)
      {
LABEL_188:
        v159 = v171;

        v155 = *&v274[0];
        *(*(*&v274[0] + 56) + 8 * v159) = v169;

        goto LABEL_189;
      }

LABEL_200:
      v155 = *&v274[0];
      *(*&v274[0] + 8 * (v171 >> 6) + 64) |= 1 << v171;
      v178 = (v155[6] + 16 * v171);
      *v178 = v166;
      v178[1] = v168;
      *(v155[7] + 8 * v171) = v169;

      v179 = v155[2];
      v139 = __OFADD__(v179, 1);
      v180 = v179 + 1;
      if (v139)
      {
        goto LABEL_208;
      }

      v155[2] = v180;
LABEL_189:
      ++v158;
      v157 = v156;
      v160 = v164 == v156;
      v156 = v268;
      if (v160)
      {
        goto LABEL_210;
      }
    }

    sub_1A3DAD108(v175, v170);
    v171 = sub_1A3C5DCA4(v166, v168);
    if ((v176 & 1) != (v177 & 1))
    {
      goto LABEL_295;
    }

LABEL_199:
    if (v176)
    {
      goto LABEL_188;
    }

    goto LABEL_200;
  }

LABEL_210:

LABEL_211:
  *&v270[v272[12]] = v155;
  v182 = [v271 searchResults];
  if (v182)
  {
    v183 = v182;
    sub_1A3C52C70(0, &qword_1EB12C298, 0x1E6978A90);
    v184 = sub_1A524CA34();

    *&v274[0] = MEMORY[0x1E69E7CC0];
    if (v184 >> 62)
    {
      goto LABEL_228;
    }

    v185 = *((v184 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v185)
    {
      while (1)
      {
        v186 = 4;
        while (1)
        {
          v187 = v186 - 4;
          if ((v184 & 0xC000000000000001) == 0)
          {
            break;
          }

          v188 = MEMORY[0x1A59097F0](v186 - 4, v184);
          v189 = v186 - 3;
          if (__OFADD__(v187, 1))
          {
LABEL_224:
            __break(1u);
LABEL_225:
            v192 = *&v274[0];
            goto LABEL_230;
          }

LABEL_220:
          v190 = v188;
          v191 = PHSearchResult.isAsset.getter();

          if (v191)
          {
            sub_1A524E514();
            sub_1A524E564();
            sub_1A524E574();
            sub_1A524E524();
          }

          else
          {
          }

          ++v186;
          if (v189 == v185)
          {
            goto LABEL_225;
          }
        }

        if (v187 < *((v184 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          break;
        }

        __break(1u);
LABEL_228:
        v185 = sub_1A524E2B4();
        if (!v185)
        {
          goto LABEL_229;
        }
      }

      v188 = *(v184 + 8 * v186);
      v189 = v186 - 3;
      if (__OFADD__(v187, 1))
      {
        goto LABEL_224;
      }

      goto LABEL_220;
    }

LABEL_229:
    v192 = MEMORY[0x1E69E7CC0];
LABEL_230:

    v193 = sub_1A3DAF0C0(MEMORY[0x1E69E7CC0]);
    if (v192 < 0 || (v192 & 0x4000000000000000) != 0)
    {
      goto LABEL_261;
    }

    v194 = *(v192 + 16);
    if (v194)
    {
LABEL_233:
      for (j = 0; ; j = v198)
      {
        while (1)
        {
          if ((v192 & 0xC000000000000001) != 0)
          {
            v196 = MEMORY[0x1A59097F0](j, v192);
          }

          else
          {
            if (j >= *(v192 + 16))
            {
              goto LABEL_260;
            }

            v196 = *(v192 + 8 * j + 32);
          }

          v197 = v196;
          v198 = j + 1;
          if (__OFADD__(j, 1))
          {
            __break(1u);
LABEL_260:
            __break(1u);
LABEL_261:
            v194 = sub_1A524E2B4();
            if (!v194)
            {
              goto LABEL_262;
            }

            goto LABEL_233;
          }

          v199 = [v196 uuid];
          v200 = sub_1A524C674();
          v202 = v201;

          v203 = [v197 retrievalType];
          v204 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInteger_];
          if (v204)
          {
            break;
          }

          v205 = sub_1A3C5DCA4(v200, v202);
          v207 = v206;

          if (v207)
          {
            v216 = swift_isUniquelyReferenced_nonNull_native();
            *&v274[0] = v193;
            if (!v216)
            {
              sub_1A3DAD990();
              v193 = *&v274[0];
            }

            sub_1A3D74B38(v205, v193, v217);
LABEL_252:

            if (v198 == v194)
            {
              goto LABEL_262;
            }

            goto LABEL_258;
          }

          ++j;
          if (v198 == v194)
          {
            goto LABEL_262;
          }
        }

        v269 = v204;
        v208 = swift_isUniquelyReferenced_nonNull_native();
        *&v274[0] = v193;
        v209 = sub_1A3C5DCA4(v200, v202);
        v211 = v193[2];
        v212 = (v210 & 1) == 0;
        v139 = __OFADD__(v211, v212);
        v213 = v211 + v212;
        if (v139)
        {
          goto LABEL_292;
        }

        v214 = v210;
        if (v193[3] < v213)
        {
          break;
        }

        if (v208)
        {
          goto LABEL_250;
        }

        v221 = v209;
        sub_1A3DAD990();
        v209 = v221;
        if (v214)
        {
LABEL_251:
          v218 = v209;

          v193 = *&v274[0];
          v219 = *(*&v274[0] + 56);
          v220 = *(v219 + 8 * v218);
          *(v219 + 8 * v218) = v269;

          goto LABEL_252;
        }

LABEL_256:
        v193 = *&v274[0];
        *(*&v274[0] + 8 * (v209 >> 6) + 64) |= 1 << v209;
        v222 = (v193[6] + 16 * v209);
        *v222 = v200;
        v222[1] = v202;
        *(v193[7] + 8 * v209) = v269;

        v223 = v193[2];
        v139 = __OFADD__(v223, 1);
        v224 = v223 + 1;
        if (v139)
        {
          goto LABEL_294;
        }

        v193[2] = v224;
        if (v198 == v194)
        {
          goto LABEL_262;
        }

LABEL_258:
        ;
      }

      sub_1A3DACE54(v213, v208);
      v209 = sub_1A3C5DCA4(v200, v202);
      if ((v214 & 1) != (v215 & 1))
      {
        goto LABEL_295;
      }

LABEL_250:
      if (v214)
      {
        goto LABEL_251;
      }

      goto LABEL_256;
    }

LABEL_262:
  }

  else
  {
    v193 = 0;
  }

  v225 = v272;
  v226 = v270;
  *&v270[v272[13]] = v193;
  v227 = v271;
  v228 = [v271 isUnsafeQuery];

  v226[v225[16]] = v228;
  v229 = v267;
  sub_1A3DAF424(v226, v267, type metadata accessor for PhotosSearchResults);
  v230 = *(v266 + 56);
  v230(v229, 0, 1, v225);
  v231 = OBJC_IVAR____TtC12PhotosUICore19PhotosSearchManager_mostRecentSearchResult;
  v232 = v264;
  swift_beginAccess();
  sub_1A3C9B11C(v229, v232 + v231);
  swift_endAccess();
  if (qword_1EB15B580 != -1)
  {
    swift_once();
  }

  v233 = sub_1A5246F24();
  __swift_project_value_buffer(v233, qword_1EB15B588);
  v234 = v265;
  sub_1A3DAF424(v226, v265, type metadata accessor for PhotosSearchResults);
  v235 = sub_1A5246F04();
  v236 = sub_1A524D224();
  if (os_log_type_enabled(v235, v236))
  {
    v237 = swift_slowAlloc();
    *&v274[0] = swift_slowAlloc();
    *v237 = 136315138;
    if (*(v234 + v272[11]))
    {
      v238 = sub_1A524C3F4();
      v240 = v239;
    }

    else
    {
      v240 = 0xE300000000000000;
      v238 = 7104878;
    }

    sub_1A3DAF48C(v234, type metadata accessor for PhotosSearchResults);
    sub_1A3C2EF94(v238, v240, v274);
  }

  sub_1A3DAF48C(v234, type metadata accessor for PhotosSearchResults);
  v241 = [v271 searchSuggestions];
  if (!v241)
  {
    goto LABEL_287;
  }

  v242 = v241;
  sub_1A3C52C70(0, &qword_1EB1209D8, 0x1E6978A98);
  v243 = sub_1A524CA34();

  if (v243 >> 62)
  {
    v244 = sub_1A524E2B4();
  }

  else
  {
    v244 = *((v243 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v244)
  {

    v246 = MEMORY[0x1E69E7CC0];
    if (*(MEMORY[0x1E69E7CC0] + 16))
    {
LABEL_284:
      sub_1A3C2DCD4(0, &qword_1EB12C280, &type metadata for PhotosSearchSuggestionGroup, MEMORY[0x1E69E6F90]);
      v257 = swift_allocObject();
      *(v257 + 16) = xmmword_1A52F8E10;
      sub_1A3DA27B0(v246, v257 + 32);
LABEL_288:
      v258 = v270;
      v259 = v267;
      sub_1A3DAF424(v270, v267, type metadata accessor for PhotosSearchResults);
      v230(v259, 0, 1, v272);
      v263(v259, v257);

      sub_1A3C330B0(v259, &qword_1EB125F80, type metadata accessor for PhotosSearchResults);
      sub_1A3DAF48C(v258, type metadata accessor for PhotosSearchResults);
      return;
    }

    goto LABEL_286;
  }

  v276 = MEMORY[0x1E69E7CC0];
  sub_1A3DADE0C(0, v244 & ~(v244 >> 63), 0);
  if ((v244 & 0x8000000000000000) == 0)
  {
    v245 = 0;
    v246 = v276;
    do
    {
      if ((v243 & 0xC000000000000001) != 0)
      {
        v247 = MEMORY[0x1A59097F0](v245, v243);
      }

      else
      {
        v247 = *(v243 + 8 * v245 + 32);
      }

      sub_1A3DA20D8(v247, v273, v274);
      v276 = v246;
      v249 = *(v246 + 16);
      v248 = *(v246 + 24);
      if (v249 >= v248 >> 1)
      {
        sub_1A3DADE0C((v248 > 1), v249 + 1, 1);
        v246 = v276;
      }

      ++v245;
      *(v246 + 16) = v249 + 1;
      v250 = (v246 + 144 * v249);
      v250[2] = v274[0];
      v251 = v274[1];
      v252 = v274[2];
      v253 = v274[4];
      v250[5] = v274[3];
      v250[6] = v253;
      v250[3] = v251;
      v250[4] = v252;
      v254 = v274[5];
      v255 = v274[6];
      v256 = v275[0];
      *(v250 + 153) = *(v275 + 9);
      v250[8] = v255;
      v250[9] = v256;
      v250[7] = v254;
    }

    while (v244 != v245);

    if (*(v246 + 16))
    {
      goto LABEL_284;
    }

LABEL_286:

LABEL_287:
    v257 = 0;
    goto LABEL_288;
  }

  __break(1u);
LABEL_292:
  __break(1u);
LABEL_293:
  __break(1u);
LABEL_294:
  __break(1u);
LABEL_295:
  sub_1A524EB84();
  __break(1u);
}

void sub_1A3DAC4A8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(a4 + *(type metadata accessor for PhotosSearchResults(0) + 56));
  if (v12)
  {
    v13 = *(v6 + 16);
    v14 = swift_allocObject();
    v14[2] = a1;
    v14[3] = a5;
    v14[4] = a6;
    v28[4] = sub_1A3DAE390;
    v28[5] = v14;
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 1107296256;
    v28[2] = sub_1A3DAF914;
    v28[3] = &block_descriptor_9;
    v15 = _Block_copy(v28);
    v16 = v12;
    v17 = a1;

    v18 = [v13 suggestionsForSearchQuery:v17 rangeOfSuggestionText:a2 searchQueryResult:a3 suggestionsHandler:{v16, v15}];
    _Block_release(v15);
    if (qword_1EB15B580 != -1)
    {
      swift_once();
    }

    v19 = sub_1A5246F24();
    __swift_project_value_buffer(v19, qword_1EB15B588);
    v20 = v17;
    v21 = sub_1A5246F04();
    v22 = sub_1A524D224();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v28[0] = swift_slowAlloc();
      *v23 = 138412802;
      *(v23 + 4) = v20;
      *v24 = v20;
      *(v23 + 12) = 1024;
      *(v23 + 14) = v18;
      *(v23 + 18) = 2080;
      v25 = v20;
      v26 = sub_1A524DE84();
      sub_1A3C2EF94(v26, v27, v28);
    }
  }
}

void sub_1A3DAC758(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = *(a1 + 32);

  v9 = a2;
  v8 = a4;
  v7(v9, a3, a4);
}

uint64_t sub_1A3DAC7EC()
{
  sub_1A3DAECB8(*(v0 + 32), *(v0 + 40), *(v0 + 48));
  sub_1A3C330B0(v0 + OBJC_IVAR____TtC12PhotosUICore19PhotosSearchManager_mostRecentSearchResult, &qword_1EB125F80, type metadata accessor for PhotosSearchResults);

  return swift_deallocClassInstance();
}

unint64_t sub_1A3DAC880(uint64_t a1)
{
  sub_1A5243994();
  sub_1A3C2E114(&qword_1EB124D30, MEMORY[0x1E69C2718], MEMORY[0x1E69C2720]);
  v2 = sub_1A524C4A4();

  return sub_1A3DAC95C(a1, v2);
}

unint64_t sub_1A3DAC918(uint64_t a1)
{
  v2 = sub_1A524DBE4();

  return sub_1A3DACB1C(a1, v2);
}

unint64_t sub_1A3DAC95C(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_1A5243994();
  v5 = *(v4 - 8);
  v6.n128_f64[0] = MEMORY[0x1EEE9AC00](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4, v6);
      sub_1A3C2E114(&qword_1EB12ECB0, MEMORY[0x1E69C2718], MEMORY[0x1E69C2728]);
      v16 = sub_1A524C594();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_1A3DACB1C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_1A3C52C70(0, &qword_1EB126610, 0x1E696AD98);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_1A524DBF4();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

void sub_1A3DACBF0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1A3DAF850(0);
  v6 = sub_1A524E774();
  v7 = v6;
  if (*(v5 + 16))
  {
    v32 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
        v22 = v20;
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }

      v23 = sub_1A524DBE4();
      v24 = -1 << *(v7 + 32);
      v25 = v23 & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_33;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_1A3DACE54(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1A3C2EE9C(0, &qword_1EB126440, MEMORY[0x1E69E6EC8]);
  v35 = v4;
  v6 = sub_1A524E774();
  v7 = v6;
  if (*(v5 + 16))
  {
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }

      sub_1A524EC94();
      sub_1A524C794();
      v25 = sub_1A524ECE4();
      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_1A3DAD108(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1A3C2F294(0, &unk_1EB12C2A0, MEMORY[0x1E69E6EC8]);
  v35 = v4;
  v6 = sub_1A524E774();
  v7 = v6;
  if (*(v5 + 16))
  {
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }

      sub_1A524EC94();
      sub_1A524C794();
      v25 = sub_1A524ECE4();
      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_1A3DAD3B8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1A3C2F1C4(0, &qword_1EB120460, MEMORY[0x1E69E6EC8]);
  v38 = v4;
  v6 = sub_1A524E774();
  v7 = v6;
  if (*(v5 + 16))
  {
    v37 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v39 = *v26;
      if ((v38 & 1) == 0)
      {
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }

      sub_1A524EC94();
      sub_1A524C794();
      v28 = sub_1A524ECE4();
      v29 = -1 << *(v7 + 32);
      v30 = v28 & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v14 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v14 + 8 * v31);
          if (v35 != -1)
          {
            v15 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v30) & ~*(v14 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v39;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v37;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v2;
    if (v36 >= 64)
    {
      bzero(v9, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_1A3DAD688(unint64_t a1, uint64_t a2, __n128 a3)
{
  if ((*(a2 + 64 + ((((a1 + 1) & ~(-1 << *(a2 + 32))) >> 3) & 0xFFFFFFFFFFFFFF8)) >> ((a1 + 1) & ~(-1 << *(a2 + 32)))))
  {
    sub_1A524E244();
    sub_1A524EC94();
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  *(a2 + 64 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v3 = *(a2 + 16);
  v4 = __OFSUB__(v3, 1);
  v5 = v3 - 1;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v5;
    ++*(a2 + 36);
  }
}

void sub_1A3DAD838()
{
  v1 = v0;
  sub_1A3DAF850(0);
  v2 = *v0;
  v3 = sub_1A524E764();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      v13 = __clz(__rbit64(v11 & v10));
      goto LABEL_17;
    }

    v14 = 0;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= v12)
      {
        goto LABEL_18;
      }

      v15 = *(v2 + 64 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
LABEL_17:
        v16 = v13 | (v8 << 6);
        v17 = *(*(v2 + 48) + 8 * v16);
        v18 = *(*(v2 + 56) + 8 * v16);
        *(*(v4 + 48) + 8 * v16) = v17;
        *(*(v4 + 56) + 8 * v16) = v18;
        v19 = v17;
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }
    }

    __break(1u);
  }

  else
  {
LABEL_18:

    *v1 = v4;
  }
}

void sub_1A3DAD990()
{
  v1 = v0;
  sub_1A3C2EE9C(0, &qword_1EB126440, MEMORY[0x1E69E6EC8]);
  v2 = *v0;
  v3 = sub_1A524E764();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      v13 = __clz(__rbit64(v11 & v10));
      goto LABEL_17;
    }

    v14 = 0;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= v12)
      {
        goto LABEL_18;
      }

      v15 = *(v2 + 64 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
LABEL_17:
        v16 = v13 | (v8 << 6);
        v17 = (*(v2 + 48) + 16 * v16);
        v18 = v17[1];
        v19 = *(*(v2 + 56) + 8 * v16);
        v20 = (*(v4 + 48) + 16 * v16);
        *v20 = *v17;
        v20[1] = v18;
        *(*(v4 + 56) + 8 * v16) = v19;
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }
    }

    __break(1u);
  }

  else
  {
LABEL_18:

    *v1 = v4;
  }
}

void sub_1A3DADB0C()
{
  v1 = v0;
  sub_1A3C2F294(0, &unk_1EB12C2A0, MEMORY[0x1E69E6EC8]);
  v2 = *v0;
  v3 = sub_1A524E764();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      v13 = __clz(__rbit64(v11 & v10));
      goto LABEL_17;
    }

    v14 = 0;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= v12)
      {
        goto LABEL_18;
      }

      v15 = *(v2 + 64 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
LABEL_17:
        v16 = v13 | (v8 << 6);
        v17 = (*(v2 + 48) + 16 * v16);
        v19 = *v17;
        v18 = v17[1];
        v20 = *(*(v2 + 56) + 8 * v16);
        v21 = (*(v4 + 48) + 16 * v16);
        *v21 = v19;
        v21[1] = v18;
        *(*(v4 + 56) + 8 * v16) = v20;
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }
    }

    __break(1u);
  }

  else
  {
LABEL_18:

    *v1 = v4;
  }
}

void sub_1A3DADC84()
{
  v1 = v0;
  sub_1A3C2F1C4(0, &qword_1EB120460, MEMORY[0x1E69E6EC8]);
  v2 = *v0;
  v3 = sub_1A524E764();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      v13 = __clz(__rbit64(v11 & v10));
      goto LABEL_17;
    }

    v14 = 0;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= v12)
      {
        goto LABEL_18;
      }

      v15 = *(v2 + 64 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
LABEL_17:
        v16 = 16 * (v13 | (v8 << 6));
        v17 = (*(v2 + 48) + v16);
        v19 = *v17;
        v18 = v17[1];
        v20 = (*(v2 + 56) + v16);
        v21 = *v20;
        v22 = v20[1];
        v23 = (*(v4 + 48) + v16);
        *v23 = v19;
        v23[1] = v18;
        v24 = (*(v4 + 56) + v16);
        *v24 = v21;
        v24[1] = v22;
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }
    }

    __break(1u);
  }

  else
  {
LABEL_18:

    *v1 = v4;
  }
}

char *sub_1A3DADE0C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1A3DADE2C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1A3DADE2C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1A3C2DCD4(0, &qword_1EB12C288, &type metadata for PhotosSearchSuggestion, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 144);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[144 * v8])
    {
      memmove(v12, v13, 144 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t _s12PhotosUICore0A13SearchResultsV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((_s12PhotosUICore33LemonadeMemoryPlayerConfigurationV2eeoiySbAC_ACtFZ_0() & 1) == 0)
  {
    goto LABEL_36;
  }

  v4 = type metadata accessor for PhotosSearchResults(0);
  if ((sub_1A3D3D27C(*(a1 + v4[5]), *(a2 + v4[5])) & 1) == 0)
  {
    goto LABEL_36;
  }

  if ((sub_1A3D3D27C(*(a1 + v4[6]), *(a2 + v4[6])) & 1) == 0)
  {
    goto LABEL_36;
  }

  sub_1A3DA633C(*(a1 + v4[7]), *(a2 + v4[7]));
  if ((v5 & 1) == 0)
  {
    goto LABEL_36;
  }

  sub_1A3DA633C(*(a1 + v4[8]), *(a2 + v4[8]));
  if ((v6 & 1) == 0)
  {
    goto LABEL_36;
  }

  sub_1A3DA67E8(*(a1 + v4[9]), *(a2 + v4[9]));
  if ((v7 & 1) == 0)
  {
    goto LABEL_36;
  }

  v8 = v4[10];
  v9 = *(a1 + v8);
  v10 = *(a2 + v8);
  if (v9)
  {
    if (!v10)
    {
      goto LABEL_36;
    }

    sub_1A3C52C70(0, &qword_1EB1207F0, off_1E771F5C8);
    v11 = v10;
    v12 = v9;
    v13 = sub_1A524DBF4();

    if ((v13 & 1) == 0)
    {
      goto LABEL_36;
    }
  }

  else if (v10)
  {
    goto LABEL_36;
  }

  v14 = v4[11];
  v15 = *(a2 + v14);
  if (*(a1 + v14))
  {
    if (v15)
    {
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    goto LABEL_36;
  }

  if (v15)
  {
    goto LABEL_36;
  }

  v16 = v4[12];
  v17 = *(a2 + v16);
  if (*(a1 + v16))
  {
    if (v17)
    {
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    goto LABEL_36;
  }

  if (v17)
  {
    goto LABEL_36;
  }

  v18 = v4[13];
  v19 = *(a2 + v18);
  if (*(a1 + v18))
  {
    if (v19)
    {
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    goto LABEL_36;
  }

  if (v19)
  {
LABEL_36:
    v31 = 0;
    return v31 & 1;
  }

  v20 = v4[14];
  v21 = *(a1 + v20);
  v22 = *(a2 + v20);
  if (v21)
  {
    if (!v22)
    {
      goto LABEL_36;
    }

    sub_1A3C52C70(0, &qword_1EB120950, 0x1E6978A80);
    v23 = v22;
    v24 = v21;
    v25 = sub_1A524DBF4();

    if ((v25 & 1) == 0)
    {
      goto LABEL_36;
    }
  }

  else if (v22)
  {
    goto LABEL_36;
  }

  v26 = v4[15];
  v27 = (a1 + v26);
  v28 = *(a1 + v26 + 8);
  v29 = (a2 + v26);
  v30 = v29[1];
  if (!v28)
  {
    if (!v30)
    {
      goto LABEL_34;
    }

    goto LABEL_36;
  }

  if (!v30 || (*v27 != *v29 || v28 != v30) && (sub_1A524EAB4() & 1) == 0)
  {
    goto LABEL_36;
  }

LABEL_34:
  v31 = *(a1 + v4[16]) ^ *(a2 + v4[16]) ^ 1;
  return v31 & 1;
}

unint64_t sub_1A3DAE1F8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1A3DAF850(0);
    sub_1A524E794();

    v2 = *(a1 + 32);
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  return MEMORY[0x1E69E7CC8];
}

uint64_t sub_1A3DAE2E4(uint64_t a1, uint64_t a2)
{
  sub_1A3C30560(0, &unk_1EB12C270, sub_1A3DA5F68, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1A3DAE390(void *a1, uint64_t a2, void *a3)
{
  v6 = *(v3 + 24);
  v7 = [a1 searchSuggestions];
  if (!v7)
  {
    v10 = MEMORY[0x1E69E7CC0];
    if (a2 > 1)
    {
      goto LABEL_18;
    }

LABEL_12:
    if (a2 == 1)
    {
      if (qword_1EB15B580 != -1)
      {
        swift_once();
      }

      v12 = sub_1A5246F24();
      __swift_project_value_buffer(v12, qword_1EB15B588);
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    goto LABEL_25;
  }

  v8 = v7;
  sub_1A3C52C70(0, &qword_1EB1209D8, 0x1E6978A98);
  v9 = sub_1A524CA34();

  if (!(v9 >> 62))
  {
    if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

    goto LABEL_17;
  }

  if (!sub_1A524E2B4())
  {
LABEL_17:
    v10 = MEMORY[0x1E69E7CC0];
    if (a2 > 1)
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

LABEL_4:
  sub_1A3C2DCD4(0, &qword_1EB12C280, &type metadata for PhotosSearchSuggestionGroup, MEMORY[0x1E69E6F90]);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1A52F8E10;
  if (v9 >> 62)
  {
    v11 = sub_1A524E2B4();
  }

  else
  {
    v11 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v11)
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  sub_1A3DA27B0(MEMORY[0x1E69E7CC0], v10 + 32);
  if (a2 <= 1)
  {
    goto LABEL_12;
  }

LABEL_18:
  if (a2 != 2)
  {
    if (a2 == 3)
    {

      if (qword_1EB15B580 != -1)
      {
        swift_once();
      }

      v13 = sub_1A5246F24();
      __swift_project_value_buffer(v13, qword_1EB15B588);
      v14 = a3;
      v15 = sub_1A5246F04();
      v16 = sub_1A524D244();

      if (!os_log_type_enabled(v15, v16))
      {
        goto LABEL_40;
      }

      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      if (a3)
      {
        v19 = a3;
        v20 = _swift_stdlib_bridgeErrorToNSError();
        v21 = v20;
      }

      else
      {
        v20 = 0;
        v21 = 0;
      }

      *(v17 + 4) = v20;
      *v18 = v21;
      v31 = "Failed updating suggestion with error: %@";
      goto LABEL_39;
    }

LABEL_25:

    if (qword_1EB15B580 != -1)
    {
      swift_once();
    }

    v22 = sub_1A5246F24();
    __swift_project_value_buffer(v22, qword_1EB15B588);
    v23 = a3;
    v15 = sub_1A5246F04();
    v16 = sub_1A524D244();

    if (!os_log_type_enabled(v15, v16))
    {
      goto LABEL_40;
    }

    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v17 = 138412290;
    if (a3)
    {
      v24 = a3;
      v25 = _swift_stdlib_bridgeErrorToNSError();
      v26 = v25;
    }

    else
    {
      v25 = 0;
      v26 = 0;
    }

    *(v17 + 4) = v25;
    *v18 = v26;
    v31 = "Unknown status for updating suggestion with error: %@";
LABEL_39:
    _os_log_impl(&dword_1A3C1C000, v15, v16, v31, v17, 0xCu);
    sub_1A3CB65E4(v18);
    MEMORY[0x1A590EEC0](v18, -1, -1);
    MEMORY[0x1A590EEC0](v17, -1, -1);
LABEL_40:

    v6(v10);
    goto LABEL_41;
  }

  if (qword_1EB15B580 != -1)
  {
    swift_once();
  }

  v27 = sub_1A5246F24();
  __swift_project_value_buffer(v27, qword_1EB15B588);
  v28 = sub_1A5246F04();
  v29 = sub_1A524D264();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&dword_1A3C1C000, v28, v29, "Cancelled updating suggestion", v30, 2u);
    MEMORY[0x1A590EEC0](v30, -1, -1);
  }

LABEL_41:
}

double sub_1A3DAECB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1A3DAED2C(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1A3C2DCD4(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A3DAED90(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1A3DAF6E8(0, &qword_1EB1263C0, MEMORY[0x1E69E6EC8]);
    v3 = sub_1A524E794();
    v4 = a1 + 32;

    while (1)
    {
      sub_1A3DAF424(v4, v13, sub_1A3DAF684);
      result = sub_1A3D5C0BC(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_1A3C57128(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1A3DAEED0(uint64_t a1)
{
  sub_1A3DAF4EC(0);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_1A3C2DFF8(0, &qword_1EB12C290, MEMORY[0x1E69E6EC8]);
    v8 = sub_1A524E794();
    v9 = *(v3 + 48);
    v10 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = *(v4 + 72);

    while (1)
    {
      sub_1A3DAF424(v10, v6, sub_1A3DAF4EC);
      result = sub_1A3DAC880(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_1A5243994();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1A3DAF0C0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1A3C2EE9C(0, &qword_1EB126440, MEMORY[0x1E69E6EC8]);
    sub_1A524E794();

    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  return MEMORY[0x1E69E7CC8];
}

unint64_t sub_1A3DAF1D4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1A3C2F1C4(0, &qword_1EB120460, MEMORY[0x1E69E6EC8]);
    sub_1A524E794();

    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  return MEMORY[0x1E69E7CC8];
}

unint64_t sub_1A3DAF2F8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1A3C2F294(0, &unk_1EB12C2A0, MEMORY[0x1E69E6EC8]);
    sub_1A524E794();

    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  return MEMORY[0x1E69E7CC8];
}

uint64_t sub_1A3DAF424(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A3DAF48C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1A3DAF4EC(uint64_t a1)
{
  if (!qword_1EB13FA50)
  {
    sub_1A5243994();
    sub_1A3C2DCD4(255, &qword_1EB126ED0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB13FA50);
    }
  }
}

unint64_t sub_1A3DAF588()
{
  result = qword_1EB12C310;
  if (!qword_1EB12C310)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EB12C310);
  }

  return result;
}

uint64_t sub_1A3DAF5EC()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1A3D60150;

  return sub_1A3DA6F90(v4, v5, v6, v2, v3);
}

void sub_1A3DAF684()
{
  if (!qword_1EB126530)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB126530);
    }
  }
}

void sub_1A3DAF6E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void, uint64_t, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E69B8], MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E69C0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1A3DAF754(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhotosSearchResults(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_1A3DAF7B8(void *a1)
{
  type metadata accessor for PhotosSearchResultViewController();
  if (swift_dynamicCastClass())
  {
    v4 = *(v1 + 16);
    v5 = a1;
    v6 = sub_1A454FAAC();
    v7 = sub_1A3D3B558(v6);

    *v4 = v7;
  }

  return result;
}

void sub_1A3DAF850(uint64_t a1)
{
  if (!qword_1EB12C330)
  {
    sub_1A3C52C70(255, &qword_1EB126610, 0x1E696AD98);
    sub_1A3C2DCD4(255, &qword_1EB126ED0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1A3D92850();
    v1 = sub_1A524E7A4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB12C330);
    }
  }
}

void PXApplicationState.registerVisibilityChangeHandler(identifier:handler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = swift_allocObject();
  *(v11 + 2) = a1;
  *(v11 + 3) = a2;
  *(v11 + 4) = a3;
  *(v11 + 5) = a4;
  *(v11 + 6) = ObjectType;
  v13 = _s23VisibilityChangeHandlerCMa(v11, v12);
  v14 = objc_allocWithZone(v13);
  v15 = &v14[OBJC_IVAR____TtCE12PhotosUICoreCSo18PXApplicationStateP33_F7335C9F0C324821A31E9D1547FA77F623VisibilityChangeHandler_identifier];
  *v15 = a1;
  *(v15 + 1) = a2;
  v16 = &v14[OBJC_IVAR____TtCE12PhotosUICoreCSo18PXApplicationStateP33_F7335C9F0C324821A31E9D1547FA77F623VisibilityChangeHandler_action];
  *v16 = sub_1A3DAFCD4;
  v16[1] = v11;
  v28.receiver = v14;
  v28.super_class = v13;
  swift_bridgeObjectRetain_n();

  v17 = objc_msgSendSuper2(&v28, sel_init);
  if (qword_1EB176070 != -1)
  {
    swift_once();
  }

  v18 = qword_1EB176078;
  v19 = [qword_1EB176078 objectForKey_];
  if (!v19)
  {
    v19 = [objc_allocWithZone(MEMORY[0x1E695DF70]) init];
  }

  [v19 addObject_];
  if (qword_1EB176050 != -1)
  {
    swift_once();
  }

  v20 = sub_1A5246F24();
  __swift_project_value_buffer(v20, qword_1EB176058);
  v21 = v17;
  v22 = sub_1A5246F04();
  v23 = sub_1A524D224();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v24 = 136315138;
    sub_1A3C2EF94(*&v21[OBJC_IVAR____TtCE12PhotosUICoreCSo18PXApplicationStateP33_F7335C9F0C324821A31E9D1547FA77F623VisibilityChangeHandler_identifier], *&v21[OBJC_IVAR____TtCE12PhotosUICoreCSo18PXApplicationStateP33_F7335C9F0C324821A31E9D1547FA77F623VisibilityChangeHandler_identifier + 8], &v29);
  }

  [v18 setObject:v19 forKey:v5];
  v25 = swift_getObjectType();
  if (qword_1EB176080 != -1)
  {
    swift_once();
  }

  if (![qword_1EB176088[0] objectForKey_])
  {
    v26 = swift_allocObject();
    *(v26 + 16) = v5;
    *(v26 + 24) = v25;
    v27 = v5;
    sub_1A524D1A4();
  }
}

void sub_1A3DAFCD4(uint64_t a1)
{
  if (qword_1EB176050 != -1)
  {
    swift_once();
  }

  v1 = sub_1A5246F24();
  __swift_project_value_buffer(v1, qword_1EB176058);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A3DAFED4(uint64_t a1, char a2, uint64_t a3)
{
  v5 = sub_1A5240C64();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    if (qword_1EB176070 != -1)
    {
      swift_once();
    }

    v9 = [qword_1EB176078 objectForKey_];
    if (v9)
    {
      v10 = v9;
      objc_opt_self();
      v11 = [swift_dynamicCastObjCClassUnconditional() visibilityState];
      sub_1A524DB94();
      sub_1A5240C54();
      while (v20)
      {
        v12 = sub_1A3C57128(&v19, &v18);
        _s23VisibilityChangeHandlerCMa(v12, v13);
        swift_dynamicCast();
        v14 = v17;
        v15 = *&v17[OBJC_IVAR____TtCE12PhotosUICoreCSo18PXApplicationStateP33_F7335C9F0C324821A31E9D1547FA77F623VisibilityChangeHandler_action];

        v15(v11);

        sub_1A5240C54();
      }

      (*(v6 + 8))(v8, v5);
    }
  }
}

id sub_1A3DB01B0(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = _s23VisibilityChangeHandlerCMa(a1, a2);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_1A3DB0238()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

id sub_1A3DB02DC(uint64_t a1, void *a2)
{
  result = [objc_opt_self() weakToStrongObjectsMapTable];
  *a2 = result;
  return result;
}

void sub_1A3DB0320()
{
  v0 = sub_1A5246F24();
  __swift_allocate_value_buffer(v0, qword_1EB176058);
  __swift_project_value_buffer(v0, qword_1EB176058);
  sub_1A5246EF4();
}

void sub_1A3DB0864(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for NotificationsPhotosItem(255);
    v7 = sub_1A3DB1570(&qword_1EB12AEE0, 255, type metadata accessor for NotificationsPhotosItem, &unk_1A5314CA8);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1A3DB0904()
{
  v1 = v0;
  v2 = sub_1A5246F24();
  v37 = *(v2 - 8);
  v38 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v41 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for LemonadeSharedLibraryCameraSharingItem(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A5241144();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v36 = &v32 - v12;
  v40 = type metadata accessor for NotificationsPhotosItem.NotificationType(0);
  MEMORY[0x1EEE9AC00](v40);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for NotificationsPhotosItem(0);
  v44 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  MEMORY[0x1EEE9AC00](v15);
  v39 = &v32 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v18 = type metadata accessor for SharedLibrarySuggestionsItemList(0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = swift_allocObject();
  v42 = v21;
  *(v21 + 16) = MEMORY[0x1E69E7CC0];
  v43 = (v21 + 16);
  if ([v1[8] shouldShowNotificationBanner])
  {
    v33 = v10;
    v34 = v8;
    sub_1A4624EC8(v20);
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  if ([v1[2] hasSharedLibrary] && objc_msgSend(v1[11], sel_shouldShowBanner))
  {
    v22 = PXPreferencesPromptDateForCameraSharingPreferences();
    if (v22)
    {
      v23 = v22;
      v24 = v36;
      sub_1A52410F4();
    }

    else
    {
      v24 = v36;
      sub_1A5241104();
      v23 = sub_1A5241074();
      PXPreferencesSetPromptDateForCameraSharingPreferences(v23);
    }

    (*(v8 + 16))(v10, v24, v7);
    sub_1A48DC678(v10, v6);
    sub_1A3DB1D2C(v6, v14, type metadata accessor for LemonadeSharedLibraryCameraSharingItem);
    swift_storeEnumTagMultiPayload();
    sub_1A40560C4(v14, v39);
    v25 = v43;
    v26 = *v43;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v25 = v26;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v26 = sub_1A3DB1B38(0, v26[2] + 1, 1, v26);
      *v43 = v26;
    }

    v29 = v26[2];
    v28 = v26[3];
    if (v29 >= v28 >> 1)
    {
      v31 = sub_1A3DB1B38((v28 > 1), v29 + 1, 1, v26);
      *v43 = v31;
    }

    sub_1A3DB1DF8(v6, type metadata accessor for LemonadeSharedLibraryCameraSharingItem);
    (*(v8 + 8))(v24, v7);
    v30 = *v43;
    *(v30 + 16) = v29 + 1;
    sub_1A3DB1D94(v39, v30 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v29);
  }

  sub_1A5245CC4();
}

double sub_1A3DB151C()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1A3DB0904();
  }

  return result;
}

uint64_t sub_1A3DB1570(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id *sub_1A3DB16E0()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_1A3DB1740()
{
  sub_1A3DB16E0();

  return swift_deallocClassInstance();
}

void sub_1A3DB18C4()
{
    ;
  }
}

void sub_1A3DB18F0()
{
    ;
  }
}

void sub_1A3DB1994(uint64_t a1, uint64_t a2)
{
  sub_1A3DB0844(0);
  sub_1A3DB1570(&qword_1EB128DE0, 255, sub_1A3DB0844, off_1E7721070);

  sub_1A5245C54();
}

uint64_t sub_1A3DB1A5C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v4 = 1;
    }

    else
    {
      sub_1A3DB1F18();
      v3 = 0;
      do
      {
        v4 = sub_1A524C594();
        if ((v4 & 1) == 0)
        {
          break;
        }

        v3 += 24;
        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

void *sub_1A3DB1B38(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  sub_1A3DB1EC0(0);
  v10 = *(type metadata accessor for NotificationsPhotosItem(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for NotificationsPhotosItem(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_1A3DB1D04(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1A3DB1F6C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1A3DB1D2C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A3DB1D94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NotificationsPhotosItem(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3DB1DF8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1A3DB1E58(uint64_t a1)
{
  if (!qword_1EB1255E0)
  {
    sub_1A5241144();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB1255E0);
    }
  }
}

void sub_1A3DB1EC0(uint64_t a1)
{
  if (!qword_1EB12C358)
  {
    type metadata accessor for NotificationsPhotosItem(255);
    v1 = sub_1A524EA54();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB12C358);
    }
  }
}

unint64_t sub_1A3DB1F18()
{
  result = qword_1EB12C360;
  if (!qword_1EB12C360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12C360);
  }

  return result;
}

char *sub_1A3DB1F6C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1A3C4D548(0, &qword_1EB12C368, &type metadata for NotificationIdentifier);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

double sub_1A3DB2180(uint64_t a1)
{
  swift_getKeyPath();
  sub_1A3DB2494();
  sub_1A52415D4();

  if (*(v1 + OBJC_IVAR____TtC12PhotosUICore33PXLibraryFilterObservableViewMode___viewMode) != a1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A52415C4();
  }

  return result;
}

uint64_t sub_1A3DB2298()
{
  swift_getKeyPath();
  sub_1A3DB2494();
  sub_1A52415D4();

  return *(v0 + OBJC_IVAR____TtC12PhotosUICore33PXLibraryFilterObservableViewMode___viewMode);
}

double sub_1A3DB2310(uint64_t a1)
{
  if (*(v1 + OBJC_IVAR____TtC12PhotosUICore33PXLibraryFilterObservableViewMode___viewMode) != a1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3DB2494();
    sub_1A52415C4();
  }

  return result;
}

void sub_1A3DB23EC(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A3DB2494();
  sub_1A52415D4();

  *a2 = *(v3 + OBJC_IVAR____TtC12PhotosUICore33PXLibraryFilterObservableViewMode___viewMode);
}

unint64_t sub_1A3DB2494()
{
  result = qword_1EB129620;
  if (!qword_1EB129620)
  {
    type metadata accessor for PXLibraryFilterObservableViewMode(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB129620);
  }

  return result;
}

id sub_1A3DB24EC(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  sub_1A5241604();
  *&v3[OBJC_IVAR____TtC12PhotosUICore33PXLibraryFilterObservableViewMode___viewMode] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t sub_1A3DB25B8()
{
  v0 = sub_1A5240BA4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A5241284();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1A524C624();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1A5240BB4();
  __swift_allocate_value_buffer(v6, qword_1EB196B98);
  __swift_project_value_buffer(v6, qword_1EB196B98);
  sub_1A524C5B4();
  sub_1A5241244();
  (*(v1 + 104))(v3, *MEMORY[0x1E6968DF0], v0);
  return sub_1A5240BC4();
}

uint64_t (*static DeleteAlbumsIntent.title.modify(uint64_t a1, double a2))(uint64_t a1)
{
  if (qword_1EB196B90 != -1)
  {
    swift_once();
  }

  v2 = sub_1A5240BB4();
  __swift_project_value_buffer(v2, qword_1EB196B98);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_1A3DB28A8@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB196B90 != -1)
  {
    swift_once();
  }

  v3 = sub_1A5240BB4();
  v4 = __swift_project_value_buffer(v3, qword_1EB196B98);
  swift_beginAccess();
  return (*(*(v3 - 8) + 16))(a1, v4, v3);
}

uint64_t sub_1A3DB2968(uint64_t a1, double a2)
{
  if (qword_1EB196B90 != -1)
  {
    swift_once();
  }

  v3 = sub_1A5240BB4();
  v4 = __swift_project_value_buffer(v3, qword_1EB196B98);
  swift_beginAccess();
  (*(*(v3 - 8) + 24))(v4, a1, v3);
  return swift_endAccess();
}

uint64_t sub_1A3DB2A30@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a5@<X8>)
{
  if (*a1 == -1)
  {
    v7 = a2(0);
  }

  else
  {
    swift_once();
    v7 = a2(0);
  }

  v8 = v7;
  v9 = __swift_project_value_buffer(v7, a3);
  swift_beginAccess();
  return (*(*(v8 - 8) + 16))(a5, v9, v8);
}

uint64_t sub_1A3DB2AE4(uint64_t a1, void *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5)
{
  if (*a2 == -1)
  {
    v7 = a3(0);
  }

  else
  {
    swift_once();
    v7 = a3(0);
  }

  v8 = v7;
  v9 = __swift_project_value_buffer(v7, a4);
  swift_beginAccess();
  v10 = *(v8 - 8);
  (*(v10 + 24))(v9, a1, v8);
  swift_endAccess();
  return (*(v10 + 8))(a1, v8);
}

uint64_t static DeleteAlbumsIntent.parameterSummary.getter()
{
  sub_1A3DB4DD0(0, &qword_1EB12C378, MEMORY[0x1E695A4A8]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  sub_1A3DB4DD0(0, &qword_1EB12C388, MEMORY[0x1E695A4A0]);
  MEMORY[0x1EEE9AC00](v1);
  sub_1A3DB2D94();
  sub_1A5240314();
  sub_1A5240304();
  swift_getKeyPath();
  sub_1A3DB2E38(0);
  sub_1A52402F4();

  sub_1A5240304();
  sub_1A5240324();
  return sub_1A52402E4();
}

unint64_t sub_1A3DB2D94()
{
  result = qword_1EB12C380;
  if (!qword_1EB12C380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12C380);
  }

  return result;
}

uint64_t sub_1A3DB2E0C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1A523FF64();
  *a1 = result;
  return result;
}

void sub_1A3DB2E38(uint64_t a1)
{
  if (!qword_1EB12C390)
  {
    sub_1A3DB2E98(255);
    v1 = sub_1A524ED44();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB12C390);
    }
  }
}

void sub_1A3DB2E98(uint64_t a1)
{
  if (!qword_1EB12C398)
  {
    sub_1A3DB4E34(255, &qword_1EB12C3A0, &type metadata for AlbumEntity, MEMORY[0x1E69E62F8]);
    sub_1A3DB2F20();
    v1 = sub_1A5240044();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB12C398);
    }
  }
}

unint64_t sub_1A3DB2F20()
{
  result = qword_1EB12C3A8;
  if (!qword_1EB12C3A8)
  {
    sub_1A3DB4E34(255, &qword_1EB12C3A0, &type metadata for AlbumEntity, MEMORY[0x1E69E62F8]);
    sub_1A3DB2FBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12C3A8);
  }

  return result;
}

unint64_t sub_1A3DB2FBC()
{
  result = qword_1EB125D80;
  if (!qword_1EB125D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125D80);
  }

  return result;
}

uint64_t DeleteAlbumsIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v26 = a1;
  v1 = sub_1A5240334();
  v24 = *(v1 - 8);
  v25 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v23 = v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1A5240184();
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v22 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3DB3480(0, v4);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v21 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A5240BA4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1A5241284();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v13 = sub_1A524C624();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v20[0] = sub_1A5240BB4();
  v14 = *(v20[0] - 8);
  MEMORY[0x1EEE9AC00](v20[0]);
  sub_1A3DB2E98(0);
  v20[1] = v15;
  sub_1A524C5B4();
  sub_1A5241244();
  v16 = *MEMORY[0x1E6968DF0];
  v17 = *(v9 + 104);
  v17(v11, v16, v8);
  sub_1A5240BC4();
  sub_1A524C5B4();
  sub_1A5241244();
  v17(v11, v16, v8);
  v18 = v21;
  sub_1A5240BC4();
  (*(v14 + 56))(v18, 0, 1, v20[0]);
  v27 = 0;
  sub_1A5240174();
  (*(v24 + 104))(v23, *MEMORY[0x1E695A500], v25);
  sub_1A3DB34D8();
  sub_1A3DB3554();
  result = sub_1A5240034();
  *v26 = result;
  return result;
}

void sub_1A3DB3480(uint64_t a1, double a2)
{
  if (!qword_1EB12B008)
  {
    sub_1A5240BB4();
    v2 = sub_1A524DF24();
    if (!v3)
    {
      atomic_store(v2, &qword_1EB12B008);
    }
  }
}

unint64_t sub_1A3DB34D8()
{
  result = qword_1EB12C3B0;
  if (!qword_1EB12C3B0)
  {
    sub_1A3DB4E34(255, &qword_1EB12C3A0, &type metadata for AlbumEntity, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12C3B0);
  }

  return result;
}

unint64_t sub_1A3DB3554()
{
  result = qword_1EB125D88;
  if (!qword_1EB125D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125D88);
  }

  return result;
}

uint64_t DeleteAlbumsIntent.perform()(uint64_t a1)
{
  v3 = *v1;
  v2[4] = a1;
  v2[5] = v3;
  sub_1A524CC54();
  v2[6] = sub_1A524CC44();
  v5 = sub_1A524CBC4();
  v2[7] = v5;
  v2[8] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1A3DB3644, v5, v4);
}

uint64_t sub_1A3DB3644()
{
  v0[2] = v0[5];
  sub_1A523FF44();
  v1 = *(v0[3] + 16);

  v2 = swift_task_alloc();
  v0[9] = v2;
  sub_1A3DB2D94();
  *v2 = v0;
  v2[1] = sub_1A3DB3750;
  v3 = v0[4];

  return AppIntent.px_performWithLoggingAndAnalytics(intentName:category:count:_:)(v3, 0, 0, 0, 0, v1, 0, &unk_1A52FCE78);
}

uint64_t sub_1A3DB3750()
{
  v2 = *v1;
  *(*v1 + 80) = v0;

  v3 = *(v2 + 56);
  v4 = *(v2 + 64);
  if (v0)
  {
    v5 = sub_1A3DB38C8;
  }

  else
  {
    v5 = sub_1A3DB3864;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1A3DB3864()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A3DB38C8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A3DB3960(uint64_t a1, uint64_t a2)
{
  v2[9] = a1;
  v2[10] = a2;
  sub_1A524CC54();
  v2[11] = sub_1A524CC44();
  v4 = sub_1A524CBC4();
  v2[12] = v4;
  v2[13] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1A3DB39F8, v4, v3);
}

uint64_t sub_1A3DB39F8()
{
  v1 = v0[10];
  sub_1A523FF44();
  v2 = v0[7];
  v0[14] = v2;
  v0[8] = v1;
  v3 = sub_1A3DB2D94();
  v4 = AppIntent.px_intentName.getter(&type metadata for DeleteAlbumsIntent);
  v6 = v5;
  v0[15] = v5;
  v0[2] = v1;
  v0[5] = &type metadata for DeleteAlbumsIntent;
  v0[6] = v3;

  v7 = swift_task_alloc();
  v0[16] = v7;
  *v7 = v0;
  v7[1] = sub_1A3DB3B20;

  return sub_1A3DB4318(v2, v4, v6);
}

uint64_t sub_1A3DB3B20()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = v2[12];
    v4 = v2[13];
    v5 = sub_1A3DB3CEC;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v2 + 2);
    v3 = v2[12];
    v4 = v2[13];
    v5 = sub_1A3DB3C7C;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1A3DB3C7C()
{

  sub_1A523FDD4();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A3DB3CEC()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A3DB3D58(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1A3D60150;

  return sub_1A3DB3960(a1, v1);
}

uint64_t sub_1A3DB3DF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1A3CA8098;

  return (sub_1A3DB4318)(a1, a2, a3, a4);
}

void *sub_1A3DB3EC0@<X0>(void *a1@<X8>)
{
  result = sub_1A523FF44();
  *a1 = v3;
  return result;
}

uint64_t (*DeleteAlbumsIntent.entities.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1A523FF34();
  return sub_1A3DB3FF0;
}

void sub_1A3DB3FF0(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_1A3DB4080(uint64_t a1, uint64_t a2)
{
  sub_1A3DB4DD0(0, &qword_1EB12C378, MEMORY[0x1E695A4A8]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1A3DB4DD0(0, &qword_1EB12C388, MEMORY[0x1E695A4A0]);
  MEMORY[0x1EEE9AC00](v3);
  sub_1A5240314();
  sub_1A5240304();
  swift_getKeyPath();
  sub_1A3DB2E38(0);
  sub_1A52402F4();

  sub_1A5240304();
  sub_1A5240324();
  return sub_1A52402E4();
}

uint64_t sub_1A3DB4240(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A3D60150;

  return DeleteAlbumsIntent.perform()(a1);
}

uint64_t sub_1A3DB42DC(uint64_t a1)
{
  v2 = sub_1A3DB2D94();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

uint64_t sub_1A3DB4318(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_1A5246F24();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  sub_1A524CC54();
  v3[8] = sub_1A524CC44();
  v6 = sub_1A524CBC4();
  v3[9] = v6;
  v3[10] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1A3DB4410, v6, v5);
}

void sub_1A3DB4410()
{
  v1 = v0;
  if (!(sub_1A4899780(*(v0 + 16)) >> 62))
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  sub_1A3C52C70(0, &qword_1EB1265D0, 0x1E6978958);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A3DB4760()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = *(v2 + 72);
    v4 = *(v2 + 80);
    v5 = sub_1A3DB48F4;
  }

  else
  {

    v3 = *(v2 + 72);
    v4 = *(v2 + 80);
    v5 = sub_1A3DB487C;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1A3DB487C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A3DB48F4()
{
  v1 = *(v0 + 88);

  v2 = *(v0 + 8);

  return v2();
}

unint64_t sub_1A3DB4970()
{
  result = qword_1EB12C3B8;
  if (!qword_1EB12C3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12C3B8);
  }

  return result;
}

unint64_t sub_1A3DB49D0()
{
  result = qword_1EB12C3C0;
  if (!qword_1EB12C3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12C3C0);
  }

  return result;
}

unint64_t sub_1A3DB4A28()
{
  result = qword_1EB12C3C8;
  if (!qword_1EB12C3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12C3C8);
  }

  return result;
}

unint64_t sub_1A3DB4A80()
{
  result = qword_1EB12C3D0;
  if (!qword_1EB12C3D0)
  {
    sub_1A3DB4AD8(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12C3D0);
  }

  return result;
}

void sub_1A3DB4AD8(uint64_t a1)
{
  if (!qword_1EB12C3D8)
  {
    sub_1A3DB4B50();
    sub_1A3DB4BA4();
    v1 = sub_1A52402B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB12C3D8);
    }
  }
}

unint64_t sub_1A3DB4B50()
{
  result = qword_1EB12C3E0;
  if (!qword_1EB12C3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12C3E0);
  }

  return result;
}

unint64_t sub_1A3DB4BA4()
{
  result = qword_1EB12C3E8;
  if (!qword_1EB12C3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12C3E8);
  }

  return result;
}

uint64_t *__swift_initWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithTake_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t getEnumTagSinglePayload for DeleteAlbumsIntent(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t storeEnumTagSinglePayload for DeleteAlbumsIntent(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1A3DB4D5C()
{
  result = qword_1EB12C3F0;
  if (!qword_1EB12C3F0)
  {
    sub_1A3DB4DD0(255, &qword_1EB12C3F8, MEMORY[0x1E695A488]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12C3F0);
  }

  return result;
}

void sub_1A3DB4DD0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1A3DB2D94();
    v7 = a3(a1, &type metadata for DeleteAlbumsIntent, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1A3DB4E34(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1A3DB4F20(uint64_t a1)
{
  if (!qword_1EB12B270)
  {
    sub_1A524CCB4();
    v1 = sub_1A524DF24();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB12B270);
    }
  }
}

uint64_t sub_1A3DB4F78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v14 = swift_task_alloc();
  *(v10 + 16) = v14;
  *v14 = v10;
  v14[1] = sub_1A3D60150;

  return PhotosFeedbackActionPerformer.reportCleanupFeedback(type:asset:originalImageData:renderedImageData:summaryString:completionHandler:)(a5, a6, a7, a8, v18, v19, v20, v21);
}

double sub_1A3DB506C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1A3D602A8(a1, a2);
  }

  return result;
}

void __swiftcall PXEditCleanupFeedbackActionPerformer.init()(PXEditCleanupFeedbackActionPerformer *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

unint64_t type metadata accessor for PXEditCleanupFeedbackActionPerformer(uint64_t a1, uint64_t a2)
{
  result = qword_1EB196E40;
  if (!qword_1EB196E40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB196E40);
  }

  return result;
}

void type metadata accessor for PXPhotosFeedbackType()
{
  if (!qword_1EB1208D0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1EB1208D0);
    }
  }
}

uint64_t sub_1A3DB556C(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1A3C59280(result, a2);
  }

  return result;
}

uint64_t objectdestroyTm_0()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 64);
  if (v1 >> 60 != 15)
  {
    sub_1A3C59280(*(v0 + 56), v1);
  }

  v2 = *(v0 + 80);
  if (v2 >> 60 != 15)
  {
    sub_1A3C59280(*(v0 + 72), v2);
  }

  return swift_deallocObject();
}

uint64_t sub_1A3DB5608(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v12 = v10[4];
  v13 = v10[5];
  v14 = v10[6];
  v15 = v10[7];
  v16 = v10[8];
  v17 = swift_task_alloc();
  *(v11 + 16) = v17;
  *v17 = v11;
  v17[1] = sub_1A3D60150;

  return sub_1A3DB4F78(v17, v18, v19, v12, v13, v14, v15, v16, a9, a10);
}

unint64_t sub_1A3DB58C8(uint64_t a1, uint64_t a2)
{
  result = qword_1EB126660;
  if (!qword_1EB126660)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB126660);
  }

  return result;
}

uint64_t sub_1A3DB5A48()
{
  v0 = sub_1A5240BA4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A5241284();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1A524C624();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1A5240BB4();
  __swift_allocate_value_buffer(v6, qword_1EB1EB848);
  __swift_project_value_buffer(v6, qword_1EB1EB848);
  sub_1A524C5B4();
  sub_1A5241244();
  (*(v1 + 104))(v3, *MEMORY[0x1E6968DF0], v0);
  return sub_1A5240BC4();
}

unint64_t sub_1A3DB5C34()
{
  result = qword_1EB12C410;
  if (!qword_1EB12C410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12C410);
  }

  return result;
}

void sub_1A3DB5CAC(uint64_t a1)
{
  if (!qword_1EB12C420)
  {
    sub_1A3DB7AE0(255, &qword_1EB12C428, sub_1A3DB2FBC, &type metadata for AlbumEntity, MEMORY[0x1E695A1A0]);
    v1 = sub_1A524ED44();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB12C420);
    }
  }
}

uint64_t sub_1A3DB5D44(uint64_t a1, uint64_t a2)
{
  v2[11] = a1;
  v2[12] = a2;
  sub_1A524CC54();
  v2[13] = sub_1A524CC44();
  v4 = sub_1A524CBC4();
  v2[14] = v4;
  v2[15] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1A3DB5DDC, v4, v3);
}

uint64_t sub_1A3DB5DDC()
{
  *(v0 + 80) = *(v0 + 96);
  sub_1A523FF44();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  *(v0 + 48) = v2;
  *(v0 + 56) = v1;
  *(v0 + 64) = v3;
  *(v0 + 72) = v4;
  AlbumEntity.albumType.getter((v0 + 152));

  *(v0 + 153) = *(v0 + 152);
  v5 = AlbumEntity.CollectionType.rawValue.getter();
  v7 = v6;
  *(v0 + 128) = v6;
  v8 = swift_task_alloc();
  *(v0 + 136) = v8;
  sub_1A3DB5C34();
  *v8 = v0;
  v8[1] = sub_1A3DB5F3C;
  v9 = *(v0 + 88);

  return AppIntent.px_performWithLoggingAndAnalytics(intentName:category:count:_:)(v9, 0, 0, v5, v7, 0, 1, &unk_1A52FD088);
}

uint64_t sub_1A3DB5F3C()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = *(v2 + 112);
    v4 = *(v2 + 120);
    v5 = sub_1A3DB60BC;
  }

  else
  {

    v3 = *(v2 + 112);
    v4 = *(v2 + 120);
    v5 = sub_1A3DB6058;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1A3DB6058()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A3DB60BC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A3DB612C(uint64_t a1, uint64_t a2)
{
  v2[10] = a1;
  v2[11] = a2;
  sub_1A524CC54();
  v2[12] = sub_1A524CC44();
  v4 = sub_1A524CBC4();
  v2[13] = v4;
  v2[14] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1A3DB61C4, v4, v3);
}

uint64_t sub_1A3DB61C4()
{
  sub_1A523FF44();
  v1 = *(v0 + 32);
  *(v0 + 48) = *(v0 + 16);
  *(v0 + 64) = v1;
  v2 = swift_task_alloc();
  *(v0 + 120) = v2;
  *v2 = v0;
  v2[1] = sub_1A3DB6270;

  return sub_1A3DB64C8((v0 + 48));
}

uint64_t sub_1A3DB6270()
{
  v2 = *v1;
  *(v2 + 128) = v0;

  v3 = *(v2 + 104);
  v4 = *(v2 + 112);
  if (v0)
  {
    v5 = sub_1A3DB6464;
  }

  else
  {
    v5 = sub_1A3DB63F4;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1A3DB63F4()
{

  sub_1A523FDD4();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A3DB6464()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A3DB64C8(_OWORD *a1)
{
  v3 = sub_1A5240E64();
  *(v1 + 16) = v3;
  *(v1 + 24) = *(v3 - 8);
  *(v1 + 32) = swift_task_alloc();
  v4 = sub_1A5246F24();
  *(v1 + 40) = v4;
  *(v1 + 48) = *(v4 - 8);
  *(v1 + 56) = swift_task_alloc();
  v5 = a1[1];
  *(v1 + 64) = *a1;
  *(v1 + 80) = v5;
  sub_1A524CC54();
  *(v1 + 96) = sub_1A524CC44();
  v7 = sub_1A524CBC4();
  *(v1 + 104) = v7;
  *(v1 + 112) = v6;

  return MEMORY[0x1EEE6DFA0](sub_1A3DB6620, v7, v6);
}

void sub_1A3DB6620()
{
  v13 = v0;
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  v5 = v0[6];
  v4 = v0[7];
  v6 = v0[5];
  v9 = v0[8];
  v10 = v3;
  v11 = v2;
  v12 = v1;
  v7 = v9;

  PXAppIntentsDebugDescription(for:)(&v9);
  sub_1A3DB7808(v9, v10, v11, v12);
  v8 = sub_1A3CB648C();
  (*(v5 + 16))(v4, v8, v6);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A3DB6858()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  v3 = *(v2 + 112);
  v4 = *(v2 + 104);
  if (v0)
  {
    v5 = sub_1A3DB6A34;
  }

  else
  {
    v5 = sub_1A3DB6994;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1A3DB6994()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1A3DB6A34()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1A3DB6AD4@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1A3DB7B48(0, &unk_1EB12B250, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v20 - v8;
  v10 = a1[1];
  v20 = *a1;
  v21 = v10;
  v11 = [v20 localIdentifier];
  v12 = sub_1A524C674();
  v14 = v13;

  v25 = v20;
  v26 = v21;
  AlbumEntity.albumType.getter(&v24);
  if (v24)
  {
    v22 = 0;
    v23 = 0xE000000000000000;
    sub_1A524E404();

    v22 = 0xD000000000000020;
    v23 = 0x80000001A53B6D20;
    MEMORY[0x1A5907B60](v12, v14);
    sub_1A5240E34();

    v15 = sub_1A5240E64();
    v16 = *(v15 - 8);
    result = (*(v16 + 48))(v6, 1, v15);
    if (result != 1)
    {

      return (*(v16 + 32))(a2, v6, v15);
    }

    __break(1u);
    goto LABEL_8;
  }

  v22 = 0;
  v23 = 0xE000000000000000;
  sub_1A524E404();

  v22 = 0xD00000000000001ALL;
  v23 = 0x80000001A53B6D50;
  MEMORY[0x1A5907B60](v12, v14);
  sub_1A5240E34();

  v18 = sub_1A5240E64();
  v19 = *(v18 - 8);
  result = (*(v19 + 48))(v9, 1, v18);
  if (result == 1)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  return (*(v19 + 32))(a2, v9, v18);
}

void (*sub_1A3DB6E04(uint64_t *a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1A523FF34();
  return sub_1A3DB6E78;
}

uint64_t sub_1A3DB6E80@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB196E50 != -1)
  {
    swift_once();
  }

  v3 = sub_1A5240BB4();
  v4 = __swift_project_value_buffer(v3, qword_1EB1EB848);
  swift_beginAccess();
  return (*(*(v3 - 8) + 16))(a1, v4, v3);
}

uint64_t sub_1A3DB6F40(uint64_t a1, uint64_t a2)
{
  sub_1A3DB7AE0(0, &qword_1EB12C408, sub_1A3DB5C34, &type metadata for OpenAlbumIntent, MEMORY[0x1E695A4A8]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1A3DB7AE0(0, &qword_1EB12C418, sub_1A3DB5C34, &type metadata for OpenAlbumIntent, MEMORY[0x1E695A4A0]);
  MEMORY[0x1EEE9AC00](v3);
  sub_1A5240314();
  sub_1A5240304();
  swift_getKeyPath();
  sub_1A3DB5CAC(0);
  sub_1A52402F4();

  sub_1A5240304();
  sub_1A5240324();
  return sub_1A52402E4();
}

uint64_t sub_1A3DB7128(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A3D60150;

  return sub_1A3DB5D44(a1, v4);
}

uint64_t sub_1A3DB71C8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1A3DB722C();
  *a1 = result;
  return result;
}

uint64_t sub_1A3DB71F0(uint64_t a1)
{
  v2 = sub_1A3DB5C34();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

uint64_t sub_1A3DB722C()
{
  v0 = sub_1A5240334();
  v27 = *(v0 - 8);
  v28 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v26 = v22 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3DB7B48(0, &qword_1EB1260E8, MEMORY[0x1E6959F70]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v25 = v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v24 = v22 - v5;
  sub_1A3DB7B48(0, &qword_1EB12B008, MEMORY[0x1E6968E10]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v23 = v22 - v7;
  v8 = sub_1A5240BA4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1A5241284();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v13 = sub_1A524C624();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v22[0] = sub_1A5240BB4();
  v14 = *(v22[0] - 8);
  MEMORY[0x1EEE9AC00](v22[0]);
  sub_1A3DB7AE0(0, &qword_1EB12C428, sub_1A3DB2FBC, &type metadata for AlbumEntity, MEMORY[0x1E695A1A0]);
  v22[1] = v15;
  sub_1A524C5B4();
  sub_1A5241244();
  v16 = *MEMORY[0x1E6968DF0];
  v17 = *(v9 + 104);
  v17(v11, v16, v8);
  sub_1A5240BC4();
  sub_1A524C5B4();
  sub_1A5241244();
  v17(v11, v16, v8);
  v18 = v23;
  sub_1A5240BC4();
  (*(v14 + 56))(v18, 0, 1, v22[0]);
  v19 = sub_1A523FDB4();
  v29 = 0u;
  v30 = 0u;
  v20 = *(*(v19 - 8) + 56);
  v20(v24, 1, 1, v19);
  v20(v25, 1, 1, v19);
  (*(v27 + 104))(v26, *MEMORY[0x1E695A500], v28);
  sub_1A3DB3554();
  return sub_1A523FFB4();
}

uint64_t sub_1A3DB776C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1A3D60150;

  return sub_1A3DB612C(a1, v1);
}

double sub_1A3DB7808(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
  }

  return result;
}

unint64_t sub_1A3DB786C()
{
  result = qword_1EB12C430;
  if (!qword_1EB12C430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12C430);
  }

  return result;
}

unint64_t sub_1A3DB78C4()
{
  result = qword_1EB125D90;
  if (!qword_1EB125D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125D90);
  }

  return result;
}

unint64_t sub_1A3DB7920()
{
  result = qword_1EB12C438;
  if (!qword_1EB12C438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12C438);
  }

  return result;
}

unint64_t sub_1A3DB7978()
{
  result = qword_1EB12C440;
  if (!qword_1EB12C440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12C440);
  }

  return result;
}

unint64_t sub_1A3DB79D0()
{
  result = qword_1EB12C448;
  if (!qword_1EB12C448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12C448);
  }

  return result;
}

unint64_t sub_1A3DB7A50()
{
  result = qword_1EB12C450;
  if (!qword_1EB12C450)
  {
    sub_1A3DB7AE0(255, &qword_1EB12C458, sub_1A3DB5C34, &type metadata for OpenAlbumIntent, MEMORY[0x1E695A488]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12C450);
  }

  return result;
}

void sub_1A3DB7AE0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_1A3DB7B48(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1A524DF24();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1A3DB7BA0(uint64_t a2@<X8>)
{
  v3 = type metadata accessor for CloudQuotaNotificationItem(0) - 8;
  MEMORY[0x1EEE9AC00](v3);
  *(a2 + 24) = 0u;
  *(a2 + 8) = 0u;
  sub_1A52458F4();
}

unint64_t sub_1A3DB7D6C@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    v5 = *v2;
    if (*(v5 + 16) > result)
    {
      v6 = *(type metadata accessor for CloudQuotaNotificationItem(0) - 8);
      return sub_1A3DB7E90(v5 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v3, a2, type metadata accessor for CloudQuotaNotificationItem);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A3DB7E34(uint64_t a1)
{
  v2 = type metadata accessor for CloudQuotaNotificationItem(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A3DB7E90(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1A3DB7EF8(uint64_t a1)
{
  if (!qword_1EB126138)
  {
    sub_1A3DB7F50();
    v1 = sub_1A524DF24();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB126138);
    }
  }
}

unint64_t sub_1A3DB7F50()
{
  result = qword_1EB126140;
  if (!qword_1EB126140)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EB126140);
  }

  return result;
}

unint64_t sub_1A3DB7FAC()
{
  result = qword_1EB129808;
  if (!qword_1EB129808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB129808);
  }

  return result;
}

unint64_t sub_1A3DB8004()
{
  result = qword_1EB12C460;
  if (!qword_1EB12C460)
  {
    type metadata accessor for CloudQuotaNotificationItem(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12C460);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_s8Sendable_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1A3DB8088(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_1A3DB80D0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1A3DB8130()
{
  if (!qword_1EB12AF10)
  {
    v0 = sub_1A524DF24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12AF10);
    }
  }
}

void sub_1A3DB8230(uint64_t a1)
{
  if (!qword_1EB121550)
  {
    sub_1A3DB82C4(255, &qword_1EB121218, sub_1A3DB8328, MEMORY[0x1E6981F40]);
    sub_1A3DB84CC();
    v1 = sub_1A524B8B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB121550);
    }
  }
}

void sub_1A3DB82C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1A3DB8328(uint64_t a1)
{
  if (!qword_1EB123DA0)
  {
    sub_1A3DB8478(255, &qword_1EB123DA8, MEMORY[0x1E69815C0], MEMORY[0x1E697EC00], MEMORY[0x1E697E830]);
    sub_1A3DB9A68(255, &qword_1EB122498, MEMORY[0x1E697F960], v1);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB123DA0);
    }
  }
}

void sub_1A3DB83E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for GenerativeStoryCreatedMemoriesFeedView(255);
    sub_1A3DB8478(255, &qword_1EB122890, &type metadata for GenerativeStoryCreationErrorView, &type metadata for GenerativeStoryCreationErrorView, MEMORY[0x1E697F960]);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1A3DB8478(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_1A3DB84CC()
{
  result = qword_1EB121220;
  if (!qword_1EB121220)
  {
    sub_1A3DB82C4(255, &qword_1EB121218, sub_1A3DB8328, MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB121220);
  }

  return result;
}

uint64_t sub_1A3DB8554@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v99 = a2;
  sub_1A3DB83E0(0, &qword_1EB122C50, MEMORY[0x1E697F948]);
  v88 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v90 = &v86 - v4;
  sub_1A3DB83E0(0, &qword_1EB122840, MEMORY[0x1E697F960]);
  v96 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v91 = &v86 - v6;
  v89 = type metadata accessor for GenerativeStoryCreatedMemoriesFeedView(0);
  v7 = MEMORY[0x1EEE9AC00](v89);
  v86 = &v86 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1E697F948];
  sub_1A3DB9A68(0, &qword_1EB122B40, MEMORY[0x1E697F948], v7);
  v92 = v10;
  v11 = MEMORY[0x1EEE9AC00](v10);
  v94 = &v86 - v12;
  sub_1A3DB9B10(0, &qword_1EB122C58, v9, v11);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v86 - v15;
  v17 = MEMORY[0x1E697F960];
  sub_1A3DB9B10(0, &qword_1EB122860, MEMORY[0x1E697F960], v14);
  v93 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v87 = &v86 - v19;
  v20 = type metadata accessor for GenerativeStoryPromptSuggestionView(0);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = (&v86 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A3DB9A68(0, &qword_1EB122498, v17, v21);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v97 = &v86 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v95 = &v86 - v27;
  sub_1A524B404();
  v98 = sub_1A524B474();

  sub_1A524BC74();
  sub_1A5248AD4();
  v28 = a1;
  v29 = *a1;
  v30 = *(**a1 + 384);
  v31 = swift_retain_n();
  v32 = v30(v31);
  if (v32 > 1)
  {
    if (v32 == 2)
    {

      v102[0] = *(v28 + 1);
      *(v102 + 9) = *(v28 + 17);
      sub_1A3DB82C4(0, &qword_1EB12C468, sub_1A3DB8130, MEMORY[0x1E6981948]);
      sub_1A524B924();
      v38 = v86;
      sub_1A43C67F4(v29, *v101, *&v101[8], *&v101[16], v101[24], v86);
      sub_1A3DBA1B0(v38, v90, type metadata accessor for GenerativeStoryCreatedMemoriesFeedView);
      swift_storeEnumTagMultiPayload();
      sub_1A3DB8478(0, &qword_1EB122890, &type metadata for GenerativeStoryCreationErrorView, &type metadata for GenerativeStoryCreationErrorView, MEMORY[0x1E697F960]);
      sub_1A3DB93F8(&qword_1EB125160, type metadata accessor for GenerativeStoryCreatedMemoriesFeedView, &unk_1A53365E0);
      sub_1A3DB9C30();
      v39 = v91;
      sub_1A5249744();
      v40 = MEMORY[0x1E697F960];
      sub_1A3DB9CD0(v39, v94, &qword_1EB122840, MEMORY[0x1E697F960], sub_1A3DB83E0);
      swift_storeEnumTagMultiPayload();
      sub_1A3DB9D40(v41);
      sub_1A3DB9E0C();
      v36 = v95;
      sub_1A5249744();
      sub_1A3DB9F34(v39, &qword_1EB122840, v40, sub_1A3DB83E0);
      sub_1A3DBA218(v38, type metadata accessor for GenerativeStoryCreatedMemoriesFeedView);
      goto LABEL_15;
    }

    v49 = (*(*v29 + 1088))();
    if (v49)
    {
      sub_1A52454C4();

      v50 = sub_1A52447E4();
      v52 = v51;
    }

    else
    {
      v50 = 0;
      v52 = 0xE000000000000000;
    }

    v53 = (*(*v29 + 1304))(v49);
    if (v53 >= 5)
    {
      v60 = v53;

      v61 = v60;
      sub_1A440ACA0(v29, v60, v50, v52, v110);
      v102[2] = v110[2];
      v102[3] = v110[3];
      v102[4] = v110[4];
      v102[0] = v110[0];
      v102[1] = v110[1];
      v100 = 0;
      LOBYTE(v102[5]) = 0;
      sub_1A3DBA100(v110, v101);
      sub_1A3DB9BDC();
      sub_1A5249744();
      sub_1A3DB9B78(v60);
      sub_1A3DBA15C(v110);
      v102[2] = *&v101[32];
      v102[3] = *&v101[48];
      v102[4] = *&v101[64];
      LOBYTE(v102[5]) = v101[80];
      v102[0] = *v101;
      v102[1] = *&v101[16];
    }

    else
    {
      sub_1A3DB9B78(v53);

      *&v102[0] = 0;
      *(&v102[0] + 1) = 0xE000000000000000;
      sub_1A524E404();
      v54 = MEMORY[0x1A5907B60](0xD00000000000001BLL, 0x80000001A53B6D90);
      v55 = *((*(*v29 + 1352))(v54) + 16);

      *v101 = v55;
      v56 = sub_1A524EA44();
      MEMORY[0x1A5907B60](v56);

      MEMORY[0x1A5907B60](0xD000000000000043, 0x80000001A53B6DB0);
      v57 = v102[0];
      sub_1A3DB9B88();
      v58 = swift_allocError();
      *v59 = v57;
      sub_1A440ACA0(v29, v58, v50, v52, v101);
      LOBYTE(v110[0]) = 1;
      v101[80] = 1;
      sub_1A3DB9BDC();
      sub_1A5249744();
    }

    v62 = v102[3];
    v63 = v90;
    *(v90 + 32) = v102[2];
    *(v63 + 48) = v62;
    *(v63 + 64) = v102[4];
    *(v63 + 80) = v102[5];
    v64 = v102[1];
    *v63 = v102[0];
    *(v63 + 16) = v64;
    swift_storeEnumTagMultiPayload();
    v65 = MEMORY[0x1E697F960];
    sub_1A3DBA014(v102, v101, &qword_1EB122890, &type metadata for GenerativeStoryCreationErrorView, &type metadata for GenerativeStoryCreationErrorView, MEMORY[0x1E697F960]);
    sub_1A3DB8478(0, &qword_1EB122890, &type metadata for GenerativeStoryCreationErrorView, &type metadata for GenerativeStoryCreationErrorView, v65);
    sub_1A3DB93F8(&qword_1EB125160, type metadata accessor for GenerativeStoryCreatedMemoriesFeedView, &unk_1A53365E0);
    sub_1A3DB9C30();
    v66 = v91;
    sub_1A5249744();
    v67 = MEMORY[0x1E697F960];
    sub_1A3DB9CD0(v66, v94, &qword_1EB122840, MEMORY[0x1E697F960], sub_1A3DB83E0);
    swift_storeEnumTagMultiPayload();
    sub_1A3DB9D40(v68);
    sub_1A3DB9E0C();
    v36 = v95;
    sub_1A5249744();
    sub_1A3DB9ED8(v102, &qword_1EB122890, &type metadata for GenerativeStoryCreationErrorView, &type metadata for GenerativeStoryCreationErrorView, v65);
    v45 = v66;
    v46 = &qword_1EB122840;
    v47 = v67;
    v48 = sub_1A3DB83E0;
LABEL_14:
    sub_1A3DB9F34(v45, v46, v47, v48);
    goto LABEL_15;
  }

  if (v32)
  {

    swift_storeEnumTagMultiPayload();
    sub_1A3DB93F8(&qword_1EB1252A8, type metadata accessor for GenerativeStoryPromptSuggestionView, &unk_1A536AE00);
    v42 = v87;
    sub_1A5249744();
    v43 = MEMORY[0x1E697F960];
    sub_1A3DB9CD0(v42, v94, &qword_1EB122860, MEMORY[0x1E697F960], sub_1A3DB9B10);
    swift_storeEnumTagMultiPayload();
    sub_1A3DB9D40(v44);
    sub_1A3DB9E0C();
    v36 = v95;
    sub_1A5249744();
    v45 = v42;
    v46 = &qword_1EB122860;
    v47 = v43;
    v48 = sub_1A3DB9B10;
    goto LABEL_14;
  }

  sub_1A486F920(v29, v23);
  sub_1A3DBA1B0(v23, v16, type metadata accessor for GenerativeStoryPromptSuggestionView);
  swift_storeEnumTagMultiPayload();
  sub_1A3DB93F8(&qword_1EB1252A8, type metadata accessor for GenerativeStoryPromptSuggestionView, &unk_1A536AE00);
  v33 = v87;
  sub_1A5249744();
  v34 = MEMORY[0x1E697F960];
  sub_1A3DB9CD0(v33, v94, &qword_1EB122860, MEMORY[0x1E697F960], sub_1A3DB9B10);
  swift_storeEnumTagMultiPayload();
  sub_1A3DB9D40(v35);
  sub_1A3DB9E0C();
  v36 = v95;
  sub_1A5249744();
  sub_1A3DB9F34(v33, &qword_1EB122860, v34, sub_1A3DB9B10);
  sub_1A3DBA218(v23, type metadata accessor for GenerativeStoryPromptSuggestionView);
LABEL_15:
  v69 = v97;
  sub_1A3DB9F94(v36, v97, v37);
  v71 = v98;
  v70 = v99;
  *v101 = v98;
  *&v101[8] = v103;
  *&v101[24] = v104;
  *&v101[40] = v105;
  *&v101[56] = v106;
  *&v101[88] = v108;
  *&v101[104] = v109;
  *&v101[72] = v107;
  v72 = *v101;
  v73 = *&v101[16];
  v74 = *&v101[48];
  *(v99 + 32) = *&v101[32];
  *(v70 + 48) = v74;
  *v70 = v72;
  *(v70 + 16) = v73;
  v75 = *&v101[64];
  v76 = *&v101[80];
  v77 = *&v101[96];
  *(v70 + 112) = *&v101[112];
  *(v70 + 80) = v76;
  *(v70 + 96) = v77;
  *(v70 + 64) = v75;
  sub_1A3DB8328(0);
  sub_1A3DB9F94(v69, v70 + *(v78 + 48), v79);
  v80 = MEMORY[0x1E69815C0];
  v81 = MEMORY[0x1E697EC00];
  v82 = MEMORY[0x1E697E830];
  sub_1A3DBA014(v101, v102, &qword_1EB123DA8, MEMORY[0x1E69815C0], MEMORY[0x1E697EC00], MEMORY[0x1E697E830]);
  sub_1A3DBA088(v36, v83);
  sub_1A3DBA088(v69, v84);
  *(&v102[3] + 8) = v106;
  *(&v102[4] + 8) = v107;
  *(&v102[5] + 8) = v108;
  *(&v102[6] + 8) = v109;
  *(v102 + 8) = v103;
  *(&v102[1] + 8) = v104;
  *&v102[0] = v71;
  *(&v102[2] + 8) = v105;
  return sub_1A3DB9ED8(v102, &qword_1EB123DA8, v80, v81, v82);
}

void sub_1A3DB935C(uint64_t a1)
{
  if (!qword_1EB124430)
  {
    sub_1A3DB82C4(255, &qword_1EB121218, sub_1A3DB8328, MEMORY[0x1E6981F40]);
    v1 = sub_1A52483B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB124430);
    }
  }
}

uint64_t sub_1A3DB93F8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1A3DB9440(uint64_t a1)
{
  if (!qword_1EB123EF8)
  {
    sub_1A3DB94A8(255);
    sub_1A3DB955C(255);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB123EF8);
    }
  }
}

void sub_1A3DB94A8(uint64_t a1)
{
  if (!qword_1EB121E78)
  {
    sub_1A3DB8230(255);
    sub_1A3DB93F8(&qword_1EB121558, sub_1A3DB8230, MEMORY[0x1E6981880]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB121E78);
    }
  }
}

void sub_1A3DB955C(uint64_t a1)
{
  if (!qword_1EB122E30)
  {
    sub_1A3DB95B8();
    v1 = sub_1A52494B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB122E30);
    }
  }
}

unint64_t sub_1A3DB95B8()
{
  result = qword_1EB125398;
  if (!qword_1EB125398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125398);
  }

  return result;
}

uint64_t sub_1A3DB960C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5 & 1;
  return result;
}

void sub_1A3DB963C(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_1A3DB8230(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *v2;
  v8 = *(v2 + 8);
  *v6 = sub_1A524BC74();
  v6[1] = v9;
  sub_1A3DB935C(0);
  sub_1A3DB8554(v2, v6 + *(v10 + 44));
  v17 = v8;
  v11 = swift_allocObject();
  v12 = *(v2 + 16);
  *(v11 + 16) = *v2;
  *(v11 + 32) = v12;
  *(v11 + 48) = *(v2 + 32);

  sub_1A3DB8180(&v17, v16);
  sub_1A3DB93F8(&qword_1EB121558, sub_1A3DB8230, MEMORY[0x1E6981880]);

  sub_1A524AA84();

  sub_1A3DBA218(v6, sub_1A3DB8230);
  v13 = sub_1A524BD24();
  LOBYTE(v6) = (*(*v7 + 384))();
  sub_1A3DB9440(0);
  v15 = a1 + *(v14 + 36);
  *v15 = v13;
  *(v15 + 8) = v6;
}

uint64_t sub_1A3DB9824(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_1A3DB986C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1A3DB98C0()
{
  result = qword_1EB123F00;
  if (!qword_1EB123F00)
  {
    sub_1A3DB9440(255);
    sub_1A3DB8230(255);
    sub_1A3DB93F8(&qword_1EB121558, sub_1A3DB8230, MEMORY[0x1E6981880]);
    swift_getOpaqueTypeConformance2();
    sub_1A3DB93F8(&qword_1EB122E38, sub_1A3DB955C, MEMORY[0x1E697F548]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB123F00);
  }

  return result;
}

uint64_t objectdestroyTm_1()
{

  return swift_deallocObject();
}

void sub_1A3DB9A68(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t), double a4)
{
  if (!*a2)
  {
    sub_1A3DB9B10(255, &qword_1EB122860, MEMORY[0x1E697F960], a4);
    v8 = v7;
    sub_1A3DB83E0(255, &qword_1EB122840, MEMORY[0x1E697F960]);
    v10 = a3(a1, v8, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_1A3DB9B10(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void), double a4)
{
  if (!*a2)
  {
    v7 = type metadata accessor for GenerativeStoryPromptSuggestionView(255);
    v8 = a3(a1, v7, MEMORY[0x1E6981E70]);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1A3DB9B78(id a1)
{
  if (a1 >= 5)
  {
  }
}

unint64_t sub_1A3DB9B88()
{
  result = qword_1EB1971E0[0];
  if (!qword_1EB1971E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1971E0);
  }

  return result;
}

unint64_t sub_1A3DB9BDC()
{
  result = qword_1EB1253A8;
  if (!qword_1EB1253A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1253A8);
  }

  return result;
}

unint64_t sub_1A3DB9C30()
{
  result = qword_1EB122898;
  if (!qword_1EB122898)
  {
    sub_1A3DB8478(255, &qword_1EB122890, &type metadata for GenerativeStoryCreationErrorView, &type metadata for GenerativeStoryCreationErrorView, MEMORY[0x1E697F960]);
    sub_1A3DB9BDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB122898);
  }

  return result;
}

uint64_t sub_1A3DB9CD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  v7 = a5(0, a3, a4);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

unint64_t sub_1A3DB9D40(double a1)
{
  result = qword_1EB122868;
  if (!qword_1EB122868)
  {
    sub_1A3DB9B10(255, &qword_1EB122860, MEMORY[0x1E697F960], a1);
    sub_1A3DB93F8(&qword_1EB1252A8, type metadata accessor for GenerativeStoryPromptSuggestionView, &unk_1A536AE00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB122868);
  }

  return result;
}

unint64_t sub_1A3DB9E0C()
{
  result = qword_1EB122848;
  if (!qword_1EB122848)
  {
    sub_1A3DB83E0(255, &qword_1EB122840, MEMORY[0x1E697F960]);
    sub_1A3DB93F8(&qword_1EB125160, type metadata accessor for GenerativeStoryCreatedMemoriesFeedView, &unk_1A53365E0);
    sub_1A3DB9C30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB122848);
  }

  return result;
}

uint64_t sub_1A3DB9ED8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  sub_1A3DB8478(0, a2, a3, a4, a5);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1A3DB9F34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = (a4)(0, a2, a3);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_1A3DB9F94(uint64_t a1, uint64_t a2, double a3)
{
  sub_1A3DB9A68(0, &qword_1EB122498, MEMORY[0x1E697F960], a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A3DBA014(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t))
{
  sub_1A3DB8478(0, a3, a4, a5, a6);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t sub_1A3DBA088(uint64_t a1, double a2)
{
  sub_1A3DB9A68(0, &qword_1EB122498, MEMORY[0x1E697F960], a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A3DBA1B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A3DBA218(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id PXUpdateMediaTypesOrderAction.init(photoLibrary:orderedCollections:)(void *a1, uint64_t a2)
{
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithPhotoLibrary:a1 orderedCollections:a2];

  swift_unknownObjectRelease();
  return v3;
}

{
  *(v2 + OBJC_IVAR___PXUpdateMediaTypesOrderAction_undoOrderedMediaTypes) = 0;
  *(v2 + OBJC_IVAR___PXUpdateMediaTypesOrderAction_redoOrderedMediaTypes) = 0;
  *(v2 + OBJC_IVAR___PXUpdateMediaTypesOrderAction_orderedCollections) = a2;
  v6.super_class = PXUpdateMediaTypesOrderAction;
  v4 = objc_msgSendSuper2(&v6, sel_initWithPhotoLibrary_, a1);

  return v4;
}

uint64_t PXUpdateMediaTypesOrderAction.perform(_:)(void (*a1)(uint64_t, void, __n128), uint64_t a2)
{
  v24 = a2;
  v25 = a1;
  v26 = sub_1A5240C64();
  v23 = *(v26 - 8);
  v3 = MEMORY[0x1EEE9AC00](v26);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v2;
  v6 = [v2 orderedCollections];
  sub_1A5240C74();
  sub_1A5240C54();
  if (v29)
  {
    v7 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1A3C57128(&v28, v30);
      sub_1A3C2F0BC(v30, &v28);
      sub_1A3C52C70(0, &qword_1EB126AC0, 0x1E6978650);
      if (swift_dynamicCast())
      {
        v8 = v27;
        v9 = [v27 assetCollectionSubtype];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_1A3DBAB44(0, *(v7 + 2) + 1, 1, v7);
        }

        v11 = *(v7 + 2);
        v10 = *(v7 + 3);
        if (v11 >= v10 >> 1)
        {
          v7 = sub_1A3DBAB44((v10 > 1), v11 + 1, 1, v7);
        }

        __swift_destroy_boxed_opaque_existential_0(v30);
        *(v7 + 2) = v11 + 1;
        *&v7[8 * v11 + 32] = v9;
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_0(v30);
      }

      sub_1A5240C54();
    }

    while (v29);
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  sub_1A3C35B00(&v28);
  v12 = v22;
  v13 = [v22 photoLibrary];
  v14 = sub_1A41CE3A4(v13);

  v15 = (*(*v14 + 248))();

  *&v12[OBJC_IVAR___PXUpdateMediaTypesOrderAction_undoOrderedMediaTypes] = v15;

  v16 = [v12 photoLibrary];
  v17 = sub_1A41CE3A4(v16);

  (*(*v17 + 288))(v7);

  v18 = [v12 photoLibrary];
  v19 = sub_1A41CE3A4(v18);

  v20 = (*(*v19 + 248))();

  *&v12[OBJC_IVAR___PXUpdateMediaTypesOrderAction_redoOrderedMediaTypes] = v20;

  (v25)(1, 0);
  return (*(v23 + 8))(v5, v26);
}

void sub_1A3DBA8D4(void *a1, int a2, void *aBlock, void *a4)
{
  v6 = _Block_copy(aBlock);
  _Block_copy(v6);
  v7 = a1;
  sub_1A3DBAFF8(v7, v6, a4);
  _Block_release(v6);
  _Block_release(v6);
}

uint64_t sub_1A3DBA95C(uint64_t (*a1)(BOOL, void), uint64_t a2, void *a3)
{
  if (*(v3 + *a3))
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  return a1(0, 0);
}

char *sub_1A3DBAB44(char *result, int64_t a2, char a3, char *a4)
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
    sub_1A3DBB0D8(0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

uint64_t sub_1A3DBAC50(char *a1, uint64_t a2)
{
  v25 = a2;
  v26 = sub_1A5240C64();
  v24 = *(v26 - 8);
  v3 = MEMORY[0x1EEE9AC00](v26);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = a1;
  v6 = [a1 orderedCollections];
  sub_1A5240C74();
  sub_1A5240C54();
  if (v29)
  {
    v7 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1A3C57128(&v28, v30);
      sub_1A3C2F0BC(v30, &v28);
      sub_1A3C52C70(0, &qword_1EB126AC0, 0x1E6978650);
      if (swift_dynamicCast())
      {
        v8 = v27;
        v9 = [v27 assetCollectionSubtype];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_1A3DBAB44(0, *(v7 + 2) + 1, 1, v7);
        }

        v11 = *(v7 + 2);
        v10 = *(v7 + 3);
        if (v11 >= v10 >> 1)
        {
          v7 = sub_1A3DBAB44((v10 > 1), v11 + 1, 1, v7);
        }

        __swift_destroy_boxed_opaque_existential_0(v30);
        *(v7 + 2) = v11 + 1;
        *&v7[8 * v11 + 32] = v9;
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_0(v30);
      }

      sub_1A5240C54();
    }

    while (v29);
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  sub_1A3C35B00(&v28);
  v12 = v23;
  v13 = [v23 photoLibrary];
  v14 = sub_1A41CE3A4(v13);

  v15 = (*(*v14 + 248))();

  *&v12[OBJC_IVAR___PXUpdateMediaTypesOrderAction_undoOrderedMediaTypes] = v15;

  v16 = [v12 photoLibrary];
  v17 = sub_1A41CE3A4(v16);

  (*(*v17 + 288))(v7);

  v18 = [v12 photoLibrary];
  v19 = sub_1A41CE3A4(v18);

  v20 = (*(*v19 + 248))();

  *&v12[OBJC_IVAR___PXUpdateMediaTypesOrderAction_redoOrderedMediaTypes] = v20;

  (*(v25 + 16))(v25, 1, 0);
  return (*(v24 + 8))(v5, v26);
}

uint64_t sub_1A3DBAFF8(char *a1, uint64_t a2, void *a3)
{
  if (*&a1[*a3])
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v3 = *(a2 + 16);

  return v3(a2, 0, 0);
}

void sub_1A3DBB0D8(uint64_t a1)
{
  if (!qword_1EB12C488)
  {
    type metadata accessor for PHAssetCollectionSubtype();
    v1 = sub_1A524EA54();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB12C488);
    }
  }
}

void sub_1A3DBB1A0(uint64_t a1, uint64_t a2, double a3, uint64_t a4, uint64_t a5)
{
  v6 = *v5;
  v7 = *(*v5 + 80);
  v8 = *(v6 + 88);
  type metadata accessor for PhotosAsyncImageProviderCache.CacheKey(255, v7, v8, a5);
  type metadata accessor for PhotosAsyncImageProviderCache.SharedImageRequest(255, v7, v8, v9);
  swift_getWitnessTable();
  sub_1A52462F4();
}

uint64_t sub_1A3DBB330(uint64_t a1, void (*a2)(_BYTE *), uint64_t a3, double a4, double a5)
{
  v6 = v5;
  v39 = a2;
  v40 = a3;
  v10 = *(*v6 + 80);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v38 - v12;
  v15 = *(v14 + 88);
  v17 = type metadata accessor for PhotosAsyncImageProviderCache.CacheKey(0, v10, v15, v16);
  v41 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v38 - v22;
  (*(v11 + 16))(v13, a1, v10, v21);
  (*(v11 + 32))(v23, v13, v10);
  v24 = &v23[*(v17 + 36)];
  *v24 = a4;
  v24[1] = a5;
  MEMORY[0x1A5901670](&v42, v23);
  if (!v42)
  {
    type metadata accessor for PhotosAsyncImageProviderCache.SharedImageRequest(0, v10, v15, v25);
    v27 = *(v41 + 16);
    v27(v19, v23, v17);
    v28 = v6[2];
    v29 = *(v6 + 4);
    v38 = *(v6 + 3);
    v30 = swift_allocObject();

    sub_1A3DBB97C(v19, v38, v29, v28, v31);
    v27(v19, v23, v17);
    v42 = v30;
    swift_retain_n();
    sub_1A5246314();
  }

  v26 = v42;

  v32 = sub_1A3DBBBD8(v39);
  v33 = *(v6 + 6);
  MEMORY[0x1EEE9AC00](v32);
  *(&v38 - 2) = v26;
  *(&v38 - 1) = v34;
  sub_1A3DBD4F4(0);
  v35 = *(*v33 + *MEMORY[0x1E69E6B68] + 16);
  v36 = (*(*v33 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v33 + v36));
  sub_1A3DBD55C((v33 + v35));
  os_unfair_lock_unlock((v33 + v36));

  (*(v41 + 8))(v23, v17);
  return v32;
}

uint64_t sub_1A3DBB6B4(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v8 = swift_allocObject();
  sub_1A3DBB97C(a1, a2, a3, a4, v9);
  return v8;
}

void sub_1A3DBB71C()
{
  v1 = *(v0 + 48);
  sub_1A3DBD4F4(0);
  v2 = *(*v1 + *MEMORY[0x1E69E6B68] + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v3));
  sub_1A3DBD5CC((v1 + v2));
  os_unfair_lock_unlock((v1 + v3));
}

uint64_t sub_1A3DBB7E8(uint64_t a1, uint64_t a2)
{
  sub_1A524C4B4();
  v4 = (v2 + *(a2 + 36));
  v5 = *v4;
  if (*v4 == 0.0)
  {
    v5 = 0.0;
  }

  MEMORY[0x1A590A040](*&v5);
  v6 = v4[1];
  if (v6 == 0.0)
  {
    v6 = 0.0;
  }

  return MEMORY[0x1A590A040](*&v6);
}

BOOL sub_1A3DBB860(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((sub_1A524C594() & 1) == 0)
  {
    return 0;
  }

  v9 = *(type metadata accessor for PhotosAsyncImageProviderCache.CacheKey(0, a3, a4, v8) + 36);
  v10 = *(a1 + v9);
  v11 = *(a1 + v9 + 8);
  v12 = (a2 + v9);
  v13 = v12[1];
  v14 = v10 == *v12;
  return v11 == v13 && v14;
}

uint64_t sub_1A3DBB8DC(uint64_t a1)
{
  sub_1A524EC94();
  sub_1A3DBB7E8(v3, a1);
  return sub_1A524ECE4();
}

uint64_t sub_1A3DBB92C(uint64_t a1, uint64_t a2)
{
  sub_1A524EC94();
  sub_1A3DBB7E8(v4, a2);
  return sub_1A524ECE4();
}

uint64_t *sub_1A3DBB97C(uint64_t a1, uint64_t a2, uint64_t a3, double a4, uint64_t a5)
{
  v30 = a3;
  v9 = *v5;
  v10 = *(*v5 + 80);
  v11 = *(*v5 + 88);
  v12 = type metadata accessor for PhotosAsyncImageProviderCache.SharedImageRequest.State(0, v10, v11, a5);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v29 - v14;
  v16 = *(v9 + 120);
  *v15 = 0;
  v15[8] = 1;
  v18 = *(v17 + 36);
  v19 = sub_1A5241144();
  (*(*(v19 - 8) + 56))(&v15[v18], 1, 1, v19);
  v20 = &v15[*(v12 + 40)];
  *(v20 + 8) = 0;
  *(v20 + 2) = 0u;
  *(v20 + 3) = 0u;
  *v20 = 0u;
  *(v20 + 1) = 0u;
  v20[72] = -1;
  v21 = *(v12 + 44);
  *&v15[v21] = sub_1A3DBE34C(MEMORY[0x1E69E7CC0]);
  v22 = sub_1A3C6D790(v15, v12);
  (*(v13 + 8))(v15, v12);
  *(v5 + v16) = v22;
  v23 = *(*v5 + 96);
  v25 = type metadata accessor for PhotosAsyncImageProviderCache.CacheKey(0, v10, v11, v24);
  (*(*(v25 - 8) + 32))(v5 + v23, a1, v25);
  *(v5 + *(*v5 + 104)) = a4;
  v26 = (v5 + *(*v5 + 112));
  v27 = v30;
  *v26 = a2;
  v26[1] = v27;
  return v5;
}

uint64_t sub_1A3DBBBD8(void (*a1)(_BYTE *))
{
  v3 = v1;
  if (qword_1EB16EAE0 != -1)
  {
    swift_once();
  }

  v5 = qword_1EB16EAE8;

  os_unfair_lock_lock((v5 + 24));
  v6 = *(v5 + 16);
  v7 = v6 + 1;
  if (__OFADD__(v6, 1))
  {
    __break(1u);
LABEL_13:
    swift_once();
    goto LABEL_6;
  }

  *(v5 + 16) = v7;
  os_unfair_lock_unlock((v5 + 24));

  v9 = *(v3 + *(*v3 + 120));
  MEMORY[0x1EEE9AC00](v8);
  v20 = a1;
  sub_1A3DBE16C(0);
  v10 = *(*v9 + *MEMORY[0x1E69E6B68] + 16);
  v11 = (*(*v9 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v9 + v11));
  sub_1A3DBE13C(v9 + v10, v24);
  os_unfair_lock_unlock((v9 + v11));

  v2 = v24[0];
  *&v28[9] = *&v24[65];
  v27 = *&v24[40];
  *v28 = *&v24[56];
  v25 = *&v24[8];
  v26 = *&v24[24];
  if (v24[80] == 255)
  {
    goto LABEL_9;
  }

  *&v24[32] = v27;
  *&v24[48] = *v28;
  *&v24[64] = *&v28[16];
  *v24 = v25;
  *&v24[16] = v26;
  v24[72] = v28[24];
  v22[2] = v27;
  v23[0] = *v28;
  *(v23 + 9) = *&v28[9];
  v22[0] = v25;
  v22[1] = v26;
  sub_1A3DBE220(v22, &v21, sub_1A3DBD8FC);
  if (qword_1EB171FD0 != -1)
  {
    goto LABEL_13;
  }

LABEL_6:
  v15 = sub_1A5246F24();
  __swift_project_value_buffer(v15, qword_1EB171FD8);
  v16 = sub_1A5246F04();
  v17 = sub_1A524D234();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 134217984;
    *(v18 + 4) = v7;
    _os_log_impl(&dword_1A3C1C000, v16, v17, "PhotosAsyncImageProviderCache returning cached result for %ld", v18, 0xCu);
    MEMORY[0x1A590EEC0](v18, -1, -1);
  }

  v20(v24);
  sub_1A3DBDF58(&v25, sub_1A3DBD8C8);
LABEL_9:
  if (v2)
  {
    sub_1A3DBC644(v7, v12, v13, v14);
  }

  sub_1A3DBDF58(&v25, sub_1A3DBD8C8);
  return v7;
}

uint64_t sub_1A3DBBF00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, char *a6@<X8>)
{
  v67 = a2;
  v66 = a6;
  v10 = *a5;
  sub_1A3C41108(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v64 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v61 - v14;
  v16 = sub_1A5241144();
  v68 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v63 = &v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v61 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v61 - v22;
  v24 = swift_allocObject();
  *(v24 + 16) = a3;
  *(v24 + 24) = a4;
  v26 = type metadata accessor for PhotosAsyncImageProviderCache.SharedImageRequest.State(0, *(v10 + 80), *(v10 + 88), v25);
  v27 = *(v26 + 44);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v70 = *(a1 + v27);
  sub_1A3DBD220(sub_1A3DBE1D4, v24, v67, isUniquelyReferenced_nonNull_native);
  *(a1 + v27) = v70;
  v29 = *(a1 + 8);
  v65 = v26;
  v30 = *(v26 + 36);
  sub_1A3DBE220(a1 + v30, v15, sub_1A3C41108);
  if ((*(v68 + 48))(v15, 1, v16) == 1)
  {
    sub_1A3DBDF58(v15, sub_1A3C41108);
  }

  else
  {
    v62 = v30;
    v31 = v68;
    (*(v68 + 32))(v23, v15, v16);
    sub_1A5241104();
    sub_1A5241054();
    v33 = v32;
    v34 = *(v31 + 8);
    v34(v20, v16);
    if (*(a5 + *(*a5 + 104)) < v33)
    {
      v61 = v23;
      if (qword_1EB171FD0 != -1)
      {
        swift_once();
      }

      v35 = sub_1A5246F24();
      __swift_project_value_buffer(v35, qword_1EB171FD8);
      v36 = v63;
      v37 = v61;
      (*(v68 + 16))(v63, v61, v16);
      v38 = sub_1A5246F04();
      v39 = sub_1A524D234();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = v36;
        v41 = swift_slowAlloc();
        *v41 = 134218240;
        *(v41 + 4) = v67;
        *(v41 + 12) = 2048;
        sub_1A5241104();
        sub_1A5241054();
        v43 = v42;
        v34(v20, v16);
        v34(v40, v16);
        *(v41 + 14) = v43;
        _os_log_impl(&dword_1A3C1C000, v38, v39, "PhotosAsyncImageProviderCache cached result expired for %ld age %f", v41, 0x16u);
        v37 = v61;
        MEMORY[0x1A590EEC0](v41, -1, -1);
      }

      else
      {

        v34(v36, v16);
      }

      v34(v37, v16);
      v44 = v65;
      v45 = (a1 + *(v65 + 40));
      v48 = *(v45 + 72);
      v30 = v62;
      if (v48 == 255 || (v48 & 1) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }

    v34(v23, v16);
    v30 = v62;
  }

  v44 = v65;
  v45 = (a1 + *(v65 + 40));
  v46 = *(v45 + 72);
  if (v46 == 255)
  {
    if (!v29)
    {
      goto LABEL_14;
    }

LABEL_19:
    *a1 = v67;
    *(a1 + 8) = 0;
    v51 = v68;
    v52 = v64;
    sub_1A5241104();
    v47 = 1;
    (*(v51 + 56))(v52, 0, 1, v16);
    sub_1A3DBE288(v52, a1 + v30);
    goto LABEL_20;
  }

  if (v46)
  {
LABEL_18:
    v49 = v45[3];
    v72 = v45[2];
    v73[0] = v49;
    *(v73 + 9) = *(v45 + 57);
    v50 = v45[1];
    v70 = *v45;
    v71 = v50;
    sub_1A3DBDF58(&v70, sub_1A3DBD8C8);
    *v45 = 0u;
    v45[1] = 0u;
    v45[2] = 0u;
    v45[3] = 0u;
    *(v45 + 8) = 0;
    *(v45 + 72) = -1;
    goto LABEL_19;
  }

  if (v29)
  {
    goto LABEL_19;
  }

LABEL_14:
  v47 = 0;
LABEL_20:
  v53 = v66;
  *v66 = v47;
  v54 = (a1 + *(v44 + 40));
  v56 = v54[3];
  v72 = v54[2];
  v55 = v72;
  v73[0] = v56;
  *(v73 + 9) = *(v54 + 57);
  v57 = *(v73 + 9);
  v58 = v54[1];
  v70 = *v54;
  v59 = v70;
  v71 = v58;
  *(v53 + 24) = v58;
  *(v53 + 40) = v55;
  *(v53 + 56) = v56;
  *(v53 + 65) = v57;
  *(v53 + 8) = v59;
  return sub_1A3DBE220(&v70, v69, sub_1A3DBD8C8);
}

double sub_1A3DBC554()
{
  v1 = *(v0 + *(*v0 + 120));
  v2 = *(*v1 + *MEMORY[0x1E69E6B68] + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v1 + v3));
  sub_1A3DBE028(v1 + v2, v4, v5, v6);
  os_unfair_lock_unlock((v1 + v3));

  return result;
}

void sub_1A3DBC644(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = *v4;
  v8 = v7[10];
  v9 = v7[11];
  v10 = type metadata accessor for PhotosAsyncImageProviderCache.CacheKey(0, v8, v9, a4);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v30 - v11;
  v13 = *(v8 - 8);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v30 - v16;
  v18 = v5 + v7[12];
  (*(v19 + 16))(v12, v18, v10, v15);
  (*(v13 + 32))(v17, v12, v8);
  v20 = &v18[*(v10 + 36)];
  v21 = *v20;
  v22 = v20[1];
  if (qword_1EB171FD0 != -1)
  {
    swift_once();
  }

  v23 = sub_1A5246F24();
  __swift_project_value_buffer(v23, qword_1EB171FD8);
  v24 = sub_1A5246F04();
  v25 = sub_1A524D234();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 134217984;
    *(v26 + 4) = a1;
    _os_log_impl(&dword_1A3C1C000, v24, v25, "PhotosAsyncImageProviderCache startRequest for %ld", v26, 0xCu);
    MEMORY[0x1A590EEC0](v26, -1, -1);
  }

  v27 = *(v5 + *(*v5 + 112));
  v28 = swift_allocObject();
  swift_weakInit();
  v29 = swift_allocObject();
  v29[2] = v8;
  v29[3] = v9;
  v29[4] = v28;
  v29[5] = a1;

  v27(v17, sub_1A3DBDFB8, v29, v21, v22);

  (*(v13 + 8))(v17, v8);
}

void sub_1A3DBC980(__int128 *a1)
{
  v2 = a1[3];
  v9[2] = a1[2];
  v10[0] = v2;
  *(v10 + 9) = *(a1 + 57);
  v3 = a1[1];
  v9[0] = *a1;
  v9[1] = v3;
  sub_1A3DBE220(a1, v11, sub_1A3DBD930);
  sub_1A3DBD930(0);
  SendableTransfer.init(wrappedValue:)(v9, v4, v11);
  v5 = *(v1 + *(*v1 + 120));
  sub_1A3DBDED4(0);
  v6 = *(*v5 + *MEMORY[0x1E69E6B68] + 16);
  v7 = (*(*v5 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v5 + v7));
  sub_1A3DBDD90(v5 + v6, v8, v9);
}

uint64_t sub_1A3DBCC18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(*v4 + 96);
  v6 = type metadata accessor for PhotosAsyncImageProviderCache.CacheKey(0, *(*v4 + 80), *(*v4 + 88), a4);
  (*(*(v6 - 8) + 8))(v4 + v5, v6);

  return swift_deallocClassInstance();
}

void *sub_1A3DBCD28()
{

  return v0;
}

uint64_t sub_1A3DBCD58()
{
  sub_1A3DBCD28();

  return swift_deallocClassInstance();
}

uint64_t sub_1A3DBCD8C()
{
  sub_1A3DBE2EC(0);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = 1;
  qword_1EB16EAE8 = result;
  return result;
}

void sub_1A3DBCDC8()
{
  v0 = sub_1A5246F24();
  __swift_allocate_value_buffer(v0, qword_1EB171FD8);
  __swift_project_value_buffer(v0, qword_1EB171FD8);
  sub_1A5246EF4();
}

void sub_1A3DBCE2C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1A3DBE0CC(0, &qword_1EB120400, MEMORY[0x1E69E6EC8]);
  v6 = sub_1A524E774();
  v7 = v6;
  if (*(v5 + 16))
  {
    v30 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v31 = *(*(v5 + 56) + 16 * v19);
      if ((v4 & 1) == 0)
      {
      }

      v21 = sub_1A524EC84();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 16 * v15) = v31;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v29;
      }

      *(v5 + 16) = 0;
    }

    v3 = v30;
  }

  else
  {
  }

  *v3 = v7;
}

uint64_t sub_1A3DBD0B0(uint64_t result, uint64_t a2, __n128 a3)
{
  v4 = result;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (result + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    v9 = (sub_1A524E244() + 1) & ~v6;
    do
    {
      v10 = *(a2 + 48);
      v11 = (v10 + 8 * v7);
      result = sub_1A524EC84();
      v12 = result & v8;
      if (v4 >= v9)
      {
        if (v12 >= v9 && v4 >= v12)
        {
LABEL_15:
          v15 = (v10 + 8 * v4);
          if (v4 != v7 || v15 >= v11 + 1)
          {
            *v15 = *v11;
          }

          v16 = *(a2 + 56);
          v17 = (v16 + 16 * v4);
          v18 = (v16 + 16 * v7);
          if (v4 != v7 || v17 >= v18 + 1)
          {
            *v17 = *v18;
            v4 = v7;
          }
        }
      }

      else if (v12 >= v9 || v4 >= v12)
      {
        goto LABEL_15;
      }

      v7 = (v7 + 1) & v8;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

void sub_1A3DBD220(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1A3CAB9BC(a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1A3DBCE2C(v16, a4 & 1);
      v11 = sub_1A3CAB9BC(a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        sub_1A524EB84();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_1A3DBD380();
      v11 = v19;
    }
  }

  v21 = *v5;
  if ((v17 & 1) == 0)
  {
    v21[(v11 >> 6) + 8] |= 1 << v11;
    *(v21[6] + 8 * v11) = a3;
    v23 = (v21[7] + 16 * v11);
    *v23 = a1;
    v23[1] = a2;
    v24 = v21[2];
    v15 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (!v15)
    {
      v21[2] = v25;
      return;
    }

    goto LABEL_15;
  }

  v22 = (v21[7] + 16 * v11);
  *v22 = a1;
  v22[1] = a2;
}

void sub_1A3DBD380()
{
  v1 = v0;
  sub_1A3DBE0CC(0, &qword_1EB120400, MEMORY[0x1E69E6EC8]);
  v2 = *v0;
  v3 = sub_1A524E764();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 16 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 16 * v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}