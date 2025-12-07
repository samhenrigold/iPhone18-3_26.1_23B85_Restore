id sub_1D92E6A30(void *a1)
{
  v2 = [objc_allocWithZone(CHUISControlToggleOption) init];
  if (a1[1])
  {
    v3 = sub_1D9327F74();
  }

  else
  {
    v3 = 0;
  }

  [v2 setValue_];

  [v2 setIcon_];
  if (a1[4] && (v4 = sub_1D9327344()) != 0)
  {
    v5 = v4;
    v6 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithCGColor_];
  }

  else
  {
    v6 = 0;
  }

  [v2 setTint_];

  if (a1[6])
  {
    v7 = sub_1D9327F74();
  }

  else
  {
    v7 = 0;
  }

  [v2 setStatus_];

  if (a1[8])
  {
    v8 = sub_1D9327F74();
  }

  else
  {
    v8 = 0;
  }

  [v2 setActionHint_];

  return v2;
}

id CHUISControlInstanceToggle.iconView.getter()
{
  v1 = OBJC_IVAR___CHUISControlInstance__adapter;
  swift_beginAccess();
  sub_1D929CF00(v0 + v1, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCA30, &qword_1D932DF10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCB80, qword_1D932E408);
  swift_dynamicCast();
  v2 = *(v4 + 24);

  return v2;
}

id CHUISControlInstanceToggle.tintColor.getter()
{
  v1 = OBJC_IVAR___CHUISControlInstance__adapter;
  swift_beginAccess();
  sub_1D929CF00(v0 + v1, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCA30, &qword_1D932DF10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCB80, qword_1D932E408);
  swift_dynamicCast();
  swift_beginAccess();
  v2 = *(v6 + 16);
  if (v2)
  {
    v3 = v2;

    v4 = [v3 currentTint];
  }

  else
  {

    return 0;
  }

  return v4;
}

id CHUISControlInstanceToggle.state.getter()
{
  v1 = OBJC_IVAR___CHUISControlInstance__adapter;
  swift_beginAccess();
  sub_1D929CF00(v0 + v1, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCA30, &qword_1D932DF10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCB80, qword_1D932E408);
  swift_dynamicCast();
  swift_beginAccess();
  v2 = *(v6 + 16);
  if (v2)
  {
    v3 = v2;

    v4 = [v3 state];
  }

  else
  {

    return 0;
  }

  return v4;
}

uint64_t sub_1D92E6FC0(SEL *a1)
{
  v3 = OBJC_IVAR___CHUISControlInstance__adapter;
  swift_beginAccess();
  sub_1D929CF00(v1 + v3, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCA30, &qword_1D932DF10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCB80, qword_1D932E408);
  swift_dynamicCast();
  swift_beginAccess();
  v4 = *(v9 + 16);
  if (v4)
  {
    v5 = v4;

    v6 = [v5 *a1];

    if (v6)
    {
      v7 = sub_1D9327F84();

      return v7;
    }
  }

  else
  {
  }

  return 0;
}

id sub_1D92E70F8(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  a3();
  v6 = v5;

  if (v6)
  {
    v7 = sub_1D9327F74();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t CHUISControlInstanceToggle.valueLabelAfterAction.getter()
{
  v1 = OBJC_IVAR___CHUISControlInstance__adapter;
  swift_beginAccess();
  sub_1D929CF00(v0 + v1, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCA30, &qword_1D932DF10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCB80, qword_1D932E408);
  swift_dynamicCast();
  swift_beginAccess();
  v2 = *(v8 + 16);
  v3 = v2;

  if (v2)
  {
    if ([v3 state])
    {
      v4 = [v3 offOption];
    }

    else
    {
      v4 = [v3 onOption];
    }

    v5 = [v4 value];

    if (v5)
    {
      v6 = sub_1D9327F84();

      return v6;
    }
  }

  return 0;
}

void *CHUISControlInstanceToggle.viewModel.getter()
{
  v1 = OBJC_IVAR___CHUISControlInstance__adapter;
  swift_beginAccess();
  sub_1D929CF00(v0 + v1, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCA30, &qword_1D932DF10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCB80, qword_1D932E408);
  swift_dynamicCast();
  swift_beginAccess();
  v2 = *(v5 + 16);
  v3 = v2;

  return v2;
}

_BYTE *CHUISControlInstanceToggle.init(control:)(void *a1)
{
  v3 = [objc_allocWithZone(MEMORY[0x1E6994270]) initWithControl:a1 contentType:0 hostIdentifier:0 configurationIdentifier:0];
  v4 = [v1 initWithInstanceIdentity_];
  v4[OBJC_IVAR___CHUISControlInstance__implicitlyActivateOnObserverRegistration] = 1;
  v5 = &v4[OBJC_IVAR___CHUISControlInstance__adapter];
  swift_beginAccess();
  v6 = *(v5 + 24);
  v7 = *(v5 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v5, v6);
  v8 = *(v7 + 16);
  v9 = v4;
  v8(1, v6, v7);
  swift_endAccess();

  return v9;
}

id CHUISControlInstanceToggle.init(control:contentType:)(void *a1, uint64_t a2)
{
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithControl:a1 contentType:a2];

  return v3;
}

{
  v4 = [objc_allocWithZone(MEMORY[0x1E6994270]) initWithControl:a1 contentType:a2 hostIdentifier:0 configurationIdentifier:0];
  v5 = [v2 initWithInstanceIdentity_];

  return v5;
}

char *CHUISControlInstanceToggle.init(instanceIdentity:)(void *a1, uint64_t a2)
{
  BSDispatchQueueAssertMain();
  v19.receiver = v2;
  v19.super_class = CHUISControlInstanceToggle;
  v4 = objc_msgSendSuper2(&v19, sel_initWithInstanceIdentity_, a1);
  v5 = qword_1EDE3C588;
  v6 = v4;
  v7 = a1;
  if (v5 != -1)
  {
    swift_once();
  }

  sub_1D929CF00(&qword_1EDE400D0, v18);
  type metadata accessor for ControlInstanceToggle(0);
  swift_allocObject();
  sub_1D929CF00(v18, v15);
  v8 = sub_1D92E23F8(v7, v15);

  __swift_destroy_boxed_opaque_existential_1Tm(v18);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCB80, qword_1D932E408);
  swift_allocObject();
  v10 = sub_1D92DF9D0(v8);
  swift_unknownObjectWeakAssign();
  v18[3] = v9;
  v18[4] = &off_1F54C1D40;
  v18[0] = v10;
  v11 = OBJC_IVAR___CHUISControlInstance__adapter;
  swift_beginAccess();
  sub_1D929CF00(&v6[v11], v15);
  v12 = v16;
  v13 = v17;
  __swift_project_boxed_opaque_existential_1(v15, v16);
  (*(v13 + 120))(v12, v13);

  __swift_destroy_boxed_opaque_existential_1Tm(v15);
  swift_beginAccess();
  __swift_assign_boxed_opaque_existential_1(&v6[v11], v18);
  swift_endAccess();

  __swift_destroy_boxed_opaque_existential_1Tm(v18);
  return v6;
}

id CHUISControlInstanceToggle.init(widget:)(void *a1, uint64_t a2)
{
  v3 = sub_1D92E79C8(a1, a2);

  return v3;
}

id sub_1D92E79C8(void *a1, uint64_t a2)
{
  BSDispatchQueueAssertMain();
  v4 = [a1 extensionIdentity];
  v5 = [a1 kind];
  if (!v5)
  {
    sub_1D9327F84();
    v5 = sub_1D9327F74();
  }

  v6 = [a1 intentReference];
  v7 = [objc_allocWithZone(MEMORY[0x1E6994260]) initWithExtensionIdentity:v4 kind:v5 intentReference:v6];

  v8 = [v2 initWithControl_];
  return v8;
}

unint64_t sub_1D92E7AC4()
{
  result = qword_1ECAFCB88;
  if (!qword_1ECAFCB88)
  {
    type metadata accessor for ControlInstanceToggle.ViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAFCB88);
  }

  return result;
}

uint64_t sub_1D92E7B44(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCA50, &unk_1D932DF60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ControlInstance.__allocating_init(instanceIdentity:)(uint64_t a1)
{
  if (qword_1EDE3C588 != -1)
  {
    swift_once();
  }

  sub_1D929CF00(&qword_1EDE400D0, v4);
  return (*(v1 + 592))(a1, v4);
}

uint64_t sub_1D92E7C84()
{
  result = sub_1D9327384();
  qword_1EDE400F8 = result;
  return result;
}

uint64_t sub_1D92E7CA4()
{
  result = sub_1D9327444();
  qword_1ECAFF0D0 = result;
  return result;
}

uint64_t ControlInstance.viewModelUpdates.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 96);
  v4 = sub_1D9328174();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1D92E7D78@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 104);
  swift_beginAccess();
  sub_1D9328134();
  v4 = sub_1D9328374();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_1D92E7E30(uint64_t a1)
{
  v3 = *(*v1 + 104);
  swift_beginAccess();
  sub_1D9328134();
  v4 = sub_1D9328374();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t sub_1D92E7EF0(NSObject *a1)
{
  v100 = a1;
  v78 = *v1;
  v2 = v78;
  v3 = *(v78 + 80);
  v4 = sub_1D9328134();
  v91 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v77 = &v76 - v5;
  v92 = v6;
  v86 = sub_1D9328374();
  v84 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v85 = &v76 - v7;
  v89 = sub_1D93280F4();
  v90 = sub_1D9328374();
  v88 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90);
  v87 = &v76 - v8;
  v9 = sub_1D9326BE4();
  v95 = *(v9 - 8);
  v96 = v9;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v94 = &v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v3 - 8);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v83 = &v76 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v81 = &v76 - v15;
  v16 = sub_1D9328374();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v99 = &v76 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v80 = &v76 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v97 = &v76 - v22;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v82 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v25 = &v76 - v24;
  v26 = *(v2 + 112);
  swift_beginAccess();
  v27 = *(TupleTypeMetadata2 + 48);
  v101 = v26;
  v102 = v17;
  v28 = *(v17 + 16);
  v98 = v1;
  v28(v25, &v1[v26], v16);
  v28(&v25[v27], v100, v16);
  v100 = v12;
  v29 = v12 + 6;
  isa = v12[6].isa;
  v31 = v3;
  v32 = v3;
  v33 = v29;
  v34 = isa(v25, 1, v32);
  v93 = isa;
  if (v34 == 1)
  {
    if (isa(&v25[v27], 1, v31) == 1)
    {
      (*(v102 + 8))(v25, v16);
      v35 = v98;
      goto LABEL_17;
    }

    goto LABEL_6;
  }

  v28(v97, v25, v16);
  if (isa(&v25[v27], 1, v31) == 1)
  {
    (v100[1].isa)(v97, v31);
LABEL_6:
    (v82[1].isa)(v25, TupleTypeMetadata2);
    v35 = v98;
    goto LABEL_7;
  }

  v82 = v33;
  v57 = v16;
  v58 = v28;
  v59 = v100;
  v60 = v31;
  v61 = v81;
  (v100[4].isa)(v81, &v25[v27], v60);
  v62 = v97;
  LODWORD(v78) = sub_1D9327F64();
  v63 = v59[1].isa;
  v63(v61, v60);
  v31 = v60;
  v63(v62, v60);
  v28 = v58;
  v16 = v57;
  (*(v102 + 8))(v25, v57);
  isa = v93;
  v35 = v98;
  if ((v78 & 1) == 0)
  {
LABEL_7:
    v79 = v28;
    v37 = v94;
    v36 = v95;
    v38 = v96;
    (*(v95 + 16))(v94, &v35[*(*v35 + 176)], v96);

    v39 = sub_1D9326BC4();
    v40 = sub_1D9328234();

    LODWORD(v98) = v40;
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v97 = swift_slowAlloc();
      v103 = v97;
      *v41 = 136446466;
      v42 = &v35[*(*v35 + 184)];
      v43 = *v42;
      v44 = v42[1];

      v45 = sub_1D9293524(v43, v44, &v103);

      *(v41 + 4) = v45;
      *(v41 + 12) = 2082;
      v46 = v80;
      v47 = v16;
      v82 = v39;
      v48 = v93;
      v49 = v16;
      v50 = v79;
      v79(v80, &v35[v101], v47);
      v51 = v48(v46, 1, v31);
      (*(v102 + 8))(v46, v49);
      if (v51 == 1)
      {
        v52 = 7104878;
      }

      else
      {
        v52 = 0x6C696E20746F6ELL;
      }

      if (v51 == 1)
      {
        v53 = 0xE300000000000000;
      }

      else
      {
        v53 = 0xE700000000000000;
      }

      v54 = sub_1D9293524(v52, v53, &v103);
      v28 = v50;
      v16 = v49;
      isa = v48;

      *(v41 + 14) = v54;
      v55 = v82;
      _os_log_impl(&dword_1D928E000, v82, v98, "[%{public}s] View model changed. new value is %{public}s", v41, 0x16u);
      v56 = v97;
      swift_arrayDestroy();
      MEMORY[0x1DA72F920](v56, -1, -1);
      MEMORY[0x1DA72F920](v41, -1, -1);

      (*(v95 + 8))(v94, v96);
    }

    else
    {

      (*(v36 + 8))(v37, v38);
      v28 = v79;
      isa = v93;
    }
  }

LABEL_17:
  v64 = v99;
  v28(v99, &v35[v101], v16);
  if (isa(v64, 1, v31) == 1)
  {
    return (*(v102 + 8))(v64, v16);
  }

  v66 = v100;
  v67 = v83;
  (v100[4].isa)(v83, v64, v31);
  v68 = v85;
  sub_1D92E7D78(v85);
  v70 = v91;
  v69 = v92;
  v71 = (*(v91 + 48))(v68, 1, v92);
  v72 = (v84 + 8);
  if (v71)
  {
    (v66[1].isa)(v67, v31);
    (*v72)(v68, v86);
    v73 = 1;
    v74 = v87;
  }

  else
  {
    v75 = v77;
    (*(v70 + 16))(v77, v68, v69);
    (*v72)(v68, v86);
    (v66[2].isa)(v81, v67, v31);
    v74 = v87;
    sub_1D9328114();
    (*(v70 + 8))(v75, v69);
    (v66[1].isa)(v67, v31);
    v73 = 0;
  }

  (*(*(v89 - 8) + 56))(v74, v73, 1);
  return (*(v88 + 8))(v74, v90);
}

uint64_t sub_1D92E8A38@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 112);
  swift_beginAccess();
  v4 = sub_1D9328374();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

id sub_1D92E8B00()
{
  v1 = [*(v0 + *(*v0 + 120)) control];

  return v1;
}

uint64_t ControlInstance.descriptorUpdates.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 128);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCA60, &unk_1D932DF90);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1D92E8C00@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 136);
  swift_beginAccess();
  return sub_1D92973DC(v1 + v3, a1, &qword_1ECAFCA68, &qword_1D932FE90);
}

uint64_t sub_1D92E8C74(uint64_t a1)
{
  v3 = *(*v1 + 136);
  swift_beginAccess();
  sub_1D92C3C20(a1, v1 + v3, &qword_1ECAFCA68, &qword_1D932FE90);
  return swift_endAccess();
}

void *sub_1D92E8CF0()
{
  v1 = *(v0 + *(*v0 + 168));
  if (v1)
  {
    swift_beginAccess();
    v1 = v1[4];
    v2 = v1;
  }

  return v1;
}

void sub_1D92E8D50(void *a1)
{
  v2 = *(v1 + *(*v1 + 168));
  if (v2)
  {
    swift_beginAccess();
    v3 = *(v2 + 32);
    *(v2 + 32) = a1;
    v4 = a1;

    sub_1D92D34F0(v3, v5);
  }

  else
  {
  }
}

void (*sub_1D92E8E08(void *a1))(void **a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_1D92E8CF0();
  return sub_1D92E8E50;
}

void sub_1D92E8E50(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2;
    sub_1D92E8D50(v2);
  }

  else
  {
    sub_1D92E8D50(*a1);
  }
}

uint64_t sub_1D92E8EB8(char *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = *(a1 + 1);
  v4 = a1[16];
  v6 = *(a1 + 3);
  v5 = *(a1 + 4);
  v8[0] = v1;
  v8[1] = v2;
  v9 = v3;
  v10 = v4;
  v11 = v6;
  v12 = v5;

  return sub_1D92E9250(v8);
}

uint64_t sub_1D92E8F14()
{
  v1 = *(v0 + *(*v0 + 168));
  if (v1)
  {
    v2 = (v0 + *(*v0 + 144));
    swift_beginAccess();
    v15 = v2[1];
    v16 = *v2;
    v14 = *(v2 + 1);
    v13 = v2[16];
    v4 = *(v2 + 3);
    v3 = *(v2 + 4);
    v5 = v1 + OBJC_IVAR____TtC16ChronoUIServices14ControlSession_configuration;
    swift_beginAccess();
    v6 = *v5;
    v7 = *(v5 + 1);
    v8 = *(v5 + 8);
    v9 = *(v5 + 16);
    v11 = *(v5 + 24);
    v10 = *(v5 + 32);
    *v5 = v16;
    *(v5 + 1) = v15;
    *(v5 + 8) = v14;
    *(v5 + 16) = v13;
    *(v5 + 24) = v4;
    *(v5 + 32) = v3;

    v17[0] = v6;
    v17[1] = v7;
    v18 = v8;
    v19 = v9;
    v20 = v11;
    v21 = v10;
    sub_1D92D422C(v17);
  }

  return result;
}

uint64_t sub_1D92E9074@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(*v1 + 144);
  swift_beginAccess();
  v4 = *(v3 + 1);
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v8 = *(v3 + 24);
  v7 = *(v3 + 32);
  *a1 = *v3;
  *(a1 + 1) = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v8;
  *(a1 + 32) = v7;
}

uint64_t sub_1D92E90F4(uint64_t a1)
{
  v3 = (v1 + *(*v1 + 144));
  swift_beginAccess();
  v4 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 1) = v4;
  *(v3 + 4) = *(a1 + 32);

  v6 = *(v1 + *(*v1 + 168));
  if (v6)
  {
    v18 = v3[1];
    v19 = *v3;
    v17 = *(v3 + 1);
    v16 = v3[16];
    v8 = *(v3 + 3);
    v7 = *(v3 + 4);
    v9 = v6 + OBJC_IVAR____TtC16ChronoUIServices14ControlSession_configuration;
    swift_beginAccess();
    v10 = *v9;
    v11 = *(v9 + 1);
    v12 = *(v9 + 8);
    v13 = *(v9 + 16);
    v15 = *(v9 + 24);
    v14 = *(v9 + 32);
    *v9 = v19;
    *(v9 + 1) = v18;
    *(v9 + 8) = v17;
    *(v9 + 16) = v16;
    *(v9 + 24) = v8;
    *(v9 + 32) = v7;

    v20[0] = v10;
    v20[1] = v11;
    v21 = v12;
    v22 = v13;
    v23 = v15;
    v24 = v14;
    sub_1D92D422C(v20);
  }

  return result;
}

uint64_t sub_1D92E9250(char *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 1);
  v5 = a1[16];
  v6 = *(a1 + 3);
  v7 = *(a1 + 4);
  v8 = v1 + *(*v1 + 144);
  swift_beginAccess();
  *v8 = v2;
  *(v8 + 1) = v3;
  *(v8 + 8) = v4;
  *(v8 + 16) = v5;
  *(v8 + 24) = v6;
  *(v8 + 32) = v7;

  return sub_1D92E8F14();
}

uint64_t (*sub_1D92E92EC(uint64_t *a1))()
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
  *(v3 + 24) = v1;
  *(v3 + 32) = *(*v1 + 144);
  swift_beginAccess();
  return sub_1D92F0604;
}

uint64_t (*sub_1D92E9384(uint64_t *a1))()
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
  *(v3 + 24) = v1;
  *(v3 + 32) = *(*v1 + 144);
  swift_beginAccess();
  return sub_1D92E941C;
}

uint64_t (*sub_1D92E9420(uint64_t *a1))()
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
  *(v3 + 24) = v1;
  *(v3 + 32) = *(*v1 + 144);
  swift_beginAccess();
  return sub_1D92F0604;
}

void sub_1D92E94B8(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    v5 = *(v4 + *(*v4 + 168));
    if (v5)
    {
      v6 = (v4 + v3[4]);
      v18 = v6[1];
      v19 = *v6;
      v17 = *(v6 + 1);
      v16 = v6[16];
      v7 = *(v6 + 4);
      v15 = *(v6 + 3);
      v8 = v5 + OBJC_IVAR____TtC16ChronoUIServices14ControlSession_configuration;
      swift_beginAccess();
      v9 = *v8;
      v10 = *(v8 + 1);
      v11 = *(v8 + 8);
      v12 = *(v8 + 16);
      v14 = *(v8 + 24);
      v13 = *(v8 + 32);
      *v8 = v19;
      *(v8 + 1) = v18;
      *(v8 + 8) = v17;
      *(v8 + 16) = v16;
      *(v8 + 24) = v15;
      *(v8 + 32) = v7;

      v20[0] = v9;
      v20[1] = v10;
      v21 = v11;
      v22 = v12;
      v23 = v14;
      v24 = v13;
      sub_1D92D422C(v20);
    }
  }

  free(v3);
}

uint64_t (*sub_1D92E9608(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1D92E9678;
}

uint64_t sub_1D92E9748(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v34 = a3;
  v35 = a2;
  v8 = v5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC540, &qword_1D932E450);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v30 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC528, &qword_1D932CEF0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v30 - v17;
  if (a1)
  {
    sub_1D92D79B0(v15, v16);
  }

  v19 = *v8;
  v20 = *(*v8 + 216);
  if (*(v8 + v20))
  {

    sub_1D9326C14();

    v19 = *v8;
  }

  v21 = *(v8 + *(v19 + 168));
  if (v21)
  {

    v22 = sub_1D92993CC();
    v30 = v22;

    v37 = v22;
    sub_1D92DBC3C();
    v32 = a4;
    v23 = sub_1D93282A4();
    v33 = a5;
    v24 = v23;
    v36 = v23;
    v25 = sub_1D9328284();
    (*(*(v25 - 8) + 56))(v12, 1, 1, v25);
    v31 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC558, &qword_1D932CF20);
    sub_1D9290D60(&qword_1EDE3BF20, &qword_1ECAFC558, &qword_1D932CF20, MEMORY[0x1E695BED8]);
    sub_1D92F0504(&qword_1EDE3BC18, sub_1D92DBC3C, MEMORY[0x1E69E8028]);
    sub_1D9326C74();
    sub_1D92933A0(v12, &qword_1ECAFC540, &qword_1D932E450);

    v26 = swift_allocObject();
    swift_weakInit();
    v27 = swift_allocObject();
    *(v27 + 16) = v32;
    *(v27 + 24) = v26;
    sub_1D9290D60(&qword_1EDE3BF40, &qword_1ECAFC528, &qword_1D932CEF0, MEMORY[0x1E695BE98]);
    v28 = v31;
    v21 = sub_1D9326C94();

    (*(v14 + 8))(v18, v28);
  }

  *(v8 + v20) = v21;
}

uint64_t sub_1D92E9B0C(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC540, &qword_1D932E450);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v25 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC528, &qword_1D932CEF0);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v25 - v13;
  if (a1)
  {
    sub_1D92D79B0(v11, v12);
    v4 = *v2;
  }

  if (*(v2 + *(v4 + 216)))
  {

    sub_1D9326C14();

    v4 = *v2;
  }

  if (*(v2 + *(v4 + 168)))
  {

    v15 = sub_1D92993CC();

    v28 = v15;
    sub_1D92DBC3C();
    v25 = v5;
    v16 = sub_1D93282A4();
    v27 = v16;
    v17 = sub_1D9328284();
    (*(*(v17 - 8) + 56))(v8, 1, 1, v17);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC558, &qword_1D932CF20);
    v26 = v9;
    sub_1D9290D60(&qword_1EDE3BF20, &qword_1ECAFC558, &qword_1D932CF20, MEMORY[0x1E695BED8]);
    sub_1D92F0504(&qword_1EDE3BC18, sub_1D92DBC3C, MEMORY[0x1E69E8028]);
    sub_1D9326C74();
    sub_1D92933A0(v8, &qword_1ECAFC540, &qword_1D932E450);

    v18 = swift_allocObject();
    swift_weakInit();
    v19 = swift_allocObject();
    v20 = v25;
    v19[2] = *(v25 + 80);
    v19[3] = *(v20 + 88);
    v19[4] = v18;
    v21 = swift_allocObject();
    *(v21 + 16) = sub_1D92F054C;
    *(v21 + 24) = v19;
    sub_1D9290D60(&qword_1EDE3BF40, &qword_1ECAFC528, &qword_1D932CEF0, MEMORY[0x1E695BE98]);
    v22 = v26;
    v23 = sub_1D9326C94();

    (*(v10 + 8))(v14, v22);
    v4 = *v2;
  }

  else
  {
    v23 = 0;
  }

  *(v2 + *(v4 + 216)) = v23;
}

uint64_t sub_1D92E9F28(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCA78, &qword_1D932E600);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v28 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCA68, &qword_1D932FE90);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v28 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCBB0, &qword_1D932E7A8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v28 - v9;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v12 = result;
    BSDispatchQueueAssertMain();
    v13 = *v12;
    v14 = swift_conformsToProtocol2();
    if (v14)
    {
      v15 = v14;
      ObjectType = swift_getObjectType();
      v29 = v10;
      v17 = v1;
      v18 = v4;
      v19 = v2;
      v20 = ObjectType;
      v21 = *(v15 + 16);

      v22 = v20;
      v2 = v19;
      v4 = v18;
      v1 = v17;
      v10 = v29;
      v21(v22, v15);

      v13 = *v12;
    }

    v23 = *(v13 + 136);
    swift_beginAccess();
    sub_1D92973DC(v12 + v23, v7, &qword_1ECAFCA68, &qword_1D932FE90);
    if ((*(v2 + 48))(v7, 1, v1))
    {

      sub_1D92933A0(v7, &qword_1ECAFCA68, &qword_1D932FE90);
      v24 = 1;
    }

    else
    {
      (*(v2 + 16))(v4, v7, v1);
      sub_1D92933A0(v7, &qword_1ECAFCA68, &qword_1D932FE90);
      v25 = *(v12 + *(*v12 + 168));
      if (v25)
      {
        swift_beginAccess();
        v25 = v25[4];
        v26 = v25;
      }

      v30 = v25;
      sub_1D9328114();

      (*(v2 + 8))(v4, v1);
      v24 = 0;
    }

    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCBB8, &unk_1D932E7B0);
    (*(*(v27 - 8) + 56))(v10, v24, 1, v27);
    return sub_1D92933A0(v10, &qword_1ECAFCBB0, &qword_1D932E7A8);
  }

  return result;
}

