uint64_t sub_2483466D0()
{
  if (*v0)
  {
    v1 = 2;
  }

  else
  {
    v1 = 1;
  }

  return MEMORY[0x24C1CBD70](v1);
}

uint64_t sub_248346708(uint64_t a1)
{
  v2 = *v1;
  sub_248384780();
  if (v2)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  MEMORY[0x24C1CBD70](v3);
  return sub_2483847B0();
}

void *sub_248346754@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result == 1)
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  *a2 = v3;
  return result;
}

void sub_248346774(uint64_t *a1@<X8>)
{
  v2 = 1;
  if (*v1)
  {
    v2 = 2;
  }

  *a1 = v2;
}

uint64_t sub_24834678C()
{
  v1 = *(v0 + OBJC_IVAR____TtC9DashBoard15DBUISyncSession_vehicleID);

  return v1;
}

uint64_t sub_2483467C8()
{
  v1 = *(v0 + OBJC_IVAR____TtC9DashBoard15DBUISyncSession_displayID);

  return v1;
}

uint64_t sub_24834680C()
{
  v1 = OBJC_IVAR____TtC9DashBoard15DBUISyncSession_ssn;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_248346850(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9DashBoard15DBUISyncSession_ssn;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_248346908()
{
  v1 = OBJC_IVAR____TtC9DashBoard15DBUISyncSession_nextTxSn;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_24834694C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9DashBoard15DBUISyncSession_nextTxSn;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_248346A04()
{
  v1 = OBJC_IVAR____TtC9DashBoard15DBUISyncSession_lastAckSn;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_248346A48(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9DashBoard15DBUISyncSession_lastAckSn;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_248346B00()
{
  v1 = OBJC_IVAR____TtC9DashBoard15DBUISyncSession_lastRxSn;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_248346B44(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9DashBoard15DBUISyncSession_lastRxSn;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_248346BFC()
{
  v1 = OBJC_IVAR____TtC9DashBoard15DBUISyncSession_state;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_248346C40(char a1)
{
  v3 = OBJC_IVAR____TtC9DashBoard15DBUISyncSession_state;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_248346CF8()
{
  v1 = OBJC_IVAR____TtC9DashBoard15DBUISyncSession_version;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_248346D3C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9DashBoard15DBUISyncSession_version;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

unint64_t sub_248346DF0(unsigned __int8 a1)
{
  v1 = 0x696C616974696E69;
  v2 = 0xD000000000000024;
  if (a1 != 2)
  {
    v2 = 0x7964616572;
  }

  if (a1)
  {
    v1 = 0xD00000000000001ALL;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_248346E88()
{
  sub_248384780();
  sub_2483839E0();

  return sub_2483847B0();
}

double sub_248346F5C(uint64_t a1)
{
  sub_2483839E0();

  return result;
}

uint64_t sub_24834701C(uint64_t a1)
{
  sub_248384780();
  sub_2483839E0();

  return sub_2483847B0();
}

unint64_t sub_2483470EC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_24834B008(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_24834711C(unint64_t *a1@<X8>)
{
  v2 = 0xEB0000000064657ALL;
  v3 = 0x696C616974696E69;
  v4 = 0x80000002483B3A20;
  v5 = 0xD000000000000024;
  if (*v1 != 2)
  {
    v5 = 0x7964616572;
    v4 = 0xE500000000000000;
  }

  if (*v1)
  {
    v3 = 0xD00000000000001ALL;
    v2 = 0x80000002483B3A00;
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

double DBUISyncSession.delegate.setter(uint64_t a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return result;
}

void (*DBUISyncSession.delegate.modify(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC9DashBoard15DBUISyncSession_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_2482284FC;
}

uint64_t DBUISyncSession.isReady.getter()
{
  if ((*((*MEMORY[0x277D85000] & *v0) + 0x100))() > 2u)
  {
    v1 = 1;
  }

  else
  {
    v1 = sub_248384680();
  }

  return v1 & 1;
}

char *DBUISyncSession.init(channel:vehicleID:displayID:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = sub_248382A90();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v5[OBJC_IVAR____TtC9DashBoard15DBUISyncSession_ssn] = 0;
  *&v5[OBJC_IVAR____TtC9DashBoard15DBUISyncSession_nextTxSn] = 0;
  *&v5[OBJC_IVAR____TtC9DashBoard15DBUISyncSession_lastAckSn] = 0;
  *&v5[OBJC_IVAR____TtC9DashBoard15DBUISyncSession_lastRxSn] = 0;
  v5[OBJC_IVAR____TtC9DashBoard15DBUISyncSession_state] = 0;
  *&v5[OBJC_IVAR____TtC9DashBoard15DBUISyncSession_version] = 0;
  swift_unknownObjectWeakInit();
  v15 = &v5[OBJC_IVAR____TtC9DashBoard15DBUISyncSession_vehicleID];
  *v15 = a2;
  v15[1] = a3;
  v16 = &v5[OBJC_IVAR____TtC9DashBoard15DBUISyncSession_displayID];
  *v16 = a4;
  v16[1] = a5;
  *&v5[OBJC_IVAR____TtC9DashBoard15DBUISyncSession_channel] = a1;
  v17 = type metadata accessor for DBUISyncSession();
  v37.receiver = v5;
  v37.super_class = v17;

  swift_unknownObjectRetain();
  v18 = objc_msgSendSuper2(&v37, sel_init);
  v19 = sub_24827C4F4();
  (*(v12 + 16))(v14, v19, v11);
  v20 = sub_248382A80();
  v21 = sub_248383D90();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v35 = v11;
    v23 = v22;
    v24 = swift_slowAlloc();
    v34 = v12;
    v25 = v24;
    v36 = v24;
    *v23 = 136446210;
    v33 = v14;
    v26 = a1;
    v27 = *&v18[OBJC_IVAR____TtC9DashBoard15DBUISyncSession_displayID];
    v28 = *&v18[OBJC_IVAR____TtC9DashBoard15DBUISyncSession_displayID + 8];

    v29 = sub_24814A378(v27, v28, &v36);
    a1 = v26;

    *(v23 + 4) = v29;
    _os_log_impl(&dword_248146000, v20, v21, "%{public}s: Started session", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v25);
    MEMORY[0x24C1CD5F0](v25, -1, -1);
    MEMORY[0x24C1CD5F0](v23, -1, -1);

    (*(v34 + 8))(v33, v35);
  }

  else
  {

    (*(v12 + 8))(v14, v11);
  }

  v30 = v18;
  v31 = sub_248383930();

  [a1 addObserver:v30 forDisplayID:v31];
  swift_unknownObjectRelease();

  return v30;
}

id DBUISyncSession.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v3 = *&v2[OBJC_IVAR____TtC9DashBoard15DBUISyncSession_channel];
  swift_unknownObjectRetain();
  v4 = v2;

  v5 = sub_248383930();

  [v3 removeObserver:v4 forDisplayID:v5];
  swift_unknownObjectRelease();

  v7.receiver = v4;
  v7.super_class = type metadata accessor for DBUISyncSession();
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

uint64_t sub_248347BCC(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  LODWORD(v84) = a2;
  v99 = *MEMORY[0x277D85DE8];
  v8 = sub_248382A90();
  v86 = *(v8 - 8);
  v87 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v76[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v13 = &v76[-v12];
  v14 = objc_opt_self();
  if (![v14 isMainThread])
  {
    __break(1u);
    goto LABEL_26;
  }

  v82 = a3;
  v15 = (*((*MEMORY[0x277D85000] & *v5) + 0x100))();
  v83 = a4;
  if (v15 > 2)
  {

LABEL_8:
    v26 = objc_opt_self();
    v27 = sub_248383880();
    *&v95[0] = 0;
    v28 = [v26 dataWithPropertyList:v27 format:200 options:0 error:v95];

    v29 = *&v95[0];
    if (!v28)
    {
      v62 = v29;
      sub_2483810C0();

      return swift_willThrow();
    }

    v80 = v13;
    v30 = sub_2483811B0();
    v32 = v31;

    v81 = v30;
    sub_24825CD28(v30, v32);
    if ([v14 isMainThread])
    {
      v33 = v32;
      v34 = MEMORY[0x277D85000];
      v35 = *((*MEMORY[0x277D85000] & *v5) + 0xA0);
      if (v35() < 1 || (v36 = *((*v34 & *v5) + 0xB8), v36() < 1))
      {
        sub_2482B39E8();
        swift_allocError();
        *v58 = 0;
        swift_willThrow();
        v59 = v81;
        sub_24823BD70(v81, v33);
        v60 = v59;
        v61 = v33;
        return sub_24823BD70(v60, v61);
      }

      v37 = v35();
      v38 = v36();
      v39 = (*((*v34 & *v5) + 0xE8))();
      v40 = v81;
      v41 = v33;
      sub_24825CD28(v81, v33);
      sub_2482B2064(2, v37, v38, v39, v40, v33, v84 & 1, 0, v97, 0, 0, 1);
      v42 = sub_24827C4F4();
      v44 = v86;
      v43 = v87;
      v45 = v80;
      (*(v86 + 16))(v80, v42, v87);
      v46 = v5;
      sub_24834B078(v97, v95);
      v47 = sub_248382A80();
      v48 = sub_248383D90();

      sub_24834B0D4(v97);
      v49 = os_log_type_enabled(v47, v48);
      v84 = v46;
      if (v49)
      {
        v50 = swift_slowAlloc();
        v77 = v48;
        v51 = v50;
        v78 = swift_slowAlloc();
        v94 = v78;
        *v51 = 136446466;
        *(v51 + 4) = sub_24814A378(*(v46 + OBJC_IVAR____TtC9DashBoard15DBUISyncSession_displayID), *(v46 + OBJC_IVAR____TtC9DashBoard15DBUISyncSession_displayID + 8), &v94);
        *(v51 + 12) = 2082;
        v90 = v97[2];
        v91 = v97[3];
        v92 = v97[4];
        v93 = v98;
        v88 = v97[0];
        v89 = v97[1];
        sub_24834B078(v97, v95);
        sub_24834B128();
        v79 = v41;
        v52 = v47;
        v53 = sub_248384650();
        v55 = v54;
        v95[2] = v90;
        v95[3] = v91;
        v95[4] = v92;
        v96 = v93;
        v95[0] = v88;
        v95[1] = v89;
        sub_24834B0D4(v95);
        v56 = sub_24814A378(v53, v55, &v94);

        *(v51 + 14) = v56;
        _os_log_impl(&dword_248146000, v52, v77, "%{public}s: Sending message: %{public}s", v51, 0x16u);
        v57 = v78;
        swift_arrayDestroy();
        MEMORY[0x24C1CD5F0](v57, -1, -1);
        MEMORY[0x24C1CD5F0](v51, -1, -1);

        v41 = v79;
      }

      else
      {
      }

      (*(v44 + 8))(v45, v43);
      v63 = v85;
      v64 = sub_2482B27D4();
      v65 = sub_2482B27DC(v64);
      if (v63)
      {
        v67 = v81;
        sub_24823BD70(v81, v41);
        sub_24823BD70(v67, v41);
        return sub_24834B0D4(v97);
      }

      v68 = *(v84 + OBJC_IVAR____TtC9DashBoard15DBUISyncSession_channel);
      v86 = v66;
      v87 = v65;
      v69 = sub_2483811A0();
      v70 = sub_248383930();
      if (v83)
      {
        v71 = sub_248383930();
      }

      else
      {
        v71 = 0;
      }

      v72 = MEMORY[0x277D85000];
      [v68 sendPayload:v69 forDisplayID:v70 description:v71];

      v73 = (*((*v72 & *v84) + 0xC8))(v95);
      if (!__OFADD__(*v74, 1))
      {
        ++*v74;
        v73(v95, 0);
        sub_24823BD70(v87, v86);
        sub_24834B0D4(v97);
        v75 = v81;
        sub_24823BD70(v81, v41);
        v60 = v75;
        v61 = v41;
        return sub_24823BD70(v60, v61);
      }

LABEL_27:
      __break(1u);
    }

LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v16 = sub_248384680();

  if (v16)
  {
    goto LABEL_8;
  }

  v17 = sub_24827C4F4();
  v19 = v86;
  v18 = v87;
  (*(v86 + 16))(v10, v17, v87);
  v20 = v5;
  v21 = sub_248382A80();
  v22 = sub_248383DA0();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *&v95[0] = v24;
    *v23 = 136446210;
    *(v23 + 4) = sub_24814A378(*(v20 + OBJC_IVAR____TtC9DashBoard15DBUISyncSession_displayID), *(v20 + OBJC_IVAR____TtC9DashBoard15DBUISyncSession_displayID + 8), v95);
    __swift_destroy_boxed_opaque_existential_0(v24);
    MEMORY[0x24C1CD5F0](v24, -1, -1);
    MEMORY[0x24C1CD5F0](v23, -1, -1);
  }

  return (*(v19 + 8))(v10, v18);
}

id DBUISyncSession.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_248348530()
{
  v2 = sub_248382A90();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v61 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = objc_opt_self();
  result = [v5 isMainThread];
  if (!result)
  {
    __break(1u);
    goto LABEL_20;
  }

  v7 = MEMORY[0x277D85000];
  v8 = (*((*MEMORY[0x277D85000] & *v0) + 0x100))();
  v48 = v3;
  v49 = v2;
  if (v8 > 2)
  {

    v10 = (*((*v7 & *v0) + 0x108))(1);
  }

  else
  {
    v9 = sub_248384680();

    v10 = (*((*v7 & *v0) + 0x108))(1);
    if ((v9 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  v11 = (*((*v7 & *v0) + 0x130))(v10);
  if (v11)
  {
    [v11 didReset];
    swift_unknownObjectRelease();
  }

LABEL_8:
  (*((*v7 & *v0) + 0xA8))(1);
  (*((*v7 & *v0) + 0xC0))(1);
  (*((*v7 & *v0) + 0xF0))(0);
  (*((*v7 & *v0) + 0xD8))(0);
  v12 = *(v0 + OBJC_IVAR____TtC9DashBoard15DBUISyncSession_vehicleID);
  v13 = *(v0 + OBJC_IVAR____TtC9DashBoard15DBUISyncSession_vehicleID + 8);
  result = [v5 isMainThread];
  if (!result)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v47 = v1;
  v14 = *((*v7 & *v0) + 0xA0);
  if (v14() < 1 || (v15 = *((*MEMORY[0x277D85000] & *v0) + 0xB8), v15() < 1))
  {
    sub_2482B39E8();
    swift_allocError();
    *v34 = 0;
    return swift_willThrow();
  }

  v16 = v14();
  v17 = v15();
  v18 = (*((*MEMORY[0x277D85000] & *v0) + 0xE8))();

  sub_2482B2064(0, v16, v17, v18, 0, 0xF000000000000000, 0, v12, v59, v13, 2, 0);
  v19 = sub_24827C4F4();
  v20 = v48;
  v21 = v49;
  v22 = v61;
  (*(v48 + 16))(v61, v19, v49);
  v23 = v0;
  sub_24834B078(v59, v57);
  v24 = sub_248382A80();
  v25 = sub_248383D90();

  sub_24834B0D4(v59);
  v26 = os_log_type_enabled(v24, v25);
  v46 = v23;
  if (v26)
  {
    v27 = swift_slowAlloc();
    v28 = v20;
    v29 = swift_slowAlloc();
    v56 = v29;
    *v27 = 136446466;
    *(v27 + 4) = sub_24814A378(*(v23 + OBJC_IVAR____TtC9DashBoard15DBUISyncSession_displayID), *(v23 + OBJC_IVAR____TtC9DashBoard15DBUISyncSession_displayID + 8), &v56);
    *(v27 + 12) = 2082;
    v52 = v59[2];
    v53 = v59[3];
    v54 = v59[4];
    v55 = v60;
    v50 = v59[0];
    v51 = v59[1];
    sub_24834B078(v59, v57);
    sub_24834B128();
    v30 = sub_248384650();
    v32 = v31;
    v57[2] = v52;
    v57[3] = v53;
    v57[4] = v54;
    v58 = v55;
    v57[0] = v50;
    v57[1] = v51;
    sub_24834B0D4(v57);
    v33 = sub_24814A378(v30, v32, &v56);

    *(v27 + 14) = v33;
    _os_log_impl(&dword_248146000, v24, v25, "%{public}s: Sending message: %{public}s", v27, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1CD5F0](v29, -1, -1);
    MEMORY[0x24C1CD5F0](v27, -1, -1);

    (*(v28 + 8))(v61, v49);
  }

  else
  {

    (*(v20 + 8))(v22, v21);
  }

  v35 = sub_2482B27D4();
  v36 = v47;
  v37 = sub_2482B27DC(v35);
  if (v36)
  {
    return sub_24834B0D4(v59);
  }

  v39 = v46;
  v40 = *(v46 + OBJC_IVAR____TtC9DashBoard15DBUISyncSession_channel);
  v41 = v37;
  v42 = v38;
  v43 = sub_2483811A0();
  v44 = sub_248383930();
  [v40 sendPayload:v43 forDisplayID:v44 description:0];

  result = (*((*MEMORY[0x277D85000] & *v39) + 0xC8))(v57);
  if (!__OFADD__(*v45, 1))
  {
    ++*v45;
    (result)(v57, 0);
    sub_24823BD70(v41, v42);
    return sub_24834B0D4(v59);
  }

LABEL_21:
  __break(1u);
  return result;
}

id sub_248348D08(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v99 = a5;
  v95 = a3;
  v96 = a4;
  v111 = a1;
  v8 = sub_248382A90();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v89 = &v88 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v94 = &v88 - v12;
  MEMORY[0x28223BE20](v13);
  v15 = &v88 - v14;
  v16 = sub_24827C4F4();
  v17 = *(v9 + 16);
  v90 = v16;
  v91 = v17;
  v92 = v9 + 16;
  (v17)(v15);

  v18 = v5;
  v19 = a2;
  v20 = sub_248382A80();
  v21 = sub_248383D90();

  v22 = os_log_type_enabled(v20, v21);
  v97 = v9;
  v98 = v8;
  v93 = v6;
  if (v22)
  {
    v23 = swift_slowAlloc();
    v88 = swift_slowAlloc();
    *&v100 = v88;
    *v23 = 136446722;
    *(v23 + 4) = sub_24814A378(*(v18 + OBJC_IVAR____TtC9DashBoard15DBUISyncSession_displayID), *(v18 + OBJC_IVAR____TtC9DashBoard15DBUISyncSession_displayID + 8), &v100);
    *(v23 + 12) = 2048;
    *(v23 + 14) = v99;
    *(v23 + 22) = 2082;
    *&v107[0] = v111;
    *(&v107[0] + 1) = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE8FD10, &qword_24839D490);
    v24 = sub_2483841D0();
    v26 = sub_24814A378(v24, v25, &v100);

    *(v23 + 24) = v26;
    _os_log_impl(&dword_248146000, v20, v21, "%{public}s: Received reset with protocol version %ld, vehicleID %{public}s", v23, 0x20u);
    v27 = v88;
    swift_arrayDestroy();
    MEMORY[0x24C1CD5F0](v27, -1, -1);
    v28 = v23;
    v8 = v98;
    MEMORY[0x24C1CD5F0](v28, -1, -1);

    v29 = *(v97 + 8);
  }

  else
  {

    v29 = *(v9 + 8);
  }

  v30 = v29(v15, v8);
  if (v19)
  {
    v32 = *(v18 + OBJC_IVAR____TtC9DashBoard15DBUISyncSession_vehicleID);
    v31 = *(v18 + OBJC_IVAR____TtC9DashBoard15DBUISyncSession_vehicleID + 8);
    if (v32 != v111 || v31 != v19)
    {
      v30 = sub_248384680();
      if ((v30 & 1) == 0)
      {
        v77 = v19;
        v91(v89, v90, v8);
        v78 = v18;

        v79 = sub_248382A80();
        v80 = sub_248383DA0();
        v96 = v78;

        v81 = v77;

        LODWORD(v99) = v80;
        if (os_log_type_enabled(v79, v80))
        {
          v82 = swift_slowAlloc();
          v83 = swift_slowAlloc();
          *&v100 = v83;
          *v82 = 136446722;
          *(v82 + 4) = sub_24814A378(*(v96 + OBJC_IVAR____TtC9DashBoard15DBUISyncSession_displayID), *(v96 + OBJC_IVAR____TtC9DashBoard15DBUISyncSession_displayID + 8), &v100);
          *(v82 + 12) = 2082;
          *&v107[0] = v111;
          *(&v107[0] + 1) = v81;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE8FD10, &qword_24839D490);
          v84 = sub_2483841D0();
          v86 = v29;
          v87 = sub_24814A378(v84, v85, &v100);

          *(v82 + 14) = v87;
          *(v82 + 22) = 2082;
          *(v82 + 24) = sub_24814A378(v32, v31, &v100);
          _os_log_impl(&dword_248146000, v79, v99, "%{public}s: Received invalid reset vehicle id: %{public}s expected: %{public}s", v82, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x24C1CD5F0](v83, -1, -1);
          MEMORY[0x24C1CD5F0](v82, -1, -1);

          return v86(v89, v98);
        }

        else
        {

          return v29(v89, v8);
        }
      }
    }
  }

  v33 = MEMORY[0x277D85000];
  v34 = (*((*MEMORY[0x277D85000] & *v18) + 0x100))(v30);
  v88 = v29;
  if (v34 > 1)
  {
    v35 = v99;
    if (v34 != 2)
    {

      v37 = (*((*v33 & *v18) + 0x108))(2);
LABEL_14:
      v38 = (*((*v33 & *v18) + 0x130))(v37);
      if (v38)
      {
        [v38 didReset];
        swift_unknownObjectRelease();
      }

      goto LABEL_16;
    }
  }

  else
  {
    v35 = v99;
  }

  v36 = sub_248384680();

  v37 = (*((*v33 & *v18) + 0x108))(2);
  if (v36)
  {
    goto LABEL_14;
  }

LABEL_16:
  (*((*v33 & *v18) + 0xA8))(v95);
  (*((*v33 & *v18) + 0xC0))(1);
  (*((*v33 & *v18) + 0xF0))(v96);
  (*((*v33 & *v18) + 0xD8))(0);
  if (v35 >= 2)
  {
    v39 = 2;
  }

  else
  {
    v39 = v35;
  }

  v40 = (*((*v33 & *v18) + 0x120))(v39);
  v41 = *((*v33 & *v18) + 0x118);
  v42 = v41(v40);
  v43 = 0;
  v44 = 0;
  if (v42 >= 2)
  {
    v43 = *(v18 + OBJC_IVAR____TtC9DashBoard15DBUISyncSession_vehicleID);
    v44 = *(v18 + OBJC_IVAR____TtC9DashBoard15DBUISyncSession_vehicleID + 8);
  }

  v45 = v41(v42);
  result = [objc_opt_self() isMainThread];
  if (result)
  {
    v99 = v45;
    v111 = v43;
    v47 = MEMORY[0x277D85000];
    v48 = *((*MEMORY[0x277D85000] & *v18) + 0xA0);
    if (v48() < 1 || (v49 = *((*v47 & *v18) + 0xB8), v49() < 1))
    {

      sub_2482B39E8();
      swift_allocError();
      *v66 = 0;
      return swift_willThrow();
    }

    v50 = v48();
    v51 = v49();
    v52 = (*((*v47 & *v18) + 0xE8))();
    sub_2482B2064(1, v50, v51, v52, 0, 0xF000000000000000, 0, v111, v109, v44, v99, 0);
    v53 = v94;
    v54 = v98;
    v91(v94, v90, v98);
    v55 = v18;
    sub_24834B078(v109, v107);
    v56 = sub_248382A80();
    v57 = sub_248383D90();

    sub_24834B0D4(v109);
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v106 = v59;
      *v58 = 136446466;
      *(v58 + 4) = sub_24814A378(*(v55 + OBJC_IVAR____TtC9DashBoard15DBUISyncSession_displayID), *(v55 + OBJC_IVAR____TtC9DashBoard15DBUISyncSession_displayID + 8), &v106);
      *(v58 + 12) = 2082;
      v102 = v109[2];
      v103 = v109[3];
      v104 = v109[4];
      v105 = v110;
      v100 = v109[0];
      v101 = v109[1];
      sub_24834B078(v109, v107);
      sub_24834B128();
      v60 = sub_248384650();
      v62 = v61;
      v107[2] = v102;
      v107[3] = v103;
      v107[4] = v104;
      v108 = v105;
      v107[0] = v100;
      v107[1] = v101;
      sub_24834B0D4(v107);
      v63 = sub_24814A378(v60, v62, &v106);

      *(v58 + 14) = v63;
      _os_log_impl(&dword_248146000, v56, v57, "%{public}s: Sending message: %{public}s", v58, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1CD5F0](v59, -1, -1);
      MEMORY[0x24C1CD5F0](v58, -1, -1);

      v64 = v98;
      v65 = v94;
    }

    else
    {

      v65 = v53;
      v64 = v54;
    }

    v88(v65, v64);
    v67 = v93;
    v68 = sub_2482B27D4();
    v69 = sub_2482B27DC(v68);
    if (v67)
    {
      return sub_24834B0D4(v109);
    }

    v71 = *(v55 + OBJC_IVAR____TtC9DashBoard15DBUISyncSession_channel);
    v72 = v69;
    v73 = v70;
    v74 = sub_2483811A0();
    v75 = sub_248383930();
    [v71 sendPayload:v74 forDisplayID:v75 description:0];

    result = (*((*MEMORY[0x277D85000] & *v55) + 0xC8))(v107);
    if (!__OFADD__(*v76, 1))
    {
      ++*v76;
      (result)(v107, 0);
      sub_24823BD70(v72, v73);
      return sub_24834B0D4(v109);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_2483499CC(unsigned __int8 *a1)
{
  v2 = v1;
  v187 = a1;
  v3 = sub_248382A90();
  v169 = *(v3 - 8);
  v170 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = v160 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v165 = (v160 - v7);
  MEMORY[0x28223BE20](v8);
  v10 = v160 - v9;
  MEMORY[0x28223BE20](v11);
  v164 = v160 - v12;
  MEMORY[0x28223BE20](v13);
  v15 = (v160 - v14);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = v160 - v18;
  v20 = MEMORY[0x277D85000];
  v21 = *MEMORY[0x277D85000] & *v1;
  v166 = *(v21 + 0x100);
  v167 = (v21 + 256);
  if (!v166(v17))
  {

    goto LABEL_4;
  }

  v22 = sub_248384680();

  if (v22)
  {
LABEL_4:
    v23 = sub_24827C4F4();
    v24 = v169;
    v25 = v170;
    (*(v169 + 16))(v5, v23, v170);
    v26 = v1;
    v27 = v187;
    sub_24834B078(v187, &v178);
    v28 = sub_248382A80();
    v29 = sub_248383DA0();

    sub_24834B0D4(v27);
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v177 = v31;
      *v30 = 136446722;
      *(v30 + 4) = sub_24814A378(*(v26 + OBJC_IVAR____TtC9DashBoard15DBUISyncSession_displayID), *(v26 + OBJC_IVAR____TtC9DashBoard15DBUISyncSession_displayID + 8), &v177);
      *(v30 + 12) = 2082;
      v32 = (v166)();
      if (v32 > 1)
      {
        if (v32 == 2)
        {
          v33 = 0x80000002483B3A20;
          v34 = 0xD000000000000024;
        }

        else
        {
          v33 = 0xE500000000000000;
          v34 = 0x7964616572;
        }
      }

      else
      {
        v33 = 0xEB0000000064657ALL;
        v34 = 0x696C616974696E69;
        if (v32)
        {
          v34 = 0xD00000000000001ALL;
          v33 = 0x80000002483B3A00;
        }
      }

      v50 = sub_24814A378(v34, v33, &v177);

      *(v30 + 14) = v50;
      *(v30 + 22) = 2082;
      v51 = *(v187 + 3);
      v173 = *(v187 + 2);
      v174 = v51;
      v175 = *(v187 + 4);
      v176 = v187[80];
      v52 = *(v187 + 1);
      v171 = *v187;
      v172 = v52;
      sub_24834B078(v187, &v178);
      sub_24834B128();
      v53 = sub_248384650();
      v55 = v54;
      v180 = v173;
      v181 = v174;
      v182 = v175;
      v183 = v176;
      v178 = v171;
      v179 = v172;
      sub_24834B0D4(&v178);
      v56 = sub_24814A378(v53, v55, &v177);

      *(v30 + 24) = v56;
      swift_arrayDestroy();
      MEMORY[0x24C1CD5F0](v31, -1, -1);
      MEMORY[0x24C1CD5F0](v30, -1, -1);

      (*(v169 + 8))(v5, v170);
    }

    else
    {

      (*(v24 + 8))(v5, v25);
    }

    return;
  }

  v162 = v15;
  v35 = v187;
  LODWORD(v163) = *v187;
  LOBYTE(v177) = v163;
  v184 = 0;
  sub_24834BD5C();
  sub_248383AE0();
  v36 = sub_248383AE0();
  if (v178 == v171)
  {
    if (v35[80])
    {
      v37 = 1;
    }

    else
    {
      v37 = *(v35 + 9);
    }

    sub_248348D08(*(v35 + 7), *(v35 + 8), *(v35 + 1), *(v35 + 2), v37);
    return;
  }

  v38 = *(v35 + 1);
  v39 = *((*v20 & *v1) + 0xA0);
  v160[1] = (*v20 & *v1) + 160;
  v161 = v39;
  if (v38 != (v39)(v36))
  {
    v42 = sub_24827C4F4();
    v43 = v169;
    (*(v169 + 16))(v19, v42, v170);
    v44 = v1;
    sub_24834B078(v35, &v178);
    v45 = sub_248382A80();
    v46 = sub_248383DA0();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      *&v178 = v48;
      *v47 = 136446722;
      *(v47 + 4) = sub_24814A378(*(v44 + OBJC_IVAR____TtC9DashBoard15DBUISyncSession_displayID), *(v44 + OBJC_IVAR____TtC9DashBoard15DBUISyncSession_displayID + 8), &v178);
      *(v47 + 12) = 2050;
      *(v47 + 14) = v38;
      v49 = sub_24834B0D4(v187);
      *(v47 + 22) = 2050;
      *(v47 + 24) = (v161)(v49);

      _os_log_impl(&dword_248146000, v45, v46, "%{public}s: Invalid ssn. Received %{public}ld, Expected %{public}ld", v47, 0x20u);
      __swift_destroy_boxed_opaque_existential_0(v48);
      MEMORY[0x24C1CD5F0](v48, -1, -1);
      MEMORY[0x24C1CD5F0](v47, -1, -1);

      (*(v169 + 8))(v19, v170);
    }

    else
    {

      sub_24834B0D4(v35);
      (*(v43 + 8))(v19, v170);
    }

    return;
  }

  LOBYTE(v177) = v163;
  v184 = 1;
  sub_248383AE0();
  v40 = sub_248383AE0();
  if (v178 == v171)
  {
    if (v187[80])
    {
      v41 = 1;
    }

    else
    {
      v41 = *(v187 + 9);
    }

    sub_24834B17C(*(v187 + 7), *(v187 + 8), *(v187 + 2), *(v187 + 3), v41);
    return;
  }

  v57 = (v166)(v40);
  if (v57 > 1)
  {
    v58 = v170;
    if (v57 != 2)
    {

      goto LABEL_37;
    }
  }

  else
  {
    v58 = v170;
  }

  v59 = sub_248384680();

  if ((v59 & 1) == 0)
  {
    v61 = sub_24827C4F4();
    v62 = v169;
    v63 = v165;
    (*(v169 + 16))(v165, v61, v58);
    v64 = v2;
    v65 = v58;
    v66 = v64;
    v67 = v187;
    sub_24834B078(v187, &v178);
    v68 = sub_248382A80();
    v69 = sub_248383DA0();

    sub_24834B0D4(v67);
    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v177 = v71;
      *v70 = 136446722;
      *(v70 + 4) = sub_24814A378(*&v66[OBJC_IVAR____TtC9DashBoard15DBUISyncSession_displayID], *&v66[OBJC_IVAR____TtC9DashBoard15DBUISyncSession_displayID + 8], &v177);
      *(v70 + 12) = 2082;
      v72 = (v166)();
      if (v72 > 1)
      {
        v73 = v170;
        if (v72 == 2)
        {
          v74 = 0x80000002483B3A20;
          v75 = 0xD000000000000024;
        }

        else
        {
          v74 = 0xE500000000000000;
          v75 = 0x7964616572;
        }
      }

      else
      {
        v73 = v170;
        v74 = 0xEB0000000064657ALL;
        v75 = 0x696C616974696E69;
        if (v72)
        {
          v75 = 0xD00000000000001ALL;
          v74 = 0x80000002483B3A00;
        }
      }

      v132 = sub_24814A378(v75, v74, &v177);

      *(v70 + 14) = v132;
      *(v70 + 22) = 2082;
      v133 = *(v187 + 3);
      v173 = *(v187 + 2);
      v174 = v133;
      v175 = *(v187 + 4);
      v176 = v187[80];
      v134 = *(v187 + 1);
      v171 = *v187;
      v172 = v134;
      sub_24834B078(v187, &v178);
      sub_24834B128();
      v135 = sub_248384650();
      v137 = v136;
      v180 = v173;
      v181 = v174;
      v182 = v175;
      v183 = v176;
      v178 = v171;
      v179 = v172;
      sub_24834B0D4(&v178);
      v138 = sub_24814A378(v135, v137, &v177);

      *(v70 + 24) = v138;
      swift_arrayDestroy();
      MEMORY[0x24C1CD5F0](v71, -1, -1);
      MEMORY[0x24C1CD5F0](v70, -1, -1);

      (*(v169 + 8))(v165, v73);
    }

    else
    {

      (*(v62 + 8))(v63, v65);
    }

    return;
  }

LABEL_37:
  v76 = v20;
  v77 = *(v187 + 2);
  v78 = *v76;
  v79 = *((v78 & *v1) + 0xE8);
  v80 = (v78 & *v1) + 232;
  v81 = (v79)(v60);
  if (__OFADD__(v81, 1))
  {
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
    return;
  }

  v167 = v80;
  if (v77 != v81 + 1)
  {
    v166 = v79;
    v109 = sub_24827C4F4();
    v110 = v169;
    (*(v169 + 16))(v10, v109, v58);
    v111 = v1;
    v112 = v187;
    sub_24834B078(v187, &v178);
    v113 = sub_248382A80();
    v114 = sub_248383DA0();
    if (!os_log_type_enabled(v113, v114))
    {

      sub_24834B0D4(v112);
      (*(v110 + 8))(v10, v58);
      return;
    }

    v165 = v113;
    v115 = swift_slowAlloc();
    v116 = swift_slowAlloc();
    *&v178 = v116;
    *v115 = 136446722;
    *(v115 + 4) = sub_24814A378(*(v111 + OBJC_IVAR____TtC9DashBoard15DBUISyncSession_displayID), *(v111 + OBJC_IVAR____TtC9DashBoard15DBUISyncSession_displayID + 8), &v178);
    *(v115 + 12) = 2050;
    *(v115 + 14) = v77;
    v117 = sub_24834B0D4(v112);
    *(v115 + 22) = 2050;
    v118 = (v166)(v117);
    if (!__OFADD__(v118, 1))
    {
      *(v115 + 24) = v118 + 1;

      v119 = v165;
      _os_log_impl(&dword_248146000, v165, v114, "%{public}s: Invalid psn. Received %{public}ld, Expected %{public}ld", v115, 0x20u);
      __swift_destroy_boxed_opaque_existential_0(v116);
      MEMORY[0x24C1CD5F0](v116, -1, -1);
      MEMORY[0x24C1CD5F0](v115, -1, -1);

      (*(v169 + 8))(v10, v170);
      return;
    }

    goto LABEL_72;
  }

  v82 = MEMORY[0x277D85000];
  v83 = (*((*MEMORY[0x277D85000] & *v1) + 0xF0))(v77);
  v84 = *(v187 + 3);
  v85 = *((*v82 & *v1) + 0xD0);
  v165 = ((*v82 & *v1) + 208);
  v166 = v85;
  if (v84 < (v85)(v83) || (v86 = *((*v82 & *v1) + 0xB8), v84 >= v86()))
  {
    v120 = sub_24827C4F4();
    v121 = v169;
    v122 = v170;
    v123 = v164;
    (*(v169 + 16))(v164, v120, v170);
    v124 = v2;
    v125 = v187;
    sub_24834B078(v187, &v178);
    v126 = sub_248382A80();
    LODWORD(v167) = sub_248383DA0();
    if (os_log_type_enabled(v126, v167))
    {
      v127 = swift_slowAlloc();
      v163 = v126;
      v128 = v127;
      v162 = swift_slowAlloc();
      *&v178 = v162;
      *v128 = 136446978;
      *(v128 + 4) = sub_24814A378(*(v124 + OBJC_IVAR____TtC9DashBoard15DBUISyncSession_displayID), *(v124 + OBJC_IVAR____TtC9DashBoard15DBUISyncSession_displayID + 8), &v178);
      *(v128 + 12) = 2050;
      *(v128 + 14) = v84;
      v129 = sub_24834B0D4(v125);
      *(v128 + 22) = 2050;
      *(v128 + 24) = (v166)(v129);
      *(v128 + 32) = 2050;
      *(v128 + 34) = (*((*MEMORY[0x277D85000] & *v124) + 0xB8))();

      v130 = v163;
      _os_log_impl(&dword_248146000, v163, v167, "%{public}s: Invalid ack sn. Received %{public}ld, Expected in range [%{public}ld...%{public}ld", v128, 0x2Au);
      v131 = v162;
      __swift_destroy_boxed_opaque_existential_0(v162);
      MEMORY[0x24C1CD5F0](v131, -1, -1);
      MEMORY[0x24C1CD5F0](v128, -1, -1);

      (*(v121 + 8))(v164, v170);
    }

    else
    {

      sub_24834B0D4(v125);
      (*(v121 + 8))(v123, v122);
    }

    return;
  }

  (*((*v82 & *v1) + 0xD8))(v84);
  LOBYTE(v177) = v163;
  v184 = 2;
  sub_248383AE0();
  sub_248383AE0();
  if (v178 != v171)
  {
    return;
  }

  if (!sub_2482B2054())
  {
    v139 = MEMORY[0x277D85000];
    goto LABEL_61;
  }

  v87 = v79;
  if (![objc_opt_self() isMainThread])
  {
    goto LABEL_73;
  }

  v88 = v161;
  v89 = v161();
  v90 = v169;
  if (v89 < 1 || v86() < 1)
  {
    sub_2482B39E8();
    swift_allocError();
    *v147 = 0;
    swift_willThrow();
    return;
  }

  v91 = v88();
  v92 = v86();
  v93 = v87();
  sub_2482B2064(3, v91, v92, v93, 0, 0xF000000000000000, 0, 0, v185, 0, 0, 1);
  v94 = sub_24827C4F4();
  v95 = v162;
  v96 = v170;
  (*(v90 + 16))(v162, v94, v170);
  v97 = v1;
  sub_24834B078(v185, &v178);
  v98 = sub_248382A80();
  v99 = v90;
  v100 = v97;
  v101 = sub_248383D90();

  sub_24834B0D4(v185);
  v102 = os_log_type_enabled(v98, v101);
  v167 = v97;
  if (v102)
  {
    LODWORD(v166) = v101;
    v103 = swift_slowAlloc();
    v104 = swift_slowAlloc();
    v177 = v104;
    *v103 = 136446466;
    *(v103 + 4) = sub_24814A378(*(v100 + OBJC_IVAR____TtC9DashBoard15DBUISyncSession_displayID), *(v100 + OBJC_IVAR____TtC9DashBoard15DBUISyncSession_displayID + 8), &v177);
    *(v103 + 12) = 2082;
    v173 = v185[2];
    v174 = v185[3];
    v175 = v185[4];
    v176 = v186;
    v171 = v185[0];
    v172 = v185[1];
    sub_24834B078(v185, &v178);
    sub_24834B128();
    v105 = sub_248384650();
    v107 = v106;
    v180 = v173;
    v181 = v174;
    v182 = v175;
    v183 = v176;
    v178 = v171;
    v179 = v172;
    sub_24834B0D4(&v178);
    v108 = sub_24814A378(v105, v107, &v177);

    *(v103 + 14) = v108;
    _os_log_impl(&dword_248146000, v98, v166, "%{public}s: Sending message: %{public}s", v103, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1CD5F0](v104, -1, -1);
    MEMORY[0x24C1CD5F0](v103, -1, -1);

    (*(v99 + 8))(v95, v170);
  }

  else
  {

    (*(v99 + 8))(v95, v96);
  }

  v148 = v168;
  v149 = sub_2482B27D4();
  v150 = sub_2482B27DC(v149);
  if (v148)
  {
    sub_24834B0D4(v185);
    return;
  }

  v152 = v167;
  v153 = *(v167 + OBJC_IVAR____TtC9DashBoard15DBUISyncSession_channel);
  v154 = v150;
  v155 = v151;
  v156 = sub_2483811A0();
  v157 = sub_248383930();
  [v153 sendPayload:v156 forDisplayID:v157 description:0];

  v139 = MEMORY[0x277D85000];
  v158 = (*((*MEMORY[0x277D85000] & *v152) + 0xC8))(&v178);
  if (__OFADD__(*v159, 1))
  {
    goto LABEL_74;
  }

  ++*v159;
  v158(&v178, 0);
  sub_24823BD70(v154, v155);
  sub_24834B0D4(v185);
LABEL_61:
  v140 = *(v187 + 5);
  if (v140 >> 60 != 15)
  {
    v141 = *(v187 + 4);
    v142 = *((*v139 & *v2) + 0x130);
    v143 = sub_24825CD28(v141, *(v187 + 5));
    v144 = v142(v143);
    if (v144)
    {
      v145 = v144;
      v146 = sub_2483811A0();
      [v145 didReceiveData_];
      sub_2482B3EB4(v141, v140);

      swift_unknownObjectRelease();
    }

    else
    {
      sub_2482B3EB4(v141, v140);
    }
  }
}

void sub_24834AF98(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  swift_unknownObjectRetain();
  v6 = a1;
  a4();
  swift_unknownObjectRelease();
}

unint64_t sub_24834B008(uint64_t a1, uint64_t a2)
{
  v2 = sub_248384620();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_24834B128()
{
  result = qword_27EE94058;
  if (!qword_27EE94058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE94058);
  }

  return result;
}

void sub_24834B17C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, uint64_t), uint64_t a5)
{
  v95 = a4;
  v93 = a3;
  v9 = sub_248382A90();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v97 = &v89 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v96 = &v89 - v13;
  MEMORY[0x28223BE20](v14);
  v90 = &v89 - v15;
  MEMORY[0x28223BE20](v16);
  v92 = &v89 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v89 - v19;
  v21 = sub_24827C4F4();
  v22 = *(v10 + 16);
  v100 = v21;
  v101 = v22;
  v102 = v10 + 16;
  (v22)(v20);

  v23 = v5;
  v24 = a2;
  v25 = sub_248382A80();
  v26 = sub_248383D90();

  v27 = os_log_type_enabled(v25, v26);
  v103 = v10;
  v94 = v24;
  v91 = a1;
  v99 = a5;
  if (v27)
  {
    v28 = a1;
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v98 = v9;
    v31 = v30;
    v106 = v30;
    *v29 = 136446722;
    *(v29 + 4) = sub_24814A378(*(v23 + OBJC_IVAR____TtC9DashBoard15DBUISyncSession_displayID), *(v23 + OBJC_IVAR____TtC9DashBoard15DBUISyncSession_displayID + 8), &v106);
    *(v29 + 12) = 2048;
    *(v29 + 14) = a5;
    *(v29 + 22) = 2082;
    v104 = v28;
    v105 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE8FD10, &qword_24839D490);
    v32 = sub_2483841D0();
    v34 = sub_24814A378(v32, v33, &v106);

    *(v29 + 24) = v34;
    _os_log_impl(&dword_248146000, v25, v26, "%{public}s: Received reset complete with protocol version %ld, vehicleID %{public}s", v29, 0x20u);
    swift_arrayDestroy();
    v35 = v31;
    v9 = v98;
    MEMORY[0x24C1CD5F0](v35, -1, -1);
    MEMORY[0x24C1CD5F0](v29, -1, -1);

    v36 = *(v103 + 8);
  }

  else
  {

    v36 = *(v10 + 8);
  }

  v37 = v36(v20, v9);
  v38 = MEMORY[0x277D85000];
  v39 = *((*MEMORY[0x277D85000] & *v23) + 0x100);
  if ((v39)(v37) == 2)
  {

    goto LABEL_7;
  }

  v41 = 0x80000002483B3A20;
  v42 = sub_248384680();

  if ((v42 & 1) == 0)
  {
    v95 = v36;
    v56 = v97;
    v101(v97, v100, v9);
    v57 = v23;
    v58 = sub_248382A80();
    v59 = sub_248383DA0();

    if (!os_log_type_enabled(v58, v59))
    {

      goto LABEL_23;
    }

    v98 = v9;
    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v104 = v61;
    *v60 = 136446466;
    *(v60 + 4) = sub_24814A378(*(v57 + OBJC_IVAR____TtC9DashBoard15DBUISyncSession_displayID), *(v57 + OBJC_IVAR____TtC9DashBoard15DBUISyncSession_displayID + 8), &v104);
    *(v60 + 12) = 2082;
    v62 = v39();
    if (v62 > 1)
    {
      v63 = v97;
      if (v62 == 2)
      {
        v64 = 0xD000000000000024;
      }

      else
      {
        v41 = 0xE500000000000000;
        v64 = 0x7964616572;
      }
    }

    else
    {
      v63 = v97;
      if (!v62)
      {
        v41 = 0xEB0000000064657ALL;
        v36 = v95;
        v64 = 0x696C616974696E69;
LABEL_35:
        v86 = sub_24814A378(v64, v41, &v104);

        *(v60 + 14) = v86;
        swift_arrayDestroy();
        MEMORY[0x24C1CD5F0](v61, -1, -1);
        MEMORY[0x24C1CD5F0](v60, -1, -1);

        v87 = v63;
        v88 = v98;
        goto LABEL_36;
      }

      v41 = 0x80000002483B3A00;
      v64 = 0xD00000000000001ALL;
    }

    v36 = v95;
    goto LABEL_35;
  }

LABEL_7:
  v43 = *((*v38 & *v23) + 0x118);
  v44 = (v43)(v40);
  if (v44 != v99)
  {
    v95 = v36;
    v56 = v96;
    v101(v96, v100, v9);
    v65 = v23;
    v66 = sub_248382A80();
    v67 = sub_248383DB0();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      v98 = v9;
      v69 = v68;
      v70 = swift_slowAlloc();
      v104 = v70;
      *v69 = 136446722;
      *(v69 + 4) = sub_24814A378(*(v65 + OBJC_IVAR____TtC9DashBoard15DBUISyncSession_displayID), *(v65 + OBJC_IVAR____TtC9DashBoard15DBUISyncSession_displayID + 8), &v104);
      *(v69 + 12) = 2050;
      *(v69 + 14) = v43();

      *(v69 + 22) = 2050;
      *(v69 + 24) = v99;
      _os_log_impl(&dword_248146000, v66, v67, "%{public}s: Received invalid reset complete protocol version, expected %{public}ld, received %{public}ld.", v69, 0x20u);
      __swift_destroy_boxed_opaque_existential_0(v70);
      MEMORY[0x24C1CD5F0](v70, -1, -1);
      MEMORY[0x24C1CD5F0](v69, -1, -1);

      v71 = v96;
      v72 = v98;
LABEL_24:
      v95(v71, v72);
      return;
    }

LABEL_23:
    v71 = v56;
    v72 = v9;
    goto LABEL_24;
  }

  v45 = v94;
  if (v99 >= 2 && (!v94 || (*(v23 + OBJC_IVAR____TtC9DashBoard15DBUISyncSession_vehicleID) != v91 || *(v23 + OBJC_IVAR____TtC9DashBoard15DBUISyncSession_vehicleID + 8) != v94) && (sub_248384680() & 1) == 0))
  {
    v75 = v90;
    v101(v90, v100, v9);
    v76 = v23;

    v77 = sub_248382A80();
    v78 = v9;
    v79 = sub_248383DA0();

    if (os_log_type_enabled(v77, v79))
    {
      v80 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      v95 = v36;
      v82 = v81;
      v106 = v81;
      *v80 = 136446722;
      *(v80 + 4) = sub_24814A378(*(v76 + OBJC_IVAR____TtC9DashBoard15DBUISyncSession_displayID), *(v76 + OBJC_IVAR____TtC9DashBoard15DBUISyncSession_displayID + 8), &v106);
      *(v80 + 12) = 2082;
      v104 = v91;
      v105 = v45;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE8FD10, &qword_24839D490);
      v83 = sub_2483841D0();
      v85 = sub_24814A378(v83, v84, &v106);

      *(v80 + 14) = v85;
      *(v80 + 22) = 2082;
      *(v80 + 24) = sub_24814A378(*(v76 + OBJC_IVAR____TtC9DashBoard15DBUISyncSession_vehicleID), *(v76 + OBJC_IVAR____TtC9DashBoard15DBUISyncSession_vehicleID + 8), &v106);
      _os_log_impl(&dword_248146000, v77, v79, "%{public}s: Received invalid reset complete vehicle id: %{public}s expected: %{public}s", v80, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C1CD5F0](v82, -1, -1);
      MEMORY[0x24C1CD5F0](v80, -1, -1);

      v71 = v90;
      v72 = v78;
      goto LABEL_24;
    }

    v87 = v75;
    v88 = v78;
LABEL_36:
    v36(v87, v88);
    return;
  }

  v46 = v36;
  v47 = v92;
  v101(v92, v100, v9);
  v48 = v23;
  v49 = sub_248382A80();
  v50 = sub_248383D90();

  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v52 = v9;
    v53 = swift_slowAlloc();
    v104 = v53;
    *v51 = 136446210;
    *(v51 + 4) = sub_24814A378(*(v48 + OBJC_IVAR____TtC9DashBoard15DBUISyncSession_displayID), *(v48 + OBJC_IVAR____TtC9DashBoard15DBUISyncSession_displayID + 8), &v104);
    _os_log_impl(&dword_248146000, v49, v50, "%{public}s: Ready to send/receive messages", v51, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v53);
    MEMORY[0x24C1CD5F0](v53, -1, -1);
    MEMORY[0x24C1CD5F0](v51, -1, -1);

    v54 = v47;
    v55 = v52;
    v38 = MEMORY[0x277D85000];
  }

  else
  {

    v54 = v47;
    v55 = v9;
  }

  v46(v54, v55);
  (*((*v38 & *v48) + 0xF0))(v93);
  (*((*v38 & *v48) + 0xD8))(v95);
  v73 = (*((*v38 & *v48) + 0x108))(3);
  v74 = (*((*v38 & *v48) + 0x130))(v73);
  if (v74)
  {
    [v74 didConnect];
    swift_unknownObjectRelease();
  }
}

unint64_t sub_24834BD5C()
{
  result = qword_27EE94068;
  if (!qword_27EE94068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE94068);
  }

  return result;
}

id _s9DashBoard15DBUISyncSessionC7didOpenyySo0C15ChannelProtocol_pF_0()
{
  v1 = sub_248382A90();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  MEMORY[0x28223BE20](v3);
  v5 = &v17 - v4;
  v6 = sub_24827C4F4();
  v18 = *(v2 + 16);
  v18(v5, v6, v1);
  v7 = v0;
  v8 = sub_248382A80();
  v9 = sub_248383D90();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v17 = v6;
    v12 = v1;
    v13 = v2;
    v14 = v11;
    v19 = v11;
    *v10 = 136446210;
    *(v10 + 4) = sub_24814A378(*&v7[OBJC_IVAR____TtC9DashBoard15DBUISyncSession_displayID], *&v7[OBJC_IVAR____TtC9DashBoard15DBUISyncSession_displayID + 8], &v19);
    _os_log_impl(&dword_248146000, v8, v9, "%{public}s: Session opened", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    v15 = v14;
    v2 = v13;
    v1 = v12;
    MEMORY[0x24C1CD5F0](v15, -1, -1);
    MEMORY[0x24C1CD5F0](v10, -1, -1);
  }

  (*(v2 + 8))(v5, v1);
  return sub_248348530();
}

uint64_t sub_24834C170(uint64_t a1, uint64_t a2)
{
  v3 = sub_248382A90();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  MEMORY[0x28223BE20](v5);
  v7 = &v20 - v6;
  sub_2482B20E4(v33);
  v8 = sub_24827C4F4();
  (*(v4 + 16))(v7, v8, v3);
  v22 = v2;
  v9 = v2;
  sub_24834B078(v33, v31);
  v10 = v3;
  v11 = sub_248382A80();
  v12 = sub_248383D90();

  sub_24834B0D4(v33);
  if (os_log_type_enabled(v11, v12))
  {
    v23 = v10;
    v13 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v30 = v21;
    *v13 = 136446466;
    *(v13 + 4) = sub_24814A378(*&v9[OBJC_IVAR____TtC9DashBoard15DBUISyncSession_displayID], *&v9[OBJC_IVAR____TtC9DashBoard15DBUISyncSession_displayID + 8], &v30);
    *(v13 + 12) = 2082;
    v26 = v33[2];
    v27 = v33[3];
    v28 = v33[4];
    v29 = v34;
    v24 = v33[0];
    v25 = v33[1];
    sub_24834B078(v33, v31);
    sub_24834B128();
    v14 = sub_248384650();
    HIDWORD(v20) = v12;
    v16 = v15;
    v31[2] = v26;
    v31[3] = v27;
    v31[4] = v28;
    v32 = v29;
    v31[0] = v24;
    v31[1] = v25;
    sub_24834B0D4(v31);
    v17 = sub_24814A378(v14, v16, &v30);

    *(v13 + 14) = v17;
    _os_log_impl(&dword_248146000, v11, BYTE4(v20), "%{public}s: Received message: %{public}s", v13, 0x16u);
    v18 = v21;
    swift_arrayDestroy();
    MEMORY[0x24C1CD5F0](v18, -1, -1);
    MEMORY[0x24C1CD5F0](v13, -1, -1);

    (*(v4 + 8))(v7, v23);
  }

  else
  {

    (*(v4 + 8))(v7, v10);
  }

  sub_2483499CC(v33);
  return sub_24834B0D4(v33);
}

uint64_t _s9DashBoard15DBUISyncSessionC8didCloseyySo0C15ChannelProtocol_pF_0()
{
  v1 = sub_248382A90();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24827C4F4();
  (*(v2 + 16))(v4, v5, v1);
  v6 = v0;
  v7 = sub_248382A80();
  v8 = sub_248383D90();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v13 = v10;
    *v9 = 136446210;
    *(v9 + 4) = sub_24814A378(*&v6[OBJC_IVAR____TtC9DashBoard15DBUISyncSession_displayID], *&v6[OBJC_IVAR____TtC9DashBoard15DBUISyncSession_displayID + 8], &v13);
    _os_log_impl(&dword_248146000, v7, v8, "%{public}s: Session closed", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x24C1CD5F0](v10, -1, -1);
    MEMORY[0x24C1CD5F0](v9, -1, -1);
  }

  return (*(v2 + 8))(v4, v1);
}

unint64_t sub_24834C80C()
{
  result = qword_27EE94070;
  if (!qword_27EE94070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE94070);
  }

  return result;
}

unint64_t sub_24834C864()
{
  result = qword_27EE94078;
  if (!qword_27EE94078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE94078);
  }

  return result;
}

unint64_t sub_24834C8BC()
{
  result = qword_27EE94080;
  if (!qword_27EE94080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE94080);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ProtocolVersion(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ProtocolVersion(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_24834CB40()
{
  v1 = OBJC_IVAR____TtC9DashBoard36DBInstrumentClusterLayoutCoordinator_transitionLastPTS;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_24834CB84(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9DashBoard36DBInstrumentClusterLayoutCoordinator_transitionLastPTS;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

double sub_24834CC9C(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  *(v2 + v4) = a1;

  return result;
}

uint64_t sub_24834CD80()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_248382E90();

  return v1;
}

uint64_t sub_24834CDF4@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xF0))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_24834CEAC(char a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  return sub_248382EA0();
}

uint64_t (*sub_24834CF18(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_248382E80();
  return sub_24834CFBC;
}

void sub_24834CFBC(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t sub_24834D02C()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8FFA8, &qword_24839D208);
  sub_248382E60();
  return swift_endAccess();
}

uint64_t sub_24834D0A0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90340, qword_2483A2190);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8FFA8, &qword_24839D208);
  sub_248382E70();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*sub_24834D1D8(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90340, qword_2483A2190);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC9DashBoard36DBInstrumentClusterLayoutCoordinator__readyToTransitionLayout;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8FFA8, &qword_24839D208);
  sub_248382E60();
  swift_endAccess();
  return sub_24834D348;
}

void sub_24834D348(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[13];
  v11 = v3[14];
  v7 = v3[11];
  v6 = v3[12];
  v8 = v3[10];
  if (a2)
  {
    v4(v3[12], v5, v3[10]);
    swift_beginAccess();
    sub_248382E70();
    swift_endAccess();
    v9 = *(v7 + 8);
    v9(v5, v8);
    v10 = v11;
    v9(v11, v8);
  }

  else
  {
    swift_beginAccess();
    sub_248382E70();
    swift_endAccess();
    v10 = v11;
    (*(v7 + 8))(v11, v8);
  }

  free(v10);
  free(v5);
  free(v6);

  free(v3);
}

void sub_24834D4B8(char a1)
{
  v2 = v1;
  v3 = a1 & 1;
  v30 = *MEMORY[0x277D85DE8];
  v4 = sub_248382A90();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC9DashBoard36DBInstrumentClusterLayoutCoordinator_transitioning;
  swift_beginAccess();
  if (v2[v8] != v3)
  {
    v9 = sub_24827C568();
    (*(v5 + 16))(v7, v9, v4);
    v10 = v2;
    v11 = sub_248382A80();
    v12 = sub_248383D80();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 67240192;
      *(v13 + 4) = v2[v8];

      _os_log_impl(&dword_248146000, v11, v12, "Transitioning: %{BOOL,public}d", v13, 8u);
      MEMORY[0x24C1CD5F0](v13, -1, -1);
    }

    else
    {

      v11 = v10;
    }

    (*(v5 + 8))(v7, v4);
    *&v27 = 0x69736E6172547369;
    *(&v27 + 1) = 0xEF676E696E6F6974;
    sub_2483843E0();
    v14 = v2[v8];
    v28 = MEMORY[0x277D839B0];
    LOBYTE(v27) = v14;
    sub_24825E6A0(&v27, v26);
    v15 = MEMORY[0x277D84F98];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25[2] = v15;
    sub_248355C94(v26, v29, isUniquelyReferenced_nonNull_native);
    sub_2482655AC(v29);
    v17 = *(&v10->isa + OBJC_IVAR____TtC9DashBoard36DBInstrumentClusterLayoutCoordinator_uisyncSession);
    v18 = sub_248383880();

    v29[0] = 0;
    LODWORD(v17) = [v17 metadataTransfer:v18 error:v29];

    if (v17)
    {
      v19 = v29[0];
      if (v2[v8])
      {
        return;
      }
    }

    else
    {
      v20 = v29[0];
      v21 = sub_2483810C0();

      swift_willThrow();
      if (v2[v8])
      {
        return;
      }
    }

    v22 = (*((*MEMORY[0x277D85000] & v10->isa) + 0xB8))(v29);
    v24 = v23;

    *v24 = v15;
    v22(v29, 0);
  }
}

uint64_t sub_24834D844()
{
  v1 = OBJC_IVAR____TtC9DashBoard36DBInstrumentClusterLayoutCoordinator_transitioning;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_24834D888(char a1)
{
  v3 = OBJC_IVAR____TtC9DashBoard36DBInstrumentClusterLayoutCoordinator_transitioning;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  sub_24834D4B8(v4);
}

void (*sub_24834D8E0(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC9DashBoard36DBInstrumentClusterLayoutCoordinator_transitioning;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_24834D974;
}

void sub_24834D974(uint64_t a1)
{
  v1 = *a1;
  v3 = *(*a1 + 24);
  v2 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  v5 = *(v3 + v2);
  *(v3 + v2) = v4;
  sub_24834D4B8(v5);

  free(v1);
}

uint64_t sub_24834D9C4()
{
  v1 = OBJC_IVAR____TtC9DashBoard36DBInstrumentClusterLayoutCoordinator_processMetadata;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_24834DA08(char a1)
{
  v3 = OBJC_IVAR____TtC9DashBoard36DBInstrumentClusterLayoutCoordinator_processMetadata;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_24834DAD8()
{
  v1 = *(v0 + OBJC_IVAR____TtC9DashBoard36DBInstrumentClusterLayoutCoordinator_screenID);

  return v1;
}

char *DBInstrumentClusterLayoutCoordinator.__allocating_init(transitionCoordinator:screenID:uisyncSession:latency:scaleFactor:)(uint64_t a1, void (*a2)(void, void, __n128), uint64_t a3, void *a4, uint64_t a5, double a6)
{
  v13 = objc_allocWithZone(v6);
  v14 = sub_24835738C(a1, a2, a3, a4, a5, a6);

  return v14;
}

char *DBInstrumentClusterLayoutCoordinator.init(transitionCoordinator:screenID:uisyncSession:latency:scaleFactor:)(uint64_t a1, void (*a2)(void, void, __n128), uint64_t a3, void *a4, uint64_t a5, double a6)
{
  v7 = sub_24835738C(a1, a2, a3, a4, a5, a6);

  return v7;
}

void sub_24834DBE0(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8FE30, &unk_2483A14F0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v15 - v2;
  v4 = sub_248382A90();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = sub_24827C568();
    (*(v5 + 16))(v7, v10, v4);
    v11 = sub_248382A80();
    v12 = sub_248383D80();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_248146000, v11, v12, "Transitioning Component: true", v13, 2u);
      MEMORY[0x24C1CD5F0](v13, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
    v14 = MEMORY[0x277D85000];
    (*((*MEMORY[0x277D85000] & *v9) + 0x128))(1);
    sub_248381EF0();
    sub_24835212C(v3);
    sub_24822D578(v3, &qword_27EE8FE30, &unk_2483A14F0);
    (*((*v14 & *v9) + 0x140))(1);
  }
}

void sub_24834DE94(uint64_t a1)
{
  v1 = sub_248382A90();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = sub_24827C568();
    (*(v2 + 16))(v4, v7, v1);
    v8 = sub_248382A80();
    v9 = sub_248383D80();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_248146000, v8, v9, "Transitioning Component: false", v10, 2u);
      MEMORY[0x24C1CD5F0](v10, -1, -1);
    }

    (*(v2 + 8))(v4, v1);
    sub_248352BD0();
  }
}

void sub_24834E024(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  v38 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE942D0, qword_2483A2320);
  MEMORY[0x28223BE20](v4 - 8);
  v36 = &v34 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8FE30, &unk_2483A14F0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v37 = &v34 - v10;
  v11 = sub_2483824B0();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_248382A90();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v21 = Strong;
    v35 = v14;
    v22 = sub_24827C568();
    (*(v16 + 16))(v18, v22, v15);
    v23 = sub_248382A80();
    v24 = sub_248383D80();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v34 = v12;
      v26 = v11;
      v27 = v25;
      *v25 = 67240192;
      *(v25 + 4) = v19;
      _os_log_impl(&dword_248146000, v23, v24, "Transitioning Layout: %{BOOL,public}d", v25, 8u);
      v28 = v27;
      v11 = v26;
      v12 = v34;
      MEMORY[0x24C1CD5F0](v28, -1, -1);
    }

    (*(v16 + 8))(v18, v15);
    if (v19)
    {
      v29 = v36;
      sub_248381ED0();
      v30 = sub_248381EC0();
      v31 = *(v30 - 8);
      if ((*(v31 + 48))(v29, 1, v30) == 1)
      {

        sub_24822D578(v29, &unk_27EE942D0, qword_2483A2320);
        v8 = v37;
        (*(v12 + 56))(v37, 1, 1, v11);
LABEL_11:
        sub_24822D578(v8, &qword_27EE8FE30, &unk_2483A14F0);
        return;
      }

      v8 = v37;
      sub_248381E90();
      (*(v31 + 8))(v29, v30);
      if ((*(v12 + 48))(v8, 1, v11) != 1)
      {
        v32 = v35;
        (*(v12 + 32))(v35, v8, v11);
        v33 = MEMORY[0x277D85000];
        (*((*MEMORY[0x277D85000] & *v21) + 0x128))(1);
        sub_248350C40(v32);
        (*((*v33 & *v21) + 0x140))(1);
        (*((*v33 & *v21) + 0xF8))(1);

        (*(v12 + 8))(v32, v11);
        return;
      }
    }

    else
    {
      sub_248381EF0();
      if ((*(v12 + 48))(v8, 1, v11) != 1)
      {
        sub_24822D578(v8, &qword_27EE8FE30, &unk_2483A14F0);
        sub_248351568();
        (*((*MEMORY[0x277D85000] & *v21) + 0xF8))(0);

        return;
      }
    }

    goto LABEL_11;
  }
}

