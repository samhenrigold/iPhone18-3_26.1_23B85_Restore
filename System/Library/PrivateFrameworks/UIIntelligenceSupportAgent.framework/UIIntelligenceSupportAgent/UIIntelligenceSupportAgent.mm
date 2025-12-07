void sub_22BABC8A8(_xpc_connection_s *a1, char *a2)
{
  v104 = a2;
  v113 = *MEMORY[0x277D85DE8];
  v103 = type metadata accessor for IntelligenceSupportAgentXPCListener.ConnectedClient(0);
  MEMORY[0x28223BE20](v103);
  v98 = &v87 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22BB1F49C();
  MEMORY[0x28223BE20](v4 - 8);
  v102 = &v87 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22BB1F45C();
  v105 = *(v6 - 8);
  v106 = v6;
  MEMORY[0x28223BE20](v6);
  v107 = (&v87 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v99 = &v87 - v9;
  v97 = type metadata accessor for ConnectionID(0);
  v100 = *(v97 - 8);
  v10 = *(v100 + 64);
  MEMORY[0x28223BE20](v97);
  v101 = &v87 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v87 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v87 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v87 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v87 - v21;
  v23 = sub_22BB1EADC();
  v24 = *(v23 - 8);
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v87 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = a1;
  v29 = MEMORY[0x23189E090](a1, v25);
  if (v29 == sub_22BB1F46C())
  {
    v89 = v16;
    v90 = v19;
    v91 = v10;
    v92 = v13;
    v95 = v27;
    v93 = v24;
    v94 = v23;
    v107 = v28;
    v96 = v22;
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v40 = Strong;
      v111 = 0u;
      v112 = 0u;
      xpc_connection_get_audit_token();
      v41 = sub_22BABD8F4(v111, *(&v111 + 1), v112, *(&v112 + 1));
      v42 = *(v40 + 48);
      MEMORY[0x28223BE20](v41);
      v43 = *(*v42 + *MEMORY[0x277D841D0] + 16);
      v44 = (*(*v42 + 48) + 3) & 0x1FFFFFFFCLL;

      os_unfair_lock_lock((v42 + v44));
      v45 = v96;
      sub_22BABDA9C(v42 + v43, v96);
      v104 = 0;
      os_unfair_lock_unlock((v42 + v44));

      v46 = v99;
      sub_22BB1F42C();
      v47 = v90;
      sub_22BABDB9C(v45, v90, type metadata accessor for ConnectionID);
      v48 = sub_22BB1F44C();
      v49 = sub_22BB1F8CC();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        v88 = swift_slowAlloc();
        v110 = v88;
        *v50 = 136446210;
        v51 = v89;
        sub_22BABDB9C(v47, v89, type metadata accessor for ConnectionID);
        v109[0] = 0;
        v109[1] = 0xE000000000000000;
        sub_22BB1FB7C();

        strcpy(v109, "ConnectionID(");
        HIWORD(v109[1]) = -4864;
        v108 = *v51;
        v52 = sub_22BB1FD7C();
        MEMORY[0x23189D130](v52);

        MEMORY[0x23189D130](8236, 0xE200000000000000);
        sub_22BABDC04(&unk_2814250C0, MEMORY[0x277D74708], MEMORY[0x277D74740]);
        v53 = sub_22BB1FD7C();
        MEMORY[0x23189D130](v53);

        MEMORY[0x23189D130](41, 0xE100000000000000);
        v54 = v109[0];
        v55 = v109[1];
        sub_22BABDB3C(v51, type metadata accessor for ConnectionID);
        sub_22BABDB3C(v47, type metadata accessor for ConnectionID);
        v56 = sub_22BABDC4C(v54, v55, &v110);

        *(v50 + 4) = v56;
        _os_log_impl(&dword_22BABB000, v48, v49, "Accepting new connection %{public}s", v50, 0xCu);
        v57 = v88;
        __swift_destroy_boxed_opaque_existential_0(v88);
        MEMORY[0x23189DF20](v57, -1, -1);
        MEMORY[0x23189DF20](v50, -1, -1);
      }

      else
      {

        sub_22BABDB3C(v47, type metadata accessor for ConnectionID);
      }

      (*(v105 + 8))(v46, v106);
      v58 = v92;
      v59 = v91;
      v60 = v100;
      v105 = sub_22BB1F4CC();
      v61 = swift_allocObject();
      swift_weakInit();
      v62 = v96;
      sub_22BABDB9C(v96, v58, type metadata accessor for ConnectionID);
      v63 = *(v60 + 80);
      v64 = v40;
      v65 = swift_allocObject();
      *(v65 + 16) = v61;
      sub_22BABE0FC(v58, v65 + ((v63 + 24) & ~v63), type metadata accessor for ConnectionID);
      v66 = swift_allocObject();
      v106 = v64;
      swift_weakInit();
      v67 = v101;
      sub_22BABDB9C(v62, v101, type metadata accessor for ConnectionID);
      v68 = (v63 + 16) & ~v63;
      v69 = swift_allocObject();
      sub_22BABE0FC(v67, v69 + v68, type metadata accessor for ConnectionID);
      *(v69 + ((v59 + v68 + 7) & 0xFFFFFFFFFFFFFFF8)) = v66;
      swift_unknownObjectRetain();

      sub_22BB1F48C();
      v70 = v104;
      v71 = sub_22BB1F47C();
      if (v70)
      {

        v109[0] = 0;
        v109[1] = 0xE000000000000000;
        sub_22BB1FB7C();
        MEMORY[0x23189D130](0xD00000000000002BLL, 0x800000022BB26AE0);
        v83 = sub_22BACBC28();
        MEMORY[0x23189D130](v83);

        MEMORY[0x23189D130](8250, 0xE200000000000000);
        swift_getErrorValue();
        v84 = sub_22BB1FDCC();
        MEMORY[0x23189D130](v84);

        MEMORY[0x23189D130](0xD000000000000014, 0x800000022BB26B10);
        v110 = v70;
        v85 = v70;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DEE88, &qword_22BB20A20);
        v86 = sub_22BB1F6AC();
        MEMORY[0x23189D130](v86);

        sub_22BB1FBEC();
        __break(1u);
      }

      else
      {
        v72 = v71;

        v74 = *(v106 + 48);
        MEMORY[0x28223BE20](v73);
        v75 = v96;
        v76 = *(*v74 + *MEMORY[0x277D841D0] + 16);
        v77 = (*(*v74 + 48) + 3) & 0x1FFFFFFFCLL;

        os_unfair_lock_lock((v74 + v77));
        sub_22BABDE80((v74 + v76));
        os_unfair_lock_unlock((v74 + v77));

        v78 = swift_unknownObjectWeakLoadStrong();
        v79 = v103;
        if (v78)
        {
          v80 = v98;
          sub_22BABDB9C(v75, v98, type metadata accessor for ConnectionID);
          *(v80 + *(v79 + 20)) = v72;
          sub_22BABE558(v80);

          swift_unknownObjectRelease();
          sub_22BABDB3C(v80, type metadata accessor for IntelligenceSupportAgentXPCListener.ConnectedClient);
        }

        else
        {
        }

        v81 = v94;
        v82 = v93;
        sub_22BABDB3C(v75, type metadata accessor for ConnectionID);
        (*(v82 + 8))(v95, v81);
      }
    }

    else
    {
      xpc_connection_cancel(v107);
    }
  }

  else
  {
    sub_22BB1F42C();
    swift_unknownObjectRetain();
    v30 = sub_22BB1F44C();
    v31 = sub_22BB1F8BC();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *&v111 = v33;
      *v32 = 136315138;
      v34 = [(_xpc_connection_s *)v28 description];
      v35 = sub_22BB1F68C();
      v37 = v36;

      v38 = sub_22BABDC4C(v35, v37, &v111);

      *(v32 + 4) = v38;
      _os_log_impl(&dword_22BABB000, v30, v31, "xpc listener unexpected event type: %s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v33);
      MEMORY[0x23189DF20](v33, -1, -1);
      MEMORY[0x23189DF20](v32, -1, -1);
    }

    (*(v105 + 8))(v107, v106);
  }
}