uint64_t sub_1D92EA2FC(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCA78, &qword_1D932E600);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v18 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCA68, &qword_1D932FE90);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v18 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCBB0, &qword_1D932E7A8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v18 - v9;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v13 = result;
    sub_1D92EDD00(result, v12);
    sub_1D92E8C00(v7);
    if ((*(v2 + 48))(v7, 1, v1))
    {

      sub_1D92933A0(v7, &qword_1ECAFCA68, &qword_1D932FE90);
      v14 = 1;
    }

    else
    {
      (*(v2 + 16))(v4, v7, v1);
      sub_1D92933A0(v7, &qword_1ECAFCA68, &qword_1D932FE90);
      v15 = *(v13 + *(*v13 + 168));
      if (v15)
      {
        swift_beginAccess();
        v15 = v15[4];
        v16 = v15;
      }

      v18 = v15;
      sub_1D9328114();

      (*(v2 + 8))(v4, v1);
      v14 = 0;
    }

    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCBB8, &unk_1D932E7B0);
    (*(*(v17 - 8) + 56))(v10, v14, 1, v17);
    return sub_1D92933A0(v10, &qword_1ECAFCBB0, &qword_1D932E7A8);
  }

  return result;
}

uint64_t sub_1D92EA5E4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 176);
  v4 = sub_1D9326BE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ControlInstance.__allocating_init(control:contentType:)(void *a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(MEMORY[0x1E6994270]) initWithControl:a1 contentType:a2 hostIdentifier:0 configurationIdentifier:0];
  if (qword_1EDE3C588 != -1)
  {
    swift_once();
  }

  sub_1D929CF00(&qword_1EDE400D0, v7);
  v5 = (*(v2 + 592))(v4, v7);

  return v5;
}

uint64_t *ControlInstance.__allocating_init(instanceIdentity:client:)(void *a1, void *a2)
{
  swift_allocObject();
  v4 = sub_1D92EE728(a1, a2);

  return v4;
}

uint64_t *ControlInstance.init(instanceIdentity:client:)(void *a1, void *a2)
{
  v3 = sub_1D92EE728(a1, a2);

  return v3;
}

void ControlInstance.deinit()
{
  v1 = *v0;
  if ((*(v0 + *(*v0 + 160)) & 1) != 0 || *(v0 + *(v1 + 208)) == 1)
  {
    v2 = *(v1 + 96);
    v3 = sub_1D9328174();
    (*(*(v3 - 8) + 8))(v0 + v2, v3);
    v4 = *(*v0 + 104);
    sub_1D9328134();
    v5 = sub_1D9328374();
    (*(*(v5 - 8) + 8))(v0 + v4, v5);
    v6 = *(*v0 + 112);
    v7 = sub_1D9328374();
    (*(*(v7 - 8) + 8))(v0 + v6, v7);

    v8 = *(*v0 + 128);
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCA60, &unk_1D932DF90);
    (*(*(v9 - 8) + 8))(v0 + v8, v9);
    sub_1D92933A0(v0 + *(*v0 + 136), &qword_1ECAFCA68, &qword_1D932FE90);

    v10 = *(*v0 + 176);
    v11 = sub_1D9326BE4();
    (*(*(v11 - 8) + 8))(v0 + v10, v11);

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + *(*v0 + 192)));
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + *(*v0 + 200)));
  }

  else
  {
    __break(1u);
  }
}

uint64_t ControlInstance.__deallocating_deinit()
{
  ControlInstance.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1D92EABB4(uint64_t a1, uint64_t a2)
{
  result = BSDispatchQueueAssertMain();
  v4 = *(v2 + *(*v2 + 168));
  if (v4)
  {
    v5 = *(*v2 + 232);
    swift_beginAccess();
    v6 = *(v2 + v5);
    v7 = OBJC_IVAR____TtC16ChronoUIServices14ControlSession_visibility;
    swift_beginAccess();
    v8 = *(v4 + v7);
    *(v4 + v7) = v6;

    sub_1D92D490C(v8);
  }

  return result;
}

uint64_t sub_1D92EAC8C()
{
  v1 = *(*v0 + 232);
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1D92EACDC(uint64_t a1)
{
  v3 = *(*v1 + 232);
  swift_beginAccess();
  *(v1 + v3) = a1;
  result = BSDispatchQueueAssertMain();
  v5 = *(v1 + *(*v1 + 168));
  if (v5)
  {
    v6 = *(v1 + v3);
    v7 = OBJC_IVAR____TtC16ChronoUIServices14ControlSession_visibility;
    swift_beginAccess();
    v8 = *(v5 + v7);
    *(v5 + v7) = v6;

    sub_1D92D490C(v8);
  }

  return result;
}

uint64_t sub_1D92EADA0(uint64_t a1)
{
  v3 = *(*v1 + 232);
  v4 = swift_beginAccess();
  *(v1 + v3) = a1;
  return sub_1D92EABB4(v4, v5);
}

uint64_t (*sub_1D92EAE00(uint64_t *a1))()
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
  *(v3 + 24) = v1;
  *(v3 + 32) = *(*v1 + 232);
  swift_beginAccess();
  return sub_1D92F0608;
}

uint64_t (*sub_1D92EAE98(uint64_t *a1))()
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
  *(v3 + 24) = v1;
  *(v3 + 32) = *(*v1 + 232);
  swift_beginAccess();
  return sub_1D92EAF30;
}

uint64_t (*sub_1D92EAF34(uint64_t *a1))()
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
  *(v3 + 24) = v1;
  *(v3 + 32) = *(*v1 + 232);
  swift_beginAccess();
  return sub_1D92F0608;
}

void sub_1D92EAFCC(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    BSDispatchQueueAssertMain();
    v5 = *(v4 + *(*v4 + 168));
    if (v5)
    {
      v6 = *(v3[3] + v3[4]);
      v7 = OBJC_IVAR____TtC16ChronoUIServices14ControlSession_visibility;
      swift_beginAccess();
      v8 = *(v5 + v7);
      *(v5 + v7) = v6;

      sub_1D92D490C(v8);
    }
  }

  free(v3);
}

uint64_t (*sub_1D92EB08C(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1D92EB0FC;
}

uint64_t sub_1D92EB114(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return a3(result);
  }

  return result;
}

uint64_t sub_1D92EB158(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC540, &qword_1D932E450);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v32 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC528, &qword_1D932CEF0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v32 - v14;
  result = BSDispatchQueueAssertMain();
  v17 = *v4;
  if ((*(v4 + *(*v4 + 208)) & 1) == 0)
  {
    v18 = *(v4 + *(v17 + 168));
    if (v18)
    {
      if ((*(v18 + OBJC_IVAR____TtC16ChronoUIServices14ControlSession__started) & 1) == 0)
      {
        v38 = a4;
        v19 = *(v17 + 232);
        swift_beginAccess();
        v37 = a3;
        v20 = *(v4 + v19);
        v36 = a2;
        v21 = OBJC_IVAR____TtC16ChronoUIServices14ControlSession_visibility;
        swift_beginAccess();
        v22 = *(v18 + v21);
        *(v18 + v21) = v20;

        v35 = a1;
        sub_1D92D490C(v22);
        sub_1D92D594C();
        v24 = v23;
        *(v4 + *(*v4 + 152)) = v23;

        v39 = v24;
        v34 = sub_1D92993CC();
        v40 = v34;
        sub_1D92DBC3C();
        v33 = sub_1D93282A4();
        v41 = v33;
        v25 = sub_1D9328284();
        (*(*(v25 - 8) + 56))(v11, 1, 1, v25);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC558, &qword_1D932CF20);
        sub_1D9290D60(&qword_1EDE3BF20, &qword_1ECAFC558, &qword_1D932CF20, MEMORY[0x1E695BED8]);
        sub_1D92F0504(&qword_1EDE3BC18, sub_1D92DBC3C, MEMORY[0x1E69E8028]);
        sub_1D9326C74();
        sub_1D92933A0(v11, &qword_1ECAFC540, &qword_1D932E450);

        v26 = swift_allocObject();
        swift_weakInit();
        v27 = swift_allocObject();
        *(v27 + 16) = v37;
        *(v27 + 24) = v26;
        sub_1D9290D60(&qword_1EDE3BF40, &qword_1ECAFC528, &qword_1D932CEF0, MEMORY[0x1E695BE98]);
        sub_1D9326C94();

        (*(v13 + 8))(v15, v12);
        swift_beginAccess();
        sub_1D9326C04();
        swift_endAccess();

        sub_1D92D5CC0();
        BSDispatchQueueAssertMain();
        v28 = swift_conformsToProtocol2();
        if (v28)
        {
          v29 = v28;
          ObjectType = swift_getObjectType();
          v31 = *(v29 + 16);

          v31(ObjectType, v29);
        }
      }
    }
  }

  return result;
}

uint64_t sub_1D92EB640()
{
  v1 = *v0;
  sub_1D9326BE4();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC540, &qword_1D932E450);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v24 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC528, &qword_1D932CEF0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v24 - v7;
  result = BSDispatchQueueAssertMain();
  v10 = *v0;
  if ((*(v0 + *(*v0 + 208)) & 1) == 0)
  {
    v11 = *(v0 + *(v10 + 168));
    if (v11)
    {
      if ((*(v11 + OBJC_IVAR____TtC16ChronoUIServices14ControlSession__started) & 1) == 0)
      {
        v27 = v6;
        v12 = *(v10 + 232);
        swift_beginAccess();
        v13 = *(v0 + v12);
        v14 = OBJC_IVAR____TtC16ChronoUIServices14ControlSession_visibility;
        swift_beginAccess();
        v15 = *(v11 + v14);
        *(v11 + v14) = v13;

        sub_1D92D490C(v15);
        sub_1D92D594C();
        v17 = v16;
        *(v0 + *(*v0 + 152)) = v16;

        v28 = v17;
        v26 = sub_1D92993CC();
        v29 = v26;
        sub_1D92DBC3C();
        v25 = sub_1D93282A4();
        v30 = v25;
        v18 = sub_1D9328284();
        (*(*(v18 - 8) + 56))(v4, 1, 1, v18);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC558, &qword_1D932CF20);
        sub_1D9290D60(&qword_1EDE3BF20, &qword_1ECAFC558, &qword_1D932CF20, MEMORY[0x1E695BED8]);
        sub_1D92F0504(&qword_1EDE3BC18, sub_1D92DBC3C, MEMORY[0x1E69E8028]);
        sub_1D9326C74();
        sub_1D92933A0(v4, &qword_1ECAFC540, &qword_1D932E450);

        v19 = swift_allocObject();
        swift_weakInit();
        v20 = swift_allocObject();
        v20[2] = *(v1 + 80);
        v20[3] = *(v1 + 88);
        v20[4] = v19;
        v21 = swift_allocObject();
        *(v21 + 16) = sub_1D92EF828;
        *(v21 + 24) = v20;
        sub_1D9290D60(&qword_1EDE3BF40, &qword_1ECAFC528, &qword_1D932CEF0, MEMORY[0x1E695BE98]);
        sub_1D9326C94();

        (*(v27 + 8))(v8, v5);
        swift_beginAccess();
        sub_1D9326C04();
        swift_endAccess();

        v22 = sub_1D92D5CC0();
        sub_1D92EDD00(v22, v23);
      }
    }
  }

  return result;
}

uint64_t sub_1D92EBB1C(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    BSDispatchQueueAssertMain();
    v2 = swift_conformsToProtocol2();
    if (v2)
    {
      v3 = v2;
      ObjectType = swift_getObjectType();
      (*(v3 + 16))(ObjectType, v3);
    }
  }

  return result;
}

uint64_t sub_1D92EBBDC(uint64_t a1)
{
  sub_1D9326BE4();
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1D92EDD00(result, v2);
  }

  return result;
}

void sub_1D92EBC44()
{
  v1[0] = MEMORY[0x1E69E9820];
  v1[1] = 1107296256;
  v1[2] = sub_1D9290DB0;
  v1[3] = &block_descriptor_2;
  v0 = _Block_copy(v1);

  BSDispatchMain();
  _Block_release(v0);
}

void *sub_1D92EBCF8(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCAD8, &qword_1D932E038);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v61 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCAC8, &unk_1D932E7D0);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v61 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCA78, &qword_1D932E600);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v61 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCA68, &qword_1D932FE90);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  result = MEMORY[0x1EEE9AC00](v17);
  v21 = &v61 - v20;
  v22 = *(*a1 + 208);
  if ((*(a1 + v22) & 1) == 0)
  {
    v63 = v5;
    v72 = v9;
    *(a1 + v22) = 1;
    v23 = *(*a1 + 216);
    v24 = *(a1 + v23);
    v64 = v19;
    v62 = v15;
    if (v24)
    {

      sub_1D9326C14();
    }

    v69 = v21;
    v71 = v12;
    v66 = v3;
    v67 = v2;
    *(a1 + v23) = 0;

    v25 = *(*a1 + 224);
    swift_beginAccess();
    v26 = *(a1 + v25);
    v65 = v11;
    v70 = v13;
    if ((v26 & 0xC000000000000001) != 0)
    {

      swift_unknownObjectRetain();
      sub_1D93283E4();
      sub_1D9326C24();
      sub_1D92F0504(&qword_1ECAFC520, MEMORY[0x1E695BF10], MEMORY[0x1E695BF18]);
      result = sub_1D93281E4();
      v27 = v75;
      v28 = v76;
      v29 = v77;
      v30 = v78;
      v31 = v79;
    }

    else
    {
      v32 = -1 << *(v26 + 32);
      v28 = v26 + 56;
      v29 = ~v32;
      v33 = -v32;
      if (v33 < 64)
      {
        v34 = ~(-1 << v33);
      }

      else
      {
        v34 = -1;
      }

      v31 = v34 & *(v26 + 56);
      result = swift_bridgeObjectRetain_n();
      v30 = 0;
      v27 = v26;
    }

    v68 = v29;
    v35 = (v29 + 64) >> 6;
    if (v27 < 0)
    {
      goto LABEL_17;
    }

    while (1)
    {
      v36 = v30;
      v37 = v31;
      v38 = v30;
      if (!v31)
      {
        break;
      }

LABEL_15:
      v39 = (v37 - 1) & v37;
      v40 = *(*(v27 + 48) + ((v38 << 9) | (8 * __clz(__rbit64(v37)))));

      if (!v40)
      {
LABEL_21:
        sub_1D92C9738(v27);

        v42 = *(*a1 + 136);
        swift_beginAccess();
        v43 = v69;
        sub_1D92973DC(a1 + v42, v69, &qword_1ECAFCA68, &qword_1D932FE90);
        v45 = v70;
        v44 = v71;
        if ((*(v70 + 48))(v43, 1, v71))
        {
          sub_1D92933A0(v43, &qword_1ECAFCA68, &qword_1D932FE90);
        }

        else
        {
          v46 = v62;
          (*(v45 + 16))(v62, v43, v44);
          sub_1D92933A0(v43, &qword_1ECAFCA68, &qword_1D932FE90);
          sub_1D9328124();
          (*(v45 + 8))(v46, v44);
        }

        v47 = v67;
        v48 = v66;
        v49 = v65;
        v50 = v64;
        (*(v45 + 56))(v64, 1, 1, v44);
        swift_beginAccess();
        sub_1D92C3C20(v50, a1 + v42, &qword_1ECAFCA68, &qword_1D932FE90);
        swift_endAccess();
        v51 = *(*a1 + 104);
        swift_beginAccess();
        sub_1D92973DC(a1 + v51, v49, &qword_1ECAFCAC8, &unk_1D932E7D0);
        if ((*(v48 + 48))(v49, 1, v47))
        {
          sub_1D92933A0(v49, &qword_1ECAFCAC8, &unk_1D932E7D0);
        }

        else
        {
          v52 = v63;
          (*(v48 + 16))(v63, v49, v47);
          sub_1D92933A0(v49, &qword_1ECAFCAC8, &unk_1D932E7D0);
          sub_1D9328124();
          (*(v48 + 8))(v52, v47);
        }

        v53 = v72;
        (*(v48 + 56))(v72, 1, 1, v47);
        swift_beginAccess();
        sub_1D92C3C20(v53, a1 + v51, &qword_1ECAFCAC8, &unk_1D932E7D0);
        swift_endAccess();
        v54 = *a1;
        if (*(a1 + *(*a1 + 152)))
        {

          sub_1D92C7A24(v55, v56);

          v54 = *a1;
        }

        v57 = *(v54 + 168);
        if (*(a1 + v57))
        {

          sub_1D92D79B0(v58, v59);

          v60 = *(a1 + v57);
        }

        else
        {
          v60 = 0;
        }

        *(a1 + v57) = 0;
        sub_1D92E9748(v60, &unk_1F54C14C0, &unk_1F54C14E8, sub_1D92F0560, sub_1D92CA824);
      }

      while (1)
      {
        sub_1D9326C14();

        v30 = v38;
        v31 = v39;
        if ((v27 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_17:
        v41 = sub_1D93283F4();
        if (v41)
        {
          v73 = v41;
          sub_1D9326C24();
          swift_dynamicCast();
          v38 = v30;
          v39 = v31;
          if (v74)
          {
            continue;
          }
        }

        goto LABEL_21;
      }
    }

    while (1)
    {
      v38 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        break;
      }

      if (v38 >= v35)
      {
        goto LABEL_21;
      }

      v37 = *(v28 + 8 * v38);
      ++v36;
      if (v37)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  return result;
}

void *sub_1D92EC534(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCAB8, &unk_1D932E000);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v61 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCAA8, &qword_1D932DFF0);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v61 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCA78, &qword_1D932E600);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v61 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCA68, &qword_1D932FE90);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  result = MEMORY[0x1EEE9AC00](v17);
  v21 = &v61 - v20;
  v22 = *(*a1 + 208);
  if ((*(a1 + v22) & 1) == 0)
  {
    v63 = v5;
    v72 = v9;
    *(a1 + v22) = 1;
    v23 = *(*a1 + 216);
    v24 = *(a1 + v23);
    v64 = v19;
    v62 = v15;
    if (v24)
    {

      sub_1D9326C14();
    }

    v69 = v21;
    v71 = v12;
    v66 = v3;
    v67 = v2;
    *(a1 + v23) = 0;

    v25 = *(*a1 + 224);
    swift_beginAccess();
    v26 = *(a1 + v25);
    v65 = v11;
    v70 = v13;
    if ((v26 & 0xC000000000000001) != 0)
    {

      swift_unknownObjectRetain();
      sub_1D93283E4();
      sub_1D9326C24();
      sub_1D92F0504(&qword_1ECAFC520, MEMORY[0x1E695BF10], MEMORY[0x1E695BF18]);
      result = sub_1D93281E4();
      v27 = v75;
      v28 = v76;
      v29 = v77;
      v30 = v78;
      v31 = v79;
    }

    else
    {
      v32 = -1 << *(v26 + 32);
      v28 = v26 + 56;
      v29 = ~v32;
      v33 = -v32;
      if (v33 < 64)
      {
        v34 = ~(-1 << v33);
      }

      else
      {
        v34 = -1;
      }

      v31 = v34 & *(v26 + 56);
      result = swift_bridgeObjectRetain_n();
      v30 = 0;
      v27 = v26;
    }

    v68 = v29;
    v35 = (v29 + 64) >> 6;
    if (v27 < 0)
    {
      goto LABEL_17;
    }

    while (1)
    {
      v36 = v30;
      v37 = v31;
      v38 = v30;
      if (!v31)
      {
        break;
      }

LABEL_15:
      v39 = (v37 - 1) & v37;
      v40 = *(*(v27 + 48) + ((v38 << 9) | (8 * __clz(__rbit64(v37)))));

      if (!v40)
      {
LABEL_21:
        sub_1D92C9738(v27);

        v42 = *(*a1 + 136);
        swift_beginAccess();
        v43 = v69;
        sub_1D92973DC(a1 + v42, v69, &qword_1ECAFCA68, &qword_1D932FE90);
        v45 = v70;
        v44 = v71;
        if ((*(v70 + 48))(v43, 1, v71))
        {
          sub_1D92933A0(v43, &qword_1ECAFCA68, &qword_1D932FE90);
        }

        else
        {
          v46 = v62;
          (*(v45 + 16))(v62, v43, v44);
          sub_1D92933A0(v43, &qword_1ECAFCA68, &qword_1D932FE90);
          sub_1D9328124();
          (*(v45 + 8))(v46, v44);
        }

        v47 = v67;
        v48 = v66;
        v49 = v65;
        v50 = v64;
        (*(v45 + 56))(v64, 1, 1, v44);
        swift_beginAccess();
        sub_1D92C3C20(v50, a1 + v42, &qword_1ECAFCA68, &qword_1D932FE90);
        swift_endAccess();
        v51 = *(*a1 + 104);
        swift_beginAccess();
        sub_1D92973DC(a1 + v51, v49, &qword_1ECAFCAA8, &qword_1D932DFF0);
        if ((*(v48 + 48))(v49, 1, v47))
        {
          sub_1D92933A0(v49, &qword_1ECAFCAA8, &qword_1D932DFF0);
        }

        else
        {
          v52 = v63;
          (*(v48 + 16))(v63, v49, v47);
          sub_1D92933A0(v49, &qword_1ECAFCAA8, &qword_1D932DFF0);
          sub_1D9328124();
          (*(v48 + 8))(v52, v47);
        }

        v53 = v72;
        (*(v48 + 56))(v72, 1, 1, v47);
        swift_beginAccess();
        sub_1D92C3C20(v53, a1 + v51, &qword_1ECAFCAA8, &qword_1D932DFF0);
        swift_endAccess();
        v54 = *a1;
        if (*(a1 + *(*a1 + 152)))
        {

          sub_1D92C7A24(v55, v56);

          v54 = *a1;
        }

        v57 = *(v54 + 168);
        if (*(a1 + v57))
        {

          sub_1D92D79B0(v58, v59);

          v60 = *(a1 + v57);
        }

        else
        {
          v60 = 0;
        }

        *(a1 + v57) = 0;
        sub_1D92E9748(v60, &unk_1F54C1560, &unk_1F54C1588, sub_1D92F05EC, sub_1D92CA824);
      }

      while (1)
      {
        sub_1D9326C14();

        v30 = v38;
        v31 = v39;
        if ((v27 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_17:
        v41 = sub_1D93283F4();
        if (v41)
        {
          v73 = v41;
          sub_1D9326C24();
          swift_dynamicCast();
          v38 = v30;
          v39 = v31;
          if (v74)
          {
            continue;
          }
        }

        goto LABEL_21;
      }
    }

    while (1)
    {
      v38 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        break;
      }

      if (v38 >= v35)
      {
        goto LABEL_21;
      }

      v37 = *(v28 + 8 * v38);
      ++v36;
      if (v37)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  return result;
}

void *sub_1D92ECD70(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCA90, &unk_1D932DFC0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v61 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCA80, &qword_1D932DFB0);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v61 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCA78, &qword_1D932E600);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v61 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCA68, &qword_1D932FE90);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  result = MEMORY[0x1EEE9AC00](v17);
  v21 = &v61 - v20;
  v22 = *(*a1 + 208);
  if ((*(a1 + v22) & 1) == 0)
  {
    v63 = v5;
    v72 = v9;
    *(a1 + v22) = 1;
    v23 = *(*a1 + 216);
    v24 = *(a1 + v23);
    v64 = v19;
    v62 = v15;
    if (v24)
    {

      sub_1D9326C14();
    }

    v69 = v21;
    v71 = v12;
    v66 = v3;
    v67 = v2;
    *(a1 + v23) = 0;

    v25 = *(*a1 + 224);
    swift_beginAccess();
    v26 = *(a1 + v25);
    v65 = v11;
    v70 = v13;
    if ((v26 & 0xC000000000000001) != 0)
    {

      swift_unknownObjectRetain();
      sub_1D93283E4();
      sub_1D9326C24();
      sub_1D92F0504(&qword_1ECAFC520, MEMORY[0x1E695BF10], MEMORY[0x1E695BF18]);
      result = sub_1D93281E4();
      v27 = v75;
      v28 = v76;
      v29 = v77;
      v30 = v78;
      v31 = v79;
    }

    else
    {
      v32 = -1 << *(v26 + 32);
      v28 = v26 + 56;
      v29 = ~v32;
      v33 = -v32;
      if (v33 < 64)
      {
        v34 = ~(-1 << v33);
      }

      else
      {
        v34 = -1;
      }

      v31 = v34 & *(v26 + 56);
      result = swift_bridgeObjectRetain_n();
      v30 = 0;
      v27 = v26;
    }

    v68 = v29;
    v35 = (v29 + 64) >> 6;
    if (v27 < 0)
    {
      goto LABEL_17;
    }

    while (1)
    {
      v36 = v30;
      v37 = v31;
      v38 = v30;
      if (!v31)
      {
        break;
      }

LABEL_15:
      v39 = (v37 - 1) & v37;
      v40 = *(*(v27 + 48) + ((v38 << 9) | (8 * __clz(__rbit64(v37)))));

      if (!v40)
      {
LABEL_21:
        sub_1D92C9738(v27);

        v42 = *(*a1 + 136);
        swift_beginAccess();
        v43 = v69;
        sub_1D92973DC(a1 + v42, v69, &qword_1ECAFCA68, &qword_1D932FE90);
        v45 = v70;
        v44 = v71;
        if ((*(v70 + 48))(v43, 1, v71))
        {
          sub_1D92933A0(v43, &qword_1ECAFCA68, &qword_1D932FE90);
        }

        else
        {
          v46 = v62;
          (*(v45 + 16))(v62, v43, v44);
          sub_1D92933A0(v43, &qword_1ECAFCA68, &qword_1D932FE90);
          sub_1D9328124();
          (*(v45 + 8))(v46, v44);
        }

        v47 = v67;
        v48 = v66;
        v49 = v65;
        v50 = v64;
        (*(v45 + 56))(v64, 1, 1, v44);
        swift_beginAccess();
        sub_1D92C3C20(v50, a1 + v42, &qword_1ECAFCA68, &qword_1D932FE90);
        swift_endAccess();
        v51 = *(*a1 + 104);
        swift_beginAccess();
        sub_1D92973DC(a1 + v51, v49, &qword_1ECAFCA80, &qword_1D932DFB0);
        if ((*(v48 + 48))(v49, 1, v47))
        {
          sub_1D92933A0(v49, &qword_1ECAFCA80, &qword_1D932DFB0);
        }

        else
        {
          v52 = v63;
          (*(v48 + 16))(v63, v49, v47);
          sub_1D92933A0(v49, &qword_1ECAFCA80, &qword_1D932DFB0);
          sub_1D9328124();
          (*(v48 + 8))(v52, v47);
        }

        v53 = v72;
        (*(v48 + 56))(v72, 1, 1, v47);
        swift_beginAccess();
        sub_1D92C3C20(v53, a1 + v51, &qword_1ECAFCA80, &qword_1D932DFB0);
        swift_endAccess();
        v54 = *a1;
        if (*(a1 + *(*a1 + 152)))
        {

          sub_1D92C7A24(v55, v56);

          v54 = *a1;
        }

        v57 = *(v54 + 168);
        if (*(a1 + v57))
        {

          sub_1D92D79B0(v58, v59);

          v60 = *(a1 + v57);
        }

        else
        {
          v60 = 0;
        }

        *(a1 + v57) = 0;
        sub_1D92E9748(v60, &unk_1F54C13D0, &unk_1F54C13F8, sub_1D92F05EC, sub_1D92CA824);
      }

      while (1)
      {
        sub_1D9326C14();

        v30 = v38;
        v31 = v39;
        if ((v27 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_17:
        v41 = sub_1D93283F4();
        if (v41)
        {
          v73 = v41;
          sub_1D9326C24();
          swift_dynamicCast();
          v38 = v30;
          v39 = v31;
          if (v74)
          {
            continue;
          }
        }

        goto LABEL_21;
      }
    }

    while (1)
    {
      v38 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        break;
      }

      if (v38 >= v35)
      {
        goto LABEL_21;
      }

      v37 = *(v28 + 8 * v38);
      ++v36;
      if (v37)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  return result;
}

void *sub_1D92ED5AC(uint64_t *a1)
{
  v2 = *a1;
  v3 = sub_1D9328134();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v58 - v5;
  v7 = sub_1D9328374();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v58 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCA78, &qword_1D932E600);
  v70 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v68 = &v58 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCA68, &qword_1D932FE90);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  result = MEMORY[0x1EEE9AC00](v17);
  v69 = &v58 - v20;
  v21 = *(v2 + 208);
  if ((*(a1 + v21) & 1) == 0)
  {
    v66 = v19;
    *(a1 + v21) = 1;
    v22 = *a1;
    v23 = *(a1 + *(*a1 + 216));
    v59 = v13;
    if (v23)
    {

      sub_1D9326C14();

      v22 = *a1;
    }

    v60 = v8;
    v62 = v11;
    v58 = v6;
    v63 = v4;
    *(a1 + *(v22 + 216)) = 0;

    v24 = *(*a1 + 224);
    swift_beginAccess();
    v25 = *(a1 + v24);
    v64 = v3;
    v61 = v7;
    v67 = v14;
    if ((v25 & 0xC000000000000001) != 0)
    {

      swift_unknownObjectRetain();
      sub_1D93283E4();
      sub_1D9326C24();
      sub_1D92F0504(&qword_1ECAFC520, MEMORY[0x1E695BF10], MEMORY[0x1E695BF18]);
      result = sub_1D93281E4();
      v26 = v73;
      v27 = v74;
      v28 = v75;
      v29 = v76;
      v30 = v77;
    }

    else
    {
      v31 = -1 << *(v25 + 32);
      v27 = v25 + 56;
      v28 = ~v31;
      v32 = -v31;
      if (v32 < 64)
      {
        v33 = ~(-1 << v32);
      }

      else
      {
        v33 = -1;
      }

      v30 = v33 & *(v25 + 56);
      result = swift_bridgeObjectRetain_n();
      v29 = 0;
      v26 = v25;
    }

    v65 = v28;
    v34 = (v28 + 64) >> 6;
    if (v26 < 0)
    {
      goto LABEL_17;
    }

    while (1)
    {
      v35 = v29;
      v36 = v30;
      v37 = v29;
      if (!v30)
      {
        break;
      }

LABEL_15:
      v38 = (v36 - 1) & v36;
      v39 = *(*(v26 + 48) + ((v37 << 9) | (8 * __clz(__rbit64(v36)))));

      if (!v39)
      {
LABEL_21:
        sub_1D92C9738(v26);

        v41 = v69;
        sub_1D92E8C00(v69);
        v42 = v70;
        v43 = v67;
        if ((*(v70 + 48))(v41, 1, v67))
        {
          sub_1D92933A0(v41, &qword_1ECAFCA68, &qword_1D932FE90);
        }

        else
        {
          v44 = v68;
          (*(v42 + 16))(v68, v41, v43);
          sub_1D92933A0(v41, &qword_1ECAFCA68, &qword_1D932FE90);
          sub_1D9328124();
          v42 = v70;
          (*(v70 + 8))(v44, v43);
        }

        v46 = v63;
        v45 = v64;
        v48 = v61;
        v47 = v62;
        v49 = v60;
        v50 = v59;
        v51 = v66;
        (*(v42 + 56))(v66, 1, 1, v43);
        sub_1D92E8C74(v51);
        sub_1D92E7D78(v50);
        if ((*(v46 + 48))(v50, 1, v45))
        {
          (*(v49 + 8))(v50, v48);
        }

        else
        {
          v52 = v58;
          (*(v46 + 16))(v58, v50, v45);
          (*(v49 + 8))(v50, v48);
          sub_1D9328124();
          (*(v46 + 8))(v52, v45);
        }

        (*(v46 + 56))(v47, 1, 1, v45);
        sub_1D92E7E30(v47);
        v53 = *a1;
        if (*(a1 + *(*a1 + 152)))
        {

          sub_1D92C7A24(v54, v55);

          v53 = *a1;
        }

        if (*(a1 + *(v53 + 168)))
        {

          sub_1D92D79B0(v56, v57);
        }

        return sub_1D92EE6D0(0);
      }

      while (1)
      {
        sub_1D9326C14();

        v29 = v37;
        v30 = v38;
        if ((v26 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_17:
        v40 = sub_1D93283F4();
        if (v40)
        {
          v71 = v40;
          sub_1D9326C24();
          swift_dynamicCast();
          v37 = v29;
          v38 = v30;
          if (v72)
          {
            continue;
          }
        }

        goto LABEL_21;
      }
    }

    while (1)
    {
      v37 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v37 >= v34)
      {
        goto LABEL_21;
      }

      v36 = *(v27 + 8 * v37);
      ++v35;
      if (v36)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D92EDD00(uint64_t a1, uint64_t a2)
{
  BSDispatchQueueAssertMain();
  result = swift_conformsToProtocol2();
  if (result)
  {
    v3 = result;
    ObjectType = swift_getObjectType();
    v5 = *(v3 + 16);

    v5(ObjectType, v3);
  }

  return result;
}

uint64_t ControlInstanceToggle.ViewModel.valueLabel.getter()
{
  v1 = *(v0 + *(type metadata accessor for ControlInstanceToggle.ViewModel(0) + 32));

  return v1;
}

uint64_t (*sub_1D92EDE38(uint64_t **a1))()
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
  v2[4] = sub_1D92EAE00(v2);
  return sub_1D92C4C64;
}

uint64_t (*sub_1D92EDEAC(uint64_t **a1))()
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
  v2[4] = sub_1D92E92EC(v2);
  return sub_1D92C4C64;
}

uint64_t (*sub_1D92EDFC4(uint64_t **a1))()
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
  v2[4] = sub_1D92EAE98(v2);
  return sub_1D92C40D4;
}

uint64_t (*sub_1D92EE038(uint64_t **a1))()
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
  v2[4] = sub_1D92E9384(v2);
  return sub_1D92C4C64;
}