void sub_24834E5DC(unsigned __int8 *a1, uint64_t a2)
{
  v3 = sub_248382A90();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = sub_24827C568();
    (*(v4 + 16))(v6, v10, v3);
    v11 = sub_248382A80();
    v12 = sub_248383D80();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 67240192;
      *(v13 + 4) = v7;
      _os_log_impl(&dword_248146000, v11, v12, "Transitioning Request Content: %{BOOL,public}d", v13, 8u);
      MEMORY[0x24C1CD5F0](v13, -1, -1);
    }

    (*(v4 + 8))(v6, v3);
    if (v7)
    {
      v14 = MEMORY[0x277D85000];
      (*((*MEMORY[0x277D85000] & *v9) + 0x128))(1);
      sub_2483506EC();
      (*((*v14 & *v9) + 0x140))(1);
    }

    else
    {
      sub_248350BC4();
    }
  }
}

uint64_t sub_24834E814(int a1)
{
  v2 = v1;
  v66 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE942C0, &qword_2483A2310);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v57 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE942C8, &qword_2483A2318);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v57 - v7;
  v9 = sub_248383040();
  v65 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v62 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v64 = &v57 - v12;
  MEMORY[0x28223BE20](v13);
  v60 = &v57 - v14;
  MEMORY[0x28223BE20](v15);
  v63 = &v57 - v16;
  v17 = sub_248382A90();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v61 = &v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v57 - v21;
  v23 = sub_24827C568();
  v58 = *(v18 + 16);
  v59 = v23;
  v58(v22);
  v24 = sub_248382A80();
  v25 = sub_248383D80();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v57 = v17;
    v27 = v8;
    v28 = v5;
    v29 = v9;
    v30 = v2;
    v31 = v26;
    *v26 = 67240192;
    *(v26 + 4) = v66 & 1;
    _os_log_impl(&dword_248146000, v24, v25, "Transitioning Appearance: %{BOOL,public}d", v26, 8u);
    v32 = v31;
    v2 = v30;
    v9 = v29;
    v5 = v28;
    v8 = v27;
    v17 = v57;
    MEMORY[0x24C1CD5F0](v32, -1, -1);
  }

  v33 = *(v18 + 8);
  v33(v22, v17);
  if (v66)
  {
    sub_248381E40();
    v34 = sub_248381E30();
    v35 = *(v34 - 8);
    if ((*(v35 + 48))(v8, 1, v34) == 1)
    {
      sub_24822D578(v8, &qword_27EE942C8, &qword_2483A2318);
      v36 = v61;
      (v58)(v61, v59, v17);
      v37 = sub_248382A80();
      v38 = sub_248383DA0();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&dword_248146000, v37, v38, "Error transitioning Appearance: appearanceTransition must not be nil", v39, 2u);
        MEMORY[0x24C1CD5F0](v39, -1, -1);
      }

      return (v33)(v36, v17);
    }

    else
    {
      v42 = v60;
      sub_248381E20();
      (*(v35 + 8))(v8, v34);
      v43 = v65;
      v44 = v63;
      (*(v65 + 32))(v63, v42, v9);
      v45 = MEMORY[0x277D85000];
      (*((*MEMORY[0x277D85000] & *v2) + 0x128))(1);
      v46 = v64;
      (*(v43 + 104))(v64, *MEMORY[0x277CDF3C0], v9);
      v47 = v9;
      v48 = sub_248383030();
      v49 = *(v43 + 8);
      v49(v46, v47);
      if (v48)
      {
        v50 = 2;
      }

      else
      {
        v50 = 1;
      }

      sub_248353748(v50, "Handling appearance transition start: %{public}s", &selRef_sendAppearanceChangeStart_error_, "Unable to send appearance transition start: %{public}s / %{public}ld %{public}s");
      (*((*v45 & *v2) + 0x140))(1);
      return (v49)(v44, v47);
    }
  }

  else
  {
    sub_248381F70();
    v41 = v65;
    if ((*(v65 + 48))(v5, 1, v9) == 1)
    {
      return sub_24822D578(v5, &qword_27EE942C0, &qword_2483A2310);
    }

    else
    {
      v51 = v62;
      (*(v41 + 32))(v62, v5, v9);
      v52 = v64;
      (*(v41 + 104))(v64, *MEMORY[0x277CDF3C0], v9);
      v53 = v9;
      v54 = sub_248383030();
      v55 = *(v41 + 8);
      v55(v52, v53);
      if (v54)
      {
        v56 = 2;
      }

      else
      {
        v56 = 1;
      }

      sub_248353748(v56, "Handling appearance transition end: %{public}s", &selRef_sendAppearanceChangeEnd_error_, "Unable to send appearance transition end: %{public}s / %{public}ld %{public}s");
      return (v55)(v51, v53);
    }
  }
}

