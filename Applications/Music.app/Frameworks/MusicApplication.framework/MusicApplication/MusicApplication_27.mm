unint64_t sub_24E270(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_CF0EB0;
  v6._object = a2;
  v4 = sub_ABB140(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_24E2BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable();

  return sub_ABB400();
}

uint64_t sub_24E330(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>.hashValue.getter(a1, a2, WitnessTable, &protocol witness table for String);
}

uint64_t sub_24E39C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>.hash(into:)(a1, a2, a3, WitnessTable, &protocol witness table for String);
}

uint64_t sub_24E40C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>._rawHashValue(seed:)(a1, a2, a3, WitnessTable, &protocol witness table for String);
}

unint64_t sub_24E47C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_24E270(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_24E4B8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24E1FC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void sub_24E4FC(char a1)
{
  v2 = swift_isaMask & *v1;
  v6 = *(v1 + *(&stru_338.size + v2));
  v5 = a1;
  v3 = *(v2 + 560);
  v4[0] = *(v2 + 544);
  v4[1] = v3;
  type metadata accessor for ContainerDetailViewController.Layout(0, v4);
  swift_getWitnessTable();
  if ((sub_ABB400() & 1) == 0)
  {
    sub_256154();
  }
}

void sub_24E5FC(char a1)
{
  v2 = *(&stru_338.size + (swift_isaMask & *v1));
  v3 = *(v1 + v2);
  *(v1 + v2) = a1;
  sub_24E4FC(v3);
}

void sub_24E66C(uint64_t a1)
{
  v2 = *(&stru_338.offset + (swift_isaMask & *v1));
  v3 = *(v1 + v2);
  *(v1 + v2) = a1;
}

char *sub_24E69C()
{
  v1 = *(&stru_338.reloff + (swift_isaMask & *v0));
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = *(v0 + v1);
  }

  else
  {
    v4 = sub_24E71C(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

char *sub_24E71C(void *a1)
{
  v2 = objc_allocWithZone(type metadata accessor for LoadingView());
  v3 = LoadingView.init(title:style:usesSubtitleTextColor:)(0, 0, 0x10000000000, 1);
  v4 = qword_DE6C58;
  v5 = v3;
  if (v4 != -1)
  {
    swift_once();
  }

  [v5 setBackgroundColor:qword_E71898];
  result = [a1 view];
  if (result)
  {
    v7 = result;
    [result bounds];
    [v5 setFrame:?];

    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_24E818(char a1)
{
  if (a1)
  {
    [*(v1 + *(&stru_338.offset + (swift_isaMask & *v1))) invalidate];
    v2 = *(&stru_338.offset + (swift_isaMask & *v1));
    v3 = *(v1 + v2);
    *(v1 + v2) = 0;
  }

  v4 = sub_24E69C();
  v5 = [v1 view];
  if (v5)
  {
    v6 = v5;
    v7 = [v4 isDescendantOfView:v5];

    if (v7)
    {
      v8 = objc_opt_self();
      v9 = swift_allocObject();
      *(v9 + 16) = v1;
      v19 = sub_256CEC;
      v20 = v9;
      v15 = _NSConcreteStackBlock;
      v16 = 1107296256;
      v17 = sub_1B5EB4;
      v18 = &block_descriptor_86_0;
      v10 = _Block_copy(&v15);
      v11 = v1;

      v12 = swift_allocObject();
      *(v12 + 16) = v11;
      v19 = sub_256D40;
      v20 = v12;
      v15 = _NSConcreteStackBlock;
      v16 = 1107296256;
      v17 = sub_1811AC;
      v18 = &block_descriptor_92;
      v13 = _Block_copy(&v15);
      v14 = v11;

      [v8 animateWithDuration:v10 animations:v13 completion:0.5];
      _Block_release(v13);
      _Block_release(v10);
    }
  }

  else
  {
    __break(1u);
  }
}

void (*sub_24EA4C(uint64_t a1, void *a2))(void)
{
  v3 = sub_24E69C();
  [v3 removeFromSuperview];

  v4 = *&stru_338.segname[(swift_isaMask & *a2) - 8];
  v5 = *(a2 + v4);
  *(a2 + v4) = 1;
  return sub_24C1A8(v5);
}

uint64_t sub_24EAB8(uint64_t a1)
{
  if (*(a1 + 56))
  {
    return 1;
  }

  v6.isa = *(a1 + 24);
  isa = v6.isa;
  sub_15F84(&isa, v5, &qword_DFA9D0, &qword_B059E8);
  v2 = type metadata accessor for JSMediaItem(0);
  v3 = sub_256CA4(&qword_DFA9D8, type metadata accessor for JSMediaItem, &protocol conformance descriptor for NSObject);
  v4 = sub_24EC48(&v6, 0x6B63617065646973, 0xEE006D6574496465, v2, &off_D04690, v3);
  sub_12E1C(&isa, &qword_DFA9D0, &qword_B059E8);
  return v4;
}

uint64_t sub_24EBB0(objc_class *a1)
{
  v4.isa = a1;
  v1 = type metadata accessor for JSHeaderItem(0);
  v2 = sub_256CA4(&qword_DFA9C8, type metadata accessor for JSHeaderItem, &protocol conformance descriptor for NSObject);
  return sub_24EC48(&v4, 0x7449726564616568, 0xEA00000000006D65, v1, &off_D046A0, v2);
}

uint64_t sub_24EC48(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v73[1] = a6;
  v75 = a2;
  v76 = a5;
  v78 = a3;
  v79 = a1;
  v9 = sub_ABA9C0();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = v73 - v11;
  v13 = a4;
  v14 = *(a4 - 8);
  __chkstk_darwin();
  v73[0] = v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v74 = v73 - v16;
  *&v17 = __chkstk_darwin().n128_u64[0];
  v77 = v73 - v18;
  v19 = [v6 traitCollection];
  v20 = UITraitCollection.isMediaPicker.getter(v19);

  v21 = [v7 traitCollection];
  v22 = [v21 userInterfaceIdiom];

  v23 = [v7 traitCollection];
  v24 = [v23 horizontalSizeClass];

  result = 1;
  if (!v20 && !v22 && v24 == &dword_0 + 1)
  {
    (*(v10 + 16))(v12, v79, v9);
    if ((*(v14 + 48))(v12, 1, v13) == 1)
    {
      (*(v10 + 8))(v12, v9);
      if (qword_DE6940 != -1)
      {
        swift_once();
      }

      v26 = sub_AB4BC0();
      __swift_project_value_buffer(v26, qword_E71120);
      v27 = v78;

      v28 = sub_AB4BA0();
      v29 = sub_AB9F50();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v81[0] = v31;
        *v30 = 136315138;
        *(v30 + 4) = sub_425E68(v75, v27, v81);
        _os_log_impl(&dword_0, v28, v29, "Layout undetermined, no %s", v30, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v31);
      }

      goto LABEL_19;
    }

    v32 = v77;
    (*(v14 + 32))(v77, v12, v13);
    v33 = (*(v76 + 8))(v13);
    if (!v33)
    {
      if (qword_DE6940 != -1)
      {
        swift_once();
      }

      v44 = sub_AB4BC0();
      __swift_project_value_buffer(v44, qword_E71120);
      v45 = *(v14 + 16);
      v46 = v74;
      v45(v74, v32, v13);
      v47 = v78;

      v48 = sub_AB4BA0();
      v49 = sub_AB9F50();

      if (!os_log_type_enabled(v48, v49))
      {
        v72 = *(v14 + 8);
        v72(v46, v13);
        v72(v32, v13);

        return 3;
      }

      v50 = swift_slowAlloc();
      v79 = v48;
      v51 = v46;
      v52 = v50;
      v81[0] = swift_slowAlloc();
      *v52 = 136315394;
      *(v52 + 4) = sub_425E68(v75, v47, v81);
      *(v52 + 12) = 2082;
      v53 = v73[0];
      v45(v73[0], v51, v13);
      v54 = *(v14 + 8);
      v54(v51, v13);
      v55 = sub_ABB330();
      v57 = v56;
      v54(v53, v13);
      v58 = sub_425E68(v55, v57, v81);

      *(v52 + 14) = v58;
      v28 = v79;
      _os_log_impl(&dword_0, v79, v49, "Layout undetermined %s: %{public}s", v52, 0x16u);
      swift_arrayDestroy();

      v54(v32, v13);
LABEL_19:

      return 3;
    }

    v34 = v33;
    v35 = OBJC_IVAR____TtC11MusicJSCore14JSVideoArtwork_supportsUberArtwork;
    swift_beginAccess();
    v36 = v34[v35];
    if (v36 == 2)
    {
      if (qword_DE6940 != -1)
      {
        swift_once();
      }

      v37 = sub_AB4BC0();
      __swift_project_value_buffer(v37, qword_E71120);
      v38 = v34;
      v39 = sub_AB4BA0();
      v40 = sub_AB9F50();

      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        *v41 = 138543362;
        *(v41 + 4) = v38;
        *v42 = v34;
        v43 = v38;
        _os_log_impl(&dword_0, v39, v40, "Layout undetermined (supportsUberArtwork not provided) videoDetailArtwork: %{public}@", v41, 0xCu);
        sub_12E1C(v42, &qword_DF9B20, &unk_AF8C60);

        (*(v14 + 8))(v32, v13);
      }

      else
      {
        (*(v14 + 8))(v32, v13);
      }

      return 3;
    }

    LODWORD(v79) = (v36 & 1) == 0;
    if (qword_DE6940 != -1)
    {
      swift_once();
    }

    v59 = sub_AB4BC0();
    __swift_project_value_buffer(v59, qword_E71120);
    v60 = v34;
    v61 = sub_AB4BA0();
    v62 = sub_AB9F50();

    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v78 = v13;
      v65 = v64;
      v66 = v14;
      v67 = swift_slowAlloc();
      v80 = v67;
      *v63 = 136315394;
      if (v36)
      {
        v68 = 1819042164;
      }

      else
      {
        v68 = 0x6C616D726F6ELL;
      }

      if (v36)
      {
        v69 = 0xE400000000000000;
      }

      else
      {
        v69 = 0xE600000000000000;
      }

      v70 = sub_425E68(v68, v69, &v80);

      *(v63 + 4) = v70;
      *(v63 + 12) = 2114;
      *(v63 + 14) = v60;
      *v65 = v34;
      v71 = v60;
      _os_log_impl(&dword_0, v61, v62, "Layout determined as %s, videoDetailArtwork: %{public}@", v63, 0x16u);
      sub_12E1C(v65, &qword_DF9B20, &unk_AF8C60);

      __swift_destroy_boxed_opaque_existential_0(v67);

      (*(v66 + 8))(v77, v78);
      return v79;
    }

    else
    {
      (*(v14 + 8))(v32, v13);

      return v79;
    }
  }

  return result;
}

uint64_t sub_24F5B0()
{
  v1 = *(v0 + *&stru_298.segname[swift_isaMask & *v0] + 32);
  if (v1)
  {
    v2 = *&stru_B8.segname[(*v1 & swift_isaMask) + 8];
    v3 = v1;
    v4 = v2();

    v5 = swift_isaMask;
    type metadata accessor for JSContainerDetailModelRequest();
    if (swift_dynamicCastClass())
    {
      v6 = (*(&stru_1F8.size + (*v4 & v5)))();
      if (v6 || (v6 = (*(&stru_1A8.reserved2 + (swift_isaMask & *v4)))()) != 0)
      {
        v7 = v6;

        v8 = 1;
LABEL_6:
        v4 = v7;
LABEL_11:

        return v8 & 1;
      }

      v9 = (*(&stru_2E8.size + (swift_isaMask & *v4)))();
      if (v9)
      {
        v7 = v9;
        v8 = (*&stru_B8.segname[(swift_isaMask & *v9) + 16])();

        goto LABEL_6;
      }
    }

    v8 = 0;
    goto LABEL_11;
  }

  v8 = 0;
  return v8 & 1;
}

uint64_t sub_24F798()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController__viewControllers);
  if (!(v1 >> 62))
  {
    result = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8));
    if (result)
    {
      goto LABEL_3;
    }

LABEL_20:
    v12 = 0;
    return v12 & 1;
  }

  result = sub_ABB060();
  if (!result)
  {
    goto LABEL_20;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {

    v3 = sub_35F8D4(0, v1);

LABEL_6:
    type metadata accessor for UpsellBannerViewController();
    v4 = swift_dynamicCastClass();
    if (!v4)
    {
      v12 = 0;
      goto LABEL_18;
    }

    v5 = *(*(v4 + OBJC_IVAR____TtC16MusicApplication26UpsellBannerViewController_bannerView) + OBJC_IVAR____TtC16MusicApplication16UpsellBannerView_jsUpsellBanner);
    v6 = *(v0 + *&stru_298.segname[swift_isaMask & *v0] + 32);
    if (v6)
    {
      v7 = *&stru_B8.segname[(*v6 & swift_isaMask) + 8];
      v8 = v5;
      v9 = v6;
      v10 = v7();

      v11 = (*(&stru_2E8.size + (swift_isaMask & *v10)))();
      if (v5)
      {
        if (v11)
        {
          type metadata accessor for JSUpsellBanner();
          v12 = sub_ABA790();

          v3 = v8;
LABEL_18:

          return v12 & 1;
        }

LABEL_14:

        v12 = 0;
        v3 = v8;
        goto LABEL_18;
      }

      if (v11)
      {

        v12 = 0;
        v3 = v11;
        goto LABEL_18;
      }
    }

    else
    {
      v13 = v5;
      if (v5)
      {
        v8 = v13;
        goto LABEL_14;
      }
    }

    v12 = 1;
    goto LABEL_18;
  }

  if (*(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8)))
  {
    v3 = *(v1 + 32);
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

void sub_24F9BC(double a1, double a2)
{
  type metadata accessor for CGSize(0);
  v12 = *(v2 + *(&stru_338.reserved2 + (swift_isaMask & *v2)));
  if (sub_AB38D0())
  {
    sub_250C1C();
    v9 = (*(&stru_158.offset + (**(v2 + *(&stru_248.reloff + (swift_isaMask & *v2))) & swift_isaMask)))(v5, v6, v7, v8);
    v10 = [v9 collectionViewLayout];

    [swift_getObjCClassFromObject() invalidationContextClass];
    swift_getObjCClassMetadata();
    sub_13C80(0, &unk_DFA9B8, UICollectionViewTableLayoutInvalidationContext_ptr);
    swift_dynamicCastMetatypeUnconditional();
    v11 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    [v11 setInvalidateTableLayoutDelegateMetrics:1];
    [v10 invalidateLayoutWithContext:v11];
  }
}

void sub_24FB68(double a1, double a2)
{
  v3 = (v2 + *(&stru_338.reserved2 + (swift_isaMask & *v2)));
  v4 = *v3;
  v5 = v3[1];
  *v3 = a1;
  v3[1] = a2;
  sub_24F9BC(v4, v5);
}

double sub_24FBA4(uint64_t a1)
{
  *(v1 + *&stru_388.sectname[swift_isaMask & *v1]) = a1;

  return result;
}

double sub_24FBD8()
{
  v1 = v0;
  v2 = swift_isaMask & *v0;
  v3 = (*&stru_4C8.segname[v2])();
  if (v3)
  {
    v4 = v3;
    v5 = MPModelResponseDidInvalidateNotification;
    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v7 = swift_allocObject();
    *(v7 + 16) = *(v2 + 544);
    *(v7 + 24) = *(v2 + 552);
    *(v7 + 40) = *(v2 + 568);
    *(v7 + 48) = v6;
    type metadata accessor for NotificationObserver();
    swift_allocObject();
    v8 = v5;
    v9 = v4;
    v10 = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v8, v4, 1, 1, sub_256C94, v7);

    if (([v9 isValid] & 1) == 0)
    {
      (*(&stru_6F8.reserved2 + (swift_isaMask & *v1)))(0, 0);
    }
  }

  else
  {
    v10 = 0;
  }

  *(v1 + *&stru_388.sectname[swift_isaMask & *v1]) = v10;

  return result;
}

void sub_24FDDC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    (*(&stru_6F8.reserved2 + (swift_isaMask & *Strong)))(0, 0);
  }
}

uint64_t sub_24FE70()
{
  v1 = sub_24F5B0() & 1;
  result = sub_24F798();
  if (v1 != (result & 1))
  {
    v3 = *(&stru_6F8.offset + (swift_isaMask & *v0));

    return v3(0, _swiftEmptyArrayStorage);
  }

  return result;
}

void sub_24FF04()
{
  v1 = v0;
  v2 = swift_isaMask & *v0;
  v3 = *(&stru_1F8.offset + v2);
  v4 = sub_ABA9C0();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v23 - v6;
  v8 = *(v3 - 8);
  v9 = __chkstk_darwin();
  v11 = &v23 - v10;
  (*(v2 + 1216))(v9);
  if ((*(v8 + 48))(v7, 1, v3) == 1)
  {
    (*(v5 + 8))(v7, v4);
  }

  else
  {
    (*(v8 + 32))(v11, v7, v3);
    v12 = *(v2 + 568);
    v13 = v12[3];
    v14 = v13(v3, v12);
    if (v14)
    {
      v24 = v13;
      v15 = v12[15];
      v16 = v14;
      v17 = v15(v3, v12);
      v18 = [v16 hasLoadedValuesForPropertySet:v17];

      if (v18)
      {
        v23 = *(v1 + *(&stru_1F8.reserved2 + (swift_isaMask & *v1)));
        v19 = v12[13](v3, v12);
        v20 = (*(&stru_568.reloff + (**(v1 + *(&stru_248.reloff + (swift_isaMask & *v1))) & swift_isaMask)))();
        if (!v20)
        {
          v20 = v12[14](v3, v12);
        }

        v21 = v20;
        v22 = v24(v3, v12);
        sub_25A4B4(v19 & 0x101010101, v21, v22);

        (*(v8 + 8))(v11, v3);
      }

      else
      {
        (*(v8 + 8))(v11, v3);
      }
    }

    else
    {
      (*(v8 + 8))(v11, v3);
    }
  }
}

void sub_2502E0()
{
  v2 = sub_23D9EC();
  v0 = [objc_opt_self() sharedMonitor];
  v1 = [v0 isRemoteServerReachable];

  [v2 setHidden:v1 ^ 1];
}

id sub_25036C()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  v3 = UITraitCollection.mediaPickerConfiguration.getter();

  if (v3 && (v4 = MPMediaPickerConfiguration.supportsCatalogContent.getter(), v3, (v4 & 1) != 0))
  {
    static ApplicationCapabilities.shared.getter(v13);
    sub_70C54(v13);
    if (v13[96] == 2)
    {
      v5 = 1;
    }

    else
    {
      v5 = sub_ABB3C0();
    }
  }

  else
  {
    v5 = 0;
  }

  if (([v1 isEditing] & 1) == 0)
  {
    v6 = [v1 traitCollection];
    v7 = UITraitCollection.isMediaPicker.getter(v6);

    if (v5 & 1 | !v7)
    {
      result = (*&stru_4C8.segname[swift_isaMask & *v1])();
      if (!result)
      {
        return result;
      }

      v9 = result;
      result = [result results];
      if (!result)
      {
        __break(1u);
        return result;
      }

      v10 = result;
      v11 = [result totalItemCount];

      if (v11 >= 1)
      {
        v12 = *(v1 + *(&stru_2E8.reserved2 + (swift_isaMask & *v1)));

        return (v12 == 2);
      }
    }
  }

  return 0;
}

void sub_2505D4()
{
  v1 = swift_isaMask & *v0;
  v2 = *&stru_388.segname[v1 - 8];
  v3 = *(v0 + v2);
  v4 = __OFADD__(v3, 1);
  v5 = v3 + 1;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    v6 = v0;
    *(v0 + v2) = v5;
    v7 = *(v0 + *(&stru_248.flags + (swift_isaMask & *v0)));
    v8 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v9 = swift_allocObject();
    *(v9 + 16) = *(v1 + 544);
    *(v9 + 24) = *(v1 + 552);
    *(v9 + 40) = *(v1 + 568);
    *(v9 + 48) = v8;
    v10 = (v7 + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_customJSPageDetailsProvider);
    v11 = *(v7 + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_customJSPageDetailsProvider);
    v12 = *(v7 + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_customJSPageDetailsProvider + 8);
    *v10 = sub_256C84;
    v10[1] = v9;

    sub_17654(v11, v12);

    if (*(v6 + *&stru_298.segname[swift_isaMask & *v6] + 8))
    {
      swift_beginAccess();
    }

    else
    {
      v13 = _swiftEmptyArrayStorage;
    }

    sub_A34B8(v13);
    if (*(*(v7 + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_childViewModelKinds) + 16))
    {
      if (!*(v6 + *(&stru_2E8.reserved2 + (swift_isaMask & *v6))))
      {
        sub_24C108(1);
        sub_25086C();
      }
    }

    else
    {
      sub_24C108(0);
    }
  }
}

void *sub_2507E0(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v2 = *(Strong + *&stru_298.segname[swift_isaMask & *Strong] + 8);
  v3 = Strong;
  v4 = v2;

  return v2;
}

void sub_25086C()
{
  v1 = (swift_isaMask & *v0);
  if (*(v0 + *(&stru_2E8.reserved2 + v1)) == 1)
  {
    v2 = v0;
    v3 = (*&stru_4C8.segname[swift_isaMask & *v0])();
    if (v3)
    {
      v19 = v3;
      if ([v3 isValid])
      {
        goto LABEL_6;
      }

      v4 = [v19 results];
      if (!v4)
      {
        __break(1u);
        return;
      }

      v5 = v4;
      v6 = [v4 totalItemCount];

      if (v6 >= 1)
      {
LABEL_6:
        v7 = *(v2 + *&stru_388.segname[(swift_isaMask & *v2) - 8]);
        v8 = *(v2 + *(&stru_248.flags + (swift_isaMask & *v2)));
        v9 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v10 = swift_allocObject();
        v10[2] = v1[68];
        v10[3] = v1[69];
        v10[4] = v1[70];
        v10[5] = v1[71];
        v10[6] = v9;
        v10[7] = v7;
        v11 = *(v8 + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_needsStackItemUpdate);

        if (v11 == 1)
        {
          sub_A3DD4();
        }

        if (*(v8 + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_isChildViewModelKindsStackItemPreparing) == 1)
        {
          v12 = swift_allocObject();
          *(v12 + 16) = sub_256C74;
          *(v12 + 24) = v10;
          v13 = OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_childViewModelKindsStackItemPreparationCompletionHandlers;
          swift_beginAccess();
          v14 = *(v8 + v13);

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v8 + v13) = v14;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v14 = sub_6AA00(0, v14[2] + 1, 1, v14);
            *(v8 + v13) = v14;
          }

          v17 = v14[2];
          v16 = v14[3];
          if (v17 >= v16 >> 1)
          {
            v14 = sub_6AA00((v16 > 1), v17 + 1, 1, v14);
          }

          v14[2] = v17 + 1;
          v18 = &v14[2 * v17];
          v18[4] = sub_36C08;
          v18[5] = v12;
          *(v8 + v13) = v14;
          swift_endAccess();
        }

        else
        {
          sub_250B90(v9, v7);
        }
      }

      else
      {
      }
    }
  }
}

void sub_250B90(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (*(Strong + *&stru_388.segname[(swift_isaMask & *Strong) - 8]) == a2)
    {
      sub_24C108(2);
    }
  }
}

void sub_250C1C()
{
  v1 = v0;
  if ([v0 isViewLoaded])
  {
    v2 = [v0 traitCollection];
    v3 = [v0 navigationItem];
    v4 = [v1 parentViewController];
    if (v4)
    {
      v5 = v4;
      while (1)
      {
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          break;
        }

        v6 = v5;
        v7 = [v6 navigationItem];

        v5 = [v6 parentViewController];
        v3 = v7;
        if (!v5)
        {
          goto LABEL_9;
        }
      }
    }

    v7 = v3;
LABEL_9:
    v8 = sub_2B51D8(v4);
    sub_387430(v8, v9);

    v10 = [v1 traitCollection];
    v11 = UITraitCollection.mediaPickerConfiguration.getter();

    if (v11)
    {
      v12 = objc_allocWithZone(type metadata accessor for JSMediaPickerEnvironment());
      v13 = v11;
      v14 = JSMediaPickerEnvironment.init(configuration:)(v13);
      v15 = *(v1 + *&stru_298.segname[swift_isaMask & *v1] + 32);
      if (v15)
      {
        v16 = *&stru_108.segname[(*v15 & swift_isaMask) - 8];
        v17 = v15;
        v18 = v14;
        v19 = v16(v36);
        v21 = *v20;
        *v20 = v14;

        v19(v36, 0);
      }

      else
      {
      }
    }

    v22 = (*(&stru_158.offset + (**(v1 + *(&stru_248.reloff + (swift_isaMask & *v1))) & swift_isaMask)))();
    v23 = [v22 collectionViewLayout];

    [v23 invalidateLayout];
    if (*(*(v1 + *(&stru_248.reserved2 + (swift_isaMask & *v1))) + OBJC_IVAR____TtC16MusicApplication12DetailHeader_layout + 2) == 1)
    {
      v24 = [v1 view];
      if (!v24)
      {
        __break(1u);
        return;
      }

      v25 = v24;
      [v24 bounds];
      v27 = v26;
      v29 = v28;
      v31 = v30;
      v33 = v32;

      v37.origin.x = v27;
      v37.origin.y = v29;
      v37.size.width = v31;
      v37.size.height = v33;
      Width = CGRectGetWidth(v37);
      v35 = UITraitCollection.isAccessibilitySizeCategory.getter();
      HI.Grid.Metrics.init(width:variant:swiping:isAccessibilitySize:)(2, 0, v35 & 1, v36, Width);
    }
  }
}

char *sub_250FAC()
{
  v1 = *&stru_388.segname[swift_isaMask & *v0];
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = *(v0 + v1);
  }

  else
  {
    v4 = v0;
    v5 = *(v0 + *&stru_298.segname[swift_isaMask & *v0] + 32);
    if (v5)
    {
      v6 = *&stru_B8.segname[(*v5 & swift_isaMask) + 8];
      v7 = v5;
      v8 = v6();

      v9 = (*(&stru_2E8.size + (swift_isaMask & *v8)))();
    }

    else
    {
      v9 = 0;
    }

    v10 = objc_allocWithZone(type metadata accessor for UpsellBannerViewController());
    v11 = sub_1D4A3C(v9);
    v12 = *(v4 + v1);
    *(v4 + v1) = v11;
    v3 = v11;

    v2 = 0;
  }

  v13 = v2;
  return v3;
}

void sub_251110(uint64_t a1)
{
  v2 = *&stru_388.segname[swift_isaMask & *v1];
  v3 = *(v1 + v2);
  *(v1 + v2) = a1;
}

