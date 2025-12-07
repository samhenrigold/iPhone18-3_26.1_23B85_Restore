uint64_t sub_24A5676CC(unint64_t a1, void (*a2)(uint64_t, uint64_t *, uint64_t, uint64_t))
{
  sub_24A508AE4(v2 + OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_findable, v55);
  sub_24A508FA4(&unk_27EF501B0, &unk_24A633B00);
  sub_24A508FA4(&unk_27EF52300, &qword_24A636230);
  v5 = swift_dynamicCast();
  if ((v5 & 1) == 0)
  {
    v59 = 0;
    memset(v58, 0, sizeof(v58));
  }

  MEMORY[0x28223BE20](v5);
  v48[2] = v58;
  v6 = sub_24A60DE9C(sub_24A5696B8, v48, a1);
  if (v6)
  {
    v7 = v6;
    if (qword_27EF4E9A0 != -1)
    {
      goto LABEL_30;
    }

    while (1)
    {
      v8 = sub_24A62E314();
      sub_24A506EB8(v8, qword_27EF5C118);
      v9 = v2;
      v10 = v7;
      v2 = sub_24A62E2F4();
      v11 = sub_24A62EF64();

      v12 = os_log_type_enabled(v2, v11);
      v49 = v10;
      if (v12)
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v55[0] = v15;
        *v13 = 138412802;
        *(v13 + 4) = v9;
        *v14 = v9;
        *(v13 + 12) = 2112;
        v16 = v9;
        v17 = [v10 discoveryToken];
        *(v13 + 14) = v17;
        v14[1] = v17;
        *(v13 + 22) = 2080;
        v54 = a2;
        type metadata accessor for RemovalReason(0);
        v18 = sub_24A62EC44();
        a2 = v19;
        v20 = sub_24A509BA8(v18, v19, v55);

        *(v13 + 24) = v20;
        _os_log_impl(&dword_24A503000, v2, v11, "🧭 FMR1NIContxt%@: nearby object discover token matches %@ removing. Reason: %s", v13, 0x20u);
        sub_24A508FA4(&qword_27EF4FED0, &unk_24A635E00);
        swift_arrayDestroy();
        MEMORY[0x24C21BBE0](v14, -1, -1);
        sub_24A508C54(v15);
        MEMORY[0x24C21BBE0](v15, -1, -1);
        MEMORY[0x24C21BBE0](v13, -1, -1);
      }

      *(&v9->isa + OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_itemLocalizerState) = 1;
      *(&v9->isa + OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_itemState) = 2;
      v7 = OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_subscriptions;
      swift_beginAccess();
      v53 = v9;
      v21 = *&v7[v9];
      v22 = v21 >> 62 ? sub_24A62F464() : *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (!v22)
      {
        break;
      }

      v23 = 0;
      v50 = v21 & 0xFFFFFFFFFFFFFF8;
      v51 = v21 & 0xC000000000000001;
      while (1)
      {
        if (v51)
        {
          v24 = MEMORY[0x24C21ACB0](v23, v21);
        }

        else
        {
          if (v23 >= *(v50 + 16))
          {
            goto LABEL_29;
          }

          v24 = *(v21 + 8 * v23 + 32);
        }

        v25 = v24;
        v7 = (v23 + 1);
        if (__OFADD__(v23, 1))
        {
          break;
        }

        v26 = &v24[OBJC_IVAR____TtC11FMFindingUI38FMNearbyInteractionManagerSubscription_subscriber];
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v2 = Strong;
          v28 = *(v26 + 1);
          ObjectType = swift_getObjectType();
          v52 = v25;
          v30 = v22;
          v31 = v21;
          v32 = ObjectType;
          v56 = type metadata accessor for FMNearbyInteractionLocalizerContext();
          v57 = &off_285DA58A0;
          v55[0] = v53;
          a2 = *(v28 + 32);
          v33 = v53;
          v34 = v32;
          v21 = v31;
          v22 = v30;
          v25 = v52;
          a2(1, v55, v34, v28);
          swift_unknownObjectRelease();
          sub_24A508C54(v55);
        }

        v35 = swift_unknownObjectWeakLoadStrong();
        if (v35)
        {
          v2 = v35;
          v36 = *(v26 + 1);
          v37 = swift_getObjectType();
          v56 = type metadata accessor for FMNearbyInteractionLocalizerContext();
          v57 = &off_285DA58A0;
          v55[0] = v53;
          a2 = (v36 + 48);
          v38 = *(v36 + 48);
          v39 = v53;
          v38(2, v55, v37, v36);
          swift_unknownObjectRelease();

          sub_24A508C54(v55);
        }

        else
        {
        }

        ++v23;
        if (v7 == v22)
        {
          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      swift_once();
    }

LABEL_22:

    v40 = v49;
  }

  else
  {
    if (qword_27EF4E9A0 != -1)
    {
      swift_once();
    }

    v41 = sub_24A62E314();
    sub_24A506EB8(v41, qword_27EF5C118);
    v42 = v2;
    v40 = sub_24A62E2F4();
    v43 = sub_24A62EF64();

    if (os_log_type_enabled(v40, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      *v44 = 138412290;
      *(v44 + 4) = v42;
      *v45 = v42;
      v46 = v42;
      _os_log_impl(&dword_24A503000, v40, v43, "🧭 FMR1NIContxt%@: nearby object discover token doesn't match", v44, 0xCu);
      sub_24A50D6A4(v45, &qword_27EF4FED0, &unk_24A635E00);
      MEMORY[0x24C21BBE0](v45, -1, -1);
      MEMORY[0x24C21BBE0](v44, -1, -1);
    }
  }

  return sub_24A50D6A4(v58, &unk_27EF501C0, &unk_24A636238);
}

uint64_t sub_24A567CB4(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = sub_24A62E2C4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v108 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = (&v108 - v11);
  MEMORY[0x28223BE20](v13);
  sub_24A508AE4(v2 + OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_findable, v114);
  sub_24A508FA4(&unk_27EF501B0, &unk_24A633B00);
  sub_24A508FA4(&unk_27EF52300, &qword_24A636230);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v118 = 0;
    memset(v117, 0, sizeof(v117));
  }

  if (a2)
  {
    v113 = v7;
    v110 = a2;
    v14 = [v110 discoveryToken];
    sub_24A569614(v117, v114);
    v15 = v115;
    if (v115)
    {
      v16 = v116;
      sub_24A50A204(v114, v115);
      v17 = (v16[2])(v15, v16);
      sub_24A508C54(v114);
      if (v14)
      {
        if (v17)
        {
          sub_24A50D7EC(0, &qword_27EF501E8, 0x277CD8A30);
          v18 = sub_24A62F164();

          if (v18)
          {
            goto LABEL_18;
          }

          goto LABEL_11;
        }

LABEL_10:

LABEL_11:
        goto LABEL_12;
      }

      v14 = v17;
      if (v17)
      {
        goto LABEL_10;
      }
    }

    else
    {
      sub_24A50D6A4(v114, &unk_27EF501C0, &unk_24A636238);
      if (v14)
      {
        goto LABEL_10;
      }
    }

LABEL_18:
    if (qword_27EF4E9A0 != -1)
    {
      goto LABEL_91;
    }

    while (1)
    {
      v27 = sub_24A62E314();
      v28 = sub_24A506EB8(v27, qword_27EF5C118);
      v29 = v3;
      v30 = a1;
      v31 = sub_24A62E2F4();
      v32 = sub_24A62EF64();

      v33 = os_log_type_enabled(v31, v32);
      v111 = v29;
      if (v33)
      {
        v34 = swift_slowAlloc();
        v112 = v28;
        v35 = v34;
        v36 = swift_slowAlloc();
        v108 = v36;
        v109 = swift_slowAlloc();
        v114[0] = v109;
        *v35 = 138412546;
        *(v35 + 4) = v29;
        *v36 = v29;
        *(v35 + 12) = 2080;
        v37 = v29;
        sub_24A62F0B4();
        v38 = sub_24A62EC44();
        v40 = sub_24A509BA8(v38, v39, v114);

        *(v35 + 14) = v40;
        _os_log_impl(&dword_24A503000, v31, v32, "🧭 FMR1NIContxt%@: Updated convergence status! %s", v35, 0x16u);
        v41 = v108;
        sub_24A50D6A4(v108, &qword_27EF4FED0, &unk_24A635E00);
        MEMORY[0x24C21BBE0](v41, -1, -1);
        v42 = v109;
        sub_24A508C54(v109);
        MEMORY[0x24C21BBE0](v42, -1, -1);
        MEMORY[0x24C21BBE0](v35, -1, -1);
      }

      sub_24A62F0B4();
      v43 = v113;
      v3 = v113 + 88;
      v44 = *(v113 + 88);
      if (v44(v12, v6) != *MEMORY[0x277CD89F0])
      {
        break;
      }

      (*(v43 + 96))(v12, v6);
      v45 = *v12;
      v46 = v111;

      v47 = sub_24A62E2F4();
      v48 = sub_24A62EF64();

      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        v114[0] = v51;
        *v49 = 138412546;
        *(v49 + 4) = v46;
        *v50 = v46;
        *(v49 + 12) = 2080;
        v52 = sub_24A62E2B4();
        v53 = v46;
        v54 = MEMORY[0x24C21A690](v45, v52);
        v56 = sub_24A509BA8(v54, v55, v114);

        *(v49 + 14) = v56;
        _os_log_impl(&dword_24A503000, v47, v48, "🧭 FMR1NIContxt%@: No longer converged!! What's the reason? %s", v49, 0x16u);
        sub_24A50D6A4(v50, &qword_27EF4FED0, &unk_24A635E00);
        MEMORY[0x24C21BBE0](v50, -1, -1);
        sub_24A508C54(v51);
        MEMORY[0x24C21BBE0](v51, -1, -1);
        MEMORY[0x24C21BBE0](v49, -1, -1);
      }

      v58 = sub_24A61B26C(v57);

      sub_24A508FA4(&qword_27EF501F0, &unk_24A636250);
      v59 = *(sub_24A62E2B4() - 8);
      v6 = *(v59 + 72);
      a1 = *(v59 + 80);
      v60 = swift_allocObject();
      *(v60 + 16) = xmmword_24A633830;
      sub_24A62E2A4();
      v61 = sub_24A565478(v60, v58);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v62 = *(v61 + 16);

      v111 = v46;
      if (v62)
      {

        v63 = OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_subscriptions;
        swift_beginAccess();
        v64 = *&v46[v63];
        if (!(v64 >> 62))
        {
          v65 = *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10);
          goto LABEL_27;
        }

LABEL_94:
        v65 = sub_24A62F464();
LABEL_27:

        if (v65)
        {
          v3 = 0;
          v112 = v64 & 0xFFFFFFFFFFFFFF8;
          v113 = v64 & 0xC000000000000001;
          while (1)
          {
            if (v113)
            {
              v66 = MEMORY[0x24C21ACB0](v3, v64);
            }

            else
            {
              if (v3 >= *(v112 + 16))
              {
                goto LABEL_85;
              }

              v66 = *(v64 + 8 * v3 + 32);
            }

            v67 = v66;
            v68 = v3 + 1;
            if (__OFADD__(v3, 1))
            {
              break;
            }

            v69 = &v66[OBJC_IVAR____TtC11FMFindingUI38FMNearbyInteractionManagerSubscription_subscriber];
            if (swift_unknownObjectWeakLoadStrong())
            {
              v70 = *(v69 + 1);
              ObjectType = swift_getObjectType();
              v115 = type metadata accessor for FMNearbyInteractionLocalizerContext();
              v116 = &off_285DA58A0;
              v114[0] = v111;
              v72 = *(v70 + 48);
              v73 = v111;
              v72(7, v114, ObjectType, v70);
              swift_unknownObjectRelease();

              sub_24A508C54(v114);
            }

            else
            {
            }

            ++v3;
            if (v68 == v65)
            {
              goto LABEL_82;
            }
          }

          __break(1u);
LABEL_85:
          __break(1u);
          goto LABEL_86;
        }

LABEL_82:

        goto LABEL_83;
      }

      v87 = sub_24A61B26C(v45);

      v88 = swift_allocObject();
      *(v88 + 16) = xmmword_24A633A00;
      sub_24A62E294();
      sub_24A62E284();
      v12 = sub_24A565478(v88, v87);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v89 = v12[2];

      if (!v89)
      {
        if (v46[OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_itemLocalizerState] != 1)
        {
          v97 = OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_subscriptions;
          swift_beginAccess();
          v64 = *&v46[v97];
          if (v64 >> 62)
          {
            v98 = sub_24A62F464();
          }

          else
          {
            v98 = *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          if (v98)
          {
            v99 = 0;
            v112 = v64 & 0xFFFFFFFFFFFFFF8;
            v113 = v64 & 0xC000000000000001;
            while (1)
            {
              if (v113)
              {
                v104 = MEMORY[0x24C21ACB0](v99, v64);
              }

              else
              {
                if (v99 >= *(v112 + 16))
                {
                  goto LABEL_93;
                }

                v104 = *(v64 + 8 * v99 + 32);
              }

              v105 = v104;
              v106 = v99 + 1;
              if (__OFADD__(v99, 1))
              {
                break;
              }

              v107 = &v104[OBJC_IVAR____TtC11FMFindingUI38FMNearbyInteractionManagerSubscription_subscriber];
              if (swift_unknownObjectWeakLoadStrong())
              {
                v100 = *(v107 + 1);
                v101 = swift_getObjectType();
                v115 = type metadata accessor for FMNearbyInteractionLocalizerContext();
                v116 = &off_285DA58A0;
                v114[0] = v111;
                v102 = *(v100 + 48);
                v103 = v111;
                v102(3, v114, v101, v100);
                swift_unknownObjectRelease();

                sub_24A508C54(v114);
              }

              else
              {
              }

              ++v99;
              if (v106 == v98)
              {
                goto LABEL_82;
              }
            }

            __break(1u);
LABEL_93:
            __break(1u);
            goto LABEL_94;
          }

          goto LABEL_82;
        }

LABEL_83:

        return sub_24A50D6A4(v117, &unk_27EF501C0, &unk_24A636238);
      }

      v90 = OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_subscriptions;
      swift_beginAccess();
      v9 = *&v46[v90];
      if (v9 >> 62)
      {
        v91 = sub_24A62F464();
      }

      else
      {
        v91 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (!v91)
      {
        goto LABEL_82;
      }

      v3 = 0;
      v112 = v9 & 0xFFFFFFFFFFFFFF8;
      v113 = v9 & 0xC000000000000001;
      while (1)
      {
        if (v113)
        {
          v94 = MEMORY[0x24C21ACB0](v3, v9);
        }

        else
        {
          if (v3 >= *(v112 + 16))
          {
            goto LABEL_90;
          }

          v94 = *(v9 + 8 * v3 + 32);
        }

        v95 = v94;
        v6 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          break;
        }

        v96 = &v94[OBJC_IVAR____TtC11FMFindingUI38FMNearbyInteractionManagerSubscription_subscriber];
        if (swift_unknownObjectWeakLoadStrong())
        {
          v12 = *(v96 + 1);
          a1 = swift_getObjectType();
          v115 = type metadata accessor for FMNearbyInteractionLocalizerContext();
          v116 = &off_285DA58A0;
          v114[0] = v111;
          v92 = v12[6];
          v93 = v111;
          v92(8, v114, a1, v12);
          swift_unknownObjectRelease();

          sub_24A508C54(v114);
        }

        else
        {
        }

        ++v3;
        if (v6 == v91)
        {
          goto LABEL_82;
        }
      }

      __break(1u);
LABEL_90:
      __break(1u);
LABEL_91:
      swift_once();
    }

    v74 = *(v43 + 8);
    v74(v12, v6);
    sub_24A62F0B4();
    if (v44(v9, v6) != *MEMORY[0x277CD8A10])
    {

      v74(v9, v6);
      return sub_24A50D6A4(v117, &unk_27EF501C0, &unk_24A636238);
    }

    v74(v9, v6);
    v75 = OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_subscriptions;
    v76 = v111;
    swift_beginAccess();
    v77 = *&v76[v75];
    if (v77 >> 62)
    {
      v78 = sub_24A62F464();
    }

    else
    {
      v78 = *((v77 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v78)
    {
      goto LABEL_82;
    }

    v79 = 0;
    v112 = v77 & 0xFFFFFFFFFFFFFF8;
    v113 = v77 & 0xC000000000000001;
    while (1)
    {
      if (v113)
      {
        v84 = MEMORY[0x24C21ACB0](v79, v77);
      }

      else
      {
        if (v79 >= *(v112 + 16))
        {
          goto LABEL_87;
        }

        v84 = *(v77 + 8 * v79 + 32);
      }

      v85 = v84;
      v3 = v79 + 1;
      if (__OFADD__(v79, 1))
      {
        break;
      }

      v86 = &v84[OBJC_IVAR____TtC11FMFindingUI38FMNearbyInteractionManagerSubscription_subscriber];
      if (swift_unknownObjectWeakLoadStrong())
      {
        v80 = *(v86 + 1);
        v81 = swift_getObjectType();
        v115 = type metadata accessor for FMNearbyInteractionLocalizerContext();
        v116 = &off_285DA58A0;
        v114[0] = v111;
        v82 = *(v80 + 48);
        v83 = v111;
        v82(3, v114, v81, v80);
        swift_unknownObjectRelease();

        sub_24A508C54(v114);
      }

      else
      {
      }

      ++v79;
      if (v3 == v78)
      {
        goto LABEL_82;
      }
    }

LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

LABEL_12:
  if (qword_27EF4E9A0 != -1)
  {
LABEL_88:
    swift_once();
  }

  v19 = sub_24A62E314();
  sub_24A506EB8(v19, qword_27EF5C118);
  v20 = v3;
  v21 = sub_24A62E2F4();
  v22 = sub_24A62EF64();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v23 = 138412290;
    *(v23 + 4) = v20;
    *v24 = v20;
    v25 = v20;
    _os_log_impl(&dword_24A503000, v21, v22, "🧭 FMR1NIContxt%@: nearby object discover token doesn't match", v23, 0xCu);
    sub_24A50D6A4(v24, &qword_27EF4FED0, &unk_24A635E00);
    MEMORY[0x24C21BBE0](v24, -1, -1);
    MEMORY[0x24C21BBE0](v23, -1, -1);
  }

  return sub_24A50D6A4(v117, &unk_27EF501C0, &unk_24A636238);
}

uint64_t sub_24A568ABC(void *a1, char a2)
{
  LOBYTE(v3) = a2;
  if (qword_27EF4E9A0 != -1)
  {
    goto LABEL_26;
  }

  while (1)
  {
    v5 = sub_24A62E314();
    sub_24A506EB8(v5, qword_27EF5C118);
    v6 = v2;
    v2 = sub_24A62E2F4();
    v7 = sub_24A62EF64();

    if (os_log_type_enabled(v2, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v32[0] = v10;
      *v8 = 138412802;
      *(v8 + 4) = v6;
      *v9 = v6;
      *(v8 + 12) = 2080;
      v32[5] = a1;
      type metadata accessor for NISessionSuspensionReason(0);
      v11 = v6;
      v12 = sub_24A62EC44();
      a1 = v13;
      v14 = sub_24A509BA8(v12, v13, v32);

      *(v8 + 14) = v14;
      *(v8 + 22) = 1024;
      *(v8 + 24) = v3 & 1;
      _os_log_impl(&dword_24A503000, v2, v7, "🧭 FMR1NIContxt%@: suspensionReasonEnded: %s, isNoLongerSuspended: %{BOOL}d", v8, 0x1Cu);
      sub_24A50D6A4(v9, &qword_27EF4FED0, &unk_24A635E00);
      MEMORY[0x24C21BBE0](v9, -1, -1);
      sub_24A508C54(v10);
      MEMORY[0x24C21BBE0](v10, -1, -1);
      MEMORY[0x24C21BBE0](v8, -1, -1);
    }

    if ((*(&v6->isa + OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_applicationIsInBackground) & 1) == 0)
    {
      v15 = *(&v6->isa + OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_niConfiguration);
      objc_opt_self();
      v16 = swift_dynamicCastObjCClass();
      if (v16)
      {
        a1 = v16;
        v17 = v15;
        if ([a1 preferredUpdateRate] == 3)
        {
          v2 = v6;
          sub_24A55FD50();

          goto LABEL_10;
        }
      }

      v2 = v6;
      sub_24A55F608();
    }

LABEL_10:
    v18 = OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_subscriptions;
    swift_beginAccess();
    v19 = *(&v6->isa + v18);
    v31 = v6;
    v20 = v19 >> 62 ? sub_24A62F464() : *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (!v20)
    {
    }

    v21 = 0;
    v30 = v3 ^ 1;
    while (1)
    {
      if ((v19 & 0xC000000000000001) != 0)
      {
        v22 = MEMORY[0x24C21ACB0](v21, v19);
      }

      else
      {
        if (v21 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_25;
        }

        v22 = *(v19 + 8 * v21 + 32);
      }

      v3 = v22;
      v23 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      v24 = &v22[OBJC_IVAR____TtC11FMFindingUI38FMNearbyInteractionManagerSubscription_subscriber];
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v2 = Strong;
        a1 = *(v24 + 1);
        ObjectType = swift_getObjectType();
        v32[3] = type metadata accessor for FMNearbyInteractionLocalizerContext();
        v32[4] = &off_285DA58A0;
        v32[0] = v31;
        v27 = a1[8];
        v28 = v31;
        v27(v30 & 1, v32, ObjectType, a1);
        swift_unknownObjectRelease();

        sub_24A508C54(v32);
      }

      else
      {
      }

      ++v21;
      if (v23 == v20)
      {
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    swift_once();
  }
}

uint64_t sub_24A568E74(unint64_t a1)
{
  if (qword_27EF4E9A0 != -1)
  {
    goto LABEL_37;
  }

  while (1)
  {
    v3 = sub_24A62E314();
    sub_24A506EB8(v3, qword_27EF5C118);
    v4 = v1;
    v1 = sub_24A62E2F4();
    v5 = sub_24A62EF64();

    if (os_log_type_enabled(v1, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v39[0] = v8;
      *v6 = 138412546;
      *(v6 + 4) = v4;
      *v7 = v4;
      *(v6 + 12) = 2080;
      v42 = a1;
      type metadata accessor for NISessionSuspensionReason(0);
      v9 = v4;
      v10 = sub_24A62EC44();
      v12 = sub_24A509BA8(v10, v11, v39);

      *(v6 + 14) = v12;
      _os_log_impl(&dword_24A503000, v1, v5, "🧭 FMR1NIContxt%@: suspendedWithReason: %s", v6, 0x16u);
      sub_24A50D6A4(v7, &qword_27EF4FED0, &unk_24A635E00);
      MEMORY[0x24C21BBE0](v7, -1, -1);
      sub_24A508C54(v8);
      MEMORY[0x24C21BBE0](v8, -1, -1);
      MEMORY[0x24C21BBE0](v6, -1, -1);
    }

    v38 = v4;
    if (a1 != 8)
    {
      break;
    }

    *(&v4->isa + OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_itemState) = 6;
    v13 = OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_subscriptions;
    swift_beginAccess();
    a1 = *(&v4->isa + v13);
    if (a1 >> 62)
    {
      v14 = sub_24A62F464();
    }

    else
    {
      v14 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v14)
    {
    }

    for (i = 0; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x24C21ACB0](i, a1);
      }

      else
      {
        if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_35;
        }

        v16 = *(a1 + 8 * i + 32);
      }

      v17 = v16;
      v18 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      v19 = &v16[OBJC_IVAR____TtC11FMFindingUI38FMNearbyInteractionManagerSubscription_subscriber];
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v1 = Strong;
        v21 = *(v19 + 1);
        ObjectType = swift_getObjectType();
        v40 = type metadata accessor for FMNearbyInteractionLocalizerContext();
        v41 = &off_285DA58A0;
        v39[0] = v38;
        v23 = *(v21 + 48);
        v24 = v38;
        v23(6, v39, ObjectType, v21);
        swift_unknownObjectRelease();

        sub_24A508C54(v39);
      }

      else
      {
      }

      if (v18 == v14)
      {
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    swift_once();
  }

  v25 = OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_subscriptions;
  swift_beginAccess();
  a1 = *(&v4->isa + v25);
  if (a1 >> 62)
  {
    v26 = sub_24A62F464();
  }

  else
  {
    v26 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v26)
  {
    v27 = 0;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v28 = MEMORY[0x24C21ACB0](v27, a1);
      }

      else
      {
        if (v27 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_36;
        }

        v28 = *(a1 + 8 * v27 + 32);
      }

      v29 = v28;
      v30 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        goto LABEL_34;
      }

      v31 = &v28[OBJC_IVAR____TtC11FMFindingUI38FMNearbyInteractionManagerSubscription_subscriber];
      v32 = swift_unknownObjectWeakLoadStrong();
      if (v32)
      {
        v1 = v32;
        v33 = *(v31 + 1);
        v34 = swift_getObjectType();
        v40 = type metadata accessor for FMNearbyInteractionLocalizerContext();
        v41 = &off_285DA58A0;
        v39[0] = v38;
        v35 = *(v33 + 64);
        v36 = v38;
        v35(1, v39, v34, v33);
        swift_unknownObjectRelease();

        sub_24A508C54(v39);
      }

      else
      {
      }

      ++v27;
    }

    while (v30 != v26);
  }

  *(&v38->isa + OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_activity) = 4;
  return result;
}