void *sub_24834EF44(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = (a1 + 32);
    v3 = MEMORY[0x277D84F90];
    while (1)
    {
      v4 = *v2;

      v37 = v4;
      v34.a = 1.67501583e243;
      v34.b = -5.98008217e197;

      sub_2483843E0();
      if (!*(v4 + 16))
      {
        break;
      }

      v5 = sub_2482652B8(&v36);
      if ((v6 & 1) == 0)
      {
        break;
      }

      sub_24814A550(*(v4 + 56) + 32 * v5, &t2);
      sub_2482655AC(&v36);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE941D8, &unk_2483A2280);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_9;
      }

      if (*(*&v34.a + 16) != 16)
      {

        goto LABEL_9;
      }

      v28 = *(*&v34.a + 64);
      v31 = *(*&v34.a + 32);
      v24 = *(*&v34.a + 80);
      v25 = *(*&v34.a + 48);
      v26 = *(*&v34.a + 128);
      v27 = *(*&v34.a + 96);
      v22 = *(*&v34.a + 144);
      v23 = *(*&v34.a + 112);

      *&v36.m11 = v31;
      *&v36.m13 = v25;
      *&v36.m21 = v28;
      *&v36.m23 = v24;
      *&v36.m31 = v27;
      *&v36.m33 = v23;
      *&v36.m41 = v26;
      *&v36.m43 = v22;
      CATransform3DGetAffineTransform(&t2, &v36);
      tx = t2.tx;
      ty = t2.ty;
      v29 = *&t2.c;
      v32 = *&t2.a;
      CGAffineTransformMakeScale(&v36, *(v21 + OBJC_IVAR____TtC9DashBoard36DBInstrumentClusterLayoutCoordinator_scaleFactor), *(v21 + OBJC_IVAR____TtC9DashBoard36DBInstrumentClusterLayoutCoordinator_scaleFactor));
      v9 = *&v36.m11;
      v10 = *&v36.m13;
      v11 = *&v36.m21;
      *&v36.m11 = v32;
      *&v36.m13 = v29;
      v36.m21 = tx;
      v36.m22 = ty;
      *&t2.a = v9;
      *&t2.c = v10;
      *&t2.tx = v11;
      CGAffineTransformConcat(&v34, &v36, &t2);
      v12 = v34.tx;
      v13 = v34.ty;
      v30 = *&v34.c;
      v33 = *&v34.a;
      t2.a = 1.67501583e243;
      t2.b = -5.98008217e197;
      sub_2483843E0();
      sub_2483552A4(&v36, &t2);
      sub_24822D578(&t2, &unk_27EE941B0, &unk_24839C9C0);
      sub_2482655AC(&v36);
      t2.a = 1.67501583e243;
      t2.b = -2.56842574e207;
      sub_2483843E0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE941E0, &unk_2483A1618);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_2483A2130;
      *(v14 + 32) = v33;
      *(v14 + 48) = v30;
      *(v14 + 64) = v12;
      *(v14 + 72) = v13;
      *&t2.d = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE941E8, &qword_2483A2290);
      *&t2.a = v14;
      sub_24825E6A0(&t2, &v34);
      v15 = v37;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_248355C94(&v34, &v36, isUniquelyReferenced_nonNull_native);
      sub_2482655AC(&v36);
      v17 = v15;
LABEL_10:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v3 = sub_2483550EC(0, v3[2] + 1, 1, v3);
      }

      v19 = v3[2];
      v18 = v3[3];
      if (v19 >= v18 >> 1)
      {
        v3 = sub_2483550EC((v18 > 1), v19 + 1, 1, v3);
      }

      v3[2] = v19 + 1;
      v3[v19 + 4] = v17;

      ++v2;
      if (!--v1)
      {
        return v3;
      }
    }

    sub_2482655AC(&v36);
LABEL_9:
    v17 = v4;
    goto LABEL_10;
  }

  return MEMORY[0x277D84F90];
}

void sub_24834F2F0(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = (a1 + 40);
    do
    {
      v4 = *v3;
      v5[0] = *(v3 - 1);
      v5[1] = v4;

      sub_24834F358(v5, v1);

      v3 += 2;
      --v2;
    }

    while (v2);
  }
}

double sub_24834F358(uint64_t *a1, void *a2)
{
  v4 = sub_248382A90();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v10 = a1[1];
  v11 = MEMORY[0x277D85000];
  v12 = (*((*MEMORY[0x277D85000] & *a2) + 0xA8))(v6);
  if (*(v12 + 16) && (v13 = sub_24822B8A0(v9, v10), (v14 & 1) != 0))
  {
    v15 = *(*(v12 + 56) + 8 * v13);

    *&v34 = 0xD000000000000012;
    *(&v34 + 1) = 0x80000002483B3CA0;
    sub_2483843E0();
    v16 = MEMORY[0x277D839F8];
    v35 = MEMORY[0x277D839F8];
    *&v34 = 0;
    sub_24825E6A0(&v34, v33);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v32 = v15;
    sub_248355C94(v33, v36, isUniquelyReferenced_nonNull_native);
    sub_2482655AC(v36);
    v18 = v32;
    *&v34 = 0x7974696361706FLL;
    *(&v34 + 1) = 0xE700000000000000;
    sub_2483843E0();
    v35 = v16;
    *&v34 = 0;
    sub_24825E6A0(&v34, v33);
    v19 = swift_isUniquelyReferenced_nonNull_native();
    v32 = v18;
    sub_248355C94(v33, v36, v19);
    sub_2482655AC(v36);
    v20 = v32;
    v21 = *((*v11 & *a2) + 0xB8);

    v22 = v21(v36);
    v24 = v23;
    v25 = swift_isUniquelyReferenced_nonNull_native();
    *&v34 = *v24;
    *v24 = 0x8000000000000000;
    sub_248355DE0(v20, v9, v10, v25);

    *v24 = v34;
    v22(v36, 0);
    v26 = sub_24827C568();
    (*(v5 + 16))(v8, v26, v4);

    v27 = sub_248382A80();
    v28 = sub_248383D80();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v36[0] = v30;
      *v29 = 136446210;
      *(v29 + 4) = sub_24814A378(v9, v10, v36);
      _os_log_impl(&dword_248146000, v27, v28, "Resetting opacity for region %{public}s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v30);
      MEMORY[0x24C1CD5F0](v30, -1, -1);
      MEMORY[0x24C1CD5F0](v29, -1, -1);
    }

    (*(v5 + 8))(v8, v4);
  }

  else
  {
  }

  return result;
}