void sub_251140(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = swift_isaMask;
  v39 = swift_isaMask & v3;
  v5 = *(&stru_1F8.offset + (swift_isaMask & v3));
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &aBlock[-1] - v7;
  v9 = sub_ABA9C0();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin();
  v13 = &aBlock[-1] - v12;
  v41 = 0;
  v14 = (*&stru_1F8.sectname[**(v2 + *(&stru_248.reloff + (v4 & v3))) & v4])(v11);
  if (!v14)
  {
    v16 = 0;
    v17 = 0;
    goto LABEL_6;
  }

  v15 = v14;
  (*(&stru_478.reserved2 + (swift_isaMask & *v2)))();
  if ((*(v6 + 48))(v13, 1, v5))
  {

    (*(v10 + 8))(v13, v9);
LABEL_4:
    v16 = 0;
    v17 = 0;
LABEL_6:
    v18 = *(&stru_2E8.flags + (swift_isaMask & *v2));
    v19 = *(v2 + v18);
    *(v2 + v18) = HIBYTE(v41);
    sub_24A1BC(v19);
    sub_24A128(v41);
    sub_17654(v16, v17);
    return;
  }

  (*(v6 + 16))(v8, v13, v5);
  (*(v10 + 8))(v13, v9);
  v20 = (*(*(v39 + 568) + 24))(v5);
  (*(v6 + 8))(v8, v5);
  if (!v20)
  {

    goto LABEL_4;
  }

  v21 = v20;
  if (sub_2FBDBC(v21))
  {
    HIBYTE(v41) = 1;
    v23 = sub_304104(v21, v22);

    v16 = 0;
    v17 = 0;
    LOBYTE(v41) = v23;
    goto LABEL_6;
  }

  v24 = [v21 pickableObjectFor:2];

  if (!v24 || (v24, v25 = [v2 traitCollection], v26 = UITraitCollection.mediaPickerConfiguration.getter(), v25, !v26) || (v27 = objc_msgSend(v26, "selectionMode"), v26, v27 != &dword_0 + 1) || (v28 = *&stru_4C8.segname[swift_isaMask & *v2], (v29 = v28()) == 0))
  {
LABEL_21:

    v16 = 0;
    v17 = 0;
    goto LABEL_6;
  }

  v30 = v29;
  v31 = [v29 results];

  if (v31)
  {
    v32 = [v31 totalItemCount];

    if (v32 < 1)
    {
      goto LABEL_21;
    }

    v41 = 257;
    v33 = v28();
    if (!v33)
    {
      goto LABEL_21;
    }

    v34 = v33;
    v35 = [v33 results];

    if (v35)
    {
      v17 = swift_allocObject();
      v17[2] = &v41 + 1;
      v17[3] = v15;
      v17[4] = &v41;
      v36 = swift_allocObject();
      v16 = sub_256C20;
      *(v36 + 16) = sub_256C20;
      *(v36 + 24) = v17;
      aBlock[4] = sub_5794C;
      aBlock[5] = v36;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_48D4FC;
      aBlock[3] = &block_descriptor_64;
      v37 = _Block_copy(aBlock);

      [v35 enumerateItemsUsingBlock:v37];

      _Block_release(v37);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        goto LABEL_6;
      }

      __break(1u);
      goto LABEL_21;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_25176C(uint64_t a1, uint64_t a2, _BYTE *a3, _BYTE *a4, uint64_t a5, BOOL *a6)
{
  swift_unknownObjectRetain();
  objc_opt_self();
  v9 = swift_dynamicCastObjCClass();
  if (v9)
  {
    v11 = v9;
    if (*a4 == 1)
    {
      v12 = sub_2FBDBC(v9);
    }

    else
    {
      v12 = 0;
    }

    *a4 = v12 & 1;
    if (*a6)
    {
      v13 = sub_304104(v11, v10);
      *a6 = v13;
      if ((*a4 & 1) != 0 || v13)
      {
        goto LABEL_11;
      }
    }

    else
    {
      *a6 = 0;
      if (*a4)
      {
        goto LABEL_11;
      }
    }

    *a3 = 1;
  }

LABEL_11:

  return swift_unknownObjectRelease();
}

double sub_251860@<D0>(_OWORD *a1@<X8>)
{
  sub_255E10(v7);
  v2 = v7[7];
  a1[6] = v7[6];
  a1[7] = v2;
  a1[8] = v8[0];
  *(a1 + 137) = *(v8 + 9);
  v3 = v7[3];
  a1[2] = v7[2];
  a1[3] = v3;
  v4 = v7[5];
  a1[4] = v7[4];
  a1[5] = v4;
  result = *v7;
  v6 = v7[1];
  *a1 = v7[0];
  a1[1] = v6;
  return result;
}

uint64_t sub_2518CC()
{
  v0 = sub_256124();
  sub_307CC(v0, v1);
  return v0;
}

double sub_251904@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_2448F8(*a1, v8);
  v3 = v8[7];
  a2[6] = v8[6];
  a2[7] = v3;
  a2[8] = v9[0];
  *(a2 + 137) = *(v9 + 9);
  v4 = v8[3];
  a2[2] = v8[2];
  a2[3] = v4;
  v5 = v8[5];
  a2[4] = v8[4];
  a2[5] = v5;
  result = *v8;
  v7 = v8[1];
  *a2 = v8[0];
  a2[1] = v7;
  return result;
}

void *sub_251968()
{
  v0 = sub_255E74();
  v1 = v0;
  return v0;
}

void sub_251A70(uint64_t a1)
{
  sub_ABA9C0();
  if (v1 <= 0x3F)
  {
    sub_251C40(319);
    if (v2 <= 0x3F)
    {
      swift_initClassMetadata2();
    }
  }
}

void sub_251C40(uint64_t a1)
{
  if (!qword_DFA8C0[0])
  {
    type metadata accessor for MetricsEvent.Page(255);
    v1 = sub_ABA9C0();
    if (!v2)
    {
      atomic_store(v1, qword_DFA8C0);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_251D04(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_251D4C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_251DB4()
{
  result = qword_DFA948;
  if (!qword_DFA948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DFA948);
  }

  return result;
}

uint64_t sub_251E40(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_251E7C(void *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFA9F0, &qword_AF8BD0);
  __chkstk_darwin();
  *&v83 = &v71 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFC650, &qword_B3E4A0);
  v6 = *(v5 - 8);
  v76 = v5;
  v77 = v6;
  __chkstk_darwin();
  v8 = &v71 - v7;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFAA00, &unk_B05A00);
  __chkstk_darwin();
  v74 = &v71 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFAA08, &unk_B07E50);
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v71 - v12;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFAA10, &qword_B05A10);
  __chkstk_darwin();
  v71 = &v71 - v14;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFAA18, &qword_B05A18);
  v80 = *(v78 - 8);
  __chkstk_darwin();
  v72 = &v71 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFAA20, &qword_B05A20);
  v17 = *(v16 - 8);
  v81 = v16;
  v82 = v17;
  __chkstk_darwin();
  v73 = &v71 - v18;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *(v2 + 40) = 0;
  *(v2 + 48) = 0;
  *(v2 + 56) = 0;
  *(v2 + 64) = 0u;
  *(v2 + 80) = 0u;
  *(v2 + 96) = 0u;
  *(v2 + 112) = 0u;
  *(v2 + 128) = 0u;
  *(v2 + 144) = _swiftEmptyArrayStorage;
  *(v2 + 152) = [objc_allocWithZone(type metadata accessor for EnvironmentMonitorObserver(0)) init];
  *(v2 + 160) = 0;
  *(v2 + 32) = a1;
  v85 = a1;
  v19 = [v85 window];
  v84 = [v19 windowScene];

  v20 = *(v2 + 152);
  swift_beginAccess();
  v21 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFAA28, &qword_B05A28);
  sub_AB54E0();
  swift_endAccess();

  sub_36A00(&unk_DFAA30, &qword_DFAA08, &unk_B07E50, &protocol conformance descriptor for Published<A>.Publisher);
  sub_257138();
  sub_AB55B0();
  (*(v11 + 8))(v13, v10);
  v22 = *(v2 + 152);
  swift_beginAccess();
  v23 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFAA40, &qword_B05A30);
  sub_AB54E0();
  swift_endAccess();

  sub_36A00(&qword_DFAA48, &qword_DFC650, &qword_B3E4A0, &protocol conformance descriptor for Published<A>.Publisher);
  v24 = v76;
  sub_AB55B0();
  (*(v77 + 8))(v8, v24);
  sub_36A00(&qword_DFAA50, &qword_DFAA10, &qword_B05A10, &protocol conformance descriptor for Publishers.RemoveDuplicates<A>);
  sub_36A00(&qword_DFAA58, &qword_DFAA00, &unk_B05A00, &protocol conformance descriptor for Publishers.RemoveDuplicates<A>);
  v25 = v72;
  sub_AB5420();
  sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
  v26 = sub_ABA150();
  v86 = v26;
  v27 = sub_ABA130();
  v28 = v83;
  (*(*(v27 - 8) + 56))(v83, 1, 1, v27);
  sub_36A00(&unk_DFAA60, &qword_DFAA18, &qword_B05A18, &protocol conformance descriptor for Publishers.CombineLatest<A, B>);
  sub_60090();
  v29 = v73;
  v30 = v78;
  sub_AB5590();
  sub_12E1C(v28, &unk_DFA9F0, &qword_AF8BD0);
  (*(v80 + 8))(v25, v30);

  v31 = swift_allocObject();
  swift_weakInit();
  v32 = swift_allocObject();
  *(v32 + 16) = sub_25718C;
  *(v32 + 24) = v31;
  sub_36A00(&unk_DFAA70, &qword_DFAA20, &qword_B05A20, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);

  v33 = v81;
  v34 = sub_AB55C0();
  (*(v82 + 8))(v29, v33);

  *(v2 + 160) = v34;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0, &unk_AF7D40);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_AF82E0;
  v36 = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFAA80, &unk_AF9360);
  inited = swift_initStackObject();
  v83 = xmmword_AF8820;
  *(inited + 16) = xmmword_AF8820;
  UIScreen.Dimensions.size.getter();
  *(inited + 56) = &type metadata for NotificationTrigger;
  *(inited + 64) = &protocol witness table for NotificationTrigger;
  *(inited + 32) = v38;
  *(inited + 40) = v39;
  UIScreen.Dimensions.size.getter();
  *(inited + 96) = &type metadata for NotificationTrigger;
  *(inited + 104) = &protocol witness table for NotificationTrigger;
  *(inited + 72) = v40;
  *(inited + 80) = v41;
  LOBYTE(v86) = 6;
  sub_AFE98();
  v42 = UIAccessibilityReduceMotionStatusDidChangeNotification;
  v43 = NSProcessInfoPowerStateDidChangeNotification;
  v44 = UserDefaultsKeyValueTrigger.init<A>(suiteName:key:)(0, 0, &v86, &_s4KeysON);
  v46 = v45;
  v48 = v47;
  v50 = v49;
  *(inited + 136) = &type metadata for UserDefaultsKeyValueTrigger;
  *(inited + 144) = &protocol witness table for UserDefaultsKeyValueTrigger;
  v51 = swift_allocObject();
  *(inited + 112) = v51;
  v51[2] = v44;
  v51[3] = v46;
  v51[4] = v48;
  v51[5] = v50;
  v52 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for Whitetail.Binding();
  swift_allocObject();

  v53 = Whitetail.Binding.init(_:needsInitialConfiguration:configurationBlock:)(inited, 1, sub_257264, v52);

  v82 = v36;
  *(v36 + 32) = v53;
  v54 = swift_allocObject();
  swift_weakInit();
  *(v36 + 40) = Whitetail.Binding.__allocating_init(_:needsInitialConfiguration:configurationBlock:)(AVAudioSessionMediaServicesWereResetNotification, 1, sub_257294, v54);
  v55 = swift_initStackObject();
  *(v55 + 16) = v83;
  v56 = v84;
  UIScreen.Dimensions.size.getter();
  *(v55 + 56) = &type metadata for NotificationTrigger;
  *(v55 + 64) = &protocol witness table for NotificationTrigger;
  *(v55 + 32) = v57;
  *(v55 + 40) = v58;
  UIScreen.Dimensions.size.getter();
  *(v55 + 96) = &type metadata for NotificationTrigger;
  *(v55 + 104) = &protocol witness table for NotificationTrigger;
  *(v55 + 72) = v59;
  *(v55 + 80) = v60;
  UIScreen.Dimensions.size.getter();
  *(v55 + 136) = &type metadata for NotificationTrigger;
  *(v55 + 144) = &protocol witness table for NotificationTrigger;
  *(v55 + 112) = v61;
  *(v55 + 120) = v62;
  v63 = swift_allocObject();
  swift_weakInit();
  v64 = v56;
  v65 = UISceneDidActivateNotification;
  v66 = UISceneWillDeactivateNotification;
  v67 = UISceneDidEnterBackgroundNotification;

  swift_allocObject();

  v68 = Whitetail.Binding.init(_:needsInitialConfiguration:configurationBlock:)(v55, 1, sub_25729C, v63);

  v69 = v82;
  *(v82 + 48) = v68;

  *(v2 + 144) = v69;

  return v2;
}

uint64_t sub_252988(void *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFA9F0, &qword_AF8BD0);
  __chkstk_darwin();
  *&v83 = &v71 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFC650, &qword_B3E4A0);
  v6 = *(v5 - 8);
  v76 = v5;
  v77 = v6;
  __chkstk_darwin();
  v8 = &v71 - v7;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFAA00, &unk_B05A00);
  __chkstk_darwin();
  v74 = &v71 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFAA08, &unk_B07E50);
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v71 - v12;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFAA10, &qword_B05A10);
  __chkstk_darwin();
  v71 = &v71 - v14;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFAA18, &qword_B05A18);
  v80 = *(v78 - 8);
  __chkstk_darwin();
  v72 = &v71 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFAA20, &qword_B05A20);
  v17 = *(v16 - 8);
  v81 = v16;
  v82 = v17;
  __chkstk_darwin();
  v73 = &v71 - v18;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *(v2 + 40) = 0;
  *(v2 + 48) = 0;
  *(v2 + 56) = 0;
  *(v2 + 64) = 0u;
  *(v2 + 80) = 0u;
  *(v2 + 96) = 0u;
  *(v2 + 112) = 0u;
  *(v2 + 128) = 0u;
  *(v2 + 144) = _swiftEmptyArrayStorage;
  *(v2 + 152) = [objc_allocWithZone(type metadata accessor for EnvironmentMonitorObserver(0)) init];
  *(v2 + 160) = 0;
  *(v2 + 32) = a1;
  v85 = a1;
  v19 = [v85 window];
  v84 = [v19 windowScene];

  v20 = *(v2 + 152);
  swift_beginAccess();
  v21 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFAA28, &qword_B05A28);
  sub_AB54E0();
  swift_endAccess();

  sub_36A00(&unk_DFAA30, &qword_DFAA08, &unk_B07E50, &protocol conformance descriptor for Published<A>.Publisher);
  sub_257138();
  sub_AB55B0();
  (*(v11 + 8))(v13, v10);
  v22 = *(v2 + 152);
  swift_beginAccess();
  v23 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFAA40, &qword_B05A30);
  sub_AB54E0();
  swift_endAccess();

  sub_36A00(&qword_DFAA48, &qword_DFC650, &qword_B3E4A0, &protocol conformance descriptor for Published<A>.Publisher);
  v24 = v76;
  sub_AB55B0();
  (*(v77 + 8))(v8, v24);
  sub_36A00(&qword_DFAA50, &qword_DFAA10, &qword_B05A10, &protocol conformance descriptor for Publishers.RemoveDuplicates<A>);
  sub_36A00(&qword_DFAA58, &qword_DFAA00, &unk_B05A00, &protocol conformance descriptor for Publishers.RemoveDuplicates<A>);
  v25 = v72;
  sub_AB5420();
  sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
  v26 = sub_ABA150();
  v86 = v26;
  v27 = sub_ABA130();
  v28 = v83;
  (*(*(v27 - 8) + 56))(v83, 1, 1, v27);
  sub_36A00(&unk_DFAA60, &qword_DFAA18, &qword_B05A18, &protocol conformance descriptor for Publishers.CombineLatest<A, B>);
  sub_60090();
  v29 = v73;
  v30 = v78;
  sub_AB5590();
  sub_12E1C(v28, &unk_DFA9F0, &qword_AF8BD0);
  (*(v80 + 8))(v25, v30);

  v31 = swift_allocObject();
  swift_weakInit();
  v32 = swift_allocObject();
  *(v32 + 16) = sub_259540;
  *(v32 + 24) = v31;
  sub_36A00(&unk_DFAA70, &qword_DFAA20, &qword_B05A20, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);

  v33 = v81;
  v34 = sub_AB55C0();
  (*(v82 + 8))(v29, v33);

  *(v2 + 160) = v34;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0, &unk_AF7D40);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_AF82E0;
  v36 = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFAA80, &unk_AF9360);
  inited = swift_initStackObject();
  v83 = xmmword_AF8820;
  *(inited + 16) = xmmword_AF8820;
  UIScreen.Dimensions.size.getter();
  *(inited + 56) = &type metadata for NotificationTrigger;
  *(inited + 64) = &protocol witness table for NotificationTrigger;
  *(inited + 32) = v38;
  *(inited + 40) = v39;
  UIScreen.Dimensions.size.getter();
  *(inited + 96) = &type metadata for NotificationTrigger;
  *(inited + 104) = &protocol witness table for NotificationTrigger;
  *(inited + 72) = v40;
  *(inited + 80) = v41;
  LOBYTE(v86) = 6;
  sub_AFE98();
  v42 = UIAccessibilityReduceMotionStatusDidChangeNotification;
  v43 = NSProcessInfoPowerStateDidChangeNotification;
  v44 = UserDefaultsKeyValueTrigger.init<A>(suiteName:key:)(0, 0, &v86, &_s4KeysON);
  v46 = v45;
  v48 = v47;
  v50 = v49;
  *(inited + 136) = &type metadata for UserDefaultsKeyValueTrigger;
  *(inited + 144) = &protocol witness table for UserDefaultsKeyValueTrigger;
  v51 = swift_allocObject();
  *(inited + 112) = v51;
  v51[2] = v44;
  v51[3] = v46;
  v51[4] = v48;
  v51[5] = v50;
  v52 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for Whitetail.Binding();
  swift_allocObject();

  v53 = Whitetail.Binding.init(_:needsInitialConfiguration:configurationBlock:)(inited, 1, sub_259570, v52);

  v82 = v36;
  *(v36 + 32) = v53;
  v54 = swift_allocObject();
  swift_weakInit();
  *(v36 + 40) = Whitetail.Binding.__allocating_init(_:needsInitialConfiguration:configurationBlock:)(AVAudioSessionMediaServicesWereResetNotification, 1, sub_2595A0, v54);
  v55 = swift_initStackObject();
  *(v55 + 16) = v83;
  v56 = v84;
  UIScreen.Dimensions.size.getter();
  *(v55 + 56) = &type metadata for NotificationTrigger;
  *(v55 + 64) = &protocol witness table for NotificationTrigger;
  *(v55 + 32) = v57;
  *(v55 + 40) = v58;
  UIScreen.Dimensions.size.getter();
  *(v55 + 96) = &type metadata for NotificationTrigger;
  *(v55 + 104) = &protocol witness table for NotificationTrigger;
  *(v55 + 72) = v59;
  *(v55 + 80) = v60;
  UIScreen.Dimensions.size.getter();
  *(v55 + 136) = &type metadata for NotificationTrigger;
  *(v55 + 144) = &protocol witness table for NotificationTrigger;
  *(v55 + 112) = v61;
  *(v55 + 120) = v62;
  v63 = swift_allocObject();
  swift_weakInit();
  v64 = v56;
  v65 = UISceneDidActivateNotification;
  v66 = UISceneWillDeactivateNotification;
  v67 = UISceneDidEnterBackgroundNotification;

  swift_allocObject();

  v68 = Whitetail.Binding.init(_:needsInitialConfiguration:configurationBlock:)(v55, 1, sub_2595A8, v63);

  v69 = v82;
  *(v82 + 48) = v68;

  *(v2 + 144) = v69;

  return v2;
}

double sub_253494(uint64_t a1, char a2, uint64_t a3, void (*a4)(void, uint64_t))
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    a4(a2 & 1, a1);
  }

  return result;
}

double sub_253510(uint64_t a1, void (*a2)(uint64_t, void, __n128))
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = *(Strong + 152);
    swift_getKeyPath();
    swift_getKeyPath();
    v7 = v6;
    sub_AB5510(v11);

    v8 = LOBYTE(v11[0]);
    v9 = *(v5 + 152);
    swift_getKeyPath();
    swift_getKeyPath();
    v10 = v9;
    sub_AB5510(v11);

    (a2)(v8, LOBYTE(v11[0]));
  }

  return result;
}

void sub_25362C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_11;
  }

  v2 = *(Strong + 16);
  if (!v2)
  {

LABEL_11:
    swift_beginAccess();
    v13 = swift_weakLoadStrong();
    if (v13)
    {
      (*(*v13 + 264))(v13);
    }

    return;
  }

  v3 = *(Strong + 24);
  sub_307CC(*(Strong + 16), v3);

  v2(v4);
  v6 = v5;
  v7 = *(v5 + 16);
  swift_beginAccess();
  if (!v7)
  {
LABEL_9:

    sub_17654(v2, v3);
    goto LABEL_11;
  }

  v8 = 0;
  v9 = (v6 + 40);
  while (v8 < *(v6 + 16))
  {
    v10 = *v9;
    v14[0] = *(v9 - 1);
    v14[1] = v10;
    v11 = swift_weakLoadStrong();
    if (v11)
    {
      v12 = *(*v11 + 304);

      v12(v14);
    }

    ++v8;
    v9 += 2;
    if (v7 == v8)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
}

void sub_2537F8(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_9;
  }

  v2 = *(Strong + 16);
  if (!v2)
  {

LABEL_9:
    swift_beginAccess();
    v9 = swift_weakLoadStrong();
    if (v9)
    {
      (*(*v9 + 264))(v9);
    }

    return;
  }

  v3 = *(Strong + 24);
  sub_307CC(*(Strong + 16), v3);

  v2(v4);
  v6 = v5;
  v7 = *(v5 + 16);
  swift_beginAccess();
  if (!v7)
  {
LABEL_7:

    sub_17654(v2, v3);
    goto LABEL_9;
  }

  v8 = 0;
  while (v8 < *(v6 + 16))
  {
    ++v8;
    swift_weakLoadStrong();

    if (v7 == v8)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
}

void sub_253950(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = *(Strong + 32);
    v3 = v2;

    if (v2)
    {
      v4 = [v3 window];

      if (v4)
      {
        v5 = [v4 windowScene];

        if (v5)
        {
          v6 = [v5 activationState];

          if (v6 > 0)
          {
            if (v6 == (&dword_0 + 1))
            {
              swift_beginAccess();
              v17 = swift_weakLoadStrong();
              if (!v17)
              {
                return;
              }

              v6 = *(v17 + 16);
              if (!v6)
              {
                goto LABEL_35;
              }

              v18 = *(v17 + 24);
              sub_307CC(*(v17 + 16), v18);

              v37 = v18;
              v20 = v6(v19);
              v21 = *(v20 + 16);
              swift_beginAccess();
              if (!v21)
              {
                goto LABEL_34;
              }

              v22 = 0;
              v23 = (v20 + 40);
              while (v22 < *(v20 + 16))
              {
                v24 = *v23;
                v38 = *(v23 - 1);
                v39 = v24;
                v25 = swift_weakLoadStrong();
                if (v25)
                {
                  v26 = *(*v25 + 288);

                  v26(&v38);
                }

                ++v22;
                v23 += 2;
                if (v21 == v22)
                {
                  goto LABEL_34;
                }
              }

LABEL_38:
              __break(1u);
LABEL_39:
              __break(1u);
              goto LABEL_40;
            }

            if (v6 != (&dword_0 + 2))
            {
              goto LABEL_40;
            }
          }

          else if (v6 != -1)
          {
            if (!v6)
            {
              swift_beginAccess();
              v7 = swift_weakLoadStrong();
              if (!v7)
              {
                return;
              }

              v6 = *(v7 + 16);
              if (v6)
              {
                v8 = *(v7 + 24);
                sub_307CC(*(v7 + 16), v8);

                v37 = v8;
                v10 = v6(v9);
                v11 = *(v10 + 16);
                swift_beginAccess();
                if (v11)
                {
                  v12 = 0;
                  v13 = (v10 + 40);
                  while (v12 < *(v10 + 16))
                  {
                    v14 = *v13;
                    v38 = *(v13 - 1);
                    v39 = v14;
                    v15 = swift_weakLoadStrong();
                    if (v15)
                    {
                      v16 = *(*v15 + 280);

                      v16(&v38);
                    }

                    ++v12;
                    v13 += 2;
                    if (v11 == v12)
                    {
                      goto LABEL_34;
                    }
                  }

                  goto LABEL_39;
                }

LABEL_34:

                sub_17654(v6, v37);
                return;
              }

LABEL_35:

              return;
            }

LABEL_40:
            v41 = 0;
            v42 = 0xE000000000000000;
            sub_ABAD90(24);
            v43._object = 0x8000000000B4AB80;
            v43._countAndFlagsBits = 0xD000000000000013;
            sub_AB94A0(v43);
            v44._countAndFlagsBits = 0xD000000000000016;
            v44._object = 0x8000000000B59DD0;
            sub_AB94A0(v44);
            v45._countAndFlagsBits = 32;
            v45._object = 0xE100000000000000;
            sub_AB94A0(v45);
            v40 = v6;
            type metadata accessor for ActivationState(0);
            sub_ABAF70();
            sub_ABAFD0();
            __break(1u);
            return;
          }

          swift_beginAccess();
          v27 = swift_weakLoadStrong();
          if (!v27)
          {
            return;
          }

          v6 = *(v27 + 16);
          if (!v6)
          {
            goto LABEL_35;
          }

          v28 = *(v27 + 24);
          sub_307CC(*(v27 + 16), v28);

          v37 = v28;
          v30 = v6(v29);
          v31 = *(v30 + 16);
          swift_beginAccess();
          if (!v31)
          {
            goto LABEL_34;
          }

          v32 = 0;
          v33 = (v30 + 40);
          while (v32 < *(v30 + 16))
          {
            v34 = *v33;
            v38 = *(v33 - 1);
            v39 = v34;
            v35 = swift_weakLoadStrong();
            if (v35)
            {
              v36 = *(*v35 + 296);

              v36(&v38);
            }

            ++v32;
            v33 += 2;
            if (v31 == v32)
            {
              goto LABEL_34;
            }
          }

          __break(1u);
          goto LABEL_38;
        }
      }
    }
  }
}