uint64_t sub_24A5692FC(void *a1)
{
  v2 = a1;
  v3 = *&v1[OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_error];
  *&v1[OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_error] = a1;
  v4 = a1;

  if (qword_27EF4E9A0 != -1)
  {
    goto LABEL_20;
  }

  while (1)
  {
    v5 = sub_24A62E314();
    sub_24A506EB8(v5, qword_27EF5C118);
    v6 = v2;
    v7 = v1;
    v8 = sub_24A62E2F4();
    v9 = sub_24A62EF44();

    v29 = v7;
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412546;
      *(v10 + 4) = v7;
      *v11 = v7;
      *(v10 + 12) = 2112;
      v12 = v2;
      v13 = v7;
      v14 = _swift_stdlib_bridgeErrorToNSError();
      *(v10 + 14) = v14;
      v11[1] = v14;
      _os_log_impl(&dword_24A503000, v8, v9, "🧭 FMR1NIContxt%@: item localizer failed (%@)", v10, 0x16u);
      sub_24A508FA4(&qword_27EF4FED0, &unk_24A635E00);
      swift_arrayDestroy();
      MEMORY[0x24C21BBE0](v11, -1, -1);
      MEMORY[0x24C21BBE0](v10, -1, -1);
    }

    v28 = v2;

    v1 = v7;
    sub_24A560664();
    v15 = OBJC_IVAR____TtC11FMFindingUI35FMNearbyInteractionLocalizerContext_subscriptions;
    swift_beginAccess();
    v16 = *&v7[v15];
    v2 = v16 >> 62 ? sub_24A62F464() : *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (!v2)
    {
    }

    for (i = 0; ; ++i)
    {
      if ((v16 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x24C21ACB0](i, v16);
      }

      else
      {
        if (i >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v18 = *(v16 + 8 * i + 32);
      }

      v19 = v18;
      v20 = (i + 1);
      if (__OFADD__(i, 1))
      {
        break;
      }

      v21 = &v18[OBJC_IVAR____TtC11FMFindingUI38FMNearbyInteractionManagerSubscription_subscriber];
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v1 = Strong;
        v23 = *(v21 + 1);
        ObjectType = swift_getObjectType();
        v30[3] = type metadata accessor for FMNearbyInteractionLocalizerContext();
        v30[4] = &off_285DA58A0;
        v30[0] = v29;
        v25 = *(v23 + 40);
        v26 = v29;
        v25(v28, v30, ObjectType, v23);
        swift_unknownObjectRelease();

        sub_24A508C54(v30);
      }

      else
      {
      }

      if (v20 == v2)
      {
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    swift_once();
  }
}

uint64_t sub_24A569614(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A508FA4(&unk_27EF501C0, &unk_24A636238);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24A569684@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_24A565618(a1, a2, **(v3 + 16), *(v3 + 24));
  if (!v4)
  {
    *a3 = result;
  }

  return result;
}

id sub_24A5696D8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = sub_24A62E214();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = &v4[OBJC_IVAR____TtC11FMFindingUI38FMNearbyInteractionManagerSubscription_subscriber];
  *&v4[OBJC_IVAR____TtC11FMFindingUI38FMNearbyInteractionManagerSubscription_subscriber + 8] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v4[OBJC_IVAR____TtC11FMFindingUI38FMNearbyInteractionManagerSubscription_wantsSession] = 0;
  sub_24A62E204();
  (*(v8 + 32))(&v4[OBJC_IVAR____TtC11FMFindingUI38FMNearbyInteractionManagerSubscription_identifier], v10, v7);
  *(v11 + 1) = a2;
  swift_unknownObjectWeakAssign();
  sub_24A508AE4(a3, &v4[OBJC_IVAR____TtC11FMFindingUI38FMNearbyInteractionManagerSubscription_findable]);
  swift_unknownObjectWeakAssign();
  v12 = type metadata accessor for FMNearbyInteractionManagerSubscription(0);
  v15.receiver = v4;
  v15.super_class = v12;
  v13 = objc_msgSendSuper2(&v15, sel_init);
  sub_24A508C54(a3);
  return v13;
}

unint64_t sub_24A569868(unint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  result = sub_24A565964(*a1, a2);
  v7 = result;
  if (v2)
  {
    return v7;
  }

  if (v6)
  {
    if (v4 >> 62)
    {
      return sub_24A62F464();
    }

    return *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v8 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
    return result;
  }

  while (1)
  {
    if (v4 >> 62)
    {
      if (v8 == sub_24A62F464())
      {
        return v7;
      }
    }

    else if (v8 == *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v7;
    }

    if ((v4 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x24C21ACB0](v8, v4);
      goto LABEL_15;
    }

    if ((v8 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v8 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_40;
    }

    v10 = *(v4 + 8 * v8 + 32);
LABEL_15:
    v11 = v10;
    v12 = sub_24A62E1E4();

    if ((v12 & 1) == 0)
    {
      if (v7 != v8)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v13 = MEMORY[0x24C21ACB0](v7, v4);
          v14 = MEMORY[0x24C21ACB0](v8, v4);
        }

        else
        {
          if ((v7 & 0x8000000000000000) != 0)
          {
            goto LABEL_44;
          }

          v15 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v7 >= v15)
          {
            goto LABEL_45;
          }

          if (v8 >= v15)
          {
            goto LABEL_46;
          }

          v16 = *(v4 + 32 + 8 * v8);
          v13 = *(v4 + 32 + 8 * v7);
          v14 = v16;
        }

        v17 = v14;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v4 & 0x8000000000000000) != 0 || (v4 & 0x4000000000000000) != 0)
        {
          v4 = sub_24A5EB5C8();
          v18 = (v4 >> 62) & 1;
        }

        else
        {
          LODWORD(v18) = 0;
        }

        v19 = v4 & 0xFFFFFFFFFFFFFF8;
        v20 = *((v4 & 0xFFFFFFFFFFFFFF8) + 8 * v7 + 0x20);
        *((v4 & 0xFFFFFFFFFFFFFF8) + 8 * v7 + 0x20) = v17;

        if ((v4 & 0x8000000000000000) != 0 || v18)
        {
          v4 = sub_24A5EB5C8();
          v19 = v4 & 0xFFFFFFFFFFFFFF8;
          if ((v8 & 0x8000000000000000) != 0)
          {
LABEL_37:
            __break(1u);
            return v7;
          }
        }

        else if ((v8 & 0x8000000000000000) != 0)
        {
          goto LABEL_37;
        }

        if (v8 >= *(v19 + 16))
        {
          goto LABEL_43;
        }

        v21 = v19 + 8 * v8;
        v22 = *(v21 + 32);
        *(v21 + 32) = v13;

        *a1 = v4;
      }

      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        goto LABEL_42;
      }
    }

    v9 = __OFADD__(v8++, 1);
    if (v9)
    {
      goto LABEL_41;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
  return sub_24A62F464();
}

uint64_t sub_24A569AD8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_24A569B20()
{
  result = qword_27EF4F9F0;
  if (!qword_27EF4F9F0)
  {
    sub_24A50E1E0(&unk_27EF50240, &unk_24A634A08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF4F9F0);
  }

  return result;
}

id sub_24A569BAC()
{
  v0 = objc_allocWithZone(type metadata accessor for BlurBackgroundView());

  return [v0 init];
}

void sub_24A569BE0(void *a1)
{
  v1 = [a1 layer];
  v2 = sub_24A62E274();
  v3 = sub_24A62EBE4();
  [v1 setValue:v2 forKeyPath:v3];
}

uint64_t sub_24A569C88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24A56A1F8();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_24A569CEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24A56A1F8();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_24A569D50(uint64_t a1)
{
  sub_24A56A1F8();
  sub_24A62E5D4();
  __break(1u);
}

id sub_24A569DB4()
{
  v20.receiver = v0;
  v20.super_class = type metadata accessor for BlurBackgroundView();
  v1 = objc_msgSendSuper2(&v20, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v2 = *MEMORY[0x277CDA328];
  v3 = objc_allocWithZone(MEMORY[0x277CD9EA0]);
  v4 = v1;
  v5 = [v3 initWithType_];
  v6 = sub_24A62EDB4();
  v7 = sub_24A62EBE4();
  [v5 setValue:v6 forKey:v7];

  v8 = v4;
  v9 = [v8 layer];
  objc_opt_self();
  v10 = swift_dynamicCastObjCClassUnconditional();
  v11 = [objc_allocWithZone(MEMORY[0x277CD9EA0]) initWithType_];
  [v10 setCompositingFilter_];

  v12 = [v8 layer];
  objc_opt_self();
  v13 = swift_dynamicCastObjCClassUnconditional();
  sub_24A508FA4(&qword_27EF4FA78, &qword_24A636E60);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_24A633830;
  *(v14 + 56) = sub_24A50D7EC(0, &qword_27EF502B0, 0x277CD9EA0);
  *(v14 + 32) = v5;
  v15 = v5;
  v16 = sub_24A62ED54();

  [v13 setFilters_];

  v17 = [v8 layer];
  [v17 setAllowsHitTesting_];

  v18 = [objc_opt_self() clearColor];
  [v8 setBackgroundColor_];

  return v8;
}

id sub_24A56A138()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BlurBackgroundView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_24A56A1A4()
{
  result = qword_27EF502C0;
  if (!qword_27EF502C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF502C0);
  }

  return result;
}

unint64_t sub_24A56A1F8()
{
  result = qword_27EF502C8;
  if (!qword_27EF502C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF502C8);
  }

  return result;
}

uint64_t sub_24A56A260()
{
  v0 = sub_24A62E314();
  sub_24A56A3FC(v0, qword_27EF5C100);
  sub_24A506EB8(v0, qword_27EF5C100);
  return sub_24A62E304();
}

uint64_t sub_24A56A2E0()
{
  v0 = sub_24A62E314();
  sub_24A56A3FC(v0, qword_27EF5C118);
  sub_24A506EB8(v0, qword_27EF5C118);
  return sub_24A62E304();
}

uint64_t sub_24A56A384(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_24A62E314();
  sub_24A56A3FC(v5, a2);
  sub_24A506EB8(v5, a2);
  return sub_24A62E304();
}

uint64_t *sub_24A56A3FC(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t FMR1WKRotationModel.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = [objc_allocWithZone(MEMORY[0x277CC1CD8]) init];
  *(v0 + 40) = 0;
  *(v0 + 48) = 1;
  return v0;
}

uint64_t FMR1WKRotationModel.init()()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = [objc_allocWithZone(MEMORY[0x277CC1CD8]) init];
  *(v0 + 40) = 0;
  *(v0 + 48) = 1;
  return v0;
}

void sub_24A56A504(void *a1)
{
  if (a1)
  {
    if (*(v1 + 16))
    {

      v3 = a1;
      [v3 heading];
      v5 = v4;
      if (*(v1 + 48))
      {
LABEL_18:

        *(v1 + 40) = v5;
        *(v1 + 48) = 0;
        return;
      }

      v6 = v4 - *(v1 + 40);
      if (v6 >= -180.0)
      {
        if (v6 <= 180.0)
        {
          goto LABEL_16;
        }

        v7 = -360.0;
      }

      else
      {
        v7 = 360.0;
      }

      v6 = v6 + v7;
LABEL_16:
      v13 = *(v1 + 24);
      v14 = round((v6 + v13) * 100.0) / 100.0;
      if (v14 != v13)
      {
        v15 = v14;
        *(v1 + 24) = v15;
        sub_24A584370();
        swift_getKeyPath();
        swift_getKeyPath();
        sub_24A62E354();

        swift_getKeyPath();
        swift_getKeyPath();

        sub_24A62E364();
        sub_24A589A98(v17);
      }

      goto LABEL_18;
    }

    v8 = qword_27EF4E990;
    v16 = a1;
    if (v8 != -1)
    {
      swift_once();
    }

    v9 = sub_24A62E314();
    sub_24A506EB8(v9, qword_27EF5C0E8);
    v10 = sub_24A62E2F4();
    v11 = sub_24A62EF64();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_24A503000, v10, v11, "VFXManager not defined.  Unable to update UI", v12, 2u);
      MEMORY[0x24C21BBE0](v12, -1, -1);
    }
  }
}

void sub_24A56A7C8()
{
  v1 = v0;
  if (qword_27EF4E990 != -1)
  {
    swift_once();
  }

  v2 = sub_24A62E314();
  sub_24A506EB8(v2, qword_27EF5C0E8);
  v3 = sub_24A62E2F4();
  v4 = sub_24A62EF64();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_24A503000, v3, v4, "starting motion updates", v5, 2u);
    MEMORY[0x24C21BBE0](v5, -1, -1);
  }

  [*(v1 + 32) setDeviceMotionUpdateInterval_];
  v6 = *(v1 + 32);
  v7 = objc_opt_self();
  v8 = v6;
  v9 = [v7 mainQueue];
  v10 = swift_allocObject();
  swift_weakInit();
  v12[4] = sub_24A56AC40;
  v12[5] = v10;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_24A5D30FC;
  v12[3] = &unk_285DA5910;
  v11 = _Block_copy(v12);

  [v8 startDeviceMotionUpdatesUsingReferenceFrame:4 toQueue:v9 withHandler:v11];
  _Block_release(v11);
}

double sub_24A56A9BC(void *a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_24A56A504(a1);
  }

  return result;
}

id sub_24A56AA1C()
{
  v1 = v0;
  if (qword_27EF4E990 != -1)
  {
    swift_once();
  }

  v2 = sub_24A62E314();
  sub_24A506EB8(v2, qword_27EF5C0E8);
  v3 = sub_24A62E2F4();
  v4 = sub_24A62EF64();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_24A503000, v3, v4, "Stopping motion updates", v5, 2u);
    MEMORY[0x24C21BBE0](v5, -1, -1);
  }

  v6 = *(v1 + 32);

  return [v6 stopDeviceMotionUpdates];
}

uint64_t FMR1WKRotationModel.deinit()
{

  return v0;
}

uint64_t FMR1WKRotationModel.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_24A56AB7C@<X0>(uint64_t *a3@<X8>)
{
  type metadata accessor for FMR1WKRotationModel();
  result = sub_24A62E334();
  *a3 = result;
  return result;
}

uint64_t sub_24A56AC08()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24A56AC48(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

__n128 sub_24A56AC78(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_24A56AC9C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24A56ACE4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_24A56AD48()
{
  v0 = [objc_opt_self() whiteColor];
  v1 = [v0 colorWithAlphaComponent_];

  xmmword_27EF502D0 = xmmword_24A6364F0;
  qword_27EF502E0 = 16;
  *algn_27EF502E8 = xmmword_24A636500;
  *(&xmmword_27EF502F0 + 8) = xmmword_24A636510;
  qword_27EF50308 = v1;
  result = 0.5;
  xmmword_27EF50310 = xmmword_24A636520;
  qword_27EF50320 = 0x4040000000000000;
  return result;
}

double sub_24A56ADF8()
{
  v0 = [objc_opt_self() whiteColor];
  v1 = [v0 colorWithAlphaComponent_];

  xmmword_27EF50328 = xmmword_24A6364F0;
  qword_27EF50338 = 16;
  unk_27EF50340 = xmmword_24A636500;
  *(&xmmword_27EF50348 + 8) = xmmword_24A636510;
  qword_27EF50360 = v1;
  result = 0.5;
  xmmword_27EF50368 = xmmword_24A636520;
  qword_27EF50378 = 0x4040000000000000;
  return result;
}

uint64_t sub_24A56AFEC(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t), void (*a4)(uint64_t, uint64_t), void (*a5)(void))
{
  v6 = v5;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v5;
    a3(a1, a2, isUniquelyReferenced_nonNull_native);
    v11 = sub_24A62E214();
    result = (*(*(v11 - 8) + 8))(a2, v11);
    *v5 = v26;
  }

  else
  {
    v15 = sub_24A515AC8(a2);
    if (v16)
    {
      v17 = v15;
      v18 = swift_isUniquelyReferenced_nonNull_native();
      v19 = *v5;
      v27 = *v6;
      if (!v18)
      {
        a5();
        v19 = v27;
      }

      v20 = *(v19 + 48);
      v21 = sub_24A62E214();
      v22 = *(v21 - 8);
      v23 = *(v22 + 8);
      v23(v20 + *(v22 + 72) * v17, v21);

      a4(v17, v19);
      result = (v23)(a2, v21);
      *v6 = v19;
    }

    else
    {
      v24 = sub_24A62E214();
      v25 = *(*(v24 - 8) + 8);

      return v25(a2, v24);
    }
  }

  return result;
}

unint64_t sub_24A56B280@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_24A575B08(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_24A56B35C@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_24A575B18(*a1);
  *a2 = result;
  return result;
}

void *sub_24A56B438(void *a1, char *a2)
{
  v2[OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_itemLocalizerState] = 0;
  v2[OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_itemState] = 0;
  v2[OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_activity] = 0;
  v2[OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_hasCalledConfigure] = 0;
  v2[OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_rangingOnly] = 0;
  v2[OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_stopAsked] = 0;
  *&v2[OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_error] = 0;
  *&v2[OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_releaseItemLocalizerWorkItem] = 0;
  *&v2[OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_subscriptions] = MEMORY[0x277D84F90];
  v4 = *a2;
  v5 = &v2[OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_backgroundTaskID];
  *v5 = 0;
  v5[8] = 1;
  *&v2[OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_updateRangeEstimateLogCounter] = 0;
  v6 = &v2[OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_lastLoggedRangeEstimate];
  *v6 = 0;
  v6[4] = 1;
  v7 = &v2[OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_incrementItemLocalizerHandler];
  *v7 = 0;
  v7[1] = 0;
  v8 = &v2[OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_decrementItemLocalizerHandler];
  *v8 = 0;
  v8[1] = 0;
  v2[OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_applicationIsInBackground] = 0;
  *&v2[OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_itemLocalizer] = 0;
  sub_24A508AE4(a1, &v2[OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_findable]);
  v2[OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_connectionContext] = v4;
  v24.receiver = v2;
  v24.super_class = type metadata accessor for FMR1ItemLocalizerContext();
  v9 = objc_msgSendSuper2(&v24, sel_init);
  v10 = qword_27EF4E9A0;
  v11 = v9;
  if (v10 != -1)
  {
    swift_once();
  }

  v12 = sub_24A62E314();
  sub_24A506EB8(v12, qword_27EF5C118);
  v13 = sub_24A62E2F4();
  v14 = sub_24A62EF64();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v23 = v16;
    *v15 = 136315138;
    v17 = [v11 description];
    v18 = sub_24A62EC14();
    v20 = v19;

    v21 = sub_24A509BA8(v18, v20, &v23);

    *(v15 + 4) = v21;
    _os_log_impl(&dword_24A503000, v13, v14, "🧭 FMR1PrxContxt%s: init", v15, 0xCu);
    sub_24A508C54(v16);
    MEMORY[0x24C21BBE0](v16, -1, -1);
    MEMORY[0x24C21BBE0](v15, -1, -1);
  }

  sub_24A508C54(a1);
  return v11;
}

uint64_t sub_24A56B750()
{
  v1 = v0;
  v2 = sub_24A62F784();
  v4 = v3;
  sub_24A62F384();

  sub_24A516B88(9, v2, v4);
  v6 = v5;
  v8 = v7;

  v24 = 7876668;
  v25 = 0xE300000000000000;
  v21[2] = v6;
  v22 = v8;
  sub_24A55B6E8();
  sub_24A62ECA4();

  v21[0] = 7876668;
  v21[1] = 0xE300000000000000;

  MEMORY[0x24C21A5D0](15939, 0xE200000000000000);

  MEMORY[0x24C21A5D0](7876668, 0xE300000000000000);

  MEMORY[0x24C21A5D0](0x25202C2740252720, 0xEE003E6275732064);
  sub_24A508FA4(&qword_27EF50530, qword_24A636270);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_24A633A00;
  sub_24A508AE4(v0 + OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_findable, v21);
  v10 = v22;
  v11 = v23;
  sub_24A50A204(v21, v22);
  v12 = (*(v11 + 8))(v10, v11);
  v14 = v13;
  *(v9 + 56) = MEMORY[0x277D837D0];
  *(v9 + 64) = sub_24A508FEC();
  *(v9 + 32) = v12;
  *(v9 + 40) = v14;
  v15 = OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_subscriptions;
  swift_beginAccess();
  v16 = *(v1 + v15);
  if (v16 >> 62)
  {
    v17 = sub_24A62F464();
  }

  else
  {
    v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v18 = MEMORY[0x277D83C10];
  *(v9 + 96) = MEMORY[0x277D83B88];
  *(v9 + 104) = v18;
  *(v9 + 72) = v17;
  sub_24A508C54(v21);
  v19 = sub_24A62EC24();

  return v19;
}

uint64_t sub_24A56BAB8(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_subscriptions;
  swift_beginAccess();
  v15 = v1;
  v3 = *&v1[v2];
  if (v3 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_24A62F464())
  {

    if (!i)
    {
      break;
    }

    for (j = 0; ; ++j)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x24C21ACB0](j, v3);
      }

      else
      {
        if (j >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v6 = *(v3 + 8 * j + 32);
      }

      v7 = v6;
      v8 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v9 = &v6[OBJC_IVAR____TtC11FMFindingUI32FMR1ProximityManagerSubscription_subscriber];
      if (swift_unknownObjectWeakLoadStrong())
      {
        v10 = *(v9 + 1);
        ObjectType = swift_getObjectType();
        v16[3] = type metadata accessor for FMR1ItemLocalizerContext();
        v16[4] = &off_285DA5BB8;
        v12 = v15;

        v16[0] = v12;
        (*(v10 + 16))(a1, v16, ObjectType, v10);
        swift_unknownObjectRelease();
        sub_24A508C54(v16);
      }

      else
      {
      }

      if (v8 == i)
      {
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }
}

uint64_t sub_24A56BCB8(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_subscriptions;
  swift_beginAccess();
  v15 = v1;
  v3 = *&v1[v2];
  if (v3 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_24A62F464())
  {

    if (!i)
    {
      break;
    }

    for (j = 0; ; ++j)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x24C21ACB0](j, v3);
      }

      else
      {
        if (j >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v6 = *(v3 + 8 * j + 32);
      }

      v7 = v6;
      v8 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v9 = &v6[OBJC_IVAR____TtC11FMFindingUI32FMR1ProximityManagerSubscription_subscriber];
      if (swift_unknownObjectWeakLoadStrong())
      {
        v10 = *(v9 + 1);
        ObjectType = swift_getObjectType();
        v16[3] = type metadata accessor for FMR1ItemLocalizerContext();
        v16[4] = &off_285DA5BB8;
        v12 = v15;

        v16[0] = v12;
        (*(v10 + 24))(a1, v16, ObjectType, v10);
        swift_unknownObjectRelease();
        sub_24A508C54(v16);
      }

      else
      {
      }

      if (v8 == i)
      {
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }
}

uint64_t sub_24A56BEB8(unint64_t a1)
{
  v2 = sub_24A575AF0(a1);
  if (v2 == 5)
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  v36 = v3;
  v1[OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_itemLocalizerState] = v3;
  if (qword_27EF4E9A0 != -1)
  {
    goto LABEL_35;
  }

  while (1)
  {
    v4 = sub_24A62E314();
    sub_24A506EB8(v4, qword_27EF5C118);
    v5 = v1;
    v6 = sub_24A62E2F4();
    v7 = sub_24A62EF64();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v38[0] = v10;
      v11 = 0xE700000000000000;
      v12 = 0x6E776F6E6B6E75;
      *v8 = 138412546;
      *(v8 + 4) = v5;
      *v9 = v5;
      *(v8 + 12) = 2080;
      v13 = 0xE500000000000000;
      v14 = 0x7964616572;
      v15 = 0xE500000000000000;
      v16 = 0x726F727265;
      if (v36 != 3)
      {
        v16 = 0x666F206574617473;
        v15 = 0xE900000000000066;
      }

      if (v36 != 2)
      {
        v14 = v16;
        v13 = v15;
      }

      if (v36)
      {
        v12 = 0x6461657220746F6ELL;
        v11 = 0xE900000000000079;
      }

      if (v36 <= 1u)
      {
        v17 = v12;
      }

      else
      {
        v17 = v14;
      }

      if (v36 <= 1u)
      {
        v18 = v11;
      }

      else
      {
        v18 = v13;
      }

      v19 = v10;
      v20 = v5;
      v21 = sub_24A509BA8(v17, v18, v38);

      *(v8 + 14) = v21;
      _os_log_impl(&dword_24A503000, v6, v7, "🧭 FMR1PrxContxt%@: %s for ranging", v8, 0x16u);
      sub_24A50D6A4(v9, &qword_27EF4FED0, &unk_24A635E00);
      MEMORY[0x24C21BBE0](v9, -1, -1);
      sub_24A508C54(v19);
      MEMORY[0x24C21BBE0](v19, -1, -1);
      MEMORY[0x24C21BBE0](v8, -1, -1);
    }

    v1 = v5;
    sub_24A5708B8();
    v37 = v5;
    v22 = OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_subscriptions;
    swift_beginAccess();
    v23 = *&v37[v22];
    v24 = v23 >> 62 ? sub_24A62F464() : *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (!v24)
    {
    }

    for (i = 0; ; ++i)
    {
      if ((v23 & 0xC000000000000001) != 0)
      {
        v26 = MEMORY[0x24C21ACB0](i, v23);
      }

      else
      {
        if (i >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_34;
        }

        v26 = *(v23 + 8 * i + 32);
      }

      v27 = v26;
      v28 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      v29 = &v26[OBJC_IVAR____TtC11FMFindingUI32FMR1ProximityManagerSubscription_subscriber];
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v1 = Strong;
        v31 = *(v29 + 1);
        ObjectType = swift_getObjectType();
        v38[3] = type metadata accessor for FMR1ItemLocalizerContext();
        v38[4] = &off_285DA5BB8;
        v38[0] = v37;
        v33 = *(v31 + 32);
        v34 = v37;
        v33(v36, v38, ObjectType, v31);
        swift_unknownObjectRelease();

        sub_24A508C54(v38);
      }

      else
      {
      }

      if (v28 == v24)
      {
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    swift_once();
  }
}

void sub_24A56C2C8(uint64_t a1)
{
  if (a1 == 3)
  {
    v3 = 3;
    v2 = &OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_activity;
    v4 = 3;
  }

  else if (a1 == 2)
  {
    v3 = 0;
    v4 = 2;
    v1[OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_activity] = 2;
    v2 = &OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_stopAsked;
  }

  else
  {
    v2 = &OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_activity;
    if (a1 != 1)
    {
      v2 = &OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_activity;
    }

    v3 = a1 == 1;
    v4 = a1 == 1;
  }

  v1[*v2] = v3;
  if (qword_27EF4E9A0 != -1)
  {
    swift_once();
  }

  v5 = sub_24A62E314();
  sub_24A506EB8(v5, qword_27EF5C118);
  v6 = v1;
  v7 = sub_24A62E2F4();
  v8 = sub_24A62EF64();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v23 = v11;
    *v9 = 138412802;
    *(v9 + 4) = v6;
    *v10 = v6;
    *(v9 + 12) = 2080;
    if (v6[OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_rangingOnly])
    {
      v12 = 0x676E69676E617228;
    }

    else
    {
      v12 = 0x7A696C61636F6C28;
    }

    if (v6[OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_rangingOnly])
    {
      v13 = 0xEE0029796C6E6F20;
    }

    else
    {
      v13 = 0xEB00000000297265;
    }

    v14 = v6;
    v15 = sub_24A509BA8(v12, v13, &v23);

    v16 = 0xE700000000000000;
    *(v9 + 14) = v15;
    *(v9 + 22) = 2080;
    v17 = 0x6E776F6E6B6E75;
    v18 = 0xE700000000000000;
    v19 = 0x646570706F7473;
    if (v4 != 2)
    {
      v19 = 0x6164696C61766E69;
      v18 = 0xEB00000000646574;
    }

    if (v4)
    {
      v17 = 0x617473206C6C6977;
      v16 = 0xEA00000000007472;
    }

    if (v4 <= 1)
    {
      v20 = v17;
    }

    else
    {
      v20 = v19;
    }

    if (v4 <= 1)
    {
      v21 = v16;
    }

    else
    {
      v21 = v18;
    }

    v22 = sub_24A509BA8(v20, v21, &v23);

    *(v9 + 24) = v22;
    _os_log_impl(&dword_24A503000, v7, v8, "🧭 FMR1PrxContxt%@: activity %s is '%s'", v9, 0x20u);
    sub_24A50D6A4(v10, &qword_27EF4FED0, &unk_24A635E00);
    MEMORY[0x24C21BBE0](v10, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x24C21BBE0](v11, -1, -1);
    MEMORY[0x24C21BBE0](v9, -1, -1);
  }

  sub_24A5708B8();
}