uint64_t sub_1D92EE0C0@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{
  v7 = *v3;
  v8 = *(*v7 + 112);
  swift_beginAccess();
  return sub_1D92973DC(v7 + v8, a3, a1, a2);
}

id sub_1D92EE1D0()
{
  v1 = [*(*v0 + *(**v0 + 120)) control];

  return v1;
}

void *sub_1D92EE248()
{
  v1 = *(*v0 + *(**v0 + 168));
  if (v1)
  {
    swift_beginAccess();
    v1 = v1[4];
    v2 = v1;
  }

  return v1;
}

uint64_t sub_1D92EE2AC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v3 + 128);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCA60, &unk_1D932DF90);
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_1D92EE340()
{
  v1 = *v0;
  v2 = *(**v0 + 232);
  swift_beginAccess();
  return *(v1 + v2);
}

uint64_t (*sub_1D92EE394(uint64_t **a1))()
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
  v2[4] = sub_1D92EAF34(v2);
  return sub_1D92C4C64;
}

uint64_t sub_1D92EE408@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1 + *(**v1 + 144);
  swift_beginAccess();
  v4 = *(v3 + 1);
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v8 = *(v3 + 24);
  v7 = *(v3 + 32);
  *a1 = *v3;
  *(a1 + 1) = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v8;
  *(a1 + 32) = v7;
}

uint64_t (*sub_1D92EE48C(uint64_t **a1))()
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
  v2[4] = sub_1D92E9420(v2);
  return sub_1D92C4C64;
}

uint64_t sub_1D92EE528@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{
  v5 = *v3;
  v6 = *(*v5 + 96);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v5 + v6, v7);
}

void sub_1D92EE630(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v7[4] = a3;
  v7[5] = v5;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1107296256;
  v7[2] = sub_1D9290DB0;
  v7[3] = a4;
  v6 = _Block_copy(v7);

  BSDispatchMain();
  _Block_release(v6);
}

uint64_t sub_1D92EE6D0(uint64_t a1)
{
  v2 = *(*v1 + 168);
  v3 = *(v1 + v2);
  *(v1 + v2) = a1;

  sub_1D92E9B0C(v3);
}

uint64_t *sub_1D92EE728(void *a1, void *a2)
{
  v3 = v2;
  v123 = a2;
  v5 = *v3;
  v120 = sub_1D9326BE4();
  v122 = *(v120 - 8);
  MEMORY[0x1EEE9AC00](v120);
  v121 = &v89 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = sub_1D93268B4();
  v118 = *(v119 - 8);
  MEMORY[0x1EEE9AC00](v119);
  v117 = &v89 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCA68, &qword_1D932FE90);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v116 = &v89 - v9;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCA70, &unk_1D932DFA0);
  v114 = *(v115 - 8);
  MEMORY[0x1EEE9AC00](v115);
  v112 = &v89 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCA78, &qword_1D932E600);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v108 = &v89 - v13;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCA60, &unk_1D932DF90);
  v109 = *(v110 - 8);
  MEMORY[0x1EEE9AC00](v110);
  v107 = &v89 - v14;
  v15 = *(v5 + 80);
  v16 = sub_1D9328134();
  v106 = sub_1D9328374();
  v105 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106);
  v104 = &v89 - v17;
  v99 = sub_1D9328104();
  v98 = *(v99 - 8);
  v18 = MEMORY[0x1EEE9AC00](v99);
  v20 = &v89 - v19;
  v21 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v93 = &v89 - v22;
  v97 = sub_1D9328174();
  v94 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97);
  v24 = &v89 - v23;
  v25 = v3 + *(v5 + 104);
  v96 = v21;
  v26 = *(v21 + 56);
  v95 = v25;
  v92 = v16;
  v91 = v26;
  v26();
  (*(*(v15 - 8) + 56))(v3 + *(*v3 + 112), 1, 1, v15);
  v27 = v3 + *(*v3 + 136);
  v111 = v12;
  v28 = *(v12 + 56);
  v103 = v27;
  v113 = v11;
  v101 = v12 + 56;
  v100 = v28;
  v28();
  *(v3 + *(*v3 + 152)) = 0;
  *(v3 + *(*v3 + 160)) = 0;
  *(v3 + *(*v3 + 168)) = 0;
  *(v3 + *(*v3 + 208)) = 0;
  *(v3 + *(*v3 + 216)) = 0;
  *(v3 + *(*v3 + 224)) = MEMORY[0x1E69E7CD0];
  if (qword_1EDE3C840 != -1)
  {
    swift_once();
  }

  sub_1D929CF00(qword_1EDE40100, v3 + *(*v3 + 200));
  *(v3 + *(*v3 + 120)) = a1;
  v29 = a1;
  v30 = [v29 control];
  v31 = [v30 _loggingIdentifier];

  v32 = sub_1D9327F84();
  v34 = v33;

  v129 = 58;
  v130 = 0xE100000000000000;
  v102 = v29;
  [v29 contentType];
  v35 = sub_1D93282F4();
  MEMORY[0x1DA72E570](v35);

  v37 = v129;
  v36 = v130;
  v129 = v32;
  v130 = v34;

  MEMORY[0x1DA72E570](v37, v36);

  v38 = v130;
  v39 = (v3 + *(*v3 + 184));
  *v39 = v129;
  v39[1] = v38;
  v40 = v3 + *(*v3 + 144);
  *v40 = 0;
  *(v40 + 8) = 0;
  *(v40 + 16) = 1;
  *(v40 + 24) = 0;
  *(v40 + 32) = 0;
  *(v3 + *(*v3 + 232)) = 0;
  if (qword_1EDE3BF60 != -1)
  {
    swift_once();
  }

  v41 = v120;
  v42 = __swift_project_value_buffer(v120, qword_1EDE40088);
  v43 = *(*v3 + 176);
  v44 = *(v122 + 16);
  v89 = v122 + 16;
  v90 = v44;
  v44(v3 + v43, v42, v41);
  sub_1D929CF00(v123, v3 + *(*v3 + 192));
  v45 = *MEMORY[0x1E69E8650];
  v46 = v98;
  v47 = v99;
  (*(v98 + 104))(v20, v45, v99);
  v48 = v93;
  sub_1D93280E4();
  (*(v46 + 8))(v20, v47);
  v49 = v104;
  v50 = v92;
  (*(v96 + 32))(v104, v48, v92);
  (v91)(v49, 0, 1, v50);
  (*(v94 + 32))(v3 + *(*v3 + 96), v24, v97);
  v51 = v95;
  swift_beginAccess();
  (*(v105 + 40))(v51, v49, v106);
  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCAA0, &qword_1D932DFD0);
  v52 = v114;
  v53 = v112;
  v54 = v45;
  v55 = v115;
  (*(v114 + 104))(v112, v54, v115);
  v56 = v107;
  v57 = v108;
  sub_1D93280E4();
  (*(v52 + 8))(v53, v55);
  v58 = v116;
  v59 = v113;
  (*(v111 + 32))(v116, v57, v113);
  (v100)(v58, 0, 1, v59);
  v60 = v56;
  v61 = v41;
  (*(v109 + 32))(v3 + *(*v3 + 128), v60, v110);
  v62 = v103;
  swift_beginAccess();
  sub_1D92C3C20(v58, v62, &qword_1ECAFCA68, &qword_1D932FE90);
  swift_endAccess();
  v129 = 0;
  v130 = 0xE000000000000000;
  sub_1D9328444();

  v129 = 0x536C6F72746E6F43;
  v130 = 0xEF2D6E6F69737365;
  v63 = v117;
  sub_1D93268A4();
  v64 = sub_1D9326894();
  (*(v118 + 8))(v63, v119);
  v125[0] = v64;
  v65 = sub_1D9328614();
  MEMORY[0x1DA72E570](v65);

  sub_1D9326AD4();
  v66 = v102;
  sub_1D9326A94();
  sub_1D929CF00(v3 + *(*v3 + 192), &v129);
  v67 = v3 + *(*v3 + 144);
  swift_beginAccess();
  v68 = *v67;
  v69 = v67[1];
  v70 = *(v67 + 1);
  v71 = v67[16];
  v72 = *(v67 + 3);
  v73 = *(v67 + 4);
  LOBYTE(v125[0]) = v68;
  BYTE1(v125[0]) = v69;
  v125[1] = v70;
  v126 = v71;
  v127 = v72;
  v128 = v73;
  sub_1D929CF00(v3 + *(*v3 + 200), v124);
  type metadata accessor for ControlSession(0);
  swift_allocObject();

  sub_1D92D8EF4(v74, &v129, v125, v124);

  v75 = v121;
  v90(v121, v3 + *(*v3 + 176), v41);

  v76 = sub_1D9326BC4();
  v77 = sub_1D9328204();

  if (os_log_type_enabled(v76, v77))
  {
    v78 = swift_slowAlloc();
    v79 = swift_slowAlloc();
    v129 = v79;
    *v78 = 136446466;
    v80 = (v3 + *(*v3 + 184));
    v81 = *v80;
    v82 = v80[1];

    v83 = sub_1D9293524(v81, v82, &v129);

    *(v78 + 4) = v83;
    *(v78 + 12) = 2082;
    v84 = sub_1D9327F54();
    v86 = sub_1D9293524(v84, v85, &v129);

    *(v78 + 14) = v86;
    _os_log_impl(&dword_1D928E000, v76, v77, "[%{public}s] created new ControlInstance:%{public}s", v78, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1DA72F920](v79, -1, -1);
    MEMORY[0x1DA72F920](v78, -1, -1);

    (*(v122 + 8))(v121, v61);
  }

  else
  {

    (*(v122 + 8))(v75, v41);
  }

  sub_1D92EE6D0(v87);

  __swift_destroy_boxed_opaque_existential_1Tm(v123);
  return v3;
}

uint64_t sub_1D92EF6C0(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_1D9328374();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10[-v6];
  v8 = *(v3 + 112);
  swift_beginAccess();
  (*(v5 + 16))(v7, &v1[v8], v4);
  swift_beginAccess();
  (*(v5 + 24))(&v1[v8], a1, v4);
  swift_endAccess();
  sub_1D92E7EF0(v7);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1D92EF854(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 8))
  {
    return (*a1 + 126);
  }

  v3 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1D92EF8B0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t dispatch thunk of ControlInstanceProtocol.performAction()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 136) + **(a2 + 136));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D92D9CEC;

  return v7(a1, a2);
}

uint64_t dispatch thunk of ControlInstanceProtocol.setState(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 144) + **(a3 + 144));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D92DA198;

  return v9(a1, a2, a3);
}

void sub_1D92EFD94(uint64_t a1)
{
  sub_1D9328174();
  if (v1 <= 0x3F)
  {
    sub_1D9328134();
    sub_1D9328374();
    if (v2 <= 0x3F)
    {
      sub_1D9328374();
      if (v3 <= 0x3F)
      {
        sub_1D92D9F34(319, &qword_1EDE3BC30, &qword_1ECAFCAA0, &qword_1D932DFD0, MEMORY[0x1E69E8698]);
        if (v4 <= 0x3F)
        {
          sub_1D92D9F34(319, &qword_1EDE3BC40, &qword_1ECAFCA78, &qword_1D932E600, MEMORY[0x1E69E6720]);
          if (v5 <= 0x3F)
          {
            sub_1D9326BE4();
            if (v6 <= 0x3F)
            {
              swift_initClassMetadata2();
            }
          }
        }
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for ControlInstanceErrors(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ControlInstanceErrors(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D92F0450()
{
  result = qword_1ECAFCBA0;
  if (!qword_1ECAFCBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAFCBA0);
  }

  return result;
}

unint64_t sub_1D92F04A8()
{
  result = qword_1ECAFCBA8;
  if (!qword_1ECAFCBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAFCBA8);
  }

  return result;
}

uint64_t sub_1D92F0504(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D92F06A8()
{
  MEMORY[0x1DA72F920](*(v0 + 16), -1, -1);

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t sub_1D92F06E8@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ControlIconView.Mode(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v20[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_storeEnumTagMultiPayload();
  v5 = sub_1D93273D4();
  LOBYTE(v25) = 0;
  sub_1D9327544();
  v6 = v28;
  v7 = v29;
  v8 = v30;
  v9 = type metadata accessor for ControlIconView(0);
  v10 = v9[7];
  *(a1 + v9[10]) = 1;
  v11 = v9[11];
  v12 = sub_1D9326E44();
  (*(*(v12 - 8) + 56))(a1 + v11, 1, 1, v12);
  v13 = a1 + v9[12];
  *v13 = swift_getKeyPath();
  *(v13 + 8) = 0;
  sub_1D929705C(v4, a1, type metadata accessor for ControlIconView.Mode);
  *(a1 + v9[5]) = 0;
  *(a1 + v9[6]) = 1;
  *(a1 + v10) = v5;
  v14 = a1 + v9[8];
  *v14 = v6;
  *(v14 + 8) = v7;
  *(v14 + 16) = v8;
  v22 = v6;
  v23 = v7;
  v24 = v8;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCF48, &qword_1D932F5C0);
  MEMORY[0x1DA72DAB0](&v21, v15);
  v20[6] = v21;
  sub_1D9327544();
  result = sub_1D929748C(v4, type metadata accessor for ControlIconView.Mode);
  v17 = v26;
  v18 = v27;
  v19 = a1 + v9[9];
  *v19 = v25;
  *(v19 + 8) = v17;
  *(v19 + 16) = v18;
  return result;
}

uint64_t sub_1D92F08E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAFC910, &qword_1D932E360);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_1D92973DC(a3, v25 - v10, &unk_1ECAFC910, &qword_1D932E360);
  v12 = sub_1D93280D4();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1D92933A0(v11, &unk_1ECAFC910, &qword_1D932E360);
  }

  else
  {
    sub_1D93280C4();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1D9328064();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1D9327FA4() + 32;
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

      sub_1D92933A0(a3, &unk_1ECAFC910, &qword_1D932E360);

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

  sub_1D92933A0(a3, &unk_1ECAFC910, &qword_1D932E360);
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

uint64_t sub_1D92F0C04()
{
  v1 = sub_1D9327034();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + *(type metadata accessor for ControlIconView(0) + 48));
  v6 = *v5;
  v7 = *(v5 + 8);

  if ((v7 & 1) == 0)
  {
    sub_1D9328224();
    v8 = sub_1D93271F4();
    sub_1D9326BB4();

    sub_1D9327024();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    return v10[1];
  }

  return v6;
}

uint64_t ControlIconView.body.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1D929E614(a1);
  v3 = *(v1 + *(type metadata accessor for ControlIconView(0) + 20));
  v4 = sub_1D9326CA4();
  v5 = sub_1D9326CA4();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCBD0, &qword_1D932E918);
  v7 = (a1 + *(result + 36));
  *v7 = v3;
  v7[1] = v4;
  v7[2] = v5;
  return result;
}

uint64_t ControlIconView.systemSymbolName.getter()
{
  v1 = sub_1D93271C4();
  v28 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D93271E4();
  v29 = *(v4 - 8);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v26 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCBD8, &qword_1D932E920);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v26 - v14;
  v16 = type metadata accessor for ControlIconView.Mode(0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D929705C(v0, v18, type metadata accessor for ControlIconView.Mode);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v27 = v3;
    sub_1D9297374(v18, v15, &qword_1ECAFCBD8, &qword_1D932E920);
    sub_1D92973DC(v15, v13, &qword_1ECAFCBD8, &qword_1D932E920);
    v21 = v29;
    if ((*(v29 + 48))(v13, 1, v4) == 1)
    {
      sub_1D92933A0(v15, &qword_1ECAFCBD8, &qword_1D932E920);
      sub_1D92933A0(v13, &qword_1ECAFCBD8, &qword_1D932E920);
    }

    else
    {
      (*(v21 + 32))(v9, v13, v4);
      if (sub_1D9327194())
      {
        (*(v21 + 16))(v7, v9, v4);
        if ((*(v21 + 88))(v7, v4) == *MEMORY[0x1E697CB08])
        {
          (*(v21 + 96))(v7, v4);
          v23 = v27;
          v22 = v28;
          (*(v28 + 32))(v27, v7, v1);
          v24 = sub_1D93271B4();
          (*(v22 + 8))(v23, v1);
          (*(v21 + 8))(v9, v4);
          sub_1D92933A0(v15, &qword_1ECAFCBD8, &qword_1D932E920);
          return v24;
        }

        v25 = *(v21 + 8);
        v25(v9, v4);
        sub_1D92933A0(v15, &qword_1ECAFCBD8, &qword_1D932E920);
        v25(v7, v4);
      }

      else
      {
        (*(v21 + 8))(v9, v4);
        sub_1D92933A0(v15, &qword_1ECAFCBD8, &qword_1D932E920);
      }
    }
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      return *v18;
    }

    sub_1D929748C(v18, type metadata accessor for ControlIconView.Mode);
  }

  return 0;
}

uint64_t ControlIconView.controlIconViewParameters(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for ControlIconView(0);
  v7 = (v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D929705C(v3, v9, type metadata accessor for ControlIconView);
  *&v9[v7[7]] = *a1;
  v10 = type metadata accessor for ControlIconViewParameters(0);
  v9[v7[12]] = *(a1 + v10[10]);
  sub_1D92F8448(a1 + v10[9], &v9[v7[13]]);
  KeyPath = swift_getKeyPath();
  v12 = a1[1];
  sub_1D929705C(v9, a2, type metadata accessor for ControlIconView);
  v13 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCBE8, &qword_1D932E958) + 36));
  *v13 = KeyPath;
  v13[1] = v12;
  v14 = swift_getKeyPath();
  v15 = a1[2];
  v16 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCBF0, &qword_1D932E988) + 36));
  *v16 = v14;
  v16[1] = v15;
  v17 = swift_getKeyPath();
  v18 = a1[3];
  v19 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCBF8, &qword_1D932E9B8) + 36));
  *v19 = v17;
  v19[1] = v18;
  v20 = swift_getKeyPath();
  v21 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCC00, &qword_1D932E9E8) + 36));
  *v21 = v20;
  v21[1] = v12;
  v22 = swift_getKeyPath();
  v23 = v10[8];
  v24 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCC08, &qword_1D932EA18) + 36));
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCC10, &qword_1D932EA20);
  sub_1D92973DC(a1 + v23, v24 + *(v25 + 28), &qword_1ECAFCC18, &qword_1D932EA28);
  *v24 = v22;
  v26 = swift_getKeyPath();
  v27 = *(a1 + v10[11]);
  v28 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCC20, &qword_1D932EA30) + 36));
  *v28 = v26;
  v28[1] = v27;
  swift_retain_n();

  return sub_1D929748C(v9, type metadata accessor for ControlIconView);
}

void *sub_1D92F16A4@<X0>(uint64_t (*a1)(void)@<X3>, void *a3@<X8>)
{
  a1();
  result = sub_1D9327044();
  *a3 = v5;
  return result;
}

uint64_t sub_1D92F17A8(uint64_t (*a1)(void), uint64_t a2)
{
  a1();
  sub_1D9327044();
  return v3;
}

uint64_t sub_1D92F17F0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6)
{
  a5();

  return sub_1D9327054();
}

void *EnvironmentValues.controlIconImageScale.getter()
{
  sub_1D92A1FA8();

  return sub_1D9327044();
}

uint64_t sub_1D92F18DC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCC18, &qword_1D932EA28);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v9 - v6;
  sub_1D92973DC(a1, &v9 - v6, &qword_1ECAFCC18, &qword_1D932EA28);
  sub_1D92973DC(v7, v5, &qword_1ECAFCC18, &qword_1D932EA28);
  sub_1D92A1FA8();
  sub_1D9327054();
  return sub_1D92933A0(v7, &qword_1ECAFCC18, &qword_1D932EA28);
}