void sub_253E68(uint64_t a1)
{
  v1 = sub_AB3820();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = &v39 - v5;
  __chkstk_darwin();
  v8 = &v39 - v7;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v10 = *(Strong + 32);
    v11 = v10;

    if (v10)
    {
      v12 = [v11 window];

      if (v12)
      {
        v13 = [v12 windowScene];

        if (v13)
        {
          v14 = [v13 activationState];

          if (v14 > 0)
          {
            if (v14 == &dword_0 + 1)
            {
              swift_beginAccess();
              v23 = swift_weakLoadStrong();
              if (!v23)
              {
                return;
              }

              v24 = *(v23 + 16);
              if (!v24)
              {
                goto LABEL_35;
              }

              v25 = *(v23 + 24);
              sub_307CC(*(v23 + 16), v25);

              v40 = v25;
              v41 = v24;
              v14 = v24(v26);
              v39 = v27;
              v28 = *(v14 + 2);
              swift_beginAccess();
              if (!v28)
              {
                goto LABEL_34;
              }

              v29 = 0;
              while (v29 < *(v14 + 2))
              {
                (*(v2 + 16))(v6, &v14[((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v29], v1);
                v30 = swift_weakLoadStrong();
                if (v30)
                {
                  (*(*v30 + 288))(v6);
                }

                ++v29;
                (*(v2 + 8))(v6, v1);
                if (v28 == v29)
                {
                  goto LABEL_34;
                }
              }

LABEL_38:
              __break(1u);
LABEL_39:
              __break(1u);
              goto LABEL_40;
            }

            if (v14 != &dword_0 + 2)
            {
              goto LABEL_40;
            }
          }

          else if (v14 != -1)
          {
            if (!v14)
            {
              swift_beginAccess();
              v15 = swift_weakLoadStrong();
              if (!v15)
              {
                return;
              }

              v16 = *(v15 + 16);
              if (v16)
              {
                v17 = *(v15 + 24);
                sub_307CC(*(v15 + 16), v17);

                v40 = v17;
                v41 = v16;
                v14 = v16(v18);
                v39 = v19;
                v20 = *(v14 + 2);
                swift_beginAccess();
                if (v20)
                {
                  v21 = 0;
                  while (v21 < *(v14 + 2))
                  {
                    (*(v2 + 16))(v8, &v14[((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v21], v1);
                    v22 = swift_weakLoadStrong();
                    if (v22)
                    {
                      (*(*v22 + 280))(v8);
                    }

                    ++v21;
                    (*(v2 + 8))(v8, v1);
                    if (v20 == v21)
                    {
                      goto LABEL_34;
                    }
                  }

                  goto LABEL_39;
                }

LABEL_34:

                sub_17654(v41, v40);
                return;
              }

LABEL_35:

              return;
            }

LABEL_40:
            v43 = 0;
            v44 = 0xE000000000000000;
            sub_ABAD90(24);
            v45._object = 0x8000000000B4AB80;
            v45._countAndFlagsBits = 0xD000000000000013;
            sub_AB94A0(v45);
            v46._countAndFlagsBits = 0xD000000000000016;
            v46._object = 0x8000000000B59DD0;
            sub_AB94A0(v46);
            v47._countAndFlagsBits = 32;
            v47._object = 0xE100000000000000;
            sub_AB94A0(v47);
            v42 = v14;
            type metadata accessor for ActivationState(0);
            sub_ABAF70();
            sub_ABAFD0();
            __break(1u);
            return;
          }

          swift_beginAccess();
          v31 = swift_weakLoadStrong();
          if (!v31)
          {
            return;
          }

          v32 = *(v31 + 16);
          if (!v32)
          {
            goto LABEL_35;
          }

          v33 = *(v31 + 24);
          sub_307CC(*(v31 + 16), v33);

          v40 = v33;
          v41 = v32;
          v14 = v32(v34);
          v39 = v35;
          v36 = *(v14 + 2);
          swift_beginAccess();
          if (!v36)
          {
            goto LABEL_34;
          }

          v37 = 0;
          while (v37 < *(v14 + 2))
          {
            (*(v2 + 16))(v4, &v14[((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v37], v1);
            v38 = swift_weakLoadStrong();
            if (v38)
            {
              (*(*v38 + 296))(v4);
            }

            ++v37;
            (*(v2 + 8))(v4, v1);
            if (v36 == v37)
            {
              goto LABEL_34;
            }
          }

          __break(1u);
          goto LABEL_38;
        }
      }
    }
  }
}

void sub_2544C0(int a1, uint64_t a2)
{
  v3 = v2;
  v69 = a2;
  v70 = a1;
  v4 = sub_AB4BC0();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v71 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v67 = &v66 - v7;
  __chkstk_darwin();
  v68 = &v66 - v8;
  __chkstk_darwin();
  v10 = &v66 - v9;
  __chkstk_darwin();
  v12 = &v66 - v11;
  v72 = sub_AB3870();
  v13 = *(v72 - 8);
  __chkstk_darwin();
  v15 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = &selRef_setSubtitleText_;
  if (UIAccessibilityIsReduceMotionEnabled())
  {
    LOBYTE(v17) = 0;
    goto LABEL_9;
  }

  v18 = [objc_opt_self() processInfo];
  v19 = [v18 isLowPowerModeEnabled];

  if (v19)
  {
    LOBYTE(v17) = 0;
LABEL_5:
    v16 = &selRef_setSubtitleText_;
    goto LABEL_9;
  }

  v20 = [objc_opt_self() standardUserDefaults];
  sub_F75B4(v15);

  LOBYTE(v20) = MotionMode.allowsMotion.getter();
  (*(v13 + 8))(v15, v72);
  LOBYTE(v17) = 0;
  if ((v20 & 1) == 0)
  {
    goto LABEL_5;
  }

  v16 = &selRef_setSubtitleText_;
  if ((v70 & 1) == 0)
  {
    v17 = 0x47u >> v69;
  }

LABEL_9:
  v21 = *(v3 + 56);
  *(v3 + 56) = v17 & 1;
  sub_389830(v21);
  IsReduceMotionEnabled = UIAccessibilityIsReduceMotionEnabled();
  v73 = v5;
  if (IsReduceMotionEnabled)
  {
    v66 = v10;
    v23 = v13;
    v24 = v16;
    v25 = Logger.motion.unsafeMutableAddressor();
    (*(v5 + 16))(v12, v25, v4);
    v26 = sub_AB4BA0();
    v27 = sub_AB9F50();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_0, v26, v27, "Disabling Motion: Reduce Motion is on", v28, 2u);
      v5 = v73;
    }

    (*(v5 + 8))(v12, v4);

    v16 = v24;
    v13 = v23;
    v10 = v66;
  }

  v29 = [objc_opt_self() processInfo];
  v30 = [v29 v16[351]];

  if (v30)
  {
    v31 = Logger.motion.unsafeMutableAddressor();
    (*(v5 + 16))(v10, v31, v4);
    v32 = sub_AB4BA0();
    v33 = sub_AB9F50();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_0, v32, v33, "Disabling Motion: Low Power Mode is on", v34, 2u);
    }

    (*(v5 + 8))(v10, v4);
  }

  v35 = objc_opt_self();
  v36 = [v35 standardUserDefaults];
  sub_F75B4(v15);

  LOBYTE(v36) = MotionMode.allowsMotion.getter();
  v37 = *(v13 + 8);
  v37(v15, v72);
  if ((v36 & 1) == 0)
  {
    v38 = Logger.motion.unsafeMutableAddressor();
    (*(v73 + 16))(v68, v38, v4);
    v39 = sub_AB4BA0();
    v40 = sub_AB9F50();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v66 = v4;
      v42 = v41;
      *v41 = 134217984;
      v43 = [v35 standardUserDefaults];
      sub_F75B4(v15);

      v44 = sub_AB3860();
      v37(v15, v72);
      *(v42 + 1) = v44;
      _os_log_impl(&dword_0, v39, v40, "Disabling Motion: Motion Mode is %ld", v42, 0xCu);
      v4 = v66;
    }

    (*(v73 + 8))(v68, v4);
  }

  v45 = v71;
  v46 = v73;
  if (v70)
  {
    v47 = Logger.motion.unsafeMutableAddressor();
    v48 = v67;
    (*(v46 + 16))(v67, v47, v4);
    v49 = sub_AB4BA0();
    v50 = sub_AB9F50();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&dword_0, v49, v50, "Disabling Motion: Low Data Mode is on", v51, 2u);
    }

    (*(v46 + 8))(v48, v4);
  }

  if ((v69 - 3) <= 2u)
  {
    v52 = Logger.motion.unsafeMutableAddressor();
    (*(v46 + 16))(v45, v52, v4);
    swift_retain_n();
    v53 = sub_AB4BA0();
    v54 = v4;
    v55 = sub_AB9F50();
    if (!os_log_type_enabled(v53, v55))
    {

      (*(v46 + 8))(v45, v54);

      return;
    }

    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v75 = v57;
    *v56 = 136315138;
    v58 = *(v3 + 152);
    swift_getKeyPath();
    swift_getKeyPath();
    v59 = v58;
    sub_AB5510(&v74);

    v60 = v74;

    if (v60 <= 2)
    {
      if (v60)
      {
        v61 = v71;
        if (v60 == 1)
        {
          v62 = 0xE500000000000000;
          v63 = 0x746867696CLL;
        }

        else
        {
          v62 = 0xE800000000000000;
          v63 = 0x6574617265646F6DLL;
        }
      }

      else
      {
        v62 = 0xE700000000000000;
        v63 = 0x6C616E696D6F6ELL;
        v61 = v71;
      }

      goto LABEL_42;
    }

    if (v60 > 4)
    {
      v61 = v71;
      if (v60 != 5)
      {
        v62 = 0xE700000000000000;
        v63 = 0x6E776F6E6B6E75;
        goto LABEL_42;
      }

      v62 = 0xE800000000000000;
      v64 = 1701145715;
    }

    else
    {
      v61 = v71;
      if (v60 == 3)
      {
        v62 = 0xE500000000000000;
        v63 = 0x7976616568;
LABEL_42:
        v65 = sub_425E68(v63, v62, &v75);

        *(v56 + 4) = v65;
        _os_log_impl(&dword_0, v53, v55, "Disabling Motion: Thermal Level is %s", v56, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v57);

        (*(v46 + 8))(v61, v54);

        return;
      }

      v62 = 0xE800000000000000;
      v64 = 1885434484;
    }

    v63 = v64 | 0x676E697000000000;
    goto LABEL_42;
  }
}

void sub_254E04(int a1, uint64_t a2)
{
  v3 = v2;
  v68 = a2;
  v67 = a1;
  v4 = sub_AB3870();
  v5 = *(v4 - 8);
  v70 = v4;
  v71 = v5;
  __chkstk_darwin();
  v7 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_AB4BC0();
  v72 = *(v8 - 8);
  __chkstk_darwin();
  v69 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v65 = &v63 - v10;
  __chkstk_darwin();
  v66 = &v63 - v11;
  __chkstk_darwin();
  v13 = &v63 - v12;
  __chkstk_darwin();
  v15 = &v63 - v14;
  if (UIAccessibilityIsReduceMotionEnabled() || (v16 = [objc_opt_self() processInfo], v17 = objc_msgSend(v16, "isLowPowerModeEnabled"), v16, (v17 & 1) != 0))
  {
    LOBYTE(v18) = 0;
  }

  else
  {
    v19 = [objc_opt_self() standardUserDefaults];
    sub_F75B4(v7);

    v20 = MotionMode.allowsMotion.getter();
    (*(v71 + 8))(v7, v70);
    v18 = 0x47u >> v68;
    if (v67)
    {
      LOBYTE(v18) = 0;
    }

    if ((v20 & 1) == 0)
    {
      LOBYTE(v18) = 0;
    }
  }

  (*(*v3 + 248))(v18 & 1);
  v21 = v8;
  if (UIAccessibilityIsReduceMotionEnabled())
  {
    v22 = Logger.motion.unsafeMutableAddressor();
    (*(v72 + 16))(v15, v22, v8);
    v23 = sub_AB4BA0();
    v24 = sub_AB9F50();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_0, v23, v24, "Disabling Motion: Reduce Motion is on", v25, 2u);
    }

    (*(v72 + 8))(v15, v8);
  }

  v26 = [objc_opt_self() processInfo];
  v27 = [v26 isLowPowerModeEnabled];

  if (v27)
  {
    v28 = Logger.motion.unsafeMutableAddressor();
    (*(v72 + 16))(v13, v28, v8);
    v29 = sub_AB4BA0();
    v30 = sub_AB9F50();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_0, v29, v30, "Disabling Motion: Low Power Mode is on", v31, 2u);
    }

    (*(v72 + 8))(v13, v8);
  }

  v32 = objc_opt_self();
  v33 = [v32 standardUserDefaults];
  sub_F75B4(v7);

  LOBYTE(v33) = MotionMode.allowsMotion.getter();
  v34 = v71 + 8;
  v35 = *(v71 + 8);
  v35(v7, v70);
  if ((v33 & 1) == 0)
  {
    v71 = v34;
    v36 = Logger.motion.unsafeMutableAddressor();
    (*(v72 + 16))(v66, v36, v8);
    v37 = sub_AB4BA0();
    v38 = sub_AB9F50();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v64 = v3;
      v40 = v39;
      *v39 = 134217984;
      v41 = [v32 standardUserDefaults];
      sub_F75B4(v7);

      v42 = sub_AB3860();
      v35(v7, v70);
      *(v40 + 1) = v42;
      _os_log_impl(&dword_0, v37, v38, "Disabling Motion: Motion Mode is %ld", v40, 0xCu);
      v3 = v64;
    }

    (*(v72 + 8))(v66, v8);
  }

  v43 = v69;
  v44 = v72;
  if (v67)
  {
    v45 = Logger.motion.unsafeMutableAddressor();
    v46 = v65;
    (*(v44 + 16))(v65, v45, v21);
    v47 = sub_AB4BA0();
    v48 = sub_AB9F50();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&dword_0, v47, v48, "Disabling Motion: Low Data Mode is on", v49, 2u);
    }

    (*(v44 + 8))(v46, v21);
  }

  if ((v68 - 3) <= 2u)
  {
    v50 = Logger.motion.unsafeMutableAddressor();
    (*(v44 + 16))(v43, v50, v21);
    swift_retain_n();
    v51 = sub_AB4BA0();
    v52 = sub_AB9F50();
    if (!os_log_type_enabled(v51, v52))
    {

      (*(v44 + 8))(v43, v21);

      return;
    }

    v53 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    v74 = v71;
    *v53 = 136315138;
    v54 = v3[19];
    swift_getKeyPath();
    swift_getKeyPath();
    v55 = v54;
    sub_AB5510(&v73);

    v56 = v73;

    if (v56 <= 2)
    {
      if (v56)
      {
        v57 = v69;
        v58 = v71;
        if (v56 == 1)
        {
          v59 = 0xE500000000000000;
          v60 = 0x746867696CLL;
        }

        else
        {
          v59 = 0xE800000000000000;
          v60 = 0x6574617265646F6DLL;
        }
      }

      else
      {
        v59 = 0xE700000000000000;
        v60 = 0x6C616E696D6F6ELL;
        v57 = v69;
        v58 = v71;
      }

      goto LABEL_41;
    }

    if (v56 > 4)
    {
      v57 = v69;
      v58 = v71;
      if (v56 != 5)
      {
        v59 = 0xE700000000000000;
        v60 = 0x6E776F6E6B6E75;
        goto LABEL_41;
      }

      v59 = 0xE800000000000000;
      v61 = 1701145715;
    }

    else
    {
      v57 = v69;
      v58 = v71;
      if (v56 == 3)
      {
        v59 = 0xE500000000000000;
        v60 = 0x7976616568;
LABEL_41:
        v62 = sub_425E68(v60, v59, &v74);

        *(v53 + 4) = v62;
        _os_log_impl(&dword_0, v51, v52, "Disabling Motion: Thermal Level is %s", v53, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v58);

        (*(v44 + 8))(v57, v21);

        return;
      }

      v59 = 0xE800000000000000;
      v61 = 1885434484;
    }

    v60 = v61 | 0x676E697000000000;
    goto LABEL_41;
  }
}

void *sub_255740(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[21] = a1;
  a6[22] = &off_CFF908;
  a6[23] = a2;
  a6[24] = a3;
  a6[25] = a4;
  a6[26] = a5;
  v35 = a3;

  v10 = a1;
  v34 = a2;
  v11 = sub_251E7C(a1);
  v12 = swift_allocObject();
  swift_weakInit();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = a4;
  v13[4] = a5;
  v14 = v11[2];
  v15 = v11[3];
  v11[2] = sub_2596F0;
  v11[3] = v13;
  swift_retain_n();

  sub_17654(v14, v15);

  v16 = swift_allocObject();
  swift_weakInit();
  swift_beginAccess();
  v17 = v11[21];
  v18 = v11[22];
  ObjectType = swift_getObjectType();
  v20 = *(v18 + 32);

  v20(sub_2596E4, v16, ObjectType, v18);
  v11[21] = v17;
  v11[22] = v18;
  swift_endAccess();

  v21 = swift_allocObject();
  swift_weakInit();
  v22 = swift_allocObject();
  v22[2] = v21;
  v22[3] = a4;
  v22[4] = a5;
  swift_beginAccess();
  v23 = v11[21];
  v24 = v11[22];
  v25 = swift_getObjectType();
  v26 = *(v24 + 56);

  v26(sub_2596B0, v22, v25, v24);
  v11[21] = v23;
  v11[22] = v24;
  swift_endAccess();

  v27 = swift_allocObject();
  swift_weakInit();

  v28 = swift_allocObject();
  v28[2] = v27;
  v28[3] = a4;
  v28[4] = a5;
  swift_beginAccess();
  v29 = v11[21];
  v30 = v11[22];
  v31 = swift_getObjectType();
  v32 = *(v30 + 80);

  v32(sub_2596B4, v28, v31, v30);
  v11[21] = v29;
  v11[22] = v30;
  swift_endAccess();

  return v11;
}

void *sub_255AA8(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[21] = a1;
  a6[22] = &off_D19610;
  a6[23] = a2;
  a6[24] = a3;
  a6[25] = a4;
  a6[26] = a5;
  v35 = a3;

  v10 = a1;
  v34 = a2;
  v11 = sub_251E7C(a1);
  v12 = swift_allocObject();
  swift_weakInit();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = a4;
  v13[4] = a5;
  v14 = v11[2];
  v15 = v11[3];
  v11[2] = sub_25710C;
  v11[3] = v13;
  swift_retain_n();

  sub_17654(v14, v15);

  v16 = swift_allocObject();
  swift_weakInit();
  swift_beginAccess();
  v17 = v11[21];
  v18 = v11[22];
  ObjectType = swift_getObjectType();
  v20 = *(v18 + 32);

  v20(sub_257118, v16, ObjectType, v18);
  v11[21] = v17;
  v11[22] = v18;
  swift_endAccess();

  v21 = swift_allocObject();
  swift_weakInit();
  v22 = swift_allocObject();
  v22[2] = v21;
  v22[3] = a4;
  v22[4] = a5;
  swift_beginAccess();
  v23 = v11[21];
  v24 = v11[22];
  v25 = swift_getObjectType();
  v26 = *(v24 + 56);

  v26(sub_257120, v22, v25, v24);
  v11[21] = v23;
  v11[22] = v24;
  swift_endAccess();

  v27 = swift_allocObject();
  swift_weakInit();

  v28 = swift_allocObject();
  v28[2] = v27;
  v28[3] = a4;
  v28[4] = a5;
  swift_beginAccess();
  v29 = v11[21];
  v30 = v11[22];
  v31 = swift_getObjectType();
  v32 = *(v30 + 80);

  v32(sub_25712C, v28, v31, v30);
  v11[21] = v29;
  v11[22] = v30;
  swift_endAccess();

  return v11;
}

double sub_255E10@<D0>(_OWORD *a1@<X8>)
{
  sub_2448F8(-1, v7);
  v2 = v7[7];
  a1[6] = v7[6];
  a1[7] = v2;
  a1[8] = v8[0];
  *(a1 + 137) = *(v8 + 9);
  v3 = v7[3];
  a1[2] = v7[2];
  a1[3] = v3;
  v4 = v7[5];
  a1[4] = v7[4];
  a1[5] = v4;
  result = *v7;
  v6 = v7[1];
  *a1 = v7[0];
  a1[1] = v6;
  return result;
}

void sub_255EA4(void *a1, uint64_t a2)
{
  type metadata accessor for Metrics.Event.Action(0);
  __chkstk_darwin();
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Metrics.Event(0);
  __chkstk_darwin();
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v24 - v10;
  v12 = *(a2 + 32);
  if ((v12 & 0xFE) != 0x7A)
  {
    v13 = v12 >> 1;
    if (v13 > 125)
    {
      if (v13 == 127)
      {
        v14 = v9;
        goto LABEL_11;
      }

      if (v13 == 126)
      {
        v14 = v9;
        goto LABEL_11;
      }

LABEL_10:
      v14 = v9;
LABEL_11:
      swift_storeEnumTagMultiPayload();
      v15 = v14[6];
      v16 = v14[7];
      v17 = v14[8];
      sub_2591E8(v6, v8, type metadata accessor for Metrics.Event.Action);
      v8[v14[5]] = 3;
      *&v8[v15] = a1;
      *&v8[v16] = 0;
      *&v8[v17] = 0;
      sub_2591E8(v8, v11, type metadata accessor for Metrics.Event);
      v18 = (v2 + *&stru_388.segname[(swift_isaMask & *v2) + 8]);
      if (*v18)
      {
        v19 = v18[1];
        ObjectType = swift_getObjectType();
        v21 = *(v19 + 32);
        swift_unknownObjectRetain();
        v22 = a1;
        v21(v11, ObjectType, v19);
        sub_259250(v11, type metadata accessor for Metrics.Event);
        swift_unknownObjectRelease();
      }

      else
      {
        v23 = a1;
        sub_259250(v11, type metadata accessor for Metrics.Event);
      }

      return;
    }

    if ((v13 - 62) >= 2 && v13 != 125)
    {
      goto LABEL_10;
    }
  }
}

void sub_256154()
{
  v1 = *(v0 + *(&stru_248.reserved2 + (swift_isaMask & *v0)));
  *(v1 + OBJC_IVAR____TtC16MusicApplication12DetailHeader_layout) = sub_24E630();
  sub_2A0600();
}

void sub_2561B4(objc_class *a1)
{
  v3 = swift_isaMask & *v1;
  v4 = sub_24FE70();
  v5 = (*(&stru_1A8.reserved2 + (swift_isaMask & *a1)))(v4);
  if (v5)
  {
    v6 = v5;
    v13 = *(v1 + *(&stru_338.size + (swift_isaMask & *v1)));
    v12 = 3;
    v7 = *(v3 + 560);
    v11[0] = *(v3 + 544);
    v11[1] = v7;
    type metadata accessor for ContainerDetailViewController.Layout(0, v11);
    swift_getWitnessTable();
    if (sub_ABB400())
    {
      v8 = sub_24EBB0(a1);
      v9 = *(&stru_338.size + (swift_isaMask & *v1));
      v10 = *(v1 + v9);
      *(v1 + v9) = v8;
      sub_24E4FC(v10);
    }

    sub_24E818(1);
    sub_24C2A8(v6);
  }
}

uint64_t *sub_25633C()
{
  v1 = swift_isaMask & *v0;
  v2 = sub_AB3430();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2447E8();
  v20 = 0;
  memset(v19, 0, sizeof(v19));
  v6 = *(v1 + 560);
  v18[0] = *(v1 + 544);
  v18[1] = v6;
  v7 = type metadata accessor for ContainerDetailViewController(255, v18);
  v9 = type metadata accessor for VerticalStackViewControllerImpressionTracker(0, v7, &off_DFA950, v8);
  WitnessTable = swift_getWitnessTable();
  sub_AB3420();
  v12 = sub_21CD14(2, v5, v19, v9, WitnessTable, v11);
  (*(v3 + 8))(v5, v2);
  sub_12E1C(v19, &qword_DF2BD0, &unk_AFDC00);

  sub_127EB8();

  sub_12AFE8();
  v14 = v13;
  if (v12)
  {
    v15 = objc_allocWithZone(type metadata accessor for JSImpressionsBatch());
    return JSImpressionsBatch.init(impressions:location:pageDetailsProvider:)(v16, v12, 0, v14);
  }

  else
  {

    return 0;
  }
}

uint64_t sub_256558()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t objectdestroy_24Tm()
{

  return swift_deallocObject();
}

double block_copy_helper_82(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_256664(void *a1)
{
  v2 = *&stru_298.sectname[swift_isaMask & *v1];
  v3 = *(v1 + v2);
  *(v1 + v2) = a1;
  v4 = a1;

  return sub_23E8DC();
}

void sub_2566C4(void *a1)
{
  type metadata accessor for JSContainerDetailModelRequest();
  if (swift_dynamicCastClass())
  {
    v2 = a1;
    sub_256664(a1);
  }
}

void sub_256798(unint64_t a1)
{
  if (qword_DE6940 != -1)
  {
    swift_once();
  }

  v2 = sub_AB4BC0();
  __swift_project_value_buffer(v2, qword_E71120);

  oslog = sub_AB4BA0();
  v3 = sub_AB9F50();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 134349056;
    if (a1)
    {
      if (a1 >> 62)
      {
        v5 = sub_ABB060();
      }

      else
      {
        v5 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
      }
    }

    else
    {
      v5 = 0;
    }

    *(v4 + 4) = v5;

    _os_log_impl(&dword_0, oslog, v3, "did update record label detail links with result count: %{public}ld", v4, 0xCu);
  }

  else
  {
  }
}

uint64_t sub_256908()
{
  v1 = *(&stru_2E8.offset + (swift_isaMask & *v0));
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_256968()
{
  v1 = type metadata accessor for PlaybackIntentDescriptor(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = (v0 + v2);
  type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_AB4C10();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  else
  {
  }

  v5 = (v3 + *(v1 + 28));
  if (v5[3])
  {
    __swift_destroy_boxed_opaque_existential_0(v5);
  }

  v6 = (v3 + *(v1 + 32));
  if (v6[3])
  {
    __swift_destroy_boxed_opaque_existential_0(v6);
  }

  return swift_deallocObject();
}

uint64_t sub_256AFC()
{

  v1 = *(v0 + 32);
  if (v1)
  {
  }

  return swift_deallocObject();
}

double sub_256B50(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1)
  {

    v7 = a1;
  }

  return result;
}

double sub_256B9C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1)
  {
  }

  return result;
}

uint64_t sub_256BE8()
{

  return swift_deallocObject();
}

uint64_t sub_256C3C()
{

  return swift_deallocObject();
}

uint64_t sub_256CA4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_256CEC()
{
  v0 = sub_24E69C();
  [v0 setAlpha:0.0];
}

uint64_t sub_256D48()
{

  return swift_deallocObject();
}

uint64_t sub_256DA4()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_256DF8(void *a1)
{
  v2 = a1[1];
  v4[0] = *a1;
  v4[1] = v2;
  return (*(*v1 + 200))(v4);
}

uint64_t sub_256E44(void *a1)
{
  v2 = a1[1];
  v4[0] = *a1;
  v4[1] = v2;
  return (*(*v1 + 192))(v4);
}

uint64_t sub_256EE0(void *a1)
{
  v2 = a1[1];
  v4[0] = *a1;
  v4[1] = v2;
  return (*(*v1 + 224))(v4);
}

uint64_t sub_256F2C(void *a1)
{
  v2 = a1[1];
  v4[0] = *a1;
  v4[1] = v2;
  return (*(*v1 + 208))(v4);
}

uint64_t sub_256F78()
{

  return swift_deallocObject();
}

uint64_t sub_256FDC()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_101Tm(void (*a1)(void, __n128), uint64_t a2)
{

  (a1)(*(v2 + 56));

  return swift_deallocObject();
}

uint64_t sub_2570BC()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

unint64_t sub_257138()
{
  result = qword_DFC5F0;
  if (!qword_DFC5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DFC5F0);
  }

  return result;
}

uint64_t sub_2571BC()
{

  return swift_deallocObject();
}

uint64_t sub_257224()
{

  return swift_deallocObject();
}

uint64_t sub_2572B4()
{

  return swift_deallocObject();
}