uint64_t sub_24A56C640(unint64_t a1)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    goto LABEL_69;
  }

  v3 = sub_24A575B08(a1);
  if (v3 == 9)
  {
    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  v44 = v4;
  if (a1 == 1)
  {
    v1[OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_itemState] = v4;
  }

  if (qword_27EF4E9A0 != -1)
  {
    goto LABEL_70;
  }

  while (1)
  {
    v5 = sub_24A62E314();
    sub_24A506EB8(v5, qword_27EF5C118);
    v6 = v1;
    v7 = sub_24A62E2F4();
    v8 = sub_24A62EF64();

    v43 = v6;
    if (os_log_type_enabled(v7, v8))
    {
      v9 = 0x6E776F6E6B6E75;
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v45[0] = v12;
      *v10 = 138412802;
      *(v10 + 4) = v6;
      *v11 = v6;
      *(v10 + 12) = 2080;
      if (v44 <= 3u)
      {
        v20 = 0xE700000000000000;
        v21 = 0xEC000000676E6974;
        if (v44 != 2)
        {
          v21 = 0xEB00000000646574;
        }

        v22 = 0x656C6261646E6966;
        if (v44)
        {
          v20 = 0xE800000000000000;
        }

        else
        {
          v22 = 0x6E776F6E6B6E75;
        }

        v18 = v44 <= 1u ? v22 : 0x63656E6E6F636572;
        v19 = v44 <= 1u ? v20 : v21;
      }

      else
      {
        v13 = 0xE500000000000000;
        v14 = 0x6573556E69;
        v15 = 0x800000024A63CF90;
        v16 = 0xD00000000000001ELL;
        if (v44 != 7)
        {
          v16 = 0xD000000000000014;
          v15 = 0x800000024A63CFB0;
        }

        if (v44 != 6)
        {
          v14 = v16;
          v13 = v15;
        }

        v17 = 0x4D64657472617473;
        if (v44 != 4)
        {
          v17 = 0x4D646570706F7473;
        }

        v18 = v44 <= 5u ? v17 : v14;
        v19 = v44 <= 5u ? 0xED0000676E69766FLL : v13;
      }

      v23 = v6;
      v24 = sub_24A509BA8(v18, v19, v45);

      *(v10 + 14) = v24;
      *(v10 + 22) = 2080;
      v25 = v23[OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_itemState];
      if (v25 <= 3)
      {
        if (v23[OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_itemState] > 1u)
        {
          v9 = 0x63656E6E6F636572;
          v26 = v25 == 2 ? 0xEC000000676E6974 : 0xEB00000000646574;
        }

        else if (v23[OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_itemState])
        {
          v26 = 0xE800000000000000;
          v9 = 0x656C6261646E6966;
        }

        else
        {
          v26 = 0xE700000000000000;
        }
      }

      else if (v23[OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_itemState] <= 5u)
      {
        v27 = v25 == 4 ? 0x657472617473 : 0x6570706F7473;
        v9 = v27 & 0xFFFFFFFFFFFFLL | 0x4D64000000000000;
        v26 = 0xED0000676E69766FLL;
      }

      else if (v25 == 6)
      {
        v26 = 0xE500000000000000;
        v9 = 0x6573556E69;
      }

      else if (v25 == 7)
      {
        v26 = 0x800000024A63CF90;
        v9 = 0xD00000000000001ELL;
      }

      else
      {
        v9 = 0xD000000000000014;
        v26 = 0x800000024A63CFB0;
      }

      v28 = sub_24A509BA8(v9, v26, v45);

      *(v10 + 24) = v28;
      _os_log_impl(&dword_24A503000, v7, v8, "🧭 FMR1PrxContxt%@: is %s (active: %s)", v10, 0x20u);
      sub_24A50D6A4(v11, &qword_27EF4FED0, &unk_24A635E00);
      MEMORY[0x24C21BBE0](v11, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x24C21BBE0](v12, -1, -1);
      MEMORY[0x24C21BBE0](v10, -1, -1);
    }

    else
    {
    }

    v1 = v6;
    sub_24A5708B8();
    v29 = OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_subscriptions;
    swift_beginAccess();
    v30 = *&v6[v29];
    v31 = v30 >> 62 ? sub_24A62F464() : *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (!v31)
    {
    }

    for (i = 0; ; ++i)
    {
      if ((v30 & 0xC000000000000001) != 0)
      {
        v33 = MEMORY[0x24C21ACB0](i, v30);
      }

      else
      {
        if (i >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_68;
        }

        v33 = *(v30 + 8 * i + 32);
      }

      v34 = v33;
      v35 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      v36 = &v33[OBJC_IVAR____TtC11FMFindingUI32FMR1ProximityManagerSubscription_subscriber];
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v1 = Strong;
        v38 = *(v36 + 1);
        ObjectType = swift_getObjectType();
        v45[3] = type metadata accessor for FMR1ItemLocalizerContext();
        v45[4] = &off_285DA5BB8;
        v45[0] = v43;
        v40 = *(v38 + 40);
        v41 = v43;
        v40(v44, v45, ObjectType, v38);
        swift_unknownObjectRelease();

        sub_24A508C54(v45);
      }

      else
      {
      }

      if (v35 == v31)
      {
      }
    }

    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    swift_once();
  }
}

uint64_t sub_24A56CC74(id a1)
{
  v3 = a1;
  v4 = OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_updateRangeEstimateLogCounter;
  v5 = *&v1[OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_updateRangeEstimateLogCounter];
  if (0xEEEEEEEEEEEEEEEFLL * v5 + 0x888888888888888 <= 0x1111111111111110)
  {
    [a1 range];
    v7 = &v1[OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_lastLoggedRangeEstimate];
    v8 = *&v1[OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_lastLoggedRangeEstimate];
    if (v1[OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_lastLoggedRangeEstimate + 4])
    {
      v8 = 3.4028e38;
    }

    if (vabds_f32(v6, v8) >= 0.01)
    {
      sub_24A508FA4(&qword_27EF50530, qword_24A636270);
      v9 = v1;
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_24A636580;
      *(v10 + 56) = type metadata accessor for FMR1ItemLocalizerContext();
      *(v10 + 64) = sub_24A5763C4(&qword_27EF50538, v11, type metadata accessor for FMR1ItemLocalizerContext, MEMORY[0x277D85388]);
      *(v10 + 32) = v9;
      v12 = v9;
      v13 = v3;
      [v3 range];
      v14 = MEMORY[0x277D83B08];
      *(v10 + 96) = MEMORY[0x277D83A90];
      *(v10 + 104) = v14;
      *(v10 + 72) = v15;
      v16 = v12[OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_itemState];
      v17 = MEMORY[0x277D83C10];
      *(v10 + 136) = MEMORY[0x277D83B88];
      *(v10 + 144) = v17;
      *(v10 + 112) = v16;
      v18 = sub_24A62EC24();
      v2 = v19;
      if (qword_27EF4E9A0 != -1)
      {
        swift_once();
      }

      v20 = sub_24A62E314();
      sub_24A506EB8(v20, qword_27EF5C118);

      v21 = sub_24A62E2F4();
      v22 = sub_24A62EF64();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v45[0] = v24;
        *v23 = 136315138;
        v25 = sub_24A509BA8(v18, v2, v45);

        *(v23 + 4) = v25;
        _os_log_impl(&dword_24A503000, v21, v22, "%s", v23, 0xCu);
        sub_24A508C54(v24);
        MEMORY[0x24C21BBE0](v24, -1, -1);
        MEMORY[0x24C21BBE0](v23, -1, -1);
      }

      else
      {
      }

      v1 = v44;
      v3 = v13;
    }

    [v3 range];
    *v7 = v26;
    v7[4] = 0;
    v5 = *&v1[v4];
  }

  v27 = __OFADD__(v5, 1);
  v28 = v5 + 1;
  if (v27)
  {
    goto LABEL_29;
  }

  *&v1[v4] = v28;
  v29 = OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_subscriptions;
  swift_beginAccess();
  v2 = *&v1[v29];
  v43 = v3;
  if (v2 >> 62)
  {
    goto LABEL_30;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_24A62F464())
  {

    if (!i)
    {
      break;
    }

    for (j = 0; ; ++j)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v32 = MEMORY[0x24C21ACB0](j, v2);
      }

      else
      {
        if (j >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_28;
        }

        v32 = *(v2 + 8 * j + 32);
      }

      v33 = v32;
      v34 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v35 = &v32[OBJC_IVAR____TtC11FMFindingUI32FMR1ProximityManagerSubscription_subscriber];
      if (swift_unknownObjectWeakLoadStrong())
      {
        v36 = *(v35 + 1);
        ObjectType = swift_getObjectType();
        [v43 range];
        v39 = v38;
        v45[3] = type metadata accessor for FMR1ItemLocalizerContext();
        v45[4] = &off_285DA5BB8;
        v45[0] = v44;
        v40 = *(v36 + 48);
        v41 = v44;
        v40(v45, ObjectType, v36, v39);
        swift_unknownObjectRelease();

        sub_24A508C54(v45);
      }

      else
      {
      }

      if (v34 == i)
      {
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    ;
  }
}

uint64_t sub_24A56D15C(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_subscriptions;
  swift_beginAccess();
  v3 = *&v1[v2];
  if (v3 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_24A62F464())
  {

    if (!i)
    {
      break;
    }

    for (j = 0; ; ++j)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x24C21ACB0](j, v3);
      }

      else
      {
        if (j >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v6 = *(v3 + 8 * j + 32);
      }

      v7 = v6;
      v8 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v9 = &v6[OBJC_IVAR____TtC11FMFindingUI32FMR1ProximityManagerSubscription_subscriber];
      if (swift_unknownObjectWeakLoadStrong())
      {
        v10 = *(v9 + 1);
        ObjectType = swift_getObjectType();
        v16[3] = type metadata accessor for FMR1ItemLocalizerContext();
        v16[4] = &off_285DA5BB8;
        v16[0] = v1;
        v12 = *(v10 + 56);
        v13 = v1;
        v12(a1, v16, ObjectType, v10);
        swift_unknownObjectRelease();

        sub_24A508C54(v16);
      }

      else
      {
      }

      if (v8 == i)
      {
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }
}

uint64_t sub_24A56D35C(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_subscriptions;
  swift_beginAccess();
  v3 = *&v1[v2];
  if (v3 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_24A62F464())
  {

    if (!i)
    {
      break;
    }

    for (j = 0; ; ++j)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x24C21ACB0](j, v3);
      }

      else
      {
        if (j >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v6 = *(v3 + 8 * j + 32);
      }

      v7 = v6;
      v8 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v9 = &v6[OBJC_IVAR____TtC11FMFindingUI32FMR1ProximityManagerSubscription_subscriber];
      if (swift_unknownObjectWeakLoadStrong())
      {
        v10 = *(v9 + 1);
        ObjectType = swift_getObjectType();
        v16[3] = type metadata accessor for FMR1ItemLocalizerContext();
        v16[4] = &off_285DA5BB8;
        v16[0] = v1;
        v12 = *(v10 + 64);
        v13 = v1;
        v12(a1, v16, ObjectType, v10);
        swift_unknownObjectRelease();

        sub_24A508C54(v16);
      }

      else
      {
      }

      if (v8 == i)
      {
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }
}

uint64_t sub_24A56D558(void *a1)
{
  LODWORD(v2) = [a1 BOOLValue];
  if (qword_27EF4E9A0 != -1)
  {
    goto LABEL_26;
  }

  while (1)
  {
    v3 = sub_24A62E314();
    sub_24A506EB8(v3, qword_27EF5C118);
    v4 = v1;
    v5 = sub_24A62E2F4();
    v6 = sub_24A62EF64();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v30[0] = v9;
      *v7 = 138412546;
      *(v7 + 4) = v4;
      *v8 = v4;
      *(v7 + 12) = 2080;
      v10 = v2 == 0;
      if (v2)
      {
        v11 = 1702195828;
      }

      else
      {
        v11 = 0x65736C6166;
      }

      if (v10)
      {
        v12 = 0xE500000000000000;
      }

      else
      {
        v12 = 0xE400000000000000;
      }

      v13 = v4;
      v14 = sub_24A509BA8(v11, v12, v30);

      *(v7 + 14) = v14;
      _os_log_impl(&dword_24A503000, v5, v6, "🧭 FMR1PrxContxt%@: path-is-degenerate is %s for item", v7, 0x16u);
      sub_24A50D6A4(v8, &qword_27EF4FED0, &unk_24A635E00);
      MEMORY[0x24C21BBE0](v8, -1, -1);
      sub_24A508C54(v9);
      MEMORY[0x24C21BBE0](v9, -1, -1);
      MEMORY[0x24C21BBE0](v7, -1, -1);
    }

    v1 = v4;
    v28 = v4;
    v15 = OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_subscriptions;
    swift_beginAccess();
    v2 = *&v1[v15];
    v16 = v2 >> 62 ? sub_24A62F464() : *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (!v16)
    {
    }

    for (i = 0; ; ++i)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x24C21ACB0](i, v2);
      }

      else
      {
        if (i >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_25;
        }

        v18 = *(v2 + 8 * i + 32);
      }

      v19 = v18;
      v20 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      v21 = &v18[OBJC_IVAR____TtC11FMFindingUI32FMR1ProximityManagerSubscription_subscriber];
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v1 = Strong;
        v23 = *(v21 + 1);
        ObjectType = swift_getObjectType();
        v30[3] = type metadata accessor for FMR1ItemLocalizerContext();
        v30[4] = &off_285DA5BB8;
        v30[0] = v28;
        v25 = *(v23 + 72);
        v26 = v28;
        v25(a1, v30, ObjectType, v23);
        swift_unknownObjectRelease();

        sub_24A508C54(v30);
      }

      else
      {
      }

      if (v20 == v16)
      {
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    swift_once();
  }
}

uint64_t sub_24A56D8F4(void *a1)
{
  v2 = a1;
  v3 = *&v1[OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_error];
  *&v1[OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_error] = a1;
  v4 = a1;

  if (qword_27EF4E9A0 != -1)
  {
    goto LABEL_20;
  }

  while (1)
  {
    v5 = sub_24A62E314();
    sub_24A506EB8(v5, qword_27EF5C118);
    v6 = v2;
    v7 = v1;
    v8 = sub_24A62E2F4();
    v9 = sub_24A62EF64();

    v31 = v2;
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v32[0] = v12;
      *v10 = 138412546;
      *(v10 + 4) = v7;
      *v11 = v7;
      *(v10 + 12) = 2080;
      swift_getErrorValue();
      v13 = v7;
      v14 = sub_24A62F6A4();
      v16 = sub_24A509BA8(v14, v15, v32);

      *(v10 + 14) = v16;
      _os_log_impl(&dword_24A503000, v8, v9, "🧭 FMR1PrxContxt%@: item localizer failed (%s)", v10, 0x16u);
      sub_24A50D6A4(v11, &qword_27EF4FED0, &unk_24A635E00);
      MEMORY[0x24C21BBE0](v11, -1, -1);
      sub_24A508C54(v12);
      MEMORY[0x24C21BBE0](v12, -1, -1);
      MEMORY[0x24C21BBE0](v10, -1, -1);
    }

    v1 = v7;
    sub_24A5708B8();
    v17 = OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_subscriptions;
    swift_beginAccess();
    v18 = *&v7[v17];
    v30 = v7;
    v2 = v18 >> 62 ? sub_24A62F464() : *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (!v2)
    {
    }

    for (i = 0; ; ++i)
    {
      if ((v18 & 0xC000000000000001) != 0)
      {
        v20 = MEMORY[0x24C21ACB0](i, v18);
      }

      else
      {
        if (i >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v20 = *(v18 + 8 * i + 32);
      }

      v21 = v20;
      v22 = (i + 1);
      if (__OFADD__(i, 1))
      {
        break;
      }

      v23 = &v20[OBJC_IVAR____TtC11FMFindingUI32FMR1ProximityManagerSubscription_subscriber];
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v1 = Strong;
        v25 = *(v23 + 1);
        ObjectType = swift_getObjectType();
        v32[3] = type metadata accessor for FMR1ItemLocalizerContext();
        v32[4] = &off_285DA5BB8;
        v32[0] = v30;
        v27 = *(v25 + 80);
        v28 = v30;
        v27(v31, v32, ObjectType, v25);
        swift_unknownObjectRelease();

        sub_24A508C54(v32);
      }

      else
      {
      }

      if (v22 == v2)
      {
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    swift_once();
  }
}

void sub_24A56DC9C()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_itemLocalizer;
  v3 = *&v0[OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_itemLocalizer];
  if (v3)
  {
    v4 = v3;
    [v4 setDelegate_];
    v5 = sub_24A62F784();
    v7 = v6;
    if (qword_27EF4E9A0 != -1)
    {
      swift_once();
    }

    v8 = sub_24A62E314();
    sub_24A506EB8(v8, qword_27EF5C118);
    v9 = v0;
    v10 = sub_24A62E2F4();
    v11 = sub_24A62EF64();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v30 = v28;
      *v12 = 138412546;
      *(v12 + 4) = v9;
      *v27 = v9;
      *(v12 + 12) = 2080;
      v13 = v9;
      sub_24A516B88(9, v5, v7);
      v29 = v4;

      sub_24A55B6E8();
      sub_24A62ECA4();

      MEMORY[0x24C21A5D0](15939, 0xE200000000000000);

      v14 = sub_24A509BA8(7876668, 0xE300000000000000, &v30);

      *(v12 + 14) = v14;
      v4 = v29;
      _os_log_impl(&dword_24A503000, v10, v11, "🧭 FMR1PrxContxt%@: released item localizer <%s> and reset state to unknown", v12, 0x16u);
      sub_24A50D6A4(v27, &qword_27EF4FED0, &unk_24A635E00);
      MEMORY[0x24C21BBE0](v27, -1, -1);
      sub_24A508C54(v28);
      MEMORY[0x24C21BBE0](v28, -1, -1);
      MEMORY[0x24C21BBE0](v12, -1, -1);
    }

    else
    {
    }

    v22 = *&v1[v2];
    *&v1[v2] = 0;

    sub_24A56FA54();
    v23 = &v9[OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_decrementItemLocalizerHandler];
    v24 = *&v9[OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_decrementItemLocalizerHandler];
    if (v24)
    {
      v25 = *(v23 + 1);

      v24(v26);

      sub_24A50D844(v24, v25);
    }

    else
    {
    }
  }

  else
  {
    if (qword_27EF4E9A0 != -1)
    {
      swift_once();
    }

    v15 = sub_24A62E314();
    sub_24A506EB8(v15, qword_27EF5C118);
    v16 = v0;
    v17 = sub_24A62E2F4();
    v18 = sub_24A62EF64();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138412290;
      *(v19 + 4) = v16;
      *v20 = v16;
      v21 = v16;
      _os_log_impl(&dword_24A503000, v17, v18, "🧭 FMR1PrxContxt%@: reset item localizer state to unknown", v19, 0xCu);
      sub_24A50D6A4(v20, &qword_27EF4FED0, &unk_24A635E00);
      MEMORY[0x24C21BBE0](v20, -1, -1);
      MEMORY[0x24C21BBE0](v19, -1, -1);
    }
  }

  v1[OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_itemLocalizerState] = 0;
  v1[OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_itemState] = 0;
  v1[OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_activity] = 0;
  v1[OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_hasCalledConfigure] = 0;
}

uint64_t sub_24A56E0DC()
{
  v0 = sub_24A62EB14();
  v15 = *(v0 - 8);
  v16 = v0;
  MEMORY[0x28223BE20](v0);
  v2 = &v14 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v5 = &v14 - v4;
  v6 = sub_24A62EA94();
  MEMORY[0x28223BE20](v6);
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_24A575F4C;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A5A8458;
  aBlock[3] = &unk_285DA5CA0;
  _Block_copy(aBlock);
  v17 = MEMORY[0x277D84F90];
  sub_24A5763C4(&qword_27EF4F970, 255, MEMORY[0x277D85198], MEMORY[0x277D851A0]);

  sub_24A508FA4(&unk_27EF50510, &unk_24A633E30);
  sub_24A5238AC(&qword_27EF4F980, &unk_27EF50510, &unk_24A633E30);
  sub_24A62F254();
  sub_24A62EB44();
  swift_allocObject();
  v8 = sub_24A62EB24();

  *(v14 + OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_releaseItemLocalizerWorkItem) = v8;

  sub_24A545E8C();
  v9 = sub_24A62F014();
  sub_24A62EB04();
  sub_24A62EB54();
  v10 = *(v15 + 8);
  v11 = v2;
  v12 = v16;
  v10(v11, v16);
  sub_24A62EFE4();

  return (v10)(v5, v12);
}

void sub_24A56E408(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    if (qword_27EF4E9A0 != -1)
    {
      swift_once();
    }

    v3 = sub_24A62E314();
    sub_24A506EB8(v3, qword_27EF5C118);
    v4 = v2;
    v5 = sub_24A62E2F4();
    v6 = sub_24A62EF64();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412546;
      *(v7 + 4) = v4;
      *v8 = v2;
      *(v7 + 12) = 2048;
      *(v7 + 14) = 0x403D000000000000;
      v9 = v4;
      _os_log_impl(&dword_24A503000, v5, v6, "🧭 FMR1PrxContxt%@: releasing item localizer (unconfiguring) since not started within %f sec", v7, 0x16u);
      sub_24A50D6A4(v8, &qword_27EF4FED0, &unk_24A635E00);
      MEMORY[0x24C21BBE0](v8, -1, -1);
      MEMORY[0x24C21BBE0](v7, -1, -1);
    }

    sub_24A56DC9C();
  }
}

void sub_24A56E58C()
{
  v1 = v0;
  v2 = sub_24A62EA94();
  v3 = *(v2 - 1);
  MEMORY[0x28223BE20](v2);
  v5 = &v81 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24A62EAD4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24A62EAF4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  if (v1[OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_applicationIsInBackground] == 1)
  {
    v83 = &v81 - v16;
    v89 = v2;
    v90 = v15;
    v87 = v6;
    if (qword_27EF4E9A0 != -1)
    {
      swift_once();
    }

    v84 = v9;
    v85 = v7;
    v86 = v5;
    v88 = v3;
    v17 = sub_24A62E314();
    sub_24A506EB8(v17, qword_27EF5C118);
    v18 = v1;
    v19 = sub_24A62E2F4();
    v20 = sub_24A62EF64();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138412290;
      *(v21 + 4) = v18;
      *v22 = v18;
      v23 = v18;
      _os_log_impl(&dword_24A503000, v19, v20, "🧭 FMR1PrxContxt%@: entering background", v21, 0xCu);
      sub_24A50D6A4(v22, &qword_27EF4FED0, &unk_24A635E00);
      MEMORY[0x24C21BBE0](v22, -1, -1);
      MEMORY[0x24C21BBE0](v21, -1, -1);
    }

    v24 = [objc_opt_self() sharedApplication];
    v25 = sub_24A62EBE4();
    v26 = swift_allocObject();
    *(v26 + 16) = v18;
    v95 = sub_24A575C5C;
    v96 = v26;
    aBlock = MEMORY[0x277D85DD0];
    v92 = 1107296256;
    v93 = sub_24A5A8458;
    v94 = &unk_285DA5C00;
    v27 = _Block_copy(&aBlock);
    v28 = v18;

    v29 = [v24 beginBackgroundTaskWithName:v25 expirationHandler:v27];
    _Block_release(v27);

    v30 = &v28[OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_backgroundTaskID];
    *v30 = v29;
    v30[8] = 0;
    sub_24A56DC9C();
    sub_24A545E8C();
    v31 = sub_24A62F014();
    sub_24A62EAE4();
    v32 = v83;
    sub_24A62EB54();
    v82 = *(v11 + 8);
    v82(v13, v90);
    v33 = swift_allocObject();
    *(v33 + 16) = v28;
    v95 = sub_24A575C98;
    v96 = v33;
    aBlock = MEMORY[0x277D85DD0];
    v92 = 1107296256;
    v93 = sub_24A5A8458;
    v94 = &unk_285DA5C50;
    v34 = _Block_copy(&aBlock);
    v35 = v28;

    v36 = v84;
    sub_24A62EAB4();
    aBlock = MEMORY[0x277D84F90];
    sub_24A5763C4(&qword_27EF4F970, 255, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    sub_24A508FA4(&unk_27EF50510, &unk_24A633E30);
    sub_24A5238AC(&qword_27EF4F980, &unk_27EF50510, &unk_24A633E30);
    v37 = v86;
    v38 = v89;
    sub_24A62F254();
    MEMORY[0x24C21A910](v32, v36, v37, v34);
    _Block_release(v34);

    (v88[1])(v37, v38);
    (*(v85 + 8))(v36, v87);
    v82(v32, v90);
  }

  else
  {
    v39 = &v1[OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_backgroundTaskID];
    v40 = *MEMORY[0x277D767B0];
    if ((v1[OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_backgroundTaskID + 8] & 1) == 0)
    {
      v41 = *v39;
      if (*v39 != v40)
      {
        v42 = [objc_opt_self() sharedApplication];
        [v42 endBackgroundTask_];
      }
    }

    *v39 = v40;
    v39[8] = 0;
    v43 = OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_itemLocalizer;
    if (*&v1[OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_itemLocalizer])
    {
      if (qword_27EF4E9A0 != -1)
      {
        swift_once();
      }

      v44 = sub_24A62E314();
      sub_24A506EB8(v44, qword_27EF5C118);
      v45 = v1;
      v90 = sub_24A62E2F4();
      v46 = sub_24A62EF64();

      if (os_log_type_enabled(v90, v46))
      {
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        *v47 = 138412290;
        *(v47 + 4) = v45;
        *v48 = v45;
        v49 = v45;
        _os_log_impl(&dword_24A503000, v90, v46, "🧭 FMR1PrxContxt%@: entering foreground", v47, 0xCu);
        sub_24A50D6A4(v48, &qword_27EF4FED0, &unk_24A635E00);
        MEMORY[0x24C21BBE0](v48, -1, -1);
        MEMORY[0x24C21BBE0](v47, -1, -1);
      }

      v50 = v90;
    }

    else
    {
      sub_24A545E8C();
      v51 = sub_24A62F014();
      v52 = objc_allocWithZone(MEMORY[0x277D43C50]);
      v53 = v1;
      v54 = [v52 initWithDelegate:v53 queue:v51];

      aBlock = v54;
      v55 = sub_24A62F784();
      v57 = v56;
      if (qword_27EF4E9A0 != -1)
      {
        swift_once();
      }

      v58 = sub_24A62E314();
      sub_24A506EB8(v58, qword_27EF5C118);
      v59 = v53;
      v60 = sub_24A62E2F4();
      v61 = sub_24A62EF64();

      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        v88 = v63;
        v89 = swift_slowAlloc();
        v99 = v89;
        *v62 = 138412546;
        *(v62 + 4) = v59;
        *v63 = v59;
        *(v62 + 12) = 2080;
        v64 = v59;
        v65 = sub_24A516B88(9, v55, v57);
        LODWORD(v87) = v61;
        v66 = v65;
        v90 = v54;
        v68 = v67;
        v70 = v69;
        v72 = v71;

        v97 = 7876668;
        v98 = 0xE300000000000000;
        aBlock = v66;
        v92 = v68;
        v93 = v70;
        v94 = v72;
        sub_24A55B6E8();
        sub_24A62ECA4();

        aBlock = v97;
        v92 = v98;

        MEMORY[0x24C21A5D0](15939, 0xE200000000000000);

        v73 = sub_24A509BA8(aBlock, v92, &v99);

        *(v62 + 14) = v73;
        v54 = v90;
        _os_log_impl(&dword_24A503000, v60, v87, "🧭 FMR1PrxContxt%@: entering foreground, created item localizer <%s> and will reconfigure", v62, 0x16u);
        v74 = v88;
        sub_24A50D6A4(v88, &qword_27EF4FED0, &unk_24A635E00);
        MEMORY[0x24C21BBE0](v74, -1, -1);
        v75 = v89;
        sub_24A508C54(v89);
        MEMORY[0x24C21BBE0](v75, -1, -1);
        MEMORY[0x24C21BBE0](v62, -1, -1);
      }

      else
      {
      }

      v76 = *&v59[OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_incrementItemLocalizerHandler];
      if (v76)
      {
        v77 = *&v59[OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_incrementItemLocalizerHandler + 8];

        v76(v78);
        sub_24A50D844(v76, v77);
      }

      v79 = *&v1[v43];
      *&v1[v43] = v54;
      v80 = v54;

      sub_24A56FA54();
    }
  }
}