uint64_t EnvironmentValues.controlIconImageScale.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCC18, &qword_1D932EA28);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1D92973DC(a1, &v5 - v3, &qword_1ECAFCC18, &qword_1D932EA28);
  sub_1D92A1FA8();
  sub_1D9327054();
  return sub_1D92933A0(a1, &qword_1ECAFCC18, &qword_1D932EA28);
}

uint64_t sub_1D92F1AA8()
{
  sub_1D929E550();
  sub_1D9327044();
  return v1;
}

uint64_t sub_1D92F1AE4(uint64_t *a1)
{
  sub_1D929E550();

  return sub_1D9327054();
}

uint64_t sub_1D92F1B44@<X0>(uint64_t a1@<X8>)
{
  v76 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCE68, &qword_1D932F470);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v69 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v68 = &v61 - v5;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCC70, &qword_1D932EC00);
  v6 = MEMORY[0x1EEE9AC00](v75);
  v67 = (&v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v61 - v8;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCE70, &qword_1D932F478);
  MEMORY[0x1EEE9AC00](v73);
  v74 = &v61 - v10;
  v11 = sub_1D9327454();
  v70 = *(v11 - 8);
  v71 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1D9327274();
  v65 = *(v14 - 8);
  v66 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1D9327214();
  v63 = *(v17 - 8);
  v64 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1D9327034();
  v62 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = (&v61 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCE78, &unk_1D932F480);
  v23 = MEMORY[0x1EEE9AC00](v72);
  v25 = &v61 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v61 - v26;
  if (!*v1)
  {
    v33 = v68;
    v32 = v69;
    v34 = v67;
    v71 = v9;
    sub_1D9327444();
    v35 = *(v1 + 8);
    if (v35 < 2)
    {
      sub_1D93270D4();
    }

    else if (v35 == 3)
    {
      sub_1D93270C4();
    }

    else
    {
      if (v35 != 2)
      {
        v60 = sub_1D93270E4();
        (*(*(v60 - 8) + 56))(v32, 1, 1, v60);
        goto LABEL_15;
      }

      sub_1D93270B4();
    }

    v45 = sub_1D93270E4();
    (*(*(v45 - 8) + 56))(v32, 0, 1, v45);
LABEL_15:
    sub_1D9297374(v32, v33, &qword_1ECAFCE68, &qword_1D932F470);
    v46 = sub_1D9327474();

    sub_1D92933A0(v33, &qword_1ECAFCE68, &qword_1D932F470);
    LODWORD(v70) = *(v1 + 16);
    v47 = sub_1D9326CE4();
    v48 = (v34 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCC80, &qword_1D932EC10) + 36));
    *v48 = v35;
    v49 = type metadata accessor for ImageScaleOverride(0);
    v50 = *(v49 + 20);
    *(v48 + v50) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCDA8, &qword_1D932F388);
    swift_storeEnumTagMultiPayload();
    v51 = *(v49 + 24);

    *(v48 + v51) = sub_1D9326CC4();
    *v34 = v46;
    v34[1] = v47;
    KeyPath = swift_getKeyPath();
    v53 = sub_1D9326CE4();
    v54 = sub_1D9326CE4();

    v55 = v34 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCC78, &qword_1D932EC08) + 36);
    *v55 = KeyPath;
    v55[8] = 0;
    *(v55 + 2) = v53;
    *(v55 + 3) = v54;
    v56 = (v34 + *(v75 + 36));
    *v56 = swift_getKeyPath();
    swift_storeEnumTagMultiPayload();
    v57 = type metadata accessor for SymbolColorEffect(0);
    *(v56 + v57[5]) = v35;
    *(v56 + v57[6]) = v70;
    *(v56 + v57[7]) = 0;
    v42 = &qword_1ECAFCC70;
    v43 = &qword_1D932EC00;
    v58 = v71;
    sub_1D9297374(v34, v71, &qword_1ECAFCC70, &qword_1D932EC00);
    sub_1D92973DC(v58, v74, &qword_1ECAFCC70, &qword_1D932EC00);
    swift_storeEnumTagMultiPayload();
    sub_1D92FA6AC();
    sub_1D92A092C();
    sub_1D9327104();
    v44 = v58;
    return sub_1D92933A0(v44, v42, v43);
  }

  v69 = *(v1 + 8);
  if (*(v1 + 40))
  {
    type metadata accessor for RasterizedImageView(0);

    sub_1D92A1DC8(v22);
    if (!sub_1D9326FA4())
    {
      sub_1D9327224();
    }

    sub_1D9326F14();
    sub_1D9327284();

    (*(v65 + 8))(v16, v66);
    sub_1D9327204();
    v29 = v28;
    (*(v63 + 8))(v19, v64);
    v30 = v29 * 2.72 * 0.5;
    (*(v62 + 8))(v22, v20);
    v31 = v30;
  }

  else
  {
    v30 = *(v1 + 24);
    v31 = *(v1 + 32);
  }

  v37 = v70;
  v36 = v71;
  (*(v70 + 104))(v13, *MEMORY[0x1E6981630], v71);
  v38 = sub_1D93274A4();
  (*(v37 + 8))(v13, v36);
  v39 = &v25[*(v72 + 36)];
  *v39 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCDA8, &qword_1D932F388);
  swift_storeEnumTagMultiPayload();
  v40 = type metadata accessor for AppIconStyleEffect(0);
  *(v39 + *(v40 + 20)) = v69;
  v41 = (v39 + *(v40 + 24));
  *v41 = v30;
  v41[1] = v31;
  *v25 = v38;
  *(v25 + 1) = 0;
  *(v25 + 8) = 1;
  v42 = &qword_1ECAFCE78;
  v43 = &unk_1D932F480;
  sub_1D9297374(v25, v27, &qword_1ECAFCE78, &unk_1D932F480);
  sub_1D92973DC(v27, v74, &qword_1ECAFCE78, &unk_1D932F480);
  swift_storeEnumTagMultiPayload();
  sub_1D92FA6AC();
  sub_1D92A092C();
  sub_1D9327104();

  v44 = v27;
  return sub_1D92933A0(v44, v42, v43);
}

uint64_t sub_1D92F24D0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v40 = a1;
  v3 = sub_1D9327274();
  v38 = *(v3 - 8);
  v39 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v33 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_1D9327214();
  v34 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_1D9327034();
  v35 = *(v37 - 8);
  v7 = MEMORY[0x1EEE9AC00](v37);
  v32 = (&v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v31 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCD48, &qword_1D932EDC8);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v31 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCD38, &qword_1D932ECB0);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v31 - v16;
  sub_1D92973DC(v2, v13, &qword_1ECAFCD48, &qword_1D932EDC8);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_1D92933A0(v13, &qword_1ECAFCD48, &qword_1D932EDC8);
    v18 = type metadata accessor for AppIconImageCache.CacheKey(0);
    return (*(*(v18 - 8) + 56))(v40, 1, 1, v18);
  }

  else
  {
    (*(v15 + 32))(v17, v13, v14);
    (*(v15 + 16))(v40, v17, v14);
    type metadata accessor for AppIconView(0);
    v31 = v2;
    sub_1D92A1DC8(v10);
    if (!sub_1D9326FA4())
    {
      sub_1D9327224();
    }

    v20 = v33;
    sub_1D9326F14();
    sub_1D9327284();

    (*(v38 + 8))(v20, v39);
    sub_1D9327204();
    v22 = v21;
    (*(v34 + 8))(v6, v36);
    v23 = v22 * 2.72 * 0.5;
    v24 = *(v35 + 8);
    v25 = v37;
    v24(v10, v37);
    v26 = v32;
    sub_1D92A1DC8(v32);
    sub_1D9326EA4();
    v28 = v27;
    v24(v26, v25);
    (*(v15 + 8))(v17, v14);
    v29 = type metadata accessor for AppIconImageCache.CacheKey(0);
    v30 = v40;
    *(v40 + *(v29 + 20)) = v23;
    *(v30 + *(v29 + 24)) = v28;
    return (*(*(v29 - 8) + 56))(v30, 0, 1, v29);
  }
}

id sub_1D92F29B8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v40 = a1;
  v3 = type metadata accessor for AppIconView(0);
  v34 = *(v3 - 1);
  MEMORY[0x1EEE9AC00](v3);
  v35 = v4;
  v36 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCE98, &qword_1D932F4E0);
  MEMORY[0x1EEE9AC00](v38);
  v39 = &v30 - v5;
  v37 = type metadata accessor for RasterizedImageView(0);
  MEMORY[0x1EEE9AC00](v37);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (v1 + v3[8]);
  v9 = *v8;
  v10 = v8[1];
  v12 = v8[2];
  v11 = v8[3];
  v44 = v9;
  v45 = v10;
  v46 = v12;
  v47 = v11;
  v33 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCEA0, &unk_1D932F4E8);
  sub_1D93274D4();
  v13 = 0;
  v14 = v43;
  if (v43 >= 2)
  {
    v31 = v12;
    v32 = v41;
    v15 = v42;
    v16 = v43;
    result = [v16 CGImage];
    if (!result)
    {
      __break(1u);
      return result;
    }

    [v16 scale];
    sub_1D9327084();
    sub_1D93272A4();
    v13 = sub_1D93274B4();
    v18 = v32;
    sub_1D92FA80C(v32, v15, v14);
    sub_1D92FA80C(v18, v15, v14);
    v12 = v31;
  }

  v19 = v3[6];
  v20 = *(v2 + v3[5]);
  v21 = *(v2 + v19);
  v44 = v9;
  v45 = v10;
  v46 = v12;
  v47 = v33;
  sub_1D93274D4();
  v22 = v43 == 1;
  if (v43 == 1)
  {
    v23 = 0;
  }

  else
  {
    v23 = v41;
  }

  if (v43 == 1)
  {
    v24 = 0;
  }

  else
  {
    v24 = v42;
  }

  sub_1D92FA80C(v41, v42, v43);
  v25 = *(v37 + 32);
  *&v7[v25] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCDA8, &qword_1D932F388);
  swift_storeEnumTagMultiPayload();
  *v7 = v13;
  *(v7 + 1) = v20;
  v7[16] = v21;
  *(v7 + 3) = v23;
  *(v7 + 4) = v24;
  v7[40] = v22;
  v26 = v39;
  sub_1D92F24D0(v39);
  v27 = v36;
  sub_1D929705C(v2, v36, type metadata accessor for AppIconView);
  v28 = (*(v34 + 80) + 16) & ~*(v34 + 80);
  v29 = swift_allocObject();
  sub_1D92FAC24(v27, v29 + v28, type metadata accessor for AppIconView);
  sub_1D9297444(qword_1EDE3CE50, type metadata accessor for RasterizedImageView, &unk_1D932F0B4);
  sub_1D92FA89C();
  sub_1D9327314();

  sub_1D92933A0(v26, &qword_1ECAFCE98, &qword_1D932F4E0);
  return sub_1D929748C(v7, type metadata accessor for RasterizedImageView);
}

uint64_t sub_1D92F2E18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCE98, &qword_1D932F4E0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v22 - v7;
  v9 = type metadata accessor for AppIconView(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAFC910, &qword_1D932E360);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v22 - v13;
  v15 = sub_1D93280D4();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  sub_1D929705C(a3, &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AppIconView);
  sub_1D92973DC(a2, v8, &qword_1ECAFCE98, &qword_1D932F4E0);
  sub_1D93280A4();
  v16 = sub_1D9328094();
  v17 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v18 = (v11 + *(v6 + 80) + v17) & ~*(v6 + 80);
  v19 = swift_allocObject();
  v20 = MEMORY[0x1E69E85E0];
  *(v19 + 16) = v16;
  *(v19 + 24) = v20;
  sub_1D92FAC24(&v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v17, type metadata accessor for AppIconView);
  sub_1D9297374(v8, v19 + v18, &qword_1ECAFCE98, &qword_1D932F4E0);
  sub_1D92F08E8(0, 0, v14, &unk_1D932F500, v19);
}

uint64_t sub_1D92F30D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a4;
  v5[13] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCE98, &qword_1D932F4E0);
  v5[14] = swift_task_alloc();
  sub_1D93280A4();
  v5[15] = sub_1D9328094();
  v7 = sub_1D9328064();
  v5[16] = v7;
  v5[17] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1D92F31A4, v7, v6);
}

uint64_t sub_1D92F31A4()
{
  v1 = *(v0 + 112);
  sub_1D92973DC(*(v0 + 104), v1, &qword_1ECAFCE98, &qword_1D932F4E0);
  v2 = type metadata accessor for AppIconImageCache.CacheKey(0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = *(v0 + 112);

    sub_1D92933A0(v3, &qword_1ECAFCE98, &qword_1D932F4E0);
    v4 = *(v0 + 96);
    v5 = (v4 + *(type metadata accessor for AppIconView(0) + 32));
    v6 = v5[1];
    *(v0 + 16) = *v5;
    *(v0 + 32) = v6;
    *(v0 + 48) = 0;
    *(v0 + 56) = 0;
    *(v0 + 64) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCEA0, &unk_1D932F4E8);
    sub_1D93274E4();

    v7 = *(v0 + 8);

    return v7();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1D92F3320, 0, 0);
  }
}

uint64_t sub_1D92F3320()
{
  if (qword_1ECAFC3E0 != -1)
  {
    swift_once();
  }

  v1 = v0[14];

  v2 = sub_1D92F4E84(v1);
  v4 = v3;
  v6 = v5;

  if (v6 == 1)
  {
    v7 = v0[14];
    v8 = swift_task_alloc();
    v0[18] = v8;
    *(v8 + 16) = v7;
    v9 = swift_task_alloc();
    v0[19] = v9;
    *v9 = v0;
    v9[1] = sub_1D92F34E8;

    return MEMORY[0x1EEE6DDE0](v0 + 9, 0, 0, 0x496E6F6349707061, 0xEE0029286567616DLL, sub_1D92FAC1C, v8, &type metadata for AppIconImageCache.ImageResult);
  }

  else
  {
    v0[21] = v4;
    v0[22] = v6;
    v0[20] = v2;
    sub_1D929748C(v0[14], type metadata accessor for AppIconImageCache.CacheKey);
    v10 = v0[16];
    v11 = v0[17];

    return MEMORY[0x1EEE6DFA0](sub_1D92F3688, v10, v11);
  }
}

uint64_t sub_1D92F34E8()
{

  return MEMORY[0x1EEE6DFA0](sub_1D92F3600, 0, 0);
}

uint64_t sub_1D92F3600()
{
  v1 = *(v0 + 72);
  *(v0 + 176) = *(v0 + 88);
  *(v0 + 160) = v1;
  sub_1D929748C(*(v0 + 112), type metadata accessor for AppIconImageCache.CacheKey);
  v2 = *(v0 + 128);
  v3 = *(v0 + 136);

  return MEMORY[0x1EEE6DFA0](sub_1D92F3688, v2, v3);
}

uint64_t sub_1D92F3688()
{

  v1 = *(v0 + 176);
  v7 = *(v0 + 160);
  v2 = *(v0 + 96);
  v3 = (v2 + *(type metadata accessor for AppIconView(0) + 32));
  v4 = v3[1];
  *(v0 + 16) = *v3;
  *(v0 + 32) = v4;
  *(v0 + 48) = v7;
  *(v0 + 64) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCEA0, &unk_1D932F4E8);
  sub_1D93274E4();

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1D92F3768@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCFB0, &qword_1D932F7E8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v39 - v5;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCFB8, &qword_1D932F7F0);
  MEMORY[0x1EEE9AC00](v42);
  v8 = &v39 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCFC0, &qword_1D932F7F8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v39 - v10;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCFC8, &qword_1D932F800);
  MEMORY[0x1EEE9AC00](v41);
  v13 = &v39 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCFD0, &qword_1D932F808);
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v39 - v15);
  v17 = type metadata accessor for AppIconStyleEffect(0);
  v18 = *(v2 + *(v17 + 20));
  if ((v18 - 1) >= 3)
  {
    if (!v18)
    {
      *v16 = sub_1D93275E4();
      v16[1] = v28;
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD010, &qword_1D932F820);
      sub_1D92F3DE4(v2, v40, v16 + *(v29 + 44));
      sub_1D92973DC(v16, v11, &qword_1ECAFCFD0, &qword_1D932F808);
      swift_storeEnumTagMultiPayload();
      sub_1D9290D60(&qword_1ECAFCFF0, &qword_1ECAFCFD0, &qword_1D932F808, MEMORY[0x1E6981880]);
      sub_1D92FB8D0();
      sub_1D9327104();
      sub_1D92973DC(v13, v8, &qword_1ECAFCFC8, &qword_1D932F800);
      swift_storeEnumTagMultiPayload();
      sub_1D92FB818();
      sub_1D9327104();
      sub_1D92933A0(v13, &qword_1ECAFCFC8, &qword_1D932F800);
      return sub_1D92933A0(v16, &qword_1ECAFCFD0, &qword_1D932F808);
    }

    v31 = (v2 + *(v17 + 24));
    v32 = *v31 * 0.225;
    v33 = v31[1] * 0.225;
    v34 = &v6[*(v4 + 36)];
    v35 = *(sub_1D9326E34() + 20);
    v36 = *MEMORY[0x1E697F468];
    v37 = sub_1D9327094();
    (*(*(v37 - 8) + 104))(v34 + v35, v36, v37);
    *v34 = v32;
    v34[1] = v33;
    *(v34 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCFD8, &qword_1D932F810) + 36)) = 256;
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCFE0, &qword_1D932F818);
    (*(*(v38 - 8) + 16))(v6, v40, v38);
    sub_1D92973DC(v6, v8, &qword_1ECAFCFB0, &qword_1D932F7E8);
    swift_storeEnumTagMultiPayload();
    sub_1D92FB818();
    sub_1D92FB8D0();
    sub_1D9327104();
  }

  else
  {
    v19 = (v2 + *(v17 + 24));
    v20 = *v19 * 0.225;
    v21 = v19[1] * 0.225;
    v22 = &v6[*(v4 + 36)];
    v23 = sub_1D9326E34();
    v39 = a2;
    v24 = *(v23 + 20);
    v25 = *MEMORY[0x1E697F468];
    v26 = sub_1D9327094();
    (*(*(v26 - 8) + 104))(v22 + v24, v25, v26);
    *v22 = v20;
    v22[1] = v21;
    *(v22 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCFD8, &qword_1D932F810) + 36)) = 256;
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCFE0, &qword_1D932F818);
    (*(*(v27 - 8) + 16))(v6, v40, v27);
    sub_1D92973DC(v6, v11, &qword_1ECAFCFB0, &qword_1D932F7E8);
    swift_storeEnumTagMultiPayload();
    sub_1D9290D60(&qword_1ECAFCFF0, &qword_1ECAFCFD0, &qword_1D932F808, MEMORY[0x1E6981880]);
    sub_1D92FB8D0();
    sub_1D9327104();
    sub_1D92973DC(v13, v8, &qword_1ECAFCFC8, &qword_1D932F800);
    swift_storeEnumTagMultiPayload();
    sub_1D92FB818();
    sub_1D9327104();
    sub_1D92933A0(v13, &qword_1ECAFCFC8, &qword_1D932F800);
  }

  return sub_1D92933A0(v6, &qword_1ECAFCFB0, &qword_1D932F7E8);
}

uint64_t sub_1D92F3DE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v51 = a2;
  v46 = a1;
  v54 = a3;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD018, &qword_1D932F828);
  MEMORY[0x1EEE9AC00](v50);
  v47 = &v41 - v4;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD020, &qword_1D932F830) - 8;
  v5 = MEMORY[0x1EEE9AC00](v52);
  v53 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v49 = &v41 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD028, &qword_1D932F838);
  v9 = v8 - 8;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v48 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v41 - v12;
  v43 = sub_1D93273B4();
  v14 = (a1 + *(type metadata accessor for AppIconStyleEffect(0) + 24));
  v16 = v14[1];
  v44 = *v14;
  v15 = v44;
  v45 = v16;
  sub_1D93275E4();
  sub_1D9326D84();
  v17 = v55;
  v18 = v56;
  v42 = v57;
  v19 = v58;
  v20 = v59;
  v21 = v60;
  v22 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD030, &qword_1D932F840) + 36)];
  v23 = *(sub_1D9326E34() + 20);
  v24 = *MEMORY[0x1E697F468];
  v25 = sub_1D9327094();
  (*(*(v25 - 8) + 104))(v22 + v23, v24, v25);
  *v22 = v15 * 0.225;
  v22[1] = v16 * 0.225;
  *(v22 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCFD8, &qword_1D932F810) + 36)) = 256;
  *v13 = v43;
  *(v13 + 1) = v17;
  v13[16] = v18;
  *(v13 + 3) = v42;
  v13[32] = v19;
  *(v13 + 5) = v20;
  *(v13 + 6) = v21;
  sub_1D9327394();
  v26 = sub_1D93273C4();

  v27 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD038, &qword_1D932F848) + 36)];
  *v27 = v26;
  *(v27 + 8) = xmmword_1D932E880;
  *(v27 + 3) = 0xC008000000000000;
  v28 = *(v9 + 44);
  v29 = *MEMORY[0x1E6981E10];
  v30 = sub_1D9327604();
  (*(*(v30 - 8) + 104))(&v13[v28], v29, v30);
  sub_1D93275E4();
  sub_1D9326D84();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCFE0, &qword_1D932F818);
  v32 = v47;
  (*(*(v31 - 8) + 16))(v47, v51, v31);
  v33 = (v32 + *(v50 + 36));
  v34 = v62;
  *v33 = v61;
  v33[1] = v34;
  v33[2] = v63;
  v64 = 0u;
  v65 = 0u;
  memset(v66, 0, 28);
  *&v66[7] = xmmword_1D932E890;
  v66[11] = 0;
  sub_1D92FB9B4();
  v35 = v49;
  sub_1D93272E4();
  sub_1D92933A0(v32, &qword_1ECAFD018, &qword_1D932F828);
  sub_1D92F439C(v46, v35 + *(v52 + 44));
  v36 = v48;
  sub_1D92973DC(v13, v48, &qword_1ECAFD028, &qword_1D932F838);
  v37 = v53;
  sub_1D92973DC(v35, v53, &qword_1ECAFD020, &qword_1D932F830);
  v38 = v54;
  sub_1D92973DC(v36, v54, &qword_1ECAFD028, &qword_1D932F838);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD048, &qword_1D932F850);
  sub_1D92973DC(v37, v38 + *(v39 + 48), &qword_1ECAFD020, &qword_1D932F830);
  sub_1D92933A0(v35, &qword_1ECAFD020, &qword_1D932F830);
  sub_1D92933A0(v13, &qword_1ECAFD028, &qword_1D932F838);
  sub_1D92933A0(v37, &qword_1ECAFD020, &qword_1D932F830);
  return sub_1D92933A0(v36, &qword_1ECAFD028, &qword_1D932F838);
}

uint64_t sub_1D92F439C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1D9327034();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D93273B4();
  sub_1D92A1DC8(v7);
  sub_1D93273E4();
  v9 = v8;
  sub_1D93273F4();
  v11 = v10 * v9;
  sub_1D9327414();
  v13 = v9 * v12;
  sub_1D9327404();
  v15 = v14;

  (*(v5 + 8))(v7, v4);
  v24 = xmmword_1D932E8A0;
  v25 = v11;
  v26 = xmmword_1D932E8B0;
  v27 = v13;
  v28 = xmmword_1D932E8C0;
  v29 = v9 * v15;
  v30 = xmmword_1D932E8D0;
  v31 = 0;
  sub_1D93272E4();
  v16 = (a1 + *(type metadata accessor for AppIconStyleEffect(0) + 24));
  v17 = *v16 * 0.225;
  v18 = v16[1] * 0.225;
  v19 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD050, &qword_1D932F858) + 36));
  v20 = *(sub_1D9326E34() + 20);
  v21 = *MEMORY[0x1E697F468];
  v22 = sub_1D9327094();
  (*(*(v22 - 8) + 104))(v19 + v20, v21, v22);
  *v19 = v17;
  v19[1] = v18;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCFD8, &qword_1D932F810);
  *(v19 + *(result + 36)) = 256;
  return result;
}

uint64_t sub_1D92F4608(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCEB0, &qword_1D932F520);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19 - v6;
  v8 = type metadata accessor for AppIconImageCache.CacheKey(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAFC910, &qword_1D932E360);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v19 - v12;
  sub_1D93280B4();
  v14 = sub_1D93280D4();
  (*(*(v14 - 8) + 56))(v13, 0, 1, v14);
  sub_1D929705C(a2, &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AppIconImageCache.CacheKey);
  (*(v5 + 16))(v7, a1, v4);
  v15 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v16 = (v10 + *(v5 + 80) + v15) & ~*(v5 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  *(v17 + 24) = 0;
  sub_1D92FAC24(&v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v15, type metadata accessor for AppIconImageCache.CacheKey);
  (*(v5 + 32))(v17 + v16, v7, v4);
  sub_1D92F49F4(0, 0, v13, &unk_1D932F530, v17);

  return sub_1D92933A0(v13, &unk_1ECAFC910, &qword_1D932E360);
}

uint64_t sub_1D92F48D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1D92F48F4, 0, 0);
}

uint64_t sub_1D92F48F4()
{
  if (qword_1ECAFC3E0 != -1)
  {
    swift_once();
  }

  v1 = v0[5];

  v2 = sub_1D92F4F68(v1);
  v4 = v3;
  v6 = v5;
  v7 = v2;

  v0[2] = v4;
  v0[3] = v6;
  v0[4] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCEB0, &qword_1D932F520);
  sub_1D9328084();
  v8 = v0[1];

  return v8();
}

uint64_t sub_1D92F49F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAFC910, &qword_1D932E360);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_1D92973DC(a3, v25 - v10, &unk_1ECAFC910, &qword_1D932E360);
  v12 = sub_1D93280D4();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1D92933A0(v11, &unk_1ECAFC910, &qword_1D932E360);
  }

  else
  {
    sub_1D93280C4();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1D9328064();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1D9327FA4() + 32;
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

uint64_t sub_1D92F4CB4(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCD38, &qword_1D932ECB0);
  sub_1D9290D60(&qword_1ECAFCF10, &qword_1ECAFCD38, &qword_1D932ECB0, MEMORY[0x1E6994140]);
  sub_1D9327F24();
  v2 = type metadata accessor for AppIconImageCache.CacheKey(0);
  v3 = *(v1 + *(v2 + 20));
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  MEMORY[0x1DA72ED00](*&v3);
  v4 = *(v1 + *(v2 + 24));
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  return MEMORY[0x1DA72ED00](*&v4);
}

uint64_t sub_1D92F4D90()
{
  sub_1D9328724();
  sub_1D92F4CB4(v1);
  return sub_1D9328764();
}