void sub_2572FC()
{
  v1 = v0;
  v2 = *v0;
  v3 = swift_isaMask;
  *(v0 + *&stru_248.sectname[swift_isaMask & *v0]) = 0;
  *(v0 + *&stru_248.segname[(swift_isaMask & *v0) - 8]) = 0;
  v4 = *&stru_248.segname[swift_isaMask & *v0];
  *(v1 + v4) = sub_23DD70();
  *(v1 + *&stru_248.segname[(swift_isaMask & *v1) + 8]) = 0;
  *(v1 + *&stru_248.segname[(swift_isaMask & *v1) + 16]) = 0;
  *(v1 + *(&stru_248.size + (swift_isaMask & *v1))) = 0;
  *(v1 + *(&stru_248.offset + (swift_isaMask & *v1))) = 0;
  v5 = *(&stru_248.flags + (swift_isaMask & *v1));
  v6 = objc_allocWithZone(type metadata accessor for JSVerticalStackViewController(0));
  *(v1 + v5) = sub_9F704(_swiftEmptyArrayStorage);
  v7 = *(&stru_248.reserved2 + (swift_isaMask & *v1));
  *(v1 + v7) = [objc_allocWithZone(type metadata accessor for DetailHeader()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *(v1 + *&stru_298.sectname[swift_isaMask & *v1]) = 0;
  v8 = v1 + *&stru_298.segname[(swift_isaMask & *v1) - 8];
  *(v8 + 1) = 0;
  *(v8 + 2) = 0;
  *v8 = 0;
  v8[24] = 1;
  (*(*(*(&stru_1F8.offset + (v3 & v2)) - 8) + 56))(v1 + *&stru_298.segname[(swift_isaMask & *v1) + 8], 1, 1);
  *(v1 + *&stru_298.segname[(swift_isaMask & *v1) + 16]) = 0;
  *(v1 + *(&stru_298.size + (swift_isaMask & *v1))) = 0;
  v9 = *(&stru_298.offset + (swift_isaMask & *v1));
  type metadata accessor for ModelRequestFilteringController();
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = [objc_allocWithZone(NSOperationQueue) init];
  v10[5] = _swiftEmptyDictionarySingleton;
  v10[7] = 0;
  v10[8] = 0;
  v10[6] = 2;
  *(v1 + v9) = v10;
  *(v1 + *(&stru_298.reloff + (swift_isaMask & *v1))) = 0;
  v11 = *(&stru_298.flags + (swift_isaMask & *v1));
  v12 = type metadata accessor for MetricsEvent.Page(0);
  (*(*(v12 - 8) + 56))(v1 + v11, 1, 1, v12);
  *(v1 + *(&stru_298.reserved2 + (swift_isaMask & *v1))) = 0;
  *(v1 + *&stru_2E8.sectname[swift_isaMask & *v1]) = 0;
  *(v1 + *&stru_2E8.segname[(swift_isaMask & *v1) - 8]) = 0;
  *(v1 + *&stru_2E8.segname[swift_isaMask & *v1]) = 0;
  *(v1 + *&stru_2E8.segname[(swift_isaMask & *v1) + 8]) = _swiftEmptyArrayStorage;
  *(v1 + *&stru_2E8.segname[(swift_isaMask & *v1) + 16]) = 0;
  *(v1 + *(&stru_2E8.size + (swift_isaMask & *v1))) = 0;
  *(v1 + *(&stru_2E8.offset + (swift_isaMask & *v1))) = 0;
  *(v1 + *(&stru_2E8.reloff + (swift_isaMask & *v1))) = 0;
  *(v1 + *(&stru_2E8.flags + (swift_isaMask & *v1))) = 0;
  *(v1 + *(&stru_2E8.reserved2 + (swift_isaMask & *v1))) = 0;
  v13 = *&stru_338.sectname[swift_isaMask & *v1];
  type metadata accessor for TextDrawing.Cache();
  swift_allocObject();
  *(v1 + v13) = TextDrawing.Cache.init()();
  *(v1 + *&stru_338.segname[(swift_isaMask & *v1) - 8]) = 0;
  v14 = (v1 + *&stru_338.segname[swift_isaMask & *v1]);
  *v14 = 0;
  v14[1] = 0;
  *(v1 + *&stru_338.segname[(swift_isaMask & *v1) + 8]) = 0;
  v15 = *&stru_338.segname[(swift_isaMask & *v1) + 16];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE6ED0, &unk_B05CE0);
  swift_allocObject();
  *(v1 + v15) = ArtworkVideoReportingController.init()();
  *(v1 + *(&stru_338.size + (swift_isaMask & *v1))) = 3;
  *(v1 + *(&stru_338.offset + (swift_isaMask & *v1))) = 0;
  *(v1 + *(&stru_338.reloff + (swift_isaMask & *v1))) = 0;
  v16 = v1 + *(&stru_338.flags + (swift_isaMask & *v1));
  *v16 = 0;
  v16[8] = 1;
  v17 = (v1 + *(&stru_338.reserved2 + (swift_isaMask & *v1)));
  *v17 = 0;
  v17[1] = 0;
  *(v1 + *&stru_388.sectname[swift_isaMask & *v1]) = 0;
  *(v1 + *&stru_388.segname[(swift_isaMask & *v1) - 8]) = 1;
  *(v1 + *&stru_388.segname[swift_isaMask & *v1]) = 0;
  v18 = (v1 + *&stru_388.segname[(swift_isaMask & *v1) + 8]);
  *v18 = 0;
  v18[1] = 0;
  *(v1 + *&stru_388.segname[(swift_isaMask & *v1) + 16]) = 0;
  sub_ABAFD0();
  __break(1u);
}

void sub_257A58(void *a1)
{
  v2 = *(&stru_298.size + (swift_isaMask & *v1));
  v5 = *(v1 + v2);
  *(v1 + v2) = a1;
  v3 = a1;
  sub_23EFE4(v5, v4);
}

uint64_t sub_257AC4()
{

  return swift_deallocObject();
}

void sub_257AFC(void *a1)
{
  v2 = a1;
  sub_257A58(a1);
}

uint64_t sub_257B4C()
{

  return swift_deallocObject();
}

uint64_t sub_257BAC()
{

  if (*(v0 + 56))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_257C28()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_257C70()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1(*(v0 + 32));
  }

  return result;
}

uint64_t sub_257CF4()
{
  swift_unknownObjectRelease();
  swift_unknownObjectWeakDestroy();
  v1 = *(v0 + 80);
  if (v1 != 255)
  {
    sub_17774(*(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), v1);
  }

  if (*(v0 + 96))
  {
  }

  if (*(v0 + 112))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_257D70()
{
  swift_unknownObjectRelease();

  swift_unknownObjectWeakDestroy();
  v1 = *(v0 + 160);
  if (v1 != 255)
  {
    sub_17774(*(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144), *(v0 + 152), v1);
  }

  if (*(v0 + 176))
  {
  }

  if (*(v0 + 192))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_257E04()
{
  v1 = type metadata accessor for PlaybackIntentDescriptor(0);
  v2 = (*(*(v1 - 8) + 80) + 48) & ~*(*(v1 - 8) + 80);
  v3 = (((*(*(v1 - 8) + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v0 + v2);
  type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_AB4C10();
    (*(*(v6 - 8) + 8))(v5, v6);
  }

  else
  {
  }

  v7 = (v5 + *(v1 + 28));
  if (v7[3])
  {
    __swift_destroy_boxed_opaque_existential_0(v7);
  }

  v8 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v5 + *(v1 + 32));
  if (v9[3])
  {
    __swift_destroy_boxed_opaque_existential_0(v9);
  }

  v10 = v0 + v8;
  swift_unknownObjectWeakDestroy();
  v11 = *(v0 + v8 + 48);
  if (v11 != 255)
  {
    sub_17774(*(v10 + 8), *(v10 + 16), *(v10 + 24), *(v10 + 32), *(v10 + 40), v11);
  }

  if (*(v10 + 64))
  {
  }

  if (*(v10 + 80))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_257FB8(uint64_t a1)
{
  v3 = *(type metadata accessor for PlaybackIntentDescriptor(0) - 8);
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + v5);
  v9 = *(v1 + v6);
  v10 = *(v1 + v7);

  return sub_245C78(a1, v1 + v4, v8, v9, v10, v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
}

void sub_258078(void *a1, id a2, char a3)
{
  if (a3 != -1)
  {
    sub_23732C(a1, a2, a3);
  }
}

uint64_t sub_2580A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SymbolButton.Configuration(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_258108(uint64_t a1, uint64_t a2)
{
  v3 = swift_isaMask & *v2;
  v4 = sub_AB9260();
  v5 = *(v3 + 560);
  v7[0] = *(v3 + 544);
  v7[1] = v5;
  v6 = type metadata accessor for ContainerDetailViewController(0, v7);
  v8.receiver = v2;
  v8.super_class = v6;
  objc_msgSendSuper2(&v8, "setPlayActivityFeatureName:", v4);
}

void sub_2581D4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = swift_isaMask;
  v53 = swift_isaMask & v3;
  v5 = *(&stru_1F8.offset + (swift_isaMask & v3));
  v61 = *(v5 - 8);
  __chkstk_darwin();
  v52 = &v51 - v6;
  v7 = sub_ABA9C0();
  v58 = *(v7 - 8);
  v59 = v7;
  __chkstk_darwin();
  v9 = &v51 - v8;
  v56 = type metadata accessor for Metrics.Event.Action(0);
  __chkstk_darwin();
  v62 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for Metrics.Event(0);
  __chkstk_darwin();
  v12 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v2 + *(&stru_248.reserved2 + (v4 & v3)));
  v14 = OBJC_IVAR____TtC16MusicApplication12DetailHeader_detailsView;
  v15 = *(*(v13 + OBJC_IVAR____TtC16MusicApplication12DetailHeader_detailsView) + OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_descriptionLabel) + OBJC_IVAR____TtC16MusicApplication13TextViewLabel__text;
  v16 = *v15;
  v17 = *(v15 + 8);
  v18 = *(v15 + 16);
  v19 = &selRef_performWithResponseHandler_;
  v57 = v9;
  if (v18 <= 1)
  {
    if (v18)
    {
      v20 = [v16 string];
      v21 = sub_AB92A0();
      v23 = v22;

      sub_2372F0(v16, v17, 1);
      v16 = v21;
      v19 = &selRef_performWithResponseHandler_;
      v17 = v23;
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  if (v18 == 2)
  {
LABEL_5:
    sub_23732C(v16, v17, v18);
    goto LABEL_7;
  }

  v16 = 0;
  v17 = 0xE000000000000000;
LABEL_7:
  v24 = type metadata accessor for DescriptionTextViewController();
  v25 = objc_allocWithZone(v24);
  *&v25[OBJC_IVAR____TtC16MusicApplication29DescriptionTextViewController____lazy_storage___descriptionTextView] = 0;
  v26 = &v25[OBJC_IVAR____TtC16MusicApplication29DescriptionTextViewController_descriptionText];
  *v26 = v16;
  *(v26 + 1) = v17;
  v63.receiver = v25;
  v63.super_class = v24;
  v27 = objc_msgSendSuper2(&v63, "initWithNibName:bundle:", 0, 0);
  v28 = *(*(v13 + v14) + OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_titleField);
  v29 = *&v28[OBJC_IVAR____TtC16MusicApplication13TextViewLabel_textView];
  v30 = v27;
  v31 = v28;
  v32 = [v29 textStorage];
  v33 = [v32 v19[396]];
  sub_AB92A0();

  v34 = sub_AB9260();

  [v30 setTitle:v34];

  v35 = [v30 navigationItem];
  [v35 setLargeTitleDisplayMode:2];

  v36 = [objc_allocWithZone(type metadata accessor for NavigationController()) initWithRootViewController:v30];
  [v36 setModalPresentationStyle:2];
  v37 = (v2 + *&stru_388.segname[(swift_isaMask & *v2) + 8]);
  if (*v37)
  {
    v54 = v37[1];
    v55 = v30;
    swift_storeEnumTagMultiPayload();
    v38 = *(&stru_478.reserved2 + (swift_isaMask & *v2));
    v39 = swift_unknownObjectRetain();
    v40 = v57;
    v38(v39);
    v41 = v61;
    v42 = v12;
    if ((*(v61 + 48))(v40, 1, v5))
    {
      (*(v58 + 8))(v40, v59);
      v43 = 0;
    }

    else
    {
      v44 = v40;
      v45 = v52;
      (*(v41 + 16))(v52, v44, v5);
      (*(v58 + 8))(v44, v59);
      v43 = (*(*(v53 + 568) + 24))(v5);
      (*(v41 + 8))(v45, v5);
    }

    ObjectType = swift_getObjectType();
    v47 = v60;
    v49 = v60[6];
    v48 = v60[7];
    v50 = v60[8];
    sub_2591E8(v62, v42, type metadata accessor for Metrics.Event.Action);
    *(v42 + v47[5]) = 0;
    *(v42 + v49) = v43;
    *(v42 + v48) = 0;
    *(v42 + v50) = 0;
    (*(v54 + 32))(v42, ObjectType);
    sub_259250(v42, type metadata accessor for Metrics.Event);
    swift_unknownObjectRelease();
    v30 = v55;
  }

  [v2 presentViewController:v36 animated:1 completion:0];
}

void sub_258824()
{
  if (qword_DE6940 != -1)
  {
    swift_once();
  }

  v0 = sub_AB4BC0();
  __swift_project_value_buffer(v0, qword_E71120);
  oslog = sub_AB4BA0();
  v1 = sub_AB9F40();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_425E68(0xD000000000000019, 0x8000000000B59E40, &v5);
    _os_log_impl(&dword_0, oslog, v1, "Unexpected call to %s in legacy Music code. Picking a playlist shouldn't be allowed in the media picker.", v2, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v3);
  }
}

id sub_25896C(__n128 a1)
{
  v2 = v1;
  v3 = sub_4D3DD0();
  [v3 contentOffset];
  v5 = v4;
  v7 = v6;

  result = [v2 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_25;
  }

  v9 = result;
  [result bounds];
  v11 = v10;
  v13 = v12;

  v14 = (v2 + OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController_lastKnownVisibleBounds);
  v15 = *(v2 + OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController_lastKnownVisibleBounds);
  v16 = *(v2 + OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController_lastKnownVisibleBounds + 8);
  v17 = *(v2 + OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController_lastKnownVisibleBounds + 16);
  v18 = *(v2 + OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController_lastKnownVisibleBounds + 24);
  *v14 = v5;
  v14[1] = v7;
  v14[2] = v11;
  v14[3] = v13;
  sub_4DB494(v15, v16, v17, v18);
  sub_4D7AA8();
  v19 = swift_isaMask & *v2;
  v20 = *(v2 + *(&stru_298.reserved2 + v19));
  if (v20)
  {
    v21 = *(v2 + OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController____lazy_storage___scrollView);
    v22 = v20;
    v23 = v21;
    v24 = UIScrollView.normalizedContentOffset.getter();
    v26 = v25;

    v27 = &v22[OBJC_IVAR____TtC16MusicApplication12ParallaxView_normalizedContentOffset];
    v28 = *&v22[OBJC_IVAR____TtC16MusicApplication12ParallaxView_normalizedContentOffset];
    v29 = *&v22[OBJC_IVAR____TtC16MusicApplication12ParallaxView_normalizedContentOffset + 8];
    *v27 = v24;
    *(v27 + 1) = v26;
    type metadata accessor for CGPoint(0);
    v44 = v24;
    if (sub_AB38D0())
    {
      [v22 setNeedsLayout];
    }

    v30 = [v2 navigationItem];
    v31 = [v2 parentViewController];
    if (v31)
    {
      v32 = v31;
      while (1)
      {
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          break;
        }

        v33 = v32;
        v34 = [v33 navigationItem];

        v32 = [v33 parentViewController];
        v30 = v34;
        if (!v32)
        {
          goto LABEL_12;
        }
      }
    }

    v34 = v30;
LABEL_12:
    v35 = [v34 searchController];

    if (!v35)
    {
      goto LABEL_20;
    }

    v36 = [v35 searchBar];

    if (!v36)
    {
      goto LABEL_20;
    }

    [v36 frame];
    Height = CGRectGetHeight(v46);
    *&v22[OBJC_IVAR____TtC16MusicApplication12ParallaxView_topPadding] = Height;
    v45 = Height;
    if (sub_AB38D0())
    {
      [v22 setNeedsLayout];
    }

    result = [v2 view];
    if (result)
    {
      v38 = result;
      [result safeAreaInsets];
      v40 = v39;

      *&v22[OBJC_IVAR____TtC16MusicApplication12ParallaxView_topSafeAreaInset] = v40;
      if (sub_AB38D0())
      {
        [v22 setNeedsLayout];
      }

LABEL_20:
      sub_243E70();
      sub_243F48();

      v19 = swift_isaMask & *v2;
      goto LABEL_21;
    }

LABEL_25:
    __break(1u);
    return result;
  }

LABEL_21:
  v41 = *(v2 + *(v19 + 848));
  if (v41)
  {
    v42 = *(*v41 + 264);

    v42(v43);
  }

  return sub_249B20();
}

void sub_258D5C(void *a1, uint64_t a2, __n128 a3)
{
  if (*(v3 + *(&stru_298.reserved2 + (swift_isaMask & *v3))))
  {
    a3.n128_u64[0] = *a2;
    sub_249CDC(a3, *(a2 + 8));
    *a2 = v5;
    *(a2 + 8) = v6;
    return;
  }

  [a1 contentOffset];
  v9 = v8;
  [a1 adjustedContentInset];
  if (v9 != -v10)
  {
    v11 = *(a2 + 8);
    v12 = [v3 view];
    if (v12)
    {
      v13 = v12;
      [v12 safeAreaInsets];
      v15 = v14;

      if (v11 >= -v15)
      {
        return;
      }

      v16 = [v3 view];
      if (v16)
      {
        v17 = v16;
        [v16 safeAreaInsets];
        v19 = v18;

        *(a2 + 8) = -v19;
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

void sub_258E80()
{
  v1 = sub_AB7C10();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_AB7C50();
  v5 = *(v13 - 8);
  __chkstk_darwin();
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
  v12 = sub_ABA150();
  v8 = swift_allocObject();
  *(v8 + 16) = v0;
  aBlock[4] = sub_259170;
  aBlock[5] = v8;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B5EB4;
  aBlock[3] = &block_descriptor_196_0;
  v9 = _Block_copy(aBlock);
  v10 = v0;

  sub_AB7C30();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_256CA4(&qword_DF06C0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9C30, &qword_AF8920);
  sub_36A00(&qword_DF06D0, &unk_DE9C30, &qword_AF8920, &protocol conformance descriptor for [A]);
  sub_ABABB0();
  v11 = v12;
  sub_ABA160();
  (*(v2 + 8))(v4, v1);
  (*(v5 + 8))(v7, v13);
  _Block_release(v9);
}

uint64_t sub_2591E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_259250(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_2592BC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 searchController];
  *a2 = result;
  return result;
}

unint64_t sub_259320@<X0>(_BYTE *a1@<X8>)
{
  result = sub_387998();
  *a1 = result;
  return result;
}

id sub_259390@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 preferredNavigationBarTintColor];
  *a2 = result;
  return result;
}

id sub_2593EC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 titleView];
  *a2 = result;
  return result;
}

uint64_t sub_25943C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_3875B8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void sub_259468(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  sub_387430(v1, v2);
}

uint64_t sub_2594A8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_387A78();
  *a1 = result;
  return result;
}

uint64_t sub_2594D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_30Tm(void (*a1)(void, __n128))
{

  (a1)(*(v1 + 32));

  return swift_deallocObject();
}

uint64_t sub_2596F4(uint64_t a1, unsigned __int8 a2)
{
  sub_AB35C0();
  __chkstk_darwin();
  sub_AB9250();
  __chkstk_darwin();
  sub_AB91E0();
  sub_AB3550();
  return sub_AB9320();
}

BOOL sub_2598B0(_OWORD *a1, __int128 *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = *a2;
  v4 = a2[1];
  v7[2] = a1[2];
  v8[0] = v3;
  v5 = a2[2];
  v8[1] = v4;
  v8[2] = v5;
  return sub_25C7FC(v7, v8);
}

BOOL sub_2598F8(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  if (v3 < 0)
  {
    return v5 < 0 && *&v2 == *&v4;
  }

  if ((v5 & 0x80000000) == 0)
  {
    if (v3)
    {
      if (v5)
      {
        return 1;
      }
    }

    else if ((v5 & 1) == 0 && v2 == v4)
    {
      return 1;
    }
  }

  return 0;
}

BOOL sub_259950(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a1 + 8) >> 1;
  if (v6 <= 0x7C)
  {
    if (v6 == 62)
    {
      return (v5 & 0xFFFFFFFE) == 0x7C;
    }

    if (v6 == 63)
    {
      return (v5 & 0xFFFFFFFE) == 0x7E;
    }
  }

  else
  {
    switch(v6)
    {
      case '}':
        return (v5 & 0xFFFFFFFE) == 0xFFFFFFFA;
      case '~':
        return (v5 & 0xFFFFFFFE) == 0xFFFFFFFC;
      case '\x7F':
        return v5 > 0xFFFFFFFD;
    }
  }

  v8 = v5 >> 1;
  if ((v8 - 125) < 3 || (v8 - 62) < 2)
  {
    return 0;
  }

  if (v3 < 0)
  {
    if ((v5 & 0x80000000) != 0 && *&v2 == *&v4)
    {
      return 1;
    }
  }

  else if ((v5 & 0x80000000) == 0)
  {
    if (v3)
    {
      if (v5)
      {
        return 1;
      }
    }

    else if ((v5 & 1) == 0 && v2 == v4)
    {
      return 1;
    }
  }

  return 0;
}

void sub_259A48(uint64_t a1)
{
  v2 = [objc_opt_self() sharedCloudController];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 canShowCloudDownloadButtons];

    if (qword_DE6838 != -1)
    {
      swift_once();
    }

    sub_25AE40(v4, v9);
    v5 = v10;
    v6 = v11;
    v7 = *(a1 + 104);
    v12[0] = *(a1 + 88);
    v12[1] = v7;
    v12[2] = *(a1 + 120);
    v8 = v9[1];
    *(a1 + 88) = v9[0];
    *(a1 + 104) = v8;
    *(a1 + 120) = v5;
    *(a1 + 128) = v6;
    sub_25A60C(v12);
  }

  else
  {
    __break(1u);
  }
}

void sub_259B30(uint64_t result)
{
  v2 = *(v1 + 64);
  *(v1 + 64) = result & 1;
  if (v2 != (result & 1) && *(v1 + 80) != 1)
  {
    v3 = [objc_opt_self() sharedCloudController];
    if (v3)
    {
      v4 = v3;
      v5 = [v3 canShowCloudDownloadButtons];

      if (qword_DE6838 != -1)
      {
        swift_once();
      }

      sub_25AE40(v5, v10);
      v6 = v11;
      v7 = v12;
      v8 = *(v1 + 104);
      v13[0] = *(v1 + 88);
      v13[1] = v8;
      v13[2] = *(v1 + 120);
      v9 = v10[1];
      *(v1 + 88) = v10[0];
      *(v1 + 104) = v9;
      *(v1 + 120) = v6;
      *(v1 + 128) = v7;
      sub_25A60C(v13);
    }

    else
    {
      __break(1u);
    }
  }
}

id sub_259C34()
{
  v1 = v0;
  *(v0 + 32) = UIScreen.Dimensions.size.getter;
  *(v0 + 40) = 0;
  *(v0 + 48) = 0;
  *(v0 + 56) = 0;
  *(v0 + 64) = 1;
  *(v0 + 72) = 0;
  *(v0 + 80) = 0;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 128) = 0;
  *(v0 + 136) = 0;
  *(v0 + 120) = 248;
  *(v0 + 16) = [objc_allocWithZone(MPLibraryAddStatusObserver) init];
  *(v0 + 24) = [objc_allocWithZone(MPLibraryKeepLocalStatusObserver) init];
  v2 = MPCloudControllerCanShowCloudDownloadButtonsDidChangeNotification;
  v3 = objc_opt_self();
  v4 = v2;
  v5 = [v3 sharedCloudController];
  v6 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for NotificationObserver();
  swift_allocObject();

  *(v1 + 56) = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v4, v5, 1, 1, sub_25CEB0, v6);

  v7 = *(v1 + 16);
  v8 = swift_allocObject();
  swift_weakInit();
  v23 = sub_25CEB8;
  v24 = v8;
  *&v21 = _NSConcreteStackBlock;
  *(&v21 + 1) = 1107296256;
  *&v22 = sub_25A1F4;
  *(&v22 + 1) = &block_descriptor_83;
  v9 = _Block_copy(&v21);
  v10 = v7;

  [v10 setStatusBlock:v9];
  _Block_release(v9);

  v11 = *(v1 + 24);
  v12 = swift_allocObject();
  swift_weakInit();
  v13 = v11;

  v23 = sub_25CEB8;
  v24 = v12;
  *&v21 = _NSConcreteStackBlock;
  *(&v21 + 1) = 1107296256;
  *&v22 = sub_25A248;
  *(&v22 + 1) = &block_descriptor_45_0;
  v14 = _Block_copy(&v21);

  [v13 setStatusBlock:v14];
  _Block_release(v14);

  result = [v3 sharedCloudController];
  if (result)
  {
    v16 = result;
    v17 = [result canShowCloudDownloadButtons];

    if (qword_DE6838 != -1)
    {
      swift_once();
    }

    sub_25AE40(v17, &v21);
    v18 = v23;
    v19 = v24;
    v20 = v22;
    *(v1 + 88) = v21;
    *(v1 + 104) = v20;
    *(v1 + 120) = v18;
    *(v1 + 128) = v19;
    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_259FC4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [objc_opt_self() sharedCloudController];
    if (v4)
    {
      v5 = v4;
      v6 = [v4 canShowCloudDownloadButtons];

      if (qword_DE6838 != -1)
      {
        swift_once();
      }

      sub_25AE40(v6, v11);
      v7 = v12;
      v8 = v13;
      v9 = *(v3 + 104);
      v14[0] = *(v3 + 88);
      v14[1] = v9;
      v14[2] = *(v3 + 120);
      v10 = v11[1];
      *(v3 + 88) = v11[0];
      *(v3 + 104) = v10;
      *(v3 + 120) = v7;
      *(v3 + 128) = v8;
      sub_25A60C(v14);
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_25A0D8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if ((*(Strong + 80) & 1) == 0)
    {
      v4 = [objc_opt_self() sharedCloudController];
      if (!v4)
      {
        __break(1u);
        return;
      }

      v5 = v4;
      v6 = [v4 canShowCloudDownloadButtons];

      if (qword_DE6838 != -1)
      {
        swift_once();
      }

      sub_25AE40(v6, v11);
      v7 = v12;
      v8 = v13;
      v9 = *(v3 + 104);
      v14[0] = *(v3 + 88);
      v14[1] = v9;
      v14[2] = *(v3 + 120);
      v10 = v11[1];
      *(v3 + 88) = v11[0];
      *(v3 + 104) = v10;
      *(v3 + 120) = v7;
      *(v3 + 128) = v8;
      sub_25A60C(v14);
    }
  }
}

double sub_25A1F4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);

  return result;
}

double sub_25A248(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v5(a2, *&a3);

  return result;
}