void sub_24A56F04C(_BYTE *a1, const char *a2)
{
  v4 = &a1[OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_backgroundTaskID];
  v5 = *MEMORY[0x277D767B0];
  if ((a1[OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_backgroundTaskID + 8] & 1) == 0)
  {
    v6 = *v4;
    if (*v4 != v5)
    {
      v7 = [objc_opt_self() sharedApplication];
      [v7 endBackgroundTask_];
    }
  }

  *v4 = v5;
  v4[8] = 0;
  if (qword_27EF4E9A0 != -1)
  {
    swift_once();
  }

  v8 = sub_24A62E314();
  sub_24A506EB8(v8, qword_27EF5C118);
  v9 = a1;
  oslog = sub_24A62E2F4();
  v10 = sub_24A62EF64();

  if (os_log_type_enabled(oslog, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    *(v11 + 4) = v9;
    *v12 = v9;
    v13 = v9;
    _os_log_impl(&dword_24A503000, oslog, v10, a2, v11, 0xCu);
    sub_24A50D6A4(v12, &qword_27EF4FED0, &unk_24A635E00);
    MEMORY[0x24C21BBE0](v12, -1, -1);
    MEMORY[0x24C21BBE0](v11, -1, -1);
  }
}

uint64_t sub_24A56F210(void *a1)
{
  if (qword_27EF4E9A0 != -1)
  {
    swift_once();
  }

  v3 = sub_24A62E314();
  sub_24A506EB8(v3, qword_27EF5C118);
  v4 = a1;
  v5 = v1;
  v6 = sub_24A62E2F4();
  v7 = sub_24A62EF64();

  v8 = &unk_27EF5C000;
  if (os_log_type_enabled(v6, v7))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v47[0] = v46;
    *v9 = 138412802;
    *(v9 + 4) = v5;
    *(v9 + 12) = 2112;
    *(v9 + 14) = v4;
    *v10 = v5;
    v10[1] = v4;
    *(v9 + 22) = 2080;
    v11 = &v4[OBJC_IVAR____TtC11FMFindingUI32FMR1ProximityManagerSubscription_subscriber];
    if (swift_unknownObjectWeakLoadStrong())
    {
      v45 = v7;
      v12 = *(v11 + 1);
      ObjectType = swift_getObjectType();
      v14 = *(v12 + 8);
      v15 = v4;
      v16 = v5;
      v17 = v12;
      v7 = v45;
      v18 = v14(ObjectType, v17);
      v8 = &unk_27EF5C000;
      v19 = v18;
      v21 = v20;
      swift_unknownObjectRelease();
    }

    else
    {
      v22 = v4;
      v23 = v5;
      v21 = 0xE100000000000000;
      v19 = 63;
    }

    v24 = sub_24A509BA8(v19, v21, v47);

    *(v9 + 24) = v24;
    _os_log_impl(&dword_24A503000, v6, v7, "🧭 FMR1PrxContxt%@: subscribing %@ for %s", v9, 0x20u);
    sub_24A508FA4(&qword_27EF4FED0, &unk_24A635E00);
    swift_arrayDestroy();
    MEMORY[0x24C21BBE0](v10, -1, -1);
    sub_24A508C54(v46);
    MEMORY[0x24C21BBE0](v46, -1, -1);
    MEMORY[0x24C21BBE0](v9, -1, -1);
  }

  v25 = OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_subscriptions;
  swift_beginAccess();
  v26 = v4;
  MEMORY[0x24C21A660]();
  if (*((*(v5 + v25) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v5 + v25) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_24A62ED84();
  }

  sub_24A62EDA4();
  swift_endAccess();
  v27 = &v26[v8[42]];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v28 = *(v27 + 1);
    v29 = swift_getObjectType();
    v30 = *(v5 + OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_itemLocalizerState);
    v48 = type metadata accessor for FMR1ItemLocalizerContext();
    v49 = &off_285DA5BB8;
    v47[0] = v5;
    v31 = *(v28 + 32);
    v32 = v5;
    v31(v30, v47, v29, v28);
    swift_unknownObjectRelease();
    sub_24A508C54(v47);
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v34 = *(v27 + 1);
    v35 = swift_getObjectType();
    v36 = *(v5 + OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_itemState);
    v48 = type metadata accessor for FMR1ItemLocalizerContext();
    v49 = &off_285DA5BB8;
    v47[0] = v5;
    v37 = *(v34 + 40);
    v38 = v5;
    v37(v36, v47, v35, v34);
    swift_unknownObjectRelease();
    result = sub_24A508C54(v47);
  }

  v39 = *(v5 + OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_error);
  if (v39)
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v40 = *(v27 + 1);
      v41 = swift_getObjectType();
      v48 = type metadata accessor for FMR1ItemLocalizerContext();
      v49 = &off_285DA5BB8;
      v47[0] = v5;
      v42 = *(v40 + 80);
      v43 = v5;
      v44 = v39;
      v42(v39, v47, v41, v40);
      swift_unknownObjectRelease();

      return sub_24A508C54(v47);
    }
  }

  return result;
}

void sub_24A56F63C(void *a1)
{
  if (qword_27EF4E9A0 != -1)
  {
    swift_once();
  }

  v3 = sub_24A62E314();
  sub_24A506EB8(v3, qword_27EF5C118);
  v4 = v1;
  v5 = a1;
  v6 = sub_24A62E2F4();
  v7 = sub_24A62EF64();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412546;
    *(v8 + 4) = v4;
    *(v8 + 12) = 2112;
    *(v8 + 14) = v5;
    *v9 = v4;
    v9[1] = v5;
    v10 = v4;
    v11 = v5;
    _os_log_impl(&dword_24A503000, v6, v7, "🧭 FMR1PrxContxt%@: unsubscribing %@", v8, 0x16u);
    sub_24A508FA4(&qword_27EF4FED0, &unk_24A635E00);
    swift_arrayDestroy();
    MEMORY[0x24C21BBE0](v9, -1, -1);
    MEMORY[0x24C21BBE0](v8, -1, -1);
  }

  v12 = OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_subscriptions;
  swift_beginAccess();
  v13 = v5;
  v14 = sub_24A5760FC(&v4[v12], v13);

  v15 = *&v4[v12];
  if (v15 >> 62)
  {
    v16 = sub_24A62F464();
    if (v16 >= v14)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v16 >= v14)
    {
LABEL_7:
      sub_24A575E30(v14, v16, sub_24A5EB5D0, type metadata accessor for FMR1ProximityManagerSubscription);
      swift_endAccess();
      return;
    }
  }

  __break(1u);
}

BOOL sub_24A56F860(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_subscriptions;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v12 = MEMORY[0x277D84F90];
  if (v3 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_24A62F464())
  {

    if (!i)
    {
      break;
    }

    v5 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x24C21ACB0](v5, v3);
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_21;
        }

        v6 = *(v3 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      sub_24A62E214();
      sub_24A5763C4(&qword_27EF501E0, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      if (sub_24A62EBD4())
      {
      }

      else
      {
        sub_24A62F3E4();
        sub_24A62F414();
        sub_24A62F424();
        sub_24A62F3F4();
      }

      ++v5;
      if (v8 == i)
      {
        v9 = v12;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    ;
  }

  v9 = MEMORY[0x277D84F90];
LABEL_16:

  if (v9 < 0 || (v9 & 0x4000000000000000) != 0)
  {
    v10 = sub_24A62F464();
  }

  else
  {
    v10 = *(v9 + 16);
  }

  return v10 != 0;
}

double sub_24A56FA54()
{
  if (*(v0 + OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_itemLocalizer))
  {

    sub_24A56E0DC();
  }

  else
  {
    v2 = OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_releaseItemLocalizerWorkItem;
    if (*(v0 + OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_releaseItemLocalizerWorkItem))
    {

      sub_24A62EB34();
    }

    *(v0 + v2) = 0;
  }

  return result;
}

void *sub_24A56FAF8(char a1, void *a2)
{
  v55[1] = *MEMORY[0x277D85DE8];
  if (*(v2 + OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_activity) == 1)
  {
    if (qword_27EF4E9A0 != -1)
    {
      swift_once();
    }

    v4 = sub_24A62E314();
    sub_24A506EB8(v4, qword_27EF5C118);
    v5 = v2;
    v6 = sub_24A62E2F4();
    v7 = sub_24A62EF64();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v55[0] = v10;
      *v8 = 138412546;
      *(v8 + 4) = v5;
      *v9 = v5;
      *(v8 + 12) = 2080;
      v11 = (a1 & 1) == 0;
      if (a1)
      {
        v12 = 0x20676E69676E6172;
      }

      else
      {
        v12 = 0x657A696C61636F6CLL;
      }

      if (v11)
      {
        v13 = 0xE900000000000072;
      }

      else
      {
        v13 = 0xEC000000796C6E6FLL;
      }

      v14 = v5;
      v15 = sub_24A509BA8(v12, v13, v55);

      *(v8 + 14) = v15;
      _os_log_impl(&dword_24A503000, v6, v7, "🧭 FMR1PrxContxt%@: not starting (%s already started)", v8, 0x16u);
      sub_24A50D6A4(v9, &qword_27EF4FED0, &unk_24A635E00);
      MEMORY[0x24C21BBE0](v9, -1, -1);
      sub_24A508C54(v10);
      MEMORY[0x24C21BBE0](v10, -1, -1);
      MEMORY[0x24C21BBE0](v8, -1, -1);
    }

    return 0;
  }

  if (qword_27EF4E9A0 != -1)
  {
    swift_once();
  }

  v17 = sub_24A62E314();
  sub_24A506EB8(v17, qword_27EF5C118);
  v18 = v2;
  v19 = sub_24A62E2F4();
  v20 = sub_24A62EF64();

  v54 = a1;
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v55[0] = v23;
    *v21 = 138412546;
    *(v21 + 4) = v18;
    *v22 = v18;
    *(v21 + 12) = 2080;
    if (a1)
    {
      v24 = 0x20676E69676E6172;
    }

    else
    {
      v24 = 0x657A696C61636F6CLL;
    }

    if (a1)
    {
      v25 = 0xEC000000796C6E6FLL;
    }

    else
    {
      v25 = 0xE900000000000072;
    }

    v26 = v18;
    v27 = sub_24A509BA8(v24, v25, v55);

    *(v21 + 14) = v27;
    _os_log_impl(&dword_24A503000, v19, v20, "🧭 FMR1PrxContxt%@: starting %s", v21, 0x16u);
    sub_24A50D6A4(v22, &qword_27EF4FED0, &unk_24A635E00);
    MEMORY[0x24C21BBE0](v22, -1, -1);
    sub_24A508C54(v23);
    MEMORY[0x24C21BBE0](v23, -1, -1);
    MEMORY[0x24C21BBE0](v21, -1, -1);
  }

  v28 = *&v18[OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_itemLocalizer];
  if (!v28)
  {
LABEL_29:
    v35 = OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_releaseItemLocalizerWorkItem;
    if (*&v18[OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_releaseItemLocalizerWorkItem])
    {

      sub_24A62EB34();
    }

    *&v18[v35] = 0;

    return 0;
  }

  if (a2)
  {
    v29 = v28;
    v30 = a2;
  }

  else
  {
    v31 = objc_allocWithZone(MEMORY[0x277D43C40]);
    v29 = v28;
    v30 = [v31 init];
  }

  v55[0] = 0;
  v32 = a2;
  v33 = [v29 startWithDevicePoseProvider:v30 error:v55];

  if (v33)
  {
    v34 = v55[0];
    goto LABEL_29;
  }

  v36 = v55[0];
  v37 = sub_24A62E084();

  swift_willThrow();
  v38 = v18;
  v39 = v37;
  v40 = sub_24A62E2F4();
  v41 = sub_24A62EF64();

  v42 = v37;
  if (os_log_type_enabled(v40, v41))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v55[0] = v45;
    *v43 = 138412802;
    *(v43 + 4) = v38;
    *v44 = v38;
    *(v43 + 12) = 2080;
    if (v54)
    {
      v46 = 0x20676E69676E6172;
    }

    else
    {
      v46 = 0x657A696C61636F6CLL;
    }

    if (v54)
    {
      v47 = 0xEC000000796C6E6FLL;
    }

    else
    {
      v47 = 0xE900000000000072;
    }

    v48 = v38;
    v49 = sub_24A509BA8(v46, v47, v55);

    *(v43 + 14) = v49;
    *(v43 + 22) = 2080;
    swift_getErrorValue();
    v50 = sub_24A62F6A4();
    v52 = sub_24A509BA8(v50, v51, v55);

    *(v43 + 24) = v52;
    _os_log_impl(&dword_24A503000, v40, v41, "🧭 FMR1PrxContxt%@: failed starting %s (%s)", v43, 0x20u);
    sub_24A50D6A4(v44, &qword_27EF4FED0, &unk_24A635E00);
    MEMORY[0x24C21BBE0](v44, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x24C21BBE0](v45, -1, -1);
    MEMORY[0x24C21BBE0](v43, -1, -1);
  }

  return v42;
}

void *sub_24A570170(char a1)
{
  v55[1] = *MEMORY[0x277D85DE8];
  if (*(v1 + OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_activity) != 1)
  {
    if (qword_27EF4E9A0 != -1)
    {
      swift_once();
    }

    v16 = sub_24A62E314();
    sub_24A506EB8(v16, qword_27EF5C118);
    v17 = v1;
    v5 = sub_24A62E2F4();
    v6 = sub_24A62EF64();

    if (!os_log_type_enabled(v5, v6))
    {
      goto LABEL_24;
    }

    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v55[0] = v9;
    *v7 = 138412546;
    *(v7 + 4) = v17;
    *v8 = v17;
    *(v7 + 12) = 2080;
    v18 = (a1 & 1) == 0;
    if (a1)
    {
      v19 = 0x20676E69676E6172;
    }

    else
    {
      v19 = 0x657A696C61636F6CLL;
    }

    if (v18)
    {
      v20 = 0xE900000000000072;
    }

    else
    {
      v20 = 0xEC000000796C6E6FLL;
    }

    v21 = v17;
    v22 = sub_24A509BA8(v19, v20, v55);

    *(v7 + 14) = v22;
    v15 = "🧭 FMR1PrxContxt%@: not stopping (%s not running)";
    goto LABEL_23;
  }

  if (*(v1 + OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_stopAsked))
  {
    if (qword_27EF4E9A0 != -1)
    {
      swift_once();
    }

    v3 = sub_24A62E314();
    sub_24A506EB8(v3, qword_27EF5C118);
    v4 = v1;
    v5 = sub_24A62E2F4();
    v6 = sub_24A62EF64();

    if (!os_log_type_enabled(v5, v6))
    {
      goto LABEL_24;
    }

    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v55[0] = v9;
    *v7 = 138412546;
    *(v7 + 4) = v4;
    *v8 = v4;
    *(v7 + 12) = 2080;
    v10 = (a1 & 1) == 0;
    if (a1)
    {
      v11 = 0x20676E69676E6172;
    }

    else
    {
      v11 = 0x657A696C61636F6CLL;
    }

    if (v10)
    {
      v12 = 0xE900000000000072;
    }

    else
    {
      v12 = 0xEC000000796C6E6FLL;
    }

    v13 = v4;
    v14 = sub_24A509BA8(v11, v12, v55);

    *(v7 + 14) = v14;
    v15 = "🧭 FMR1PrxContxt%@: not stopping (%s stop already asked)";
LABEL_23:
    _os_log_impl(&dword_24A503000, v5, v6, v15, v7, 0x16u);
    sub_24A50D6A4(v8, &qword_27EF4FED0, &unk_24A635E00);
    MEMORY[0x24C21BBE0](v8, -1, -1);
    sub_24A508C54(v9);
    MEMORY[0x24C21BBE0](v9, -1, -1);
    MEMORY[0x24C21BBE0](v7, -1, -1);
LABEL_24:

    return 0;
  }

  *(v1 + OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_stopAsked) = 1;
  if (qword_27EF4E9A0 != -1)
  {
    swift_once();
  }

  v24 = sub_24A62E314();
  sub_24A506EB8(v24, qword_27EF5C118);
  v25 = v1;
  v26 = sub_24A62E2F4();
  v27 = sub_24A62EF64();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v55[0] = v30;
    *v28 = 138412546;
    *(v28 + 4) = v25;
    *v29 = v25;
    *(v28 + 12) = 2080;
    if (a1)
    {
      v31 = 0x20676E69676E6172;
    }

    else
    {
      v31 = 0x657A696C61636F6CLL;
    }

    if (a1)
    {
      v32 = 0xEC000000796C6E6FLL;
    }

    else
    {
      v32 = 0xE900000000000072;
    }

    v33 = v25;
    v34 = sub_24A509BA8(v31, v32, v55);

    *(v28 + 14) = v34;
    _os_log_impl(&dword_24A503000, v26, v27, "🧭 FMR1PrxContxt%@: stopping %s", v28, 0x16u);
    sub_24A50D6A4(v29, &qword_27EF4FED0, &unk_24A635E00);
    MEMORY[0x24C21BBE0](v29, -1, -1);
    sub_24A508C54(v30);
    MEMORY[0x24C21BBE0](v30, -1, -1);
    MEMORY[0x24C21BBE0](v28, -1, -1);
  }

  v35 = *&v25[OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_itemLocalizer];
  if (!v35)
  {
LABEL_39:
    sub_24A56E0DC();
    return 0;
  }

  v55[0] = 0;
  if ([v35 stop_])
  {
    v36 = v55[0];
    goto LABEL_39;
  }

  v37 = v55[0];
  v38 = sub_24A62E084();

  swift_willThrow();
  v39 = v25;
  v40 = v38;
  v41 = sub_24A62E2F4();
  v42 = sub_24A62EF64();

  v43 = v38;
  if (os_log_type_enabled(v41, v42))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v55[0] = v46;
    *v44 = 138412802;
    *(v44 + 4) = v39;
    *v45 = v39;
    *(v44 + 12) = 2080;
    v47 = (a1 & 1) == 0;
    if (a1)
    {
      v48 = 0x20676E69676E6172;
    }

    else
    {
      v48 = 0x657A696C61636F6CLL;
    }

    if (v47)
    {
      v49 = 0xE900000000000072;
    }

    else
    {
      v49 = 0xEC000000796C6E6FLL;
    }

    v50 = v39;
    v51 = sub_24A509BA8(v48, v49, v55);

    *(v44 + 14) = v51;
    *(v44 + 22) = 2080;
    swift_getErrorValue();
    v52 = sub_24A62F6A4();
    v54 = sub_24A509BA8(v52, v53, v55);

    *(v44 + 24) = v54;
    _os_log_impl(&dword_24A503000, v41, v42, "🧭 FMR1PrxContxt%@: failed stopping %s (%s)", v44, 0x20u);
    sub_24A50D6A4(v45, &qword_27EF4FED0, &unk_24A635E00);
    MEMORY[0x24C21BBE0](v45, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x24C21BBE0](v46, -1, -1);
    MEMORY[0x24C21BBE0](v44, -1, -1);
  }

  return v43;
}