uint64_t sub_1D92F4DD4(uint64_t a1)
{
  sub_1D9328724();
  sub_1D92F4CB4(v2);
  return sub_1D9328764();
}

_DWORD *sub_1D92F4E14()
{
  type metadata accessor for AppIconImageCache();
  v0 = swift_allocObject();
  type metadata accessor for UnfairLock();
  v1 = swift_allocObject();
  result = swift_slowAlloc();
  *result = 0;
  *(v1 + 16) = result;
  v3 = MEMORY[0x1E69E7CC8];
  *(v0 + 16) = v1;
  *(v0 + 24) = v3;
  qword_1ECAFF0D8 = v0;
  return result;
}

uint64_t sub_1D92F4E84(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v3 + 16);

  os_unfair_lock_lock(v4);
  swift_beginAccess();
  v5 = *(v1 + 24);
  if (*(v5 + 16))
  {

    v6 = sub_1D931D5B4(a1);
    if (v7)
    {
      v8 = *(v5 + 56) + 24 * v6;
      v9 = *v8;
      v10 = *(v8 + 16);
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  os_unfair_lock_unlock(*(v3 + 16));

  return v9;
}

void *sub_1D92F4F68(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for AppIconImageCache.CacheKey(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v26[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDE3BF60 != -1)
  {
    swift_once();
  }

  v7 = sub_1D9326BE4();
  __swift_project_value_buffer(v7, qword_1EDE40088);
  sub_1D929705C(a1, v6, type metadata accessor for AppIconImageCache.CacheKey);
  v8 = sub_1D9326BC4();
  v9 = sub_1D9328234();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v26[0] = v11;
    *v10 = 136446210;
    v12 = sub_1D93281C4();
    v14 = v13;
    sub_1D929748C(v6, type metadata accessor for AppIconImageCache.CacheKey);
    v15 = sub_1D9293524(v12, v14, v26);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_1D928E000, v8, v9, "Compute app icon image for side length: %{public}s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x1DA72F920](v11, -1, -1);
    MEMORY[0x1DA72F920](v10, -1, -1);
  }

  else
  {

    sub_1D929748C(v6, type metadata accessor for AppIconImageCache.CacheKey);
  }

  sub_1D92F4E84(a1);
  if (v16 != 1)
  {
    return v16;
  }

  v17 = *(a1 + *(v4 + 20));
  v18 = sub_1D9326B04();
  v19 = *(v2 + 16);
  v20 = *(v19 + 16);
  v21 = v18;

  os_unfair_lock_lock(v20);
  swift_beginAccess();
  v22 = v21;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v25 = *(v2 + 24);
  *(v2 + 24) = 0x8000000000000000;
  sub_1D92F782C(v18, a1, isUniquelyReferenced_nonNull_native, v17, v17);
  *(v2 + 24) = v25;
  swift_endAccess();

  os_unfair_lock_unlock(*(v19 + 16));

  return v18;
}

void *sub_1D92F529C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, int a7)
{
  v25 = a7;
  v26 = a1;
  v12 = sub_1D9327164();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = a2;
  v29 = a3;
  v30 = a4;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCF48, &qword_1D932F5C0);
  result = MEMORY[0x1DA72DAB0](&v27);
  if (v27 == 1)
  {
    v18 = a4 & 1;
    v28 = a5;
    v29 = a6;
    v24 = v12;
    v19 = v25 & 1;
    v30 = v25 & 1;
    MEMORY[0x1DA72DAB0](&v27, v16);
    if (v27)
    {
      v20 = a2;
    }

    else
    {
      v20 = a5;
    }

    if (v27)
    {
      v21 = a3;
    }

    else
    {
      v21 = a6;
    }

    if (v27)
    {
      v19 = v18;
    }

    v22 = swift_allocObject();
    *(v22 + 16) = v20;
    *(v22 + 24) = v21;
    *(v22 + 32) = v19;

    sub_1D9327154();
    sub_1D9326D14();

    return (*(v13 + 8))(v15, v24);
  }

  return result;
}

void *sub_1D92F54D8(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  v11 = a1;
  v12 = a2;
  v13 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCF48, &qword_1D932F5C0);
  result = MEMORY[0x1DA72DAB0](&v10);
  if (v10 == 1)
  {
    v11 = a4;
    v12 = a5;
    v13 = a6 & 1;
    v10 = 1;
    return sub_1D9327514();
  }

  return result;
}

double sub_1D92F5574@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v21 = sub_1D9327444();
  v12 = sub_1D93273A4();
  v13 = sub_1D93270A4();
  v14 = a6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD058, &qword_1D932F860) + 36);
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a3;
  a4 &= 1u;
  *(v15 + 32) = a4;
  *(v15 + 40) = a5;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD060, &qword_1D932F868);
  (*(*(v16 - 8) + 16))(v14, a1, v16);
  v17 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD068, &qword_1D932F870) + 36)];
  *v17 = sub_1D92F577C;
  v17[1] = 0;
  v17[2] = sub_1D92FBA6C;
  v17[3] = v15;
  v18 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD070, &qword_1D932F878) + 36)];
  *v18 = v13;
  v18[1] = a2;
  *a6 = v21;
  a6[1] = v12;
  *&v22 = a3;
  BYTE8(v22) = a4;
  *&v23 = a5;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD078, &qword_1D932F880);
  sub_1D93274D4();
  sub_1D93275E4();
  sub_1D9326D84();
  v19 = (a6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD080, &qword_1D932F888) + 36));
  *v19 = v22;
  v19[1] = v23;
  result = *&v24;
  v19[2] = v24;
  return result;
}

uint64_t (*EnvironmentValues.controlIconHierarchicalPrimary.modify(void *a1))(uint64_t *a1, uint64_t a2)
{
  a1[2] = v1;
  a1[3] = sub_1D92F8514();
  sub_1D9327044();
  return sub_1D92F5838;
}

uint64_t (*EnvironmentValues.controlIconHierarchicalSecondary.modify(void *a1))(uint64_t *a1, uint64_t a2)
{
  a1[2] = v1;
  a1[3] = sub_1D92F8568();
  sub_1D9327044();
  return sub_1D92F58BC;
}

uint64_t sub_1D92F58E0@<X0>(uint64_t (*a1)(void)@<X2>, uint64_t *a2@<X8>)
{
  a1();
  result = sub_1D9326D94();
  *a2 = result;
  return result;
}

uint64_t (*EnvironmentValues.controlIconHierarchicalTertiary.modify(void *a1))(uint64_t *a1, uint64_t a2)
{
  a1[2] = v1;
  a1[3] = sub_1D92F85BC();
  sub_1D9327044();
  return sub_1D92F5990;
}

uint64_t sub_1D92F599C(uint64_t *a1, char a2, uint64_t a3)
{
  a1[1] = *a1;
  if ((a2 & 1) == 0)
  {
    return sub_1D9327054();
  }

  sub_1D9327054();
}

void (*EnvironmentValues.controlIconImageScale.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCC18, &qword_1D932EA28) - 8) + 64);
  if (v3)
  {
    v5[1] = swift_coroFrameAlloc();
    v5[2] = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v5[1] = malloc(v6);
    v5[2] = malloc(v6);
    v7 = malloc(v6);
  }

  v5[3] = v7;
  v5[4] = sub_1D92A1FA8();
  sub_1D9327044();
  return sub_1D92F5B4C;
}

void sub_1D92F5B4C(uint64_t **a1, char a2)
{
  v3 = *a1;
  sub_1D92973DC((*a1)[3], (*a1)[2], &qword_1ECAFCC18, &qword_1D932EA28);
  v4 = v3[3];
  v5 = v3[1];
  v6 = v3[2];
  if (a2)
  {
    sub_1D92973DC(v3[2], v3[1], &qword_1ECAFCC18, &qword_1D932EA28);
    sub_1D9327054();
    sub_1D92933A0(v6, &qword_1ECAFCC18, &qword_1D932EA28);
  }

  else
  {
    sub_1D9327054();
  }

  sub_1D92933A0(v4, &qword_1ECAFCC18, &qword_1D932EA28);
  free(v4);
  free(v6);
  free(v5);

  free(v3);
}

uint64_t sub_1D92F5C5C@<X0>(uint64_t *a2@<X8>)
{
  sub_1D93273B4();
  result = sub_1D9326D94();
  *a2 = result;
  return result;
}

uint64_t sub_1D92F5CA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1D92FBAD8();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t ControlIconViewParameters.primaryShapeStyle.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t ControlIconViewParameters.secondaryShapeStyle.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t ControlIconViewParameters.tertiaryShapeStyle.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

uint64_t ControlIconViewParameters.allowsSymbolEffects.setter(char a1)
{
  result = type metadata accessor for ControlIconViewParameters(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t ControlIconViewParameters.defaultTint.getter()
{
  type metadata accessor for ControlIconViewParameters(0);
}

uint64_t ControlIconViewParameters.defaultTint.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ControlIconViewParameters(0) + 44);

  *(v1 + v3) = a1;
  return result;
}

uint64_t ControlIconViewParameters.init(style:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  sub_1D9327124();
  *(a2 + 1) = sub_1D9326D94();
  sub_1D9327144();
  *(a2 + 2) = sub_1D9326D94();
  sub_1D9327134();
  *(a2 + 3) = sub_1D9326D94();
  v4 = type metadata accessor for ControlIconViewParameters(0);
  v5 = v4[8];
  v6 = sub_1D9327494();
  (*(*(v6 - 8) + 56))(&a2[v5], 1, 1, v6);
  v7 = v4[9];
  v8 = sub_1D9326E44();
  (*(*(v8 - 8) + 56))(&a2[v7], 1, 1, v8);
  a2[v4[10]] = 1;
  v9 = v4[11];
  if (qword_1EDE3C838 != -1)
  {
    swift_once();
  }

  *&a2[v9] = qword_1EDE400F8;
  *a2 = a1;
}

uint64_t sub_1D92F62C8(uint64_t a1, uint64_t a2, uint64_t a3, float a4)
{
  v6 = sub_1D9327354();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D93273E4();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  sub_1D93273E4();
  v21.n128_f32[0] = (v20.n128_f32[0] * 0.0721) + ((v18.n128_f32[0] * 0.2125) + (v19.n128_f32[0] * 0.7154));
  v22 = 1.0 - v17;
  v23 = (v17 * ((v15 * 0.0721) + ((v11 * 0.2125) + (v13 * 0.7154)))) + ((1.0 - v17) * v21.n128_f32[0]);
  if (vabds_f32(v23, v21.n128_f32[0]) >= a4)
  {
  }

  else
  {
    v24 = v21.n128_f32[0] < a4;
    if (v21.n128_f32[0] < v23)
    {
      v24 = (v21.n128_f32[0] + a4) <= 1.0;
    }

    v18.n128_f32[0] = (v17 * v11) + (v22 * v18.n128_f32[0]);
    v19.n128_f32[0] = (v17 * v13) + (v22 * v19.n128_f32[0]);
    v20.n128_f32[0] = (v17 * v15) + (v22 * v20.n128_f32[0]);
    v25 = -a4;
    if (v24)
    {
      v25 = a4;
    }

    v26 = v21.n128_f32[0] + v25;
    v21.n128_f32[0] = (v20.n128_f32[0] * 0.0721) + ((v18.n128_f32[0] * 0.2125) + (v19.n128_f32[0] * 0.7154));
    if (v21.n128_f32[0] != 0.0)
    {
      v21.n128_f32[0] = v26 / v21.n128_f32[0];
    }

    (*(v7 + 104))(v9, *MEMORY[0x1E69814D8], v6, v18, v19, v20, v21);
    sub_1D93273F4();
    sub_1D9327414();
    sub_1D9327404();
    return sub_1D9327424();
  }

  return a3;
}

id sub_1D92F656C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCE98, &qword_1D932F4E0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v45 - v3;
  v5 = type metadata accessor for AppIconImageCache.CacheKey(0);
  v46 = *(v5 - 8);
  v47 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v45 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCD48, &qword_1D932EDC8);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v48 = &v45 - v11;
  v12 = sub_1D93271E4();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCBD8, &qword_1D932E920);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v45 - v20;
  v22 = type metadata accessor for ControlIconView.Mode(0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v45 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D929705C(v1, v24, type metadata accessor for ControlIconView.Mode);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      v26 = sub_1D9327F74();

      v27 = [objc_opt_self() _systemImageNamed_];

      return v27;
    }

    sub_1D9297374(v24, v21, &qword_1ECAFCBD8, &qword_1D932E920);
    sub_1D92973DC(v21, v19, &qword_1ECAFCBD8, &qword_1D932E920);
    if ((*(v13 + 48))(v19, 1, v12) == 1)
    {
      sub_1D92933A0(v19, &qword_1ECAFCBD8, &qword_1D932E920);
      v34 = sub_1D9327F74();
      v27 = [objc_opt_self() systemImageNamed_];

      v35 = v21;
      v36 = &qword_1ECAFCBD8;
      v37 = &qword_1D932E920;
LABEL_22:
      sub_1D92933A0(v35, v36, v37);
      return v27;
    }

    (*(v13 + 32))(v15, v19, v12);
    v27 = sub_1D9327174();
    (*(v13 + 8))(v15, v12);
    v36 = &qword_1ECAFCBD8;
    v37 = &qword_1D932E920;
LABEL_21:
    v35 = v21;
    goto LABEL_22;
  }

  v27 = 0;
  if (EnumCaseMultiPayload != 2)
  {
    return v27;
  }

  v21 = v48;
  sub_1D9297374(v24, v48, &qword_1ECAFCD48, &qword_1D932EDC8);
  sub_1D92973DC(v21, v10, &qword_1ECAFCD48, &qword_1D932EDC8);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCD38, &qword_1D932ECB0);
  v29 = *(v28 - 8);
  v30 = 1;
  v31 = (*(v29 + 48))(v10, 1, v28);
  v32 = v47;
  if (v31 != 1)
  {
    (*(v29 + 32))(v4, v10, v28);
    v30 = 0;
    *&v4[*(v32 + 20)] = 0x4059000000000000;
    *&v4[*(v32 + 24)] = 0x4008000000000000;
  }

  v33 = v46;
  (*(v46 + 56))(v4, v30, 1, v32);
  if ((*(v33 + 48))(v4, 1, v32) == 1)
  {
    sub_1D92933A0(v4, &qword_1ECAFCE98, &qword_1D932F4E0);
    goto LABEL_19;
  }

  v38 = v45;
  sub_1D92FAC24(v4, v45, type metadata accessor for AppIconImageCache.CacheKey);
  if (qword_1ECAFC3E0 != -1)
  {
    swift_once();
  }

  v39 = sub_1D92F4F68(v38);

  if (!v39)
  {
    sub_1D929748C(v38, type metadata accessor for AppIconImageCache.CacheKey);
    goto LABEL_19;
  }

  v40 = v39;
  result = [v40 CGImage];
  if (result)
  {
    v42 = result;
    [v40 scale];
    v27 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) initWithCGImage:v42 scale:0 orientation:v43];

    sub_1D929748C(v38, type metadata accessor for AppIconImageCache.CacheKey);
    if (v27)
    {
LABEL_20:
      v36 = &qword_1ECAFCD48;
      v37 = &qword_1D932EDC8;
      goto LABEL_21;
    }

LABEL_19:
    v44 = sub_1D9327F74();
    v27 = [objc_opt_self() systemImageNamed_];

    goto LABEL_20;
  }

  __break(1u);
  return result;
}

uint64_t ControlIconView.Style.hashValue.getter()
{
  v1 = *v0;
  sub_1D9328724();
  MEMORY[0x1DA72ECE0](v1);
  return sub_1D9328764();
}

uint64_t ControlIconView.controlIconViewStyle(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  sub_1D929705C(v2, a2, type metadata accessor for ControlIconView);
  result = type metadata accessor for ControlIconView(0);
  *(a2 + *(result + 20)) = v4;
  return result;
}

uint64_t sub_1D92F6DC4(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1D92F6EBC;

  return v6(a1);
}

uint64_t sub_1D92F6EBC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1D92F6FB4@<X0>(uint64_t *a2@<X8>)
{
  result = sub_1D9326FA4();
  *a2 = result;
  return result;
}

uint64_t sub_1D92F700C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for AppIconImageCache.CacheKey(0);
  v45 = *(v5 - 8);
  v46 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCF40, &qword_1D932F5B8);
  v47 = v4;
  result = sub_1D9328564();
  v10 = result;
  if (*(v8 + 16))
  {
    v43 = v2;
    v44 = v8;
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v23 = v20 | (v11 << 6);
      v24 = *(v8 + 48);
      v49 = *(v45 + 72);
      v25 = v24 + v49 * v23;
      if (v47)
      {
        sub_1D92FAC24(v25, v7, type metadata accessor for AppIconImageCache.CacheKey);
        v26 = (*(v8 + 56) + 24 * v23);
        v27 = *v26;
        v28 = v26[1];
        v48 = v26[2];
      }

      else
      {
        sub_1D929705C(v25, v7, type metadata accessor for AppIconImageCache.CacheKey);
        v29 = (*(v8 + 56) + 24 * v23);
        v27 = *v29;
        v28 = v29[1];
        v48 = v29[2];
        v30 = v48;
      }

      sub_1D9328724();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCD38, &qword_1D932ECB0);
      sub_1D9290D60(&qword_1ECAFCF10, &qword_1ECAFCD38, &qword_1D932ECB0, MEMORY[0x1E6994140]);
      sub_1D9327F24();
      v31 = v46;
      v32 = *&v7[*(v46 + 20)];
      if (v32 == 0.0)
      {
        v32 = 0.0;
      }

      MEMORY[0x1DA72ED00](*&v32);
      v33 = *&v7[*(v31 + 24)];
      if (v33 == 0.0)
      {
        v33 = 0.0;
      }

      MEMORY[0x1DA72ED00](*&v33);
      result = sub_1D9328764();
      v34 = -1 << *(v10 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v17 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        v8 = v44;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v17 + 8 * v36);
          if (v40 != -1)
          {
            v18 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_7;
          }
        }

LABEL_40:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v35) & ~*(v17 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
      v8 = v44;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = sub_1D92FAC24(v7, *(v10 + 48) + v49 * v18, type metadata accessor for AppIconImageCache.CacheKey);
      v19 = (*(v10 + 56) + 24 * v18);
      *v19 = v27;
      v19[1] = v28;
      v19[2] = v48;
      ++*(v10 + 16);
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_40;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v47 & 1) == 0)
    {

      v3 = v43;
      goto LABEL_38;
    }

    v41 = 1 << *(v8 + 32);
    v3 = v43;
    if (v41 >= 64)
    {
      bzero(v12, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v41;
    }

    *(v8 + 16) = 0;
  }

LABEL_38:
  *v3 = v10;
  return result;
}

uint64_t sub_1D92F7450(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_1D9327774();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC4C8, &qword_1D932CBB8);
  v39 = v4;
  result = sub_1D9328564();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      sub_1D9297444(&qword_1EDE3BCE0, MEMORY[0x1E6993DC8], MEMORY[0x1E6993DD0]);
      result = sub_1D9327F14();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

void sub_1D92F782C(uint64_t a1, uint64_t a2, char a3, double a4, double a5)
{
  v6 = v5;
  v12 = type metadata accessor for AppIconImageCache.CacheKey(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v5;
  v17 = sub_1D931D5B4(a2);
  v18 = v15[2];
  v19 = (v16 & 1) == 0;
  v20 = v18 + v19;
  if (__OFADD__(v18, v19))
  {
    __break(1u);
    goto LABEL_15;
  }

  v21 = v16;
  v22 = v15[3];
  if (v22 < v20 || (a3 & 1) == 0)
  {
    if (v22 >= v20 && (a3 & 1) == 0)
    {
      sub_1D92F7D4C();
      goto LABEL_7;
    }

    sub_1D92F700C(v20, a3 & 1);
    v26 = sub_1D931D5B4(a2);
    if ((v21 & 1) == (v27 & 1))
    {
      v17 = v26;
      v23 = *v6;
      if (v21)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_1D929705C(a2, v14, type metadata accessor for AppIconImageCache.CacheKey);
      sub_1D92F7BC4(v17, v14, a1, v23, a4, a5);
      return;
    }

LABEL_15:
    sub_1D9328694();
    __break(1u);
    return;
  }

LABEL_7:
  v23 = *v6;
  if ((v21 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v24 = v23[7] + 24 * v17;
  v25 = *(v24 + 16);
  *v24 = a4;
  *(v24 + 8) = a5;
  *(v24 + 16) = a1;
}

uint64_t sub_1D92F79F8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1D9327774();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_1D9293100(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_1D92F7FA8();
      goto LABEL_7;
    }

    sub_1D92F7450(v17, a3 & 1);
    v22 = sub_1D9293100(a2);
    if ((v18 & 1) == (v23 & 1))
    {
      v14 = v22;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_1D92F7C94(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_1D9328694();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v20[7] + 8 * v14) = a1;
}

uint64_t sub_1D92F7BC4(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, double a5, double a6)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v12 = a4[6];
  v13 = type metadata accessor for AppIconImageCache.CacheKey(0);
  result = sub_1D92FAC24(a2, v12 + *(*(v13 - 8) + 72) * a1, type metadata accessor for AppIconImageCache.CacheKey);
  v15 = a4[7] + 24 * a1;
  *v15 = a5;
  *(v15 + 8) = a6;
  *(v15 + 16) = a3;
  v16 = a4[2];
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v18;
  }

  return result;
}

uint64_t sub_1D92F7C94(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_1D9327774();
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

id sub_1D92F7D4C()
{
  v1 = v0;
  v2 = type metadata accessor for AppIconImageCache.CacheKey(0);
  v28 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCF40, &qword_1D932F5B8);
  v5 = *v0;
  v6 = sub_1D9328554();
  v7 = v6;
  if (*(v5 + 16))
  {
    v27 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = *(v28 + 72) * v20;
        sub_1D929705C(*(v5 + 48) + v21, v4, type metadata accessor for AppIconImageCache.CacheKey);
        v20 *= 24;
        v22 = (*(v5 + 56) + v20);
        v23 = *v22;
        v24 = v22[1];
        v25 = v22[2];
        sub_1D92FAC24(v4, *(v7 + 48) + v21, type metadata accessor for AppIconImageCache.CacheKey);
        v26 = (*(v7 + 56) + v20);
        *v26 = v23;
        v26[1] = v24;
        v26[2] = v25;
        result = v25;
      }

      while (v15);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v27;
        goto LABEL_18;
      }

      v19 = *(v9 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

char *sub_1D92F7FA8()
{
  v1 = v0;
  v33 = sub_1D9327774();
  v35 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v32 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC4C8, &qword_1D932CBB8);
  v3 = *v0;
  v4 = sub_1D9328554();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v28 = v1;
    v29 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v34 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v30 = v35 + 32;
    v31 = v35 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v36 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v35;
        v20 = *(v35 + 72) * v18;
        v22 = v32;
        v21 = v33;
        (*(v35 + 16))(v32, *(v3 + 48) + v20, v33);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v3;
        v25 = v34;
        (*(v19 + 32))(*(v34 + 48) + v20, v22, v21);
        v26 = *(v25 + 56);
        v3 = v24;
        *(v26 + 8 * v18) = v23;

        v13 = v36;
      }

      while (v36);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v28;
        v5 = v34;
        goto LABEL_18;
      }

      v17 = *(v29 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v36 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

uint64_t sub_1D92F8228(uint64_t a1)
{
  v2 = sub_1D9327494();
  MEMORY[0x1EEE9AC00](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_1D9326E64();
}

BOOL sub_1D92F82F0(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCD38, &qword_1D932ECB0);
  sub_1D9290D60(&qword_1ECAFCF18, &qword_1ECAFCD38, &qword_1D932ECB0, MEMORY[0x1E6994150]);
  sub_1D9327FF4();
  sub_1D9327FF4();
  if (v10 == v8 && v11 == v9)
  {
  }

  else
  {
    v5 = sub_1D9328654();

    if ((v5 & 1) == 0)
    {
      return 0;
    }
  }

  v6 = type metadata accessor for AppIconImageCache.CacheKey(0);
  if (*(a1 + *(v6 + 20)) == *(a2 + *(v6 + 20)))
  {
    return *(a1 + *(v6 + 24)) == *(a2 + *(v6 + 24));
  }

  return 0;
}

uint64_t sub_1D92F8448(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCBE0, &qword_1D932E928);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void *keypath_get_2Tm@<X0>(uint64_t (*a1)(void)@<X3>, void *a3@<X8>)
{
  a1();
  result = sub_1D9327044();
  *a3 = v5;
  return result;
}

unint64_t sub_1D92F8514()
{
  result = qword_1ECAFCC28;
  if (!qword_1ECAFCC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAFCC28);
  }

  return result;
}

unint64_t sub_1D92F8568()
{
  result = qword_1ECAFCC30;
  if (!qword_1ECAFCC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAFCC30);
  }

  return result;
}

unint64_t sub_1D92F85BC()
{
  result = qword_1ECAFCC38;
  if (!qword_1ECAFCC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAFCC38);
  }

  return result;
}

unint64_t sub_1D92F8630()
{
  result = qword_1ECAFCC40;
  if (!qword_1ECAFCC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAFCC40);
  }

  return result;
}