void sub_25A2AC(void *a1)
{
  v2 = v1;
  v4 = *(v2 + 72);
  if (!v4)
  {
    if (!a1)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (!a1 || (sub_25CED8(), v5 = v4, v6 = a1, v7 = sub_ABA790(), v5, v6, (v7 & 1) == 0))
  {
LABEL_6:
    v8 = *(v2 + 136);
    *(v2 + 136) = 0;
  }

LABEL_7:
  v9 = *(v2 + 80);
  *(v2 + 80) = 1;
  sub_25A41C(v2);
  *(v2 + 80) = v9;
  if ((v9 & 1) == 0)
  {
    v10 = [objc_opt_self() sharedCloudController];
    if (v10)
    {
      v11 = v10;
      v12 = [v10 canShowCloudDownloadButtons];

      if (qword_DE6838 != -1)
      {
        swift_once();
      }

      sub_25AE40(v12, v17);
      v13 = v18;
      v14 = v19;
      v15 = *(v2 + 104);
      v20[0] = *(v2 + 88);
      v20[1] = v15;
      v20[2] = *(v2 + 120);
      v16 = v17[1];
      *(v2 + 88) = v17[0];
      *(v2 + 104) = v16;
      *(v2 + 120) = v13;
      *(v2 + 128) = v14;
      sub_25A60C(v20);
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_25A41C(uint64_t a1)
{
  [*(a1 + 16) configureWithModelObject:*(a1 + 72)];
  v2 = *(a1 + 24);
  v3 = *(a1 + 72);
  v4 = v2;
  if (v3)
  {
    v5 = [v3 newKeepLocalStatusObserverConfiguration];
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  [v2 setConfiguration:?];
}

void sub_25A4B4(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(v3 + 80);
  *(v3 + 80) = 1;
  v7 = *(v3 + 72);
  *(v3 + 72) = a3;
  v8 = a3;
  sub_25A2AC(v7);

  [*(v3 + 16) setConfiguration:a1 & 0x101010101 identifyingModelObject:v8];
  [*(v3 + 24) setConfiguration:a2];
  *(v3 + 80) = v6;
  if ((v6 & 1) == 0)
  {
    v9 = [objc_opt_self() sharedCloudController];
    if (v9)
    {
      v10 = v9;
      v11 = [v9 canShowCloudDownloadButtons];

      if (qword_DE6838 != -1)
      {
        swift_once();
      }

      sub_25AE40(v11, v16);
      v12 = v17;
      v13 = v18;
      v14 = *(v3 + 104);
      v19[0] = *(v3 + 88);
      v19[1] = v14;
      v19[2] = *(v3 + 120);
      v15 = v16[1];
      *(v3 + 88) = v16[0];
      *(v3 + 104) = v15;
      *(v3 + 120) = v12;
      *(v3 + 128) = v13;
      sub_25A60C(v19);
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_25A60C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v1 + 120);
  v4 = v2 & 0xFE;
  if ((v3 & 0xFE) == 0xF8)
  {
    if (v4 == 248)
    {
      return;
    }

    __break(1u);
    goto LABEL_66;
  }

  v6 = *(v1 + 112);
  v7 = *(v1 + 120);
  if (v4 == 248 || *(v1 + 88) != *a1)
  {
    goto LABEL_8;
  }

  v17 = *(a1 + 8);
  v18 = *(v1 + 96);
  v19 = *(a1 + 32);
  v20 = v2 & 0xFE;
  if ((v3 & 0xFE) == 0x7A)
  {
    if (v20 != 122 || v18 != v17)
    {
      goto LABEL_8;
    }

LABEL_47:
    if (vabdd_f64(*(v1 + 104), *(a1 + 16)) <= 0.00000011920929 && *(v1 + 128) == *(a1 + 40))
    {
      return;
    }

    goto LABEL_8;
  }

  if (v20 != 122)
  {
    v22 = *(a1 + 24);
    v23 = v7 >> 1;
    if (v7 >> 1 <= 0x7C)
    {
      if (v23 == 62)
      {
        if (v20 != 124)
        {
          goto LABEL_8;
        }

        goto LABEL_46;
      }

      if (v23 == 63)
      {
        if (v20 != 126)
        {
          goto LABEL_8;
        }

        goto LABEL_46;
      }
    }

    else
    {
      switch(v23)
      {
        case '}':
          if (v20 != 250)
          {
            goto LABEL_8;
          }

          goto LABEL_46;
        case '~':
          if (v20 != 252)
          {
            goto LABEL_8;
          }

          goto LABEL_46;
        case '\x7F':
          if (v19 < 0xFE)
          {
            goto LABEL_8;
          }

          goto LABEL_46;
      }
    }

    if ((v19 >> 1) - 125 < 3 || (v19 >> 1) - 62 < 2)
    {
      goto LABEL_8;
    }

    if ((v3 & 0x80) != 0)
    {
      if ((v2 & 0x80) == 0 || *&v6 != *&v22)
      {
        goto LABEL_8;
      }
    }

    else
    {
      if ((v2 & 0x80) != 0)
      {
        goto LABEL_8;
      }

      if (v3)
      {
        if ((v2 & (v18 == v17)) != 0)
        {
          goto LABEL_47;
        }

        goto LABEL_8;
      }

      if ((v2 & 1) != 0 || v6 != v22)
      {
        goto LABEL_8;
      }
    }

LABEL_46:
    if (v18 == v17)
    {
      goto LABEL_47;
    }
  }

LABEL_8:
  if ((v3 & 0xFE) == 0x7A || (v7 >> 1) - 125 < 3 || (v7 >> 1) - 62 < 2 || (v3 & 0x80) != 0)
  {
    v9 = *(v1 + 136);
    *(v1 + 136) = 0;
  }

  else if (!*(v1 + 136))
  {
    v24 = objc_allocWithZone(type metadata accessor for CircularProgressView());
    v25 = v1;
    v26 = CircularProgressView.init(size:)(0.0, 0.0);
    if (v3)
    {
      v27 = 0;
    }

    else
    {
      v27 = *&v6;
    }

    v28 = sub_AB9260();
    v29 = [objc_opt_self() systemImageNamed:v28];

    CircularProgressView.image.setter(v29);
    CircularProgressView.imageScale.setter(0.25);
    CircularProgressView.setState(_:animated:)(v27, v7 & 1, 0);
    v1 = v25;
    v30 = *(v25 + 136);
    *(v25 + 136) = v26;

    v2 = *(a1 + 32);
  }

  if ((v2 & 0xFE) == 0xF8)
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v10 = *(v1 + 32);
  v11 = *(a1 + 40);
  v12 = *(a1 + 16);
  v32[0] = *a1;
  v32[1] = v12;
  v33 = v2;
  v34 = v11;
  v13 = *(v1 + 120);
  if ((v13 & 0xFE) == 0xF8)
  {
LABEL_67:
    __break(1u);
    return;
  }

  v14 = *(v1 + 128);
  v15 = *(v1 + 112);
  v16 = *(v1 + 104);
  v35 = *(v1 + 88);
  v36 = v16;
  v37 = v15;
  v38 = v13;
  v39 = v14;

  v10(v32, &v35);
}

void sub_25A964(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFFBC0, &unk_AF85C0);
  __chkstk_darwin();
  v55 = &v54 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFAAB0, qword_B05AE0);
  __chkstk_darwin();
  v9 = &v54 - v8;
  v10 = *(v3 + 15);
  if ((v10 & 0xFE) == 0xF8)
  {
    __break(1u);
    return;
  }

  v11 = v3[14];
  v12 = *(v3 + 17);
  sub_BD3C8(a1, v9);
  v13 = type metadata accessor for SymbolButton.Configuration(0);
  v14 = *(*(v13 - 1) + 48);
  if (v14(v9, 1, v13) == 1)
  {
    v15 = v12;
    SymbolButton.Configuration.init()(a3);
    v16 = v12;
    if (v14(v9, 1, v13) != 1)
    {
      sub_12E1C(v9, &unk_DFAAB0, qword_B05AE0);
    }
  }

  else
  {
    sub_BD554(v9, a3);
    v17 = v12;
    v16 = v12;
  }

  sub_25C978(v10, a2 & 1, v56);
  sub_BD438(v56, a3);
  v18 = SymbolButton.Configuration.platterMinimumSize.unsafeMutableAddressor();
  v20 = *v18;
  *(a3 + v13[13]) = *v18;
  if ((v10 & 0xFFFFFFFE) == 0x7A)
  {
    goto LABEL_7;
  }

  v21 = 0;
  v22 = v10 >> 1;
  if ((v22 - 125) >= 3 && (v22 - 62) >= 2)
  {
    if (v10 < 0)
    {
LABEL_7:
      v21 = 0;
      goto LABEL_26;
    }

    if (v16)
    {
      v21 = v16;
    }

    else
    {
      v23 = objc_allocWithZone(type metadata accessor for CircularProgressView());
      v21 = CircularProgressView.init(size:)(0.0, 0.0);
    }

    if (v10)
    {
      v24 = 0.0;
    }

    else
    {
      v24 = v11;
    }

    v25 = v16;
    v26 = v21;
    if (a2)
    {
      CircularProgressView.image.setter(0);
      if (v10 & 1 | (v24 <= 0.051))
      {
        v27 = 1;
      }

      else
      {
        v27 = *&v24;
      }

      if (v10 & 1 | (v24 <= 0.051))
      {
        v28 = 256;
      }

      else
      {
        v28 = 0;
      }
    }

    else
    {
      v29 = sub_AB9260();
      v30 = [objc_opt_self() systemImageNamed:v29];

      CircularProgressView.image.setter(v30);
      CircularProgressView.imageScale.setter(0.25);
      v28 = v10 & 1;
      v27 = *&v24;
    }

    CircularProgressView.setState(_:animated:)(v27, v28, 1);

    v31 = v26;
  }

LABEL_26:
  SymbolButton.CustomView.init(view:)(v21, v57, v20, v19);
  v32 = a3 + v13[10];
  sub_160B4(v57, v32, &qword_DED418, &unk_AFB9A0);
  if (a2)
  {

    v33 = v13[9];
    sub_12E1C(a3 + v33, &unk_DFFBC0, &unk_AF85C0);
    v34 = sub_ABA680();
    (*(*(v34 - 8) + 56))(a3 + v33, 1, 1, v34);
    sub_3F9D0(*(a3 + 200), *(a3 + 208), *(a3 + 216), *(a3 + 224));
    *(a3 + 200) = xmmword_AF82C0;
    *(a3 + 216) = 0;
    *(a3 + 224) = 0;
    v35 = *v32;

    if (v35)
    {
      __asm { FMOV            V0.2D, #8.0 }

      *(v32 + 8) = _Q0;
      *(v32 + 24) = _Q0;
    }
  }

  else
  {
    v41 = v55;
    sub_ABA670();
    v42 = sub_ABA680();
    (*(*(v42 - 8) + 56))(v41, 0, 1, v42);
    sub_160B4(v41, a3 + v13[9], &unk_DFFBC0, &unk_AF85C0);
    if (*v32)
    {
      v43 = *&UIEdgeInsetsZero.bottom;
      *(v32 + 8) = *&UIEdgeInsetsZero.top;
      *(v32 + 24) = v43;
    }

    if (v21)
    {

      sub_3F9D0(*(a3 + 200), *(a3 + 208), *(a3 + 216), *(a3 + 224));
      *(a3 + 200) = xmmword_AF82C0;
      *(a3 + 216) = 0;
      *(a3 + 224) = 0;
    }

    else
    {
      v44 = SymbolButton.Background.tertiary.unsafeMutableAddressor();
      v45 = *v44;
      v46 = v44[1];
      v48 = v44[2];
      v47 = v44[3];
      v49 = *(a3 + 200);
      v50 = *(a3 + 208);
      v51 = *(a3 + 216);
      v52 = *(a3 + 224);

      v53 = v46;
      sub_3F9D0(v49, v50, v51, v52);

      *(a3 + 200) = v45;
      *(a3 + 208) = v46;
      *(a3 + 216) = v48;
      *(a3 + 224) = v47;
    }
  }
}

void sub_25AE40(char a1@<W0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = [*(v2 + 16) currentStatus];
  v7 = [*(v2 + 24) currentStatus];
  v54 = v8;
  v9 = [*(v2 + 24) downloadPausedReason];
  v10 = *(v2 + 24);
  v11 = [v10 configuration];

  if (v11)
  {
    v12 = [v11 identifyingModelObject];

    if (v12)
    {
      v13 = v12;
      sub_10AC20(v12);
      v15 = v14;

      v16 = v15 == 8 && v6 == &dword_0 + 1;
      if (v16 && v7 == 0)
      {
        v18 = 0;
        v20 = -6;
        goto LABEL_38;
      }
    }
  }

  if (*(v3 + 48) != 1)
  {
    if (*(v3 + 64) != 1)
    {
      if (v7 <= 2)
      {
        if (v7 == (&dword_0 + 1))
        {
          if ((a1 & 1) != 0 && v6 == &dword_0 + 1)
          {
            goto LABEL_37;
          }
        }

        else if (v7 == (&dword_0 + 2) && (a1 & 1) != 0)
        {
          goto LABEL_26;
        }
      }

      else if (v7 == (&dword_0 + 3))
      {
        if (a1)
        {
LABEL_34:
          v20 = 0;
          v18 = v54;
          goto LABEL_38;
        }
      }

      else
      {
        if (v7 == &dword_4)
        {
          goto LABEL_27;
        }

        if (v7 == (&dword_4 + 2))
        {
          goto LABEL_22;
        }
      }
    }

    v18 = sub_25BAA8(v6, a1 & 1);
    v20 = v19;
    goto LABEL_38;
  }

  if (v7 > 2)
  {
    if (v7 != (&dword_0 + 3))
    {
      if (v7 != &dword_4)
      {
        if (v7 != (&dword_4 + 2))
        {
          goto LABEL_32;
        }

LABEL_22:
        v20 = 0x80;
        v18 = v9;
        goto LABEL_38;
      }

LABEL_27:
      v18 = 0;
      v20 = 124;
      goto LABEL_38;
    }

    goto LABEL_34;
  }

  if (v7 != (&dword_0 + 1))
  {
    if (v7 != (&dword_0 + 2))
    {
LABEL_32:
      v18 = 0;
      v20 = 122;
      goto LABEL_38;
    }

LABEL_26:
    v18 = 0;
    v20 = 1;
    goto LABEL_38;
  }

LABEL_37:
  v18 = 0;
  v20 = -4;
LABEL_38:
  if (qword_DE69F8 != -1)
  {
    swift_once();
  }

  v21 = sub_AB4BC0();
  __swift_project_value_buffer(v21, qword_DFAB50);
  v22 = sub_AB9F10();

  v23 = sub_AB4BA0();

  if (os_log_type_enabled(v23, v22))
  {
    v50 = v22;
    log = v23;
    v24 = v18;
    v52 = a1;
    v53 = v9;
    v25 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    *v25 = 136447746;
    v26 = *(v3 + 72);
    if (!v26 || (v27 = v26, v28 = sub_25B390(), v30 = v29, v27, !v30))
    {

      v30 = 0xE700000000000000;
      v28 = 0x6E776F6E6B6E55;
    }

    v31 = sub_425E68(v28, v30, &v55);

    *(v25 + 4) = v31;
    *(v25 + 12) = 2082;
    type metadata accessor for MPLibraryAddStatus(0);
    v32 = sub_AB9350();
    v34 = sub_425E68(v32, v33, &v55);

    *(v25 + 14) = v34;
    *(v25 + 22) = 2082;
    type metadata accessor for MPLibraryActiveKeepLocalStatus(0);
    v35 = sub_AB9350();
    v37 = sub_425E68(v35, v36, &v55);

    *(v25 + 24) = v37;
    *(v25 + 32) = 2082;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFAD90, &unk_B05FA8);
    v38 = sub_AB9350();
    v40 = sub_425E68(v38, v39, &v55);

    *(v25 + 34) = v40;
    *(v25 + 42) = 2082;
    v41 = sub_AB9350();
    v43 = sub_425E68(v41, v42, &v55);

    *(v25 + 44) = v43;
    *(v25 + 52) = 2082;
    if (v52)
    {
      v44 = 1702195828;
    }

    else
    {
      v44 = 0x65736C6166;
    }

    if (v52)
    {
      v45 = 0xE400000000000000;
    }

    else
    {
      v45 = 0xE500000000000000;
    }

    v46 = sub_425E68(v44, v45, &v55);

    *(v25 + 54) = v46;
    *(v25 + 62) = 2082;
    if (*(v3 + 48))
    {
      v47 = 1702195828;
    }

    else
    {
      v47 = 0x65736C6166;
    }

    if (*(v3 + 48))
    {
      v48 = 0xE400000000000000;
    }

    else
    {
      v48 = 0xE500000000000000;
    }

    v49 = sub_425E68(v47, v48, &v55);

    *(v25 + 64) = v49;
    _os_log_impl(&dword_0, log, v50, "Control State for modelObject =%{public}s\n    libraryAddStatus=%{public}s\n    keepLocalStatus=%{public}s\n    controlStatus=%{public}s\n    behaviorType=%{public}s\n    canShowCloudDownloadButtons=%{public}s\n    forceKeepLocalDownloadVisibility=%{public}s", v25, 0x48u);
    swift_arrayDestroy();

    v18 = v24;

    v9 = v53;
  }

  else
  {
  }

  *a2 = v6;
  *(a2 + 8) = v7;
  *(a2 + 16) = v54;
  *(a2 + 24) = v18;
  *(a2 + 32) = v20;
  *(a2 + 40) = v9;
}

void *sub_25B390()
{
  v1 = v0;
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v2;
    object = 0xE000000000000000;
    sub_ABAD90(23);

    v38[0] = 0xD000000000000015;
    v38[1] = 0x8000000000B5A240;
    v5 = [v3 title];
    if (v5)
    {
LABEL_3:
      v6 = v5;
      v7 = sub_AB92A0();
      object = v8;

LABEL_7:
      v11._countAndFlagsBits = v7;
LABEL_8:
      v11._object = object;
      sub_AB94A0(v11);

      v13 = v38[0];
      v12 = v38[1];
      sub_ABAD90(16);

      strcpy(v38, " identifiers=");
      HIWORD(v38[1]) = -4864;
      v14 = [v1 identifiers];
      v15 = [v14 debugDescription];
      v16 = sub_AB92A0();
      v18 = v17;

      v39._countAndFlagsBits = v16;
      v39._object = v18;
      sub_AB94A0(v39);

      v40._countAndFlagsBits = 62;
      v40._object = 0xE100000000000000;
      sub_AB94A0(v40);
      v19 = v38[1];
      v38[1] = v12;

      v41._countAndFlagsBits = v38[0];
      v41._object = v19;
      sub_AB94A0(v41);

      return v13;
    }

LABEL_6:
    v7 = 0;
    goto LABEL_7;
  }

  objc_opt_self();
  v9 = swift_dynamicCastObjCClass();
  if (v9)
  {
    v10 = v9;
    object = 0xE000000000000000;
    sub_ABAD90(23);

    v38[0] = 0xD000000000000015;
    v38[1] = 0x8000000000B5A220;
    v5 = [v10 name];
    if (v5)
    {
      goto LABEL_3;
    }

    goto LABEL_6;
  }

  objc_opt_self();
  v21 = swift_dynamicCastObjCClass();
  if (v21)
  {
    v22 = v21;
    object = 0xE000000000000000;
    sub_ABAD90(25);

    v38[0] = 0xD000000000000017;
    v38[1] = 0x8000000000B5A200;
    v5 = [v22 name];
    if (v5)
    {
      goto LABEL_3;
    }

    goto LABEL_6;
  }

  objc_opt_self();
  v23 = swift_dynamicCastObjCClass();
  if (v23)
  {
    v24 = v23;
    object = 0xE000000000000000;
    sub_ABAD90(23);

    v38[0] = 0xD000000000000015;
    v38[1] = 0x8000000000B5A1E0;
    v5 = [v24 name];
    if (v5)
    {
      goto LABEL_3;
    }

    goto LABEL_6;
  }

  objc_opt_self();
  v25 = swift_dynamicCastObjCClass();
  if (v25)
  {
    v26 = v25;
    object = 0xE000000000000000;
    sub_ABAD90(22);

    v38[0] = 0xD000000000000014;
    v38[1] = 0x8000000000B5A1C0;
    v5 = [v26 name];
    if (v5)
    {
      goto LABEL_3;
    }

    goto LABEL_6;
  }

  objc_opt_self();
  v27 = swift_dynamicCastObjCClass();
  if (v27)
  {
    v28 = v27;
    object = 0xE000000000000000;
    sub_ABAD90(23);

    v38[0] = 0xD000000000000015;
    v38[1] = 0x8000000000B5A1A0;
    v5 = [v28 title];
    if (v5)
    {
      goto LABEL_3;
    }

    goto LABEL_6;
  }

  objc_opt_self();
  v29 = swift_dynamicCastObjCClass();
  if (v29)
  {
    v30 = v29;
    object = 0xE000000000000000;
    sub_ABAD90(25);

    v38[0] = 0xD000000000000017;
    v38[1] = 0x8000000000B5A180;
    v5 = [v30 name];
    if (v5)
    {
      goto LABEL_3;
    }

    goto LABEL_6;
  }

  objc_opt_self();
  v31 = swift_dynamicCastObjCClass();
  if (v31)
  {
    v32 = v31;
    object = 0xE000000000000000;
    sub_ABAD90(29);

    v38[0] = 0xD00000000000001BLL;
    v38[1] = 0x8000000000B5A160;
    v5 = [v32 name];
    if (v5)
    {
      goto LABEL_3;
    }

    goto LABEL_6;
  }

  objc_opt_self();
  v33 = swift_dynamicCastObjCClass();
  if (v33)
  {
    v34 = v33;
    object = 0xE000000000000000;
    sub_ABAD90(22);

    v38[0] = 0xD000000000000014;
    v38[1] = 0x8000000000B5A140;
    v5 = [v34 title];
    if (v5)
    {
      goto LABEL_3;
    }

    goto LABEL_6;
  }

  objc_opt_self();
  v35 = swift_dynamicCastObjCClass();
  if (v35)
  {
    v36 = v35;
    object = 0xE000000000000000;
    sub_ABAD90(27);

    v38[0] = 0xD000000000000019;
    v38[1] = 0x8000000000B5A120;
    v5 = [v36 title];
    if (v5)
    {
      goto LABEL_3;
    }

    goto LABEL_6;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    sub_ABAD90(26);

    v38[0] = 0xD000000000000018;
    v38[1] = 0x8000000000B5A100;
    MPModelTVSeason.title.getter();
    if (v11._object)
    {
      object = v11._object;
    }

    else
    {
      v11._countAndFlagsBits = 0;
      object = 0xE000000000000000;
    }

    goto LABEL_8;
  }

  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v37 = result;
    object = 0xE000000000000000;
    sub_ABAD90(24);

    v38[0] = 0xD000000000000016;
    v38[1] = 0x8000000000B5A0E0;
    v5 = [v37 title];
    if (v5)
    {
      goto LABEL_3;
    }

    goto LABEL_6;
  }

  return result;
}

id sub_25BAA8(unint64_t a1, char a2)
{
  v5 = [*(v2 + 24) currentStatus];
  if (a1 > 0xA)
  {
    return 0;
  }

  if (((1 << a1) & 0x3E) == 0)
  {
    return 0;
  }

  v8 = v5;
  v9 = v6;
  result = [*(v2 + 24) downloadPausedReason];
  if (v8 <= 2)
  {
    if (v8 == 1)
    {
      if (a2)
      {
        if (a1 == 1)
        {
          return 0;
        }

        goto LABEL_19;
      }
    }

    else
    {
      if (v8 != 2)
      {
        goto LABEL_19;
      }

      if (a2)
      {
        return 0;
      }
    }

    return 0;
  }

  if (v8 == 3)
  {
    if (a2)
    {
      return v9;
    }

    return 0;
  }

  if (v8 == 4)
  {
    if (a1 == 1)
    {
      return 0;
    }

LABEL_19:
    if ((a2 & 1) != 0 && a1 != 1)
    {
      return 0;
    }

    return 0;
  }

  if (v8 != 6)
  {
    goto LABEL_19;
  }

  return result;
}

uint64_t sub_25BBE4()
{

  return swift_deallocClassInstance();
}

unint64_t MPLibraryActiveKeepLocalStatusType.debugDescription.getter(uint64_t a1, __n128 a2)
{
  v3._countAndFlagsBits = sub_25BCA0(a1, a2);
  sub_AB94A0(v3);

  return 0xD000000000000023;
}

uint64_t sub_25BCA0(uint64_t a1, __n128 a2)
{
  if (a1 <= 2)
  {
    if (!a1)
    {
      return 1701736302;
    }

    if (a1 == 1 || a1 == 2)
    {
      return 0x64616F6C6E776F64;
    }

LABEL_12:
    v3._countAndFlagsBits = sub_ABB330();
    sub_AB94A0(v3);

    return 0x3A6E776F6E6B6E75;
  }

  if (a1 > 4)
  {
    if (a1 == 5)
    {
      return 0x656C6C65636E6163;
    }

    if (a1 == 6)
    {
      return 0x646573756170;
    }

    goto LABEL_12;
  }

  return 0x64616F6C6E776F64;
}

unint64_t sub_25BDF4(__n128 a1)
{
  v3._countAndFlagsBits = sub_25BCA0(*v1, a1);
  sub_AB94A0(v3);

  return 0xD000000000000023;
}

unint64_t MPLibraryAddStatus.debugDescription.getter(uint64_t a1, __n128 a2)
{
  v3._countAndFlagsBits = sub_25BEB0(a1, a2);
  sub_AB94A0(v3);

  return 0xD000000000000013;
}

uint64_t sub_25BEB0(uint64_t a1, __n128 a2)
{
  if (a1 > 4)
  {
    if (a1 <= 7)
    {
      if (a1 == 5)
      {
        return 0xD00000000000001DLL;
      }

      if (a1 != 6)
      {
        return 0xD000000000000024;
      }

      return 0xD000000000000022;
    }

    switch(a1)
    {
      case 8:
        return 0xD00000000000001BLL;
      case 9:
        return 0xD00000000000002BLL;
      case 10:
        return 0xD00000000000001DLL;
    }

LABEL_24:
    v3._countAndFlagsBits = sub_ABB330();
    sub_AB94A0(v3);

    return 0x3A6E776F6E6B6E75;
  }

  if (a1 <= 1)
  {
    if (!a1)
    {
      return 0x6E776F6E6B6E75;
    }

    if (a1 == 1)
    {
      return 0x6465646461;
    }

    goto LABEL_24;
  }

  if (a1 != 2)
  {
    if (a1 != 3)
    {
      return 0xD000000000000025;
    }

    return 0xD000000000000024;
  }

  return 0x656C6261646461;
}

unint64_t sub_25C0B4(__n128 a1)
{
  v3._countAndFlagsBits = sub_25BEB0(*v1, a1);
  sub_AB94A0(v3);

  return 0xD000000000000013;
}

uint64_t MPMediaDownloadPauseReason.debugDescription.getter(char a1)
{
  type metadata accessor for MPMediaDownloadPauseReason(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFAB68, &unk_B05D90);
  v2 = sub_AB9350();
  v4 = v3;
  if ((a1 & 4) == 0)
  {
    v5 = _swiftEmptyArrayStorage;
    if ((a1 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  sub_ABAD90(25);

  v17._countAndFlagsBits = 0xD000000000000017;
  v17._object = 0x8000000000B59EF0;
  sub_AB94A0(v17);
  v5 = sub_6B0F0(0, 1, 1, _swiftEmptyArrayStorage);
  v7 = *(v5 + 2);
  v6 = *(v5 + 3);
  if (v7 >= v6 >> 1)
  {
    v5 = sub_6B0F0((v6 > 1), v7 + 1, 1, v5);
  }

  *(v5 + 2) = v7 + 1;
  v8 = &v5[16 * v7];
  *(v8 + 4) = v2;
  *(v8 + 5) = v4;
  if ((a1 & 2) != 0)
  {
LABEL_7:
    sub_ABAD90(21);

    v18._countAndFlagsBits = 0xD000000000000013;
    v18._object = 0x8000000000B59ED0;
    sub_AB94A0(v18);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_6B0F0(0, *(v5 + 2) + 1, 1, v5);
    }

    v10 = *(v5 + 2);
    v9 = *(v5 + 3);
    if (v10 >= v9 >> 1)
    {
      v5 = sub_6B0F0((v9 > 1), v10 + 1, 1, v5);
    }

    *(v5 + 2) = v10 + 1;
    v11 = &v5[16 * v10];
    *(v11 + 4) = v2;
    *(v11 + 5) = v4;
  }

LABEL_12:
  if (a1)
  {
    sub_ABAD90(18);

    v19._object = 0x8000000000B59EB0;
    v19._countAndFlagsBits = 0xD000000000000010;
    sub_AB94A0(v19);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_6B0F0(0, *(v5 + 2) + 1, 1, v5);
    }

    v13 = *(v5 + 2);
    v12 = *(v5 + 3);
    if (v13 >= v12 >> 1)
    {
      v5 = sub_6B0F0((v12 > 1), v13 + 1, 1, v5);
    }

    *(v5 + 2) = v13 + 1;
    v14 = &v5[16 * v13];
    *(v14 + 4) = v2;
    *(v14 + 5) = v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFDE70, &unk_AF7D30);
  sub_2ECD4();
  v15 = sub_AB9140();

  return v15;
}

uint64_t MPModelLibraryRemovalSupportedOptions.debugDescription.getter(char a1)
{
  type metadata accessor for MPModelLibraryRemovalSupportedOptions(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFAB70, &unk_B05DA0);
  v2 = sub_AB9350();
  v4 = v2;
  v5 = v3;
  if ((a1 & 2) == 0)
  {
    v6 = _swiftEmptyArrayStorage;
    if ((a1 & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v15 = v2;
  v16 = v3;

  v17._countAndFlagsBits = 0x456574656C65642ELL;
  v17._object = 0xED0000797469746ELL;
  sub_AB94A0(v17);
  v6 = sub_6B0F0(0, 1, 1, _swiftEmptyArrayStorage);
  v8 = *(v6 + 2);
  v7 = *(v6 + 3);
  if (v8 >= v7 >> 1)
  {
    v6 = sub_6B0F0((v7 > 1), v8 + 1, 1, v6);
  }

  *(v6 + 2) = v8 + 1;
  v9 = &v6[16 * v8];
  *(v9 + 4) = v15;
  *(v9 + 5) = v16;
  if (a1)
  {
LABEL_7:

    v18._countAndFlagsBits = 0x4165766F6D65722ELL;
    v18._object = 0xED00007374657373;
    sub_AB94A0(v18);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_6B0F0(0, *(v6 + 2) + 1, 1, v6);
    }

    v11 = *(v6 + 2);
    v10 = *(v6 + 3);
    if (v11 >= v10 >> 1)
    {
      v6 = sub_6B0F0((v10 > 1), v11 + 1, 1, v6);
    }

    *(v6 + 2) = v11 + 1;
    v12 = &v6[16 * v11];
    *(v12 + 4) = v4;
    *(v12 + 5) = v5;
  }

LABEL_12:
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFDE70, &unk_AF7D30);
  sub_2ECD4();
  v13 = sub_AB9140();

  return v13;
}

uint64_t sub_25C640()
{
  v0 = sub_AB4BC0();
  __swift_allocate_value_buffer(v0, qword_DFAB50);
  __swift_project_value_buffer(v0, qword_DFAB50);
  return static Logger.music(_:)(0xD000000000000013, 0x8000000000B5A260);
}

uint64_t sub_25C6D8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x79 && *(a1 + 48))
  {
    return (*a1 + 121);
  }

  v3 = *(a1 + 32);
  if ((v3 & 0x7E) != 0)
  {
    v4 = ((122 - (v3 & 0x7E | (v3 >> 7))) & ~((122 - (v3 & 0x7E | (v3 >> 7))) >> 31)) - 1;
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_25C734(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x78)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 121;
    if (a3 >= 0x79)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x79)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 24) = 0;
      *(result + 32) = (122 - a2) & 0x7E | ((122 - a2) << 7);
    }
  }

  return result;
}