uint64_t sub_22BABD5A0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22BABD5D8()
{
  v1 = (type metadata accessor for ConnectionID(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v0 + v1[7];
  v6 = sub_22BB1EADC();
  (*(*(v6 - 8) + 8))(v5 + v3, v6);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_22BABD6C0()
{
  v1 = type metadata accessor for ConnectionID(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = v0 + *(v1 + 20);
  v7 = sub_22BB1EADC();
  (*(*(v7 - 8) + 8))(v6 + v4, v7);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_22BABD7B8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_22BABD838@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  result = type metadata accessor for IntelligenceSupportAgentXPCListener.State(0);
  v7 = *(result + 20);
  v8 = *(a1 + v7);
  v9 = v8 + 1;
  if (__OFADD__(v8, 1))
  {
    __break(1u);
  }

  else
  {
    v10 = *(type metadata accessor for ConnectionID(0) + 20);
    v11 = sub_22BB1EADC();
    (*(*(v11 - 8) + 16))(&a3[v10], a2, v11);
    *a3 = v9;
    return sub_22BABDAD8(a3, a1 + v7);
  }

  return result;
}

uint64_t sub_22BABD8F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *atoken.val = a1;
  *&atoken.val[2] = a2;
  *&atoken.val[4] = a3;
  *&atoken.val[6] = a4;
  audit_token_to_pid(&atoken);
  *atoken.val = a1;
  *&atoken.val[2] = a2;
  *&atoken.val[4] = a3;
  *&atoken.val[6] = a4;
  audit_token_to_pidversion(&atoken);
  *atoken.val = a1;
  *&atoken.val[2] = a2;
  *&atoken.val[4] = a3;
  *&atoken.val[6] = a4;
  v8 = SecTaskCreateWithAuditToken(0, &atoken);
  if (v8)
  {
    v9 = v8;
    v10 = SecTaskCopySigningIdentifier(v8, 0);
    if (v10)
    {
      v11 = v10;
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        *atoken.val = 0;
        *&atoken.val[2] = 0;
        sub_22BB1F67C();
      }

      else
      {
      }
    }

    else
    {
    }
  }

  *atoken.val = a1;
  *&atoken.val[2] = a2;
  *&atoken.val[4] = a3;
  *&atoken.val[6] = a4;
  v14 = 0;
  return sub_22BB1EA6C();
}

uint64_t type metadata accessor for ConnectionID(uint64_t a1)
{
  result = qword_281424A08;
  if (!qword_281424A08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22BABDA64(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22BABDAD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConnectionID(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_22BABDB3C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22BABDB9C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22BABDC04(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_22BABDC4C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_22BABDD18(v11, 0, 0, 1, a1, a2);
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
    sub_22BABDE24(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_22BABDD18(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_22BABFDDC(a5, a6);
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
    result = sub_22BB1FBBC();
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

uint64_t sub_22BABDE24(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_22BABDE9C(uint64_t *a1, uint64_t *a2, uint64_t a3)
{

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *a1;
  result = sub_22BABDF10(a3, a2, isUniquelyReferenced_nonNull_native);
  *a1 = v8;
  return result;
}

uint64_t sub_22BABDF10(uint64_t a1, uint64_t *a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for ConnectionID(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  v13 = sub_22BABE164(a2);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      sub_22BAEB3D8();
      goto LABEL_7;
    }

    sub_22BAE856C(v16, a3 & 1);
    v21 = sub_22BABE164(a2);
    if ((v17 & 1) == (v22 & 1))
    {
      v13 = v21;
      v19 = *v4;
      if (v17)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_22BABE3D4(a2, v10, type metadata accessor for ConnectionID);
      return sub_22BABE4A4(v13, v10, a1, v19);
    }

LABEL_15:
    result = sub_22BB1FDBC();
    __break(1u);
    return result;
  }

LABEL_7:
  v19 = *v4;
  if ((v17 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v19[7] + 8 * v13) = a1;
}

uint64_t sub_22BABE0B4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22BABE0FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_22BABE164(uint64_t *a1)
{
  sub_22BB1FDDC();
  MEMORY[0x23189D810](*a1);
  type metadata accessor for ConnectionID(0);
  sub_22BB1EADC();
  sub_22BABE0B4(&qword_2814250E0, MEMORY[0x277D74708], MEMORY[0x277D74720]);
  sub_22BB1F62C();
  v2 = sub_22BB1FE0C();

  return sub_22BABE230(a1, v2);
}

unint64_t sub_22BABE230(uint64_t *a1, uint64_t a2)
{
  v5 = type metadata accessor for ConnectionID(0);
  MEMORY[0x28223BE20](v5);
  v8 = (&v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = *a1;
    v13 = *(v6 + 72);
    do
    {
      sub_22BABED78(*(v2 + 48) + v13 * v10, v8, type metadata accessor for ConnectionID);
      if (*v8 == v12)
      {
        v14 = sub_22BB1EAAC();
        sub_22BABEDE0(v8, type metadata accessor for ConnectionID);
        if (v14)
        {
          return v10;
        }
      }

      else
      {
        sub_22BABEDE0(v8, type metadata accessor for ConnectionID);
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

uint64_t sub_22BABE3D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22BABE43C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22BABE4A4(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for ConnectionID(0);
  result = sub_22BABE43C(a2, v8 + *(*(v9 - 8) + 72) * a1, type metadata accessor for ConnectionID);
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

uint64_t sub_22BABE558(uint64_t a1)
{
  v2 = v1;
  v4 = sub_22BB1F11C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ConnectionID(0);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BABE90C(a1, v11, type metadata accessor for ConnectionID);
  v12 = *(v9 + 28);
  LODWORD(v9) = sub_22BB1EABC();
  v13 = sub_22BB1EADC();
  (*(*(v13 - 8) + 8))(&v11[v12], v13);
  result = getpid();
  if (v9 != result)
  {
    v15 = *(v2 + 24);
    MEMORY[0x28223BE20](result);
    v26[-2] = a1;
    os_unfair_lock_lock((v15 + 40));
    sub_22BABE8A4((v15 + 16), &v30);
    os_unfair_lock_unlock((v15 + 40));
    v16 = *(v30 + 16);
    if (v16)
    {
      v18 = *(v5 + 16);
      v17 = v5 + 16;
      v19 = *(v17 + 64);
      v26[1] = v30;
      v20 = v30 + ((v19 + 32) & ~v19);
      v28 = *(v17 + 56);
      v29 = v18;
      v21 = (v17 - 8);
      v27 = xmmword_22BB20A70;
      do
      {
        v29(v7, v20, v4);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF100, &qword_22BB212C0);
        v22 = v17;
        v23 = *(type metadata accessor for IntelligenceSupportAgentXPCListener.ConnectedClient(0) - 8);
        v24 = (*(v23 + 80) + 32) & ~*(v23 + 80);
        v25 = swift_allocObject();
        *(v25 + 16) = v27;
        sub_22BABE90C(a1, v25 + v24, type metadata accessor for IntelligenceSupportAgentXPCListener.ConnectedClient);
        sub_22BACBF04(v25, v7);
        swift_setDeallocating();
        sub_22BAC1514(v25 + v24, type metadata accessor for IntelligenceSupportAgentXPCListener.ConnectedClient);
        v17 = v22;
        swift_deallocClassInstance();
        (*v21)(v7, v4);
        v20 += v28;
        --v16;
      }

      while (v16);
    }
  }

  return result;
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

uint64_t sub_22BABE90C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22BABE974@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v42 = a3;
  v47 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF108, &qword_22BB212C8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v35 - v5;
  v48 = sub_22BB1F11C();
  v7 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v41 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v40 = &v35 - v10;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DEFE0, &qword_22BB211E8);
  MEMORY[0x28223BE20](v46);
  v12 = &v35 - v11;
  v45 = a1[8];
  v13 = *a1;
  v14 = *a1 + 64;
  v15 = 1 << *(*a1 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(*a1 + 64);
  v18 = (v15 + 63) >> 6;
  v44 = (v7 + 48);
  v38 = v7;
  v39 = (v7 + 32);

  v20 = 0;
  v43 = MEMORY[0x277D84F90];
  while (1)
  {
    v21 = v20;
    if (!v17)
    {
      break;
    }

LABEL_8:
    v22 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
    v23 = v22 | (v20 << 6);
    v24 = *(v13 + 48);
    v25 = sub_22BB1F2EC();
    (*(*(v25 - 8) + 16))(v12, v24 + *(*(v25 - 8) + 72) * v23, v25);
    v26 = *(*(v13 + 56) + 8 * v23);
    *&v12[*(v46 + 48)] = v26;

    sub_22BAE4198(v12, v26, v47, v45, v6);
    sub_22BAC81E8(v12, &qword_27D8DEFE0, &qword_22BB211E8);
    if ((*v44)(v6, 1, v48) == 1)
    {
      result = sub_22BAC81E8(v6, &qword_27D8DF108, &qword_22BB212C8);
    }

    else
    {
      v37 = *v39;
      v27 = v48;
      v37(v40, v6, v48);
      v28 = v27;
      v29 = v37;
      v37(v41, v40, v28);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v43 = sub_22BAF60EC(0, *(v43 + 2) + 1, 1, v43);
      }

      v31 = *(v43 + 2);
      v30 = *(v43 + 3);
      v32 = v31 + 1;
      if (v31 >= v30 >> 1)
      {
        v36 = v31 + 1;
        v34 = sub_22BAF60EC((v30 > 1), v31 + 1, 1, v43);
        v32 = v36;
        v43 = v34;
      }

      v33 = v43;
      *(v43 + 2) = v32;
      result = v29(&v33[((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v31], v41, v48);
    }
  }

  while (1)
  {
    v20 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v20 >= v18)
    {

      *v42 = v43;
      return result;
    }

    v17 = *(v14 + 8 * v20);
    ++v21;
    if (v17)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22BABED78(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22BABEDE0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_22BABEE40(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = *(a1 + 32);

  v10 = a2;
  v8 = a3;
  v9 = a4;
  v7(v10, a3, a4);
}

void sub_22BABEEE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  _s17AsyncProviderTaskVMa(0);
  v7 = v3[2];
  v8 = v3[3];
  v9 = v3[4];
  v10 = v3[5];

  sub_22BABEFBC(a1, a2, a3, v7, v8, v9, v10);
}

uint64_t _s17AsyncProviderTaskVMa(uint64_t a1)
{
  result = qword_281424780;
  if (!qword_281424780)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22BABEFBC(uint64_t a1, uint64_t a2, uint64_t a3, os_unfair_lock_s *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  os_unfair_lock_lock(a4 + 6);
  sub_22BABF8B4(&a4[4], v95);
  os_unfair_lock_unlock(a4 + 6);
  if (!v95[0])
  {
    return;
  }

  v88 = v95[0];
  v8 = [v95[0] elements];
  sub_22BAC83C0(0, &qword_2814240A8, 0x277D0AD00);
  sub_22BB1F7DC();

  v95[0] = sub_22BAC8408(v9);
  sub_22BAC8760(v95);

  v10 = v95[0];
  LODWORD(v11) = v95[0] < 0 || (v95[0] & 0x4000000000000000) != 0;
  if (v11 == 1)
  {
LABEL_95:
    v12 = sub_22BB1FADC();
  }

  else
  {
    v12 = *(v95[0] + 2);
  }

  v13 = MEMORY[0x277D84F90];
  v92 = v10;
  if (!v12)
  {
    v58 = MEMORY[0x277D84F90];
    if (!v11)
    {
      goto LABEL_53;
    }

LABEL_51:
    v11 = sub_22BB1FADC();
LABEL_54:
    v60 = 0;
    if (v11)
    {
      v61 = 0;
      v62 = v10 & 0xC000000000000001;
      while (2)
      {
        v63 = v61;
        while (1)
        {
          if (v62)
          {
            v64 = MEMORY[0x23189D5B0](v63, v10);
          }

          else
          {
            if (v63 >= *(v10 + 16))
            {
              goto LABEL_94;
            }

            v64 = *(v10 + 8 * v63 + 32);
          }

          v65 = v64;
          v61 = v63 + 1;
          if (__OFADD__(v63, 1))
          {
            __break(1u);
LABEL_94:
            __break(1u);
            goto LABEL_95;
          }

          v66 = [v64 layoutRole];
          if (v66 == 4)
          {
            break;
          }

          if (v66 == 3)
          {
            v67 = v58;
            v68 = [v65 identifier];
            v69 = sub_22BB1F68C();
            v71 = v70;

            if (sub_22BB1F68C() == v69 && v72 == v71)
            {
            }

            else
            {
              v80 = sub_22BB1FD9C();

              if ((v80 & 1) == 0)
              {
                v60 = 3;
                goto LABEL_84;
              }
            }

            goto LABEL_82;
          }

          ++v63;
          if (v61 == v11)
          {
            goto LABEL_89;
          }
        }

        v67 = v58;
        v73 = [v65 identifier];
        v74 = sub_22BB1F68C();
        v76 = v75;

        if (sub_22BB1F68C() == v74 && v77 == v76)
        {

          goto LABEL_82;
        }

        v79 = sub_22BB1FD9C();

        if (v79)
        {
          goto LABEL_81;
        }

        if (sub_22BB1F68C() == v74 && v81 == v76)
        {

LABEL_81:

          v10 = v92;
          goto LABEL_82;
        }

        v82 = sub_22BB1FD9C();

        v10 = v92;
        if (v82)
        {
LABEL_82:
          if ((v60 & 0xFE) == 0)
          {
            v60 = 1;
          }

          goto LABEL_84;
        }

        if (v60 <= 2u)
        {
          v60 = 2;
        }

LABEL_84:
        v58 = v67;
        if (v61 != v11)
        {
          continue;
        }

        break;
      }
    }

LABEL_89:

    v84 = *(a7 + 24);
    MEMORY[0x28223BE20](v83);
    os_unfair_lock_lock(v84 + 20);
    sub_22BAC2634(&v84[4]);
    os_unfair_lock_unlock(v84 + 20);

    if (qword_281424D70 != -1)
    {
      v85 = swift_once();
    }

    v86 = *(qword_281425148 + 24);
    MEMORY[0x28223BE20](v85);
    os_unfair_lock_lock((v86 + 40));
    sub_22BACB55C((v86 + 16));
    os_unfair_lock_unlock((v86 + 40));

    return;
  }

  v95[0] = MEMORY[0x277D84F90];
  v14 = v12 & ~(v12 >> 63);
  sub_22BAC8968(0, v14, 0);
  if ((v12 & 0x8000000000000000) == 0)
  {
    v87 = v11;
    v15 = 0;
    v16 = v95[0];
    v93 = v10 & 0xC000000000000001;
    v94 = v12;
    do
    {
      if (v93)
      {
        v17 = MEMORY[0x23189D5B0](v15, v10);
      }

      else
      {
        v17 = *(v10 + 8 * v15 + 32);
      }

      v18 = v17;
      v19 = [v17 identifier];
      v20 = sub_22BB1F68C();
      v22 = v21;

      v95[0] = v16;
      v24 = v16[2];
      v23 = v16[3];
      if (v24 >= v23 >> 1)
      {
        sub_22BAC8968((v23 > 1), v24 + 1, 1);
        v16 = v95[0];
      }

      ++v15;
      v16[2] = v24 + 1;
      v25 = &v16[2 * v24];
      v25[4] = v20;
      v25[5] = v22;
    }

    while (v94 != v15);
    v95[0] = v13;
    sub_22BAC2614(0, v14, 0);
    v26 = 0;
    v27 = v95[0];
    v91 = v16;
    while (1)
    {
      if (v93)
      {
        v28 = MEMORY[0x23189D5B0](v26, v10);
      }

      else
      {
        v28 = *(v10 + 8 * v26 + 32);
      }

      v29 = v28;
      v30 = [v28 identifier];
      v31 = sub_22BB1F68C();
      v33 = v32;

      v34 = [v29 bundleIdentifier];
      if (v34)
      {
        v35 = v34;
        v36 = sub_22BB1F68C();
        v38 = v37;
      }

      else
      {
        v36 = 0;
        v38 = 0;
      }

      v39 = [v29 layoutRole];
      if (v39 != 4)
      {
        if (v39 == 3)
        {
          v40 = v27;
          v41 = [v29 identifier];
          v42 = sub_22BB1F68C();
          v44 = v43;

          if (sub_22BB1F68C() == v42 && v45 == v44)
          {

            v46 = 1;
            v27 = v40;
          }

          else
          {
            v52 = sub_22BB1FD9C();

            if (v52)
            {
              v46 = 1;
            }

            else
            {
              v46 = 3;
            }

            v27 = v40;
          }
        }

        else
        {

          v46 = 0;
        }

        goto LABEL_43;
      }

      v90 = v27;
      v47 = [v29 identifier];
      v48 = sub_22BB1F68C();
      v50 = v49;

      if (sub_22BB1F68C() == v48 && v51 == v50)
      {
      }

      else
      {
        v53 = sub_22BB1FD9C();

        if ((v53 & 1) == 0)
        {
          if (sub_22BB1F68C() != v48 || v54 != v50)
          {
            v59 = sub_22BB1FD9C();

            if (v59)
            {
              v46 = 1;
            }

            else
            {
              v46 = 2;
            }

            goto LABEL_42;
          }
        }
      }

      v46 = 1;
LABEL_42:
      v27 = v90;
LABEL_43:
      v95[0] = v27;
      v56 = v27[2];
      v55 = v27[3];
      if (v56 >= v55 >> 1)
      {
        sub_22BAC2614((v55 > 1), v56 + 1, 1);
        v27 = v95[0];
      }

      ++v26;
      v27[2] = v56 + 1;
      v57 = &v27[5 * v56];
      v57[4] = v31;
      v57[5] = v33;
      v57[6] = v36;
      v57[7] = v38;
      *(v57 + 64) = v46;
      v58 = v91;
      v10 = v92;
      if (v94 == v26)
      {
        if (v87)
        {
          goto LABEL_51;
        }

LABEL_53:
        v11 = *(v10 + 16);
        goto LABEL_54;
      }
    }
  }

  __break(1u);

  __break(1u);
}

void sub_22BABF8D4(void **a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v30 = a5;
  v10 = sub_22BB1F45C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 && (v14 = *a1) != 0)
  {
    v15 = a2;
    [v14 invalidate];

    *a1 = 0;
  }

  else
  {
    v29 = v5;
    sub_22BB1F43C();
    v16 = a2;
    sub_22BABFC10(a3, a4);
    v17 = sub_22BB1F44C();
    v18 = sub_22BB1F8BC();

    sub_22BABFC24(a3, a4);
    if (os_log_type_enabled(v17, v18))
    {
      v28 = v18;
      v19 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v33 = v27;
      *v19 = 136446466;
      if (a2)
      {
        v20 = 0xD000000000000011;
      }

      else
      {
        v20 = 0x20676E697373696DLL;
      }

      if (a2)
      {
        v21 = 0x800000022BB27250;
      }

      else
      {
        v21 = 0xEE0074756F79616CLL;
      }

      v22 = sub_22BABDC4C(v20, v21, &v33);

      *(v19 + 4) = v22;
      *(v19 + 12) = 2082;
      if (a4 == 1)
      {
        v23 = 0xE400000000000000;
        v24 = 1852399981;
      }

      else
      {
        v31 = 0;
        v32 = 0xE000000000000000;

        sub_22BB1FB7C();

        v31 = 0xD000000000000015;
        v32 = 0x800000022BB27230;
        if (!a4)
        {
          sub_22BABFC24(a3, 0);
          a4 = 0xE300000000000000;
          a3 = 7104878;
        }

        MEMORY[0x23189D130](a3, a4);

        MEMORY[0x23189D130](41, 0xE100000000000000);
        v24 = v31;
        v23 = v32;
      }

      v25 = sub_22BABDC4C(v24, v23, &v33);

      *(v19 + 14) = v25;
      _os_log_impl(&dword_22BABB000, v17, v28, "ignoring FBSDisplayLayoutMonitor layout update due to %{public}s for window list fetch for display: %{public}s", v19, 0x16u);
      v26 = v27;
      swift_arrayDestroy();
      MEMORY[0x23189DF20](v26, -1, -1);
      MEMORY[0x23189DF20](v19, -1, -1);
    }

    (*(v11 + 8))(v13, v10);
    a2 = 0;
  }

  *v30 = a2;
}

uint64_t sub_22BABFC10(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_22BABFC24(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

void *sub_22BABFC38(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DEFD0, &qword_22BB211D8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

void *sub_22BABFCAC(uint64_t a1, unint64_t a2)
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

  v6 = sub_22BABFC38(v5, 0);
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

  result = sub_22BB1FBBC();
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
        v10 = sub_22BB1F71C();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_22BABFC38(v10, 0);
        result = sub_22BB1FB6C();
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

void *sub_22BABFDDC(uint64_t a1, unint64_t a2)
{
  v3 = sub_22BABFCAC(a1, a2);
  sub_22BAC1428(&unk_283F6B1A8);
  return v3;
}

double sub_22BABFE2C@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v90 = a1;
  v97 = a2;
  v81 = sub_22BB1F3BC();
  v80 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v79 = &v77 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_22BB1F35C();
  v87 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v89 = &v77 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_22BB1F3AC();
  v88 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v93 = &v77 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_22BB1EADC();
  v84 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v82 = &v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22BB1E64C();
  v91 = *(v6 - 8);
  v92 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22BB1F45C();
  v95 = *(v9 - 8);
  v96 = v9;
  MEMORY[0x28223BE20](v9);
  v94 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v77 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v77 - v15;
  v17 = sub_22BB1E65C();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v77 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v77 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = &v77 - v25;
  sub_22BABDC04(&unk_281425118, MEMORY[0x277D744C8], MEMORY[0x277D744D0]);
  sub_22BB1F4EC();
  v94 = v8;
  (*(v18 + 32))(v26, v23, v17);
  v27 = *(v18 + 16);
  v78 = v26;
  v27(v20, v26, v17);
  v28 = (*(v18 + 88))(v20, v17);
  v29 = v18;
  v30 = v17;
  if (v28 == *MEMORY[0x277D744C0])
  {
    v31 = *(v18 + 96);
    v96 = v17;
    v31(v20, v17);
    (*(v91 + 32))(v94, v20, v92);
    v32 = sub_22BB1F4DC();
    v34 = v33;
    v36 = v35;
    v38 = v37;
    v39 = sub_22BB1E63C();
    v40 = sub_22BB1E62C();
    v41 = v32;
    v42 = v82;
    v43 = sub_22BABD8F4(v41, v34, v36, v38);
    MEMORY[0x28223BE20](v43);
    *(&v77 - 2) = v42;
    v44 = sub_22BADE400(sub_22BADEB00, (&v77 - 4), v39);

    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_22BAE4E6C(v90, v44, v40);

      swift_unknownObjectRelease();
    }

    else
    {
    }

    v52 = v83;
    v54 = v86;
    v53 = v87;
    v56 = v88;
    v55 = v89;
    v57 = v85;
    v58 = v84;

    (*(v58 + 8))(v42, v57);
    sub_22BB1F37C();
    sub_22BB1E61C();
    v59 = sub_22BB1F39C();
    sub_22BB1F3EC();
    v60 = sub_22BB1F9AC();
    v61 = v18;
    if (sub_22BB1FA0C())
    {

      v62 = v79;
      sub_22BB1F3FC();

      v63 = v80;
      v64 = v81;
      if ((*(v80 + 88))(v62, v81) == *MEMORY[0x277D85B00])
      {
        v65 = "[Error] Interval already ended";
      }

      else
      {
        (*(v63 + 8))(v62, v64);
        v65 = "";
      }

      v72 = swift_slowAlloc();
      *v72 = 0;
      v73 = v89;
      v74 = sub_22BB1F34C();
      v75 = v65;
      v55 = v73;
      _os_signpost_emit_with_name_impl(&dword_22BABB000, v59, v60, v74, "TransferFragments", v75, v72, 2u);
      MEMORY[0x23189DF20](v72, -1, -1);
      v61 = v18;
      v56 = v88;
    }

    (*(v53 + 8))(v55, v52);
    (*(v56 + 8))(v93, v54);
    (*(v91 + 8))(v94, v92);
    (*(v61 + 8))(v78, v96);
    goto LABEL_22;
  }

  if (v28 == *MEMORY[0x277D744B0])
  {
    sub_22BAC0B20(v90);
    (*(v18 + 8))(v78, v17);
LABEL_22:
    v76 = v97;
    *(v97 + 32) = 0;
    result = 0.0;
    *v76 = 0u;
    v76[1] = 0u;
    return result;
  }

  v45 = v78;
  if (v28 == *MEMORY[0x277D744B8])
  {
    sub_22BB1F42C();
    v46 = sub_22BB1F44C();
    v47 = sub_22BB1F8CC();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&dword_22BABB000, v46, v47, "Received launch sentinel", v48, 2u);
      v49 = v48;
      v30 = v17;
      MEMORY[0x23189DF20](v49, -1, -1);
    }

    (*(v95 + 8))(v16, v96);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v51 = *(Strong + 24);
      os_unfair_lock_lock((v51 + 40));
      sub_22BAE3B70((v51 + 16));
      os_unfair_lock_unlock((v51 + 40));
      (*(v29 + 8))(v45, v30);
      swift_unknownObjectRelease();
    }

    else
    {
      (*(v29 + 8))(v45, v30);
    }

    goto LABEL_22;
  }

  sub_22BB1F42C();
  v66 = sub_22BB1F44C();
  v67 = sub_22BB1F8BC();
  if (os_log_type_enabled(v66, v67))
  {
    v68 = swift_slowAlloc();
    *v68 = 0;
    _os_log_impl(&dword_22BABB000, v66, v67, "Unexpected message type", v68, 2u);
    MEMORY[0x23189DF20](v68, -1, -1);
  }

  (*(v95 + 8))(v13, v96);
  v69 = *(v29 + 8);
  v69(v45, v17);
  v70 = v97;
  *(v97 + 32) = 0;
  *v70 = 0u;
  v70[1] = 0u;
  v69(v20, v17);
  return result;
}

double sub_22BAC0A10@<D0>(uint64_t x8_0@<X8>)
{
  v4 = *(type metadata accessor for ConnectionID(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 24) & ~*(v4 + 80));

  return sub_22BAC0A94(v5, x8_0);
}

double sub_22BAC0A94@<D0>(uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_22BABFE2C(a2, a3);
  }

  else
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_22BAC0B20(uint64_t a1)
{
  v33 = type metadata accessor for ConnectionID(0);
  MEMORY[0x28223BE20](v33);
  v35 = &v32[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v34 = &v32[-v5];
  MEMORY[0x28223BE20](v6);
  v8 = &v32[-v7];
  v9 = sub_22BB1F45C();
  v37 = *(v9 - 8);
  v38 = v9;
  MEMORY[0x28223BE20](v9);
  v36 = &v32[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v13 = &v32[-v12];
  v14 = sub_22BB1E5FC();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v32[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = *(v1 + 48);
  v39 = a1;
  v19 = *(*v18 + *MEMORY[0x277D841D0] + 16);
  v20 = (*(*v18 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v18 + v20));
  sub_22BAC140C((v18 + v19), v41);
  os_unfair_lock_unlock((v18 + v20));
  if (v41[0])
  {
    *v17 = getpid();
    (*(v15 + 104))(v17, *MEMORY[0x277D74478], v14);
    sub_22BABDC04(&qword_281425128, MEMORY[0x277D74480], MEMORY[0x277D74488]);
    sub_22BB1F4AC();
    (*(v15 + 8))(v17, v14);
  }

  else
  {
    sub_22BB1F42C();
    sub_22BABDB9C(a1, v8, type metadata accessor for ConnectionID);
    v21 = sub_22BB1F44C();
    v22 = sub_22BB1F8BC();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v42 = v24;
      *v23 = 136446210;
      v25 = v34;
      sub_22BABDB9C(v8, v34, type metadata accessor for ConnectionID);
      v41[0] = 0;
      v41[1] = 0xE000000000000000;
      sub_22BB1FB7C();

      strcpy(v41, "ConnectionID(");
      HIWORD(v41[1]) = -4864;
      v40 = *v25;
      v26 = sub_22BB1FD7C();
      MEMORY[0x23189D130](v26);

      MEMORY[0x23189D130](8236, 0xE200000000000000);
      sub_22BB1EADC();
      sub_22BABDC04(&unk_2814250C0, MEMORY[0x277D74708], MEMORY[0x277D74740]);
      v27 = sub_22BB1FD7C();
      MEMORY[0x23189D130](v27);

      MEMORY[0x23189D130](41, 0xE100000000000000);
      v28 = v41[0];
      v29 = v41[1];
      sub_22BABDB3C(v25, type metadata accessor for ConnectionID);
      sub_22BABDB3C(v8, type metadata accessor for ConnectionID);
      v30 = sub_22BABDC4C(v28, v29, &v42);

      *(v23 + 4) = v30;
      _os_log_impl(&dword_22BABB000, v21, v22, "missing session to send connection established message to client %{public}s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v24);
      MEMORY[0x23189DF20](v24, -1, -1);
      MEMORY[0x23189DF20](v23, -1, -1);
    }

    else
    {

      sub_22BABDB3C(v8, type metadata accessor for ConnectionID);
    }

    return (*(v37 + 8))(v13, v38);
  }
}

uint64_t sub_22BAC13A4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  if (*(*a1 + 16))
  {
    sub_22BABE164(a2);
    if (v4)
    {
    }

    else
    {
      result = 0;
    }
  }

  else
  {
    result = 0;
  }

  *a3 = result;
  return result;
}

uint64_t sub_22BAC1428(uint64_t result)
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

  result = sub_22BAE8448(result, v11, 1, v3);
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

uint64_t sub_22BAC1514(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22BAC1574(uint64_t a1)
{
  v3 = *(type metadata accessor for ConnectionID(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_22BAC1610(a1, v1 + v4, v5);
}

uint64_t sub_22BAC1610(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for ConnectionID(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v27[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v10 = &v27[-v9];
  v11 = sub_22BB1F45C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v27[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_22BB1F42C();
  v32 = a2;
  sub_22BABDB9C(a2, v10, type metadata accessor for ConnectionID);
  v15 = sub_22BB1F44C();
  v16 = sub_22BB1F8CC();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v29 = v17;
    v30 = swift_slowAlloc();
    v34 = v30;
    *v17 = 136446210;
    v31 = a3;
    sub_22BABDB9C(v10, v7, type metadata accessor for ConnectionID);
    v35[0] = 0;
    v35[1] = 0xE000000000000000;
    v28 = v16;
    sub_22BB1FB7C();

    strcpy(v35, "ConnectionID(");
    HIWORD(v35[1]) = -4864;
    v33 = *v7;
    v18 = sub_22BB1FD7C();
    MEMORY[0x23189D130](v18);

    MEMORY[0x23189D130](8236, 0xE200000000000000);
    sub_22BB1EADC();
    sub_22BABDC04(&unk_2814250C0, MEMORY[0x277D74708], MEMORY[0x277D74740]);
    v19 = sub_22BB1FD7C();
    MEMORY[0x23189D130](v19);

    MEMORY[0x23189D130](41, 0xE100000000000000);
    v20 = v35[0];
    v21 = v35[1];
    sub_22BABDB3C(v7, type metadata accessor for ConnectionID);
    sub_22BABDB3C(v10, type metadata accessor for ConnectionID);
    v22 = sub_22BABDC4C(v20, v21, &v34);

    v23 = v29;
    *(v29 + 1) = v22;
    v24 = v23;
    _os_log_impl(&dword_22BABB000, v15, v28, "client %{public}s disconnected", v23, 0xCu);
    v25 = v30;
    __swift_destroy_boxed_opaque_existential_0(v30);
    MEMORY[0x23189DF20](v25, -1, -1);
    MEMORY[0x23189DF20](v24, -1, -1);
  }

  else
  {

    sub_22BABDB3C(v10, type metadata accessor for ConnectionID);
  }

  (*(v12 + 8))(v14, v11);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_22BAC19F0();
  }

  return result;
}

uint64_t sub_22BAC19F0()
{
  v1 = *(v0 + 48);
  v2 = *(*v1 + *MEMORY[0x277D841D0] + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v3));
  sub_22BAC1BC0((v1 + v2));
  os_unfair_lock_unlock((v1 + v3));
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(result + 24);
    MEMORY[0x28223BE20](result);
    os_unfair_lock_lock((v5 + 40));
    sub_22BAC1F1C((v5 + 16));
    os_unfair_lock_unlock((v5 + 40));
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_22BAC1AF8(uint64_t *a1, uint64_t *a2)
{
  v3 = sub_22BABE164(a2);
  if (v4)
  {
    v5 = v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *a1;
    v10 = *a1;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_22BAEB3D8();
      v7 = v10;
    }

    v8 = *(v7 + 48);
    v9 = type metadata accessor for ConnectionID(0);
    sub_22BABDB3C(v8 + *(*(v9 - 8) + 72) * v5, type metadata accessor for ConnectionID);

    sub_22BAC1BDC(v5, v7);
    *a1 = v7;
  }
}

void sub_22BAC1BDC(int64_t a1, uint64_t a2)
{
  v26 = type metadata accessor for ConnectionID(0);
  v4 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v6 = (&v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = a2 + 64;
  v8 = -1 << *(a2 + 32);
  v9 = (a1 + 1) & ~v8;
  if ((*(a2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v11 = (sub_22BB1FAAC() + 1) & ~v8;
    v12 = *(v4 + 72);
    v25 = a2 + 64;
    do
    {
      v13 = v12;
      v14 = v12 * v9;
      sub_22BABE90C(*(a2 + 48) + v12 * v9, v6, type metadata accessor for ConnectionID);
      sub_22BB1FDDC();
      MEMORY[0x23189D810](*v6);
      sub_22BB1EADC();
      sub_22BAC36FC(&qword_2814250E0, MEMORY[0x277D74708], MEMORY[0x277D74720]);
      sub_22BB1F62C();
      v15 = sub_22BB1FE0C();
      sub_22BAC1514(v6, type metadata accessor for ConnectionID);
      v16 = v15 & v10;
      if (a1 >= v11)
      {
        if (v16 < v11)
        {
          v7 = v25;
          v12 = v13;
          goto LABEL_4;
        }

        v12 = v13;
        if (a1 >= v16)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v12 = v13;
        if (v16 >= v11 || a1 >= v16)
        {
LABEL_11:
          if (v12 * a1 < v14 || *(a2 + 48) + v12 * a1 >= (*(a2 + 48) + v14 + v12))
          {
            swift_arrayInitWithTakeFrontToBack();
            v7 = v25;
          }

          else
          {
            v17 = v12 * a1 == v14;
            v7 = v25;
            if (!v17)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v18 = *(a2 + 56);
          v19 = (v18 + 8 * a1);
          v20 = (v18 + 8 * v9);
          if (a1 != v9 || v19 >= v20 + 1)
          {
            *v19 = *v20;
            a1 = v9;
          }

          goto LABEL_4;
        }
      }

      v7 = v25;
LABEL_4:
      v9 = (v9 + 1) & v10;
    }

    while (((*(v7 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }
}

uint64_t sub_22BAC1F34(uint64_t *a1, void *a2)
{
  v59 = a2;
  v63 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DEFD8, &qword_22BB211E0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v46 - v4;
  v6 = sub_22BB1F2EC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v51 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v49 = &v46 - v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v46 - v12;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DEFE0, &qword_22BB211E8);
  MEMORY[0x28223BE20](v58);
  v56 = &v46 - v14;
  v15 = *a1;
  v16 = *a1 + 64;
  v17 = 1 << *(*a1 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(*a1 + 64);
  v20 = (v17 + 63) >> 6;
  v54 = v7 + 48;
  v60 = v7;
  v61 = v15;
  v50 = (v7 + 32);

  v22 = 0;
  v52 = MEMORY[0x277D84F90];
  v53 = v20;
  v55 = v16;
  v62 = v7 + 16;
  v57 = v5;
LABEL_4:
  v23 = v22;
  if (!v19)
  {
    goto LABEL_6;
  }

  do
  {
    v22 = v23;
LABEL_9:
    v24 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    v25 = v24 | (v22 << 6);
    v26 = v60;
    v27 = v61;
    v28 = *(v60 + 72);
    v29 = v56;
    (*(v60 + 16))(v56, *(v61 + 48) + v28 * v25, v6);
    v30 = *(*(v27 + 56) + 8 * v25);
    *(v29 + *(v58 + 48)) = v30;

    v31 = v57;
    sub_22BAE48DC(v29, v30, v59, v57);
    sub_22BAC81E8(v29, &qword_27D8DEFE0, &qword_22BB211E8);
    if ((*(v26 + 48))(v31, 1, v6) != 1)
    {
      v32 = v49;
      v33 = *v50;
      (*v50)(v49, v31, v6);
      v33(v51, v32, v6);
      v34 = v33;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v20 = v53;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v52 = sub_22BAF604C(0, v52[2] + 1, 1, v52);
      }

      v37 = v52[2];
      v36 = v52[3];
      v38 = v37 + 1;
      if (v37 >= v36 >> 1)
      {
        v47 = v52[2];
        v48 = v37 + 1;
        v40 = sub_22BAF604C((v36 > 1), v37 + 1, 1, v52);
        v37 = v47;
        v38 = v48;
        v52 = v40;
      }

      v39 = v52;
      v52[2] = v38;
      result = (v34)(v39 + ((*(v60 + 80) + 32) & ~*(v60 + 80)) + v37 * v28, v51, v6);
      v16 = v55;
      goto LABEL_4;
    }

    result = sub_22BAC81E8(v31, &qword_27D8DEFD8, &qword_22BB211E0);
    v23 = v22;
    v16 = v55;
    v20 = v53;
  }

  while (v19);
  while (1)
  {
LABEL_6:
    v22 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      __break(1u);
      return result;
    }

    if (v22 >= v20)
    {
      break;
    }

    v19 = *(v16 + 8 * v22);
    ++v23;
    if (v19)
    {
      goto LABEL_9;
    }
  }

  v41 = v52[2];
  if (v41)
  {
    v42 = v52 + ((*(v60 + 80) + 32) & ~*(v60 + 80));
    v43 = *(v60 + 72);
    v44 = *(v60 + 16);
    v45 = (v60 + 8);
    do
    {
      v44(v13, v42, v6);
      sub_22BACFB24(v13, 0);
      (*v45)(v13, v6);
      v42 += v43;
      --v41;
    }

    while (v41);
  }
}

void sub_22BAC23E4(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_22BB1FD6C();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_22BAC83C0(0, &qword_2814240A8, 0x277D0AD00);
        v6 = sub_22BB1F80C();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_22BAF1F44(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_22BAC87DC(0, v2, 1, a1);
  }
}

char *sub_22BAC24F8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF568, &qword_22BB22800);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_22BAC2614(char *a1, int64_t a2, char a3)
{
  result = sub_22BAC24F8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_22BAC265C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = a5;
  *(a1 + 16) = mach_continuous_time();
  *(a1 + 24) = 0;
  v12 = *(a1 + 32);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v12 = sub_22BAD05C0(0, v12[2] + 1, 1, v12);
  }

  v14 = v12[2];
  v13 = v12[3];
  if (v14 >= v13 >> 1)
  {
    v12 = sub_22BAD05C0((v13 > 1), v14 + 1, 1, v12);
  }

  v12[2] = v14 + 1;
  v12[v14 + 4] = a2;
  *(a1 + 32) = v12;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *(a1 + 40);
  sub_22BACE340(v7, a3, a4, isUniquelyReferenced_nonNull_native);
  *(a1 + 40) = v18;
  sub_22BABFC10(a3, a4);

  v16 = swift_isUniquelyReferenced_nonNull_native();
  v19 = *(a1 + 48);
  sub_22BACEA6C(a6, a3, a4, v16);
  result = sub_22BABFC24(a3, a4);
  *(a1 + 48) = v19;
  return result;
}

uint64_t IntelligenceSupportAgent.RequestParameters.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0x3FE8000000000000;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  v2 = MEMORY[0x277D84FA0];
  *(a1 + 40) = MEMORY[0x277D84FA0];
  *(a1 + 48) = v2;
  *(a1 + 56) = sub_22BB1EDAC() & 1;
  *(a1 + 57) = sub_22BB1ED6C() & 1;
  *(a1 + 58) = sub_22BB1EDDC() & 1;
  *(a1 + 64) = xmmword_22BB22080;
  *(a1 + 80) = xmmword_22BB22090;
  *(a1 + 96) = sub_22BB1EE2C() & 1;
  *(a1 + 104) = sub_22BB1EDFC();
  *(a1 + 112) = 0;
  *(a1 + 113) = sub_22BB1ED4C() & 1;
  *(a1 + 114) = sub_22BB1EDBC() & 1;
  *(a1 + 115) = sub_22BB1EE1C() & 1;
  v3 = type metadata accessor for IntelligenceSupportAgent.RequestParameters(0);
  v4 = v3[19];
  sub_22BB1ECCC();
  v5 = sub_22BB1EC1C();
  (*(*(v5 - 8) + 56))(a1 + v4, 0, 1, v5);
  sub_22BB1ECDC();
  sub_22BB1ECEC();
  sub_22BB1ECEC();
  v6 = v3[23];
  *(a1 + v6) = sub_22BB1EE0C();
  sub_22BB1ECEC();
  sub_22BB1ECEC();
  sub_22BB1ECEC();
  v7 = v3[27];
  *(a1 + v7) = sub_22BB1EDCC() & 1;
  sub_22BB1ECEC();
  v8 = v3[29];
  *(a1 + v8) = sub_22BB1EDEC() & 1;
  v9 = v3[30];
  *(a1 + v9) = sub_22BB1EE3C() & 1;
  sub_22BB1ECEC();
  v10 = v3[32];
  *(a1 + v10) = sub_22BB1ED7C();
  v11 = sub_22BB1ED3C() & 1;
  v12 = sub_22BB1ED2C();
  v13 = v11 | 2;
  if ((v12 & 1) == 0)
  {
    v13 = v11;
  }

  *(a1 + v3[33]) = v13;
  return sub_22BB1ECFC();
}

uint64_t type metadata accessor for IntelligenceSupportAgent.RequestParameters(uint64_t a1)
{
  result = qword_281424E70;
  if (!qword_281424E70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t IntelligenceSupportAgent.RequestParameters.appIntentsRequest.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for IntelligenceSupportAgent.RequestParameters(0) + 76);

  return sub_22BAC2A3C(a1, v3);
}

uint64_t sub_22BAC2A3C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF3A0, &qword_22BB220B8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t IntelligenceSupportAgent.RequestParameters.userActivities.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for IntelligenceSupportAgent.RequestParameters(0) + 84);
  v4 = sub_22BB1EC5C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t IntelligenceSupportAgent.RequestParameters.requestedComponents.setter(uint64_t *a1)
{
  v2 = *a1;
  result = type metadata accessor for IntelligenceSupportAgent.RequestParameters(0);
  *(v1 + *(result + 132)) = v2;
  return result;
}

uint64_t sub_22BAC2C0C()
{
  v1 = *(v0 + 56);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);
  v4 = swift_task_alloc();
  *(v0 + 40) = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  *(v4 + 32) = v3;
  v5 = swift_task_alloc();
  *(v0 + 48) = v5;
  *v5 = v0;
  v5[1] = sub_22BAE06D0;
  v6 = *(v0 + 16);

  return MEMORY[0x2822007B8](v6, 0, 0, 0xD000000000000026, 0x800000022BB26BA0, sub_22BAC2F08, v4, &type metadata for IntelligenceSupportAgent.ElementHierarchy);
}

uint64_t sub_22BAC2D18(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8DEFB8, &qword_22BB211C8);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v15[-v10];
  v16 = a3;
  (*(v8 + 16))(&v15[-v10], a1, v7, v9);
  v12 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v13 = swift_allocObject();
  (*(v8 + 32))(v13 + v12, v11, v7);
  _s26UIIntelligenceSupportAgent012IntelligencebC0C21fetchElementHierarchy3for10parameters17completionHandleryAC6ClientO_AC17RequestParametersVyAC0fG0VctFZ_0(&v16, a4, sub_22BAEE618, v13);
}

uint64_t sub_22BAC2E74()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8DEFB8, &qword_22BB211C8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t _s26UIIntelligenceSupportAgent012IntelligencebC0C21fetchElementHierarchy3for10parameters17completionHandleryAC6ClientO_AC17RequestParametersVyAC0fG0VctFZ_0(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = a3;
  v7 = sub_22BB1F52C();
  v27 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_22BB1F56C();
  v10 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for IntelligenceSupportAgent.RequestParameters(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a1;
  if (qword_281425058 != -1)
  {
    swift_once();
  }

  v24[1] = qword_281425060;
  sub_22BABE90C(a2, v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for IntelligenceSupportAgent.RequestParameters);
  v18 = (*(v14 + 80) + 17) & ~*(v14 + 80);
  v19 = (v15 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 16) = v17;
  sub_22BAC3614(v16, v20 + v18, type metadata accessor for IntelligenceSupportAgent.RequestParameters);
  v21 = (v20 + v19);
  *v21 = v25;
  v21[1] = a4;
  aBlock[4] = sub_22BAC382C;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22BAC37D4;
  aBlock[3] = &block_descriptor_0;
  v22 = _Block_copy(aBlock);

  sub_22BB1F54C();
  v28 = MEMORY[0x277D84F90];
  sub_22BAC36FC(&qword_281424180, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DEFC8, &qword_22BB211D0);
  sub_22BAC8324(&qword_281424150, &qword_27D8DEFC8, &qword_22BB211D0, MEMORY[0x277D83970]);
  sub_22BB1FA8C();
  MEMORY[0x23189D350](0, v12, v9, v22);
  _Block_release(v22);
  (*(v27 + 8))(v9, v7);
  (*(v10 + 8))(v12, v26);
}

uint64_t sub_22BAC3308()
{
  v1 = type metadata accessor for IntelligenceSupportAgent.RequestParameters(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 17) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;

  v6 = v1[19];
  v7 = sub_22BB1EC1C();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v0 + v3 + v6, 1, v7))
  {
    (*(v8 + 8))(v5 + v6, v7);
  }

  v9 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = v1[20];
  v11 = sub_22BB1EC9C();
  (*(*(v11 - 8) + 8))(v5 + v10, v11);
  v12 = v1[21];
  v13 = sub_22BB1EC5C();
  (*(*(v13 - 8) + 8))(v5 + v12, v13);
  v14 = v1[22];
  v15 = sub_22BB1EC7C();
  v16 = *(*(v15 - 8) + 8);
  v16(v5 + v14, v15);

  v16(v5 + v1[24], v15);
  v16(v5 + v1[25], v15);
  v16(v5 + v1[26], v15);
  v16(v5 + v1[28], v15);
  v17 = v1[31];
  v18 = sub_22BB1F0BC();
  (*(*(v18 - 8) + 8))(v5 + v17, v18);

  v19 = v1[34];
  v20 = sub_22BB1EE9C();
  (*(*(v20 - 8) + 8))(v5 + v19, v20);

  return MEMORY[0x2821FE8E8](v0, v9 + 16, v2 | 7);
}

uint64_t sub_22BAC3614(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22BAC36FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22BAC3744(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22BAC378C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22BAC37E8(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_22BAC382C()
{
  v1 = *(type metadata accessor for IntelligenceSupportAgent.RequestParameters(0) - 8);
  v2 = (*(v1 + 80) + 17) & ~*(v1 + 80);
  v3 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v4 = *v3;
  v5 = v3[1];
  v6 = *(v0 + 16);

  return sub_22BAC38C0(v6, v0 + v2, v4, v5);
}

uint64_t sub_22BAC38C0(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_281424D70 != -1)
  {
    v5 = a1;
    v6 = a2;
    v7 = a4;
    v8 = a3;
    swift_once();
    a1 = v5;
    a2 = v6;
    a3 = v8;
    a4 = v7;
  }

  v9 = a1;
  return sub_22BAC3954(&v9, a2, a3, a4);
}

uint64_t sub_22BAC3954(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v102 = a3;
  v103 = a4;
  v93 = sub_22BB1F2EC();
  v92 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v90 = &v89 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for IntelligenceSupportAgentXPCListener.ConnectedClient(0);
  v96 = *(v7 - 8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v89 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = type metadata accessor for ConnectionID(0);
  v98 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v11 = &v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22BB1F11C();
  v104 = *(v12 - 8);
  v105 = v12;
  MEMORY[0x28223BE20](v12);
  v97 = &v89 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v108 = &v89 - v15;
  v16 = sub_22BB1F45C();
  v106 = *(v16 - 8);
  v107 = v16;
  MEMORY[0x28223BE20](v16);
  v99 = &v89 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v95 = &v89 - v19;
  MEMORY[0x28223BE20](v20);
  v94 = &v89 - v21;
  v22 = sub_22BB1EC7C();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v89 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for IntelligenceSupportAgent.RequestParameters(0);
  MEMORY[0x28223BE20](v26);
  v101 = &v89 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v30 = &v89 - v29;
  v100 = *a1;
  sub_22BABE90C(a2, &v89 - v29, type metadata accessor for IntelligenceSupportAgent.RequestParameters);
  v31 = *(v26 + 104);
  v32 = *(v23 + 104);
  LODWORD(v111) = *MEMORY[0x277D74820];
  v110 = v32;
  v32(v25);
  sub_22BAC36FC(&qword_281425098, MEMORY[0x277D74850], MEMORY[0x277D74860]);
  v113 = v30;
  v89 = v31;
  LOBYTE(v30) = sub_22BB1F65C();
  v109 = *(v23 + 8);
  v109(v25, v22);
  if (v30 & 1) == 0 && (sub_22BAEE72C())
  {
    sub_22BB1F43C();
    v33 = sub_22BB1F44C();
    v34 = sub_22BB1F8CC();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      v36 = v34;
      v37 = v35;
      _os_log_impl(&dword_22BABB000, v33, v36, "Ignoring window snapshot request due to UI sensitive feature flags being enabled.", v35, 2u);
      MEMORY[0x23189DF20](v37, -1, -1);
    }

    (*(v106 + 8))(v94, v107);
    v38 = v113;
    v39 = v89;
    v109((v113 + v89), v22);
    (v110)(v38 + v39, v111, v22);
  }

  v40 = *(v26 + 112);
  (v110)(v25, v111, v22);
  v41 = sub_22BB1F65C();
  v109(v25, v22);
  if (v41 & 1) == 0 && (sub_22BAEE72C())
  {
    sub_22BB1F43C();
    v42 = sub_22BB1F44C();
    v43 = sub_22BB1F8CC();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_22BABB000, v42, v43, "Ignoring screen snapshot request due to UI sensitive feature flags being enabled.", v44, 2u);
      MEMORY[0x23189DF20](v44, -1, -1);
    }

    (*(v106 + 8))(v95, v107);
    v45 = v113;
    v109((v113 + v40), v22);
    (v110)(v45 + v40, v111, v22);
  }

  v110 = *(v112 + 16);
  v46 = *(v110 + 6);
  v47 = *(*v46 + *MEMORY[0x277D841D0] + 16);
  v48 = (*(*v46 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v46 + v48));
  sub_22BAC457C((v46 + v47), v114);
  os_unfair_lock_unlock((v46 + v48));
  MEMORY[0x28223BE20](v49);
  *(&v89 - 2) = v113;
  sub_22BAC4C20(sub_22BAC50C4, (&v89 - 4), v50);
  v52 = *(v51 + 16);
  v53 = MEMORY[0x277D84F90];
  v111 = v51;
  if (v52)
  {
    v54 = v51;
    v114[0] = MEMORY[0x277D84F90];
    sub_22BAC53F4(0, v52, 0);
    v53 = v114[0];
    v55 = v54 + ((*(v96 + 80) + 32) & ~*(v96 + 80));
    v56 = *(v96 + 72);
    v57 = v98;
    do
    {
      sub_22BABE90C(v55, v9, type metadata accessor for IntelligenceSupportAgentXPCListener.ConnectedClient);
      sub_22BABE90C(v9, v11, type metadata accessor for ConnectionID);
      sub_22BAC1514(v9, type metadata accessor for IntelligenceSupportAgentXPCListener.ConnectedClient);
      v114[0] = v53;
      v59 = *(v53 + 16);
      v58 = *(v53 + 24);
      if (v59 >= v58 >> 1)
      {
        sub_22BAC53F4((v58 > 1), v59 + 1, 1);
        v57 = v98;
        v53 = v114[0];
      }

      *(v53 + 16) = v59 + 1;
      sub_22BAC3614(v11, v53 + ((*(v57 + 80) + 32) & ~*(v57 + 80)) + *(v57 + 72) * v59, type metadata accessor for ConnectionID);
      v55 += v56;
      --v52;
    }

    while (v52);
  }

  v60 = v108;
  v61 = v112;
  v62 = *(v112 + 24);
  v63 = v101;
  v64 = sub_22BABE90C(v113, v101, type metadata accessor for IntelligenceSupportAgent.RequestParameters);
  MEMORY[0x28223BE20](v64);
  *(&v89 - 48) = v100;
  v66 = v102;
  v65 = v103;
  *(&v89 - 5) = v63;
  *(&v89 - 4) = v66;
  *(&v89 - 3) = v65;
  *(&v89 - 2) = v61;
  *(&v89 - 1) = v53;
  os_unfair_lock_lock(v62 + 10);
  sub_22BAC636C(&v62[4], v60);
  os_unfair_lock_unlock(v62 + 10);
  sub_22BAC1514(v63, type metadata accessor for IntelligenceSupportAgent.RequestParameters);
  v68 = v104;
  v67 = v105;
  if (*(v53 + 16))
  {
    v69 = v99;
    sub_22BB1F43C();
    v70 = v97;
    (*(v68 + 16))(v97, v60, v67);

    v71 = sub_22BB1F44C();
    v72 = sub_22BB1F8CC();

    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      LODWORD(v112) = v72;
      v74 = v70;
      v75 = v73;
      v76 = swift_slowAlloc();
      v114[0] = v76;
      *v75 = 136446466;
      v77 = v90;
      sub_22BB1F0FC();
      v78 = sub_22BB1F2BC();
      v80 = v79;
      (*(v92 + 8))(v77, v93);
      v81 = *(v68 + 8);
      v81(v74, v67);
      v82 = sub_22BABDC4C(v78, v80, v114);

      *(v75 + 4) = v82;
      *(v75 + 12) = 2080;
      v83 = MEMORY[0x23189D210](v53, v91);
      v85 = v84;

      v86 = sub_22BABDC4C(v83, v85, v114);

      *(v75 + 14) = v86;
      _os_log_impl(&dword_22BABB000, v71, v112, "notifying clients for %{public}s: %s", v75, 0x16u);
      swift_arrayDestroy();
      v87 = v76;
      v60 = v108;
      MEMORY[0x23189DF20](v87, -1, -1);
      MEMORY[0x23189DF20](v75, -1, -1);

      (*(v106 + 8))(v99, v107);
    }

    else
    {

      v81 = *(v68 + 8);
      v81(v70, v67);
      (*(v106 + 8))(v69, v107);
    }

    sub_22BACBF04(v111, v60);

    v81(v60, v67);
  }

  else
  {
    (*(v104 + 8))(v60, v105);
  }

  return sub_22BAC1514(v113, type metadata accessor for IntelligenceSupportAgent.RequestParameters);
}

void sub_22BAC457C(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8DEE90, &qword_22BB20A28);
  MEMORY[0x28223BE20](v44);
  v43 = v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v42 = v36 - v7;
  v8 = type metadata accessor for IntelligenceSupportAgentXPCListener.ConnectedClient(0);
  v40 = *(v8 - 8);
  v41 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v12 = *(*a1 + 16);
  v13 = MEMORY[0x277D84F90];
  if (v12)
  {
    v36[0] = a2;
    v36[1] = v2;
    v47 = MEMORY[0x277D84F90];
    sub_22BAC4998(0, v12, 0);
    v45 = v47;
    v14 = v11 + 64;
    v15 = sub_22BB1FA9C();
    v16 = 0;
    v46 = *(v11 + 36);
    v37 = v11 + 72;
    v38 = v12;
    v39 = v11 + 64;
    while ((v15 & 0x8000000000000000) == 0 && v15 < 1 << *(v11 + 32))
    {
      v18 = v15 >> 6;
      if ((*(v14 + 8 * (v15 >> 6)) & (1 << v15)) == 0)
      {
        goto LABEL_23;
      }

      if (v46 != *(v11 + 36))
      {
        goto LABEL_24;
      }

      v19 = *(v11 + 48);
      v20 = type metadata accessor for ConnectionID(0);
      v21 = v42;
      sub_22BABDB9C(v19 + *(*(v20 - 8) + 72) * v15, v42, type metadata accessor for ConnectionID);
      v22 = *(*(v11 + 56) + 8 * v15);
      v23 = v21;
      v24 = v43;
      sub_22BABE0FC(v23, v43, type metadata accessor for ConnectionID);
      *(v24 + *(v44 + 48)) = v22;
      sub_22BABDB9C(v24, v10, type metadata accessor for ConnectionID);
      *&v10[*(v41 + 20)] = v22;
      swift_retain_n();
      sub_22BAC4BB8(v24);
      v25 = v45;
      v47 = v45;
      v27 = *(v45 + 16);
      v26 = *(v45 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_22BAC4998((v26 > 1), v27 + 1, 1);
        v25 = v47;
      }

      *(v25 + 16) = v27 + 1;
      v28 = (*(v40 + 80) + 32) & ~*(v40 + 80);
      v45 = v25;
      sub_22BABE0FC(v10, v25 + v28 + *(v40 + 72) * v27, type metadata accessor for IntelligenceSupportAgentXPCListener.ConnectedClient);
      v17 = 1 << *(v11 + 32);
      if (v15 >= v17)
      {
        goto LABEL_25;
      }

      v14 = v39;
      v29 = *(v39 + 8 * v18);
      if ((v29 & (1 << v15)) == 0)
      {
        goto LABEL_26;
      }

      if (v46 != *(v11 + 36))
      {
        goto LABEL_27;
      }

      v30 = v29 & (-2 << (v15 & 0x3F));
      if (v30)
      {
        v17 = __clz(__rbit64(v30)) | v15 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v31 = v18 << 6;
        v32 = v18 + 1;
        v33 = (v37 + 8 * v18);
        while (v32 < (v17 + 63) >> 6)
        {
          v35 = *v33++;
          v34 = v35;
          v31 += 64;
          ++v32;
          if (v35)
          {
            sub_22BADEAF4(v15, v46, 0);
            v17 = __clz(__rbit64(v34)) + v31;
            goto LABEL_4;
          }
        }

        sub_22BADEAF4(v15, v46, 0);
      }

LABEL_4:
      ++v16;
      v15 = v17;
      if (v16 == v38)
      {
        a2 = v36[0];
        v13 = v45;
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  else
  {
LABEL_21:
    *a2 = v13;
  }
}

void *sub_22BAC4998(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22BAC49DC(a1, a2, a3, *v3, &qword_27D8DF100, &qword_22BB212C0, type metadata accessor for IntelligenceSupportAgentXPCListener.ConnectedClient);
  *v3 = result;
  return result;
}

void *sub_22BAC49DC(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_22BAC4BB8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8DEE90, &qword_22BB20A28);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_22BAC4C20(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for IntelligenceSupportAgentXPCListener.ConnectedClient(0);
  v24 = *(v7 - 8);
  MEMORY[0x28223BE20](v7 - 8);
  v23 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v20 - v10;
  v22 = *(a3 + 16);
  if (v22)
  {
    v12 = 0;
    v13 = MEMORY[0x277D84F90];
    v20[1] = a2;
    v21 = a3;
    v20[0] = a1;
    while (v12 < *(a3 + 16))
    {
      v14 = (*(v24 + 80) + 32) & ~*(v24 + 80);
      v15 = *(v24 + 72);
      sub_22BABE90C(a3 + v14 + v15 * v12, v11, type metadata accessor for IntelligenceSupportAgentXPCListener.ConnectedClient);
      v16 = a1(v11);
      if (v3)
      {
        sub_22BAC1514(v11, type metadata accessor for IntelligenceSupportAgentXPCListener.ConnectedClient);

        goto LABEL_15;
      }

      if (v16)
      {
        sub_22BAC3614(v11, v23, type metadata accessor for IntelligenceSupportAgentXPCListener.ConnectedClient);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v25 = v13;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_22BAC4998(0, *(v13 + 16) + 1, 1);
          v13 = v25;
        }

        v19 = *(v13 + 16);
        v18 = *(v13 + 24);
        if (v19 >= v18 >> 1)
        {
          sub_22BAC4998((v18 > 1), v19 + 1, 1);
          v13 = v25;
        }

        *(v13 + 16) = v19 + 1;
        sub_22BAC3614(v23, v13 + v14 + v19 * v15, type metadata accessor for IntelligenceSupportAgentXPCListener.ConnectedClient);
        a3 = v21;
        a1 = v20[0];
      }

      else
      {
        sub_22BAC1514(v11, type metadata accessor for IntelligenceSupportAgentXPCListener.ConnectedClient);
      }

      if (v22 == ++v12)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:
  }
}

uint64_t sub_22BAC4EAC(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for ConnectionID(0);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22BB1EADC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BABE90C(a1, v7, type metadata accessor for ConnectionID);
  (*(v9 + 32))(v11, &v7[*(v5 + 28)], v8);
  if (sub_22BAC50E4(v11, a2[5]) & 1) != 0 || (v12 = sub_22BB1EA9C(), v13) && (v14 = sub_22BAC52FC(v12, v13, a2[6]), , (v14) || (v15 = a2[3]) != 0 && (sub_22BAC50E4(v11, v15) & 1) == 0)
  {
    (*(v9 + 8))(v11, v8);
  }

  else
  {
    v16 = a2[4];
    if (!v16 || (v17 = sub_22BB1EA9C(), !v18))
    {
      (*(v9 + 8))(v11, v8);
      return 1;
    }

    v19 = sub_22BAC52FC(v17, v18, v16);

    (*(v9 + 8))(v11, v8);
    if (v19)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_22BAC50E4(uint64_t a1, uint64_t a2)
{
  v3 = sub_22BB1EADC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_22BADBCE0(&qword_2814250E0, MEMORY[0x277D74708], MEMORY[0x277D74720]), v7 = sub_22BB1F61C(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_22BADBCE0(&unk_2814250D0, MEMORY[0x277D74708], MEMORY[0x277D74728]);
      v15 = sub_22BB1F65C();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_22BAC52FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_22BB1FDDC();
  sub_22BB1F6EC();
  v6 = sub_22BB1FE0C();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_22BB1FD9C() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

void *sub_22BAC53F4(void *a1, int64_t a2, char a3)
{
  result = sub_22BAC49DC(a1, a2, a3, *v3, &qword_27D8DF110, &unk_22BB212D0, type metadata accessor for ConnectionID);
  *v3 = result;
  return result;
}

uint64_t sub_22BAC5438@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v122 = a7;
  v111 = a6;
  v120 = a5;
  v119 = a4;
  v104 = a2;
  v131 = a1;
  v123 = a8;
  v103 = sub_22BB1EC7C();
  v102 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v101 = &v97 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = sub_22BB1F52C();
  v116 = *(v117 - 8);
  MEMORY[0x28223BE20](v117);
  v114 = &v97 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_22BB1F56C();
  v113 = *(v115 - 8);
  MEMORY[0x28223BE20](v115);
  v112 = &v97 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_22BB1F51C();
  v109 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v108 = &v97 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v107 = &v97 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF040, &unk_22BB21230);
  MEMORY[0x28223BE20](v15 - 8);
  v106 = &v97 - v16;
  v129 = sub_22BB1F5BC();
  v125 = *(v129 - 8);
  MEMORY[0x28223BE20](v129);
  v132 = &v97 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = type metadata accessor for IntelligenceSupportAgent.RequestParameters(0);
  MEMORY[0x28223BE20](v100);
  v118 = &v97 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v97 - v20;
  v22 = sub_22BB1F45C();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v97 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_22BB1F2EC();
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v128 = &v97 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v31 = &v97 - v30;
  v105 = v32;
  MEMORY[0x28223BE20](v33);
  v35 = &v97 - v34;
  sub_22BB1F2CC();
  sub_22BB1F41C();
  v133 = v35;
  v134 = v27;
  v126 = *(v27 + 16);
  v127 = v27 + 16;
  v126(v31, v35, v26);
  v130 = a3;
  sub_22BABE90C(a3, v21, type metadata accessor for IntelligenceSupportAgent.RequestParameters);
  v36 = sub_22BB1F44C();
  v37 = sub_22BB1F8CC();
  v38 = os_log_type_enabled(v36, v37);
  v124 = v26;
  if (v38)
  {
    v98 = v23;
    v99 = v22;
    v39 = swift_slowAlloc();
    v97 = swift_slowAlloc();
    aBlock[0] = v97;
    *v39 = 136446722;
    v40 = sub_22BB1F2BC();
    v42 = v41;
    v121 = *(v134 + 8);
    v121(v31, v26);
    v43 = sub_22BABDC4C(v40, v42, aBlock);

    *(v39 + 4) = v43;
    *(v39 + 12) = 2082;
    v44 = 0x6E776F6E6B6E7528;
    v45 = 0x800000022BB26BF0;
    v46 = 0xD000000000000013;
    v47 = 0xE900000000000074;
    v48 = 0x6867696C746F7053;
    if (v104 != 3)
    {
      v48 = 0xD000000000000010;
      v47 = 0x800000022BB26BD0;
    }

    if (v104 != 2)
    {
      v46 = v48;
      v45 = v47;
    }

    v49 = 0xE400000000000000;
    if (v104)
    {
      v44 = 1769105747;
    }

    else
    {
      v49 = 0xE900000000000029;
    }

    if (v104 <= 1u)
    {
      v50 = v44;
    }

    else
    {
      v50 = v46;
    }

    if (v104 <= 1u)
    {
      v51 = v49;
    }

    else
    {
      v51 = v45;
    }

    v52 = sub_22BABDC4C(v50, v51, aBlock);

    *(v39 + 14) = v52;
    *(v39 + 22) = 2082;
    v53 = IntelligenceSupportAgent.RequestParameters.description.getter();
    v55 = v54;
    sub_22BAC1514(v21, type metadata accessor for IntelligenceSupportAgent.RequestParameters);
    v56 = sub_22BABDC4C(v53, v55, aBlock);

    *(v39 + 24) = v56;
    _os_log_impl(&dword_22BABB000, v36, v37, "starting %{public}s for client %{public}s: %{public}s", v39, 0x20u);
    v57 = v97;
    swift_arrayDestroy();
    MEMORY[0x23189DF20](v57, -1, -1);
    MEMORY[0x23189DF20](v39, -1, -1);

    (*(v98 + 8))(v25, v99);
    v58 = v124;
  }

  else
  {

    sub_22BAC1514(v21, type metadata accessor for IntelligenceSupportAgent.RequestParameters);
    v121 = *(v134 + 8);
    v121(v31, v26);
    (*(v23 + 8))(v25, v22);
    v58 = v26;
  }

  v59 = v128;
  v60 = v133;
  v126(v128, v133, v58);
  v61 = v130;
  v62 = v118;
  sub_22BABE90C(v130, v118, type metadata accessor for IntelligenceSupportAgent.RequestParameters);
  type metadata accessor for IntelligenceSupportAgent.ActiveRequest(0);
  swift_allocObject();
  v63 = v120;

  v64 = sub_22BAE0D84(v59, v62, v119, v63);
  v65 = v131;
  v66 = v129;
  if (*(v64 + OBJC_IVAR____TtCC26UIIntelligenceSupportAgent24IntelligenceSupportAgentP33_F6EEC212C1562732DDB5A4B69A480AD213ActiveRequest_timeoutTimer))
  {
    if (*(v61 + 16))
    {
      v67 = v125;
      v68 = v106;
      (*(v125 + 56))(v106, 1, 1, v129);
      swift_unknownObjectRetain();
      sub_22BB1F5DC();
      if ((*(v67 + 48))(v68, 1, v66) != 1)
      {
        sub_22BAC81E8(v68, &qword_27D8DF040, &unk_22BB21230);
      }
    }

    else
    {
      swift_unknownObjectRetain();
      v69 = v106;
      sub_22BB1F57C();
      v70 = v125;
      (*(v125 + 56))(v69, 0, 1, v66);
      (*(v70 + 32))(v132, v69, v66);
    }

    ObjectType = swift_getObjectType();
    v72 = v109;
    v73 = *(v109 + 104);
    v74 = v107;
    v75 = v110;
    v73(v107, *MEMORY[0x277D85180], v110);
    v76 = v108;
    *v108 = 0;
    v73(v76, *MEMORY[0x277D85168], v75);
    MEMORY[0x23189D3F0](v132, v74, v76, ObjectType);
    v77 = *(v72 + 8);
    v77(v76, v75);
    v77(v74, v75);
    v78 = swift_allocObject();
    swift_weakInit();
    v79 = v128;
    v58 = v124;
    v126(v128, v133, v124);
    v80 = v134;
    v81 = (*(v134 + 80) + 24) & ~*(v134 + 80);
    v82 = swift_allocObject();
    *(v82 + 16) = v78;
    (*(v80 + 32))(v82 + v81, v79, v58);
    aBlock[4] = sub_22BAEED44;
    aBlock[5] = v82;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22BAC37D4;
    aBlock[3] = &block_descriptor_47;
    v83 = _Block_copy(aBlock);

    v84 = v112;
    sub_22BB1F54C();
    v85 = v114;
    sub_22BAE3564();
    sub_22BB1F97C();
    _Block_release(v83);
    (*(v116 + 8))(v85, v117);
    v86 = v84;
    v60 = v133;
    (*(v113 + 8))(v86, v115);

    sub_22BB1F99C();
    swift_unknownObjectRelease();
    (*(v125 + 8))(v132, v129);
    v61 = v130;
    v65 = v131;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  aBlock[0] = *v65;
  sub_22BB0ED68(v64, v60, isUniquelyReferenced_nonNull_native);
  *v65 = aBlock[0];
  sub_22BACAF88(v122);
  if (*(v65 + 8) & 1) != 0 || (v88 = *(v61 + 24)) != 0 && !*(v88 + 16) && (v89 = v102, v90 = v101, v91 = v103, (*(v102 + 104))(v101, *MEMORY[0x277D74848], v103), v92 = sub_22BB1EC4C(), (*(v89 + 8))(v90, v91), (v92))
  {
    *(v64 + OBJC_IVAR____TtCC26UIIntelligenceSupportAgent24IntelligenceSupportAgentP33_F6EEC212C1562732DDB5A4B69A480AD213ActiveRequest_doneAddingPendingClients) = 1;
  }

  else
  {
    sub_22BAE1358();
  }

  v93 = *(sub_22BACB200(0) + 2);

  if (!v93)
  {
    sub_22BACFB24(v60, 0);
  }

  v121(v60, v58);
  v94 = OBJC_IVAR____TtCC26UIIntelligenceSupportAgent24IntelligenceSupportAgentP33_F6EEC212C1562732DDB5A4B69A480AD213ActiveRequest_request;
  v95 = sub_22BB1F11C();
  (*(*(v95 - 8) + 16))(v123, v64 + v94, v95);
}

uint64_t sub_22BAC6270()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22BAC62A8()
{
  v1 = sub_22BB1F2EC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t IntelligenceSupportAgent.RequestParameters.description.getter()
{
  v222 = sub_22BB1F31C();
  v216 = *(v222 - 8);
  MEMORY[0x28223BE20](v222);
  v221 = &v214 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF3A0, &qword_22BB220B8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v214 - v3;
  v5 = sub_22BB1EC1C();
  v220 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v219 = &v214 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF040, &unk_22BB21230);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v214 - v8;
  LOBYTE(v8) = *(v0 + 16);
  v10 = MEMORY[0x277D839F8];
  v11 = MEMORY[0x277D83A80];
  v217 = v0;
  if (v8)
  {
    v12 = sub_22BB1F5BC();
    (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  }

  else
  {
    sub_22BB1F57C();
    v15 = sub_22BB1F5BC();
    (*(*(v15 - 8) + 56))(v9, 0, 1, v15);
  }

  sub_22BAC81E8(v9, &qword_27D8DF040, &unk_22BB21230);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF4B0, &qword_22BB22100);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_22BB20A70;
  v14 = *v0;
  *(v13 + 56) = v10;
  *(v13 + 64) = v11;
  *(v13 + 32) = v14;
  v16 = sub_22BB1F69C();
  v18 = v17;
  v19 = sub_22BACE678(0, 1, 1, MEMORY[0x277D84F90]);
  v21 = *(v19 + 2);
  v20 = *(v19 + 3);
  v22 = v19;
  if (v21 >= v20 >> 1)
  {
    v22 = sub_22BACE678((v20 > 1), v21 + 1, 1, v19);
  }

  *(v22 + 2) = v21 + 1;
  v23 = &v22[16 * v21];
  *(v23 + 4) = v16;
  *(v23 + 5) = v18;
  v24 = type metadata accessor for IntelligenceSupportAgent.RequestParameters(0);
  v25 = *(v24 + 132);
  v26 = v217;
  v27 = *(v217 + v25);
  if (qword_281424E88 != -1)
  {
    swift_once();
  }

  v28 = __swift_project_value_buffer(v24, qword_281424E90);
  v218 = v24;
  v29 = *(v24 + 132);
  v223 = v28;
  if (v27 != *(v28 + v29))
  {
    *&v224[0] = 0;
    *(&v224[0] + 1) = 0xE000000000000000;
    sub_22BB1FB7C();

    *&v224[0] = 0xD000000000000015;
    *(&v224[0] + 1) = 0x800000022BB27580;
    *&v225 = *(v26 + v25);
    v30 = IntelligenceSupportAgent.RequestParameters.Components.description.getter();
    MEMORY[0x23189D130](v30);

    v31 = v224[0];
    v32 = v22;
    v34 = *(v22 + 2);
    v33 = *(v22 + 3);
    if (v34 >= v33 >> 1)
    {
      v32 = sub_22BACE678((v33 > 1), v34 + 1, 1, v22);
    }

    *(v32 + 2) = v34 + 1;
    v22 = v32;
    *&v32[16 * v34 + 32] = v31;
  }

  if (v26[3])
  {
    *&v224[0] = 0;
    *(&v224[0] + 1) = 0xE000000000000000;
    sub_22BB1FB7C();

    *&v224[0] = 0xD000000000000016;
    *(&v224[0] + 1) = 0x800000022BB27910;
    sub_22BB1EADC();
    sub_22BACFADC(&qword_2814250E0, MEMORY[0x277D74708], MEMORY[0x277D74720]);
    v35 = sub_22BB1F85C();
    MEMORY[0x23189D130](v35);

    v36 = v224[0];
    v37 = v22;
    v39 = *(v22 + 2);
    v38 = *(v22 + 3);
    if (v39 >= v38 >> 1)
    {
      v37 = sub_22BACE678((v38 > 1), v39 + 1, 1, v22);
    }

    *(v37 + 2) = v39 + 1;
    v22 = v37;
    *&v37[16 * v39 + 32] = v36;
  }

  if (v26[4])
  {
    *&v224[0] = 0;
    *(&v224[0] + 1) = 0xE000000000000000;
    sub_22BB1FB7C();

    *&v224[0] = 0xD00000000000001ELL;
    *(&v224[0] + 1) = 0x800000022BB278F0;
    v40 = sub_22BB1F85C();
    MEMORY[0x23189D130](v40);

    v41 = v224[0];
    v42 = v22;
    v44 = *(v22 + 2);
    v43 = *(v22 + 3);
    if (v44 >= v43 >> 1)
    {
      v42 = sub_22BACE678((v43 > 1), v44 + 1, 1, v22);
    }

    *(v42 + 2) = v44 + 1;
    v22 = v42;
    *&v42[16 * v44 + 32] = v41;
  }

  if (*(v26[5] + 16))
  {
    *&v224[0] = 0;
    *(&v224[0] + 1) = 0xE000000000000000;
    sub_22BB1FB7C();

    *&v224[0] = 0xD000000000000016;
    *(&v224[0] + 1) = 0x800000022BB275A0;
    sub_22BB1EADC();
    sub_22BACFADC(&qword_2814250E0, MEMORY[0x277D74708], MEMORY[0x277D74720]);
    v45 = sub_22BB1F85C();
    MEMORY[0x23189D130](v45);

    v46 = v224[0];
    v47 = v22;
    v49 = *(v22 + 2);
    v48 = *(v22 + 3);
    if (v49 >= v48 >> 1)
    {
      v47 = sub_22BACE678((v48 > 1), v49 + 1, 1, v22);
    }

    *(v47 + 2) = v49 + 1;
    v22 = v47;
    *&v47[16 * v49 + 32] = v46;
  }

  if (*(v26[6] + 16))
  {
    *&v224[0] = 0;
    *(&v224[0] + 1) = 0xE000000000000000;
    sub_22BB1FB7C();

    *&v224[0] = 0xD00000000000001ELL;
    *(&v224[0] + 1) = 0x800000022BB275C0;
    v50 = sub_22BB1F85C();
    MEMORY[0x23189D130](v50);

    v51 = v224[0];
    v53 = *(v22 + 2);
    v52 = *(v22 + 3);
    if (v53 >= v52 >> 1)
    {
      v22 = sub_22BACE678((v52 > 1), v53 + 1, 1, v22);
    }

    *(v22 + 2) = v53 + 1;
    *&v22[16 * v53 + 32] = v51;
  }

  v54 = *(v26 + 57);
  if (v54 != *(v223 + 57))
  {
    *&v224[0] = 0;
    *(&v224[0] + 1) = 0xE000000000000000;
    sub_22BB1FB7C();

    *&v224[0] = 0xD000000000000014;
    *(&v224[0] + 1) = 0x800000022BB275E0;
    if (v54)
    {
      v55 = 1702195828;
    }

    else
    {
      v55 = 0x65736C6166;
    }

    if (v54)
    {
      v56 = 0xE400000000000000;
    }

    else
    {
      v56 = 0xE500000000000000;
    }

    MEMORY[0x23189D130](v55, v56);

    v57 = v224[0];
    v59 = *(v22 + 2);
    v58 = *(v22 + 3);
    if (v59 >= v58 >> 1)
    {
      v22 = sub_22BACE678((v58 > 1), v59 + 1, 1, v22);
    }

    *(v22 + 2) = v59 + 1;
    *&v22[16 * v59 + 32] = v57;
  }

  v60 = *(v26 + 58);
  if (v60 != *(v223 + 58))
  {
    *&v224[0] = 0;
    *(&v224[0] + 1) = 0xE000000000000000;
    sub_22BB1FB7C();

    *&v224[0] = 0xD00000000000001CLL;
    *(&v224[0] + 1) = 0x800000022BB27600;
    if (v60)
    {
      v61 = 1702195828;
    }

    else
    {
      v61 = 0x65736C6166;
    }

    if (v60)
    {
      v62 = 0xE400000000000000;
    }

    else
    {
      v62 = 0xE500000000000000;
    }

    MEMORY[0x23189D130](v61, v62);

    v63 = v224[0];
    v65 = *(v22 + 2);
    v64 = *(v22 + 3);
    if (v65 >= v64 >> 1)
    {
      v22 = sub_22BACE678((v64 > 1), v65 + 1, 1, v22);
    }

    *(v22 + 2) = v65 + 1;
    *&v22[16 * v65 + 32] = v63;
  }

  if (v60)
  {
    v66 = v22;
    if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(v26 + 4), *(v223 + 64)), vceqq_f64(*(v26 + 5), *(v223 + 80))))))
    {
      v71 = v223;
    }

    else
    {
      *&v224[0] = 0;
      *(&v224[0] + 1) = 0xE000000000000000;
      sub_22BB1FB7C();
      v225 = v224[0];
      MEMORY[0x23189D130](0xD000000000000016, 0x800000022BB278A0);
      v67 = *(v26 + 5);
      v224[0] = *(v26 + 4);
      v224[1] = v67;
      sub_22BB1FBDC();
      v68 = v225;
      v70 = *(v22 + 2);
      v69 = *(v22 + 3);
      if (v70 >= v69 >> 1)
      {
        v66 = sub_22BACE678((v69 > 1), v70 + 1, 1, v22);
      }

      v71 = v223;
      *(v66 + 2) = v70 + 1;
      *&v66[16 * v70 + 32] = v68;
    }

    v72 = *(v26 + 96);
    if (v72 != *(v71 + 96))
    {
      *&v224[0] = 0;
      *(&v224[0] + 1) = 0xE000000000000000;
      sub_22BB1FB7C();

      *&v224[0] = 0xD000000000000022;
      *(&v224[0] + 1) = 0x800000022BB278C0;
      v73 = v72 == 0;
      if (v72)
      {
        v74 = 1702195828;
      }

      else
      {
        v74 = 0x65736C6166;
      }

      v75 = v66;
      if (v73)
      {
        v76 = 0xE500000000000000;
      }

      else
      {
        v76 = 0xE400000000000000;
      }

      MEMORY[0x23189D130](v74, v76);
      v66 = v75;

      v77 = v224[0];
      v79 = *(v75 + 2);
      v78 = *(v75 + 3);
      if (v79 >= v78 >> 1)
      {
        v66 = sub_22BACE678((v78 > 1), v79 + 1, 1, v75);
      }

      *(v66 + 2) = v79 + 1;
      *&v66[16 * v79 + 32] = v77;
    }
  }

  else
  {
    v66 = v22;
    v71 = v223;
  }

  v80 = v26[13];
  v81 = *(v26 + 112);
  v82 = *(v71 + 112);
  if (v81)
  {
    if (*(v71 + 112))
    {
      goto LABEL_74;
    }

    goto LABEL_71;
  }

  if (v80 != *(v71 + 104))
  {
    v82 = 1;
  }

  if (v82)
  {
LABEL_71:
    *&v224[0] = 0;
    *(&v224[0] + 1) = 0xE000000000000000;
    sub_22BB1FB7C();

    *&v224[0] = 0xD00000000000001DLL;
    *(&v224[0] + 1) = 0x800000022BB27620;
    *&v225 = v80;
    BYTE8(v225) = v81;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF4B8, &qword_22BB22108);
    v83 = sub_22BB1F6AC();
    MEMORY[0x23189D130](v83);

    v84 = v224[0];
    v86 = *(v66 + 2);
    v85 = *(v66 + 3);
    if (v86 >= v85 >> 1)
    {
      v66 = sub_22BACE678((v85 > 1), v86 + 1, 1, v66);
    }

    *(v66 + 2) = v86 + 1;
    *&v66[16 * v86 + 32] = v84;
  }

LABEL_74:
  v87 = *(v26 + 113);
  if (v87 != *(v71 + 113))
  {
    *&v224[0] = 0;
    *(&v224[0] + 1) = 0xE000000000000000;
    sub_22BB1FB7C();

    *&v224[0] = 0xD000000000000011;
    *(&v224[0] + 1) = 0x800000022BB27640;
    v88 = v87 == 0;
    if (v87)
    {
      v89 = 1702195828;
    }

    else
    {
      v89 = 0x65736C6166;
    }

    v90 = v66;
    if (v88)
    {
      v91 = 0xE500000000000000;
    }

    else
    {
      v91 = 0xE400000000000000;
    }

    MEMORY[0x23189D130](v89, v91);
    v66 = v90;

    v92 = v224[0];
    v94 = *(v90 + 2);
    v93 = *(v90 + 3);
    if (v94 >= v93 >> 1)
    {
      v66 = sub_22BACE678((v93 > 1), v94 + 1, 1, v90);
    }

    *(v66 + 2) = v94 + 1;
    *&v66[16 * v94 + 32] = v92;
  }

  v95 = *(v26 + 114);
  if (v95 != *(v71 + 114))
  {
    *&v224[0] = 0;
    *(&v224[0] + 1) = 0xE000000000000000;
    sub_22BB1FB7C();

    *&v224[0] = 0xD000000000000018;
    *(&v224[0] + 1) = 0x800000022BB27660;
    v96 = v95 == 0;
    if (v95)
    {
      v97 = 1702195828;
    }

    else
    {
      v97 = 0x65736C6166;
    }

    v98 = v66;
    if (v96)
    {
      v99 = 0xE500000000000000;
    }

    else
    {
      v99 = 0xE400000000000000;
    }

    MEMORY[0x23189D130](v97, v99);
    v66 = v98;

    v100 = v224[0];
    v102 = *(v98 + 2);
    v101 = *(v98 + 3);
    if (v102 >= v101 >> 1)
    {
      v66 = sub_22BACE678((v101 > 1), v102 + 1, 1, v98);
    }

    *(v66 + 2) = v102 + 1;
    *&v66[16 * v102 + 32] = v100;
  }

  v103 = *(v26 + 115);
  if (v103 != *(v71 + 115))
  {
    *&v224[0] = 0;
    *(&v224[0] + 1) = 0xE000000000000000;
    sub_22BB1FB7C();

    *&v224[0] = 0xD000000000000020;
    *(&v224[0] + 1) = 0x800000022BB27680;
    v104 = v103 == 0;
    if (v103)
    {
      v105 = 1702195828;
    }

    else
    {
      v105 = 0x65736C6166;
    }

    v106 = v66;
    if (v104)
    {
      v107 = 0xE500000000000000;
    }

    else
    {
      v107 = 0xE400000000000000;
    }

    MEMORY[0x23189D130](v105, v107);
    v66 = v106;

    v108 = v224[0];
    v110 = *(v106 + 2);
    v109 = *(v106 + 3);
    if (v110 >= v109 >> 1)
    {
      v66 = sub_22BACE678((v109 > 1), v110 + 1, 1, v106);
    }

    *(v66 + 2) = v110 + 1;
    *&v66[16 * v110 + 32] = v108;
  }

  v111 = v66;
  sub_22BAD6B34(v26 + v218[19], v4, &qword_27D8DF3A0, &qword_22BB220B8);
  v112 = v220;
  if ((*(v220 + 48))(v4, 1, v5) == 1)
  {
    sub_22BAC81E8(v4, &qword_27D8DF3A0, &qword_22BB220B8);
  }

  else
  {
    (*(v112 + 32))(v219, v4, v5);
    *&v224[0] = 0;
    *(&v224[0] + 1) = 0xE000000000000000;
    sub_22BB1FB7C();

    *&v224[0] = 0xD000000000000013;
    *(&v224[0] + 1) = 0x800000022BB27880;
    sub_22BACFADC(&unk_2814250B0, MEMORY[0x277D747A8], MEMORY[0x277D747C8]);
    v113 = sub_22BB1FD7C();
    MEMORY[0x23189D130](v113);

    v114 = v224[0];
    v116 = *(v66 + 2);
    v115 = *(v111 + 3);
    if (v116 >= v115 >> 1)
    {
      v111 = sub_22BACE678((v115 > 1), v116 + 1, 1, v111);
    }

    (*(v220 + 8))(v219, v5);
    *(v111 + 2) = v116 + 1;
    *&v111[16 * v116 + 32] = v114;
  }

  v117 = v218;
  sub_22BB1EC9C();
  sub_22BACFADC(&unk_281425088, MEMORY[0x277D74870], MEMORY[0x277D74880]);
  if ((sub_22BB1F65C() & 1) == 0)
  {
    strcpy(v224, "textOptions: ");
    HIWORD(v224[0]) = -4864;
    sub_22BACFADC(&qword_27D8DF4C0, MEMORY[0x277D74870], MEMORY[0x277D74890]);
    v118 = sub_22BB1FD7C();
    MEMORY[0x23189D130](v118);

    v119 = v224[0];
    v120 = v111;
    v122 = *(v111 + 2);
    v121 = *(v111 + 3);
    if (v122 >= v121 >> 1)
    {
      v120 = sub_22BACE678((v121 > 1), v122 + 1, 1, v111);
    }

    *(v120 + 2) = v122 + 1;
    v111 = v120;
    *&v120[16 * v122 + 32] = v119;
  }

  sub_22BB1EC5C();
  sub_22BACFADC(&qword_2814250A0, MEMORY[0x277D74800], MEMORY[0x277D74810]);
  if (sub_22BB1F65C())
  {
    v123 = v111;
    v124 = v223;
  }

  else
  {
    *&v224[0] = 0;
    *(&v224[0] + 1) = 0xE000000000000000;
    sub_22BB1FB7C();
    MEMORY[0x23189D130](0xD000000000000010, 0x800000022BB276B0);
    sub_22BB1FBDC();
    v125 = v224[0];
    v123 = v111;
    v127 = *(v111 + 2);
    v126 = *(v111 + 3);
    if (v127 >= v126 >> 1)
    {
      v123 = sub_22BACE678((v126 > 1), v127 + 1, 1, v111);
    }

    v124 = v223;
    *(v123 + 2) = v127 + 1;
    *&v123[16 * v127 + 32] = v125;
  }

  v128 = sub_22BB1EC7C();
  v219 = sub_22BACFADC(&qword_281425098, MEMORY[0x277D74850], MEMORY[0x277D74860]);
  if ((sub_22BB1F65C() & 1) == 0)
  {
    *&v224[0] = 0;
    *(&v224[0] + 1) = 0xE000000000000000;
    sub_22BB1FB7C();
    MEMORY[0x23189D130](0xD000000000000011, 0x800000022BB276D0);
    sub_22BB1FBDC();
    v129 = v224[0];
    v131 = *(v123 + 2);
    v130 = *(v123 + 3);
    if (v131 >= v130 >> 1)
    {
      v123 = sub_22BACE678((v130 > 1), v131 + 1, 1, v123);
    }

    *(v123 + 2) = v131 + 1;
    *&v123[16 * v131 + 32] = v129;
  }

  v132 = v117[23];
  v133 = *(v26 + v132);
  if ((sub_22BAF9C1C(v133, *(v124 + v132), MEMORY[0x277D85578], &qword_27D8DF518, MEMORY[0x277D85578], MEMORY[0x277D85590]) & 1) == 0)
  {
    v214 = v128;
    v134 = *(v133 + 16);
    v135 = MEMORY[0x277D84F90];
    v215 = v123;
    if (v134)
    {
      v136 = *(v216 + 16);
      v137 = v133 + ((*(v216 + 80) + 32) & ~*(v216 + 80));
      v138 = *(v216 + 72);
      v139 = (v216 + 8);
      v141 = v221;
      v140 = v222;
      v220 = v138;
      v136(v221, v137, v222);
      while (1)
      {
        if (sub_22BB1F30C())
        {
          (*v139)(v141, v140);
        }

        else
        {
          v142 = sub_22BB1F2FC();
          v144 = v143;
          (*v139)(v141, v140);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v135 = sub_22BACE678(0, *(v135 + 2) + 1, 1, v135);
          }

          v146 = *(v135 + 2);
          v145 = *(v135 + 3);
          if (v146 >= v145 >> 1)
          {
            v135 = sub_22BACE678((v145 > 1), v146 + 1, 1, v135);
          }

          *(v135 + 2) = v146 + 1;
          v147 = &v135[16 * v146];
          *(v147 + 4) = v142;
          *(v147 + 5) = v144;
          v141 = v221;
          v140 = v222;
          v138 = v220;
        }

        v137 += v138;
        if (!--v134)
        {
          break;
        }

        v136(v141, v137, v140);
      }
    }

    sub_22BB02DD0(v135);

    v148 = objc_allocWithZone(MEMORY[0x277CBEB70]);
    v149 = sub_22BB1F7CC();

    v150 = [v148 initWithArray_];

    v151 = [v150 array];
    v152 = sub_22BB1F7DC();

    v153 = sub_22BB02ED0(v152);

    if (!v153)
    {
      v153 = MEMORY[0x277D84F90];
    }

    *&v224[0] = 0;
    *(&v224[0] + 1) = 0xE000000000000000;
    sub_22BB1FB7C();

    *&v224[0] = 0xD000000000000020;
    *(&v224[0] + 1) = 0x800000022BB276F0;
    *&v225 = v153;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8DF070, &qword_22BB21258);
    sub_22BAF77D8();
    v154 = sub_22BB1F63C();
    v156 = v155;

    MEMORY[0x23189D130](v154, v156);

    MEMORY[0x23189D130](93, 0xE100000000000000);
    v157 = v224[0];
    v123 = v215;
    v159 = *(v215 + 2);
    v158 = *(v215 + 3);
    if (v159 >= v158 >> 1)
    {
      v123 = sub_22BACE678((v158 > 1), v159 + 1, 1, v215);
    }

    v26 = v217;
    v117 = v218;
    v124 = v223;
    *(v123 + 2) = v159 + 1;
    *&v123[16 * v159 + 32] = v157;
  }

  if ((sub_22BB1F65C() & 1) == 0)
  {
    *&v224[0] = 0;
    *(&v224[0] + 1) = 0xE000000000000000;
    sub_22BB1FB7C();
    MEMORY[0x23189D130](0x6E6F436567616D69, 0xEE00203A746E6574);
    sub_22BB1FBDC();
    v160 = v224[0];
    v162 = *(v123 + 2);
    v161 = *(v123 + 3);
    if (v162 >= v161 >> 1)
    {
      v123 = sub_22BACE678((v161 > 1), v162 + 1, 1, v123);
    }

    *(v123 + 2) = v162 + 1;
    *&v123[16 * v162 + 32] = v160;
  }

  if ((sub_22BB1F65C() & 1) == 0)
  {
    *&v224[0] = 0;
    *(&v224[0] + 1) = 0xE000000000000000;
    sub_22BB1FB7C();
    MEMORY[0x23189D130](0xD000000000000013, 0x800000022BB27720);
    sub_22BB1FBDC();
    v163 = v224[0];
    v165 = *(v123 + 2);
    v164 = *(v123 + 3);
    if (v165 >= v164 >> 1)
    {
      v123 = sub_22BACE678((v164 > 1), v165 + 1, 1, v123);
    }

    *(v123 + 2) = v165 + 1;
    *&v123[16 * v165 + 32] = v163;
  }

  if ((sub_22BB1F65C() & 1) == 0)
  {
    *&v224[0] = 0;
    *(&v224[0] + 1) = 0xE000000000000000;
    sub_22BB1FB7C();
    MEMORY[0x23189D130](0xD000000000000016, 0x800000022BB27740);
    sub_22BB1FBDC();
    v166 = v224[0];
    v168 = *(v123 + 2);
    v167 = *(v123 + 3);
    if (v168 >= v167 >> 1)
    {
      v123 = sub_22BACE678((v167 > 1), v168 + 1, 1, v123);
    }

    *(v123 + 2) = v168 + 1;
    *&v123[16 * v168 + 32] = v166;
  }

  v169 = v117[27];
  v170 = *(v26 + v169);
  if (v170 != *(v124 + v169))
  {
    *&v224[0] = 0xD00000000000001ALL;
    *(&v224[0] + 1) = 0x800000022BB27760;
    if (v170)
    {
      v171 = 1702195828;
    }

    else
    {
      v171 = 0x65736C6166;
    }

    if (v170)
    {
      v172 = 0xE400000000000000;
    }

    else
    {
      v172 = 0xE500000000000000;
    }

    MEMORY[0x23189D130](v171, v172);

    v173 = v224[0];
    v175 = *(v123 + 2);
    v174 = *(v123 + 3);
    if (v175 >= v174 >> 1)
    {
      v123 = sub_22BACE678((v174 > 1), v175 + 1, 1, v123);
    }

    *(v123 + 2) = v175 + 1;
    *&v123[16 * v175 + 32] = v173;
  }

  v176 = v117[29];
  v177 = *(v26 + v176);
  if (v177 != *(v124 + v176))
  {
    *&v224[0] = 0xD00000000000001CLL;
    *(&v224[0] + 1) = 0x800000022BB27780;
    if (v177)
    {
      v178 = 1702195828;
    }

    else
    {
      v178 = 0x65736C6166;
    }

    if (v177)
    {
      v179 = 0xE400000000000000;
    }

    else
    {
      v179 = 0xE500000000000000;
    }

    MEMORY[0x23189D130](v178, v179);

    v180 = v224[0];
    v182 = *(v123 + 2);
    v181 = *(v123 + 3);
    if (v182 >= v181 >> 1)
    {
      v123 = sub_22BACE678((v181 > 1), v182 + 1, 1, v123);
    }

    *(v123 + 2) = v182 + 1;
    *&v123[16 * v182 + 32] = v180;
  }

  v183 = v117[30];
  v184 = *(v26 + v183);
  if (v184 != *(v124 + v183))
  {
    *&v224[0] = 0xD000000000000023;
    *(&v224[0] + 1) = 0x800000022BB277A0;
    if (v184)
    {
      v185 = 1702195828;
    }

    else
    {
      v185 = 0x65736C6166;
    }

    if (v184)
    {
      v186 = 0xE400000000000000;
    }

    else
    {
      v186 = 0xE500000000000000;
    }

    MEMORY[0x23189D130](v185, v186);

    v187 = v224[0];
    v189 = *(v123 + 2);
    v188 = *(v123 + 3);
    if (v189 >= v188 >> 1)
    {
      v123 = sub_22BACE678((v188 > 1), v189 + 1, 1, v123);
    }

    *(v123 + 2) = v189 + 1;
    *&v123[16 * v189 + 32] = v187;
  }

  sub_22BB1F0BC();
  sub_22BACFADC(&qword_281425078, MEMORY[0x277D748E8], MEMORY[0x277D748F8]);
  if ((sub_22BB1F65C() & 1) == 0)
  {
    *&v224[0] = 0;
    *(&v224[0] + 1) = 0xE000000000000000;
    sub_22BB1FB7C();
    MEMORY[0x23189D130](0xD000000000000025, 0x800000022BB277D0);
    sub_22BB1FBDC();
    v190 = v224[0];
    v192 = *(v123 + 2);
    v191 = *(v123 + 3);
    if (v192 >= v191 >> 1)
    {
      v123 = sub_22BACE678((v191 > 1), v192 + 1, 1, v123);
    }

    *(v123 + 2) = v192 + 1;
    *&v123[16 * v192 + 32] = v190;
  }

  v193 = v117[32];
  v194 = *(v26 + v193);
  sub_22BAF9824(v194, *(v124 + v193));
  if ((v195 & 1) == 0)
  {
    *&v224[0] = sub_22BAF82B0(v194);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8DF070, &qword_22BB21258);
    v196 = v123;
    sub_22BAF77D8();
    v197 = sub_22BB1F63C();
    v199 = v198;

    *&v224[0] = 0xD000000000000017;
    *(&v224[0] + 1) = 0x800000022BB27800;
    v200 = v197;
    v123 = v196;
    MEMORY[0x23189D130](v200, v199);

    MEMORY[0x23189D130](93, 0xE100000000000000);
    v201 = v224[0];
    v203 = *(v196 + 2);
    v202 = *(v196 + 3);
    if (v203 >= v202 >> 1)
    {
      v123 = sub_22BACE678((v202 > 1), v203 + 1, 1, v196);
    }

    *(v123 + 2) = v203 + 1;
    *&v123[16 * v203 + 32] = v201;
  }

  sub_22BB1EE9C();
  sub_22BACFADC(&qword_281425080, MEMORY[0x277D74898], MEMORY[0x277D748A8]);
  if ((sub_22BB1F65C() & 1) == 0)
  {
    *&v224[0] = 0;
    *(&v224[0] + 1) = 0xE000000000000000;
    sub_22BB1FB7C();
    MEMORY[0x23189D130](0xD000000000000010, 0x800000022BB27820);
    sub_22BB1FBDC();
    v204 = v224[0];
    v206 = *(v123 + 2);
    v205 = *(v123 + 3);
    if (v206 >= v205 >> 1)
    {
      v123 = sub_22BACE678((v205 > 1), v206 + 1, 1, v123);
    }

    *(v123 + 2) = v206 + 1;
    *&v123[16 * v206 + 32] = v204;
  }

  if ((sub_22BB1F65C() & 1) == 0)
  {
    *&v224[0] = 0;
    *(&v224[0] + 1) = 0xE000000000000000;
    sub_22BB1FB7C();
    MEMORY[0x23189D130](0xD000000000000016, 0x800000022BB27840);
    sub_22BB1FBDC();
    v207 = v224[0];
    v209 = *(v123 + 2);
    v208 = *(v123 + 3);
    if (v209 >= v208 >> 1)
    {
      v123 = sub_22BACE678((v208 > 1), v209 + 1, 1, v123);
    }

    *(v123 + 2) = v209 + 1;
    *&v123[16 * v209 + 32] = v207;
  }

  *&v224[0] = 0xD000000000000012;
  *(&v224[0] + 1) = 0x800000022BB27860;
  *&v225 = v123;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8DF070, &qword_22BB21258);
  sub_22BAF77D8();
  v210 = sub_22BB1F63C();
  v212 = v211;

  MEMORY[0x23189D130](v210, v212);

  MEMORY[0x23189D130](41, 0xE100000000000000);
  return *&v224[0];
}

uint64_t sub_22BAC81E8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_22BAC8248()
{
  v1 = *(_s17AsyncProviderTaskVMa(0) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  sub_22BAC82AC(v2, v3);
}

void sub_22BAC82AC(uint64_t a1, uint64_t a2)
{
  v3 = [objc_opt_self() configurationForDefaultMainDisplayMonitor];
  sub_22BACD014(v3, 0, 1, a2, 0);
}

uint64_t sub_22BAC8324(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22BAC836C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22BAC83C0(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void *sub_22BAC8408(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v3 = sub_22BB1FADC();
  if (!v3)
  {
LABEL_7:

    return MEMORY[0x277D84F90];
  }

  v4 = v3;
  v5 = sub_22BAC849C(v3, 0);
  sub_22BAC8524((v5 + 4), v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

void *sub_22BAC849C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF190, &qword_22BB21708);
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
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

uint64_t sub_22BAC8524(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_22BB1FADC();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_22BB1FADC();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_22BAC8324(&unk_281424128, &qword_27D8DF188, &qword_22BB21700, MEMORY[0x277D83988]);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF188, &qword_22BB21700);
            v9 = sub_22BAC86D8(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_22BAC83C0(0, &qword_2814240A8, 0x277D0AD00);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void (*sub_22BAC86D8(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x23189D5B0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_22BAC8758;
  }

  __break(1u);
  return result;
}

uint64_t sub_22BAC8760(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_22BB10E38(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_22BAC23E4(v6);
  return sub_22BB1FBCC();
}

void sub_22BAC87DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 8 * a3 - 8;
    v6 = a1 - a3;
LABEL_5:
    v23 = a3;
    v7 = *(v4 + 8 * a3);
    v21 = v6;
    v22 = v5;
    while (1)
    {
      v8 = *v5;
      v9 = v7;
      v10 = v8;
      v11 = [v9 level];
      if (v11 == [v10 level])
      {
        v12 = [v9 layoutRole] - 1;
        if (v12 > 9)
        {
          v13 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v13 = qword_22BB217B0[v12];
        }

        v16 = [v10 layoutRole];
        if ((v16 - 1) > 9)
        {
          v17 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v17 = qword_22BB217B0[(v16 - 1)];
        }

        if (v13 >= v17)
        {
LABEL_4:
          a3 = v23 + 1;
          v5 = v22 + 8;
          v6 = v21 - 1;
          if (v23 + 1 == a2)
          {
            return;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v14 = [v9 level];
        v15 = [v10 level];

        if (v15 >= v14)
        {
          goto LABEL_4;
        }
      }

      if (!v4)
      {
        break;
      }

      v18 = *v5;
      v7 = *(v5 + 8);
      *v5 = v7;
      *(v5 + 8) = v18;
      v5 -= 8;
      if (__CFADD__(v6++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

char *sub_22BAC8968(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22BAC8988(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_22BAC8988(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF2A8, &qword_22BB21F70);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_22BAC8A94(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v119 = a2;
  v122 = a1;
  v127 = a4;
  v6 = sub_22BB1F45C();
  v125 = *(v6 - 8);
  v126 = v6;
  MEMORY[0x28223BE20](v6);
  v111 = &v107 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v117 = &v107 - v9;
  v10 = sub_22BB1F5BC();
  isa = v10[-1].isa;
  v121 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v107 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = sub_22BB1F51C();
  v123 = *(v129 - 8);
  MEMORY[0x28223BE20](v129);
  v110 = &v107 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v115 = &v107 - v15;
  MEMORY[0x28223BE20](v16);
  v114 = &v107 - v17;
  MEMORY[0x28223BE20](v18);
  v116 = &v107 - v19;
  v131 = _s17AsyncProviderTaskVMa(0);
  v124 = *(v131 - 8);
  MEMORY[0x28223BE20](v131);
  v109 = &v107 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v113 = &v107 - v22;
  MEMORY[0x28223BE20](v23);
  v25 = &v107 - v24;
  v26 = sub_22BB1F2EC();
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v108 = &v107 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v31 = &v107 - v30;
  MEMORY[0x28223BE20](v32);
  v34 = &v107 - v33;
  v112 = v4;
  sub_22BB1F0FC();
  v35 = *(v27 + 16);
  v128 = v34;
  v130 = v26;
  v35(v31, v34, v26);
  v36 = qword_2814247A0;

  if (v36 != -1)
  {
    swift_once();
  }

  v37 = off_2814247A8;
  os_unfair_lock_lock(off_2814247A8 + 6);
  v38 = *(v37 + 2);
  if (__OFADD__(v38, 1))
  {
    __break(1u);
  }

  else
  {
    *(v37 + 2) = v38 + 1;
    os_unfair_lock_unlock(v37 + 6);
    *v25 = v38;
    v39 = v130;
    v40 = v131;
    v35(&v25[*(v131 + 20)], v31, v130);
    v41 = &v25[*(v40 + 24)];
    *v41 = v119;
    v41[1] = a3;
    v42 = v25;
    v43 = mach_continuous_time();
    v118 = *(v27 + 8);
    v119 = v27 + 8;
    v118(v31, v39);
    *&v25[*(v40 + 28)] = v43;
    v44 = sub_22BAF340C(v25, v122);
    if (v44)
    {
      v45 = v44;
      v46 = v112;
      swift_beginAccess();
      swift_unknownObjectRetain();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v132 = *(v46 + 72);
      *(v46 + 72) = 0x8000000000000000;
      sub_22BB0E668(v45, v25, isUniquelyReferenced_nonNull_native);
      *(v46 + 72) = v132;
      swift_endAccess();
      sub_22BB1F59C();
      v48 = v116;
      sub_22BB1F5AC();
      (isa[1].isa)(v12, v121);
      v49 = v117;
      sub_22BB1F43C();
      v50 = v113;
      sub_22BAC9EBC(v25, v113);
      v51 = v123;
      v52 = v114;
      v53 = v129;
      (*(v123 + 16))(v114, v48, v129);
      v54 = sub_22BB1F44C();
      v55 = sub_22BB1F8CC();
      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        v122 = swift_slowAlloc();
        v133[0] = v122;
        *v56 = 136446466;
        v121 = v54;
        v57 = sub_22BACDFE0();
        v58 = v52;
        v60 = v59;
        sub_22BAC9F20(v50);
        v61 = sub_22BABDC4C(v57, v60, v133);

        *(v56 + 4) = v61;
        *(v56 + 12) = 2082;
        v62 = sub_22BB1F4FC();
        v64 = v63;
        v65 = *(v51 + 8);
        v66 = v129;
        v65(v58, v129);
        v67 = sub_22BABDC4C(v62, v64, v133);

        *(v56 + 14) = v67;
        v68 = v121;
        _os_log_impl(&dword_22BABB000, v121, v55, "starting %{public}s with %{public}s until deadline", v56, 0x16u);
        v69 = v122;
        swift_arrayDestroy();
        MEMORY[0x23189DF20](v69, -1, -1);
        MEMORY[0x23189DF20](v56, -1, -1);
        swift_unknownObjectRelease();

        (*(v125 + 8))(v117, v126);
        v65(v116, v66);
      }

      else
      {
        swift_unknownObjectRelease();

        v101 = *(v51 + 8);
        v101(v52, v53);
        sub_22BAC9F20(v50);
        (*(v125 + 8))(v49, v126);
        v101(v48, v53);
      }

      v118(v128, v130);
      v102 = v127;
      sub_22BACDEBC(v42, v127);
      v103 = 0;
    }

    else
    {
      sub_22BB1F59C();
      v70 = v115;
      sub_22BB1F5AC();
      (isa[1].isa)(v12, v121);
      v71 = v111;
      sub_22BB1F43C();
      v72 = v25;
      v73 = v109;
      sub_22BAC9EBC(v72, v109);
      v74 = v108;
      v35(v108, v128, v39);
      v75 = v123;
      v76 = v110;
      v77 = v129;
      (*(v123 + 16))(v110, v70, v129);
      v78 = sub_22BB1F44C();
      LODWORD(v122) = sub_22BB1F8BC();
      if (os_log_type_enabled(v78, v122))
      {
        v79 = v76;
        v80 = swift_slowAlloc();
        v121 = swift_slowAlloc();
        v133[0] = v121;
        *v80 = 136446722;
        v81 = (v73 + *(v131 + 24));
        isa = v78;
        v82 = *v81;
        v83 = v81[1];

        sub_22BAC9F20(v73);
        v84 = sub_22BABDC4C(v82, v83, v133);

        *(v80 + 4) = v84;
        *(v80 + 12) = 2082;
        v85 = sub_22BB1F2BC();
        v87 = v86;
        v88 = v74;
        v89 = v130;
        v90 = v118;
        v118(v88, v130);
        v91 = sub_22BABDC4C(v85, v87, v133);

        *(v80 + 14) = v91;
        *(v80 + 22) = 2082;
        v92 = sub_22BB1F4FC();
        v94 = v93;
        v95 = *(v75 + 8);
        v96 = v79;
        v97 = v129;
        v95(v96, v129);
        v98 = sub_22BABDC4C(v92, v94, v133);

        *(v80 + 24) = v98;
        v99 = isa;
        _os_log_impl(&dword_22BABB000, isa, v122, "attempted to start async provider task '%{public}s' for %{public}s but already %{public}s past deadline", v80, 0x20u);
        v100 = v121;
        swift_arrayDestroy();
        MEMORY[0x23189DF20](v100, -1, -1);
        MEMORY[0x23189DF20](v80, -1, -1);

        (*(v125 + 8))(v111, v126);
        v95(v115, v97);
        sub_22BAC9F20(v42);
        v90(v128, v89);
      }

      else
      {

        v104 = *(v75 + 8);
        v104(v76, v77);
        v105 = v74;
        v106 = v118;
        v118(v105, v39);
        sub_22BAC9F20(v73);
        (*(v125 + 8))(v71, v126);
        v104(v115, v77);
        sub_22BAC9F20(v42);
        v106(v128, v39);
      }

      v103 = 1;
      v102 = v127;
    }

    (*(v124 + 56))(v102, v103, 1, v131);
  }
}

uint64_t sub_22BAC9604(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22BB1F2EC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

void sub_22BAC96C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v42 = a3;
  v6 = sub_22BB1F52C();
  v40 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v38 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_22BB1F56C();
  v37 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v36 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF048, &unk_22BB216E0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v32 - v10;
  v12 = _s17AsyncProviderTaskVMa(0);
  v41 = *(v12 - 8);
  v13 = *(v41 + 64);
  MEMORY[0x28223BE20](v12);
  v35 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v43 = &v32 - v15;
  v16 = *(v3 + OBJC_IVAR____TtC26UIIntelligenceSupportAgent24ManagementPolicyProvider_state);
  v44 = a1;
  v45 = a2;
  v17 = a2;
  os_unfair_lock_lock((v16 + 64));
  sub_22BB09690(&aBlock);
  os_unfair_lock_unlock((v16 + 64));
  if (aBlock == 1)
  {
    v34 = v6;
    v18 = OBJC_IVAR____TtC26UIIntelligenceSupportAgent24ManagementPolicyProvider_deadline;
    aBlock = 0;
    v48 = 0xE000000000000000;
    sub_22BB1FB7C();

    aBlock = 0xD000000000000011;
    v48 = 0x800000022BB27E80;
    v33 = a1;
    MEMORY[0x23189D130](a1, a2);
    MEMORY[0x23189D130](41, 0xE100000000000000);
    sub_22BAC8A94(v3 + v18, aBlock, v48, v11);

    v19 = v41;
    if ((*(v41 + 48))(v11, 1, v12) == 1)
    {
      sub_22BB096AC(v11);
    }

    else
    {
      v20 = v3;
      v21 = v43;
      sub_22BACDEBC(v11, v43);
      os_unfair_lock_lock((v16 + 64));
      if (*(v16 + 24) == 1)
      {
        *(v16 + 16) = mach_continuous_time();
        *(v16 + 24) = 0;
      }

      os_unfair_lock_unlock((v16 + 64));
      v22 = v35;
      sub_22BAC9EBC(v21, v35);
      v23 = (*(v19 + 80) + 40) & ~*(v19 + 80);
      v24 = swift_allocObject();
      v25 = v33;
      v24[2] = v20;
      v24[3] = v25;
      v24[4] = v17;
      sub_22BACDEBC(v22, v24 + v23);
      v26 = qword_281424340;

      if (v26 != -1)
      {
        swift_once();
      }

      v27 = swift_allocObject();
      v27[2] = v25;
      v27[3] = v17;
      v27[4] = sub_22BB09714;
      v27[5] = v24;
      v51 = sub_22BACCF20;
      v52 = v27;
      aBlock = MEMORY[0x277D85DD0];
      v48 = 1107296256;
      v49 = sub_22BAC37D4;
      v50 = &block_descriptor_4;
      v28 = _Block_copy(&aBlock);

      v29 = v36;
      sub_22BB1F54C();
      v46 = MEMORY[0x277D84F90];
      sub_22BAC3744(&qword_281424180, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DEFC8, &qword_22BB211D0);
      sub_22BAC836C(&qword_281424150, &qword_27D8DEFC8, &qword_22BB211D0);
      v30 = v38;
      v31 = v34;
      sub_22BB1FA8C();
      MEMORY[0x23189D350](0, v29, v30, v28);
      _Block_release(v28);

      (*(v40 + 8))(v30, v31);
      (*(v37 + 8))(v29, v39);
      sub_22BAC9F20(v43);
    }
  }
}

uint64_t sub_22BAC9C9C()
{
  v1 = (_s17AsyncProviderTaskVMa(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[7];
  v6 = sub_22BB1F2EC();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_22BAC9DA4()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22BAC9DF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22BB1F2EC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_22BAC9EBC(uint64_t a1, uint64_t a2)
{
  v4 = _s17AsyncProviderTaskVMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22BAC9F20(uint64_t a1)
{
  v2 = _s17AsyncProviderTaskVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22BAC9F7C(void *a1, uint64_t *a2, int a3)
{
  LODWORD(v170) = a3;
  v5 = sub_22BB1F45C();
  v164 = *(v5 - 8);
  v165 = v5;
  MEMORY[0x28223BE20](v5);
  v159 = &v145 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v146 = &v145 - v8;
  MEMORY[0x28223BE20](v9);
  v154 = &v145 - v10;
  v11 = _s17AsyncProviderTaskVMa(0);
  MEMORY[0x28223BE20](v11);
  v158 = &v145 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v157 = &v145 - v14;
  MEMORY[0x28223BE20](v15);
  v17 = &v145 - v16;
  MEMORY[0x28223BE20](v18);
  v153 = &v145 - v19;
  MEMORY[0x28223BE20](v20);
  v150 = &v145 - v21;
  MEMORY[0x28223BE20](v22);
  v149 = &v145 - v23;
  MEMORY[0x28223BE20](v24);
  v152 = &v145 - v25;
  MEMORY[0x28223BE20](v26);
  v148 = &v145 - v27;
  MEMORY[0x28223BE20](v28);
  v147 = &v145 - v29;
  v30 = sub_22BB1F35C();
  v160 = *(v30 - 8);
  v161 = v30;
  MEMORY[0x28223BE20](v30);
  v32 = &v145 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v151 = &v145 - v34;
  MEMORY[0x28223BE20](v35);
  v155 = &v145 - v36;
  v37 = sub_22BB1F3AC();
  v162 = *(v37 - 8);
  v163 = v37;
  MEMORY[0x28223BE20](v37);
  v39 = &v145 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v42 = &v145 - v41;
  MEMORY[0x28223BE20](v43);
  v45 = &v145 - v44;
  v46 = sub_22BB1F2EC();
  v47 = MEMORY[0x28223BE20](v46);
  v49 = &v145 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = v11;
  v50 = *(v11 + 20);
  v168 = v52;
  v169 = v51;
  v53 = *(v52 + 16);
  v166 = a2;
  v53(v49, a2 + v50, v47);
  v145 = a1;
  v54 = *(*a1 + 16);
  v167 = v49;
  if (!v54 || (sub_22BACB688(v49), (v55 & 1) == 0))
  {
    if ((v170 & 1) == 0)
    {
      sub_22BB1F38C();
      v78 = v166;
      result = *v166;
      if (*v166 < 0)
      {
        __break(1u);
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v79 = v32;
      sub_22BB1F36C();
      sub_22BABE90C(v78, v17, _s17AsyncProviderTaskVMa);
      sub_22BACDF8C();
      sub_22BACCE68();
      sub_22BAD162C(v80, v81);
      v82 = v157;
      sub_22BABE90C(v78, v157, _s17AsyncProviderTaskVMa);
      v83 = sub_22BB1F39C();
      v84 = sub_22BB1F9BC();
      if (sub_22BB1FA0C())
      {
        v85 = swift_slowAlloc();
        v86 = swift_slowAlloc();
        v171 = v86;
        *v85 = 134218242;
        LODWORD(v170) = v84;
        v87 = v156;
        *(v85 + 4) = *&v17[*(v156 + 28)];
        sub_22BAC1514(v17, _s17AsyncProviderTaskVMa);
        *(v85 + 12) = 2082;
        v88 = (v82 + *(v87 + 24));
        v90 = *v88;
        v89 = v88[1];

        sub_22BAC1514(v82, _s17AsyncProviderTaskVMa);
        v91 = sub_22BABDC4C(v90, v89, &v171);

        *(v85 + 14) = v91;
        v92 = sub_22BB1F34C();
        _os_signpost_emit_with_name_impl(&dword_22BABB000, v83, v170, v92, "AsyncProviderTask", "%{public, signpost.description:begin_time}llu PastDeadline %{public}s", v85, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v86);
        MEMORY[0x23189DF20](v86, -1, -1);
        v93 = v85;
        v78 = v166;
        MEMORY[0x23189DF20](v93, -1, -1);
      }

      else
      {

        sub_22BAC1514(v82, _s17AsyncProviderTaskVMa);
        sub_22BAC1514(v17, _s17AsyncProviderTaskVMa);
      }

      (*(v160 + 8))(v79, v161);
      (*(v162 + 8))(v39, v163);
      v95 = v158;
      v94 = v159;
      sub_22BB1F43C();
      sub_22BABE90C(v78, v95, _s17AsyncProviderTaskVMa);
      v96 = sub_22BB1F44C();
      v97 = sub_22BB1F8BC();
      if (os_log_type_enabled(v96, v97))
      {
        v98 = swift_slowAlloc();
        v99 = swift_slowAlloc();
        v171 = v99;
        *v98 = 136446210;
        v100 = sub_22BACDFE0();
        v102 = v101;
        sub_22BAC1514(v95, _s17AsyncProviderTaskVMa);
        v103 = sub_22BABDC4C(v100, v102, &v171);

        *(v98 + 4) = v103;
        _os_log_impl(&dword_22BABB000, v96, v97, "ignoring async provider task that completed late past its deadline: %{public}s", v98, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v99);
        MEMORY[0x23189DF20](v99, -1, -1);
        MEMORY[0x23189DF20](v98, -1, -1);
      }

      else
      {

        sub_22BAC1514(v95, _s17AsyncProviderTaskVMa);
      }

      (*(v164 + 8))(v94, v165);
    }

    return (*(v168 + 8))(v167, v169);
  }

  v56 = v170;
  v57 = v166;
  v159 = sub_22BACB9F8(v166, v170 & 1);
  if (v56)
  {
    v58 = v45;
    sub_22BB1F38C();
    result = *v57;
    if ((*v57 & 0x8000000000000000) == 0)
    {
      v60 = v155;
      sub_22BB1F36C();
      v61 = v147;
      sub_22BABE90C(v57, v147, _s17AsyncProviderTaskVMa);
      sub_22BACDF8C();
      sub_22BACCE68();
      sub_22BAD162C(v62, v63);
      v64 = v148;
      sub_22BABE90C(v57, v148, _s17AsyncProviderTaskVMa);
      v65 = sub_22BB1F39C();
      v66 = sub_22BB1F9BC();
      if (sub_22BB1FA0C())
      {
        v67 = swift_slowAlloc();
        v68 = swift_slowAlloc();
        LODWORD(v158) = v66;
        v69 = v68;
        v171 = v68;
        *v67 = 134218242;
        v170 = v58;
        v70 = v156;
        *(v67 + 4) = *(v61 + *(v156 + 28));
        sub_22BAC1514(v61, _s17AsyncProviderTaskVMa);
        *(v67 + 12) = 2082;
        v71 = (v64 + *(v70 + 24));
        v72 = v64;
        v73 = *v71;
        v74 = v71[1];

        sub_22BAC1514(v72, _s17AsyncProviderTaskVMa);
        v75 = sub_22BABDC4C(v73, v74, &v171);

        *(v67 + 14) = v75;
        v76 = v155;
        v77 = sub_22BB1F34C();
        _os_signpost_emit_with_name_impl(&dword_22BABB000, v65, v158, v77, "AsyncProviderTaskTimeout", "%{public, signpost.description:begin_time}llu %{public}s", v67, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v69);
        MEMORY[0x23189DF20](v69, -1, -1);
        MEMORY[0x23189DF20](v67, -1, -1);

        (*(v160 + 8))(v76, v161);
        (*(v162 + 8))(v170, v163);
      }

      else
      {

        sub_22BAC1514(v64, _s17AsyncProviderTaskVMa);
        sub_22BAC1514(v61, _s17AsyncProviderTaskVMa);
        (*(v160 + 8))(v60, v161);
        (*(v162 + 8))(v58, v163);
      }

      v124 = v154;
      sub_22BB1F43C();
      v125 = v57;
      v126 = v152;
      sub_22BABE90C(v125, v152, _s17AsyncProviderTaskVMa);
      v127 = sub_22BB1F44C();
      v128 = sub_22BB1F8BC();
      if (os_log_type_enabled(v127, v128))
      {
        v129 = swift_slowAlloc();
        v130 = swift_slowAlloc();
        v171 = v130;
        *v129 = 136446466;
        v131 = sub_22BACDFE0();
        v132 = v126;
        v134 = v133;
        sub_22BAC1514(v132, _s17AsyncProviderTaskVMa);
        v135 = sub_22BABDC4C(v131, v134, &v171);

        *(v129 + 4) = v135;
        *(v129 + 12) = 2050;
        *(v129 + 14) = v159;
        v136 = "timed out %{public}s; async provider tasks still pending: %{public}ld";
LABEL_27:
        _os_log_impl(&dword_22BABB000, v127, v128, v136, v129, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v130);
        MEMORY[0x23189DF20](v130, -1, -1);
        MEMORY[0x23189DF20](v129, -1, -1);

        goto LABEL_29;
      }

      goto LABEL_28;
    }

    goto LABEL_33;
  }

  sub_22BB1F38C();
  result = *v57;
  if (*v57 < 0)
  {
LABEL_34:
    __break(1u);
    return result;
  }

  v104 = v151;
  sub_22BB1F36C();
  v105 = v149;
  sub_22BABE90C(v57, v149, _s17AsyncProviderTaskVMa);
  sub_22BACDF8C();
  sub_22BACCE68();
  sub_22BAD162C(v106, v107);
  v108 = v150;
  sub_22BABE90C(v57, v150, _s17AsyncProviderTaskVMa);
  v109 = sub_22BB1F39C();
  v110 = sub_22BB1F9BC();
  if (sub_22BB1FA0C())
  {
    v111 = swift_slowAlloc();
    v170 = v42;
    v112 = v111;
    v113 = swift_slowAlloc();
    v114 = v105;
    v115 = v113;
    v171 = v113;
    *v112 = 134218242;
    v116 = v156;
    *(v112 + 4) = *(v114 + *(v156 + 28));
    sub_22BAC1514(v114, _s17AsyncProviderTaskVMa);
    *(v112 + 12) = 2082;
    v117 = (v108 + *(v116 + 24));
    v118 = v108;
    v119 = *v117;
    v120 = v117[1];

    sub_22BAC1514(v118, _s17AsyncProviderTaskVMa);
    v121 = v119;
    v57 = v166;
    v122 = sub_22BABDC4C(v121, v120, &v171);

    *(v112 + 14) = v122;
    v123 = sub_22BB1F34C();
    _os_signpost_emit_with_name_impl(&dword_22BABB000, v109, v110, v123, "AsyncProviderTask", "%{public, signpost.description:begin_time}llu %{public}s", v112, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v115);
    MEMORY[0x23189DF20](v115, -1, -1);
    MEMORY[0x23189DF20](v112, -1, -1);

    (*(v160 + 8))(v104, v161);
    (*(v162 + 8))(v170, v163);
  }

  else
  {

    sub_22BAC1514(v108, _s17AsyncProviderTaskVMa);
    sub_22BAC1514(v105, _s17AsyncProviderTaskVMa);
    (*(v160 + 8))(v104, v161);
    (*(v162 + 8))(v42, v163);
  }

  v124 = v146;
  sub_22BB1F43C();
  v137 = v57;
  v126 = v153;
  sub_22BABE90C(v137, v153, _s17AsyncProviderTaskVMa);
  v127 = sub_22BB1F44C();
  v128 = sub_22BB1F8CC();
  if (os_log_type_enabled(v127, v128))
  {
    v129 = swift_slowAlloc();
    v130 = swift_slowAlloc();
    v171 = v130;
    *v129 = 136446466;
    v138 = sub_22BACDFE0();
    v139 = v126;
    v141 = v140;
    sub_22BAC1514(v139, _s17AsyncProviderTaskVMa);
    v142 = sub_22BABDC4C(v138, v141, &v171);

    *(v129 + 4) = v142;
    *(v129 + 12) = 2050;
    *(v129 + 14) = v159;
    v136 = "completed %{public}s; async provider tasks still pending: %{public}ld";
    goto LABEL_27;
  }

LABEL_28:

  sub_22BAC1514(v126, _s17AsyncProviderTaskVMa);
LABEL_29:
  (*(v164 + 8))(v124, v165);
  v143 = v167;
  v144 = *(sub_22BACB200(0) + 2);

  if (v144)
  {
    (*(v168 + 8))(v143, v169);
  }

  else
  {
    sub_22BACFB24(v143, 0);

    return (*(v168 + 8))(v143, v169);
  }
}

void sub_22BACAF88(uint64_t a1)
{
  v2 = v1;
  v24 = type metadata accessor for ConnectionID(0);
  MEMORY[0x28223BE20](v24);
  v5 = (v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v8 = v23 - v7;
  MEMORY[0x28223BE20](v9);
  v12 = v23 - v11;
  v13 = *(a1 + 16);
  if (v13)
  {
    v23[0] = OBJC_IVAR____TtCC26UIIntelligenceSupportAgent24IntelligenceSupportAgentP33_F6EEC212C1562732DDB5A4B69A480AD213ActiveRequest_collator;
    v23[1] = OBJC_IVAR____TtCC26UIIntelligenceSupportAgent24IntelligenceSupportAgentP33_F6EEC212C1562732DDB5A4B69A480AD213ActiveRequest_request;
    v14 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v25 = *(v10 + 72);
    v23[2] = OBJC_IVAR____TtCC26UIIntelligenceSupportAgent24IntelligenceSupportAgentP33_F6EEC212C1562732DDB5A4B69A480AD213ActiveRequest_pendingClients;
    do
    {
      sub_22BABE90C(v14, v12, type metadata accessor for ConnectionID);
      sub_22BABE90C(v12, v5, type metadata accessor for ConnectionID);
      swift_beginAccess();
      sub_22BB19D84(v8, v5);
      swift_endAccess();
      sub_22BAC1514(v8, type metadata accessor for ConnectionID);
      if ((sub_22BB1EFBC() & 1) == 0)
      {
        v15 = sub_22BB1EA9C();
        if (v16)
        {
          v17 = v15;
          v18 = v16;
          v19 = v8;
          v20 = v5;
          v21 = *(v2 + v23[0]);

          v22 = v21;
          v5 = v20;
          v8 = v19;
          sub_22BAC96C4(v17, v18, v22);
        }
      }

      sub_22BAC1514(v12, type metadata accessor for ConnectionID);
      v14 += v25;
      --v13;
    }

    while (v13);
  }
}

char *sub_22BACB200(char a1)
{
  v3 = MEMORY[0x277D84F90];
  v4 = MEMORY[0x277D84F90];
  if ((*(v1 + OBJC_IVAR____TtCC26UIIntelligenceSupportAgent24IntelligenceSupportAgentP33_F6EEC212C1562732DDB5A4B69A480AD213ActiveRequest_doneAddingPendingClients) & 1) == 0)
  {
    v4 = sub_22BACB57C(0, 1, 1, MEMORY[0x277D84F90]);
    v6 = *(v4 + 2);
    v5 = *(v4 + 3);
    if (v6 >= v5 >> 1)
    {
      v4 = sub_22BACB57C((v5 > 1), v6 + 1, 1, v4);
    }

    *(v4 + 2) = v6 + 1;
    v7 = &v4[16 * v6];
    *(v7 + 4) = 0;
    v7[40] = 3;
  }

  v8 = OBJC_IVAR____TtCC26UIIntelligenceSupportAgent24IntelligenceSupportAgentP33_F6EEC212C1562732DDB5A4B69A480AD213ActiveRequest_pendingClients;
  swift_beginAccess();
  v9 = *(v1 + v8);
  if (*(v9 + 16))
  {
    if (a1)
    {
    }

    else
    {
      v9 = MEMORY[0x277D84FA0];
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_22BACB57C(0, *(v4 + 2) + 1, 1, v4);
    }

    v11 = *(v4 + 2);
    v10 = *(v4 + 3);
    if (v11 >= v10 >> 1)
    {
      v4 = sub_22BACB57C((v10 > 1), v11 + 1, 1, v4);
    }

    *(v4 + 2) = v11 + 1;
    v12 = &v4[16 * v11];
    *(v12 + 4) = v9;
    v12[40] = 0;
  }

  if ((sub_22BACB75C() & 1) == 0)
  {
    if (a1)
    {
      v13 = sub_22BB0AC78();
      v15 = v14;
      if (v13[2])
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v4 = sub_22BACB57C(0, *(v4 + 2) + 1, 1, v4);
        }

        v17 = *(v4 + 2);
        v16 = *(v4 + 3);
        if (v17 >= v16 >> 1)
        {
          v4 = sub_22BACB57C((v16 > 1), v17 + 1, 1, v4);
        }

        *(v4 + 2) = v17 + 1;
        v18 = &v4[16 * v17];
        *(v18 + 4) = v13;
        v18[40] = 1;
        if (!*(v15 + 16))
        {

          return v4;
        }

        goto LABEL_24;
      }

      if (*(v15 + 16))
      {
LABEL_24:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v4 = sub_22BACB57C(0, *(v4 + 2) + 1, 1, v4);
        }

        v20 = *(v4 + 2);
        v19 = *(v4 + 3);
        if (v20 >= v19 >> 1)
        {
          v4 = sub_22BACB57C((v19 > 1), v20 + 1, 1, v4);
        }

        *(v4 + 2) = v20 + 1;
        v21 = &v4[16 * v20];
        *(v21 + 4) = v15;
LABEL_37:
        v21[40] = 2;
        return v4;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_22BACB57C(0, *(v4 + 2) + 1, 1, v4);
    }

    v23 = *(v4 + 2);
    v22 = *(v4 + 3);
    v24 = v22 >> 1;
    v25 = v23 + 1;
    if (v22 >> 1 <= v23)
    {
      v4 = sub_22BACB57C((v22 > 1), v23 + 1, 1, v4);
      v22 = *(v4 + 3);
      v24 = v22 >> 1;
    }

    *(v4 + 2) = v25;
    v26 = &v4[16 * v23];
    *(v26 + 4) = v3;
    v26[40] = 1;
    v27 = v23 + 2;
    if (v24 < v27)
    {
      v4 = sub_22BACB57C((v22 > 1), v27, 1, v4);
    }

    *(v4 + 2) = v27;
    v21 = &v4[16 * v25];
    *(v21 + 4) = v3;
    goto LABEL_37;
  }

  return v4;
}

char *sub_22BACB57C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF2F0, &qword_22BB21FC8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_22BACB688(uint64_t a1)
{
  sub_22BB1F2EC();
  v2 = MEMORY[0x277D74940];
  sub_22BABE0B4(&qword_281425070, MEMORY[0x277D74940], MEMORY[0x277D74948]);
  v3 = sub_22BB1F61C();
  return sub_22BACB83C(a1, v3, MEMORY[0x277D74940], &qword_281425068, v2, MEMORY[0x277D74950]);
}

uint64_t sub_22BACB75C()
{
  swift_beginAccess();
  if (*(v0[9] + 16) || (swift_beginAccess(), *(v0[6] + 16)))
  {
    v1 = 0;
  }

  else
  {
    swift_beginAccess();
    v3 = v0[5];
    swift_beginAccess();

    v5 = sub_22BACEEDC(v4);
    sub_22BACF6E4(v3, v5);
    v1 = v6;
  }

  return v1 & 1;
}

unint64_t sub_22BACB83C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v25 = a5;
  v26 = a6;
  v24 = a4;
  v22[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = v22 - v11;
  v23 = v6;
  v13 = -1 << *(v6 + 32);
  v14 = a2 & ~v13;
  v22[0] = v6 + 64;
  if ((*(v6 + 64 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v18 = *(v9 + 16);
    v17 = v9 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    do
    {
      v16(v12, *(v23 + 48) + v19 * v14, v8, v10);
      sub_22BABE0B4(v24, v25, v26);
      v20 = sub_22BB1F65C();
      (*(v17 - 8))(v12, v8);
      if (v20)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
    }

    while (((*(v22[0] + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0);
  }

  return v14;
}

uint64_t get_enum_tag_for_layout_string_26UIIntelligenceSupportAgent012IntelligencebC0C13ActiveRequest33_F6EEC212C1562732DDB5A4B69A480AD2LLC18CompletionActivityO(uint64_t a1)
{
  if ((*(a1 + 8) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t sub_22BACB9F8(void *a1, char a2)
{
  v3 = v2;
  v6 = *(v2 + OBJC_IVAR____TtCC26UIIntelligenceSupportAgent24IntelligenceSupportAgentP33_F6EEC212C1562732DDB5A4B69A480AD213ActiveRequest_collator);
  swift_beginAccess();
  v7 = sub_22BACBB64(a1);
  swift_endAccess();
  if (v7 >= 2)
  {
    swift_getObjectType();
    sub_22BB1F98C();
  }

  if (a2)
  {
    v8 = (a1 + *(_s17AsyncProviderTaskVMa(0) + 24));
    v10 = *v8;
    v9 = v8[1];
    v11 = OBJC_IVAR____TtCC26UIIntelligenceSupportAgent24IntelligenceSupportAgentP33_F6EEC212C1562732DDB5A4B69A480AD213ActiveRequest_timedOutAsyncProviderTasks;
    swift_beginAccess();
    v12 = *(v3 + v11);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v3 + v11) = v12;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v12 = sub_22BACE678(0, *(v12 + 2) + 1, 1, v12);
      *(v3 + v11) = v12;
    }

    v15 = *(v12 + 2);
    v14 = *(v12 + 3);
    if (v15 >= v14 >> 1)
    {
      v12 = sub_22BACE678((v14 > 1), v15 + 1, 1, v12);
    }

    *(v12 + 2) = v15 + 1;
    v16 = &v12[16 * v15];
    *(v16 + 4) = v10;
    *(v16 + 5) = v9;
    *(v3 + v11) = v12;
    swift_endAccess();
  }

  sub_22BACCB38(v7);
  return *(*(v6 + 72) + 16);
}

uint64_t sub_22BACBB64(void *a1)
{
  v2 = v1;
  v3 = sub_22BACDF20(a1);
  if ((v4 & 1) == 0)
  {
    return 1;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v12 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_22BAEB618();
    v7 = v12;
  }

  v8 = *(v7 + 48);
  v9 = _s17AsyncProviderTaskVMa(0);
  sub_22BAC1514(v8 + *(*(v9 - 8) + 72) * v5, _s17AsyncProviderTaskVMa);
  v10 = *(*(v7 + 56) + 8 * v5);
  sub_22BACC8C4(v5, v7);
  *v2 = v7;
  return v10;
}

uint64_t sub_22BACBC28()
{
  sub_22BB1FB7C();

  strcpy(v3, "ConnectionID(");
  v0 = sub_22BB1FD7C();
  MEMORY[0x23189D130](v0);

  MEMORY[0x23189D130](8236, 0xE200000000000000);
  type metadata accessor for ConnectionID(0);
  sub_22BB1EADC();
  sub_22BACBEBC(&unk_2814250C0, MEMORY[0x277D74708], MEMORY[0x277D74740]);
  v1 = sub_22BB1FD7C();
  MEMORY[0x23189D130](v1);

  MEMORY[0x23189D130](41, 0xE100000000000000);
  return v3[0];
}

unint64_t sub_22BACBD60(void *a1, uint64_t a2)
{
  v5 = _s17AsyncProviderTaskVMa(0) - 8;
  MEMORY[0x28223BE20](v5);
  v8 = (&v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = *(v6 + 72);
    do
    {
      sub_22BABED78(*(v2 + 48) + v12 * v10, v8, _s17AsyncProviderTaskVMa);
      v13 = *v8;
      sub_22BABEDE0(v8, _s17AsyncProviderTaskVMa);
      if (v13 == *a1)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

uint64_t sub_22BACBEBC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_22BACBF04(uint64_t a1, uint64_t a2)
{
  v80 = a2;
  v65 = sub_22BB1F2EC();
  v3 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v64 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for ConnectionID(0);
  MEMORY[0x28223BE20](v63);
  v62 = (&v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v71 = sub_22BB1F45C();
  v6 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v72 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_22BB1F11C();
  v8 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v81 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v79 = &v58 - v11;
  v12 = sub_22BB1E5FC();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v78 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = type metadata accessor for IntelligenceSupportAgentXPCListener.ConnectedClient(0);
  MEMORY[0x28223BE20](v77);
  v70 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v20 = &v58 - v18;
  v21 = *(a1 + 16);
  if (v21)
  {
    v84 = 0;
    v22 = a1 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
    v23 = (v8 + 16);
    v76 = *MEMORY[0x277D74470];
    v74 = (v13 + 8);
    v75 = (v13 + 104);
    v67 = (v8 + 8);
    v66 = (v6 + 8);
    v61 = (v3 + 8);
    v73 = *(v17 + 72);
    v19.n128_u64[0] = 136446722;
    v60 = v19;
    v69 = v12;
    v68 = (v8 + 16);
    v59 = &v58 - v18;
    do
    {
      v83 = v21;
      sub_22BABDB9C(v22, v20, type metadata accessor for IntelligenceSupportAgentXPCListener.ConnectedClient);
      v24 = *v23;
      v25 = v80;
      v26 = v82;
      (*v23)(v79, v80, v82);
      v27 = v20;
      v28 = v78;
      sub_22BB1E5EC();
      (*v75)(v28, v76, v12);
      sub_22BABDC04(&qword_281425128, MEMORY[0x277D74480], MEMORY[0x277D74488]);
      v29 = v84;
      sub_22BB1F4AC();
      if (v29)
      {
        (*v74)(v28, v12);
        v30 = v72;
        sub_22BB1F42C();
        v31 = v70;
        sub_22BABDB9C(v27, v70, type metadata accessor for IntelligenceSupportAgentXPCListener.ConnectedClient);
        v24(v81, v25, v26);
        v32 = v29;
        v33 = sub_22BB1F44C();
        v34 = sub_22BB1F8BC();

        v35 = v34;
        if (os_log_type_enabled(v33, v34))
        {
          v36 = swift_slowAlloc();
          v84 = swift_slowAlloc();
          v87 = v84;
          *v36 = v60.n128_u32[0];
          v37 = v62;
          sub_22BABDB9C(v31, v62, type metadata accessor for ConnectionID);
          v86[0] = 0;
          v86[1] = 0xE000000000000000;
          sub_22BB1FB7C();

          strcpy(v86, "ConnectionID(");
          HIWORD(v86[1]) = -4864;
          v85 = *v37;
          v38 = sub_22BB1FD7C();
          v39 = v33;
          MEMORY[0x23189D130](v38);

          MEMORY[0x23189D130](8236, 0xE200000000000000);
          sub_22BB1EADC();
          sub_22BABDC04(&unk_2814250C0, MEMORY[0x277D74708], MEMORY[0x277D74740]);
          v40 = sub_22BB1FD7C();
          MEMORY[0x23189D130](v40);

          MEMORY[0x23189D130](41, 0xE100000000000000);
          v41 = v86[0];
          v42 = v86[1];
          sub_22BABDB3C(v37, type metadata accessor for ConnectionID);
          sub_22BABDB3C(v31, type metadata accessor for IntelligenceSupportAgentXPCListener.ConnectedClient);
          v43 = sub_22BABDC4C(v41, v42, &v87);

          *(v36 + 4) = v43;
          *(v36 + 12) = 2082;
          v44 = v64;
          v45 = v81;
          sub_22BB1F0FC();
          v46 = sub_22BB1F2BC();
          v48 = v47;
          (*v61)(v44, v65);
          (*v67)(v45, v82);
          v49 = sub_22BABDC4C(v46, v48, &v87);

          *(v36 + 14) = v49;
          *(v36 + 22) = 2082;
          v86[0] = v29;
          v50 = v29;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DEE88, &qword_22BB20A20);
          v51 = sub_22BB1F6AC();
          v53 = sub_22BABDC4C(v51, v52, &v87);

          *(v36 + 24) = v53;
          _os_log_impl(&dword_22BABB000, v39, v35, "agent failed to notify client %{public}s for %{public}s (details: %{public}s)", v36, 0x20u);
          v54 = v84;
          swift_arrayDestroy();
          MEMORY[0x23189DF20](v54, -1, -1);
          v55 = v36;
          v20 = v59;
          MEMORY[0x23189DF20](v55, -1, -1);

          (*v66)(v72, v71);
        }

        else
        {
          v20 = v27;

          (*v67)(v81, v26);
          sub_22BABDB3C(v31, type metadata accessor for IntelligenceSupportAgentXPCListener.ConnectedClient);
          (*v66)(v30, v71);
        }

        Strong = swift_unknownObjectWeakLoadStrong();
        v12 = v69;
        v23 = v68;
        if (Strong)
        {
          v57 = *(Strong + 24);
          MEMORY[0x28223BE20](Strong);
          *(&v58 - 2) = v20;
          os_unfair_lock_lock((v57 + 40));
          sub_22BAC1F00((v57 + 16));
          os_unfair_lock_unlock((v57 + 40));

          swift_unknownObjectRelease();
        }

        else
        {
        }

        v84 = 0;
      }

      else
      {
        v84 = 0;
        (*v74)(v28, v12);
        v20 = v27;
      }

      sub_22BABDB3C(v20, type metadata accessor for IntelligenceSupportAgentXPCListener.ConnectedClient);
      v22 += v73;
      v21 = v83 - 1;
    }

    while (v83 != 1);
  }
}

void sub_22BACC8C4(int64_t a1, uint64_t a2)
{
  v22 = _s17AsyncProviderTaskVMa(0);
  v4 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v6 = (&v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = a2 + 64;
  v8 = -1 << *(a2 + 32);
  v9 = (a1 + 1) & ~v8;
  if ((*(a2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v11 = (sub_22BB1FAAC() + 1) & ~v8;
    v12 = *(v4 + 72);
    do
    {
      v13 = v12 * v9;
      sub_22BABE90C(*(a2 + 48) + v12 * v9, v6, _s17AsyncProviderTaskVMa);
      sub_22BB1FDDC();
      MEMORY[0x23189D810](*v6);
      v14 = sub_22BB1FE0C();
      sub_22BAC1514(v6, _s17AsyncProviderTaskVMa);
      v15 = v14 & v10;
      if (a1 >= v11)
      {
        if (v15 < v11)
        {
          goto LABEL_4;
        }
      }

      else if (v15 >= v11)
      {
        goto LABEL_10;
      }

      if (a1 >= v15)
      {
LABEL_10:
        if (v12 * a1 < v13 || *(a2 + 48) + v12 * a1 >= (*(a2 + 48) + v13 + v12))
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v12 * a1 != v13)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v16 = *(a2 + 56);
        v17 = (v16 + 8 * a1);
        v18 = (v16 + 8 * v9);
        if (a1 != v9 || v17 >= v18 + 1)
        {
          *v17 = *v18;
          a1 = v9;
        }
      }

LABEL_4:
      v9 = (v9 + 1) & v10;
    }

    while (((*(v7 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
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
}

uint64_t sub_22BACCB38(uint64_t result)
{
  if (result != 1)
  {
    return swift_unknownObjectRelease();
  }

  return result;
}

void *sub_22BACCB48(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BB1F45C();
  MEMORY[0x28223BE20](v4);
  sub_22BAC83C0(0, &qword_2814240F0, 0x277CC1E90);

  v5 = sub_22BACCF2C(a1, a2, 0);
  v6 = sub_22BACCDD8(v5);

  return v6;
}

void *sub_22BACCDD8(void *result)
{
  if (result)
  {
    v1 = result;
    objc_opt_self();
    v2 = swift_dynamicCastObjCClass();
    if (v2)
    {
      v3 = v2;
      v4 = v1;
    }

    else
    {
      objc_opt_self();
      result = swift_dynamicCastObjCClass();
      if (!result)
      {
        return result;
      }

      v5 = [result containingBundleRecord];
      v3 = sub_22BACCDD8(v5);
    }

    return v3;
  }

  return result;
}

id sub_22BACCF2C(uint64_t a1, uint64_t a2, char a3)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v4 = sub_22BB1F66C();

  v9[0] = 0;
  v5 = [swift_getObjCClassFromMetadata() bundleRecordWithBundleIdentifier:v4 allowPlaceholder:a3 & 1 error:v9];

  if (v5)
  {
    v6 = v9[0];
  }

  else
  {
    v7 = v9[0];
    sub_22BB1E47C();

    swift_willThrow();
  }

  return v5;
}

uint64_t sub_22BACD014(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v91 = a5;
  v95 = a1;
  v84 = sub_22BB1F45C();
  v83 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v80 = v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_22BB1F52C();
  v81 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v78 = v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_22BB1F56C();
  v77 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v76 = v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_22BB1F5BC();
  v93 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v72 = v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v87 = v70 - v14;
  v88 = sub_22BB1F51C();
  v86 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v73 = v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = v15;
  MEMORY[0x28223BE20](v16);
  v75 = (v70 - v17);
  v18 = _s17AsyncProviderTaskVMa(0);
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18 - 8);
  v90 = v20;
  v21 = v70 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = v5;
  v22 = *(v5 + 24);
  os_unfair_lock_lock((v22 + 80));
  if (*(v22 + 24) == 1)
  {
    *(v22 + 16) = mach_continuous_time();
    *(v22 + 24) = 0;
  }

  os_unfair_lock_unlock((v22 + 80));
  [v95 setNeedsUserInteractivePriority_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF180, &qword_22BB216F8);
  v23 = swift_allocObject();
  *(v23 + 24) = 0;
  v24 = (v23 + 24);
  *(v23 + 16) = 0;
  v25 = (v23 + 16);
  v74 = a4;
  sub_22BAC9EBC(a4, v21);
  v26 = *(v19 + 80);
  v27 = swift_allocObject();
  v27[2] = v23;
  v27[3] = a2;
  v28 = v92;
  v27[4] = a3;
  v27[5] = v28;
  v85 = v21;
  sub_22BACDEBC(v21, v27 + ((v26 + 48) & ~v26));
  v101 = sub_22BABEEE0;
  v102 = v27;
  aBlock = MEMORY[0x277D85DD0];
  v98 = 1107296256;
  v99 = sub_22BABEE40;
  v100 = &block_descriptor_15;
  v29 = _Block_copy(&aBlock);
  v30 = a3;
  v94 = v23;

  sub_22BABFC10(a2, a3);

  v31 = v95;
  [v95 setTransitionHandler_];
  _Block_release(v29);
  MEMORY[0x28223BE20](v32);
  v70[-2] = v31;
  os_unfair_lock_lock(v24);
  sub_22BACDE3C(v25);
  os_unfair_lock_unlock(v24);
  if (v91 > 1)
  {
    v61 = v80;
    sub_22BB1F43C();
    sub_22BABFC10(a2, v30);
    v62 = sub_22BB1F44C();
    v63 = sub_22BB1F8BC();
    sub_22BABFC24(a2, v30);
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v96 = v65;
      *v64 = 136446210;
      if (v30 == 1)
      {
        v66 = 0xE400000000000000;
        v67 = 1852399981;
      }

      else
      {
        aBlock = 0;
        v98 = 0xE000000000000000;

        sub_22BB1FB7C();

        aBlock = 0xD000000000000015;
        v98 = 0x800000022BB27230;
        v68 = a2;
        if (!v30)
        {
          sub_22BABFC24(a2, 0);
          v30 = 0xE300000000000000;
          v68 = 7104878;
        }

        MEMORY[0x23189D130](v68, v30);

        MEMORY[0x23189D130](41, 0xE100000000000000);
        v67 = aBlock;
        v66 = v98;
      }

      v69 = sub_22BABDC4C(v67, v66, &v96);

      *(v64 + 4) = v69;
      _os_log_impl(&dword_22BABB000, v62, v63, "reached maximum retry count attempting to fetch window list using FBSDisplayLayoutMonitor for display: %{public}s", v64, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v65);
      MEMORY[0x23189DF20](v65, -1, -1);
      MEMORY[0x23189DF20](v64, -1, -1);
    }

    else
    {
    }

    return (*(v83 + 8))(v61, v84);
  }

  else
  {
    v83 = a2;
    v84 = a3;
    v33 = ~v26;
    v34 = v75;
    *v75 = 20;
    v35 = v86;
    v36 = v88;
    (*(v86 + 104))(v34, *MEMORY[0x277D85178], v88);
    v37 = v26;
    if (qword_281424268 != -1)
    {
      swift_once();
    }

    v70[1] = qword_281424270;
    v38 = v72;
    sub_22BB1F59C();
    MEMORY[0x23189CFF0](v38, v34);
    v39 = *(v93 + 8);
    v93 += 8;
    v80 = v39;
    (v39)(v38, v89);
    v40 = v73;
    (*(v35 + 16))(v73, v34, v36);
    sub_22BAC9EBC(v74, v85);
    v41 = (*(v35 + 80) + 24) & ~*(v35 + 80);
    v42 = (v71 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
    v43 = (v42 + 23) & 0xFFFFFFFFFFFFFFF8;
    v44 = (v43 + 15) & 0xFFFFFFFFFFFFFFF8;
    v45 = (v37 + v44 + 8) & v33;
    v46 = (v90 + v45 + 7) & 0xFFFFFFFFFFFFFFF8;
    v47 = swift_allocObject();
    v48 = v36;
    v49 = v47;
    *(v47 + 16) = v94;
    (*(v35 + 32))(v47 + v41, v40, v48);
    v50 = (v49 + v42);
    v51 = v83;
    v52 = v84;
    *v50 = v83;
    v50[1] = v52;
    *(v49 + v43) = v92;
    v53 = v95;
    *(v49 + v44) = v95;
    sub_22BACDEBC(v85, v49 + v45);
    *(v49 + v46) = v91;
    v101 = sub_22BAF2DCC;
    v102 = v49;
    aBlock = MEMORY[0x277D85DD0];
    v98 = 1107296256;
    v99 = sub_22BAC37D4;
    v100 = &block_descriptor_21;
    v54 = _Block_copy(&aBlock);

    sub_22BABFC10(v51, v52);

    v55 = v53;
    v56 = v76;
    sub_22BB1F54C();
    v96 = MEMORY[0x277D84F90];
    sub_22BAC3744(&qword_281424180, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DEFC8, &qword_22BB211D0);
    sub_22BAC8324(&qword_281424150, &qword_27D8DEFC8, &qword_22BB211D0, MEMORY[0x277D83970]);
    v57 = v78;
    v58 = v82;
    sub_22BB1FA8C();
    v59 = v87;
    MEMORY[0x23189D320](v87, v56, v57, v54);
    _Block_release(v54);

    (*(v81 + 8))(v57, v58);
    (*(v77 + 8))(v56, v79);
    (v80)(v59, v89);
    (*(v86 + 8))(v34, v88);
  }
}

uint64_t sub_22BACDB54()
{
  v1 = _s17AsyncProviderTaskVMa(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);

  if (*(v0 + 32) != 1)
  {
  }

  v4 = (v2 + 48) & ~v2;

  v5 = *(v1 + 20);
  v6 = sub_22BB1F2EC();
  (*(*(v6 - 8) + 8))(v0 + v4 + v5, v6);

  return MEMORY[0x2821FE8E8](v0, v4 + v3, v2 | 7);
}

uint64_t sub_22BACDC6C()
{
  v1 = sub_22BB1F51C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = _s17AsyncProviderTaskVMa(0);
  v7 = *(*(v6 - 8) + 80);
  v8 = *(*(v6 - 8) + 64);

  (*(v2 + 8))(v0 + v4, v1);
  if (*(v0 + v5 + 8) != 1)
  {
  }

  v9 = (((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v7 + v9 + 8) & ~v7;
  v11 = (v8 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;

  v12 = v0 + v10;
  v13 = *(v6 + 20);
  v14 = sub_22BB1F2EC();
  (*(*(v14 - 8) + 8))(v12 + v13, v14);

  return MEMORY[0x2821FE8E8](v0, v11 + 8, v3 | v7 | 7);
}

id sub_22BACDE58(id *a1, uint64_t a2)
{
  result = [objc_opt_self() monitorWithConfiguration_];
  *a1 = result;
  return result;
}

uint64_t sub_22BACDEBC(uint64_t a1, uint64_t a2)
{
  v4 = _s17AsyncProviderTaskVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_22BACDF20(void *a1)
{
  sub_22BB1FDDC();
  MEMORY[0x23189D810](*a1);
  v2 = sub_22BB1FE0C();

  return sub_22BACBD60(a1, v2);
}

unint64_t sub_22BACDF8C()
{
  result = qword_2814240A0;
  if (!qword_2814240A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814240A0);
  }

  return result;
}

unint64_t sub_22BACDFE0()
{
  sub_22BB1FB7C();

  v1 = sub_22BB1FD7C();
  MEMORY[0x23189D130](v1);

  MEMORY[0x23189D130](8236, 0xE200000000000000);
  v2 = _s17AsyncProviderTaskVMa(0);
  v3 = sub_22BB1F2BC();
  MEMORY[0x23189D130](v3);

  MEMORY[0x23189D130](2564140, 0xE300000000000000);
  MEMORY[0x23189D130](*(v0 + *(v2 + 24)), *(v0 + *(v2 + 24) + 8));
  MEMORY[0x23189D130](10535, 0xE200000000000000);
  return 0xD000000000000012;
}

void sub_22BACE0F4(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v6 = sub_22BACCB48(a1, a2);
  if (v6)
  {
    v7 = v6;
    v8 = swift_allocObject();
    *(v8 + 16) = a3;
    *(v8 + 24) = a4;
    v10[4] = sub_22BB0978C;
    v10[5] = v8;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 1107296256;
    v10[2] = sub_22BB08CEC;
    v10[3] = &block_descriptor_15_0;
    v9 = _Block_copy(v10);

    [v7 getDeviceManagementPolicyWithCompletionHandler_];
    _Block_release(v9);
  }

  else
  {
    a3();
  }
}

uint64_t sub_22BACE1F0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_22BACE228(uint64_t a1)
{
  if (qword_281424D70 != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  v1 = *(qword_281425148 + 24);
  MEMORY[0x28223BE20](a1);
  os_unfair_lock_lock((v1 + 40));
  sub_22BACB55C((v1 + 16));
  os_unfair_lock_unlock((v1 + 40));
}

void sub_22BACE2E0()
{
  v1 = *(_s17AsyncProviderTaskVMa(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  sub_22BACE228(v2);
}

unint64_t sub_22BACE340(char a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_22BACE4A8(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_22BACE784(v16, a4 & 1);
      result = sub_22BACE4A8(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        result = sub_22BB1FDBC();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_22BAEC790();
      result = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + result) = a1;
    return result;
  }

  v21[(result >> 6) + 8] |= 1 << result;
  v22 = (v21[6] + 16 * result);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + result) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21[2] = v24;

  return sub_22BABFC10(a2, a3);
}

unint64_t sub_22BACE4A8(uint64_t a1, uint64_t a2)
{
  sub_22BB1FDDC();
  if (a2 == 1)
  {
    MEMORY[0x23189D810](0);
  }

  else
  {
    MEMORY[0x23189D810](1);
    sub_22BB1FDFC();
    if (a2)
    {
      sub_22BB1F6EC();
    }
  }

  v4 = sub_22BB1FE0C();

  return sub_22BADBEF4(a1, a2, v4);
}

void sub_22BACE55C(uint64_t a1)
{
  if (qword_281424D70 != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  v1 = *(qword_281425148 + 24);
  MEMORY[0x28223BE20](a1);
  os_unfair_lock_lock((v1 + 40));
  sub_22BACB55C((v1 + 16));
  os_unfair_lock_unlock((v1 + 40));
}

void sub_22BACE618()
{
  v1 = *(_s17AsyncProviderTaskVMa(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  sub_22BACE55C(v2);
}

char *sub_22BACE678(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF2A8, &qword_22BB21F70);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_22BACE784(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF0A0, &qword_22BB21280);
  v30 = v4;
  result = sub_22BB1FC1C();
  v7 = result;
  if (*(v5 + 16))
  {
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
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 56) + v19);
      v31 = *(*(v5 + 48) + 16 * v19);
      v21 = *(*(v5 + 48) + 16 * v19 + 8);
      if ((v30 & 1) == 0)
      {
        sub_22BABFC10(v31, v21);
      }

      sub_22BB1FDDC();
      if (v21 == 1)
      {
        MEMORY[0x23189D810](0);
      }

      else
      {
        MEMORY[0x23189D810](1);
        sub_22BB1FDFC();
        if (v21)
        {
          sub_22BB1F6EC();
        }
      }

      result = sub_22BB1FE0C();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
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

LABEL_39:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 16 * v15) = v31;
      *(*(v7 + 56) + v15) = v20;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_39;
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

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_37;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
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

LABEL_37:
  *v3 = v7;
  return result;
}

uint64_t sub_22BACEA6C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_22BACE4A8(a2, a3);
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
      sub_22BACEBEC(v16, a4 & 1);
      v11 = sub_22BACE4A8(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_22BB1FDBC();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_22BAEC620();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v21[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v24 = v21[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v25;

  return sub_22BABFC10(a2, a3);
}

uint64_t sub_22BACEBEC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF098, &qword_22BB21278);
  v30 = v4;
  result = sub_22BB1FC1C();
  v7 = result;
  if (*(v5 + 16))
  {
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
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 56) + 8 * v19);
      v31 = *(*(v5 + 48) + 16 * v19);
      v21 = *(*(v5 + 48) + 16 * v19 + 8);
      if ((v30 & 1) == 0)
      {
        sub_22BABFC10(v31, v21);
      }

      sub_22BB1FDDC();
      if (v21 == 1)
      {
        MEMORY[0x23189D810](0);
      }

      else
      {
        MEMORY[0x23189D810](1);
        sub_22BB1FDFC();
        if (v21)
        {
          sub_22BB1F6EC();
        }
      }

      result = sub_22BB1FE0C();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
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

LABEL_39:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 16 * v15) = v31;
      *(*(v7 + 56) + 8 * v15) = v20;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_39;
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

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_37;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
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

LABEL_37:
  *v3 = v7;
  return result;
}

uint64_t sub_22BACEEDC(uint64_t a1)
{
  v2 = sub_22BB1E9DC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v25 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = v25 - v10;
  v12 = *(a1 + 16);
  v13 = sub_22BABE0B4(&qword_281425100, MEMORY[0x277D746D8], MEMORY[0x277D746E0]);
  result = MEMORY[0x23189D290](v12, v2, v13);
  v15 = 0;
  v26 = a1;
  v27 = result;
  v18 = *(a1 + 64);
  v17 = a1 + 64;
  v16 = v18;
  v19 = 1 << *(v17 - 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v16;
  v22 = (v19 + 63) >> 6;
  v25[2] = v3 + 32;
  v25[3] = v3 + 16;
  v25[1] = v3 + 8;
  if ((v20 & v16) != 0)
  {
    do
    {
      v23 = v15;
LABEL_9:
      v24 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
      (*(v3 + 16))(v11, *(v26 + 48) + *(v3 + 72) * (v24 | (v23 << 6)), v2);
      (*(v3 + 32))(v5, v11, v2);
      sub_22BACF13C(v8, v5);
      result = (*(v3 + 8))(v8, v2);
    }

    while (v21);
  }

  while (1)
  {
    v23 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v23 >= v22)
    {

      return v27;
    }

    v21 = *(v17 + 8 * v23);
    ++v15;
    if (v21)
    {
      v15 = v23;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22BACF13C(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_22BB1E9DC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_22BABE0B4(&qword_281425100, MEMORY[0x277D746D8], MEMORY[0x277D746E0]);
  v33 = a2;
  v11 = sub_22BB1F61C();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_22BABE0B4(&unk_2814250F0, MEMORY[0x277D746D8], MEMORY[0x277D746E8]);
      v21 = sub_22BB1F65C();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_22BACF41C(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_22BACF41C(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_22BB1E9DC();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_22BB1AFCC(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_22BB1C580(MEMORY[0x277D746D8], &qword_27D8DF638, &qword_22BB22C20);
      goto LABEL_12;
    }

    sub_22BB1D3C4(v11 + 1);
  }

  v13 = *v3;
  sub_22BABE0B4(&qword_281425100, MEMORY[0x277D746D8], MEMORY[0x277D746E0]);
  v14 = sub_22BB1F61C();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_22BABE0B4(&unk_2814250F0, MEMORY[0x277D746D8], MEMORY[0x277D746E8]);
      v22 = sub_22BB1F65C();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22BB1FDAC();
  __break(1u);
  return result;
}

void sub_22BACF6E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BB1E9DC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v33 - v9;
  v12 = MEMORY[0x28223BE20](v10);
  v13 = &v33 - v11;
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v14 = 0;
    v15 = *(a1 + 56);
    v33 = a1 + 56;
    v16 = 1 << *(a1 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & v15;
    v19 = (v16 + 63) >> 6;
    v40 = v5 + 32;
    v42 = a2 + 56;
    v43 = v5 + 16;
    v20 = (v5 + 8);
    v34 = v19;
    v35 = &v33 - v11;
    v36 = v5;
    v37 = a1;
    if (v18)
    {
      while (1)
      {
        v21 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
LABEL_13:
        v24 = *(a1 + 48);
        v41 = *(v5 + 72);
        v25 = *(v5 + 16);
        v25(v13, v24 + v41 * (v21 | (v14 << 6)), v4, v12);
        (*(v5 + 32))(v44, v13, v4);
        sub_22BACFADC(&qword_281425100, MEMORY[0x277D746D8], MEMORY[0x277D746E0]);
        v26 = sub_22BB1F61C();
        v27 = -1 << *(a2 + 32);
        v28 = v26 & ~v27;
        if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
        {
          break;
        }

        v38 = v20 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v29 = a2;
        v30 = ~v27;
        while (1)
        {
          (v25)(v7, *(v29 + 48) + v28 * v41, v4);
          sub_22BACFADC(&unk_2814250F0, MEMORY[0x277D746D8], MEMORY[0x277D746E8]);
          v31 = sub_22BB1F65C();
          v32 = *v20;
          (*v20)(v7, v4);
          if (v31)
          {
            break;
          }

          v28 = (v28 + 1) & v30;
          if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
          {
            v32(v44, v4);
            return;
          }
        }

        v32(v44, v4);
        a2 = v29;
        v5 = v36;
        a1 = v37;
        v19 = v34;
        v13 = v35;
        v18 = v39;
        if (!v39)
        {
          goto LABEL_8;
        }
      }

      (*v20)(v44, v4);
    }

    else
    {
LABEL_8:
      v22 = v14;
      while (1)
      {
        v14 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          break;
        }

        if (v14 >= v19)
        {
          return;
        }

        v23 = *(v33 + 8 * v14);
        ++v22;
        if (v23)
        {
          v21 = __clz(__rbit64(v23));
          v39 = (v23 - 1) & v23;
          goto LABEL_13;
        }
      }

      __break(1u);
    }
  }
}

uint64_t sub_22BACFA94(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22BACFADC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22BACFB24(uint64_t a1, uint64_t a2)
{
  v40 = a2;
  v3 = sub_22BB1F2EC();
  v45 = *(v3 - 8);
  v46 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22BB1F45C();
  v38 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v39 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22BB1F52C();
  v43 = *(v8 - 8);
  v44 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22BB1F56C();
  v41 = *(v11 - 8);
  v42 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22BB1F53C();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_22BAD01B0(a1);
  if (v18)
  {
    v19 = v18;
    v20 = OBJC_IVAR____TtCC26UIIntelligenceSupportAgent24IntelligenceSupportAgentP33_F6EEC212C1562732DDB5A4B69A480AD213ActiveRequest_timeoutTimer;
    if (*(v18 + OBJC_IVAR____TtCC26UIIntelligenceSupportAgent24IntelligenceSupportAgentP33_F6EEC212C1562732DDB5A4B69A480AD213ActiveRequest_timeoutTimer))
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      sub_22BB1F98C();
      swift_unknownObjectRelease();
    }

    *(v19 + v20) = 0;
    swift_unknownObjectRelease();
    sub_22BAC83C0(0, &qword_2814240C8, 0x277D85C78);
    (*(v15 + 104))(v17, *MEMORY[0x277D851B8], v14);
    v32 = sub_22BB1F94C();
    (*(v15 + 8))(v17, v14);
    v33 = swift_allocObject();
    v34 = v40;
    *(v33 + 16) = v19;
    *(v33 + 24) = v34;
    aBlock[4] = sub_22BAD0598;
    aBlock[5] = v33;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22BAC37D4;
    aBlock[3] = &block_descriptor_38;
    v35 = _Block_copy(aBlock);

    sub_22BB1F54C();
    v47 = MEMORY[0x277D84F90];
    sub_22BAC36FC(&qword_281424180, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DEFC8, &qword_22BB211D0);
    sub_22BAC8324(&qword_281424150, &qword_27D8DEFC8, &qword_22BB211D0, MEMORY[0x277D83970]);
    v36 = v44;
    sub_22BB1FA8C();
    MEMORY[0x23189D350](0, v13, v10, v35);
    _Block_release(v35);

    (*(v43 + 8))(v10, v36);
    (*(v41 + 8))(v13, v42);
  }

  else
  {
    v21 = v6;
    v23 = v38;
    v22 = v39;
    sub_22BB1F43C();
    (*(v45 + 16))(v5, a1, v46);
    v24 = sub_22BB1F44C();
    v25 = sub_22BB1F8BC();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      aBlock[0] = v27;
      *v26 = 136446210;
      v28 = sub_22BB1F2BC();
      v30 = v29;
      (*(v45 + 8))(v5, v46);
      v31 = sub_22BABDC4C(v28, v30, aBlock);

      *(v26 + 4) = v31;
      _os_log_impl(&dword_22BABB000, v24, v25, "invalid request to complete %{public}s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v27);
      MEMORY[0x23189DF20](v27, -1, -1);
      MEMORY[0x23189DF20](v26, -1, -1);
    }

    else
    {

      (*(v45 + 8))(v5, v46);
    }

    return (*(v23 + 8))(v22, v21);
  }
}

uint64_t sub_22BAD01B0(uint64_t a1)
{
  v2 = v1;
  v3 = sub_22BACB688(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v12 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_22BAEC3A0();
    v7 = v12;
  }

  v8 = *(v7 + 48);
  v9 = sub_22BB1F2EC();
  (*(*(v9 - 8) + 8))(v8 + *(*(v9 - 8) + 72) * v5, v9);
  v10 = *(*(v7 + 56) + 8 * v5);
  sub_22BAD0278(v5, v7);
  *v2 = v7;
  return v10;
}

void sub_22BAD0278(int64_t a1, uint64_t a2)
{
  v38 = sub_22BB1F2EC();
  v4 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v37 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a2 + 64;
  v8 = -1 << *(a2 + 32);
  v9 = (a1 + 1) & ~v8;
  if ((*(a2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v39 = v5;
    v11 = sub_22BB1FAAC();
    v12 = v38;
    v5 = v39;
    v13 = v10;
    v36 = (v11 + 1) & v10;
    v15 = *(v4 + 16);
    v14 = v4 + 16;
    v34 = a2 + 64;
    v35 = v15;
    v16 = *(v14 + 56);
    v33 = (v14 - 8);
    do
    {
      v17 = v16;
      v18 = v16 * v9;
      v19 = v37;
      v20 = v13;
      v21 = v14;
      v35(v37, *(v5 + 48) + v16 * v9, v12);
      sub_22BAC36FC(&qword_281425070, MEMORY[0x277D74940], MEMORY[0x277D74948]);
      v22 = sub_22BB1F61C();
      (*v33)(v19, v12);
      v13 = v20;
      v23 = v22 & v20;
      if (a1 >= v36)
      {
        if (v23 >= v36 && a1 >= v23)
        {
LABEL_15:
          v5 = v39;
          v14 = v21;
          if (v17 * a1 < v18 || (v16 = v17, *(v39 + 48) + v17 * a1 >= (*(v39 + 48) + v18 + v17)))
          {
            swift_arrayInitWithTakeFrontToBack();
            v5 = v39;
            v16 = v17;
            v13 = v20;
            v7 = v34;
          }

          else
          {
            v7 = v34;
            if (v17 * a1 != v18)
            {
              swift_arrayInitWithTakeBackToFront();
              v5 = v39;
              v16 = v17;
              v13 = v20;
            }
          }

          v26 = *(v5 + 56);
          v27 = (v26 + 8 * a1);
          v28 = (v26 + 8 * v9);
          if (a1 != v9 || v27 >= v28 + 1)
          {
            *v27 = *v28;
            a1 = v9;
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v36 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v14 = v21;
      v7 = v34;
      v16 = v17;
      v5 = v39;
LABEL_4:
      v9 = (v9 + 1) & v13;
    }

    while (((*(v7 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v29 = *(v5 + 16);
  v30 = __OFSUB__(v29, 1);
  v31 = v29 - 1;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    *(v5 + 16) = v31;
    ++*(v5 + 36);
  }
}

void *sub_22BAD05C0(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF308, &qword_22BB21FE0);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8DF070, &qword_22BB21258);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_22BAD06F4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_22BB1F45C();
  v145 = *(v4 - 8);
  v146 = v4;
  MEMORY[0x28223BE20](v4);
  v124 = &v119 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v148 = &v119 - v7;
  v134 = sub_22BB1F35C();
  v133 = *(v134 - 8);
  MEMORY[0x28223BE20](v134);
  v122 = &v119 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v126 = &v119 - v10;
  v132 = sub_22BB1F3AC();
  v131 = *(v132 - 8);
  MEMORY[0x28223BE20](v132);
  v121 = &v119 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v147 = &v119 - v13;
  v14 = sub_22BB1F5BC();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v119 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = sub_22BB1F51C();
  v136 = *(v152 - 8);
  MEMORY[0x28223BE20](v152);
  v123 = &v119 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v129 = &v119 - v20;
  MEMORY[0x28223BE20](v21);
  v128 = &v119 - v22;
  MEMORY[0x28223BE20](v23);
  v130 = &v119 - v24;
  MEMORY[0x28223BE20](v25);
  v27 = &v119 - v26;
  v151 = sub_22BB1F2EC();
  v135 = *(v151 - 8);
  MEMORY[0x28223BE20](v151);
  v120 = &v119 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v127 = &v119 - v30;
  MEMORY[0x28223BE20](v31);
  v33 = &v119 - v32;
  v34 = (v1 + OBJC_IVAR____TtCC26UIIntelligenceSupportAgent24IntelligenceSupportAgentP33_F6EEC212C1562732DDB5A4B69A480AD213ActiveRequest_completionHandler);
  v144 = *(v1 + OBJC_IVAR____TtCC26UIIntelligenceSupportAgent24IntelligenceSupportAgentP33_F6EEC212C1562732DDB5A4B69A480AD213ActiveRequest_completionHandler);
  if (v144)
  {
    v141 = v34[1];
    *v34 = 0;
    v34[1] = 0;
    v35 = *(v1 + OBJC_IVAR____TtCC26UIIntelligenceSupportAgent24IntelligenceSupportAgentP33_F6EEC212C1562732DDB5A4B69A480AD213ActiveRequest_collator);
    v36 = *(v2 + OBJC_IVAR____TtCC26UIIntelligenceSupportAgent24IntelligenceSupportAgentP33_F6EEC212C1562732DDB5A4B69A480AD213ActiveRequest_parameters + 96);
    v37 = *(v2 + OBJC_IVAR____TtCC26UIIntelligenceSupportAgent24IntelligenceSupportAgentP33_F6EEC212C1562732DDB5A4B69A480AD213ActiveRequest_parameters + 80);
    v153 = *(v2 + OBJC_IVAR____TtCC26UIIntelligenceSupportAgent24IntelligenceSupportAgentP33_F6EEC212C1562732DDB5A4B69A480AD213ActiveRequest_parameters + 64);
    v154 = v37;
    sub_22BAD163C(v2 + OBJC_IVAR____TtCC26UIIntelligenceSupportAgent24IntelligenceSupportAgentP33_F6EEC212C1562732DDB5A4B69A480AD213ActiveRequest_request, &v153, v36);
    v143 = v38;
    swift_beginAccess();
    v142 = *(v35 + 64);

    sub_22BAE1FD4(a1, &v153);
    v139 = *(&v153 + 1);
    v140 = v153;
    v137 = *(&v154 + 1);
    v138 = v154;
    sub_22BAEECF4(0, 0, 0, 0);
    sub_22BB1F0FC();
    sub_22BB1F59C();
    v150 = v27;
    sub_22BB1F5AC();
    v41 = *(v15 + 8);
    v39 = (v15 + 8);
    v40 = v41;
    v41(v17, v14);
    v125 = *(v2 + OBJC_IVAR____TtCC26UIIntelligenceSupportAgent24IntelligenceSupportAgentP33_F6EEC212C1562732DDB5A4B69A480AD213ActiveRequest_signpostStartTime);
    v149 = v33;
    if (a1)
    {
      v123 = v39;
      v124 = v14;
      sub_22BB1F38C();
      sub_22BB1F2DC();
      v42 = v126;
      sub_22BB1F36C();
      sub_22BACDF8C();
      sub_22BACCE68();
      sub_22BAD162C(v43, v44);
      v45 = sub_22BB1F39C();
      v46 = sub_22BB1F9BC();
      if (sub_22BB1FA0C())
      {
        v47 = swift_slowAlloc();
        *v47 = 134217984;
        *(v47 + 4) = v125;
        v48 = sub_22BB1F34C();
        _os_signpost_emit_with_name_impl(&dword_22BABB000, v45, v46, v48, "Request", "%{public, signpost.description:begin_time}llu TimedOut", v47, 0xCu);
        MEMORY[0x23189DF20](v47, -1, -1);
      }

      (*(v133 + 8))(v42, v134);
      (*(v131 + 8))(v147, v132);
      sub_22BB1F0DC();
      v49 = v130;
      sub_22BB1F5AC();
      v40(v17, v124);
      sub_22BB1F43C();
      v50 = v135;
      v51 = v127;
      (*(v135 + 16))(v127, v149, v151);
      v52 = v136;
      v53 = *(v136 + 16);
      v54 = v128;
      v55 = v152;
      v53(v128, v150, v152);
      v56 = v129;
      v53(v129, v49, v55);
      v57 = sub_22BB1F44C();
      v58 = sub_22BB1F8CC();
      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        *&v153 = v60;
        *v59 = 136446722;
        LODWORD(v134) = v58;
        v61 = sub_22BB1F2BC();
        v63 = v62;
        v64 = *(v50 + 8);
        v135 = (v50 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v147 = v64;
        (v64)(v51, v151);
        v65 = sub_22BABDC4C(v61, v63, &v153);

        *(v59 + 4) = v65;
        *(v59 + 12) = 2082;
        v66 = sub_22BB1F4FC();
        v68 = v67;
        v69 = *(v52 + 8);
        v136 = (v52 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v69(v54, v152);
        v70 = sub_22BABDC4C(v66, v68, &v153);

        *(v59 + 14) = v70;
        *(v59 + 22) = 2082;
        v71 = sub_22BB1F4FC();
        v73 = v72;
        v69(v56, v152);
        v74 = sub_22BABDC4C(v71, v73, &v153);

        *(v59 + 24) = v74;
        _os_log_impl(&dword_22BABB000, v57, v134, "completed %{public}s in %{public}s (timed out after %{public}s)", v59, 0x20u);
        swift_arrayDestroy();
        v75 = v60;
        v76 = v151;
        MEMORY[0x23189DF20](v75, -1, -1);
        v77 = v59;
        v55 = v152;
        MEMORY[0x23189DF20](v77, -1, -1);

        (*(v145 + 8))(v148, v146);
        v148 = v69;
        v69(v130, v55);
      }

      else
      {

        v108 = *(v52 + 8);
        v136 = (v52 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v108(v56, v55);
        v108(v54, v55);
        v109 = *(v50 + 8);
        v135 = (v50 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v76 = v151;
        v147 = v109;
        (v109)(v51, v151);
        (*(v145 + 8))(v148, v146);
        v148 = v108;
        v108(v49, v55);
      }
    }

    else
    {
      v78 = v121;
      sub_22BB1F38C();
      sub_22BB1F2DC();
      v79 = v122;
      sub_22BB1F36C();
      sub_22BACDF8C();
      sub_22BACCE68();
      sub_22BAD162C(v80, v81);
      v82 = sub_22BB1F39C();
      v83 = sub_22BB1F9BC();
      if (sub_22BB1FA0C())
      {
        v84 = swift_slowAlloc();
        *v84 = 134217984;
        *(v84 + 4) = v125;
        v85 = sub_22BB1F34C();
        _os_signpost_emit_with_name_impl(&dword_22BABB000, v82, v83, v85, "Request", "%{public, signpost.description:begin_time}llu", v84, 0xCu);
        MEMORY[0x23189DF20](v84, -1, -1);
      }

      (*(v133 + 8))(v79, v134);
      (*(v131 + 8))(v78, v132);
      v86 = v124;
      sub_22BB1F43C();
      v87 = v135;
      v88 = v120;
      v76 = v151;
      (*(v135 + 16))(v120, v33, v151);
      v89 = v136;
      v90 = v123;
      v55 = v152;
      (*(v136 + 16))(v123, v150, v152);
      v91 = sub_22BB1F44C();
      v92 = sub_22BB1F8CC();
      if (os_log_type_enabled(v91, v92))
      {
        v93 = swift_slowAlloc();
        v94 = swift_slowAlloc();
        *&v153 = v94;
        *v93 = 136446466;
        v95 = sub_22BB1F2BC();
        v96 = v88;
        v98 = v97;
        v99 = *(v87 + 8);
        v135 = (v87 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v147 = v99;
        (v99)(v96, v151);
        v100 = sub_22BABDC4C(v95, v98, &v153);

        *(v93 + 4) = v100;
        *(v93 + 12) = 2082;
        v101 = sub_22BB1F4FC();
        v103 = v102;
        v104 = *(v89 + 8);
        v136 = (v89 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v148 = v104;
        (v104)(v90, v152);
        v105 = sub_22BABDC4C(v101, v103, &v153);

        *(v93 + 14) = v105;
        _os_log_impl(&dword_22BABB000, v91, v92, "completed %{public}s in %{public}s", v93, 0x16u);
        swift_arrayDestroy();
        v106 = v94;
        v76 = v151;
        MEMORY[0x23189DF20](v106, -1, -1);
        v107 = v93;
        v55 = v152;
        MEMORY[0x23189DF20](v107, -1, -1);
      }

      else
      {

        v110 = *(v89 + 8);
        v136 = (v89 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v148 = v110;
        (v110)(v90, v55);
        v111 = *(v87 + 8);
        v135 = (v87 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v147 = v111;
        (v111)(v88, v76);
      }

      (*(v145 + 8))(v86, v146);
    }

    v112 = v140;
    v113 = v139;
    *&v153 = v140;
    *(&v153 + 1) = v139;
    v114 = v138;
    v115 = v137;
    *&v154 = v138;
    *(&v154 + 1) = v137;
    v155 = v143;
    v156 = v142;
    sub_22BAEE694(v140, v139, v138, v137);

    v116 = v141;
    v117 = v144;
    v144(&v153);
    sub_22BAD162C(v117, v116);
    sub_22BAEECF4(v153, *(&v153 + 1), v154, *(&v154 + 1));

    (v148)(v150, v55);
    (v147)(v149, v76);
    sub_22BAEECF4(v112, v113, v114, v115);
  }

  else
  {
    result = sub_22BB1F15C();
    __break(1u);
  }

  return result;
}

uint64_t sub_22BAD162C(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

void sub_22BAD163C(uint64_t a1, __int128 *a2, int a3)
{
  v4 = v3;
  v109 = a3;
  v110 = *v4;
  v7 = sub_22BB1F35C();
  v105 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v117 = v95 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_22BB1F3AC();
  v9 = *(v116 - 8);
  MEMORY[0x28223BE20](v116);
  v104 = v95 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v115 = v95 - v12;
  v13 = type metadata accessor for Snapshotter(0);
  MEMORY[0x28223BE20](v13 - 8);
  v108 = v95 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = type metadata accessor for FragmentCollator.RootElement(0);
  v99 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v121 = (v95 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v98 = sub_22BB1E96C();
  v122 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v100 = v95 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = sub_22BB1F45C();
  v118 = *(v120 - 8);
  MEMORY[0x28223BE20](v120);
  v18 = v95 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *a2;
  v106 = a2[1];
  v107 = v19;
  v102 = mach_continuous_time();
  v114 = sub_22BAD2490();
  v20 = *(*(v4 + OBJC_IVAR____TtC26UIIntelligenceSupportAgent16FragmentCollator_managementPolicyProvider) + OBJC_IVAR____TtC26UIIntelligenceSupportAgent24ManagementPolicyProvider_state);
  os_unfair_lock_lock((v20 + 64));
  sub_22BAD34D0((v20 + 16), aBlock);
  os_unfair_lock_unlock((v20 + 64));
  v21 = aBlock[0];

  v23 = sub_22BAD3820(v22);
  v119 = v21;

  v24 = sub_22BAD3CA8(v23);

  if (*(v24 + 16))
  {
    sub_22BB1F43C();

    v25 = sub_22BB1F44C();
    v26 = sub_22BB1F8CC();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v96 = v4;
      v28 = v27;
      v113 = swift_slowAlloc();
      aBlock[0] = v113;
      *v28 = 136446210;
      v29 = MEMORY[0x23189D210](v24, MEMORY[0x277D837D0]);
      v97 = v9;
      v31 = v7;
      v32 = a1;
      v33 = sub_22BABDC4C(v29, v30, aBlock);
      v9 = v97;

      *(v28 + 4) = v33;
      a1 = v32;
      v7 = v31;
      _os_log_impl(&dword_22BABB000, v25, v26, "collection prohibited due to management policy: %{public}s", v28, 0xCu);
      v34 = v113;
      __swift_destroy_boxed_opaque_existential_0(v113);
      MEMORY[0x23189DF20](v34, -1, -1);
      v35 = v28;
      v4 = v96;
      MEMORY[0x23189DF20](v35, -1, -1);
    }

    (*(v118 + 8))(v18, v120);
  }

  v36 = *(v4 + OBJC_IVAR____TtC26UIIntelligenceSupportAgent16FragmentCollator_windowVisibilityProvider + 24);
  v112 = (v4 + OBJC_IVAR____TtC26UIIntelligenceSupportAgent16FragmentCollator_windowVisibilityProvider);
  v37 = *(*__swift_project_boxed_opaque_existential_1((v4 + OBJC_IVAR____TtC26UIIntelligenceSupportAgent16FragmentCollator_windowVisibilityProvider), v36) + 24);
  os_unfair_lock_lock((v37 + 80));
  sub_22BAD3F30((v37 + 16), aBlock);
  os_unfair_lock_unlock((v37 + 80));
  v38 = aBlock[0];
  swift_beginAccess();
  v39 = *(v4 + 24);

  v113 = v38;
  v118 = sub_22BAD427C(v38, v39);

  v40 = sub_22BB1F00C();
  v41 = 0;
  v111 = v7;
  v103 = v24;
  if (v40)
  {
    v42 = v114;
    v43 = *(v114 + 16);
    v44 = MEMORY[0x277D84F90];
    if (v43)
    {
      v95[1] = a1;
      v96 = v4;
      v97 = v9;
      aBlock[0] = MEMORY[0x277D84F90];
      sub_22BAD4564(0, v43, 0);
      v45 = v42 + ((*(v99 + 80) + 32) & ~*(v99 + 80));
      v120 = *(v99 + 72);
      v44 = aBlock[0];
      v46 = (v122 + 32);
      v47 = v101;
      v48 = v98;
      v49 = v100;
      do
      {
        v50 = v121;
        sub_22BABE3D4(v45, v121, type metadata accessor for FragmentCollator.RootElement);
        v51 = *v46;
        (*v46)(v49, v50 + *(v47 + 20), v48);
        aBlock[0] = v44;
        v53 = *(v44 + 16);
        v52 = *(v44 + 24);
        if (v53 >= v52 >> 1)
        {
          sub_22BAD4564((v52 > 1), v53 + 1, 1);
          v47 = v101;
          v44 = aBlock[0];
        }

        *(v44 + 16) = v53 + 1;
        v51((v44 + ((*(v122 + 80) + 32) & ~*(v122 + 80)) + *(v122 + 72) * v53), v49, v48);
        v45 += v120;
        --v43;
      }

      while (v43);
      v9 = v97;
      v4 = v96;
    }

    v41 = sub_22BAD45C8(v113, v44);
  }

  v54 = v112;
  v55 = *(*__swift_project_boxed_opaque_existential_1(v112, v112[3]) + 24);
  os_unfair_lock_lock((v55 + 80));
  v56 = *(v55 + 56);

  os_unfair_lock_unlock((v55 + 80));
  v57 = 0;
  v58 = 0;
  v59 = 1 << *(v56 + 32);
  v60 = -1;
  if (v59 < 64)
  {
    v60 = ~(-1 << v59);
  }

  v61 = v60 & *(v56 + 64);
  v62 = (v59 + 63) >> 6;
  if (v61)
  {
    while (1)
    {
      v63 = v57;
LABEL_21:
      v64 = __clz(__rbit64(v61));
      v61 &= v61 - 1;
      v65 = *(*(v56 + 56) + (v64 | (v63 << 6)));
      if (v65 > v58)
      {
        v58 = v65;
      }

      if (!v61)
      {
        goto LABEL_17;
      }
    }
  }

  while (1)
  {
LABEL_17:
    v63 = v57 + 1;
    if (__OFADD__(v57, 1))
    {
      __break(1u);
      goto LABEL_34;
    }

    if (v63 >= v62)
    {
      break;
    }

    v61 = *(v56 + 64 + 8 * v63);
    ++v57;
    if (v61)
    {
      v57 = v63;
      goto LABEL_21;
    }
  }

  swift_beginAccess();
  v66 = *(v4 + 56);

  v67 = sub_22BB1EF3C();
  v68 = *(v4 + 32);
  v69 = *(*__swift_project_boxed_opaque_existential_1(v54, v54[3]) + 24);
  os_unfair_lock_lock((v69 + 80));
  v70 = *(v69 + 64);

  os_unfair_lock_unlock((v69 + 80));
  v71 = sub_22BAD7298(v70);

  v72 = v108;
  sub_22BABE3D4(v4 + OBJC_IVAR____TtC26UIIntelligenceSupportAgent16FragmentCollator_snapshotter, v108, type metadata accessor for Snapshotter);
  type metadata accessor for FragmentCollator.FragmentResolutionContext(0);
  v73 = swift_allocObject();
  *(v73 + 16) = v66;
  *(v73 + 24) = v119;
  *(v73 + 32) = v67 & 1;
  *(v73 + 33) = v68;
  *(v73 + 40) = v118;
  *(v73 + 48) = v41;
  *(v73 + 72) = v106;
  *(v73 + 56) = v107;
  *(v73 + 88) = v109 & 1;
  *(v73 + 89) = 0;
  *(v73 + 90) = v58;
  *(v73 + 96) = v71;
  sub_22BABE43C(v72, v73 + OBJC_IVAR____TtCC26UIIntelligenceSupportAgent16FragmentCollatorP33_6BE94AAF2C91BC919D389B27AF47AB7925FragmentResolutionContext_snapshotter, type metadata accessor for Snapshotter);
  v74 = swift_allocObject();
  *(v74 + 16) = 0;
  v122 = v74 + 16;
  v75 = swift_allocObject();
  v76 = v114;
  v75[2] = v74;
  v75[3] = v76;
  v77 = v110;
  v75[4] = v73;
  v75[5] = v77;
  v78 = objc_opt_self();

  if ([v78 isMainThread])
  {
    sub_22BAD7618(v74, v76, v73, v77);

    v120 = 0;
    v121 = 0;
    v79 = v111;
    goto LABEL_29;
  }

  sub_22BAD7598();
  v80 = sub_22BB1F91C();
  v81 = swift_allocObject();
  v121 = sub_22BAD75E4;
  *(v81 + 16) = sub_22BAD75E4;
  *(v81 + 24) = v75;
  aBlock[4] = sub_22BAD75F0;
  aBlock[5] = v81;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22BAD793C;
  aBlock[3] = &block_descriptor_5;
  v82 = _Block_copy(aBlock);

  dispatch_sync(v80, v82);

  _Block_release(v82);
  LOBYTE(v80) = swift_isEscapingClosureAtFileLocation();

  v79 = v111;
  if (v80)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v120 = v75;
LABEL_29:
  sub_22BB1F38C();
  v83 = v104;
  sub_22BB1F38C();
  sub_22BB1F39C();

  v84 = v117;
  sub_22BB1F33C();
  v85 = *(v9 + 8);
  v85(v83, v116);
  sub_22BACDF8C();
  sub_22BACCE68();
  sub_22BAD162C(v86, v87);
  v88 = sub_22BB1F39C();
  v89 = sub_22BB1F9BC();
  if (sub_22BB1FA0C())
  {
    v90 = v79;
    v91 = swift_slowAlloc();
    *v91 = 134217984;
    *(v91 + 4) = v102;
    v92 = sub_22BB1F34C();
    _os_signpost_emit_with_name_impl(&dword_22BABB000, v88, v89, v92, "ResolveHierarchy", "%{public, signpost.description:begin_time}llu", v91, 0xCu);
    v93 = v91;
    v79 = v90;
    v84 = v117;
    MEMORY[0x23189DF20](v93, -1, -1);
  }

  (*(v105 + 8))(v84, v79);
  v85(v115, v116);
  v94 = v122;
  swift_beginAccess();
  if (*v94)
  {

    sub_22BAD162C(v121, v120);
    return;
  }

LABEL_35:
  __break(1u);
}

uint64_t sub_22BAD2394()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22BAD23CC()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t type metadata accessor for Snapshotter(uint64_t a1)
{
  result = qword_281424AB8;
  if (!qword_281424AB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22BAD2490()
{
  v71 = sub_22BB1E93C();
  v1 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v3 = &v47 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = type metadata accessor for FragmentCollator.RootElement(0);
  v61 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v65 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v57 = &v47 - v6;
  MEMORY[0x28223BE20](v7);
  v9 = (&v47 - v8);
  MEMORY[0x28223BE20](v10);
  v12 = (&v47 - v11);
  v13 = sub_22BB1EA5C();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v63 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v58 = v0;
  v16 = *(v0 + 16);
  v17 = MEMORY[0x277D84F90];
  v54 = *(v16 + 16);
  if (!v54)
  {
    return v17;
  }

  v53 = v16 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
  v52 = v14 + 16;
  v70 = (v1 + 88);
  v69 = *MEMORY[0x277D74668];
  v67 = *MEMORY[0x277D74640];
  v68 = (v1 + 8);
  v48 = (v14 + 8);

  v19 = 0;
  v59 = v12;
  v51 = v13;
  v50 = v14;
  v49 = result;
  while (1)
  {
    if (v19 >= *(result + 16))
    {
      goto LABEL_38;
    }

    v20 = *(v14 + 72);
    v56 = v19;
    (*(v14 + 16))(v63, v53 + v20 * v19, v13);
    v21 = sub_22BB1E9FC();
    v22 = *(v21 + 16);
    if (v22)
    {
      v73 = MEMORY[0x277D84F90];
      sub_22BAD2D70(0, v22, 0);
      v23 = v73;
      v66 = sub_22BB1E96C();
      v24 = *(v66 - 8);
      v25 = *(v24 + 16);
      v24 += 16;
      v64 = v25;
      v26 = (*(v24 + 64) + 32) & ~*(v24 + 64);
      v55 = v21;
      v27 = v21 + v26;
      v62 = v24;
      v60 = *(v24 + 56);
      do
      {
        v64(v12 + *(v72 + 20), v27, v66);
        sub_22BB1E9BC();
        v28 = v76;
        v12[1] = v75;
        v12[2] = v28;
        *v12 = v74;
        v73 = v23;
        v30 = *(v23 + 16);
        v29 = *(v23 + 24);
        if (v30 >= v29 >> 1)
        {
          sub_22BAD2D70((v29 > 1), v30 + 1, 1);
          v23 = v73;
        }

        *(v23 + 16) = v30 + 1;
        sub_22BABE43C(v12, v23 + ((*(v61 + 80) + 32) & ~*(v61 + 80)) + *(v61 + 72) * v30, type metadata accessor for FragmentCollator.RootElement);
        v27 += v60;
        --v22;
      }

      while (v22);
    }

    else
    {

      v23 = MEMORY[0x277D84F90];
    }

    v62 = *(v23 + 16);
    v55 = v23;
    if (v62)
    {
      break;
    }

LABEL_3:
    v19 = v56 + 1;
    v13 = v51;
    (*v48)(v63, v51);

    v14 = v50;
    result = v49;
    if (v19 == v54)
    {

      return v17;
    }
  }

  v31 = 0;
  v64 = ((*(v61 + 80) + 32) & ~*(v61 + 80));
  v60 = v64 + v23;
  v32 = *(v61 + 72);
  while (1)
  {
    v66 = v31;
    sub_22BABE3D4(&v60[v32 * v31], v9, type metadata accessor for FragmentCollator.RootElement);
    v34 = v17[2];
    if (v34)
    {
      break;
    }

LABEL_30:
    sub_22BABE3D4(v9, v65, type metadata accessor for FragmentCollator.RootElement);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v17 = sub_22BAD2F90(0, v17[2] + 1, 1, v17);
    }

    v46 = v17[2];
    v45 = v17[3];
    if (v46 >= v45 >> 1)
    {
      v17 = sub_22BAD2F90((v45 > 1), v46 + 1, 1, v17);
    }

    v12 = v59;
    v33 = v66;
    v17[2] = v46 + 1;
    sub_22BABE43C(v65, v64 + v17 + v46 * v32, type metadata accessor for FragmentCollator.RootElement);
LABEL_15:
    v31 = v33 + 1;
    sub_22BAD2FB8(v9, type metadata accessor for FragmentCollator.RootElement);
    if (v31 == v62)
    {
      goto LABEL_3;
    }
  }

  v35 = 0;
  v36 = v64;
  while (1)
  {
    v37 = *(v36 + v17);
    v38 = *(v36 + v17 + 32);
    v78 = *(v36 + v17 + 16);
    v79 = v38;
    v77 = v37;
    v39 = v9[1];
    v80 = *v9;
    v81 = v39;
    v82 = v9[2];
    if ((sub_22BB1F8DC() & 1) == 0)
    {
      goto LABEL_19;
    }

    sub_22BB1E94C();
    v40 = v71;
    v41 = (*v70)(v3, v71);
    if (v41 == v69)
    {
      break;
    }

    if (v41 == v67)
    {
      goto LABEL_24;
    }

    (*v68)(v3, v40);
LABEL_19:
    ++v35;
    v36 = (v36 + v32);
    if (v34 == v35)
    {
      goto LABEL_30;
    }
  }

  (*v68)(v3, v40);
LABEL_24:
  result = sub_22BB1E79C();
  if ((result & 1) == 0)
  {
    goto LABEL_19;
  }

  if (v35 >= v17[2])
  {
    __break(1u);
  }

  else
  {
    v42 = v57;
    sub_22BABE3D4(v36 + v17, v57, type metadata accessor for FragmentCollator.RootElement);
    v43 = sub_22BB1E6EC();
    sub_22BAD2FB8(v42, type metadata accessor for FragmentCollator.RootElement);
    v73 = v43;
    v44 = sub_22BB1E6EC();
    sub_22BAD3018(v44, &v73);

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_22BB10E24(v17);
      v17 = result;
    }

    if (v35 < v17[2])
    {
      sub_22BB1E6FC();
      v12 = v59;
      v33 = v66;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

void *sub_22BAD2D70(void *a1, int64_t a2, char a3)
{
  result = sub_22BAC49DC(a1, a2, a3, *v3, &qword_27D8DF2D8, &qword_22BB21FB0, type metadata accessor for FragmentCollator.RootElement);
  *v3 = result;
  return result;
}

void *sub_22BAD2DB4(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_22BAD2FB8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_22BAD3018(uint64_t a1, uint64_t *a2)
{
  v4 = sub_22BB1E93C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22BB1E96C();
  MEMORY[0x28223BE20](v8);
  MEMORY[0x28223BE20](v9);
  v37 = &v36 - v10;
  v14 = MEMORY[0x28223BE20](v11);
  v51 = &v36 - v15;
  v43 = *(a1 + 16);
  if (!v43)
  {
    return;
  }

  v16 = 0;
  v36 = a2;
  v17 = *a2;
  v19 = *(v12 + 16);
  v18 = v12 + 16;
  v49 = v19;
  v46 = (*(v18 + 64) + 32) & ~*(v18 + 64);
  v41 = v13;
  v42 = a1 + v46;
  v20 = *(v18 + 56);
  v21 = (v5 + 88);
  v52 = *MEMORY[0x277D74668];
  v50 = *MEMORY[0x277D74640];
  v22 = (v5 + 8);
  v44 = (v18 - 8);
  v45 = v8;
  v40 = (v18 + 16);
  v23 = v51;
  v48 = v18;
  while (1)
  {
    v47 = v16;
    v49(v23, v42 + v20 * v16, v8, v14);
    v26 = *(v17 + 2);
    if (v26)
    {
      break;
    }

LABEL_18:
    v33 = v41;
    v8 = v45;
    (v49)(v41, v51, v45);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v17 = sub_22BAD34A8(0, *(v17 + 2) + 1, 1, v17);
    }

    v35 = *(v17 + 2);
    v34 = *(v17 + 3);
    if (v35 >= v34 >> 1)
    {
      v17 = sub_22BAD34A8((v34 > 1), v35 + 1, 1, v17);
    }

    *(v17 + 2) = v35 + 1;
    (*v40)(&v17[v46 + v35 * v20], v33, v8);
    v24 = *v44;
LABEL_4:
    v25 = v47 + 1;
    v23 = v51;
    v24(v51, v8);
    v16 = v25;
    if (v25 == v43)
    {
      *v36 = v17;
      return;
    }
  }

  v27 = 0;
  v28 = v46;
  while (1)
  {
    sub_22BB1E94C();
    v29 = (*v21)(v7, v4);
    if (v29 == v52)
    {
      break;
    }

    if (v29 == v50)
    {
      goto LABEL_12;
    }

    (*v22)(v7, v4);
LABEL_8:
    ++v27;
    v28 += v20;
    if (v26 == v27)
    {
      goto LABEL_18;
    }
  }

  (*v22)(v7, v4);
LABEL_12:
  if ((sub_22BB1E79C() & 1) == 0)
  {
    goto LABEL_8;
  }

  if (v27 >= *(v17 + 2))
  {
    __break(1u);
  }

  else
  {
    v30 = v37;
    v31 = v45;
    (v49)(v37, &v17[v28], v45);
    v39 = sub_22BB1E6EC();
    v38 = *v44;
    v38(v30, v31);
    v53 = v39;
    v32 = sub_22BB1E6EC();
    sub_22BAD3018(v32, &v53);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v17 = sub_22BADC0C8(v17);
    }

    if (v27 < *(v17 + 2))
    {
      sub_22BB1E6FC();
      v8 = v45;
      v24 = v38;
      goto LABEL_4;
    }
  }

  __break(1u);
}