void sub_24834F76C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE90BF8, &qword_2483A2260);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v35 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE941C0, &qword_2483A2268);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v35 - v13;
  v15 = sub_248381F30();
  sub_24834FC20(v15);
  v17 = v16;

  v39 = a1;
  v40 = a2;
  if (sub_248383A50())
  {
    v37 = a4;
    v38 = v14;
    v36 = a3;
    v18 = *(v17 + 16);
    if (v18)
    {
      v19 = 0;
      while (v19 < *(v17 + 16))
      {
        (*(v9 + 16))(v11, v17 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v19, v8);
        swift_getKeyPath();
        sub_248381870();

        v20 = sub_248383A60();

        if (v20)
        {

          v34 = v38;
          (*(v9 + 32))(v38, v11, v8);
          (*(v9 + 56))(v34, 0, 1, v8);
          sub_24822D578(v34, &qword_27EE941C0, &qword_2483A2268);
          return;
        }

        ++v19;
        (*(v9 + 8))(v11, v8);
        if (v18 == v19)
        {
          goto LABEL_7;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_7:

      v21 = v38;
      (*(v9 + 56))(v38, 1, 1, v8);
      sub_24822D578(v21, &qword_27EE941C0, &qword_2483A2268);
      *&v43 = 0xD000000000000012;
      *(&v43 + 1) = 0x80000002483B3CA0;
      v22 = v36;

      sub_2483843E0();
      v23 = MEMORY[0x277D839F8];
      v44 = MEMORY[0x277D839F8];
      *&v43 = 0;
      sub_24825E6A0(&v43, v42);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v41 = v22;
      sub_248355C94(v42, &v45, isUniquelyReferenced_nonNull_native);
      sub_2482655AC(&v45);
      v25 = v41;
      *&v43 = 0x7974696361706FLL;
      *(&v43 + 1) = 0xE700000000000000;
      sub_2483843E0();
      v44 = v23;
      *&v43 = 0;
      sub_24825E6A0(&v43, v42);
      v26 = swift_isUniquelyReferenced_nonNull_native();
      v41 = v25;
      sub_248355C94(v42, &v45, v26);
      sub_2482655AC(&v45);
      v28 = v40;
      v27 = v41;
      v29 = *((*MEMORY[0x277D85000] & *v37) + 0xB8);

      v30 = v29(&v45);
      v32 = v31;
      v33 = swift_isUniquelyReferenced_nonNull_native();
      *&v43 = *v32;
      *v32 = 0x8000000000000000;
      sub_248355DE0(v27, v39, v28, v33);

      *v32 = v43;
      v30(&v45, 0);
    }
  }

  else
  {
  }
}

void sub_24834FC20(uint64_t a1)
{
  v51 = sub_248382680();
  v3 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v50 = v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE941C8, &qword_2483A2270);
  v48 = *(v5 - 8);
  v49 = v5;
  MEMORY[0x28223BE20](v5);
  v47 = v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v46 = v36 - v8;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE90BF8, &qword_2483A2260);
  v9 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v11 = v36 - v10;
  v12 = *(a1 + 16);
  if (v12)
  {
    v43 = v11;
    v36[1] = v1;
    v55 = MEMORY[0x277D84F90];
    sub_248357028(0, v12, 0);
    v54 = v55;
    v13 = a1 + 64;
    v14 = sub_2483842E0();
    v15 = 0;
    v41 = v9 + 32;
    v42 = (v3 + 8);
    v37 = a1 + 72;
    v38 = v12;
    v44 = v9;
    v39 = a1 + 64;
    v40 = a1;
    while ((v14 & 0x8000000000000000) == 0 && v14 < 1 << *(a1 + 32))
    {
      v17 = v14 >> 6;
      if ((*(v13 + 8 * (v14 >> 6)) & (1 << v14)) == 0)
      {
        goto LABEL_21;
      }

      v18 = *(a1 + 36);
      v52 = v15;
      v53 = v18;
      v19 = v46;
      sub_248232C78(*(a1 + 56) + *(v48 + 72) * v14, v46, &qword_27EE941C8, &qword_2483A2270);
      v20 = v47;
      sub_248232C78(v19, v47, &qword_27EE941C8, &qword_2483A2270);
      v21 = v50;
      v22 = *(v49 + 48);
      sub_248381970();

      v23 = v43;
      sub_248382660();
      (*v42)(v21, v51);
      v24 = sub_248382220();
      (*(*(v24 - 8) + 8))(v20 + v22, v24);
      sub_24822D578(v19, &qword_27EE941C8, &qword_2483A2270);
      v25 = v54;
      v55 = v54;
      v27 = *(v54 + 16);
      v26 = *(v54 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_248357028((v26 > 1), v27 + 1, 1);
        v25 = v55;
      }

      *(v25 + 16) = v27 + 1;
      v28 = (*(v44 + 80) + 32) & ~*(v44 + 80);
      v54 = v25;
      (*(v44 + 32))(v25 + v28 + *(v44 + 72) * v27, v23, v45);
      a1 = v40;
      v16 = 1 << *(v40 + 32);
      if (v14 >= v16)
      {
        goto LABEL_22;
      }

      v13 = v39;
      v29 = *(v39 + 8 * v17);
      if ((v29 & (1 << v14)) == 0)
      {
        goto LABEL_23;
      }

      if (v53 != *(v40 + 36))
      {
        goto LABEL_24;
      }

      v30 = v29 & (-2 << (v14 & 0x3F));
      if (v30)
      {
        v16 = __clz(__rbit64(v30)) | v14 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v31 = v17 << 6;
        v32 = v17 + 1;
        v33 = (v37 + 8 * v17);
        while (v32 < (v16 + 63) >> 6)
        {
          v35 = *v33++;
          v34 = v35;
          v31 += 64;
          ++v32;
          if (v35)
          {
            sub_248235F68(v14, v53, 0);
            v16 = __clz(__rbit64(v34)) + v31;
            goto LABEL_4;
          }
        }

        sub_248235F68(v14, v53, 0);
      }

LABEL_4:
      v15 = v52 + 1;
      v14 = v16;
      if (v52 + 1 == v38)
      {
        return;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }
}

void sub_248350120(void (*a1)(uint64_t, uint64_t, uint64_t, void *))
{
  v3 = (*((*MEMORY[0x277D85000] & *v1) + 0xA8))();
  v4 = v3;
  v5 = v3 + 64;
  v6 = 1 << *(v3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v3 + 64);
  v9 = (v6 + 63) >> 6;

  v10 = 0;
  if (v8)
  {
    while (1)
    {
      v11 = v10;
LABEL_9:
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v13 = v12 | (v11 << 6);
      v14 = (*(v4 + 48) + 16 * v13);
      v15 = *v14;
      v16 = v14[1];
      v17 = *(*(v4 + 56) + 8 * v13);

      a1(v15, v16, v17, v1);

      if (!v8)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
      return;
    }

    if (v11 >= v9)
    {
      break;
    }

    v8 = *(v5 + 8 * v11);
    ++v10;
    if (v8)
    {
      v10 = v11;
      goto LABEL_9;
    }
  }
}

uint64_t sub_248350280(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = sub_248382A90();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_248383A50();
  if (result)
  {
    *&v41[0] = 0xD000000000000012;
    *(&v41[0] + 1) = 0x80000002483B3CA0;
    sub_2483843E0();
    if (*(a3 + 16) && (v13 = sub_2482652B8(v42), (v14 & 1) != 0))
    {
      sub_24814A550(*(a3 + 56) + 32 * v13, &v43);
      sub_2482655AC(v42);
      result = swift_dynamicCast();
      if (result)
      {
        v15 = *v41;
        if (*v41 != 0.0 && *v41 != 1.0)
        {
          v16 = sub_24827C568();
          (*(v9 + 16))(v11, v16, v8);

          v17 = sub_248382A80();
          v18 = sub_248383D80();

          v39 = v18;
          v19 = v18;
          v20 = v17;
          if (os_log_type_enabled(v17, v19))
          {
            v21 = swift_slowAlloc();
            v37 = v21;
            v38 = swift_slowAlloc();
            v42[0] = v38;
            *v21 = 136446210;
            v22 = sub_2483838B0();
            v36 = v20;
            v35 = sub_24814A378(v22, v23, v42);

            v24 = v37;
            *(v37 + 1) = v35;
            v25 = v24;
            _os_log_impl(&dword_248146000, v20, v39, "Received end of popover transition with non-0 or non-1 opacity. Overriding: %{public}s", v24, 0xCu);
            v26 = v38;
            __swift_destroy_boxed_opaque_existential_0(v38);
            MEMORY[0x24C1CD5F0](v26, -1, -1);
            MEMORY[0x24C1CD5F0](v25, -1, -1);
          }

          else
          {
          }

          (*(v9 + 8))(v11, v8);
          v27 = MEMORY[0x277D839F8];
          *&v43 = 0xD000000000000012;
          *(&v43 + 1) = 0x80000002483B3CA0;

          sub_2483843E0();
          v44 = v27;
          if (v15 <= 0.5)
          {
            *&v43 = 0;
          }

          else
          {
            *&v43 = 0x3FF0000000000000;
          }

          sub_24825E6A0(&v43, v41);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v40 = a3;
          sub_248355C94(v41, v42, isUniquelyReferenced_nonNull_native);
          sub_2482655AC(v42);
          v29 = v40;
          v30 = *((*MEMORY[0x277D85000] & *a4) + 0xB8);

          v31 = v30(v42);
          v33 = v32;
          v34 = swift_isUniquelyReferenced_nonNull_native();
          *&v43 = *v33;
          *v33 = 0x8000000000000000;
          sub_248355DE0(v29, a1, a2, v34);

          *v33 = v43;
          return v31(v42, 0);
        }
      }
    }

    else
    {
      return sub_2482655AC(v42);
    }
  }

  return result;
}

void sub_2483506EC()
{
  v1 = v0;
  v48[1] = *MEMORY[0x277D85DE8];
  v2 = sub_248382A90();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v43 - v7;
  v9 = sub_24827C568();
  v45 = *(v3 + 16);
  v45(v8, v9, v2);
  v10 = sub_248382A80();
  v11 = sub_248383D90();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = v3;
    v13 = v2;
    v14 = v5;
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_248146000, v10, v11, "Sending request content transition start", v15, 2u);
    v16 = v15;
    v5 = v14;
    v2 = v13;
    v3 = v12;
    MEMORY[0x24C1CD5F0](v16, -1, -1);
  }

  v17 = *(v3 + 8);
  v17(v8, v2);
  v18 = *(v1 + OBJC_IVAR____TtC9DashBoard36DBInstrumentClusterLayoutCoordinator_uisyncSession);
  v19 = sub_248383880();
  v47 = 0;
  LODWORD(v18) = [v18 sendTransitionStart:v19 description:0 error:&v47];

  v20 = v47;
  if (v18)
  {

    v21 = v20;
  }

  else
  {
    v44 = v47;
    v22 = v47;
    v23 = sub_2483810C0();

    swift_willThrow();
    v47 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90D90, qword_24839CA80);
    sub_24814FB28(0, &qword_27EE90D98, 0x277CCA9B8);
    swift_dynamicCast();
    v24 = v46;
    v45(v5, v9, v2);
    v25 = v24;
    v26 = sub_248382A80();
    v27 = sub_248383DA0();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v48[0] = v44;
      *v28 = 136446722;
      v29 = [v25 localizedDescription];
      v45 = v5;
      v30 = v29;
      v31 = sub_248383960();
      v33 = v32;

      v34 = sub_24814A378(v31, v33, v48);

      *(v28 + 4) = v34;
      *(v28 + 12) = 2050;
      v35 = [v25 code];

      *(v28 + 14) = v35;
      *(v28 + 22) = 2082;
      v36 = [v25 domain];
      v37 = sub_248383960();
      v39 = v38;

      v40 = sub_24814A378(v37, v39, v48);

      *(v28 + 24) = v40;
      _os_log_impl(&dword_248146000, v26, v27, "Unable to send request content transition start: %{public}s / %{public}ld %{public}s", v28, 0x20u);
      v41 = v44;
      swift_arrayDestroy();
      MEMORY[0x24C1CD5F0](v41, -1, -1);
      MEMORY[0x24C1CD5F0](v28, -1, -1);

      v42 = v45;
    }

    else
    {

      v42 = v5;
    }

    v17(v42, v2);
  }
}

void sub_248350BC4()
{

  sub_248352C4C(sub_248350108, "Sending request content transition end: %{public}s", "Unable to send request content transition end: %{public}s / %{public}ld %{public}s");
}

void sub_248350C40(uint64_t a1)
{
  v76 = *MEMORY[0x277D85DE8];
  v1 = sub_248383990();
  MEMORY[0x28223BE20](v1 - 8);
  v66 = &v63 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_248382A90();
  v70 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v68 = &v63 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v63 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90A80, &unk_24839D9C0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v63 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE93580, &qword_2483A0E30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24839CCA0;
  v74 = 0x444974756F79616CLL;
  v75 = 0xE800000000000000;
  v12 = MEMORY[0x277D837D0];
  sub_2483843E0();
  sub_248382450();
  swift_getKeyPath();
  *(inited + 96) = v12;
  sub_248381870();

  (*(v8 + 8))(v10, v7);
  v13 = v70;
  v74 = 0xD000000000000010;
  v75 = 0x80000002483AA9E0;
  sub_2483843E0();
  v14 = v69;
  v15 = sub_248381FC0();
  *(inited + 168) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE901F0, &qword_24839D498);
  *(inited + 144) = v15;
  v16 = v6;
  sub_2482653C4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE935A0, &unk_24839D9A0);
  swift_arrayDestroy();
  v17 = sub_24827C568();
  v67 = *(v13 + 16);
  v67(v6, v17, v14);

  v18 = sub_248382A80();
  v19 = sub_248383D90();

  if (os_log_type_enabled(v18, v19))
  {
    v64 = v17;
    v65 = v16;
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v73 = v21;
    *v20 = 136446210;
    v22 = objc_opt_self();
    v23 = sub_248383880();
    v74 = 0;
    v24 = [v22 dataWithJSONObject:v23 options:2 error:&v74];

    v25 = v74;
    if (v24)
    {
      v26 = sub_2483811B0();
      v28 = v27;

      sub_248383980();
      v24 = sub_248383970();
      v30 = v29;
      sub_24823BD70(v26, v28);
    }

    else
    {
      v33 = v25;
      v34 = sub_2483810C0();

      swift_willThrow();
      v30 = 0;
    }

    v74 = v24;
    v75 = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE8FD10, &qword_24839D490);
    v35 = sub_2483841D0();
    v37 = v36;

    v38 = sub_24814A378(v35, v37, &v73);

    *(v20 + 4) = v38;
    _os_log_impl(&dword_248146000, v18, v19, "Sending layout transition start: %{public}s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v21);
    MEMORY[0x24C1CD5F0](v21, -1, -1);
    MEMORY[0x24C1CD5F0](v20, -1, -1);

    v31 = *(v70 + 8);
    v32 = v69;
    v31(v65, v69);
    v17 = v64;
  }

  else
  {

    v31 = *(v13 + 8);
    v31(v16, v14);
    v32 = v14;
  }

  v39 = *(v71 + OBJC_IVAR____TtC9DashBoard36DBInstrumentClusterLayoutCoordinator_uisyncSession);
  v40 = sub_248383880();
  v74 = 0;
  LODWORD(v39) = [v39 sendLayoutChangeData:v40 error:&v74];

  if (v39)
  {
    v41 = v74;
  }

  else
  {
    v42 = v74;
    v43 = sub_2483810C0();

    swift_willThrow();
    v74 = v43;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90D90, qword_24839CA80);
    sub_24814FB28(0, &qword_27EE90D98, 0x277CCA9B8);
    swift_dynamicCast();

    v44 = v73;
    v45 = v68;
    v67(v68, v17, v32);
    v46 = v44;
    v47 = sub_248382A80();
    v48 = sub_248383DA0();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v72 = v50;
      *v49 = 136446722;
      v51 = [v46 localizedDescription];
      v52 = sub_248383960();
      v54 = v53;

      v55 = sub_24814A378(v52, v54, &v72);

      *(v49 + 4) = v55;
      *(v49 + 12) = 2050;
      v56 = [v46 code];

      *(v49 + 14) = v56;
      *(v49 + 22) = 2082;
      v57 = [v46 domain];
      v58 = sub_248383960();
      v60 = v59;

      v61 = sub_24814A378(v58, v60, &v72);

      *(v49 + 24) = v61;
      _os_log_impl(&dword_248146000, v47, v48, "Unable to send layout transition start: %{public}s / %{public}ld %{public}s", v49, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C1CD5F0](v50, -1, -1);
      MEMORY[0x24C1CD5F0](v49, -1, -1);

      v62 = v68;
    }

    else
    {

      v62 = v45;
    }

    v31(v62, v32);
  }
}

void sub_248351568()
{
  v1 = v0;
  v103 = *MEMORY[0x277D85DE8];
  v2 = sub_248383990();
  MEMORY[0x28223BE20](v2 - 8);
  v87 = &v85 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_248382A90();
  v94 = *(v95 - 8);
  MEMORY[0x28223BE20](v95 - 8);
  v92 = &v85 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v93 = &v85 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90A80, &unk_24839D9C0);
  v89 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v85 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8FE30, &unk_2483A14F0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v85 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE93580, &qword_2483A0E30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24839EA80;
  v101 = 0x736E6F69676572;
  v102 = 0xE700000000000000;
  v14 = sub_2483843E0();
  v15 = *((*MEMORY[0x277D85000] & *v0) + 0xA8);
  v90 = (*MEMORY[0x277D85000] & *v0) + 168;
  v16 = v15(v14);
  v17 = *(v16 + 16);
  v91 = v15;
  if (v17)
  {
    v18 = sub_248355220(v17, 0);
    v19 = sub_248357238(&v101, v18 + 4, v17, v16);
    sub_248167908(v101);
    if (v19 == v17)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v18 = MEMORY[0x277D84F90];
LABEL_5:
  v20 = sub_24834EF44(v18);

  *(inited + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE94190, &unk_2483A2210);
  *(inited + 72) = v20;
  v101 = 0xD000000000000015;
  v102 = 0x80000002483B3C60;
  v21 = MEMORY[0x277D837D0];
  v22 = sub_2483843E0();
  v23 = (*((*MEMORY[0x277D85000] & *v1) + 0xC0))(v22);
  v24 = MEMORY[0x277D84D38];
  *(inited + 168) = MEMORY[0x277D84D38];
  *(inited + 144) = v23;
  v101 = 0xD000000000000010;
  v102 = 0x80000002483B3C80;
  sub_2483843E0();
  mach_absolute_time();
  v25 = UpTicksToNTP();
  *(inited + 240) = v24;
  *(inited + 216) = v25;
  v26 = sub_2482653C4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE935A0, &unk_24839D9A0);
  swift_arrayDestroy();
  v97 = v26;
  *&v99 = 0x444974756F79616CLL;
  *(&v99 + 1) = 0xE800000000000000;
  sub_2483843E0();
  sub_248381EF0();
  v27 = sub_2483824B0();
  v28 = *(v27 - 8);
  if ((*(v28 + 48))(v12, 1, v27) == 1)
  {
    sub_24822D578(v12, &qword_27EE8FE30, &unk_2483A14F0);
    sub_2483552A4(&v101, &v99);
    sub_24822D578(&v99, &unk_27EE941B0, &unk_24839C9C0);
    sub_2482655AC(&v101);
  }

  else
  {
    sub_248382450();
    (*(v28 + 8))(v12, v27);
    swift_getKeyPath();
    v100 = v21;
    sub_248381870();

    (*(v89 + 8))(v9, v7);
    sub_24825E6A0(&v99, v98);
    v29 = v97;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v96 = v29;
    sub_248355C94(v98, &v101, isUniquelyReferenced_nonNull_native);
    sub_2482655AC(&v101);
    v97 = v96;
  }

  v31 = v95;
  v32 = sub_24827C568();
  v33 = v93;
  v34 = v94;
  v88 = *(v94 + 16);
  v89 = v32;
  v88(v93);

  v35 = sub_248382A80();
  v36 = sub_248383D90();

  if (os_log_type_enabled(v35, v36))
  {
    v86 = v36;
    v37 = swift_slowAlloc();
    v85 = swift_slowAlloc();
    *&v99 = v85;
    *v37 = 136446210;
    v38 = objc_opt_self();
    v39 = sub_248383880();
    v101 = 0;
    v40 = [v38 dataWithJSONObject:v39 options:2 error:&v101];

    v41 = v101;
    if (v40)
    {
      v42 = sub_2483811B0();
      v44 = v43;

      sub_248383980();
      v45 = sub_248383970();
      v47 = v46;
      sub_24823BD70(v42, v44);
    }

    else
    {
      v48 = v41;
      v49 = sub_2483810C0();

      swift_willThrow();
      v45 = 0;
      v47 = 0;
    }

    v101 = v45;
    v102 = v47;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE8FD10, &qword_24839D490);
    v50 = sub_2483841D0();
    v52 = v51;

    v53 = sub_24814A378(v50, v52, &v99);

    *(v37 + 4) = v53;
    _os_log_impl(&dword_248146000, v35, v86, "Sending layout transition end: %{public}s", v37, 0xCu);
    v54 = v85;
    __swift_destroy_boxed_opaque_existential_0(v85);
    MEMORY[0x24C1CD5F0](v54, -1, -1);
    MEMORY[0x24C1CD5F0](v37, -1, -1);

    v55 = v93;
    v31 = v95;
    v93 = *(v94 + 8);
    (v93)(v55, v95);
  }

  else
  {

    v93 = *(v34 + 8);
    (v93)(v33, v31);
  }

  v56 = *(v1 + OBJC_IVAR____TtC9DashBoard36DBInstrumentClusterLayoutCoordinator_uisyncSession);
  v57 = sub_248383880();
  v101 = 0;
  v58 = [v56 sendLayoutChangeEnd:v57 error:&v101];

  if (v58)
  {
    v59 = v101;

    v61 = v91(v60);
    v62 = sub_248356454(v61, sub_2483565C4, sub_2483565C4);

    (*((*MEMORY[0x277D85000] & *v1) + 0xB0))(v62);
  }

  else
  {
    v63 = v101;
    v64 = sub_2483810C0();

    swift_willThrow();
    v101 = v64;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90D90, qword_24839CA80);
    sub_24814FB28(0, &qword_27EE90D98, 0x277CCA9B8);
    swift_dynamicCast();

    v65 = v99;
    v66 = v92;
    (v88)(v92, v89, v31);
    v67 = v65;
    v68 = sub_248382A80();
    v69 = sub_248383DA0();
    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      *&v98[0] = v71;
      *v70 = 136446722;
      v72 = [v67 localizedDescription];
      v73 = sub_248383960();
      v75 = v74;

      v76 = sub_24814A378(v73, v75, v98);

      *(v70 + 4) = v76;
      *(v70 + 12) = 2050;
      v77 = [v67 code];

      *(v70 + 14) = v77;
      *(v70 + 22) = 2082;
      v78 = [v67 domain];
      v79 = sub_248383960();
      v81 = v80;

      v82 = sub_24814A378(v79, v81, v98);

      *(v70 + 24) = v82;
      _os_log_impl(&dword_248146000, v68, v69, "Unable to send layout transition end: %{public}s / %{public}ld %{public}s", v70, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C1CD5F0](v71, -1, -1);
      MEMORY[0x24C1CD5F0](v70, -1, -1);

      v83 = v92;
      v84 = v95;
    }

    else
    {

      v83 = v66;
      v84 = v31;
    }

    (v93)(v83, v84);
  }
}

void sub_24835212C(uint64_t a1)
{
  v2 = v1;
  v97 = *MEMORY[0x277D85DE8];
  v4 = sub_248383990();
  MEMORY[0x28223BE20](v4 - 8);
  v85[2] = (v85 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_248382A90();
  v7 = *(v6 - 8);
  v91 = v6;
  v92 = v7;
  MEMORY[0x28223BE20](v6);
  v88 = v85 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v90 = v85 - v10;
  v11 = sub_2483824B0();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v85 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8FE30, &unk_2483A14F0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = v85 - v16;
  sub_248232C78(a1, v85 - v16, &qword_27EE8FE30, &unk_2483A14F0);
  if ((*(v12 + 48))(v17, 1, v11) == 1)
  {
    v18 = MEMORY[0x277D84F98];
  }

  else
  {
    (*(v12 + 32))(v14, v17, v11);

    v18 = sub_248381FC0();
    (*(v12 + 8))(v14, v11);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE93580, &qword_2483A0E30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24839F1A0;
  v95 = 0x736E6F69676572;
  v96 = 0xE700000000000000;
  v20 = sub_2483843E0();
  v21 = MEMORY[0x277D85000];
  v22 = (*((*MEMORY[0x277D85000] & *v2) + 0xA8))(v20);
  v23 = v22;
  v24 = *(v22 + 16);
  v25 = v91;
  if (v24)
  {
    v26 = sub_248355220(*(v22 + 16), 0);
    v27 = sub_248357238(&v95, v26 + 4, v24, v23);
    sub_248167908(v95);
    if (v27 == v24)
    {
      goto LABEL_8;
    }

    __break(1u);
  }

  v26 = MEMORY[0x277D84F90];
LABEL_8:
  v28 = sub_24834EF44(v26);

  *(inited + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE94190, &unk_2483A2210);
  *(inited + 72) = v28;
  v95 = 0xD000000000000015;
  v96 = 0x80000002483B3C60;
  v29 = sub_2483843E0();
  v30 = (*((*v21 & *v2) + 0xC0))(v29);
  v31 = MEMORY[0x277D84D38];
  *(inited + 168) = MEMORY[0x277D84D38];
  *(inited + 144) = v30;
  v95 = 0xD000000000000010;
  v96 = 0x80000002483B3C80;
  sub_2483843E0();
  mach_absolute_time();
  v32 = UpTicksToNTP();
  *(inited + 240) = v31;
  *(inited + 216) = v32;
  v95 = 0xD000000000000010;
  v96 = 0x80000002483B3CC0;
  sub_2483843E0();
  *(inited + 312) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE901F0, &qword_24839D498);
  *(inited + 288) = v18;
  v89 = v18;

  sub_2482653C4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE935A0, &unk_24839D9A0);
  swift_arrayDestroy();
  v33 = sub_24827C568();
  v34 = v92;
  v35 = (v92 + 16);
  v36 = v90;
  v86 = *(v92 + 16);
  v87 = v33;
  v86(v90);

  v37 = sub_248382A80();
  v38 = sub_248383D90();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v85[0] = swift_slowAlloc();
    v94 = v85[0];
    *v39 = 136446210;
    v40 = objc_opt_self();
    v41 = sub_248383880();
    v95 = 0;
    v42 = [v40 dataWithJSONObject:v41 options:2 error:&v95];

    v43 = v95;
    v85[1] = v35;
    if (v42)
    {
      v44 = sub_2483811B0();
      v46 = v45;

      sub_248383980();
      v47 = sub_248383970();
      v49 = v48;
      v50 = v44;
      v25 = v91;
      sub_24823BD70(v50, v46);
    }

    else
    {
      v52 = v43;
      v53 = sub_2483810C0();

      swift_willThrow();
      v47 = 0;
      v49 = 0;
    }

    v95 = v47;
    v96 = v49;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE8FD10, &qword_24839D490);
    v54 = sub_2483841D0();
    v56 = v55;

    v57 = sub_24814A378(v54, v56, &v94);

    *(v39 + 4) = v57;
    _os_log_impl(&dword_248146000, v37, v38, "Sending DCA transition start: %{public}s", v39, 0xCu);
    v58 = v85[0];
    __swift_destroy_boxed_opaque_existential_0(v85[0]);
    MEMORY[0x24C1CD5F0](v58, -1, -1);
    MEMORY[0x24C1CD5F0](v39, -1, -1);

    v51 = *(v92 + 8);
    v51(v90, v25);
  }

  else
  {

    v51 = *(v34 + 8);
    v51(v36, v25);
  }

  v59 = *(v2 + OBJC_IVAR____TtC9DashBoard36DBInstrumentClusterLayoutCoordinator_uisyncSession);
  v60 = sub_248383880();
  v95 = 0;
  v61 = [v59 sendTransitionStart:v60 description:0 error:&v95];

  if (v61)
  {
    v62 = v95;
  }

  else
  {
    v63 = v95;
    v64 = sub_2483810C0();

    swift_willThrow();
    v95 = v64;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90D90, qword_24839CA80);
    sub_24814FB28(0, &qword_27EE90D98, 0x277CCA9B8);
    swift_dynamicCast();

    v65 = v94;
    v66 = v88;
    (v86)(v88, v87, v25);
    v67 = v65;
    v68 = sub_248382A80();
    v69 = sub_248383DA0();
    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v93 = v71;
      *v70 = 136446722;
      v72 = [v67 localizedDescription];
      v73 = sub_248383960();
      v75 = v74;

      v76 = sub_24814A378(v73, v75, &v93);

      *(v70 + 4) = v76;
      *(v70 + 12) = 2050;
      v77 = [v67 code];

      *(v70 + 14) = v77;
      *(v70 + 22) = 2082;
      v78 = [v67 domain];
      v79 = sub_248383960();
      v81 = v80;

      v82 = sub_24814A378(v79, v81, &v93);

      *(v70 + 24) = v82;
      _os_log_impl(&dword_248146000, v68, v69, "Unable to send DCA transition start: %{public}s / %{public}ld %{public}s", v70, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C1CD5F0](v71, -1, -1);
      MEMORY[0x24C1CD5F0](v70, -1, -1);

      v83 = v91;
      v84 = v88;
    }

    else
    {

      v84 = v66;
      v83 = v25;
    }

    v51(v84, v83);
  }
}

void sub_248352BD0()
{

  sub_248352C4C(sub_24834F754, "Sending DCA transition end: %{public}s", "Unable to send DCA transition end: %{public}s / %{public}ld %{public}s");
}

