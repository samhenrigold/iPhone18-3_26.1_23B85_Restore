void sub_296F3C(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_296D98(v4);
}

uint64_t sub_296FB8(char *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = *&a1[qword_3C9A48];
  swift_getKeyPath();
  sub_299354(&qword_3C2548, type metadata accessor for CardAuxiliaryNavigationBarViewModel, &unk_2ED1F0);
  v7 = a1;
  sub_2BE6F8();

  v8 = *(v6 + *a4);

  return v8;
}

void sub_29708C(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v4 = a1;
  sub_2970E0(v3);
}

void sub_2970E0(char a1)
{
  v2 = *(v1 + qword_3C9A48);
  if (*(v2 + OBJC_IVAR____TtC11BookStoreUI35CardAuxiliaryNavigationBarViewModel__isContentReadyForRender) == (a1 & 1))
  {
    *(v2 + OBJC_IVAR____TtC11BookStoreUI35CardAuxiliaryNavigationBarViewModel__isContentReadyForRender) = a1 & 1;
    sub_13ED14();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_299354(&qword_3C2548, type metadata accessor for CardAuxiliaryNavigationBarViewModel, &unk_2ED1F0);
    sub_2BE6E8();
  }
}

double sub_297208(void *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0xD000000000000024 && 0x80000000003083D0 == a3 || (sub_2C65B8() & 1) != 0)
  {
    sub_2BFFB8();
    swift_allocObject();
    v5 = a1;
    sub_2BFFA8();
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_299354(&qword_3C2548, type metadata accessor for CardAuxiliaryNavigationBarViewModel, &unk_2ED1F0);
    sub_2BE6E8();
  }

  return result;
}

double sub_297384(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = sub_2C58C8();
  v8 = v7;
  v9 = a3;
  v10 = a1;
  sub_297208(v9, v6, v8);

  return result;
}

void *sub_2973FC()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = result;
    v3 = *(v0 + qword_3C9A48);
    v4 = sub_2C5888();
    [v2 removeObserver:v3 forTrigger:v4];

    return swift_unknownObjectWeakAssign();
  }

  return result;
}

void sub_2974B8(void *a1)
{
  v1 = a1;
  sub_2973FC();
}

void sub_297500(void *a1)
{
  if (a1)
  {
    swift_unknownObjectWeakAssign();
    v3 = *(v1 + qword_3C9A48);
    v4 = a1;
    oslog = sub_2C5888();
    [v4 addObserver:v3 forTrigger:?];
  }

  else
  {
    if (qword_3BB770 != -1)
    {
      swift_once();
    }

    v5 = sub_2C00B8();
    sub_57AD8(v5, qword_3C2F00);
    oslog = sub_2C0098();
    v6 = sub_2C5DC8();
    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_0, oslog, v6, "Attempted to resume and rebuild with nil trigger state manager", v7, 2u);
    }
  }
}

void sub_297660(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  sub_297500(a3);
}

void sub_2976CC(void *a1, id a2)
{
  v3 = v2;
  v6 = [a2 configuration];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 cardsCanExpand];
    [v7 cardCornerRadius];
    v10 = v9;
    [v7 auxiliaryNavigationBarVisibilityOffset];
    v12 = v11;
    v13 = [v7 environment];
    if (!v13)
    {
      __break(1u);
      return;
    }

    v14 = v13;
    [v13 defaultStatusBarHeight];
    v16 = v15;

    [v7 auxiliaryNavigationBarBlurBleedHeight];
    v18 = v17;
    if (!v8)
    {
      v32 = [a1 scrollView];
      [v32 contentOffset];

      v36 = 1.0;
      if (v12 > 0.0)
      {
        *&v48 = 0;
        *(&v48 + 1) = v12;
        sub_228230(v33, v34, v35);
        sub_2C5858();
        v36 = v47 / v12;
      }

      oslog = v36;
      [v3 navigationBarHeight];
      v28 = v18 + v37;
      goto LABEL_18;
    }

    v19 = [a1 currentState];
    v20 = [a1 scrollView];
    [v19 cardViewController:a1 cardYPositionInScreenFromCardScrollView:v20 cardData:a2];

    if (v12 >= 0.0)
    {
      *&v48 = 0;
      *(&v48 + 1) = v12;
      sub_228230(v21, v22, v23);
      sub_2C5858();
      v24 = (v12 - v47) / v12;
      if (v12 <= 0.0)
      {
        v24 = 1.0;
      }

      oslog = v24;
      v25 = [a1 scrollView];
      [v25 contentOffset];

      [v7 cardExpandedTopOffset];
      v48 = xmmword_2F5DD0;
      sub_2C5858();
      v26 = v16 * oslog;
      [v3 navigationBarHeight];
      v28 = v26 + v18 + v27;
      v18 = v18 - v26;
      v10 = v10 - v10 * v47;
LABEL_18:
      v43 = v28;
      v44 = v18 * 0.5;
      v48 = *&v28;
      v49 = v18 * 0.5;
      v50 = oslog;
      v51 = v10;
      v38 = *&v3[qword_3C9A50];
      swift_getKeyPath();
      sub_299354(&qword_3BFB38, type metadata accessor for CardAuxiliaryNavigationBarBackgroundViewModel, &unk_2E9044);

      sub_2BE6F8();

      v39 = v38[3].f64[0];
      v41 = v38[2];
      v42 = v38[1];

      v40.f64[0] = v44;
      v40.f64[1] = oslog;
      if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&v43, v42), vceqq_f64(v40, v41)))) & 1) == 0 || v10 != v39)
      {

        sub_D5240(&v48);
      }

      return;
    }

    __break(1u);
  }

  else
  {
    if (sub_2BF478())
    {
      return;
    }

    if (qword_3BB770 == -1)
    {
      goto LABEL_10;
    }
  }

  swift_once();
LABEL_10:
  v29 = sub_2C00B8();
  sub_57AD8(v29, qword_3C2F00);
  osloga = sub_2C0098();
  v30 = sub_2C5DC8();
  if (os_log_type_enabled(osloga, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_0, osloga, v30, "Cannot position background without configuration", v31, 2u);
  }
}

void sub_297BC0(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  swift_unknownObjectRetain();
  v7 = a1;
  sub_2976CC(v6, a4);

  swift_unknownObjectRelease();
}

uint64_t sub_297C40(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_88BE0;

  return v6();
}

uint64_t sub_297D28(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_7100C;

  return v7();
}

uint64_t dispatch thunk of CardAuxiliaryNavigationBarManager.createViewController(for:shouldReportFigaro:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(&stru_68.size + (swift_isaMask & *v2)) + **(&stru_68.size + (swift_isaMask & *v2)));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1D273C;

  return v8(a1, a2);
}