unint64_t sub_25C7A8()
{
  result = qword_DFAD88;
  if (!qword_DFAD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DFAD88);
  }

  return result;
}

BOOL sub_25C7FC(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = *(a2 + 32);
  v4 = v3 & 0xFFFFFFFE;
  if ((v2 & 0xFFFFFFFE) == 0x7A)
  {
    if (v4 == 122)
    {
      goto LABEL_4;
    }

    return 0;
  }

  if (v4 == 122)
  {
    return 0;
  }

  v6 = *(a1 + 24);
  v7 = *(a2 + 24);
  v8 = v2 >> 1;
  if (v8 <= 0x7C)
  {
    if (v8 != 62)
    {
      if (v8 == 63)
      {
        if (v4 != 126)
        {
          return 0;
        }

        goto LABEL_4;
      }

      goto LABEL_27;
    }

    if (v4 != 124)
    {
      return 0;
    }

LABEL_4:
    if (*(a1 + 8) != *(a2 + 8) || vabdd_f64(*(a1 + 16), *(a2 + 16)) > 0.00000011920929)
    {
      return 0;
    }

    return *(a1 + 40) == *(a2 + 40);
  }

  switch(v8)
  {
    case '}':
      if (v4 != -6)
      {
        return 0;
      }

      goto LABEL_4;
    case '~':
      if (v4 != -4)
      {
        return 0;
      }

      goto LABEL_4;
    case '\x7F':
      if (v3 <= 0xFFFFFFFD)
      {
        return 0;
      }

      goto LABEL_4;
  }

LABEL_27:
  v9 = 0;
  v10 = v3 >> 1;
  if ((v10 - 125) < 3 || (v10 - 62) < 2)
  {
    return v9;
  }

  if (v2 < 0)
  {
    v9 = 0;
    if ((v3 & 0x80000000) != 0 && *&v6 == *&v7)
    {
      goto LABEL_4;
    }

    return v9;
  }

  if ((v3 & 0x80000000) != 0)
  {
    return 0;
  }

  if ((v2 & 1) == 0)
  {
    if ((v3 & 1) == 0 && v6 == v7)
    {
      goto LABEL_4;
    }

    return 0;
  }

  if (v3)
  {
    goto LABEL_4;
  }

  return 0;
}

double sub_25C978@<D0>(char a2@<W1>, unsigned __int8 a3@<W2>, uint64_t a4@<X8>)
{
  v7 = a3;
  variable initialization expression of SymbolButton.Configuration.symbol(&v46);
  v8 = *(&v46 + 1);
  v9 = v46;
  v10 = v47;
  v11 = v48;
  v13 = v50;
  v12 = v51;
  v42 = v52;
  v43 = v53;
  v44 = v54;
  v45 = v49;
  v14 = v55;
  if (v7 != 2)
  {
    v15 = v51;
    v24 = v47;
    v58[0] = v46;
    v56 = v55;
    v57 = v48;
    if (a3)
    {
      v14 = [objc_opt_self() tertiaryLabelColor];
      sub_12E1C(&v56, &unk_DFDE40, &qword_B0C640);
      if ((a2 & 0xFE) == 0x7A)
      {
LABEL_4:
        sub_12E1C(v58, &unk_DEE6F0, &unk_AF8970);
LABEL_5:
        v9 = 0;
        v8 = 0;
LABEL_10:
        v10 = v24;
        v12 = v15;
        goto LABEL_11;
      }

      v22 = a2 >> 1;
      if (v22 <= 0x7C)
      {
        if (v22 == 62)
        {
          v9 = 0xD000000000000016;
          v8 = 0x8000000000B5A090;
          sub_12E1C(v58, &unk_DEE6F0, &unk_AF8970);
LABEL_38:
          v11 = UIFontTextStyleCaption1;
          sub_1559A4(&v57);
          v12 = 2;
          v13 = 7;
          goto LABEL_39;
        }

        if (v22 == 63)
        {
          goto LABEL_4;
        }
      }

      else
      {
        if (v22 == 125)
        {
          v9 = 0xD000000000000016;
          v8 = 0x8000000000B5A070;
          sub_12E1C(v58, &unk_DEE6F0, &unk_AF8970);
          v11 = UIFontTextStyleCallout;
          sub_1559A4(&v57);
          v12 = 1;
          v13 = 6;
LABEL_39:
          v10 = v24;
          goto LABEL_11;
        }

        if (v22 == 126 || v22 == 127)
        {
          goto LABEL_4;
        }
      }

      sub_12E1C(v58, &unk_DEE6F0, &unk_AF8970);
      if ((a2 & 0x80) == 0)
      {
        goto LABEL_5;
      }

      v8 = 0xED00006465687361;
      v9 = 0x642E656C63726963;
      goto LABEL_38;
    }

    sub_12E1C(&v56, &unk_DFDE40, &qword_B0C640);
    v11 = UIFontTextStyleSubheadline;
    sub_1559A4(&v57);
    if ((a2 & 0xFE) == 0x7A)
    {
      sub_12E1C(v58, &unk_DEE6F0, &unk_AF8970);
      v9 = 0;
      v8 = 0;
LABEL_8:
      v14 = 0;
LABEL_9:
      v13 = 6;
      goto LABEL_10;
    }

    v23 = a2 >> 1;
    if (v23 <= 0x7C)
    {
      if (v23 == 62)
      {
        sub_12E1C(v58, &unk_DEE6F0, &unk_AF8970);
        v14 = 0;
        v8 = 0xE90000000000006BLL;
        v9 = 0x72616D6B63656863;
        goto LABEL_9;
      }

      if (v23 == 63)
      {
        goto LABEL_21;
      }
    }

    else
    {
      switch(v23)
      {
        case '}':
          v9 = 0xD000000000000016;
          v8 = 0x8000000000B5A070;
          sub_12E1C(v58, &unk_DEE6F0, &unk_AF8970);
          goto LABEL_8;
        case '~':
          sub_12E1C(v58, &unk_DEE6F0, &unk_AF8970);
          v14 = 0;
          v8 = 0xEA00000000006E77;
          v9 = 0x6F642E776F727261;
          goto LABEL_9;
        case '\x7F':
LABEL_21:
          sub_12E1C(v58, &unk_DEE6F0, &unk_AF8970);
          v14 = 0;
          v8 = 0xE400000000000000;
          v13 = 7;
          v9 = 1937075312;
          goto LABEL_10;
      }
    }

    sub_12E1C(v58, &unk_DEE6F0, &unk_AF8970);
    v14 = 0;
    if (a2 < 0)
    {
      v9 = 0x642E656C63726963;
    }

    else
    {
      v9 = 0;
    }

    if (a2 < 0)
    {
      v8 = 0xED00006465687361;
    }

    else
    {
      v8 = 0;
    }

    goto LABEL_9;
  }

LABEL_11:
  v28 = v45;
  v30 = v42;
  v31 = v43;
  v32 = v44;
  v35 = v45;
  v40 = v44;
  *&v26 = v9;
  *(&v26 + 1) = v8;
  *&v27 = v10;
  *(&v27 + 1) = v11;
  *&v29 = v13;
  *(&v29 + 1) = v12;
  v33 = v14;
  v34[0] = v9;
  v34[1] = v8;
  v34[2] = v10;
  v34[3] = v11;
  v36 = v13;
  v37 = v12;
  v39 = v43;
  v38 = v42;
  v41 = v14;
  sub_25CE1C(&v26, v25);
  sub_155A00(v34);
  v16 = v31;
  v17 = v32;
  v18 = v29;
  *(a4 + 64) = v30;
  *(a4 + 80) = v16;
  *(a4 + 96) = v17;
  result = *&v26;
  v20 = v27;
  v21 = v28;
  *a4 = v26;
  *(a4 + 16) = v20;
  *(a4 + 112) = v33;
  *(a4 + 32) = v21;
  *(a4 + 48) = v18;
  return result;
}

uint64_t sub_25CE78()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

double block_copy_helper_83(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

unint64_t sub_25CED8()
{
  result = qword_DEDE20;
  if (!qword_DEDE20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_DEDE20);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LibraryAddKeepLocalStatusObserver.ControlStatus(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7A && *(a1 + 9))
  {
    return (*a1 + 122);
  }

  v3 = *(a1 + 8);
  if ((v3 & 0x7E) != 0)
  {
    v4 = 128 - (v3 & 0x7E | (v3 >> 7));
  }

  else
  {
    v4 = 0;
  }

  if (v4 >= 6)
  {
    return v4 - 5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for LibraryAddKeepLocalStatusObserver.ControlStatus(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x79)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 122;
    if (a3 >= 0x7A)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7A)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (123 - a2) & 0x7E | ((123 - a2) << 7);
    }
  }

  return result;
}

uint64_t sub_25CFD0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if ((v1 & 0x7E) != 0)
  {
    return 128 - (v1 & 0x7E | (v1 >> 7));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25CFF0(uint64_t result, unsigned int a2)
{
  if (a2 > 0x7E)
  {
    *(result + 8) = 0;
    *result = a2 - 127;
  }

  else if (a2)
  {
    *result = 0;
    *(result + 8) = 2 * (((-a2 >> 1) & 0x3F) - (a2 << 6));
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LibraryAddKeepLocalStatusObserver.ControlStatus.DownloadState(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 9))
  {
    return (*a1 + 127);
  }

  v3 = (*(a1 + 8) & 0x7E | (*(a1 + 8) >> 7)) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for LibraryAddKeepLocalStatusObserver.ControlStatus.DownloadState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *(result + 8) = 0;
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 2 * (((-a2 >> 1) & 0x3F) - (a2 << 6));
    }
  }

  return result;
}

char *sub_25D124(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  *&v4[OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_lockupImageArtworkCatalog] = 0;
  v10 = OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_artworkCornerTreatment;
  v11 = sub_ABA680();
  (*(*(v11 - 8) + 56))(&v5[v10], 1, 1, v11);
  v12 = &v5[OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_artworkPlaceholder];
  *v12 = 0u;
  v12[1] = 0u;
  v12[2] = 0u;
  v13 = &v5[OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_playButtonHandler];
  *v13 = 0;
  v13[1] = 0;
  v5[OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_displayStyle] = 0;
  v14 = &v5[OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_duration];
  *v14 = 0;
  v14[8] = 1;
  *&v5[OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_playbackPosition] = 0;
  v5[OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_hasBeenPlayed] = 0;
  v5[OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_isBlurBackgroundEnabled] = 0;
  v15 = OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_artworkComponent;
  type metadata accessor for ArtworkComponentImageView();
  v16 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  _s9ComponentCMa(0);
  swift_allocObject();
  v17 = sub_80104(v16);

  *&v5[v15] = v17;
  *&v5[OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_artworkCachingReference] = 0;
  *&v5[OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_textDrawingCache] = 0;
  v18 = OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_playButton;
  type metadata accessor for VideoHeaderPlayButton();
  *&v5[v18] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v19 = OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_textComponents;
  *&v5[v19] = sub_25F6C0();
  *&v5[OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_durationTextStackView] = 0;
  *&v5[OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_tapGestureRecognizerHandler] = 0;
  *&v5[OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_gradientView] = 0;
  *&v5[OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_progressView] = 0;
  *&v5[OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_checkmarkImageView] = 0;
  v40.receiver = v5;
  v40.super_class = type metadata accessor for VideoHeaderLockupView(0);
  v20 = objc_msgSendSuper2(&v40, "initWithFrame:", a1, a2, a3, a4);
  v21 = OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_artworkComponent;
  v22 = qword_DE6C90;
  v23 = v20;

  if (v22 != -1)
  {
    swift_once();
  }

  sub_74DD4(qword_E718D0);

  v24 = *&v20[v21];
  *(v24 + 24) = 0x70756B636F6CLL;
  *(v24 + 32) = 0xE600000000000000;

  v25 = *&v20[v21];
  v26 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v27 = (v25 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_requiresContentsAndLayoutUpdateHandler);
  v28 = *(v25 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_requiresContentsAndLayoutUpdateHandler);
  v29 = *(v25 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_requiresContentsAndLayoutUpdateHandler + 8);
  *v27 = sub_8A12C;
  v27[1] = v26;

  sub_17654(v28, v29);

  v30 = *&v20[v21];
  v31 = *(v30 + 144);
  *(v30 + 144) = 2;
  if (v31 != 2)
  {
    v32 = *(v30 + 112);

    v33 = [v32 image];
    sub_788B8(v33);
  }

  [v23 addSubview:*(*&v20[v21] + 112)];
  v34 = OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_playButton;
  [*&v23[OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_playButton] setUserInteractionEnabled:0];
  [v23 addSubview:*&v23[v34]];
  v35 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:0 action:0];
  v36 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for GestureRecognizerHandler();
  swift_allocObject();
  v37 = sub_13C80(0, &qword_DEE998, UITapGestureRecognizer_ptr);
  v38 = v35;
  *&v23[OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_tapGestureRecognizerHandler] = GestureRecognizerHandler.init<A>(gestureRecognizer:handler:)(v38, sub_25FAA0, v36, v37);

  [v23 addGestureRecognizer:v38];

  return v23;
}

void sub_25D5C4(void *a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_playButtonHandler);
    if (v5)
    {
      v6 = *(Strong + OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_playButtonHandler + 8);

      if ([a1 state] == &dword_0 + 3)
      {
        v5();
      }

      sub_17654(v5, v6);
    }
  }
}

double sub_25D6BC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFFBC0, &unk_AF85C0);
  __chkstk_darwin();
  v2 = &v9 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v4 = &v9 - v3;
  v5 = *(v0 + OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_artworkComponent);
  v6 = OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_artworkCornerTreatment;
  swift_beginAccess();
  sub_89FAC(v0 + v6, v4);
  v7 = OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_cornerTreatment;
  swift_beginAccess();
  sub_89FAC(v5 + v7, v2);
  swift_beginAccess();

  sub_8A01C(v4, v5 + v7);
  swift_endAccess();
  sub_75AE8(v2);
  sub_8A08C(v2);
  sub_8A08C(v4);

  return result;
}

id sub_25D814(id result)
{
  v2 = v1[OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_displayStyle];
  if (v2 != result)
  {
    v3 = v1;
    if (v1[OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_displayStyle])
    {
      if (v2 == 1)
      {
        v4 = sub_25EAB8(1);
        v5 = OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_playbackPosition;
        v24 = *&v1[OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_playbackPosition];
        sub_471A4();
        [v4 setHidden:{sub_AB3900() & 1, 0, v24}];
        v6 = OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_artworkComponent;
        [*(*&v1[OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_artworkComponent] + 112) addSubview:v4];
        v7 = OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_progressView;
        v8 = *&v3[OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_progressView];
        if (v8)
        {
          v9 = *&v3[OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_progressView];
        }

        else
        {
          v20 = [objc_allocWithZone(type metadata accessor for ProgressView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
          v21 = *&v3[v7];
          *&v3[v7] = v20;
          v9 = v20;

          v8 = 0;
        }

        v25 = *&v3[v5];
        v22 = v8;
        v23 = v9;
        [v23 setHidden:{sub_AB3900() & 1, 0, v25}];

        [*(*&v3[v6] + 112) addSubview:v23];
      }

      else
      {
        v13 = sub_25EAB8(2);
        v14 = OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_artworkComponent;
        [*(*&v1[OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_artworkComponent] + 112) addSubview:v13];
        v15 = sub_25F158();
        if (v3[OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_duration + 8])
        {
          v16 = 0;
        }

        else
        {
          v17 = *&v3[OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_textComponents];
          swift_beginAccess();
          v18 = *(v17 + 120);
          v19 = *(v17 + 112) & 0xFFFFFFFFFFFFLL;
          if ((v18 & 0x2000000000000000) != 0)
          {
            v19 = HIBYTE(v18) & 0xF;
          }

          v16 = v19 != 0;
        }

        [v15 setHidden:v16];
        [*(*&v3[v14] + 112) addSubview:v15];
      }
    }

    else
    {
      *&v1[OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_playbackPosition] = 0;
      sub_25DD64();
      v10 = *&v1[OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_gradientView];
      if (v10)
      {
        [v10 removeFromSuperview];
      }

      v11 = *&v1[OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_progressView];
      if (v11)
      {
        [v11 removeFromSuperview];
      }

      v12 = *&v1[OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_checkmarkImageView];
      if (v12)
      {
        [v12 removeFromSuperview];
      }
    }

    return [v3 setNeedsLayout];
  }

  return result;
}

void sub_25DB0C(uint64_t a1, char a2)
{
  if (a2)
  {
    if (*(v2 + OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_duration + 8))
    {
      return;
    }

    v3 = *(v2 + OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_duration);
  }

  else
  {
    if (*(v2 + OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_duration + 8))
    {
      v4 = *(*(v2 + OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_artworkComponent) + 112);
      v5 = *(v2 + OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_durationTextStackView);
      if (v5)
      {
        v6 = v4;
        v7 = v5;
        if ([v7 isDescendantOfView:v6])
        {
          [v7 setHidden:1];
        }
      }

      else
      {
        v15 = v4;
      }

      v16 = *(v2 + OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_textComponents);
      swift_beginAccess();
      *(v16 + 112) = 0;
      *(v16 + 120) = 0xE000000000000000;

      sub_2EB704();
      goto LABEL_22;
    }

    v3 = *(v2 + OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_duration);
    if (*&a1 == v3)
    {
      return;
    }
  }

  v8 = *(*(v2 + OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_artworkComponent) + 112);
  v4 = sub_25F158();
  if (([v4 isDescendantOfView:v8] & 1) == 0)
  {
    [v8 addSubview:v4];
  }

  if (*Double.epsilon.unsafeMutableAddressor() >= v3)
  {
    v10 = 0;
    v12 = 0xE000000000000000;
  }

  else
  {
    if (qword_DE6CB0 != -1)
    {
      swift_once();
    }

    v9 = [qword_E718F0 stringFromSeconds:v3];
    v10 = sub_AB92A0();
    v12 = v11;
  }

  v13 = *(v2 + OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_textComponents);
  swift_beginAccess();
  *(v13 + 112) = v10;
  *(v13 + 120) = v12;

  sub_2EB704();

  v14 = HIBYTE(v12) & 0xF;
  if ((v12 & 0x2000000000000000) == 0)
  {
    v14 = v10 & 0xFFFFFFFFFFFFLL;
  }

  [v4 setHidden:v14 == 0];

LABEL_22:
}

void sub_25DD64()
{
  v1 = OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_playbackPosition;
  if ((sub_AB38D0() & 1) != 0 && *(v0 + OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_displayStyle) == 1)
  {
    v2 = *(v0 + v1);
    if (v2 < 0.0)
    {
      v2 = 0.0;
    }

    if (v2 > 1.0)
    {
      v2 = 1.0;
    }

    *(v0 + v1) = v2;
    v3 = OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_progressView;
    v4 = *(v0 + OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_progressView);
    if (v4)
    {
      v5 = *&v4[OBJC_IVAR____TtC16MusicApplication12ProgressView_progress];
      *&v4[OBJC_IVAR____TtC16MusicApplication12ProgressView_progress] = v2;
      v11 = v2;
      v12 = v5;
      v6 = v4;
      if (sub_AB38D0())
      {
        [v6 setNeedsLayout];
      }

      v7 = *(v0 + v3);
      if (v7)
      {
        v13 = *(v0 + v1);
        sub_471A4();
        v8 = v7;
        [v8 setHidden:{sub_AB3900() & 1, 0, v13}];
      }
    }

    v9 = *(v0 + OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_gradientView);
    if (v9)
    {
      v14 = *(v0 + v1);
      sub_471A4();
      v10 = v9;
      [v10 setHidden:{sub_AB3900() & 1, 0, v14}];
    }

    sub_25EE8C();
  }
}

void sub_25DF4C()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_playButton);
  v3 = OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_isBlurBackgroundEnabled;
  v4 = *(v0 + OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_isBlurBackgroundEnabled);
  v5 = v2[OBJC_IVAR____TtC16MusicApplication21VideoHeaderPlayButton_isBlurBackgroundEnabled];
  v2[OBJC_IVAR____TtC16MusicApplication21VideoHeaderPlayButton_isBlurBackgroundEnabled] = v4;
  v6 = v2;
  sub_41AD8C(v5);

  v7 = *(v1 + OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_progressView);
  if (v7)
  {
    v8 = *(v1 + v3);
    v9 = v7[OBJC_IVAR____TtC16MusicApplication12ProgressView_isBlurBackgroundEnabled];
    v7[OBJC_IVAR____TtC16MusicApplication12ProgressView_isBlurBackgroundEnabled] = v8;
    v10 = v7;
    sub_3E4860(v9);
  }
}

double sub_25E028(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_textDrawingCache;
  *(v1 + OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_textDrawingCache) = a1;

  v3 = *(v1 + OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_durationTextStackView);
  if (v3)
  {
    v4 = *(v1 + v2);
    v5 = OBJC_IVAR____TtC16MusicApplication13TextStackView_textDrawingCache;
    swift_beginAccess();
    v6 = *&v3[v5];
    *&v3[v5] = v4;
    swift_retain_n();
    v7 = v3;
    sub_2E6210(v6);
  }

  else
  {
  }

  return result;
}