void sub_248352C4C(void (*a1)(__n128), const char *a2, const char *a3)
{
  v88 = a2;
  v6 = v3;
  v98 = *MEMORY[0x277D85DE8];
  v7 = sub_248383990();
  MEMORY[0x28223BE20](v7 - 8);
  v84 = &v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_248382A90();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v81 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v13);
  v93 = &v81 - v15;
  a1(v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE93580, &qword_2483A0E30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24839EA80;
  v96 = 0x736E6F69676572;
  v97 = 0xE700000000000000;
  v17 = sub_2483843E0();
  v18 = *((*MEMORY[0x277D85000] & *v3) + 0xA8);
  v89 = (*MEMORY[0x277D85000] & *v3) + 168;
  v90 = v18;
  v19 = v18(v17);
  v20 = *(v19 + 16);
  v91 = v12;
  v83 = a3;
  if (v20)
  {
    v21 = sub_248355220(v20, 0);
    v22 = sub_248357238(&v96, v21 + 4, v20, v19);
    sub_248167908(v96);
    if (v22 == v20)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v21 = MEMORY[0x277D84F90];
LABEL_5:
  v23 = sub_24834EF44(v21);

  *(inited + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE94190, &unk_2483A2210);
  *(inited + 72) = v23;
  v96 = 0xD000000000000015;
  v97 = 0x80000002483B3C60;
  v24 = sub_2483843E0();
  v25 = (*((*MEMORY[0x277D85000] & *v6) + 0xC0))(v24);
  v26 = MEMORY[0x277D84D38];
  *(inited + 168) = MEMORY[0x277D84D38];
  *(inited + 144) = v25;
  v96 = 0xD000000000000010;
  v97 = 0x80000002483B3C80;
  sub_2483843E0();
  mach_absolute_time();
  v27 = UpTicksToNTP();
  *(inited + 240) = v26;
  *(inited + 216) = v27;
  sub_2482653C4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE935A0, &unk_24839D9A0);
  swift_arrayDestroy();
  v28 = sub_24827C568();
  v29 = v93;
  v85 = *(v10 + 16);
  v86 = v28;
  v85(v93);

  v30 = sub_248382A80();
  v31 = sub_248383D90();

  v32 = os_log_type_enabled(v30, v31);
  v92 = v10;
  if (v32)
  {
    v82 = v31;
    v87 = v9;
    v33 = swift_slowAlloc();
    v81 = swift_slowAlloc();
    v95 = v81;
    *v33 = 136446210;
    v34 = objc_opt_self();
    v35 = sub_248383880();
    v96 = 0;
    v36 = [v34 dataWithJSONObject:v35 options:2 error:&v96];

    v37 = v96;
    if (v36)
    {
      v38 = sub_2483811B0();
      v40 = v39;

      sub_248383980();
      v41 = sub_248383970();
      v43 = v42;
      sub_24823BD70(v38, v40);
    }

    else
    {
      v45 = v37;
      v46 = sub_2483810C0();

      swift_willThrow();
      v41 = 0;
      v43 = 0;
    }

    v96 = v41;
    v97 = v43;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE8FD10, &qword_24839D490);
    v47 = sub_2483841D0();
    v49 = v48;

    v50 = sub_24814A378(v47, v49, &v95);

    *(v33 + 4) = v50;
    _os_log_impl(&dword_248146000, v30, v82, v88, v33, 0xCu);
    v51 = v81;
    __swift_destroy_boxed_opaque_existential_0(v81);
    MEMORY[0x24C1CD5F0](v51, -1, -1);
    MEMORY[0x24C1CD5F0](v33, -1, -1);

    v44 = *(v92 + 8);
    v9 = v87;
    v44(v93, v87);
  }

  else
  {

    v44 = *(v10 + 8);
    v44(v29, v9);
  }

  v52 = *(v6 + OBJC_IVAR____TtC9DashBoard36DBInstrumentClusterLayoutCoordinator_uisyncSession);
  v53 = sub_248383880();
  v96 = 0;
  v54 = [v52 sendTransitionEnd:v53 error:&v96];

  if (v54)
  {
    v55 = v96;

    v57 = v90(v56);
    v58 = sub_248356454(v57, sub_2483565C4, sub_2483565C4);

    (*((*MEMORY[0x277D85000] & *v6) + 0xB0))(v58);
  }

  else
  {
    v59 = v96;
    v60 = sub_2483810C0();

    swift_willThrow();
    v96 = v60;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90D90, qword_24839CA80);
    sub_24814FB28(0, &qword_27EE90D98, 0x277CCA9B8);
    swift_dynamicCast();

    v61 = v95;
    v62 = v91;
    (v85)(v91, v86, v9);
    v63 = v61;
    v64 = sub_248382A80();
    v65 = sub_248383DA0();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v94 = v67;
      *v66 = 136446722;
      v68 = [v63 localizedDescription];
      v69 = sub_248383960();
      v87 = v9;
      v71 = v70;

      v72 = sub_24814A378(v69, v71, &v94);

      *(v66 + 4) = v72;
      *(v66 + 12) = 2050;
      v73 = [v63 code];

      *(v66 + 14) = v73;
      *(v66 + 22) = 2082;
      v74 = [v63 domain];
      v75 = sub_248383960();
      v77 = v76;

      v78 = sub_24814A378(v75, v77, &v94);

      *(v66 + 24) = v78;
      _os_log_impl(&dword_248146000, v64, v65, v83, v66, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C1CD5F0](v67, -1, -1);
      MEMORY[0x24C1CD5F0](v66, -1, -1);

      v79 = v91;
      v80 = v87;
    }

    else
    {

      v79 = v62;
      v80 = v9;
    }

    v44(v79, v80);
  }
}

id DBInstrumentClusterLayoutCoordinator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DBInstrumentClusterLayoutCoordinator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DBInstrumentClusterLayoutCoordinator(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_248353748(uint64_t a1, const char *a2, SEL *a3, const char *a4, ...)
{
  v60 = a4;
  v61 = a2;
  v67[1] = *MEMORY[0x277D85DE8];
  v6 = sub_248382A90();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v58 - v11;
  v13 = sub_24827C568();
  v62 = v7[2];
  v62(v12, v13, v6);
  v14 = sub_248382A80();
  v15 = sub_248383D90();
  v16 = os_log_type_enabled(v14, v15);
  v63 = v9;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v59 = a3;
    v18 = v17;
    v58 = swift_slowAlloc();
    v67[0] = v58;
    *v18 = 136446210;
    v65 = a1;
    type metadata accessor for CARUserInterfaceStyle(0);
    v19 = sub_2483839A0();
    v21 = sub_24814A378(v19, v20, v67);
    v22 = a1;
    v23 = v21;
    v24 = v22;

    *(v18 + 4) = v23;
    _os_log_impl(&dword_248146000, v14, v15, v61, v18, 0xCu);
    v25 = v58;
    __swift_destroy_boxed_opaque_existential_0(v58);
    MEMORY[0x24C1CD5F0](v25, -1, -1);
    v26 = v18;
    a3 = v59;
    MEMORY[0x24C1CD5F0](v26, -1, -1);

    v27 = v7;
  }

  else
  {

    v27 = v7;
    v24 = a1;
  }

  v28 = v27[1];
  v28(v12, v6);
  v29 = *&v64[OBJC_IVAR____TtC9DashBoard36DBInstrumentClusterLayoutCoordinator_uisyncSession];
  v67[0] = 0;
  v30 = [v29 *a3];
  v31 = v67[0];
  if (v30)
  {

    v32 = v31;
  }

  else
  {
    v64 = v67[0];
    v33 = v67[0];
    v34 = sub_2483810C0();

    swift_willThrow();
    v67[0] = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90D90, qword_24839CA80);
    sub_24814FB28(0, &qword_27EE90D98, 0x277CCA9B8);
    swift_dynamicCast();
    v35 = v65;
    v36 = v63;
    v62(v63, v13, v6);
    v37 = v35;
    v38 = sub_248382A80();
    v39 = sub_248383DA0();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v64 = v7;
      v41 = v40;
      v42 = swift_slowAlloc();
      v62 = v6;
      v43 = v42;
      v66 = v42;
      *v41 = 136446722;
      v44 = v36;
      v45 = [v37 localizedDescription];
      v46 = sub_248383960();
      v48 = v47;

      v49 = sub_24814A378(v46, v48, &v66);

      *(v41 + 4) = v49;
      *(v41 + 12) = 2050;
      v50 = [v37 code];

      *(v41 + 14) = v50;
      *(v41 + 22) = 2082;
      v51 = [v37 domain];
      v52 = sub_248383960();
      v54 = v53;

      v55 = sub_24814A378(v52, v54, &v66);

      *(v41 + 24) = v55;
      _os_log_impl(&dword_248146000, v38, v39, v60, v41, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C1CD5F0](v43, -1, -1);
      MEMORY[0x24C1CD5F0](v41, -1, -1);

      v56 = v44;
      v57 = v62;
    }

    else
    {

      v56 = v36;
      v57 = v6;
    }

    v28(v56, v57);
  }
}

uint64_t sub_248353CB0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_248382A90();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  strcpy(v18, "display_uuid");
  BYTE5(v18[1]) = 0;
  HIWORD(v18[1]) = -5120;
  sub_2483843E0();
  if (!*(a1 + 16) || (v8 = sub_2482652B8(v19), (v9 & 1) == 0))
  {
    sub_2482655AC(v19);
    goto LABEL_10;
  }

  sub_24814A550(*(a1 + 56) + 32 * v8, v20);
  sub_2482655AC(v19);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    v12 = sub_24827C568();
    (*(v5 + 16))(v7, v12, v4);
    v13 = sub_248382A80();
    v14 = sub_248383D90();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_248146000, v13, v14, "No display_uuid in metadata, proceed with handling", v15, 2u);
      MEMORY[0x24C1CD5F0](v15, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
    goto LABEL_13;
  }

  if (v18[0] == *(v2 + OBJC_IVAR____TtC9DashBoard36DBInstrumentClusterLayoutCoordinator_screenID) && v18[1] == *(v2 + OBJC_IVAR____TtC9DashBoard36DBInstrumentClusterLayoutCoordinator_screenID + 8))
  {

LABEL_13:
    v11 = 1;
    return v11 & 1;
  }

  v11 = sub_248384680();

  return v11 & 1;
}

double sub_248353EF8(uint64_t a1)
{
  v2 = v1;
  v171 = *MEMORY[0x277D85DE8];
  v4 = sub_248383990();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v150 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_248382A90();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v150 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v150 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v150 - v15;
  if (sub_248353CB0(a1))
  {
    v18 = MEMORY[0x277D85000];
    if ((*((*MEMORY[0x277D85000] & *v1) + 0x138))())
    {
      v154 = v16;
      v152 = v6;
      v19 = a1;
      v20 = 0;
      v21 = sub_248356454(v19, sub_2483567D0, sub_2483567D0);
      *&v167[0] = 0xD000000000000015;
      *(&v167[0] + 1) = 0x80000002483B3C60;
      v156 = 0x80000002483B3C60;
      sub_2483843E0();
      if (v21[2] && (v22 = sub_2482652B8(&v170), (v23 & 1) != 0))
      {
        v164 = 0;
        sub_24814A550(v21[7] + 32 * v22, &v168);
        sub_2482655AC(&v170);
        v24 = MEMORY[0x277D84D38];
        if (swift_dynamicCast())
        {
          v25 = *&v167[0];
          *&v168 = 0xD00000000000001ELL;
          *(&v168 + 1) = 0x80000002483B3D20;
          sub_2483843E0();
          v169 = v24;
          *&v168 = v25;
          sub_24825E6A0(&v168, v167);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v166 = v21;
          sub_248355C94(v167, &v170, isUniquelyReferenced_nonNull_native);
          sub_2482655AC(&v170);
          v21 = v166;
        }

        v20 = v164;
      }

      else
      {
        sub_2482655AC(&v170);
      }

      *&v167[0] = 0xD000000000000016;
      *(&v167[0] + 1) = 0x80000002483B3CE0;
      sub_2483843E0();
      if (v21[2] && (v27 = sub_2482652B8(&v170), (v28 & 1) != 0))
      {
        v164 = v20;
        sub_24814A550(v21[7] + 32 * v27, &v168);
        sub_2482655AC(&v170);
        v29 = MEMORY[0x277D84D38];
        if (swift_dynamicCast())
        {
          v30 = *&v167[0];
          if (__CFADD__(v30, MillisecondsToUpTicks()))
          {
            goto LABEL_71;
          }

          v31 = UpTicksToNTP();
          *&v168 = 0xD000000000000015;
          *(&v168 + 1) = v156;
          sub_2483843E0();
          v169 = v29;
          *&v168 = v31;
          sub_24825E6A0(&v168, v167);
          v32 = swift_isUniquelyReferenced_nonNull_native();
          v166 = v21;
          sub_248355C94(v167, &v170, v32);
          sub_2482655AC(&v170);
          v21 = v166;
          v20 = v164;
        }

        else
        {
          v20 = v164;
        }
      }

      else
      {
        sub_2482655AC(&v170);
      }

      *&v167[0] = 0x736E6F69676572;
      *(&v167[0] + 1) = 0xE700000000000000;
      sub_2483843E0();
      v33 = v21[2];
      v162 = v7;
      v163 = v8;
      v155 = v10;
      v157 = v13;
      v159 = v21;
      if (v33 && (v34 = sub_2482652B8(&v170), (v35 & 1) != 0))
      {
        sub_24814A550(v21[7] + 32 * v34, &v168);
        sub_2482655AC(&v170);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE94190, &unk_2483A2210);
        if (swift_dynamicCast())
        {
          v36 = *&v167[0];
LABEL_21:
          v37 = *((*v18 & *v2) + 0xA8);
          v38 = (*v18 & *v2) + 168;
          v164 = v2;
          v161 = v37;
          v160 = v38;
          v39 = v37();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE941F8, &unk_2483A2298);
          v40 = sub_2483845C0();
          v41 = v40;
          v42 = 0;
          v43 = 1 << *(v39 + 32);
          v44 = -1;
          if (v43 < 64)
          {
            v44 = ~(-1 << v43);
          }

          v45 = v44 & *(v39 + 64);
          v46 = (v43 + 63) >> 6;
          v47 = v40 + 64;
          if (v45)
          {
            goto LABEL_24;
          }

LABEL_25:
          v49 = v42;
          while (1)
          {
            v42 = v49 + 1;
            if (__OFADD__(v49, 1))
            {
              __break(1u);
              goto LABEL_69;
            }

            if (v42 >= v46)
            {
              break;
            }

            v50 = *(v39 + 64 + 8 * v42);
            ++v49;
            if (v50)
            {
              v48 = __clz(__rbit64(v50));
              v45 = (v50 - 1) & v50;
              while (2)
              {
                v51 = v48 | (v42 << 6);
                v52 = (*(v39 + 48) + 16 * v51);
                v54 = *v52;
                v53 = v52[1];
                *(v47 + ((v51 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v51;
                v55 = (v41[6] + 16 * v51);
                *v55 = v54;
                v55[1] = v53;
                *(v41[7] + v51) = 1;
                v56 = v41[2];
                v57 = __OFADD__(v56, 1);
                v58 = v56 + 1;
                if (!v57)
                {
                  v41[2] = v58;

                  if (!v45)
                  {
                    goto LABEL_25;
                  }

LABEL_24:
                  v48 = __clz(__rbit64(v45));
                  v45 &= v45 - 1;
                  continue;
                }

                break;
              }

LABEL_69:
              __break(1u);
LABEL_70:
              __break(1u);
LABEL_71:
              __break(1u);
            }
          }

          v166 = v41;
          v59 = v164;
          sub_248358B98(v36, v59);

          v60 = v166;
          v61 = v166[2];
          v158 = v166;
          if (v61)
          {
            v153 = v20;
            v62 = sub_2482FA424(v61, 0);
            v63 = sub_24822CA1C(&v170, v62 + 4, v61, v60);
            countAndFlagsBits = v170.value._countAndFlagsBits;

            sub_248167908(countAndFlagsBits);
            if (v63 != v61)
            {
              goto LABEL_70;
            }

            v66 = v162;
            v65 = v163;
            v67 = v161;
          }

          else
          {
            v62 = MEMORY[0x277D84F90];
            v66 = v162;
            v65 = v163;
            v67 = v161;
          }

          sub_24834F2F0(v62);

          v69 = *((v67)(v68) + 16);

          if (!v69)
          {
            goto LABEL_41;
          }

          *&v168 = 0x736E6F69676572;
          *(&v168 + 1) = 0xE700000000000000;
          v70 = sub_2483843E0();
          v71 = (v67)(v70);
          v72 = v71;
          v73 = *(v71 + 16);
          if (v73)
          {
            v74 = sub_248355220(*(v71 + 16), 0);
            v75 = sub_248357238(&v168, v74 + 4, v73, v72);
            sub_248167908(v168);
            if (v75 != v73)
            {
              __break(1u);
LABEL_41:
              v76 = sub_24827C568();
              v77 = v154;
              (*(v65 + 16))(v154, v76, v66);
              v78 = sub_248382A80();
              v79 = sub_248383D90();
              if (os_log_type_enabled(v78, v79))
              {
                v80 = swift_slowAlloc();
                *v80 = 0;
                _os_log_impl(&dword_248146000, v78, v79, "No regions to send.", v80, 2u);
                MEMORY[0x24C1CD5F0](v80, -1, -1);
              }

              (*(v65 + 8))(v77, v66);

LABEL_66:

              return result;
            }
          }

          else
          {

            v74 = MEMORY[0x277D84F90];
          }

          v81 = sub_24834EF44(v74);

          v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE94190, &unk_2483A2210);
          *&v168 = v81;
          sub_24825E6A0(&v168, v167);
          v82 = v159;
          v83 = swift_isUniquelyReferenced_nonNull_native();
          v165 = v82;
          sub_248355C94(v167, &v170, v83);
          sub_2482655AC(&v170);
          v84 = v165;
          *&v168 = 0xD000000000000010;
          *(&v168 + 1) = 0x80000002483B3C80;
          sub_2483843E0();
          mach_absolute_time();
          v85 = UpTicksToNTP();
          v169 = MEMORY[0x277D84D38];
          *&v168 = v85;
          sub_24825E6A0(&v168, v167);
          v86 = swift_isUniquelyReferenced_nonNull_native();
          v165 = v84;
          sub_248355C94(v167, &v170, v86);
          sub_2482655AC(&v170);
          v87 = v165;
          *&v168 = 0xD000000000000015;
          *(&v168 + 1) = v156;
          sub_2483843E0();
          v88 = v87[2];
          v159 = v87;
          if (v88 && (v89 = sub_2482652B8(&v170), (v90 & 1) != 0))
          {
            sub_24814A550(v87[7] + 32 * v89, &v168);
            sub_2482655AC(&v170);
            if (swift_dynamicCast())
            {
              v91 = *&v167[0];
LABEL_51:
              v92 = *((*MEMORY[0x277D85000] & *v59) + 0xC8);
              v156 = v59;
              v92(v91);
              v93 = sub_24827C568();
              v94 = *(v65 + 16);
              v95 = v157;
              v94(v157, v93, v66);
              v96 = sub_248382A80();
              v97 = sub_248383D90();
              v98 = os_log_type_enabled(v96, v97);
              v154 = (v65 + 16);
              v153 = v93;
              v151 = v94;
              if (v98)
              {
                v99 = swift_slowAlloc();
                v100 = swift_slowAlloc();
                *&v168 = v100;
                *v99 = 136446210;
                v101 = objc_opt_self();

                v102 = sub_248383880();

                v170.value._countAndFlagsBits = 0;
                v103 = [v101 dataWithJSONObject:v102 options:2 error:&v170];

                v104 = v170.value._countAndFlagsBits;
                if (v103)
                {
                  v105 = sub_2483811B0();
                  v107 = v106;

                  sub_248383980();
                  v108 = sub_248383970();
                  v110 = v109;
                  sub_24823BD70(v105, v107);
                }

                else
                {
                  v114 = v104;
                  v115 = sub_2483810C0();

                  swift_willThrow();
                  v108 = 0;
                  v110 = 0;
                }

                v170.value._countAndFlagsBits = v108;
                v170.value._object = v110;
                __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE8FD10, &qword_24839D490);
                v116 = sub_2483841D0();
                v118 = v117;

                v119 = sub_24814A378(v116, v118, &v168);

                *(v99 + 4) = v119;
                _os_log_impl(&dword_248146000, v96, v97, "Sending transition data: %{public}s", v99, 0xCu);
                __swift_destroy_boxed_opaque_existential_0(v100);
                MEMORY[0x24C1CD5F0](v100, -1, -1);
                MEMORY[0x24C1CD5F0](v99, -1, -1);

                v66 = v162;
                v111 = *(v163 + 8);
                v112 = v157;
                v113 = v162;
              }

              else
              {

                v111 = *(v65 + 8);
                v112 = v95;
                v113 = v66;
              }

              v157 = v111;
              v111(v112, v113);
              v120 = v156;
              v170.value._countAndFlagsBits = 0;
              v170.value._object = 0xE000000000000000;
              v121._rawValue = v159;

              sub_248384440();

              v170.value._countAndFlagsBits = 0xD000000000000017;
              v170.value._object = 0x80000002483B3D00;
              v123 = MEMORY[0x277D85000];
              *&v168 = (*((*MEMORY[0x277D85000] & *v120) + 0xC0))(v122);
              v124 = sub_248384650();
              MEMORY[0x24C1CAFD0](v124);

              DBUISyncSession.sendTransitionData(_:description:)(v121, v170);
              if (v125)
              {

                v170.value._countAndFlagsBits = v125;
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90D90, qword_24839CA80);
                sub_24814FB28(0, &qword_27EE90D98, 0x277CCA9B8);
                swift_dynamicCast();
                v126 = v168;
                v127 = v155;
                v151(v155, v153, v66);
                v128 = v126;
                v129 = sub_248382A80();
                v130 = sub_248383DA0();
                if (os_log_type_enabled(v129, v130))
                {
                  v131 = swift_slowAlloc();
                  v132 = swift_slowAlloc();
                  *&v167[0] = v132;
                  *v131 = 136446722;
                  v133 = [v128 localizedDescription];
                  v134 = sub_248383960();
                  v135 = v66;
                  v137 = v136;

                  v138 = sub_24814A378(v134, v137, v167);

                  *(v131 + 4) = v138;
                  *(v131 + 12) = 2050;
                  v139 = [v128 code];

                  *(v131 + 14) = v139;
                  *(v131 + 22) = 2082;
                  v140 = [v128 domain];
                  v141 = sub_248383960();
                  v143 = v142;

                  v144 = sub_24814A378(v141, v143, v167);

                  *(v131 + 24) = v144;
                  _os_log_impl(&dword_248146000, v129, v130, "Unable to send transition data: %{public}s / %{public}ld %{public}s", v131, 0x20u);
                  swift_arrayDestroy();
                  MEMORY[0x24C1CD5F0](v132, -1, -1);
                  MEMORY[0x24C1CD5F0](v131, -1, -1);

                  v145 = v155;
                  v146 = v135;
                }

                else
                {

                  v145 = v127;
                  v146 = v66;
                }

                v157(v145, v146);
              }

              else
              {

                v148 = (v161)(v147);
                v149 = sub_248356454(v148, sub_2483565C4, sub_2483565C4);

                (*((*v123 & *v120) + 0xB0))(v149);
              }

              goto LABEL_66;
            }
          }

          else
          {
            sub_2482655AC(&v170);
          }

          v91 = 0;
          goto LABEL_51;
        }
      }

      else
      {
        sub_2482655AC(&v170);
      }

      v36 = MEMORY[0x277D84F90];
      goto LABEL_21;
    }
  }

  return result;
}

void *sub_2483550EC(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE941A0, &qword_2483A2228);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE941F0, &qword_24839EE80);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_248355220(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE941A0, &qword_2483A2228);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 3);
  return result;
}

double sub_2483552A4@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = sub_2482652B8(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v11 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_248355FD8();
      v9 = v11;
    }

    sub_2482655AC(*(v9 + 48) + 40 * v7);
    sub_24825E6A0((*(v9 + 56) + 32 * v7), a2);
    sub_248355940(v7, v9);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_248355348(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_24822B8A0(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 2;
  }

  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v2;
  v11 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_2483562EC();
    v8 = v11;
  }

  v9 = *(*(v8 + 56) + v6);
  sub_248355AE4(v6, v8);
  *v3 = v8;
  return v9;
}

void sub_2483553E0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE901E0, qword_24839E320);
  v6 = sub_2483845D0();
  v7 = v6;
  if (*(v5 + 16))
  {
    v35 = v2;
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
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 48) + 40 * v22;
      if (v4)
      {
        v24 = *v23;
        v25 = *(v23 + 16);
        v39 = *(v23 + 32);
        v37 = v24;
        v38 = v25;
        sub_24825E6A0((*(v5 + 56) + 32 * v22), v36);
      }

      else
      {
        sub_248265550(v23, &v37);
        sub_24814A550(*(v5 + 56) + 32 * v22, v36);
      }

      v26 = sub_2483843C0();
      v27 = -1 << *(v7 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v37;
      v18 = v38;
      *(v16 + 32) = v39;
      *v16 = v17;
      *(v16 + 16) = v18;
      sub_24825E6A0(v36, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if (v4)
    {
      v34 = 1 << *(v5 + 32);
      if (v34 >= 64)
      {
        bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v34;
      }

      *(v5 + 16) = 0;
    }

    v3 = v35;
  }

  else
  {
  }

  *v3 = v7;
}

void sub_248355698(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE94198, &qword_2483A2220);
  v35 = v4;
  v6 = sub_2483845D0();
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
      }

      sub_248384780();
      sub_2483839E0();
      v25 = sub_2483847B0();
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