void sub_24A5708B8()
{
  v1 = sub_24A508FA4(&unk_27EF4FEE0, &qword_24A6369F0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v139 - v2;
  v4 = sub_24A62E214();
  v142 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v144 = &v139 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_subscriptions;
  swift_beginAccess();
  v7 = *(v0 + v6);
  v145 = v0;
  v143 = v4;
  v140 = v6;
  v141 = v3;
  if (v7 >> 62)
  {
LABEL_146:
    v8 = sub_24A62F464();
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = 0;
  v146 = 0;
  v10 = 0;
  while (1)
  {
    if (v8 == v9)
    {
      goto LABEL_19;
    }

    if ((v7 & 0xC000000000000001) == 0)
    {
      if (v9 < *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v12 = *(v7 + 8 * v9 + 32);
        v13 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        goto LABEL_9;
      }

      __break(1u);
LABEL_137:

      v134 = v146;
      if (v146 >> 62)
      {
        if (sub_24A62F464())
        {
          goto LABEL_139;
        }
      }

      else if (*((v146 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_139:
        if ((v134 & 0xC000000000000001) != 0)
        {
          v135 = MEMORY[0x24C21ACB0](0, v134);
          goto LABEL_142;
        }

        if (*((v134 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v135 = *(v134 + 32);
LABEL_142:
          v25 = v135;

LABEL_154:

          goto LABEL_30;
        }

        __break(1u);
        goto LABEL_157;
      }

      v25 = 0;
      goto LABEL_154;
    }

    v12 = MEMORY[0x24C21ACB0](v9, v7);
    v13 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

LABEL_9:
    if (v12[OBJC_IVAR____TtC11FMFindingUI32FMR1ProximityManagerSubscription_wantsRangingOnly] == 1)
    {
      v14 = __OFADD__(v10++, 1);
      if (v14)
      {
        __break(1u);
        goto LABEL_146;
      }
    }

    v11 = v12[OBJC_IVAR____TtC11FMFindingUI32FMR1ProximityManagerSubscription_wantsLocalizer];

    ++v9;
    if (v11 == 1)
    {
      v9 = v13;
      v14 = __OFADD__(v146++, 1);
      if (v14)
      {
        __break(1u);
        goto LABEL_147;
      }
    }
  }

  __break(1u);
LABEL_19:

  v7 = v145;
  if (*(v145 + OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_itemLocalizerState) != 2)
  {
    if (qword_27EF4E9A0 != -1)
    {
LABEL_147:
      swift_once();
    }

    v23 = sub_24A62E314();
    sub_24A506EB8(v23, qword_27EF5C118);
    v24 = v7;
    v25 = sub_24A62E2F4();
    v26 = sub_24A62EF64();

    if (!os_log_type_enabled(v25, v26))
    {
LABEL_30:

      return;
    }

    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v27 = 138412290;
    *(v27 + 4) = v24;
    *v28 = v24;
    v29 = v24;
    v30 = "🧭 FMR1PrxContxt%@: waiting to be ready";
    goto LABEL_29;
  }

  v15 = OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_itemState;
  if (*(v145 + OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_itemState) != 1)
  {
    v31 = OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_hasCalledConfigure;
    if (*(v145 + OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_hasCalledConfigure))
    {
      if (qword_27EF4E9A0 != -1)
      {
        swift_once();
      }

      v32 = sub_24A62E314();
      sub_24A506EB8(v32, qword_27EF5C118);
      v33 = v7;
      v34 = sub_24A62E2F4();
      v35 = sub_24A62EF64();

      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        *&v155 = v38;
        *v36 = 138412546;
        *(v36 + 4) = v33;
        *v37 = v33;
        *(v36 + 12) = 2080;
        v39 = *(v7 + v15) == 4;
        if (*(v7 + v15) == 4)
        {
          v40 = 0x676E69766F6D2820;
        }

        else
        {
          v40 = 0;
        }

        if (v39)
        {
          v41 = 0xE900000000000029;
        }

        else
        {
          v41 = 0xE000000000000000;
        }

        v42 = v33;
        v43 = sub_24A509BA8(v40, v41, &v155);

        *(v36 + 14) = v43;
        _os_log_impl(&dword_24A503000, v34, v35, "🧭 FMR1PrxContxt%@: waiting to be findable%s", v36, 0x16u);
        sub_24A50D6A4(v37, &qword_27EF4FED0, &unk_24A635E00);
        MEMORY[0x24C21BBE0](v37, -1, -1);
        sub_24A508C54(v38);
        MEMORY[0x24C21BBE0](v38, -1, -1);
        MEMORY[0x24C21BBE0](v36, -1, -1);
      }
    }

    else
    {
      v60 = OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_findable;
      sub_24A508AE4(v145 + OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_findable, &v155);
      v61 = *(&v156 + 1);
      v62 = v157;
      sub_24A50A204(&v155, *(&v156 + 1));
      (*(v62 + 24))(v149, v61, v62);
      if (v150)
      {
        sub_24A55B284(v149[0], v149[1], v149[2], v150);
        v63 = v143;
        v64 = v142;
        if (*(v7 + OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_connectionContext) == 1)
        {
          sub_24A508AE4(v7 + v60, v152);
          v65 = v153;
          v66 = v154;
          sub_24A50A204(v152, v153);
          (*(v66 + 24))(v147, v65, v66);
          v90 = v148 != 0;
          sub_24A55B284(v147[0], v147[1], v147[2], v148);
          sub_24A508C54(v152);
        }

        else
        {
          v90 = 0;
        }
      }

      else
      {
        v90 = 1;
        v63 = v143;
        v64 = v142;
      }

      sub_24A508C54(&v155);
      sub_24A508AE4(v7 + v60, v152);
      sub_24A508FA4(&unk_27EF501B0, &unk_24A633B00);
      sub_24A508FA4(&unk_27EF4FF20, &unk_24A635E40);
      if ((swift_dynamicCast() & 1) == 0)
      {
        v157 = 0;
        v155 = 0u;
        v156 = 0u;
      }

      sub_24A508AE4(v7 + v60, v152);
      v91 = v153;
      v92 = v154;
      sub_24A50A204(v152, v153);
      (*(v92 + 16))(v91, v92);
      sub_24A575CBC(&v155, v149);
      v93 = v150;
      if (v150)
      {
        v94 = v151;
        sub_24A50A204(v149, v150);
        v95 = v141;
        (*(v94 + 16))(v93, v94);
        sub_24A508C54(v149);
      }

      else
      {
        sub_24A50D6A4(v149, &unk_27EF50520, &unk_24A633B10);
        v95 = v141;
        (*(v64 + 56))(v141, 1, 1, v63);
      }

      v96 = v90;
      v97 = v7;
      v98 = *(v7 + OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_connectionContext);
      v99 = sub_24A62E1D4();
      if ((*(v64 + 48))(v95, 1, v63) == 1)
      {
        v100 = 0;
      }

      else
      {
        v100 = sub_24A62E1D4();
        (*(v64 + 8))(v95, v63);
      }

      v101 = [objc_allocWithZone(MEMORY[0x277D43C48]) initWithUUID:v99 productUUID:v100 isOwned:v98 == 0 requiresLowerRangingFrequency:v96];

      (*(v64 + 8))(v144, v63);
      sub_24A508C54(v152);
      v102 = v97;
      v103 = *&v97[OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_itemLocalizer];
      if (v103)
      {
        v104 = [v103 configureForItem_];
      }

      else
      {
        v104 = 0;
      }

      v102[v31] = 1;
      if (qword_27EF4E9A0 != -1)
      {
        swift_once();
      }

      v105 = sub_24A62E314();
      sub_24A506EB8(v105, qword_27EF5C118);
      v106 = v102;
      v107 = sub_24A62E2F4();
      v108 = sub_24A62EF64();

      if (os_log_type_enabled(v107, v108))
      {
        v109 = swift_slowAlloc();
        v110 = swift_slowAlloc();
        v111 = swift_slowAlloc();
        v152[0] = v111;
        *v109 = 138412546;
        *(v109 + 4) = v106;
        *v110 = v106;
        *(v109 + 12) = 2080;
        v112 = v104 == 0;
        if (v104)
        {
          v113 = 0;
        }

        else
        {
          v113 = 0x2064656C696166;
        }

        if (v112)
        {
          v114 = 0xE700000000000000;
        }

        else
        {
          v114 = 0xE000000000000000;
        }

        v115 = v106;
        v116 = sub_24A509BA8(v113, v114, v152);

        *(v109 + 14) = v116;
        _os_log_impl(&dword_24A503000, v107, v108, "🧭 FMR1PrxContxt%@: %sconfiguring", v109, 0x16u);
        sub_24A50D6A4(v110, &qword_27EF4FED0, &unk_24A635E00);
        MEMORY[0x24C21BBE0](v110, -1, -1);
        sub_24A508C54(v111);
        MEMORY[0x24C21BBE0](v111, -1, -1);
        MEMORY[0x24C21BBE0](v109, -1, -1);
      }

      sub_24A50D6A4(&v155, &unk_27EF50520, &unk_24A633B10);
    }

    return;
  }

  if (*(v145 + OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_applicationIsInBackground) != 1)
  {
    if (v10 >= 1 && !v146)
    {
      v44 = OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_activity;
      v45 = *(v145 + OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_activity);
      if (v45 == 1)
      {
        if (*(v145 + OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_rangingOnly))
        {
LABEL_116:
          if (*(v7 + OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_rangingOnly) != 1)
          {
LABEL_121:
            if (qword_27EF4E9A0 != -1)
            {
              swift_once();
            }

            v120 = sub_24A62E314();
            sub_24A506EB8(v120, qword_27EF5C118);
            v121 = v7;
            v25 = sub_24A62E2F4();
            v26 = sub_24A62EF64();

            if (!os_log_type_enabled(v25, v26))
            {
              goto LABEL_30;
            }

            v27 = swift_slowAlloc();
            v28 = swift_slowAlloc();
            *v27 = 138412290;
            *(v27 + 4) = v121;
            *v28 = v121;
            v122 = v121;
            v30 = "🧭 FMR1PrxContxt%@: asked to start ranging only (but waiting to be stopped first)";
            goto LABEL_29;
          }

          if (qword_27EF4E9A0 != -1)
          {
            swift_once();
          }

          v117 = sub_24A62E314();
          sub_24A506EB8(v117, qword_27EF5C118);
          v118 = v7;
          v25 = sub_24A62E2F4();
          v26 = sub_24A62EF64();

          if (!os_log_type_enabled(v25, v26))
          {
            goto LABEL_30;
          }

          v27 = swift_slowAlloc();
          v28 = swift_slowAlloc();
          *v27 = 138412290;
          *(v27 + 4) = v118;
          *v28 = v118;
          v119 = v118;
          v30 = "🧭 FMR1PrxContxt%@: asked to start ranging only (but already is)";
LABEL_29:
          _os_log_impl(&dword_24A503000, v25, v26, v30, v27, 0xCu);
          sub_24A50D6A4(v28, &qword_27EF4FED0, &unk_24A635E00);
          MEMORY[0x24C21BBE0](v28, -1, -1);
          MEMORY[0x24C21BBE0](v27, -1, -1);
          goto LABEL_30;
        }

        if (qword_27EF4E9A0 != -1)
        {
          swift_once();
        }

        v46 = sub_24A62E314();
        sub_24A506EB8(v46, qword_27EF5C118);
        v47 = v7;
        v48 = sub_24A62E2F4();
        v49 = sub_24A62EF64();

        if (os_log_type_enabled(v48, v49))
        {
          v50 = swift_slowAlloc();
          v51 = swift_slowAlloc();
          *v50 = 138412290;
          *(v50 + 4) = v47;
          *v51 = v47;
          v52 = v47;
          _os_log_impl(&dword_24A503000, v48, v49, "🧭 FMR1PrxContxt%@: asked to start ranging only (but need to stop first)", v50, 0xCu);
          sub_24A50D6A4(v51, &qword_27EF4FED0, &unk_24A635E00);
          MEMORY[0x24C21BBE0](v51, -1, -1);
          MEMORY[0x24C21BBE0](v50, -1, -1);
        }

        v45 = *(v7 + v44);
      }

      if (v45 == 2)
      {
LABEL_56:
        *(v7 + OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_rangingOnly) = 1;
        if (qword_27EF4E9A0 != -1)
        {
          swift_once();
        }

        v53 = sub_24A62E314();
        sub_24A506EB8(v53, qword_27EF5C118);
        v54 = v7;
        v55 = sub_24A62E2F4();
        v56 = sub_24A62EF64();

        if (os_log_type_enabled(v55, v56))
        {
          v57 = swift_slowAlloc();
          v58 = swift_slowAlloc();
          *v57 = 138412290;
          *(v57 + 4) = v54;
          *v58 = v54;
          v59 = v54;
          _os_log_impl(&dword_24A503000, v55, v56, "🧭 FMR1PrxContxt%@: asked to start ranging only now", v57, 0xCu);
          sub_24A50D6A4(v58, &qword_27EF4FED0, &unk_24A635E00);
          MEMORY[0x24C21BBE0](v58, -1, -1);
          MEMORY[0x24C21BBE0](v57, -1, -1);
        }

        return;
      }

      if (v45 != 1)
      {
        if (!v45)
        {
          goto LABEL_56;
        }

        goto LABEL_121;
      }

      goto LABEL_116;
    }

    v67 = OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_activity;
    v68 = *(v145 + OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_activity);
    if (v146 < 1)
    {
      if (v68 == 1)
      {
        if (qword_27EF4E9A0 != -1)
        {
          swift_once();
        }

        v123 = sub_24A62E314();
        sub_24A506EB8(v123, qword_27EF5C118);
        v124 = v7;
        v125 = sub_24A62E2F4();
        v126 = sub_24A62EF64();

        if (os_log_type_enabled(v125, v126))
        {
          v127 = swift_slowAlloc();
          v128 = swift_slowAlloc();
          *v127 = 138412290;
          *(v127 + 4) = v124;
          *v128 = v124;
          v129 = v124;
          _os_log_impl(&dword_24A503000, v125, v126, "🧭 FMR1PrxContxt%@: asked to stop everything now", v127, 0xCu);
          sub_24A50D6A4(v128, &qword_27EF4FED0, &unk_24A635E00);
          MEMORY[0x24C21BBE0](v128, -1, -1);
          MEMORY[0x24C21BBE0](v127, -1, -1);
        }

        v130 = OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_rangingOnly;
        *(v124 + v130) = 0;
      }

      return;
    }

    if (v68 == 1)
    {
      if (*(v145 + OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_rangingOnly) != 1)
      {
        goto LABEL_131;
      }

      if (qword_27EF4E9A0 != -1)
      {
        swift_once();
      }

      v69 = sub_24A62E314();
      sub_24A506EB8(v69, qword_27EF5C118);
      v70 = v7;
      v71 = sub_24A62E2F4();
      v72 = sub_24A62EF64();

      if (os_log_type_enabled(v71, v72))
      {
        v73 = swift_slowAlloc();
        v74 = swift_slowAlloc();
        *v73 = 138412290;
        *(v73 + 4) = v70;
        *v74 = v70;
        v75 = v70;
        _os_log_impl(&dword_24A503000, v71, v72, "🧭 FMR1PrxContxt%@: asked to start localizer (but need to stop ranging only first)", v73, 0xCu);
        sub_24A50D6A4(v74, &qword_27EF4FED0, &unk_24A635E00);
        MEMORY[0x24C21BBE0](v74, -1, -1);
        MEMORY[0x24C21BBE0](v73, -1, -1);
      }

      v68 = *(v7 + v67);
    }

    if (v68 == 2)
    {
      goto LABEL_76;
    }

    if (v68 != 1)
    {
      if (!v68)
      {
LABEL_76:
        *(v7 + OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_rangingOnly) = 0;
        if (qword_27EF4E9A0 != -1)
        {
          swift_once();
        }

        v76 = sub_24A62E314();
        sub_24A506EB8(v76, qword_27EF5C118);
        v77 = v7;
        v78 = sub_24A62E2F4();
        v79 = sub_24A62EF64();

        if (os_log_type_enabled(v78, v79))
        {
          v80 = swift_slowAlloc();
          v81 = swift_slowAlloc();
          *v80 = 138412290;
          *(v80 + 4) = v77;
          *v81 = v77;
          v82 = v77;
          _os_log_impl(&dword_24A503000, v78, v79, "🧭 FMR1PrxContxt%@: asked to start localizer now", v80, 0xCu);
          sub_24A50D6A4(v81, &qword_27EF4FED0, &unk_24A635E00);
          MEMORY[0x24C21BBE0](v81, -1, -1);
          MEMORY[0x24C21BBE0](v80, -1, -1);
        }

        v7 = *(v7 + v140);
        *&v155 = MEMORY[0x277D84F90];
        v144 = v77;
        if (v7 >> 62)
        {
          v83 = sub_24A62F464();
        }

        else
        {
          v83 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v84 = 0;
        v146 = MEMORY[0x277D84F90];
        while (v83 != v84)
        {
          if ((v7 & 0xC000000000000001) != 0)
          {
            v85 = MEMORY[0x24C21ACB0](v84, v7);
          }

          else
          {
            if (v84 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_149;
            }

            v85 = *(v7 + 8 * v84 + 32);
          }

          v86 = v85;
          v87 = v84 + 1;
          if (__OFADD__(v84, 1))
          {
            __break(1u);
LABEL_149:
            __break(1u);
            goto LABEL_150;
          }

          v88 = *&v85[OBJC_IVAR____TtC11FMFindingUI32FMR1ProximityManagerSubscription_poseProvider];
          v89 = v88;

          ++v84;
          if (v88)
          {
            MEMORY[0x24C21A660]();
            if (*((v155 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v155 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_24A62ED84();
            }

            sub_24A62EDA4();
            v146 = v155;
            v84 = v87;
          }
        }

        goto LABEL_137;
      }

LABEL_132:
      if (qword_27EF4E9A0 != -1)
      {
        swift_once();
      }

      v131 = sub_24A62E314();
      sub_24A506EB8(v131, qword_27EF5C118);
      v132 = v7;
      v25 = sub_24A62E2F4();
      v26 = sub_24A62EF64();

      if (!os_log_type_enabled(v25, v26))
      {
        goto LABEL_30;
      }

      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v27 = 138412290;
      *(v27 + 4) = v132;
      *v28 = v132;
      v133 = v132;
      v30 = "🧭 FMR1PrxContxt%@: asked to start localizer (but waiting to be stopped first)";
      goto LABEL_29;
    }

LABEL_131:
    if ((*(v7 + OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_rangingOnly) & 1) == 0)
    {
      if (qword_27EF4E9A0 == -1)
      {
LABEL_144:
        v136 = sub_24A62E314();
        sub_24A506EB8(v136, qword_27EF5C118);
        v137 = v7;
        v25 = sub_24A62E2F4();
        v26 = sub_24A62EF64();

        if (!os_log_type_enabled(v25, v26))
        {
          goto LABEL_30;
        }

        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        *v27 = 138412290;
        *(v27 + 4) = v137;
        *v28 = v137;
        v138 = v137;
        v30 = "🧭 FMR1PrxContxt%@: asked to start localizer (but already is)";
        goto LABEL_29;
      }

LABEL_157:
      swift_once();
      goto LABEL_144;
    }

    goto LABEL_132;
  }

  if (qword_27EF4E9A0 != -1)
  {
LABEL_150:
    swift_once();
  }

  v16 = sub_24A62E314();
  sub_24A506EB8(v16, qword_27EF5C118);
  v17 = v7;
  v18 = sub_24A62E2F4();
  v19 = sub_24A62EF64();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v20 = 138412290;
    *(v20 + 4) = v17;
    *v21 = v17;
    v22 = v17;
    _os_log_impl(&dword_24A503000, v18, v19, "🧭 FMR1PrxContxt%@: application is in background", v20, 0xCu);
    sub_24A50D6A4(v21, &qword_27EF4FED0, &unk_24A635E00);
    MEMORY[0x24C21BBE0](v21, -1, -1);
    MEMORY[0x24C21BBE0](v20, -1, -1);
  }
}

id sub_24A572004(const char *a1, uint64_t a2, uint64_t (*a3)(void), ...)
{
  if (qword_27EF4E9A0 != -1)
  {
    swift_once();
  }

  v7 = sub_24A62E314();
  sub_24A506EB8(v7, qword_27EF5C118);
  v8 = v3;
  v9 = sub_24A62E2F4();
  v10 = sub_24A62EF64();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v24 = v12;
    *v11 = 136315138;
    v13 = [v8 description];
    v14 = sub_24A62EC14();
    v23 = a2;
    v15 = a3;
    v16 = a1;
    v18 = v17;

    v19 = sub_24A509BA8(v14, v18, &v24);

    *(v11 + 4) = v19;
    v20 = v16;
    a3 = v15;
    a2 = v23;
    _os_log_impl(&dword_24A503000, v9, v10, v20, v11, 0xCu);
    sub_24A508C54(v12);
    MEMORY[0x24C21BBE0](v12, -1, -1);
    MEMORY[0x24C21BBE0](v11, -1, -1);
  }

  v21 = a3(a2);
  v25.receiver = v8;
  v25.super_class = v21;
  return objc_msgSendSuper2(&v25, sel_dealloc);
}

uint64_t type metadata accessor for FMR1ProximityManagerSubscription(uint64_t a1)
{
  result = qword_27EF50480;
  if (!qword_27EF50480)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24A5722F0(void *a1, uint64_t a2)
{
  v3 = v2;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_itemLocalizer;
    if (*(Strong + OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_itemLocalizer))
    {
      if (qword_27EF4E9A0 != -1)
      {
        swift_once();
      }

      v8 = sub_24A62E314();
      sub_24A506EB8(v8, qword_27EF5C118);
      v9 = v2;
      v10 = sub_24A62E2F4();
      v11 = sub_24A62EF64();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        *v12 = 138412290;
        *(v12 + 4) = v9;
        *v13 = v9;
        v14 = v9;
        _os_log_impl(&dword_24A503000, v10, v11, "🧭 FMR1PrxSubscr%@: asking to start localizer", v12, 0xCu);
        sub_24A50D6A4(v13, &qword_27EF4FED0, &unk_24A635E00);
        MEMORY[0x24C21BBE0](v13, -1, -1);
        MEMORY[0x24C21BBE0](v12, -1, -1);
      }
    }

    else
    {
      sub_24A545E8C();
      v21 = v6;
      v22 = sub_24A62F014();
      v23 = [objc_allocWithZone(MEMORY[0x277D43C50]) initWithDelegate:v21 queue:v22];

      osloga = sub_24A62F784();
      v25 = v24;
      if (qword_27EF4E9A0 != -1)
      {
        swift_once();
      }

      v26 = sub_24A62E314();
      sub_24A506EB8(v26, qword_27EF5C118);
      v27 = v3;
      v28 = sub_24A62E2F4();
      v29 = sub_24A62EF64();

      if (os_log_type_enabled(v28, v29))
      {
        v45 = v21;
        v30 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v49 = v44;
        *v30 = 138412546;
        *(v30 + 4) = v27;
        *v43 = v27;
        *(v30 + 12) = 2080;
        v31 = v27;
        sub_24A516B88(9, osloga, v25);
        oslogb = v23;

        sub_24A55B6E8();
        sub_24A62ECA4();

        MEMORY[0x24C21A5D0](15939, 0xE200000000000000);

        v32 = sub_24A509BA8(7876668, 0xE300000000000000, &v49);

        *(v30 + 14) = v32;
        v23 = oslogb;
        _os_log_impl(&dword_24A503000, v28, v29, "🧭 FMR1PrxSubscr%@: asking to start localizer, created item localizer <%s> and will re-configure", v30, 0x16u);
        sub_24A50D6A4(v43, &qword_27EF4FED0, &unk_24A635E00);
        MEMORY[0x24C21BBE0](v43, -1, -1);
        sub_24A508C54(v44);
        MEMORY[0x24C21BBE0](v44, -1, -1);
        v33 = v30;
        v21 = v45;
        MEMORY[0x24C21BBE0](v33, -1, -1);
      }

      else
      {
      }

      v34 = *&v21[OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_incrementItemLocalizerHandler];
      if (v34)
      {
        v35 = *&v21[OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_incrementItemLocalizerHandler + 8];

        v34(v36);
        sub_24A50D844(v34, v35);
      }

      v37 = *&v6[v7];
      *&v6[v7] = v23;
      v38 = v23;

      sub_24A56FA54();
    }

    v3[OBJC_IVAR____TtC11FMFindingUI32FMR1ProximityManagerSubscription_wantsLocalizer] = 1;
    v39 = *&v3[OBJC_IVAR____TtC11FMFindingUI32FMR1ProximityManagerSubscription_poseProvider];
    *&v3[OBJC_IVAR____TtC11FMFindingUI32FMR1ProximityManagerSubscription_poseProvider] = a1;

    v40 = OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_releaseItemLocalizerWorkItem;
    if (*&v6[OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_releaseItemLocalizerWorkItem])
    {
      v41 = a1;

      sub_24A62EB34();
    }

    else
    {
      v42 = a1;
    }

    *&v6[v40] = 0;

    sub_24A5708B8();
  }

  else
  {
    if (qword_27EF4E9A0 != -1)
    {
      swift_once();
    }

    v15 = sub_24A62E314();
    sub_24A506EB8(v15, qword_27EF5C118);
    v16 = v2;
    oslog = sub_24A62E2F4();
    v17 = sub_24A62EF64();

    if (os_log_type_enabled(oslog, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138412290;
      *(v18 + 4) = v16;
      *v19 = v16;
      v20 = v16;
      _os_log_impl(&dword_24A503000, oslog, v17, "🧭 FMR1PrxSubscr%@: asking to start localizer but no context", v18, 0xCu);
      sub_24A50D6A4(v19, &qword_27EF4FED0, &unk_24A635E00);
      MEMORY[0x24C21BBE0](v19, -1, -1);
      MEMORY[0x24C21BBE0](v18, -1, -1);
    }
  }
}

void sub_24A572914()
{
  if (qword_27EF4E9A0 != -1)
  {
    swift_once();
  }

  v1 = sub_24A62E314();
  sub_24A506EB8(v1, qword_27EF5C118);
  v2 = v0;
  v3 = sub_24A62E2F4();
  v4 = sub_24A62EF64();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    *(v5 + 4) = v2;
    *v6 = v2;
    v7 = v2;
    _os_log_impl(&dword_24A503000, v3, v4, "🧭 FMR1PrxSubscr%@: asking to stop localizer", v5, 0xCu);
    sub_24A50D6A4(v6, &qword_27EF4FED0, &unk_24A635E00);
    MEMORY[0x24C21BBE0](v6, -1, -1);
    MEMORY[0x24C21BBE0](v5, -1, -1);
  }

  v2[OBJC_IVAR____TtC11FMFindingUI32FMR1ProximityManagerSubscription_wantsLocalizer] = 0;
  v8 = *&v2[OBJC_IVAR____TtC11FMFindingUI32FMR1ProximityManagerSubscription_poseProvider];
  *&v2[OBJC_IVAR____TtC11FMFindingUI32FMR1ProximityManagerSubscription_poseProvider] = 0;

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    sub_24A5708B8();
  }
}

uint64_t sub_24A572AF4(uint64_t a1)
{
  result = sub_24A62E214();
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

id sub_24A572BB8()
{
  v28 = sub_24A62F004();
  v1 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v3 = v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24A62EFD4();
  MEMORY[0x28223BE20](v4);
  v5 = sub_24A62EAD4();
  MEMORY[0x28223BE20](v5 - 8);
  *&v0[OBJC_IVAR____TtC11FMFindingUI20FMR1ProximityManager_contexts] = MEMORY[0x277D84F98];
  v6 = MEMORY[0x277D84F90];
  *&v0[OBJC_IVAR____TtC11FMFindingUI20FMR1ProximityManager_subscriptions] = MEMORY[0x277D84F90];
  v0[OBJC_IVAR____TtC11FMFindingUI20FMR1ProximityManager_applicationIsInBackground] = 0;
  *&v0[OBJC_IVAR____TtC11FMFindingUI20FMR1ProximityManager_itemLocalizersCount] = 0;
  v27 = OBJC_IVAR____TtC11FMFindingUI20FMR1ProximityManager_serialQueue;
  v7 = sub_24A545E8C();
  v26[1] = "zer_in_background";
  v26[2] = v7;
  sub_24A62EAC4();
  v30 = v6;
  sub_24A5763C4(&unk_27EF4F9E0, 255, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  sub_24A508FA4(&unk_27EF50240, &unk_24A634A08);
  sub_24A5238AC(&qword_27EF4F9F0, &unk_27EF50240, &unk_24A634A08);
  sub_24A62F254();
  (*(v1 + 104))(v3, *MEMORY[0x277D85260], v28);
  *&v0[v27] = sub_24A62F044();
  v8 = type metadata accessor for FMR1ProximityManager();
  v29.receiver = v0;
  v29.super_class = v8;
  v9 = objc_msgSendSuper2(&v29, sel_init);
  v10 = objc_opt_self();
  v11 = v9;
  v12 = [v10 defaultCenter];
  [v12 addObserver:v11 selector:sel_applicationDidEnterBackground name:*MEMORY[0x277D76660] object:0];

  v13 = [v10 defaultCenter];
  [v13 addObserver:v11 selector:sel_applicationWillEnterForeground name:*MEMORY[0x277D76758] object:0];

  if (qword_27EF4E9A0 != -1)
  {
    swift_once();
  }

  v14 = sub_24A62E314();
  sub_24A506EB8(v14, qword_27EF5C118);
  v15 = v11;
  v16 = sub_24A62E2F4();
  v17 = sub_24A62EF64();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v30 = v19;
    *v18 = 136315138;
    v20 = [v15 description];
    v21 = sub_24A62EC14();
    v23 = v22;

    v24 = sub_24A509BA8(v21, v23, &v30);

    *(v18 + 4) = v24;
    _os_log_impl(&dword_24A503000, v16, v17, "🧭 FMR1ProximMgr%s: init (v14)", v18, 0xCu);
    sub_24A508C54(v19);
    MEMORY[0x24C21BBE0](v19, -1, -1);
    MEMORY[0x24C21BBE0](v18, -1, -1);
  }

  return v15;
}

uint64_t sub_24A5730E4(const char *a1, char a2, ...)
{
  if (qword_27EF4E9A0 != -1)
  {
LABEL_16:
    swift_once();
  }

  v5 = sub_24A62E314();
  sub_24A506EB8(v5, qword_27EF5C118);
  v6 = v2;
  v7 = sub_24A62E2F4();
  v8 = sub_24A62EF64();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    *(v9 + 4) = v6;
    *v10 = v6;
    v11 = v6;
    _os_log_impl(&dword_24A503000, v7, v8, a1, v9, 0xCu);
    sub_24A50D6A4(v10, &qword_27EF4FED0, &unk_24A635E00);
    MEMORY[0x24C21BBE0](v10, -1, -1);
    MEMORY[0x24C21BBE0](v9, -1, -1);
  }

  *(v6 + OBJC_IVAR____TtC11FMFindingUI20FMR1ProximityManager_applicationIsInBackground) = a2;
  v2 = OBJC_IVAR____TtC11FMFindingUI20FMR1ProximityManager_contexts;
  swift_beginAccess();
  v12 = *&v2[v6];
  a1 = (v12 + 64);
  v13 = 1 << *(v12 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(v12 + 64);
  v16 = (v13 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v17 = 0;
  if (v15)
  {
    while (1)
    {
      v18 = v17;
LABEL_12:
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v20 = *(*(v12 + 56) + ((v18 << 9) | (8 * v19)));
      v20[OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_applicationIsInBackground] = a2;
      v2 = v20;
      sub_24A56E58C();
      sub_24A5708B8();

      if (!v15)
      {
        goto LABEL_8;
      }
    }
  }

  while (1)
  {
LABEL_8:
    v18 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
      goto LABEL_16;
    }

    if (v18 >= v16)
    {
      break;
    }

    v15 = *&a1[8 * v18];
    ++v17;
    if (v15)
    {
      v17 = v18;
      goto LABEL_12;
    }
  }
}

uint64_t sub_24A573370@<X0>(void *a1@<X0>, char *a2@<X1>, void *a3@<X2>, void *a4@<X3>, char a5@<W4>, void *a6@<X8>)
{
  v135 = a6;
  v132 = a4;
  v133 = a3;
  v134 = sub_24A62E214();
  v136 = *(v134 - 8);
  MEMORY[0x28223BE20](v134);
  v10 = &v123 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v123 - v12;
  v14 = a1[3];
  v15 = a1[4];
  sub_24A50A204(a1, v14);
  (*(v15 + 16))(v14, v15);
  v16 = OBJC_IVAR____TtC11FMFindingUI20FMR1ProximityManager_contexts;
  swift_beginAccess();
  if (!*(*&a2[v16] + 16) || (, sub_24A515AC8(v13), v18 = v17, , (v18 & 1) == 0))
  {
    v130 = v10;
    sub_24A508AE4(a1, v137);
    LOBYTE(v140) = a5;
    v43 = objc_allocWithZone(type metadata accessor for FMR1ItemLocalizerContext());
    v44 = sub_24A56B438(v137, &v140);
    v45 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v46 = (v44 + OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_incrementItemLocalizerHandler);
    v47 = *(v44 + OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_incrementItemLocalizerHandler);
    v48 = *(v44 + OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_incrementItemLocalizerHandler + 8);
    *v46 = sub_24A5763B4;
    v46[1] = v45;

    sub_24A50D844(v47, v48);

    v49 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v50 = (v44 + OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_decrementItemLocalizerHandler);
    v51 = *(v44 + OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_decrementItemLocalizerHandler);
    v52 = *(v44 + OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_decrementItemLocalizerHandler + 8);
    *v50 = sub_24A5763BC;
    v50[1] = v49;

    sub_24A50D844(v51, v52);

    swift_beginAccess();
    v53 = v44;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v140 = *&a2[v16];
    *&a2[v16] = 0x8000000000000000;
    v131 = v13;
    sub_24A557C94(v53, v13, isUniquelyReferenced_nonNull_native);
    *&a2[v16] = v140;
    swift_endAccess();
    sub_24A508AE4(a1, v137);
    v55 = objc_allocWithZone(type metadata accessor for FMR1ProximityManagerSubscription(0));
    v56 = swift_unknownObjectRetain();
    v57 = sub_24A575F54(v56, v132, v137, v44);
    swift_unknownObjectRelease();

    sub_24A56F210(v57);
    v58 = OBJC_IVAR____TtC11FMFindingUI20FMR1ProximityManager_subscriptions;
    swift_beginAccess();
    v59 = v57;
    MEMORY[0x24C21A660]();
    if (*((*&a2[v58] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&a2[v58] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_24A62ED84();
    }

    sub_24A62EDA4();
    swift_endAccess();
    if (a2[OBJC_IVAR____TtC11FMFindingUI20FMR1ProximityManager_applicationIsInBackground])
    {
      if (qword_27EF4E9A0 != -1)
      {
        swift_once();
      }

      v60 = sub_24A62E314();
      sub_24A506EB8(v60, qword_27EF5C118);
      sub_24A508AE4(a1, v137);
      v61 = a2;
      v62 = sub_24A62E2F4();
      v63 = sub_24A62EF64();

      if (os_log_type_enabled(v62, v63))
      {
        v64 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        v129 = v65;
        v132 = swift_slowAlloc();
        v140 = v132;
        *v64 = 138412546;
        *(v64 + 4) = v61;
        *v65 = a2;
        *(v64 + 12) = 2080;
        v133 = v59;
        v67 = v138;
        v66 = v139;
        sub_24A50A204(v137, v138);
        LODWORD(v128) = v63;
        v68 = *(v66 + 16);
        v69 = v61;
        v70 = v130;
        v68(v67, v66);
        sub_24A5763C4(&qword_27EF4F660, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v71 = v62;
        v72 = v134;
        v73 = sub_24A62F614();
        v75 = v74;
        v76 = *(v136 + 8);
        v76(v70, v72);
        sub_24A508C54(v137);
        v77 = sub_24A509BA8(v73, v75, &v140);

        *(v64 + 14) = v77;
        _os_log_impl(&dword_24A503000, v71, v128, "🧭 FMR1ProximMgr%@: setting up for '%s', but in background", v64, 0x16u);
        v78 = v129;
        sub_24A50D6A4(v129, &qword_27EF4FED0, &unk_24A635E00);
        MEMORY[0x24C21BBE0](v78, -1, -1);
        v79 = v132;
        sub_24A508C54(v132);
        MEMORY[0x24C21BBE0](v79, -1, -1);
        MEMORY[0x24C21BBE0](v64, -1, -1);

        result = (v76)(v131, v72);
        v59 = v133;
        goto LABEL_41;
      }
    }

    else
    {
      sub_24A545E8C();
      v81 = v53;
      v82 = sub_24A62F014();
      v83 = [objc_allocWithZone(MEMORY[0x277D43C50]) initWithDelegate:v81 queue:v82];

      v84 = *v46;
      if (*v46)
      {
        v85 = v46[1];

        (v84)(v86);
        sub_24A50D844(v84, v85);
      }

      v87 = *&v81[OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_itemLocalizer];
      *&v81[OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_itemLocalizer] = v83;
      v88 = v83;

      sub_24A56FA54();
      if (qword_27EF4E9A0 != -1)
      {
        swift_once();
      }

      v89 = sub_24A62E314();
      sub_24A506EB8(v89, qword_27EF5C118);
      sub_24A508AE4(a1, v137);
      v90 = a2;
      v91 = sub_24A62E2F4();
      v92 = sub_24A62EF64();

      if (os_log_type_enabled(v91, v92))
      {
        v93 = swift_slowAlloc();
        v94 = swift_slowAlloc();
        v128 = v94;
        v129 = swift_slowAlloc();
        v140 = v129;
        *v93 = 138412546;
        *(v93 + 4) = v90;
        *v94 = a2;
        *(v93 + 12) = 2080;
        v133 = v59;
        v96 = v138;
        v95 = v139;
        sub_24A50A204(v137, v138);
        v127 = v92;
        v132 = v88;
        v97 = *(v95 + 16);
        v98 = v90;
        v99 = v130;
        v97(v96, v95);
        sub_24A5763C4(&qword_27EF4F660, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v100 = v134;
        v101 = sub_24A62F614();
        v103 = v102;
        v104 = *(v136 + 8);
        v104(v99, v100);
        sub_24A508C54(v137);
        v105 = sub_24A509BA8(v101, v103, &v140);

        *(v93 + 14) = v105;
        _os_log_impl(&dword_24A503000, v91, v127, "🧭 FMR1ProximMgr%@: setting up for '%s', created item localizer", v93, 0x16u);
        v106 = v128;
        sub_24A50D6A4(v128, &qword_27EF4FED0, &unk_24A635E00);
        MEMORY[0x24C21BBE0](v106, -1, -1);
        v107 = v129;
        sub_24A508C54(v129);
        MEMORY[0x24C21BBE0](v107, -1, -1);
        MEMORY[0x24C21BBE0](v93, -1, -1);

        v108 = v100;
        v59 = v133;
        result = (v104)(v131, v108);
        goto LABEL_41;
      }
    }

    (*(v136 + 8))(v131, v134);
    result = sub_24A508C54(v137);
    goto LABEL_41;
  }

  if (qword_27EF4E9A0 != -1)
  {
    swift_once();
  }

  v19 = sub_24A62E314();
  sub_24A506EB8(v19, qword_27EF5C118);
  v129 = a1;
  sub_24A508AE4(a1, v137);
  v20 = a2;
  v21 = sub_24A62E2F4();
  v22 = sub_24A62EF64();

  v23 = os_log_type_enabled(v21, v22);
  v130 = v20;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v127 = v22;
    v25 = v24;
    v26 = swift_slowAlloc();
    v126 = v26;
    v128 = swift_slowAlloc();
    v140 = v128;
    v124 = v25;
    *v25 = 138412802;
    *(v25 + 4) = v20;
    *v26 = v20;
    *(v25 + 12) = 2080;
    v131 = v13;
    v28 = v138;
    v27 = v139;
    sub_24A50A204(v137, v138);
    v125 = v21;
    v29 = *(v27 + 16);
    v30 = v20;
    v29(v28, v27);
    sub_24A5763C4(&qword_27EF4F660, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v31 = v134;
    v32 = sub_24A62F614();
    v34 = v33;
    (*(v136 + 8))(v10, v31);
    sub_24A508C54(v137);
    v35 = sub_24A509BA8(v32, v34, &v140);

    v36 = v124;
    *(v124 + 14) = v35;
    *(v36 + 22) = 2080;
    if (v30[OBJC_IVAR____TtC11FMFindingUI20FMR1ProximityManager_applicationIsInBackground])
    {
      v37 = 0x6B636162206E6928;
    }

    else
    {
      v37 = 0;
    }

    if (v30[OBJC_IVAR____TtC11FMFindingUI20FMR1ProximityManager_applicationIsInBackground])
    {
      v38 = 0xEF29646E756F7267;
    }

    else
    {
      v38 = 0xE000000000000000;
    }

    v39 = sub_24A509BA8(v37, v38, &v140);

    *(v36 + 24) = v39;
    v13 = v131;
    v40 = v125;
    _os_log_impl(&dword_24A503000, v125, v127, "🧭 FMR1ProximMgr%@: setting up for '%s' but item already known %s", v36, 0x20u);
    v41 = v126;
    sub_24A50D6A4(v126, &qword_27EF4FED0, &unk_24A635E00);
    MEMORY[0x24C21BBE0](v41, -1, -1);
    v42 = v128;
    swift_arrayDestroy();
    MEMORY[0x24C21BBE0](v42, -1, -1);
    MEMORY[0x24C21BBE0](v36, -1, -1);
  }

  else
  {

    sub_24A508C54(v137);
    v31 = v134;
  }

  v109 = *&a2[v16];
  v110 = v129;
  if (*(v109 + 16))
  {

    v111 = sub_24A515AC8(v13);
    if (v112)
    {
      v113 = *(*(v109 + 56) + 8 * v111);
      v114 = v113;
    }

    else
    {
      v113 = 0;
    }

    v115 = v13;
  }

  else
  {
    v115 = v13;
    v113 = 0;
  }

  sub_24A508AE4(v110, v137);
  v116 = objc_allocWithZone(type metadata accessor for FMR1ProximityManagerSubscription(0));
  v117 = v113;
  v118 = swift_unknownObjectRetain();
  v119 = sub_24A575F54(v118, v132, v137, v113);
  swift_unknownObjectRelease();

  if (v113)
  {
    v120 = v117;
    sub_24A56F210(v119);
  }

  v121 = OBJC_IVAR____TtC11FMFindingUI20FMR1ProximityManager_subscriptions;
  v122 = v130;
  swift_beginAccess();
  v59 = v119;
  MEMORY[0x24C21A660]();
  if (*((*&v122[v121] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v122[v121] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_24A62ED84();
  }

  sub_24A62EDA4();
  swift_endAccess();

  result = (*(v136 + 8))(v115, v31);
LABEL_41:
  *v135 = v59;
  return result;
}

void sub_24A5740F0(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = OBJC_IVAR____TtC11FMFindingUI20FMR1ProximityManager_itemLocalizersCount;
    v4 = *(Strong + OBJC_IVAR____TtC11FMFindingUI20FMR1ProximityManager_itemLocalizersCount);
    if (v4 >= 1)
    {
      if (qword_27EF4E9A0 != -1)
      {
LABEL_31:
        swift_once();
      }

      v5 = sub_24A62E314();
      sub_24A506EB8(v5, qword_27EF5C118);
      v6 = v2;
      v7 = sub_24A62E2F4();
      v8 = sub_24A62EF64();
      v28 = v3;
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        *v9 = 138412546;
        *(v9 + 4) = v6;
        *v10 = v2;
        *(v9 + 12) = 2048;
        *(v9 + 14) = *&v2[v3];
        _os_log_impl(&dword_24A503000, v7, v8, "🧭 FMR1ProximMgr%@: previous item localizers still exist (%ld)", v9, 0x16u);
        sub_24A50D6A4(v10, &qword_27EF4FED0, &unk_24A635E00);
        MEMORY[0x24C21BBE0](v10, -1, -1);
        MEMORY[0x24C21BBE0](v9, -1, -1);
      }

      else
      {

        v7 = v6;
      }

      v11 = OBJC_IVAR____TtC11FMFindingUI20FMR1ProximityManager_contexts;
      swift_beginAccess();
      v12 = *(&v6->isa + v11);
      v29 = MEMORY[0x277D84F90];
      v13 = 1 << *(v12 + 32);
      v14 = -1;
      if (v13 < 64)
      {
        v14 = ~(-1 << v13);
      }

      v15 = v14 & *(v12 + 64);
      v3 = (v13 + 63) >> 6;

      v16 = 0;
      while (v15)
      {
LABEL_15:
        v18 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
        v19 = *(*(v12 + 56) + ((v16 << 9) | (8 * v18)));
        if (*&v19[OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_itemLocalizer])
        {
          v20 = v19;
          sub_24A62F3E4();
          sub_24A62F414();
          sub_24A62F424();
          sub_24A62F3F4();
        }
      }

      while (1)
      {
        v17 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          __break(1u);
LABEL_29:
          __break(1u);
LABEL_30:
          __break(1u);
          goto LABEL_31;
        }

        if (v17 >= v3)
        {
          break;
        }

        v15 = *(v12 + 64 + 8 * v17);
        ++v16;
        if (v15)
        {
          v16 = v17;
          goto LABEL_15;
        }
      }

      if (v29 < 0 || (v29 & 0x4000000000000000) != 0)
      {
        v21 = sub_24A62F464();
        v3 = v28;
        if (v21)
        {
          goto LABEL_20;
        }
      }

      else
      {
        v21 = *(v29 + 16);
        v3 = v28;
        if (v21)
        {
LABEL_20:
          v22 = 0;
          do
          {
            if ((v29 & 0xC000000000000001) != 0)
            {
              v23 = MEMORY[0x24C21ACB0](v22, v29);
            }

            else
            {
              if (v22 >= *(v29 + 16))
              {
                goto LABEL_30;
              }

              v23 = *(v29 + 8 * v22 + 32);
            }

            v24 = v23;
            v25 = v22 + 1;
            if (__OFADD__(v22, 1))
            {
              goto LABEL_29;
            }

            sub_24A56DC9C();

            ++v22;
          }

          while (v25 != v21);
        }
      }

      v4 = *&v2[v3];
    }

    v26 = __OFADD__(v4, 1);
    v27 = v4 + 1;
    if (v26)
    {
      __break(1u);
    }

    else
    {
      *&v2[v3] = v27;
    }
  }
}

void sub_24A574448(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = *&Strong[OBJC_IVAR____TtC11FMFindingUI20FMR1ProximityManager_itemLocalizersCount];
    v3 = __OFSUB__(v2, 1);
    v4 = v2 - 1;
    if (v3)
    {
      __break(1u);
    }

    else
    {
      *&Strong[OBJC_IVAR____TtC11FMFindingUI20FMR1ProximityManager_itemLocalizersCount] = v4;
    }
  }
}

double sub_24A5744B0(void *a1)
{
  v3 = sub_24A62EA94();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_24A62EAD4();
  v7 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[1] = *&v1[OBJC_IVAR____TtC11FMFindingUI20FMR1ProximityManager_serialQueue];
  v10 = swift_allocObject();
  *(v10 + 16) = v1;
  *(v10 + 24) = a1;
  aBlock[4] = sub_24A5763AC;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A5A8458;
  aBlock[3] = &unk_285DA5CF0;
  v11 = _Block_copy(aBlock);
  v12 = v1;
  v13 = a1;
  sub_24A62EAB4();
  v17 = MEMORY[0x277D84F90];
  sub_24A5763C4(&qword_27EF4F970, 255, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_24A508FA4(&unk_27EF50510, &unk_24A633E30);
  sub_24A5238AC(&qword_27EF4F980, &unk_27EF50510, &unk_24A633E30);
  sub_24A62F254();
  MEMORY[0x24C21A950](0, v9, v6, v11);
  _Block_release(v11);
  (*(v4 + 8))(v6, v3);
  (*(v7 + 8))(v9, v16);

  return result;
}

uint64_t sub_24A574778(char *a1, void *a2)
{
  v4 = sub_24A62E214();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v88 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v88 - v9;
  v98 = a2;
  sub_24A508AE4(a2 + OBJC_IVAR____TtC11FMFindingUI32FMR1ProximityManagerSubscription_findable, v100);
  v11 = v101;
  v12 = v102;
  sub_24A50A204(v100, v101);
  v12[2](v11, v12);
  sub_24A508C54(v100);
  v13 = OBJC_IVAR____TtC11FMFindingUI20FMR1ProximityManager_contexts;
  swift_beginAccess();
  v14 = *&a1[v13];
  if (*(v14 + 16))
  {

    v15 = sub_24A515AC8(v10);
    if (v16)
    {
      v12 = *(*(v14 + 56) + 8 * v15);

      if (sub_24A56F860(v98))
      {
        if (qword_27EF4E9A0 != -1)
        {
          goto LABEL_34;
        }

        while (1)
        {
          v17 = sub_24A62E314();
          sub_24A506EB8(v17, qword_27EF5C118);
          v12 = v12;
          v18 = a1;
          v19 = sub_24A62E2F4();
          v20 = sub_24A62EF64();

          if (os_log_type_enabled(v19, v20))
          {
            v21 = swift_slowAlloc();
            LODWORD(v94) = v20;
            v22 = v21;
            v23 = swift_slowAlloc();
            v93 = v23;
            v95 = swift_slowAlloc();
            v99[0] = v95;
            v92 = v22;
            *v22 = 138412546;
            *(v22 + 4) = v18;
            *v23 = v18;
            *(v22 + 12) = 2080;
            sub_24A508AE4(v12 + OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_findable, v100);
            v24 = v101;
            v25 = v102;
            sub_24A50A204(v100, v101);
            v91 = v19;
            v96 = v4;
            v97 = v12;
            v26 = v25[1];
            v27 = v18;
            v28 = (v26)(v24, v25);
            v4 = v96;
            v12 = v97;
            v29 = v28;
            v31 = v30;
            sub_24A508C54(v100);
            v32 = sub_24A509BA8(v29, v31, v99);

            v33 = v91;
            v34 = v92;
            *(v92 + 14) = v32;
            _os_log_impl(&dword_24A503000, v33, v94, "🧭 FMR1ProximMgr%@: unsubscribing, did not tear down, subscriptions still exist '%s'", v34, 0x16u);
            v35 = v93;
            sub_24A50D6A4(v93, &qword_27EF4FED0, &unk_24A635E00);
            MEMORY[0x24C21BBE0](v35, -1, -1);
            v36 = v95;
            sub_24A508C54(v95);
            MEMORY[0x24C21BBE0](v36, -1, -1);
            MEMORY[0x24C21BBE0](v34, -1, -1);
          }

          else
          {
          }

          sub_24A56F63C(v98);
LABEL_27:

          (*(v5 + 8))(v10, v4);
          v5 = OBJC_IVAR____TtC11FMFindingUI20FMR1ProximityManager_subscriptions;
          swift_beginAccess();
          v85 = v98;
          v38 = sub_24A5760FC(&a1[v5], v85);

          v86 = *&a1[v5];
          if (v86 >> 62)
          {
            v40 = sub_24A62F464();
            if (v40 >= v38)
            {
              goto LABEL_29;
            }
          }

          else
          {
            v40 = *((v86 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v40 >= v38)
            {
              goto LABEL_29;
            }
          }

          __break(1u);
LABEL_34:
          swift_once();
        }
      }

LABEL_11:
      if (*(v12 + OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_activity) == 1)
      {
        v94 = v7;
        if (qword_27EF4E9A0 != -1)
        {
          swift_once();
        }

        v41 = sub_24A62E314();
        sub_24A506EB8(v41, qword_27EF5C118);
        v42 = v12;
        v43 = a1;
        v44 = sub_24A62E2F4();
        v45 = sub_24A62EF64();
        v95 = v42;

        v46 = v43;
        LODWORD(v93) = v45;
        if (os_log_type_enabled(v44, v45))
        {
          v47 = swift_slowAlloc();
          v48 = swift_slowAlloc();
          v91 = v48;
          v92 = swift_slowAlloc();
          v99[0] = v92;
          v90 = v47;
          *v47 = 138412546;
          *(v47 + 4) = v46;
          v48->isa = v46;
          *(v47 + 12) = 2080;
          sub_24A508AE4(v95 + OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_findable, v100);
          v96 = v4;
          v97 = v12;
          v49 = v101;
          v50 = v102;
          sub_24A50A204(v100, v101);
          v51 = v44;
          v89 = v50[1];
          v52 = v46;
          v53 = v50;
          v4 = v96;
          v54 = (v89)(v49, v53);
          v56 = v55;
          sub_24A508C54(v100);
          v57 = sub_24A509BA8(v54, v56, v99);
          v12 = v97;

          v58 = v90;
          *(v90 + 14) = v57;
          _os_log_impl(&dword_24A503000, v51, v93, "🧭 FMR1ProximMgr%@: tore down '%s' (stopping first)", v58, 0x16u);
          v59 = v91;
          sub_24A50D6A4(v91, &qword_27EF4FED0, &unk_24A635E00);
          MEMORY[0x24C21BBE0](v59, -1, -1);
          v60 = v92;
          sub_24A508C54(v92);
          MEMORY[0x24C21BBE0](v60, -1, -1);
          MEMORY[0x24C21BBE0](v58, -1, -1);
        }

        else
        {
        }

        v7 = v94;
      }

      else
      {
        if (qword_27EF4E9A0 != -1)
        {
          swift_once();
        }

        v61 = sub_24A62E314();
        sub_24A506EB8(v61, qword_27EF5C118);
        v97 = v12;
        v62 = v12;
        v63 = a1;
        v64 = sub_24A62E2F4();
        v65 = sub_24A62EF64();

        v94 = v63;
        v95 = v64;
        if (os_log_type_enabled(v64, v65))
        {
          v66 = swift_slowAlloc();
          LODWORD(v92) = v65;
          v67 = v66;
          v68 = v62;
          v69 = swift_slowAlloc();
          v91 = v69;
          v93 = swift_slowAlloc();
          v99[0] = v93;
          v90 = v67;
          *v67 = 138412546;
          v70 = v94;
          *(v67 + 4) = v94;
          v69->isa = v70;
          *(v67 + 12) = 2080;
          sub_24A508AE4(v68 + OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_findable, v100);
          v71 = v101;
          v72 = v102;
          v73 = sub_24A50A204(v100, v101);
          v74 = v95;
          v96 = v4;
          v75 = v72[1];
          v88 = v73;
          v89 = v75;
          v76 = v70;
          v77 = (v89)(v71, v72);
          v4 = v96;
          v78 = v77;
          v80 = v79;
          sub_24A508C54(v100);
          v81 = sub_24A509BA8(v78, v80, v99);

          v82 = v90;
          *(v90 + 14) = v81;
          _os_log_impl(&dword_24A503000, v74, v92, "🧭 FMR1ProximMgr%@: unsubscribing, tore down '%s'", v82, 0x16u);
          v83 = v91;
          sub_24A50D6A4(v91, &qword_27EF4FED0, &unk_24A635E00);
          MEMORY[0x24C21BBE0](v83, -1, -1);
          v84 = v93;
          sub_24A508C54(v93);
          MEMORY[0x24C21BBE0](v84, -1, -1);
          MEMORY[0x24C21BBE0](v82, -1, -1);
        }

        else
        {
        }

        v12 = v97;
      }

      sub_24A56DC9C();
      (*(v5 + 16))(v7, v10, v4);
      swift_beginAccess();
      sub_24A56AFEC(0, v7, sub_24A557C94, sub_24A55BB6C, sub_24A558FB0);
      swift_endAccess();
      goto LABEL_27;
    }
  }

  (*(v5 + 8))(v10, v4);
  v5 = OBJC_IVAR____TtC11FMFindingUI20FMR1ProximityManager_subscriptions;
  swift_beginAccess();
  v37 = v98;
  v38 = sub_24A5760FC(&a1[v5], v37);

  v39 = *&a1[v5];
  if (v39 >> 62)
  {
    v40 = sub_24A62F464();
    if (v40 < v38)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v40 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v40 < v38)
    {
LABEL_10:
      __break(1u);
      goto LABEL_11;
    }
  }

LABEL_29:
  sub_24A575E30(v38, v40, sub_24A5EB5D0, type metadata accessor for FMR1ProximityManagerSubscription);
  return swift_endAccess();
}

id sub_24A57515C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMR1ProximityManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t getEnumTagSinglePayload for FMLocalizerActivity(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for FMLocalizerActivity(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for FMFindableState(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for FMFindableState(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_24A5754C4()
{
  result = qword_27EF504C0;
  if (!qword_27EF504C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF504C0);
  }

  return result;
}

unint64_t sub_24A57551C()
{
  result = qword_27EF504C8;
  if (!qword_27EF504C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF504C8);
  }

  return result;
}

unint64_t sub_24A575574()
{
  result = qword_27EF504D0;
  if (!qword_27EF504D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF504D0);
  }

  return result;
}

unint64_t sub_24A5755C8(unint64_t a1, uint64_t a2)
{
  v3 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_17:
    v4 = sub_24A62F464();
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  while (1)
  {
    if (v4 == v5)
    {
      return 0;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x24C21ACB0](v5, a1);
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v6 = *(a1 + 8 * v5 + 32);
    }

    v7 = v6;
    v8 = sub_24A62E1E4();

    if (v8)
    {
      return v5;
    }

    if (__OFADD__(v5++, 1))
    {
      goto LABEL_16;
    }
  }
}

unint64_t sub_24A5756CC(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result = v6 + 32 + 8 * result + 8 * a3;
  v10 = (v6 + 32 + 8 * a2);
  if (result != v10 || result >= v10 + 8 * v9)
  {
    v12 = a3;
    result = memmove(result, v10, 8 * v9);
    a3 = v12;
  }

  v13 = *(v6 + 16);
  v8 = __OFADD__(v13, v5);
  v14 = v13 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v14;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_24A575774(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 2);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > *(v4 + 3) >> 1)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_24A61760C(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v2 = v4;
  }

  result = sub_24A5756CC(v6, a2, 0);
  *v2 = v4;
  return result;
}

void sub_24A575834(uint64_t a1, uint64_t a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (*&Strong[OBJC_IVAR____TtC11FMFindingUI24FMR1ItemLocalizerContext_itemLocalizer])
    {
      goto LABEL_13;
    }

    v4 = Strong;
    if (qword_27EF4E9A0 != -1)
    {
      swift_once();
    }

    v5 = sub_24A62E314();
    sub_24A506EB8(v5, qword_27EF5C118);
    v6 = v2;
    oslog = sub_24A62E2F4();
    v7 = sub_24A62EF64();

    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      *(v8 + 4) = v6;
      *v9 = v6;
      v10 = v6;
      _os_log_impl(&dword_24A503000, oslog, v7, "🧭 FMR1PrxSubscr%@: asking to log torch changed state analytics event but no itemlocalizer", v8, 0xCu);
      sub_24A50D6A4(v9, &qword_27EF4FED0, &unk_24A635E00);
      MEMORY[0x24C21BBE0](v9, -1, -1);
      MEMORY[0x24C21BBE0](v8, -1, -1);
    }
  }

  else
  {
    if (qword_27EF4E9A0 != -1)
    {
      swift_once();
    }

    v11 = sub_24A62E314();
    sub_24A506EB8(v11, qword_27EF5C118);
    v12 = v2;
    oslog = sub_24A62E2F4();
    v13 = sub_24A62EF64();

    if (os_log_type_enabled(oslog, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412290;
      *(v14 + 4) = v12;
      *v15 = v12;
      v16 = v12;
      _os_log_impl(&dword_24A503000, oslog, v13, "🧭 FMR1PrxSubscr%@: asking to log torch changed state analytics event but no context", v14, 0xCu);
      sub_24A50D6A4(v15, &qword_27EF4FED0, &unk_24A635E00);
      MEMORY[0x24C21BBE0](v15, -1, -1);
      MEMORY[0x24C21BBE0](v14, -1, -1);
    }
  }

  Strong = oslog;
LABEL_13:
}

unint64_t sub_24A575AF0(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result >= 5)
  {
    return 5;
  }

  return result;
}

unint64_t sub_24A575B08(unint64_t result)
{
  if (result >= 9)
  {
    return 9;
  }

  return result;
}

unint64_t sub_24A575B18(unint64_t result)
{
  if (result >= 6)
  {
    return 6;
  }

  return result;
}

unint64_t sub_24A575B28()
{
  result = qword_27EF504E0;
  if (!qword_27EF504E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF504E0);
  }

  return result;
}

unint64_t sub_24A575B7C()
{
  result = qword_27EF504E8;
  if (!qword_27EF504E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF504E8);
  }

  return result;
}

unint64_t sub_24A575BD0()
{
  result = qword_27EF504F0;
  if (!qword_27EF504F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF504F0);
  }

  return result;
}

uint64_t sub_24A575C24()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24A575C80(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24A575CBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A508FA4(&unk_27EF50520, &unk_24A633B10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24A575D2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v10 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v4 = a3;
  v7 = a2;
  v11 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v8 = v5 + 4;
  v6 = &v5[a1 + 4];
  a4(0);
  result = swift_arrayDestroy();
  v13 = __OFSUB__(v4, v10);
  v10 = v4 - v10;
  if (v13)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v10)
  {
    goto LABEL_17;
  }

  v9 = v11 >> 62;
  if (!(v11 >> 62))
  {
    result = v5[2];
    v14 = result - v7;
    if (!__OFSUB__(result, v7))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_24A62F464();
  v14 = result - v7;
  if (__OFSUB__(result, v7))
  {
    goto LABEL_23;
  }

LABEL_6:
  v15 = (v6 + 8 * v4);
  v16 = &v8[v7];
  if (v15 != v16 || v15 >= &v16[8 * v14])
  {
    memmove(v15, v16, 8 * v14);
  }

  if (v9)
  {
    result = sub_24A62F464();
  }

  else
  {
    result = v5[2];
  }

  if (__OFADD__(result, v10))
  {
    goto LABEL_24;
  }

  v5[2] = result + v10;
LABEL_17:
  if (v4 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_24A575E30(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), uint64_t (*a4)(void))
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = a4;
    v9 = a3;
    v7 = a2;
    v8 = a1;
    v10 = *v6;
    v11 = *v6 >> 62;
    if (!v11)
    {
      result = *((*v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_13:
      __break(1u);
      goto LABEL_14;
    }
  }

  result = sub_24A62F464();
  if (result < v7)
  {
    goto LABEL_13;
  }

LABEL_4:
  if (__OFSUB__(v7, v8))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v13 = v8 - v7;
  if (__OFSUB__(0, v7 - v8))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v11)
  {
    v14 = sub_24A62F464();
  }

  else
  {
    v14 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v15 = __OFADD__(v14, v13);
  result = v14 + v13;
  if (!v15)
  {
    v9(result, 1);
    return sub_24A575D2C(v8, v7, 0, v5);
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_24A575F14()
{
  MEMORY[0x24C21BCD0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

id sub_24A575F54(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = sub_24A62E214();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = &v4[OBJC_IVAR____TtC11FMFindingUI32FMR1ProximityManagerSubscription_subscriber];
  *&v4[OBJC_IVAR____TtC11FMFindingUI32FMR1ProximityManagerSubscription_subscriber + 8] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v4[OBJC_IVAR____TtC11FMFindingUI32FMR1ProximityManagerSubscription_wantsRangingOnly] = 0;
  v4[OBJC_IVAR____TtC11FMFindingUI32FMR1ProximityManagerSubscription_wantsLocalizer] = 0;
  *&v4[OBJC_IVAR____TtC11FMFindingUI32FMR1ProximityManagerSubscription_poseProvider] = 0;
  sub_24A62E204();
  (*(v8 + 32))(&v4[OBJC_IVAR____TtC11FMFindingUI32FMR1ProximityManagerSubscription_identifier], v10, v7);
  *(v11 + 1) = a2;
  swift_unknownObjectWeakAssign();
  sub_24A508AE4(a3, &v4[OBJC_IVAR____TtC11FMFindingUI32FMR1ProximityManagerSubscription_findable]);
  swift_unknownObjectWeakAssign();
  v12 = type metadata accessor for FMR1ProximityManagerSubscription(0);
  v15.receiver = v4;
  v15.super_class = v12;
  v13 = objc_msgSendSuper2(&v15, sel_init);
  sub_24A508C54(a3);
  return v13;
}

unint64_t sub_24A5760FC(unint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  result = sub_24A5755C8(*a1, a2);
  v7 = result;
  if (v2)
  {
    return v7;
  }

  if (v6)
  {
    if (v4 >> 62)
    {
      return sub_24A62F464();
    }

    return *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v8 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
    return result;
  }

  while (1)
  {
    if (v4 >> 62)
    {
      if (v8 == sub_24A62F464())
      {
        return v7;
      }
    }

    else if (v8 == *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v7;
    }

    if ((v4 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x24C21ACB0](v8, v4);
      goto LABEL_15;
    }

    if ((v8 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v8 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_40;
    }

    v10 = *(v4 + 8 * v8 + 32);
LABEL_15:
    v11 = v10;
    v12 = sub_24A62E1E4();

    if ((v12 & 1) == 0)
    {
      if (v7 != v8)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v13 = MEMORY[0x24C21ACB0](v7, v4);
          v14 = MEMORY[0x24C21ACB0](v8, v4);
        }

        else
        {
          if ((v7 & 0x8000000000000000) != 0)
          {
            goto LABEL_44;
          }

          v15 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v7 >= v15)
          {
            goto LABEL_45;
          }

          if (v8 >= v15)
          {
            goto LABEL_46;
          }

          v16 = *(v4 + 32 + 8 * v8);
          v13 = *(v4 + 32 + 8 * v7);
          v14 = v16;
        }

        v17 = v14;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v4 & 0x8000000000000000) != 0 || (v4 & 0x4000000000000000) != 0)
        {
          v4 = sub_24A5EB5C8();
          v18 = (v4 >> 62) & 1;
        }

        else
        {
          LODWORD(v18) = 0;
        }

        v19 = v4 & 0xFFFFFFFFFFFFFF8;
        v20 = *((v4 & 0xFFFFFFFFFFFFFF8) + 8 * v7 + 0x20);
        *((v4 & 0xFFFFFFFFFFFFFF8) + 8 * v7 + 0x20) = v17;

        if ((v4 & 0x8000000000000000) != 0 || v18)
        {
          v4 = sub_24A5EB5C8();
          v19 = v4 & 0xFFFFFFFFFFFFFF8;
          if ((v8 & 0x8000000000000000) != 0)
          {
LABEL_37:
            __break(1u);
            return v7;
          }
        }

        else if ((v8 & 0x8000000000000000) != 0)
        {
          goto LABEL_37;
        }

        if (v8 >= *(v19 + 16))
        {
          goto LABEL_43;
        }

        v21 = v19 + 8 * v8;
        v22 = *(v21 + 32);
        *(v21 + 32) = v13;

        *a1 = v4;
      }

      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        goto LABEL_42;
      }
    }

    v9 = __OFADD__(v8++, 1);
    if (v9)
    {
      goto LABEL_41;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
  return sub_24A62F464();
}

uint64_t sub_24A57636C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24A5763C4(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_24A576440(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24A576470(uint64_t a1)
{
  v1 = *(a1 + 99);
  if (v1 >= 4)
  {
    return v1 - 3;
  }

  else
  {
    return 0;
  }
}

__n128 sub_24A576484(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 93) = *(a2 + 93);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_24A5764B0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF9 && *(a1 + 101))
  {
    return (*a1 + 249);
  }

  v3 = *(a1 + 99);
  if (v3 >= 4)
  {
    v4 = v3 - 3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 >= 5)
  {
    return v4 - 4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24A5764F8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF8)
  {
    *(result + 93) = 0;
    *(result + 64) = 0u;
    *(result + 80) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 249;
    if (a3 >= 0xF9)
    {
      *(result + 101) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF9)
    {
      *(result + 101) = 0;
    }

    if (a2)
    {
      *(result + 99) = a2 + 7;
    }
  }

  return result;
}

double sub_24A57654C(uint64_t a1, unsigned int a2)
{
  if (a2 > 0xFC)
  {
    *(a1 + 88) = 0;
    result = 0.0;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 100) = 0;
    *(a1 + 96) = 0;
    *a1 = a2 - 253;
  }

  else if (a2)
  {
    *(a1 + 99) = a2 + 3;
  }

  return result;
}

uint64_t sub_24A5765B0()
{
  sub_24A62F714();
  sub_24A62EC74();

  return sub_24A62F754();
}

uint64_t sub_24A576668(uint64_t a1)
{
  sub_24A62EC74();
}

uint64_t sub_24A57670C(uint64_t a1)
{
  sub_24A62F714();
  sub_24A62EC74();

  return sub_24A62F754();
}

unint64_t sub_24A5767C0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_24A5777D0(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_24A5767F0(uint64_t *a1@<X8>)
{
  v2 = 0xE400000000000000;
  v3 = 1701869940;
  v4 = 0xE500000000000000;
  v5 = 0x646E657274;
  if (*v1 != 2)
  {
    v5 = 1953393000;
    v4 = 0xE400000000000000;
  }

  if (*v1)
  {
    v3 = 0x6D6572757361656DLL;
    v2 = 0xEB00000000746E65;
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

uint64_t sub_24A576864()
{
  v1 = 1701869940;
  v2 = 0x646E657274;
  if (*v0 != 2)
  {
    v2 = 1953393000;
  }

  if (*v0)
  {
    v1 = 0x6D6572757361656DLL;
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

unint64_t sub_24A5768D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24A5777D0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24A576908(uint64_t a1)
{
  v2 = sub_24A577CDC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A576944(uint64_t a1)
{
  v2 = sub_24A577CDC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24A576980()
{
  v1 = (((*(v0 + 96) & 0xFF000000) - 0x4000000) >> 24);
  if (v1 > 1)
  {
    if (v1 == 2)
    {
      v2 = 0xE600000000000000;
      v3 = 0x676E69766F6DLL;
      goto LABEL_11;
    }

    if (v1 == 3)
    {
      v2 = 0xEF68746150646574;
      v3 = 0x6172656E65676564;
      goto LABEL_11;
    }

LABEL_8:
    v4 = sub_24A5AEE40();
    MEMORY[0x24C21A5D0](v4);

    MEMORY[0x24C21A5D0](8250, 0xE200000000000000);

    sub_24A508FA4(&qword_27EF50588, &qword_24A636BF0);
    v5 = sub_24A62F1B4();
    v7 = v6;

    MEMORY[0x24C21A5D0](v5, v7);

    v3 = 0x657463656E6E6F63;
    v2 = 0xEB00000000203A64;
    goto LABEL_11;
  }

  if (!(((*(v0 + 96) & 0xFF000000) - 0x4000000) >> 24))
  {
    v2 = 0xEC00000064657463;
    v3 = 0x656E6E6F63736964;
    goto LABEL_11;
  }

  if (v1 != 1)
  {
    goto LABEL_8;
  }

  v2 = 0xEA0000000000676ELL;
  v3 = 0x697463656E6E6F63;
LABEL_11:
  sub_24A508FA4(&qword_27EF50530, qword_24A636270);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_24A633830;
  *(v8 + 56) = MEMORY[0x277D837D0];
  *(v8 + 64) = sub_24A508FEC();
  *(v8 + 32) = v3;
  *(v8 + 40) = v2;
  return sub_24A62EC24();
}

uint64_t sub_24A576BB8(void *a1)
{
  v3 = v1;
  v5 = sub_24A508FA4(&qword_27EF50570, &qword_24A636BE8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - v7;
  sub_24A50A204(a1, a1[3]);
  sub_24A577CDC();
  sub_24A62F774();
  v9 = *(v3 + 24) | (*(v3 + 100) << 32);
  v10 = (((v3[6] & 0xFF000000) - 0x4000000) >> 24);
  if (v10 > 1)
  {
    if (v10 == 2)
    {
      LOBYTE(v17) = 0;
      goto LABEL_12;
    }

    if (v10 == 3)
    {
      LOBYTE(v17) = 0;
      goto LABEL_12;
    }
  }

  else
  {
    if (!(((v3[6] & 0xFF000000) - 0x4000000) >> 24))
    {
      LOBYTE(v17) = 0;
      goto LABEL_12;
    }

    if (v10 == 1)
    {
      LOBYTE(v17) = 0;
LABEL_12:
      sub_24A62F5C4();
      return (*(v6 + 8))(v8, v5);
    }
  }

  LOBYTE(v17) = 0;
  sub_24A62F5C4();
  if (!v2)
  {
    v11 = v3[3];
    v19 = v3[2];
    v20 = v11;
    v12 = v3[5];
    v21 = v3[4];
    v22 = v12;
    v13 = v3[1];
    v17 = *v3;
    v18 = v13;
    v23 = v9;
    v24 = BYTE2(v9);
    v16 = 1;
    sub_24A577E2C();
    sub_24A62F5D4();
    LOBYTE(v17) = BYTE3(v9);
    v16 = 2;
    sub_24A577E80();
    sub_24A62F5D4();
    LOBYTE(v17) = BYTE4(v9);
    v16 = 3;
    sub_24A508FA4(&qword_27EF50588, &qword_24A636BF0);
    sub_24A577ED4();
    sub_24A62F5D4();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_24A576E74(uint64_t a1)
{
  v3 = *(v1 + 96) | (*(v1 + 100) << 32);
  v4 = (((*(v1 + 96) & 0xFF000000) - 0x4000000) >> 24);
  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = 4;
      return MEMORY[0x24C21B040](v5);
    }

    if (v4 == 3)
    {
      v5 = 5;
      return MEMORY[0x24C21B040](v5);
    }
  }

  else
  {
    if (!(((*(v1 + 96) & 0xFF000000) - 0x4000000) >> 24))
    {
LABEL_12:
      v5 = 1;
      return MEMORY[0x24C21B040](v5);
    }

    if (v4 == 1)
    {
      v5 = 2;
      return MEMORY[0x24C21B040](v5);
    }
  }

  MEMORY[0x24C21B040](3);
  sub_24A5AFE14(a1);
  MEMORY[0x24C21B040](BYTE3(v3));
  if (HIDWORD(v3) == 3)
  {
    return sub_24A62F734();
  }

  sub_24A62F734();
  if (HIDWORD(v3) == 2)
  {
    goto LABEL_12;
  }

  MEMORY[0x24C21B040](0);
  return sub_24A62F734();
}

uint64_t sub_24A576F98(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 80);
  v11[4] = *(a1 + 64);
  v12[0] = v2;
  *(v12 + 13) = *(a1 + 93);
  v3 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v3;
  v4 = *(a1 + 48);
  v11[2] = *(a1 + 32);
  v11[3] = v4;
  v5 = *(a2 + 16);
  v13[0] = *a2;
  v13[1] = v5;
  v6 = *(a2 + 32);
  v7 = *(a2 + 48);
  v8 = *(a2 + 64);
  v9 = *(a2 + 80);
  *&v14[13] = *(a2 + 93);
  v13[4] = v8;
  *v14 = v9;
  v13[2] = v6;
  v13[3] = v7;
  return sub_24A5773B4(v11, v13) & 1;
}

uint64_t sub_24A577004()
{
  sub_24A62F714();
  sub_24A576E74(v1);
  return sub_24A62F754();
}

uint64_t sub_24A577048(uint64_t a1)
{
  sub_24A62F714();
  sub_24A576E74(v2);
  return sub_24A62F754();
}

__n128 sub_24A577084@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_24A57781C(a2, v7);
  if (!v2)
  {
    v5 = *v8;
    *(a1 + 64) = v7[4];
    *(a1 + 80) = v5;
    *(a1 + 93) = *&v8[13];
    v6 = v7[1];
    *a1 = v7[0];
    *(a1 + 16) = v6;
    result = v7[3];
    *(a1 + 32) = v7[2];
    *(a1 + 48) = result;
  }

  return result;
}

unint64_t sub_24A577104()
{
  result = qword_27EF50540;
  if (!qword_27EF50540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF50540);
  }

  return result;
}

void sub_24A577158(uint64_t a1@<X8>)
{
  v3 = objc_opt_self();

  v4 = sub_24A62EBE4();
  v5 = MGGetSInt32Answer();

  v6 = [v3 mainScreen];
  [v6 nativeScale];
  v8 = v7;

  v9 = [v3 mainScreen];
  [v9 bounds];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v40.origin.x = v11;
  v40.origin.y = v13;
  v40.size.width = v15;
  v40.size.height = v17;
  Width = CGRectGetWidth(v40);
  v19 = [v3 mainScreen];
  [v19 bounds];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;

  v41.origin.x = v21;
  v41.origin.y = v23;
  v41.size.width = v25;
  v41.size.height = v27;
  v28 = CGRectGetWidth(v41);
  v29 = *(v1 + 96);
  _Q3 = 0uLL;
  v31 = 0.0;
  v32 = 0.0;
  if ((v29 | 0x2000000u) >> 25 == 3)
  {
LABEL_2:
    v33 = 0.0;
    goto LABEL_3;
  }

  v34 = v5 * 1.252 / v8 / v28;
  v35 = BYTE2(v29);
  v33 = 1.0;
  if (v35 > 1)
  {
    if (v35 == 2)
    {
      __asm { FMOV            V3.2D, #4.5 }

      *&_Q3 = v34;
      v32 = INFINITY;
      v31 = 0.8;
      goto LABEL_3;
    }

    if (v35 == 3)
    {
      __asm { FMOV            V3.2D, #4.5 }

      *&_Q3 = v34;
      goto LABEL_3;
    }

    _Q3 = 0uLL;
    goto LABEL_2;
  }

  if (v35)
  {
    v32 = 0.5;
    __asm { FMOV            V3.2D, #0.5 }

    *&_Q3 = (32.0 / Width + v34) * 0.5;
    v31 = 0.5;
  }

  else
  {
    *(&_Q3 + 1) = 0;
    *&_Q3 = 32.0 / Width;
    v31 = 0.2;
    v32 = 1.0;
  }

LABEL_3:
  *a1 = _Q3;
  *(a1 + 16) = v33;
  *(a1 + 24) = v31;
  *(a1 + 32) = v32;
}

uint64_t sub_24A5773B4(__int128 *a1, __int128 *a2)
{
  v2 = *(a1 + 2);
  v3 = *(a1 + 24) | (*(a1 + 100) << 32);
  v4 = (((a1[6] & 0xFF000000) - 0x4000000) >> 24);
  if (v4 > 1)
  {
    if (v4 != 2)
    {
      if (v4 == 3)
      {
        goto LABEL_29;
      }

      goto LABEL_8;
    }

    if ((a2[6] & 0xFE000000) != 0x6000000)
    {
      goto LABEL_29;
    }

LABEL_17:
    v8 = 1;
    return v8 & 1;
  }

  if (!(((a1[6] & 0xFF000000) - 0x4000000) >> 24))
  {
    if (*(a2 + 99) << 24 != 0x4000000)
    {
      goto LABEL_29;
    }

    goto LABEL_17;
  }

  if (v4 == 1)
  {
    if (*(a2 + 99) << 24 == 83886080)
    {
      goto LABEL_17;
    }

LABEL_29:
    v8 = 0;
    return v8 & 1;
  }

LABEL_8:
  v5 = *(a2 + 24);
  if ((v5 | 0x2000000) >> 25 == 3)
  {
    goto LABEL_29;
  }

  v6 = v5 | (*(a2 + 100) << 32);
  v7 = BYTE2(v5);
  if (BYTE2(*(a1 + 24)) <= 1u)
  {
    if (BYTE2(*(a1 + 24)))
    {
      if (v7 != 1)
      {
        goto LABEL_29;
      }
    }

    else if (v7)
    {
      goto LABEL_29;
    }
  }

  else if (BYTE2(*(a1 + 24)) == 2)
  {
    if (v7 != 2)
    {
      goto LABEL_29;
    }
  }

  else
  {
    if (BYTE2(*(a1 + 24)) != 3)
    {
      if (v7 != 4)
      {
        goto LABEL_29;
      }

      v9 = *(a2 + 2);
      v52 = *a1;
      v10 = *(a1 + 40);
      v11 = *(a1 + 72);
      v49 = *(a1 + 56);
      v50 = v11;
      v51 = *(a1 + 11);
      v47 = *(a1 + 24);
      v48 = v10;
      *&v46[6] = *a2;
      if (v2 == 1)
      {
        if (v9 == 1)
        {
          v27 = *a1;
          *&v28[24] = *(a1 + 40);
          *&v28[40] = *(a1 + 56);
          *&v28[56] = *(a1 + 72);
          v12 = *(a1 + 11);
          *v28 = 1;
          *&v28[72] = v12;
          *&v28[8] = *(a1 + 24);
          v29 = v3;
          sub_24A508CE4(a1, &v30);
          sub_24A508CE4(a2, &v30);
          sub_24A50D6A4(&v27, &qword_27EF4F650, &unk_24A633E00);
          goto LABEL_28;
        }
      }

      else if (v9 != 1)
      {
        v24 = *a2;
        *v25 = v9;
        *&v25[8] = *(a2 + 24);
        *&v25[24] = *(a2 + 40);
        *&v25[72] = *(a2 + 11);
        *&v25[56] = *(a2 + 72);
        *&v25[40] = *(a2 + 56);
        v26 = v6;
        v27 = v24;
        *v28 = *v25;
        v29 = v6;
        *&v28[48] = *&v25[48];
        *&v28[64] = *&v25[64];
        *&v28[16] = *&v25[16];
        *&v28[32] = *&v25[32];
        v53 = *a1;
        v55 = *(a1 + 24);
        v20 = *(a1 + 40);
        v21 = *(a1 + 56);
        v22 = *(a1 + 11);
        v58 = *(a1 + 72);
        v57 = v21;
        v56 = v20;
        v59 = v22;
        v54 = v2;
        v60 = v3;
        v23 = a2;
        sub_24A508CE4(a1, &v30);
        sub_24A508CE4(v23, &v30);
        LOBYTE(v23) = sub_24A51B4E4(&v53, &v27);
        sub_24A50D6A4(&v24, &qword_27EF4F650, &unk_24A633E00);
        v30 = v52;
        v33 = v48;
        v34 = v49;
        v35 = v50;
        v31 = v2;
        v36 = v51;
        v32 = v47;
        v37 = v3;
        sub_24A50D6A4(&v30, &qword_27EF4F650, &unk_24A633E00);
        if ((v23 & 1) == 0)
        {
          goto LABEL_29;
        }

        goto LABEL_28;
      }

      v30 = *a1;
      v33 = *(a1 + 40);
      v34 = *(a1 + 56);
      v35 = *(a1 + 72);
      v15 = *(a1 + 11);
      v31 = v2;
      v36 = v15;
      v32 = *(a1 + 24);
      v37 = v3;
      *&v38[14] = *&v46[14];
      v39 = v9;
      *v38 = *v46;
      v16 = *(a2 + 24);
      v44 = *(a2 + 11);
      v17 = *(a2 + 72);
      v42 = *(a2 + 56);
      v43 = v17;
      v18 = *(a2 + 40);
      v40 = v16;
      v41 = v18;
      v45 = v6;
      sub_24A508CE4(a1, &v27);
      sub_24A508CE4(a2, &v27);
      sub_24A50D6A4(&v30, &qword_27EF4F648, &qword_24A633DF8);
      goto LABEL_29;
    }

    if (v7 != 3)
    {
      goto LABEL_29;
    }
  }

LABEL_28:
  if (((v6 ^ v3) & 0xFF000000) != 0)
  {
    goto LABEL_29;
  }

  v8 = HIDWORD(v3) == 3;
  if (BYTE4(v6) != 3)
  {
    v8 = 0;
  }

  if (HIDWORD(v3) != 3 && BYTE4(v6) != 3)
  {
    v8 = HIDWORD(v3) == 2;
    if (BYTE4(v6) != 2)
    {
      v8 = 0;
    }

    if (HIDWORD(v3) != 2 && BYTE4(v6) != 2)
    {
      v8 = BYTE4(v6) ^ BYTE4(v3) ^ 1;
    }
  }

  return v8 & 1;
}

unint64_t sub_24A5777D0(uint64_t a1, uint64_t a2)
{
  v2 = sub_24A62F4B4();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_24A57781C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_24A508FA4(&qword_27EF50548, &qword_24A636BE0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - v7;
  sub_24A50A204(a1, a1[3]);
  sub_24A577CDC();
  sub_24A62F764();
  if (v2)
  {
    return sub_24A508C54(a1);
  }

  v38 = 0;
  v9 = sub_24A62F534();
  if (v9 <= 2)
  {
    if (v9 == 1)
    {
      (*(v6 + 8))(v8, v5);
      v11 = 0uLL;
      v22 = 0u;
      v12 = 0x4000000;
      goto LABEL_15;
    }

    if (v9 == 2)
    {
      (*(v6 + 8))(v8, v5);
      v11 = 0uLL;
      v22 = 0u;
      v12 = 83886080;
      goto LABEL_15;
    }
  }

  else
  {
    switch(v9)
    {
      case 3:
        v31 = 1;
        sub_24A577D30();
        sub_24A62F544();
        v29 = v36;
        *v30 = *v37;
        *&v30[15] = *&v37[15];
        v25 = v32;
        v26 = v33;
        v28 = v35;
        v27 = v34;
        v23 = 2;
        sub_24A577D84();
        sub_24A62F544();
        v16 = v24;
        v23 = 3;
        sub_24A577DD8();
        sub_24A62F544();
        (*(v6 + 8))(v8, v5);
        v21 = v26;
        v22 = v25;
        v19 = v28;
        v20 = v27;
        v17 = *v30;
        v18 = v29;
        v12 = (v24 << 32) | (v16 << 24) | *&v30[16] | (v30[18] << 16);
LABEL_16:
        result = sub_24A508C54(a1);
        v13 = v21;
        *a2 = v22;
        *(a2 + 16) = v13;
        v14 = v19;
        *(a2 + 32) = v20;
        *(a2 + 48) = v14;
        v15 = v17;
        *(a2 + 64) = v18;
        *(a2 + 80) = v15;
        *(a2 + 96) = v12;
        *(a2 + 100) = BYTE4(v12);
        return result;
      case 4:
        (*(v6 + 8))(v8, v5);
        v11 = 0uLL;
        v22 = 0u;
        v12 = 100663296;
LABEL_15:
        v21 = v11;
        v20 = v11;
        v19 = v11;
        v18 = v11;
        v17 = v11;
        goto LABEL_16;
      case 5:
        (*(v6 + 8))(v8, v5);
        v11 = 0uLL;
        v22 = 0u;
        v12 = 117440512;
        goto LABEL_15;
    }
  }

  result = sub_24A62F444();
  __break(1u);
  return result;
}

unint64_t sub_24A577CDC()
{
  result = qword_27EF50550;
  if (!qword_27EF50550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF50550);
  }

  return result;
}

unint64_t sub_24A577D30()
{
  result = qword_27EF50558;
  if (!qword_27EF50558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF50558);
  }

  return result;
}

unint64_t sub_24A577D84()
{
  result = qword_27EF50560;
  if (!qword_27EF50560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF50560);
  }

  return result;
}

unint64_t sub_24A577DD8()
{
  result = qword_27EF50568;
  if (!qword_27EF50568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF50568);
  }

  return result;
}

unint64_t sub_24A577E2C()
{
  result = qword_27EF50578;
  if (!qword_27EF50578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF50578);
  }

  return result;
}

unint64_t sub_24A577E80()
{
  result = qword_27EF50580;
  if (!qword_27EF50580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF50580);
  }

  return result;
}

unint64_t sub_24A577ED4()
{
  result = qword_27EF50590;
  if (!qword_27EF50590)
  {
    sub_24A50E1E0(&qword_27EF50588, &qword_24A636BF0);
    sub_24A577F58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF50590);
  }

  return result;
}

unint64_t sub_24A577F58()
{
  result = qword_27EF50598;
  if (!qword_27EF50598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF50598);
  }

  return result;
}

unint64_t sub_24A577FC0()
{
  result = qword_27EF505A0;
  if (!qword_27EF505A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF505A0);
  }

  return result;
}

unint64_t sub_24A578018()
{
  result = qword_27EF505A8;
  if (!qword_27EF505A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF505A8);
  }

  return result;
}

unint64_t sub_24A578070()
{
  result = qword_27EF505B0;
  if (!qword_27EF505B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF505B0);
  }

  return result;
}

uint64_t sub_24A578204()
{
  sub_24A62F384();

  v0 = sub_24A62F784();
  v2 = sub_24A516B88(6, v0, v1);
  v4 = v3;
  v6 = v5;
  v8 = v7;

  v9 = MEMORY[0x24C21A580](v2, v4, v6, v8);
  v11 = v10;

  MEMORY[0x24C21A5D0](v9, v11);

  MEMORY[0x24C21A5D0](30768, 0xE200000000000000);

  MEMORY[0x24C21A5D0](62, 0xE100000000000000);
  v12 = sub_24A62EC24();

  return v12;
}

id sub_24A5783B4(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v6 = v5;
  v12 = sub_24A62EAA4();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtC11FMFindingUI13FMPFARSCNView_innerIsolationQueue;
  sub_24A50D7EC(0, &qword_27EF4F9C0, 0x277D85C78);
  (*(v13 + 104))(v15, *MEMORY[0x277D851C8], v12);
  v17 = sub_24A62F054();
  (*(v13 + 8))(v15, v12);
  *&v6[v16] = v17;
  *&v6[OBJC_IVAR____TtC11FMFindingUI13FMPFARSCNView_internalIsolationQueue] = 0;
  if (a1)
  {
    v18 = sub_24A62EB74();
  }

  else
  {
    v18 = 0;
  }

  v19 = type metadata accessor for FMPFARSCNView();
  v22.receiver = v6;
  v22.super_class = v19;
  v20 = objc_msgSendSuper2(&v22, sel_initWithFrame_options_, v18, a2, a3, a4, a5);

  return v20;
}

id sub_24A578784(void *a1)
{
  v2 = v1;
  v4 = sub_24A62EAA4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC11FMFindingUI13FMPFARSCNView_innerIsolationQueue;
  sub_24A50D7EC(0, &qword_27EF4F9C0, 0x277D85C78);
  (*(v5 + 104))(v7, *MEMORY[0x277D851C8], v4);
  v9 = sub_24A62F054();
  (*(v5 + 8))(v7, v4);
  *&v2[v8] = v9;
  *&v2[OBJC_IVAR____TtC11FMFindingUI13FMPFARSCNView_internalIsolationQueue] = 0;
  v10 = type metadata accessor for FMPFARSCNView();
  v13.receiver = v2;
  v13.super_class = v10;
  v11 = objc_msgSendSuper2(&v13, sel_initWithCoder_, a1);

  if (v11)
  {
  }

  return v11;
}

id sub_24A57891C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for FMPFARSCNView();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_24A5789C0()
{
  result = qword_27EF505D0;
  if (!qword_27EF505D0)
  {
    sub_24A50D7EC(255, &qword_27EF505C8, 0x277D75C68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF505D0);
  }

  return result;
}

id sub_24A578A28(double a1, double a2, double a3, double a4)
{
  v8 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v9 = a3 * 0.5;
  v10 = a1 - a3 * 0.5;
  v11 = a4 * 0.5;
  v12 = a4 * 0.5 + a2;
  v13 = v9 + a1;
  v14 = a2 - v11;
  v15 = v8;
  [v15 moveToPoint_];
  [v15 addLineToPoint_];
  [v15 addLineToPoint_];
  [v15 addLineToPoint_];
  [v15 addLineToPoint_];
  [v15 closePath];

  return v15;
}

id sub_24A578B24(uint64_t a1, uint64_t a2)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = objc_allocWithZone(v2);
  sub_24A50D7EC(0, &qword_27EF507A8, 0x277CBF6B8);
  v4 = sub_24A62ED54();

  sub_24A50D7EC(0, &qword_27EF50798, 0x277CBF6A8);
  v5 = sub_24A62ED54();

  v10[0] = 0;
  v6 = [v3 initWithEvents:v4 parameters:v5 error:v10];

  if (v6)
  {
    v7 = v10[0];
  }

  else
  {
    v8 = v10[0];
    sub_24A62E084();

    swift_willThrow();
  }

  return v6;
}

id sub_24A578D44(uint64_t a1, uint64_t a2, unint64_t *a3, void *a4, SEL *a5)
{
  v17[1] = *MEMORY[0x277D85DE8];
  v9 = &v5[OBJC_IVAR____TtC11FMFindingUI17FMR1HapticPattern_name];
  *v9 = 0;
  v9[1] = 0;
  v5[OBJC_IVAR____TtC11FMFindingUI17FMR1HapticPattern_isTap] = 2;
  sub_24A50D7EC(0, &qword_27EF507A8, 0x277CBF6B8);
  v10 = sub_24A62ED54();

  sub_24A50D7EC(0, a3, a4);
  v11 = sub_24A62ED54();

  v17[0] = 0;
  v16.receiver = v5;
  v16.super_class = type metadata accessor for FMR1HapticPattern();
  v12 = objc_msgSendSuper2(&v16, *a5, v10, v11, v17);

  if (v12)
  {
    v13 = v17[0];
  }

  else
  {
    v14 = v17[0];
    sub_24A62E084();

    swift_willThrow();
  }

  return v12;
}

id sub_24A578EC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t *a6, void *a7, SEL *a8)
{
  sub_24A50D7EC(0, &qword_27EF507A8, 0x277CBF6B8);
  v11 = sub_24A62ED64();
  sub_24A50D7EC(0, a6, a7);
  v12 = sub_24A62ED64();
  return sub_24A578D44(v11, v12, a6, a7, a8);
}