uint64_t sub_298058(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_6620C(&qword_3C8EB8, &unk_2FB8A0);
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

uint64_t sub_298134(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_6620C(&qword_3C8EB8, &unk_2FB8A0);
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

void sub_298218(uint64_t a1)
{
  sub_29829C(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for CardAuxiliaryNavigationBarBackgroundViewModel(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_29829C(uint64_t a1)
{
  if (!qword_3C8F28)
  {
    type metadata accessor for CardAuxiliaryNavigationBarViewModel(255);
    v1 = sub_2C45F8();
    if (!v2)
    {
      atomic_store(v1, &qword_3C8F28);
    }
  }
}

uint64_t sub_298360()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_298398(uint64_t a1, uint64_t a2)
{
  v4 = sub_6620C(&qword_3C9B60, &qword_2FB918);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_298408()
{
  result = qword_3C9B98;
  if (!qword_3C9B98)
  {
    sub_718D4(&qword_3C9B68, &qword_2FB920);
    sub_2984C0();
    sub_72B74(&qword_3C0448, &qword_3C0440, &unk_2E9E80, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C9B98);
  }

  return result;
}

unint64_t sub_2984C0()
{
  result = qword_3C9BA0;
  if (!qword_3C9BA0)
  {
    sub_718D4(&qword_3C9B60, &qword_2FB918);
    sub_298578();
    sub_72B74(&qword_3C0438, &qword_3C0430, &unk_2EC280, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C9BA0);
  }

  return result;
}

unint64_t sub_298578()
{
  result = qword_3C9BA8;
  if (!qword_3C9BA8)
  {
    sub_718D4(&qword_3C9B90, &qword_2FB9C0);
    sub_298630();
    sub_72B74(&qword_3C1D80, &qword_3C1D88, &qword_2EC270, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C9BA8);
  }

  return result;
}

unint64_t sub_298630()
{
  result = qword_3C9BB0;
  if (!qword_3C9BB0)
  {
    sub_718D4(&qword_3C9B88, &qword_2FB990);
    type metadata accessor for CardAuxiliaryNavigationBarView(255);
    sub_2C4E28();
    sub_299354(&qword_3C9B80, type metadata accessor for CardAuxiliaryNavigationBarView, &unk_2F9D50);
    swift_getOpaqueTypeConformance2();
    sub_72B74(&qword_3C9BB8, &qword_3C9BC0, &unk_2FBA18, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C9BB0);
  }

  return result;
}

unint64_t sub_298768()
{
  result = qword_3C9BC8;
  if (!qword_3C9BC8)
  {
    sub_718D4(&qword_3C9B70, &qword_2FB928);
    sub_718D4(&qword_3C9B68, &qword_2FB920);
    sub_298408();
    swift_getOpaqueTypeConformance2();
    sub_72B74(&qword_3C1DB8, &qword_3C1DC0, &qword_2EC2A0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C9BC8);
  }

  return result;
}

unint64_t sub_2988B0()
{
  result = qword_3C9BD0;
  if (!qword_3C9BD0)
  {
    sub_718D4(&qword_3C9B78, &qword_2FB930);
    sub_718D4(&qword_3C9B70, &qword_2FB928);
    sub_298768();
    swift_getOpaqueTypeConformance2();
    sub_299354(qword_3C9BD8, type metadata accessor for CardAuxiliaryNavigationBarView.BackgroundViewModifier, &unk_2F9D00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C9BD0);
  }

  return result;
}

uint64_t sub_2989AC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3[0] = *a1;
  v3[1] = v1;
  v4 = *(a1 + 32);
  return sub_D5240(v3);
}

double sub_298B78(uint64_t a1, void *a2)
{
  v4 = sub_2C4908();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  sub_183EBC();
  _Block_copy(a2);
  *v7 = sub_2C5E88();
  (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v9 = sub_2C4928();
  (*(v5 + 8))(v7, v4);
  if ((v9 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    a2 = sub_5C998(0, a2[2] + 1, 1, a2);
    *(v7 + a1) = a2;
    goto LABEL_5;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    (a2[2])(a2, Strong);

    return result;
  }

  v9 = swift_allocObject();
  *(v9 + 16) = sub_299200;
  *(v9 + 24) = v8;
  v7 = OBJC_IVAR___BSUICardAuxiliaryNavigationBarManager_pendingClosures;
  swift_beginAccess();
  a2 = *(v7 + a1);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v7 + a1) = a2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  v15 = a2[2];
  v14 = a2[3];
  if (v15 >= v14 >> 1)
  {
    a2 = sub_5C998((v14 > 1), v15 + 1, 1, a2);
  }

  a2[2] = v15 + 1;
  v16 = &a2[2 * v15];
  v16[4] = sub_299498;
  v16[5] = v9;
  *(v7 + a1) = a2;
  swift_endAccess();

  return result;
}

uint64_t sub_298DE4(void *a1, uint64_t a2)
{
  v3 = v2;
  v18 = type metadata accessor for CardAuxiliaryNavigationBarViewController.DependencyInjectionView(0) - 8;
  __chkstk_darwin(v18);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_6620C(&qword_3BD1B0, &qword_2E3F70);
  __chkstk_darwin(v8);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  type metadata accessor for NavigationProvider();
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v3 + qword_3C9A58) = v9;
  *(v3 + qword_3C9A48) = a1;
  v17 = a2;
  *(v3 + qword_3C9A50) = a2;
  swift_getKeyPath();
  v19[0] = a1;
  v16 = sub_299354(&qword_3C2548, type metadata accessor for CardAuxiliaryNavigationBarViewModel, &unk_2ED1F0);
  v10 = a1;

  sub_2BE6F8();

  sub_6620C(&qword_3BC330, &unk_2E3D50);
  sub_2C4968();
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_2E15C0;
  sub_2C4E28();

  sub_2C4F38();
  sub_2C4958();
  sub_6620C(&qword_3BD1F0, &unk_2F55C0);
  v19[3] = sub_2C53B8();
  v19[4] = &protocol witness table for NativeIntentDispatcher;
  sub_720C8(v19);
  sub_2C53A8();
  sub_2C4958();
  v19[0] = v11;
  sub_6620C(&unk_3BD220, &qword_2E3FF0);
  sub_72B74(&qword_3BCE60, &unk_3BD220, &qword_2E3FF0, &protocol conformance descriptor for [A]);
  v12 = sub_2C4DF8();

  sub_13EC08(v12);
  *(v3 + qword_3C9A60) = 0;
  type metadata accessor for CardAuxiliaryNavigationBarViewModel(0);
  v13 = v10;
  v14 = v17;

  sub_2C45D8();
  *&v7[*(v18 + 28)] = v14;
  return sub_2C3398();
}

uint64_t sub_2991C8()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_299200(uint64_t a1)
{
  v3 = *(v1 + 16);
  swift_getObjectType();

  return sub_298B60(a1, v3);
}

uint64_t sub_299244()
{
  _Block_release(*(v0 + 32));

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_29928C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_7100C;

  return sub_2944D4(v2, v3, v5, v4);
}

uint64_t sub_299354(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_29939C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2993FC()
{
  sub_718D4(&qword_3C9B78, &qword_2FB930);
  sub_2988B0();
  return swift_getOpaqueTypeConformance2();
}

void sub_2994A4(uint64_t a1)
{
  sub_85704();
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      sub_299FF0(319, &qword_3C9C60, &type metadata accessor for Date, &type metadata accessor for State);
      if (v3 <= 0x3F)
      {
        sub_299FA4(319, &qword_3C9C68, &type metadata for FinishedDateType);
        if (v4 <= 0x3F)
        {
          sub_299FA4(319, &qword_3BFBE8, &type metadata for Bool);
          if (v5 <= 0x3F)
          {
            sub_299FA4(319, &qword_3C7040, &type metadata for CGFloat);
            if (v6 <= 0x3F)
            {
              sub_7191C(319, &qword_3C9C70, &qword_3BD668, &qword_2E4238, &type metadata accessor for State);
              if (v7 <= 0x3F)
              {
                sub_7191C(319, &qword_3BF758, &qword_3BCE00, &unk_2E3D30, &type metadata accessor for Environment);
                if (v8 <= 0x3F)
                {
                  sub_299FF0(319, &qword_3BD600, &type metadata accessor for SizeConstants, &type metadata accessor for Environment);
                  if (v9 <= 0x3F)
                  {
                    swift_cvw_initStructMetadataWithLayoutString();
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_2996C4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v32 = *(a3 + 16);
  v4 = *(v32 - 8);
  v5 = *(v4 + 84);
  v31 = sub_2BE588();
  v6 = *(v31 - 8);
  v33 = v5;
  v30 = *(v6 + 84);
  if (v30 > v5)
  {
    v5 = *(v6 + 84);
  }

  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = v5;
  }

  v8 = *(sub_2BE5C8() - 8);
  v9 = *(v8 + 84);
  v10 = *(v8 + 64);
  v11 = *(sub_2C0C98() - 8);
  if (*(v11 + 64) <= 8uLL)
  {
    v12 = 8;
  }

  else
  {
    v12 = *(v11 + 64);
  }

  v13 = *(v4 + 80);
  if (v9)
  {
    v14 = v10;
  }

  else
  {
    v14 = v10 + 1;
  }

  if (v14 <= 8)
  {
    v14 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  v15 = *(v6 + 80) & 0xF8 | 7;
  v16 = *(v4 + 64) + 1;
  if (a2 <= v7)
  {
    goto LABEL_36;
  }

  v17 = *(v8 + 80) & 0xF8 | 7;
  v18 = *(v11 + 80) & 0xF8 | 7;
  v19 = v12 + ((v14 + v18 + ((v17 + ((((((((((*(v6 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + ((v16 + v15 + ((v13 + 40) & ~v13)) & ~v15) + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v17) + 1) & ~v18) + 1;
  v20 = 8 * v19;
  if (v19 <= 3)
  {
    v23 = ((a2 - v7 + ~(-1 << v20)) >> v20) + 1;
    if (HIWORD(v23))
    {
      v21 = *(a1 + v19);
      if (!v21)
      {
        goto LABEL_36;
      }

      goto LABEL_25;
    }

    if (v23 > 0xFF)
    {
      v21 = *(a1 + v19);
      if (!*(a1 + v19))
      {
        goto LABEL_36;
      }

      goto LABEL_25;
    }

    if (v23 < 2)
    {
LABEL_36:
      if ((v5 & 0x80000000) != 0)
      {
        v26 = (a1 + v13 + 40) & ~v13;
        if (v33 == v7)
        {
          v27 = v33;
          v28 = *(v4 + 48);
          v29 = v32;
        }

        else
        {
          v28 = *(v6 + 48);
          v26 = (v16 + v26 + v15) & ~v15;
          v27 = v30;
          v29 = v31;
        }

        return v28(v26, v27, v29);
      }

      else
      {
        v25 = *(a1 + 3);
        if (v25 >= 0xFFFFFFFF)
        {
          LODWORD(v25) = -1;
        }

        return (v25 + 1);
      }
    }
  }

  v21 = *(a1 + v19);
  if (!*(a1 + v19))
  {
    goto LABEL_36;
  }

LABEL_25:
  v24 = (v21 - 1) << v20;
  if (v19 > 3)
  {
    v24 = 0;
  }

  if (v19)
  {
    if (v19 > 3)
    {
      LODWORD(v19) = 4;
    }

    if (v19 > 2)
    {
      if (v19 == 3)
      {
        LODWORD(v19) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v19) = *a1;
      }
    }

    else if (v19 == 1)
    {
      LODWORD(v19) = *a1;
    }

    else
    {
      LODWORD(v19) = *a1;
    }
  }

  return v7 + (v19 | v24) + 1;
}

void sub_299ABC(_WORD *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v40 = *(a4 + 16);
  v4 = *(v40 - 8);
  v42 = v4;
  v5 = *(v4 + 84);
  v39 = sub_2BE588();
  v6 = *(v39 - 8);
  v38 = *(v6 + 84);
  if (v38 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v6 + 84);
  }

  v41 = v7;
  if (v5 <= v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = v5;
  }

  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(sub_2BE5C8() - 8);
  v11 = *(v10 + 84);
  v12 = *(v10 + 64);
  v13 = *(sub_2C0C98() - 8);
  v14 = 8;
  if (*(v13 + 64) <= 8uLL)
  {
    v15 = 8;
  }

  else
  {
    v15 = *(v13 + 64);
  }

  v16 = *(v4 + 80);
  v17 = *(v6 + 80) & 0xF8 | 7;
  v18 = *(v4 + 64) + 1;
  v19 = (*(v6 + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = *(v10 + 80) & 0xF8 | 7;
  v21 = (v20 + ((((((((v19 + ((v18 + v17 + ((v16 + 40) & ~v16)) & ~v17) + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v20;
  if (v11)
  {
    v22 = v12;
  }

  else
  {
    v22 = v12 + 1;
  }

  if (v22 > 8)
  {
    v14 = v22;
  }

  v23 = *(v13 + 80) & 0xF8 | 7;
  v24 = v15 + ((v14 + v23 + v21 + 1) & ~v23) + 1;
  if (a3 <= v9)
  {
    v26 = 0;
    v25 = a1;
  }

  else
  {
    v25 = a1;
    if (v24 <= 3)
    {
      v29 = ((a3 - v9 + ~(-1 << (8 * v24))) >> (8 * v24)) + 1;
      if (HIWORD(v29))
      {
        v26 = 4;
      }

      else
      {
        if (v29 < 0x100)
        {
          v30 = 1;
        }

        else
        {
          v30 = 2;
        }

        if (v29 >= 2)
        {
          v26 = v30;
        }

        else
        {
          v26 = 0;
        }
      }
    }

    else
    {
      v26 = 1;
    }
  }

  if (v9 < a2)
  {
    v27 = ~v9 + a2;
    if (v24 < 4)
    {
      v28 = (v27 >> (8 * v24)) + 1;
      if (v24)
      {
        v31 = v27 & ~(-1 << (8 * v24));
        bzero(v25, v24);
        if (v24 != 3)
        {
          if (v24 == 2)
          {
            *v25 = v31;
            if (v26 > 1)
            {
LABEL_64:
              if (v26 == 2)
              {
                *(v25 + v24) = v28;
              }

              else
              {
                *(v25 + v24) = v28;
              }

              return;
            }
          }

          else
          {
            *v25 = v27;
            if (v26 > 1)
            {
              goto LABEL_64;
            }
          }

          goto LABEL_61;
        }

        *v25 = v31;
        *(v25 + 2) = BYTE2(v31);
      }

      if (v26 > 1)
      {
        goto LABEL_64;
      }
    }

    else
    {
      bzero(v25, v24);
      *v25 = v27;
      v28 = 1;
      if (v26 > 1)
      {
        goto LABEL_64;
      }
    }

LABEL_61:
    if (v26)
    {
      *(v25 + v24) = v28;
    }

    return;
  }

  if (v26 > 1)
  {
    if (v26 != 2)
    {
      *(v25 + v24) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_45;
    }

    *(v25 + v24) = 0;
  }

  else if (v26)
  {
    *(v25 + v24) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_45;
  }

  if (!a2)
  {
    return;
  }

LABEL_45:
  if ((v8 & 0x80000000) == 0)
  {
    if ((a2 & 0x80000000) != 0)
    {
      *(v25 + 4) = 0u;
      *(v25 + 12) = 0u;
      *v25 = a2 & 0x7FFFFFFF;
    }

    else
    {
      *(v25 + 3) = a2 - 1;
    }

    return;
  }

  v32 = ((v25 + v16 + 40) & ~v16);
  if (v5 == v9)
  {
    v33 = *(v42 + 56);
    v34 = a2;
    v35 = v5;
    v36 = v40;

LABEL_70:
    v33(v32, v34, v35, v36);
    return;
  }

  v32 = ((v32 + v18 + v17) & ~v17);
  if (v41 >= a2)
  {
    v33 = *(v6 + 56);
    v34 = a2;
    v35 = v38;
    v36 = v39;

    goto LABEL_70;
  }

  if (v19 != -8)
  {
    v37 = v32;
    bzero(v32, (v19 + 8));
    *v37 = ~v41 + a2;
  }
}

void sub_299FA4(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_2C43A8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_299FF0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29A098(uint64_t *TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    __chkstk_darwin(TupleTypeMetadata);
    v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  __chkstk_darwin(TupleTypeMetadata);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v22 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v23 = (v6 + 32);
    v24 = a2;
    do
    {
      if (a2 == 1)
      {
        v25 = 0;
      }

      else
      {
        v25 = *v23;
      }

      v27 = *v22++;
      v26 = v27;
      v28 = *v5++;
      (*(*(v26 - 8) + 16))(&v21[v25], v28);
      v23 += 4;
      --v24;
    }

    while (v24);
  }

  return sub_2C4798();
}

uint64_t sub_29A268@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v45 = a3;
  v38 = a2;
  v42 = a1;
  v3 = sub_6620C(&qword_3BC418, &unk_2E9200);
  __chkstk_darwin(v3 - 8);
  v44 = v35 - v4;
  v5 = sub_2BE678();
  v39 = *(v5 - 8);
  v40 = v5;
  __chkstk_darwin(v5);
  v7 = v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_6620C(&qword_3BD648, &qword_2E4210);
  __chkstk_darwin(v8 - 8);
  v47 = v35 - v9;
  v10 = sub_6620C(&qword_3C63A8, &unk_2FBD40);
  __chkstk_darwin(v10 - 8);
  v12 = v35 - v11;
  v43 = sub_2BE298();
  v41 = *(v43 - 8);
  __chkstk_darwin(v43);
  v37 = v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2BE6D8();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2BE698();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = v35 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2BE658();
  v22 = *(v15 + 16);
  v22(v17, v38, v14);
  sub_2BE668();
  v23 = *(v19 + 16);
  v35[1] = v12;
  v36 = v18;
  v23(v12, v21, v18);
  (*(v19 + 56))(v12, 0, 1, v18);
  v24 = v47;
  v22(v47, v42, v14);
  (*(v15 + 56))(v24, 0, 1, v14);
  v25 = v39;
  v26 = v40;
  v27 = *(v39 + 104);
  v27(v7, enum case for Calendar.Component.era(_:), v40);
  v42 = sub_2BE688();
  v28 = *(v25 + 8);
  v28(v7, v26);
  v27(v7, enum case for Calendar.Component.year(_:), v26);
  sub_2BE688();
  v28(v7, v26);
  v29 = v44;
  v30 = v37;
  sub_2BE288();
  sub_2BE638();
  (*(v41 + 8))(v30, v43);
  (*(v19 + 8))(v21, v36);
  v31 = sub_2BE588();
  v32 = *(v31 - 8);
  v33 = *(v32 + 48);
  if (v33(v29, 1, v31) != 1)
  {
    return (*(v32 + 32))(v45, v29, v31);
  }

  (*(v32 + 16))(v45, v46, v31);
  result = (v33)(v29, 1, v31);
  if (result != 1)
  {
    return sub_69198(v29, &qword_3BC418, &unk_2E9200);
  }

  return result;
}

uint64_t sub_29A8E0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(void)@<X2>, void *a4@<X8>)
{
  v8 = v4;
  v10 = sub_2C30F8();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_6620C(a1, a2);
  __chkstk_darwin(v14);
  v16 = &v20 - v15;
  sub_6932C(v8, &v20 - v15, a1, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = a3(0);
    return (*(*(v17 - 8) + 32))(a4, v16, v17);
  }

  else
  {
    sub_2C5DD8();
    v19 = sub_2C3718();
    sub_2C0058();

    sub_2C30E8();
    swift_getAtKeyPath();

    return (*(v11 + 8))(v13, v10);
  }
}

uint64_t sub_29AB6C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = v3;
  v8 = sub_2C30F8();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_6932C(v6, v15, a1, a2);
  if (v17 == 1)
  {
    v13 = v15[1];
    *a3 = v15[0];
    *(a3 + 16) = v13;
    *(a3 + 32) = v16;
  }

  else
  {
    sub_2C5DD8();
    v14 = sub_2C3718();
    sub_2C0058();

    sub_2C30E8();
    swift_getAtKeyPath();

    return (*(v9 + 8))(v11, v8);
  }

  return result;
}

uint64_t sub_29AD68@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_2C30F8();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_6620C(&qword_3BF850, &qword_2E8BE0);
  __chkstk_darwin(v8);
  v10 = &v13 - v9;
  sub_6932C(v2, &v13 - v9, &qword_3BF850, &qword_2E8BE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_F3138(v10, a1);
  }

  sub_2C5DD8();
  v12 = sub_2C3718();
  sub_2C0058();

  sub_2C30E8();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_29AF60@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(void *, void *)@<X2>, void *a4@<X8>)
{
  v8 = v4;
  v10 = sub_2C30F8();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_6932C(v8, v16, a1, a2);
  if (v17 == 1)
  {
    return a3(v16, a4);
  }

  sub_2C5DD8();
  v15 = sub_2C3718();
  sub_2C0058();

  sub_2C30E8();
  swift_getAtKeyPath();

  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_29B124@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, void *a5@<X8>)
{
  v10 = v5;
  v21 = a5;
  v11 = sub_2C30F8();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_6620C(a1, a2);
  __chkstk_darwin(v15);
  v17 = &v20 - v16;
  sub_6932C(v10, &v20 - v16, a1, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_69130(v17, v21, a3, a4);
  }

  sub_2C5DD8();
  v19 = sub_2C3718();
  sub_2C0058();

  sub_2C30E8();
  swift_getAtKeyPath();

  return (*(v12 + 8))(v14, v11);
}

uint64_t sub_29B3E8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, unsigned int *a4@<X3>, uint64_t a5@<X8>)
{
  v40 = a4;
  v37 = a2;
  v38 = a3;
  v32 = a1;
  v42 = a5;
  v6 = sub_2BE5C8();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v41 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_6620C(&unk_3CA260, &qword_2E3930);
  __chkstk_darwin(v9 - 8);
  v39 = &v29 - v10;
  v35 = sub_2C0608();
  v11 = *(v35 - 8);
  __chkstk_darwin(v35);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2C4BF8();
  __chkstk_darwin(v14 - 8);
  v36 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_6620C(&qword_3BCE00, &unk_2E3D30);
  __chkstk_darwin(v16 - 8);
  v18 = (&v29 - v17);
  sub_72084(v5, v5[3]);
  v19 = v6;
  v20 = v32;
  v21 = sub_2BF3B8();
  v33 = v22;
  v34 = v21;
  sub_29B124(&qword_3BD670, &unk_2E4270, &qword_3BCE00, &unk_2E3D30, v18);
  if ((*(v7 + 48))(v18, 1, v19) == 1)
  {
    sub_69198(v18, &qword_3BCE00, &unk_2E3D30);
    v30 = 0;
    v31 = 0;
  }

  else
  {
    v23 = sub_2BE598();
    v30 = v24;
    v31 = v23;
    (*(v7 + 8))(v18, v19);
  }

  sub_72084(v5, v5[3]);
  sub_2BF908();
  sub_2C4BE8();
  v25 = *(sub_6620C(v37, v38) + 48);
  sub_6620C(&qword_3BD690, &unk_2E4280);
  sub_2C4378();
  v13[v25] = *(v5 + *(v20 + 40));
  (*(v11 + 104))(v13, *v40, v35);
  v26 = sub_2BF088();
  (*(*(v26 - 8) + 56))(v39, 1, 1, v26);
  v27 = v41;
  sub_2BE5B8();
  sub_2BE598();
  (*(v7 + 8))(v27, v19);
  return sub_2C05D8();
}

uint64_t sub_29B81C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20[0] = a1;
  v25 = a2;
  v3 = sub_2BE5C8();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_6620C(&unk_3CA260, &qword_2E3930);
  __chkstk_darwin(v7 - 8);
  v24 = v20 - v8;
  v21 = sub_2C0608();
  v9 = *(v21 - 8);
  __chkstk_darwin(v21);
  v23 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2C4BF8();
  __chkstk_darwin(v11 - 8);
  v22 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_6620C(&qword_3BCE00, &unk_2E3D30);
  __chkstk_darwin(v13 - 8);
  v15 = (v20 - v14);
  sub_72084(v2, v2[3]);
  v16 = sub_2BF3B8();
  v20[1] = v17;
  v20[2] = v16;
  sub_29B124(&qword_3BD670, &unk_2E4270, &qword_3BCE00, &unk_2E3D30, v15);
  if ((*(v4 + 48))(v15, 1, v3) == 1)
  {
    sub_69198(v15, &qword_3BCE00, &unk_2E3D30);
    v20[0] = 0;
  }

  else
  {
    v20[0] = sub_2BE598();
    (*(v4 + 8))(v15, v3);
  }

  sub_72084(v2, v2[3]);
  sub_2BF908();
  sub_2C4BE8();
  (*(v9 + 104))(v23, enum case for AssetAction.Kind.unsetFinishedDate(_:), v21);
  v18 = sub_2BF088();
  (*(*(v18 - 8) + 56))(v24, 1, 1, v18);
  sub_2BE5B8();
  sub_2BE598();
  (*(v4 + 8))(v6, v3);
  return sub_2C05D8();
}

uint64_t sub_29BC1C()
{
  v0 = sub_2C4BF8();
  __chkstk_darwin(v0 - 8);
  sub_2C4BE8();
  sub_2C5598();
  return sub_2C5588();
}

uint64_t sub_29BCAC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_2C4BF8();
  __chkstk_darwin(v5 - 8);
  v6 = sub_2C0638();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v22[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v12 = &v22[-v11];
  v13 = (v2 + *(a1 + 48));
  v14 = *v13;
  v15 = *(v13 + 1);
  v22[16] = v14;
  v23 = v15;
  sub_6620C(&qword_3C9CF8, &qword_2FBCA8);
  sub_2C4378();
  if (v22[15])
  {
    v16 = &qword_3C7A68;
    v17 = &qword_2F74C0;
    v18 = &enum case for AssetAction.Kind.setFinishedDate(_:);
  }

  else
  {
    v16 = &qword_3C7A60;
    v17 = &unk_2FBCB0;
    v18 = &enum case for AssetAction.Kind.setFinishedYear(_:);
  }

  sub_29B3E8(a1, v16, v17, v18, v9);
  (*(v7 + 32))(v12, v9, v6);
  sub_2C05C8();
  sub_6620C(&qword_3BC240, &unk_2E9B40);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_2E15C0;
  *(v19 + 56) = v6;
  *(v19 + 64) = sub_29F118(&qword_3BDC68, &type metadata accessor for AssetAction, &protocol conformance descriptor for AssetAction);
  v20 = sub_720C8((v19 + 32));
  (*(v7 + 16))(v20, v12, v6);
  *(v19 + 96) = sub_2C5628();
  *(v19 + 104) = &protocol witness table for Models.FlowBackAction;
  sub_720C8((v19 + 72));
  sub_29BC1C();
  a2[3] = sub_2C4D28();
  a2[4] = &protocol witness table for CompoundAction;
  sub_720C8(a2);
  sub_2C4D18();
  return (*(v7 + 8))(v12, v6);
}

uint64_t sub_29BF88@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_2C4BF8();
  __chkstk_darwin(v4 - 8);
  v5 = sub_2C0638();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29B81C(a1, v8);
  sub_2C05C8();
  sub_6620C(&qword_3BC240, &unk_2E9B40);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_2E15C0;
  *(v9 + 56) = v5;
  *(v9 + 64) = sub_29F118(&qword_3BDC68, &type metadata accessor for AssetAction, &protocol conformance descriptor for AssetAction);
  v10 = sub_720C8((v9 + 32));
  (*(v6 + 16))(v10, v8, v5);
  *(v9 + 96) = sub_2C5628();
  *(v9 + 104) = &protocol witness table for Models.FlowBackAction;
  sub_720C8((v9 + 72));
  sub_29BC1C();
  a2[3] = sub_2C4D28();
  a2[4] = &protocol witness table for CompoundAction;
  sub_720C8(a2);
  sub_2C4D18();
  return (*(v6 + 8))(v8, v5);
}

double sub_29C1A8()
{
  v0 = sub_2C0C68();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2C0C98();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_29A8E0(&qword_3BD530, &qword_2E4150, &type metadata accessor for SizeConstants, v7);
  sub_2C0C78();
  (*(v5 + 8))(v7, v4);
  sub_2C0C58();
  v9 = v8;
  (*(v1 + 8))(v3, v0);
  return v9;
}

uint64_t sub_29C35C(int *a1, double a2, double a3, double a4)
{
  sub_6620C(&qword_3C9CF8, &qword_2FBCA8);
  sub_2C4378();
  v9 = *(v4 + a1[16]);
  sub_6620C(&qword_3C9D38, &qword_2FBCE8);
  sub_2C4378();
  if (*(v20 + 16))
  {
    sub_5D2E4(v20);
    v11 = v10;

    if (v11)
    {
      goto LABEL_7;
    }
  }

  else
  {
  }

  sub_2C4378();

  sub_2C4378();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_62BA4(v20, isUniquelyReferenced_nonNull_native, a2, a3);
  v20 = v9;
  sub_2C4388();

  sub_2C4378();
  if ((v9 & 1) == 0)
  {
    sub_2C4378();

    sub_2C4378();
    v13 = swift_isUniquelyReferenced_nonNull_native();
    sub_62BA4(v9, v13, a2, 216.0);
    v20 = v9;
    sub_2C4388();
  }

LABEL_7:
  sub_2C4378();
  if (v20 == 1)
  {
    v14 = sub_29C1A8();
    sub_2C4378();
    sub_2C4378();
    v15 = 0.0;
    if (*(v20 + 16))
    {
      v16 = sub_5D2E4(v20);
      if (v17)
      {
        v15 = *(*(v20 + 56) + 16 * v16);
      }
    }

    v18 = v14 + v14 + a4 < v15;
  }

  else
  {
    v18 = 0;
  }

  LOBYTE(v20) = v18;
  sub_6620C(&qword_3BFC48, &qword_2F5C30);
  sub_2C4388();
  sub_2C4378();
  if ((v20 & 1) == 0)
  {
    sub_2C4378();
    sub_2C4378();
    if (*(v20 + 16))
    {
      sub_5D2E4(v20);
    }
  }

  sub_6620C(&qword_3C7240, &qword_2F61B8);
  sub_2C4388();
  return sub_2C4388();
}

uint64_t sub_29C790(uint64_t a1)
{
  v18 = *(a1 + 16);
  v3 = v18;
  v19 = sub_718D4(&qword_3C9C78, &qword_2FBC58);
  v20 = sub_718D4(&qword_3C9C80, &qword_2FBC60);
  v21 = sub_718D4(&qword_3C9C88, &qword_2FBC68);
  swift_getTupleTypeMetadata();
  sub_2C4788();
  swift_getWitnessTable();
  v4 = sub_2C44A8();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v10 = &v14[-v9];
  v11 = *(a1 + 24);
  v15 = v3;
  v16 = v11;
  v17 = v1;
  sub_2C3328();
  sub_2C4498();
  swift_getWitnessTable();
  sub_16A4E4();
  v12 = *(v5 + 8);
  v12(v7, v4);
  sub_16A4E4();
  return (v12)(v10, v4);
}

uint64_t sub_29C9C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v129 = a2;
  v124 = a4;
  v125 = sub_6620C(&qword_3C9C90, &qword_2FBC70);
  v121 = *(v125 - 8);
  __chkstk_darwin(v125);
  v84 = &v84 - v7;
  v8 = sub_2BF558();
  v119 = *(v8 - 8);
  v120 = v8;
  __chkstk_darwin(v8);
  v118 = &v84 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = sub_6620C(&qword_3C9C88, &qword_2FBC68);
  __chkstk_darwin(v122);
  v123 = &v84 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v114 = &v84 - v12;
  v130 = sub_6620C(&qword_3C9C98, &qword_2FBC78);
  v113 = *(v130 - 8);
  __chkstk_darwin(v130);
  v111 = &v84 - v13;
  v14 = sub_2C0EC8();
  v108 = *(v14 - 8);
  v109 = v14;
  __chkstk_darwin(v14);
  v107 = (&v84 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = sub_2C0F28();
  v105 = *(v16 - 8);
  v106 = v16;
  __chkstk_darwin(v16);
  v103 = &v84 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2C0F18();
  v101 = *(v18 - 8);
  v102 = v18;
  __chkstk_darwin(v18);
  v98 = &v84 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_2C0ED8();
  v93 = *(v20 - 8);
  v94 = v20;
  __chkstk_darwin(v20);
  v92 = &v84 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_2C0F08();
  v88 = *(v90 - 8);
  __chkstk_darwin(v90);
  v87 = &v84 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_2C0EE8();
  v23 = *(v86 - 8);
  __chkstk_darwin(v86);
  v85 = &v84 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_2C0F38();
  __chkstk_darwin(v25 - 8);
  v91 = &v84 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = sub_2C0458();
  v104 = *(v128 - 8);
  __chkstk_darwin(v128);
  v89 = &v84 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_6620C(&qword_3C9C80, &qword_2FBC60);
  v116 = *(v28 - 8);
  v117 = v28;
  __chkstk_darwin(v28);
  v115 = &v84 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v95 = &v84 - v31;
  v33 = type metadata accessor for EditFinishedDateView(0, a2, a3, v32);
  v34 = *(v33 - 8);
  __chkstk_darwin(v33);
  v36 = &v84 - v35;
  v112 = *(a2 - 8);
  __chkstk_darwin(v37);
  v127 = &v84 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v126 = &v84 - v40;
  v131 = a3;
  sub_16A4E4();
  (*(v34 + 16))(v36, a1, v33);
  v41 = (*(v34 + 80) + 32) & ~*(v34 + 80);
  v42 = swift_allocObject();
  *(v42 + 16) = a2;
  *(v42 + 24) = a3;
  v43 = *(v34 + 32);
  v110 = v42;
  v43(v42 + v41, v36, v33);
  v44 = (a1 + *(v33 + 60));
  v45 = *v44;
  v46 = v44[1];
  v146 = v45;
  v147 = v46;
  sub_6620C(&qword_3C7240, &qword_2F61B8);
  sub_2C4378();
  sub_2C46A8();
  sub_2C2708();
  v96 = v156[4];
  v97 = v158;
  v99 = v161;
  v100 = v160;
  v165 = v157;
  v163 = v159;
  v48 = v85;
  v47 = v86;
  *v85 = 1;
  (*(v23 + 104))(v48, enum case for ButtonViewModel.Size.large(_:), v47);
  v49 = _UISolariumEnabled();
  v50 = &enum case for ButtonViewModel.Shape.capsule(_:);
  if (!v49)
  {
    v50 = &enum case for ButtonViewModel.Shape.roundedRectangle(_:);
  }

  (*(v88 + 104))(v87, *v50, v90);
  (*(v93 + 104))(v92, enum case for ButtonViewModel.Kind.solid(_:), v94);
  (*(v101 + 104))(v98, enum case for ButtonViewModel.Style.primary(_:), v102);
  sub_1DA078(1701736260);
  v51 = v103;
  sub_2BFDC8();

  (*(v105 + 104))(v51, enum case for ButtonViewModel.Content.title(_:), v106);
  v52 = v107;
  v102 = v33;
  sub_29BCAC(v33, v107);
  (*(v108 + 104))(v52, enum case for ButtonViewModel.ActionKind.actionModel(_:), v109);
  sub_2C0EF8();
  v53 = v89;
  sub_2C0448();
  sub_2C4628();
  v54 = v111;
  sub_2C31B8();
  v132 = v129;
  v133 = v131;
  v105 = a1;
  v134 = a1;
  v55 = sub_6620C(&qword_3C9CA0, &unk_2FBC80);
  v56 = sub_29F118(&qword_3C9CA8, &type metadata accessor for ButtonView, &protocol conformance descriptor for ButtonView);
  v146 = &type metadata for Solarium;
  v147 = &protocol witness table for Solarium;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v106 = sub_29EC34();
  v58 = v95;
  v59 = v128;
  v60 = v130;
  v108 = v56;
  v109 = v55;
  v107 = OpaqueTypeConformance2;
  sub_2C4128();
  v61 = v114;
  (*(v113 + 8))(v54, v60);
  (*(v104 + 8))(v53, v59);
  v62 = v118;
  v63 = v119;
  v64 = v120;
  (*(v119 + 104))(v118, enum case for BooksFeatureFlag.iveReadThisFullFlow(_:), v120);
  sub_29F118(&qword_3BD678, &type metadata accessor for BooksFeatureFlag, &protocol conformance descriptor for BooksFeatureFlag);
  sub_72B74(&qword_3BD680, &qword_3BD688, &unk_2E4CE0, &protocol conformance descriptor for StaticFeatureFlagsKey<A>);
  v65 = v62;
  LOBYTE(v62) = sub_2C5A78();
  (*(v63 + 8))(v65, v64);
  v66 = 1;
  if (v62)
  {
    v67 = v84;
    sub_29E6B4(v102, v84);
    v68 = sub_2C3768();
    sub_2C24D8();
    v69 = v67 + *(v125 + 36);
    *v69 = v68;
    *(v69 + 8) = v70;
    *(v69 + 16) = v71;
    *(v69 + 24) = v72;
    *(v69 + 32) = v73;
    *(v69 + 40) = 0;
    sub_29F050(v67, v61);
    v66 = 0;
  }

  (*(v121 + 56))(v61, v66, 1, v125);
  v74 = v112;
  v75 = v127;
  v76 = v129;
  (*(v112 + 16))(v127, v126, v129);
  v156[0] = v75;
  v146 = sub_29EB8C;
  v147 = v110;
  v148 = v96;
  v149 = v165;
  *v150 = *v164;
  *&v150[3] = *&v164[3];
  v151 = v97;
  v152 = v163;
  *v153 = *v162;
  *&v153[3] = *&v162[3];
  v154 = v100;
  v155 = v99;
  v156[1] = &v146;
  v77 = v115;
  v78 = v116;
  v79 = v117;
  (*(v116 + 16))(v115, v58, v117);
  v156[2] = v77;
  v80 = v123;
  sub_29ECF0(v61, v123);
  v156[3] = v80;

  v145[0] = v76;
  v145[1] = sub_6620C(&qword_3C9C78, &qword_2FBC58);
  v145[2] = v79;
  v145[3] = v122;
  v141 = v131;
  v142 = sub_29ED60();
  v135 = v128;
  v136 = v130;
  v137 = v109;
  v138 = v108;
  v139 = v107;
  v140 = v106;
  v143 = swift_getOpaqueTypeConformance2();
  v144 = sub_29EE18();
  sub_29A098(v156, 4uLL, v145);

  sub_29EFE8(v61);
  v81 = *(v78 + 8);
  v81(v58, v79);
  v82 = *(v74 + 8);
  v82(v126, v76);
  sub_29EFE8(v80);
  v81(v77, v79);

  return (v82)(v127, v76);
}

uint64_t sub_29D884@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v74 = a5;
  v70 = sub_2C2758();
  v9 = *(v70 - 8);
  v71 = *(v9 + 64);
  __chkstk_darwin(v70);
  v67 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = a3;
  v76 = a4;
  v12 = type metadata accessor for EditFinishedDateView(0, a3, a4, v11);
  v68 = *(v12 - 8);
  v69 = *(v68 + 64);
  __chkstk_darwin(v12);
  v14 = &v60 - v13;
  v15 = sub_6620C(&qword_3C9D00, &qword_2FBCC0);
  __chkstk_darwin(v15);
  v17 = &v60 - v16;
  v18 = sub_6620C(&qword_3C9D08, &qword_2FBCC8);
  v19 = *(v18 - 8);
  v72 = v18;
  v73 = v19;
  __chkstk_darwin(v18);
  v77 = &v60 - v20;
  *v17 = sub_2C3328();
  *(v17 + 1) = 0;
  v17[16] = 0;
  v21 = sub_6620C(&qword_3C9D10, &qword_2FBCD0);
  sub_29DE68(a2, a1, a3, a4, &v17[*(v21 + 44)]);
  v22 = (a2 + *(v12 + 56));
  v63 = a2;
  v23 = *v22;
  v24 = v22[1];
  *&v82 = v23;
  *(&v82 + 1) = v24;
  sub_6620C(&qword_3C7240, &qword_2F61B8);
  sub_2C4378();
  sub_2C46A8();
  sub_2C2708();
  v62 = v15;
  v25 = &v17[*(v15 + 36)];
  v26 = v83;
  *v25 = v82;
  *(v25 + 1) = v26;
  *(v25 + 2) = v84;
  sub_2C2728();
  v78 = v27;
  v28 = v68;
  v29 = *(v68 + 16);
  v65 = v68 + 16;
  v66 = v29;
  v61 = v14;
  v30 = v12;
  v29(v14, a2, v12);
  v31 = v9;
  v32 = v67;
  v33 = v70;
  (*(v9 + 16))(v67, a1, v70);
  v34 = *(v28 + 80);
  v35 = v28;
  v36 = (v34 + 32) & ~v34;
  v69 += v36;
  v64 = v34 | 7;
  v37 = (v69 + *(v9 + 80)) & ~*(v9 + 80);
  v38 = swift_allocObject();
  v39 = v76;
  *(v38 + 16) = v75;
  *(v38 + 24) = v39;
  v71 = *(v35 + 32);
  v40 = v14;
  v41 = v30;
  v71(v38 + v36, v40, v30);
  (*(v31 + 32))(v38 + v37, v32, v33);
  v42 = sub_29F248();
  v45 = sub_29F300(v42, v43, v44);
  v46 = v62;
  sub_2C4108();

  sub_69198(v17, &qword_3C9D00, &qword_2FBCC0);
  v47 = v63;
  v48 = v63 + *(v41 + 48);
  v49 = *v48;
  v50 = *(v48 + 8);
  LOBYTE(v78) = v49;
  v79 = v50;
  sub_6620C(&qword_3C9CF8, &qword_2FBCA8);
  sub_2C4378();
  v51 = v61;
  v66(v61, v47, v41);
  v52 = swift_allocObject();
  v53 = v76;
  *(v52 + 16) = v75;
  *(v52 + 24) = v53;
  v71(v52 + v36, v51, v41);
  v78 = v46;
  v79 = &type metadata for CGFloat;
  v80 = v42;
  v81 = v45;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1F0CB8(OpaqueTypeConformance2, v55, v56);
  v57 = v72;
  v58 = v77;
  sub_2C4108();

  return (*(v73 + 8))(v58, v57);
}

uint64_t sub_29DE68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v48 = a3;
  v49 = a4;
  v51 = a2;
  v47 = sub_2C2758();
  v9 = *(v47 - 8);
  v50 = *(v9 + 64);
  __chkstk_darwin(v47);
  v46 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for EditFinishedDateView(0, a3, a4, v11);
  v13 = *(v12 - 8);
  v45 = *(v13 + 64);
  __chkstk_darwin(v12);
  v44 = &v43 - v14;
  sub_6620C(&qword_3BD690, &unk_2E4280);
  sub_2C4398();
  v15 = (a1 + *(v12 + 48));
  v43 = a1;
  v16 = *v15;
  v17 = *(v15 + 1);
  v55 = v16;
  v56 = v17;
  sub_6620C(&qword_3C9CF8, &qword_2FBCA8);
  sub_2C4398();
  v18 = v52;
  v19 = v53;
  v20 = v54;
  v21 = (a1 + *(v12 + 52));
  v22 = *v21;
  v23 = *(v21 + 1);
  v55 = v22;
  v56 = v23;
  sub_6620C(&qword_3BFC48, &qword_2F5C30);
  sub_2C4398();
  v24 = v52;
  v25 = v53;
  v26 = v54;
  v27 = type metadata accessor for FinishedDatePickerView(0);
  v28 = a5 + v27[5];
  *v28 = v18;
  *(v28 + 1) = v19;
  v28[16] = v20;
  v29 = a5 + v27[6];
  *v29 = v24;
  *(v29 + 1) = v25;
  v29[16] = v26;
  v30 = v27[7];
  *(a5 + v30) = swift_getKeyPath();
  sub_6620C(&qword_3BD530, &qword_2E4150);
  swift_storeEnumTagMultiPayload();
  v31 = v44;
  (*(v13 + 16))(v44, v43, v12);
  v33 = v46;
  v32 = v47;
  (*(v9 + 16))(v46, v51, v47);
  v34 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v35 = (v45 + *(v9 + 80) + v34) & ~*(v9 + 80);
  v36 = swift_allocObject();
  v37 = v49;
  *(v36 + 16) = v48;
  *(v36 + 24) = v37;
  (*(v13 + 32))(v36 + v34, v31, v12);
  (*(v9 + 32))(v36 + v35, v33, v32);
  v38 = sub_2C46A8();
  v40 = v39;
  result = sub_6620C(&qword_3C9D40, &qword_2FBD20);
  v42 = (a5 + *(result + 36));
  *v42 = sub_29E1E4;
  v42[1] = 0;
  v42[2] = sub_29FA40;
  v42[3] = v36;
  v42[4] = v38;
  v42[5] = v40;
  return result;
}

void sub_29E1E4(void *a2@<X8>)
{
  sub_2C2728();
  *a2 = v3;
  a2[1] = v4;
}

uint64_t sub_29E210(double *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *a1;
  v8 = a1[1];
  sub_2C2728();
  v10 = v9;
  v12 = type metadata accessor for EditFinishedDateView(0, a4, a5, v11);
  return sub_29C35C(v12, v7, v8, v10);
}

uint64_t sub_29E28C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for EditFinishedDateView(0, a3, a4, a4);
  sub_6620C(&qword_3C9CF8, &qword_2FBCA8);
  sub_2C4378();
  if (v5 == 1)
  {
    sub_2C2728();
    sub_29C1A8();
    sub_2C4378();
    sub_6620C(&qword_3C9D38, &qword_2FBCE8);
    sub_2C4378();
    if (*(v5 + 16))
    {
      sub_5D2E4(v5);
    }
  }

  sub_6620C(&qword_3BFC48, &qword_2F5C30);
  sub_2C4388();
  sub_2C2728();
  sub_6620C(&qword_3C7240, &qword_2F61B8);
  return sub_2C4388();
}

void *sub_29E470(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for EditFinishedDateView(0, a2, a3, a4);
  sub_6620C(&qword_3BFC48, &qword_2F5C30);
  result = sub_2C4378();
  if (v5 == 1)
  {
    sub_6620C(&qword_3C9CF8, &qword_2FBCA8);
    result = sub_2C4378();
    if ((v5 & 1) == 0)
    {
      sub_2C4378();
      sub_6620C(&qword_3C9D38, &qword_2FBCE8);
      sub_2C4378();
      if (*(v5 + 16))
      {
        sub_5D2E4(v5);
      }

      sub_6620C(&qword_3C7240, &qword_2F61B8);
      return sub_2C4388();
    }
  }

  return result;
}

double sub_29E5FC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_2C46A8();
  sub_2C2708();
  v4 = sub_2C0458();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  v5 = (a2 + *(sub_6620C(&qword_3C9CA0, &unk_2FBC80) + 36));
  *v5 = v7;
  v5[1] = v8;
  result = *&v9;
  v5[2] = v9;
  return result;
}

uint64_t sub_29E6B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v5 = sub_2C0EE8();
  v37 = *(v5 - 8);
  v38 = v5;
  __chkstk_darwin(v5);
  v36 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2C0408();
  v8 = *(v7 - 8);
  v39 = v7;
  v40 = v8;
  __chkstk_darwin(v7);
  v35 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v12);
  v13 = sub_6620C(&unk_3C43D0, &qword_2F1180);
  __chkstk_darwin(v13 - 8);
  v15 = &v33 - v14;
  v16 = sub_6620C(&qword_3C9CE0, &unk_2FBC98);
  v17 = *(v16 - 8);
  v33 = v16;
  v34 = v17;
  __chkstk_darwin(v16);
  v19 = &v33 - v18;
  v20 = sub_2C24B8();
  (*(*(v20 - 8) + 56))(v15, 1, 1, v20);
  sub_29BF88(a1, v42);
  v21 = v43;
  v22 = v44;
  v23 = sub_72084(v42, v43);
  v45[3] = v21;
  v45[4] = *(v22 + 8);
  v24 = sub_720C8(v45);
  (*(*(v21 - 8) + 16))(v24, v23, v21);
  (*(v10 + 16))(&v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v3, a1);
  v25 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = *(a1 + 16);
  (*(v10 + 32))(v26 + v25, &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  sub_2C0388();
  sub_68CD0(v42);
  v28 = v36;
  v27 = v37;
  *v36 = 1;
  (*(v27 + 104))(v28, enum case for ButtonViewModel.Size.large(_:), v38);
  v29 = v35;
  sub_2C03F8();
  sub_72B74(&qword_3C9CE8, &qword_3C9CE0, &unk_2FBC98, &protocol conformance descriptor for BooksActionButton<A>);
  sub_29F118(&qword_3C9CF0, &type metadata accessor for BooksBorderlessButtonStyle, &protocol conformance descriptor for BooksBorderlessButtonStyle);
  v30 = v33;
  v31 = v39;
  sub_2C3E48();
  (*(v40 + 8))(v29, v31);
  return (*(v34 + 8))(v19, v30);
}

uint64_t sub_29EB8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(type metadata accessor for EditFinishedDateView(0, v6, v7, a2) - 8);
  v9 = v3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return sub_29D884(a1, v9, v6, v7, a3);
}

unint64_t sub_29EC34()
{
  result = qword_3C9CB0;
  if (!qword_3C9CB0)
  {
    sub_718D4(&qword_3C9CA0, &unk_2FBC80);
    sub_29F118(&qword_3C9CA8, &type metadata accessor for ButtonView, &protocol conformance descriptor for ButtonView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C9CB0);
  }

  return result;
}

uint64_t sub_29ECF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_6620C(&qword_3C9C88, &qword_2FBC68);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_29ED60()
{
  result = qword_3C9CB8;
  if (!qword_3C9CB8)
  {
    sub_718D4(&qword_3C9C78, &qword_2FBC58);
    sub_72B74(&qword_3C9CC0, &qword_3C9CC8, &qword_2FBC90, &protocol conformance descriptor for GeometryReader<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C9CB8);
  }

  return result;
}

unint64_t sub_29EE18()
{
  result = qword_3C9CD0;
  if (!qword_3C9CD0)
  {
    sub_718D4(&qword_3C9C88, &qword_2FBC68);
    sub_29EE9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C9CD0);
  }

  return result;
}

unint64_t sub_29EE9C()
{
  result = qword_3C9CD8;
  if (!qword_3C9CD8)
  {
    sub_718D4(&qword_3C9C90, &qword_2FBC70);
    sub_718D4(&qword_3C9CE0, &unk_2FBC98);
    sub_2C0408();
    sub_72B74(&qword_3C9CE8, &qword_3C9CE0, &unk_2FBC98, &protocol conformance descriptor for BooksActionButton<A>);
    sub_29F118(&qword_3C9CF0, &type metadata accessor for BooksBorderlessButtonStyle, &protocol conformance descriptor for BooksBorderlessButtonStyle);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C9CD8);
  }

  return result;
}

uint64_t sub_29EFE8(uint64_t a1)
{
  v2 = sub_6620C(&qword_3C9C88, &qword_2FBC68);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29F050(uint64_t a1, uint64_t a2)
{
  v4 = sub_6620C(&qword_3C9C90, &qword_2FBC70);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29F0C0@<X0>(uint64_t a1@<X8>)
{
  result = sub_1DA078(0x532074BCCA6E6F44);
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = 0;
  *(a1 + 24) = _swiftEmptyArrayStorage;
  return result;
}

uint64_t sub_29F118(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_29F160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = *(type metadata accessor for EditFinishedDateView(0, v5, v6, a4) - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(sub_2C2758() - 8);
  v11 = v4 + ((v8 + v9 + *(v10 + 80)) & ~*(v10 + 80));

  return sub_29E28C(v4 + v8, v11, v5, v6);
}

unint64_t sub_29F248()
{
  result = qword_3C9D18;
  if (!qword_3C9D18)
  {
    sub_718D4(&qword_3C9D00, &qword_2FBCC0);
    sub_72B74(&qword_3C9D20, &qword_3C9D28, &unk_2FBCD8, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C9D18);
  }

  return result;
}

unint64_t sub_29F300(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3C9D30;
  if (!qword_3C9D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C9D30);
  }

  return result;
}

uint64_t sub_29F354(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = type metadata accessor for EditFinishedDateView(0, v5, *(v4 + 24), a4);
  v7 = *(*(v6 - 1) + 80);
  v8 = (v7 + 32) & ~v7;
  v9 = *(*(v6 - 1) + 64);
  v10 = v4 + v8;
  sub_68CD0((v4 + v8));
  (*(*(v5 - 8) + 8))(v4 + v8 + v6[9], v5);
  v11 = v4 + v8 + v6[11];
  v12 = sub_2BE588();
  (*(*(v12 - 8) + 8))(v11, v12);
  sub_6620C(&qword_3BD690, &unk_2E4280);

  v13 = v6[17];
  sub_6620C(&qword_3BD670, &unk_2E4270);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_2BE5C8();
    v15 = *(v14 - 8);
    if (!(*(v15 + 48))(v10 + v13, 1, v14))
    {
      (*(v15 + 8))(v10 + v13, v14);
    }
  }

  else
  {
  }

  v16 = v6[18];
  sub_6620C(&qword_3BD530, &qword_2E4150);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = sub_2C0C98();
    (*(*(v17 - 8) + 8))(v10 + v16, v17);
  }

  else
  {
  }

  return _swift_deallocObject(v4, v8 + v9, v7 | 7);
}

void *sub_29F638(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v8 = *(type metadata accessor for EditFinishedDateView(0, v5, v6, a4) - 8);
  v9 = v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return sub_29E470(v9, v5, v6, v7);
}

uint64_t sub_29F6C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = type metadata accessor for EditFinishedDateView(0, v5, *(v4 + 24), a4);
  v7 = *(*(v6 - 1) + 80);
  v22 = *(*(v6 - 1) + 64);
  v8 = sub_2C2758();
  v9 = *(v8 - 8);
  v10 = *(v9 + 80);
  v21 = *(v9 + 64);
  v11 = (v4 + ((v7 + 32) & ~v7));
  sub_68CD0(v11);
  (*(*(v5 - 8) + 8))(&v11[v6[9]], v5);
  v12 = &v11[v6[11]];
  v13 = sub_2BE588();
  (*(*(v13 - 8) + 8))(v12, v13);
  sub_6620C(&qword_3BD690, &unk_2E4280);

  v14 = v6[17];
  sub_6620C(&qword_3BD670, &unk_2E4270);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_2BE5C8();
    v16 = *(v15 - 8);
    if (!(*(v16 + 48))(&v11[v14], 1, v15))
    {
      (*(v16 + 8))(&v11[v14], v15);
    }
  }

  else
  {
  }

  v17 = v6[18];
  sub_6620C(&qword_3BD530, &qword_2E4150);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = sub_2C0C98();
    (*(*(v18 - 8) + 8))(&v11[v17], v18);
  }

  else
  {
  }

  v19 = (((v7 + 32) & ~v7) + v22 + v10) & ~v10;
  (*(v9 + 8))(v4 + v19, v8);

  return _swift_deallocObject(v4, v19 + v21, v7 | v10 | 7);
}

uint64_t sub_29FA40(double *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = *(type metadata accessor for EditFinishedDateView(0, v6, v7, a4) - 8);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(sub_2C2758() - 8);
  v12 = v4 + ((v9 + v10 + *(v11 + 80)) & ~*(v11 + 80));

  return sub_29E210(a1, v4 + v9, v12, v6, v7);
}

uint64_t sub_29FB30(void *a1)
{
  sub_718D4(&qword_3C9C78, &qword_2FBC58);
  sub_718D4(&qword_3C9C80, &qword_2FBC60);
  sub_718D4(&qword_3C9C88, &qword_2FBC68);
  swift_getTupleTypeMetadata();
  sub_2C4788();
  swift_getWitnessTable();
  sub_2C44A8();
  return swift_getWitnessTable();
}

uint64_t sub_29FC20(uint64_t a1)
{
  v2 = sub_2C3478();
  __chkstk_darwin(v2 - 8);
  v3 = sub_6620C(&qword_3C9E10, &qword_2FBDF0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_2C3468();
  v9 = a1;
  sub_6620C(&qword_3C9E38, &qword_2FBE00);
  sub_72B74(&qword_3C9E40, &qword_3C9E38, &qword_2FBE00, &protocol conformance descriptor for BooksActionButton<A>);
  sub_2C25D8();
  sub_72B74(&qword_3C9E18, &qword_3C9E10, &qword_2FBDF0, &protocol conformance descriptor for ToolbarItem<A, B>);
  sub_2C34C8();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_29FE0C(uint64_t a1)
{
  v2 = sub_2C24B8();
  __chkstk_darwin(v2 - 8);
  sub_2C2498();
  v3 = sub_2C5628();
  v6[3] = v3;
  v6[4] = &protocol witness table for Models.FlowBackAction;
  v4 = sub_720C8(v6);
  (*(*(v3 - 8) + 16))(v4, a1, v3);
  return sub_2C0398();
}

void *sub_29FEEC(void *a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    sub_29FF5C(a1);
    v6 = v5;

    return v6;
  }

  return result;
}

id sub_29FF5C(void *a1)
{
  v3 = [v1 topViewController];
  if (v3)
  {
    v4 = *&v1[qword_3C65B8];
    v5 = v3;

    if (v5 == v4)
    {
      v1 = v4;
    }
  }

  [v1 preferredContentSize];
  return [a1 maximumDetentValue];
}

uint64_t static BSUINoticeViewController.presentNoticeForAdding(assetID:assetContentType:collectionTitle:collectionID:options:objectGraph:useNonSpecificDeterminerInMessage:tracker:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 144) = v17;
  *(v9 + 152) = v8;
  *(v9 + 307) = v16;
  *(v9 + 128) = a8;
  *(v9 + 136) = v15;
  *(v9 + 112) = a6;
  *(v9 + 120) = a7;
  *(v9 + 96) = a4;
  *(v9 + 104) = a5;
  *(v9 + 80) = a2;
  *(v9 + 88) = a3;
  *(v9 + 72) = a1;
  v10 = sub_6620C(&qword_3BCB88, &qword_2E3C20);
  *(v9 + 160) = v10;
  *(v9 + 168) = *(v10 - 8);
  *(v9 + 176) = swift_task_alloc();
  *(v9 + 184) = sub_2C5C18();
  *(v9 + 192) = sub_2C5C08();
  v12 = sub_2C5BB8();
  *(v9 + 200) = v12;
  *(v9 + 208) = v11;

  return _swift_task_switch(sub_2A0124, v12, v11);
}

uint64_t sub_2A0124()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[10];
  v4 = v0[9];
  sub_6620C(&qword_3C7A80, &qword_2F7590);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2E3F30;
  *(inited + 32) = v4;
  *(inited + 40) = v3;

  *(inited + 48) = sub_2C5CF8();
  v0[27] = sub_68788(inited);
  swift_setDeallocating();
  sub_69198(inited + 32, &qword_3C7A88, &qword_2F7598);
  v6 = swift_task_alloc();
  v0[28] = v6;
  *(v6 + 16) = v2;
  *(v6 + 24) = v1;
  v0[29] = sub_2C5C08();
  v8 = sub_2C5BB8();
  v0[30] = v8;
  v0[31] = v7;

  return _swift_task_switch(sub_2A025C, v8, v7);
}

uint64_t sub_2A025C()
{
  v1 = *(v0 + 120);
  v2 = sub_2C58C8();
  if (v1)
  {
    if (v2 == *(v0 + 112) && *(v0 + 120) == v3)
    {
      LOBYTE(v1) = 1;
    }

    else
    {
      LOBYTE(v1) = sub_2C65B8();
    }
  }

  v5 = *(v0 + 307);

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_66278(0, &qword_3BC790, NSNumber_ptr);
  isa = sub_2C57C8().super.isa;

  v8 = sub_2C5888();
  v9 = [ObjCClassFromMetadata _noticeMessageForAddingAssets:isa toCollectionNamed:v8 isAddingToWantToRead:v1 & 1 useNonSpecificDeterminerInMessage:v5];

  if (v9)
  {
    v10 = sub_2C58C8();
    v12 = v11;

    *(v0 + 256) = v10;
    *(v0 + 264) = v12;
    if (v1)
    {
      if (qword_3BB730 != -1)
      {
        swift_once();
      }

      v14 = *(v0 + 168);
      v13 = *(v0 + 176);
      v15 = *(v0 + 160);
      v16 = sub_57AD8(v15, qword_3BF980);
      v17 = *(v14 + 16);
      v17(v13, v16, v15);
      sub_2BF448();
      v18 = *(v14 + 8);
      v18(v13, v15);
      if (*(v0 + 305) == 1)
      {
        if (qword_3BB728 != -1)
        {
          swift_once();
        }

        v19 = *(v0 + 176);
        v20 = *(v0 + 160);
        v21 = sub_57AD8(v20, qword_3BF968);
        v17(v19, v21, v20);
        sub_2BF448();
        v18(v19, v20);
        v22 = *(v0 + 306);
      }

      else
      {
        v22 = 1;
      }
    }

    else
    {
      v22 = 0;
    }

    *(v0 + 308) = v22;
    v25 = swift_task_alloc();
    *(v0 + 272) = v25;
    *v25 = v0;
    v25[1] = sub_2A059C;

    return sub_2A23F4(v1 & 1);
  }

  else
  {

    v23 = *(v0 + 200);
    v24 = *(v0 + 208);

    return _swift_task_switch(sub_2A0C7C, v23, v24);
  }
}

uint64_t sub_2A059C(char a1)
{
  v2 = *v1;
  *(*v1 + 309) = a1;

  v3 = *(v2 + 248);
  v4 = *(v2 + 240);

  return _swift_task_switch(sub_2A06C4, v4, v3);
}

uint64_t sub_2A06C4()
{
  if (*(v0 + 308) == 1)
  {
    v1 = swift_task_alloc();
    *(v0 + 280) = v1;
    *v1 = v0;
    v1[1] = sub_2A0870;
    v2 = *(v0 + 264);
    v3 = *(v0 + 128);
    v4 = *(v0 + 256);
    v5 = 1;
LABEL_5:

    return sub_2A2804(v4, v2, v5, v3);
  }

  if (*(v0 + 309) == 2)
  {
    v6 = swift_task_alloc();
    *(v0 + 296) = v6;
    *v6 = v0;
    v6[1] = sub_2A0CE8;
    v2 = *(v0 + 264);
    v3 = *(v0 + 128);
    v4 = *(v0 + 256);
    v5 = 0;
    goto LABEL_5;
  }

  v8 = *(v0 + 309);
  v9 = swift_task_alloc();
  *(v0 + 288) = v9;
  *v9 = v0;
  v9[1] = sub_2A0B5C;
  v10 = *(v0 + 224);
  v11 = *(v0 + 128);

  return sub_2A2CE8(v8 & 1, v11, sub_2A6590, v10);
}

uint64_t sub_2A0870()
{
  v1 = *v0;

  v2 = *(v1 + 248);
  v3 = *(v1 + 240);

  return _swift_task_switch(sub_2A09B4, v3, v2);
}

uint64_t sub_2A09B4()
{
  if (qword_3BB730 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 309);
  v3 = *(v0 + 168);
  v2 = *(v0 + 176);
  v4 = *(v0 + 160);
  v5 = sub_57AD8(v4, qword_3BF980);
  (*(v3 + 16))(v2, v5, v4);
  *(v0 + 304) = 1;
  sub_2BF458();
  (*(v3 + 8))(v2, v4);
  if (v1 == 2)
  {

    v6 = *(v0 + 200);
    v7 = *(v0 + 208);

    return _swift_task_switch(sub_2A0C7C, v6, v7);
  }

  else
  {
    v8 = *(v0 + 309);
    v9 = swift_task_alloc();
    *(v0 + 288) = v9;
    *v9 = v0;
    v9[1] = sub_2A0B5C;
    v10 = *(v0 + 224);
    v11 = *(v0 + 128);

    return sub_2A2CE8(v8 & 1, v11, sub_2A6590, v10);
  }
}

uint64_t sub_2A0B5C()
{
  v1 = *v0;

  v2 = *(v1 + 248);
  v3 = *(v1 + 240);

  return _swift_task_switch(sub_2A6E40, v3, v2);
}

uint64_t sub_2A0C7C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2A0CE8()
{
  v1 = *v0;

  v2 = *(v1 + 248);
  v3 = *(v1 + 240);

  return _swift_task_switch(sub_2A0E2C, v3, v2);
}

uint64_t sub_2A0E2C()
{

  v1 = *(v0 + 200);
  v2 = *(v0 + 208);

  return _swift_task_switch(sub_2A0C7C, v1, v2);
}

void static BSUINoticeViewController.presentNoticeForRemoving(assetContentType:collectionTitle:options:useNonSpecificDeterminerInMessage:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_6620C(&qword_3BFDD8, qword_2E9490);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_2E9480;
  *(v7 + 32) = sub_2C5CF8();
  sub_66278(0, &qword_3BC790, NSNumber_ptr);
  isa = sub_2C5B18().super.isa;

  v9 = sub_2C5888();
  v10 = sub_2C57C8().super.isa;
  [ObjCClassFromMetadata presentNoticeForRemovingBooks:isa fromCollectionNamed:v9 options:v10 useNonSpecificDeterminerInMessage:a5 & 1];
}

double static BSUINoticeViewController.presentNoticeForAdding(assets:collectionTitle:collectionID:source:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7)
{
  v8 = v7;
  v16 = sub_6620C(&unk_3BDBB0, &qword_2E47D0);
  __chkstk_darwin(v16 - 8);
  v18 = &v24 - v17;
  v19 = sub_2C5C58();
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  sub_2C5C18();
  v20 = a6;

  v21 = sub_2C5C08();
  v22 = swift_allocObject();
  v22[2] = v21;
  v22[3] = &protocol witness table for MainActor;
  v22[4] = v8;
  v22[5] = a1;
  v22[6] = a2;
  v22[7] = a3;
  v22[8] = a4;
  v22[9] = a5;
  v22[10] = a7;
  v22[11] = a6;
  sub_249B98(0, 0, v18, &unk_2FBD80, v22);

  return result;
}

uint64_t sub_2A1154(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 72) = v15;
  *(v8 + 56) = v14;
  *(v8 + 40) = a7;
  *(v8 + 48) = a8;
  *(v8 + 24) = a5;
  *(v8 + 32) = a6;
  *(v8 + 16) = a4;
  v9 = sub_6620C(&qword_3BCB88, &qword_2E3C20);
  *(v8 + 80) = v9;
  *(v8 + 88) = *(v9 - 8);
  *(v8 + 96) = swift_task_alloc();
  *(v8 + 104) = sub_2C5C18();
  *(v8 + 112) = sub_2C5C08();
  v11 = sub_2C5BB8();
  *(v8 + 120) = v11;
  *(v8 + 128) = v10;

  return _swift_task_switch(sub_2A1274, v11, v10);
}

uint64_t sub_2A1274()
{
  if (v0[8])
  {
    v1 = v0[8];
  }

  else
  {
    v1 = sub_6864C(_swiftEmptyArrayStorage);
  }

  v0[17] = v1;
  v2 = v0[9];
  v3 = swift_task_alloc();
  v0[18] = v3;
  *(v3 + 16) = v2;

  v0[19] = sub_2C5C08();
  v5 = sub_2C5BB8();
  v0[20] = v5;
  v0[21] = v4;

  return _swift_task_switch(sub_2A1344, v5, v4);
}

uint64_t sub_2A1344()
{
  v1 = *(v0 + 56);
  v2 = sub_2C58C8();
  if (v1)
  {
    if (v2 == *(v0 + 48) && *(v0 + 56) == v3)
    {
      LOBYTE(v1) = 1;
    }

    else
    {
      LOBYTE(v1) = sub_2C65B8();
    }
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_66278(0, &qword_3BC790, NSNumber_ptr);
  isa = sub_2C57C8().super.isa;
  v7 = sub_2C5888();
  v8 = [ObjCClassFromMetadata _noticeMessageForAddingAssets:isa toCollectionNamed:v7 isAddingToWantToRead:v1 & 1 useNonSpecificDeterminerInMessage:0];

  if (v8)
  {
    v9 = sub_2C58C8();
    v11 = v10;

    *(v0 + 176) = v9;
    *(v0 + 184) = v11;
    if (v1)
    {
      if (qword_3BB730 != -1)
      {
        swift_once();
      }

      v13 = *(v0 + 88);
      v12 = *(v0 + 96);
      v14 = *(v0 + 80);
      v15 = sub_57AD8(v14, qword_3BF980);
      v16 = *(v13 + 16);
      v16(v12, v15, v14);
      sub_2BF448();
      v17 = *(v13 + 8);
      v17(v12, v14);
      if (*(v0 + 225) == 1)
      {
        if (qword_3BB728 != -1)
        {
          swift_once();
        }

        v18 = *(v0 + 96);
        v19 = *(v0 + 80);
        v20 = sub_57AD8(v19, qword_3BF968);
        v16(v18, v20, v19);
        sub_2BF448();
        v17(v18, v19);
        v21 = *(v0 + 226);
      }

      else
      {
        v21 = 1;
      }
    }

    else
    {
      v21 = 0;
    }

    *(v0 + 227) = v21;
    v24 = swift_task_alloc();
    *(v0 + 192) = v24;
    *v24 = v0;
    v24[1] = sub_2A1680;

    return sub_2A23F4(v1 & 1);
  }

  else
  {

    v22 = *(v0 + 120);
    v23 = *(v0 + 128);

    return _swift_task_switch(sub_2A1D88, v22, v23);
  }
}

uint64_t sub_2A1680(char a1)
{
  v2 = *v1;
  *(*v1 + 228) = a1;

  v3 = *(v2 + 168);
  v4 = *(v2 + 160);

  return _swift_task_switch(sub_2A17A8, v4, v3);
}

uint64_t sub_2A17A8()
{
  if (*(v0 + 227) == 1)
  {
    v1 = swift_task_alloc();
    *(v0 + 200) = v1;
    *v1 = v0;
    v1[1] = sub_2A1950;
    v2 = *(v0 + 184);
    v3 = *(v0 + 136);
    v4 = *(v0 + 176);
    v5 = 1;
LABEL_5:

    return sub_2A2804(v4, v2, v5, v3);
  }

  if (*(v0 + 228) == 2)
  {
    v6 = swift_task_alloc();
    *(v0 + 216) = v6;
    *v6 = v0;
    v6[1] = sub_2A1DF4;
    v2 = *(v0 + 184);
    v3 = *(v0 + 136);
    v4 = *(v0 + 176);
    v5 = 0;
    goto LABEL_5;
  }

  v8 = *(v0 + 228);
  v9 = swift_task_alloc();
  *(v0 + 208) = v9;
  *v9 = v0;
  v9[1] = sub_2A1C44;
  v10 = *(v0 + 136);
  v11 = *(v0 + 144);

  return sub_2A2CE8(v8 & 1, v10, sub_2A6824, v11);
}

uint64_t sub_2A1950()
{
  v1 = *v0;

  v2 = *(v1 + 168);
  v3 = *(v1 + 160);

  return _swift_task_switch(sub_2A1A94, v3, v2);
}

uint64_t sub_2A1A94()
{
  if (qword_3BB730 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 228);
  v3 = *(v0 + 88);
  v2 = *(v0 + 96);
  v4 = *(v0 + 80);
  v5 = sub_57AD8(v4, qword_3BF980);
  (*(v3 + 16))(v2, v5, v4);
  *(v0 + 224) = 1;
  sub_2BF458();
  (*(v3 + 8))(v2, v4);
  if (v1 == 2)
  {

    v6 = *(v0 + 120);
    v7 = *(v0 + 128);

    return _swift_task_switch(sub_2A1D88, v6, v7);
  }

  else
  {
    v8 = *(v0 + 228);
    v9 = swift_task_alloc();
    *(v0 + 208) = v9;
    *v9 = v0;
    v9[1] = sub_2A1C44;
    v10 = *(v0 + 136);
    v11 = *(v0 + 144);

    return sub_2A2CE8(v8 & 1, v10, sub_2A6824, v11);
  }
}

uint64_t sub_2A1C44()
{
  v1 = *v0;

  v2 = *(v1 + 168);
  v3 = *(v1 + 160);

  return _swift_task_switch(sub_2A6E44, v3, v2);
}

uint64_t sub_2A1D88()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2A1DF4()
{
  v1 = *v0;

  v2 = *(v1 + 168);
  v3 = *(v1 + 160);

  return _swift_task_switch(sub_2A1F54, v3, v2);
}

uint64_t sub_2A1F54()
{

  v1 = *(v0 + 120);
  v2 = *(v0 + 128);

  return _swift_task_switch(sub_2A1D88, v1, v2);
}

uint64_t sub_2A1FC0(void *a1, void *a2)
{
  v3 = a2;
  if (!a2)
  {
    v3 = a1;
  }

  v4 = a2;
  UIViewController.jetActionHandlerInContext.getter();
  v6 = v5;
  ObjectType = swift_getObjectType();
  v8 = (*(v6 + 8))(ObjectType, v6);
  swift_unknownObjectRelease();
  v9 = [v3 ba_effectiveAnalyticsTracker];

  return v8;
}

double sub_2A23C0(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;

  return result;
}

uint64_t sub_2A23F4(char a1)
{
  *(v2 + 152) = v1;
  *(v2 + 192) = a1;
  sub_2C5C18();
  *(v2 + 160) = sub_2C5C08();
  v4 = sub_2C5BB8();
  *(v2 + 168) = v4;
  *(v2 + 176) = v3;

  return _swift_task_switch(sub_2A2490, v4, v3);
}

uint64_t sub_2A2490()
{
  if (*(v0 + 192) == 1 && (v1 = [swift_getObjCClassFromMetadata() addToWTRDelegate], (*(v0 + 184) = v1) != 0))
  {
    v2 = v1;
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 144;
    *(v0 + 24) = sub_2A2634;
    v4 = swift_continuation_init();
    *(v0 + 136) = sub_6620C(&qword_3C9E80, &qword_2FBE38);
    *(v0 + 80) = _NSConcreteStackBlock;
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_2A51C0;
    *(v0 + 104) = &unk_395720;
    *(v0 + 112) = v4;
    [v2 addToWTR:ObjCClassFromMetadata priceTrackingOptInTypeWithCompletion:v0 + 80];

    return _swift_continuation_await(v0 + 16);
  }

  else
  {

    v5 = *(v0 + 8);

    return v5(2);
  }
}

uint64_t sub_2A2634()
{
  v1 = *(*v0 + 176);
  v2 = *(*v0 + 168);

  return _swift_task_switch(sub_2A273C, v2, v1);
}

uint64_t sub_2A273C()
{

  v1 = v0[18];
  if (v1 >= 3)
  {
    type metadata accessor for BSUIAddToWTRDelegatePriceTrackingOptInType(0);
    v0[10] = v1;

    return _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)(v4, v0 + 10, v4, &type metadata for UInt);
  }

  else
  {
    swift_unknownObjectRelease();
    v2 = v0[1];

    return v2(0x10002u >> (8 * v1));
  }
}

uint64_t sub_2A2804(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v5 + 160) = a4;
  *(v5 + 168) = v4;
  *(v5 + 224) = a3;
  *(v5 + 144) = a1;
  *(v5 + 152) = a2;
  sub_2C5C18();
  *(v5 + 176) = sub_2C5C08();
  v7 = sub_2C5BB8();
  *(v5 + 184) = v7;
  *(v5 + 192) = v6;

  return _swift_task_switch(sub_2A28A4, v7, v6);
}

uint64_t sub_2A28A4()
{
  v1 = *(v0 + 224);
  sub_1DA078(0x6465646441);
  v2 = [swift_getObjCClassFromMetadata() noticeViewAddedImage];
  *(v0 + 200) = v2;
  if (v1 == 1)
  {
    sub_1DA078(0x544920544F47);
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v2;
  v6 = sub_2C5888();

  v7 = sub_2C5888();
  if (v4)
  {
    v8 = sub_2C5888();
  }

  else
  {
    v8 = 0;
  }

  v9 = [objc_allocWithZone(BSUINoticeViewController) initWithTitle:v6 message:v7 image:v5 confirmString:v8];
  *(v0 + 208) = v9;

  if (v9)
  {
    v10 = v9;
    isa = sub_2C57C8().super.isa;
    *(v0 + 216) = isa;
    *(v0 + 16) = v0;
    *(v0 + 24) = sub_2A2B5C;
    v12 = swift_continuation_init();
    *(v0 + 136) = sub_6620C(&qword_3C9E30, &qword_2FBDF8);
    *(v0 + 80) = _NSConcreteStackBlock;
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_2A521C;
    *(v0 + 104) = &unk_3956F8;
    *(v0 + 112) = v12;
    [v10 _runWithOptions:isa completion:v0 + 80];

    return _swift_continuation_await(v0 + 16);
  }

  else
  {

    v13 = *(v0 + 8);

    return v13();
  }
}

uint64_t sub_2A2B5C()
{
  v1 = *(*v0 + 192);
  v2 = *(*v0 + 184);

  return _swift_task_switch(sub_2A2C64, v2, v1);
}

uint64_t sub_2A2C64()
{
  v2 = *(v0 + 208);
  v1 = *(v0 + 216);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_2A2CE8(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 752) = v4;
  *(v5 + 744) = a4;
  *(v5 + 736) = a3;
  *(v5 + 728) = a2;
  *(v5 + 1129) = a1;
  sub_2C36F8();
  *(v5 + 760) = swift_task_alloc();
  v6 = sub_6620C(&qword_3C9D58, &qword_2FBD90);
  *(v5 + 768) = v6;
  *(v5 + 776) = *(v6 - 8);
  *(v5 + 784) = swift_task_alloc();
  *(v5 + 792) = sub_6620C(&qword_3C9D60, &qword_2FBD98);
  *(v5 + 800) = swift_task_alloc();
  v7 = sub_6620C(&qword_3C9D68, &qword_2FBDA0);
  *(v5 + 808) = v7;
  *(v5 + 816) = *(v7 - 8);
  *(v5 + 824) = swift_task_alloc();
  *(v5 + 832) = sub_6620C(&qword_3C9D70, &qword_2FBDA8);
  *(v5 + 840) = swift_task_alloc();
  *(v5 + 848) = sub_6620C(&qword_3C9D78, &qword_2FBDB0);
  *(v5 + 856) = swift_task_alloc();
  *(v5 + 864) = swift_task_alloc();
  v8 = sub_2C1A28();
  *(v5 + 872) = v8;
  *(v5 + 880) = *(v8 - 8);
  *(v5 + 888) = swift_task_alloc();
  *(v5 + 896) = type metadata accessor for RootHostingControllerConfiguration(0);
  *(v5 + 904) = swift_task_alloc();
  *(v5 + 912) = swift_task_alloc();
  *(v5 + 920) = swift_task_alloc();
  *(v5 + 928) = sub_6620C(&qword_3BCE28, &qword_2E9620);
  *(v5 + 936) = swift_task_alloc();
  *(v5 + 944) = swift_task_alloc();
  *(v5 + 952) = swift_task_alloc();
  sub_2C4BF8();
  *(v5 + 960) = swift_task_alloc();
  v9 = sub_2C5628();
  *(v5 + 968) = v9;
  *(v5 + 976) = *(v9 - 8);
  *(v5 + 984) = swift_task_alloc();
  *(v5 + 992) = sub_2C5C18();
  *(v5 + 1000) = sub_2C5C08();
  v11 = sub_2C5BB8();
  *(v5 + 1008) = v11;
  *(v5 + 1016) = v10;

  return _swift_task_switch(sub_2A30D4, v11, v10);
}

uint64_t sub_2A30D4()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [ObjCClassFromMetadata addToWTRDelegate];
  *(v0 + 1024) = v2;
  if (!v2)
  {

    if (qword_3BB810 != -1)
    {
      swift_once();
    }

    v9 = sub_2C00B8();
    sub_57AD8(v9, qword_3E8880);
    v10 = sub_2C0098();
    v11 = sub_2C5DC8();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_0, v10, v11, "Missing delegate", v12, 2u);
    }

    goto LABEL_21;
  }

  isa = sub_2C57C8().super.isa;
  v4 = [ObjCClassFromMetadata _presentingViewControllerForModalWithOptions:isa];
  *(v0 + 1032) = v4;

  if (!v4)
  {

    if (qword_3BB810 != -1)
    {
      swift_once();
    }

    v13 = sub_2C00B8();
    sub_57AD8(v13, qword_3E8880);
    v10 = sub_2C0098();
    v14 = sub_2C5DC8();
    if (os_log_type_enabled(v10, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_0, v10, v14, "Missing presenting view controller", v15, 2u);

      swift_unknownObjectRelease();
      goto LABEL_22;
    }

    swift_unknownObjectRelease();
LABEL_21:

    goto LABEL_22;
  }

  v5 = (*(v0 + 736))(v4);
  *(v0 + 1040) = v5;
  *(v0 + 1048) = v6;
  if (v5)
  {

    v7 = swift_task_alloc();
    *(v0 + 1056) = v7;
    *v7 = v0;
    v7[1] = sub_2A35B4;

    return BaseObjectGraph.withSyncDependenciesForSwiftUI.getter();
  }

  v16 = v6;

  if (qword_3BB810 != -1)
  {
    swift_once();
  }

  v17 = sub_2C00B8();
  sub_57AD8(v17, qword_3E8880);
  v18 = sub_2C0098();
  v19 = sub_2C5DC8();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_0, v18, v19, "Missing objectGraph", v20, 2u);

    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
  }

LABEL_22:

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_2A35B4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 1064) = a1;
  *(v4 + 1072) = v1;

  v5 = *(v3 + 1016);
  v6 = *(v3 + 1008);
  if (v1)
  {
    v7 = sub_2A4E2C;
  }

  else
  {
    v7 = sub_2A36FC;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_2A36FC()
{
  v1 = *(v0 + 1048);
  if (v1)
  {
    v2 = *(v0 + 1024);
    v91 = *(v0 + 984);
    v80 = *(v0 + 952);
    v106 = *(v0 + 944);
    v88 = *(v0 + 936);
    v86 = *(v0 + 920);
    v107 = *(v0 + 912);
    v90 = *(v0 + 904);
    v3 = *(v0 + 880);
    v82 = *(v0 + 888);
    v84 = *(v0 + 872);
    v103 = *(v0 + 848);
    v104 = *(v0 + 864);
    v100 = *(v0 + 840);
    v101 = *(v0 + 832);
    v102 = *(v0 + 856);
    v97 = *(v0 + 824);
    v98 = *(v0 + 816);
    v99 = *(v0 + 808);
    v96 = *(v0 + 792);
    v94 = *(v0 + 800);
    v95 = *(v0 + 776);
    v92 = *(v0 + 784);
    v93 = *(v0 + 768);
    v4 = *(v0 + 752);
    v78 = *(v0 + 1129);
    v5 = swift_allocObject();
    *(v0 + 1080) = v5;
    swift_unknownObjectWeakInit();
    v6 = swift_allocObject();
    *(v0 + 1088) = v6;
    v6[2] = v1;
    v6[3] = v2;
    v6[4] = v4;
    v7 = v1;
    swift_unknownObjectRetain();
    sub_2C4BE8();
    sub_2C5598();
    sub_2C5588();
    v8 = sub_2C0778();
    (*(*(v8 - 8) + 56))(v80, 1, 1, v8);
    v105 = swift_task_alloc();
    *(v105 + 16) = v78 & 1;
    *(v105 + 24) = &unk_2FBDC0;
    *(v105 + 32) = v5;
    *(v105 + 40) = &unk_2FBDD8;
    *(v105 + 48) = v6;
    v75 = sub_6620C(&qword_3C9DE8, &qword_2FBDE0);
    v74 = objc_allocWithZone(v75);
    (*(v3 + 104))(v82, enum case for NavigationBarTitleStyle.inline(_:), v84);
    v9 = v7;

    sub_2C0808();
    *v86 = 1;
    sub_77D40(v80, v106);
    sub_78BA4(v86, v107);
    v10 = objc_allocWithZone(type metadata accessor for RootHostingController(0));
    *&v10[qword_3BCB60 + 8] = 0;
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakInit();
    v11 = &v10[qword_3BCC58];
    *v11 = 0;
    v11[8] = 1;
    v10[qword_3BCB80] = 0;
    *&v10[qword_3BCC60] = &_swiftEmptySetSingleton;
    v85 = type metadata accessor for HostProxy(0);
    swift_allocObject();
    v12 = v9;

    v13 = sub_C2644();
    v79 = qword_3BCB68;
    *&v10[qword_3BCB68] = v13;
    sub_2C09A8();
    swift_allocObject();
    v14 = sub_2C0998();
    v77 = qword_3BCC48;
    *&v10[qword_3BCC48] = v14;
    v83 = type metadata accessor for NavigationProvider();
    v15 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v81 = qword_3BCC50;
    *&v10[qword_3BCC50] = v15;
    sub_2BEED8();
    swift_allocObject();
    v16 = sub_2BEEC8();
    v76 = qword_3BCB90;
    *&v10[qword_3BCB90] = v16;
    sub_78BA4(v107, &v10[qword_3E8830]);
    sub_6620C(&qword_3BC330, &unk_2E3D50);
    sub_2C4968();
    v87 = swift_allocObject();
    *(v87 + 16) = xmmword_2E3BC0;
    sub_77D40(v106, v88);
    sub_2C4958();
    sub_2BF028();
    *(v0 + 672) = v12;
    v89 = v12;
    sub_2C4958();
    sub_2BEC48();
    swift_allocObject();
    *(v0 + 680) = sub_2BEC38();
    sub_2C4958();
    *(v0 + 1128) = sub_2C07D8() & 1;
    sub_2C4958();
    *(v0 + 688) = *&v10[v77];

    sub_2C4958();
    *(v0 + 696) = *&v10[v76];

    sub_2C4958();
    *(v0 + 704) = *&v10[v79];

    sub_2C4958();
    sub_6620C(&unk_3BFED0, &unk_2E7D50);
    sub_2C53F8();
    *(v0 + 616) = sub_2C53E8();
    *(v0 + 624) = &protocol witness table for BasicImpressionsTracker;
    sub_2C4958();
    sub_6620C(&qword_3BCE30, qword_2E3D60);
    v17 = *&v10[v81];
    *(v0 + 472) = v83;
    *(v0 + 480) = &protocol witness table for NavigationProvider;
    *(v0 + 448) = v17;

    sub_2C4958();
    type metadata accessor for PageLifecycleHandler();
    v18 = swift_allocObject();
    type metadata accessor for Page.LifecycleInfo();
    v19 = swift_allocObject();
    *(v19 + 16) = _swiftEmptyDictionarySingleton;
    *(v18 + 16) = v19;
    *(v0 + 712) = v18;
    sub_2C4958();
    sub_6620C(&qword_3BCE38, &unk_2E7D60);
    v20 = *&v10[v79];
    *(v0 + 512) = v85;
    *(v0 + 520) = sub_2A6DD4(&qword_3BCE40, type metadata accessor for HostProxy, &protocol conformance descriptor for HostProxy);
    *(v0 + 488) = v20;

    sub_2C4958();
    sub_6620C(&qword_3BCE48, &unk_2E3DB0);
    v21 = *&v10[v79];
    *(v0 + 552) = v85;
    *(v0 + 560) = sub_2A6DD4(&unk_3BCE50, type metadata accessor for HostProxy, &protocol conformance descriptor for HostProxy);
    *(v0 + 528) = v21;

    sub_2C4958();
    sub_78BA4(v107, v90);
    sub_2C4958();
    *(v0 + 720) = v87;
    sub_6620C(&unk_3BD220, &qword_2E3FF0);
    sub_72B74(&qword_3BCE60, &unk_3BD220, &qword_2E3FF0, &protocol conformance descriptor for [A]);
    v22 = sub_2C4DF8();

    v23 = swift_task_alloc();
    v23[2] = sub_2A69DC;
    v23[3] = v105;
    v23[4] = v22;

    sub_2C3738();
    type metadata accessor for PriceTrackingOptInView(0);
    sub_2A6DD4(&qword_3C9DF0, type metadata accessor for PriceTrackingOptInView, &unk_2E442C);
    sub_2C2518();

    sub_72B74(&qword_3C9DF8, &qword_3C9D58, &qword_2FBD90, &protocol conformance descriptor for ScrollView<A>);
    sub_2C4028();
    (*(v95 + 8))(v92, v93);
    *(v94 + *(v96 + 36)) = sub_2C3768();
    *(swift_task_alloc() + 16) = v91;
    sub_6620C(&qword_3C9E00, &qword_2FBDE8);
    sub_2A6A24();
    v24 = sub_718D4(&qword_3C9E10, &qword_2FBDF0);
    v25 = sub_72B74(&qword_3C9E18, &qword_3C9E10, &qword_2FBDF0, &protocol conformance descriptor for ToolbarItem<A, B>);
    *(v0 + 632) = v24;
    *(v0 + 640) = v25;
    swift_getOpaqueTypeConformance2();
    sub_2C40D8();

    sub_2A6B20(v94);
    v72 = sub_2C46A8();
    v73 = v26;
    LOBYTE(v71) = 1;
    LOBYTE(v70) = 1;
    sub_2C2AD8();
    (*(v98 + 32))(v100, v97, v99);
    v27 = (v100 + *(v101 + 36));
    v29 = *(v0 + 160);
    v28 = *(v0 + 176);
    v30 = *(v0 + 144);
    v27[3] = *(v0 + 128);
    v27[4] = v30;
    v27[5] = v29;
    v27[6] = v28;
    v32 = *(v0 + 96);
    v31 = *(v0 + 112);
    *v27 = *(v0 + 80);
    v27[1] = v32;
    v27[2] = v31;
    sub_69130(v100, v102, &qword_3C9D70, &qword_2FBDA8);
    v33 = (v102 + *(v103 + 36));
    *v33 = 0xD000000000000012;
    v33[1] = 0x8000000000308460;
    v33[2] = v22;
    sub_69130(v102, v104, &qword_3C9D78, &qword_2FBDB0);
    *(v0 + 256) = v22;
    *(v0 + 288) = v103;
    *(v0 + 296) = sub_2A6B88();
    v34 = sub_720C8((v0 + 264));
    sub_69130(v104, v34, &qword_3C9D78, &qword_2FBDB0);
    *(v0 + 304) = 0;
    *(v0 + 312) = 0;
    v35 = *(v0 + 272);
    *(v0 + 192) = *(v0 + 256);
    *(v0 + 208) = v35;
    v36 = *(v0 + 304);
    *(v0 + 224) = *(v0 + 288);
    *(v0 + 240) = v36;
    sub_77E04(v0 + 192, v0 + 320);

    v37 = sub_2C3398();
    swift_beginAccess();
    swift_unknownObjectWeakAssign();
    swift_beginAccess();
    swift_unknownObjectWeakAssign();
    sub_731AC();
    sub_73578();

    sub_E060C(v107);
    sub_69198(v106, &qword_3BCE28, &qword_2E9620);
    sub_77C1C(v0 + 192);
    v38 = v37;
    sub_2C36E8();
    sub_2C3378();

    if (_UISolariumEnabled())
    {
      v39 = [v38 view];
      if (!v39)
      {
        __break(1u);
        return withCheckedContinuation<A>(isolation:function:_:)(v39, v40, v41, v42, v43, v44, v45, v46);
      }

      v47 = v39;
      [v39 setBackgroundColor:0];
    }

    *&v74[qword_3C65B8] = v38;
    *(v0 + 648) = v74;
    *(v0 + 656) = v75;
    v48 = v38;
    v49 = objc_msgSendSuper2((v0 + 648), "initWithRootViewController:", v48);
    *(v0 + 1096) = v49;
    v50 = [v49 sheetPresentationController];
    if (v50)
    {
      v51 = v50;
      if ((_UISolariumEnabled() & 1) == 0)
      {
        sub_2C0B58();
        sub_2C5F18();
      }

      sub_6620C(&qword_3BFDD8, qword_2E9490);
      v52 = swift_allocObject();
      *(v52 + 16) = xmmword_2E9480;
      sub_66278(0, qword_3C0088, UISheetPresentationControllerDetent_ptr);
      swift_allocObject();
      swift_unknownObjectWeakInit();

      v53 = sub_2C5F28();

      *(v52 + 32) = v53;
      isa = sub_2C5B18().super.isa;

      [v51 setDetents:isa];
    }

    v61 = *(v0 + 1032);
    v62 = *(v0 + 984);
    v63 = *(v0 + 976);
    v64 = *(v0 + 968);
    v65 = *(v0 + 952);
    sub_E060C(*(v0 + 920));
    sub_69198(v65, &qword_3BCE28, &qword_2E9620);

    (*(v63 + 8))(v62, v64);
    v66 = sub_2C5C08();
    *(v0 + 1104) = v66;
    v67 = swift_task_alloc();
    *(v0 + 1112) = v67;
    *(v67 + 16) = v61;
    *(v67 + 24) = v49;
    v39 = swift_task_alloc();
    *(v0 + 1120) = v39;
    *v39 = v0;
    v39[1] = sub_2A48DC;
    v41 = &protocol witness table for MainActor;
    v44 = sub_2A6D80;
    v42 = 0xD000000000000044;
    v43 = 0x8000000000308480;
    v46 = &type metadata for () + 8;
    v40 = v66;
    v45 = v67;

    return withCheckedContinuation<A>(isolation:function:_:)(v39, v40, v41, v42, v43, v44, v45, v46);
  }

  if (qword_3BB810 != -1)
  {
    swift_once();
  }

  v55 = sub_2C00B8();
  sub_57AD8(v55, qword_3E8880);
  v56 = sub_2C0098();
  v57 = sub_2C5DC8();
  v58 = os_log_type_enabled(v56, v57);
  v59 = *(v0 + 1032);
  if (v58)
  {
    v60 = swift_slowAlloc();
    *v60 = 0;
    _os_log_impl(&dword_0, v56, v57, "Missing tracker", v60, 2u);

    swift_unknownObjectRelease();
    v56 = v59;
  }

  else
  {

    swift_unknownObjectRelease();
  }

  v68 = *(v0 + 8);

  return v68();
}

uint64_t sub_2A48DC()
{
  v1 = *v0;

  v2 = *(v1 + 1016);
  v3 = *(v1 + 1008);

  return _swift_task_switch(sub_2A4A3C, v3, v2);
}

uint64_t sub_2A4A3C()
{
  v1 = *(v0 + 1024);
  UIAccessibilityPostNotification(UIAccessibilityLayoutChangedNotification, *(v0 + 1096));
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v0 + 16) = v0;
  *(v0 + 24) = sub_2A4B80;
  v3 = swift_continuation_init();
  *(v0 + 440) = sub_6620C(&qword_3C9E30, &qword_2FBDF8);
  *(v0 + 384) = _NSConcreteStackBlock;
  *(v0 + 392) = 1107296256;
  *(v0 + 400) = sub_2A521C;
  *(v0 + 408) = &unk_3955E0;
  *(v0 + 416) = v3;
  [v1 addToWTR:ObjCClassFromMetadata didShowPriceTrackingOptInWithCompletion:v0 + 384];

  return _swift_continuation_await(v0 + 16);
}

uint64_t sub_2A4B80()
{
  v1 = *(*v0 + 1016);
  v2 = *(*v0 + 1008);

  return _swift_task_switch(sub_2A4C88, v2, v1);
}

uint64_t sub_2A4C88()
{
  v1 = v0[137];
  v2 = v0[131];
  v3 = v0[129];

  swift_unknownObjectRelease();

  v4 = v0[1];

  return v4();
}

uint64_t sub_2A4E2C()
{
  v18 = v0;

  if (qword_3BB810 != -1)
  {
    swift_once();
  }

  v1 = sub_2C00B8();
  sub_57AD8(v1, qword_3E8880);

  swift_errorRetain();
  v2 = sub_2C0098();
  v3 = sub_2C5DC8();

  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 1048);
  v6 = *(v0 + 1040);
  if (v4)
  {
    v16 = *(v0 + 1032);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v7 = 136315394;
    *(v0 + 664) = v6;
    sub_2C4E28();
    sub_2A6DD4(&qword_3C9D80, &type metadata accessor for BaseObjectGraph, &protocol conformance descriptor for BaseObjectGraph);
    v10 = sub_2C6568();
    v12 = sub_5CCF4(v10, v11, &v17);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2112;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v13;
    *v8 = v13;
    _os_log_impl(&dword_0, v2, v3, "Failed to load dependencies in object graph: %s, error: %@", v7, 0x16u);
    sub_69198(v8, &qword_3BFEE0, &unk_2E9520);

    sub_68CD0(v9);

    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
  }

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_2A51C0(uint64_t a1, uint64_t a2)
{
  v3 = *sub_72084((a1 + 32), *(a1 + 56));
  **(*(v3 + 64) + 40) = a2;

  return _swift_continuation_resume(v3);
}

uint64_t sub_2A521C(uint64_t a1)
{
  v1 = *sub_72084((a1 + 32), *(a1 + 56));

  return _swift_continuation_resume(v1);
}

uint64_t sub_2A5250(uint64_t a1)
{
  v1[5] = a1;
  v1[6] = sub_2C5C18();
  v1[7] = sub_2C5C08();
  v3 = sub_2C5BB8();
  v1[8] = v3;
  v1[9] = v2;

  return _swift_task_switch(sub_2A52EC, v3, v2);
}

uint64_t sub_2A52EC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[10] = Strong;
  if (Strong)
  {
    v2 = Strong;
    v3 = [Strong presentedViewController];
    if (v3)
    {

      v4 = sub_2C5C08();
      v0[11] = v4;
      v5 = swift_task_alloc();
      v0[12] = v5;
      *(v5 + 16) = v2;
      v6 = swift_task_alloc();
      v0[13] = v6;
      *v6 = v0;
      v6[1] = sub_2A552C;

      return withCheckedContinuation<A>(isolation:function:_:)(v6, v4, &protocol witness table for MainActor, 0xD000000000000044, 0x8000000000308480, sub_2A6E1C, v5, &type metadata for () + 8);
    }
  }

  if (qword_3BB810 != -1)
  {
    swift_once();
  }

  v7 = sub_2C00B8();
  sub_57AD8(v7, qword_3E8880);
  v8 = sub_2C0098();
  v9 = sub_2C5DC8();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_0, v8, v9, "Unable to dismiss opt-in sheet because presenter or presented VC is nil", v10, 2u);
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_2A552C()
{
  v1 = *v0;

  v2 = *(v1 + 72);
  v3 = *(v1 + 64);

  return _swift_task_switch(sub_2A568C, v3, v2);
}

uint64_t sub_2A568C()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_2A56F8(uint64_t a1, void *a2)
{
  v4 = sub_6620C(&qword_3C8868, &qword_2F91F8);
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = aBlock - v7;
  (*(v5 + 16))(aBlock - v7, a1, v4, v6);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v8, v4);
  aBlock[4] = sub_2A6E50;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_750DC;
  aBlock[3] = &unk_3956D0;
  v11 = _Block_copy(aBlock);

  [a2 dismissViewControllerAnimated:1 completion:v11];
  _Block_release(v11);
}

uint64_t sub_2A58AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[19] = a2;
  v3[20] = a3;
  v3[18] = a1;
  v4 = sub_2BF0F8();
  v3[21] = v4;
  v3[22] = *(v4 - 8);
  v3[23] = swift_task_alloc();
  v5 = sub_2BEDA8();
  v3[24] = v5;
  v3[25] = *(v5 - 8);
  v3[26] = swift_task_alloc();
  v6 = sub_2BEF38();
  v3[27] = v6;
  v3[28] = *(v6 - 8);
  v3[29] = swift_task_alloc();
  v7 = sub_2BEDF8();
  v3[30] = v7;
  v3[31] = *(v7 - 8);
  v3[32] = swift_task_alloc();
  v8 = sub_2BE918();
  v3[33] = v8;
  v3[34] = *(v8 - 8);
  v3[35] = swift_task_alloc();
  v9 = sub_2BEDC8();
  v3[36] = v9;
  v3[37] = *(v9 - 8);
  v3[38] = swift_task_alloc();
  sub_2C5C18();
  v3[39] = sub_2C5C08();
  v11 = sub_2C5BB8();
  v3[40] = v11;
  v3[41] = v10;

  return _swift_task_switch(sub_2A5B70, v11, v10);
}

uint64_t sub_2A5B70()
{
  v1 = v0;
  v25 = v0 + 2;
  v2 = v0[38];
  v11 = v0[36];
  v12 = v0[37];
  v16 = v0[32];
  v17 = v0[30];
  v13 = v0[28];
  v14 = v0[29];
  v15 = v0[27];
  v22 = v0[26];
  v23 = v0[24];
  v24 = v0[25];
  v18 = v0[31];
  v19 = v0[22];
  v20 = v0[23];
  v21 = v0[21];
  v26 = v0[19];
  (*(v1[34] + 104))(v0[35], enum case for UserAction.optIn(_:), v1[33]);
  sub_2BEDB8();
  sub_6620C(&unk_3C43E0, &unk_2E9610);
  v29 = sub_2BE798();
  v3 = *(v29 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_2E3F30;
  v28 = enum case for DataEventTrait.onlyOnce(_:);
  v27 = *(v3 + 104);
  v27(v5 + v4);
  sub_2A6DD4(&qword_3C9E48, &type metadata accessor for NotificationOptInActionData, &protocol conformance descriptor for NotificationOptInActionData);
  sub_2A6DD4(&qword_3C9E50, &type metadata accessor for NotificationOptInActionData, &protocol conformance descriptor for NotificationOptInActionData);
  sub_2BEFE8();

  (*(v12 + 8))(v2, v11);
  (*(v13 + 104))(v14, enum case for Location.unknown(_:), v15);
  sub_2BEDE8();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_2E3F30;
  (v27)(v6 + v4, v28, v29);
  sub_2A6DD4(&qword_3C9E58, &type metadata accessor for NotificationOptInLocationData, &protocol conformance descriptor for NotificationOptInLocationData);
  sub_2A6DD4(&qword_3C9E60, &type metadata accessor for NotificationOptInLocationData, &protocol conformance descriptor for NotificationOptInLocationData);
  sub_2BEFE8();

  (*(v18 + 8))(v16, v17);
  (*(v19 + 104))(v20, enum case for ModelType.priceDrop(_:), v21);
  sub_2BED98();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_2E3F30;
  (v27)(v7 + v4, v28, v29);
  sub_2A6DD4(&qword_3C9E68, &type metadata accessor for NotificationOptInTypeData, &protocol conformance descriptor for NotificationOptInTypeData);
  sub_2A6DD4(&qword_3C9E70, &type metadata accessor for NotificationOptInTypeData, &protocol conformance descriptor for NotificationOptInTypeData);
  sub_2BEFE8();

  (*(v24 + 8))(v22, v23);
  sub_2BEDD8();
  sub_2A6DD4(&qword_3C9E78, &type metadata accessor for NotificationOptInActionEvent, &protocol conformance descriptor for NotificationOptInActionEvent);
  sub_2BF018();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1[2] = v1;
  v1[3] = sub_2A615C;
  v9 = swift_continuation_init();
  v1[17] = sub_6620C(&qword_3C9E30, &qword_2FBDF8);
  v1[10] = _NSConcreteStackBlock;
  v1[11] = 1107296256;
  v1[12] = sub_2A521C;
  v1[13] = &unk_395680;
  v1[14] = v9;
  [v26 addToWTR:ObjCClassFromMetadata didAcceptPriceTrackingOptInWithCompletion:?];

  return _swift_continuation_await(v25);
}

uint64_t sub_2A615C()
{
  v1 = *(*v0 + 328);
  v2 = *(*v0 + 320);

  return _swift_task_switch(sub_2A6264, v2, v1);
}

uint64_t sub_2A6264()
{

  v1 = *(v0 + 8);

  return v1();
}

double sub_2A6318@<D0>(char a1@<W1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  KeyPath = swift_getKeyPath();
  *(a6 + *(type metadata accessor for PriceTrackingOptInView(0) + 28)) = KeyPath;
  sub_6620C(&qword_3BD530, &qword_2E4150);
  swift_storeEnumTagMultiPayload();
  *a6 = a1 & 1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;

  return result;
}

void sub_2A63D4(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = sub_6620C(&qword_3C8868, &qword_2F91F8);
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = aBlock - v9;
  (*(v7 + 16))(aBlock - v9, a1, v6, v8);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = swift_allocObject();
  (*(v7 + 32))(v12 + v11, v10, v6);
  aBlock[4] = sub_2A6DAC;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_750DC;
  aBlock[3] = &unk_395658;
  v13 = _Block_copy(aBlock);

  [a2 presentViewController:a3 animated:1 completion:v13];
  _Block_release(v13);
}

double sub_2A6590()
{
  v1 = *(v0 + 24);

  return result;
}

uint64_t sub_2A65C4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_88BE0;

  return sub_2A1154(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_2A66C4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_2A6724(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_7100C;

  return sub_2A1154(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_2A682C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_2A6864()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_88BE0;

  return sub_2A5250(v0);
}

uint64_t sub_2A68F4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_2A6934()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_88BE0;

  return sub_2A58AC(v2, v3, v4);
}

unint64_t sub_2A6A24()
{
  result = qword_3C9E08;
  if (!qword_3C9E08)
  {
    sub_718D4(&qword_3C9D60, &qword_2FBD98);
    sub_718D4(&qword_3C9D58, &qword_2FBD90);
    sub_72B74(&qword_3C9DF8, &qword_3C9D58, &qword_2FBD90, &protocol conformance descriptor for ScrollView<A>);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C9E08);
  }

  return result;
}

uint64_t sub_2A6B20(uint64_t a1)
{
  v2 = sub_6620C(&qword_3C9D60, &qword_2FBD98);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2A6B88()
{
  result = qword_3C9E20;
  if (!qword_3C9E20)
  {
    sub_718D4(&qword_3C9D78, &qword_2FBDB0);
    v3 = sub_2A6C14();
    sub_B3728(v3, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C9E20);
  }

  return result;
}

unint64_t sub_2A6C14()
{
  result = qword_3C9E28;
  if (!qword_3C9E28)
  {
    sub_718D4(&qword_3C9D70, &qword_2FBDA8);
    sub_718D4(&qword_3C9D60, &qword_2FBD98);
    sub_718D4(&qword_3C9E00, &qword_2FBDE8);
    sub_2A6A24();
    sub_718D4(&qword_3C9E10, &qword_2FBDF0);
    sub_72B74(&qword_3C9E18, &qword_3C9E10, &qword_2FBDF0, &protocol conformance descriptor for ToolbarItem<A, B>);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C9E28);
  }

  return result;
}

double sub_2A6DB0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_2A6DD4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t EnvironmentValues.figaroPageConfiguration.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2A6EA4(a1, a2, a3);

  return sub_2C3108();
}

unint64_t sub_2A6EA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3C9E88;
  if (!qword_3C9E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C9E88);
  }

  return result;
}

uint64_t sub_2A6EF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  sub_2A6EA4(a1, a2, a3);
  result = sub_2C3108();
  *a4 = v6;
  return result;
}

uint64_t (*EnvironmentValues.figaroPageConfiguration.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  *a1 = v3;
  a1[1] = sub_2A6EA4(a1, a2, a3);
  sub_2C3108();
  return sub_2A703C;
}

uint64_t sub_2A7074@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  sub_2A6EA4(a1, a2, a3);
  result = sub_2C3108();
  *a4 = v6;
  return result;
}

uint64_t sub_2A7144(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_6620C(&qword_3BF898, &unk_2EA240);
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
      v13 = type metadata accessor for SegmentedControlItem(0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 36);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_2A7288(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v8 = sub_6620C(&qword_3BF898, &unk_2EA240);
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
      v13 = type metadata accessor for SegmentedControlItem(0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_2A73D8(uint64_t a1)
{
  sub_A62E4();
  if (v1 <= 0x3F)
  {
    sub_A6360(319);
    if (v2 <= 0x3F)
    {
      sub_2A79E4(319, &qword_3C0940, &qword_3BDF58, &unk_2E5B70, &type metadata accessor for DiscardOnError);
      if (v3 <= 0x3F)
      {
        sub_2A7A48(319, &qword_3C9EF8, type metadata accessor for SegmentedControlItem, &type metadata accessor for Array);
        if (v4 <= 0x3F)
        {
          type metadata accessor for SegmentedControlItem(319);
          if (v5 <= 0x3F)
          {
            sub_2A7570(319, &qword_3C9F00, &type metadata accessor for Array);
            if (v6 <= 0x3F)
            {
              sub_2A7570(319, &unk_3C9F08, &type metadata accessor for Optional);
              if (v7 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_2A7570(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for MenuItem);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_2A75D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 16);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_6620C(&qword_3BC7C0, &unk_2E3890);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_6620C(&qword_3BC7B8, &unk_2ED100);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_2A7720(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 16) = -a2;
  }

  else
  {
    v8 = sub_6620C(&qword_3BC7C0, &unk_2E3890);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_6620C(&qword_3BC7B8, &unk_2ED100);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_2A7878(uint64_t a1)
{
  sub_2A79E4(319, &qword_3C1700, &qword_3BDB00, &qword_2E6E10, &type metadata accessor for Environment);
  if (v1 <= 0x3F)
  {
    sub_2A7A48(319, &qword_3BC850, &type metadata accessor for ColorConstants, &type metadata accessor for Environment);
    if (v2 <= 0x3F)
    {
      sub_2A79E4(319, &qword_3BC838, &qword_3BC840, &qword_2ED0A0, &type metadata accessor for Environment);
      if (v3 <= 0x3F)
      {
        sub_2A7A48(319, &qword_3BC848, &type metadata accessor for OpaqueMetricsFieldsContext, &type metadata accessor for Environment);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_2A79E4(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_718D4(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_2A7A48(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2A7B2C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

__n128 sub_2A7B74@<Q0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_6620C(&qword_3CA000, &qword_2FC080);
  __chkstk_darwin(v5 - 8);
  v7 = v13 - v6;
  *v7 = sub_2C3328();
  *(v7 + 1) = 0;
  v7[16] = 1;
  v8 = sub_6620C(&qword_3CA008, &qword_2FC088);
  sub_2A7CE0(a1, v2, &v7[*(v8 + 44)]);
  sub_2C46A8();
  sub_2C2AD8();
  sub_69130(v7, a2, &qword_3CA000, &qword_2FC080);
  v9 = a2 + *(sub_6620C(&qword_3CA010, &qword_2FC090) + 36);
  v10 = v13[5];
  *(v9 + 64) = v13[4];
  *(v9 + 80) = v10;
  *(v9 + 96) = v13[6];
  v11 = v13[1];
  *v9 = v13[0];
  *(v9 + 16) = v11;
  result = v13[3];
  *(v9 + 32) = v13[2];
  *(v9 + 48) = result;
  return result;
}

uint64_t sub_2A7CE0@<X0>(char *a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v89 = a3;
  v6 = sub_2C1778();
  __chkstk_darwin(v6 - 8);
  v81 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_2C30F8();
  v74 = *(v75 - 8);
  __chkstk_darwin(v75);
  v73 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_6620C(&qword_3CA018, &qword_2FC098);
  v88 = *(v82 - 8);
  __chkstk_darwin(v82);
  v80 = &v71 - v9;
  v86 = type metadata accessor for SegmentedControlItem(0);
  __chkstk_darwin(v86);
  v78 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_6620C(&qword_3CA020, &qword_2FC0A0);
  v85 = *(v11 - 8);
  __chkstk_darwin(v11);
  v77 = &v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v76 = &v71 - v14;
  __chkstk_darwin(v15);
  v83 = &v71 - v16;
  v17 = sub_6620C(&qword_3CA028, &qword_2FC0A8);
  __chkstk_darwin(v17 - 8);
  v87 = &v71 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v71 - v20;
  v22 = sub_6620C(&qword_3CA030, &qword_2FC0B0);
  v23 = v22 - 8;
  __chkstk_darwin(v22);
  v84 = &v71 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = &v71 - v26;
  *v27 = sub_2C3158();
  *(v27 + 1) = 0;
  v28 = 1;
  v27[16] = 1;
  v29 = &v27[*(sub_6620C(&qword_3CA038, &qword_2FC0B8) + 44)];
  v79 = a2;
  sub_2A8508(a1, a2, v29);
  LOBYTE(a2) = sub_2C3768();
  sub_2C24D8();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v38 = &v27[*(sub_6620C(&qword_3CA040, &qword_2FC0C0) + 36)];
  *v38 = a2;
  *(v38 + 1) = v31;
  *(v38 + 2) = v33;
  *(v38 + 3) = v35;
  *(v38 + 4) = v37;
  v38[40] = 0;
  LOBYTE(a2) = sub_2C3778();
  sub_2C24D8();
  v39 = &v27[*(v23 + 44)];
  *v39 = a2;
  *(v39 + 1) = v40;
  *(v39 + 2) = v41;
  *(v39 + 3) = v42;
  *(v39 + 4) = v43;
  v39[40] = 0;
  v44 = type metadata accessor for ReviewsHeaderComponentModel(0);
  v90 = *&a1[*(v44 + 32)];
  sub_6620C(&qword_3CA048, &qword_2FC0C8);
  sub_72B74(&qword_3CA050, &qword_3CA048, &qword_2FC0C8, &protocol conformance descriptor for [A]);
  v45 = v82;
  if (sub_2C5D28())
  {
    v72 = v21;
    sub_2AC524(&a1[*(v44 + 36)], v78, type metadata accessor for SegmentedControlItem);
    sub_2A7B2C(&qword_3CA060, type metadata accessor for SegmentedControlItem, &protocol conformance descriptor for SegmentedControlItem);

    v46 = v76;
    sub_2C1C38();
    v47 = v85;
    (*(v85 + 32))(v83, v46, v11);
    v48 = *(v47 + 16);
    v78 = v11;
    v48();
    v50 = *v79;
    v49 = *(v79 + 1);
    if (v79[16] == 1)
    {
    }

    else
    {

      sub_2C5DD8();
      v51 = sub_2C3718();
      sub_2C0058();

      v52 = v73;
      sub_2C30E8();
      swift_getAtKeyPath();
      v53 = sub_113C80(v50, v49, 0);
      (*(v74 + 8))(v52, v75, v53);
    }

    v54 = v72;
    sub_2AA570(v81);
    v55 = v80;
    sub_2C1138();
    v56 = sub_2C3778();
    sub_2C24D8();
    v58 = v57;
    v60 = v59;
    v62 = v61;
    v64 = v63;
    (*(v85 + 8))(v83, v78);
    v65 = v55 + *(v45 + 36);
    *v65 = v56;
    *(v65 + 8) = v58;
    *(v65 + 16) = v60;
    *(v65 + 24) = v62;
    *(v65 + 32) = v64;
    *(v65 + 40) = 0;
    sub_69130(v55, v54, &qword_3CA018, &qword_2FC098);
    v28 = 0;
    v21 = v54;
  }

  (*(v88 + 56))(v21, v28, 1, v45);
  v66 = v84;
  sub_6932C(v27, v84, &qword_3CA030, &qword_2FC0B0);
  v67 = v87;
  sub_6932C(v21, v87, &qword_3CA028, &qword_2FC0A8);
  v68 = v89;
  sub_6932C(v66, v89, &qword_3CA030, &qword_2FC0B0);
  v69 = sub_6620C(&qword_3CA058, &qword_2FC0D0);
  sub_6932C(v67, v68 + *(v69 + 48), &qword_3CA028, &qword_2FC0A8);
  sub_69198(v21, &qword_3CA028, &qword_2FC0A8);
  sub_69198(v27, &qword_3CA030, &qword_2FC0B0);
  sub_69198(v67, &qword_3CA028, &qword_2FC0A8);
  return sub_69198(v66, &qword_3CA030, &qword_2FC0B0);
}

uint64_t sub_2A8508@<X0>(char *a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v170 = a2;
  v160 = a3;
  v141 = sub_2C33E8();
  v140 = *(v141 - 8);
  __chkstk_darwin(v141);
  v139 = &v123 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = sub_2C2A58();
  v137 = *(v138 - 8);
  __chkstk_darwin(v138);
  v136 = &v123 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = sub_2C2948();
  v127 = *(v130 - 8);
  __chkstk_darwin(v130);
  v125 = &v123 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = sub_6620C(&qword_3CA068, &qword_2FC0D8);
  v124 = *(v126 - 8);
  __chkstk_darwin(v126);
  v123 = &v123 - v7;
  v131 = sub_6620C(&qword_3CA070, &qword_2FC0E0);
  v129 = *(v131 - 8);
  __chkstk_darwin(v131);
  v128 = &v123 - v8;
  v135 = sub_6620C(&qword_3CA078, &qword_2FC0E8);
  v134 = *(v135 - 8);
  __chkstk_darwin(v135);
  v133 = &v123 - v9;
  v157 = sub_6620C(&qword_3CA080, &qword_2FC0F0);
  v156 = *(v157 - 8);
  __chkstk_darwin(v157);
  v132 = &v123 - v10;
  v11 = sub_6620C(&qword_3CA088, &qword_2FC0F8);
  __chkstk_darwin(v11 - 8);
  v159 = &v123 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v158 = &v123 - v14;
  v153 = sub_2C3308();
  v152 = *(v153 - 8);
  __chkstk_darwin(v153);
  v151 = &v123 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = sub_6620C(&qword_3BC938, &unk_2E3990);
  __chkstk_darwin(v149);
  v148 = &v123 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v146 = &v123 - v18;
  v19 = sub_2C29C8();
  v167 = *(v19 - 8);
  v168 = v19;
  __chkstk_darwin(v19);
  v166 = &v123 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v162 = &v123 - v22;
  v150 = sub_6620C(&qword_3BC940, &qword_2F5A90);
  __chkstk_darwin(v150);
  v147 = &v123 - v23;
  v24 = sub_2C0D48();
  v164 = *(v24 - 8);
  v165 = v24;
  __chkstk_darwin(v24);
  v163 = (&v123 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = sub_6620C(&qword_3BCB28, &qword_2E3B60);
  __chkstk_darwin(v26 - 8);
  v28 = &v123 - v27;
  v29 = sub_2C3918();
  v30 = *(v29 - 8);
  __chkstk_darwin(v29);
  v32 = &v123 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = sub_6620C(&qword_3BCA00, &unk_2E3A40);
  v144 = *(v145 - 8);
  __chkstk_darwin(v145);
  v143 = &v123 - v33;
  v34 = sub_6620C(&qword_3BCA08, &qword_2FC100);
  __chkstk_darwin(v34 - 8);
  v154 = &v123 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v169 = &v123 - v37;
  v142 = type metadata accessor for ReviewsHeaderComponentModel(0);
  v38 = *(v142 + 28);
  v155 = a1;
  v39 = &a1[v38];
  v40 = *(v39 + 1);
  v171 = *v39;
  v172 = v40;
  sub_7212C(v142, v41, v42);

  v43 = sub_2C3A48();
  v45 = v44;
  v47 = v46;
  v161 = v48;
  (*(v30 + 104))(v32, enum case for Font.TextStyle.title2(_:), v29);
  v49 = enum case for Font.Design.serif (_:);
  v50 = sub_2C3848();
  v51 = *(v50 - 8);
  (*(v51 + 104))(v28, v49, v50);
  (*(v51 + 56))(v28, 0, 1, v50);
  sub_2C38A8();
  sub_69198(v28, &qword_3BCB28, &qword_2E3B60);
  (*(v30 + 8))(v32, v29);
  v52 = sub_2C39E8();
  v54 = v53;
  LOBYTE(v49) = v55;

  sub_72180(v43, v45, v47 & 1);

  v56 = sub_2C39D8();
  v58 = v57;
  v60 = v59;
  v61 = v52;
  v62 = v166;
  sub_72180(v61, v54, v49 & 1);

  type metadata accessor for ReviewsHeaderComponent(0);
  v63 = v163;
  sub_29A87C(v163);
  v64 = sub_2C0CB8();
  (*(v164 + 8))(v63, v165);
  v171 = v64;
  v65 = sub_2C39A8();
  v67 = v66;
  LOBYTE(v63) = v68;
  v70 = v69;
  sub_72180(v56, v58, v60 & 1);

  v164 = v67;
  v165 = v65;
  v171 = v65;
  v172 = v67;
  v71 = v63 & 1;
  LOBYTE(v173) = v63 & 1;
  v174 = v70;
  v72 = v168;
  v73 = v167;
  v74 = *(v167 + 104);
  v75 = v162;
  v74(v162, enum case for DynamicTypeSize.xSmall(_:), v168);
  v74(v62, enum case for DynamicTypeSize.accessibility3(_:), v72);
  sub_2A7B2C(&qword_3BC950, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
  result = sub_2C5868();
  if (result)
  {
    LODWORD(v163) = v71;
    v77 = *(v73 + 32);
    v78 = v146;
    v77(v146, v75, v72);
    v79 = v149;
    v77((v78 + *(v149 + 48)), v62, v72);
    v80 = v148;
    sub_6932C(v78, v148, &qword_3BC938, &unk_2E3990);
    v81 = *(v79 + 48);
    v82 = v147;
    v77(v147, v80, v72);
    v166 = v70;
    v83 = *(v73 + 8);
    v83(v80 + v81, v72);
    sub_69130(v78, v80, &qword_3BC938, &unk_2E3990);
    v84 = *(v79 + 48);
    v85 = v150;
    v77((v82 + *(v150 + 36)), (v80 + v84), v72);
    v83(v80, v72);
    v86 = sub_72B74(&qword_3BC960, &qword_3BC940, &qword_2F5A90, &protocol conformance descriptor for ClosedRange<A>);
    v87 = v143;
    sub_2C3F48();
    sub_69198(v82, &qword_3BC940, &qword_2F5A90);
    sub_72180(v165, v164, v163);

    v88 = v151;
    sub_2C32B8();
    v171 = &type metadata for Text;
    v172 = v85;
    v173 = &protocol witness table for Text;
    v174 = v86;
    swift_getOpaqueTypeConformance2();
    v89 = v169;
    v90 = v145;
    sub_2C3FE8();
    (*(v152 + 8))(v88, v153);
    (*(v144 + 8))(v87, v90);
    v91 = v155;
    v171 = *&v155[*(v142 + 44)];
    sub_6620C(&qword_3CA090, &qword_2FC108);
    sub_72B74(&qword_3CA098, &qword_3CA090, &qword_2FC108, &protocol conformance descriptor for [A]);
    v92 = sub_2C5D28();
    v93 = 1;
    v95 = v157;
    v94 = v158;
    if (v92)
    {
      __chkstk_darwin(v92);
      *(&v123 - 2) = v170;
      *(&v123 - 1) = v91;
      __chkstk_darwin(v96);
      *(&v123 - 6) = v91;
      *(&v123 - 5) = v97;
      *(&v123 - 2) = xmmword_2FBEE0;
      *(&v123 - 1) = xmmword_2FBEE0;
      sub_6620C(&qword_3CA0A8, &qword_2FC118);
      sub_6620C(&qword_3CA0B0, &qword_2FC120);
      sub_2AC1A0();
      sub_2AC464();
      v98 = v123;
      sub_2C3958();
      v99 = v125;
      sub_2C2938();
      v100 = sub_72B74(&qword_3CA108, &qword_3CA068, &qword_2FC0D8, &protocol conformance descriptor for Menu<A, B>);
      v101 = sub_2A7B2C(&qword_3CA110, &type metadata accessor for ButtonMenuStyle, &protocol conformance descriptor for ButtonMenuStyle);
      v102 = v128;
      v103 = v126;
      v104 = v130;
      sub_2C4168();
      (*(v127 + 8))(v99, v104);
      (*(v124 + 8))(v98, v103);
      v105 = v136;
      sub_2C2A48();
      v171 = v103;
      v172 = v104;
      v173 = v100;
      v174 = v101;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v107 = sub_2A7B2C(&qword_3BE108, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
      v108 = v133;
      v109 = v131;
      v110 = v138;
      sub_2C3E38();
      (*(v137 + 8))(v105, v110);
      (*(v129 + 8))(v102, v109);
      v111 = v139;
      sub_2C2B18();
      v171 = v109;
      v172 = v110;
      v173 = OpaqueTypeConformance2;
      v174 = v107;
      swift_getOpaqueTypeConformance2();
      sub_2A7B2C(&qword_3BF960, &type metadata accessor for AutomaticHoverEffect, &protocol conformance descriptor for AutomaticHoverEffect);
      v112 = v132;
      v113 = v135;
      v114 = v141;
      sub_2C3E88();
      (*(v140 + 8))(v111, v114);
      (*(v134 + 8))(v108, v113);
      v115 = sub_2C3758();
      v116 = &v112[*(v95 + 36)];
      *v116 = v115;
      *(v116 + 8) = xmmword_2FBEF0;
      *(v116 + 24) = xmmword_2FBEF0;
      v116[40] = 0;
      v117 = v112;
      v89 = v169;
      sub_69130(v117, v94, &qword_3CA080, &qword_2FC0F0);
      v93 = 0;
    }

    (*(v156 + 56))(v94, v93, 1, v95);
    v118 = v154;
    sub_6932C(v89, v154, &qword_3BCA08, &qword_2FC100);
    v119 = v159;
    sub_6932C(v94, v159, &qword_3CA088, &qword_2FC0F8);
    v120 = v160;
    sub_6932C(v118, v160, &qword_3BCA08, &qword_2FC100);
    v121 = sub_6620C(&qword_3CA0A0, &qword_2FC110);
    v122 = v120 + *(v121 + 48);
    *v122 = 0;
    *(v122 + 8) = 1;
    sub_6932C(v119, v120 + *(v121 + 64), &qword_3CA088, &qword_2FC0F8);
    sub_69198(v94, &qword_3CA088, &qword_2FC0F8);
    sub_69198(v89, &qword_3BCA08, &qword_2FC100);
    sub_69198(v119, &qword_3CA088, &qword_2FC0F8);
    return sub_69198(v118, &qword_3BCA08, &qword_2FC100);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2A9904(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReviewsHeaderComponent(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ReviewsHeaderComponentModel(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8 - 8);
  v24 = *(a2 + *(v11 + 52));
  sub_2AC524(a2, &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ReviewsHeaderComponentModel);
  sub_2AC524(a1, v7, type metadata accessor for ReviewsHeaderComponent);
  v12 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v13 = (v10 + *(v5 + 80) + v12) & ~*(v5 + 80);
  v14 = swift_allocObject();
  sub_2AC994(&v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v12, type metadata accessor for ReviewsHeaderComponentModel);
  sub_2AC994(v7, v14 + v13, type metadata accessor for ReviewsHeaderComponent);

  v15 = sub_6620C(&qword_3CA090, &qword_2FC108);
  v16 = sub_6620C(&qword_3CA100, &qword_2FC140);
  v17 = sub_72B74(&qword_3CA130, &qword_3CA090, &qword_2FC108, &protocol conformance descriptor for [A]);
  v18 = sub_72B74(&qword_3CA0F8, &qword_3CA100, &qword_2FC140, &protocol conformance descriptor for Toggle<A>);
  v21 = sub_2ACAE0(v18, v19, v20);
  return sub_2C4568(&v24, sub_2AC9FC, v14, v15, &type metadata for String, v16, v17, v18, v21);
}

uint64_t sub_2A9BE0@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>, double a7@<D3>)
{
  v66 = a2;
  v61 = a3;
  v60 = sub_6620C(&qword_3BC938, &unk_2E3990);
  __chkstk_darwin(v60);
  v56 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v59 = &v55 - v14;
  v15 = sub_2C29C8();
  v65 = *(v15 - 8);
  __chkstk_darwin(v15);
  v63 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v55 - v18;
  v58 = sub_6620C(&qword_3BC940, &qword_2F5A90);
  __chkstk_darwin(v58);
  v57 = &v55 - v20;
  v64 = sub_2C0D48();
  v62 = *(v64 - 8);
  __chkstk_darwin(v64);
  v22 = (&v55 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = sub_6620C(&qword_3BCB28, &qword_2E3B60);
  __chkstk_darwin(v23 - 8);
  v25 = &v55 - v24;
  v26 = sub_2C3918();
  v27 = *(v26 - 8);
  __chkstk_darwin(v26);
  v29 = &v55 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_6620C(&qword_3CA0C0, &qword_2FC128);
  __chkstk_darwin(v30);
  v32 = &v55 - v31;
  *v32 = sub_2C3178();
  *(v32 + 1) = 0x4000000000000000;
  v32[16] = 0;
  v33 = sub_6620C(&qword_3CA118, &qword_2FC148);
  v34 = sub_2AA314(a1, &v32[*(v33 + 44)]);
  (*(v27 + 104))(v29, enum case for Font.TextStyle.subheadline(_:), v26, v34);
  v35 = sub_2C3848();
  (*(*(v35 - 8) + 56))(v25, 1, 1, v35);
  sub_2C3868();
  v36 = sub_2C38A8();
  sub_69198(v25, &qword_3BCB28, &qword_2E3B60);
  (*(v27 + 8))(v29, v26);
  v37 = v63;
  KeyPath = swift_getKeyPath();
  v39 = &v32[*(sub_6620C(&qword_3CA0D8, &qword_2FC130) + 36)];
  *v39 = KeyPath;
  v39[1] = v36;
  type metadata accessor for ReviewsHeaderComponent(0);
  sub_29A87C(v22);
  v40 = sub_2C0CB8();
  (*(v62 + 8))(v22, v64);
  v64 = v30;
  v41 = *(v30 + 36);
  v66 = v32;
  *&v32[v41] = v40;
  v42 = v65;
  v43 = *(v65 + 104);
  v43(v19, enum case for DynamicTypeSize.xSmall(_:), v15);
  v43(v37, enum case for DynamicTypeSize.accessibility3(_:), v15);
  sub_2A7B2C(&qword_3BC950, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
  result = sub_2C5868();
  if (result)
  {
    v45 = *(v42 + 32);
    v46 = v59;
    v45(v59, v19, v15);
    v47 = v56;
    v48 = v60;
    v45((v46 + *(v60 + 48)), v37, v15);
    sub_6932C(v46, v47, &qword_3BC938, &unk_2E3990);
    v49 = *(v48 + 48);
    v50 = v57;
    v45(v57, v47, v15);
    v51 = *(v42 + 8);
    v51(v47 + v49, v15);
    sub_69130(v46, v47, &qword_3BC938, &unk_2E3990);
    v45((v50 + *(v58 + 36)), (v47 + *(v48 + 48)), v15);
    v51(v47, v15);
    sub_2AC2C8();
    sub_72B74(&qword_3BC960, &qword_3BC940, &qword_2F5A90, &protocol conformance descriptor for ClosedRange<A>);
    v52 = v61;
    v53 = v66;
    sub_2C3F48();
    sub_69198(v50, &qword_3BC940, &qword_2F5A90);
    sub_69198(v53, &qword_3CA0C0, &qword_2FC128);
    LOBYTE(v50) = sub_2C3758();
    result = sub_6620C(&qword_3CA0A8, &qword_2FC118);
    v54 = v52 + *(result + 36);
    *v54 = v50;
    *(v54 + 8) = a4;
    *(v54 + 16) = a5;
    *(v54 + 24) = a6;
    *(v54 + 32) = a7;
    *(v54 + 40) = 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_2AA314@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_6620C(&qword_3CA120, &unk_2FC180);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = &v29[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v10 = &v29[-v9];
  v11 = type metadata accessor for ReviewsHeaderComponentModel(0);
  v12 = (a1 + *(v11 + 40));
  v13 = v12[1];
  v31 = *v12;
  v32 = v13;
  sub_7212C(v11, v14, v15);

  v16 = sub_2C3A48();
  v18 = v17;
  v30 = v19;
  v21 = v20;
  v22 = sub_2C42B8();
  v23 = (v10 + *(v5 + 44));
  v24 = *(sub_6620C(&qword_3BD7E8, &qword_2E4500) + 28);
  v25 = enum case for Image.Scale.small(_:);
  v26 = sub_2C42D8();
  (*(*(v26 - 8) + 104))(v23 + v24, v25, v26);
  *v23 = swift_getKeyPath();
  *v10 = v22;
  sub_6932C(v10, v7, &qword_3CA120, &unk_2FC180);
  *a2 = v16;
  *(a2 + 8) = v18;
  LOBYTE(v22) = v30 & 1;
  *(a2 + 16) = v30 & 1;
  *(a2 + 24) = v21;
  v27 = sub_6620C(&qword_3CA128, &qword_2FC1C0);
  sub_6932C(v7, a2 + *(v27 + 48), &qword_3CA120, &unk_2FC180);
  sub_BE2CC(v16, v18, v22);

  sub_69198(v10, &qword_3CA120, &unk_2FC180);
  sub_69198(v7, &qword_3CA120, &unk_2FC180);
  sub_72180(v16, v18, v22);

  return result;
}

uint64_t sub_2AA570@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for SegmentedControlItem(0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3 - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + *(type metadata accessor for ReviewsHeaderComponentModel(0) + 32));
  v8 = *(v7 + 16);
  v9 = _swiftEmptyArrayStorage;
  if (v8)
  {
    v23 = a1;
    v24 = _swiftEmptyArrayStorage;
    sub_649D4(0, v8, 0);
    v9 = v24;
    v10 = v7 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = *(v4 + 72);
    do
    {
      sub_2AC524(v10, v6, type metadata accessor for SegmentedControlItem);
      v13 = *(v6 + 2);
      v12 = *(v6 + 3);

      sub_2AD59C(v6, type metadata accessor for SegmentedControlItem);
      v24 = v9;
      v15 = v9[2];
      v14 = v9[3];
      if (v15 >= v14 >> 1)
      {
        sub_649D4((v14 > 1), v15 + 1, 1);
        v9 = v24;
      }

      v9[2] = v15 + 1;
      v16 = &v9[2 * v15];
      v16[4] = v13;
      v16[5] = v12;
      v10 += v11;
      --v8;
    }

    while (v8);
    a1 = v23;
  }

  v17 = sub_2B62AC(v9);

  v18 = *(v17 + 16);

  v19 = *(v7 + 16);
  v20 = sub_2C1778();
  v21 = &enum case for SegmentedControlStyle.outlined(_:);
  if (v18 != v19)
  {
    v21 = &enum case for SegmentedControlStyle.outlinedRoundedRectangular(_:);
  }

  return (*(*(v20 - 8) + 104))(a1, *v21, v20);
}

uint64_t sub_2AA78C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v37 = a3;
  v38 = a4;
  v33 = a2;
  v6 = type metadata accessor for ReviewsHeaderComponent(0);
  v36 = *(v6 - 8);
  v35 = *(v36 + 64);
  __chkstk_darwin(v6 - 8);
  v34 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ReviewsHeaderComponentModel(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 24);
  v44 = *(a1 + 16);
  v45 = v12;
  sub_2AC524(a2, v11, type metadata accessor for ReviewsHeaderComponentModel);
  sub_20251C(a1, &v39);
  sub_2C5C18();

  v13 = sub_2C5C08();
  v14 = *(v9 + 80);
  v15 = (v14 + 32) & ~v14;
  v32 = v14 | 7;
  v16 = (v10 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  *(v17 + 16) = v13;
  *(v17 + 24) = &protocol witness table for MainActor;
  sub_2AC994(v11, v17 + v15, type metadata accessor for ReviewsHeaderComponentModel);
  v18 = v17 + v16;
  v19 = v42;
  *(v18 + 32) = v41;
  *(v18 + 48) = v19;
  *(v18 + 64) = v43;
  v20 = v40;
  *v18 = v39;
  *(v18 + 16) = v20;
  sub_2AC524(v33, v11, type metadata accessor for ReviewsHeaderComponentModel);
  sub_20251C(a1, &v39);
  v21 = v34;
  sub_2AC524(v37, v34, type metadata accessor for ReviewsHeaderComponent);
  v22 = sub_2C5C08();
  v23 = (v16 + 72 + *(v36 + 80)) & ~*(v36 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = v22;
  *(v24 + 24) = &protocol witness table for MainActor;
  sub_2AC994(v11, v24 + v15, type metadata accessor for ReviewsHeaderComponentModel);
  v25 = v24 + v16;
  v26 = v42;
  *(v25 + 32) = v41;
  *(v25 + 48) = v26;
  *(v25 + 64) = v43;
  v27 = v40;
  *v25 = v39;
  *(v25 + 16) = v27;
  sub_2AC994(v21, v24 + v23, type metadata accessor for ReviewsHeaderComponent);
  v28 = sub_2C4508();
  sub_7212C(v28, v29, v30);
  return sub_2C4488();
}

uint64_t sub_2AAAF4@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, _BYTE *a3@<X8>)
{
  v6 = *(type metadata accessor for ReviewsHeaderComponentModel(0) + 48);
  sub_20251C(a2, v16);
  sub_6932C(a1 + v6, v12, &qword_3CA148, &qword_2FC1D0);
  sub_6932C(v16, v14, &qword_3CA148, &qword_2FC1D0);
  if (!v13)
  {
    sub_69198(v16, &qword_3CA148, &qword_2FC1D0);
    if (!*(&v14[0] + 1))
    {
      result = sub_69198(v12, &qword_3CA148, &qword_2FC1D0);
      v7 = 1;
      goto LABEL_11;
    }

LABEL_8:
    result = sub_69198(v12, &qword_3CA150, &qword_2FC1D8);
    v7 = 0;
    goto LABEL_11;
  }

  sub_6932C(v12, v11, &qword_3CA148, &qword_2FC1D0);
  if (!*(&v14[0] + 1))
  {
    sub_69198(v16, &qword_3CA148, &qword_2FC1D0);
    sub_202554(v11);
    goto LABEL_8;
  }

  v9[0] = v14[0];
  v9[1] = v14[1];
  v9[2] = v14[2];
  v9[3] = v14[3];
  v10 = v15;
  if (v11[0] == v14[0])
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_2C65B8();
  }

  sub_69198(v16, &qword_3CA148, &qword_2FC1D0);
  sub_202554(v9);
  sub_202554(v11);
  result = sub_69198(v12, &qword_3CA148, &qword_2FC1D0);
LABEL_11:
  *a3 = v7 & 1;
  return result;
}

uint64_t sub_2AACC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v40 = a7;
  v9 = sub_2BFF28();
  v38 = *(v9 - 8);
  v39 = v9;
  __chkstk_darwin(v9);
  v37 = (v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_2BE828();
  v34 = *(v11 - 8);
  v35 = v11;
  __chkstk_darwin(v11);
  v13 = (v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_6620C(&qword_3CA140, &qword_2FC1C8);
  __chkstk_darwin(v14 - 8);
  v16 = v32 - v15;
  v17 = sub_2C4BF8();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v33 = v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(type metadata accessor for ReviewsHeaderComponentModel(0) + 48);
  v36 = a6;
  sub_20251C(a6, v50);
  sub_6932C(a5 + v20, &v45, &qword_3CA148, &qword_2FC1D0);
  sub_6932C(v50, v48, &qword_3CA148, &qword_2FC1D0);
  if (!*(&v45 + 1))
  {
    sub_69198(v50, &qword_3CA148, &qword_2FC1D0);
    if (!*(&v48[0] + 1))
    {
      v22 = &qword_3CA148;
      v23 = &qword_2FC1D0;
      v21 = &v45;
      return sub_69198(v21, v22, v23);
    }

    goto LABEL_8;
  }

  sub_6932C(&v45, &v43, &qword_3CA148, &qword_2FC1D0);
  if (!*(&v48[0] + 1))
  {
    sub_69198(v50, &qword_3CA148, &qword_2FC1D0);
    sub_202554(&v43);
LABEL_8:
    sub_69198(&v45, &qword_3CA150, &qword_2FC1D8);
    goto LABEL_9;
  }

  v41[0] = v48[0];
  v41[1] = v48[1];
  v41[2] = v48[2];
  v41[3] = v48[3];
  v42 = v49;
  if (v43 == v48[0])
  {
    sub_69198(v50, &qword_3CA148, &qword_2FC1D0);
    sub_202554(v41);
    sub_202554(&v43);
    v21 = &v45;
    v22 = &qword_3CA148;
    v23 = &qword_2FC1D0;
    return sub_69198(v21, v22, v23);
  }

  v26 = sub_2C65B8();
  sub_69198(v50, &qword_3CA148, &qword_2FC1D0);
  sub_202554(v41);
  sub_202554(&v43);
  result = sub_69198(&v45, &qword_3CA148, &qword_2FC1D0);
  if ((v26 & 1) == 0)
  {
LABEL_9:
    v24 = type metadata accessor for ReviewsHeaderComponent(0);
    sub_29A8A4(v50);
    if (!v51)
    {
      v22 = &qword_3BC840;
      v23 = &qword_2ED0A0;
      v21 = v50;
      return sub_69198(v21, v22, v23);
    }

    v32[2] = v52;
    v32[3] = v24;
    v32[1] = sub_72084(v50, v51);
    sub_6932C(a5 + v20, &v45, &qword_3CA148, &qword_2FC1D0);
    if (*(&v45 + 1))
    {
      sub_6932C(&v47, v41, &qword_3C58B0, &qword_2F2ED0);
      sub_693D0(v41, &v43);
      sub_202554(&v45);
      sub_72084(&v43, v44);
      sub_2C4A28();
      (*(v18 + 56))(v16, 0, 1, v17);
      sub_68CD0(&v43);
      if ((*(v18 + 48))(v16, 1, v17) != 1)
      {
        (*(v18 + 32))(v33, v16, v17);
LABEL_20:
        sub_6620C(&qword_3BC240, &unk_2E9B40);
        v27 = swift_allocObject();
        *(v27 + 16) = xmmword_2E15C0;
        v28 = v36;
        sub_6932C(v36 + 32, &v45, &qword_3C58B0, &qword_2F2ED0);
        sub_693D0(&v45, v27 + 32);
        v29 = *v28;
        v30 = v28[1];
        *v13 = v29;
        v13[1] = v30;
        (*(v34 + 104))(v13, enum case for AppAnalyticsAction.Type.reportReviewsDialogEvent(_:), v35);
        *(v27 + 96) = sub_2BE858();
        *(v27 + 104) = sub_2A7B2C(&qword_3CA250, &type metadata accessor for AppAnalyticsAction, &protocol conformance descriptor for AppAnalyticsAction);
        sub_720C8((v27 + 72));

        sub_2BE838();
        v46 = sub_2C4D28();
        v47 = &protocol witness table for CompoundAction;
        sub_720C8(&v45);
        sub_2C4D18();
        v31 = v37;
        sub_29A8B8(v37);
        sub_2BFCD8();
        (*(v38 + 8))(v31, v39);
        sub_68CD0(&v45);
        return sub_68CD0(v50);
      }
    }

    else
    {
      sub_69198(&v45, &qword_3CA148, &qword_2FC1D0);
      (*(v18 + 56))(v16, 1, 1, v17);
    }

    sub_2C4BE8();
    if ((*(v18 + 48))(v16, 1, v17) != 1)
    {
      sub_69198(v16, &qword_3CA140, &qword_2FC1C8);
    }

    goto LABEL_20;
  }

  return result;
}

uint64_t sub_2AB3D0(uint64_t a1)
{
  __chkstk_darwin(v1);
  sub_2AC524(v3, &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ReviewsHeaderComponent);
  sub_2A7B2C(&qword_3C8648, type metadata accessor for ReviewsHeaderComponent, &unk_2FC018);
  return sub_2BFD18();
}

unint64_t sub_2AB4A8(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 25705;
    v6 = 0xD000000000000011;
    if (a1 != 2)
    {
      v6 = 0x6954726564616568;
    }

    if (a1)
    {
      v5 = 0x6575676573;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x726F737365636361;
    v2 = 0x6D657449756E656DLL;
    if (a1 != 7)
    {
      v2 = 0xD000000000000010;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x65746E656D676573;
    if (a1 != 4)
    {
      v3 = 0xD000000000000015;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

void sub_2AB5E8(void *a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v3 = type metadata accessor for SegmentedControlItem(0);
  __chkstk_darwin(v3);
  v5 = v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_6620C(&qword_3BF898, &unk_2EA240);
  __chkstk_darwin(v6);
  v8 = v46 - v7;
  v9 = sub_6620C(&qword_3CA158, &unk_2FC1E0);
  v49 = *(v9 - 8);
  v50 = v9;
  __chkstk_darwin(v9);
  v11 = v46 - v10;
  v12 = type metadata accessor for ReviewsHeaderComponentModel(0);
  __chkstk_darwin(v12);
  v14 = v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v14 + 40) = 0u;
  *&v59 = 0;
  v57 = 0u;
  v58 = 0u;
  *(v14 + 56) = 0u;
  *(v14 + 9) = 0;
  v52 = v14 + 40;
  sub_A9708(&v57, (v14 + 40), &unk_3BDC90, &unk_2E5620);
  v54 = v12;
  v15 = *(v12 + 24);
  v16 = sub_2C5018();
  v17 = *(*(v16 - 8) + 56);
  v55 = v15;
  v56 = v14;
  v17(&v14[v15], 1, 1, v16);
  v18 = a1[3];
  v53 = a1;
  v19 = sub_72084(a1, v18);
  sub_2AD3BC(v19, v20, v21);
  v22 = v51;
  sub_2C67A8();
  if (v22)
  {
    v25 = v52;
    sub_68CD0(v53);
    v26 = v56;
    sub_69198(v25, &qword_3BE370, &qword_2E7520);
    sub_69198(v26 + v55, &qword_3BF898, &unk_2EA240);
  }

  else
  {
    v51 = v8;
    v46[1] = v3;
    v47 = v5;
    v23 = v49;
    sub_6620C(&qword_3BE378, &qword_2E5DB0);
    v62 = 0;
    sub_72B74(&qword_3BE390, &qword_3BE378, &qword_2E5DB0, &protocol conformance descriptor for CodeAnyHashable<A>);
    v24 = v50;
    sub_2C64A8();
    v27 = v58;
    v28 = v56;
    *v56 = v57;
    v28[1] = v27;
    *(v28 + 4) = v59;
    sub_6620C(&qword_3BE370, &qword_2E7520);
    v62 = 1;
    v29 = v24;
    sub_72B74(&qword_3BE398, &qword_3BE370, &qword_2E7520, &protocol conformance descriptor for _CodeByKind_OrNil<A>);
    sub_2C64A8();
    sub_A9708(&v57, v52, &qword_3BE370, &qword_2E7520);
    LOBYTE(v57) = 2;
    sub_F2F40();
    v30 = v51;
    sub_2C64A8();
    v31 = v56;
    sub_A9708(v30, v56 + v55, &qword_3BF898, &unk_2EA240);
    LOBYTE(v57) = 3;
    v32 = sub_2C6468();
    v33 = v54;
    v34 = (v31 + v54[7]);
    *v34 = v32;
    v34[1] = v35;
    sub_6620C(&qword_3CA048, &qword_2FC0C8);
    v62 = 4;
    sub_2AD410();
    sub_2C64A8();
    *(v31 + v33[8]) = v57;
    LOBYTE(v57) = 5;
    sub_2A7B2C(&qword_3CA170, type metadata accessor for SegmentedControlItem, &protocol conformance descriptor for SegmentedControlItem);
    v36 = v47;
    sub_2C64A8();
    sub_2AC994(v36, v31 + v33[9], type metadata accessor for SegmentedControlItem);
    LOBYTE(v57) = 6;
    v37 = sub_2C6468();
    v38 = (v31 + v33[10]);
    *v38 = v37;
    v38[1] = v39;
    sub_6620C(&qword_3CA090, &qword_2FC108);
    v62 = 7;
    sub_2AD4C4();
    v40 = sub_2C64A8();
    *(v31 + v54[11]) = v57;
    v62 = 8;
    sub_2AD548(v40, v41, v42);
    sub_2C6458();
    (*(v23 + 8))(v11, v29);
    v43 = v31 + v54[12];
    v44 = v60;
    *(v43 + 32) = v59;
    *(v43 + 48) = v44;
    *(v43 + 64) = v61;
    v45 = v58;
    *v43 = v57;
    *(v43 + 16) = v45;
    sub_2AC524(v31, v48, type metadata accessor for ReviewsHeaderComponentModel);
    sub_68CD0(v53);
    sub_2AD59C(v31, type metadata accessor for ReviewsHeaderComponentModel);
  }
}

uint64_t sub_2ABEC8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2AD910(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2ABEFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2AD3BC(a1, a2, a3);

  return CodingKey.description.getter(a1, v4);
}

uint64_t sub_2ABF38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2AD3BC(a1, a2, a3);

  return CodingKey.debugDescription.getter(a1, v4);
}

uint64_t sub_2ABF8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_6620C(&qword_3BF898, &unk_2EA240);
  __chkstk_darwin(v5 - 8);
  v7 = &v9 - v6;
  sub_6932C(v2 + *(a1 + 24), &v9 - v6, &qword_3BF898, &unk_2EA240);
  return sub_69130(v7, a2, &qword_3BDF58, &unk_2E5B70);
}

unint64_t sub_2AC1A0()
{
  result = qword_3CA0B8;
  if (!qword_3CA0B8)
  {
    sub_718D4(&qword_3CA0A8, &qword_2FC118);
    sub_718D4(&qword_3CA0C0, &qword_2FC128);
    sub_718D4(&qword_3BC940, &qword_2F5A90);
    sub_2AC2C8();
    sub_72B74(&qword_3BC960, &qword_3BC940, &qword_2F5A90, &protocol conformance descriptor for ClosedRange<A>);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3CA0B8);
  }

  return result;
}

unint64_t sub_2AC2C8()
{
  result = qword_3CA0C8;
  if (!qword_3CA0C8)
  {
    sub_718D4(&qword_3CA0C0, &qword_2FC128);
    sub_2AC380();
    sub_72B74(&qword_3C6A70, &qword_3C6A78, &unk_2F5AB0, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3CA0C8);
  }

  return result;
}

unint64_t sub_2AC380()
{
  result = qword_3CA0D0;
  if (!qword_3CA0D0)
  {
    sub_718D4(&qword_3CA0D8, &qword_2FC130);
    sub_72B74(&qword_3CA0E0, &qword_3CA0E8, &qword_2FC138, &protocol conformance descriptor for HStack<A>);
    sub_72B74(&qword_3BCB10, &qword_3BCB18, &qword_2E3B50, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3CA0D0);
  }

  return result;
}

unint64_t sub_2AC464()
{
  result = qword_3CA0F0;
  if (!qword_3CA0F0)
  {
    sub_718D4(&qword_3CA0B0, &qword_2FC120);
    sub_72B74(&qword_3CA0F8, &qword_3CA100, &qword_2FC140, &protocol conformance descriptor for Toggle<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3CA0F0);
  }

  return result;
}

uint64_t sub_2AC524(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2AC58C()
{
  v1 = type metadata accessor for ReviewsHeaderComponentModel(0);
  v29 = *(*(v1 - 1) + 80);
  v2 = (v29 + 16) & ~v29;
  v3 = *(*(v1 - 1) + 64);
  v26 = type metadata accessor for ReviewsHeaderComponent(0);
  v4 = *(*(v26 - 1) + 80);
  v27 = *(*(v26 - 1) + 64);
  v30 = v0;
  v5 = v0 + v2;
  sub_68CD0((v0 + v2));
  if (*(v0 + v2 + 64))
  {
    sub_68CD0((v5 + 40));
  }

  v28 = v4;
  v6 = v3 + v4;
  v7 = v1[6];
  v8 = sub_2C5018();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (!v10(v5 + v7, 1, v8))
  {
    (*(v9 + 8))(v5 + v7, v8);
  }

  v11 = v2 + v6;

  v12 = v5 + v1[9];

  v13 = type metadata accessor for SegmentedControlItem(0);
  v14 = *(v13 + 36);
  v15 = sub_2C1DC8();
  (*(*(v15 - 8) + 8))(v12 + v14, v15);
  v16 = *(v13 + 40);
  if (!v10(v12 + v16, 1, v8))
  {
    (*(v9 + 8))(v12 + v16, v8);
  }

  v17 = v11 & ~v28;

  v18 = v5 + v1[12];
  if (*(v18 + 8))
  {

    sub_68CD0((v18 + 32));
  }

  v19 = v30 + v17;
  sub_113C80(*(v30 + v17), *(v30 + v17 + 8), *(v30 + v17 + 16));
  v20 = v26[5];
  sub_6620C(&unk_3C8530, &qword_2E3850);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = sub_2C0D48();
    (*(*(v21 - 8) + 8))(v19 + v20, v21);
  }

  else
  {
  }

  v22 = v19 + v26[6];
  if (*(v22 + 40))
  {
    if (*(v22 + 24))
    {
      sub_68CD0(v22);
    }
  }

  else
  {
  }

  v23 = v26[7];
  sub_6620C(&unk_3C4360, qword_2ED140);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v24 = sub_2BFF28();
    (*(*(v24 - 8) + 8))(v19 + v23, v24);
  }

  else
  {
  }

  return _swift_deallocObject(v30, v17 + v27, v29 | v28 | 7);
}

uint64_t sub_2AC994(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2AC9FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for ReviewsHeaderComponentModel(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for ReviewsHeaderComponent(0) - 8);
  v9 = v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  return sub_2AA78C(a1, v2 + v6, v9, a2);
}

unint64_t sub_2ACAE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3CA138;
  if (!qword_3CA138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3CA138);
  }

  return result;
}

uint64_t sub_2ACB34()
{
  v1 = type metadata accessor for ReviewsHeaderComponentModel(0);
  v17 = *(*(v1 - 1) + 80);
  v15 = *(*(v1 - 1) + 64);
  swift_unknownObjectRelease();
  v16 = (v17 + 32) & ~v17;
  v2 = v0 + v16;
  sub_68CD0((v0 + v16));
  if (*(v0 + v16 + 64))
  {
    sub_68CD0((v2 + 40));
  }

  v3 = v1[6];
  v4 = sub_2C5018();
  v5 = *(v4 - 8);
  v6 = *(v5 + 48);
  if (!v6(v2 + v3, 1, v4))
  {
    (*(v5 + 8))(v2 + v3, v4);
  }

  v7 = v2 + v1[9];

  v8 = type metadata accessor for SegmentedControlItem(0);
  v9 = *(v8 + 36);
  v10 = sub_2C1DC8();
  (*(*(v10 - 8) + 8))(v7 + v9, v10);
  v11 = *(v8 + 40);
  if (!v6(v7 + v11, 1, v4))
  {
    (*(v5 + 8))(v7 + v11, v4);
  }

  v12 = v2 + v1[12];
  if (*(v12 + 8))
  {

    sub_68CD0((v12 + 32));
  }

  v13 = (v15 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;

  sub_68CD0((v0 + v13 + 32));

  return _swift_deallocObject(v0, v13 + 72, v17 | 7);
}

uint64_t sub_2ACDE4@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(type metadata accessor for ReviewsHeaderComponentModel(0) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);

  return sub_2AAAF4(v1 + v4, v5, a1);
}

uint64_t sub_2ACE84()
{
  v1 = type metadata accessor for ReviewsHeaderComponentModel(0);
  v30 = *(*(v1 - 1) + 80);
  v2 = (v30 + 32) & ~v30;
  v3 = (*(*(v1 - 1) + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = type metadata accessor for ReviewsHeaderComponent(0);
  v4 = *(*(v27 - 1) + 80);
  v28 = *(*(v27 - 1) + 64);
  swift_unknownObjectRelease();
  v31 = v0;
  v5 = v0 + v2;
  sub_68CD0((v0 + v2));
  if (*(v0 + v2 + 64))
  {
    sub_68CD0((v5 + 40));
  }

  v29 = v4;
  v26 = v3;
  v6 = v3 + v4;
  v7 = v1[6];
  v8 = sub_2C5018();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (!v10(v5 + v7, 1, v8))
  {
    (*(v9 + 8))(v5 + v7, v8);
  }

  v11 = v6 + 72;

  v12 = v5 + v1[9];

  v13 = type metadata accessor for SegmentedControlItem(0);
  v14 = *(v13 + 36);
  v15 = sub_2C1DC8();
  (*(*(v15 - 8) + 8))(v12 + v14, v15);
  v16 = *(v13 + 40);
  if (!v10(v12 + v16, 1, v8))
  {
    (*(v9 + 8))(v12 + v16, v8);
  }

  v17 = v11 & ~v29;

  v18 = v5 + v1[12];
  if (*(v18 + 8))
  {

    sub_68CD0((v18 + 32));
  }

  sub_68CD0((v31 + v26 + 32));
  v19 = v31 + v17;
  sub_113C80(*v19, *(v19 + 8), *(v19 + 16));
  v20 = v27[5];
  sub_6620C(&unk_3C8530, &qword_2E3850);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = sub_2C0D48();
    (*(*(v21 - 8) + 8))(v19 + v20, v21);
  }

  else
  {
  }

  v22 = v19 + v27[6];
  if (*(v22 + 40))
  {
    if (*(v22 + 24))
    {
      sub_68CD0(v22);
    }
  }

  else
  {
  }

  v23 = v27[7];
  sub_6620C(&unk_3C4360, qword_2ED140);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v24 = sub_2BFF28();
    (*(*(v24 - 8) + 8))(v19 + v23, v24);
  }

  else
  {
  }

  return _swift_deallocObject(v31, v17 + v28, v30 | v29 | 7);
}

uint64_t sub_2AD2C4(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for ReviewsHeaderComponentModel(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(type metadata accessor for ReviewsHeaderComponent(0) - 8);
  v9 = *(v2 + 16);
  v10 = *(v2 + 24);
  v11 = v2 + ((v7 + *(v8 + 80) + 72) & ~*(v8 + 80));

  return sub_2AACC8(a1, a2, v9, v10, v2 + v6, v2 + v7, v11);
}

unint64_t sub_2AD3BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3CA160;
  if (!qword_3CA160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3CA160);
  }

  return result;
}

unint64_t sub_2AD410()
{
  result = qword_3CA168;
  if (!qword_3CA168)
  {
    sub_718D4(&qword_3CA048, &qword_2FC0C8);
    sub_2A7B2C(&qword_3CA170, type metadata accessor for SegmentedControlItem, &protocol conformance descriptor for SegmentedControlItem);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3CA168);
  }

  return result;
}

unint64_t sub_2AD4C4()
{
  result = qword_3CA178;
  if (!qword_3CA178)
  {
    v1 = sub_718D4(&qword_3CA090, &qword_2FC108);
    sub_2AD548(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3CA178);
  }

  return result;
}

unint64_t sub_2AD548(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3CA180;
  if (!qword_3CA180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3CA180);
  }

  return result;
}

uint64_t sub_2AD59C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t getEnumTagSinglePayload for ReviewsHeaderComponentModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ReviewsHeaderComponentModel.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2AD750()
{
  result = qword_3CA188;
  if (!qword_3CA188)
  {
    sub_718D4(&qword_3CA010, &qword_2FC090);
    sub_72B74(&qword_3CA190, &qword_3CA000, &qword_2FC080, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3CA188);
  }

  return result;
}

unint64_t sub_2AD80C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3CA198;
  if (!qword_3CA198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3CA198);
  }

  return result;
}

unint64_t sub_2AD864(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3CA1A0;
  if (!qword_3CA1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3CA1A0);
  }

  return result;
}

unint64_t sub_2AD8BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3CA1A8;
  if (!qword_3CA1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3CA1A8);
  }

  return result;
}

uint64_t sub_2AD910(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_2C65B8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6575676573 && a2 == 0xE500000000000000 || (sub_2C65B8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000000003004A0 == a2 || (sub_2C65B8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6954726564616568 && a2 == 0xEB00000000656C74 || (sub_2C65B8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x65746E656D676573 && a2 == 0xEE00736D65744964 || (sub_2C65B8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000000308580 == a2 || (sub_2C65B8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x726F737365636361 && a2 == 0xEE00656C74695479 || (sub_2C65B8() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6D657449756E656DLL && a2 == 0xE900000000000073 || (sub_2C65B8() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000010 && 0x80000000003085A0 == a2)
  {

    return 8;
  }

  else
  {
    v6 = sub_2C65B8();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

id sub_2ADC0C()
{
  [objc_msgSend(objc_opt_self() "sharedInstance")];
  swift_unknownObjectRelease();

  return sub_2ADC74();
}

id sub_2ADC74()
{
  v1 = v0;
  if (*(v0 + OBJC_IVAR____TtC11BookStoreUI24ProductFeedBarButtonItem_shouldDisableForRestrictedBook) != 1)
  {
    goto LABEL_8;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v11 = 0;
    v9 = 0u;
    v10 = 0u;
    goto LABEL_7;
  }

  v3 = OBJC_IVAR____TtC11BookStoreUI29BSUIProductFeedViewController_assetInfo;
  v4 = Strong;
  swift_beginAccess();
  sub_6932C(v4 + v3, &v9, &unk_3C2550, &qword_2E4E40);

  if (!*(&v10 + 1))
  {
LABEL_7:
    sub_69198(&v9, &unk_3C2550, &qword_2E4E40);
    goto LABEL_8;
  }

  sub_72084(&v9, *(&v10 + 1));
  v5 = sub_2BF908();
  sub_68CD0(&v9);
  if ((v5 & 1) == 0)
  {
LABEL_8:
    v7 = 1;
    return [v1 setEnabled:v7];
  }

  v6 = [objc_msgSend(objc_opt_self() "sharedInstance")];
  swift_unknownObjectRelease();
  v7 = v6;
  return [v1 setEnabled:v7];
}

uint64_t sub_2ADDC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a1;
  v3 = sub_2BE828();
  v49 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2BE9E8();
  v42 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2BEA38();
  v41 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2BEA28();
  v47 = *(v12 - 8);
  v48 = v12;
  __chkstk_darwin(v12);
  v44 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_2BE968();
  v43 = *(v45 - 8);
  __chkstk_darwin(v45);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v52 = 0;
    v50 = 0u;
    v51 = 0u;
    goto LABEL_7;
  }

  v39 = v3;
  v40 = v5;
  v17 = OBJC_IVAR____TtC11BookStoreUI29BSUIProductFeedViewController_assetInfo;
  v18 = Strong;
  swift_beginAccess();
  sub_6932C(v18 + v17, &v50, &unk_3C2550, &qword_2E4E40);

  if (!*(&v51 + 1))
  {
LABEL_7:
    result = sub_69198(&v50, &unk_3C2550, &qword_2E4E40);
    goto LABEL_8;
  }

  sub_68D1C(&v50, v53);
  v19 = swift_unknownObjectWeakLoadStrong();
  if (v19)
  {
    v20 = v19;
    sub_DA510();
    sub_2BF028();
    sub_2C4DB8();

    v21 = v50;
    sub_691F8(v53, &v50);
    v38 = v21;
    sub_2BE928();
    sub_72084(v53, v53[3]);
    sub_2BFA58();
    (*(v41 + 104))(v11, enum case for SectionType.unknown(_:), v9);
    (*(v42 + 104))(v8, enum case for SectionData.ComponentContained.unknown(_:), v6);
    v22 = v44;
    sub_2BEA08();
    v23 = sub_6620C(&qword_3C2BF8, &qword_2EE948);
    v24 = v23[12];
    v25 = v23[16];
    v26 = v23[20];
    v27 = v23[24];
    v28 = enum case for LocationType.button(_:);
    v29 = sub_2BEA98();
    v30 = v40;
    (*(*(v29 - 8) + 104))(v40, v28, v29);
    v31 = sub_2BF088();
    (*(*(v31 - 8) + 16))(&v30[v24], v46, v31);
    v33 = v47;
    v32 = v48;
    (*(v47 + 16))(&v30[v25], v22, v48);
    v34 = v43;
    v35 = v45;
    (*(v43 + 16))(&v30[v26], v15, v45);
    (*(v34 + 56))(&v30[v26], 0, 1, v35);
    v36 = sub_2BEF78();
    (*(*(v36 - 8) + 56))(&v30[v27], 1, 1, v36);
    (*(v49 + 104))(v30, enum case for AppAnalyticsAction.Type.clickEvent(_:), v39);
    *(a2 + 24) = sub_2BE858();
    *(a2 + 32) = sub_2AF3E8();
    sub_720C8(a2);
    sub_2BE838();

    (*(v33 + 8))(v22, v32);
    (*(v34 + 8))(v15, v35);
    return sub_68CD0(v53);
  }

  result = sub_68CD0(v53);
LABEL_8:
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

void sub_2AE468()
{
  v1 = [v0 title];
  v2 = [v0 image];
  v3 = OBJC_IVAR____TtC11BookStoreUI24ProductFeedBarButtonItem_actionModel;
  swift_beginAccess();
  sub_6932C(v0 + v3, &v11, &unk_3BDC90, &unk_2E5620);
  if (v12)
  {
    sub_68D1C(&v11, v8);
    v4 = v9;
    v5 = v10;
    v6 = sub_72084(v8, v9);
    v7 = sub_2AF440(v6, 0, 0, v0, v4, v5);
    sub_68CD0(v8);
  }

  else
  {
    v7 = 0;
  }

  [v0 setPrimaryAction:v7];

  [v0 setTitle:v1];
  [v0 setImage:v2];
}

void *sub_2AE5A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_6620C(&qword_3BD858, &qword_2E8ED0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - v6;
  v8 = sub_6620C(&qword_3BD1B0, &qword_2E3F70);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - v10;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v13 = result;
    sub_2AEA88(a3, v18);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v15 = Strong;
      v17 = v9;
      sub_DA510();
      sub_2C4DB8();
      sub_2C5228();
      sub_2C4DB8();
      sub_2C5218();
      (*(v5 + 104))(v7, enum case for ActionDispatcher.MetricsBehavior.fromAction<A>(_:), v4);
      sub_2C4F28();

      (*(v5 + 8))(v7, v4);
      (*(v17 + 8))(v11, v8);
    }

    else
    {
    }

    return sub_68CD0(v18);
  }

  return result;
}

uint64_t sub_2AEA88@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_2C4BF8();
  __chkstk_darwin(v4 - 8);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_6620C(&unk_3CA260, &qword_2E3930);
  __chkstk_darwin(v7 - 8);
  v9 = v25 - v8;
  v10 = sub_2BF088();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_691F8(a1, v29);
  sub_6620C(&qword_3BC248, &qword_2E2F20);
  sub_6620C(&qword_3CA270, &unk_2E5640);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v28 = 0;
    v26 = 0u;
    v27 = 0u;
    sub_69198(&v26, &qword_3BDFF8, &qword_2F41E0);
    return sub_691F8(a1, a2);
  }

  v25[1] = v6;
  sub_68D1C(&v26, v30);
  sub_72084(v30, v31);
  v14 = v11;
  sub_2C0288();
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_69198(v9, &unk_3CA260, &qword_2E3930);
    sub_68CD0(v30);
    return sub_691F8(a1, a2);
  }

  (*(v11 + 32))(v13, v9, v10);
  sub_2ADDC8(v13, &v26);
  if (*(&v27 + 1))
  {
    sub_68D1C(&v26, v29);
    sub_72084(v30, v31);
    sub_2C4A28();
    sub_6620C(&qword_3BC240, &unk_2E9B40);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_2E15C0;
    sub_691F8(v29, v16 + 32);
    v17 = v31;
    v18 = v32;
    v19 = sub_72084(v30, v31);
    *(v16 + 96) = v17;
    *(v16 + 104) = *(v18 + 8);
    v20 = sub_720C8((v16 + 72));
    (*(*(v17 - 8) + 16))(v20, v19, v17);
    a2[3] = sub_2C4D28();
    a2[4] = &protocol witness table for CompoundAction;
    sub_720C8(a2);
    sub_2C4D18();
    sub_68CD0(v29);
  }

  else
  {
    sub_69198(&v26, &unk_3BDC90, &unk_2E5620);
    v21 = v31;
    v22 = v32;
    v23 = sub_72084(v30, v31);
    a2[3] = v21;
    a2[4] = *(v22 + 8);
    v24 = sub_720C8(a2);
    (*(*(v21 - 8) + 16))(v24, v23, v21);
  }

  (*(v14 + 8))(v13, v10);
  return sub_68CD0(v30);
}

id sub_2AEFF0(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ProductFeedBarButtonItem();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_2AF098(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_2C5C18();
  *(v4 + 24) = sub_2C5C08();
  v6 = sub_2C5BB8();

  return _swift_task_switch(sub_2AF130, v6, v5);
}

uint64_t sub_2AF130()
{
  v1 = *(v0 + 16);

  (*&stru_B8.segname[(swift_isaMask & *v1) + 8])(v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_2AF2F4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_2AF334(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_7100C;

  return sub_2AF098(a1, v4, v5, v6);
}

unint64_t sub_2AF3E8()
{
  result = qword_3CA250;
  if (!qword_3CA250)
  {
    sub_2BE858();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3CA250);
  }

  return result;
}

uint64_t sub_2AF440(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14[3] = a5;
  v14[4] = a6;
  v8 = sub_720C8(v14);
  (*(*(a5 - 8) + 16))(v8, a1, a5);
  sub_2AF590();
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_691F8(v14, v13);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  sub_68D1C(v13, v10 + 24);

  v11 = sub_2C6018();
  sub_68CD0(v14);
  return v11;
}

unint64_t sub_2AF590()
{
  result = qword_3BDC70;
  if (!qword_3BDC70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_3BDC70);
  }

  return result;
}

uint64_t sub_2AF5DC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_2AF614()
{

  sub_68CD0((v0 + 24));

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t JSAction.init(actionMetrics:kind:params:clickData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = type metadata accessor for JSAction(0);
  v13 = v12[7];
  v14 = sub_2BF088();
  (*(*(v14 - 8) + 56))(a6 + v13, 1, 1, v14);
  v15 = sub_2C4BF8();
  (*(*(v15 - 8) + 32))(a6, a1, v15);
  v16 = (a6 + v12[5]);
  *v16 = a2;
  v16[1] = a3;
  *(a6 + v12[6]) = a4;

  return sub_71FB4(a5, a6 + v13);
}

uint64_t type metadata accessor for JSAction(uint64_t a1)
{
  result = qword_3CA2F0;
  if (!qword_3CA2F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2AF7A4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xED00007363697274;
  v3 = 0x654D6E6F69746361;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x736D61726170;
    }

    else
    {
      v5 = 0x7461446B63696C63;
    }

    if (v4 == 2)
    {
      v6 = 0xE600000000000000;
    }

    else
    {
      v6 = 0xE900000000000061;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 1684957547;
    }

    else
    {
      v5 = 0x654D6E6F69746361;
    }

    if (v4)
    {
      v6 = 0xE400000000000000;
    }

    else
    {
      v6 = 0xED00007363697274;
    }
  }

  v7 = 0xE600000000000000;
  v8 = 0x736D61726170;
  if (a2 != 2)
  {
    v8 = 0x7461446B63696C63;
    v7 = 0xE900000000000061;
  }

  if (a2)
  {
    v3 = 1684957547;
    v2 = 0xE400000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v7;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2C65B8();
  }

  return v11 & 1;
}

uint64_t sub_2AF8E0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x6165707061736964;
    }

    else
    {
      v3 = 0x726165707061;
    }

    if (v2)
    {
      v4 = 0xE900000000000072;
    }

    else
    {
      v4 = 0xE600000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0x636974796C616E61;
    v4 = 0xEF72616570704173;
  }

  else if (a1 == 3)
  {
    v3 = 0xD000000000000012;
    v4 = 0x8000000000300750;
  }

  else
  {
    v3 = 0x7070417473726966;
    v4 = 0xEB00000000726165;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 0x6165707061736964;
    }

    else
    {
      v6 = 0x726165707061;
    }

    if (a2)
    {
      v5 = 0xE900000000000072;
    }

    else
    {
      v5 = 0xE600000000000000;
    }

    if (v3 != v6)
    {
      goto LABEL_31;
    }
  }

  else if (a2 == 2)
  {
    v5 = 0xEF72616570704173;
    if (v3 != 0x636974796C616E61)
    {
      goto LABEL_31;
    }
  }

  else if (a2 == 3)
  {
    v5 = 0x8000000000300750;
    if (v3 != 0xD000000000000012)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v5 = 0xEB00000000726165;
    if (v3 != 0x7070417473726966)
    {
LABEL_31:
      v7 = sub_2C65B8();
      goto LABEL_32;
    }
  }

  if (v4 != v5)
  {
    goto LABEL_31;
  }

  v7 = 1;
LABEL_32:

  return v7 & 1;
}

uint64_t sub_2AFAB0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x6D65744964656573;
    }

    else
    {
      v3 = 0x656372756F736572;
    }

    v4 = 0xE800000000000000;
  }

  else if (a1 == 2)
  {
    v4 = 0xE500000000000000;
    v3 = 0x6575676573;
  }

  else
  {
    if (a1 == 3)
    {
      v3 = 0xD00000000000001ELL;
    }

    else
    {
      v3 = 0xD000000000000011;
    }

    if (v2 == 3)
    {
      v4 = 0x80000000003005E0;
    }

    else
    {
      v4 = 0x80000000003004A0;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v7 = 0x6D65744964656573;
    }

    else
    {
      v7 = 0x656372756F736572;
    }

    v6 = 0xE800000000000000;
    if (v3 != v7)
    {
      goto LABEL_32;
    }
  }

  else if (a2 == 2)
  {
    v6 = 0xE500000000000000;
    if (v3 != 0x6575676573)
    {
LABEL_32:
      v8 = sub_2C65B8();
      goto LABEL_33;
    }
  }

  else
  {
    if (a2 == 3)
    {
      v5 = 0xD00000000000001ELL;
    }

    else
    {
      v5 = 0xD000000000000011;
    }

    if (a2 == 3)
    {
      v6 = 0x80000000003005E0;
    }

    else
    {
      v6 = 0x80000000003004A0;
    }

    if (v3 != v5)
    {
      goto LABEL_32;
    }
  }

  if (v4 != v6)
  {
    goto LABEL_32;
  }

  v8 = 1;
LABEL_33:

  return v8 & 1;
}

uint64_t sub_2AFC54(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6575676573;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x6575676573;
    }

    else
    {
      v5 = 0xD000000000000023;
    }

    if (v3 == 2)
    {
      v4 = 0xE500000000000000;
    }

    else
    {
      v4 = 0x80000000003004E0;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x80000000003004C0;
    }

    else
    {
      v4 = 0x80000000003004A0;
    }

    v5 = 0xD000000000000011;
  }

  v6 = 0x80000000003004E0;
  if (a2 == 2)
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v2 = 0xD000000000000023;
  }

  v7 = 0x80000000003004C0;
  if (!a2)
  {
    v7 = 0x80000000003004A0;
  }

  if (a2 <= 1u)
  {
    v8 = 0xD000000000000011;
  }

  else
  {
    v8 = v2;
  }

  if (a2 <= 1u)
  {
    v9 = v7;
  }

  else
  {
    v9 = v6;
  }

  if (v5 == v8 && v4 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_2C65B8();
  }

  return v10 & 1;
}

uint64_t sub_2AFD74(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 1819047270;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x6C616974726170;
    }

    else
    {
      v4 = 0x73756F6976657270;
    }

    if (v3 == 2)
    {
      v5 = 0xE700000000000000;
    }

    else
    {
      v5 = 0xEF6E776F6853796CLL;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x656C6269736976;
    }

    else
    {
      v4 = 1819047270;
    }

    if (v3)
    {
      v5 = 0xE700000000000000;
    }

    else
    {
      v5 = 0xE400000000000000;
    }
  }

  v6 = 0xE400000000000000;
  v7 = 0xE700000000000000;
  v8 = 0x6C616974726170;
  if (a2 != 2)
  {
    v8 = 0x73756F6976657270;
    v7 = 0xEF6E776F6853796CLL;
  }

  if (a2)
  {
    v2 = 0x656C6269736976;
    v6 = 0xE700000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2C65B8();
  }

  return v11 & 1;
}

uint64_t sub_2AFEC8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE800000000000000;
  v4 = 0xEB0000000068736FLL;
  v5 = 0x7472616843706F74;
  if (a1 == 2)
  {
    v5 = 0x6F775365726F7473;
  }

  else
  {
    v4 = 0xE900000000000073;
  }

  v6 = 0xD000000000000014;
  if (a1)
  {
    v3 = 0x8000000000300450;
  }

  else
  {
    v6 = 0x6567615064697267;
  }

  if (a1 <= 1u)
  {
    v7 = v6;
  }

  else
  {
    v7 = v5;
  }

  if (v2 <= 1)
  {
    v8 = v3;
  }

  else
  {
    v8 = v4;
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v11 = 0x6F775365726F7473;
    }

    else
    {
      v11 = 0x7472616843706F74;
    }

    if (a2 == 2)
    {
      v10 = 0xEB0000000068736FLL;
    }

    else
    {
      v10 = 0xE900000000000073;
    }

    if (v7 != v11)
    {
      goto LABEL_31;
    }
  }

  else
  {
    if (a2)
    {
      v9 = 0xD000000000000014;
    }

    else
    {
      v9 = 0x6567615064697267;
    }

    if (a2)
    {
      v10 = 0x8000000000300450;
    }

    else
    {
      v10 = 0xE800000000000000;
    }

    if (v7 != v9)
    {
      goto LABEL_31;
    }
  }

  if (v8 != v10)
  {
LABEL_31:
    v12 = sub_2C65B8();
    goto LABEL_32;
  }

  v12 = 1;
LABEL_32:

  return v12 & 1;
}

uint64_t sub_2B0028(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0xD00000000000001BLL;
  v5 = 0x8000000000300420;
  if (a1 != 5)
  {
    v4 = 0x656C746974;
    v5 = 0xE500000000000000;
  }

  v6 = 0xE800000000000000;
  v7 = 0x656C746974627573;
  if (a1 != 3)
  {
    v7 = 0x68747541776F6873;
    v6 = 0xEE00656D614E726FLL;
  }

  if (a1 <= 4u)
  {
    v4 = v7;
    v5 = v6;
  }

  v8 = 0x656372756F736572;
  if (a1 != 1)
  {
    v8 = 0x6D65744964656573;
  }

  if (a1)
  {
    v3 = 0xE800000000000000;
  }

  else
  {
    v8 = 0x747865746E6F63;
  }

  if (a1 <= 2u)
  {
    v9 = v8;
  }

  else
  {
    v9 = v4;
  }

  if (v2 <= 2)
  {
    v10 = v3;
  }

  else
  {
    v10 = v5;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      v11 = 0xE800000000000000;
      if (a2 == 1)
      {
        if (v9 != 0x656372756F736572)
        {
          goto LABEL_39;
        }
      }

      else if (v9 != 0x6D65744964656573)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v11 = 0xE700000000000000;
      if (v9 != 0x747865746E6F63)
      {
        goto LABEL_39;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v11 = 0x8000000000300420;
      if (v9 != 0xD00000000000001BLL)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v11 = 0xE500000000000000;
      if (v9 != 0x656C746974)
      {
LABEL_39:
        v12 = sub_2C65B8();
        goto LABEL_40;
      }
    }
  }

  else if (a2 == 3)
  {
    v11 = 0xE800000000000000;
    if (v9 != 0x656C746974627573)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v11 = 0xEE00656D614E726FLL;
    if (v9 != 0x68747541776F6873)
    {
      goto LABEL_39;
    }
  }

  if (v10 != v11)
  {
    goto LABEL_39;
  }

  v12 = 1;
LABEL_40:

  return v12 & 1;
}

uint64_t JSAction.actionMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2C4BF8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t JSAction.kind.getter()
{
  v1 = *(v0 + *(type metadata accessor for JSAction(0) + 20));

  return v1;
}

uint64_t JSAction.params.getter()
{
  type metadata accessor for JSAction(0);
}

uint64_t JSAction.clickData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for JSAction(0) + 28);

  return sub_78628(v3, a1);
}

uint64_t JSAction.clickData.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for JSAction(0) + 28);

  return sub_71FB4(a1, v3);
}

Swift::Int sub_2B0428()
{
  sub_2C6738();
  sub_2C5958();

  return sub_2C6778();
}

double sub_2B04F0(uint64_t a1)
{
  sub_2C5958();

  return result;
}

Swift::Int sub_2B05A4(uint64_t a1)
{
  sub_2C6738();
  sub_2C5958();

  return sub_2C6778();
}

unint64_t sub_2B0668@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2B17A4(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_2B0698(uint64_t *a1@<X8>)
{
  v2 = 0xED00007363697274;
  v3 = 0x654D6E6F69746361;
  v4 = 0xE600000000000000;
  v5 = 0x736D61726170;
  if (*v1 != 2)
  {
    v5 = 0x7461446B63696C63;
    v4 = 0xE900000000000061;
  }

  if (*v1)
  {
    v3 = 1684957547;
    v2 = 0xE400000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_2B071C()
{
  v1 = 0x654D6E6F69746361;
  v2 = 0x736D61726170;
  if (*v0 != 2)
  {
    v2 = 0x7461446B63696C63;
  }

  if (*v0)
  {
    v1 = 1684957547;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_2B079C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2B17A4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2B07C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2B0FE0(a1, a2, a3);

  return CodingKey.description.getter(a1, v4);
}

uint64_t sub_2B0800(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2B0FE0(a1, a2, a3);

  return CodingKey.debugDescription.getter(a1, v4);
}

uint64_t JSAction.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v3 = sub_6620C(&unk_3CA260, &qword_2E3930);
  __chkstk_darwin(v3 - 8);
  v54 = &v49 - v4;
  v5 = sub_6620C(&qword_3C2818, &qword_2EDE10);
  __chkstk_darwin(v5 - 8);
  v58 = &v49 - v6;
  v7 = sub_6620C(&qword_3C2860, &qword_2EDF28);
  __chkstk_darwin(v7 - 8);
  v53 = &v49 - v8;
  v9 = sub_2C4BF8();
  v56 = *(v9 - 8);
  __chkstk_darwin(v9);
  v59 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_6620C(&qword_3CA278, &qword_2FC358);
  v57 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v49 - v12;
  v14 = type metadata accessor for JSAction(0);
  __chkstk_darwin(v14);
  v16 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v17 + 28);
  v19 = sub_2BF088();
  v20 = *(*(v19 - 8) + 56);
  v61 = v18;
  v62 = v16;
  v20(&v16[v18], 1, 1, v19);
  v21 = sub_72084(a1, a1[3]);
  sub_2B0FE0(v21, v22, v23);
  v24 = v60;
  sub_2C67A8();
  if (v24)
  {
    sub_68CD0(a1);
    return sub_69198(&v62[v61], &unk_3CA260, &qword_2E3930);
  }

  v52 = v19;
  v25 = v57;
  v26 = v58;
  v60 = a1;
  v66 = 0;
  sub_2B1294(&qword_3CA288, &type metadata accessor for ActionMetrics, &protocol conformance descriptor for ActionMetrics);
  v27 = v59;
  sub_2C64A8();
  v29 = v13;
  v30 = v62;
  (*(v56 + 32))(v62, v27, v9);
  v65 = 1;
  v31 = sub_2C6468();
  v59 = v14;
  v32 = &v30[*(v14 + 20)];
  *v32 = v31;
  v32[1] = v33;
  v34 = sub_2C49F8();
  v64 = 2;
  sub_2B1294(&qword_3C66E8, &type metadata accessor for JSONObject, &protocol conformance descriptor for JSONObject);
  v51 = 0;
  sub_2C6458();
  v49 = v11;
  v50 = v29;
  v35 = *(v34 - 8);
  if ((*(v35 + 48))(v26, 1, v34) == 1)
  {
    v36 = &qword_3C2818;
    v37 = &qword_2EDE10;
    v38 = v26;
  }

  else
  {
    v39 = v53;
    sub_2C49A8();
    (*(v35 + 8))(v26, v34);
    v40 = v39;
    v41 = sub_2C4D58();
    v42 = *(v41 - 8);
    if ((*(v42 + 48))(v40, 1, v41) != 1)
    {
      sub_6620C(&qword_3C4900, &unk_2F19C0);
      v43 = sub_2C4D48();
      (*(v42 + 8))(v40, v41);
      goto LABEL_10;
    }

    v36 = &qword_3C2860;
    v37 = &qword_2EDF28;
    v38 = v40;
  }

  sub_69198(v38, v36, v37);
  v43 = 0;
LABEL_10:
  v44 = v62;
  *&v62[*(v59 + 6)] = v43;
  v63 = 3;
  sub_2B1294(&qword_3CA290, &type metadata accessor for ClickData, &protocol conformance descriptor for ClickData);
  v45 = v54;
  v47 = v49;
  v46 = v50;
  sub_2C6458();
  v48 = v55;
  (*(v25 + 8))(v46, v47);
  sub_71FB4(v45, v44 + v61);
  sub_14FCB0(v44, v48);
  sub_68CD0(v60);
  return sub_2B1034(v44);
}

unint64_t sub_2B0FE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3CA280;
  if (!qword_3CA280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3CA280);
  }

  return result;
}

uint64_t sub_2B1034(uint64_t a1)
{
  v2 = type metadata accessor for JSAction(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void JSAction.jsRepresentation(in:)(void *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for JSAction(0);
  v7 = *(v6 + 24);
  if (*(v2 + v7))
  {
    v16[0] = *(v2 + v7);

    v8 = a1;
    sub_6620C(&qword_3BC208, &qword_2E2EE0);
    v9 = sub_2C6598();
    sub_69198(v16, &qword_3BC208, &qword_2E2EE0);
  }

  else
  {
    v10 = a1;
    v9 = 0;
  }

  v11 = objc_opt_self();
  v12 = [v11 valueWithObject:v9 inContext:a1];
  swift_unknownObjectRelease();

  if (v12)
  {
    v17._countAndFlagsBits = 0x646E696B24;
    v17._object = 0xE500000000000000;
    if (sub_2C5FA8(v17))
    {
LABEL_8:
      a2[3] = sub_14D8EC();
      a2[4] = &protocol witness table for JSValue;
      *a2 = v12;
      return;
    }

    v13 = (v3 + *(v6 + 20));
    v14 = v13[1];
    v16[0] = *v13;
    v16[1] = v14;

    v15 = [v11 valueWithObject:sub_2C6658() inContext:a1];
    swift_unknownObjectRelease();
    if (v15)
    {
      sub_2C5FC8();
      goto LABEL_8;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_2B1294(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2B1308(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2C4BF8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_6620C(&unk_3CA260, &qword_2E3930);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 28);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_2B1450(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2C4BF8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    v11 = sub_6620C(&unk_3CA260, &qword_2E3930);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_2B1584(uint64_t a1)
{
  sub_2C4BF8();
  if (v1 <= 0x3F)
  {
    sub_2B1628(319);
    if (v2 <= 0x3F)
    {
      sub_784F0(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2B1628(uint64_t a1)
{
  if (!qword_3CA300)
  {
    sub_718D4(&qword_3BC208, &qword_2E2EE0);
    v1 = sub_2C60B8();
    if (!v2)
    {
      atomic_store(v1, &qword_3CA300);
    }
  }
}

unint64_t sub_2B16A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3CA338;
  if (!qword_3CA338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3CA338);
  }

  return result;
}

unint64_t sub_2B16F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3CA340;
  if (!qword_3CA340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3CA340);
  }

  return result;
}

unint64_t sub_2B1750(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3CA348;
  if (!qword_3CA348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3CA348);
  }

  return result;
}

unint64_t sub_2B17A4(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_389D08;
  v6._object = a2;
  v4 = sub_2C63E8(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_2B17F0()
{
  result = 0x747865742E636F64;
  switch(*v0)
  {
    case 1:
      result = 0x772E646572616873;
      break;
    case 2:
      return result;
    case 3:
    case 0xC:
      result = 0xD000000000000016;
      break;
    case 4:
      result = 0xD000000000000015;
      break;
    case 5:
    case 0xA:
    case 0xB:
      result = 0x6873617274;
      break;
    case 6:
    case 7:
      result = 0x6761702E6B6F6F62;
      break;
    case 8:
      result = 0x6E6F687064616568;
      break;
    case 9:
    case 0xE:
    case 0x11:
    case 0x1A:
      v2 = 0x2E73756E696DLL;
      goto LABEL_3;
    case 0xD:
      result = 0x7269632E73756C70;
      break;
    case 0xF:
      result = 0x6461622E74786574;
      break;
    case 0x10:
    case 0x19:
      result = 0xD000000000000010;
      break;
    case 0x12:
      result = 0x7261646E656C6163;
      break;
    case 0x13:
      result = 6775138;
      break;
    case 0x14:
    case 0x15:
      result = 1952868711;
      break;
    case 0x16:
      result = 0xD000000000000017;
      break;
    case 0x17:
    case 0x18:
      result = 0x7568742E646E6168;
      break;
    case 0x1B:
      result = 1802398060;
      break;
    case 0x1C:
      v2 = 0x2E6B72616D78;
LABEL_3:
      result = v2 & 0xFFFFFFFFFFFFLL | 0x6963000000000000;
      break;
    case 0x1D:
      result = 0;
      break;
    case 0x1E:
      result = 7630433;
      break;
    case 0x1F:
      result = 0x6F6C632E6B6F6F62;
      break;
    default:
      result = 0xD000000000000013;
      break;
  }

  return result;
}

uint64_t ContextActionType.rawValue.getter()
{
  result = 0x6572616873;
  switch(*v0)
  {
    case 1:
      result = 0x6957646572616873;
      break;
    case 2:
      result = 0x6C636E4977656976;
      break;
    case 3:
      result = 0x6F4374726F706572;
      break;
    case 4:
      result = 0x64616F6C6E776F64;
      break;
    case 5:
      v2 = 0x6C65636E6163;
      goto LABEL_20;
    case 6:
      result = 0x6C706D6153746567;
      break;
    case 7:
      result = 0x706D615364616572;
      break;
    case 8:
      result = 0x6D61536F69647561;
      break;
    case 9:
      result = 0xD000000000000012;
      break;
    case 0xA:
      result = 0x65766F6D6572;
      break;
    case 0xB:
      v2 = 0x65766F6D6572;
LABEL_20:
      result = v2 & 0xFFFFFFFFFFFFLL | 0x6F44000000000000;
      break;
    case 0xC:
      result = 0x656D616E6572;
      break;
    case 0xD:
      result = 0x6E61576F54646461;
      break;
    case 0xE:
      result = 0xD000000000000014;
      break;
    case 0xF:
      result = 0x6C6F436F54646461;
      break;
    case 0x10:
      result = 0x694673416B72616DLL;
      break;
    case 0x11:
      result = 0xD000000000000012;
      break;
    case 0x12:
      result = 0xD000000000000010;
      break;
    case 0x13:
      result = 0x646F72506E65706FLL;
      break;
    case 0x14:
      result = 1952868711;
      break;
    case 0x15:
      result = 0x656C7069746C756DLL;
      break;
    case 0x16:
      result = 0x6552416574697277;
      break;
    case 0x17:
      result = 1701538156;
      break;
    case 0x18:
      result = 0x656B696C736964;
      break;
    case 0x19:
      result = 0x7369685464616572;
      break;
    case 0x1A:
      result = 0x746963696C707865;
      break;
    case 0x1B:
      result = 0x6B6E694C79706F63;
      break;
    case 0x1C:
      result = 0xD000000000000018;
      break;
    case 0x1D:
      result = 1701998445;
      break;
    case 0x1E:
      result = 0xD000000000000012;
      break;
    case 0x1F:
      result = 0xD000000000000015;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2B1F38(char a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    sub_2C6738();
    ContextActionType.rawValue.getter();
    sub_2C5958();

    v4 = sub_2C6778();
    v5 = -1 << *(a2 + 32);
    v6 = v4 & ~v5;
    if ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
    {
      v7 = ~v5;
      while (1)
      {
        v8 = 0xE500000000000000;
        v9 = 0x6572616873;
        switch(*(*(a2 + 48) + v6))
        {
          case 1:
            v9 = 0x6957646572616873;
            v8 = 0xED0000756F596874;
            break;
          case 2:
            v9 = 0x6C636E4977656976;
            v8 = 0xEF46445064656475;
            break;
          case 3:
            v9 = 0x6F4374726F706572;
            v8 = 0xED00006E7265636ELL;
            break;
          case 4:
            v8 = 0xE800000000000000;
            v9 = 0x64616F6C6E776F64;
            break;
          case 5:
            v10 = 0x6C65636E6163;
            goto LABEL_23;
          case 6:
            v9 = 0x6C706D6153746567;
            v8 = 0xE900000000000065;
            break;
          case 7:
            v9 = 0x706D615364616572;
            v8 = 0xEA0000000000656CLL;
            break;
          case 8:
            v9 = 0x6D61536F69647561;
            v8 = 0xEB00000000656C70;
            break;
          case 9:
            v9 = 0xD000000000000012;
            v8 = 0x8000000000300270;
            break;
          case 0xA:
            v8 = 0xE600000000000000;
            v9 = 0x65766F6D6572;
            break;
          case 0xB:
            v10 = 0x65766F6D6572;
LABEL_23:
            v9 = v10 & 0xFFFFFFFFFFFFLL | 0x6F44000000000000;
            v8 = 0xEE0064616F6C6E77;
            break;
          case 0xC:
            v8 = 0xE600000000000000;
            v9 = 0x656D616E6572;
            break;
          case 0xD:
            v9 = 0x6E61576F54646461;
            v8 = 0xEF646165526F5474;
            break;
          case 0xE:
            v9 = 0xD000000000000014;
            v8 = 0x80000000003002B0;
            break;
          case 0xF:
            v9 = 0x6C6F436F54646461;
            v8 = 0xEF6E6F697463656CLL;
            break;
          case 0x10:
            v9 = 0x694673416B72616DLL;
            v8 = 0xEE0064656873696ELL;
            break;
          case 0x11:
            v9 = 0xD000000000000012;
            v8 = 0x80000000003002F0;
            break;
          case 0x12:
            v9 = 0xD000000000000010;
            v8 = 0x8000000000300310;
            break;
          case 0x13:
            v9 = 0x646F72506E65706FLL;
            v11 = 0x676150746375;
            goto LABEL_37;
          case 0x14:
            v8 = 0xE400000000000000;
            v9 = 1952868711;
            break;
          case 0x15:
            v9 = 0x656C7069746C756DLL;
            v8 = 0xEC00000074666947;
            break;
          case 0x16:
            v9 = 0x6552416574697277;
            v8 = 0xEC00000077656976;
            break;
          case 0x17:
            v8 = 0xE400000000000000;
            v9 = 1701538156;
            break;
          case 0x18:
            v8 = 0xE700000000000000;
            v9 = 0x656B696C736964;
            break;
          case 0x19:
            v8 = 0xE800000000000000;
            v9 = 0x7369685464616572;
            break;
          case 0x1A:
            v9 = 0x746963696C707865;
            v11 = 0x6E696C636544;
LABEL_37:
            v8 = v11 & 0xFFFFFFFFFFFFLL | 0xEF65000000000000;
            break;
          case 0x1B:
            v8 = 0xE800000000000000;
            v9 = 0x6B6E694C79706F63;
            break;
          case 0x1C:
            v9 = 0xD000000000000018;
            v8 = 0x8000000000300380;
            break;
          case 0x1D:
            v8 = 0xE400000000000000;
            v9 = 1701998445;
            break;
          case 0x1E:
            v9 = 0xD000000000000012;
            v8 = 0x80000000003003A0;
            break;
          case 0x1F:
            v9 = 0xD000000000000015;
            v8 = 0x80000000003003C0;
            break;
          default:
            break;
        }

        v12 = 0xE500000000000000;
        v13 = 0x6572616873;
        switch(a1)
        {
          case 1:
            v14 = 0x6957646572616873;
            v15 = 0x756F596874;
            goto LABEL_61;
          case 2:
            v12 = 0xEF46445064656475;
            if (v9 != 0x6C636E4977656976)
            {
              goto LABEL_99;
            }

            goto LABEL_98;
          case 3:
            v14 = 0x6F4374726F706572;
            v15 = 0x6E7265636ELL;
LABEL_61:
            v12 = v15 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
            if (v9 != v14)
            {
              goto LABEL_99;
            }

            goto LABEL_98;
          case 4:
            v12 = 0xE800000000000000;
            if (v9 != 0x64616F6C6E776F64)
            {
              goto LABEL_99;
            }

            goto LABEL_98;
          case 5:
            v18 = 0x6C65636E6163;
            goto LABEL_72;
          case 6:
            v12 = 0xE900000000000065;
            if (v9 != 0x6C706D6153746567)
            {
              goto LABEL_99;
            }

            goto LABEL_98;
          case 7:
            v12 = 0xEA0000000000656CLL;
            if (v9 != 0x706D615364616572)
            {
              goto LABEL_99;
            }

            goto LABEL_98;
          case 8:
            v12 = 0xEB00000000656C70;
            if (v9 != 0x6D61536F69647561)
            {
              goto LABEL_99;
            }

            goto LABEL_98;
          case 9:
            v12 = 0x8000000000300270;
            if (v9 != 0xD000000000000012)
            {
              goto LABEL_99;
            }

            goto LABEL_98;
          case 10:
            v12 = 0xE600000000000000;
            if (v9 != 0x65766F6D6572)
            {
              goto LABEL_99;
            }

            goto LABEL_98;
          case 11:
            v18 = 0x65766F6D6572;
LABEL_72:
            v16 = v18 & 0xFFFFFFFFFFFFLL | 0x6F44000000000000;
            v17 = 0x64616F6C6E77;
            goto LABEL_73;
          case 12:
            v12 = 0xE600000000000000;
            if (v9 != 0x656D616E6572)
            {
              goto LABEL_99;
            }

            goto LABEL_98;
          case 13:
            v12 = 0xEF646165526F5474;
            if (v9 != 0x6E61576F54646461)
            {
              goto LABEL_99;
            }

            goto LABEL_98;
          case 14:
            v12 = 0x80000000003002B0;
            if (v9 != 0xD000000000000014)
            {
              goto LABEL_99;
            }

            goto LABEL_98;
          case 15:
            v12 = 0xEF6E6F697463656CLL;
            if (v9 != 0x6C6F436F54646461)
            {
              goto LABEL_99;
            }

            goto LABEL_98;
          case 16:
            v16 = 0x694673416B72616DLL;
            v17 = 0x64656873696ELL;
LABEL_73:
            v12 = v17 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
            if (v9 != v16)
            {
              goto LABEL_99;
            }

            goto LABEL_98;
          case 17:
            v12 = 0x80000000003002F0;
            if (v9 != 0xD000000000000012)
            {
              goto LABEL_99;
            }

            goto LABEL_98;
          case 18:
            v12 = 0x8000000000300310;
            if (v9 != 0xD000000000000010)
            {
              goto LABEL_99;
            }

            goto LABEL_98;
          case 19:
            v21 = 0x646F72506E65706FLL;
            v22 = 0x676150746375;
            goto LABEL_103;
          case 20:
            v12 = 0xE400000000000000;
            if (v9 != 1952868711)
            {
              goto LABEL_99;
            }

            goto LABEL_98;
          case 21:
            v19 = 0x656C7069746C756DLL;
            v20 = 1952868679;
            goto LABEL_89;
          case 22:
            v19 = 0x6552416574697277;
            v20 = 2003134838;
LABEL_89:
            v12 = v20 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
            if (v9 != v19)
            {
              goto LABEL_99;
            }

            goto LABEL_98;
          case 23:
            v12 = 0xE400000000000000;
            if (v9 != 1701538156)
            {
              goto LABEL_99;
            }

            goto LABEL_98;
          case 24:
            v12 = 0xE700000000000000;
            if (v9 != 0x656B696C736964)
            {
              goto LABEL_99;
            }

            goto LABEL_98;
          case 25:
            v12 = 0xE800000000000000;
            if (v9 != 0x7369685464616572)
            {
              goto LABEL_99;
            }

            goto LABEL_98;
          case 26:
            v21 = 0x746963696C707865;
            v22 = 0x6E696C636544;
LABEL_103:
            v12 = v22 & 0xFFFFFFFFFFFFLL | 0xEF65000000000000;
            if (v9 != v21)
            {
              goto LABEL_99;
            }

            goto LABEL_98;
          case 27:
            v12 = 0xE800000000000000;
            if (v9 != 0x6B6E694C79706F63)
            {
              goto LABEL_99;
            }

            goto LABEL_98;
          case 28:
            v12 = 0x8000000000300380;
            if (v9 != 0xD000000000000018)
            {
              goto LABEL_99;
            }

            goto LABEL_98;
          case 29:
            v12 = 0xE400000000000000;
            v13 = 1701998445;
            goto LABEL_97;
          case 30:
            v12 = 0x80000000003003A0;
            if (v9 != 0xD000000000000012)
            {
              goto LABEL_99;
            }

            goto LABEL_98;
          case 31:
            v12 = 0x80000000003003C0;
            if (v9 != 0xD000000000000015)
            {
              goto LABEL_99;
            }

            goto LABEL_98;
          default:
LABEL_97:
            if (v9 != v13)
            {
              goto LABEL_99;
            }

LABEL_98:
            if (v8 == v12)
            {

              v23 = 1;
              return v23 & 1;
            }

LABEL_99:
            v23 = sub_2C65B8();

            if (v23)
            {
              return v23 & 1;
            }

            v6 = (v6 + 1) & v7;
            if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
            {
              return v23 & 1;
            }

            break;
        }
      }
    }
  }

  v23 = 0;
  return v23 & 1;
}

uint64_t sub_2B2914()
{
  result = 0;
  switch(*v0)
  {
    case 1:
      type metadata accessor for BundleFinder();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v3 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
      v4 = sub_2C5888();
      v5 = sub_2C5888();
      v6 = sub_2C5888();
      v7 = [v3 localizedStringForKey:v4 value:v5 table:v6];

      v8 = sub_2C58C8();
      return v8;
    case 2:
    case 0x10:
      v9 = 0xD000000000000010;
      goto LABEL_28;
    case 3:
    case 0xE:
      v9 = 0xD000000000000018;
      goto LABEL_28;
    case 4:
      v9 = 0x64616F6C6E776F44;
      goto LABEL_28;
    case 5:
      v10 = 0x6C65636E6143;
      goto LABEL_20;
    case 6:
      v9 = 0x656C706D6153;
      goto LABEL_28;
    case 9:
      v9 = 0xD000000000000014;
      goto LABEL_28;
    case 0xA:
      v11 = 0x65766F6D6552;
      goto LABEL_16;
    case 0xB:
      v10 = 0x65766F6D6552;
LABEL_20:
      v9 = v10 & 0xFFFFFFFFFFFFLL | 0x4420000000000000;
      goto LABEL_28;
    case 0xC:
      v11 = 0x656D616E6552;
LABEL_16:
      v9 = v11 & 0xFFFFFFFFFFFFLL | 0x555C000000000000;
      goto LABEL_28;
    case 0xD:
      v9 = 0x206F7420746E6157;
      goto LABEL_28;
    case 0xF:
      v9 = 0xD000000000000011;
      goto LABEL_28;
    case 0x11:
      v9 = 0xD000000000000015;
      goto LABEL_28;
    case 0x13:
      v9 = 0x206E692077656956;
      goto LABEL_28;
    case 0x15:
      v9 = 0x66694720646E6553;
      goto LABEL_28;
    case 0x16:
      v9 = 0x646E612065746152;
      goto LABEL_28;
    case 0x17:
      v9 = 0x2074736567677553;
      goto LABEL_28;
    case 0x18:
      v9 = 0x2074736567677553;
      goto LABEL_28;
    case 0x19:
      v9 = 0x6552206576BCCA49;
      goto LABEL_28;
    case 0x1A:
      v9 = 0x532074BCCA6E6F44;
      goto LABEL_28;
    case 0x1B:
      v9 = 0x6E694C2079706F43;
      goto LABEL_28;
    case 0x1C:
      v9 = 0xD000000000000012;
LABEL_28:
      result = sub_1DA078(v9);
      break;
    case 0x1E:
      result = 0x736920646E756F46;
      break;
    case 0x1F:
      result = 0xD00000000000001ELL;
      break;
    default:
      return result;
  }

  return result;
}

NSString sub_2B2DB4()
{
  ContextActionType.rawValue.getter();
  v0 = sub_2C5888();

  return v0;
}

uint64_t sub_2B2E00()
{
  result = 0;
  switch(*v0)
  {
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 9:
    case 0xA:
    case 0xB:
    case 0xC:
    case 0xF:
    case 0x12:
    case 0x13:
    case 0x14:
    case 0x15:
    case 0x16:
    case 0x17:
    case 0x18:
    case 0x1B:
    case 0x1C:
    case 0x1E:
    case 0x1F:
      return result;
    case 7:
      v2 = 0x6D61532065657246;
      return sub_1DA078(v2);
    case 8:
      v2 = 0x6572502065657246;
      return sub_1DA078(v2);
    case 0xD:
    case 0xE:
      v2 = 0x206F7420746E6157;
      return sub_1DA078(v2);
    case 0x10:
      v2 = 0x64656873696E6946;
      return sub_1DA078(v2);
    case 0x11:
      v2 = 0x6552206C6C697453;
      return sub_1DA078(v2);
    case 0x19:
      v2 = 0x1000000000000010;
      return sub_1DA078(v2);
    case 0x1A:
      v2 = 0x20749980E26E6F44;
      return sub_1DA078(v2);
    case 0x1D:
      v2 = 1701998413;
      return sub_1DA078(v2);
    default:
      v2 = 0x6572616853;
      return sub_1DA078(v2);
  }
}

BookStoreUI::ContextActionType_optional __swiftcall ContextActionType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2C6628();

  v5 = 0;
  v6 = 14;
  switch(v3)
  {
    case 0:
      goto LABEL_25;
    case 1:
      v5 = 1;
      goto LABEL_25;
    case 2:
      v5 = 2;
      goto LABEL_25;
    case 3:
      v5 = 3;
      goto LABEL_25;
    case 4:
      v5 = 4;
      goto LABEL_25;
    case 5:
      v5 = 5;
      goto LABEL_25;
    case 6:
      v5 = 6;
      goto LABEL_25;
    case 7:
      v5 = 7;
      goto LABEL_25;
    case 8:
      v5 = 8;
      goto LABEL_25;
    case 9:
      v5 = 9;
      goto LABEL_25;
    case 10:
      v5 = 10;
      goto LABEL_25;
    case 11:
      v5 = 11;
      goto LABEL_25;
    case 12:
      v5 = 12;
      goto LABEL_25;
    case 13:
      v5 = 13;
LABEL_25:
      v6 = v5;
      break;
    case 14:
      break;
    case 15:
      v6 = 15;
      break;
    case 16:
      v6 = 16;
      break;
    case 17:
      v6 = 17;
      break;
    case 18:
      v6 = 18;
      break;
    case 19:
      v6 = 19;
      break;
    case 20:
      v6 = 20;
      break;
    case 21:
      v6 = 21;
      break;
    case 22:
      v6 = 22;
      break;
    case 23:
      v6 = 23;
      break;
    case 24:
      v6 = 24;
      break;
    case 25:
      v6 = 25;
      break;
    case 26:
      v6 = 26;
      break;
    case 27:
      v6 = 27;
      break;
    case 28:
      v6 = 28;
      break;
    case 29:
      v6 = 29;
      break;
    case 30:
      v6 = 30;
      break;
    case 31:
      v6 = 31;
      break;
    default:
      v6 = 32;
      break;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_2B31EC()
{
  v0 = ContextActionType.rawValue.getter();
  v2 = v1;
  if (v0 == ContextActionType.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_2C65B8();
  }

  return v5 & 1;
}

Swift::Int sub_2B3288()
{
  sub_2C6738();
  ContextActionType.rawValue.getter();
  sub_2C5958();

  return sub_2C6778();
}

double sub_2B32F0(uint64_t a1)
{
  ContextActionType.rawValue.getter();
  sub_2C5958();

  return result;
}

Swift::Int sub_2B3354(uint64_t a1)
{
  sub_2C6738();
  ContextActionType.rawValue.getter();
  sub_2C5958();

  return sub_2C6778();
}

uint64_t sub_2B33C4@<X0>(uint64_t *a1@<X8>)
{
  result = ContextActionType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

BookStoreUI::ContextActionType::ContextActionGroup_optional __swiftcall ContextActionType.ContextActionGroup.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 10;
  if (rawValue < 0xA)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

void static ContextActionType.orderActionItems(_:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 0;
    v3 = a1 + 40;
    v4 = _swiftEmptyArrayStorage;
LABEL_3:
    v5 = (v3 + 16 * v2);
    v6 = v2;
    while (v6 < v1)
    {
      v2 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_29;
      }

      v8 = *(v5 - 1);
      v7 = *v5;

      v9._countAndFlagsBits = v8;
      v9._object = v7;
      ContextActionType.init(rawValue:)(v9);
      if (v24 != 32)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v4 = sub_5CC00(0, *(v4 + 2) + 1, 1, v4);
        }

        v11 = *(v4 + 2);
        v10 = *(v4 + 3);
        if (v11 >= v10 >> 1)
        {
          v4 = sub_5CC00((v10 > 1), v11 + 1, 1, v4);
        }

        *(v4 + 2) = v11 + 1;
        v4[v11 + 32] = v24;
        if (v2 != v1)
        {
          goto LABEL_3;
        }

        goto LABEL_16;
      }

      ++v6;
      v5 += 2;
      if (v2 == v1)
      {
        goto LABEL_16;
      }
    }
  }

  else
  {
    v4 = _swiftEmptyArrayStorage;
LABEL_16:
    v12 = sub_2B6654(v4);

    v13 = 0;
    v14 = v12[2];
    v15 = _swiftEmptyArrayStorage;
LABEL_17:
    v16 = &v12[2 * v13 + 5];
    while (1)
    {
      if (v14 == v13)
      {

        return;
      }

      if (v13 >= v12[2])
      {
        break;
      }

      ++v13;
      v17 = v16 + 16;
      v18 = *v16;
      v19 = *(*v16 + 16);
      v16 += 16;
      if (v19)
      {
        v20 = *(v17 - 24);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v15 = sub_5CACC(0, v15[2] + 1, 1, v15);
        }

        v22 = v15[2];
        v21 = v15[3];
        if (v22 >= v21 >> 1)
        {
          v15 = sub_5CACC((v21 > 1), v22 + 1, 1, v15);
        }

        v15[2] = v22 + 1;
        v23 = &v15[2 * v22];
        *(v23 + 32) = v20;
        v23[5] = v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_29:
  __break(1u);
}

uint64_t sub_2B364C(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_2C6738();
  sub_2C5958();
  v8 = sub_2C6778();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_2C65B8() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_2B4A64(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_2B379C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_2C6188(*(*v2 + 40));
  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      sub_68D34(*(v6 + 48) + 40 * v9, v16);
      v11 = sub_2C6198();
      sub_68D90(v16);
      if (v11)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_68D90(a2);
    sub_68D34(*(v6 + 48) + 40 * v9, a1);
    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_68D34(a2, v16);
    v15 = *v3;
    sub_2B4BE4(v16, v9, isUniquelyReferenced_nonNull_native);
    *v3 = v15;
    v13 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v13;
    *(a1 + 32) = *(a2 + 32);
    return 1;
  }
}

uint64_t sub_2B38E8(char *a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_2C6738();
  ContextActionType.rawValue.getter();
  sub_2C5958();

  v6 = sub_2C6778();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
LABEL_104:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v29 = *v3;
    sub_2B4D5C(v4, v8, isUniquelyReferenced_nonNull_native);
    *v3 = v29;
    result = 1;
    goto LABEL_107;
  }

  v9 = ~v7;
  while (2)
  {
    v10 = 0xE500000000000000;
    v11 = 0x6572616873;
    switch(*(*(v5 + 48) + v8))
    {
      case 1:
        v11 = 0x6957646572616873;
        v10 = 0xED0000756F596874;
        break;
      case 2:
        v11 = 0x6C636E4977656976;
        v10 = 0xEF46445064656475;
        break;
      case 3:
        v11 = 0x6F4374726F706572;
        v10 = 0xED00006E7265636ELL;
        break;
      case 4:
        v10 = 0xE800000000000000;
        v11 = 0x64616F6C6E776F64;
        break;
      case 5:
        v12 = 0x6C65636E6163;
        goto LABEL_22;
      case 6:
        v11 = 0x6C706D6153746567;
        v10 = 0xE900000000000065;
        break;
      case 7:
        v11 = 0x706D615364616572;
        v10 = 0xEA0000000000656CLL;
        break;
      case 8:
        v11 = 0x6D61536F69647561;
        v10 = 0xEB00000000656C70;
        break;
      case 9:
        v11 = 0xD000000000000012;
        v10 = 0x8000000000300270;
        break;
      case 0xA:
        v10 = 0xE600000000000000;
        v11 = 0x65766F6D6572;
        break;
      case 0xB:
        v12 = 0x65766F6D6572;
LABEL_22:
        v11 = v12 & 0xFFFFFFFFFFFFLL | 0x6F44000000000000;
        v10 = 0xEE0064616F6C6E77;
        break;
      case 0xC:
        v10 = 0xE600000000000000;
        v11 = 0x656D616E6572;
        break;
      case 0xD:
        v11 = 0x6E61576F54646461;
        v10 = 0xEF646165526F5474;
        break;
      case 0xE:
        v11 = 0xD000000000000014;
        v10 = 0x80000000003002B0;
        break;
      case 0xF:
        v11 = 0x6C6F436F54646461;
        v10 = 0xEF6E6F697463656CLL;
        break;
      case 0x10:
        v11 = 0x694673416B72616DLL;
        v10 = 0xEE0064656873696ELL;
        break;
      case 0x11:
        v11 = 0xD000000000000012;
        v10 = 0x80000000003002F0;
        break;
      case 0x12:
        v11 = 0xD000000000000010;
        v10 = 0x8000000000300310;
        break;
      case 0x13:
        v11 = 0x646F72506E65706FLL;
        v13 = 0x676150746375;
        goto LABEL_36;
      case 0x14:
        v10 = 0xE400000000000000;
        v11 = 1952868711;
        break;
      case 0x15:
        v11 = 0x656C7069746C756DLL;
        v10 = 0xEC00000074666947;
        break;
      case 0x16:
        v11 = 0x6552416574697277;
        v10 = 0xEC00000077656976;
        break;
      case 0x17:
        v10 = 0xE400000000000000;
        v11 = 1701538156;
        break;
      case 0x18:
        v10 = 0xE700000000000000;
        v11 = 0x656B696C736964;
        break;
      case 0x19:
        v10 = 0xE800000000000000;
        v11 = 0x7369685464616572;
        break;
      case 0x1A:
        v11 = 0x746963696C707865;
        v13 = 0x6E696C636544;
LABEL_36:
        v10 = v13 & 0xFFFFFFFFFFFFLL | 0xEF65000000000000;
        break;
      case 0x1B:
        v10 = 0xE800000000000000;
        v11 = 0x6B6E694C79706F63;
        break;
      case 0x1C:
        v11 = 0xD000000000000018;
        v10 = 0x8000000000300380;
        break;
      case 0x1D:
        v10 = 0xE400000000000000;
        v11 = 1701998445;
        break;
      case 0x1E:
        v11 = 0xD000000000000012;
        v10 = 0x80000000003003A0;
        break;
      case 0x1F:
        v11 = 0xD000000000000015;
        v10 = 0x80000000003003C0;
        break;
      default:
        break;
    }

    v14 = 0xE500000000000000;
    v15 = 0x6572616873;
    switch(v4)
    {
      case 1:
        v16 = 0x6957646572616873;
        v17 = 0x756F596874;
        goto LABEL_60;
      case 2:
        v14 = 0xEF46445064656475;
        if (v11 != 0x6C636E4977656976)
        {
          goto LABEL_98;
        }

        goto LABEL_97;
      case 3:
        v16 = 0x6F4374726F706572;
        v17 = 0x6E7265636ELL;
LABEL_60:
        v14 = v17 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
        if (v11 != v16)
        {
          goto LABEL_98;
        }

        goto LABEL_97;
      case 4:
        v14 = 0xE800000000000000;
        if (v11 != 0x64616F6C6E776F64)
        {
          goto LABEL_98;
        }

        goto LABEL_97;
      case 5:
        v20 = 0x6C65636E6163;
        goto LABEL_71;
      case 6:
        v14 = 0xE900000000000065;
        if (v11 != 0x6C706D6153746567)
        {
          goto LABEL_98;
        }

        goto LABEL_97;
      case 7:
        v14 = 0xEA0000000000656CLL;
        if (v11 != 0x706D615364616572)
        {
          goto LABEL_98;
        }

        goto LABEL_97;
      case 8:
        v14 = 0xEB00000000656C70;
        if (v11 != 0x6D61536F69647561)
        {
          goto LABEL_98;
        }

        goto LABEL_97;
      case 9:
        v14 = 0x8000000000300270;
        if (v11 != 0xD000000000000012)
        {
          goto LABEL_98;
        }

        goto LABEL_97;
      case 10:
        v14 = 0xE600000000000000;
        if (v11 != 0x65766F6D6572)
        {
          goto LABEL_98;
        }

        goto LABEL_97;
      case 11:
        v20 = 0x65766F6D6572;
LABEL_71:
        v18 = v20 & 0xFFFFFFFFFFFFLL | 0x6F44000000000000;
        v19 = 0x64616F6C6E77;
        goto LABEL_72;
      case 12:
        v14 = 0xE600000000000000;
        if (v11 != 0x656D616E6572)
        {
          goto LABEL_98;
        }

        goto LABEL_97;
      case 13:
        v14 = 0xEF646165526F5474;
        if (v11 != 0x6E61576F54646461)
        {
          goto LABEL_98;
        }

        goto LABEL_97;
      case 14:
        v14 = 0x80000000003002B0;
        if (v11 != 0xD000000000000014)
        {
          goto LABEL_98;
        }

        goto LABEL_97;
      case 15:
        v14 = 0xEF6E6F697463656CLL;
        if (v11 != 0x6C6F436F54646461)
        {
          goto LABEL_98;
        }

        goto LABEL_97;
      case 16:
        v18 = 0x694673416B72616DLL;
        v19 = 0x64656873696ELL;
LABEL_72:
        v14 = v19 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
        if (v11 != v18)
        {
          goto LABEL_98;
        }

        goto LABEL_97;
      case 17:
        v14 = 0x80000000003002F0;
        if (v11 != 0xD000000000000012)
        {
          goto LABEL_98;
        }

        goto LABEL_97;
      case 18:
        v14 = 0x8000000000300310;
        if (v11 != 0xD000000000000010)
        {
          goto LABEL_98;
        }

        goto LABEL_97;
      case 19:
        v23 = 0x646F72506E65706FLL;
        v24 = 0x676150746375;
        goto LABEL_102;
      case 20:
        v14 = 0xE400000000000000;
        if (v11 != 1952868711)
        {
          goto LABEL_98;
        }

        goto LABEL_97;
      case 21:
        v21 = 0x656C7069746C756DLL;
        v22 = 1952868679;
        goto LABEL_88;
      case 22:
        v21 = 0x6552416574697277;
        v22 = 2003134838;
LABEL_88:
        v14 = v22 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
        if (v11 != v21)
        {
          goto LABEL_98;
        }

        goto LABEL_97;
      case 23:
        v14 = 0xE400000000000000;
        if (v11 != 1701538156)
        {
          goto LABEL_98;
        }

        goto LABEL_97;
      case 24:
        v14 = 0xE700000000000000;
        if (v11 != 0x656B696C736964)
        {
          goto LABEL_98;
        }

        goto LABEL_97;
      case 25:
        v14 = 0xE800000000000000;
        if (v11 != 0x7369685464616572)
        {
          goto LABEL_98;
        }

        goto LABEL_97;
      case 26:
        v23 = 0x746963696C707865;
        v24 = 0x6E696C636544;
LABEL_102:
        v14 = v24 & 0xFFFFFFFFFFFFLL | 0xEF65000000000000;
        if (v11 != v23)
        {
          goto LABEL_98;
        }

        goto LABEL_97;
      case 27:
        v14 = 0xE800000000000000;
        if (v11 != 0x6B6E694C79706F63)
        {
          goto LABEL_98;
        }

        goto LABEL_97;
      case 28:
        v14 = 0x8000000000300380;
        if (v11 != 0xD000000000000018)
        {
          goto LABEL_98;
        }

        goto LABEL_97;
      case 29:
        v14 = 0xE400000000000000;
        v15 = 1701998445;
        goto LABEL_96;
      case 30:
        v14 = 0x80000000003003A0;
        if (v11 != 0xD000000000000012)
        {
          goto LABEL_98;
        }

        goto LABEL_97;
      case 31:
        v14 = 0x80000000003003C0;
        if (v11 != 0xD000000000000015)
        {
          goto LABEL_98;
        }

        goto LABEL_97;
      default:
LABEL_96:
        if (v11 != v15)
        {
          goto LABEL_98;
        }

LABEL_97:
        if (v10 != v14)
        {
LABEL_98:
          v25 = sub_2C65B8();

          if (v25)
          {
            goto LABEL_106;
          }

          v8 = (v8 + 1) & v9;
          if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
          {
            goto LABEL_104;
          }

          continue;
        }

LABEL_106:
        result = 0;
        v4 = *(*(v5 + 48) + v8);
LABEL_107:
        *a1 = v4;
        return result;
    }
  }
}

void sub_2B4334(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_6620C(&qword_3CA3A8, &qword_2FC8D0);
  v4 = sub_2C61C8();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_2C6738();
      sub_2C5958();
      v21 = sub_2C6778();
      v22 = -1 << *(v5 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v3 + 32);
    if (v29 >= 64)
    {
      bzero((v3 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v29;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_2B4594(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_6620C(&qword_3CA3A0, &qword_2FC8C8);
  v4 = sub_2C61C8();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = *(v3 + 48) + 40 * (v15 | (v6 << 6));
      v28 = *v18;
      v29 = *(v18 + 16);
      v30 = *(v18 + 32);
      v19 = sub_2C6188(*(v5 + 40));
      v20 = -1 << *(v5 + 32);
      v21 = v19 & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v12 + 8 * v22);
          if (v26 != -1)
          {
            v13 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v5 + 48) + 40 * v13;
      *v14 = v28;
      *(v14 + 16) = v29;
      *(v14 + 32) = v30;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v27;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_2B47F4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_6620C(&qword_3CA398, &qword_2FC8C0);
  v4 = sub_2C61C8();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + (v14 | (v6 << 6)));
      sub_2C6738();
      ContextActionType.rawValue.getter();
      sub_2C5958();

      v18 = sub_2C6778();
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_2B4A64(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_2B4334(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      sub_2B57F4();
      goto LABEL_16;
    }

    sub_2B5C08(v8 + 1);
  }

  v10 = *v4;
  sub_2C6738();
  sub_2C5958();
  v11 = sub_2C6778();
  v12 = -1 << *(v10 + 32);
  a3 = v11 & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      v15 = *v14 == result && v14[1] == a2;
      if (v15 || (sub_2C65B8() & 1) != 0)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = result;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return;
  }

  __break(1u);
LABEL_19:
  sub_2C6668();
  __break(1u);
}

void sub_2B4BE4(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2B4594(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      sub_2B5950();
      goto LABEL_12;
    }

    sub_2B5E40(v7 + 1);
  }

  v9 = *v3;
  v10 = sub_2C6188(*(*v3 + 40));
  v11 = -1 << *(v9 + 32);
  a2 = v10 & ~v11;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    do
    {
      sub_68D34(*(v9 + 48) + 40 * a2, v20);
      v13 = sub_2C6198();
      sub_68D90(v20);
      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v15 = *(v14 + 48) + 40 * a2;
  v16 = *(result + 16);
  *v15 = *result;
  *(v15 + 16) = v16;
  *(v15 + 32) = *(result + 32);
  v17 = *(v14 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v14 + 16) = v19;
    return;
  }

  __break(1u);
LABEL_15:
  sub_2C6668();
  __break(1u);
}

void sub_2B4D5C(char a1, unint64_t a2, char a3)
{
  v4 = v3;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 <= v7 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_2B47F4(v7 + 1);
    }

    else
    {
      if (v8 > v7)
      {
        sub_2B5AC8();
        goto LABEL_111;
      }

      sub_2B606C(v7 + 1);
    }

    v9 = *v3;
    sub_2C6738();
    ContextActionType.rawValue.getter();
    sub_2C5958();

    v10 = sub_2C6778();
    v11 = -1 << *(v9 + 32);
    a2 = v10 & ~v11;
    if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v12 = ~v11;
      while (2)
      {
        v13 = 0xE500000000000000;
        v14 = 0x6572616873;
        switch(*(*(v9 + 48) + a2))
        {
          case 1:
            v14 = 0x6957646572616873;
            v13 = 0xED0000756F596874;
            break;
          case 2:
            v14 = 0x6C636E4977656976;
            v13 = 0xEF46445064656475;
            break;
          case 3:
            v14 = 0x6F4374726F706572;
            v13 = 0xED00006E7265636ELL;
            break;
          case 4:
            v13 = 0xE800000000000000;
            v14 = 0x64616F6C6E776F64;
            break;
          case 5:
            v15 = 0x6C65636E6163;
            goto LABEL_29;
          case 6:
            v14 = 0x6C706D6153746567;
            v13 = 0xE900000000000065;
            break;
          case 7:
            v14 = 0x706D615364616572;
            v13 = 0xEA0000000000656CLL;
            break;
          case 8:
            v14 = 0x6D61536F69647561;
            v13 = 0xEB00000000656C70;
            break;
          case 9:
            v14 = 0xD000000000000012;
            v13 = 0x8000000000300270;
            break;
          case 0xA:
            v13 = 0xE600000000000000;
            v14 = 0x65766F6D6572;
            break;
          case 0xB:
            v15 = 0x65766F6D6572;
LABEL_29:
            v14 = v15 & 0xFFFFFFFFFFFFLL | 0x6F44000000000000;
            v13 = 0xEE0064616F6C6E77;
            break;
          case 0xC:
            v13 = 0xE600000000000000;
            v14 = 0x656D616E6572;
            break;
          case 0xD:
            v14 = 0x6E61576F54646461;
            v13 = 0xEF646165526F5474;
            break;
          case 0xE:
            v14 = 0xD000000000000014;
            v13 = 0x80000000003002B0;
            break;
          case 0xF:
            v14 = 0x6C6F436F54646461;
            v13 = 0xEF6E6F697463656CLL;
            break;
          case 0x10:
            v14 = 0x694673416B72616DLL;
            v13 = 0xEE0064656873696ELL;
            break;
          case 0x11:
            v14 = 0xD000000000000012;
            v13 = 0x80000000003002F0;
            break;
          case 0x12:
            v14 = 0xD000000000000010;
            v13 = 0x8000000000300310;
            break;
          case 0x13:
            v14 = 0x646F72506E65706FLL;
            v16 = 0x676150746375;
            goto LABEL_43;
          case 0x14:
            v13 = 0xE400000000000000;
            v14 = 1952868711;
            break;
          case 0x15:
            v14 = 0x656C7069746C756DLL;
            v13 = 0xEC00000074666947;
            break;
          case 0x16:
            v14 = 0x6552416574697277;
            v13 = 0xEC00000077656976;
            break;
          case 0x17:
            v13 = 0xE400000000000000;
            v14 = 1701538156;
            break;
          case 0x18:
            v13 = 0xE700000000000000;
            v14 = 0x656B696C736964;
            break;
          case 0x19:
            v13 = 0xE800000000000000;
            v14 = 0x7369685464616572;
            break;
          case 0x1A:
            v14 = 0x746963696C707865;
            v16 = 0x6E696C636544;
LABEL_43:
            v13 = v16 & 0xFFFFFFFFFFFFLL | 0xEF65000000000000;
            break;
          case 0x1B:
            v13 = 0xE800000000000000;
            v14 = 0x6B6E694C79706F63;
            break;
          case 0x1C:
            v14 = 0xD000000000000018;
            v13 = 0x8000000000300380;
            break;
          case 0x1D:
            v13 = 0xE400000000000000;
            v14 = 1701998445;
            break;
          case 0x1E:
            v14 = 0xD000000000000012;
            v13 = 0x80000000003003A0;
            break;
          case 0x1F:
            v14 = 0xD000000000000015;
            v13 = 0x80000000003003C0;
            break;
          default:
            break;
        }

        v17 = 0xE500000000000000;
        v18 = 0x6572616873;
        switch(a1)
        {
          case 1:
            v19 = 0x6957646572616873;
            v20 = 0x756F596874;
            goto LABEL_67;
          case 2:
            v17 = 0xEF46445064656475;
            if (v14 != 0x6C636E4977656976)
            {
              goto LABEL_105;
            }

            goto LABEL_104;
          case 3:
            v19 = 0x6F4374726F706572;
            v20 = 0x6E7265636ELL;
LABEL_67:
            v17 = v20 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
            if (v14 != v19)
            {
              goto LABEL_105;
            }

            goto LABEL_104;
          case 4:
            v17 = 0xE800000000000000;
            if (v14 != 0x64616F6C6E776F64)
            {
              goto LABEL_105;
            }

            goto LABEL_104;
          case 5:
            v23 = 0x6C65636E6163;
            goto LABEL_78;
          case 6:
            v17 = 0xE900000000000065;
            if (v14 != 0x6C706D6153746567)
            {
              goto LABEL_105;
            }

            goto LABEL_104;
          case 7:
            v17 = 0xEA0000000000656CLL;
            if (v14 != 0x706D615364616572)
            {
              goto LABEL_105;
            }

            goto LABEL_104;
          case 8:
            v17 = 0xEB00000000656C70;
            if (v14 != 0x6D61536F69647561)
            {
              goto LABEL_105;
            }

            goto LABEL_104;
          case 9:
            v17 = 0x8000000000300270;
            if (v14 != 0xD000000000000012)
            {
              goto LABEL_105;
            }

            goto LABEL_104;
          case 10:
            v17 = 0xE600000000000000;
            if (v14 != 0x65766F6D6572)
            {
              goto LABEL_105;
            }

            goto LABEL_104;
          case 11:
            v23 = 0x65766F6D6572;
LABEL_78:
            v21 = v23 & 0xFFFFFFFFFFFFLL | 0x6F44000000000000;
            v22 = 0x64616F6C6E77;
            goto LABEL_79;
          case 12:
            v17 = 0xE600000000000000;
            if (v14 != 0x656D616E6572)
            {
              goto LABEL_105;
            }

            goto LABEL_104;
          case 13:
            v17 = 0xEF646165526F5474;
            if (v14 != 0x6E61576F54646461)
            {
              goto LABEL_105;
            }

            goto LABEL_104;
          case 14:
            v17 = 0x80000000003002B0;
            if (v14 != 0xD000000000000014)
            {
              goto LABEL_105;
            }

            goto LABEL_104;
          case 15:
            v17 = 0xEF6E6F697463656CLL;
            if (v14 != 0x6C6F436F54646461)
            {
              goto LABEL_105;
            }

            goto LABEL_104;
          case 16:
            v21 = 0x694673416B72616DLL;
            v22 = 0x64656873696ELL;
LABEL_79:
            v17 = v22 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
            if (v14 != v21)
            {
              goto LABEL_105;
            }

            goto LABEL_104;
          case 17:
            v17 = 0x80000000003002F0;
            if (v14 != 0xD000000000000012)
            {
              goto LABEL_105;
            }

            goto LABEL_104;
          case 18:
            v17 = 0x8000000000300310;
            if (v14 != 0xD000000000000010)
            {
              goto LABEL_105;
            }

            goto LABEL_104;
          case 19:
            v26 = 0x646F72506E65706FLL;
            v27 = 0x676150746375;
            goto LABEL_109;
          case 20:
            v17 = 0xE400000000000000;
            if (v14 != 1952868711)
            {
              goto LABEL_105;
            }

            goto LABEL_104;
          case 21:
            v24 = 0x656C7069746C756DLL;
            v25 = 1952868679;
            goto LABEL_95;
          case 22:
            v24 = 0x6552416574697277;
            v25 = 2003134838;
LABEL_95:
            v17 = v25 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
            if (v14 != v24)
            {
              goto LABEL_105;
            }

            goto LABEL_104;
          case 23:
            v17 = 0xE400000000000000;
            if (v14 != 1701538156)
            {
              goto LABEL_105;
            }

            goto LABEL_104;
          case 24:
            v17 = 0xE700000000000000;
            if (v14 != 0x656B696C736964)
            {
              goto LABEL_105;
            }

            goto LABEL_104;
          case 25:
            v17 = 0xE800000000000000;
            if (v14 != 0x7369685464616572)
            {
              goto LABEL_105;
            }

            goto LABEL_104;
          case 26:
            v26 = 0x746963696C707865;
            v27 = 0x6E696C636544;
LABEL_109:
            v17 = v27 & 0xFFFFFFFFFFFFLL | 0xEF65000000000000;
            if (v14 != v26)
            {
              goto LABEL_105;
            }

            goto LABEL_104;
          case 27:
            v17 = 0xE800000000000000;
            if (v14 != 0x6B6E694C79706F63)
            {
              goto LABEL_105;
            }

            goto LABEL_104;
          case 28:
            v17 = 0x8000000000300380;
            if (v14 != 0xD000000000000018)
            {
              goto LABEL_105;
            }

            goto LABEL_104;
          case 29:
            v17 = 0xE400000000000000;
            v18 = 1701998445;
            goto LABEL_103;
          case 30:
            v17 = 0x80000000003003A0;
            if (v14 != 0xD000000000000012)
            {
              goto LABEL_105;
            }

            goto LABEL_104;
          case 31:
            v17 = 0x80000000003003C0;
            if (v14 != 0xD000000000000015)
            {
              goto LABEL_105;
            }

            goto LABEL_104;
          default:
LABEL_103:
            if (v14 != v18)
            {
              goto LABEL_105;
            }

LABEL_104:
            if (v13 == v17)
            {
              goto LABEL_114;
            }

LABEL_105:
            v28 = sub_2C65B8();

            if (v28)
            {
              goto LABEL_115;
            }

            a2 = (a2 + 1) & v12;
            if (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
            {
              break;
            }

            continue;
        }

        break;
      }
    }
  }

LABEL_111:
  v29 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v29 + 48) + a2) = a1;
  v30 = *(v29 + 16);
  v31 = __OFADD__(v30, 1);
  v32 = v30 + 1;
  if (v31)
  {
    __break(1u);
LABEL_114:

LABEL_115:
    sub_2C6668();
    __break(1u);
    JUMPOUT(0x2B56F4);
  }

  *(v29 + 16) = v32;
}

void sub_2B57F4()
{
  v1 = v0;
  sub_6620C(&qword_3CA3A8, &qword_2FC8D0);
  v2 = *v0;
  v3 = sub_2C61B8();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

void sub_2B5950()
{
  v1 = v0;
  sub_6620C(&qword_3CA3A0, &qword_2FC8C8);
  v2 = *v0;
  v3 = sub_2C61B8();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 40 * (v14 | (v8 << 6));
        sub_68D34(*(v2 + 48) + v17, v21);
        v18 = *(v4 + 48) + v17;
        v19 = v21[0];
        v20 = v21[1];
        *(v18 + 32) = v22;
        *v18 = v19;
        *(v18 + 16) = v20;
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

      v16 = *(v2 + 56 + 8 * v8);
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

void sub_2B5AC8()
{
  v1 = v0;
  sub_6620C(&qword_3CA398, &qword_2FC8C0);
  v2 = *v0;
  v3 = sub_2C61B8();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void sub_2B5C08(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_6620C(&qword_3CA3A8, &qword_2FC8D0);
  v4 = sub_2C61C8();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_2C6738();

      sub_2C5958();
      v20 = sub_2C6778();
      v21 = -1 << *(v5 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v11 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v11 + 8 * v23);
          if (v27 != -1)
          {
            v12 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v22) & ~*(v11 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }
}

void sub_2B5E40(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_6620C(&qword_3CA3A0, &qword_2FC8C8);
  v4 = sub_2C61C8();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    while (v9)
    {
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      sub_68D34(*(v3 + 48) + 40 * (v16 | (v6 << 6)), v27);
      v19 = sub_2C6188(*(v5 + 40));
      v20 = -1 << *(v5 + 32);
      v21 = v19 & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = *(v5 + 48) + 40 * v12;
      v14 = v27[0];
      v15 = v27[1];
      *(v13 + 32) = v28;
      *v13 = v14;
      *(v13 + 16) = v15;
      ++*(v5 + 16);
    }

    v17 = v6;
    while (1)
    {
      v6 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v18 = *(v3 + 56 + 8 * v6);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v9 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }
}

void sub_2B606C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_6620C(&qword_3CA398, &qword_2FC8C0);
  v4 = sub_2C61C8();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + (v13 | (v6 << 6)));
      sub_2C6738();
      ContextActionType.rawValue.getter();
      sub_2C5958();

      v17 = sub_2C6778();
      v18 = -1 << *(v5 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }
}

uint64_t sub_2B62AC(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = sub_2C5CE8();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_2B364C(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_2B6344(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = sub_2C5CE8();
  v7 = result;
  if (v2)
  {
    v4 = a1 + 32;
    do
    {
      sub_68D34(v4, v5);
      sub_2B379C(v6, v5);
      sub_68D90(v6);
      v4 += 40;
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_2B63D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 16);
  sub_2B6C50(a1, a2, a3);
  result = sub_2C5CE8();
  v9 = result;
  if (v4)
  {
    v6 = (a1 + 32);
    do
    {
      v7 = *v6++;
      sub_2B38E8(&v8, v7);
      --v4;
    }

    while (v4);
    return v9;
  }

  return result;
}

void *sub_2B6444(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyDictionarySingleton;
  }

  v2 = (a1 + 32);
  while (1)
  {
    v4 = *v2++;
    v3 = v4;
    v5 = byte_2FC8FA[v4];
    v7 = sub_5D71C(v5);
    v8 = _swiftEmptyDictionarySingleton[2];
    v9 = (v6 & 1) == 0;
    v10 = v8 + v9;
    if (__OFADD__(v8, v9))
    {
      break;
    }

    v11 = v6;
    if (_swiftEmptyDictionarySingleton[3] < v10)
    {
      sub_610A4(v10, 1);
      v12 = sub_5D71C(v5);
      if ((v11 & 1) != (v13 & 1))
      {
        goto LABEL_18;
      }

      v7 = v12;
    }

    if (v11)
    {
      v14 = _swiftEmptyDictionarySingleton[7];
      v15 = *(v14 + 8 * v7);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v14 + 8 * v7) = v15;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v15 = sub_5CC00(0, *(v15 + 2) + 1, 1, v15);
        *(v14 + 8 * v7) = v15;
      }

      v18 = *(v15 + 2);
      v17 = *(v15 + 3);
      if (v18 >= v17 >> 1)
      {
        v15 = sub_5CC00((v17 > 1), v18 + 1, 1, v15);
        *(v14 + 8 * v7) = v15;
      }

      *(v15 + 2) = v18 + 1;
      v15[v18 + 32] = v3;
      if (!--v1)
      {
        return _swiftEmptyDictionarySingleton;
      }
    }

    else
    {
      sub_6620C(&qword_3BC160, &qword_2E2E30);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_2E3F30;
      *(v19 + 32) = v3;
      _swiftEmptyDictionarySingleton[(v7 >> 6) + 8] |= 1 << v7;
      *(_swiftEmptyDictionarySingleton[6] + v7) = v5;
      *(_swiftEmptyDictionarySingleton[7] + 8 * v7) = v19;
      v20 = _swiftEmptyDictionarySingleton[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_17;
      }

      _swiftEmptyDictionarySingleton[2] = v22;
      if (!--v1)
      {
        return _swiftEmptyDictionarySingleton;
      }
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  sub_6620C(&qword_3CA388, &qword_2FC8B8);
  result = sub_2C6678();
  __break(1u);
  return result;
}

void *sub_2B6654(uint64_t a1)
{

  v4 = sub_2B63D0(v1, v2, v3);

  for (i = 0; i != 32; ++i)
  {
    v8 = *(&off_38A258 + i + 32);
    if (sub_2B1F38(v8, v4))
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_64C18(0, _swiftEmptyArrayStorage[2] + 1, 1);
      }

      v7 = _swiftEmptyArrayStorage[2];
      v6 = _swiftEmptyArrayStorage[3];
      if (v7 >= v6 >> 1)
      {
        sub_64C18((v6 > 1), v7 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v7 + 1;
      *(&_swiftEmptyArrayStorage[4] + v7) = v8;
    }
  }

  v9 = sub_2B6444(_swiftEmptyArrayStorage);

  v10 = 0;
  v11 = _swiftEmptyArrayStorage;
  do
  {
    if (v9[2])
    {
      v13 = *(&off_38A298 + v10 + 32);
      v14 = sub_5D71C(v13);
      if (v15)
      {
        v16 = *(v9[7] + 8 * v14);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = sub_5CACC(0, v11[2] + 1, 1, v11);
        }

        v18 = v11[2];
        v17 = v11[3];
        if (v18 >= v17 >> 1)
        {
          v11 = sub_5CACC((v17 > 1), v18 + 1, 1, v11);
        }

        v11[2] = v18 + 1;
        v12 = &v11[2 * v18];
        *(v12 + 32) = v13;
        v12[5] = v16;
      }
    }

    ++v10;
  }

  while (v10 != 10);

  return v11;
}

unint64_t sub_2B683C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3CA350;
  if (!qword_3CA350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3CA350);
  }

  return result;
}

unint64_t sub_2B6894(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3CA358;
  if (!qword_3CA358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3CA358);
  }

  return result;
}

unint64_t sub_2B691C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3CA370;
  if (!qword_3CA370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3CA370);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ContextActionType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE1)
  {
    goto LABEL_17;
  }

  if (a2 + 31 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 31) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 31;
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

      return (*a1 | (v4 << 8)) - 31;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 31;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x20;
  v8 = v6 - 32;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ContextActionType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 31 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 31) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE1)
  {
    v4 = 0;
  }

  if (a2 > 0xE0)
  {
    v5 = ((a2 - 225) >> 8) + 1;
    *result = a2 + 31;
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
    *result = a2 + 31;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ContextActionType.ContextActionGroup(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ContextActionType.ContextActionGroup(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2B6C50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3CA390;
  if (!qword_3CA390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3CA390);
  }

  return result;
}

uint64_t SeriesInfo.getPromotionState()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v68 = sub_2C60B8();
  v67 = *(v68 - 8);
  __chkstk_darwin(v68);
  v70 = &v67 - v7;
  v72 = AssociatedTypeWitness;
  v71 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(v8);
  v69 = &v67 - v9;
  v76 = a2;
  v10 = swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  v11 = sub_2BF6B8();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v67 - v13;
  *a3 = 1;
  *(a3 + 8) = 0u;
  *(a3 + 24) = 0u;
  v74 = a3;
  v75 = a1;
  *(a3 + 40) = 5;
  sub_2BF378();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      (*(v12 + 8))(v14, v11);
      v23 = v73;
      v24 = sub_2BF328();
      if (!v23)
      {
        *&v80 = v24;
        v27 = v72;
        sub_2C5B98();
        swift_getWitnessTable();
        v28 = v70;
        sub_2C5D78();
        v29 = v71;
        if ((*(v71 + 48))(v28, 1, v27) != 1)
        {
          v49 = *(v29 + 32);
          v50 = v69;
          v49(v69, v28, v27);

          AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
          v52 = (sub_2BFA48() & 0x7FFFFFFFFFFFFFFFLL) == 0;
          v54 = v52 & ~v53;
          *&v81[8] = v27;
          *&v81[16] = AssociatedConformanceWitness;
          v55 = sub_720C8(&v80);
          v49(v55, v50, v27);
          v56 = v74;
          result = sub_9150C(v74);
          v81[24] = v54;
          v57 = *v81;
          *v56 = v80;
          v56[1] = v57;
          *(v56 + 25) = *&v81[9];
          return result;
        }

        v30 = v74;
        sub_9150C(v74);
        (*(v67 + 8))(v28, v68);

        *v30 = 1;
        *(a3 + 8) = 0u;
        *(a3 + 24) = 0u;
        *(v30 + 40) = 5;
        sub_2B77E4(v31, v32, v33);
        swift_allocError();
        swift_willThrow();
        v25 = v30;
        return sub_9150C(v25);
      }

LABEL_10:
      v25 = v74;
      return sub_9150C(v25);
    }

    (*(v12 + 8))(v14, v11);
  }

  else
  {

    (*(*(v10 - 8) + 8))(v14, v10);
  }

  v16 = v73;
  sub_2B7FF8(v75, v76, v79);
  if (v16)
  {
    goto LABEL_10;
  }

  sub_6932C(v79, &v80, &unk_3C2550, &qword_2E4E40);
  if (!*&v81[8])
  {
    sub_69198(v79, &unk_3C2550, &qword_2E4E40);
    v34 = v74;
    sub_9150C(v74);
    result = sub_69198(&v80, &unk_3C2550, &qword_2E4E40);
    *(v34 + 32) = 0;
    *v34 = 0u;
    *(v34 + 16) = 0u;
    *(v34 + 40) = 5;
    return result;
  }

  sub_693D0(&v80, v77);
  sub_72084(v77, v78);
  v17 = swift_getAssociatedTypeWitness();
  v18 = sub_2C60B8();
  v73 = &v67;
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v67 - v20;
  sub_2BF388();
  v22 = *(v17 - 8);
  if ((*(v22 + 48))(v21, 1, v17) == 1)
  {
    (*(v19 + 8))(v21, v18);
  }

  else
  {
    *&v81[8] = v17;
    *&v81[16] = swift_getAssociatedConformanceWitness();
    sub_720C8(&v80);
    (*(v22 + 32))();
    v35 = sub_2BF598();
    sub_68CD0(&v80);
    if (v35)
    {
LABEL_18:
      sub_72084(v77, v78);
      v37 = sub_2BF938();
      if (v37 != 2 && (v37 & 1) != 0)
      {
        sub_72084(v77, v78);
        v38 = swift_getAssociatedTypeWitness();
        v39 = sub_2C60B8();
        v73 = &v67;
        v40 = *(v39 - 8);
        __chkstk_darwin(v39);
        v42 = &v67 - v41;
        sub_2BF388();
        v43 = *(v38 - 8);
        if ((*(v43 + 48))(v42, 1, v38) == 1)
        {
          (*(v40 + 8))(v42, v39);
LABEL_32:
          v63 = sub_2B9680(v77, v75, v76);
          sub_69198(v79, &unk_3C2550, &qword_2E4E40);
          v64 = v74;
          sub_9150C(v74);
          sub_691F8(v77, &v80);
          if (v63)
          {
            v65 = 0;
          }

          else
          {
            v65 = 4;
          }

          v81[24] = v65;
          v66 = *v81;
          *v64 = v80;
          v64[1] = v66;
          *(v64 + 25) = *&v81[9];
          return sub_68CD0(v77);
        }

        *&v81[8] = v38;
        *&v81[16] = swift_getAssociatedConformanceWitness();
        sub_720C8(&v80);
        (*(v43 + 32))();
        v60 = sub_2BF598();
        sub_68CD0(&v80);
        if ((v60 & 1) == 0)
        {
          goto LABEL_32;
        }
      }

      sub_72084(v77, v78);
      sub_2BF9E8();
      v62 = v61;
      sub_69198(v79, &unk_3C2550, &qword_2E4E40);
      v58 = v74;
      sub_9150C(v74);
      sub_691F8(v77, v58);
      if (v62 == 0.0)
      {
        v59 = 2;
      }

      else
      {
        v59 = 3;
      }

      goto LABEL_30;
    }
  }

  sub_72084(v77, v78);
  v36 = sub_2BF938();
  if (v36 != 2 && (v36 & 1) != 0)
  {
    goto LABEL_18;
  }

  if ((sub_2B9680(v77, v75, v76) & 1) == 0)
  {
    sub_69198(v79, &unk_3C2550, &qword_2E4E40);
    v58 = v74;
    sub_9150C(v74);
    sub_691F8(v77, v58);
    v59 = 4;
LABEL_30:
    *(v58 + 40) = v59;
    return sub_68CD0(v77);
  }

  sub_72084(v77, v78);
  v44 = sub_2BFA48();
  v46 = v45;
  sub_69198(v79, &unk_3C2550, &qword_2E4E40);
  v47 = v74;
  sub_9150C(v74);
  sub_691F8(v77, &v80);
  v81[24] = ((v44 & 0x7FFFFFFFFFFFFFFFLL) == 0) & ~v46;
  v48 = *v81;
  *v47 = v80;
  v47[1] = v48;
  *(v47 + 25) = *&v81[9];
  return sub_68CD0(v77);
}