void sub_1D92F86AC(uint64_t a1)
{
  type metadata accessor for ControlIconView.Mode(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for ControlIconViewStyle(319);
    if (v2 <= 0x3F)
    {
      sub_1D92F9C20(319, &qword_1EDE3BD18, MEMORY[0x1E69815C0], MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1D92F9C20(319, &qword_1EDE3BCF0, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
        if (v4 <= 0x3F)
        {
          sub_1D92FA0B4(319, &qword_1EDE3BE10, MEMORY[0x1E697ED18], MEMORY[0x1E69E6720]);
          if (v5 <= 0x3F)
          {
            sub_1D92F9C20(319, &qword_1EDE3BEF8, MEMORY[0x1E69815C0], MEMORY[0x1E697DCC0]);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1D92F888C(uint64_t a1)
{
  type metadata accessor for ControlIconViewStyle(319);
  if (v1 <= 0x3F)
  {
    sub_1D92FA0B4(319, &qword_1ECAFCC58, MEMORY[0x1E69816E8], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1D92FA0B4(319, &qword_1EDE3BE10, MEMORY[0x1E697ED18], MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for ControlIconView.Style(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ControlIconView.Style(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
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

  *(result + 8) = v3;
  return result;
}

unint64_t sub_1D92F8A04()
{
  result = qword_1EDE3BED0;
  if (!qword_1EDE3BED0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAFCBD0, &qword_1D932E918);
    sub_1D92F8A90();
    sub_1D92F90C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE3BED0);
  }

  return result;
}

unint64_t sub_1D92F8A90()
{
  result = qword_1EDE3BDA8;
  if (!qword_1EDE3BDA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAFCC60, &qword_1D932EBF0);
    sub_1D92A0B30();
    sub_1D92A0BBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE3BDA8);
  }

  return result;
}

unint64_t sub_1D92F8B1C()
{
  result = qword_1EDE3BE40;
  if (!qword_1EDE3BE40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAFCC78, &qword_1D932EC08);
    sub_1D92F8BA8();
    sub_1D92F8CE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE3BE40);
  }

  return result;
}

unint64_t sub_1D92F8BA8()
{
  result = qword_1EDE3BE58;
  if (!qword_1EDE3BE58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAFCC80, &qword_1D932EC10);
    sub_1D92FAF20(&qword_1EDE3BE80, &qword_1ECAFCC88, &qword_1D932EC18, sub_1D92F8C90);
    sub_1D9297444(qword_1EDE3D048, type metadata accessor for ImageScaleOverride, &unk_1D932F1A4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE3BE58);
  }

  return result;
}

unint64_t sub_1D92F8C90()
{
  result = qword_1EDE3C848[0];
  if (!qword_1EDE3C848[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDE3C848);
  }

  return result;
}

unint64_t sub_1D92F8CE4()
{
  result = qword_1EDE3D968[0];
  if (!qword_1EDE3D968[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDE3D968);
  }

  return result;
}

unint64_t sub_1D92F8D38()
{
  result = qword_1EDE3BE28;
  if (!qword_1EDE3BE28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAFCCA8, &qword_1D932EC38);
    sub_1D92F8DC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE3BE28);
  }

  return result;
}

unint64_t sub_1D92F8DC4()
{
  result = qword_1EDE3BE38;
  if (!qword_1EDE3BE38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAFCCB0, &qword_1D932EC40);
    sub_1D92F8E80();
    sub_1D9297444(qword_1EDE3D0E8, type metadata accessor for SymbolColorEffect, &unk_1D932F104);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE3BE38);
  }

  return result;
}

unint64_t sub_1D92F8E80()
{
  result = qword_1EDE3BE50;
  if (!qword_1EDE3BE50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAFCCB8, &qword_1D932EC48);
    sub_1D92F8F0C();
    sub_1D92F8CE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE3BE50);
  }

  return result;
}

unint64_t sub_1D92F8F0C()
{
  result = qword_1EDE3BE78;
  if (!qword_1EDE3BE78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAFCCC0, &qword_1D932EC50);
    sub_1D92F8FC8();
    sub_1D9297444(qword_1EDE3D048, type metadata accessor for ImageScaleOverride, &unk_1D932F1A4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE3BE78);
  }

  return result;
}

unint64_t sub_1D92F8FC8()
{
  result = qword_1EDE3BED8;
  if (!qword_1EDE3BED8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAFCCC8, &qword_1D932EC58);
    sub_1D9297444(&qword_1EDE3BC70, MEMORY[0x1E69859F0], MEMORY[0x1E69859E8]);
    sub_1D92F8C90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE3BED8);
  }

  return result;
}

unint64_t sub_1D92F90C4()
{
  result = qword_1EDE3D188;
  if (!qword_1EDE3D188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE3D188);
  }

  return result;
}

unint64_t sub_1D92F9118()
{
  result = qword_1ECAFCCE0;
  if (!qword_1ECAFCCE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAFCC20, &qword_1D932EA30);
    sub_1D92F91D0();
    sub_1D9290D60(&qword_1ECAFCD28, &qword_1ECAFCD30, &qword_1D932EC78, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAFCCE0);
  }

  return result;
}

unint64_t sub_1D92F91D0()
{
  result = qword_1ECAFCCE8;
  if (!qword_1ECAFCCE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAFCC08, &qword_1D932EA18);
    sub_1D92F9288();
    sub_1D9290D60(&qword_1ECAFCD20, &qword_1ECAFCC10, &qword_1D932EA20, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAFCCE8);
  }

  return result;
}

unint64_t sub_1D92F9288()
{
  result = qword_1ECAFCCF0;
  if (!qword_1ECAFCCF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAFCC00, &qword_1D932E9E8);
    sub_1D92F9340();
    sub_1D9290D60(&qword_1ECAFCD10, &qword_1ECAFCD18, &qword_1D932EC70, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAFCCF0);
  }

  return result;
}

unint64_t sub_1D92F9340()
{
  result = qword_1ECAFCCF8;
  if (!qword_1ECAFCCF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAFCBF8, &qword_1D932E9B8);
    sub_1D92F93F8();
    sub_1D9290D60(&qword_1ECAFCD10, &qword_1ECAFCD18, &qword_1D932EC70, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAFCCF8);
  }

  return result;
}

unint64_t sub_1D92F93F8()
{
  result = qword_1ECAFCD00;
  if (!qword_1ECAFCD00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAFCBF0, &qword_1D932E988);
    sub_1D92F94B0();
    sub_1D9290D60(&qword_1ECAFCD10, &qword_1ECAFCD18, &qword_1D932EC70, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAFCD00);
  }

  return result;
}

unint64_t sub_1D92F94B0()
{
  result = qword_1ECAFCD08;
  if (!qword_1ECAFCD08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAFCBE8, &qword_1D932E958);
    sub_1D9297444(qword_1EDE3D458, type metadata accessor for ControlIconView, &protocol conformance descriptor for ControlIconView);
    sub_1D9290D60(&qword_1ECAFCD10, &qword_1ECAFCD18, &qword_1D932EC70, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAFCD08);
  }

  return result;
}

uint64_t sub_1D92F9598(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_1D92F95F4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
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
      *(result + 16) = a2;
    }
  }

  return result;
}

void sub_1D92F96A0(uint64_t a1)
{
  sub_1D92F971C(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1D92F971C(uint64_t a1)
{
  if (!qword_1EDE3DA28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAFCD40, &qword_1D932ECC8);
    sub_1D9290D60(&qword_1EDE3DA50, &qword_1ECAFCD40, &qword_1D932ECC8, MEMORY[0x1E69940B0]);
    sub_1D9290D60(&qword_1EDE3DA38, &qword_1ECAFCD40, &qword_1D932ECC8, MEMORY[0x1E69940D8]);
    sub_1D9290D60(&qword_1EDE3DA48, &qword_1ECAFCD40, &qword_1D932ECC8, MEMORY[0x1E69940B8]);
    sub_1D9290D60(&qword_1EDE3DA40, &qword_1ECAFCD40, &qword_1D932ECC8, MEMORY[0x1E69940C0]);
    v1 = sub_1D9326B34();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDE3DA28);
    }
  }
}

uint64_t sub_1D92F98B4(uint64_t a1, int a2)
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

uint64_t sub_1D92F98FC(uint64_t result, int a2, int a3)
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

void sub_1D92F9974(uint64_t a1)
{
  sub_1D92F9F48(319, &qword_1EDE3DA18, &qword_1ECAFCD38, &qword_1D932ECB0, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for ControlIconViewStyle(319);
    if (v2 <= 0x3F)
    {
      sub_1D92FA0B4(319, &qword_1EDE3BF00, MEMORY[0x1E697F228], MEMORY[0x1E697DCC0]);
      if (v3 <= 0x3F)
      {
        sub_1D92F9F48(319, &qword_1EDE3BCF8, &qword_1ECAFCD58, &qword_1D932EDE8, MEMORY[0x1E6981790]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1D92F9AE0(uint64_t a1)
{
  sub_1D92F9C20(319, &qword_1EDE3BD00, MEMORY[0x1E6981748], MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for ControlIconViewStyle(319);
    if (v2 <= 0x3F)
    {
      sub_1D92FA0B4(319, &qword_1EDE3BBF8, type metadata accessor for CGSize, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1D92FA0B4(319, &qword_1EDE3BF00, MEMORY[0x1E697F228], MEMORY[0x1E697DCC0]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1D92F9C20(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1D92F9C98(uint64_t a1)
{
  sub_1D92FA0B4(319, &qword_1EDE3BF00, MEMORY[0x1E697F228], MEMORY[0x1E697DCC0]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for ControlIconViewStyle(319);
    if (v2 <= 0x3F)
    {
      sub_1D92F9C20(319, &qword_1EDE3BD18, MEMORY[0x1E69815C0], MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1D92F9D90(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D92F9DD8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1D92F9E50(uint64_t a1)
{
  type metadata accessor for ControlIconViewStyle(319);
  if (v1 <= 0x3F)
  {
    sub_1D92FA0B4(319, &qword_1EDE3BF00, MEMORY[0x1E697F228], MEMORY[0x1E697DCC0]);
    if (v2 <= 0x3F)
    {
      sub_1D92F9F48(319, &qword_1EDE3BF08, &qword_1ECAFCD60, &qword_1D932EED8, MEMORY[0x1E697BD78]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1D92F9F48(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1D92F9FBC(uint64_t a1)
{
  sub_1D92FA03C();
  if (v1 <= 0x3F)
  {
    sub_1D92FA118();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1D92FA03C()
{
  if (!qword_1EDE3BD38)
  {
    sub_1D92FA0B4(0, &qword_1EDE3BD30, MEMORY[0x1E697CB10], MEMORY[0x1E69E6720]);
    if (!v1)
    {
      atomic_store(v0, &qword_1EDE3BD38);
    }
  }
}

void sub_1D92FA0B4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D92FA118()
{
  if (!qword_1EDE3DA20)
  {
    sub_1D92F9F48(0, &qword_1EDE3DA18, &qword_1ECAFCD38, &qword_1D932ECB0, MEMORY[0x1E69E6720]);
    if (!v1)
    {
      atomic_store(v0, &qword_1EDE3DA20);
    }
  }
}

unint64_t sub_1D92FA190()
{
  result = qword_1ECAFCD68;
  if (!qword_1ECAFCD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAFCD68);
  }

  return result;
}

unint64_t sub_1D92FA2F4()
{
  result = qword_1EDE3BEB0;
  if (!qword_1EDE3BEB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAFCE38, &qword_1D932F448);
    sub_1D9290D60(&qword_1EDE3BD80, &qword_1ECAFCE28, &qword_1D932F438, MEMORY[0x1E697FDF8]);
    sub_1D9290D60(&qword_1EDE3BD50, &qword_1ECAFCE40, &qword_1D932F450, MEMORY[0x1E6980608]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE3BEB0);
  }

  return result;
}

unint64_t sub_1D92FA3D8()
{
  result = qword_1EDE3BE68;
  if (!qword_1EDE3BE68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAFCDE8, &qword_1D932F3F8);
    sub_1D92FA490();
    sub_1D9290D60(&qword_1EDE3BDF8, &qword_1ECAFCE48, &qword_1D932F458, MEMORY[0x1E697F548]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE3BE68);
  }

  return result;
}

unint64_t sub_1D92FA490()
{
  result = qword_1EDE3BEA0;
  if (!qword_1EDE3BEA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAFCDE0, &qword_1D932F3F0);
    sub_1D9290D60(&qword_1EDE3BD80, &qword_1ECAFCE28, &qword_1D932F438, MEMORY[0x1E697FDF8]);
    sub_1D9290D60(&qword_1EDE3BD48, &qword_1ECAFCE50, &qword_1D932F460, MEMORY[0x1E6980608]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE3BEA0);
  }

  return result;
}

unint64_t sub_1D92FA574()
{
  result = qword_1EDE3BEA8;
  if (!qword_1EDE3BEA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAFCDC8, &qword_1D932F3D8);
    sub_1D9290D60(&qword_1EDE3BD80, &qword_1ECAFCE28, &qword_1D932F438, MEMORY[0x1E697FDF8]);
    sub_1D9290D60(&qword_1EDE3BD58, &qword_1ECAFCE58, &qword_1D932F468, MEMORY[0x1E6980608]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE3BEA8);
  }

  return result;
}

unint64_t sub_1D92FA658()
{
  result = qword_1ECAFCE60;
  if (!qword_1ECAFCE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAFCE60);
  }

  return result;
}

unint64_t sub_1D92FA6AC()
{
  result = qword_1ECAFCE80;
  if (!qword_1ECAFCE80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAFCE78, &unk_1D932F480);
    sub_1D92FA768();
    sub_1D9297444(&qword_1ECAFCE90, type metadata accessor for AppIconStyleEffect, &unk_1D932F760);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAFCE80);
  }

  return result;
}

unint64_t sub_1D92FA768()
{
  result = qword_1EDE3B2C8;
  if (!qword_1EDE3B2C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAFCE88, &qword_1D932F4D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE3B2C8);
  }

  return result;
}

uint64_t sub_1D92FA80C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
    return MEMORY[0x1EEE66BE0](a1, a2);
  }

  return a1;
}

uint64_t sub_1D92FA81C(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for AppIconView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1D92F2E18(a1, a2, v6);
}

unint64_t sub_1D92FA89C()
{
  result = qword_1ECAFCEA8;
  if (!qword_1ECAFCEA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAFCE98, &qword_1D932F4E0);
    sub_1D9297444(&qword_1ECAFCD70, type metadata accessor for AppIconImageCache.CacheKey, &unk_1D932EFAC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAFCEA8);
  }

  return result;
}

uint64_t sub_1D92FA950(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for AppIconView(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCE98, &qword_1D932F4E0) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1D92D9CEC;

  return sub_1D92F30D4(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_1D92FAAAC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D92DA198;

  return sub_1D92F6DC4(a1, v4);
}

uint64_t sub_1D92FAB64(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D92D9CEC;

  return sub_1D92F6DC4(a1, v4);
}

uint64_t sub_1D92FAC24(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D92FAC8C(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for AppIconImageCache.CacheKey(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCEB0, &qword_1D932F520) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1D92DA198;

  return sub_1D92F48D4(a1, v10, v11, v1 + v6, v1 + v9);
}

unint64_t sub_1D92FADE8()
{
  result = qword_1EDE3D190;
  if (!qword_1EDE3D190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE3D190);
  }

  return result;
}

unint64_t sub_1D92FAE3C()
{
  result = qword_1EDE3BE60;
  if (!qword_1EDE3BE60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAFCEE8, &qword_1D932F578);
    sub_1D92FAF20(&qword_1EDE3BE88, &qword_1ECAFCEF0, &qword_1D932F580, sub_1D92F8CE4);
    sub_1D9290D60(&qword_1EDE3BD60, &qword_1ECAFCEF8, &qword_1D932F588, MEMORY[0x1E6980490]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE3BE60);
  }

  return result;
}

uint64_t sub_1D92FAF20(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t objectdestroy_170Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 57, 7);
}

uint64_t sub_1D92FB03C(void (*a1)(void), uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{

  a1(*(v3 + 24));

  return a3(v3, a2, 7);
}

uint64_t __swift_get_extra_inhabitant_index_60Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v8 = *(*(v7 - 8) + 48);

  return v8(a1, a2, v7);
}

uint64_t __swift_store_extra_inhabitant_index_61Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v9 = *(*(v8 - 8) + 56);

  return v9(a1, a2, a2, v8);
}

void sub_1D92FB1D8(uint64_t a1)
{
  sub_1D92FA0B4(319, &qword_1EDE3BF00, MEMORY[0x1E697F228], MEMORY[0x1E697DCC0]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for ControlIconViewStyle(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for CGSize(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1D92FB2A4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_1D92FB300(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

unint64_t sub_1D92FB364()
{
  result = qword_1EDE3BE90;
  if (!qword_1EDE3BE90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAFCD88, &qword_1D932F338);
    sub_1D9290D60(&qword_1EDE3BD70, &qword_1ECAFCD80, &qword_1D932F330, MEMORY[0x1E697FDF8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE3BE90);
  }

  return result;
}

unint64_t sub_1D92FB41C()
{
  result = qword_1EDE3BE98;
  if (!qword_1EDE3BE98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAFCD90, &qword_1D932F370);
    sub_1D9290D60(&qword_1EDE3BD78, &qword_1ECAFCDA0, &qword_1D932F380, MEMORY[0x1E697FDF8]);
    sub_1D9290D60(&qword_1EDE3BD20, &qword_1ECAFCD98, &qword_1D932F378, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE3BE98);
  }

  return result;
}

unint64_t sub_1D92FB500()
{
  result = qword_1EDE3BEC8;
  if (!qword_1EDE3BEC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAFCDB8, &qword_1D932F3C8);
    sub_1D9290D60(&qword_1EDE3BD90, &qword_1ECAFCDB0, &qword_1D932F3C0, MEMORY[0x1E697FDF8]);
    sub_1D9290D60(&qword_1EDE3BD28, &qword_1ECAFC808, &qword_1D932DA60, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE3BEC8);
  }

  return result;
}

unint64_t sub_1D92FB5E4()
{
  result = qword_1EDE3BDA0;
  if (!qword_1EDE3BDA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAFCF90, &qword_1D932F6C0);
    sub_1D92A43A4();
    sub_1D9290D60(&qword_1EDE3BD80, &qword_1ECAFCE28, &qword_1D932F438, MEMORY[0x1E697FDF8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE3BDA0);
  }

  return result;
}

unint64_t sub_1D92FB69C()
{
  result = qword_1ECAFCF98;
  if (!qword_1ECAFCF98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAFCFA0, &qword_1D932F6C8);
    sub_1D92FA6AC();
    sub_1D92A092C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAFCF98);
  }

  return result;
}

unint64_t sub_1D92FB728()
{
  result = qword_1EDE3BDC0;
  if (!qword_1EDE3BDC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAFCFA8, &qword_1D932F6D0);
    sub_1D92A1504();
    sub_1D9290D60(&qword_1EDE3BD88, &qword_1ECAFCEE0, &qword_1D932F570, MEMORY[0x1E697FDF8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE3BDC0);
  }

  return result;
}

unint64_t sub_1D92FB818()
{
  result = qword_1ECAFCFE8;
  if (!qword_1ECAFCFE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAFCFC8, &qword_1D932F800);
    sub_1D9290D60(&qword_1ECAFCFF0, &qword_1ECAFCFD0, &qword_1D932F808, MEMORY[0x1E6981880]);
    sub_1D92FB8D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAFCFE8);
  }

  return result;
}

unint64_t sub_1D92FB8D0()
{
  result = qword_1ECAFCFF8;
  if (!qword_1ECAFCFF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAFCFB0, &qword_1D932F7E8);
    sub_1D9290D60(&qword_1ECAFD000, &qword_1ECAFCFE0, &qword_1D932F818, MEMORY[0x1E697FDF8]);
    sub_1D9290D60(&qword_1ECAFD008, &qword_1ECAFCFD8, &qword_1D932F810, MEMORY[0x1E697DDB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAFCFF8);
  }

  return result;
}

unint64_t sub_1D92FB9B4()
{
  result = qword_1ECAFD040;
  if (!qword_1ECAFD040)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAFD018, &qword_1D932F828);
    sub_1D9290D60(&qword_1ECAFD000, &qword_1ECAFCFE0, &qword_1D932F818, MEMORY[0x1E697FDF8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAFD040);
  }

  return result;
}

unint64_t sub_1D92FBAD8()
{
  result = qword_1ECAFD088;
  if (!qword_1ECAFD088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAFD088);
  }

  return result;
}

unint64_t sub_1D92FBB2C()
{
  result = qword_1ECAFD090;
  if (!qword_1ECAFD090)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAFD098, &qword_1D932F890);
    sub_1D92FB818();
    sub_1D92FB8D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAFD090);
  }

  return result;
}

unint64_t sub_1D92FBBB8()
{
  result = qword_1ECAFD0A0;
  if (!qword_1ECAFD0A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAFD080, &qword_1D932F888);
    sub_1D92FBC44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAFD0A0);
  }

  return result;
}

unint64_t sub_1D92FBC44()
{
  result = qword_1ECAFD0A8;
  if (!qword_1ECAFD0A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAFD058, &qword_1D932F860);
    sub_1D92FBCFC();
    sub_1D9290D60(&unk_1ECAFD0C0, &qword_1ECAFD070, &qword_1D932F878, MEMORY[0x1E697EC18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAFD0A8);
  }

  return result;
}

unint64_t sub_1D92FBCFC()
{
  result = qword_1ECAFD0B0;
  if (!qword_1ECAFD0B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAFD0B8, &qword_1D932F898);
    sub_1D9290D60(&qword_1EDE3BD60, &qword_1ECAFCEF8, &qword_1D932F588, MEMORY[0x1E6980490]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAFD0B0);
  }

  return result;
}