id sub_24A578FB8(uint64_t a1)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v2 = &v1[OBJC_IVAR____TtC11FMFindingUI17FMR1HapticPattern_name];
  *v2 = 0;
  v2[1] = 0;
  v1[OBJC_IVAR____TtC11FMFindingUI17FMR1HapticPattern_isTap] = 2;
  type metadata accessor for Key(0);
  sub_24A582FCC(&qword_27EF4F1C0, type metadata accessor for Key, &unk_24A63376C);
  v3 = sub_24A62EB74();

  v9[0] = 0;
  v8.receiver = v1;
  v8.super_class = type metadata accessor for FMR1HapticPattern();
  v4 = objc_msgSendSuper2(&v8, sel_initWithDictionary_error_, v3, v9);

  if (v4)
  {
    v5 = v9[0];
  }

  else
  {
    v6 = v9[0];
    sub_24A62E084();

    swift_willThrow();
  }

  return v4;
}

id sub_24A5791E0(uint64_t a1)
{
  v2 = v1;
  v14[1] = *MEMORY[0x277D85DE8];
  v4 = objc_allocWithZone(v2);
  v5 = sub_24A62E0B4();
  v14[0] = 0;
  v6 = [v4 initWithContentsOfURL:v5 error:v14];

  v7 = v14[0];
  if (v6)
  {
    v8 = sub_24A62E0F4();
    v9 = *(*(v8 - 8) + 8);
    v10 = v7;
    v9(a1, v8);
  }

  else
  {
    v11 = v14[0];
    sub_24A62E084();

    swift_willThrow();
    v12 = sub_24A62E0F4();
    (*(*(v12 - 8) + 8))(a1, v12);
  }

  return v6;
}