uint64_t sub_248355940(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2483842F0() + 1) & ~v5;
    do
    {
      sub_248265550(*(a2 + 48) + 40 * v6, v25);
      v10 = sub_2483843C0();
      result = sub_2482655AC(v25);
      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = *(a2 + 48);
          v15 = v14 + 40 * v3;
          v16 = (v14 + 40 * v6);
          if (v3 != v6 || v15 >= v16 + 40)
          {
            v17 = *v16;
            v18 = v16[1];
            *(v15 + 32) = *(v16 + 4);
            *v15 = v17;
            *(v15 + 16) = v18;
          }

          v19 = *(a2 + 56);
          v20 = (v19 + 32 * v3);
          v21 = (v19 + 32 * v6);
          if (v3 != v6 || v20 >= v21 + 2)
          {
            v9 = v21[1];
            *v20 = *v21;
            v20[1] = v9;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

void sub_248355AE4(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2483842F0() + 1) & ~v5;
    do
    {
      sub_248384780();

      sub_2483839E0();
      v9 = sub_2483847B0();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + v3);
        v16 = (v14 + v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }
}

_OWORD *sub_248355C94(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_2482652B8(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_248355FD8();
      goto LABEL_7;
    }

    sub_2483553E0(v13, a3 & 1);
    v19 = sub_2482652B8(a2);
    if ((v14 & 1) == (v20 & 1))
    {
      v10 = v19;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_248265550(a2, v21);
      return sub_248355F5C(v10, v21, a1, v16);
    }

LABEL_15:
    result = sub_2483846E0();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  __swift_destroy_boxed_opaque_existential_0(v17);

  return sub_24825E6A0(a1, v17);
}

void sub_248355DE0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_24822B8A0(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_248355698(v16, a4 & 1);
      v11 = sub_24822B8A0(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_2483846E0();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_24835617C();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v24;
}

_OWORD *sub_248355F5C(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_24825E6A0(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

void sub_248355FD8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE901E0, qword_24839E320);
  v2 = *v0;
  v3 = sub_2483845C0();
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
        v18 = 40 * v17;
        sub_248265550(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_24814A550(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        sub_24825E6A0(v22, (*(v4 + 56) + v17));
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

void sub_24835617C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE94198, &qword_2483A2220);
  v2 = *v0;
  v3 = sub_2483845C0();
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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

void sub_2483562EC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE941F8, &unk_2483A2298);
  v2 = *v0;
  v3 = sub_2483845C0();
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
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        LOBYTE(v18) = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v18;
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

void *sub_248356454(uint64_t a1, uint64_t (*a2)(char *, unint64_t, uint64_t), uint64_t (*a3)(void *, uint64_t, uint64_t))
{
  v5 = a1;
  v14[1] = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 32);
  v7 = ((1 << v6) + 63) >> 6;
  if ((v6 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x28223BE20](a1);
    v9 = v14 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    result = a2(v9, v7, v5);
    if (v3)
    {
      return swift_willThrow();
    }

    return result;
  }

  v12 = swift_slowAlloc();
  v13 = sub_248356B04(v12, v7, v5, a3);
  result = MEMORY[0x24C1CD5F0](v12, -1, -1);
  if (!v3)
  {
    return v13;
  }

  return result;
}

void sub_2483565C4(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v20 = 0;
  v4 = 0;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_11:
    v13 = v10 | (v4 << 6);
    v14 = *(*(a3 + 56) + 8 * v13);

    sub_2483843E0();
    if (*(v14 + 16) && (v15 = sub_2482652B8(v21), (v16 & 1) != 0))
    {
      sub_24814A550(*(v14 + 56) + 32 * v15, v22);
      sub_2482655AC(v21);
      if (!swift_dynamicCast())
      {
        goto LABEL_19;
      }

      if (0.0 != -2.31584178e77)
      {
        *(a1 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
        if (__OFADD__(v20++, 1))
        {
          goto LABEL_22;
        }
      }
    }

    else
    {
      sub_2482655AC(v21);
LABEL_19:
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      sub_248356B8C(a1, a2, v20, a3);
      return;
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
}

unint64_t *sub_2483567D0(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v17 = result;
  v18 = 0;
  v4 = 0;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  v27 = 0x80000002483B3C60;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_13:
    v13 = v10 | (v4 << 6);
    sub_248265550(*(a3 + 48) + 40 * v13, v26);
    sub_24814A550(*(a3 + 56) + 32 * v13, v25);
    sub_248265550(v26, v23);
    sub_24814A550(v25, &v24);
    sub_248232C78(v23, v21, &qword_27EE94208, &unk_2483A22A8);
    if (!swift_dynamicCast())
    {
      sub_24822D578(v23, &qword_27EE94208, &unk_2483A22A8);
      goto LABEL_5;
    }

    if (v19 == 0x736E6F69676572 && v20 == 0xE700000000000000 || (sub_248384680() & 1) != 0 || v19 == 0xD000000000000015 && v27 == v20 || (sub_248384680() & 1) != 0 || v19 == 0xD000000000000016 && 0x80000002483B3CE0 == v20)
    {

      sub_24822D578(v23, &qword_27EE94208, &unk_2483A22A8);
LABEL_25:
      __swift_destroy_boxed_opaque_existential_0(v22);
      __swift_destroy_boxed_opaque_existential_0(v25);
      result = sub_2482655AC(v26);
      *(v17 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v18++, 1))
      {
        __break(1u);
        return sub_248356DD0(v17, a2, v18, a3);
      }
    }

    else
    {
      v14 = sub_248384680();

      sub_24822D578(v23, &qword_27EE94208, &unk_2483A22A8);
      if (v14)
      {
        goto LABEL_25;
      }

LABEL_5:
      __swift_destroy_boxed_opaque_existential_0(v22);
      __swift_destroy_boxed_opaque_existential_0(v25);
      result = sub_2482655AC(v26);
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return sub_248356DD0(v17, a2, v18, a3);
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void *sub_248356B04(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = a4(result, a2, a3);

    return v8;
  }

  return result;
}

uint64_t sub_248356B8C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE94198, &qword_2483A2220);
  result = sub_2483845F0();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v32 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    v21 = *(v17 + 8 * v16);
    sub_248384780();

    sub_2483839E0();
    result = sub_2483847B0();
    v22 = -1 << *(v9 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
    {
      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v12 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    v30 = (*(v9 + 48) + 16 * v25);
    *v30 = v19;
    v30[1] = v20;
    *(*(v9 + 56) + 8 * v25) = v21;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v32;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_248356DD0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE901E0, qword_24839E320);
  result = sub_2483845F0();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    sub_248265550(*(v4 + 48) + 40 * v16, v33);
    sub_24814A550(*(v4 + 56) + 32 * v16, v32);
    v29 = v33[0];
    v30 = v33[1];
    v31 = v34;
    sub_24825E6A0(v32, v28);
    result = sub_2483843C0();
    v17 = -1 << *(v9 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v12 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    v25 = *(v9 + 48) + 40 * v20;
    v26 = v30;
    *v25 = v29;
    *(v25 + 16) = v26;
    *(v25 + 32) = v31;
    result = sub_24825E6A0(v28, (*(v9 + 56) + 32 * v20));
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void *sub_248357028(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_248357048(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_248357048(void *result, int64_t a2, char a3, void *a4)
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
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE941D0, &qword_2483A2278);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE90BF8, &qword_2483A2260) - 8);
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
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE90BF8, &qword_2483A2260) - 8);
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

void *sub_248357238(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      *v11 = *(*(a4 + 56) + ((v12 << 9) | (8 * v17)));
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      ++v11;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v19 = v12 + 1;
    }

    else
    {
      v19 = (63 - v7) >> 6;
    }

    v12 = v19 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

char *sub_24835738C(uint64_t a1, void (*a2)(void, void, __n128), uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v154 = a5;
  v147 = a4;
  v148 = a2;
  v151 = a3;
  v149 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE94210, &qword_24839D520);
  MEMORY[0x28223BE20](v8 - 8);
  v131 = &v104 - v9;
  v135 = sub_2483841A0();
  v132 = *(v135 - 8);
  MEMORY[0x28223BE20](v135);
  v127 = &v104 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE94218, &qword_2483A22B8);
  v134 = *(v133 - 8);
  MEMORY[0x28223BE20](v133);
  v129 = &v104 - v11;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE94220, &qword_2483A22C0);
  v137 = *(v136 - 8);
  MEMORY[0x28223BE20](v136);
  v130 = &v104 - v12;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE94228, &qword_2483A22C8);
  v126 = *(v125 - 8);
  MEMORY[0x28223BE20](v125);
  v124 = &v104 - v13;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE94230, &qword_2483A22D0);
  v118 = *(v117 - 8);
  MEMORY[0x28223BE20](v117);
  v116 = &v104 - v14;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE94238, &qword_2483A22D8);
  v121 = *(v119 - 8);
  MEMORY[0x28223BE20](v119);
  v114 = &v104 - v15;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE94240, &qword_2483A22E0);
  v122 = *(v120 - 8);
  MEMORY[0x28223BE20](v120);
  v115 = &v104 - v16;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE94248, &qword_2483A22E8);
  v128 = *(v123 - 8);
  MEMORY[0x28223BE20](v123);
  v142 = &v104 - v17;
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE94250, &qword_2483A22F0);
  v152 = *(v150 - 8);
  MEMORY[0x28223BE20](v150);
  v140 = &v104 - v18;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE94258, &unk_2483A22F8);
  v109 = *(v107 - 8);
  MEMORY[0x28223BE20](v107);
  v106 = &v104 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90340, qword_2483A2190);
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v113 = &v104 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v112 = &v104 - v24;
  MEMORY[0x28223BE20](v25);
  v111 = &v104 - v26;
  MEMORY[0x28223BE20](v27);
  v29 = &v104 - v28;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE94260, &unk_24839D650);
  v155 = *(v146 - 8);
  MEMORY[0x28223BE20](v146);
  v31 = &v104 - v30;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE94268, &qword_2483A2308);
  v143 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v33 = &v104 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8FFA8, &qword_24839D208);
  v35 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v37 = &v104 - v36;
  *&v6[OBJC_IVAR____TtC9DashBoard36DBInstrumentClusterLayoutCoordinator_regionsCache] = MEMORY[0x277D84F98];
  *&v6[OBJC_IVAR____TtC9DashBoard36DBInstrumentClusterLayoutCoordinator_transitionLastPTS] = 0;
  *&v6[OBJC_IVAR____TtC9DashBoard36DBInstrumentClusterLayoutCoordinator_cancellables] = MEMORY[0x277D84FA0];
  v38 = OBJC_IVAR____TtC9DashBoard36DBInstrumentClusterLayoutCoordinator__readyToTransitionLayout;
  LOBYTE(v156) = 0;
  sub_248382E50();
  (*(v35 + 32))(&v6[v38], v37, v34);
  v6[OBJC_IVAR____TtC9DashBoard36DBInstrumentClusterLayoutCoordinator_transitioning] = 0;
  v6[OBJC_IVAR____TtC9DashBoard36DBInstrumentClusterLayoutCoordinator_processMetadata] = 0;
  v39 = v148;
  v40 = v149;
  *&v6[OBJC_IVAR____TtC9DashBoard36DBInstrumentClusterLayoutCoordinator_transitionCoordinator] = v149;
  v41 = &v6[OBJC_IVAR____TtC9DashBoard36DBInstrumentClusterLayoutCoordinator_screenID];
  v42 = v151;
  *v41 = v39;
  v41[1] = v42;
  v43 = v147;
  *&v6[OBJC_IVAR____TtC9DashBoard36DBInstrumentClusterLayoutCoordinator_uisyncSession] = v147;
  *&v6[OBJC_IVAR____TtC9DashBoard36DBInstrumentClusterLayoutCoordinator_latency] = v154;
  *&v6[OBJC_IVAR____TtC9DashBoard36DBInstrumentClusterLayoutCoordinator_scaleFactor] = a6;
  v44 = type metadata accessor for DBInstrumentClusterLayoutCoordinator(0);
  v157.receiver = v6;
  v157.super_class = v44;

  v45 = v43;
  v46 = objc_msgSendSuper2(&v157, sel_init);
  v153 = v29;
  sub_248381FF0();
  v154 = sub_24822D648(&qword_27EE90360, &qword_27EE90340, qword_2483A2190, MEMORY[0x277CBCEC8]);
  v47 = v20;
  v145 = v20;
  sub_248382FC0();
  v48 = *(v21 + 8);
  v151 = v21 + 8;
  v48(v29, v47);
  v49 = v48;
  v139 = v48;
  v110 = MEMORY[0x277CBCC18];
  v138 = sub_24822D648(&unk_27EE904B0, &qword_27EE94260, &unk_24839D650, MEMORY[0x277CBCC18]);
  v50 = v146;
  sub_248382F70();
  v51 = v155 + 8;
  v144 = *(v155 + 8);
  v144(v31, v50);
  v155 = v51;
  v52 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v53 = swift_allocObject();
  *(v53 + 16) = v52;
  *(v53 + 24) = v40;
  v141 = MEMORY[0x277CBCC90];
  sub_24822D648(&qword_27EE94270, &qword_27EE94268, &qword_2483A2308, MEMORY[0x277CBCC90]);

  v54 = v108;
  sub_248383000();

  (*(v143 + 8))(v33, v54);
  v55 = OBJC_IVAR____TtC9DashBoard36DBInstrumentClusterLayoutCoordinator_cancellables;
  swift_beginAccess();
  sub_248382DB0();
  swift_endAccess();

  v56 = v153;
  sub_248381FF0();
  v57 = v145;
  sub_248382FC0();
  v49(v56, v57);
  v58 = v140;
  v104 = v31;
  sub_248382FD0();
  v144(v31, v50);
  v108 = MEMORY[0x277CBCBE0];
  v147 = sub_24822D648(&qword_27EE94278, &qword_27EE94250, &qword_2483A22F0, MEMORY[0x277CBCBE0]);
  v59 = v106;
  v60 = v150;
  sub_248382F70();
  v61 = *(v152 + 8);
  v152 += 8;
  v148 = v61;
  v62 = v58;
  v61(v58, v60);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_24822D648(&qword_27EE94280, &qword_27EE94258, &unk_2483A22F8, v141);
  v63 = v107;
  sub_248383000();

  (*(v109 + 8))(v59, v63);
  v64 = v46;
  v143 = v55;
  swift_beginAccess();
  sub_248382DB0();
  swift_endAccess();

  v65 = v153;
  v66 = v149;
  sub_248381F90();
  v67 = v104;
  v68 = v145;
  sub_248382FC0();
  v69 = v65;
  v70 = v139;
  v139(v69, v68);
  v71 = v146;
  sub_248382FD0();
  v72 = v144;
  v144(v67, v71);
  v73 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v74 = swift_allocObject();
  *(v74 + 16) = v73;
  *(v74 + 24) = v66;

  v75 = v150;
  sub_248383000();

  v148(v62, v75);
  swift_beginAccess();
  sub_248382DB0();
  swift_endAccess();

  v76 = v153;
  sub_248382030();
  sub_248382FC0();
  v70(v76, v68);
  v77 = v140;
  v78 = v146;
  sub_248382FD0();
  v72(v67, v78);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v79 = v150;
  sub_248383000();

  v148(v77, v79);
  swift_beginAccess();
  sub_248382DB0();
  swift_endAccess();

  v80 = v153;
  sub_248382010();
  v81 = v145;
  sub_248382FC0();
  v139(v80, v81);
  sub_248382FD0();
  v144(v67, v78);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_248383000();

  v148(v77, v79);
  swift_beginAccess();
  v82 = v64;
  sub_248382DB0();
  swift_endAccess();

  sub_248382030();
  sub_248381F90();
  sub_248381FF0();
  sub_248382010();
  v83 = v116;
  sub_248382D10();
  sub_24822D648(&qword_27EE94288, &qword_27EE94230, &qword_2483A22D0, MEMORY[0x277CBCB00]);
  v84 = v114;
  v85 = v117;
  sub_248382FC0();
  (*(v118 + 8))(v83, v85);
  sub_24822D648(&qword_27EE94290, &qword_27EE94238, &qword_2483A22D8, v110);
  v86 = v115;
  v87 = v119;
  sub_248382F60();
  (*(v121 + 8))(v84, v87);
  sub_24822D648(&qword_27EE94298, &qword_27EE94240, &qword_2483A22E0, MEMORY[0x277CBCC08]);
  v88 = v120;
  sub_248382FD0();
  (*(v122 + 8))(v86, v88);
  sub_24822D648(&qword_27EE942A0, &qword_27EE94248, &qword_2483A22E8, v108);
  v89 = v124;
  v90 = v123;
  sub_248382F70();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v91 = v141;
  sub_24822D648(&qword_27EE942A8, &qword_27EE94228, &qword_2483A22C8, v141);
  v92 = v125;
  sub_248383000();

  (*(v126 + 8))(v89, v92);
  v105 = v82;
  swift_beginAccess();
  sub_248382DB0();
  swift_endAccess();

  v93 = v127;
  sub_248384180();
  v94 = [objc_opt_self() mainRunLoop];
  v156 = v94;
  v95 = sub_248384170();
  v96 = v131;
  (*(*(v95 - 8) + 56))(v131, 1, 1, v95);
  sub_24814FB28(0, &qword_27EE903F0, 0x277CBEB88);
  sub_24822D338();
  v97 = v129;
  v98 = v142;
  sub_248382FB0();
  sub_24822D578(v96, &qword_27EE94210, &qword_24839D520);

  (*(v132 + 8))(v93, v135);
  sub_24822D648(&qword_27EE942B0, &qword_27EE94218, &qword_2483A22B8, MEMORY[0x277CBCCF8]);
  v99 = v130;
  v100 = v133;
  sub_248382F70();
  (*(v134 + 8))(v97, v100);
  swift_allocObject();
  v101 = v105;
  swift_unknownObjectWeakInit();

  sub_24822D648(&qword_27EE942B8, &qword_27EE94220, &qword_2483A22C0, v91);
  v102 = v136;
  sub_248383000();

  (*(v137 + 8))(v99, v102);
  swift_beginAccess();
  sub_248382DB0();
  swift_endAccess();

  (*(v128 + 8))(v98, v90);
  return v101;
}

uint64_t type metadata accessor for DBInstrumentClusterLayoutCoordinator(uint64_t a1)
{
  result = qword_27EE98468;
  if (!qword_27EE98468)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_248358B98(uint64_t a1, void *a2)
{
  v3 = v2;
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = (a1 + 32);
    while (1)
    {
      v6 = *v5;

      *&v30[0] = 0x7974696361706FLL;
      *(&v30[0] + 1) = 0xE700000000000000;

      sub_2483843E0();
      if (*(v6 + 16) && (v7 = sub_2482652B8(v31), (v8 & 1) != 0))
      {
        sub_24814A550(*(v6 + 56) + 32 * v7, &v32);
        sub_2482655AC(v31);
        if (swift_dynamicCast())
        {
          v9 = *&v30[0];
          *&v32 = 0xD000000000000012;
          *(&v32 + 1) = 0x80000002483B3CA0;
          sub_2483843E0();
          if (!*(v6 + 16) || (v10 = sub_2482652B8(v31), (v11 & 1) == 0))
          {
            sub_2482655AC(v31);
            v32 = 0u;
            v33 = 0u;
            sub_24822D578(&v32, &unk_27EE941B0, &unk_24839C9C0);
            *&v32 = 0xD000000000000012;
            *(&v32 + 1) = 0x80000002483B3CA0;
            sub_2483843E0();
            *(&v33 + 1) = MEMORY[0x277D839F8];
            *&v32 = v9;
            sub_24825E6A0(&v32, v30);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            sub_248355C94(v30, v31, isUniquelyReferenced_nonNull_native);
            sub_2482655AC(v31);
            v12 = v6;
            goto LABEL_11;
          }

          sub_24814A550(*(v6 + 56) + 32 * v10, &v32);
          sub_2482655AC(v31);
          sub_24822D578(&v32, &unk_27EE941B0, &unk_24839C9C0);
        }
      }

      else
      {
        sub_2482655AC(v31);
      }

      v12 = v6;
LABEL_11:
      *&v30[0] = 0x696669746E656469;
      *(&v30[0] + 1) = 0xEA00000000007265;
      sub_2483843E0();
      if (*(v12 + 16) && (v13 = sub_2482652B8(v31), (v14 & 1) != 0))
      {
        sub_24814A550(*(v12 + 56) + 32 * v13, &v32);
        sub_2482655AC(v31);
        if (swift_dynamicCast())
        {
          v15 = v30[0];
          if (sub_248381F80())
          {
            v16 = *((*MEMORY[0x277D85000] & *a2) + 0xB8);
            v27 = v3;

            v17 = v16(v31);
            v19 = v18;
            v20 = swift_isUniquelyReferenced_nonNull_native();
            *&v32 = *v19;
            *v19 = 0x8000000000000000;
            sub_248355DE0(v12, v15, *(&v15 + 1), v20);

            *v19 = v32;
            v3 = v27;
            v17(v31, 0);
          }

          else if ((sub_248383A50() & 1) == 0)
          {
            v22 = *((*MEMORY[0x277D85000] & *a2) + 0xB8);
            v28 = v3;

            v23 = v22(v31);
            v25 = v24;
            v26 = swift_isUniquelyReferenced_nonNull_native();
            *&v32 = *v25;
            *v25 = 0x8000000000000000;
            sub_248355DE0(v12, v15, *(&v15 + 1), v26);

            *v25 = v32;
            v23(v31, 0);
            v3 = v28;
          }

          sub_248355348(v15, *(&v15 + 1));

          goto LABEL_18;
        }
      }

      else
      {
        sub_2482655AC(v31);
      }

LABEL_18:

      if (!v3)
      {
        ++v5;
        if (--v4)
        {
          continue;
        }
      }

      return;
    }
  }
}

uint64_t sub_248359070(uint64_t a1)
{
  v2 = sub_2483837A0();
  v14 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2483837E0();
  v5 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24814FB28(0, &qword_27EE90280, 0x277D85C78);
  v8 = sub_248383E50();
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = a1;
  aBlock[4] = sub_24835946C;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24814C01C;
  aBlock[3] = &block_descriptor_30;
  v11 = _Block_copy(aBlock);

  sub_2483837C0();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_24815C970();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE90290, &qword_24839D4E0);
  sub_24822D648(&qword_27EE91EC0, &unk_27EE90290, &qword_24839D4E0, MEMORY[0x277D83970]);
  sub_2483842D0();
  MEMORY[0x24C1CB440](0, v7, v4, v11);
  _Block_release(v11);

  (*(v14 + 8))(v4, v2);
  return (*(v5 + 8))(v7, v13);
}

void sub_248359368(uint64_t a1)
{
  sub_2483596AC(319, &unk_27EE94180, MEMORY[0x277D839B0], MEMORY[0x277CBCED0]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_24835946C()
{
  v1 = *(v0 + 24);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_248353EF8(v1);
  }
}

uint64_t objectdestroy_10Tm(void (*a1)(void, __n128))
{

  (a1)(*(v1 + 24));

  return MEMORY[0x2821FE8E8](v1, 32, 7);
}

void sub_24835953C(unsigned __int8 *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_24834E814(v1);
  }
}

void sub_248359594()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    (*((*MEMORY[0x277D85000] & *Strong) + 0x140))(0);
  }
}

void sub_248359620()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    (*((*MEMORY[0x277D85000] & *Strong) + 0x128))(0);
  }
}

void sub_2483596AC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

double DBClimateOverlayController.delegate.setter(uint64_t a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return result;
}

void (*DBClimateOverlayController.delegate.modify(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC9DashBoard26DBClimateOverlayController_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_2482284FC;
}

id sub_248359888(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

void DBClimateOverlayController.persistentElementsManager.setter(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    DBPersistentElementsManager.addObserver(_:for:)(v1, 0);
  }
}

void (*DBClimateOverlayController.persistentElementsManager.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC9DashBoard26DBClimateOverlayController_persistentElementsManager;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_248359ADC;
}

void sub_248359ADC(uint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  swift_unknownObjectWeakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = Strong;
      DBPersistentElementsManager.addObserver(_:for:)(*(v3 + 32), 0);
    }
  }

  free(v3);
}

char *DBClimateOverlayController.__allocating_init(windowScene:windowFrame:climateScene:layoutEngine:environment:)(void *a1, void *a2, void *a3, uint64_t a4, double a5, double a6, double a7, double a8)
{
  v9 = v8;
  v17 = objc_allocWithZone(v9);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v17[OBJC_IVAR____TtC9DashBoard26DBClimateOverlayController_isDeactivated] = 0;
  *&v17[OBJC_IVAR____TtC9DashBoard26DBClimateOverlayController__climateViewController] = 0;
  *&v17[OBJC_IVAR____TtC9DashBoard26DBClimateOverlayController__windowScene] = a1;
  v18 = &v17[OBJC_IVAR____TtC9DashBoard26DBClimateOverlayController__windowFrame];
  *v18 = a5;
  v18[1] = a6;
  v18[2] = a7;
  v18[3] = a8;
  *&v17[OBJC_IVAR____TtC9DashBoard26DBClimateOverlayController__climateScene] = a2;
  swift_unknownObjectUnownedInit();
  type metadata accessor for DBClimateWindow();
  v19 = a1;
  v20 = a2;
  *&v17[OBJC_IVAR____TtC9DashBoard26DBClimateOverlayController_climateWindow] = DBClimateWindow.__allocating_init(windowScene:frame:)(v19, a5, a6, a7, a8);
  v41.receiver = v17;
  v41.super_class = v9;
  v21 = objc_msgSendSuper2(&v41, sel_init);
  v22 = [swift_unknownObjectUnownedLoadStrong() environmentConfiguration];
  swift_unknownObjectRelease();
  v23 = [v22 currentStatusBarEdge];

  v24 = [swift_unknownObjectUnownedLoadStrong() environmentConfiguration];
  swift_unknownObjectRelease();
  LOBYTE(v22) = [v24 hasDualStatusBar];

  if ((v22 & 1) != 0 || CARStatusBarEdge.isHorizontal.getter(v23))
  {
    v25 = sub_248383DC0();
    v26 = *sub_24814FB80();
    sub_248382A40(v25, &dword_248146000, v26, "Setting up climate overlay UI", 29, 2, MEMORY[0x277D84F90]);

    v27 = *&v21[OBJC_IVAR____TtC9DashBoard26DBClimateOverlayController__windowFrame + 16];
    v28 = *&v21[OBJC_IVAR____TtC9DashBoard26DBClimateOverlayController__windowFrame + 24];
    type metadata accessor for DBClimateViewController();
    Strong = swift_unknownObjectUnownedLoadStrong();
    DBClimateViewController.__allocating_init(scene:environment:sceneFrame:layoutEngine:)(v20, Strong, a3, 0.0, 0.0, v27, v28);
    v30 = OBJC_IVAR____TtC9DashBoard26DBClimateOverlayController__climateViewController;
    v31 = *&v21[OBJC_IVAR____TtC9DashBoard26DBClimateOverlayController__climateViewController];
    *&v21[OBJC_IVAR____TtC9DashBoard26DBClimateOverlayController__climateViewController] = v32;

    v33 = *&v21[v30];
    if (v33)
    {
      v34 = *((*MEMORY[0x277D85000] & *v33) + 0xA8);
      v35 = v33;
      v36 = v21;
      v34(v21, &off_285A56768);

      v37 = *&v21[v30];
    }

    else
    {
      v37 = 0;
    }

    v38 = OBJC_IVAR____TtC9DashBoard26DBClimateOverlayController_climateWindow;
    [*&v21[OBJC_IVAR____TtC9DashBoard26DBClimateOverlayController_climateWindow] setRootViewController_];
    v39 = *&v21[v38];
    [v39 setHidden_];
  }

  swift_unknownObjectRelease();
  return v21;
}