void sub_1D92FBDC8(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_1D93267C4();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

id CHUISControlInstance.control.getter()
{
  v1 = [v0 instanceIdentity];
  v2 = [v1 control];

  return v2;
}

id CHUISControlInstance.contentType.getter()
{
  v1 = [v0 instanceIdentity];
  v2 = [v1 contentType];

  return v2;
}

uint64_t CHUISControlInstance.visibility.getter()
{
  v1 = OBJC_IVAR___CHUISControlInstance_visibility;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t CHUISControlInstance.visibility.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___CHUISControlInstance_visibility;
  swift_beginAccess();
  *(v1 + v3) = a1;
  v4 = v1 + OBJC_IVAR___CHUISControlInstance__adapter;
  swift_beginAccess();
  v5 = *(v4 + 24);
  v6 = *(v4 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v4, v5);
  (*(v6 + 88))(a1, v5, v6);
  return swift_endAccess();
}

char *CHUISControlInstance.configuration.getter()
{
  v1 = (v0 + OBJC_IVAR___CHUISControlInstance__adapter);
  swift_beginAccess();
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  (*(v3 + 56))(v12, v2, v3);
  v4 = v12[0];
  LOBYTE(v2) = BYTE1(v12[0]);
  v5 = v12[1];
  v6 = v13;
  v7 = v14;
  v8 = v15;
  swift_endAccess();
  v9 = [objc_allocWithZone(CHUISControlInstanceConfiguration) init];
  v10 = &v9[OBJC_IVAR___CHUISControlInstanceConfiguration__configuration];
  *v10 = v4;
  v10[1] = v2;
  *(v10 + 1) = v5;
  v10[16] = v6;
  *(v10 + 3) = v7;
  *(v10 + 4) = v8;

  return v9;
}

uint64_t CHUISControlInstance.descriptor.getter()
{
  v1 = (v0 + OBJC_IVAR___CHUISControlInstance__adapter);
  swift_beginAccess();
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = (*(v3 + 32))(v2, v3);
  swift_endAccess();
  return v4;
}

uint64_t CHUISControlInstance.delegate.setter(uint64_t a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

_BYTE *CHUISControlInstance.init(control:)(void *a1)
{
  v3 = [objc_allocWithZone(MEMORY[0x1E6994270]) initWithControl:a1 contentType:0 hostIdentifier:0 configurationIdentifier:0];
  v4 = [v1 initWithInstanceIdentity_];
  v4[OBJC_IVAR___CHUISControlInstance__implicitlyActivateOnObserverRegistration] = 1;
  v5 = &v4[OBJC_IVAR___CHUISControlInstance__adapter];
  swift_beginAccess();
  v6 = *(v5 + 24);
  v7 = *(v5 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v5, v6);
  v8 = *(v7 + 16);
  v9 = v4;
  v8(1, v6, v7);
  swift_endAccess();

  return v9;
}

id CHUISControlInstance.init(control:contentType:)(void *a1, uint64_t a2)
{
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithControl:a1 contentType:a2];

  return v3;
}

{
  v4 = [objc_allocWithZone(MEMORY[0x1E6994270]) initWithControl:a1 contentType:a2 hostIdentifier:0 configurationIdentifier:0];
  v5 = [v2 initWithInstanceIdentity_];

  return v5;
}

id CHUISControlInstance.init(instanceIdentity:)(uint64_t a1)
{
  swift_unknownObjectWeakInit();
  v1[OBJC_IVAR___CHUISControlInstance__implicitlyActivateOnObserverRegistration] = 0;
  v3 = type metadata accessor for EmptyControlInstanceAdapter();
  v4 = swift_allocObject();
  v5 = &v1[OBJC_IVAR___CHUISControlInstance__adapter];
  v5[3] = v3;
  v5[4] = &off_1F54C1CA0;
  *v5 = v4;
  *&v1[OBJC_IVAR___CHUISControlInstance_instanceIdentity] = a1;
  *&v1[OBJC_IVAR___CHUISControlInstance_visibility] = 0;
  v7.receiver = v1;
  v7.super_class = CHUISControlInstance;
  return objc_msgSendSuper2(&v7, sel_init);
}

Swift::Void __swiftcall CHUISControlInstance.activate()()
{
  v1 = OBJC_IVAR___CHUISControlInstance__adapter;
  swift_beginAccess();
  sub_1D929CF00(v0 + v1, v4);
  v2 = v5;
  v3 = v6;
  __swift_project_boxed_opaque_existential_1(v4, v5);
  (*(v3 + 112))(v2, v3);
  __swift_destroy_boxed_opaque_existential_1Tm(v4);
}

Swift::Void __swiftcall CHUISControlInstance.invalidate()()
{
  v1 = OBJC_IVAR___CHUISControlInstance__adapter;
  swift_beginAccess();
  sub_1D929CF00(v0 + v1, v4);
  v2 = v5;
  v3 = v6;
  __swift_project_boxed_opaque_existential_1(v4, v5);
  (*(v3 + 120))(v2, v3);
  __swift_destroy_boxed_opaque_existential_1Tm(v4);
}

void CHUISControlInstance.modifyConfiguration(_:)(void (*a1)())
{
  v3 = [v1 configuration];
  [v3 mutableCopy];

  sub_1D93283A4();
  swift_unknownObjectRelease();
  type metadata accessor for CHUISMutableControlInstanceConfiguration(0);
  swift_dynamicCast();
  a1();
  [v4 copy];
  sub_1D93283A4();
  swift_unknownObjectRelease();
  type metadata accessor for CHUISControlInstanceConfiguration(0);
  swift_dynamicCast();
  [v1 setConfiguration_];
}

uint64_t CHUISControlInstance.performControlAction(completion:)(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR___CHUISControlInstance__adapter;
  swift_beginAccess();
  sub_1D929CF00(v2 + v5, v9);
  v6 = v10;
  v7 = v11;
  __swift_project_boxed_opaque_existential_1(v9, v10);
  (*(v7 + 128))(a1, a2, v6, v7);
  return __swift_destroy_boxed_opaque_existential_1Tm(v9);
}

uint64_t CHUISControlInstance.registerObserver(_:)(uint64_t a1)
{
  v3 = OBJC_IVAR___CHUISControlInstance__adapter;
  swift_beginAccess();
  sub_1D929CF00(v1 + v3, v7);
  v4 = v8;
  v5 = v9;
  __swift_project_boxed_opaque_existential_1(v7, v8);
  (*(v5 + 136))(a1, v4, v5);
  return __swift_destroy_boxed_opaque_existential_1Tm(v7);
}

uint64_t CHUISControlInstance.unregisterObserver(_:)(uint64_t a1)
{
  v3 = OBJC_IVAR___CHUISControlInstance__adapter;
  swift_beginAccess();
  sub_1D929CF00(v1 + v3, v7);
  v4 = v8;
  v5 = v9;
  __swift_project_boxed_opaque_existential_1(v7, v8);
  (*(v5 + 144))(a1, v4, v5);
  return __swift_destroy_boxed_opaque_existential_1Tm(v7);
}

_BYTE *sub_1D92FDBD4(uint64_t a1, uint64_t a2)
{
  v3 = [objc_allocWithZone(MEMORY[0x1E6994270]) initWithControl:a1 contentType:0 hostIdentifier:0 configurationIdentifier:0];
  v4 = [swift_getObjCClassFromMetadata() instanceOfType:a2 instanceIdentity:v3];
  v4[OBJC_IVAR___CHUISControlInstance__implicitlyActivateOnObserverRegistration] = 1;
  v5 = &v4[OBJC_IVAR___CHUISControlInstance__adapter];
  swift_beginAccess();
  v6 = *(v5 + 24);
  v7 = *(v5 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v5, v6);
  (*(v7 + 16))(1, v6, v7);
  swift_endAccess();

  return v4;
}

uint64_t sub_1D92FDF9C(uint64_t a1)
{
  result = sub_1D9328374();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_1D92FE0A8()
{
  v1 = *v0;
  swift_beginAccess();
  (*(*(v1 + 104) + 88))(*(v1 + 80));
  return swift_endAccess();
}

uint64_t sub_1D92FE150(uint64_t a1)
{
  v2 = *v1;
  v3 = *(a1 + 1);
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v8 = v4;
  v9 = v5;
  v10 = *(a1 + 24);
  swift_beginAccess();
  (*(*(v2 + 104) + 96))(v7, *(v2 + 80));
  return swift_endAccess();
}

uint64_t sub_1D92FE21C(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v10 - v5;
  v7 = *(v2 + 160);
  swift_beginAccess();
  (*(v4 + 16))(v6, v1 + v7, v3);
  v8 = (*(*(v2 + 104) + 48))(v3);
  (*(v4 + 8))(v6, v3);
  return v8;
}

uint64_t sub_1D92FE368()
{
  v1 = *v0;
  v2 = *(v0 + *(*v0 + 144));
  swift_beginAccess();
  (*(*(v1 + 104) + 72))(v2, *(v1 + 80));
  return swift_endAccess();
}

uint64_t sub_1D92FE440()
{
  v1 = *v0;
  v2 = *(v0 + *(*v0 + 152));
  swift_beginAccess();
  (*(*(v1 + 96) + 16))(v2, *(v1 + 80));
  return swift_endAccess();
}

uint64_t sub_1D92FE518(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v18 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAFC910, &qword_1D932E360);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v18 - v8;
  BSDispatchQueueAssertMain();
  v10 = *v1;
  v11 = *(*v1 + 176);
  if (!*(v1 + v11))
  {
    v12 = sub_1D93280D4();
    (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
    v13 = swift_allocObject();
    swift_weakInit();
    v14 = swift_allocObject();
    *(v14 + 16) = v3;
    *(v14 + 24) = *(v2 + 88);
    *(v14 + 32) = *(v2 + 96);
    *(v14 + 48) = *(v2 + 112);
    *(v14 + 56) = v13;
    v15 = sub_1D9328194();
    sub_1D92933A0(v9, &unk_1ECAFC910, &qword_1D932E360);
    *(v1 + v11) = v15;

    v10 = *v1;
  }

  v16 = *(v10 + 160);
  swift_beginAccess();
  (*(v4 + 16))(v6, v1 + v16, v3);
  (*(*(v2 + 104) + 152))(v3);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1D92FE7D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a3;
  v6[10] = a6;
  v6[8] = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6[11] = AssociatedTypeWitness;
  v6[12] = *(AssociatedTypeWitness - 8);
  v6[13] = swift_task_alloc();
  sub_1D9328374();
  v6[14] = swift_task_alloc();
  v9 = sub_1D9328174();
  v6[15] = v9;
  v6[16] = *(v9 - 8);
  v6[17] = swift_task_alloc();
  v6[18] = *(a3 - 8);
  v6[19] = swift_task_alloc();
  v10 = sub_1D9328164();
  v6[20] = v10;
  v6[21] = *(v10 - 8);
  v6[22] = swift_task_alloc();
  v6[23] = sub_1D93280A4();
  v6[24] = sub_1D9328094();
  v12 = sub_1D9328064();
  v6[25] = v12;
  v6[26] = v11;

  return MEMORY[0x1EEE6DFA0](sub_1D92FEA34, v12, v11);
}

uint64_t sub_1D92FEA34()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[27] = Strong;
  if (Strong)
  {
    v3 = v0[18];
    v2 = v0[19];
    v5 = v0[16];
    v4 = v0[17];
    v6 = v0[15];
    v8 = v0[9];
    v7 = v0[10];
    v9 = *(*Strong + 160);
    v10 = Strong;
    swift_beginAccess();
    (*(v3 + 16))(v2, v10 + v9, v8);
    (*(v7 + 128))(v8, v7);
    (*(v3 + 8))(v2, v8);
    sub_1D9328144();
    (*(v5 + 8))(v4, v6);
    v11 = sub_1D9328094();
    v0[28] = v11;
    v12 = swift_task_alloc();
    v0[29] = v12;
    *v12 = v0;
    v12[1] = sub_1D92FEC7C;
    v13 = v0[20];
    v14 = v0[14];
    v15 = MEMORY[0x1E69E85E0];

    return MEMORY[0x1EEE6D9C8](v14, v11, v15, v13);
  }

  else
  {

    v16 = v0[1];

    return v16();
  }
}

uint64_t sub_1D92FEC7C()
{
  v1 = *v0;

  v2 = *(v1 + 208);
  v3 = *(v1 + 200);

  return MEMORY[0x1EEE6DFA0](sub_1D92FEDC0, v3, v2);
}

uint64_t sub_1D92FEDC0()
{
  v1 = v0[14];
  v2 = v0[11];
  v3 = v0[12];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(v0[21] + 8))(v0[22], v0[20]);

    v4 = v0[1];

    return v4();
  }

  else
  {
    (*(v3 + 32))(v0[13], v1, v2);
    if ((sub_1D93281A4() & 1) == 0)
    {
      sub_1D92FFFF0(v0[13]);
    }

    (*(v0[12] + 8))(v0[13], v0[11]);
    v6 = sub_1D9328094();
    v0[28] = v6;
    v7 = swift_task_alloc();
    v0[29] = v7;
    *v7 = v0;
    v7[1] = sub_1D92FEC7C;
    v8 = v0[20];
    v9 = v0[14];
    v10 = MEMORY[0x1E69E85E0];

    return MEMORY[0x1EEE6D9C8](v9, v6, v10, v8);
  }
}

uint64_t sub_1D92FEFA0()
{
  v1 = v0;
  v2 = *v0;
  v3 = v2[11];
  v4 = sub_1D9328374();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v17[-v7];
  v9 = v2[10];
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v12 = &v17[-v11];
  BSDispatchQueueAssertMain();
  v13 = *(*v1 + 160);
  swift_beginAccess();
  (*(v10 + 16))(v12, &v1[v13], v9);
  (*(v2[13] + 160))(v9);
  (*(v10 + 8))(v12, v9);
  v14 = *(*v1 + 176);
  if (*&v1[v14])
  {

    sub_1D9328184();
  }

  *&v1[v14] = 0;

  [*&v1[*(*v1 + 168)] removeAllObjects];
  (*(*(v3 - 8) + 56))(v8, 1, 1, v3);
  v15 = *(*v1 + 120);
  swift_beginAccess();
  (*(v5 + 40))(&v1[v15], v8, v4);
  return swift_endAccess();
}

uint64_t sub_1D92FF290(uint64_t (*a1)(void), uint64_t a2)
{
  v3 = v2;
  v6 = *v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAFC910, &qword_1D932E360);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v26 - v9;
  v11 = *(v6 + 80);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v14 = &v26 - v13;
  BSDispatchQueueAssertMain();
  v15 = *(*v3 + 160);
  swift_beginAccess();
  (*(v12 + 16))(v14, &v3[v15], v11);
  type metadata accessor for ControlInstanceButton(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_13;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_13;
  }

  v17 = Strong;
  v18 = [Strong delegate];
  if (!v18)
  {

    goto LABEL_13;
  }

  v19 = v18;
  v20 = sub_1D92FF63C(v3);
  if (!v20)
  {
    v20 = sub_1D92FF5B4(v3);
    if (!v20)
    {

      swift_unknownObjectRelease();
      goto LABEL_13;
    }
  }

  v21 = v20;
  if (![v19 respondsToSelector_])
  {

    swift_unknownObjectRelease();
    goto LABEL_13;
  }

  v22 = [v19 controlInstance:v17 handlePerformAction:v21];

  result = swift_unknownObjectRelease();
  if ((v22 & 1) == 0)
  {
LABEL_13:
    v24 = sub_1D93280D4();
    (*(*(v24 - 8) + 56))(v10, 1, 1, v24);
    v25 = swift_allocObject();
    v25[2] = v3;
    v25[3] = a1;
    v25[4] = a2;

    sub_1D92E5ECC(a1, a2);
    sub_1D9328194();

    return sub_1D92933A0(v10, &unk_1ECAFC910, &qword_1D932E360);
  }

  if (a1)
  {
    return a1(0);
  }

  return result;
}

id sub_1D92FF5B4(uint64_t a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v2 = Strong;
  v3 = [Strong control];

  v4 = [v3 intentReference];
  return v4;
}

id sub_1D92FF63C(char *a1)
{
  v2 = *a1;
  v3 = sub_1D9327A94();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAFD180, &unk_1D932E7E0);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = v23 - v9;
  v11 = *(v2 + 80);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v14 = v23 - v13;
  v15 = *(v2 + 160);
  swift_beginAccess();
  (*(v12 + 16))(v14, &a1[v15], v11);
  type metadata accessor for ControlInstanceButton(0);
  if (swift_dynamicCast())
  {
    v16 = v23[0];
    v17 = *(*v23[0] + 112);
    swift_beginAccess();
    sub_1D9300AE8(v16 + v17, v10);

    v18 = type metadata accessor for ControlInstanceButton.ViewModel(0);
    if ((*(*(v18 - 8) + 48))(v10, 1, v18) || (v19 = *(v18 + 68), (*(v4 + 48))(&v10[v19], 1, v3)))
    {
      sub_1D92933A0(v10, &unk_1ECAFD180, &unk_1D932E7E0);
    }

    else
    {
      (*(v4 + 16))(v6, &v10[v19], v3);
      sub_1D92933A0(v10, &unk_1ECAFD180, &unk_1D932E7E0);
      v21 = sub_1D9327A84();
      (*(v4 + 8))(v6, v3);
      if (v21)
      {
        v22 = [objc_allocWithZone(MEMORY[0x1E69942D0]) initWithIntent_];

        return v22;
      }
    }
  }

  return 0;
}

uint64_t sub_1D92FF980(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a3;
  v4[7] = a4;
  v4[5] = a2;
  v5 = *a2;
  v4[8] = *a2;
  v6 = *(v5 + 80);
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();
  sub_1D93280A4();
  v4[12] = sub_1D9328094();
  v8 = sub_1D9328064();
  v4[13] = v8;
  v4[14] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1D92FFAB0, v8, v7);
}

uint64_t sub_1D92FFAB0()
{
  v2 = v0[10];
  v1 = v0[11];
  v4 = v0[8];
  v3 = v0[9];
  v5 = v0[5];
  v6 = *(*v5 + 160);
  swift_beginAccess();
  (*(v2 + 16))(v1, v5 + v6, v3);
  v7 = *(v4 + 104);
  v11 = (*(v7 + 136) + **(v7 + 136));
  v8 = swift_task_alloc();
  v0[15] = v8;
  *v8 = v0;
  v8[1] = sub_1D92FFC2C;
  v9 = v0[9];

  return v11(v9, v7);
}

uint64_t sub_1D92FFC2C()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 80);
  v5 = *(*v1 + 72);
  *(*v1 + 128) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 112);
  v7 = *(v2 + 104);
  if (v0)
  {
    v8 = sub_1D92FFE44;
  }

  else
  {
    v8 = sub_1D92FFDC4;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

uint64_t sub_1D92FFDC4()
{
  v1 = *(v0 + 48);

  if (v1)
  {
    (*(v0 + 48))(0);
  }

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D92FFE44()
{
  v1 = v0[6];

  v2 = v0[16];
  if (v1)
  {
    v3 = v0[6];
    v4 = v2;
    v3(v2);
  }

  v5 = v0[1];

  return v5();
}

void sub_1D92FFEE8(uint64_t a1, uint64_t a2)
{
  BSDispatchQueueAssertMain();
  v4 = *(*v2 + 168);
  [*(v2 + v4) addObject_];
  v5 = [*(v2 + v4) count];
  if (v5 <= 1 && *(v2 + *(*v2 + 152)) == 1)
  {
    v6 = sub_1D92FE518(v5);

    sub_1D930035C(v6, v7);
  }
}

id sub_1D92FFF98(uint64_t a1, uint64_t a2)
{
  BSDispatchQueueAssertMain();
  v4 = *(v2 + *(*v2 + 168));

  return [v4 removeObject_];
}

void sub_1D92FFFF0(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v27 = *v1;
  v4 = *(v27 + 88);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v26 = &v24 - v6;
  v7 = sub_1D9328374();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v24 - v12;
  BSDispatchQueueAssertMain();
  v14 = *(*v2 + 120);
  swift_beginAccess();
  (*(v8 + 16))(v13, &v2[v14], v7);
  v28 = v5;
  v29 = *(v5 + 48);
  v15 = v29(v13, 1, v4);
  (*(v8 + 8))(v13, v7);
  if (v15 == 1)
  {
    v16 = *&v2[*(*v2 + 128)];
    v25 = v3;
    v17 = *(v27 + 112);
    v24 = *(v17 + 24);
    v18 = v16;
    v19 = v17;
    v3 = v25;
    v24(v18, v4, v19);
    (*(v28 + 56))(v11, 0, 1, v4);
    swift_beginAccess();
    (*(v8 + 40))(&v2[v14], v11, v7);
    swift_endAccess();
  }

  v20 = v29(&v2[v14], 1, v4);
  if (!v20)
  {
    v22 = v28;
    v23 = v26;
    (*(v28 + 16))(v26, &v2[v14], v4);
    (*(*(v27 + 112) + 32))(v3, v4);
    v20 = (*(v22 + 8))(v23, v4);
  }

  sub_1D9300504(v20, v21);
}

void sub_1D930035C(uint64_t a1, uint64_t a2)
{
  BSDispatchQueueAssertMain();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v4 = Strong;
  v5 = [*(v2 + *(*v2 + 168)) allObjects];
  v6 = sub_1D9328024();

  if (v6 >> 62)
  {
    v7 = sub_1D9328544();
    if (v7)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
LABEL_4:
      if (v7 < 1)
      {
        __break(1u);
        return;
      }

      for (i = 0; i != v7; ++i)
      {
        if ((v6 & 0xC000000000000001) != 0)
        {
          v9 = MEMORY[0x1DA72EA00](i, v6);
        }

        else
        {
          v9 = *(v6 + 8 * i + 32);
          swift_unknownObjectRetain();
        }

        if ([v9 respondsToSelector_] && (objc_msgSend(v9, sel_respondsToSelector_, sel_instanceDidLoad_) & 1) != 0)
        {
          [v9 instanceDidLoad_];
        }

        swift_unknownObjectRelease();
      }
    }
  }
}

void sub_1D9300504(uint64_t a1, uint64_t a2)
{
  BSDispatchQueueAssertMain();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v4 = Strong;
  v5 = [*(v2 + *(*v2 + 168)) allObjects];
  v6 = sub_1D9328024();

  if (v6 >> 62)
  {
    v7 = sub_1D9328544();
    if (v7)
    {
      goto LABEL_4;
    }

LABEL_19:

    return;
  }

  v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v7)
  {
    goto LABEL_19;
  }

LABEL_4:
  if (v7 >= 1)
  {
    v8 = 0;
    while (1)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x1DA72EA00](v8, v6);
      }

      else
      {
        v9 = *(v6 + 8 * v8 + 32);
        swift_unknownObjectRetain();
      }

      if ([v9 respondsToSelector_])
      {
        v10 = [v9 respondsToSelector_];
        v11 = &selRef_instanceDidChangeState_;
        if ((v10 & 1) == 0)
        {
          goto LABEL_7;
        }
      }

      else
      {
        if (![v9 respondsToSelector_])
        {
          goto LABEL_7;
        }

        v12 = [v9 respondsToSelector_];
        v11 = &selRef_controlInstanceViewModelDidChange_;
        if ((v12 & 1) == 0)
        {
          goto LABEL_7;
        }
      }

      [v9 *v11];
LABEL_7:
      ++v8;
      swift_unknownObjectRelease();
      if (v7 == v8)
      {
        goto LABEL_19;
      }
    }
  }

  __break(1u);
}

uint64_t *sub_1D93006F0()
{
  v1 = *v0;
  v2 = *(*v0 + 120);
  v3 = sub_1D9328374();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  MEMORY[0x1DA72F9C0](v0 + *(*v0 + 136));
  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 160));

  return v0;
}

uint64_t sub_1D930085C()
{
  sub_1D93006F0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1D9300A34(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D92D9CEC;

  return sub_1D92FF980(a1, v4, v5, v6);
}

uint64_t sub_1D9300AE8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAFD180, &unk_1D932E7E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D9300B58(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[7];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D92DA198;

  return sub_1D92FE7D8(a1, v8, v4, v5, v6, v7);
}

void sub_1D9300C2C(void *a1, uint64_t a2)
{
  v4 = [a1 configuration];
  [v4 mutableCopy];

  sub_1D93283A4();
  swift_unknownObjectRelease();
  type metadata accessor for CHUISMutableControlInstanceConfiguration(0);
  swift_dynamicCast();
  (*(a2 + 16))(a2);
  [v5 copy];
  sub_1D93283A4();
  swift_unknownObjectRelease();
  type metadata accessor for CHUISControlInstanceConfiguration(0);
  swift_dynamicCast();
  [a1 setConfiguration_];
}

uint64_t dispatch thunk of ControlsUIClientInterface.setControlState(request:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 72) + **(a3 + 72));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D92D9CEC;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of ControlsUIClientInterface.performControlAction(request:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 80) + **(a3 + 80));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D92DA198;

  return v9(a1, a2, a3);
}

uint64_t sub_1D9301074@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC16ChronoUIServices26FixedEnvironmentDataSource_systemEnvironment;
  swift_beginAccess();
  v5 = sub_1D9327034();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_1D9301100(uint64_t a1, uint64_t *a2)
{
  v4 = sub_1D9327034();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a1, v4);
  v8 = *a2;
  v9 = OBJC_IVAR____TtC16ChronoUIServices26FixedEnvironmentDataSource_systemEnvironment;
  swift_beginAccess();
  (*(v5 + 40))(v8 + v9, v7, v4);
  return swift_endAccess();
}

uint64_t sub_1D9301218@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC16ChronoUIServices26FixedEnvironmentDataSource_systemEnvironment;
  swift_beginAccess();
  v4 = sub_1D9327034();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_1D93012A0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16ChronoUIServices26FixedEnvironmentDataSource_systemEnvironment;
  swift_beginAccess();
  v4 = sub_1D9327034();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t sub_1D9301394(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC16ChronoUIServices26FixedEnvironmentDataSource_systemEnvironmentDidChangePublisher;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

uint64_t sub_1D9301444(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16ChronoUIServices26FixedEnvironmentDataSource_systemEnvironmentDidChangePublisher;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t FixedEnvironmentDataSource.__allocating_init(environment:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = OBJC_IVAR____TtC16ChronoUIServices26FixedEnvironmentDataSource_systemEnvironment;
  v4 = sub_1D9327034();
  v5 = *(v4 - 8);
  (*(v5 + 16))(v2 + v3, a1, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC9F8, &unk_1D932FA80);
  swift_allocObject();
  sub_1D9326C44();
  sub_1D9290D60(&unk_1EDE3BF10, &qword_1ECAFC9F8, &unk_1D932FA80, MEMORY[0x1E695BF88]);
  v6 = sub_1D9326C64();
  (*(v5 + 8))(a1, v4);

  *(v2 + OBJC_IVAR____TtC16ChronoUIServices26FixedEnvironmentDataSource_systemEnvironmentDidChangePublisher) = v6;
  return v2;
}

uint64_t FixedEnvironmentDataSource.init(environment:)(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC16ChronoUIServices26FixedEnvironmentDataSource_systemEnvironment;
  v5 = sub_1D9327034();
  v6 = *(v5 - 8);
  (*(v6 + 16))(v2 + v4, a1, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC9F8, &unk_1D932FA80);
  swift_allocObject();
  sub_1D9326C44();
  sub_1D9290D60(&unk_1EDE3BF10, &qword_1ECAFC9F8, &unk_1D932FA80, MEMORY[0x1E695BF88]);
  v7 = sub_1D9326C64();
  (*(v6 + 8))(a1, v5);

  *(v2 + OBJC_IVAR____TtC16ChronoUIServices26FixedEnvironmentDataSource_systemEnvironmentDidChangePublisher) = v7;
  return v2;
}

uint64_t FixedEnvironmentDataSource.__allocating_init(widgetEnvironment:)(uint64_t a1)
{
  v39 = sub_1D9327974();
  v41 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v38 = &v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1D9327984();
  v46 = *(v3 - 8);
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v34 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC9D8, &unk_1D932DEE0);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v34 - v13;
  v15 = sub_1D9327034();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v34 - v20;
  sub_1D9327024();
  v45 = a1;
  sub_1D93279C4();
  v43 = *(v16 + 8);
  v44 = v16 + 8;
  v43(v19, v15);
  v22 = *(v46 + 16);
  v40 = v8;
  v22(v6, v8, v3);
  sub_1D9299378(&qword_1EDE3BCA0, MEMORY[0x1E69856E8], MEMORY[0x1E69856F0]);
  v23 = v38;
  v42 = v3;
  sub_1D9327FE4();
  sub_1D9299378(&qword_1EDE3BCA8, MEMORY[0x1E69856D8], MEMORY[0x1E69856E0]);
  v24 = v39;
  sub_1D9328384();
  v25 = v12;
  v37 = *(v16 + 48);
  if (v37(v12, 1, v15) == 1)
  {
    (*(v41 + 8))(v23, v24);
    (*(v46 + 8))(v40, v42);
    v26 = 1;
  }

  else
  {
    v35 = v21;
    v36 = v14;
    v27 = v41;
    v28 = *(v16 + 32);
    v28(v19, v25, v15);
    (*(v27 + 8))(v23, v24);
    (*(v46 + 8))(v40, v42);
    v28(v36, v19, v15);
    v21 = v35;
    v14 = v36;
    v26 = 0;
  }

  (*(v16 + 56))(v14, v26, 1, v15);
  v29 = v37;
  if (v37(v14, 1, v15) == 1)
  {
    sub_1D9327024();
    if (v29(v14, 1, v15) != 1)
    {
      sub_1D930217C(v14);
    }
  }

  else
  {
    (*(v16 + 32))(v21, v14, v15);
  }

  type metadata accessor for FixedEnvironmentDataSource(0);
  v30 = swift_allocObject();
  (*(v16 + 16))(v30 + OBJC_IVAR____TtC16ChronoUIServices26FixedEnvironmentDataSource_systemEnvironment, v21, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC9F8, &unk_1D932FA80);
  swift_allocObject();
  v47 = sub_1D9326C44();
  sub_1D9290D60(&unk_1EDE3BF10, &qword_1ECAFC9F8, &unk_1D932FA80, MEMORY[0x1E695BF88]);
  v31 = sub_1D9326C64();
  v32 = sub_1D9327A04();
  (*(*(v32 - 8) + 8))(v45, v32);

  v43(v21, v15);
  *(v30 + OBJC_IVAR____TtC16ChronoUIServices26FixedEnvironmentDataSource_systemEnvironmentDidChangePublisher) = v31;
  return v30;
}

uint64_t FixedEnvironmentDataSource.deinit()
{
  v1 = OBJC_IVAR____TtC16ChronoUIServices26FixedEnvironmentDataSource_systemEnvironment;
  v2 = sub_1D9327034();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t FixedEnvironmentDataSource.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC16ChronoUIServices26FixedEnvironmentDataSource_systemEnvironment;
  v2 = sub_1D9327034();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t sub_1D9301EE0@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC16ChronoUIServices26FixedEnvironmentDataSource_systemEnvironment;
  swift_beginAccess();
  v5 = sub_1D9327034();
  return (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
}

uint64_t sub_1D9301FD0@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 64);
  a1[3] = type metadata accessor for SimpleEnvironmentProvider(0);
  a1[4] = sub_1D9299378(&qword_1EDE3DD08, type metadata accessor for SimpleEnvironmentProvider, &unk_1D932FBF8);
  *a1 = v3;
}

void *ClientEnvironmentProviderFactory.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));

  return v0;
}

uint64_t ClientEnvironmentProviderFactory.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));

  return MEMORY[0x1EEE6BDC0](v0, 80, 7);
}

uint64_t sub_1D93020C8()
{

  v1 = OBJC_IVAR____TtC16ChronoUIServices25SimpleEnvironmentProvider__lock_environmentValues;
  v2 = sub_1D9327034();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t sub_1D930217C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC9D8, &unk_1D932DEE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D9302234(uint64_t a1)
{
  result = sub_1D9327034();
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

void _s16ChronoUIServices21ControlInstancePickerCfd_0()
{
  v1 = *v0;
  if ((*(v0 + *(*v0 + 160)) & 1) != 0 || *(v0 + *(v1 + 208)) == 1)
  {
    v2 = *(v1 + 96);
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCAC0, &unk_1D932FEB0);
    (*(*(v3 - 8) + 8))(v0 + v2, v3);
    sub_1D92933A0(v0 + *(*v0 + 104), &qword_1ECAFCAA8, &qword_1D932DFF0);
    sub_1D92933A0(v0 + *(*v0 + 112), &qword_1ECAFCBC8, qword_1D932E7F0);

    v4 = *(*v0 + 128);
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCA60, &unk_1D932DF90);
    (*(*(v5 - 8) + 8))(v0 + v4, v5);
    sub_1D92933A0(v0 + *(*v0 + 136), &qword_1ECAFCA68, &qword_1D932FE90);

    v6 = *(*v0 + 176);
    v7 = sub_1D9326BE4();
    (*(*(v7 - 8) + 8))(v0 + v6, v7);

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + *(*v0 + 192)));
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + *(*v0 + 200)));
  }

  else
  {
    __break(1u);
  }
}