void sub_25E11C()
{
  v1 = v0;
  v75.receiver = v0;
  v75.super_class = type metadata accessor for VideoHeaderLockupView(0);
  objc_msgSendSuper2(&v75, "layoutSubviews");
  [v0 bounds];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = [v0 traitCollection];
  [v10 displayScale];

  v11 = OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_artworkComponent;
  v12 = *&v1[OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_artworkComponent];
  v13 = *(v12 + 80);
  v14 = *(v12 + 88);
  *(v12 + 80) = v7;
  *(v12 + 88) = v9;

  sub_75614(v13, v14);

  sub_76B28(v3, v5, v7, v9);

  v15 = OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_playButton;
  [*&v1[OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_playButton] sizeThatFits:{v7, v9}];
  v71 = v16;
  sub_ABA470();
  [*&v1[v15] setFrame:v71];
  v17 = v1[OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_displayStyle];
  if (v17 == 2)
  {
    if (v1[OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_duration + 8])
    {
      v37 = 0;
    }

    else
    {
      v38 = *&v1[OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_textComponents];
      swift_beginAccess();
      v39 = *(v38 + 120);
      v40 = *(v38 + 112) & 0xFFFFFFFFFFFFLL;
      if ((v39 & 0x2000000000000000) != 0)
      {
        v40 = HIBYTE(v39) & 0xF;
      }

      v37 = v40 != 0;
    }

    v41 = OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_gradientView;
    v42 = *&v1[OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_gradientView];
    if (v42)
    {
      [v42 setHidden:!v37];
    }

    v43 = *&v1[OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_durationTextStackView];
    if (v43 && v37)
    {
      v44 = v43;
      [v1 effectiveUserInterfaceLayoutDirection];
      v45 = *(*&v1[v11] + 112);
      [v45 bounds];
      v47 = v46;
      v49 = v48;
      v51 = v50;
      v53 = v52;
      [v44 sizeThatFits:{260.0, 160.0}];
      v88.origin.x = v47;
      v88.origin.y = v49;
      v88.size.width = v51;
      v88.size.height = v53;
      CGRectGetMaxX(v88);
      v89.origin.x = v47;
      v89.origin.y = v49;
      v89.size.width = v51;
      v89.size.height = v53;
      CGRectGetMaxY(v89);
      v54 = v44;
      sub_ABA490();
      [v54 setFrame:?];

      v55 = *&v1[v41];
      if (v55)
      {
        v56 = v55;
        v90.origin.x = v47;
        v90.origin.y = v49;
        v90.size.width = v51;
        v90.size.height = v53;
        CGRectGetMaxX(v90);
        v91.origin.x = v47;
        v91.origin.y = v49;
        v91.size.width = v51;
        v91.size.height = v53;
        CGRectGetMaxY(v91);
        v57 = v56;
        sub_ABA490();
        [v57 setFrame:?];

        v58 = &v57[OBJC_IVAR____TtCV11MusicCoreUI8Gradient4View_typedConfiguration];
        swift_beginAccess();
        v59 = *(v58 + 3);
        v60 = *v58;
        v61 = *(v58 + 1);
        *&v74[16] = *(v58 + 2);
        *&v74[32] = v59;
        v73 = v60;
        *v74 = v61;
        sub_8A334(&v73, &v76);

        v76 = v73;
        v78 = *&v74[8];
        v79 = *&v74[24];
        v80 = *&v74[40];
        v77 = &off_CF0F30;
        Gradient.View.typedConfiguration.setter(&v76);
      }

      else
      {
      }
    }
  }

  else if (v17 == 1)
  {
    v18 = *&v1[OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_gradientView];
    if (v18)
    {
      v19 = v18;
      v81.origin.x = v3;
      v81.origin.y = v5;
      v81.size.width = v7;
      v81.size.height = v9;
      CGRectGetHeight(v81);
      sub_AB3A00();
      v21 = v20;
      v82.origin.x = v3;
      v82.origin.y = v5;
      v82.size.width = v7;
      v82.size.height = v9;
      v22 = CGRectGetHeight(v82) - v21;
      v83.origin.x = v3;
      v83.origin.y = v5;
      v83.size.width = v7;
      v83.size.height = v9;
      v72 = v5;
      v23 = v3;
      Width = CGRectGetWidth(v83);
      [v19 setFrame:{0.0, v22, Width, v21}];
      v84.origin.x = 0.0;
      v84.origin.y = v22;
      v84.size.width = Width;
      v84.size.height = v21;
      CGRectGetHeight(v84);
      v85.origin.x = 0.0;
      v85.origin.y = v22;
      v85.size.width = Width;
      v3 = v23;
      v5 = v72;
      v85.size.height = v21;
      CGRectGetHeight(v85);
      sub_AB3A00();
      v26 = v25;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEA9B0, &qword_AF9000);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_AF8820;
      *(v27 + 32) = 0;
      *(v27 + 40) = v26;
      *(v27 + 48) = 0x3FF0000000000000;
      v28 = &v19[OBJC_IVAR____TtCV11MusicCoreUI8Gradient4View_typedConfiguration];
      swift_beginAccess();
      v29 = *(v28 + 3);
      v30 = *v28;
      v31 = *(v28 + 1);
      *&v74[16] = *(v28 + 2);
      *&v74[32] = v29;
      v73 = v30;
      *v74 = v31;
      sub_8A334(&v73, &v76);

      v76 = v73;
      v78 = *&v74[8];
      v79 = *&v74[24];
      v80 = *&v74[40];
      v77 = v27;
      Gradient.View.typedConfiguration.setter(&v76);
    }

    v32 = *&v1[OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_progressView];
    if (v32)
    {
      v33 = v32;
      [v33 sizeThatFits:{v7, v9}];
      v35 = v34;
      v86.origin.x = v3;
      v86.origin.y = v5;
      v86.size.width = v7;
      v86.size.height = v9;
      v36 = CGRectGetHeight(v86) - v35 + -12.0;
      v87.origin.x = v3;
      v87.origin.y = v5;
      v87.size.width = v7;
      v87.size.height = v9;
      [v33 setFrame:{12.0, v36, CGRectGetWidth(v87) + -12.0 + -12.0, v35}];
    }
  }

  v62 = *&v1[OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_checkmarkImageView];
  if (v62)
  {
    v63 = v62;
    [v63 sizeThatFits:{v7, v9}];
    v65 = v64;
    v67 = v66;
    v92.origin.x = v3;
    v92.origin.y = v5;
    v92.size.width = v7;
    v92.size.height = v9;
    v68 = CGRectGetWidth(v92);
    v93.origin.x = 0.0;
    v93.origin.y = 0.0;
    v93.size.width = v65;
    v93.size.height = v67;
    v69 = v68 - CGRectGetWidth(v93) + -12.0;
    v94.origin.x = v3;
    v94.origin.y = v5;
    v94.size.width = v7;
    v94.size.height = v9;
    Height = CGRectGetHeight(v94);
    v95.origin.x = 0.0;
    v95.origin.y = 0.0;
    v95.size.width = v65;
    v95.size.height = v67;
    [v63 setFrame:{v69, Height - CGRectGetHeight(v95) + -12.0, v65, v67}];
  }
}

id sub_25E8D8(uint64_t a1, uint64_t a2, SEL *a3, char a4, uint64_t a5)
{
  sub_13C80(0, &qword_DEE988, UITouch_ptr);
  sub_E8D54();
  isa = sub_AB9B30().super.isa;
  v12.receiver = v5;
  v12.super_class = type metadata accessor for VideoHeaderLockupView(0);
  objc_msgSendSuper2(&v12, *a3, isa, a2);

  [*&v5[OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_playButton] setHighlighted:a4 & 1];
  return [*(*&v5[OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_artworkComponent] + 112) setDrawMode:a5];
}

double sub_25E9E4(void *a1, uint64_t a2, void *a3, void *a4, SEL *a5, char a6, uint64_t a7)
{
  sub_13C80(0, &qword_DEE988, UITouch_ptr);
  sub_E8D54();
  v13 = sub_AB9B40();
  v14 = a3;
  v15 = a4;
  v16 = a1;
  sub_25E8D8(v13, a4, a5, a6, a7);

  return result;
}

_OWORD *sub_25EAB8(char a1)
{
  v2 = v1;
  v4 = sub_ABA680();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v20[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFFBC0, &unk_AF85C0);
  __chkstk_darwin();
  v9 = &v20[-v8];
  v10 = OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_gradientView;
  v11 = *(v2 + OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_gradientView);
  if (v11)
  {
    v12 = *(v2 + OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_gradientView);
  }

  else
  {
    if (a1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0, &unk_AF7D40);
      if (a1 == 1)
      {
        v13 = swift_allocObject();
        *(v13 + 16) = xmmword_AF82E0;
        *(v13 + 32) = [objc_allocWithZone(UIColor) initWithWhite:0.0 alpha:0.0];
        *(v13 + 40) = [objc_allocWithZone(UIColor) initWithWhite:0.0 alpha:0.4];
        *(v13 + 48) = [objc_allocWithZone(UIColor) initWithWhite:0.0 alpha:0.4];
        static Gradient.vertical(colors:locations:interpolations:)(v13, 0, 0, &v22);
      }

      else
      {
        v14 = swift_allocObject();
        *(v14 + 16) = xmmword_AF7C50;
        *(v14 + 32) = [objc_allocWithZone(UIColor) initWithWhite:0.0 alpha:0.0];
        *(v14 + 40) = [objc_allocWithZone(UIColor) initWithWhite:0.0 alpha:0.4];
        Gradient.init(kind:colors:locations:interpolations:startPoint:endPoint:)(kCAGradientLayerAxial, v14, 0, 0, &v22, 0.7, 0.65, 1.0, 1.0);
      }
    }

    else
    {
      static Gradient.vertical(colors:locations:interpolations:)(_swiftEmptyArrayStorage, 0, 0, &v22);
    }

    *&v21[0] = v22;
    *(v21 + 8) = v23;
    *(&v21[1] + 1) = v24;
    v21[2] = v25;
    v21[3] = v26;
    v27[0] = v21[0];
    v27[1] = v21[1];
    v27[2] = v25;
    v27[3] = v26;
    v15 = objc_allocWithZone(type metadata accessor for Gradient.View());
    sub_8A334(v21, v20);
    v12 = Gradient.View.init(configuration:)(v27);
    v16 = UIView.Corner.small.unsafeMutableAddressor();
    (*(v5 + 16))(v7, v16, v4);
    sub_ABA630();
    (*(v5 + 8))(v7, v4);
    (*(v5 + 56))(v9, 0, 1, v4);
    sub_ABA6A0();
    sub_25F66C(v21);

    v17 = *(v2 + v10);
    *(v2 + v10) = v12;

    v11 = 0;
  }

  v18 = v11;
  return v12;
}

void sub_25EE8C()
{
  v1 = v0;
  if (*(v0 + OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_hasBeenPlayed) == 1 && (v5 = *(v0 + OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_playbackPosition), sub_471A4(), (sub_AB3900() & 1) != 0))
  {
    sub_25EF70();
    v3 = v2;
    [v2 setHidden:{0, 0, v5}];
    [*(*(v1 + OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_artworkComponent) + 112) addSubview:v3];
  }

  else
  {
    v4 = *(v0 + OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_checkmarkImageView);
    if (v4)
    {
      [v4 removeFromSuperview];
    }
  }
}

void sub_25EF70()
{
  v1 = OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_checkmarkImageView;
  v2 = *(v0 + OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_checkmarkImageView);
  if (v2)
  {
    goto LABEL_6;
  }

  v3 = objc_opt_self();
  v4 = sub_AB9260();
  if (qword_DE6AF0 != -1)
  {
    swift_once();
  }

  v5 = v0;
  v6 = [v3 imageNamed:v4 inBundle:qword_E71620 compatibleWithTraitCollection:0];

  if (v6)
  {
    v7 = objc_opt_self();
    v8 = [v7 whiteColor];
    v9 = [v6 flattenedImageWithColor:v8];
    v10 = [v9 imageWithRenderingMode:1];

    v11 = [objc_allocWithZone(UIImageView) initWithImage:v10];
    v12 = v11;
    UIView.Shadow.init(color:opacity:radius:offset:)([v7 blackColor], v15, 0.2, 3.0, 0.0, 0.0);
    UIView.shadow.setter(v15);

    v13 = *(v5 + v1);
    *(v5 + v1) = v12;

    v2 = 0;
LABEL_6:
    v14 = v2;
    return;
  }

  __break(1u);
}

char *sub_25F158()
{
  v1 = OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_durationTextStackView;
  v2 = *(v0 + OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_durationTextStackView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_durationTextStackView);
  }

  else
  {
    v4 = v0;
    type metadata accessor for TextStackView();
    v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v3 = v5;
    v6 = OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_textDrawingCache;
    v7 = *(v0 + OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_textDrawingCache);
    if (v7)
    {
      v8 = v5;
    }

    else
    {
      type metadata accessor for TextDrawing.Cache();
      swift_allocObject();
      v9 = v3;
      v10 = TextDrawing.Cache.init()();
      sub_25E028(v10);
      v7 = *(v0 + v6);
    }

    v11 = OBJC_IVAR____TtC16MusicApplication13TextStackView_textDrawingCache;
    swift_beginAccess();
    v12 = *&v3[v11];
    *&v3[v11] = v7;
    swift_retain_n();
    sub_2E6210(v12);

    TextStackView.add(_:)(*(v4 + OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_textComponents));
    v13 = *(v4 + v1);
    *(v4 + v1) = v3;

    v2 = 0;
  }

  v14 = v2;
  return v3;
}

id sub_25F294()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VideoHeaderLockupView(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for VideoHeaderLockupView(uint64_t a1)
{
  result = qword_DFAE00;
  if (!qword_DFAE00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_25F43C(uint64_t a1)
{
  sub_7D678(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

unint64_t sub_25F564()
{
  result = qword_DFAE10;
  if (!qword_DFAE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DFAE10);
  }

  return result;
}

double sub_25F5B8(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_artworkCachingReference) = a1;

  *(*(v1 + OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_artworkComponent) + 16) = a1;

  return result;
}

double sub_25F61C(void *a1)
{

  sub_74DD4(a1);

  return result;
}

uint64_t sub_25F6C0()
{
  v0 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody];
  v1 = objc_opt_self();
  v2 = [v1 whiteColor];
  v3 = [v1 clearColor];
  *&v10[0] = v2;
  *(&v10[0] + 1) = v3;
  v10[1] = xmmword_AFF7A0;
  v11 = 0;
  v12 = 0;
  v13 = v0;
  v14 = 1;
  v15 = xmmword_B03470;
  type metadata accessor for TextStackView.Component();
  swift_allocObject();
  v4 = TextStackView.Component.init(identifier:labelProperties:)(0x6E6F697461727564, 0xE800000000000000, v10);
  v16[0] = v2;
  v16[1] = v3;
  v17 = xmmword_AFF7A0;
  v18 = 0;
  v19 = 0;
  v20 = v0;
  v21 = 1;
  v22 = xmmword_B03470;
  v5 = v2;
  v6 = v3;
  v7 = v0;
  sub_2F118(v10, v9);
  sub_2F174(v16);

  return v4;
}

void sub_25F824()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_lockupImageArtworkCatalog) = 0;
  v2 = OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_artworkCornerTreatment;
  v3 = sub_ABA680();
  (*(*(v3 - 8) + 56))(v1 + v2, 1, 1, v3);
  v4 = (v1 + OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_artworkPlaceholder);
  *v4 = 0u;
  v4[1] = 0u;
  v4[2] = 0u;
  v5 = (v1 + OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_playButtonHandler);
  *v5 = 0;
  v5[1] = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_displayStyle) = 0;
  v6 = v1 + OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_duration;
  *v6 = 0;
  *(v6 + 8) = 1;
  *(v1 + OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_playbackPosition) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_hasBeenPlayed) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_isBlurBackgroundEnabled) = 0;
  v7 = OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_artworkComponent;
  type metadata accessor for ArtworkComponentImageView();
  v8 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  _s9ComponentCMa(0);
  swift_allocObject();
  v9 = sub_80104(v8);

  *(v1 + v7) = v9;
  *(v1 + OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_artworkCachingReference) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_textDrawingCache) = 0;
  v10 = OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_playButton;
  type metadata accessor for VideoHeaderPlayButton();
  *(v1 + v10) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v11 = OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_textComponents;
  *(v1 + v11) = sub_25F6C0();
  *(v1 + OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_durationTextStackView) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_tapGestureRecognizerHandler) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_gradientView) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_progressView) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_checkmarkImageView) = 0;
  sub_ABAFD0();
  __break(1u);
}

uint64_t sub_25FA30()
{
  swift_unknownObjectUnownedDestroy();

  return swift_deallocObject();
}

uint64_t sub_25FA68()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_25FAA8@<X0>(uint64_t a1@<X8>)
{
  v6[0] = [v1 innermostModelObject];
  sub_25CED8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFAE18, &qword_B06290);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v10 = 0;
    memset(v9, 0, sizeof(v9));
  }

  sub_2605B0(v9, v6);
  v3 = v7;
  if (v7)
  {
    v4 = v8;
    __swift_project_boxed_opaque_existential_1(v6, v7);
    (*(v4 + 8))(v3, v4);
    __swift_destroy_boxed_opaque_existential_0(v6);
  }

  else
  {
    sub_12E1C(v6, &qword_DFAE20, &qword_B06298);
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return sub_12E1C(v9, &qword_DFAE20, &qword_B06298);
}

uint64_t sub_25FBCC(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  sub_AB35C0();
  __chkstk_darwin();
  sub_AB9250();
  __chkstk_darwin();
  sub_AB91E0();
  sub_AB3550();
  sub_AB9320();
  result = a2(a1);
  if (result)
  {
    v5 = 0;
    v6 = *(result + 16);
    v7 = _swiftEmptyArrayStorage;
LABEL_3:
    v8 = 16 * v5 + 40;
    while (1)
    {
      if (v6 == v5)
      {

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFDE70, &unk_AF7D30);
        sub_2ECD4();
        v16 = sub_AB9140();

        return v16;
      }

      if (v5 >= *(result + 16))
      {
        break;
      }

      ++v5;
      v9 = v8 + 16;
      v10 = *(result + v8);
      v8 += 16;
      if (v10)
      {
        v11 = result;
        v12 = *(result + v9 - 24);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_6B0F0(0, *(v7 + 2) + 1, 1, v7);
        }

        v14 = *(v7 + 2);
        v13 = *(v7 + 3);
        if (v14 >= v13 >> 1)
        {
          v7 = sub_6B0F0((v13 > 1), v14 + 1, 1, v7);
        }

        result = v11;
        *(v7 + 2) = v14 + 1;
        v15 = &v7[16 * v14];
        *(v15 + 4) = v12;
        *(v15 + 5) = v10;
        goto LABEL_3;
      }
    }

    __break(1u);
  }

  else
  {

    return 0;
  }

  return result;
}

uint64_t sub_25FE30(void *a1)
{
  sub_AB35C0();
  __chkstk_darwin();
  sub_AB9250();
  [a1 hasVideo];
  sub_AB91E0();
  sub_AB3550();
  v2 = sub_AB9320();
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFAE28, &qword_B063E8);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_AF85F0;
  *(v5 + 32) = v2;
  *(v5 + 40) = v4;
  v6 = [a1 artist];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 name];
    if (v8)
    {
      v9 = v8;
      v10 = sub_AB92A0();
      v12 = v11;
    }

    else
    {

      v10 = 0;
      v12 = 0;
    }

    *(v5 + 48) = v10;
    *(v5 + 56) = v12;
  }

  else
  {
    *(v5 + 48) = 0;
    *(v5 + 56) = 0;
  }

  return v5;
}

id sub_26007C@<X0>(void *a1@<X8>)
{
  v2 = *v1;
  a1[3] = &_s11SongAdapterVN;
  a1[4] = &off_D05B90;
  *a1 = v2;
  return v2;
}

uint64_t sub_26009C(void *a1)
{
  sub_AB35C0();
  __chkstk_darwin();
  sub_AB9250();
  __chkstk_darwin();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFAE28, &qword_B063E8);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_AF85F0;
  sub_AB91E0();
  sub_AB3550();
  *(v2 + 32) = sub_AB9320();
  *(v2 + 40) = v3;
  v4 = [a1 artist];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 name];
    if (v6)
    {
      v7 = v6;
      v8 = sub_AB92A0();
      v10 = v9;
    }

    else
    {

      v8 = 0;
      v10 = 0;
    }

    *(v2 + 48) = v8;
    *(v2 + 56) = v10;
  }

  else
  {
    *(v2 + 48) = 0;
    *(v2 + 56) = 0;
  }

  return v2;
}

id sub_260298@<X0>(void *a1@<X8>)
{
  v2 = *v1;
  a1[3] = &_s12AlbumAdapterVN;
  a1[4] = &off_D05BB8;
  *a1 = v2;
  return v2;
}

uint64_t sub_2602B8(void *a1)
{
  sub_AB35C0();
  __chkstk_darwin();
  sub_AB9250();
  __chkstk_darwin();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFAE28, &qword_B063E8);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_AF85F0;
  sub_AB91E0();
  sub_AB3550();
  *(v2 + 32) = sub_AB9320();
  *(v2 + 40) = v3;
  v4 = [a1 curator];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 name];
    if (v6)
    {
      v7 = v6;
      v8 = sub_AB92A0();
      v10 = v9;

      goto LABEL_7;
    }
  }

  v11 = [a1 ownerName];
  if (!v11)
  {
    v8 = 0;
    v10 = 0;
    goto LABEL_9;
  }

  v7 = v11;
  v8 = sub_AB92A0();
  v10 = v12;
LABEL_7:

LABEL_9:
  *(v2 + 48) = v8;
  *(v2 + 56) = v10;
  return v2;
}

id sub_2604C8@<X0>(void *a1@<X8>)
{
  v2 = *v1;
  a1[3] = &_s15PlaylistAdapterVN;
  a1[4] = &off_D05BE0;
  *a1 = v2;
  return v2;
}

uint64_t sub_2604E8(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = [*v3 *a3];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = sub_AB92A0();

  return v6;
}

uint64_t sub_260550()
{
  v1 = [*v0 artworkCatalog];

  return Artwork.Content.init(catalog:background:)(v1, 0);
}

id sub_260590@<X0>(void *a1@<X8>)
{
  v2 = *v1;
  a1[3] = &_s19RadioStationAdapterVN;
  a1[4] = &off_D05C08;
  *a1 = v2;
  return v2;
}

uint64_t sub_2605B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFAE20, &qword_B06298);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_260658(uint64_t *a1, int a2)
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

uint64_t sub_2606A0(uint64_t result, int a2, int a3)
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

uint64_t sub_2606EC()
{
  sub_AB35C0();
  __chkstk_darwin();
  sub_AB9250();
  __chkstk_darwin();
  sub_AB91E0();
  sub_AB3550();
  sub_AB9320();
  sub_AB91E0();
  sub_AB3550();
  v0 = sub_AB9320();
  v10[0] = v0;
  v10[1] = v1;
  if (v1)
  {
    v2 = v0;
    v3 = v1;

    v4 = _swiftEmptyArrayStorage;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_6B0F0(0, _swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
    }

    v6 = *(v4 + 2);
    v5 = *(v4 + 3);
    if (v6 >= v5 >> 1)
    {
      v4 = sub_6B0F0((v5 > 1), v6 + 1, 1, v4);
    }

    *(v4 + 2) = v6 + 1;
    v7 = &v4[16 * v6];
    *(v7 + 4) = v2;
    *(v7 + 5) = v3;
  }

  sub_12E1C(v10, &unk_DEE6F0, &unk_AF8970);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFDE70, &unk_AF7D30);
  sub_2ECD4();
  v8 = sub_AB9140();

  return v8;
}

unint64_t sub_26095C()
{
  result = qword_DFAE30;
  if (!qword_DFAE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DFAE30);
  }

  return result;
}

double sub_2609C8()
{
  v1 = v0;
  v7.receiver = v0;
  v7.super_class = type metadata accessor for JSLoadingViewController(0);
  objc_msgSendSuper2(&v7, "viewDidLoad");
  sub_261A4C();
  sub_2620E4();
  v2 = *JSBridge.didFailInitializationDidChange.unsafeMutableAddressor();
  v3 = *JSBridge.shared.unsafeMutableAddressor();
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for NotificationObserver();
  swift_allocObject();
  v5 = v3;
  *&v1[OBJC_IVAR____TtC16MusicApplication23JSLoadingViewController_scriptingBridgeDidFailInitializationDidChangeObserver] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v2, v3, 1, 1, sub_262B88, v4);

  return result;
}

void sub_260AC4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_2610D0(1);
  }
}