char *DBClimateOverlayController.init(windowScene:windowFrame:climateScene:layoutEngine:environment:)(void *a1, void *a2, void *a3, uint64_t a4, double a5, double a6, double a7, double a8)
{
  v9 = v8;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v9[OBJC_IVAR____TtC9DashBoard26DBClimateOverlayController_isDeactivated] = 0;
  *&v9[OBJC_IVAR____TtC9DashBoard26DBClimateOverlayController__climateViewController] = 0;
  *&v9[OBJC_IVAR____TtC9DashBoard26DBClimateOverlayController__windowScene] = a1;
  v17 = &v9[OBJC_IVAR____TtC9DashBoard26DBClimateOverlayController__windowFrame];
  *v17 = a5;
  v17[1] = a6;
  v17[2] = a7;
  v17[3] = a8;
  *&v9[OBJC_IVAR____TtC9DashBoard26DBClimateOverlayController__climateScene] = a2;
  swift_unknownObjectUnownedInit();
  type metadata accessor for DBClimateWindow();
  v18 = a1;
  v19 = a2;
  *&v9[OBJC_IVAR____TtC9DashBoard26DBClimateOverlayController_climateWindow] = DBClimateWindow.__allocating_init(windowScene:frame:)(v18, a5, a6, a7, a8);
  v40.receiver = v9;
  v40.super_class = type metadata accessor for DBClimateOverlayController();
  v20 = objc_msgSendSuper2(&v40, sel_init);
  v21 = [swift_unknownObjectUnownedLoadStrong() environmentConfiguration];
  swift_unknownObjectRelease();
  v22 = [v21 currentStatusBarEdge];

  v23 = [swift_unknownObjectUnownedLoadStrong() environmentConfiguration];
  swift_unknownObjectRelease();
  LOBYTE(v21) = [v23 hasDualStatusBar];

  if ((v21 & 1) != 0 || CARStatusBarEdge.isHorizontal.getter(v22))
  {
    v24 = sub_248383DC0();
    v25 = *sub_24814FB80();
    sub_248382A40(v24, &dword_248146000, v25, "Setting up climate overlay UI", 29, 2, MEMORY[0x277D84F90]);

    v26 = *&v20[OBJC_IVAR____TtC9DashBoard26DBClimateOverlayController__windowFrame + 16];
    v27 = *&v20[OBJC_IVAR____TtC9DashBoard26DBClimateOverlayController__windowFrame + 24];
    type metadata accessor for DBClimateViewController();
    Strong = swift_unknownObjectUnownedLoadStrong();
    DBClimateViewController.__allocating_init(scene:environment:sceneFrame:layoutEngine:)(v19, Strong, a3, 0.0, 0.0, v26, v27);
    v29 = OBJC_IVAR____TtC9DashBoard26DBClimateOverlayController__climateViewController;
    v30 = *&v20[OBJC_IVAR____TtC9DashBoard26DBClimateOverlayController__climateViewController];
    *&v20[OBJC_IVAR____TtC9DashBoard26DBClimateOverlayController__climateViewController] = v31;

    v32 = *&v20[v29];
    if (v32)
    {
      v33 = *((*MEMORY[0x277D85000] & *v32) + 0xA8);
      v34 = v32;
      v35 = v20;
      v33(v20, &off_285A56768);

      v36 = *&v20[v29];
    }

    else
    {
      v36 = 0;
    }

    v37 = OBJC_IVAR____TtC9DashBoard26DBClimateOverlayController_climateWindow;
    [*&v20[OBJC_IVAR____TtC9DashBoard26DBClimateOverlayController_climateWindow] setRootViewController_];
    v38 = *&v20[v37];
    [v38 setHidden_];
  }

  swift_unknownObjectRelease();
  return v20;
}

uint64_t DBClimateOverlayController.isDeactivated.getter()
{
  v1 = OBJC_IVAR____TtC9DashBoard26DBClimateOverlayController_isDeactivated;
  swift_beginAccess();
  return *(v0 + v1);
}

id DBClimateOverlayController.isDeactivated.setter(char a1)
{
  v3 = OBJC_IVAR____TtC9DashBoard26DBClimateOverlayController_isDeactivated;
  swift_beginAccess();
  *(v1 + v3) = a1;
  if (a1)
  {
    v4 = 128;
  }

  else
  {
    v4 = 0;
  }

  return [*(v1 + OBJC_IVAR____TtC9DashBoard26DBClimateOverlayController__climateViewController) updateWithDeactivationReasons_];
}

uint64_t (*DBClimateOverlayController.isDeactivated.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC9DashBoard26DBClimateOverlayController_isDeactivated;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_24835A504;
}

void sub_24835A504(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    if (*(v4 + v3[4]))
    {
      v5 = 128;
    }

    else
    {
      v5 = 0;
    }

    [*(v4 + OBJC_IVAR____TtC9DashBoard26DBClimateOverlayController__climateViewController) updateWithDeactivationReasons_];
  }

  free(v3);
}

id (*DBClimateOverlayController.isHidden.modify(uint64_t a1))(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC9DashBoard26DBClimateOverlayController_climateWindow);
  *a1 = v3;
  *(a1 + 8) = [v3 isHidden];
  return sub_24835A64C;
}

Swift::Void __swiftcall DBClimateOverlayController.update(persistentElements:)(NSNumber_optional persistentElements)
{
  v2 = *(v1 + OBJC_IVAR____TtC9DashBoard26DBClimateOverlayController__climateViewController);
  if (v2)
  {
    isa = persistentElements.value.super.super.isa;
    v4 = v2;
    v7.is_nil = v4;
    v5 = v4;
    v7.value.super.super.isa = isa;
    DBClimateViewController.update(persistentElements:)(v7);
  }
}

Swift::Void __swiftcall DBClimateOverlayController.setAlwaysVisibleClimateWindowLevel()()
{
  (*((*MEMORY[0x277D85000] & *v0) + 0xF0))(0);
  v1 = *(v0 + OBJC_IVAR____TtC9DashBoard26DBClimateOverlayController_climateWindow);
  type metadata accessor for Level();
  sub_248279B98(9);
  sub_24827A5FC(&unk_27EE90F50, MEMORY[0x277D74E38]);
  sub_248382B90();
  [v1 setWindowLevel_];
}

Swift::Void __swiftcall DBClimateOverlayController.resetAlwaysVisibleClimateWindowLevel()()
{
  v1 = *(v0 + OBJC_IVAR____TtC9DashBoard26DBClimateOverlayController_climateWindow);
  v2 = sub_248279B98(7);

  [v1 setWindowLevel_];
}

Swift::Void __swiftcall DBClimateOverlayController.requestQuickControl(zone:)(Swift::String zone)
{
  v2 = v1;
  object = zone._object;
  countAndFlagsBits = zone._countAndFlagsBits;
  sub_24814FB28(0, &qword_27EE90950, 0x277D86200);
  v5 = sub_2483841B0();
  v6 = sub_248383DC0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_24814A378(countAndFlagsBits, object, &v16);
    _os_log_impl(&dword_248146000, v5, v6, "Should show climate popover for zone = %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x24C1CD5F0](v8, -1, -1);
    MEMORY[0x24C1CD5F0](v7, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE906B0, &unk_24839DA80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24839C700;
  v10 = objc_allocWithZone(MEMORY[0x277CF9228]);
  v11 = sub_248383930();
  v12 = [v10 initWithClimateZone_];

  *(inited + 32) = v12;
  sub_24814F838(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  v13 = *(v2 + OBJC_IVAR____TtC9DashBoard26DBClimateOverlayController__climateViewController);
  if (v13)
  {
    sub_24814FB28(0, &unk_27EE91610, 0x277CF0B58);
    sub_248284AB4();
    v14 = v13;
    v15 = sub_248383C70();

    [v14 sendSceneActions_];
  }

  else
  {
  }
}

Swift::Void __swiftcall DBClimateOverlayController.updateLayoutForCurrentViewArea()()
{
  [*(v0 + OBJC_IVAR____TtC9DashBoard26DBClimateOverlayController_climateWindow) setFrame_];
  [*(v0 + OBJC_IVAR____TtC9DashBoard26DBClimateOverlayController__climateViewController) updateForViewAreaChange];
  v1 = sub_248383DC0();
  v2 = *sub_24814FB80();
  sub_248382A40(v1, &dword_248146000, v2, "Updated climate overlay layout for view area change", 51, 2, MEMORY[0x277D84F90]);
}

id DBClimateOverlayController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DBClimateOverlayController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DBClimateOverlayController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_24835AE64(double a1, double a2, double a3, double a4)
{
  v9 = (*((*MEMORY[0x277D85000] & *v4) + 0x98))();
  if (v9)
  {
    [v9 climateOverlayDidUpdateInsets_];

    swift_unknownObjectRelease();
  }
}

double sub_24835AF20(char a1)
{
  v3 = [*(v1 + OBJC_IVAR____TtC9DashBoard26DBClimateOverlayController_climateWindow) setHidden_];
  v4 = (*((*MEMORY[0x277D85000] & *v1) + 0x98))(v3);
  if (v4)
  {
    [v4 climateOverlayDidRequestHideFocusGuides_];

    swift_unknownObjectRelease();
  }

  return result;
}

Swift::Void __swiftcall DBClimateOverlayController.invalidate()()
{
  v1 = *(v0 + OBJC_IVAR____TtC9DashBoard26DBClimateOverlayController__climateViewController);
  if (v1)
  {
    [v1 invalidate];
  }
}

Swift::Void __swiftcall DBClimateOverlayController.dockDidUpdateHidden(_:)(Swift::Bool a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC9DashBoard26DBClimateOverlayController__climateViewController);
  if (v3)
  {
    v4 = [v3 view];
    if (v4)
    {
      v5 = v4;
      [v4 setHidden_];
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_24835B250()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE91CA0, &unk_24839D8A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24839F1A0;
  *(inited + 32) = sub_248383960();
  *(inited + 40) = v1;
  *(inited + 48) = sub_248383960();
  *(inited + 56) = v2;
  *(inited + 64) = sub_248383960();
  *(inited + 72) = v3;
  *(inited + 80) = sub_248383960();
  *(inited + 88) = v4;
  v5 = sub_2482ABA68(inited);
  swift_setDeallocating();
  result = swift_arrayDestroy();
  qword_27EE98788 = v5;
  return result;
}

double DBIconModel.iconImageSize.getter()
{
  v1 = v0 + OBJC_IVAR____TtC9DashBoard11DBIconModel_iconImageSize;
  swift_beginAccess();
  return *v1;
}

void DBIconModel.iconImageSize.setter(double a1, double a2)
{
  v5 = (v2 + OBJC_IVAR____TtC9DashBoard11DBIconModel_iconImageSize);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

double DBIconModel.environment.setter(uint64_t a1)
{
  swift_unknownObjectWeakAssign();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = [Strong environmentConfiguration];
    swift_unknownObjectRelease();
    *(v1 + OBJC_IVAR____TtC9DashBoard11DBIconModel_current_isSet) = 1;
    [v3 currentSafeViewAreaFrame];
    v4 = v1 + OBJC_IVAR____TtC9DashBoard11DBIconModel_current_screenBounds;
    *v4 = v5;
    *(v4 + 8) = v6;
    *(v4 + 16) = v7;
    *(v4 + 24) = v8;
    *(v4 + 32) = 0;
    v9 = [v3 isOEMIconVisible];
    *(v1 + OBJC_IVAR____TtC9DashBoard11DBIconModel_current_showsOEMIcon) = v9;
    v10 = [v3 OEMIconLabel];
    v11 = sub_248383960();
    v13 = v12;

    v14 = (v1 + OBJC_IVAR____TtC9DashBoard11DBIconModel_current_OEMIconLabel);
    *v14 = v11;
    v14[1] = v13;

    v15 = [v3 interactionAffordances];
    v16 = v1 + OBJC_IVAR____TtC9DashBoard11DBIconModel_interactionAffordances;
    *v16 = v15;
    *(v16 + 8) = 0;
    v17 = [v3 currentStatusBarEdge];
    swift_unknownObjectRelease();

    v19 = v1 + OBJC_IVAR____TtC9DashBoard11DBIconModel_current_statusBarEdge;
    *v19 = v17;
    *(v19 + 8) = 0;
  }

  else
  {

    swift_unknownObjectRelease();
  }

  return result;
}

double (*DBIconModel.environment.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  a1[1] = v1;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_24835B75C;
}

double sub_24835B75C(uint64_t *a1, uint64_t a2)
{
  if ((a2 & 1) == 0)
  {
    return DBIconModel.environment.setter(*a1);
  }

  v2 = swift_unknownObjectRetain();
  DBIconModel.environment.setter(v2);

  swift_unknownObjectRelease();
  return result;
}

double DBIconModel.carApplicationDataSource.setter(uint64_t a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return result;
}

void (*DBIconModel.carApplicationDataSource.modify(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC9DashBoard11DBIconModel_carApplicationDataSource;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_2482284FC;
}

double variable initialization expression of DBIconModel.current_screenBounds@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1;
  return result;
}

id DBIconModel.__allocating_init(store:carApplicationDataSource:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = sub_2483618F8(a1, a2);
  swift_unknownObjectRelease();
  return v6;
}

id DBIconModel.init(store:carApplicationDataSource:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_2483618F8(a1, a2);
  swift_unknownObjectRelease();
  return v2;
}

double DBIconModel.screenBounds.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9DashBoard11DBIconModel_current_isSet);
  result = 0.0;
  if (v1 != 2 && (v1 & 1) != 0 && (*(v0 + OBJC_IVAR____TtC9DashBoard11DBIconModel_current_screenBounds + 32) & 1) == 0)
  {
    return *(v0 + OBJC_IVAR____TtC9DashBoard11DBIconModel_current_screenBounds);
  }

  return result;
}

id DBIconModel.rowCount.getter()
{
  v1 = MEMORY[0x277D85000];
  v2 = (*((*MEMORY[0x277D85000] & *v0) + 0x1F8))();
  v4 = v3;
  v5 = (*((*v1 & *v0) + 0xB0))(v2);
  v7 = v6;
  if (*(v0 + OBJC_IVAR____TtC9DashBoard11DBIconModel_current_statusBarEdge + 8))
  {
    v8 = 0;
  }

  else
  {
    v8 = *(v0 + OBJC_IVAR____TtC9DashBoard11DBIconModel_current_statusBarEdge);
  }

  if (*(v0 + OBJC_IVAR____TtC9DashBoard11DBIconModel_interactionAffordances + 8))
  {
    v9 = 0;
  }

  else
  {
    v9 = *(v0 + OBJC_IVAR____TtC9DashBoard11DBIconModel_interactionAffordances);
  }

  v10 = objc_opt_self();

  return [v10 iconRowsForScreenHeight:v8 iconImageSize:v9 statusBarEdge:v4 interactionAffordances:{v5, v7}];
}

id DBIconModel.columnCount.getter()
{
  v1 = MEMORY[0x277D85000];
  v2 = (*((*MEMORY[0x277D85000] & *v0) + 0x1F8))();
  v4 = v3;
  v5 = (*((*v1 & *v0) + 0xB0))(v2);
  v7 = v6;
  if (*(v0 + OBJC_IVAR____TtC9DashBoard11DBIconModel_current_statusBarEdge + 8))
  {
    v8 = 0;
  }

  else
  {
    v8 = *(v0 + OBJC_IVAR____TtC9DashBoard11DBIconModel_current_statusBarEdge);
  }

  v9 = objc_opt_self();

  return [v9 iconColumnsForScreenWidth:v8 iconImageSize:v4 statusBarEdge:{v5, v7}];
}

uint64_t DBIconModel.showsOEMIcon.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9DashBoard11DBIconModel_current_isSet);
  if (v1 == 2 || (v1 & 1) == 0 || (v2 = *(v0 + OBJC_IVAR____TtC9DashBoard11DBIconModel_current_showsOEMIcon), v2 == 2))
  {
    LOBYTE(v2) = *(v0 + OBJC_IVAR____TtC9DashBoard11DBIconModel_metadata_showsOEMIcon);
  }

  return v2 & 1;
}

uint64_t DBIconModel.OEMIconLabel.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9DashBoard11DBIconModel_current_isSet);
  if (v1 != 2 && (v1 & 1) != 0 && *(v0 + OBJC_IVAR____TtC9DashBoard11DBIconModel_current_OEMIconLabel + 8))
  {
    v2 = *(v0 + OBJC_IVAR____TtC9DashBoard11DBIconModel_current_OEMIconLabel);
  }

  else
  {
    v2 = *(v0 + OBJC_IVAR____TtC9DashBoard11DBIconModel_metadata_OEMIconLabel);
  }

  return v2;
}

Swift::OpaquePointer_optional __swiftcall DBIconModel.exportStateForCarKit()()
{
  v1 = v0;
  v2 = sub_248382A90();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v7 = MEMORY[0x28223BE20](v6).n128_u64[0];
  v9 = &v32 - v8;
  v10 = [v1 iconModelMetadata];
  if (v10)
  {
    v11 = v10;
    sub_2483838A0();

    v12 = objc_opt_self();
    v13 = sub_248383880();

    v14 = [v12 archiveRootFolderInModel:v1 metadata:v13];

    sub_2483838A0();
    v15 = sub_24827C6F0();
    (*(v3 + 16))(v9, v15, v2);

    v16 = sub_248382A80();
    v17 = sub_248383DC0();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v33 = v19;
      *v18 = 136315138;
      v20 = sub_2483838B0();
      v22 = sub_24814A378(v20, v21, &v33);
      v32 = v2;
      v23 = v22;

      *(v18 + 4) = v23;
      _os_log_impl(&dword_248146000, v16, v17, "Expoted state %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x24C1CD5F0](v19, -1, -1);
      MEMORY[0x24C1CD5F0](v18, -1, -1);

      (*(v3 + 8))(v9, v32);
    }

    else
    {

      (*(v3 + 8))(v9, v2);
    }

    sub_248361B40(v1);
    v29 = v30;
  }

  else
  {
    v24 = sub_24827C6F0();
    (*(v3 + 16))(v5, v24, v2);
    v25 = sub_248382A80();
    v26 = sub_248383DA0();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_248146000, v25, v26, "Unable to export state for car kit", v27, 2u);
      MEMORY[0x24C1CD5F0](v27, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
    v29 = 0;
  }

  v31 = v29;
  result.value._rawValue = v31;
  result.is_nil = v28;
  return result;
}

id DBIconModel.exportIconLayoutState()()
{
  v1 = v0;
  v2 = sub_248382A90();
  v75 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v69 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v5);
  v71 = &v69 - v7;
  v8 = MEMORY[0x277D85000];
  v9 = (*((*MEMORY[0x277D85000] & *v0) + 0x220))(v6);
  if (!v9)
  {
    goto LABEL_15;
  }

  v10 = v9;
  v76 = sub_248383960();
  v77 = v11;
  sub_2483843E0();
  if (!*(v10 + 16) || (v73 = v10, v12 = sub_2482652B8(v78), v13 = v73, (v14 & 1) == 0))
  {

    sub_2482655AC(v78);
    goto LABEL_15;
  }

  sub_24814A550(*(v73 + 56) + 32 * v12, v79);
  sub_2482655AC(v78);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE94390, &unk_2483A2450);
  if ((swift_dynamicCast() & 1) == 0)
  {

LABEL_15:
    v27 = sub_24827C6F0();
    v28 = v75;
    (*(v75 + 16))(v4, v27, v2);
    v29 = sub_248382A80();
    v30 = sub_248383DA0();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v78[0] = v32;
      *v31 = 136315138;
      v33 = sub_248383960();
      v35 = v28;
      v36 = sub_24814A378(v33, v34, v78);

      *(v31 + 4) = v36;
      _os_log_impl(&dword_248146000, v29, v30, "Unable to export icon layout state. Key %s either wasn't found or it was in an unexpected format.", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v32);
      MEMORY[0x24C1CD5F0](v32, -1, -1);
      MEMORY[0x24C1CD5F0](v31, -1, -1);

      (*(v35 + 8))(v4, v2);
    }

    else
    {

      (*(v28 + 8))(v4, v2);
    }

    return 0;
  }

  v15 = v76;
  v16 = *(v76 + 16);
  if (!v16)
  {

LABEL_24:
    v76 = sub_248383960();
    v77 = v37;
    sub_2483843E0();
    if (*(v13 + 16) && (v38 = sub_2482652B8(v78), (v39 & 1) != 0))
    {
      sub_24814A550(*(v73 + 56) + 32 * v38, v79);
      sub_2482655AC(v78);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE93AB0, &unk_2483A0E40);
      if (swift_dynamicCast())
      {
        v40 = v76;
        v41 = *(v76 + 16);
        if (v41)
        {
          v42 = v1;
          v78[0] = MEMORY[0x277D84F90];
          sub_2483844C0();
          v43 = v40 + 40;
          do
          {
            v44 = objc_allocWithZone(MEMORY[0x277CF8FF8]);

            v45 = sub_248383930();

            [v44 initWithBundleIdentifier_];

            sub_2483844A0();
            sub_2483844D0();
            sub_2483844E0();
            sub_2483844B0();
            v43 += 16;
            --v41;
          }

          while (v41);

          v1 = v42;
          v8 = MEMORY[0x277D85000];
        }

        else
        {
        }

        v56 = objc_allocWithZone(MEMORY[0x277CF9018]);
        sub_24814FB28(0, &unk_27EE94398, 0x277CF9008);
        v57 = sub_248383B00();

        sub_24814FB28(0, &unk_27EE93590, 0x277CF8FF8);
        v58 = sub_248383B00();

        v59 = [v56 initWithPages:v57 hiddenIcons:v58];

        v76 = sub_248383960();
        v77 = v60;
        sub_2483843E0();
        v61 = v73;
        if (*(v73 + 16) && (v62 = sub_2482652B8(v78), v61 = v73, (v63 & 1) != 0))
        {
          sub_24814A550(*(v73 + 56) + 32 * v62, v79);
          sub_2482655AC(v78);
          if (swift_dynamicCast())
          {
            [v59 setDisplaysOEMIcon_];
          }
        }

        else
        {
          sub_2482655AC(v78);
        }

        v76 = sub_248383960();
        v77 = v64;
        sub_2483843E0();
        if (*(v61 + 16) && (v65 = sub_2482652B8(v78), (v66 & 1) != 0))
        {
          sub_24814A550(*(v73 + 56) + 32 * v65, v79);
          sub_2482655AC(v78);

          if (swift_dynamicCast())
          {
            v67 = sub_248383930();

LABEL_48:
            [v59 setOemIconLabel_];

            v68 = [v59 setRows_];
            [v59 setColumns_];
            return v59;
          }
        }

        else
        {

          sub_2482655AC(v78);
        }

        v67 = 0;
        goto LABEL_48;
      }
    }

    else
    {

      sub_2482655AC(v78);
    }

    v46 = sub_24827C6F0();
    v47 = v75;
    v48 = v71;
    (*(v75 + 16))(v71, v46, v2);
    v49 = sub_248382A80();
    v50 = sub_248383DA0();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v78[0] = v52;
      *v51 = 136315138;
      v53 = sub_248383960();
      v55 = sub_24814A378(v53, v54, v78);

      *(v51 + 4) = v55;
      _os_log_impl(&dword_248146000, v49, v50, "Unable to export icon layout state. Key %s either wasn't found or it was in an unexpected format.", v51, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v52);
      MEMORY[0x24C1CD5F0](v52, -1, -1);
      MEMORY[0x24C1CD5F0](v51, -1, -1);
    }

    (*(v47 + 8))(v48, v2);
    return 0;
  }

  v69 = v2;
  v70 = v0;
  v78[0] = MEMORY[0x277D84F90];
  result = sub_2483844C0();
  v18 = 0;
  v74 = v15 + 32;
  v72 = v15;
  while (v18 < *(v15 + 16))
  {
    v21 = *(v74 + 8 * v18);
    v22 = *(v21 + 16);
    if (v22)
    {
      v23 = v16;
      v79[0] = MEMORY[0x277D84F90];

      sub_2483844C0();
      v24 = v21 + 40;
      do
      {
        v25 = objc_allocWithZone(MEMORY[0x277CF8FF8]);

        v26 = sub_248383930();

        [v25 initWithBundleIdentifier_];

        sub_2483844A0();
        sub_2483844D0();
        sub_2483844E0();
        sub_2483844B0();
        v24 += 16;
        --v22;
      }

      while (v22);
      v16 = v23;
      v15 = v72;
    }

    else
    {
    }

    ++v18;
    v19 = objc_allocWithZone(MEMORY[0x277CF9008]);
    sub_24814FB28(0, &unk_27EE93590, 0x277CF8FF8);
    v20 = sub_248383B00();

    [v19 initWithIcons_];

    sub_2483844A0();
    sub_2483844D0();
    sub_2483844E0();
    result = sub_2483844B0();
    if (v18 == v16)
    {

      v2 = v69;
      v1 = v70;
      v8 = MEMORY[0x277D85000];
      v13 = v73;
      goto LABEL_24;
    }
  }

  __break(1u);
  return result;
}