id sub_24A579338(uint64_t a1)
{
  v2 = v1;
  v15[1] = *MEMORY[0x277D85DE8];
  v4 = &v2[OBJC_IVAR____TtC11FMFindingUI17FMR1HapticPattern_name];
  *v4 = 0;
  v4[1] = 0;
  v2[OBJC_IVAR____TtC11FMFindingUI17FMR1HapticPattern_isTap] = 2;
  v5 = sub_24A62E0B4();
  v15[0] = 0;
  v14.receiver = v2;
  v14.super_class = type metadata accessor for FMR1HapticPattern();
  v6 = objc_msgSendSuper2(&v14, sel_initWithContentsOfURL_error_, v5, v15);

  v7 = v15[0];
  if (v6)
  {
    v8 = sub_24A62E0F4();
    v9 = *(*(v8 - 8) + 8);
    v10 = v7;
    v9(a1, v8);
  }

  else
  {
    v11 = v15[0];
    sub_24A62E084();

    swift_willThrow();
    v12 = sub_24A62E0F4();
    (*(*(v12 - 8) + 8))(a1, v12);
  }

  return v6;
}

id sub_24A579580(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for FMR1HapticPattern();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_24A579790()
{
  v1 = OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_hapticCapability;
  *&v0[v1] = [objc_opt_self() capabilitiesForHardware];
  *&v0[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_hapticEngine] = 0;
  *&v0[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_hapticDisplayLink] = 0;
  v2 = &v0[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_lastRenderTime];
  *v2 = 0;
  v2[8] = 1;
  v3 = &v0[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_tapHapticLastPlayTimestamp];
  *v3 = 0;
  v3[8] = 1;
  v4 = &v0[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_tapHapticNextPlayDelay];
  *v4 = 0;
  v4[8] = 1;
  v5 = &v0[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_tapHapticPlaybackPeriod];
  *v5 = 0;
  v5[8] = 1;
  v6 = &v0[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_tapHapticContext];
  *v6 = 0u;
  v6[1] = 0u;
  *&v0[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_singleTapSelectedHapticPattern] = 0;
  v7 = &v0[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_singleTapSelectedHapticPatternIntensity];
  *v7 = 0;
  v7[4] = 1;
  *&v0[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_singleTap1HapticPattern] = 0;
  *&v0[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_singleTap2HapticPattern] = 0;
  *&v0[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_singleTap3HapticPattern] = 0;
  *&v0[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_singleTap4HapticPattern] = 0;
  *&v0[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_singleTap5HapticPattern] = 0;
  *&v0[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_connectedHapticPattern] = 0;
  *&v0[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_buildHapticPattern] = 0;
  *&v0[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_scatterHapticPattern] = 0;
  *&v0[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_aheadHapticPattern] = 0;
  *&v0[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_aheadOffHapticPattern] = 0;
  *&v0[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_armsReachHapticPattern] = 0;
  *&v0[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_armsReachOffHapticPattern] = 0;
  *&v0[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_preNearbyHapticPattern] = 0;
  *&v0[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_nearbyHapticPattern] = 0;
  *&v0[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_levelIncreaseHapticPattern] = 0;
  *&v0[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_levelDecreaseHapticPattern] = 0;
  *&v0[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_farNearHapticPattern] = 0;
  *&v0[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_farHapticPattern] = 0;
  *&v0[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_pulseViewPattern] = 0;
  v8 = &v0[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_nearbyHapticLastPlayTimestamp];
  *v8 = 0;
  v8[8] = 1;
  *&v0[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_continuousHapticPattern] = 0;
  *&v0[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_continuousHapticPlayer] = 0;
  v9 = &v0[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_continuousHapticFactor];
  *v9 = 0;
  v9[4] = 1;
  v10 = OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_continuousHapticRampingFactorSpring;
  *&v0[v10] = sub_24A5B1B3C(0x3FF0000000000000, 0, 0, 1, 0, 1);
  *&v0[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playBuildHapticWorkItem] = 0;
  *&v0[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playScatterHapticWorkItem] = 0;
  v0[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_setup] = 0;
  v0[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_hapticsMayBePlaying] = 0;
  *&v0[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_startContinuousHapticWorkItem] = 0;
  *&v0[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_restartContinuousHapticWorkItem] = 0;
  v0[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_enablePlayingAheadHaptic] = 0;
  v0[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_isPlayingContinuousHapticPattern] = 0;
  *&v0[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playArmsReachHapticWorkItem] = 0;
  *&v0[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playNearbyHapticWorkItem] = 0;
  v0[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_hasPlayedArmsReachHaptic] = 0;
  *&v0[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_continuousHapticFactorLogCounter] = 0;
  v11 = &v0[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_lastLoggedContinuousHapticFactor];
  *v11 = 0;
  v11[4] = 1;
  v12 = &v0[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_playedHapticPatternHandler];
  v13 = type metadata accessor for FMR1HapticsController();
  *v12 = 0;
  v12[1] = 0;
  v24.receiver = v0;
  v24.super_class = v13;
  v14 = objc_msgSendSuper2(&v24, sel_init);
  v15 = qword_27EF4E9A0;
  v16 = v14;
  if (v15 != -1)
  {
    swift_once();
  }

  v17 = sub_24A62E314();
  sub_24A506EB8(v17, qword_27EF5C118);
  v18 = sub_24A62E2F4();
  v19 = sub_24A62EF64();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v20 = 138412290;
    *(v20 + 4) = v16;
    *v21 = v16;
    v22 = v16;
    _os_log_impl(&dword_24A503000, v18, v19, "🧭 FMR1HaptiCtrl%@: init", v20, 0xCu);
    sub_24A50D6A4(v21, &qword_27EF4FED0, &unk_24A635E00);
    MEMORY[0x24C21BBE0](v21, -1, -1);
    MEMORY[0x24C21BBE0](v20, -1, -1);
  }

  return v16;
}