void sub_1D9302744()
{
  v1 = *v0;
  if ((*(v0 + *(*v0 + 160)) & 1) != 0 || *(v0 + *(v1 + 208)) == 1)
  {
    v2 = *(v1 + 96);
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCAE0, &unk_1D932E040);
    (*(*(v3 - 8) + 8))(v0 + v2, v3);
    sub_1D92933A0(v0 + *(*v0 + 104), &qword_1ECAFCAC8, &unk_1D932E7D0);
    sub_1D92933A0(v0 + *(*v0 + 112), &unk_1ECAFD180, &unk_1D932E7E0);

    v4 = *(*v0 + 128);
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCA60, &unk_1D932DF90);
    (*(*(v5 - 8) + 8))(v0 + v4, v5);
    sub_1D92933A0(v0 + *(*v0 + 136), &qword_1ECAFCA68, &qword_1D932FE90);

    v6 = *(*v0 + 176);
    v7 = sub_1D9326BE4();
    (*(*(v7 - 8) + 8))(v0 + v6, v7);

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + *(*v0 + 192)));
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + *(*v0 + 200)));
  }

  else
  {
    __break(1u);
  }
}

void _s16ChronoUIServices21ControlInstanceToggleCfd_0()
{
  v1 = *v0;
  if ((*(v0 + *(*v0 + 160)) & 1) != 0 || *(v0 + *(v1 + 208)) == 1)
  {
    v2 = *(v1 + 96);
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCA98, &unk_1D932FE80);
    (*(*(v3 - 8) + 8))(v0 + v2, v3);
    sub_1D92933A0(v0 + *(*v0 + 104), &qword_1ECAFCA80, &qword_1D932DFB0);
    sub_1D92933A0(v0 + *(*v0 + 112), &qword_1ECAFCBC0, &unk_1D932E7C0);

    v4 = *(*v0 + 128);
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCA60, &unk_1D932DF90);
    (*(*(v5 - 8) + 8))(v0 + v4, v5);
    sub_1D92933A0(v0 + *(*v0 + 136), &qword_1ECAFCA68, &qword_1D932FE90);

    v6 = *(*v0 + 176);
    v7 = sub_1D9326BE4();
    (*(*(v7 - 8) + 8))(v0 + v6, v7);

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + *(*v0 + 192)));
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + *(*v0 + 200)));
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1D9302D24(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = sub_1D9326A44();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  v4 = sub_1D9326A64();
  v2[12] = v4;
  v2[13] = *(v4 - 8);
  v2[14] = swift_task_alloc();
  v5 = sub_1D9327ED4();
  v2[15] = v5;
  v2[16] = *(v5 - 8);
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = sub_1D93280A4();
  v2[20] = sub_1D9328094();
  v7 = sub_1D9328064();
  v2[21] = v7;
  v2[22] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1D9302EE0, v7, v6);
}

uint64_t sub_1D9302EE0()
{
  v1 = *(v0 + 64);
  sub_1D9327A54();
  v2 = *v1;
  if (*(v1 + *(*v1 + 152)))
  {
    v3 = *(v0 + 64);

    v21 = sub_1D92C6A40();

    v2 = *v3;
  }

  else
  {
    v21 = 0;
  }

  v5 = *(v0 + 104);
  v4 = *(v0 + 112);
  v7 = *(v0 + 88);
  v6 = *(v0 + 96);
  v9 = *(v0 + 72);
  v8 = *(v0 + 80);
  sub_1D929CF00(*(v0 + 64) + *(v2 + 200), v0 + 16);
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  sub_1D9326AE4();
  (*(v8 + 104))(v7, *MEMORY[0x1E6994040], v9);
  v10 = sub_1D9326A54();
  (*(v8 + 8))(v7, v9);
  (*(v5 + 8))(v4, v6);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  if (v10)
  {
    v11 = *(v0 + 136);
    v12 = *(v0 + 120);
    v13 = *(v0 + 128);
    (*(v13 + 104))(v11, *MEMORY[0x1E6985AD0], v12);
    sub_1D9309FF0(&qword_1ECAFD1E8, MEMORY[0x1E6985AD8], MEMORY[0x1E6985AE0]);
    sub_1D9327FF4();
    sub_1D9327FF4();
    v14 = *(v13 + 8);
    v14(v11, v12);
    v15 = v21;
    if (!(v21 & 1 | (*(v0 + 216) == *(v0 + 220))))
    {
      v14(*(v0 + 144), *(v0 + 120));
LABEL_12:

      v19 = *(v0 + 8);

      return v19();
    }
  }

  else
  {
    v15 = v21;
    if ((v21 & 1) == 0)
    {
      (*(*(v0 + 128) + 8))(*(v0 + 144), *(v0 + 120));
      goto LABEL_12;
    }
  }

  v16 = *(v0 + 64);
  *(v0 + 184) = sub_1D9328094();
  v17 = swift_task_alloc();
  *(v0 + 192) = v17;
  *(v17 + 16) = v16;
  *(v17 + 24) = v15 & 1;
  v18 = swift_task_alloc();
  *(v0 + 200) = v18;
  *v18 = v0;
  v18[1] = sub_1D9303294;

  return MEMORY[0x1EEE6DE38]();
}

uint64_t sub_1D9303294()
{
  v2 = *v1;
  *(*v1 + 208) = v0;

  v3 = *(v2 + 176);
  v4 = *(v2 + 168);
  if (v0)
  {
    v5 = sub_1D93034C4;
  }

  else
  {
    v5 = sub_1D9303410;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1D9303410()
{
  v1 = v0[18];
  v2 = v0[15];
  v3 = v0[16];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1D93034C4()
{
  v1 = v0[18];
  v2 = v0[15];
  v3 = v0[16];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1D9303580(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = sub_1D9326A44();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  v4 = sub_1D9326A64();
  v2[12] = v4;
  v2[13] = *(v4 - 8);
  v2[14] = swift_task_alloc();
  v5 = sub_1D9327ED4();
  v2[15] = v5;
  v2[16] = *(v5 - 8);
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = sub_1D93280A4();
  v2[20] = sub_1D9328094();
  v7 = sub_1D9328064();
  v2[21] = v7;
  v2[22] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1D930373C, v7, v6);
}

uint64_t sub_1D930373C()
{
  v1 = *(v0 + 64);
  sub_1D9327A54();
  v2 = *v1;
  if (*(v1 + *(*v1 + 152)))
  {
    v3 = *(v0 + 64);

    v21 = sub_1D92C6A40();

    v2 = *v3;
  }

  else
  {
    v21 = 0;
  }

  v5 = *(v0 + 104);
  v4 = *(v0 + 112);
  v7 = *(v0 + 88);
  v6 = *(v0 + 96);
  v9 = *(v0 + 72);
  v8 = *(v0 + 80);
  sub_1D929CF00(*(v0 + 64) + *(v2 + 200), v0 + 16);
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  sub_1D9326AE4();
  (*(v8 + 104))(v7, *MEMORY[0x1E6994040], v9);
  v10 = sub_1D9326A54();
  (*(v8 + 8))(v7, v9);
  (*(v5 + 8))(v4, v6);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  if (v10)
  {
    v11 = *(v0 + 136);
    v12 = *(v0 + 120);
    v13 = *(v0 + 128);
    (*(v13 + 104))(v11, *MEMORY[0x1E6985AD0], v12);
    sub_1D9309FF0(&qword_1ECAFD1E8, MEMORY[0x1E6985AD8], MEMORY[0x1E6985AE0]);
    sub_1D9327FF4();
    sub_1D9327FF4();
    v14 = *(v13 + 8);
    v14(v11, v12);
    v15 = v21;
    if (!(v21 & 1 | (*(v0 + 216) == *(v0 + 220))))
    {
      v14(*(v0 + 144), *(v0 + 120));
LABEL_12:

      v19 = *(v0 + 8);

      return v19();
    }
  }

  else
  {
    v15 = v21;
    if ((v21 & 1) == 0)
    {
      (*(*(v0 + 128) + 8))(*(v0 + 144), *(v0 + 120));
      goto LABEL_12;
    }
  }

  v16 = *(v0 + 64);
  *(v0 + 184) = sub_1D9328094();
  v17 = swift_task_alloc();
  *(v0 + 192) = v17;
  *(v17 + 16) = v16;
  *(v17 + 24) = v15 & 1;
  v18 = swift_task_alloc();
  *(v0 + 200) = v18;
  *v18 = v0;
  v18[1] = sub_1D9303AF0;

  return MEMORY[0x1EEE6DE38]();
}

uint64_t sub_1D9303AF0()
{
  v2 = *v1;
  *(*v1 + 208) = v0;

  v3 = *(v2 + 176);
  v4 = *(v2 + 168);
  if (v0)
  {
    v5 = sub_1D930AC78;
  }

  else
  {
    v5 = sub_1D930AC50;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1D9303C6C(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = sub_1D9326A44();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  v4 = sub_1D9326A64();
  v2[12] = v4;
  v2[13] = *(v4 - 8);
  v2[14] = swift_task_alloc();
  v5 = sub_1D9327ED4();
  v2[15] = v5;
  v2[16] = *(v5 - 8);
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = sub_1D93280A4();
  v2[20] = sub_1D9328094();
  v7 = sub_1D9328064();
  v2[21] = v7;
  v2[22] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1D9303E28, v7, v6);
}

uint64_t sub_1D9303E28()
{
  v1 = *(v0 + 64);
  sub_1D9327A54();
  v2 = *v1;
  if (*(v1 + *(*v1 + 152)))
  {
    v3 = *(v0 + 64);

    v21 = sub_1D92C6A40();

    v2 = *v3;
  }

  else
  {
    v21 = 0;
  }

  v5 = *(v0 + 104);
  v4 = *(v0 + 112);
  v7 = *(v0 + 88);
  v6 = *(v0 + 96);
  v9 = *(v0 + 72);
  v8 = *(v0 + 80);
  sub_1D929CF00(*(v0 + 64) + *(v2 + 200), v0 + 16);
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  sub_1D9326AE4();
  (*(v8 + 104))(v7, *MEMORY[0x1E6994040], v9);
  v10 = sub_1D9326A54();
  (*(v8 + 8))(v7, v9);
  (*(v5 + 8))(v4, v6);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  if (v10)
  {
    v11 = *(v0 + 136);
    v12 = *(v0 + 120);
    v13 = *(v0 + 128);
    (*(v13 + 104))(v11, *MEMORY[0x1E6985AD0], v12);
    sub_1D9309FF0(&qword_1ECAFD1E8, MEMORY[0x1E6985AD8], MEMORY[0x1E6985AE0]);
    sub_1D9327FF4();
    sub_1D9327FF4();
    v14 = *(v13 + 8);
    v14(v11, v12);
    v15 = v21;
    if (!(v21 & 1 | (*(v0 + 216) == *(v0 + 220))))
    {
      v14(*(v0 + 144), *(v0 + 120));
LABEL_12:

      v19 = *(v0 + 8);

      return v19();
    }
  }

  else
  {
    v15 = v21;
    if ((v21 & 1) == 0)
    {
      (*(*(v0 + 128) + 8))(*(v0 + 144), *(v0 + 120));
      goto LABEL_12;
    }
  }

  v16 = *(v0 + 64);
  *(v0 + 184) = sub_1D9328094();
  v17 = swift_task_alloc();
  *(v0 + 192) = v17;
  *(v17 + 16) = v16;
  *(v17 + 24) = v15 & 1;
  v18 = swift_task_alloc();
  *(v0 + 200) = v18;
  *v18 = v0;
  v18[1] = sub_1D9303AF0;

  return MEMORY[0x1EEE6DE38]();
}

uint64_t sub_1D93041DC(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v35 = a5;
  v36 = a6;
  v32 = a4;
  v33 = a2;
  v34 = a3;
  v31 = a1;
  v38 = sub_1D9327614();
  v41 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v37 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D9327654();
  v39 = *(v7 - 8);
  v40 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD1F0, &qword_1D932FEA0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v31 - v12;
  v14 = sub_1D9327624();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D9296448(0, &qword_1EDE3BC10, 0x1E69E9610);
  (*(v15 + 104))(v17, *MEMORY[0x1E69E7F90], v14);
  v18 = sub_1D93282D4();
  v19 = v17;
  v20 = v31;
  (*(v15 + 8))(v19, v14);
  (*(v11 + 16))(v13, v20, v10);
  v21 = (*(v11 + 80) + 25) & ~*(v11 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = v33;
  v23 = v34;
  *(v22 + 24) = v34;
  v24 = *(v11 + 32);
  v32 = v10;
  v24(v22 + v21, v13, v10);
  aBlock[4] = v35;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D9290DB0;
  aBlock[3] = v36;
  v25 = _Block_copy(aBlock);

  sub_1D9327634();
  v42 = MEMORY[0x1E69E7CC0];
  sub_1D9309FF0(&qword_1EDE3BCE8, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC9E0, &unk_1D932DEF0);
  sub_1D930A728();
  v27 = v37;
  v26 = v38;
  sub_1D93283C4();
  MEMORY[0x1DA72E860](0, v9, v27, v25);
  _Block_release(v25);

  (*(v41 + 8))(v27, v26);
  (*(v39 + 8))(v9, v40);

  if (v23)
  {
    sub_1D92F0450();
    v29 = swift_allocError();
    *v30 = 2;
    aBlock[0] = v29;
    return sub_1D9328074();
  }

  return result;
}

void sub_1D930467C(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v48 = a4;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD1F0, &qword_1D932FEA0);
  v47 = *(v11 - 8);
  v45 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v46 = &v39 - v12;
  v13 = sub_1D9326BE4();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = [objc_allocWithZone(MEMORY[0x1E69D4260]) init];
  v17 = *(v14 + 16);
  v18 = a1 + *(*a1 + 176);
  v43 = v13;
  v17(v16, v18, v13);

  v19 = sub_1D9326BC4();
  v20 = sub_1D9328234();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v41 = a5;
    v22 = v21;
    v23 = swift_slowAlloc();
    v39 = a3;
    v24 = v23;
    aBlock[0] = v23;
    *v22 = 136446210;
    v25 = (a1 + *(*a1 + 184));
    v42 = a6;
    v40 = v11;
    v26 = a2;
    v27 = *v25;
    v28 = v25[1];

    v29 = sub_1D9293524(v27, v28, aBlock);
    a2 = v26;
    v11 = v40;

    *(v22 + 4) = v29;
    a6 = v42;
    _os_log_impl(&dword_1D928E000, v19, v20, "[%{public}s] Authentication requested", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v24);
    v30 = v24;
    a3 = v39;
    MEMORY[0x1DA72F920](v30, -1, -1);
    v31 = v22;
    a5 = v41;
    MEMORY[0x1DA72F920](v31, -1, -1);
  }

  (*(v14 + 8))(v16, v43);
  v33 = v46;
  v32 = v47;
  (*(v47 + 16))(v46, a3, v11);
  v34 = (*(v32 + 80) + 33) & ~*(v32 + 80);
  v35 = swift_allocObject();
  v36 = v44;
  *(v35 + 16) = a1;
  *(v35 + 24) = v36;
  *(v35 + 32) = a2 & 1;
  (*(v32 + 32))(v35 + v34, v33, v11);
  aBlock[4] = a5;
  aBlock[5] = v35;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D93050F8;
  aBlock[3] = a6;
  v37 = _Block_copy(aBlock);

  v38 = v36;

  [v38 requestPasscodeUnlockUIWithOptions:0 withCompletion:v37];
  _Block_release(v37);
}

uint64_t sub_1D9304A60(int a1, uint64_t a2, void *a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v31 = a7;
  v32 = a8;
  v30 = a4;
  v28 = a3;
  v26 = a2;
  v27 = a1;
  v9 = sub_1D9327614();
  v35 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D9327654();
  v33 = *(v12 - 8);
  v34 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD1F0, &qword_1D932FEA0);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v26 - v17;
  sub_1D9296448(0, &qword_1EDE3BC10, 0x1E69E9610);
  v29 = sub_1D93282A4();
  (*(v16 + 16))(v18, a5, v15);
  v19 = (*(v16 + 80) + 41) & ~*(v16 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = v26;
  *(v20 + 24) = v27;
  v21 = v28;
  *(v20 + 32) = v28;
  *(v20 + 40) = v30;
  (*(v16 + 32))(v20 + v19, v18, v15);
  aBlock[4] = v31;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D9290DB0;
  aBlock[3] = v32;
  v22 = _Block_copy(aBlock);

  v23 = v21;

  sub_1D9327634();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1D9309FF0(&qword_1EDE3BCE8, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC9E0, &unk_1D932DEF0);
  sub_1D930A728();
  sub_1D93283C4();
  v24 = v29;
  MEMORY[0x1DA72E860](0, v14, v11, v22);
  _Block_release(v22);

  (*(v35 + 8))(v11, v9);
  return (*(v33 + 8))(v14, v34);
}

id sub_1D9304E1C(uint64_t a1, char a2, void *a3, char a4, uint64_t a5)
{
  v10 = sub_1D9326BE4();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v13, a1 + *(*a1 + 176), v10);

  v14 = sub_1D9326BC4();
  v15 = sub_1D9328234();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v29 = v10;
    v17 = v16;
    v18 = swift_slowAlloc();
    v31 = a5;
    v32 = v18;
    v19 = v18;
    *v17 = 136446466;
    v20 = (a1 + *(*a1 + 184));
    v30 = a3;
    v21 = a4;
    v22 = a2;
    v24 = *v20;
    v23 = v20[1];

    v25 = sub_1D9293524(v24, v23, &v32);
    a2 = v22;
    a4 = v21;
    a3 = v30;

    *(v17 + 4) = v25;
    *(v17 + 12) = 1026;
    *(v17 + 14) = a2 & 1;
    _os_log_impl(&dword_1D928E000, v14, v15, "[%{public}s] Authentication result: %{BOOL,public}d", v17, 0x12u);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
    MEMORY[0x1DA72F920](v19, -1, -1);
    MEMORY[0x1DA72F920](v17, -1, -1);

    (*(v11 + 8))(v13, v29);
  }

  else
  {

    (*(v11 + 8))(v13, v10);
  }

  result = [a3 invalidate];
  if ((a4 & 1) == 0)
  {
    if (a2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD1F0, &qword_1D932FEA0);
      return sub_1D9328084();
    }

    else
    {
      sub_1D92F0450();
      v27 = swift_allocError();
      *v28 = 3;
      v32 = v27;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD1F0, &qword_1D932FEA0);
      return sub_1D9328074();
    }
  }

  return result;
}

uint64_t sub_1D93050F8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t ControlInstancePicker.ViewModel.title.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t ControlInstancePicker.ViewModel.title.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t ControlInstancePicker.ViewModel.options.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

uint64_t ControlInstancePicker.ViewModel.subtitle.getter()
{
  v1 = *(v0 + *(type metadata accessor for ControlInstancePicker.ViewModel(0) + 32));

  return v1;
}

uint64_t ControlInstancePicker.ViewModel.subtitle.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ControlInstancePicker.ViewModel(0) + 32));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t ControlInstancePicker.ViewModel.renderAsSlider.setter(char a1)
{
  result = type metadata accessor for ControlInstancePicker.ViewModel(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t ControlInstancePicker.ViewModel.isRedacted.setter(char a1)
{
  result = type metadata accessor for ControlInstancePicker.ViewModel(0);
  *(v1 + *(result + 44)) = a1;
  return result;
}

uint64_t ControlInstancePicker.ViewModel.disabled.setter(char a1)
{
  result = type metadata accessor for ControlInstancePicker.ViewModel(0);
  *(v1 + *(result + 48)) = a1;
  return result;
}

uint64_t ControlInstancePicker.ViewModel.hasError.setter(char a1)
{
  result = type metadata accessor for ControlInstancePicker.ViewModel(0);
  *(v1 + *(result + 52)) = a1;
  return result;
}

uint64_t ControlInstancePicker.ViewModel.accessibilityIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for ControlInstancePicker.ViewModel(0) + 56));

  return v1;
}

uint64_t ControlInstancePicker.ViewModel.accessibilityIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ControlInstancePicker.ViewModel(0) + 56));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t ControlInstancePicker.ViewModel.Option.value.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ControlInstancePicker.ViewModel.Option.value.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ControlInstancePicker.ViewModel.Option.icon.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

void *ControlInstancePicker.ViewModel.Option.platformIcon.getter()
{
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

uint64_t ControlInstancePicker.ViewModel.Option.tint.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

uint64_t ControlInstancePicker.ViewModel.Option.status.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t ControlInstancePicker.ViewModel.Option.status.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t ControlInstancePicker.ViewModel.Option.actionHint.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t ControlInstancePicker.ViewModel.Option.actionHint.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return result;
}

uint64_t sub_1D9305AF8(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v37 = v2;
  v38 = v3;
  v5 = a1 + 32;
  v6 = (a2 + 32);
  for (i = v4 - 1; ; --i)
  {
    v8 = *(v5 + 48);
    v28 = *(v5 + 32);
    v29 = v8;
    v30 = *(v5 + 64);
    v9 = *(v5 + 16);
    v27[0] = *v5;
    v27[1] = v9;
    v24 = v28;
    v25 = v8;
    v26 = v30;
    v22 = v27[0];
    v23 = v9;
    v10 = *v6;
    v11 = v6[1];
    v12 = v6[2];
    v13 = v6[3];
    v32 = *(v6 + 8);
    v31[2] = v12;
    v31[3] = v13;
    v31[0] = v10;
    v31[1] = v11;
    v19 = v12;
    v20 = v13;
    v21 = v32;
    v17 = v10;
    v18 = v11;
    sub_1D92E5F64(v27, v16);
    sub_1D92E5F64(v31, v16);
    v14 = _s16ChronoUIServices21ControlInstancePickerC9ViewModelV6OptionV2eeoiySbAG_AGtFZ_0(&v22, &v17);
    v33[2] = v19;
    v33[3] = v20;
    v34 = v21;
    v33[0] = v17;
    v33[1] = v18;
    sub_1D92E5FC0(v33);
    v35[2] = v24;
    v35[3] = v25;
    v36 = v26;
    v35[0] = v22;
    v35[1] = v23;
    sub_1D92E5FC0(v35);
    if (!v14)
    {
      return 0;
    }

    if (!i)
    {
      break;
    }

    v6 = (v6 + 72);
    v5 += 72;
  }

  return 1;
}

uint64_t sub_1D9305C40()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t sub_1D9305CA4(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 56));

  return v2;
}

uint64_t sub_1D9305CE0()
{
  v1 = v0;
  v59 = sub_1D9326BE4();
  v55 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v54 = &v50 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for ControlInstancePicker.ViewModel(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v53 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFC4F0, &qword_1D932CC18);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v50 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFD1F8, &unk_1D932FEC0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v50 - v10;
  v12 = sub_1D9327DB4();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v50 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAFCBC8, qword_1D932E7F0);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v52 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v50 - v19;
  v21 = MEMORY[0x1EEE9AC00](v18);
  v56 = (&v50 - v22);
  MEMORY[0x1EEE9AC00](v21);
  v23 = *(v4 + 56);
  v57 = v3;
  v58 = &v50 - v24;
  v51 = v23;
  v23();
  v25 = *(v1 + *(*v1 + 152));
  if (!v25)
  {
    goto LABEL_4;
  }

  BSDispatchQueueAssertMain();
  v26 = OBJC_IVAR____TtC16ChronoUIServices23ControlSessionViewModel__cachedTemplate;
  swift_beginAccess();
  sub_1D92973DC(v25 + v26, v8, &qword_1ECAFC4F0, &qword_1D932CC18);

  v27 = sub_1D9327B44();
  v28 = *(v27 - 8);
  if ((*(v28 + 48))(v8, 1, v27) == 1)
  {
    sub_1D92933A0(v8, &qword_1ECAFC4F0, &qword_1D932CC18);
LABEL_4:
    (*(v13 + 56))(v11, 1, 1, v12);
LABEL_5:
    sub_1D92933A0(v11, &qword_1ECAFD1F8, &unk_1D932FEC0);
    v29 = v58;
    goto LABEL_6;
  }

  sub_1D9327B24();
  (*(v28 + 8))(v8, v27);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    goto LABEL_5;
  }

  v47 = v50;
  (*(v13 + 32))(v50, v11, v12);
  v48 = v56;
  sub_1D930652C(v47, v56);
  (*(v13 + 8))(v47, v12);
  v29 = v58;
  sub_1D92933A0(v58, &qword_1ECAFCBC8, qword_1D932E7F0);
  sub_1D9297374(v48, v29, &qword_1ECAFCBC8, qword_1D932E7F0);
LABEL_6:
  sub_1D92973DC(v29, v20, &qword_1ECAFCBC8, qword_1D932E7F0);
  v30 = v57;
  if ((*(v4 + 48))(v20, 1, v57) == 1)
  {
    sub_1D92933A0(v20, &qword_1ECAFCBC8, qword_1D932E7F0);
    v32 = v54;
    v31 = v55;
    (*(v55 + 16))(v54, v1 + *(*v1 + 176), v59);

    v33 = sub_1D9326BC4();
    v34 = sub_1D9328234();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = v29;
      v37 = swift_slowAlloc();
      v60[0] = v37;
      *v35 = 136446210;
      v38 = (v1 + *(*v1 + 184));
      v39 = *v38;
      v40 = v38[1];

      v41 = sub_1D9293524(v39, v40, v60);

      *(v35 + 4) = v41;
      _os_log_impl(&dword_1D928E000, v33, v34, "[%{public}s] No view model changes found.", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v37);
      MEMORY[0x1DA72F920](v37, -1, -1);
      MEMORY[0x1DA72F920](v35, -1, -1);

      (*(v31 + 8))(v32, v59);
      v42 = v36;
    }

    else
    {

      (*(v31 + 8))(v32, v59);
      v42 = v29;
    }
  }

  else
  {
    v43 = v53;
    sub_1D930ABC8(v20, v53, type metadata accessor for ControlInstancePicker.ViewModel);
    v44 = v56;
    sub_1D92970C4(v43, v56, type metadata accessor for ControlInstancePicker.ViewModel);
    (v51)(v44, 0, 1, v30);
    v45 = *(*v1 + 112);
    swift_beginAccess();
    v46 = v52;
    sub_1D92973DC(v1 + v45, v52, &qword_1ECAFCBC8, qword_1D932E7F0);
    swift_beginAccess();
    sub_1D930AB58(v44, v1 + v45);
    swift_endAccess();
    sub_1D93156A0(v46);
    sub_1D92933A0(v46, &qword_1ECAFCBC8, qword_1D932E7F0);
    sub_1D92933A0(v44, &qword_1ECAFCBC8, qword_1D932E7F0);
    sub_1D930A65C(v43, type metadata accessor for ControlInstancePicker.ViewModel);
    v42 = v29;
  }

  return sub_1D92933A0(v42, &qword_1ECAFCBC8, qword_1D932E7F0);
}