Swift::OpaquePointer_optional __swiftcall DBIconModel.analyticsIconRepresentation()()
{
  v1 = v0;
  v2 = sub_248383920();
  i = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v130[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_248383840();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v130[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  isEscapingClosureAtFileLocation = sub_24814FB28(0, &qword_27EE90280, 0x277D85C78);
  *v9 = sub_248383E50();
  (*(v7 + 104))(v9, *MEMORY[0x277D851F0], v6);
  v11 = sub_248383860();
  (*(v7 + 8))(v9, v6);
  if ((v11 & 1) == 0)
  {
    __break(1u);
LABEL_160:
    __break(1u);
LABEL_161:
    __break(1u);
LABEL_162:
    __break(1u);
LABEL_163:
    __break(1u);
    goto LABEL_164;
  }

  v171 = 0;
  v172 = MEMORY[0x277D84FA0];
  v170 = 0;
  v169 = MEMORY[0x277D84F90];
  v12 = sub_248383E50();
  v13 = swift_allocObject();
  v13[2] = &v172;
  v13[3] = v1;
  v13[4] = &v171;
  v13[5] = &v170;
  v13[6] = &v169;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_248361F8C;
  *(v9 + 24) = v13;
  v167 = sub_248271D98;
  v168 = v9;
  aBlock = MEMORY[0x277D85DD0];
  v164 = 1107296256;
  v165 = sub_248271DC0;
  v166 = &block_descriptor_31;
  v14 = _Block_copy(&aBlock);
  v1 = v1;

  dispatch_sync(v12, v14);

  _Block_release(v14);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    goto LABEL_160;
  }

  v16 = MEMORY[0x277D85000];
  v17 = (*((*MEMORY[0x277D85000] & *v1) + 0x220))(v15);
  if (!v17)
  {
LABEL_32:
    v161 = 0u;
    v162 = 0u;
    goto LABEL_33;
  }

  v18 = v17;
  v159 = 0x6564724F6E6F6369;
  v160 = 0xE900000000000072;
  sub_2483843E0();
  if (!*(v18 + 16) || (v19 = sub_2482652B8(&aBlock), (v20 & 1) == 0))
  {

    sub_2482655AC(&aBlock);
    goto LABEL_32;
  }

  sub_24814A550(*(v18 + 56) + 32 * v19, &v161);
  sub_2482655AC(&aBlock);

  if (!*(&v162 + 1))
  {
LABEL_33:
    sub_24822D578(&v161, &unk_27EE941B0, &unk_24839C9C0);
    goto LABEL_34;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE94390, &unk_2483A2450);
  if (swift_dynamicCast())
  {
    if (!*(aBlock + 16))
    {
LABEL_39:

      goto LABEL_34;
    }

    v155 = *(aBlock + 32);

    type metadata accessor for DBIconLayoutVehicleDataProvider();
    v21 = static DBIconLayoutVehicleDataProvider.defaultIconState.getter();
    v159 = 0x7473694C6E6F6369;
    v160 = 0xE900000000000073;
    sub_2483843E0();
    if (*(v21 + 16))
    {
      v22 = sub_2482652B8(&aBlock);
      if (v23)
      {
        sub_24814A550(*(v21 + 56) + 32 * v22, &v161);
        sub_2482655AC(&aBlock);

        if (swift_dynamicCast())
        {
          if (*(v159 + 16))
          {
            v24 = *(v159 + 32);

            v26 = *((*v16 & *v1) + 0x210);
            v140 = (*v16 & *v1) + 528;
            v139 = v26;
            v27 = v26(v25);
            v136 = i;
            if ((v27 & 1) == 0)
            {
              v28 = *(v24 + 16);
              if (!v28)
              {
                v31 = MEMORY[0x277D84F90];
                goto LABEL_42;
              }

              v29 = 0;
              v157 = *MEMORY[0x277CF8FD8];
              v30 = v24 + 40;
              v151 = (v28 - 1);
              v31 = MEMORY[0x277D84F90];
              v154 = v24;
              v156 = v28;
              v152 = v24 + 40;
              while (1)
              {
                v153 = v31;
                isEscapingClosureAtFileLocation = v30 + 16 * v29;
                v9 = v29;
                while (1)
                {
                  if (v9 >= *(v24 + 16))
                  {
                    goto LABEL_162;
                  }

                  i = *(isEscapingClosureAtFileLocation - 8);
                  v32 = *isEscapingClosureAtFileLocation;
                  if (i == sub_248383960() && v32 == v33)
                  {
                    goto LABEL_17;
                  }

                  v35 = sub_248384680();

                  if ((v35 & 1) == 0)
                  {
                    break;
                  }

                  v24 = v154;
                  v28 = v156;
LABEL_17:
                  ++v9;

                  isEscapingClosureAtFileLocation += 16;
                  if (v28 == v9)
                  {
                    v31 = v153;
                    goto LABEL_42;
                  }
                }

                v31 = v153;
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                aBlock = v31;
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  sub_24822C8F0(0, *(v31 + 16) + 1, 1);
                  v31 = aBlock;
                }

                v38 = *(v31 + 16);
                v37 = *(v31 + 24);
                if (v38 >= v37 >> 1)
                {
                  sub_24822C8F0((v37 > 1), v38 + 1, 1);
                  v31 = aBlock;
                }

                v29 = v9 + 1;
                *(v31 + 16) = v38 + 1;
                v39 = v31 + 16 * v38;
                *(v39 + 32) = i;
                *(v39 + 40) = v32;
                v24 = v154;
                v28 = v156;
                v30 = v152;
                if (v151 == v9)
                {
LABEL_42:

                  v24 = v31;
                  break;
                }
              }
            }

            v159 = v24;
            v43 = sub_248383960();
            v45 = v44;
            v154 = v24;
            v46 = *(v24 + 16);
            if (v46)
            {
              v47 = v43;
              v48 = 0;
              v49 = (v154 + 40);
              do
              {
                v50 = *(v49 - 1) == v47 && *v49 == v45;
                if (v50 || (sub_248384680() & 1) != 0)
                {

                  sub_24835E76C(v48);

                  isEscapingClosureAtFileLocation = sub_248383960();
                  v9 = v52;
                  i = v159;
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    goto LABEL_168;
                  }

                  goto LABEL_53;
                }

                ++v48;
                v49 += 2;
              }

              while (v46 != v48);
            }

            i = v154;

            v51 = v155;
LABEL_56:
            v138 = v172;
            if ((v172 & 0xC000000000000001) != 0)
            {
              swift_bridgeObjectRetain_n();
              v56 = v1;

              sub_248384320();
              sub_24814FB28(0, &unk_27EE93D00, 0x277D66368);
              sub_24832DF38(&qword_27EE943A8, &unk_27EE93D00, 0x277D66368);
              sub_248383CB0();
              isEscapingClosureAtFileLocation = aBlock;
              v57 = v164;
              v58 = v165;
              v59 = v166;
              v9 = v167;
            }

            else
            {
              isEscapingClosureAtFileLocation = v172;
              v60 = -1 << *(v172 + 32);
              v57 = v172 + 56;
              v61 = ~v60;
              v62 = -v60;
              if (v62 < 64)
              {
                v63 = ~(-1 << v62);
              }

              else
              {
                v63 = -1;
              }

              v9 = v63 & *(v172 + 56);
              swift_bridgeObjectRetain_n();
              v64 = v1;

              v58 = v61;
              v59 = 0;
            }

            v65 = v51;
            v66 = MEMORY[0x277D85000];
            v147 = 0;
            v141 = 0;
            v143 = 0;
            v146 = 0;
            v145 = 0;
            v137 = v58;
            v67 = (v58 + 64) >> 6;
            v135 = *MEMORY[0x277CF8FD8];
            v132 = *MEMORY[0x277CF8FC8];
            v142 = (v65 + 40);
            v134 = (v154 + 40);
            v144 = i;
            v133 = (i + 40);
            v152 = isEscapingClosureAtFileLocation;
            v150 = v67;
            v149 = v57;
            while (1)
            {
              if (isEscapingClosureAtFileLocation < 0)
              {
                v71 = sub_248384390();
                if (!v71)
                {
                  goto LABEL_153;
                }

                v158 = v71;
                sub_24814FB28(0, &unk_27EE93D00, 0x277D66368);
                swift_dynamicCast();
                v70 = v161;
                i = v59;
                v153 = v9;
              }

              else
              {
                v68 = v59;
                v69 = v9;
                for (i = v59; !v69; ++v68)
                {
                  i = (v68 + 1);
                  if (__OFADD__(v68, 1))
                  {
                    goto LABEL_161;
                  }

                  if (i >= v67)
                  {
                    goto LABEL_153;
                  }

                  v69 = *(v57 + 8 * i);
                }

                v153 = (v69 - 1) & v69;
                v70 = *(*(isEscapingClosureAtFileLocation + 48) + ((i << 9) | (8 * __clz(__rbit64(v69)))));
              }

              if (!v70)
              {
                goto LABEL_153;
              }

              type metadata accessor for DBLeafIcon();
              v72 = swift_dynamicCastClass();
              v73 = v70;
              if (v72)
              {
                v74 = *((*v66 & *v72) + 0x58);
                v75 = v70;
                v76 = v74();
                v77 = [v76 bundleIdentifier];

                v78 = v75;
                v79 = v77;
                goto LABEL_77;
              }

              objc_opt_self();
              v90 = swift_dynamicCastObjCClass();
              if (!v90)
              {
                break;
              }

              v91 = v90;
              v79 = v73;
              v92 = [v91 applicationBundleID];
              if (v92)
              {
                v78 = v92;
LABEL_77:
                v156 = sub_248383960();
                v81 = v80;

                if (![v1 isIconVisible_])
                {

                  v59 = i;
                  v9 = v153;
                  v66 = MEMORY[0x277D85000];
LABEL_64:
                  v57 = v149;
                  goto LABEL_65;
                }

                v148 = v73;
                v82 = v156;
                v83 = *(v155 + 16);
                v84 = v154;
                v66 = MEMORY[0x277D85000];
                v85 = v81;
                if (!v83)
                {
LABEL_86:

                  v59 = i;
                  v9 = v153;
                  goto LABEL_64;
                }

                v86 = 0;
                v87 = v142;
                v157 = v85;
                while (*(v87 - 1) != v82 || *v87 != v85)
                {
                  v89 = sub_248384680();
                  v82 = v156;
                  v85 = v157;
                  if (v89)
                  {
                    break;
                  }

                  ++v86;
                  v87 += 2;
                  if (v83 == v86)
                  {
                    goto LABEL_86;
                  }
                }

                v93 = *(v84 + 16);
                v9 = v93 == 0;
                v94 = 0;
                if (v93)
                {
                  v95 = v134;
                  while (*(v95 - 1) != v82 || *v95 != v85)
                  {
                    if (sub_248384680())
                    {
                      v82 = v156;
                      v85 = v157;
                      break;
                    }

                    ++v94;
                    v95 += 2;
                    v9 = v93 == v94;
                    v82 = v156;
                    v85 = v157;
                    if (v93 == v94)
                    {
                      v94 = 0;
                      break;
                    }
                  }
                }

                v97 = *(v144 + 16);
                isEscapingClosureAtFileLocation = v97 == 0;
                v151 = v97;
                if (v97)
                {
                  v131 = v9;
                  v98 = 0;
                  v99 = v133;
                  while (1)
                  {
                    v100 = *(v99 - 1) == v82 && *v99 == v85;
                    if (v100 || (sub_248384680() & 1) != 0)
                    {
                      break;
                    }

                    ++v98;
                    v99 += 16;
                    isEscapingClosureAtFileLocation = v151 == v98;
                    v82 = v156;
                    v85 = v157;
                    if (v151 == v98)
                    {
                      v98 = 0;
                      break;
                    }
                  }

                  v9 = v131;
                }

                else
                {
                  v98 = 0;
                }

                if (v147)
                {
                  v101 = 1;
                }

                else
                {
                  v102 = v171 * v170;
                  if ((v171 * v170) >> 64 != (v171 * v170) >> 63)
                  {
                    goto LABEL_167;
                  }

                  v147 = v86 < v102;
                  if (((v9 | isEscapingClosureAtFileLocation) & 1) != 0 || v86 >= v102)
                  {
                    goto LABEL_125;
                  }

                  v101 = v94 != v86 && v98 != v86;
                }

                v147 = v101;
LABEL_125:
                v104 = [objc_opt_self() sharedInstance];
                v105 = sub_248383930();
                v9 = [v104 applicationWithBundleIdentifier_];

                if (v9 && [v9 isFirstParty])
                {

LABEL_133:

LABEL_134:
                  v66 = MEMORY[0x277D85000];
LABEL_135:
                  v109 = __OFADD__(v146++, 1);
                  if (v109)
                  {
                    goto LABEL_165;
                  }

                  v9 = v170;
                  isEscapingClosureAtFileLocation = v171;

                  v110 = isEscapingClosureAtFileLocation * v9;
                  if ((isEscapingClosureAtFileLocation * v9) >> 64 != (isEscapingClosureAtFileLocation * v9) >> 63)
                  {
                    goto LABEL_166;
                  }

                  v59 = i;
                  v9 = v153;
                  v111 = v86 < v110;
                  v57 = v149;
                  isEscapingClosureAtFileLocation = v152;
                  v67 = v150;
                  if (v111)
                  {
                    v59 = i;
                    v9 = v153;
                    v109 = __OFADD__(v143++, 1);
                    if (v109)
                    {
                      __break(1u);
LABEL_169:
                      __break(1u);
LABEL_170:
                      __break(1u);
                      goto LABEL_171;
                    }
                  }
                }

                else
                {
                  v106 = sub_248383960();
                  isEscapingClosureAtFileLocation = v157;
                  if (v156 == v106 && v157 == v107)
                  {

                    goto LABEL_133;
                  }

                  v151 = v9;
                  v9 = v156;
                  v108 = sub_248384680();

                  if (v108)
                  {

                    goto LABEL_133;
                  }

                  if (v9 == sub_248383960() && isEscapingClosureAtFileLocation == v112)
                  {

                    goto LABEL_134;
                  }

                  v9 = sub_248384680();

                  v66 = MEMORY[0x277D85000];
                  if (v9)
                  {
                    goto LABEL_135;
                  }

                  v109 = __OFADD__(v145++, 1);
                  if (v109)
                  {
                    goto LABEL_169;
                  }

                  v114 = v170;
                  v113 = v171;

                  v115 = v113 * v114;
                  if ((v113 * v114) >> 64 != (v113 * v114) >> 63)
                  {
                    goto LABEL_170;
                  }

                  v59 = i;
                  v9 = v153;
                  v111 = v86 < v115;
                  v57 = v149;
                  isEscapingClosureAtFileLocation = v152;
                  v67 = v150;
                  if (v111)
                  {
                    v59 = i;
                    v9 = v153;
                    v109 = __OFADD__(v141++, 1);
                    if (v109)
                    {
                      __break(1u);
LABEL_153:
                      sub_248167908(v152);

                      swift_bridgeObjectRelease_n();
                      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE93580, &qword_2483A0E30);
                      v116 = swift_allocObject();
                      *(v116 + 16) = xmmword_2483A2440;
                      *&v161 = 0x73776F526E6F6349;
                      *(&v161 + 1) = 0xE800000000000000;
                      v9 = MEMORY[0x277D837E0];
                      sub_2483843E0();
                      v117 = v171;
                      i = MEMORY[0x277D83B88];
                      *(v116 + 96) = MEMORY[0x277D83B88];
                      *(v116 + 72) = v117;
                      *&v161 = 0x756C6F436E6F6349;
                      *(&v161 + 1) = 0xEB00000000736E6DLL;
                      sub_2483843E0();
                      v118 = v170;
                      *(v116 + 168) = i;
                      *(v116 + 144) = v118;
                      *&v161 = 0x6E756F436E6F6349;
                      *(&v161 + 1) = 0xE900000000000074;
                      sub_2483843E0();
                      v119 = v146;
                      isEscapingClosureAtFileLocation = v146 + v145;
                      if (__OFADD__(v146, v145))
                      {
                        goto LABEL_163;
                      }

                      *(v116 + 240) = i;
                      *(v116 + 216) = isEscapingClosureAtFileLocation;
                      strcpy(&v161, "IconPageCount");
                      HIWORD(v161) = -4864;
                      sub_2483843E0();
                      v120 = v171 * v170;
                      if ((v171 * v170) >> 64 == (v171 * v170) >> 63)
                      {
                        *(v116 + 312) = MEMORY[0x277D839F8];
                        *(v116 + 288) = ceil(isEscapingClosureAtFileLocation / v120);
                        *&v161 = 0xD000000000000013;
                        *(&v161 + 1) = 0x80000002483B3F50;
                        v121 = MEMORY[0x277D837D0];
                        sub_2483843E0();
                        *(v116 + 384) = i;
                        *(v116 + 360) = v145;
                        *&v161 = 0xD000000000000013;
                        *(&v161 + 1) = 0x80000002483B3F70;
                        sub_2483843E0();
                        *(v116 + 456) = i;
                        *(v116 + 432) = v119;
                        *&v161 = 0xD00000000000001CLL;
                        *(&v161 + 1) = 0x80000002483B3F90;
                        sub_2483843E0();
                        *(v116 + 528) = i;
                        *(v116 + 504) = v143;
                        *&v161 = 0xD00000000000001CLL;
                        *(&v161 + 1) = 0x80000002483B3FB0;
                        sub_2483843E0();
                        *(v116 + 600) = i;
                        *(v116 + 576) = v141;
                        *&v161 = 0xD000000000000017;
                        *(&v161 + 1) = 0x80000002483B3FD0;
                        sub_2483843E0();
                        v122 = MEMORY[0x277D839B0];
                        *(v116 + 672) = MEMORY[0x277D839B0];
                        *(v116 + 648) = v147;
                        strcpy(&v161, "ShowsOEMIcon");
                        BYTE13(v161) = 0;
                        HIWORD(v161) = -5120;
                        v123 = sub_2483843E0();
                        v124 = v139(v123);
                        *(v116 + 744) = v122;
                        *(v116 + 720) = v124 & 1;
                        *&v161 = 0x70416E6564646948;
                        *(&v161 + 1) = 0xEF746E756F437370;
                        sub_2483843E0();
                        v125 = *(v169 + 16);
                        *(v116 + 816) = i;
                        *(v116 + 792) = v125;
                        *&v161 = 0x70416E6564646948;
                        *(&v161 + 1) = 0xEA00000000007370;
                        sub_2483843E0();
                        if (*(v169 + 16))
                        {
                          *&v161 = v169;

                          sub_248381090();
                          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE93AB0, &unk_2483A0E40);
                          sub_248362178(&qword_27EE8F868, MEMORY[0x277D83970]);
                          sub_248362130(&qword_27EE943B0, MEMORY[0x277CC9BD0], MEMORY[0x277CC9BC8]);
                          v126 = sub_248383AA0();
                          (*(v136 + 8))(v5, v2);

                          *&v161 = v126;
                          sub_248362178(&qword_27EE91C90, MEMORY[0x277D83958]);
                          v127 = sub_2483838F0();
                          v129 = v128;
                        }

                        else
                        {
                          v129 = 0xE400000000000000;
                          v127 = 1701736270;
                        }

                        *(v116 + 888) = v121;
                        *(v116 + 864) = v127;
                        *(v116 + 872) = v129;
                        v40 = sub_2482653C4(v116);
                        swift_setDeallocating();
                        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE935A0, &unk_24839D9A0);
                        swift_arrayDestroy();
                        swift_deallocClassInstance();

                        goto LABEL_35;
                      }

LABEL_164:
                      __break(1u);
LABEL_165:
                      __break(1u);
LABEL_166:
                      __break(1u);
LABEL_167:
                      __break(1u);
LABEL_168:
                      i = sub_24822B3C4(0, *(i + 16) + 1, 1, i);
LABEL_53:
                      v51 = v155;
                      v54 = *(i + 16);
                      v53 = *(i + 24);
                      if (v54 >= v53 >> 1)
                      {
                        i = sub_24822B3C4((v53 > 1), v54 + 1, 1, i);
                      }

                      *(i + 16) = v54 + 1;
                      v55 = (i + 16 * v54);
                      *(v55 + 4) = isEscapingClosureAtFileLocation;
                      *(v55 + 5) = v9;
                      v159 = i;
                      goto LABEL_56;
                    }
                  }
                }
              }

              else
              {

                v59 = i;
                v9 = v153;
                v66 = MEMORY[0x277D85000];
LABEL_65:
                isEscapingClosureAtFileLocation = v152;
                v67 = v150;
              }
            }

            v59 = i;
            v9 = v153;
            goto LABEL_65;
          }
        }

        goto LABEL_39;
      }
    }

    sub_2482655AC(&aBlock);
  }

LABEL_34:
  v40 = 0;
LABEL_35:

  v42 = v40;
LABEL_171:
  result.value._rawValue = v42;
  result.is_nil = v41;
  return result;
}

void sub_24835E25C(uint64_t a1)
{
  v1 = a1;
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) == 0)
  {
    if (*(a1 + 16))
    {
      goto LABEL_3;
    }

LABEL_5:
    v3 = MEMORY[0x277D84FA0];
    goto LABEL_6;
  }

  if (!sub_248384360())
  {
    goto LABEL_5;
  }

LABEL_3:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE943F8, qword_2483A26C8);
  v3 = sub_248384420();
LABEL_6:
  if (sub_24814FB28(0, &unk_27EE93D00, 0x277D66368) == MEMORY[0x277D837D0])
  {
    if (v2)
    {

      sub_248384320();
      sub_24814FB28(0, &unk_27EE92AC0, 0x277D663F8);
      sub_24832DF38(&qword_27EE943F0, &unk_27EE92AC0, 0x277D663F8);
      sub_248383CB0();
      v1 = v39;
      v8 = v40;
      v9 = v41;
      v10 = v42;
      v11 = v43;
    }

    else
    {
      v30 = -1 << *(v1 + 32);
      v8 = v1 + 56;
      v9 = ~v30;
      v31 = -v30;
      if (v31 < 64)
      {
        v32 = ~(-1 << v31);
      }

      else
      {
        v32 = -1;
      }

      v11 = v32 & *(v1 + 56);

      v10 = 0;
    }

    while ((v1 & 0x8000000000000000) == 0)
    {
      if (v11)
      {
        v33 = v10;
        goto LABEL_44;
      }

      v36 = v10;
      do
      {
        v33 = v36 + 1;
        if (__OFADD__(v36, 1))
        {
          goto LABEL_60;
        }

        if (v33 >= ((v9 + 64) >> 6))
        {
          v37 = v1;
          goto LABEL_56;
        }

        v11 = *(v8 + 8 * v33);
        ++v36;
      }

      while (!v11);
      v10 = v33;
LABEL_44:
      v34 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v35 = *(*(v1 + 48) + ((v33 << 9) | (8 * v34)));
LABEL_45:
      sub_2483617B8(v35);
    }

    if (sub_248384390())
    {
      sub_24814FB28(0, &unk_27EE92AC0, 0x277D663F8);
      swift_dynamicCast();
      v35 = v38;
      goto LABEL_45;
    }

    v37 = v1;
LABEL_56:
    sub_248167908(v37);
LABEL_57:

    return;
  }

  if (v2)
  {

    sub_248384320();
    sub_24814FB28(0, &unk_27EE92AC0, 0x277D663F8);
    sub_24832DF38(&qword_27EE943F0, &unk_27EE92AC0, 0x277D663F8);
    sub_248383CB0();
    v1 = v39;
    v4 = v40;
    v5 = v41;
    v6 = v42;
    v7 = v43;
  }

  else
  {
    v12 = -1 << *(v1 + 32);
    v4 = v1 + 56;
    v5 = ~v12;
    v13 = -v12;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v7 = v14 & *(v1 + 56);

    v6 = 0;
  }

  v15 = (v5 + 64) >> 6;
  v16 = v3 + 56;
  while (v1 < 0)
  {
    if (!sub_248384390())
    {
LABEL_38:
      sub_248167908(v1);
      goto LABEL_57;
    }

    sub_24814FB28(0, &unk_27EE92AC0, 0x277D663F8);
    swift_dynamicCast();
    v19 = v38;
LABEL_29:
    v22 = sub_248384020();
    v23 = -1 << *(v3 + 32);
    v24 = v22 & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v16 + 8 * (v24 >> 6))) != 0)
    {
      v17 = __clz(__rbit64((-1 << v24) & ~*(v16 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v26 = 0;
      v27 = (63 - v23) >> 6;
      do
      {
        if (++v25 == v27 && (v26 & 1) != 0)
        {
          __break(1u);
          goto LABEL_59;
        }

        v28 = v25 == v27;
        if (v25 == v27)
        {
          v25 = 0;
        }

        v26 |= v28;
        v29 = *(v16 + 8 * v25);
      }

      while (v29 == -1);
      v17 = __clz(__rbit64(~v29)) + (v25 << 6);
    }

    *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
    *(*(v3 + 48) + 8 * v17) = v19;
    ++*(v3 + 16);
  }

  if (v7)
  {
    v18 = v6;
LABEL_28:
    v21 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v38 = *(*(v1 + 48) + ((v18 << 9) | (8 * v21)));
    v19 = v38;
    goto LABEL_29;
  }

  v20 = v6;
  while (1)
  {
    v18 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v18 >= v15)
    {
      goto LABEL_38;
    }

    v7 = *(v4 + 8 * v18);
    ++v20;
    if (v7)
    {
      v6 = v18;
      goto LABEL_28;
    }
  }

LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
}

uint64_t sub_24835E76C(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_2483617A4(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

Swift::Void __swiftcall DBIconModel.resetCurrentIconState()()
{
  v1 = v0;
  v2 = [v0 iconModelMetadata];
  if (v2)
  {
    v3 = v2;
    v4 = sub_2483838A0();
  }

  else
  {
    v4 = 0;
  }

  *&v1[OBJC_IVAR____TtC9DashBoard11DBIconModel_metadata_hiddenBundleIdentifiers] = 0;

  [v1 deleteIconState];
  [v1 clearDesiredIconState];
  if (!v4)
  {
    v12 = 0u;
    v13 = 0u;
    sub_24822D578(&v12, &unk_27EE941B0, &unk_24839C9C0);
    goto LABEL_19;
  }

  sub_248383960();

  sub_2483843E0();
  if (!*(v4 + 16) || (v5 = sub_2482652B8(v11), (v6 & 1) == 0))
  {

    sub_2482655AC(v11);
    v12 = 0u;
    v13 = 0u;
    goto LABEL_11;
  }

  sub_24814A550(*(v4 + 56) + 32 * v5, &v12);
  sub_2482655AC(v11);

  if (!*(&v13 + 1))
  {
LABEL_11:
    sub_24822D578(&v12, &unk_27EE941B0, &unk_24839C9C0);
    goto LABEL_12;
  }

  if (swift_dynamicCast())
  {
    v1[OBJC_IVAR____TtC9DashBoard11DBIconModel_metadata_showsOEMIcon] = v11[0];
  }

LABEL_12:
  sub_248383960();
  sub_2483843E0();
  if (!*(v4 + 16) || (v7 = sub_2482652B8(v11), (v8 & 1) == 0))
  {

    sub_2482655AC(v11);
LABEL_19:
    v12 = 0u;
    v13 = 0u;
    goto LABEL_20;
  }

  sub_24814A550(*(v4 + 56) + 32 * v7, &v12);
  sub_2482655AC(v11);

  if (!*(&v13 + 1))
  {
LABEL_20:
    sub_24822D578(&v12, &unk_27EE941B0, &unk_24839C9C0);
    goto LABEL_21;
  }

  if (swift_dynamicCast())
  {
    v9 = v11[1];
    v10 = &v1[OBJC_IVAR____TtC9DashBoard11DBIconModel_metadata_OEMIconLabel];
    *v10 = v11[0];
    *(v10 + 1) = v9;
  }

LABEL_21:
  [v1 reloadIcons];
  [v1 layout];
}