id sub_24A579BE4()
{
  if (qword_27EF4E9A0 != -1)
  {
    swift_once();
  }

  v1 = sub_24A62E314();
  sub_24A506EB8(v1, qword_27EF5C118);
  v2 = v0;
  v3 = sub_24A62E2F4();
  v4 = sub_24A62EF64();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14 = v6;
    *v5 = 136315138;
    v7 = [v2 description];
    v8 = sub_24A62EC14();
    v10 = v9;

    v11 = sub_24A509BA8(v8, v10, &v14);

    *(v5 + 4) = v11;
    _os_log_impl(&dword_24A503000, v3, v4, "🧭 FMR1HaptiCtrl%s: deinit", v5, 0xCu);
    sub_24A508C54(v6);
    MEMORY[0x24C21BBE0](v6, -1, -1);
    MEMORY[0x24C21BBE0](v5, -1, -1);
  }

  v12 = type metadata accessor for FMR1HapticsController();
  v15.receiver = v2;
  v15.super_class = v12;
  return objc_msgSendSuper2(&v15, sel_dealloc);
}

unint64_t sub_24A57A06C(uint64_t a1, unint64_t a2, int a3)
{
  v46 = a3;
  v6 = sub_24A62E0F4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v44 - v11;
  type metadata accessor for FMR1HapticsController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v14 = [objc_opt_self() bundleForClass_];
  v15 = a2;
  v16 = sub_24A62EBE4();
  v17 = sub_24A62EBE4();
  v47 = v14;
  v18 = [v14 URLForResource:v16 withExtension:v17];

  if (!v18)
  {
    if (qword_27EF4E9A0 != -1)
    {
      swift_once();
    }

    v20 = sub_24A62E314();
    sub_24A506EB8(v20, qword_27EF5C118);

    v21 = v3;
    v22 = sub_24A62E2F4();
    v23 = sub_24A62EF64();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v48 = v26;
      *v24 = 138412546;
      *(v24 + 4) = v21;
      *v25 = v21;
      *(v24 + 12) = 2080;
      v27 = v21;
      *(v24 + 14) = sub_24A509BA8(a1, v15, &v48);
      _os_log_impl(&dword_24A503000, v22, v23, "🧭 FMR1HaptiCtrl%@: unable to load '%s' haptic pattern", v24, 0x16u);
      sub_24A50D6A4(v25, &qword_27EF4FED0, &unk_24A635E00);
      MEMORY[0x24C21BBE0](v25, -1, -1);
      sub_24A508C54(v26);
      MEMORY[0x24C21BBE0](v26, -1, -1);
      MEMORY[0x24C21BBE0](v24, -1, -1);
    }

    goto LABEL_8;
  }

  sub_24A62E0D4();

  type metadata accessor for FMR1HapticPattern();
  (*(v7 + 16))(v9, v12, v6);
  v19 = sub_24A5791E0(v9);
  if (!v19)
  {
    (*(v7 + 8))(v12, v6);
LABEL_8:

    return 0;
  }

  v45 = v19;
  v29 = v19;

  v30 = sub_24A5823AC(4, a1, v15);

  result = sub_24A62F1D4();
  if (v31)
  {
    v32 = v30;
  }

  else
  {
    v32 = result;
  }

  if (v32 >> 14 < v30 >> 14)
  {
    __break(1u);
  }

  else
  {
    v33 = sub_24A62F1E4();
    v35 = v34;
    v37 = v36;
    v39 = v38;

    v40 = MEMORY[0x24C21A580](v33, v35, v37, v39);
    v42 = v41;

    (*(v7 + 8))(v12, v6);
    v43 = &v29[OBJC_IVAR____TtC11FMFindingUI17FMR1HapticPattern_name];
    *v43 = v40;
    v43[1] = v42;

    v29[OBJC_IVAR____TtC11FMFindingUI17FMR1HapticPattern_isTap] = v46 & 1;

    return v45;
  }

  return result;
}

void sub_24A57A50C()
{
  v96 = *MEMORY[0x277D85DE8];
  if (v0[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_setup])
  {
    return;
  }

  v0[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_setup] = 1;
  if (qword_27EF4E9A0 != -1)
  {
    swift_once();
  }

  v1 = sub_24A62E314();
  sub_24A506EB8(v1, qword_27EF5C118);
  v2 = v0;
  v3 = sub_24A62E2F4();
  v4 = sub_24A62EF64();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    *(v5 + 4) = v2;
    *v6 = v2;
    v7 = v2;
    _os_log_impl(&dword_24A503000, v3, v4, "🧭 FMR1HaptiCtrl%@: setting up haptic engine", v5, 0xCu);
    sub_24A50D6A4(v6, &qword_27EF4FED0, &unk_24A635E00);
    MEMORY[0x24C21BBE0](v6, -1, -1);
    MEMORY[0x24C21BBE0](v5, -1, -1);
  }

  sub_24A508FA4(&qword_27EF507B0, &unk_24A636E10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24A636580;
  v9 = *MEMORY[0x277CBF628];
  *(inited + 32) = *MEMORY[0x277CBF628];
  v10 = MEMORY[0x277D837D0];
  *(inited + 40) = 0x746C7561666544;
  *(inited + 48) = 0xE700000000000000;
  v11 = *MEMORY[0x277CBF620];
  *(inited + 64) = v10;
  *(inited + 72) = v11;
  v12 = *MEMORY[0x277CBF698];
  type metadata accessor for CHHapticPowerUsage(0);
  *(inited + 80) = v12;
  v13 = *MEMORY[0x277CBF630];
  *(inited + 104) = v14;
  *(inited + 112) = v13;
  v15 = *MEMORY[0x277CBF6A0];
  type metadata accessor for CHHapticUsageCategory(0);
  *(inited + 144) = v16;
  *(inited + 120) = v15;
  v17 = v9;
  v18 = v11;
  v19 = v12;
  v20 = v13;
  v21 = v15;
  v22 = sub_24A59C6F8(inited);
  swift_setDeallocating();
  sub_24A508FA4(&qword_27EF507B8, &qword_24A638320);
  swift_arrayDestroy();
  sub_24A57B06C(v22);

  v23 = objc_allocWithZone(MEMORY[0x277CBF6B0]);
  v24 = sub_24A62EB74();

  aBlock = 0;
  v25 = [v23 initWithAudioSession:0 sessionIsShared:0 options:v24 error:&aBlock];

  v26 = aBlock;
  if (v25)
  {
    v27 = *&v2[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_hapticEngine];
    *&v2[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_hapticEngine] = v25;
    v28 = v25;
    v29 = v26;

    v30 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v94 = sub_24A582FAC;
    v95 = v30;
    aBlock = MEMORY[0x277D85DD0];
    v91 = 1107296256;
    v92 = sub_24A5A8458;
    v93 = &unk_285DA60A0;
    v31 = _Block_copy(&aBlock);

    [v28 setResetHandler:v31];
    _Block_release(v31);
    v32 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v94 = sub_24A582FB4;
    v95 = v32;
    aBlock = MEMORY[0x277D85DD0];
    v91 = 1107296256;
    v92 = sub_24A57B880;
    v93 = &unk_285DA60C8;
    v33 = _Block_copy(&aBlock);

    [v28 setStoppedHandler:v33];
    _Block_release(v33);
    [v28 setPlaysHapticsOnly:0];
    [v28 setAutoShutdownEnabled:1];
    [v28 setIsMutedForAudio:0];
    [v28 setFollowAudioRoute:0];
    [v28 startWithCompletionHandler:0];
    v34 = v2;
    v35 = sub_24A62E2F4();
    v36 = sub_24A62EF64();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      *v37 = 138412290;
      *(v37 + 4) = v34;
      *v38 = v34;
      v39 = v34;
      _os_log_impl(&dword_24A503000, v35, v36, "🧭 FMR1HaptiCtrl%@: started haptic engine", v37, 0xCu);
      sub_24A50D6A4(v38, &qword_27EF4FED0, &unk_24A635E00);
      MEMORY[0x24C21BBE0](v38, -1, -1);
      MEMORY[0x24C21BBE0](v37, -1, -1);
    }
  }

  else
  {
    v40 = aBlock;
    v41 = sub_24A62E084();

    swift_willThrow();
    v42 = v2;
    v43 = v41;
    v28 = sub_24A62E2F4();
    v44 = sub_24A62EF64();

    if (!os_log_type_enabled(v28, v44))
    {

      goto LABEL_13;
    }

    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v89 = swift_slowAlloc();
    aBlock = v89;
    *v45 = 138412546;
    *(v45 + 4) = v42;
    *v46 = v42;
    *(v45 + 12) = 2080;
    swift_getErrorValue();
    v47 = v42;
    v48 = sub_24A62F6A4();
    v50 = sub_24A509BA8(v48, v49, &aBlock);

    *(v45 + 14) = v50;
    _os_log_impl(&dword_24A503000, v28, v44, "🧭 FMR1HaptiCtrl%@: failed creating haptic engine: %s", v45, 0x16u);
    sub_24A50D6A4(v46, &qword_27EF4FED0, &unk_24A635E00);
    MEMORY[0x24C21BBE0](v46, -1, -1);
    sub_24A508C54(v89);
    MEMORY[0x24C21BBE0](v89, -1, -1);
    MEMORY[0x24C21BBE0](v45, -1, -1);
  }

LABEL_13:
  v51 = sub_24A57A06C(0xD000000000000011, 0x800000024A63FDD0, 1);
  v52 = *&v2[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_singleTap1HapticPattern];
  *&v2[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_singleTap1HapticPattern] = v51;

  v53 = sub_24A57A06C(0xD000000000000011, 0x800000024A63FDF0, 1);
  v54 = *&v2[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_singleTap2HapticPattern];
  *&v2[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_singleTap2HapticPattern] = v53;

  v55 = sub_24A57A06C(0xD000000000000013, 0x800000024A63FE10, 1);
  v56 = *&v2[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_singleTap3HapticPattern];
  *&v2[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_singleTap3HapticPattern] = v55;

  v57 = sub_24A57A06C(0xD000000000000012, 0x800000024A63FE30, 1);
  v58 = *&v2[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_singleTap4HapticPattern];
  *&v2[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_singleTap4HapticPattern] = v57;

  v59 = sub_24A57A06C(0xD000000000000012, 0x800000024A63FE50, 1);
  v60 = *&v2[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_singleTap5HapticPattern];
  *&v2[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_singleTap5HapticPattern] = v59;

  v61 = sub_24A57A06C(0xD000000000000012, 0x800000024A63FE70, 0);
  v62 = *&v2[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_connectedHapticPattern];
  *&v2[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_connectedHapticPattern] = v61;

  v63 = sub_24A57A06C(0xD000000000000014, 0x800000024A63FE90, 0);
  v64 = *&v2[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_buildHapticPattern];
  *&v2[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_buildHapticPattern] = v63;

  v65 = sub_24A57A06C(0xD000000000000016, 0x800000024A63FEB0, 0);
  v66 = *&v2[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_scatterHapticPattern];
  *&v2[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_scatterHapticPattern] = v65;

  v67 = sub_24A57A06C(0x6165684131524D46, 0xEE00393833422D64, 1);
  v68 = *&v2[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_aheadHapticPattern];
  *&v2[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_aheadHapticPattern] = v67;

  v69 = sub_24A57A06C(0xD000000000000012, 0x800000024A63FED0, 0);
  v70 = *&v2[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_aheadOffHapticPattern];
  *&v2[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_aheadOffHapticPattern] = v69;

  v71 = sub_24A57A06C(0xD000000000000012, 0x800000024A63FEF0, 0);
  v72 = *&v2[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_armsReachHapticPattern];
  *&v2[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_armsReachHapticPattern] = v71;

  v73 = sub_24A57A06C(0xD000000000000016, 0x800000024A63FF10, 0);
  v74 = *&v2[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_armsReachOffHapticPattern];
  *&v2[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_armsReachOffHapticPattern] = v73;

  v75 = sub_24A57A06C(0xD000000000000012, 0x800000024A63FF30, 0);
  v76 = *&v2[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_preNearbyHapticPattern];
  *&v2[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_preNearbyHapticPattern] = v75;

  v77 = sub_24A57A06C(0x7261654E31524D46, 0xEF393833422D7962, 0);
  v78 = *&v2[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_nearbyHapticPattern];
  *&v2[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_nearbyHapticPattern] = v77;

  v79 = sub_24A57A06C(0x462D495353524D46, 0xEF7261654E2D7261, 0);
  v80 = *&v2[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_farNearHapticPattern];
  *&v2[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_farNearHapticPattern] = v79;

  v81 = sub_24A57A06C(0xD000000000000015, 0x800000024A63FF50, 0);
  v82 = *&v2[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_levelIncreaseHapticPattern];
  *&v2[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_levelIncreaseHapticPattern] = v81;

  v83 = sub_24A57A06C(0xD000000000000015, 0x800000024A63FF70, 0);
  v84 = *&v2[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_levelDecreaseHapticPattern];
  *&v2[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_levelDecreaseHapticPattern] = v83;

  v85 = [objc_opt_self() displayLinkWithTarget:v2 selector:sel_hapticDisplayLinkUpdateWithDisplaylink_];
  v86 = *&v2[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_hapticDisplayLink];
  *&v2[OBJC_IVAR____TtC11FMFindingUI21FMR1HapticsController_hapticDisplayLink] = v85;
  v87 = v85;

  if (v87)
  {
    v88 = [objc_opt_self() currentRunLoop];
    [v87 addToRunLoop:v88 forMode:*MEMORY[0x277CBE738]];
  }

  sub_24A57B9E0();
}

uint64_t sub_24A57B06C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_24A508FA4(&unk_27EF507C0, &qword_24A636E20);
    v2 = sub_24A62F494();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = *(*(a1 + 48) + 8 * v13);
    sub_24A50A248(*(a1 + 56) + 32 * v13, v34 + 8);
    *&v34[0] = v14;
    v32[0] = v34[0];
    v32[1] = v34[1];
    v33 = v35;
    *&v31[0] = v14;
    type metadata accessor for CHHapticEngineOptionKey(0);
    v15 = v14;
    swift_dynamicCast();
    sub_24A582FBC((v32 + 8), v26);
    v27 = v23;
    v28 = v24;
    v29 = v25;
    sub_24A582FBC(v26, v30);
    v23 = v27;
    v24 = v28;
    v25 = v29;
    sub_24A582FBC(v30, v31);
    result = sub_24A62F324();
    v16 = -1 << *(v2 + 32);
    v17 = result & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v7 + 8 * (v17 >> 6))) == 0)
    {
      v19 = 0;
      v20 = (63 - v16) >> 6;
      while (++v18 != v20 || (v19 & 1) == 0)
      {
        v21 = v18 == v20;
        if (v18 == v20)
        {
          v18 = 0;
        }

        v19 |= v21;
        v22 = *(v7 + 8 * v18);
        if (v22 != -1)
        {
          v10 = __clz(__rbit64(~v22)) + (v18 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v17) & ~*(v7 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v23;
    *(v11 + 16) = v24;
    *(v11 + 32) = v25;
    result = sub_24A582FBC(v31, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}