unint64_t sub_2B77E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3CA3B0;
  if (!qword_3CA3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3CA3B0);
  }

  return result;
}

unint64_t sub_2B7838@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_6620C(&qword_3CA3C0, &unk_2FCB18);
  __chkstk_darwin(v6 - 8);
  v8 = &v63[-v7];
  v9 = sub_6620C(&qword_3C5430, &qword_2F2A00);
  __chkstk_darwin(v9 - 8);
  v11 = &v63[-v10];
  v12 = sub_6620C(&qword_3CA3C8, &unk_2FCB28);
  __chkstk_darwin(v12 - 8);
  v14 = &v63[-v13];
  v15 = sub_2BE988();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v63[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  result = sub_2BF3B8();
  v21 = HIBYTE(v20) & 0xF;
  v22 = result & 0xFFFFFFFFFFFFLL;
  if ((v20 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v20) & 0xF;
  }

  else
  {
    v23 = result & 0xFFFFFFFFFFFFLL;
  }

  v65 = a3;
  v66 = v18;
  if (!v23)
  {

    goto LABEL_64;
  }

  if ((v20 & 0x1000000000000000) != 0)
  {
    v69 = 0;
    sub_2BA7EC(result, v20, 10);
    v67 = v60;
    v64 = v61;

    if ((v64 & 1) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_64;
  }

  if ((v20 & 0x2000000000000000) != 0)
  {
    v68[0] = result;
    v68[1] = v20 & 0xFFFFFFFFFFFFFFLL;
    if (result == 43)
    {
      if (v21)
      {
        v22 = v21 - 1;
        if (v21 != 1)
        {
          v25 = 0;
          v39 = v68 + 1;
          while (1)
          {
            v40 = *v39 - 48;
            if (v40 > 9)
            {
              break;
            }

            v41 = (v25 * 10) >> 64;
            v42 = 10 * v25;
            if (v41 != v42 >> 63)
            {
              break;
            }

            v30 = __OFADD__(v42, v40);
            v25 = v42 + v40;
            if (v30)
            {
              break;
            }

            ++v39;
            if (!--v22)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }

LABEL_82:
      __break(1u);
      return result;
    }

    if (result != 45)
    {
      if (v21)
      {
        v25 = 0;
        v47 = v68;
        while (1)
        {
          v48 = *v47 - 48;
          if (v48 > 9)
          {
            break;
          }

          v49 = (v25 * 10) >> 64;
          v50 = 10 * v25;
          if (v49 != v50 >> 63)
          {
            break;
          }

          v30 = __OFADD__(v50, v48);
          v25 = v50 + v48;
          if (v30)
          {
            break;
          }

          ++v47;
          if (!--v21)
          {
            goto LABEL_60;
          }
        }
      }

      goto LABEL_61;
    }

    if (v21)
    {
      v22 = v21 - 1;
      if (v21 != 1)
      {
        v25 = 0;
        v31 = v68 + 1;
        while (1)
        {
          v32 = *v31 - 48;
          if (v32 > 9)
          {
            break;
          }

          v33 = (v25 * 10) >> 64;
          v34 = 10 * v25;
          if (v33 != v34 >> 63)
          {
            break;
          }

          v30 = __OFSUB__(v34, v32);
          v25 = v34 - v32;
          if (v30)
          {
            break;
          }

          ++v31;
          if (!--v22)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_80;
  }

  if ((result & 0x1000000000000000) != 0)
  {
    result = (v20 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = sub_2C6248();
    v22 = v62;
    v18 = v66;
  }

  v24 = *result;
  if (v24 == 43)
  {
    if (v22 >= 1)
    {
      if (--v22)
      {
        v25 = 0;
        if (result)
        {
          v35 = (result + 1);
          while (1)
          {
            v36 = *v35 - 48;
            if (v36 > 9)
            {
              goto LABEL_61;
            }

            v37 = (v25 * 10) >> 64;
            v38 = 10 * v25;
            if (v37 != v38 >> 63)
            {
              goto LABEL_61;
            }

            v30 = __OFADD__(v38, v36);
            v25 = v38 + v36;
            if (v30)
            {
              goto LABEL_61;
            }

            ++v35;
            if (!--v22)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_60;
      }

LABEL_61:
      v25 = 0;
      LOBYTE(v22) = 1;
      goto LABEL_62;
    }

    goto LABEL_81;
  }

  if (v24 == 45)
  {
    if (v22 >= 1)
    {
      if (--v22)
      {
        v25 = 0;
        if (result)
        {
          v26 = (result + 1);
          while (1)
          {
            v27 = *v26 - 48;
            if (v27 > 9)
            {
              goto LABEL_61;
            }

            v28 = (v25 * 10) >> 64;
            v29 = 10 * v25;
            if (v28 != v29 >> 63)
            {
              goto LABEL_61;
            }

            v30 = __OFSUB__(v29, v27);
            v25 = v29 - v27;
            if (v30)
            {
              goto LABEL_61;
            }

            ++v26;
            if (!--v22)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_60:
        LOBYTE(v22) = 0;
LABEL_62:
        v67 = v25;
        goto LABEL_63;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  if (!v22)
  {
    goto LABEL_72;
  }

  v43 = 0;
  if (result)
  {
    while (1)
    {
      v44 = *result - 48;
      if (v44 > 9)
      {
        break;
      }

      v45 = (v43 * 10) >> 64;
      v46 = 10 * v43;
      if (v45 != v46 >> 63)
      {
        break;
      }

      v30 = __OFADD__(v46, v44);
      v43 = v46 + v44;
      if (v30)
      {
        break;
      }

      ++result;
      if (!--v22)
      {
        goto LABEL_74;
      }
    }

LABEL_72:
    LOBYTE(v22) = 1;
    v67 = 0;
    goto LABEL_63;
  }

  LOBYTE(v22) = 0;
LABEL_74:
  v67 = v43;
LABEL_63:
  v69 = v22;
  v51 = v22;

  if (v51)
  {
LABEL_64:
    v67 = 0;
  }

LABEL_65:
  v52 = sub_2B7E40(a1, a2);
  v53 = &enum case for ContentType.audiobook(_:);
  if ((v52 & 1) == 0)
  {
    v53 = &enum case for ContentType.book(_:);
  }

  (*(v16 + 104))(v18, *v53, v15);
  sub_2BF2C8();
  v55 = v8;
  if (v54)
  {
    sub_2BF2F8();
  }

  sub_2BA194(a1, a2, v14);
  v56 = sub_2BF348();
  v57 = sub_2BE908();
  v58 = *(v57 - 8);
  v59 = &enum case for SeriesType.ordered(_:);
  if ((v56 & 1) == 0)
  {
    v59 = &enum case for SeriesType.unOrdered(_:);
  }

  (*(*(v57 - 8) + 104))(v11, *v59, v57);
  (*(v58 + 56))(v11, 0, 1, v57);
  sub_2BA4F4(a1, a2, v55);
  return sub_2BE8E8();
}

uint64_t sub_2B7E40(uint64_t a1, uint64_t a2)
{
  v2 = sub_2BF368();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v12 - v7;
  sub_2BF278();
  (*(v3 + 104))(v5, enum case for SeriesType.audiobook(_:), v2);
  sub_257E10();
  sub_2C5A88();
  sub_2C5A88();
  if (v12[2] == v12[0] && v12[3] == v12[1])
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_2C65B8();
  }

  v10 = *(v3 + 8);
  v10(v5, v2);
  v10(v8, v2);

  return v9 & 1;
}

uint64_t sub_2B7FF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v118 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v115 = sub_2C60B8();
  v117 = *(v115 - 8);
  __chkstk_darwin(v115);
  v108 = &v107 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v109 = &v107 - v7;
  __chkstk_darwin(v8);
  v114 = &v107 - v9;
  __chkstk_darwin(v10);
  v121 = &v107 - v11;
  __chkstk_darwin(v12);
  v120 = &v107 - v13;
  __chkstk_darwin(v14);
  v119 = &v107 - v15;
  v16 = sub_2BF738();
  v112 = *(v16 - 8);
  v113 = v16;
  __chkstk_darwin(v16);
  v111 = &v107 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  v110 = v18;
  v19 = sub_2BF6B8();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v107 - v21;
  if ((sub_2BF348() & 1) == 0)
  {
    v24 = WitnessTable;
    result = sub_2BF328();
    if (!v24)
    {
      *&v138 = result;
      __chkstk_darwin(result);
      *(&v107 - 2) = a1;
      *(&v107 - 1) = a2;
      v26 = a2;
      v27 = a1;
      v29 = v28;
      sub_2C5B98();
      WitnessTable = swift_getWitnessTable();
      v30 = sub_2C5A68();
      *&v138 = v29;
      __chkstk_darwin(v30);
      *(&v107 - 2) = v27;
      *(&v107 - 1) = v26;
      sub_2C5A68();
      v113 = v29;
      *&v138 = v29;
      __chkstk_darwin(v29);
      *(&v107 - 2) = v27;
      *(&v107 - 1) = v26;
      v107 = v27;

      swift_getWitnessTable();
      *&v138 = sub_2C6268();
      __chkstk_darwin(v138);
      *(&v107 - 2) = v27;
      *(&v107 - 1) = v26;
      sub_2C5A58();

      *&v138 = v113;
      __chkstk_darwin(v31);
      *(&v107 - 2) = v107;
      *(&v107 - 1) = v26;
      v116 = v26;
      v32 = sub_2C5A48();
      v110 = 0;

      if (v32)
      {
        v33 = *(v117 + 8);
        v34 = v115;
        v33(v121, v115);
        v33(v120, v34);
        v33(v119, v34);
        v35 = v114;
        (*(*(AssociatedTypeWitness - 8) + 56))(v114, 1, 1);
      }

      else
      {
        v43 = *(v117 + 16);
        v44 = v109;
        v34 = v115;
        v43(v109, v121, v115);
        v45 = AssociatedTypeWitness;
        v46 = *(AssociatedTypeWitness - 8);
        v47 = *(v46 + 48);
        if (v47(v44, 1, AssociatedTypeWitness) == 1)
        {
          WitnessTable = v46;
          v48 = v45;
          v49 = v108;
          v43(v108, v120, v34);
          if (v47(v49, 1, v48) == 1)
          {
            v50 = v114;
            v43(v114, v119, v34);
            v35 = v50;
            v44 = v109;
            v51 = v47(v49, 1, v48) == 1;
            v52 = v49;
            v45 = v48;
            v53 = v47;
            if (!v51)
            {
              (*(v117 + 8))(v52, v34);
            }
          }

          else
          {
            v99 = WitnessTable;
            v35 = v114;
            (*(WitnessTable + 32))(v114, v49, v48);
            (*(v99 + 56))(v35, 0, 1, v48);
            v45 = v48;
            v53 = v47;
          }

          v47 = v53;
          v51 = v53(v44, 1, v45) == 1;
          v100 = v44;
          v95 = v119;
          v46 = WitnessTable;
          v96 = v117;
          if (!v51)
          {
            (*(v117 + 8))(v100, v34);
          }
        }

        else
        {
          v35 = v114;
          (*(v46 + 32))(v114, v44, v45);
          (*(v46 + 56))(v35, 0, 1, v45);
          v95 = v119;
          v96 = v117;
        }

        if (v47(v35, 1, v45) != 1)
        {
          v102 = v118;
          v118[3] = v45;
          v102[4] = swift_getAssociatedConformanceWitness();
          v103 = sub_720C8(v102);
          (*(v46 + 32))(v103, v35, v45);
          v104 = *(v96 + 8);
          v104(v121, v34);
          v104(v120, v34);
          return (v104)(v95, v34);
        }

        v33 = *(v96 + 8);
        v33(v121, v34);
        v33(v120, v34);
        v33(v95, v34);
      }

      result = (v33)(v35, v34);
      v101 = v118;
      v118[4] = 0;
      *v101 = 0u;
      *(v101 + 1) = 0u;
      return result;
    }

    return result;
  }

  v116 = a2;
  sub_2BF378();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      (*(v20 + 8))(v22, v19);
      v40 = v111;
      v39 = v112;
      v41 = v113;
      (*(v112 + 104))(v111, enum case for SeriesListSortOrder.ascending(_:), v113);
      v42 = WitnessTable;
      sub_2BF328();
      v110 = v42;
      if (v42)
      {
        return (*(v39 + 8))(v40, v41);
      }

      sub_6620C(&qword_3BC2C8, &qword_2E2FA0);
      sub_2C6358();

      v38 = sub_2BF708();

      (*(v39 + 8))(v40, v41);
      goto LABEL_18;
    }

    (*(v20 + 8))(v22, v19);
  }

  else
  {
    v36 = v110;

    (*(*(v36 - 8) + 8))(v22, v36);
  }

  v37 = WitnessTable;
  result = sub_2BF328();
  if (v37)
  {
    return result;
  }

  v110 = 0;
  sub_6620C(&qword_3BC2C8, &qword_2E2FA0);
  v38 = sub_2C6358();

LABEL_18:
  v54 = *(v38 + 16);

  if (v54)
  {
    v55 = 0;
    v56 = v38 + 32;
    while (v55 < *(v38 + 16))
    {
      sub_691F8(v56, &v138);
      v57 = *(&v139 + 1);
      v58 = v140;
      sub_72084(&v138, *(&v139 + 1));
      if (sub_2B9A74(v57, v58))
      {
        result = sub_693D0(&v138, &v144);
        goto LABEL_26;
      }

      ++v55;
      result = sub_68CD0(&v138);
      v56 += 40;
      if (v54 == v55)
      {
        goto LABEL_23;
      }
    }

    goto LABEL_115;
  }

LABEL_23:
  v146 = 0;
  v144 = 0u;
  v145 = 0u;
  if (v54)
  {
LABEL_26:
    v59 = 0;
    v60 = v38 + 32;
    while (v59 < *(v38 + 16))
    {
      sub_691F8(v60, &v138);
      v61 = *(&v139 + 1);
      v62 = v140;
      sub_72084(&v138, *(&v139 + 1));
      if (sub_2B9A74(v61, v62))
      {
        sub_72084(&v138, *(&v139 + 1));
        v63 = sub_2BF948();
        if (v63 != 2 && (v63 & 1) != 0)
        {
          result = sub_693D0(&v138, &v141);
          goto LABEL_34;
        }
      }

      ++v59;
      result = sub_68CD0(&v138);
      v60 += 40;
      if (v54 == v59)
      {
        goto LABEL_33;
      }
    }

    goto LABEL_112;
  }

LABEL_33:
  v143 = 0;
  v141 = 0u;
  v142 = 0u;
LABEL_34:
  WitnessTable = v38;
  if (v54)
  {
    v64 = 0;
    v65 = WitnessTable + 32;
    v66 = _swiftEmptyArrayStorage;
    while (v64 < *(WitnessTable + 16))
    {
      *&v132 = v64;
      sub_691F8(v65, &v132 + 8);
      v136 = v133;
      v137 = v134;
      v135 = v132;
      v67 = v134;
      sub_72084(&v135 + 1, v134);
      if (sub_2B9AD8(v67, *(&v67 + 1)))
      {
        v132 = v135;
        v133 = v136;
        v134 = v137;
        result = swift_isUniquelyReferenced_nonNull_native();
        *&v129 = v66;
        if ((result & 1) == 0)
        {
          result = sub_64634(0, v66[2] + 1, 1);
          v66 = v129;
        }

        v69 = v66[2];
        v68 = v66[3];
        if (v69 >= v68 >> 1)
        {
          result = sub_64634((v68 > 1), v69 + 1, 1);
          v66 = v129;
        }

        v66[2] = v69 + 1;
        v70 = &v66[6 * v69];
        v71 = v132;
        v72 = v134;
        v70[3] = v133;
        v70[4] = v72;
        v70[2] = v71;
      }

      else
      {
        result = sub_69198(&v135, &unk_3BDC50, &unk_2E3000);
      }

      ++v64;
      v65 += 40;
      if (v54 == v64)
      {
        goto LABEL_46;
      }
    }

    __break(1u);
LABEL_112:
    __break(1u);
LABEL_113:
    __break(1u);
LABEL_114:
    __break(1u);
LABEL_115:
    __break(1u);
LABEL_116:
    __break(1u);
LABEL_117:
    __break(1u);
LABEL_118:
    __break(1u);
LABEL_119:
    __break(1u);
    goto LABEL_120;
  }

  v66 = _swiftEmptyArrayStorage;
LABEL_46:
  v73 = v66[2];
  if (v73)
  {
    result = sub_6932C((v66 + 4), &v135, &unk_3BDC50, &unk_2E3000);
    AssociatedTypeWitness = v66;
    if (v73 != 1)
    {
      v86 = (v66 + 10);
      v87 = 1;
      while (v87 < *(AssociatedTypeWitness + 16))
      {
        sub_6932C(v86, &v132, &unk_3BDC50, &unk_2E3000);
        v89 = *(&v134 + 1);
        v88 = v134;
        sub_72084(&v132 + 1, v134);
        sub_6932C(&v135, &v129, &unk_3BDC50, &unk_2E3000);
        sub_693D0((&v129 + 8), &v126);
        LOBYTE(v88) = sub_2B9B5C(&v126, v88, v89);
        sub_69198(&v126, &unk_3C2550, &qword_2E4E40);
        if (v88)
        {
          result = sub_69198(&v135, &unk_3BDC50, &unk_2E3000);
          v135 = v132;
          v136 = v133;
          v137 = v134;
        }

        else
        {
          result = sub_69198(&v132, &unk_3BDC50, &unk_2E3000);
        }

        ++v87;
        v86 += 48;
        if (v73 == v87)
        {
          goto LABEL_48;
        }
      }

      goto LABEL_116;
    }

LABEL_48:

    v138 = v135;
    v139 = v136;
    v74 = v137;
  }

  else
  {

    v74 = 0uLL;
    v138 = 0u;
    v139 = 0u;
  }

  v140 = v74;
  v75 = WitnessTable;
  v76 = *(WitnessTable + 16);
  if (v76)
  {
    v77 = WitnessTable + 32;
    v78 = v76 - 1;
    sub_691F8(WitnessTable + 32 + 40 * (v76 - 1), &v129 + 8);
    *&v132 = v76 - 1;
    sub_693D0((&v129 + 8), &v132 + 8);
    v130 = v133;
    v131 = v134;
    v129 = v132;
    v79 = v134;
    sub_72084(&v129 + 1, v134);
    if (sub_2B9ED4(v79, *(&v79 + 1)))
    {
LABEL_60:

      v135 = v129;
      v136 = v130;
      v137 = v131;
      result = sub_6932C(&v135, &v132, &qword_3CA3D0, &qword_2FCB38);
      if (!v134)
      {
LABEL_122:
        __break(1u);
        goto LABEL_123;
      }

      v83 = v132 + 1;
      if (__OFADD__(v132, 1))
      {
        goto LABEL_117;
      }

      sub_68CD0(&v132 + 1);
      v84 = *(v75 + 16);
      if (v137)
      {
        if (v83 != v84)
        {
          result = sub_6932C(&v135, &v129, &qword_3CA3D0, &qword_2FCB38);
          if (!v131)
          {
LABEL_123:
            __break(1u);
            goto LABEL_124;
          }

          v90 = v129 + 1;
          if (__OFADD__(v129, 1))
          {
            goto LABEL_118;
          }

          sub_68CD0(&v129 + 1);
          *&v132 = v90;
          result = sub_6932C(&v135, &v129, &qword_3CA3D0, &qword_2FCB38);
          if (!v131)
          {
LABEL_124:
            __break(1u);
            return result;
          }

          v91 = v129 + 1;
          if (__OFADD__(v129, 1))
          {
            goto LABEL_119;
          }

          result = sub_68CD0(&v129 + 1);
          if ((v91 & 0x8000000000000000) != 0)
          {
LABEL_120:
            __break(1u);
            goto LABEL_121;
          }

          if (v91 >= *(v75 + 16))
          {
LABEL_121:
            __break(1u);
            goto LABEL_122;
          }

          sub_691F8(v77 + 40 * v91, &v132 + 8);

          goto LABEL_81;
        }

        v133 = 0u;
        v134 = 0u;
        v132 = 0u;
      }

      else
      {

        v133 = 0u;
        v134 = 0u;
        v132 = 0u;
        if (v83 != v84)
        {
          goto LABEL_81;
        }
      }

      sub_6932C(&v138, &v129, &qword_3CA3D0, &qword_2FCB38);
      if (!v131)
      {
        sub_69198(&v129, &qword_3CA3D0, &qword_2FCB38);
        sub_69198(&v132, &qword_3CA3D0, &qword_2FCB38);
        sub_69198(&v138, &qword_3CA3D0, &qword_2FCB38);
        sub_69198(&v141, &unk_3C2550, &qword_2E4E40);
        sub_69198(&v144, &unk_3C2550, &qword_2E4E40);
        result = sub_69198(&v135, &qword_3CA3D0, &qword_2FCB38);
        v98 = v118;
        *v118 = 0u;
        *(v98 + 16) = 0u;
        *(v98 + 32) = 0;
        return result;
      }

      sub_69198(&v132, &qword_3CA3D0, &qword_2FCB38);
      sub_69198(&v138, &qword_3CA3D0, &qword_2FCB38);
      sub_69198(&v141, &unk_3C2550, &qword_2E4E40);
      sub_69198(&v144, &unk_3C2550, &qword_2E4E40);
      sub_69198(&v135, &qword_3CA3D0, &qword_2FCB38);
      v126 = v129;
      v127 = v130;
      v128 = v131;
      v85 = &v126;
      return sub_693D0((v85 | 8), v118);
    }

    AssociatedTypeWitness = v75 + 32;
    result = sub_69198(&v129, &unk_3BDC50, &unk_2E3000);
    if (v76 != 1)
    {
      v80 = v75 + 40 * v76 - 48;
      do
      {
        v81 = v78 - 1;
        if (__OFSUB__(v78, 1))
        {
          goto LABEL_113;
        }

        if (v78 > *(WitnessTable + 16))
        {
          goto LABEL_114;
        }

        sub_691F8(v80, &v129 + 8);
        *&v132 = v78 - 1;
        sub_693D0((&v129 + 8), &v132 + 8);
        v130 = v133;
        v131 = v134;
        v129 = v132;
        v82 = v134;
        sub_72084(&v129 + 1, v134);
        if (sub_2B9ED4(v82, *(&v82 + 1)))
        {
          v75 = WitnessTable;
          v77 = AssociatedTypeWitness;
          goto LABEL_60;
        }

        result = sub_69198(&v129, &unk_3BDC50, &unk_2E3000);
        v80 -= 40;
        --v78;
      }

      while (v81);
    }
  }

  v135 = 0u;
  v136 = 0u;
  v137 = 0u;

  v133 = 0u;
  v134 = 0u;
  v132 = 0u;
LABEL_81:
  sub_6932C(&v138, &v126, &qword_3CA3D0, &qword_2FCB38);
  if (v128)
  {
    v129 = v126;
    v130 = v127;
    v131 = v128;
    sub_6932C(&v132, &v123, &qword_3CA3D0, &qword_2FCB38);
    if (v125)
    {
      sub_69198(&v132, &qword_3CA3D0, &qword_2FCB38);
      sub_69198(&v138, &qword_3CA3D0, &qword_2FCB38);
      sub_69198(&v141, &unk_3C2550, &qword_2E4E40);
      sub_69198(&v144, &unk_3C2550, &qword_2E4E40);
      v126 = v123;
      v127 = v124;
      v128 = v125;
      v92 = v123;
      v93 = v129;
      sub_69198(&v135, &qword_3CA3D0, &qword_2FCB38);
      if (v93 >= v92)
      {
        sub_69198(&v126, &unk_3BDC50, &unk_2E3000);
        v123 = v129;
        v124 = v130;
        v94 = v131;
      }

      else
      {
        sub_69198(&v129, &unk_3BDC50, &unk_2E3000);
        v123 = v126;
        v124 = v127;
        v94 = v128;
      }

      v125 = v94;
      v85 = &v123;
      return sub_693D0((v85 | 8), v118);
    }

    sub_69198(&v129, &unk_3BDC50, &unk_2E3000);
    v97 = &v123;
  }

  else
  {
    v97 = &v126;
  }

  sub_69198(v97, &qword_3CA3D0, &qword_2FCB38);
  v130 = v133;
  v131 = v134;
  v129 = v132;
  if (v134)
  {
    sub_69198(&v138, &qword_3CA3D0, &qword_2FCB38);
    sub_69198(&v141, &unk_3C2550, &qword_2E4E40);
    sub_69198(&v144, &unk_3C2550, &qword_2E4E40);
    sub_693D0((&v129 + 8), &v126);
    sub_693D0(&v126, v118);
  }

  else
  {
    sub_69198(&v129, &qword_3CA3D0, &qword_2FCB38);
    v126 = 0u;
    v127 = 0u;
    *&v128 = 0;
    v130 = v139;
    v131 = v140;
    v129 = v138;
    if (v140)
    {
      sub_69198(&v141, &unk_3C2550, &qword_2E4E40);
      sub_69198(&v144, &unk_3C2550, &qword_2E4E40);
      sub_693D0((&v129 + 8), &v123);
      sub_693D0(&v123, v118);
    }

    else
    {
      sub_69198(&v129, &qword_3CA3D0, &qword_2FCB38);
      v123 = 0u;
      v124 = 0u;
      *&v125 = 0;
      v129 = v141;
      v130 = v142;
      *&v131 = v143;
      if (*(&v142 + 1))
      {
        sub_69198(&v144, &unk_3C2550, &qword_2E4E40);
        sub_693D0(&v129, v118);
        if (*(&v124 + 1))
        {
          sub_69198(&v123, &unk_3C2550, &qword_2E4E40);
        }
      }

      else
      {
        v105 = v145;
        v106 = v118;
        *v118 = v144;
        *(v106 + 16) = v105;
        *(v106 + 32) = v146;
      }
    }

    if (*(&v127 + 1))
    {
      sub_69198(&v126, &unk_3C2550, &qword_2E4E40);
    }
  }

  return sub_69198(&v135, &qword_3CA3D0, &qword_2FCB38);
}

uint64_t sub_2B9680(void *a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = sub_2C60B8();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - v7;
  v18 = sub_2BF328();
  sub_2C5B98();
  swift_getWitnessTable();
  sub_2C5D78();

  v10 = *(AssociatedTypeWitness - 8);
  if ((*(v10 + 48))(v8, 1, AssociatedTypeWitness) == 1)
  {
    (*(v6 + 8))(v8, v5);
    v11 = 0;
    v12 = 0;
  }

  else
  {
    swift_getAssociatedConformanceWitness();
    v11 = sub_2BF3B8();
    v12 = v13;
    (*(v10 + 8))(v8, AssociatedTypeWitness);
  }

  sub_72084(a1, a1[3]);
  v14 = sub_2BF3B8();
  if (v12)
  {
    if (v11 == v14 && v12 == v15)
    {

      v17 = 1;
    }

    else
    {
      v17 = sub_2C65B8();
    }
  }

  else
  {

    v17 = 0;
  }

  return v17 & 1;
}

uint64_t sub_2B9930(uint64_t a1)
{
  if ((*(a1 + 40) & 7u) <= 4)
  {
    return *(a1 + 40) & 7;
  }

  else
  {
    return (*a1 + 5);
  }
}

uint64_t sub_2B994C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 41))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 40);
  if (v3 >= 6)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2B9988(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_2B99D4(uint64_t result, unsigned int a2)
{
  if (a2 > 4)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 5;
    LOBYTE(a2) = 5;
  }

  *(result + 40) = a2;
  return result;
}

unint64_t sub_2B9A20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3CA3B8;
  if (!qword_3CA3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3CA3B8);
  }

  return result;
}

uint64_t sub_2B9A74(uint64_t a1, uint64_t a2)
{
  sub_2BF9E8();
  if (v2 == 0.0)
  {
    v3 = sub_2BF918();
    v4 = v3 ^ 1;
    if (v3 == 2)
    {
      v4 = 1;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t sub_2B9AD8(uint64_t a1, uint64_t a2)
{
  sub_2BF9E8();
  if (v2 <= 0.0 || (sub_2BF9E8(), v3 >= 0.85))
  {
    v5 = 0;
  }

  else
  {
    v4 = sub_2BF918();
    v5 = v4 ^ 1;
    if (v4 == 2)
    {
      v5 = 1;
    }
  }

  return v5 & 1;
}

uint64_t sub_2B9B5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v31 = a1;
  v6 = sub_6620C(&qword_3BC418, &unk_2E9200);
  __chkstk_darwin(v6 - 8);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v26 - v10;
  __chkstk_darwin(v12);
  v14 = &v26 - v13;
  v15 = sub_2BE588();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v30 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v26 - v19;
  v32 = a2;
  sub_2BF9D8();
  v21 = *(v16 + 48);
  if (v21(v14, 1, v15) == 1)
  {
    v11 = v14;
LABEL_8:
    sub_69198(v11, &qword_3BC418, &unk_2E9200);
    sub_2BF9D8();
    v23 = v21(v8, 1, v15) != 1;
    sub_69198(v8, &qword_3BC418, &unk_2E9200);
    return v23 & 1;
  }

  v28 = a3;
  v29 = v3;
  v27 = *(v16 + 32);
  v27(v20, v14, v15);
  sub_6932C(v31, v33, &unk_3C2550, &qword_2E4E40);
  if (!v34)
  {
    sub_69198(v33, &unk_3C2550, &qword_2E4E40);
    (*(v16 + 56))(v11, 1, 1, v15);
    goto LABEL_7;
  }

  sub_72084(v33, v34);
  sub_2BF9D8();
  sub_68CD0(v33);
  if (v21(v11, 1, v15) == 1)
  {
LABEL_7:
    (*(v16 + 8))(v20, v15);
    goto LABEL_8;
  }

  v22 = v30;
  v27(v30, v11, v15);
  v23 = sub_2BE508();
  v24 = *(v16 + 8);
  v24(v22, v15);
  v24(v20, v15);
  return v23 & 1;
}

uint64_t sub_2B9ED4(uint64_t a1, uint64_t a2)
{
  sub_2BF9E8();
  if (v2 >= 0.85)
  {
    v3 = 1;
  }

  else
  {
    v3 = sub_2BF918();
  }

  return v3 & 1;
}

uint64_t sub_2B9F30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  if (sub_2B9A74(AssociatedTypeWitness, AssociatedConformanceWitness))
  {
    v5 = sub_2BF948();
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_2B9FE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9[3] = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9[4] = AssociatedConformanceWitness;
  v7 = sub_720C8(v9);
  (*(*(AssociatedTypeWitness - 8) + 16))(v7, a1, AssociatedTypeWitness);
  LOBYTE(AssociatedConformanceWitness) = sub_2B9B5C(v9, AssociatedTypeWitness, AssociatedConformanceWitness);
  sub_69198(v9, &unk_3C2550, &qword_2E4E40);
  return AssociatedConformanceWitness & 1;
}

uint64_t sub_2BA0EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return a4(AssociatedTypeWitness, AssociatedConformanceWitness) & 1;
}

uint64_t sub_2BA194@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_6620C(&qword_3CA3C8, &unk_2FCB28);
  __chkstk_darwin(v6 - 8);
  v8 = v16 - v7;
  v9 = sub_2BEC08();
  v10 = *(v9 - 8);
  v11 = *(v10 + 56);
  v11(a3, 1, 1, v9);
  SeriesInfo.getPromotionState()(a1, a2, v22);
  sub_91668(v22, &v17);
  if (v21 > 2u)
  {
    if (v21 - 3 >= 2)
    {
      if (v19 | v20 | v17 | v18 | *(&v17 + 1))
      {
        sub_9150C(v22);
        sub_69198(a3, &qword_3CA3C8, &unk_2FCB28);
        (*(v10 + 104))(a3, enum case for SeriesUserStatus.unknown(_:), v9);
        v11(a3, 0, 1, v9);
        return sub_9150C(&v17);
      }

      sub_9150C(v22);
      sub_69198(a3, &qword_3CA3C8, &unk_2FCB28);
      v12 = &enum case for SeriesUserStatus.completed(_:);
    }

    else
    {
      sub_9150C(v22);
      sub_69198(a3, &qword_3CA3C8, &unk_2FCB28);
      sub_9150C(&v17);
      v12 = &enum case for SeriesUserStatus.inProgress(_:);
    }

    goto LABEL_6;
  }

  if (v21 < 2u)
  {
    sub_9150C(v22);
    sub_69198(a3, &qword_3CA3C8, &unk_2FCB28);
    sub_9150C(&v17);
    v12 = &enum case for SeriesUserStatus.new(_:);
LABEL_6:
    (*(v10 + 104))(a3, *v12, v9);
    return (v11)(a3, 0, 1, v9);
  }

  sub_693D0(&v17, v16);
  v14 = sub_2B9680(v16, a1, a2);
  sub_68CD0(v16);
  sub_9150C(v22);
  sub_69198(a3, &qword_3CA3C8, &unk_2FCB28);
  v15 = &enum case for SeriesUserStatus.new(_:);
  if ((v14 & 1) == 0)
  {
    v15 = &enum case for SeriesUserStatus.inProgress(_:);
  }

  (*(v10 + 104))(v8, *v15, v9);
  v11(v8, 0, 1, v9);
  return sub_2BAD78(v8, a3);
}

uint64_t sub_2BA4F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_2BECF8();
  v7 = *(v6 - 8);
  v10 = *(v7 + 56);
  v10(a3, 1, 1, v6);
  SeriesInfo.getPromotionState()(a1, a2, &v13);
  sub_69198(a3, &qword_3CA3C0, &unk_2FCB18);
  *&v12[9] = *&v14[9];
  v11 = v13;
  *v12 = *v14;
  if (v14[24] <= 2u)
  {
    if (v14[24])
    {
      if (v14[24] == 1)
      {
        v8 = &enum case for SeriesUserSubStatus.getFirstItemFree(_:);
      }

      else
      {
        v8 = &enum case for SeriesUserSubStatus.startSeries(_:);
      }
    }

    else
    {
      v8 = &enum case for SeriesUserSubStatus.seriesSample(_:);
    }

    goto LABEL_13;
  }

  if (v14[24] == 3)
  {
    v8 = &enum case for SeriesUserSubStatus.continueSeries(_:);
    goto LABEL_13;
  }

  if (v14[24] == 4)
  {
    v8 = &enum case for SeriesUserSubStatus.nextInSeries(_:);
LABEL_13:
    (*(v7 + 104))(a3, *v8, v6);
    v10(a3, 0, 1, v6);
    return sub_9150C(&v11);
  }

  if (*&v12[8] | *&v12[16] | v11 | *v12 | *(&v11 + 1))
  {
    v8 = &enum case for SeriesUserSubStatus.unknown(_:);
    goto LABEL_13;
  }

  (*(v7 + 104))(a3, enum case for SeriesUserSubStatus.shareSeries(_:), v6);

  return (v10)(a3, 0, 1, v6);
}

void *sub_2BA778(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_6620C(&qword_3BC358, &qword_2E3050);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

void sub_2BA7EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v65 = a1;
  v66 = a2;

  v4 = sub_2C5A18();
  v6 = v4;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_2BADE8(v4, v5);
    v36 = v35;

    v5 = v36;
    if ((v36 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      v7 = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v7 = sub_2C6248();
      v8 = v64;
    }

    v9 = *v7;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        v19 = v8 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (v7)
          {
            v23 = 0;
            v24 = v7 + 1;
            while (1)
            {
              v25 = *v24;
              if (v25 < 0x30 || v25 >= v20)
              {
                if (v25 < 0x41 || v25 >= v21)
                {
                  if (v25 < 0x61 || v25 >= v22)
                  {
                    goto LABEL_125;
                  }

                  v26 = -87;
                }

                else
                {
                  v26 = -55;
                }
              }

              else
              {
                v26 = -48;
              }

              v27 = v23 * a3;
              if ((v23 * a3) >> 64 == (v23 * a3) >> 63)
              {
                v23 = v27 + (v25 + v26);
                if (!__OFADD__(v27, (v25 + v26)))
                {
                  ++v24;
                  if (--v19)
                  {
                    continue;
                  }
                }
              }

              goto LABEL_125;
            }
          }
        }

        goto LABEL_125;
      }

      goto LABEL_129;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        v28 = a3 + 48;
        v29 = a3 + 55;
        v30 = a3 + 87;
        if (a3 > 10)
        {
          v28 = 58;
        }

        else
        {
          v30 = 97;
          v29 = 65;
        }

        if (v7)
        {
          v31 = 0;
          while (1)
          {
            v32 = *v7;
            if (v32 < 0x30 || v32 >= v28)
            {
              if (v32 < 0x41 || v32 >= v29)
              {
                if (v32 < 0x61 || v32 >= v30)
                {
                  goto LABEL_125;
                }

                v33 = -87;
              }

              else
              {
                v33 = -55;
              }
            }

            else
            {
              v33 = -48;
            }

            v34 = v31 * a3;
            if ((v31 * a3) >> 64 == (v31 * a3) >> 63)
            {
              v31 = v34 + (v32 + v33);
              if (!__OFADD__(v34, (v32 + v33)))
              {
                ++v7;
                if (--v8)
                {
                  continue;
                }
              }
            }

            goto LABEL_125;
          }
        }
      }

      goto LABEL_125;
    }

    if (v8 >= 1)
    {
      v10 = v8 - 1;
      if (v10)
      {
        v11 = a3 + 48;
        v12 = a3 + 55;
        v13 = a3 + 87;
        if (a3 > 10)
        {
          v11 = 58;
        }

        else
        {
          v13 = 97;
          v12 = 65;
        }

        if (v7)
        {
          v14 = 0;
          v15 = v7 + 1;
          while (1)
          {
            v16 = *v15;
            if (v16 < 0x30 || v16 >= v11)
            {
              if (v16 < 0x41 || v16 >= v12)
              {
                if (v16 < 0x61 || v16 >= v13)
                {
                  break;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            v18 = v14 * a3;
            if ((v14 * a3) >> 64 == (v14 * a3) >> 63)
            {
              v14 = v18 - (v16 + v17);
              if (!__OFSUB__(v18, (v16 + v17)))
              {
                ++v15;
                if (--v10)
                {
                  continue;
                }
              }
            }

            break;
          }
        }
      }

LABEL_125:

      return;
    }

    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
    goto LABEL_130;
  }

  v37 = HIBYTE(v5) & 0xF;
  v65 = v6;
  v66 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v37)
      {
        v56 = 0;
        v57 = a3 + 48;
        v58 = a3 + 55;
        v59 = a3 + 87;
        if (a3 > 10)
        {
          v57 = 58;
        }

        else
        {
          v59 = 97;
          v58 = 65;
        }

        v60 = &v65;
        while (1)
        {
          v61 = *v60;
          if (v61 < 0x30 || v61 >= v57)
          {
            if (v61 < 0x41 || v61 >= v58)
            {
              if (v61 < 0x61 || v61 >= v59)
              {
                goto LABEL_125;
              }

              v62 = -87;
            }

            else
            {
              v62 = -55;
            }
          }

          else
          {
            v62 = -48;
          }

          v63 = v56 * a3;
          if ((v56 * a3) >> 64 == (v56 * a3) >> 63)
          {
            v56 = v63 + (v61 + v62);
            if (!__OFADD__(v63, (v61 + v62)))
            {
              v60 = (v60 + 1);
              if (--v37)
              {
                continue;
              }
            }
          }

          goto LABEL_125;
        }
      }

      goto LABEL_125;
    }

    if (v37)
    {
      v38 = v37 - 1;
      if (v38)
      {
        v39 = 0;
        v40 = a3 + 48;
        v41 = a3 + 55;
        v42 = a3 + 87;
        if (a3 > 10)
        {
          v40 = 58;
        }

        else
        {
          v42 = 97;
          v41 = 65;
        }

        v43 = &v65 + 1;
        while (1)
        {
          v44 = *v43;
          if (v44 < 0x30 || v44 >= v40)
          {
            if (v44 < 0x41 || v44 >= v41)
            {
              if (v44 < 0x61 || v44 >= v42)
              {
                goto LABEL_125;
              }

              v45 = -87;
            }

            else
            {
              v45 = -55;
            }
          }

          else
          {
            v45 = -48;
          }

          v46 = v39 * a3;
          if ((v39 * a3) >> 64 == (v39 * a3) >> 63)
          {
            v39 = v46 - (v44 + v45);
            if (!__OFSUB__(v46, (v44 + v45)))
            {
              ++v43;
              if (--v38)
              {
                continue;
              }
            }
          }

          goto LABEL_125;
        }
      }

      goto LABEL_125;
    }

    goto LABEL_128;
  }

  if (v37)
  {
    v47 = v37 - 1;
    if (v47)
    {
      v48 = 0;
      v49 = a3 + 48;
      v50 = a3 + 55;
      v51 = a3 + 87;
      if (a3 > 10)
      {
        v49 = 58;
      }

      else
      {
        v51 = 97;
        v50 = 65;
      }

      v52 = &v65 + 1;
      while (1)
      {
        v53 = *v52;
        if (v53 < 0x30 || v53 >= v49)
        {
          if (v53 < 0x41 || v53 >= v50)
          {
            if (v53 < 0x61 || v53 >= v51)
            {
              goto LABEL_125;
            }

            v54 = -87;
          }

          else
          {
            v54 = -55;
          }
        }

        else
        {
          v54 = -48;
        }

        v55 = v48 * a3;
        if ((v48 * a3) >> 64 == (v48 * a3) >> 63)
        {
          v48 = v55 + (v53 + v54);
          if (!__OFADD__(v55, (v53 + v54)))
          {
            ++v52;
            if (--v47)
            {
              continue;
            }
          }
        }

        goto LABEL_125;
      }
    }

    goto LABEL_125;
  }

LABEL_130:
  __break(1u);
}