id sub_260B64()
{
  v20.receiver = v0;
  v20.super_class = type metadata accessor for JSLoadingViewController(0);
  objc_msgSendSuper2(&v20, "viewDidLayoutSubviews");
  v1 = sub_4D3DD0();
  [v1 adjustedContentInset];
  v3 = v2;

  v4 = OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController____lazy_storage___scrollView;
  [*&v0[OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController____lazy_storage___scrollView] contentSize];
  v6 = v5;
  [*&v0[v4] bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  sub_AB9EC0();
  v16 = v14 - (v6 + v15);
  v17 = v3 + v6 + v10;
  v18 = *&v0[OBJC_IVAR____TtC16MusicApplication23JSLoadingViewController_loadingView];
  if (v18)
  {
    [v18 setFrame:{v8, v17, v12, v16}];
  }

  result = *&v0[OBJC_IVAR____TtC16MusicApplication23JSLoadingViewController_errorMessageView];
  if (result)
  {
    return [result setFrame:{v8, v17, v12, v16}];
  }

  return result;
}

void sub_260CE8(__n128 a1)
{
  v2 = v1;
  v3 = sub_4D3DD0();
  [v3 contentSize];

  sub_4D55E0();
  [*&v2[OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController____lazy_storage___scrollView] contentSize];
  v7 = v4;
  if (sub_AB38D0())
  {
    v5 = [v2 view];
    if (v5)
    {
      v6 = v5;
      [v5 setNeedsLayout];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_260E18(char a1)
{
  v2 = v1[OBJC_IVAR____TtC16MusicApplication23JSLoadingViewController_isAllowedToShowLoadingView];
  v1[OBJC_IVAR____TtC16MusicApplication23JSLoadingViewController_isAllowedToShowLoadingView] = a1;
  if (v2 != (a1 & 1))
  {
    v3 = *&v1[OBJC_IVAR____TtC16MusicApplication23JSLoadingViewController_loadingView];
    if (v3)
    {
      v4 = objc_opt_self();
      v5 = swift_allocObject();
      *(v5 + 16) = v3;
      *(v5 + 24) = v1;
      v9[4] = sub_2629D0;
      v9[5] = v5;
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 1107296256;
      v9[2] = sub_1B5EB4;
      v9[3] = &block_descriptor_161_1;
      v6 = _Block_copy(v9);
      v7 = v3;
      v8 = v1;

      [v4 animateWithDuration:v6 animations:0.2];
      _Block_release(v6);
    }

    else
    {

      sub_2610D0(1);
    }
  }
}

void sub_260F74(char a1)
{
  v2 = v1[OBJC_IVAR____TtC16MusicApplication23JSLoadingViewController_isAllowedToShowErrorMessageView];
  v1[OBJC_IVAR____TtC16MusicApplication23JSLoadingViewController_isAllowedToShowErrorMessageView] = a1;
  if (v2 != (a1 & 1))
  {
    v3 = *&v1[OBJC_IVAR____TtC16MusicApplication23JSLoadingViewController_errorMessageView];
    if (v3)
    {
      v4 = objc_opt_self();
      v5 = swift_allocObject();
      *(v5 + 16) = v3;
      *(v5 + 24) = v1;
      v9[4] = sub_262BA4;
      v9[5] = v5;
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 1107296256;
      v9[2] = sub_1B5EB4;
      v9[3] = &block_descriptor_155_0;
      v6 = _Block_copy(v9);
      v7 = v3;
      v8 = v1;

      [v4 animateWithDuration:v6 animations:0.2];
      _Block_release(v6);
    }

    else
    {

      sub_2610D0(1);
    }
  }
}

void sub_2610D0(char a1)
{
  v2 = v1;
  sub_AB35C0();
  __chkstk_darwin();
  sub_AB9250();
  __chkstk_darwin();
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  static ApplicationCapabilities.shared.getter(v59);
  sub_70C54(v59);
  v6 = v59[1];
  v7 = JSBridge.shared.unsafeMutableAddressor();
  v8 = *&stru_108.sectname[swift_isaMask & **v7];
  v9 = *v7;
  v10 = v8();

  if ((v10 & 1) == 0 || (v6 & 1) == 0)
  {
    v26 = OBJC_IVAR____TtC16MusicApplication23JSLoadingViewController_loadingView;
    if (!*&v2[OBJC_IVAR____TtC16MusicApplication23JSLoadingViewController_loadingView])
    {
      v28 = OBJC_IVAR____TtC16MusicApplication23JSLoadingViewController_errorMessageView;
      v29 = *&v2[OBJC_IVAR____TtC16MusicApplication23JSLoadingViewController_errorMessageView];
      *(v4 + 16) = v29;
      *&v2[v28] = 0;

      sub_AB91E0();
      sub_AB3550();
      v30 = sub_AB9320();
      v32 = v31;
      v33 = objc_allocWithZone(type metadata accessor for LoadingView());
      LOBYTE(aBlock) = 0;
      v16 = LoadingView.init(title:style:usesSubtitleTextColor:)(v30, v32, 0x100000000, 1);
      v24 = *&v2[v26];
      *&v2[v26] = v16;
      v34 = v16;
      v25 = &OBJC_IVAR____TtC16MusicApplication23JSLoadingViewController_isAllowedToShowLoadingView;
      goto LABEL_13;
    }

LABEL_9:
    v27 = 0;
LABEL_10:
    if (!*(v4 + 16))
    {
      goto LABEL_30;
    }

    v16 = 0;
LABEL_14:
    if ((a1 & 1) == 0)
    {
      [*(v4 + 16) removeFromSuperview];
      v16 = *(v5 + 16);
    }

    if (v16)
    {
      v36 = v16;
      v37 = v36;
      if ((v27 & 1) == 0)
      {
        [v36 setAlpha:0.0];
      }

      v38 = sub_4D3DD0();
      v39 = v38;
      v40 = *&v38[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController10ScrollView_backgroundView];
      if (v40)
      {
        v41 = v40;

        [*&v2[OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController____lazy_storage___scrollView] insertSubview:v37 aboveSubview:v41];
        v37 = v41;
      }

      else
      {

        [*&v2[OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController____lazy_storage___scrollView] insertSubview:v37 atIndex:0];
      }
    }

    v42 = [v2 view];
    if (!v42)
    {
      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    v43 = v42;
    [v42 setNeedsLayout];

    if (a1)
    {
      if (v27)
      {
        v44 = *(v5 + 16);
        if (v44)
        {
          [v44 setAlpha:0.0];
        }
      }

      v45 = [v2 view];
      if (v45)
      {
        v46 = v45;
        [v45 layoutIfNeeded];

        v47 = objc_opt_self();
        v48 = swift_allocObject();
        *(v48 + 16) = v27;
        *(v48 + 24) = v5;
        *(v48 + 32) = v4;
        v57 = sub_26295C;
        v58 = v48;
        aBlock = _NSConcreteStackBlock;
        v54 = 1107296256;
        v55 = sub_1B5EB4;
        v56 = &block_descriptor_84;
        v49 = _Block_copy(&aBlock);

        v57 = sub_262980;
        v58 = v4;
        aBlock = _NSConcreteStackBlock;
        v54 = 1107296256;
        v55 = sub_1811AC;
        v56 = &block_descriptor_145_1;
        v50 = _Block_copy(&aBlock);

        [v47 animateWithDuration:v49 animations:v50 completion:0.2];
        _Block_release(v50);
        _Block_release(v49);
        goto LABEL_30;
      }

      goto LABEL_32;
    }

LABEL_30:

    return;
  }

  v11 = OBJC_IVAR____TtC16MusicApplication23JSLoadingViewController_errorMessageView;
  if (*&v2[OBJC_IVAR____TtC16MusicApplication23JSLoadingViewController_errorMessageView])
  {
    goto LABEL_9;
  }

  v12 = OBJC_IVAR____TtC16MusicApplication23JSLoadingViewController_loadingView;
  v13 = *&v2[OBJC_IVAR____TtC16MusicApplication23JSLoadingViewController_loadingView];
  *(v4 + 16) = v13;
  *&v2[v12] = 0;

  v14 = objc_allocWithZone(_UIContentUnavailableView);
  v15 = sub_AB9260();
  v16 = [v14 initWithFrame:v15 title:0 style:{0.0, 0.0, 0.0, 0.0}];

  if (v16)
  {
    v17 = qword_DE6C58;
    v18 = v16;
    if (v17 != -1)
    {
      v51 = v18;
      swift_once();
      v18 = v51;
    }

    v19 = v18;
    [v18 setBackgroundColor:{qword_E71898, v11}];
    sub_AB91E0();
    sub_AB3550();
    sub_AB9320();
    v20 = sub_AB9260();

    [v19 setMessage:v20];

    sub_AB91E0();
    sub_AB3550();
    sub_AB9320();
    v21 = sub_AB9260();

    [v19 setButtonTitle:v21];

    v22 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v57 = sub_262988;
    v58 = v22;
    aBlock = _NSConcreteStackBlock;
    v54 = 1107296256;
    v55 = sub_1B5EB4;
    v56 = &block_descriptor_149;
    v23 = _Block_copy(&aBlock);

    [v19 setButtonAction:v23];
    _Block_release(v23);
    v24 = *&v2[v52];
    *&v2[v52] = v16;
    v25 = &OBJC_IVAR____TtC16MusicApplication23JSLoadingViewController_isAllowedToShowErrorMessageView;
LABEL_13:

    v35 = *(v5 + 16);
    *(v5 + 16) = v16;

    v27 = v2[*v25];
    if (v16)
    {
      goto LABEL_14;
    }

    goto LABEL_10;
  }

LABEL_33:
  __break(1u);
}

void sub_2618CC(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_2620E4();
    v3 = JSBridge.shared.unsafeMutableAddressor();
    v4 = *(&stru_B8.offset + (swift_isaMask & **v3));
    v5 = *v3;
    v4();
  }
}

id sub_261974(char a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    swift_beginAccess();
    v5 = *(a2 + 16);
    if (v5)
    {
      [v5 setAlpha:1.0];
    }
  }

  swift_beginAccess();
  result = *(a3 + 16);
  if (result)
  {
    return [result setAlpha:0.0];
  }

  return result;
}

id sub_2619FC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = *(a2 + 16);
  if (result)
  {
    return [result removeFromSuperview];
  }

  return result;
}

void sub_261A4C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE9D30, &unk_AF79A0);
  __chkstk_darwin();
  v3 = &v26 - v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E01230, "|,\r");
  __chkstk_darwin();
  v5 = &v26 - v4;
  v6 = sub_AB3430();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v26 - v10;
  sub_AB3420();
  v12 = JSBridge.shared.unsafeMutableAddressor();
  v13 = *(&stru_B8.reloff + (swift_isaMask & **v12));
  v14 = *v12;
  v13();

  v15 = *(v7 + 48);
  if (v15(v5, 1, v6) == 1)
  {
    (*(v7 + 16))(v9, v11, v6);
    if (v15(v5, 1, v6) != 1)
    {
      sub_12E1C(v5, &unk_E01230, "|,\r");
    }
  }

  else
  {
    (*(v7 + 32))(v9, v5, v6);
  }

  sub_AB3340();
  v17 = 1.0 - v16;
  if (1.0 - v16 <= 0.0)
  {
    v24 = *(v1 + OBJC_IVAR____TtC16MusicApplication23JSLoadingViewController_errorMessageTask);
    *(v1 + OBJC_IVAR____TtC16MusicApplication23JSLoadingViewController_errorMessageTask) = 0;
    if (v24)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF3F90, &unk_AF98B0);
      sub_AB9A00();
    }

    sub_260F74(1);
    v25 = *(v7 + 8);
    v25(v9, v6);
    v25(v11, v6);
  }

  else
  {
    v18 = sub_AB9990();
    (*(*(v18 - 8) + 56))(v3, 1, 1, v18);
    v19 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v20 = swift_allocObject();
    *(v20 + 16) = &unk_B064E8;
    *(v20 + 24) = v19;
    v21 = static Task<>.delayed(by:priority:task:)(v3, &unk_B064F0, v20, &type metadata for () + 8, v17);
    sub_12E1C(v3, &qword_DE9D30, &unk_AF79A0);

    v22 = *(v1 + OBJC_IVAR____TtC16MusicApplication23JSLoadingViewController_errorMessageTask);
    *(v1 + OBJC_IVAR____TtC16MusicApplication23JSLoadingViewController_errorMessageTask) = v21;
    if (v22)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF3F90, &unk_AF98B0);
      sub_AB9A00();
    }

    v23 = *(v7 + 8);
    v23(v9, v6);
    v23(v11, v6);
  }
}

uint64_t sub_261ECC(uint64_t a1)
{
  *(v1 + 40) = a1;
  sub_AB9940();
  *(v1 + 48) = sub_AB9930();
  v3 = sub_AB98B0();

  return _swift_task_switch(sub_261F64, v3, v2);
}

uint64_t sub_261F64()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_260F74(1);
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_261FFC(uint64_t a1, int *a2)
{
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = sub_E0564;

  return v5();
}

double sub_2620E4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE9D30, &unk_AF79A0);
  __chkstk_darwin();
  v2 = &v9 - v1;
  sub_260E18(0);
  v3 = sub_AB9990();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = swift_allocObject();
  *(v5 + 16) = &unk_B064C8;
  *(v5 + 24) = v4;
  v6 = static Task<>.delayed(by:priority:task:)(v2, &unk_B064D8, v5, &type metadata for () + 8, 1.0);
  sub_12E1C(v2, &qword_DE9D30, &unk_AF79A0);

  v8 = *(v0 + OBJC_IVAR____TtC16MusicApplication23JSLoadingViewController_loadingIndicatorTask);
  *(v0 + OBJC_IVAR____TtC16MusicApplication23JSLoadingViewController_loadingIndicatorTask) = v6;
  if (v8)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF3F90, &unk_AF98B0);
    sub_AB9A00();
  }

  return result;
}

uint64_t sub_2622AC(uint64_t a1)
{
  *(v1 + 40) = a1;
  sub_AB9940();
  *(v1 + 48) = sub_AB9930();
  v3 = sub_AB98B0();

  return _swift_task_switch(sub_262344, v3, v2);
}

uint64_t sub_262344()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_260E18(1);
  }

  v3 = *(v0 + 8);

  return v3();
}

double sub_262414()
{

  return result;
}

id sub_262484()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSLoadingViewController(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for JSLoadingViewController(uint64_t a1)
{
  result = qword_DFAE98;
  if (!qword_DFAE98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2625E4()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_26261C()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_17BD0;

  return sub_2622AC(v0);
}

uint64_t sub_2626AC()
{

  return swift_deallocObject();
}

uint64_t sub_2626E4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_17CF8;

  return sub_261FFC(a1, v4);
}

uint64_t sub_26279C()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_17CF8;

  return sub_261ECC(v0);
}

uint64_t sub_26282C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_17BD0;

  return sub_261FFC(a1, v4);
}

uint64_t sub_2628E4()
{

  return swift_deallocObject();
}

uint64_t sub_26291C()
{

  return swift_deallocObject();
}

double block_copy_helper_84(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_262990()
{

  return swift_deallocObject();
}

id sub_2629D4()
{
  v1 = 0.0;
  if (*(*(v0 + 24) + OBJC_IVAR____TtC16MusicApplication23JSLoadingViewController_isAllowedToShowLoadingView))
  {
    v1 = 1.0;
  }

  return [*(v0 + 16) setAlpha:v1];
}

void sub_262A00()
{
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = v1;
  [v1 setNeedsLayout];

  v3 = sub_4D3DD0();
  [v3 contentOffset];
  v5 = v4;
  v7 = v6;

  v8 = [v0 view];
  if (!v8)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v9 = v8;
  [v8 bounds];
  v11 = v10;
  v13 = v12;

  v14 = &v0[OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController_lastKnownVisibleBounds];
  v15 = *&v0[OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController_lastKnownVisibleBounds];
  v16 = *&v0[OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController_lastKnownVisibleBounds + 8];
  v17 = *&v0[OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController_lastKnownVisibleBounds + 16];
  v18 = *&v0[OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController_lastKnownVisibleBounds + 24];
  *v14 = v5;
  *(v14 + 1) = v7;
  *(v14 + 2) = v11;
  *(v14 + 3) = v13;

  sub_4DB494(v15, v16, v17, v18);
}

id sub_262AEC(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC16MusicApplication23JSLoadingViewController_loadingView] = 0;
  *&v1[OBJC_IVAR____TtC16MusicApplication23JSLoadingViewController_errorMessageView] = 0;
  *&v1[OBJC_IVAR____TtC16MusicApplication23JSLoadingViewController_scriptingBridgeDidFailInitializationDidChangeObserver] = 0;
  v1[OBJC_IVAR____TtC16MusicApplication23JSLoadingViewController_isAllowedToShowLoadingView] = 0;
  v1[OBJC_IVAR____TtC16MusicApplication23JSLoadingViewController_isAllowedToShowErrorMessageView] = 0;
  *&v1[OBJC_IVAR____TtC16MusicApplication23JSLoadingViewController_errorMessageTask] = 0;
  *&v1[OBJC_IVAR____TtC16MusicApplication23JSLoadingViewController_loadingIndicatorTask] = 0;
  v4.receiver = v1;
  v4.super_class = type metadata accessor for JSLoadingViewController(0);
  return objc_msgSendSuper2(&v4, "initWithCoder:", a1);
}

char *sub_262BBC(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = &v4[OBJC_IVAR____TtC16MusicApplication18GridItemButtonCell_buttonTitle];
  *v10 = 0;
  v10[1] = 0;
  v11 = &v4[OBJC_IVAR____TtC16MusicApplication18GridItemButtonCell_buttonSubtitle];
  *v11 = 0;
  v11[1] = 0;
  v12 = &v4[OBJC_IVAR____TtC16MusicApplication18GridItemButtonCell_buttonHandler];
  *v12 = 0;
  v12[1] = 0;
  v4[OBJC_IVAR____TtC16MusicApplication18GridItemButtonCell_displayStyle] = 0;
  v4[OBJC_IVAR____TtC16MusicApplication18GridItemButtonCell_buttonHorizontalAlignment] = 1;
  v13 = OBJC_IVAR____TtC16MusicApplication18GridItemButtonCell_actionButton;
  v14 = type metadata accessor for SubtitledButton();
  *&v4[v13] = [objc_allocWithZone(v14) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v22.receiver = v4;
  v22.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v22, "initWithFrame:", a1, a2, a3, a4);
  v16 = [v15 contentView];
  v17 = OBJC_IVAR____TtC16MusicApplication18GridItemButtonCell_actionButton;
  [v16 addSubview:*&v15[OBJC_IVAR____TtC16MusicApplication18GridItemButtonCell_actionButton]];
  v18 = *&v15[v17];
  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v20 = v18;
  ControlEventHandling<>.on(_:handler:)(64, sub_2641BC, v19, v14);

  return v15;
}

void sub_262D64(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC16MusicApplication18GridItemButtonCell_buttonHandler);
    if (v4)
    {
      v5 = *(Strong + OBJC_IVAR____TtC16MusicApplication18GridItemButtonCell_buttonHandler + 8);

      v4(v6);
      sub_17654(v4, v5);
    }
  }
}

double sub_262ECC(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC16MusicApplication18GridItemButtonCell_buttonTitle);
  v4 = *(v2 + OBJC_IVAR____TtC16MusicApplication18GridItemButtonCell_buttonTitle);
  v5 = *(v2 + OBJC_IVAR____TtC16MusicApplication18GridItemButtonCell_buttonTitle + 8);
  *v3 = a1;
  v3[1] = a2;
  sub_262F1C(v4, v5);

  return result;
}

uint64_t sub_262F1C(uint64_t result, uint64_t a2)
{
  v4 = &v2[OBJC_IVAR____TtC16MusicApplication18GridItemButtonCell_buttonTitle];
  v5 = *&v2[OBJC_IVAR____TtC16MusicApplication18GridItemButtonCell_buttonTitle + 8];
  if (v5)
  {
    if (a2)
    {
      v6 = result;
      result = *v4;
      if (*v4 == v6 && v5 == a2)
      {
        return result;
      }

      result = sub_ABB3C0();
      if (result)
      {
        return result;
      }
    }

    v8 = *&v2[OBJC_IVAR____TtC16MusicApplication18GridItemButtonCell_buttonHandler] == 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v8 = 1;
  }

  v9 = OBJC_IVAR____TtC16MusicApplication18GridItemButtonCell_actionButton;
  [*&v2[OBJC_IVAR____TtC16MusicApplication18GridItemButtonCell_actionButton] setHidden:v8];
  v10 = *&v2[v9];
  if (v4[1])
  {
    v11 = *v4;
    v12 = v4[1];
  }

  else
  {
    v11 = 0;
    v12 = 0xE000000000000000;
  }

  v13 = &v10[OBJC_IVAR____TtC16MusicApplication15SubtitledButton_title];
  v14 = *&v10[OBJC_IVAR____TtC16MusicApplication15SubtitledButton_title];
  v15 = *&v10[OBJC_IVAR____TtC16MusicApplication15SubtitledButton_title + 8];
  *v13 = v11;
  v13[1] = v12;
  if (v11 == v14 && v12 == v15)
  {
  }

  else
  {
    v17 = sub_ABB3C0();

    if ((v17 & 1) == 0)
    {
      v18 = v10;
      sub_458374();
    }
  }

  return [v2 setNeedsLayout];
}

double sub_263108(uint64_t a1, uint64_t a2)
{
  v4 = &v2[OBJC_IVAR____TtC16MusicApplication18GridItemButtonCell_buttonSubtitle];
  v5 = *&v2[OBJC_IVAR____TtC16MusicApplication18GridItemButtonCell_buttonSubtitle];
  v6 = *&v2[OBJC_IVAR____TtC16MusicApplication18GridItemButtonCell_buttonSubtitle + 8];
  *v4 = a1;
  *(v4 + 1) = a2;
  if (a2)
  {
    if (v6)
    {
      if (v5 == a1 && v6 == a2)
      {
        goto LABEL_11;
      }

      v8 = a2;
      v9 = sub_ABB3C0();
      a2 = v8;
      if (v9)
      {
        goto LABEL_11;
      }
    }
  }

  else if (!v6)
  {
    return result;
  }

  v10 = *&v2[OBJC_IVAR____TtC16MusicApplication18GridItemButtonCell_actionButton];
  v11 = a2;

  v12 = v10;
  sub_456244(a1, v11);

  [v2 setNeedsLayout];
LABEL_11:

  return result;
}

void sub_2631F4(char a1)
{
  if (*(v1 + OBJC_IVAR____TtC16MusicApplication18GridItemButtonCell_displayStyle))
  {
    v3 = 0x656B6F727473;
  }

  else
  {
    v3 = 1819044198;
  }

  if (*(v1 + OBJC_IVAR____TtC16MusicApplication18GridItemButtonCell_displayStyle))
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  v5 = a1 & 1;
  *(v1 + OBJC_IVAR____TtC16MusicApplication18GridItemButtonCell_displayStyle) = v5;
  if (v5)
  {
    v6 = 0x656B6F727473;
  }

  else
  {
    v6 = 1819044198;
  }

  if (v5)
  {
    v7 = 0xE600000000000000;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  if (v3 == v6 && v4 == v7)
  {
  }

  else
  {
    v9 = sub_ABB3C0();

    if ((v9 & 1) == 0)
    {

      sub_263DA8();
    }
  }
}

void sub_2632E0(char a1)
{
  if (v1[OBJC_IVAR____TtC16MusicApplication18GridItemButtonCell_buttonHorizontalAlignment])
  {
    v3 = 0x64657265746E6563;
  }

  else
  {
    v3 = 1952867692;
  }

  if (v1[OBJC_IVAR____TtC16MusicApplication18GridItemButtonCell_buttonHorizontalAlignment])
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  v5 = a1 & 1;
  v1[OBJC_IVAR____TtC16MusicApplication18GridItemButtonCell_buttonHorizontalAlignment] = v5;
  if (v5)
  {
    v6 = 0x64657265746E6563;
  }

  else
  {
    v6 = 1952867692;
  }

  if (v5)
  {
    v7 = 0xE800000000000000;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  if (v3 == v6 && v4 == v7)
  {
  }

  else
  {
    v9 = sub_ABB3C0();

    if ((v9 & 1) == 0)
    {

      [v1 setNeedsLayout];
    }
  }
}

void sub_263434()
{
  v28.receiver = v0;
  v28.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v28, "layoutSubviews");
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = [v0 traitCollection];
  [v9 displayScale];
  [v0 music_inheritedLayoutInsets];
  v11 = v10;
  v13 = v12;
  [v0 effectiveUserInterfaceLayoutDirection];
  v27 = v2;
  v14 = UIEdgeInsetsInsetRect(v2, v4, v6, v8, v11, v13);
  v16 = v15;
  v18 = v17;
  v20 = v19;
  if ([v9 horizontalSizeClass] == &dword_0 + 2)
  {
    v21 = v18 * 0.5;
  }

  else
  {
    v21 = v18;
  }

  v22 = v14;
  v23 = v16;
  v24 = v20;
  CGRectGetWidth(*(&v21 - 2));
  if (v0[OBJC_IVAR____TtC16MusicApplication18GridItemButtonCell_buttonHorizontalAlignment] == 1)
  {
  }

  else
  {
    v25 = sub_ABB3C0();

    if ((v25 & 1) == 0)
    {
      v29.origin.x = v27;
      v29.origin.y = v4;
      v29.size.width = v6;
      v29.size.height = v8;
      CGRectGetMinX(v29);
      goto LABEL_9;
    }
  }

  sub_ABA470();
LABEL_9:
  v26 = *&v0[OBJC_IVAR____TtC16MusicApplication18GridItemButtonCell_actionButton];
  sub_ABA490();
  [v26 setFrame:?];
}

uint64_t sub_263774(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x64657265746E6563;
  }

  else
  {
    v3 = 1952867692;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (*a2)
  {
    v5 = 0x64657265746E6563;
  }

  else
  {
    v5 = 1952867692;
  }

  if (*a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_ABB3C0();
  }

  return v8 & 1;
}

Swift::Int sub_263814()
{
  sub_ABB5C0();
  sub_AB93F0();

  return sub_ABB610();
}

double sub_263890(uint64_t a1)
{
  sub_AB93F0();

  return result;
}

Swift::Int sub_2638F8(uint64_t a1)
{
  sub_ABB5C0();
  sub_AB93F0();

  return sub_ABB610();
}

void sub_26397C(uint64_t *a1@<X8>)
{
  v2 = 1952867692;
  if (*v1)
  {
    v2 = 0x64657265746E6563;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_2639B4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x656B6F727473;
  }

  else
  {
    v3 = 1819044198;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (*a2)
  {
    v5 = 0x656B6F727473;
  }

  else
  {
    v5 = 1819044198;
  }

  if (*a2)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_ABB3C0();
  }

  return v8 & 1;
}

Swift::Int sub_263A50()
{
  sub_ABB5C0();
  sub_AB93F0();

  return sub_ABB610();
}

double sub_263AC8(uint64_t a1)
{
  sub_AB93F0();

  return result;
}

Swift::Int sub_263B2C(uint64_t a1)
{
  sub_ABB5C0();
  sub_AB93F0();

  return sub_ABB610();
}

void sub_263BAC(uint64_t *a1@<X0>, Swift::OpaquePointer a2@<X3>, char *a3@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v4 = a1[1];
  v8._object = v4;
  v6 = sub_ABB140(a2, v8);

  if (v6 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v6)
  {
    v7 = 0;
  }

  *a3 = v7;
}

void sub_263C08(uint64_t *a1@<X8>)
{
  v2 = 1819044198;
  if (*v1)
  {
    v2 = 0x656B6F727473;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_263CFC()
{
  result = qword_DFAF00;
  if (!qword_DFAF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DFAF00);
  }

  return result;
}

unint64_t sub_263D54()
{
  result = qword_DFAF08;
  if (!qword_DFAF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DFAF08);
  }

  return result;
}

void sub_263DA8()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC16MusicApplication18GridItemButtonCell_actionButton;
  v3 = *&v0[OBJC_IVAR____TtC16MusicApplication18GridItemButtonCell_actionButton];
  if ((v0[OBJC_IVAR____TtC16MusicApplication18GridItemButtonCell_displayStyle] & 1) == 0)
  {
    v16 = v3;
    v17 = [v1 tintColor];
    [v16 setTintColor:v17];

    v18 = *&v1[v2];
    v19 = *&v18[OBJC_IVAR____TtC16MusicApplication15MultilineButton_borderColor];
    *&v18[OBJC_IVAR____TtC16MusicApplication15MultilineButton_borderColor] = 0;
    v20 = v18;
    sub_456524(v19);

    v21 = *&v1[v2];
    v22 = objc_opt_self();
    v23 = v21;
    v24 = [v22 whiteColor];
    v15 = *&v23[OBJC_IVAR____TtC16MusicApplication15SubtitledButton_textColor];
    *&v23[OBJC_IVAR____TtC16MusicApplication15SubtitledButton_textColor] = v24;
    sub_B9A4C();
    v14 = v24;
    v25 = v23;
    if (sub_ABA790())
    {
      goto LABEL_7;
    }

LABEL_6:
    sub_458374();
    goto LABEL_7;
  }

  v4 = objc_opt_self();
  v5 = v3;
  v6 = [v4 whiteColor];
  [v5 setTintColor:v6];

  v7 = *&v1[v2];
  v8 = [v1 tintColor];
  v9 = *&v7[OBJC_IVAR____TtC16MusicApplication15MultilineButton_borderColor];
  *&v7[OBJC_IVAR____TtC16MusicApplication15MultilineButton_borderColor] = v8;
  v10 = v8;
  sub_456524(v9);

  v11 = *&v1[v2];
  v12 = [v1 tintColor];
  if (!v12)
  {
    __break(1u);
    return;
  }

  v13 = v12;
  v14 = *&v11[OBJC_IVAR____TtC16MusicApplication15SubtitledButton_textColor];
  *&v11[OBJC_IVAR____TtC16MusicApplication15SubtitledButton_textColor] = v12;
  sub_B9A4C();
  v25 = v13;
  v15 = v11;
  if ((sub_ABA790() & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
}

void sub_264010()
{
  v1 = (v0 + OBJC_IVAR____TtC16MusicApplication18GridItemButtonCell_buttonTitle);
  *v1 = 0;
  v1[1] = 0;
  v2 = (v0 + OBJC_IVAR____TtC16MusicApplication18GridItemButtonCell_buttonSubtitle);
  *v2 = 0;
  v2[1] = 0;
  v3 = (v0 + OBJC_IVAR____TtC16MusicApplication18GridItemButtonCell_buttonHandler);
  *v3 = 0;
  v3[1] = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication18GridItemButtonCell_displayStyle) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication18GridItemButtonCell_buttonHorizontalAlignment) = 1;
  v4 = OBJC_IVAR____TtC16MusicApplication18GridItemButtonCell_actionButton;
  *(v0 + v4) = [objc_allocWithZone(type metadata accessor for SubtitledButton()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  sub_ABAFD0();
  __break(1u);
}

id sub_2640F0(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC16MusicApplication18GridItemButtonCell_buttonHandler);
  v4 = *(v2 + OBJC_IVAR____TtC16MusicApplication18GridItemButtonCell_buttonHandler);
  v5 = *(v2 + OBJC_IVAR____TtC16MusicApplication18GridItemButtonCell_buttonHandler + 8);
  *v3 = a1;
  v3[1] = a2;
  sub_307CC(a1, a2);
  sub_17654(v4, v5);
  v6 = *(v2 + OBJC_IVAR____TtC16MusicApplication18GridItemButtonCell_actionButton);
  if (*(v2 + OBJC_IVAR____TtC16MusicApplication18GridItemButtonCell_buttonTitle + 8))
  {
    v7 = *v3 == 0;
  }

  else
  {
    v7 = 1;
  }

  return [v6 setHidden:v7];
}