uint64_t sub_2BAD78(uint64_t a1, uint64_t a2)
{
  v4 = sub_6620C(&qword_3CA3C8, &unk_2FCB28);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2BADE8(uint64_t a1, unint64_t a2)
{
  v2 = sub_2C5A28();
  v6 = sub_2BAE68(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_2BAE68(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_2C60D8();
    if (!v9 || (v10 = v9, v11 = sub_2BA778(v9, 0), v12 = sub_2BAFC0(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_2C5948();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_2C5948();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_2C6248();
LABEL_4:

  return sub_2C5948();
}

unint64_t sub_2BAFC0(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_2BB1E0(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_2C59B8();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_2C6248();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_2BB1E0(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_2C5998();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

unint64_t sub_2BB1E0(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_2C59C8();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = sub_2C59A8();
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_2BB338(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_227310(a1, a2, a3);
  sub_2C3108();
  return v4;
}

uint64_t sub_2BB374()
{
  v1 = type metadata accessor for Shelf(0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1 - 8);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = (&v13 - v6);
  result = type metadata accessor for Page(0);
  v9 = *(v0 + *(result + 60));
  v10 = *(v9 + 16);
  if (!v10)
  {
    return 0;
  }

  v11 = 0;
  while (v11 < *(v9 + 16))
  {
    sub_2BC3D4(v9 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v11, v4, type metadata accessor for Shelf);
    v14._object = 0x8000000000308870;
    v14._countAndFlagsBits = 0xD000000000000011;
    if (sub_2C59D8(v14))
    {
      sub_2BC5B4(v4, v7, type metadata accessor for Shelf);
      v12 = *v7;

      sub_9160C(v7);
      return v12;
    }

    ++v11;
    result = sub_9160C(v4);
    if (v10 == v11)
    {
      return 0;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2BB550()
{
  swift_getKeyPath();
  sub_2BC37C();
  sub_2BE6F8();

  return *(v0 + 16);
}

double sub_2BB5C0(uint64_t a1)
{
  if (*(v1 + 16) != a1)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_2BC37C();
    sub_2BE6E8();
  }

  return result;
}

uint64_t sub_2BB694()
{
  v1 = OBJC_IVAR____TtC11BookStoreUI15StorePPTTrigger___observationRegistrar;
  v2 = sub_2BE738();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_2BB76C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_6620C(&qword_3BC7B8, &unk_2ED100);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 36) + 24);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }
}

uint64_t sub_2BB85C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_6620C(&qword_3BC7B8, &unk_2ED100);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 32);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 36) + 24) = a2;
  }

  return result;
}

void sub_2BB948(uint64_t a1)
{
  sub_2BBB24(319, &qword_3C1700, &qword_3BDB00, &qword_2E6E10, &type metadata accessor for Environment);
  if (v1 <= 0x3F)
  {
    sub_2BBAD0(319, &unk_3C0BB8, type metadata accessor for HostProxy);
    if (v2 <= 0x3F)
    {
      sub_2BBB24(319, &qword_3BC838, &qword_3BC840, &qword_2ED0A0, &type metadata accessor for Environment);
      if (v3 <= 0x3F)
      {
        sub_2BBAD0(319, &qword_3BC848, &type metadata accessor for OpaqueMetricsFieldsContext);
        if (v4 <= 0x3F)
        {
          sub_2BBB24(319, &qword_3BE098, &qword_3BC248, &qword_2E2F20, &type metadata accessor for Optional);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_2BBAD0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2C2558();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2BBB24(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_718D4(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

double sub_2BBBB4()
{
  v1 = v0;
  v2 = type metadata accessor for OnStoreProductPagePPTModifier(0);
  v19 = *(v2 - 8);
  v3 = *(v19 + 64);
  __chkstk_darwin(v2 - 8);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2C30F8();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v1 + 48);
  v10 = *(v1 + 56);

  if ((v10 & 1) == 0)
  {
    sub_2C5DD8();
    v18 = v5;
    v11 = sub_2C3718();
    v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_2C0058();

    sub_2C30E8();
    swift_getAtKeyPath();

    (*(v6 + 8))(v8, v18);
    v9 = v20;
  }

  v12 = *(v9 + 32);

  swift_getKeyPath();
  v20 = v12;
  sub_2BC37C();
  sub_2BE6F8();

  v13 = *(v12 + 16);

  v20 = v13;
  sub_2BC3D4(v1, v4, type metadata accessor for OnStoreProductPagePPTModifier);
  v14 = (*(v19 + 80) + 16) & ~*(v19 + 80);
  v15 = swift_allocObject();
  sub_2BC5B4(v4, v15 + v14, type metadata accessor for OnStoreProductPagePPTModifier);
  sub_6620C(&qword_3CA5A0, &unk_2FCC70);
  sub_2BC67C();
  sub_2C4108();

  return result;
}

uint64_t sub_2BBECC(void *a1)
{
  v2 = sub_2BFF28();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_2C30F8();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for OnStoreProductPagePPTModifier(0);
  sub_2BC6E0(a1 + *(v10 + 36), &v31);
  if (!v32)
  {
    return sub_69198(&v31, &unk_3BDC90, &unk_2E5620);
  }

  sub_68D1C(&v31, v33);
  sub_29A8A4(&v29);
  if (!v30)
  {
    sub_68CD0(v33);
    return sub_69198(&v29, &qword_3BC840, &qword_2ED0A0);
  }

  v27 = v2;
  v28 = v7;
  v25 = v5;
  v26 = v3;
  sub_68D1C(&v29, &v31);
  v12 = a1[3];
  v11 = a1[4];
  if (*(a1 + 40) == 1)
  {

    if (!v11)
    {
      goto LABEL_21;
    }
  }

  else
  {

    sub_2C5DD8();
    v14 = sub_2C3718();
    sub_2C0058();

    sub_2C30E8();
    swift_getAtKeyPath();
    v15 = sub_113C80(v12, v11, 0);
    v16 = *(v28 + 8);
    v16(v9, v6, v15);
    if (!*(&v29 + 1))
    {
      goto LABEL_21;
    }

    sub_2C5DD8();
    v17 = sub_2C3718();
    sub_2C0058();

    sub_2C30E8();
    swift_getAtKeyPath();
    v18 = sub_113C80(v12, v11, 0);
    v16(v9, v6, v18);
    v11 = *(&v29 + 1);
    v12 = v29;
  }

  v20 = *a1;
  v19 = a1[1];
  if (*(a1 + 16) == 1)
  {

    if (v11)
    {
      goto LABEL_12;
    }

LABEL_17:
    if (!v19)
    {
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  sub_2C5DD8();
  v21 = sub_2C3718();
  sub_2C0058();

  sub_2C30E8();
  swift_getAtKeyPath();
  v22 = sub_113C80(v20, v19, 0);
  (*(v28 + 8))(v9, v6, v22);
  v19 = *(&v29 + 1);
  v20 = v29;
  if (!v11)
  {
    goto LABEL_17;
  }

LABEL_12:
  if (!v19)
  {
LABEL_18:

    goto LABEL_21;
  }

  if (v12 == v20 && v11 == v19)
  {

LABEL_20:
    sub_72084(&v31, v32);
    v24 = v25;
    sub_29A8B8(v25);
    sub_2BFCD8();
    (*(v26 + 8))(v24, v27);
    goto LABEL_21;
  }

  v23 = sub_2C65B8();

  if (v23)
  {
    goto LABEL_20;
  }

LABEL_21:
  sub_68CD0(v33);
  return sub_68CD0(&v31);
}

unint64_t sub_2BC37C()
{
  result = qword_3BEF28;
  if (!qword_3BEF28)
  {
    type metadata accessor for StorePPTTrigger(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BEF28);
  }

  return result;
}

uint64_t sub_2BC3D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2BC43C()
{
  v1 = type metadata accessor for OnStoreProductPagePPTModifier(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = (v2 + 16) & ~v2;
  v5 = v0 + v4;
  sub_113C80(*(v0 + v4), *(v0 + v4 + 8), *(v0 + v4 + 16));
  sub_113C80(*(v5 + 24), *(v5 + 32), *(v5 + 40));

  if (*(v0 + v4 + 104))
  {
    if (*(v5 + 88))
    {
      sub_68CD0((v5 + 64));
    }
  }

  else
  {
  }

  v6 = *(v1 + 32);
  sub_6620C(&unk_3C4360, qword_2ED140);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_2BFF28();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  v8 = (v5 + *(v1 + 36));
  if (v8[3])
  {
    sub_68CD0(v8);
  }

  return _swift_deallocObject(v0, v4 + v3, v2 | 7);
}

uint64_t sub_2BC5B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2BC61C()
{
  v1 = *(type metadata accessor for OnStoreProductPagePPTModifier(0) - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return sub_2BBECC(v2);
}

unint64_t sub_2BC67C()
{
  result = qword_3CA5A8;
  if (!qword_3CA5A8)
  {
    sub_718D4(&qword_3CA5A0, &unk_2FCC70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3CA5A8);
  }

  return result;
}

uint64_t sub_2BC6E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_6620C(&unk_3BDC90, &unk_2E5620);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2BC760()
{
  sub_718D4(&qword_3CA5A0, &unk_2FCC70);
  sub_2BC67C();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2BC804(int a1, int a2, int a3, int a4)
{
  if (qword_3E87F8 == -1)
  {
    if (qword_3E8800)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    sub_2BE168();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_3E8800)
    {
      return _availability_version_check();
    }
  }

  if (qword_3E87F0 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    sub_2BE180();
    a3 = v10;
    a4 = v9;
    v8 = dword_3E87E0 < v11;
    if (dword_3E87E0 > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_3E87E4 > a3)
      {
        return 1;
      }

      if (dword_3E87E4 >= a3)
      {
        return dword_3E87E8 >= a4;
      }
    }

    return 0;
  }

  v8 = dword_3E87E0 < a2;
  if (dword_3E87E0 <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t sub_2BC998(uint64_t result)
{
  v1 = qword_3E8800;
  if (qword_3E8800)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (&__availability_version_check)
    {
      v1 = &__availability_version_check;
      qword_3E8800 = &__availability_version_check;
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v27 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v26 = v12;
                          fseek(result, 0, 2);
                          v14 = ftell(v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v25 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v25, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v26)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v27(v23, v28, 32, 134217984))
                                        {
                                          sscanf(v28, "%d.%d.%d", &dword_3E87E0, &dword_3E87E4, &dword_3E87E8);
                                        }
                                      }
                                    }
                                  }

                                  (v26)(v20);
                                }

                                (v26)(v18);
                                v16 = v25;
                              }

                              else
                              {
                                v16 = v25;
                              }
                            }
                          }

                          free(v16);
                          return fclose(v13);
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_2BCCF4(void *a1, NSObject *a2)
{
  v3 = [a1 description];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "BSUIGoalsSharableImageRenderer: Errored out with error %@", &v4, 0xCu);
}

void sub_2BCDE4(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "Encountered error while fetching reading goals share URL: %{public}@", &v2, 0xCu);
}

void sub_2BCEDC()
{
  sub_F7C0();
  sub_F7B4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_2BCF4C()
{
  sub_F7CC();
  sub_F7B4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_2BCF88()
{
  sub_F7CC();
  sub_F7B4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_2BCFC4()
{
  sub_F7C0();
  sub_F7B4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_2BD034()
{
  sub_F7CC();
  sub_F7B4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_2BD070()
{
  sub_F7C0();
  sub_F7B4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_2BD0E0()
{
  sub_F7C0();
  sub_F7B4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_2BD150()
{
  sub_F7C0();
  sub_F7B4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_2BD204()
{
  sub_F7C0();
  v3 = 2112;
  v4 = v0;
  _os_log_fault_impl(&dword_0, v1, OS_LOG_TYPE_FAULT, "Failed to re-create temp dir at %@. Probably going to crash. Error: %@", v2, 0x16u);
}

void sub_2BD3F8(uint64_t a1, void *a2, void *a3)
{
  if (a1)
  {
    v5 = a3;
    v6 = a2;
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = objc_loadWeakRetained((a1 + 32));
    v10 = [NSString stringWithFormat:@"<StateCenter: %p, %@: %p, Item: %@>", a1, v8, v9, v5];

    [v6 setDebugName:v10];
  }
}

id sub_2BD4D0(uint64_t a1, uint64_t a2, uint64_t *a3, void **a4)
{
  v7 = [TUIMutableDynamicValue valueWithValue:*(a1 + 48)];
  v8 = *(*a2 + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  sub_2BD3F8(*a3, *(*(*a2 + 8) + 40), *a4);
  [*(*a3 + 8) setObject:*(*(*a2 + 8) + 40) forKey:*a4];
  v10 = *a3;

  return [v10 aq_updateInterest];
}

void sub_2BD6A8(void *a1)
{
  v1 = [a1 componentsJoinedByString:{@", "}];
  v2 = 138412290;
  v3 = v1;
  _os_log_fault_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_FAULT, "BSUIDynamicArrayProvider: update contains duplicates of:\n%@", &v2, 0xCu);
}

void sub_2BD7B4(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_debug_impl(&dword_0, log, OS_LOG_TYPE_DEBUG, "BSUIDownloadProgressCenter audiobookProgress: %@", buf, 0xCu);
}

void sub_2BD80C(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_debug_impl(&dword_0, log, OS_LOG_TYPE_DEBUG, "BSUIDownloadProgressCenter ubiquityProgress: %@", buf, 0xCu);
}

void sub_2BDB98(void *a1)
{
  if (a1)
  {
    v2 = [a1 navigationItem];
    v3 = [v2 standardAppearance];
    v4 = [v3 copy];
    v5 = v4;
    if (v4)
    {
      v10 = v4;
    }

    else
    {
      v6 = [a1 navigationController];
      v7 = [v6 navigationBar];
      v8 = [v7 standardAppearance];
      v10 = [v8 copy];
    }

    [v10 configureWithTransparentBackground];
    v9 = [a1 navigationItem];
    [v9 setStandardAppearance:v10];
  }
}

void sub_2BDC90(void *a1, uint64_t a2)
{
  if (a1)
  {
    v4 = [a1 contentUnavailableConfiguration];

    if (!v4)
    {
      v5 = [a1 _resolvedLargeTitleDisplayMode:a2];
      v6 = [a1 navigationItem];
      v7 = [v6 largeTitleDisplayMode];

      if (v7 != v5)
      {
        v8 = [a1 navigationItem];
        [v8 setLargeTitleDisplayMode:v5];
      }
    }

    a1[5] = a2;
  }
}

void sub_2BDE54(uint64_t a1, _BYTE *a2)
{
  (*(a1 + 16))();
  sub_2BDB98(a2);
  a2[48] = 1;
}

void sub_2BDE98(void *a1, NSObject *a2)
{
  [a1 feedId];
  sub_545D4();
  v4 = &off_39B4D0;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "[fid:%lu] JS fails to report initialContentReadySection, using fallback value %@", v3, 0x16u);
}

void sub_2BDF70()
{
  sub_545D4();
  v3 = v0;
  _os_log_debug_impl(&dword_0, v1, OS_LOG_TYPE_DEBUG, "_removeAlphaOverride: override does not exist - refId: %@, refInstance: %@", v2, 0x16u);
}

void sub_2BDFEC(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "Error attempting to execute flow action %@", &v2, 0xCu);
}

void sub_2BE0A8(void *a1)
{
  [a1 setContentUnavailableConfiguration:0];
  v2 = a1[5];

  sub_2BDC90(a1, v2);
}

void sub_2BE0F0(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "BSUISeriesStackImageBoxLayout has no way to compute computedNaturalSize for unsupported series filter '%@'.", &v2, 0xCu);
}