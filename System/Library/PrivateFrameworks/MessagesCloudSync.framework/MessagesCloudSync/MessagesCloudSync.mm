void sub_22B92C008()
{
  v1 = v0;
  v2 = sub_22B9349C8(&unk_27D8D4A90, &qword_22BA126A0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v118 - v3;
  v5 = sub_22BA0FD8C();
  v121 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v120 = &v118 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22BA0FF1C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v118 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281414B68 != -1)
  {
    swift_once();
  }

  v11 = qword_28141ACF0;
  if (sub_22B92DA70(1, 0))
  {
    v119 = v4;
    v12 = type metadata accessor for SyncCoordinator();
    if ([objc_opt_self() isMainThread])
    {
      if (off_281416A80)
      {
LABEL_6:
        if (qword_281414D30 != -1)
        {
          swift_once();
        }

        v13 = sub_22BA0FEFC();
        sub_22B936CA8(v13, qword_28141AD40);
        v14 = sub_22BA0FEDC();
        v15 = sub_22BA1044C();
        if (os_log_type_enabled(v14, v15))
        {
          v16 = swift_slowAlloc();
          *v16 = 0;
          _os_log_impl(&dword_22B92A000, v14, v15, "Tried to resume syncing, but we're already syncing", v16, 2u);
          MEMORY[0x23189ADD0](v16, -1, -1);
        }

        return;
      }
    }

    else
    {
      LOBYTE(v126) = 0;
      sub_22B9E0AFC();
      v17 = sub_22BA1050C();
      v18 = sub_22BA0FF0C();
      v118 = v5;
      MEMORY[0x28223BE20](v18);
      *(&v118 - 2) = &v126;
      *(&v118 - 1) = v12;
      sub_22BA1051C();

      v5 = v118;
      (*(v8 + 8))(v10, v7);
      if (v126)
      {
        goto LABEL_6;
      }
    }

    if (sub_22B9DFC08())
    {
      v19 = *MEMORY[0x277D19AA0];
      if ([v11 valueForKey_])
      {
        sub_22BA107AC();
        swift_unknownObjectRelease();
      }

      else
      {
        v124 = 0u;
        v125 = 0u;
      }

      v23 = v119;
      v126 = v124;
      v127 = v125;
      if (*(&v125 + 1))
      {
        v24 = MEMORY[0x277D837D0];
        if (swift_dynamicCast())
        {
          v25 = v11;
          v120 = v1;
          v27 = v122;
          v26 = v123;
          sub_22B9B3D30(v122, v123, &v126);
          v28 = MEMORY[0x277D19A98];
          LODWORD(v121) = v126;
          if (v126 == 10)
          {
            [v25 removeObjectForKey_];
            [v25 removeObjectForKey_];
            if (qword_281414D30 != -1)
            {
              swift_once();
            }

            v29 = sub_22BA0FEFC();
            sub_22B936CA8(v29, qword_28141AD40);

            v30 = sub_22BA0FEDC();
            v31 = sub_22BA1044C();

            if (os_log_type_enabled(v30, v31))
            {
              v32 = swift_slowAlloc();
              v33 = swift_slowAlloc();
              *&v126 = v33;
              *v32 = 136315138;
              *(v32 + 4) = sub_22B99153C(v27, v26, &v126);
              _os_log_impl(&dword_22B92A000, v30, v31, "Last sync phase %s not recognized, not restarting", v32, 0xCu);
              sub_22B936C4C(v33);
              MEMORY[0x23189ADD0](v33, -1, -1);
              MEMORY[0x23189ADD0](v32, -1, -1);
            }

            *&v126 = 0;
            *(&v126 + 1) = 0xE000000000000000;
            sub_22BA108FC();

            *&v126 = 0xD000000000000021;
            *(&v126 + 1) = 0x800000022BA1E670;
            MEMORY[0x231899730](v27, v26);

            MEMORY[0x231899730](0x63657220746F6E20, 0xEF64657A696E676FLL);
            v34 = *(&v126 + 1);
            v35 = v126;
            v36 = *MEMORY[0x277D19D08];
            sub_22B9349C8(&unk_27D8D4E00, &qword_22BA13E00);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_22BA13CB0;
            *(inited + 32) = sub_22BA0FFFC();
            *(inited + 72) = v24;
            *(inited + 40) = v38;
            *(inited + 48) = v35;
            *(inited + 56) = v34;
            v39 = v36;

            sub_22B9BBA8C(inited);
            swift_setDeallocating();
            sub_22B936BEC(inited + 32, &unk_27D8D5770, &qword_22BA135E0);
            v40 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
            v41 = sub_22BA0FF5C();

            v42 = [v40 initWithDomain:v39 code:9 userInfo:v41];
LABEL_28:
            v43 = v42;

            v44 = v43;
            sub_22B975FD8(19, v44, v35, v34);

            return;
          }

          v60 = *MEMORY[0x277D19A98];
          if ([v25 valueForKey_])
          {
            sub_22BA107AC();
            swift_unknownObjectRelease();
          }

          else
          {
            v124 = 0u;
            v125 = 0u;
          }

          v126 = v124;
          v127 = v125;
          if (*(&v125 + 1))
          {
            if (swift_dynamicCast())
            {
              v61 = v122 + 1;
              if (__OFADD__(v122, 1))
              {
                __break(1u);
                goto LABEL_113;
              }

              if (v61 >= 4)
              {
                [v25 removeObjectForKey_];
                [v25 removeObjectForKey_];
                if (qword_281414D30 == -1)
                {
LABEL_46:
                  v62 = sub_22BA0FEFC();
                  sub_22B936CA8(v62, qword_28141AD40);

                  v63 = sub_22BA0FEDC();
                  v64 = sub_22BA1044C();

                  v65 = os_log_type_enabled(v63, v64);
                  v66 = v121;
                  if (v65)
                  {
                    v67 = swift_slowAlloc();
                    v68 = swift_slowAlloc();
                    v69 = v61;
                    v70 = v68;
                    *&v126 = v68;
                    *v67 = 134218754;
                    *(v67 + 4) = v69 - 1;
                    *(v67 + 12) = 2080;
                    v71 = sub_22B99153C(115, 0xE100000000000000, &v126);

                    *(v67 + 14) = v71;
                    *(v67 + 22) = 2080;
                    v72 = sub_22B99153C(v27, v26, &v126);

                    *(v67 + 24) = v72;
                    *(v67 + 32) = 2048;
                    *(v67 + 34) = 3;
                    _os_log_impl(&dword_22B92A000, v63, v64, "We've attempted %ld time%s to do %s sync, but didn't complete. Not retrying again, maxAttempts %ld", v67, 0x2Au);
                    swift_arrayDestroy();
                    MEMORY[0x23189ADD0](v70, -1, -1);
                    MEMORY[0x23189ADD0](v67, -1, -1);
                  }

                  else
                  {
                  }

                  *&v126 = 0;
                  *(&v126 + 1) = 0xE000000000000000;
                  sub_22BA108FC();

                  *&v126 = 0xD000000000000020;
                  *(&v126 + 1) = 0x800000022BA1E6C0;
                  if (v66 > 4)
                  {
                    v108 = 0x7274656D656C6554;
                    v109 = 0xE900000000000079;
                    v110 = 0x6172745374736554;
                    v111 = 0xEE007372656C6767;
                    if (v66 != 8)
                    {
                      v110 = 1953719636;
                      v111 = 0xE400000000000000;
                    }

                    if (v66 != 7)
                    {
                      v108 = v110;
                      v109 = v111;
                    }

                    v112 = 0x6C6E4F746E756F43;
                    v113 = 0xE900000000000079;
                    if (v66 != 5)
                    {
                      v112 = 0x74696E4972657355;
                      v113 = 0xED00006465746169;
                    }

                    if (v66 <= 6)
                    {
                      v106 = v112;
                    }

                    else
                    {
                      v106 = v108;
                    }

                    if (v66 <= 6)
                    {
                      v107 = v113;
                    }

                    else
                    {
                      v107 = v109;
                    }
                  }

                  else
                  {
                    v100 = 0x6C616974696E49;
                    v101 = 0xE700000000000000;
                    v102 = 0xE800000000000000;
                    v103 = 0x6369646F69726550;
                    v104 = 0xE600000000000000;
                    v105 = 0x70756B636142;
                    if (v66 != 3)
                    {
                      v105 = 0xD000000000000017;
                      v104 = 0x800000022BA1BD10;
                    }

                    if (v66 != 2)
                    {
                      v103 = v105;
                      v102 = v104;
                    }

                    if (v66)
                    {
                      v100 = 0x6C6C69666B636142;
                      v101 = 0xE800000000000000;
                    }

                    if (v66 <= 1)
                    {
                      v106 = v100;
                    }

                    else
                    {
                      v106 = v103;
                    }

                    if (v66 <= 1)
                    {
                      v107 = v101;
                    }

                    else
                    {
                      v107 = v102;
                    }
                  }

                  MEMORY[0x231899730](v106, v107);

                  v34 = *(&v126 + 1);
                  v35 = v126;
                  v114 = *MEMORY[0x277D19D08];
                  sub_22B9349C8(&unk_27D8D4E00, &qword_22BA13E00);
                  v115 = swift_initStackObject();
                  *(v115 + 16) = xmmword_22BA13CB0;
                  *(v115 + 32) = sub_22BA0FFFC();
                  *(v115 + 72) = v24;
                  *(v115 + 40) = v116;
                  *(v115 + 48) = v35;
                  *(v115 + 56) = v34;
                  v39 = v114;

                  sub_22B9BBA8C(v115);
                  swift_setDeallocating();
                  sub_22B936BEC(v115 + 32, &unk_27D8D5770, &qword_22BA135E0);
                  v117 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
                  v41 = sub_22BA0FF5C();

                  v42 = [v117 initWithDomain:v39 code:10 userInfo:v41];
                  goto LABEL_28;
                }

LABEL_113:
                swift_once();
                goto LABEL_46;
              }

              goto LABEL_50;
            }
          }

          else
          {
            sub_22B936BEC(&v126, &unk_27D8D5A30, qword_22BA13390);
          }

          v61 = 1;
LABEL_50:
          v119 = v60;

          if (qword_281414D30 != -1)
          {
            swift_once();
          }

          v73 = sub_22BA0FEFC();
          v74 = sub_22B936CA8(v73, qword_28141AD40);
          v75 = sub_22BA0FEDC();
          v76 = sub_22BA1046C();
          if (os_log_type_enabled(v75, v76))
          {
            v118 = v74;
            v77 = swift_slowAlloc();
            v78 = swift_slowAlloc();
            *&v126 = v78;
            *v77 = 136315394;
            if (v121 > 4)
            {
              v88 = 0x7274656D656C6554;
              v89 = 0xE900000000000079;
              v90 = 0x6172745374736554;
              v91 = 0xEE007372656C6767;
              if (v121 != 8)
              {
                v90 = 1953719636;
                v91 = 0xE400000000000000;
              }

              if (v121 != 7)
              {
                v88 = v90;
                v89 = v91;
              }

              v92 = 0x6C6E4F746E756F43;
              v93 = 0xE900000000000079;
              if (v121 != 5)
              {
                v92 = 0x74696E4972657355;
                v93 = 0xED00006465746169;
              }

              if (v121 <= 6)
              {
                v85 = v92;
              }

              else
              {
                v85 = v88;
              }

              if (v121 <= 6)
              {
                v86 = v93;
              }

              else
              {
                v86 = v89;
              }
            }

            else
            {
              v79 = 0xE700000000000000;
              v80 = 0xE800000000000000;
              v81 = 0x6369646F69726550;
              v82 = 0xE600000000000000;
              v83 = 0x70756B636142;
              if (v121 != 3)
              {
                v83 = 0xD000000000000017;
                v82 = 0x800000022BA1BD10;
              }

              if (v121 != 2)
              {
                v81 = v83;
                v80 = v82;
              }

              v84 = 0x6C616974696E49;
              if (v121)
              {
                v84 = 0x6C6C69666B636142;
                v79 = 0xE800000000000000;
              }

              if (v121 <= 1)
              {
                v85 = v84;
              }

              else
              {
                v85 = v81;
              }

              if (v121 <= 1)
              {
                v86 = v79;
              }

              else
              {
                v86 = v80;
              }
            }

            v94 = sub_22B99153C(v85, v86, &v126);

            *(v77 + 4) = v94;
            *(v77 + 12) = 2048;
            *(v77 + 14) = v61;
            _os_log_impl(&dword_22B92A000, v75, v76, "Looks like we restarted during sync phase %s, trying attempt %ld", v77, 0x16u);
            sub_22B936C4C(v78);
            MEMORY[0x23189ADD0](v78, -1, -1);
            MEMORY[0x23189ADD0](v77, -1, -1);

            v87 = v120;
            v74 = v118;
          }

          else
          {

            v87 = v120;
          }

          [v25 setInteger:v61 forKey:v119];
          v95 = *&v87[OBJC_IVAR___MCSSyncResumer_delegate];
          v96 = v121;
          if (v121)
          {
            v97 = sub_22BA10C6C();
          }

          else
          {
            v97 = 1;
          }

          type metadata accessor for CloudSyncFactory();
          sub_22B968F70(&v126);
          v118 = v74;
          v98 = swift_allocObject();
          *(v98 + 16) = v87;
          *(v98 + 24) = v96;
          LOBYTE(v122) = v96;
          v99 = v87;
          sub_22B96A870(&v122, v97 & 1, &v124);
          sub_22B9BC988(&v124, v95, &v126, &unk_22BA19C08, v98);
LABEL_84:

          sub_22B936C4C(&v124);
          sub_22B936C4C(&v126);
          return;
        }
      }

      else
      {
        sub_22B936BEC(&v126, &unk_27D8D5A30, qword_22BA13390);
      }

      v45 = [*&v1[OBJC_IVAR___MCSSyncResumer_syncStateManager] lastFullSyncDate];
      if (v45)
      {
        v46 = v45;
        sub_22BA0FD5C();

        (*(v121 + 56))(v23, 0, 1, v5);
        sub_22B936BEC(v23, &unk_27D8D4A90, &qword_22BA126A0);
        return;
      }

      (*(v121 + 56))(v23, 1, 1, v5);
      sub_22B936BEC(v23, &unk_27D8D4A90, &qword_22BA126A0);
      if (sub_22B9DFE58(*&v1[OBJC_IVAR___MCSSyncResumer_backfillRestartDateKey], *&v1[OBJC_IVAR___MCSSyncResumer_backfillRestartDateKey + 8], 3600.0))
      {
        v47 = v120;
        sub_22BA0FD7C();
        v48 = sub_22BA0FCFC();
        (*(v121 + 8))(v47, v5);
        v49 = sub_22BA0FFCC();
        [v11 setObject:v48 forKey:v49];

        if (qword_281414D30 != -1)
        {
          swift_once();
        }

        v50 = sub_22BA0FEFC();
        sub_22B936CA8(v50, qword_28141AD40);
        v51 = sub_22BA0FEDC();
        v52 = sub_22BA1042C();
        if (os_log_type_enabled(v51, v52))
        {
          v53 = swift_slowAlloc();
          *v53 = 0;
          _os_log_impl(&dword_22B92A000, v51, v52, "No last full sync date, starting backfill sync", v53, 2u);
          MEMORY[0x23189ADD0](v53, -1, -1);
        }

        v54 = *&v1[OBJC_IVAR___MCSSyncResumer_delegate];
        type metadata accessor for CloudSyncFactory();
        sub_22B968F70(&v126);
        v55 = swift_allocObject();
        v56 = v1;
        v57 = v55;
        *(v55 + 16) = v56;
        LOBYTE(v122) = 1;
        v58 = v56;
        v59 = sub_22B9DBCF0();
        sub_22B96C910(&v122, 2, 3, v59, 0, &v124);
        swift_unknownObjectRelease();
        sub_22B9BC988(&v124, v54, &v126, &unk_22BA19BF8, v57);
        goto LABEL_84;
      }
    }

    else if ((sub_22B9DFC08() & 1) == 0 && sub_22B9DFE58(*&v1[OBJC_IVAR___MCSSyncResumer_initialRestartDateKey], *&v1[OBJC_IVAR___MCSSyncResumer_initialRestartDateKey + 8], 900.0))
    {
      v20 = v120;
      sub_22BA0FD7C();
      v21 = sub_22BA0FCFC();
      (*(v121 + 8))(v20, v5);
      v22 = sub_22BA0FFCC();
      [v11 setObject:v21 forKey:v22];

      sub_22B9DF8BC();
    }
  }
}

uint64_t sub_22B92DA00()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22B92DA38()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_22B92DA70(uint64_t a1, char a2)
{
  sub_22B92DB4C(a1);
  v4 = sub_22BA0FFCC();

  v5 = [v2 objectForKey_];

  if (v5)
  {
    sub_22BA107AC();
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
  }

  v10[0] = v8;
  v10[1] = v9;
  if (*(&v9 + 1))
  {
    if (swift_dynamicCast())
    {
      a2 = v7;
    }
  }

  else
  {
    sub_22B949698(v10);
  }

  return a2 & 1;
}

unint64_t sub_22B92DB4C(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v3 = 0x49776F5241444141;
    if (a1 != 10)
    {
      v3 = 0xD00000000000001ELL;
    }

    if (a1 == 9)
    {
      v3 = 0xD000000000000016;
    }

    v4 = 0xD00000000000001ALL;
    if (a1 == 7)
    {
      v4 = 0xD000000000000019;
    }

    if (a1 == 6)
    {
      v4 = 0xD00000000000001CLL;
    }

    if (a1 <= 8u)
    {
      return v4;
    }

    else
    {
      return v3;
    }
  }

  else if (a1 > 2u)
  {
    v5 = 0xD000000000000015;
    if (a1 != 4)
    {
      v5 = 0xD000000000000010;
    }

    if (a1 == 3)
    {
      return 0xD000000000000022;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    if (a1 == 1)
    {
      v1 = 0xD000000000000016;
    }

    else
    {
      v1 = 0xD000000000000015;
    }

    if (a1)
    {
      return v1;
    }

    else
    {
      return 0xD000000000000013;
    }
  }
}

void *sub_22B92DD94@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_22B92DDAC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22BA0FFFC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_22B92DDD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_22B9349C8(&unk_27D8D4A90, &qword_22BA126A0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 40);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_22B92DEA0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = sub_22B9349C8(&unk_27D8D4A90, &qword_22BA126A0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22B92DFEC(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_22B92E004()
{
  swift_unknownObjectRelease();

  sub_22B936C4C((v0 + 40));

  if (*(v0 + 88))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_22B92E064(uint64_t a1, uint64_t a2)
{
  v14 = type metadata accessor for CloudState();
  v15 = &off_283F589F0;
  v13[0] = a1;
  v11 = type metadata accessor for SyncJob();
  v12 = &off_283F54680;
  v10[0] = a2;
  v4 = sub_22B9358B4(v13, v14);
  v5 = sub_22B9358B4(v10, v11);
  v6 = *(*v4 + 56);
  if (v6)
  {
    v7 = qword_22BA13678[*(*v5 + 17)];

    [v6 setSyncPhaseType_];
  }

  else
  {
  }

  v8 = *(*sub_22B9358B4(v13, v14) + 56);
  if (v8)
  {
    [v8 setSyncJobStateWithState_];
  }

  sub_22B9358B4(v13, v14);
  sub_22BA08EA4(0);
  sub_22B936C4C(v13);
  return sub_22B936C4C(v10);
}

uint64_t sub_22B92E194()
{
  MEMORY[0x23189AEA0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22B92E1CC()
{
  sub_22B936C4C(v0 + 2);
  swift_unknownObjectRelease();

  sub_22B936C4C(v0 + 9);
  sub_22B936C4C(v0 + 14);
  swift_unknownObjectRelease();

  sub_22B936C4C(v0 + 22);
  if (v0[27])
  {
  }

  return MEMORY[0x2821FE8E8](v0, 232, 7);
}

uint64_t sub_22B92E24C()
{
  swift_unknownObjectRelease();

  sub_22B936C4C((v0 + 48));
  if (*(v0 + 88))
  {
  }

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 112, 7);
}

uint64_t sub_22B92E2B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22B9349C8(&qword_27D8D4CC8, &qword_22BA13580);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22B92E32C(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_22B9349C8(&qword_27D8D4CC8, &qword_22BA13580);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_22B92E3C0()
{

  return MEMORY[0x2821FE8E8](v0, 120, 7);
}

uint64_t sub_22B92E420()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

void sub_22B92E460(void *a1, void *a2, char a3)
{
  if (a3)
  {
  }
}

id sub_22B92E4AC(void *a1, void *a2, char a3)
{
  if (a3)
  {
    v5 = a1;
    a1 = a2;
  }

  return a1;
}

uint64_t sub_22B92E4F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_22B9349C8(&unk_27D8D4A90, &qword_22BA126A0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 40);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_22B92E5C0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = sub_22B9349C8(&unk_27D8D4A90, &qword_22BA126A0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22B92E670(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_22B9349C8(&unk_27D8D4A90, &qword_22BA126A0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 40);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_22B92E738(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = sub_22B9349C8(&unk_27D8D4A90, &qword_22BA126A0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22B92E814()
{

  if (*(v0 + 40))
  {
  }

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_22B92E86C()
{
  sub_22B936C4C(v0 + 3);
  sub_22B936C4C(v0 + 8);
  if (v0[15])
  {
  }

  return MEMORY[0x2821FE8E8](v0, 136, 7);
}

uint64_t sub_22B92E8BC()
{

  return MEMORY[0x2821FE8E8](v0, 120, 7);
}

uint64_t sub_22B92E91C()
{
  if (*(v0 + 24))
  {
  }

  sub_22B936C4C((v0 + 40));
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_22B92E96C()
{
  if (*(v0 + 40))
  {
  }

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_22B92E9E8()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22B92EA20()
{

  if (*(v0 + 32))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 50, 7);
}

uint64_t sub_22B92EA68()
{
  sub_22B936C4C(v0 + 2);
  sub_22B936C4C(v0 + 7);
  if (v0[15])
  {
  }

  return MEMORY[0x2821FE8E8](v0, 136, 7);
}

uint64_t sub_22B92EAB8()
{
  sub_22B936C4C(v0 + 5);
  sub_22B936C4C(v0 + 10);
  if (v0[15])
  {
  }

  return MEMORY[0x2821FE8E8](v0, 136, 7);
}

uint64_t sub_22B92EB38(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BA0FC4C();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_22B92EBA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BA0FC4C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_22B92ECD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_22B9349C8(&unk_27D8D4A90, &qword_22BA126A0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 40);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_22B92ED98(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = sub_22B9349C8(&unk_27D8D4A90, &qword_22BA126A0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22B92EE48()
{

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 136, 7);
}

uint64_t sub_22B92EEB0()
{
  v1 = sub_22B9349C8(&qword_27D8D53C8, &unk_22BA18460);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_22B92EF44()
{

  return MEMORY[0x2821FE8E8](v0, 120, 7);
}

uint64_t sub_22B92EFA4()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22B92F02C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_22B9349C8(&qword_27D8D5470, &qword_22BA16C80);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 40);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_22B92F0F4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = sub_22B9349C8(&qword_27D8D5470, &qword_22BA16C80);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22B92F1A4()
{
  v1 = sub_22BA0FEBC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_22B92F29C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22B92F2E8()
{

  return MEMORY[0x2821FE8E8](v0, 120, 7);
}

uint64_t sub_22B92F348()
{

  return MEMORY[0x2821FE8E8](v0, 120, 7);
}

uint64_t sub_22B92F3B0()
{

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_22B92F3F0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22B92F428()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22B92F470()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22B92F4B0()
{

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 136, 7);
}

uint64_t sub_22B92F518()
{
  v1 = sub_22B9349C8(&qword_27D8D53C8, &unk_22BA18460);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 111) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_22B92F5FC()
{
  v1 = sub_22B9349C8(&qword_27D8D53C8, &unk_22BA18460);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 120) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

id sub_22B92F6FC@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 statusValue];
  *a2 = result;
  return result;
}

uint64_t sub_22B92F774()
{
  v1 = sub_22B9349C8(&qword_27D8D53C8, &unk_22BA18460);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_22B92F808()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22B92F840()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

uint64_t sub_22B92F87C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22B92F8B4()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22B92F8F0()
{
  MEMORY[0x23189AEA0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22B92F928()
{
  sub_22B936C4C(v0 + 2);
  swift_unknownObjectRelease();

  sub_22B936C4C(v0 + 9);
  sub_22B936C4C(v0 + 14);
  swift_unknownObjectRelease();

  sub_22B936C4C(v0 + 22);
  if (v0[27])
  {
  }

  return MEMORY[0x2821FE8E8](v0, 232, 7);
}

uint64_t sub_22B92FA40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_22B9349C8(&unk_27D8D4A90, &qword_22BA126A0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 40);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_22B92FB08(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = sub_22B9349C8(&unk_27D8D4A90, &qword_22BA126A0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22B92FC10()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22B92FC48()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22B92FCD8()
{
  v1 = sub_22B9349C8(&qword_27D8D59A0, &unk_22BA19938);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_22B92FD80()
{
  swift_unknownObjectRelease();

  sub_22B97721C(*(v0 + 48), *(v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 57, 7);
}

uint64_t sub_22B92FDD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_22B9349C8(&unk_27D8D4A90, &qword_22BA126A0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 40);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_22B92FEA0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = sub_22B9349C8(&unk_27D8D4A90, &qword_22BA126A0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22B92FF9C()
{
  MEMORY[0x23189AEA0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22B92FFD4()
{
  v1 = sub_22B9349C8(&qword_27D8D5B20, &qword_22BA1A348);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_22B93006C()
{
  MEMORY[0x23189AEA0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22B9300A4()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22B9300E4()
{
  v1 = sub_22B9349C8(&qword_27D8D5B48, &qword_22BA1AAA0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 88) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, ((((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_22B93036C()
{
  MEMORY[0x23189AEA0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22B9303A4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22B9303DC()
{
  v1 = sub_22B9349C8(&qword_27D8D5B78, &unk_22BA1A750);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_22B930474()
{
  v1 = sub_22B9349C8(&qword_27D8D5B78, &unk_22BA1A750);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_22B930548()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22B930590()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22B9305C8()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 41) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_22B930698()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_22B9306E0()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_22B930728()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22B930768()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22B9307A8()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22B9307E8()
{
  v1 = sub_22B9349C8(&qword_27D8D5B90, &unk_22BA1AA50);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_22B9308A4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22B9308F0()
{

  sub_22B936C4C((v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_22B930998()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22B9309DC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22B930A1C()
{

  return MEMORY[0x2821FE8E8](v0, 120, 7);
}

uint64_t sub_22B930A8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_22B9349C8(&unk_27D8D4A90, &qword_22BA126A0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 40);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_22B930B54(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = sub_22B9349C8(&unk_27D8D4A90, &qword_22BA126A0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22B930C20(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_22B9313F0(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v37[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (objc_opt_respondsToSelector())
  {
    v13 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v9, v10, v11, v12);
    objc_msgSend_setObject_forKeyedSubscript_(v13, v14, &unk_283F5B520, @"FeatureCode", v15);
    v37[0] = v7;
    v18 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v16, v37, 1, v17);
    objc_msgSend_setObject_forKeyedSubscript_(v13, v19, v18, @"TaskName", v20);

    v25 = objc_msgSend_allObjects(v8, v21, v22, v23, v24);
    objc_msgSend_setObject_forKeyedSubscript_(v13, v26, v25, @"InvolvedProcesses", v27);

    v32 = objc_msgSend_sharedScheduler(MEMORY[0x277CF0810], v28, v29, v30, v31);
    v35 = objc_msgSend_taskStartedWithParameters_error_(v32, v33, v13, a5, v34);
  }

  else
  {
    v35 = 0;
  }

  return v35;
}

uint64_t sub_22B931548(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v38[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (objc_opt_respondsToSelector())
  {
    v13 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v9, v10, v11, v12);
    objc_msgSend_setObject_forKeyedSubscript_(v13, v14, &unk_283F5B520, @"FeatureCode", v15);
    v38[0] = v7;
    v18 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v16, v38, 1, v17);
    objc_msgSend_setObject_forKeyedSubscript_(v13, v19, v18, @"TaskName", v20);

    v25 = objc_msgSend_allObjects(v8, v21, v22, v23, v24);
    objc_msgSend_setObject_forKeyedSubscript_(v13, v26, v25, @"InvolvedProcesses", v27);

    v32 = objc_msgSend_sharedScheduler(MEMORY[0x277CF0810], v28, v29, v30, v31);
    v35 = objc_msgSend_taskStoppedWithParameters_error_(v32, v33, v13, a5, v34);

    objc_msgSend_reportFeatureCheckpoint_forFeature_error_(MEMORY[0x277CF07F0], v36, 30, 500, a5);
  }

  else
  {
    v35 = 0;
  }

  return v35;
}

__n128 initializeBufferWithCopyOfBuffer for LocalCounts(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for LocalCounts(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for LocalCounts(uint64_t result, int a2, int a3)
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

uint64_t sub_22B9317B0()
{
  sub_22BA10D3C();
  MEMORY[0x23189A3B0](0);
  return sub_22BA10D6C();
}

uint64_t sub_22B93181C(uint64_t a1)
{
  sub_22BA10D3C();
  MEMORY[0x23189A3B0](0);
  return sub_22BA10D6C();
}

uint64_t sub_22B931880()
{
  sub_22BA10D3C();
  sub_22BA10D5C();
  return sub_22BA10D6C();
}

uint64_t sub_22B931908(uint64_t a1)
{
  sub_22BA10D3C();
  sub_22BA10D5C();
  return sub_22BA10D6C();
}

unint64_t sub_22B931954(char a1)
{
  result = 1701669236;
  switch(a1)
  {
    case 1:
      result = 0x6461655274;
      break;
    case 2:
      result = 0x726576696C654474;
      break;
    case 3:
      result = 0x646579616C5074;
      break;
    case 4:
      result = 0x7367616C66;
      break;
    case 5:
      result = 0x65646F4365;
      break;
    case 6:
      result = 0x7463656A627573;
      break;
    case 7:
      result = 0x7265646E6573;
      break;
    case 8:
      result = 0x6469754772;
      break;
    case 9:
      result = 0x7453657269707865;
      break;
    case 10:
      result = 1682531172;
      break;
    case 11:
      result = 4475202;
      break;
    case 12:
      result = 0x6174616470;
      break;
    case 13:
      result = 1684632421;
      break;
    case 14:
      result = 0xD000000000000018;
      break;
    case 15:
      result = 0x444974616863;
      break;
    default:
      return result;
  }

  return result;
}

unsigned __int8 *sub_22B931AC4@<X0>(unsigned __int8 *result@<X0>, char *a2@<X8>)
{
  v2 = *result;
  if (v2 == 2)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (v2 == 1)
  {
    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  *a2 = v4;
  return result;
}

void sub_22B931AE4(char *a1@<X8>)
{
  if (*v1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  *a1 = v2;
}

uint64_t sub_22B931AFC(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_22B931954(*a1);
  v5 = v4;
  if (v3 == sub_22B931954(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_22BA10C6C();
  }

  return v8 & 1;
}

uint64_t sub_22B931B84()
{
  v1 = *v0;
  sub_22BA10D3C();
  sub_22B931954(v1);
  sub_22BA1008C();

  return sub_22BA10D6C();
}

uint64_t sub_22B931BE8(uint64_t a1)
{
  sub_22B931954(*v1);
  sub_22BA1008C();
}

uint64_t sub_22B931C3C(uint64_t a1)
{
  v2 = *v1;
  sub_22BA10D3C();
  sub_22B931954(v2);
  sub_22BA1008C();

  return sub_22BA10D6C();
}

unint64_t sub_22B931C9C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_22B93637C(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_22B931CCC@<X0>(unint64_t *a1@<X8>)
{
  result = sub_22B931954(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_22B931D14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22B93637C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22B931D54(uint64_t a1)
{
  v2 = sub_22B935AE4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22B931D90(uint64_t a1)
{
  v2 = sub_22B935AE4();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_22B931DCC(void *a1@<X0>, uint64_t a2@<X8>)
{
  v180 = a2;
  v183 = sub_22B9349C8(&qword_27D8D4B80, &qword_22BA12C30);
  v182 = *(v183 - 8);
  MEMORY[0x28223BE20](v183);
  v181 = &v172 - v3;
  v192 = sub_22BA0FD8C();
  v187 = *(v192 - 8);
  v4 = MEMORY[0x28223BE20](v192);
  v178 = &v172 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v179 = &v172 - v6;
  v177 = sub_22BA0F9DC();
  v176 = *(v177 - 1);
  MEMORY[0x28223BE20](v177);
  v175 = &v172 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22B9349C8(&qword_27D8D4B88, &qword_22BA12C38);
  v189 = *(v8 - 8);
  v190 = v8;
  MEMORY[0x28223BE20](v8);
  v191 = &v172 - v9;
  v10 = sub_22B9349C8(&unk_27D8D4A90, &qword_22BA126A0);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v184 = &v172 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v185 = &v172 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v186 = &v172 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v188 = &v172 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v172 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v172 - v22;
  v24 = sub_22B9349C8(&qword_27D8D4B90, &qword_22BA12C40);
  v193 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v26 = &v172 - v25;
  v27 = type metadata accessor for MessageRecord(0);
  MEMORY[0x28223BE20](v27);
  v29 = (&v172 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = a1[3];
  v195 = a1;
  sub_22B9358B4(a1, v30);
  sub_22B9358F8();
  v31 = v194;
  sub_22BA10D8C();
  if (v31)
  {
    sub_22B936C4C(v195);
    return;
  }

  v194 = v27;
  v32 = v29;
  LOBYTE(v196[0]) = 0;
  v33 = v29;
  *v29 = sub_22BA10ACC();
  v29[1] = v34;
  LOBYTE(v196[0]) = 1;
  v29[2] = sub_22BA10ACC();
  v29[3] = v35;
  LOBYTE(v196[0]) = 2;
  v36 = sub_22BA10ACC();
  v37 = v194;
  v32[4] = v36;
  v32[5] = v38;
  LOBYTE(v196[0]) = 3;
  v32[6] = sub_22BA10ACC();
  v32[7] = v39;
  LOBYTE(v196[0]) = 4;
  v32[8] = sub_22BA10ACC();
  v32[9] = v40;
  LOBYTE(v196[0]) = 5;
  v41 = sub_22BA10ACC();
  v174 = 0;
  v32[10] = v41;
  v32[11] = v42;
  LOBYTE(v196[0]) = 6;
  sub_22B934EFC(&unk_281416C00, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
  v43 = v174;
  sub_22BA10AFC();
  v174 = v43;
  if (v43)
  {
    (*(v193 + 8))(v26, v24);
    v44 = 63;
LABEL_11:
    v49 = 1;
    goto LABEL_12;
  }

  sub_22B935A74(v23, v32 + v37[10]);
  LOBYTE(v196[0]) = 7;
  v45 = v174;
  sub_22BA10AFC();
  v174 = v45;
  if (v45)
  {
    (*(v193 + 8))(v26, v24);
    v44 = 127;
    goto LABEL_11;
  }

  sub_22B935A74(v21, v32 + v37[11]);
  LOBYTE(v196[0]) = 8;
  v46 = v174;
  v47 = sub_22BA10ACC();
  v174 = v46;
  if (v46)
  {
    (*(v193 + 8))(v26, v24);
    v44 = 255;
    goto LABEL_11;
  }

  v51 = v26;
  v173 = v24;
  v52 = (v32 + v37[12]);
  *v52 = v47;
  v52[1] = v48;
  v53 = v195[4];
  sub_22B9358B4(v195, v195[3]);
  sub_22B935AE4();
  v54 = v174;
  sub_22BA10D8C();
  v174 = v54;
  if (!v54)
  {
    LOBYTE(v196[0]) = 0;
    v55 = sub_22BA10B0C();
    v174 = 0;
    v57 = v56;
    v58 = 1;
    if ((v57 & 1) == 0)
    {
      v59 = [objc_opt_self() __im_dateWithNanosecondTimeIntervalSinceReferenceDate_];
      if (!v59)
      {
        __break(1u);
LABEL_118:
        if (v60)
        {
          v146 = v32 + v194[31];
          sub_22BA0FD6C();
        }

        else
        {
          v147 = [objc_opt_self() __im_dateWithNanosecondTimeIntervalSinceReferenceDate_];
          if (!v147)
          {
            __break(1u);
            return;
          }

          v148 = v147;
          v149 = v178;
          sub_22BA0FD5C();

          v150 = *(v187 + 32);
          v151 = v179;
          v152 = v149;
          v153 = v192;
          v150(v179, v152, v192);
          v146 = v32 + v194[31];
          v150(v146, v151, v153);
        }

        v53(v146, 0, 1, v192);
        sub_22B9358B4(v195, v195[3]);
        sub_22B93641C();
        v154 = v174;
        sub_22BA10D8C();
        v174 = v154;
        if (v154)
        {
          v44 = 263486975;
          goto LABEL_108;
        }

LABEL_125:
        LOBYTE(v196[0]) = 0;
        v155 = v174;
        v74 = sub_22BA10ACC();
        v174 = v155;
        if (v155)
        {
          v44 = 263486975;
LABEL_138:
          (*(v182 + 8))(v181, v183);
          goto LABEL_108;
        }

        goto LABEL_128;
      }

      v61 = v59;
      sub_22BA0FD5C();

      v58 = 0;
    }

    v62 = v188;
    v53 = *(v187 + 56);
    v53(v188, v58, 1, v192);
    sub_22B935A74(v62, v32 + v194[14]);
    LOBYTE(v196[0]) = 1;
    v63 = v174;
    v64 = sub_22BA10B0C();
    v174 = v63;
    if (v63)
    {
      (*(v189 + 8))(v191, v190);
      (*(v193 + 8))(v26, v173);
      v44 = 1535;
      goto LABEL_54;
    }

    if (v65)
    {
      v66 = 1;
    }

    else
    {
      v67 = [objc_opt_self() __im_dateWithNanosecondTimeIntervalSinceReferenceDate_];
      if (!v67)
      {
        __break(1u);
        goto LABEL_125;
      }

      v68 = v67;
      sub_22BA0FD5C();

      v66 = 0;
    }

    v69 = v186;
    v53(v186, v66, 1, v192);
    sub_22B935A74(v69, v32 + v194[15]);
    LOBYTE(v196[0]) = 2;
    v70 = v174;
    v71 = sub_22BA10B0C();
    v174 = v70;
    if (v70)
    {
      (*(v189 + 8))(v191, v190);
      (*(v193 + 8))(v26, v173);
      v44 = 3583;
      goto LABEL_54;
    }

    if (v72)
    {
      v73 = 1;
    }

    else
    {
      v74 = [objc_opt_self() __im_dateWithNanosecondTimeIntervalSinceReferenceDate_];
      if (!v74)
      {
        __break(1u);
LABEL_128:
        v156 = (v32 + v194[32]);
        *v156 = v74;
        v156[1] = v75;
        if (v75 && (v74 == 0x4D65707954627553 && v75 == 0xEA00000000006773 || (sub_22BA10C6C() & 1) != 0))
        {
          LOBYTE(v157) = 0;
          *(v32 + v194[33]) = 0;
LABEL_133:
          v158 = v195;
          *(v32 + v194[13]) = v157;
          sub_22B935B38(v158, v196);
          v159 = v174;
          sub_22B9B2FD4(v196);
          v174 = v159;
          if (!v159)
          {
            v164 = (v32 + v194[34]);
            *v164 = v160;
            v164[1] = v161;
            v164[2] = v162;
            v164[3] = v163;
            LOBYTE(v196[0]) = 15;
            v165 = v174;
            v166 = sub_22BA10ACC();
            v174 = v165;
            if (!v165)
            {
              v169 = v166;
              v170 = v167;
              (*(v182 + 8))(v181, v183);
              (*(v189 + 8))(v191, v190);
              (*(v193 + 8))(v51, v173);
              v171 = (v32 + v194[35]);
              *v171 = v169;
              v171[1] = v170;
              sub_22B936918(v32, v180);
              sub_22B936C4C(v195);
              sub_22B93697C(v32);
              return;
            }

            (*(v182 + 8))(v181, v183);
            (*(v189 + 8))(v191, v190);
            (*(v193 + 8))(v51, v173);
            v49 = 0;
            v44 = 1605664255;
            v33 = v32;
            goto LABEL_4;
          }

          goto LABEL_137;
        }

        v199 = 1;
        sub_22B936470();
        v168 = v174;
        sub_22BA10B3C();
        v174 = v168;
        if (v168)
        {
LABEL_137:
          v44 = 531922431;
          goto LABEL_138;
        }

LABEL_140:
        v157 = LOBYTE(v196[0]);
        *(v32 + v194[33]) = v196[0];
        if (v157 >= 2)
        {
          v44 = 531922431;
          sub_22B9364C4();
          v174 = swift_allocError();
          swift_willThrow();
          goto LABEL_138;
        }

        goto LABEL_133;
      }

      v76 = v74;
      sub_22BA0FD5C();

      v73 = 0;
    }

    v77 = v185;
    v53(v185, v73, 1, v192);
    sub_22B935A74(v77, v32 + v194[16]);
    LOBYTE(v196[0]) = 3;
    v78 = v174;
    v79 = sub_22BA10B0C();
    v174 = v78;
    if (v78)
    {
      (*(v189 + 8))(v191, v190);
      (*(v193 + 8))(v26, v173);
      v44 = 7679;
      goto LABEL_54;
    }

    if (v80)
    {
      v81 = 1;
    }

    else
    {
      v82 = [objc_opt_self() __im_dateWithNanosecondTimeIntervalSinceReferenceDate_];
      if (!v82)
      {
        __break(1u);
        goto LABEL_140;
      }

      v83 = v82;
      sub_22BA0FD5C();

      v81 = 0;
    }

    v84 = v184;
    v53(v184, v81, 1, v192);
    sub_22B935A74(v84, v32 + v194[17]);
    sub_22B935B38(v195, v196);
    v85 = v174;
    sub_22B99F1C0(v196, v197);
    v174 = v85;
    if (v85)
    {
      (*(v189 + 8))(v191, v190);
      (*(v193 + 8))(v26, v173);
      v44 = 15871;
      goto LABEL_54;
    }

    v86 = v198;
    v87 = v32 + v194[18];
    v88 = v197[1];
    *v87 = v197[0];
    *(v87 + 1) = v88;
    *(v87 + 4) = v86;
    LOBYTE(v196[0]) = 4;
    v89 = v174;
    v90 = sub_22BA10AEC();
    v174 = v89;
    if (v89 || (v92 = v32 + v194[19], *v92 = v90, v92[8] = v91 & 1, LOBYTE(v196[0]) = 5, v93 = v174, v94 = sub_22BA10AEC(), (v174 = v93) != 0) || (v96 = v194, v97 = v32 + v194[20], *v97 = v94, v97[8] = v95 & 1, v98 = v32 + v96[21], *v98 = 0, v98[8] = 1, LOBYTE(v196[0]) = 6, v99 = v174, v188 = sub_22BA10ACC(), (v174 = v99) != 0))
    {
      (*(v189 + 8))(v191, v190);
      (*(v193 + 8))(v26, v173);
      v44 = 32255;
      goto LABEL_54;
    }

    v101 = v100;
    if (v100)
    {
      *&v196[0] = v188;
      *(&v196[0] + 1) = v100;
      v102 = v175;
      sub_22BA0F9CC();
      sub_22B936ACC();
      v186 = sub_22BA1077C();
      v104 = v103;
      (*(v176 + 8))(v102, v177);

      v105 = HIBYTE(v104) & 0xF;
      if ((v104 & 0x2000000000000000) == 0)
      {
        v105 = v186 & 0xFFFFFFFFFFFFLL;
      }

      if (v105)
      {
        v106 = (v32 + v194[22]);
        *v106 = v188;
        v106[1] = v101;
LABEL_89:
        v108 = *(v87 + 1);
        v109 = *(v87 + 4);
        v110 = v108 == 1 || v109 == 0;
        v111 = v110;
        if (v110)
        {
          v117 = 0;
        }

        else
        {
          v112 = *(v87 + 2);
          v188 = *(v87 + 3);
          v186 = v112;
          v185 = *v87;
          v184 = "deletedFromiCloud";
          sub_22B9369D8(v185, v108, v112, v188, v109);
          v177 = v109;
          v113 = [v177 attributesAtIndex:0 effectiveRange:0];
          type metadata accessor for Key(0);
          sub_22B934EFC(&unk_27D8D4BA0, type metadata accessor for Key, &unk_22BA132B4);
          v114 = sub_22BA0FF6C();

          v115 = v174;
          v116 = sub_22B93674C(v114, 0xD00000000000001ALL, v184 | 0x8000000000000000);
          v174 = v115;

          sub_22B935A10(v185, v108, v186, v188, v109);

          v117 = v116[2];
        }

        v118 = v32 + v194[23];
        *v118 = v117;
        v118[8] = v111;
        LOBYTE(v196[0]) = 7;
        v119 = v174;
        v120 = sub_22BA10ACC();
        v174 = v119;
        if (v119)
        {
          (*(v189 + 8))(v191, v190);
          (*(v193 + 8))(v51, v173);
          v44 = 294399;
          goto LABEL_54;
        }

        v122 = (v32 + v194[24]);
        *v122 = v120;
        v122[1] = v121;
        LOBYTE(v196[0]) = 8;
        v123 = v174;
        v124 = sub_22BA10ACC();
        v174 = v123;
        if (v123)
        {
          (*(v189 + 8))(v191, v190);
          (*(v193 + 8))(v51, v173);
          v44 = 1342975;
          goto LABEL_54;
        }

        v126 = (v32 + v194[25]);
        *v126 = v124;
        v126[1] = v125;
        LOBYTE(v196[0]) = 9;
        v127 = v174;
        v128 = sub_22BA10AEC();
        v174 = v127;
        if (v127 || ((v130 = v32 + v194[26], (v129 & 1) == 0) ? (v131 = v128) : (v131 = 0), *v130 = v131, v130[8] = 0, LOBYTE(v196[0]) = 10, v132 = v174, v133 = sub_22BA10ACC(), (v174 = v132) != 0))
        {
          v44 = 3440127;
LABEL_108:
          (*(v189 + 8))(v191, v190);
          (*(v193 + 8))(v51, v173);
          goto LABEL_54;
        }

        v135 = (v32 + v194[27]);
        *v135 = v133;
        v135[1] = v134;
        LOBYTE(v196[0]) = 11;
        v136 = v174;
        v137 = sub_22BA10ACC();
        v174 = v136;
        if (v136)
        {
          (*(v189 + 8))(v191, v190);
          (*(v193 + 8))(v51, v173);
          v44 = 11828735;
          goto LABEL_54;
        }

        v139 = (v32 + v194[28]);
        *v139 = v137;
        v139[1] = v138;
        v199 = 12;
        sub_22B9363C8();
        v140 = v174;
        sub_22BA10AFC();
        v174 = v140;
        if (v140)
        {
          (*(v189 + 8))(v191, v190);
          (*(v193 + 8))(v51, v173);
          v44 = 28605951;
          goto LABEL_54;
        }

        *(v32 + v194[29]) = v196[0];
        LOBYTE(v196[0]) = 13;
        v141 = v174;
        v142 = sub_22BA10ACC();
        v174 = v141;
        if (v141)
        {
          (*(v189 + 8))(v191, v190);
          (*(v193 + 8))(v51, v173);
          v44 = 62160383;
          goto LABEL_54;
        }

        v144 = (v32 + v194[30]);
        *v144 = v142;
        v144[1] = v143;
        LOBYTE(v196[0]) = 14;
        v145 = v174;
        v59 = sub_22BA10AEC();
        v174 = v145;
        if (v145)
        {
          (*(v189 + 8))(v191, v190);
          (*(v193 + 8))(v51, v173);
          v44 = 129269247;
          goto LABEL_54;
        }

        goto LABEL_118;
      }
    }

    v107 = (v32 + v194[22]);
    *v107 = 0;
    v107[1] = 0;
    goto LABEL_89;
  }

  (*(v193 + 8))(v26, v173);
  v44 = 511;
LABEL_54:
  v49 = 1;
  v33 = v32;
LABEL_4:
  v37 = v194;
LABEL_12:
  sub_22B936C4C(v195);

  if ((v44 & 0x40) == 0)
  {
    if ((v44 & 0x80) != 0)
    {
      goto LABEL_33;
    }

LABEL_14:
    if ((v44 & 0x100) != 0)
    {
      goto LABEL_34;
    }

LABEL_15:
    if ((v44 & 0x400) != 0)
    {
      goto LABEL_35;
    }

LABEL_16:
    if ((v44 & 0x800) != 0)
    {
      goto LABEL_36;
    }

LABEL_17:
    if ((v44 & 0x1000) != 0)
    {
      goto LABEL_37;
    }

LABEL_18:
    if ((v44 & 0x2000) != 0)
    {
      goto LABEL_38;
    }

LABEL_19:
    if ((v44 & 0x4000) != 0)
    {
      goto LABEL_39;
    }

LABEL_20:
    if ((v44 & 0x40000) != 0)
    {
      goto LABEL_40;
    }

LABEL_21:
    if ((v44 & 0x100000) != 0)
    {
      goto LABEL_41;
    }

LABEL_22:
    if ((v44 & 0x200000) != 0)
    {
      goto LABEL_42;
    }

LABEL_23:
    if ((v44 & 0x800000) != 0)
    {
      goto LABEL_43;
    }

LABEL_24:
    if ((v44 & 0x1000000) != 0)
    {
      goto LABEL_44;
    }

LABEL_25:
    if ((v44 & 0x2000000) != 0)
    {
      goto LABEL_45;
    }

LABEL_26:
    if ((v44 & 0x4000000) != 0)
    {
      goto LABEL_46;
    }

LABEL_27:
    if ((v44 & 0x8000000) != 0)
    {
      goto LABEL_47;
    }

LABEL_28:
    if ((v44 & 0x10000000) != 0)
    {
      goto LABEL_48;
    }

    goto LABEL_29;
  }

  sub_22B936BEC(v33 + v37[10], &unk_27D8D4A90, &qword_22BA126A0);
  if ((v44 & 0x80) == 0)
  {
    goto LABEL_14;
  }

LABEL_33:
  sub_22B936BEC(v33 + v37[11], &unk_27D8D4A90, &qword_22BA126A0);
  if ((v44 & 0x100) == 0)
  {
    goto LABEL_15;
  }

LABEL_34:

  if ((v44 & 0x400) == 0)
  {
    goto LABEL_16;
  }

LABEL_35:
  sub_22B936BEC(v33 + v37[14], &unk_27D8D4A90, &qword_22BA126A0);
  if ((v44 & 0x800) == 0)
  {
    goto LABEL_17;
  }

LABEL_36:
  sub_22B936BEC(v33 + v37[15], &unk_27D8D4A90, &qword_22BA126A0);
  if ((v44 & 0x1000) == 0)
  {
    goto LABEL_18;
  }

LABEL_37:
  sub_22B936BEC(v33 + v37[16], &unk_27D8D4A90, &qword_22BA126A0);
  if ((v44 & 0x2000) == 0)
  {
    goto LABEL_19;
  }

LABEL_38:
  sub_22B936BEC(v33 + v37[17], &unk_27D8D4A90, &qword_22BA126A0);
  if ((v44 & 0x4000) == 0)
  {
    goto LABEL_20;
  }

LABEL_39:
  v50 = v33 + v37[18];
  sub_22B935A10(*v50, *(v50 + 1), *(v50 + 2), *(v50 + 3), *(v50 + 4));
  if ((v44 & 0x40000) == 0)
  {
    goto LABEL_21;
  }

LABEL_40:

  if ((v44 & 0x100000) == 0)
  {
    goto LABEL_22;
  }

LABEL_41:

  if ((v44 & 0x200000) == 0)
  {
    goto LABEL_23;
  }

LABEL_42:

  if ((v44 & 0x800000) == 0)
  {
    goto LABEL_24;
  }

LABEL_43:

  if ((v44 & 0x1000000) == 0)
  {
    goto LABEL_25;
  }

LABEL_44:

  if ((v44 & 0x2000000) == 0)
  {
    goto LABEL_26;
  }

LABEL_45:
  sub_22B9359A8(*(v33 + v37[29]), *(v33 + v37[29] + 8));
  if ((v44 & 0x4000000) == 0)
  {
    goto LABEL_27;
  }

LABEL_46:

  if ((v44 & 0x8000000) == 0)
  {
    goto LABEL_28;
  }

LABEL_47:
  sub_22B936BEC(v33 + v37[31], &unk_27D8D4A90, &qword_22BA126A0);
  if ((v44 & 0x10000000) != 0)
  {
LABEL_48:

    if (v49)
    {
      return;
    }

    goto LABEL_49;
  }

LABEL_29:
  if (v49)
  {
    return;
  }

LABEL_49:
  sub_22B93594C(*(v33 + v37[34]), *(v33 + v37[34] + 8), *(v33 + v37[34] + 16), *(v33 + v37[34] + 24));
}

void *sub_22B9337B8()
{
  v1 = v0;
  v2 = type metadata accessor for MessageRecord(0);
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v80 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v80 - v7;
  if (*(v0 + *(v6 + 52)))
  {
    sub_22B9E199C(v0);
  }

  else
  {
    v9 = sub_22B967888(v0);
  }

  v10 = v9;
  v11 = *(v0 + 24);
  v12 = v9;
  if (v11)
  {
    v11 = sub_22BA0FFCC();
  }

  [v10 setService_];

  v13 = (v1 + v2[34]);
  v14 = v13[3];
  v15 = *v13 == 1 || v14 == 0;
  v16 = v15;
  if (!v15)
  {
    v17 = v14;
    if (![v17 hasActualService])
    {
LABEL_42:

      goto LABEL_43;
    }

    LODWORD(v83) = v16;
    v18 = [v10 service];
    if (v18)
    {
      v19 = v18;
      v20 = sub_22BA0FFFC();
      v22 = v21;
    }

    else
    {
      v20 = 0;
      v22 = 0;
    }

    v84 = v5;
    v23 = [v17 actualService];
    if (v23)
    {
      v24 = v23;
      v82 = v20;
      v25 = sub_22BA0FFFC();
      v27 = v26;

      if (v22)
      {
        if (v27)
        {
          if (v82 == v25 && v22 == v27)
          {

LABEL_35:
            v5 = v84;
            LOBYTE(v16) = v83;
            goto LABEL_43;
          }

          v38 = sub_22BA10C6C();

          if (v38)
          {
LABEL_34:

            goto LABEL_35;
          }

          goto LABEL_27;
        }
      }

      else if (!v27)
      {
        goto LABEL_34;
      }
    }

    else if (!v22)
    {
      goto LABEL_34;
    }

LABEL_27:
    v5 = v84;
    if (qword_281414D30 != -1)
    {
      swift_once();
    }

    v28 = sub_22BA0FEFC();
    sub_22B936CA8(v28, qword_28141AD40);
    sub_22B936918(v1, v8);
    v29 = v17;
    v30 = sub_22BA0FEDC();
    v31 = sub_22BA1046C();

    if (os_log_type_enabled(v30, v31))
    {
      v81 = v31;
      v82 = v30;
      v32 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v85 = v80;
      *v32 = 136315394;
      v33 = [v29 actualService];
      if (v33)
      {
        v34 = v33;
        v35 = sub_22BA0FFFC();
        v37 = v36;
      }

      else
      {
        v37 = 0xE300000000000000;
        v35 = 7104878;
      }

      v39 = sub_22B99153C(v35, v37, &v85);

      *(v32 + 4) = v39;
      *(v32 + 12) = 2080;
      if (*(v8 + 3))
      {
        v40 = *(v8 + 2);
        v41 = *(v8 + 3);
      }

      else
      {
        v41 = 0xE300000000000000;
        v40 = 7104878;
      }

      sub_22B93697C(v8);
      v42 = sub_22B99153C(v40, v41, &v85);

      *(v32 + 14) = v42;
      v43 = v82;
      _os_log_impl(&dword_22B92A000, v82, v81, "using proto4 service %s over %s", v32, 0x16u);
      v44 = v80;
      swift_arrayDestroy();
      MEMORY[0x23189ADD0](v44, -1, -1);
      MEMORY[0x23189ADD0](v32, -1, -1);

      v5 = v84;
    }

    else
    {

      sub_22B93697C(v8);
    }

    LOBYTE(v16) = v83;
    v17 = [v29 actualService];
    [v10 setService_];

    goto LABEL_42;
  }

LABEL_43:
  if (*(v1 + v2[27] + 8))
  {
    v45 = sub_22BA0FFCC();
  }

  else
  {
    v45 = 0;
  }

  [v10 setDestinationCallerID_];

  if (*(v1 + v2[25] + 8))
  {
    v46 = sub_22BA0FFCC();
  }

  else
  {
    v46 = 0;
  }

  [v10 setReplyToGUID_];

  if (*(v1 + v2[35] + 8))
  {
    v47 = sub_22BA0FFCC();
  }

  else
  {
    v47 = 0;
  }

  [v10 setCloudKitChatID_];

  if ((v16 & 1) == 0)
  {
    v48 = v14;
    if ([v48 hasActualParentChatId])
    {
      v49 = [v10 cloudKitChatID];
      if (v49)
      {
        v50 = v49;
        v51 = sub_22BA0FFFC();
        v53 = v52;
      }

      else
      {
        v51 = 0;
        v53 = 0;
      }

      v54 = [v48 actualParentChatId];
      if (v54)
      {
        v55 = v54;
        v56 = sub_22BA0FFFC();
        v58 = v57;

        if (v53)
        {
          if (v58)
          {
            if (v51 == v56 && v53 == v58)
            {

              goto LABEL_82;
            }

            v69 = sub_22BA10C6C();

            if (v69)
            {
              goto LABEL_81;
            }

            goto LABEL_67;
          }

LABEL_66:

LABEL_67:
          if (qword_281414D30 != -1)
          {
            swift_once();
          }

          v59 = sub_22BA0FEFC();
          sub_22B936CA8(v59, qword_28141AD40);
          sub_22B936918(v1, v5);
          v60 = v48;
          v61 = sub_22BA0FEDC();
          v62 = sub_22BA1046C();

          if (os_log_type_enabled(v61, v62))
          {
            v84 = v5;
            v63 = swift_slowAlloc();
            v83 = swift_slowAlloc();
            v85 = v83;
            *v63 = 136315394;
            v64 = [v60 actualParentChatId];
            if (v64)
            {
              v65 = v64;
              v66 = sub_22BA0FFFC();
              v68 = v67;
            }

            else
            {
              v68 = 0xE300000000000000;
              v66 = 7104878;
            }

            v70 = sub_22B99153C(v66, v68, &v85);

            *(v63 + 4) = v70;
            *(v63 + 12) = 2080;
            v71 = v84;
            v72 = &v84[v2[35]];
            if (v72[1])
            {
              v73 = *v72;
              v74 = v72[1];
            }

            else
            {
              v74 = 0xE300000000000000;
              v73 = 7104878;
            }

            sub_22B93697C(v71);
            v75 = sub_22B99153C(v73, v74, &v85);

            *(v63 + 14) = v75;
            _os_log_impl(&dword_22B92A000, v61, v62, "using proto4 parentChatID %s over %s", v63, 0x16u);
            v76 = v83;
            swift_arrayDestroy();
            MEMORY[0x23189ADD0](v76, -1, -1);
            MEMORY[0x23189ADD0](v63, -1, -1);
          }

          else
          {

            sub_22B93697C(v5);
          }

          v48 = [v60 actualParentChatId];
          [v10 setCloudKitChatID_];

          goto LABEL_81;
        }

        if (v58)
        {
          goto LABEL_66;
        }
      }

      else if (v53)
      {
        goto LABEL_66;
      }
    }

LABEL_81:
  }

LABEL_82:
  if (*(v1 + 56))
  {
    v77 = sub_22BA0FFCC();
  }

  else
  {
    v77 = 0;
  }

  [v10 setCloudKitRecordID_];

  if (*(v1 + 40))
  {
    v78 = sub_22BA0FFCC();
  }

  else
  {
    v78 = 0;
  }

  [v10 setCloudKitRecordChangeTag_];

  [v10 setCloudKitSyncState_];
  [v10 setCloudKitServerChangeTokenBlob_];
  return v10;
}

uint64_t sub_22B9340B0()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_22B9340E0()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t sub_22B934110()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t sub_22B934158(void *a1)
{
  v2 = sub_22B9349C8(&qword_27D8D4BC8, qword_22BA12C60);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  sub_22B9358B4(a1, a1[3]);
  sub_22B935AE4();
  sub_22BA10D9C();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_22B93426C()
{
  v1 = *v0;
  sub_22BA10D3C();
  MEMORY[0x23189A3B0](v1);
  return sub_22BA10D6C();
}

uint64_t sub_22B9342E0(uint64_t a1)
{
  v2 = *v1;
  sub_22BA10D3C();
  MEMORY[0x23189A3B0](v2);
  return sub_22BA10D6C();
}

uint64_t sub_22B934324(uint64_t a1, id *a2)
{
  result = sub_22BA0FFDC();
  *a2 = 0;
  return result;
}

uint64_t sub_22B93439C(uint64_t a1, id *a2)
{
  v3 = sub_22BA0FFEC();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_22B93441C@<X0>(uint64_t *a2@<X8>)
{
  sub_22BA0FFFC();
  v3 = sub_22BA0FFCC();

  *a2 = v3;
  return result;
}

uint64_t sub_22B934470(uint64_t a1)
{
  v2 = sub_22B934EFC(&unk_281414CE8, type metadata accessor for CKError, &unk_22BA12B20);

  return MEMORY[0x28211CAD0](a1, v2);
}

uint64_t sub_22B9344DC(uint64_t a1)
{
  v2 = sub_22B934EFC(&unk_281414CE8, type metadata accessor for CKError, &unk_22BA12B20);

  return MEMORY[0x28211CA88](a1, v2);
}

uint64_t sub_22B934548(void *a1, uint64_t a2)
{
  v4 = sub_22B934EFC(&unk_281414CE8, type metadata accessor for CKError, &unk_22BA12B20);
  v5 = a1;

  return MEMORY[0x28211CA70](v5, a2, v4);
}

uint64_t sub_22B9345D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_22B934EFC(&unk_281414CE8, type metadata accessor for CKError, &unk_22BA12B20);

  return MEMORY[0x28211CAB8](a1, a2, v4);
}

uint64_t sub_22B934664(uint64_t a1)
{
  v2 = sub_22B934EFC(&qword_281414CA0, type metadata accessor for CKUnderlyingError, &unk_22BA12A20);

  return MEMORY[0x28211CAD0](a1, v2);
}

uint64_t sub_22B9346D0(uint64_t a1)
{
  v2 = sub_22B934EFC(&qword_281414CA0, type metadata accessor for CKUnderlyingError, &unk_22BA12A20);

  return MEMORY[0x28211CA88](a1, v2);
}

uint64_t sub_22B93473C(void *a1, uint64_t a2)
{
  v4 = sub_22B934EFC(&qword_281414CA0, type metadata accessor for CKUnderlyingError, &unk_22BA12A20);
  v5 = a1;

  return MEMORY[0x28211CA70](v5, a2, v4);
}

uint64_t sub_22B9347CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_22B934EFC(&qword_281414CA0, type metadata accessor for CKUnderlyingError, &unk_22BA12A20);

  return MEMORY[0x28211CAB8](a1, a2, v4);
}

uint64_t sub_22B934848(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22BA10D3C();
  sub_22BA0FF8C();
  return sub_22BA10D6C();
}

uint64_t sub_22B9348A8(uint64_t a1)
{
  v2 = sub_22B934EFC(&qword_27D8D4C38, type metadata accessor for FileProtectionType, &unk_22BA131E0);
  v3 = sub_22B934EFC(&unk_27D8D4C40, type metadata accessor for FileProtectionType, &unk_22BA13180);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_22B9349C8(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t type metadata accessor for MessageRecord(uint64_t a1)
{
  result = qword_281415D30;
  if (!qword_281415D30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22B934A70(uint64_t a1)
{
  sub_22B936F90(319, &qword_281414C40, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_22B934C68(319);
    if (v2 <= 0x3F)
    {
      sub_22B936F90(319, &qword_281416000, &type metadata for MessageBody, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_22B936F90(319, &qword_281414BF8, MEMORY[0x277D83B88], MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_22B936F90(319, &unk_281416C20, MEMORY[0x277CC9318], MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            sub_22B936F90(319, &qword_281415E38, &type metadata for MessageProto, MEMORY[0x277D83D88]);
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

void sub_22B934C68(uint64_t a1)
{
  if (!qword_281416BE8)
  {
    sub_22BA0FD8C();
    v1 = sub_22BA1074C();
    if (!v2)
    {
      atomic_store(v1, &qword_281416BE8);
    }
  }
}

uint64_t getEnumTagSinglePayload for MessageRecord.MessageType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for MessageRecord.MessageType(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_22B934E24()
{
  result = qword_27D8D4B60;
  if (!qword_27D8D4B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D4B60);
  }

  return result;
}

uint64_t sub_22B934E78(uint64_t a1)
{
  *(a1 + 8) = sub_22B934EFC(&qword_281415D48, type metadata accessor for MessageRecord, &unk_22BA1278C);
  result = sub_22B934EFC(&qword_281415D50, type metadata accessor for MessageRecord, &unk_22BA12764);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_22B934EFC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22B934F44(uint64_t a1)
{
  v2 = sub_22B934EFC(&unk_27D8D4BA0, type metadata accessor for Key, &unk_22BA132B4);
  v3 = sub_22B934EFC(&qword_27D8D4C58, type metadata accessor for Key, &unk_22BA12F58);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_22B935000(uint64_t a1)
{
  v2 = sub_22B934EFC(&qword_281414CF8, type metadata accessor for CKError, &unk_22BA128C4);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_22B93506C(uint64_t a1)
{
  v2 = sub_22B934EFC(&qword_281414CF8, type metadata accessor for CKError, &unk_22BA128C4);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_22B9350D8(uint64_t a1)
{
  v2 = sub_22B934EFC(&unk_281414CE8, type metadata accessor for CKError, &unk_22BA12B20);

  return MEMORY[0x28211CA68](a1, v2);
}

uint64_t sub_22B935144(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22B934EFC(&unk_281414CE8, type metadata accessor for CKError, &unk_22BA12B20);

  return MEMORY[0x28211CA98](a1, a2, a3, v6);
}

uint64_t sub_22B935210(uint64_t a1)
{
  v2 = sub_22B934EFC(&qword_281414CA8, type metadata accessor for CKUnderlyingError, &unk_22BA129E0);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_22B93527C(uint64_t a1)
{
  v2 = sub_22B934EFC(&qword_281414CA8, type metadata accessor for CKUnderlyingError, &unk_22BA129E0);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_22B9352E8(uint64_t a1)
{
  v2 = sub_22B934EFC(&qword_281414CA0, type metadata accessor for CKUnderlyingError, &unk_22BA12A20);

  return MEMORY[0x28211CA68](a1, v2);
}

uint64_t sub_22B935354(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22B934EFC(&qword_281414CA0, type metadata accessor for CKUnderlyingError, &unk_22BA12A20);

  return MEMORY[0x28211CA98](a1, a2, a3, v6);
}

unint64_t sub_22B9355B0()
{
  result = qword_281414D00;
  if (!qword_281414D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281414D00);
  }

  return result;
}

void *sub_22B9358B4(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_22B9358F8()
{
  result = qword_281415AC8[0];
  if (!qword_281415AC8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281415AC8);
  }

  return result;
}

void sub_22B93594C(void *a1, void *a2, void *a3, void *a4)
{
  if (a1 != 1)
  {
  }
}

uint64_t sub_22B9359A8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_22B9359BC(a1, a2);
  }

  return a1;
}

uint64_t sub_22B9359BC(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

void sub_22B935A10(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  if (a2 != 1)
  {

    sub_22B9359A8(a3, a4);
  }
}

uint64_t sub_22B935A74(uint64_t a1, uint64_t a2)
{
  v4 = sub_22B9349C8(&unk_27D8D4A90, &qword_22BA126A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_22B935AE4()
{
  result = qword_281415D68;
  if (!qword_281415D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281415D68);
  }

  return result;
}

uint64_t sub_22B935B38(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_22B935B9C@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_22BA0FFCC();

  *a2 = v3;
  return result;
}

uint64_t sub_22B935BE4(uint64_t a1)
{
  v2 = sub_22B934EFC(&qword_281414B28, type metadata accessor for FileAttributeKey, &unk_22BA13270);
  v3 = sub_22B934EFC(&qword_27D8D4C50, type metadata accessor for FileAttributeKey, &unk_22BA1306C);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_22B935CA0()
{
  v0 = sub_22BA0FFFC();
  v1 = MEMORY[0x231899790](v0);

  return v1;
}

uint64_t sub_22B935CDC(uint64_t a1)
{
  sub_22BA0FFFC();
  sub_22BA1008C();
}

uint64_t sub_22B935D30(uint64_t a1)
{
  sub_22BA0FFFC();
  sub_22BA10D3C();
  sub_22BA1008C();
  v1 = sub_22BA10D6C();

  return v1;
}

uint64_t sub_22B935DA4(void *a1, uint64_t *a2)
{
  v2 = sub_22BA0FFFC();
  v4 = v3;
  if (v2 == sub_22BA0FFFC() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_22BA10C6C();
  }

  return v7 & 1;
}

unint64_t *sub_22B935E2C(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_22B936518(v9, a2, a3, a4, a5);
    v11 = v10;
    swift_bridgeObjectRelease_n();

    return v11;
  }

  return result;
}

uint64_t sub_22B935ED0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  sub_22B9349C8(&qword_27D8D4BB8, &unk_22BA12C50);
  result = sub_22BA10A8C();
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
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v30 = (v10 - 1) & v10;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(*(v4 + 48) + 8 * v16);
    sub_22B936B20(*(v4 + 56) + 32 * v16, v32);
    sub_22B936C98(v32, v31);
    sub_22BA0FFFC();
    sub_22BA10D3C();
    v18 = v17;
    sub_22BA1008C();
    v19 = sub_22BA10D6C();

    v20 = -1 << *(v9 + 32);
    v21 = v19 & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    *(*(v9 + 48) + 8 * v23) = v18;
    result = sub_22B936C98(v31, (*(v9 + 56) + 32 * v23));
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v29;
    v10 = v30;
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
      v30 = (v15 - 1) & v15;
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

uint64_t sub_22B936140(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  sub_22B9349C8(&qword_27D8D4BC0, &qword_22BA18560);
  result = sub_22BA10A8C();
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
  v31 = v4;
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
    v32 = *(v17 + 8 * v16);
    sub_22BA10D3C();

    sub_22BA1008C();
    result = sub_22BA10D6C();
    v21 = -1 << *(v9 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v12 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = (*(v9 + 48) + 16 * v24);
    *v29 = v19;
    v29[1] = v20;
    *(*(v9 + 56) + 8 * v24) = v32;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v31;
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

unint64_t sub_22B93637C(uint64_t a1, uint64_t a2)
{
  v2 = sub_22BA10AAC();

  if (v2 >= 0x10)
  {
    return 16;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_22B9363C8()
{
  result = qword_281416C30;
  if (!qword_281416C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281416C30);
  }

  return result;
}

unint64_t sub_22B93641C()
{
  result = qword_2814161D8[0];
  if (!qword_2814161D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2814161D8);
  }

  return result;
}

unint64_t sub_22B936470()
{
  result = qword_281414DE0;
  if (!qword_281414DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281414DE0);
  }

  return result;
}

unint64_t sub_22B9364C4()
{
  result = qword_27D8D4B98;
  if (!qword_27D8D4B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D4B98);
  }

  return result;
}

void sub_22B936518(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v34 = a5;
  v26 = 0;
  v6 = 0;
  v7 = a3 + 64;
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 64);
  v11 = (v8 + 63) >> 6;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = v13 | (v6 << 6);
    v17 = *(*(a3 + 48) + 8 * v16);
    v27 = v16;
    sub_22B936B20(*(a3 + 56) + 32 * v16, v33);
    v31 = v17;
    sub_22B936B20(v33, &v32);
    sub_22B936B7C(&v31, &v29);
    v18 = v29;
    v19 = sub_22BA0FFFC();
    v21 = v20;
    v22 = v17;

    if (v19 == a4 && v21 == v34)
    {

      sub_22B936BEC(&v31, &qword_27D8D4BB0, &qword_22BA12C48);
      sub_22B936C4C(v30);
      sub_22B936C4C(v33);

      goto LABEL_15;
    }

    v12 = sub_22BA10C6C();

    sub_22B936BEC(&v31, &qword_27D8D4BB0, &qword_22BA12C48);
    sub_22B936C4C(v30);
    sub_22B936C4C(v33);

    if (v12)
    {
LABEL_15:
      *(a1 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
      if (__OFADD__(v26++, 1))
      {
        __break(1u);
LABEL_18:
        sub_22B935ED0(a1, a2, v26, a3);
        return;
      }
    }
  }

  v14 = v6;
  while (1)
  {
    v6 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v6 >= v11)
    {
      goto LABEL_18;
    }

    v15 = *(v7 + 8 * v6);
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_12;
    }
  }

  __break(1u);
}

unint64_t *sub_22B93674C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16[1] = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 32);
  v8 = v7 & 0x3F;
  v9 = ((1 << v7) + 63) >> 6;
  v10 = 8 * v9;
  v11 = swift_bridgeObjectRetain_n();
  if (v8 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v15 = swift_slowAlloc();

      v13 = sub_22B935E2C(v15, v9, a1, a2, a3);
      MEMORY[0x23189ADD0](v15, -1, -1);
      swift_bridgeObjectRelease_n();
      return v13;
    }
  }

  MEMORY[0x28223BE20](v11);
  bzero(v16 - ((v10 + 15) & 0x3FFFFFFFFFFFFFF0), v10);

  sub_22B936518((v16 - ((v10 + 15) & 0x3FFFFFFFFFFFFFF0)), v9, a1, a2, a3);
  v13 = v12;

  if (v3)
  {
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
  return v13;
}

uint64_t sub_22B936918(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessageRecord(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22B93697C(uint64_t a1)
{
  v2 = type metadata accessor for MessageRecord(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_22B9369D8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  if (a2 != 1)
  {

    sub_22B936A3C(a3, a4);

    v8 = a5;
  }
}

uint64_t sub_22B936A3C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_22B936A50(a1, a2);
  }

  return a1;
}

uint64_t sub_22B936A50(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

unint64_t sub_22B936ACC()
{
  result = qword_281414D08;
  if (!qword_281414D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281414D08);
  }

  return result;
}

uint64_t sub_22B936B20(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_22B936B7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22B9349C8(&qword_27D8D4BB0, &qword_22BA12C48);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22B936BEC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_22B9349C8(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_22B936C4C(void *a1)
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

_OWORD *sub_22B936C98(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_22B936CA8(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t getEnumTagSinglePayload for MessageRecordError(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for MessageRecordError(_WORD *result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for MessageRecord.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF1)
  {
    goto LABEL_17;
  }

  if (a2 + 15 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 15) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 15;
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

      return (*a1 | (v4 << 8)) - 15;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 15;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x10;
  v8 = v6 - 16;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MessageRecord.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 15 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 15) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF1)
  {
    v4 = 0;
  }

  if (a2 > 0xF0)
  {
    v5 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
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
    *result = a2 + 15;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_22B936F90(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_22B936FE4()
{
  result = qword_27D8D4BE0;
  if (!qword_27D8D4BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D4BE0);
  }

  return result;
}

unint64_t sub_22B93703C()
{
  result = qword_27D8D4BE8;
  if (!qword_27D8D4BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D4BE8);
  }

  return result;
}

unint64_t sub_22B93731C()
{
  result = qword_281415D58;
  if (!qword_281415D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281415D58);
  }

  return result;
}

unint64_t sub_22B937374()
{
  result = qword_281415D60;
  if (!qword_281415D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281415D60);
  }

  return result;
}

uint64_t sub_22B937418()
{
  if (qword_281414B68 != -1)
  {
    swift_once();
  }

  result = sub_22B9374C0(9u, 0);
  if (v1)
  {
    v2 = sub_22BA0FFCC();
    v3 = IMBagIntValueWithDefault();

    result = v3;
  }

  qword_28141ADE0 = result;
  return result;
}

uint64_t sub_22B9374C0(unsigned __int8 a1, uint64_t a2)
{
  v3 = v2;
  sub_22B92DB4C(a1);
  v5 = sub_22BA0FFCC();

  v6 = [v3 objectForKey_];

  if (v6)
  {
    sub_22BA107AC();
    swift_unknownObjectRelease();
    sub_22B936C98(&v10, v11);
  }

  else
  {
    memset(v11, 0, sizeof(v11));
  }

  sub_22B9349C8(&unk_27D8D5A30, qword_22BA13390);
  v7 = swift_dynamicCast();
  v8 = v10;
  if (!v7)
  {
    return a2;
  }

  return v8;
}

void *sub_22B9375B4(unsigned __int8 a1, void *a2)
{
  sub_22B92DB4C(a1);
  v4 = sub_22BA0FFCC();

  v5 = [v2 objectForKey_];

  if (v5)
  {
    sub_22BA107AC();
    swift_unknownObjectRelease();
    sub_22B936C98(&v8, v9);
  }

  else
  {
    memset(v9, 0, sizeof(v9));
  }

  sub_22B9349C8(&unk_27D8D5A30, qword_22BA13390);
  sub_22B937ED8();
  if (swift_dynamicCast())
  {
    return v8;
  }

  v6 = a2;
  return a2;
}

void *sub_22B93769C(uint64_t a1)
{
  v5 = a1;
  v64 = *(a1 + 16);
  if (v64)
  {
    v6 = 0;
    v7 = 0;
    v66 = a1 + 32;
    v8 = MEMORY[0x277D84F98];
    v68 = MEMORY[0x277D84F98];
    while (1)
    {
      if (v7 >= *(v5 + 16))
      {
        goto LABEL_67;
      }

      v67 = v7;
      v9 = v66 + 32 * v7;
      v3 = *v9;
      v2 = *(v9 + 8);
      v4 = *(v9 + 16);
      if (*(v9 + 24) == 1)
      {
        v1 = v8;
        v10 = *(v9 + 8);
        sub_22B937DFC(*v9, v10, *(v9 + 16));
        v11 = v4;

        v12 = [v3 recordName];
        sub_22BA0FFFC();
        v2 = v13;

        v14 = sub_22BA1009C();

        v4 = v14 + 2;
        if (__OFADD__(v14, 2))
        {
          goto LABEL_70;
        }

        if (v14 >= 128)
        {
          while (1)
          {
            v15 = v4 + 1;
            if (__OFADD__(v4, 1))
            {
              break;
            }

            v16 = v14 >> 14;
            v14 = v14 >> 7;
            ++v4;
            if (!v16)
            {
              v4 = v15;
              goto LABEL_10;
            }
          }

          __break(1u);
LABEL_66:
          __break(1u);
LABEL_67:
          __break(1u);
LABEL_68:
          __break(1u);
LABEL_69:
          __break(1u);
LABEL_70:
          __break(1u);
LABEL_71:
          __break(1u);
LABEL_72:
          __break(1u);
LABEL_73:
          __break(1u);
LABEL_74:
          __break(1u);
LABEL_75:
          __break(1u);
LABEL_76:
          __break(1u);
LABEL_77:
          __break(1u);
LABEL_78:
          swift_once();
LABEL_59:
          v60 = sub_22BA0FEFC();
          sub_22B936CA8(v60, qword_28141AD40);
          v54 = sub_22BA0FEDC();
          v55 = sub_22BA1044C();
          if (!os_log_type_enabled(v54, v55))
          {
            goto LABEL_62;
          }

          v56 = v2;
          v57 = swift_slowAlloc();
          *v57 = 0;
          v58 = "Next record will exceed max bytes per batch";
LABEL_61:
          _os_log_impl(&dword_22B92A000, v54, v55, v58, v57, 2u);
          MEMORY[0x23189ADD0](v57, -1, -1);

          v61 = v3;
          v62 = v56;
          goto LABEL_63;
        }

LABEL_10:
        v17 = [v3 zoneID];
        v18 = [v17 zoneName];

        sub_22BA0FFFC();
        v2 = v19;

        v20 = sub_22BA1009C();

        v21 = v20 + 2;
        if (__OFADD__(v20, 2))
        {
          goto LABEL_71;
        }

        v2 = v10;
        if (v20 >= 128)
        {
          v5 = a1;
          while (1)
          {
            v22 = v21 + 1;
            if (__OFADD__(v21, 1))
            {
              goto LABEL_66;
            }

            v23 = v20 >> 14;
            v20 = v20 >> 7;
            ++v21;
            if (!v23)
            {
              v21 = v22;
              goto LABEL_25;
            }
          }
        }

        v5 = a1;
LABEL_25:
        v26 = __OFADD__(v4, v21);
        v39 = v4 + v21;
        if (v26)
        {
          goto LABEL_72;
        }

        v26 = __OFADD__(v39, 34);
        v40 = v39 + 34;
        if (v26)
        {
          goto LABEL_73;
        }

        v26 = __OFADD__(v40, 3);
        v41 = v40 + 3;
        if (v26)
        {
          goto LABEL_74;
        }

        v26 = __OFADD__(v6, v41);
        v6 += v41;
        if (v26)
        {
          goto LABEL_75;
        }

        if (v6 > 1572864)
        {
          v4 = v11;

          v8 = v1;
          goto LABEL_58;
        }

        v42 = v3;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v4 = v11;
        sub_22B9BAD14(v10, v11, v42, isUniquelyReferenced_nonNull_native);

        v8 = v1;
      }

      else
      {
        v24 = v3;

        v25 = [v24 size];
        v26 = __OFADD__(v6, v25);
        v6 += v25;
        if (v26)
        {
          goto LABEL_69;
        }

        v27 = v25;
        if (v6 > 1572864 && (v8[2] || *(v68 + 16)))
        {
          goto LABEL_57;
        }

        v28 = v3;
        v29 = v24;
        v30 = swift_isUniquelyReferenced_nonNull_native();
        v31 = v2;
        v2 = v30;
        v3 = v31;
        v1 = v4;
        v33 = sub_22B990A58(v31, v4);
        v34 = v8[2];
        v35 = (v32 & 1) == 0;
        v36 = v34 + v35;
        if (__OFADD__(v34, v35))
        {
          goto LABEL_76;
        }

        v4 = v32;
        if (v8[3] >= v36)
        {
          if ((v2 & 1) == 0)
          {
            sub_22B9EBC5C();
          }

          v2 = v3;
        }

        else
        {
          sub_22B9D823C(v36, v2);
          v2 = v3;
          v37 = sub_22B990A58(v3, v1);
          if ((v4 & 1) != (v38 & 1))
          {
            result = sub_22BA10CBC();
            __break(1u);
            return result;
          }

          v33 = v37;
        }

        v3 = v28;
        v5 = a1;
        if (v4)
        {
          v44 = v8[7] + 16 * v33;
          v45 = *v44;
          *v44 = v29;
          *(v44 + 8) = v27;

          v4 = v1;
          if (v6 > 1572864)
          {
            goto LABEL_57;
          }
        }

        else
        {
          v8[(v33 >> 6) + 8] |= 1 << v33;
          v46 = (v8[6] + 16 * v33);
          *v46 = v2;
          v46[1] = v1;
          v47 = (v8[7] + 16 * v33);
          *v47 = v29;
          v47[1] = v27;
          v48 = v8[2];
          v26 = __OFADD__(v48, 1);
          v49 = v48 + 1;
          if (v26)
          {
            goto LABEL_77;
          }

          v4 = v1;
          v8[2] = v49;

          if (v6 > 1572864)
          {
LABEL_57:

LABEL_58:
            v1 = v8;
            if (qword_281414D30 == -1)
            {
              goto LABEL_59;
            }

            goto LABEL_78;
          }
        }
      }

      v50 = v8[2];
      v51 = *(v68 + 16);
      v52 = v50 + v51;
      if (__OFADD__(v50, v51))
      {
        goto LABEL_68;
      }

      if (qword_2814159E0 != -1)
      {
        swift_once();
      }

      if (v52 >= qword_28141ADE0)
      {
        v1 = v8;

        if (qword_281414D30 != -1)
        {
          swift_once();
        }

        v53 = sub_22BA0FEFC();
        sub_22B936CA8(v53, qword_28141AD40);
        v54 = sub_22BA0FEDC();
        v55 = sub_22BA1046C();
        if (os_log_type_enabled(v54, v55))
        {
          v56 = v2;
          v57 = swift_slowAlloc();
          *v57 = 0;
          v58 = "Reached max record count per batch";
          goto LABEL_61;
        }

LABEL_62:

        v61 = v3;
        v62 = v2;
LABEL_63:
        sub_22B937DC4(v61, v62, v4);
        return v1;
      }

      if (v6 >= 1572864)
      {
        v1 = v8;

        if (qword_281414D30 != -1)
        {
          swift_once();
        }

        v59 = sub_22BA0FEFC();
        sub_22B936CA8(v59, qword_28141AD40);
        v54 = sub_22BA0FEDC();
        v55 = sub_22BA1044C();
        if (!os_log_type_enabled(v54, v55))
        {
          goto LABEL_62;
        }

        v56 = v2;
        v57 = swift_slowAlloc();
        *v57 = 0;
        v58 = "Current batch is over the max bytes per batch";
        goto LABEL_61;
      }

      v7 = v67 + 1;
      sub_22B937DC4(v3, v2, v4);
      if (v67 + 1 == v64)
      {

        return v8;
      }
    }
  }

  return MEMORY[0x277D84F98];
}

uint64_t sub_22B937DC4(void *a1, uint64_t a2, uint64_t a3)
{
}

uint64_t sub_22B937DFC(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
}

uint64_t sub_22B937E44(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_22B937E8C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_22B937ED8()
{
  result = qword_281414A20;
  if (!qword_281414A20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281414A20);
  }

  return result;
}

MessagesCloudSync::SyncJobSchedulingStrategy_optional __swiftcall SyncJobSchedulingStrategy.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_22B937F54()
{
  result = qword_27D8D4CC0;
  if (!qword_27D8D4CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8D4CC0);
  }

  return result;
}

uint64_t sub_22B937FA8()
{
  v1 = *v0;
  sub_22BA10D3C();
  MEMORY[0x23189A3B0](v1);
  return sub_22BA10D6C();
}

uint64_t sub_22B93801C(uint64_t a1)
{
  v2 = *v1;
  sub_22BA10D3C();
  MEMORY[0x23189A3B0](v2);
  return sub_22BA10D6C();
}

void *sub_22B938060@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t sub_22B93809C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v117 = a7;
  v118 = a8;
  v112 = a6;
  v119 = a5;
  v12 = sub_22B9349C8(&unk_27D8D5780, &qword_22BA13DB0);
  MEMORY[0x28223BE20](v12 - 8);
  v116 = &v99 - v13;
  v14 = sub_22BA0FD8C();
  v125 = *(v14 - 8);
  v126 = v14;
  MEMORY[0x28223BE20](v14);
  v16 = &v99 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v159 = sub_22BA0FDCC();
  v124 = *(v159 - 8);
  MEMORY[0x28223BE20](v159);
  v18 = &v99 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281416778 != -1)
  {
    swift_once();
  }

  v123 = xmmword_28141AEB0;
  v115 = a1;
  sub_22B935B38(a1, &v157);
  v109 = type metadata accessor for XPCActivity();
  v108 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  sub_22B935B38(a2, &v155);
  sub_22B935B38(a3, v154);
  v100 = a4;
  sub_22B935B38(a4, v151);
  sub_22B943D3C(v151, v152);
  v149 = &type metadata for DatabaseRecordPersistence;
  v150 = &off_283F55858;
  v121 = type metadata accessor for CountStore();
  v19 = swift_allocObject();
  sub_22B943D3C(v148, &type metadata for DatabaseRecordPersistence);
  v146 = &type metadata for DatabaseRecordPersistence;
  v147 = &off_283F55858;
  swift_unknownObjectRetain();
  swift_defaultActor_initialize();
  sub_22B92DFEC(&v145, v19 + 112);
  sub_22B936C4C(v148);
  sub_22B936C4C(v151);
  v113 = sub_22B9E43A0(1, 1, 0);
  sub_22BA0FDBC();
  sub_22BA0FD7C();
  v20 = [objc_opt_self() defaultManager];
  v103 = v20;
  v21 = type metadata accessor for SyncTelemetryReporter();
  v101 = v21;
  v22 = [objc_allocWithZone(v21) init];
  v120 = v18;
  v23 = v22;
  v104 = v22;
  v24 = sub_22B943D3C(&v157, v158);
  v111 = &v99;
  MEMORY[0x28223BE20](v24);
  v26 = (&v99 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v27 + 16))(v26);
  v28 = sub_22B943D3C(&v155, v156);
  v110 = &v99;
  MEMORY[0x28223BE20](v28);
  v122 = v16;
  v30 = (&v99 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v31 + 16))(v30);
  v32 = *v26;
  v33 = *v30;
  v34 = type metadata accessor for SyncJob();
  v152 = v34;
  v153 = &off_283F54680;
  v151[0] = v32;
  v150 = &off_283F52B80;
  v149 = v109;
  v148[0] = v108;
  v102 = type metadata accessor for CloudState();
  v147 = &off_283F589F0;
  v146 = v102;
  *&v145 = v33;
  v144 = &off_283F53B48;
  v143 = &type metadata for FileManagerProvider;
  v142[0] = v20;
  v141 = &off_283F57D70;
  v140 = v21;
  v139[0] = v23;
  v137 = v121;
  v138 = &off_283F57A60;
  v136[0] = v19;
  type metadata accessor for SyncContext(0);
  v35 = swift_allocObject();
  v36 = sub_22B943D3C(v151, v34);
  v109 = &v99;
  MEMORY[0x28223BE20](v36);
  v38 = (&v99 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v39 + 16))(v38);
  v40 = sub_22B943D3C(&v145, v146);
  v108 = &v99;
  MEMORY[0x28223BE20](v40);
  v42 = (&v99 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v43 + 16))(v42);
  v44 = sub_22B943D3C(v142, v143);
  v107 = &v99;
  MEMORY[0x28223BE20](v44);
  v46 = (&v99 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v47 + 16))(v46);
  v48 = sub_22B943D3C(v139, v140);
  v106 = &v99;
  MEMORY[0x28223BE20](v48);
  v50 = (&v99 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v51 + 16))(v50);
  v52 = sub_22B943D3C(v136, v137);
  v105 = &v99;
  MEMORY[0x28223BE20](v52);
  v54 = (&v99 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v55 + 16))(v54);
  v56 = *v38;
  v57 = *v42;
  v58 = *v46;
  v59 = *v50;
  v60 = *v54;
  v134 = v34;
  v135 = &off_283F54680;
  v133[0] = v56;
  v132[4] = &off_283F589F0;
  v132[3] = v102;
  v132[0] = v57;
  v131[4] = &off_283F53B48;
  v131[3] = &type metadata for FileManagerProvider;
  v131[0] = v58;
  v130[3] = v101;
  v130[4] = &off_283F57D70;
  v130[0] = v59;
  v128 = v121;
  v129 = &off_283F57A60;
  *&v127 = v60;
  sub_22B935B38(v133, v35 + 16);
  (*(v124 + 16))(v35 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_identifier, v120, v159);
  (*(v125 + 16))(v35 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_startDate, v122, v126);
  sub_22B935B38(v148, v35 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_activity);
  sub_22B935B38(v132, v35 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState);
  sub_22B935B38(v154, v35 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudDatabase);
  *(v35 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_syncDatabase) = v123;
  *(v35 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_delegate) = v119;
  *(v35 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_notifiers) = v112;
  *(v35 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_attemptCount) = 0;
  type metadata accessor for OSActivity();
  v61 = swift_allocObject();
  *(v61 + 24) = 0;
  *(v61 + 32) = 0;
  v62 = qword_2814160E0;
  v121 = v103;
  v104 = v104;
  swift_unknownObjectRetain();

  if (v62 != -1)
  {
    swift_once();
  }

  v63 = v113;
  *&v123 = v113 >> 24;
  *(v61 + 16) = _os_activity_create(&dword_22B92A000, "messages-cloud-sync", qword_2814160F0, OS_ACTIVITY_FLAG_DEFAULT);
  swift_beginAccess();
  v64 = swift_unknownObjectRetain();
  os_activity_scope_enter(v64, (v61 + 24));
  swift_endAccess();
  swift_unknownObjectRelease();
  *(v35 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_osActivity) = v61;
  sub_22B935B38(v131, v35 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_fileProvider);
  sub_22B935B38(v130, v35 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_telemetryService);
  LODWORD(v112) = *(*sub_22B9358B4(v133, v134) + 17);
  type metadata accessor for SyncStatsCollector();
  v65 = swift_allocObject();
  swift_defaultActor_initialize();
  v66 = sub_22B9BB998(&unk_283F509E8);
  v67 = sub_22B9BB998(&unk_283F50A68);
  v68 = sub_22B9BB998(&unk_283F50AE8);
  v69 = sub_22B9BB998(&unk_283F50B68);
  v70 = sub_22B9BB998(&unk_283F50BE8);

  (*(v125 + 8))(v122, v126);
  (*(v124 + 8))(v120, v159);
  sub_22B936C4C(v154);
  sub_22B936C4C(v148);
  sub_22B936C4C(v130);
  sub_22B936C4C(v131);
  sub_22B936C4C(v132);
  *(v65 + 112) = v112;
  *(v65 + 120) = 0;
  *(v65 + 128) = 0;
  *(v65 + 136) = 0;
  *(v65 + 144) = v66;
  *(v65 + 152) = v67;
  v71 = MEMORY[0x277D84F90];
  *(v65 + 160) = v68;
  *(v65 + 168) = v69;
  *(v65 + 176) = v70;
  *(v65 + 184) = v71;
  *(v65 + 192) = v71;
  *(v35 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_statsCollector) = v65;
  sub_22B92DFEC(&v127, v35 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_countStore);
  v72 = (v35 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_devicePolicy);
  *v72 = v63 & 1;
  v72[1] = BYTE1(v63) & 1;
  v72[2] = BYTE2(v63) & 1;
  v72[3] = v123;
  v72[4] = BYTE4(v63) & 1;
  sub_22B936C4C(v133);
  sub_22B936C4C(v136);
  sub_22B936C4C(v139);
  sub_22B936C4C(v142);
  sub_22B936C4C(&v145);
  sub_22B936C4C(v151);
  sub_22B936C4C(&v155);
  sub_22B936C4C(&v157);
  sub_22B939184(0x6974617669746341, 0xED00002E2E2E676ELL);
  type metadata accessor for SyncCoordinator();

  v74 = v114;
  sub_22B9B51D4(v73, &off_283F56AF0);
  if (!v74)
  {

    sub_22B93EBA0("Reporting start to BackgroundSystemTasks for %s", &selRef_reportStartWithTaskName_processesInvolved_error_, 26);
    v81 = sub_22B9358B4((v35 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState), *(v35 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState + 24));
    v82 = *(*v81 + 56);
    v83 = v115;
    if (v82)
    {
      [*(*v81 + 56) startChanges];
      v84 = *sub_22B9358B4(v83, v83[3]);

      sub_22B92E064(v85, v84);

      [v82 commitChanges];
      v86 = v119;
      if (!v119)
      {
LABEL_10:
        sub_22B939184(0x69756E69746E6F43, 0xEF636E795320676ELL);
        v91 = sub_22BA1030C();
        v92 = v116;
        (*(*(v91 - 8) + 56))(v116, 1, 1, v91);
        sub_22B935B38(v83, &v157);
        sub_22B935B38(v100, &v155);
        v93 = swift_allocObject();
        v93[2] = 0;
        v93[3] = 0;
        v93[4] = v35;
        sub_22B92DFEC(&v157, (v93 + 5));
        sub_22B92DFEC(&v155, (v93 + 10));
        v95 = v117;
        v94 = v118;
        v93[15] = v117;
        v93[16] = v94;

        sub_22B930C20(v95, v94);
        sub_22B9B5500(0, 0, v92, &unk_22BA13578, v93);
        goto LABEL_11;
      }
    }

    else
    {
      v97 = *sub_22B9358B4(v115, v115[3]);

      sub_22B92E064(v98, v97);

      v86 = v119;
      if (!v119)
      {
        goto LABEL_10;
      }
    }

    *&v157 = 0x2E636E7973;
    *(&v157 + 1) = 0xE500000000000000;
    sub_22B9358B4((v35 + 16), *(v35 + 40));
    v87 = sub_22B9B580C();
    MEMORY[0x231899730](v87);

    MEMORY[0x231899730](46, 0xE100000000000000);
    sub_22B944034();
    v88 = sub_22BA10C1C();
    MEMORY[0x231899730](v88);

    v89 = sub_22BA0FFCC();

    v90 = sub_22BA0FDAC();
    [v86 syncCoordinatorStartedSyncWithName:v89 identifier:v90];

    goto LABEL_10;
  }

  v75 = sub_22B9BBA8C(MEMORY[0x277D84F90]);
  sub_22B939308(v75);

  v76 = sub_22BA1030C();
  v77 = v116;
  (*(*(v76 - 8) + 56))(v116, 1, 1, v76);
  sub_22B935B38(v115, &v157);
  v78 = swift_allocObject();
  v78[2] = 0;
  v78[3] = 0;
  v78[4] = v74;
  sub_22B92DFEC(&v157, (v78 + 5));
  v80 = v117;
  v79 = v118;
  v78[10] = v35;
  v78[11] = v80;
  v78[12] = v79;

  sub_22B930C20(v80, v79);
  sub_22B989028(0, 0, v77, &unk_22BA13568, v78);
LABEL_11:
}

uint64_t sub_22B939184(uint64_t a1, uint64_t a2)
{
  sub_22B9349C8(&unk_27D8D4E00, &qword_22BA13E00);
  inited = swift_initStackObject();
  *(inited + 32) = 0x73736572676F7270;
  *(inited + 16) = xmmword_22BA13410;
  *(inited + 40) = 0xE800000000000000;
  sub_22BA108FC();

  sub_22B9358B4((v2 + 16), *(v2 + 40));
  v6 = sub_22B9B580C();
  MEMORY[0x231899730](v6);

  v7 = MEMORY[0x277D837D0];
  *(inited + 48) = 0xD000000000000010;
  *(inited + 56) = 0x800000022BA1C450;
  *(inited + 72) = v7;
  strcpy((inited + 80), "subtextLabel");
  *(inited + 120) = v7;
  *(inited + 93) = 0;
  *(inited + 94) = -5120;
  *(inited + 96) = a1;
  *(inited + 104) = a2;

  v8 = sub_22B9BBA8C(inited);
  swift_setDeallocating();
  sub_22B9349C8(&unk_27D8D5770, &qword_22BA135E0);
  swift_arrayDestroy();
  sub_22B939308(v8);
}

void sub_22B939308(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_notifiers);
  if (v2 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22BA1080C())
  {
    v4 = 0;
    while ((v2 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x231899FA0](v4, v2);
      v6 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_11;
      }

LABEL_7:
      v7 = sub_22BA0FF5C();
      [v5 notifyClientsOfProgress_];
      swift_unknownObjectRelease();

      ++v4;
      if (v6 == i)
      {
        return;
      }
    }

    if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_12;
    }

    v5 = *(v2 + 8 * v4 + 32);
    swift_unknownObjectRetain();
    v6 = v4 + 1;
    if (!__OFADD__(v4, 1))
    {
      goto LABEL_7;
    }

LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }
}

uint64_t sub_22B939430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[13] = a7;
  v8[14] = a8;
  v8[11] = a5;
  v8[12] = a6;
  v8[10] = a4;
  return MEMORY[0x2822009F8](sub_22B939458, 0, 0);
}

uint64_t sub_22B939458()
{
  v37 = v0;
  v1 = v0[10];
  v0[9] = v1;
  v2 = v1;
  sub_22B9349C8(&qword_27D8D55E0, &unk_22BA135D0);
  if (swift_dynamicCast())
  {
    v3 = v0[7];
    if (v3 >= 5)
    {
      if (qword_281414D30 != -1)
      {
        swift_once();
      }

      v10 = v0[11];
      v11 = sub_22BA0FEFC();
      sub_22B936CA8(v11, qword_28141AD40);
      sub_22B935B38(v10, (v0 + 2));
      sub_22B944AC0(v3);

      v12 = sub_22BA0FEDC();
      v13 = sub_22BA1044C();
      sub_22B944AB0(v3);

      if (!os_log_type_enabled(v12, v13))
      {
        sub_22B944AB0(v3);

        sub_22B936C4C(v0 + 2);
        v9 = v0[13];
        if (v9)
        {
          goto LABEL_15;
        }

        goto LABEL_19;
      }

      v14 = v0[12];
      v15 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v34 = v32;
      *v15 = 136315650;
      sub_22B9358B4(v0 + 2, v0[5]);
      v31 = v13;
      v16 = sub_22B9B580C();
      v18 = v17;
      sub_22B936C4C(v0 + 2);
      v19 = sub_22B99153C(v16, v18, &v34);

      *(v15 + 4) = v19;
      *(v15 + 12) = 2080;
      v35 = 0x2E636E7973;
      v36 = 0xE500000000000000;
      sub_22B9358B4((v3 + 16), *(v3 + 40));
      v20 = sub_22B9B580C();
      MEMORY[0x231899730](v20);

      MEMORY[0x231899730](46, 0xE100000000000000);
      sub_22BA0FDCC();
      sub_22B944034();
      v21 = sub_22BA10C1C();
      MEMORY[0x231899730](v21);

      v22 = sub_22B99153C(v35, v36, &v34);

      *(v15 + 14) = v22;
      *(v15 + 22) = 2080;
      v35 = 0x2E636E7973;
      v36 = 0xE500000000000000;
      sub_22B9358B4((v14 + 16), *(v14 + 40));
      v23 = sub_22B9B580C();
      MEMORY[0x231899730](v23);

      MEMORY[0x231899730](46, 0xE100000000000000);
      v24 = sub_22BA10C1C();
      MEMORY[0x231899730](v24);

      v25 = sub_22B99153C(v35, v36, &v34);

      *(v15 + 24) = v25;
      _os_log_impl(&dword_22B92A000, v12, v31, "Tried to kick %s but another sync was already going %s %s", v15, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x23189ADD0](v32, -1, -1);
      MEMORY[0x23189ADD0](v15, -1, -1);
      sub_22B944AB0(v3);

LABEL_14:
      v9 = v0[13];
      if (v9)
      {
        goto LABEL_15;
      }

LABEL_19:
      v30 = v0[1];

      return v30();
    }

    sub_22B944AB0(v0[7]);
  }

  v4 = sub_22B9358B4((v0[12] + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState), *(v0[12] + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState + 24));
  v5 = *v4;
  v6 = *(*v4 + 56);
  if (v6)
  {
    [v6 startChanges];
  }

  sub_22BA08EA4(1);
  v7 = *(v5 + 56);
  if (!v7)
  {
    goto LABEL_14;
  }

  [v7 setSyncJobStateWithState_];
  v8 = *(v5 + 56);
  if (!v8)
  {
    goto LABEL_14;
  }

  [v8 commitChanges];
  v9 = v0[13];
  if (!v9)
  {
    goto LABEL_19;
  }

LABEL_15:
  v26 = v0[12];
  v27 = v0[10];
  v33 = (v9 + *v9);
  v28 = swift_task_alloc();
  v0[15] = v28;
  *v28 = v0;
  v28[1] = sub_22B9399AC;

  return (v33)(v26, &off_283F56AF0, 1, v27);
}

uint64_t sub_22B9399AC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_22B939AA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[13] = a7;
  v8[14] = a8;
  v8[11] = a5;
  v8[12] = a6;
  v8[10] = a4;
  type metadata accessor for HandleErrorOutcome(0);
  v8[15] = swift_task_alloc();
  v8[16] = swift_task_alloc();
  v8[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B939B50, 0, 0);
}

uint64_t sub_22B939B50()
{
  v29 = v0;
  sub_22B939184(0x2E676E696E6E7552, 0xEA00000000002E2ELL);
  if (qword_281414D30 != -1)
  {
    swift_once();
  }

  v1 = v0[11];
  v2 = sub_22BA0FEFC();
  v0[18] = sub_22B936CA8(v2, qword_28141AD40);
  sub_22B935B38(v1, (v0 + 2));

  v3 = sub_22BA0FEDC();
  v4 = sub_22BA1046C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v28[0] = v6;
    *v5 = 136315394;
    sub_22B9358B4(v0 + 2, v0[5]);
    v7 = sub_22B9B580C();
    v9 = v8;
    sub_22B936C4C(v0 + 2);
    v10 = sub_22B99153C(v7, v9, v28);

    *(v5 + 4) = v10;
    *(v5 + 12) = 2080;
    sub_22BA0FDCC();
    sub_22B944034();
    v11 = sub_22BA10C1C();
    v13 = sub_22B99153C(v11, v12, v28);

    *(v5 + 14) = v13;
    _os_log_impl(&dword_22B92A000, v3, v4, "Running handler for %s %s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23189ADD0](v6, -1, -1);
    MEMORY[0x23189ADD0](v5, -1, -1);
  }

  else
  {

    sub_22B936C4C(v0 + 2);
  }

  v14 = v0[17];
  v15 = sub_22B9349C8(&qword_27D8D4CC8, &qword_22BA13580);
  v0[19] = v15;
  v16 = *(v15 - 8);
  v0[20] = v16;
  (*(v16 + 56))(v14, 2, 2, v15);
  v17 = [objc_opt_self() sharedInstance];
  if (v17)
  {
    v18 = v17;
    v19 = [v17 isInternalInstall];

    if (v19)
    {
      sub_22B9441FC((v0[10] + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState), 0xD000000000000012, 0x800000022BA1C320);
    }
  }

  v20 = v0[11];
  v21 = v20[3];
  v22 = v20[4];
  sub_22B9358B4(v20, v21);
  v23 = *(*(v22 + 8) + 8);
  v27 = (*(v23 + 40) + **(v23 + 40));
  v24 = swift_task_alloc();
  v0[21] = v24;
  *v24 = v0;
  v24[1] = sub_22B93A08C;
  v25 = v0[10];

  return v27(v25, &off_283F56AF0, v21, v23);
}

uint64_t sub_22B93A08C()
{

  return MEMORY[0x2822009F8](sub_22B93A188, 0, 0);
}

uint64_t sub_22B93A188()
{
  sub_22B9358B4(*(v0 + 88), *(*(v0 + 88) + 24));
  v1 = swift_task_alloc();
  *(v0 + 176) = v1;
  *v1 = v0;
  v1[1] = sub_22B93A248;
  v2 = *(v0 + 80);

  return sub_22B93BD74(v2, &off_283F56AF0);
}

uint64_t sub_22B93A248(uint64_t a1, char a2)
{
  v5 = *v3;
  *(*v3 + 184) = v2;

  if (v2)
  {
    v6 = sub_22B93B664;
  }

  else
  {
    *(v5 + 280) = a2;
    v6 = sub_22B93A370;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_22B93A370()
{
  v1 = v0[11];
  v2 = v1[3];
  v3 = v1[4];
  sub_22B9358B4(v1, v2);
  v4 = *(*(v3 + 8) + 8);
  v8 = (*(v4 + 56) + **(v4 + 56));
  v5 = swift_task_alloc();
  v0[24] = v5;
  *v5 = v0;
  v5[1] = sub_22B93A4AC;
  v6 = v0[10];

  return v8(v6, &off_283F56AF0, v2, v4);
}

uint64_t sub_22B93A4AC()
{

  return MEMORY[0x2822009F8](sub_22B93A5A8, 0, 0);
}

uint64_t sub_22B93A5A8()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 184);
  *(v0 + 200) = 0;
  *(v0 + 281) = v1 & 1;
  v3 = *(*(v0 + 80) + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_osActivity);
  swift_beginAccess();
  os_activity_scope_leave((v3 + 24));
  swift_endAccess();
  v4 = sub_22B9BBA8C(MEMORY[0x277D84F90]);
  sub_22B939308(v4);

  type metadata accessor for SyncCoordinator();
  sub_22B9B5378();
  *(v0 + 208) = v2;
  if (v2)
  {
    v5 = swift_task_alloc();
    *(v0 + 272) = v5;
    *v5 = v0;
    v5[1] = sub_22B93B854;

    return sub_22B97D504(v2);
  }

  v7 = *(v0 + 152);
  v8 = *(v0 + 160);
  v10 = *(v0 + 128);
  v9 = *(v0 + 136);
  v11 = *(v0 + 104);
  sub_22B93EBA0("Reporting stopped to BackgroundSystemTasks for %s", &selRef_reportStoppedWithTaskName_processesInvolved_error_, 27);
  sub_22B944198(v9, v10);
  v12 = (*(v8 + 48))(v10, 2, v7);
  if (v12)
  {
    if (v12 == 1)
    {
      if (v11)
      {
        v13 = *(v0 + 80);
        v28 = (*(v0 + 104) + **(v0 + 104));
        v14 = swift_task_alloc();
        *(v0 + 224) = v14;
        *v14 = v0;
        v14[1] = sub_22B93AC28;
        v15 = *(v0 + 200);
        v16 = v13;
        v17 = 64;
LABEL_13:

        return v28(v16, &off_283F56AF0, v17, v15);
      }
    }

    else if (v11)
    {
      v20 = *(v0 + 281);
      v21 = *(v0 + 80);
      v28 = (*(v0 + 104) + **(v0 + 104));
      v22 = swift_task_alloc();
      *(v0 + 232) = v22;
      *v22 = v0;
      v22[1] = sub_22B93ADB0;
      v15 = *(v0 + 200);
      v16 = v21;
      v17 = v20;
      goto LABEL_13;
    }

    v23 = *(v0 + 200);
    sub_22B9440D8(*(v0 + 136));
  }

  else
  {
    if (v11)
    {
      v18 = *(v0 + 80);
      v28 = (*(v0 + 104) + **(v0 + 104));
      v19 = swift_task_alloc();
      *(v0 + 216) = v19;
      *v19 = v0;
      v19[1] = sub_22B93AA64;
      v15 = *(v0 + 200);
      v16 = v18;
      v17 = 128;
      goto LABEL_13;
    }

    v24 = *(v0 + 200);
    sub_22B9440D8(*(v0 + 136));

    v25 = *(v0 + 128);
    v26 = sub_22BA0FD8C();
    (*(*(v26 - 8) + 8))(v25, v26);
  }

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_22B93AA64()
{

  return MEMORY[0x2822009F8](sub_22B93AB60, 0, 0);
}

uint64_t sub_22B93AB60()
{
  v1 = *(v0 + 136);

  sub_22B9440D8(v1);
  v2 = *(v0 + 128);
  v3 = sub_22BA0FD8C();
  (*(*(v3 - 8) + 8))(v2, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_22B93AC28()
{

  return MEMORY[0x2822009F8](sub_22B93AD24, 0, 0);
}

uint64_t sub_22B93AD24()
{
  v1 = *(v0 + 136);

  sub_22B9440D8(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_22B93ADB0()
{

  return MEMORY[0x2822009F8](sub_22B945ACC, 0, 0);
}

uint64_t sub_22B93AEAC()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  v1[32] = v3;
  *v3 = v2;
  v3[1] = sub_22B93B05C;
  v4 = v1[30];
  v5 = v1[15];
  v6 = v1[14];
  v7 = v1[13];
  v8 = v1[12];
  v9 = v1[10];

  return sub_22B93C914(v5, v9, &off_283F56AF0, v8, v7, v6, v4);
}

uint64_t sub_22B93B05C()
{
  v2 = *v1;
  *(*v1 + 264) = v0;

  if (v0)
  {
    v3 = sub_22B93B7C0;
  }

  else
  {
    v3 = sub_22B93B190;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22B93B190()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 120);
  sub_22B9440D8(v1);
  sub_22B944134(v2, v1);
  v3 = *(v0 + 264);
  *(v0 + 200) = *(v0 + 240);
  *(v0 + 281) = 0;
  v4 = *(*(v0 + 80) + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_osActivity);
  swift_beginAccess();
  os_activity_scope_leave((v4 + 24));
  swift_endAccess();
  v5 = sub_22B9BBA8C(MEMORY[0x277D84F90]);
  sub_22B939308(v5);

  type metadata accessor for SyncCoordinator();
  sub_22B9B5378();
  *(v0 + 208) = v3;
  if (v3)
  {
    v6 = swift_task_alloc();
    *(v0 + 272) = v6;
    *v6 = v0;
    v6[1] = sub_22B93B854;

    return sub_22B97D504(v3);
  }

  v8 = *(v0 + 152);
  v9 = *(v0 + 160);
  v11 = *(v0 + 128);
  v10 = *(v0 + 136);
  v12 = *(v0 + 104);
  sub_22B93EBA0("Reporting stopped to BackgroundSystemTasks for %s", &selRef_reportStoppedWithTaskName_processesInvolved_error_, 27);
  sub_22B944198(v10, v11);
  v13 = (*(v9 + 48))(v11, 2, v8);
  if (v13)
  {
    if (v13 == 1)
    {
      if (v12)
      {
        v14 = *(v0 + 80);
        v29 = (*(v0 + 104) + **(v0 + 104));
        v15 = swift_task_alloc();
        *(v0 + 224) = v15;
        *v15 = v0;
        v15[1] = sub_22B93AC28;
        v16 = *(v0 + 200);
        v17 = v14;
        v18 = 64;
LABEL_13:

        return v29(v17, &off_283F56AF0, v18, v16);
      }
    }

    else if (v12)
    {
      v21 = *(v0 + 281);
      v22 = *(v0 + 80);
      v29 = (*(v0 + 104) + **(v0 + 104));
      v23 = swift_task_alloc();
      *(v0 + 232) = v23;
      *v23 = v0;
      v23[1] = sub_22B93ADB0;
      v16 = *(v0 + 200);
      v17 = v22;
      v18 = v21;
      goto LABEL_13;
    }

    v24 = *(v0 + 200);
    sub_22B9440D8(*(v0 + 136));
  }

  else
  {
    if (v12)
    {
      v19 = *(v0 + 80);
      v29 = (*(v0 + 104) + **(v0 + 104));
      v20 = swift_task_alloc();
      *(v0 + 216) = v20;
      *v20 = v0;
      v20[1] = sub_22B93AA64;
      v16 = *(v0 + 200);
      v17 = v19;
      v18 = 128;
      goto LABEL_13;
    }

    v25 = *(v0 + 200);
    sub_22B9440D8(*(v0 + 136));

    v26 = *(v0 + 128);
    v27 = sub_22BA0FD8C();
    (*(*(v27 - 8) + 8))(v26, v27);
  }

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_22B93B664()
{
  v1 = v0[23];
  v0[30] = v1;
  v2 = v0[11];
  v3 = v2[3];
  v4 = v2[4];
  sub_22B9358B4(v2, v3);
  v5 = *(*(v4 + 8) + 8);
  v6 = *(v5 + 56);
  v7 = v1;
  v11 = (v6 + *v6);
  v8 = swift_task_alloc();
  v0[31] = v8;
  *v8 = v0;
  v8[1] = sub_22B93AEAC;
  v9 = v0[10];

  return (v11)(v9, &off_283F56AF0, v3, v5);
}

uint64_t sub_22B93B7C0()
{
  v1 = *(v0 + 136);

  sub_22B9440D8(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_22B93B854()
{

  return MEMORY[0x2822009F8](sub_22B93B950, 0, 0);
}

uint64_t sub_22B93B950(uint64_t a1)
{
  v2 = sub_22BA0FEDC();
  v3 = sub_22BA1045C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_22B92A000, v2, v3, "Failed to clear active sync state!", v4, 2u);
    MEMORY[0x23189ADD0](v4, -1, -1);
  }

  v5 = *(v1 + 152);
  v6 = *(v1 + 160);
  v8 = *(v1 + 128);
  v7 = *(v1 + 136);
  v9 = *(v1 + 104);
  sub_22B93EBA0("Reporting stopped to BackgroundSystemTasks for %s", &selRef_reportStoppedWithTaskName_processesInvolved_error_, 27);
  sub_22B944198(v7, v8);
  v10 = (*(v6 + 48))(v8, 2, v5);
  if (v10)
  {
    if (v10 == 1)
    {
      if (v9)
      {
        v11 = *(v1 + 80);
        v27 = (*(v1 + 104) + **(v1 + 104));
        v12 = swift_task_alloc();
        *(v1 + 224) = v12;
        *v12 = v1;
        v12[1] = sub_22B93AC28;
        v13 = *(v1 + 200);
        v14 = v11;
        v15 = 64;
LABEL_11:

        return v27(v14, &off_283F56AF0, v15, v13);
      }
    }

    else if (v9)
    {
      v18 = *(v1 + 281);
      v19 = *(v1 + 80);
      v27 = (*(v1 + 104) + **(v1 + 104));
      v20 = swift_task_alloc();
      *(v1 + 232) = v20;
      *v20 = v1;
      v20[1] = sub_22B93ADB0;
      v13 = *(v1 + 200);
      v14 = v19;
      v15 = v18;
      goto LABEL_11;
    }

    v22 = *(v1 + 200);
    sub_22B9440D8(*(v1 + 136));
  }

  else
  {
    if (v9)
    {
      v16 = *(v1 + 80);
      v27 = (*(v1 + 104) + **(v1 + 104));
      v17 = swift_task_alloc();
      *(v1 + 216) = v17;
      *v17 = v1;
      v17[1] = sub_22B93AA64;
      v13 = *(v1 + 200);
      v14 = v16;
      v15 = 128;
      goto LABEL_11;
    }

    v23 = *(v1 + 200);
    sub_22B9440D8(*(v1 + 136));

    v24 = *(v1 + 128);
    v25 = sub_22BA0FD8C();
    (*(*(v25 - 8) + 8))(v24, v25);
  }

  v26 = *(v1 + 8);

  return v26();
}

uint64_t sub_22B93BD74(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_22B93BD98, 0, 0);
}

uint64_t sub_22B93BD98()
{
  v32 = v0;
  v1 = v0[2];
  v2 = OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState;
  v0[5] = OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState;
  sub_22B9358B4((v1 + v2), *(v1 + v2 + 24));
  if ((sub_22BA08808() & 1) != 0 || (sub_22B92DA70(1, 0) & 1) == 0)
  {
    if (qword_281414D30 != -1)
    {
      swift_once();
    }

    v19 = sub_22BA0FEFC();
    sub_22B936CA8(v19, qword_28141AD40);

    v20 = sub_22BA0FEDC();
    v21 = sub_22BA1046C();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v30 = v23;
      *v22 = 136315138;
      v24 = sub_22B9B580C();
      v26 = sub_22B99153C(v24, v25, &v30);

      *(v22 + 4) = v26;
      _os_log_impl(&dword_22B92A000, v20, v21, "%s Early Exit from task, Messages in iCloud not enabled.", v22, 0xCu);
      sub_22B936C4C(v23);
      MEMORY[0x23189ADD0](v23, -1, -1);
      MEMORY[0x23189ADD0](v22, -1, -1);
    }

    sub_22B944A5C();
    swift_allocError();
    *v27 = 0;
    v27[1] = 0;
    swift_willThrow();
    v28 = v0[1];

    return v28();
  }

  else
  {
    sub_22BA01E9C(0, 0xE000000000000000, 0, *(v0[4] + 98));
    if (qword_281414D30 != -1)
    {
      swift_once();
    }

    v3 = sub_22BA0FEFC();
    v0[6] = sub_22B936CA8(v3, qword_28141AD40);

    swift_unknownObjectRetain();
    v4 = sub_22BA0FEDC();
    v5 = sub_22BA1046C();

    swift_unknownObjectRelease();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = v0[2];
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v29 = v8;
      *v7 = 136315394;
      v9 = sub_22B9B580C();
      v11 = sub_22B99153C(v9, v10, &v29);

      *(v7 + 4) = v11;
      *(v7 + 12) = 2080;
      v30 = 0x2E636E7973;
      v31 = 0xE500000000000000;
      sub_22B9358B4((v6 + 16), *(v6 + 40));
      v12 = sub_22B9B580C();
      MEMORY[0x231899730](v12);

      MEMORY[0x231899730](46, 0xE100000000000000);
      sub_22BA0FDCC();
      sub_22B944034();
      v13 = sub_22BA10C1C();
      MEMORY[0x231899730](v13);

      v14 = sub_22B99153C(v30, v31, &v29);

      *(v7 + 14) = v14;
      _os_log_impl(&dword_22B92A000, v4, v5, "%s starting %s", v7, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23189ADD0](v8, -1, -1);
      MEMORY[0x23189ADD0](v7, -1, -1);
    }

    v15 = swift_task_alloc();
    v0[7] = v15;
    *v15 = v0;
    v15[1] = sub_22B93C23C;
    v16 = v0[3];
    v17 = v0[2];

    return sub_22B942FD8(v17, v16);
  }
}

uint64_t sub_22B93C23C(uint64_t a1, char a2)
{
  v4 = *v3;
  *(v4 + 64) = a1;
  *(v4 + 72) = a2;

  if (v2)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_22B93C374, 0, 0);
  }
}

uint64_t sub_22B93C374()
{
  v39 = v0;

  swift_unknownObjectRetain();
  v1 = sub_22BA0FEDC();
  v2 = sub_22BA1046C();

  swift_unknownObjectRelease();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 72);
    v35 = *(v0 + 64);
    v4 = *(v0 + 16);
    v5 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v36 = v34;
    *v5 = 136315906;
    v6 = sub_22B9B580C();
    v8 = sub_22B99153C(v6, v7, &v36);

    *(v5 + 4) = v8;
    *(v5 + 12) = 2080;
    if (v3)
    {
      v9 = 0x7972746572;
    }

    else
    {
      v9 = 1701736292;
    }

    if (v3)
    {
      v10 = 0xE500000000000000;
    }

    else
    {
      v10 = 0xE400000000000000;
    }

    v11 = sub_22B99153C(v9, v10, &v36);

    *(v5 + 14) = v11;
    *(v5 + 22) = 2080;
    v37 = 0x2E636E7973;
    v38 = 0xE500000000000000;
    sub_22B9358B4((v4 + 16), *(v4 + 40));
    v12 = sub_22B9B580C();
    MEMORY[0x231899730](v12);

    MEMORY[0x231899730](46, 0xE100000000000000);
    sub_22BA0FDCC();
    sub_22B944034();
    v13 = sub_22BA10C1C();
    MEMORY[0x231899730](v13);

    v14 = sub_22B99153C(v37, v38, &v36);

    *(v5 + 24) = v14;
    *(v5 + 32) = 2048;
    *(v5 + 34) = v35;
    _os_log_impl(&dword_22B92A000, v1, v2, "%s finished %s %s, result %lld", v5, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x23189ADD0](v34, -1, -1);
    MEMORY[0x23189ADD0](v5, -1, -1);
  }

  if (*(v0 + 72))
  {
    v15 = sub_22BA10C6C();

    if ((v15 & 1) == 0)
    {
      goto LABEL_37;
    }
  }

  else
  {
  }

  swift_unknownObjectRetain();
  v17 = sub_22BA0FEDC();
  v18 = sub_22BA1046C();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = *(v0 + 16);
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v37 = v21;
    *v20 = 136315138;
    v22 = *(*sub_22B9358B4((v19 + 16), *(v19 + 40)) + 17);
    if (v22 <= 4)
    {
      if (v22 <= 1)
      {
        if (v22)
        {
          v23 = 0xE800000000000000;
          v24 = 0x6C6C69666B636142;
        }

        else
        {
          v23 = 0xE700000000000000;
          v24 = 0x6C616974696E49;
        }
      }

      else if (v22 == 2)
      {
        v23 = 0xE800000000000000;
        v24 = 0x6369646F69726550;
      }

      else if (v22 == 3)
      {
        v23 = 0xE600000000000000;
        v24 = 0x70756B636142;
      }

      else
      {
        v23 = 0x800000022BA1BD10;
        v24 = 0xD000000000000017;
      }

      goto LABEL_34;
    }

    if (v22 <= 6)
    {
      if (v22 != 5)
      {
        v23 = 0xED00006465746169;
        v24 = 0x74696E4972657355;
        goto LABEL_34;
      }

      v24 = 0x6C6E4F746E756F43;
    }

    else
    {
      if (v22 != 7)
      {
        if (v22 == 8)
        {
          v23 = 0xEE007372656C6767;
          v24 = 0x6172745374736554;
        }

        else
        {
          v23 = 0xE400000000000000;
          v24 = 1953719636;
        }

        goto LABEL_34;
      }

      v24 = 0x7274656D656C6554;
    }

    v23 = 0xE900000000000079;
LABEL_34:
    v25 = sub_22B99153C(v24, v23, &v37);

    *(v20 + 4) = v25;
    _os_log_impl(&dword_22B92A000, v17, v18, "Reporting phase completed: %s", v20, 0xCu);
    sub_22B936C4C(v21);
    MEMORY[0x23189ADD0](v21, -1, -1);
    MEMORY[0x23189ADD0](v20, -1, -1);
  }

  v26 = *(v0 + 16);
  v27 = sub_22B9358B4((v26 + *(v0 + 40)), *(v26 + *(v0 + 40) + 24));
  v16 = sub_22B9358B4((v26 + 16), *(v26 + 40));
  if (!*(*v16 + 17))
  {
    v16 = [*(*v27 + 16) setBool:1 forKey:*MEMORY[0x277D19A58]];
  }

LABEL_37:
  v28 = *(v0 + 32);
  v29 = *(v28 + 104);
  if (v29)
  {
    v29(v16);
    v28 = *(v0 + 32);
  }

  v30 = *(v0 + 72);
  sub_22BA01E9C(0, 0xE000000000000000, 0, *(v28 + 99));
  v31 = *(v0 + 8);
  v32 = *(v0 + 64);

  return v31(v32, v30 & 1);
}

uint64_t sub_22B93C914(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[54] = a6;
  v7[55] = a7;
  v7[52] = a4;
  v7[53] = a5;
  v7[50] = a2;
  v7[51] = a3;
  v7[49] = a1;
  v9 = sub_22BA0FD8C();
  v7[56] = v9;
  v7[57] = *(v9 - 8);
  v7[58] = swift_task_alloc();
  v7[59] = swift_task_alloc();
  v7[60] = swift_task_alloc();
  v7[61] = swift_task_alloc();
  v7[62] = swift_task_alloc();
  v7[63] = swift_task_alloc();
  v7[64] = swift_task_alloc();
  sub_22B9349C8(&unk_27D8D4A90, &qword_22BA126A0);
  v7[65] = swift_task_alloc();
  v7[66] = swift_task_alloc();
  v7[67] = swift_task_alloc();
  v7[68] = swift_task_alloc();
  v7[69] = swift_task_alloc();
  v7[70] = swift_task_alloc();
  v7[71] = swift_task_alloc();
  v7[72] = swift_task_alloc();
  v7[73] = swift_task_alloc();
  v7[74] = swift_task_alloc();
  v7[75] = swift_task_alloc();
  type metadata accessor for HandleErrorOutcome(0);
  v7[76] = swift_task_alloc();
  v10 = swift_task_alloc();
  v7[77] = v10;
  *v10 = v7;
  v10[1] = sub_22B93CB88;

  return sub_22B97D504(a7);
}

uint64_t sub_22B93CB88()
{

  return MEMORY[0x2822009F8](sub_22B93CCB0, 0, 0);
}

uint64_t sub_22B93CCB0()
{
  v223 = v0;
  v222 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 608);
  v2 = *(v0 + 600);
  v3 = *(v0 + 448);
  v4 = *(v0 + 456);
  v5 = *(v0 + 400);
  v6 = sub_22B9349C8(&qword_27D8D4CC8, &qword_22BA13580);
  *(v0 + 624) = v6;
  v7 = *(v6 - 8);
  v8 = *(v7 + 56);
  *(v0 + 632) = v8;
  *(v0 + 640) = (v7 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v217 = v8;
  v8(v1, 2, 2, v6);
  v9 = *(v4 + 56);
  *(v0 + 648) = v9;
  *(v0 + 656) = (v4 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v213 = v9;
  v9(v2, 1, 1, v3);
  sub_22B937ED8();
  v10 = sub_22BA106FC();
  v11 = *(*sub_22B9358B4((v5 + 16), *(v5 + 40)) + 24);
  swift_unknownObjectRetain();
  v12 = sub_22BA0FB5C();
  *(v0 + 664) = *(v5 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_attemptCount);
  *(v0 + 384) = v10;
  v13 = [v11 responseForError:v12 attempt:? retryInterval:?];

  swift_unknownObjectRelease();
  v14 = *(v0 + 384);
  *(v0 + 672) = v14;
  v210 = v14;

  if (qword_281414D30 != -1)
  {
    swift_once();
  }

  v15 = *(v0 + 440);
  v16 = sub_22BA0FEFC();
  *(v0 + 680) = sub_22B936CA8(v16, qword_28141AD40);
  swift_unknownObjectRetain();
  v17 = v15;
  v18 = sub_22BA0FEDC();
  v19 = sub_22BA1044C();

  swift_unknownObjectRelease();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = *(v0 + 440);
    aBlocka = v6;
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v205 = swift_slowAlloc();
    v220 = v205;
    *v21 = 136315906;
    sub_22B9358B4((v5 + 16), *(v5 + 40));
    v23 = sub_22B9B580C();
    v25 = v13;
    v26 = v5;
    v27 = sub_22B99153C(v23, v24, &v220);

    *(v21 + 4) = v27;
    v5 = v26;
    v13 = v25;
    *(v21 + 12) = 2112;
    v28 = v20;
    v29 = _swift_stdlib_bridgeErrorToNSError();
    *(v21 + 14) = v29;
    *v22 = v29;
    *(v21 + 22) = 2048;
    *(v21 + 24) = v25;
    *(v21 + 32) = 2080;
    sub_22BA0FDCC();
    sub_22B944034();
    v30 = sub_22BA10C1C();
    v32 = sub_22B99153C(v30, v31, &v220);

    *(v21 + 34) = v32;
    _os_log_impl(&dword_22B92A000, v18, v19, "syncJob %s failed with %@, response %ld %s", v21, 0x2Au);
    sub_22B936BEC(v22, &qword_27D8D4CD0, qword_22BA14360);
    MEMORY[0x23189ADD0](v22, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x23189ADD0](v205, -1, -1);
    v33 = v21;
    v6 = aBlocka;
    MEMORY[0x23189ADD0](v33, -1, -1);
  }

  if (v13 > 3)
  {
    if (v13 <= 257)
    {
      switch(v13)
      {
        case 4:
          v71 = *(v0 + 400);
          v72 = *(v71 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_activity + 24);
          v73 = *(v71 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_activity + 32);
          sub_22B9358B4((v71 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_activity), v72);
          (*(v73 + 40))(v72, v73);
          sub_22B9358B4((v71 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState), *(v71 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState + 24));
          LOBYTE(v220) = *(*sub_22B9358B4((v5 + 16), *(v5 + 40)) + 17);
          sub_22BA099B0(&v220);
          break;
        case 5:
          v74 = *(v0 + 400);
          v75 = *(v74 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_activity + 24);
          v76 = *(v74 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_activity + 32);
          sub_22B9358B4((v74 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_activity), v75);
          (*(v76 + 40))(v75, v76);
          sub_22B9358B4((v74 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState), *(v74 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState + 24));
          LOBYTE(v220) = *(*sub_22B9358B4((v5 + 16), *(v5 + 40)) + 17);
          sub_22BA099C4(&v220);
          break;
        case 6:
          v34 = *(v0 + 400);
          v35 = *(v34 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_activity + 24);
          v36 = *(v34 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_activity + 32);
          sub_22B9358B4((v34 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_activity), v35);
          (*(v36 + 40))(v35, v36);
          v37 = *(*sub_22B9358B4((v34 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState), *(v34 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState + 24)) + 56);
          if (v37)
          {
            [v37 deleteAllCloudKitData];
          }

          break;
        default:
          goto LABEL_34;
      }

LABEL_38:
      v69 = 0;
      goto LABEL_47;
    }

    if ((v13 - 258) <= 1)
    {
      goto LABEL_23;
    }

LABEL_34:
    v77 = v5;
    swift_unknownObjectRetain();
    v78 = sub_22BA0FEDC();
    v79 = sub_22BA1044C();
    swift_unknownObjectRelease();
    v200 = v5;
    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      *v80 = 134218242;
      *(v80 + 4) = v13;
      *(v80 + 12) = 2080;
      v219 = v81;
      v220 = 0x2E636E7973;
      v221 = 0xE500000000000000;
      sub_22B9358B4((v77 + 16), *(v77 + 40));
      v82 = sub_22B9B580C();
      MEMORY[0x231899730](v82);

      MEMORY[0x231899730](46, 0xE100000000000000);
      sub_22BA0FDCC();
      sub_22B944034();
      v83 = sub_22BA10C1C();
      MEMORY[0x231899730](v83);

      v84 = sub_22B99153C(v220, v221, &v219);

      *(v80 + 14) = v84;
      _os_log_impl(&dword_22B92A000, v78, v79, "Scheduler got unexpected error response %ld for %s", v80, 0x16u);
      sub_22B936C4C(v81);
      MEMORY[0x23189ADD0](v81, -1, -1);
      MEMORY[0x23189ADD0](v80, -1, -1);
    }

    v85 = *(v0 + 568);
    v86 = *(v0 + 560);
    v87 = *(v0 + 448);
    v88 = *(v0 + 456);
    v89 = (*(v0 + 400) + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_activity);
    v90 = v89[3];
    v91 = v89[4];
    sub_22B9358B4(v89, v90);
    (*(v91 + 40))(v90, v91);
    v92 = sub_22B9358B4((v200 + 16), *(v200 + 40));
    sub_22B9358B4((*v92 + 32), *(*v92 + 56));
    sub_22B975314(v85);
    sub_22B935A74(v85, v86);
    if ((*(v88 + 48))(v86, 1, v87) == 1)
    {
      sub_22B936BEC(*(v0 + 560), &unk_27D8D4A90, &qword_22BA126A0);
      goto LABEL_38;
    }

    v99 = *(v0 + 600);
    v100 = *(v0 + 560);
    v101 = *(v0 + 504);
    v102 = *(v0 + 448);
    v103 = *(v0 + 456);
    sub_22B936BEC(v99, &unk_27D8D4A90, &qword_22BA126A0);
    v104 = *(v103 + 32);
    v104(v101, v100, v102);
    v104(v99, v101, v102);
    v69 = 1;
    v97 = v99;
    v98 = v102;
    goto LABEL_41;
  }

  if (v13 >= 2)
  {
    if (v13 == 2)
    {
      v56 = *(v0 + 592);
      v57 = *(v0 + 584);
      v58 = *(v0 + 456);
      v218 = *(v0 + 448);
      v59 = (*(v0 + 400) + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_activity);
      v60 = v59[3];
      v61 = v59[4];
      sub_22B9358B4(v59, v60);
      (*(v61 + 40))(v60, v61);
      v62 = sub_22B9358B4((v5 + 16), *(v5 + 40));
      sub_22B9358B4((*v62 + 32), *(*v62 + 56));
      sub_22B975314(v56);
      sub_22B94498C(v56, v57);
      v63 = (*(v58 + 48))(v57, 1, v218);
      v64 = *(v0 + 600);
      v65 = *(v0 + 592);
      v66 = *(v0 + 584);
      if (v63 != 1)
      {
        v93 = *(v0 + 512);
        v94 = *(v0 + 448);
        v95 = *(v0 + 456);
        sub_22B936BEC(*(v0 + 592), &unk_27D8D4A90, &qword_22BA126A0);
        sub_22B936BEC(v64, &unk_27D8D4A90, &qword_22BA126A0);
        v96 = *(v95 + 32);
        v96(v93, v66, v94);
        v96(v64, v93, v94);
        v69 = 1;
        v97 = v64;
        v98 = v94;
LABEL_41:
        v213(v97, 0, 1, v98);
        goto LABEL_47;
      }

      v67 = *(v0 + 576);
      v68 = *(v0 + 448);
      sub_22B936BEC(*(v0 + 584), &unk_27D8D4A90, &qword_22BA126A0);
      [v210 doubleValue];
      sub_22BA0FD2C();
      sub_22B936BEC(v65, &unk_27D8D4A90, &qword_22BA126A0);
      sub_22B936BEC(v64, &unk_27D8D4A90, &qword_22BA126A0);
      v69 = 1;
      v213(v67, 0, 1, v68);
      v70 = v67;
    }

    else
    {
      if (v13 != 3)
      {
        goto LABEL_34;
      }

      v38 = (*(v0 + 400) + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_activity);
      v39 = v38[3];
      v40 = v38[4];
      sub_22B9358B4(v38, v39);
      if ((*(v40 + 8))(v39, v40))
      {
        swift_unknownObjectRelease();
        v41 = v38[3];
        v42 = v38[4];
        sub_22B9358B4(v38, v41);
        if ((*(v42 + 32))(v41, v42))
        {
          v43 = *(v0 + 608);
          sub_22B9440D8(v43);
          v217(v43, 1, 2, v6);
          v44 = *(*sub_22B9358B4((v5 + 16), *(v5 + 40)) + 17) - 1;
          if (v44 > 5 || ((0x2Fu >> v44) & 1) == 0)
          {
            goto LABEL_38;
          }

          v45 = swift_task_alloc();
          *(v0 + 696) = v45;
          *v45 = v0;
          v45[1] = sub_22B93EA78;
          v47 = *(v0 + 400);
          v46 = *(v0 + 408);
          v229 = 0x575356555453uLL >> (8 * (v44 & 0x1F));
          v228 = 454;
          v227 = 2;
          v226 = 53;
          v225 = "handleJobError(context:persistence:completion:error:)";

          return sub_22B9E81AC(v47, v46, 0, 0, 1, "/Library/Caches/com.apple.xbs/Sources/MessagesCore/IMCore/MessagesCloudSync/Protocols/SyncJobScheduler.swift", 108, 2);
        }
      }

      else
      {
        v105 = sub_22BA0FEDC();
        v106 = sub_22BA1044C();
        if (os_log_type_enabled(v105, v106))
        {
          v107 = swift_slowAlloc();
          *v107 = 0;
          _os_log_impl(&dword_22B92A000, v105, v106, "No activity to defer for sync, rescheduling", v107, 2u);
          MEMORY[0x23189ADD0](v107, -1, -1);
        }
      }

      v64 = *(v0 + 600);
      v108 = *(v0 + 576);
      v109 = *(v0 + 448);
      [v210 doubleValue];
      sub_22BA0FD2C();
      sub_22B936BEC(v64, &unk_27D8D4A90, &qword_22BA126A0);
      v69 = 1;
      v213(v108, 0, 1, v109);
      v70 = v108;
    }

    sub_22B935A74(v70, v64);
LABEL_47:
    v110 = (*(v0 + 400) + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState);
    sub_22B9358B4(v110, v110[3]);
    v111 = sub_22BA09CBC();
    if (v111)
    {
      [v111 setSyncCancelled_];
    }

    v112 = *(v0 + 600);
    if (!v69)
    {
      sub_22B936BEC(v112, &unk_27D8D4A90, &qword_22BA126A0);
LABEL_72:
      v190 = *(v0 + 672);
      sub_22B944134(*(v0 + 608), *(v0 + 392));

      v191 = *(v0 + 8);

      return v191();
    }

    v113 = *(v0 + 552);
    v114 = *(v0 + 448);
    v115 = *(v0 + 456);
    sub_22B94498C(v112, v113);
    v116 = *(v115 + 48);
    if (v116(v113, 1, v114) == 1)
    {
      v117 = *(v0 + 440);
      sub_22B936BEC(*(v0 + 552), &unk_27D8D4A90, &qword_22BA126A0);
      v118 = v117;
      v119 = sub_22BA0FEDC();
      v120 = sub_22BA1044C();

      if (os_log_type_enabled(v119, v120))
      {
        v121 = *(v0 + 440);
        v122 = swift_slowAlloc();
        v123 = swift_slowAlloc();
        *v122 = 138412290;
        v124 = v121;
        v125 = _swift_stdlib_bridgeErrorToNSError();
        *(v122 + 4) = v125;
        *v123 = v125;
        _os_log_impl(&dword_22B92A000, v119, v120, "No retryAfter date for reschedule from %@, marking done and waiting for next sync", v122, 0xCu);
        sub_22B936BEC(v123, &qword_27D8D4CD0, qword_22BA14360);
        MEMORY[0x23189ADD0](v123, -1, -1);
        MEMORY[0x23189ADD0](v122, -1, -1);
      }

      v126 = *(v0 + 632);
      v127 = *(v0 + 624);
      v128 = *(v0 + 608);
      v129 = *(v0 + 600);
      v130 = *(v0 + 400);

      v131 = (v130 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_activity);
      v132 = *(v130 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_activity + 24);
      v133 = v131[4];
      sub_22B9358B4(v131, v132);
      (*(v133 + 40))(v132, v133);
      sub_22B936BEC(v129, &unk_27D8D4A90, &qword_22BA126A0);
      sub_22B9440D8(v128);
      v126(v128, 2, 2, v127);
      goto LABEL_72;
    }

    v134 = *(v0 + 664);
    v135 = *(v0 + 400);
    v216 = *(*(v0 + 456) + 32);
    v216(*(v0 + 496), *(v0 + 552), *(v0 + 448));
    sub_22B935B38(v135 + 16, v0 + 64);
    sub_22B935B38(v110, v0 + 104);
    sub_22B935B38(v135 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudDatabase, v0 + 144);
    v212 = v134 + 1;
    if (__OFADD__(v134, 1))
    {
      __break(1u);
    }

    else
    {
      v211 = *(v135 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_delegate);
      v136 = *(v135 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_notifiers);
      v137 = *(v0 + 648);
      v138 = *(v0 + 544);
      v139 = *(v0 + 536);
      v140 = *(v0 + 448);
      aBlock = *(*(v0 + 456) + 16);
      aBlock(v138, *(v0 + 496), v140);
      v137(v138, 0, 1, v140);
      v141 = *(*sub_22B9358B4((v0 + 64), *(v0 + 88)) + 80);
      sub_22B94498C(v138, v139);
      v142 = v116(v139, 1, v140);
      v143 = *(v0 + 536);
      v214 = v141;
      v209 = v136;
      if (v142 == 1)
      {

        swift_unknownObjectRetain();
        sub_22B936BEC(v143, &unk_27D8D4A90, &qword_22BA126A0);
LABEL_68:
        sub_22B935B38(v0 + 64, v0 + 184);
        v174 = sub_22BA0FEDC();
        v175 = sub_22BA1046C();
        if (os_log_type_enabled(v174, v175))
        {
          v176 = swift_slowAlloc();
          v177 = swift_slowAlloc();
          v220 = v177;
          *v176 = 136315138;
          sub_22B9358B4((v0 + 184), *(v0 + 208));
          v178 = sub_22B9B580C();
          v180 = v179;
          sub_22B936C4C((v0 + 184));
          v181 = sub_22B99153C(v178, v180, &v220);

          *(v176 + 4) = v181;
          _os_log_impl(&dword_22B92A000, v174, v175, "Registering xpc_activity: %s", v176, 0xCu);
          sub_22B936C4C(v177);
          MEMORY[0x23189ADD0](v177, -1, -1);
          MEMORY[0x23189ADD0](v176, -1, -1);
        }

        else
        {

          sub_22B936C4C((v0 + 184));
        }

        v204 = *(v0 + 632);
        v194 = *(v0 + 600);
        v195 = *(v0 + 608);
        v192 = *(v0 + 544);
        bufa = *(v0 + 496);
        v202 = *(v0 + 624);
        v197 = *(v0 + 448);
        v183 = *(v0 + 424);
        v182 = *(v0 + 432);
        v185 = *(v0 + 408);
        v184 = *(v0 + 416);
        sub_22B9358B4((v0 + 64), *(v0 + 88));
        v220 = 0;
        v221 = 0xE000000000000000;
        sub_22BA108FC();

        v220 = 0xD000000000000018;
        v221 = 0x800000022BA1C340;
        v186 = sub_22B9B580C();
        MEMORY[0x231899730](v186);

        v187 = swift_allocObject();
        *(v187 + 24) = v185;
        swift_unknownObjectWeakInit();
        sub_22B935B38(v0 + 64, v0 + 224);
        sub_22B935B38(v0 + 104, v0 + 264);
        sub_22B935B38(v0 + 144, v0 + 304);
        sub_22B935B38(v184, v0 + 344);
        v188 = swift_allocObject();
        sub_22B92DFEC((v0 + 224), (v188 + 2));
        v188[7] = v214;
        v188[8] = v187;
        sub_22B92DFEC((v0 + 264), (v188 + 9));
        sub_22B92DFEC((v0 + 304), (v188 + 14));
        v188[19] = v211;
        v188[20] = v209;
        v188[21] = v212;
        sub_22B92DFEC((v0 + 344), (v188 + 22));
        v188[27] = v183;
        v188[28] = v182;
        *(v0 + 48) = sub_22B9449FC;
        *(v0 + 56) = v188;
        *(v0 + 16) = MEMORY[0x277D85DD0];
        *(v0 + 24) = 1107296256;
        *(v0 + 32) = sub_22B9B57AC;
        *(v0 + 40) = &unk_283F52AD0;
        v189 = _Block_copy((v0 + 16));
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        sub_22B930C20(v183, v182);

        sub_22BA1006C();

        IMRegisterSADAwareXPCActivity();
        _Block_release(v189);
        swift_unknownObjectRelease();
        sub_22B936BEC(v192, &unk_27D8D4A90, &qword_22BA126A0);
        sub_22B936C4C((v0 + 144));
        sub_22B936C4C((v0 + 104));
        sub_22B936BEC(v194, &unk_27D8D4A90, &qword_22BA126A0);
        sub_22B9440D8(v195);

        sub_22B936C4C((v0 + 64));
        v216(v195, bufa, v197);
        v204(v195, 0, 2, v202);
        goto LABEL_72;
      }

      v216(*(v0 + 488), v143, *(v0 + 448));

      swift_unknownObjectRetain();
      sub_22BA0FD3C();
      v145 = ceil(v144);
      if ((*&v145 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        if (v145 > -9.22337204e18)
        {
          if (v145 < 9.22337204e18)
          {
            v146 = v145;
            aBlock(*(v0 + 480), *(v0 + 488), *(v0 + 448));
            v147 = sub_22BA0FEDC();
            v148 = sub_22BA1046C();
            if (os_log_type_enabled(v147, v148))
            {
              v201 = v148;
              v203 = v147;
              v206 = v146;
              v193 = *(v0 + 648);
              v149 = *(v0 + 528);
              v150 = *(v0 + 520);
              v151 = *(v0 + 480);
              v152 = *(v0 + 448);
              v153 = swift_slowAlloc();
              v196 = swift_slowAlloc();
              v220 = v196;
              buf = v153;
              *v153 = 136315394;
              aBlock(v149, v151, v152);
              v193(v149, 0, 1, v152);
              sub_22B94498C(v149, v150);
              v154 = v116(v150, 1, v152);
              v155 = *(v0 + 528);
              v156 = *(v0 + 480);
              if (v154 == 1)
              {
                v158 = *(v0 + 448);
                v157 = *(v0 + 456);
                sub_22B936BEC(*(v0 + 520), &unk_27D8D4A90, &qword_22BA126A0);
                sub_22B936BEC(v155, &unk_27D8D4A90, &qword_22BA126A0);
                v159 = *(v157 + 8);
                v159(v156, v158);
                v160 = 0xE300000000000000;
                v161 = 7104878;
              }

              else
              {
                v165 = *(v0 + 464);
                v166 = *(v0 + 472);
                v167 = *(v0 + 448);
                v168 = *(v0 + 456);
                v216(v166, *(v0 + 520), v167);
                aBlock(v165, v166, v167);
                v169 = sub_22BA1005C();
                v160 = v170;
                v159 = *(v168 + 8);
                v159(v166, v167);
                sub_22B936BEC(v155, &unk_27D8D4A90, &qword_22BA126A0);
                v159(v156, v167);
                v161 = v169;
              }

              v171 = sub_22B99153C(v161, v160, &v220);

              *(buf + 4) = v171;
              *(buf + 6) = 2048;
              v146 = v206;
              *(buf + 14) = v206;
              _os_log_impl(&dword_22B92A000, v203, v201, "Overriding xpc_activity XPC_ACTIVITY_EARLIEST_START_DATE with %s, delay: %lld", buf, 0x16u);
              sub_22B936C4C(v196);
              MEMORY[0x23189ADD0](v196, -1, -1);
              MEMORY[0x23189ADD0](buf, -1, -1);

              v141 = v214;
            }

            else
            {
              v162 = *(v0 + 480);
              v164 = *(v0 + 448);
              v163 = *(v0 + 456);

              v159 = *(v163 + 8);
              v159(v162, v164);
            }

            v172 = *(v0 + 488);
            v173 = *(v0 + 448);
            xpc_dictionary_set_int64(v141, *MEMORY[0x277D86250], v146);
            v159(v172, v173);
            goto LABEL_68;
          }

LABEL_78:
          __break(1u);
        }

LABEL_77:
        __break(1u);
        goto LABEL_78;
      }
    }

    __break(1u);
    goto LABEL_77;
  }

LABEL_23:
  v49 = *(v0 + 608);
  v50 = *(v0 + 400);
  v51 = *(v50 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_activity + 24);
  v52 = *(v50 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_activity + 32);
  sub_22B9358B4((v50 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_activity), v51);
  (*(v52 + 40))(v51, v52);
  sub_22B9440D8(v49);
  v217(v49, 2, 2, v6);
  sub_22B9358B4((v50 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState), *(v50 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState + 24));
  if (sub_22BA08808() & 1) == 0 && (sub_22B92DA70(1, 0))
  {
    goto LABEL_38;
  }

  if (qword_281416778 != -1)
  {
    swift_once();
  }

  v53 = *(&xmmword_28141AEB0 + 1);
  ObjectType = swift_getObjectType();
  v215 = (*(v53 + 32) + **(v53 + 32));
  v55 = swift_task_alloc();
  *(v0 + 688) = v55;
  *v55 = v0;
  v55[1] = sub_22B93E754;

  return v215(ObjectType, v53);
}

uint64_t sub_22B93E754()
{

  return MEMORY[0x2822009F8](sub_22B93E87C, 0, 0);
}

uint64_t sub_22B93E87C()
{
  sub_22B9358B4((v0[50] + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState), *(v0[50] + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState + 24));
  v1 = sub_22BA09CBC();
  if (v1)
  {
    [v1 setSyncCancelled_];
  }

  sub_22B936BEC(v0[75], &unk_27D8D4A90, &qword_22BA126A0);
  v2 = v0[84];
  sub_22B944134(v0[76], v0[49]);

  v3 = v0[1];

  return v3();
}

uint64_t sub_22B93EA78()
{

  return MEMORY[0x2822009F8](sub_22B945AD4, 0, 0);
}

void sub_22B93EBA0(const char *a1, SEL *a2, uint64_t a3, ...)
{
  v4 = a3;
  v27 = *MEMORY[0x277D85DE8];
  if (!*(*sub_22B9358B4((v3 + 16), *(v3 + 40)) + 17))
  {
    sub_22B9358B4((v3 + 16), *(v3 + 40));
    sub_22BA108FC();

    v25 = 0xD000000000000018;
    v26 = 0x800000022BA1C340;
    v7 = sub_22B9B580C();
    MEMORY[0x231899730](v7);

    if (qword_281414D30 != -1)
    {
      swift_once();
    }

    v8 = sub_22BA0FEFC();
    sub_22B936CA8(v8, qword_28141AD40);

    v9 = sub_22BA0FEDC();
    v10 = sub_22BA1046C();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v25 = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_22B99153C(0xD000000000000018, 0x800000022BA1C340, &v25);
      _os_log_impl(&dword_22B92A000, v9, v10, a1, v11, 0xCu);
      sub_22B936C4C(v12);
      MEMORY[0x23189ADD0](v12, -1, -1);
      MEMORY[0x23189ADD0](v11, -1, -1);
    }

    v13 = [objc_opt_self() sharedScheduler];
    v14 = sub_22BA0FFCC();

    sub_22B9349C8(&qword_27D8D4CD8, qword_22BA135A0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22BA13420;
    v25 = 0x746E6567616D69;
    v26 = 0xE700000000000000;
    sub_22BA1086C();
    v25 = 0xD000000000000013;
    v26 = 0x800000022BA1C360;
    sub_22BA1086C();
    v25 = 0x4D53656C69626F4DLL;
    v26 = 0xE900000000000053;
    sub_22BA1086C();
    sub_22B957874(inited);
    swift_setDeallocating();
    swift_arrayDestroy();
    v16 = sub_22BA1037C();

    v25 = 0;
    [v13 *a2];

    v17 = v25;
    if (v25)
    {
      swift_willThrow();
      v18 = v17;
      v19 = sub_22BA0FEDC();
      v20 = sub_22BA1044C();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        *v21 = 138412290;
        v23 = v18;
        v24 = _swift_stdlib_bridgeErrorToNSError();
        *(v21 + 4) = v24;
        *v22 = v24;
        _os_log_impl(&dword_22B92A000, v19, v20, "Failed to report start to BackgroundSystemTasks: %@", v21, 0xCu);
        sub_22B936BEC(v22, &qword_27D8D4CD0, qword_22BA14360);
        MEMORY[0x23189ADD0](v22, -1, -1);
        MEMORY[0x23189ADD0](v21, -1, -1);
      }

      sub_22B975FD8(v4, v18, 0, 0);
    }
  }
}

void sub_22B93F014(_xpc_activity_s *a1, NSObject *a2, void *a3, uint64_t a4, unint64_t a5, void *a6, void *a7, void (*a8)(char *, uint64_t), unint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v182 = a4;
  v183 = a8;
  v187 = a7;
  v179 = a5;
  v180 = a6;
  v185 = a3;
  v193 = a2;
  v178 = a12;
  v177 = a11;
  v186 = a10;
  v181 = a9;
  v13 = sub_22B9349C8(&unk_27D8D5780, &qword_22BA13DB0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v158 - v14;
  v16 = sub_22BA0FD8C();
  v192 = *(v16 - 8);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = v158 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v158 - v20;
  v22 = sub_22BA0FDCC();
  v23 = *(v22 - 8);
  v24 = MEMORY[0x28223BE20](v22);
  v26 = v158 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v28 = v158 - v27;
  v191 = a1;
  state = xpc_activity_get_state(a1);
  if (state != 2)
  {
    if (state)
    {
      if (qword_281414D30 != -1)
      {
        swift_once();
      }

      v54 = sub_22BA0FEFC();
      sub_22B936CA8(v54, qword_28141AD40);
      v193 = sub_22BA0FEDC();
      v55 = sub_22BA1045C();
      if (os_log_type_enabled(v193, v55))
      {
        v56 = swift_slowAlloc();
        *v56 = 0;
        _os_log_impl(&dword_22B92A000, v193, v55, "Incorrect state for xpc_activity_register", v56, 2u);
        MEMORY[0x23189ADD0](v56, -1, -1);
      }

      v57 = v193;
    }

    else
    {
      if (qword_281414D30 != -1)
      {
        swift_once();
      }

      v30 = sub_22BA0FEFC();
      sub_22B936CA8(v30, qword_28141AD40);
      sub_22B935B38(v193, &v224);
      v31 = sub_22BA0FEDC();
      v32 = sub_22BA1046C();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        *&v222 = v34;
        *v33 = 136315138;
        sub_22B9358B4(&v224, v225);
        v35 = sub_22B9B580C();
        v37 = v36;
        sub_22B936C4C(&v224);
        v38 = sub_22B99153C(v35, v37, &v222);

        *(v33 + 4) = v38;
        _os_log_impl(&dword_22B92A000, v31, v32, "xpc_activity state check-in for %s", v33, 0xCu);
        sub_22B936C4C(v34);
        MEMORY[0x23189ADD0](v34, -1, -1);
        MEMORY[0x23189ADD0](v33, -1, -1);
      }

      else
      {

        sub_22B936C4C(&v224);
      }

      xpc_activity_set_criteria(v191, v185);
    }

    return;
  }

  v190 = v23;
  v184 = v26;
  v185 = v19;
  v173 = v15;
  v176 = v28;
  v188 = v16;
  if (qword_281414D30 != -1)
  {
    swift_once();
  }

  v39 = sub_22BA0FEFC();
  v40 = sub_22B936CA8(v39, qword_28141AD40);
  sub_22B935B38(v193, &v224);
  v158[1] = v40;
  v41 = sub_22BA0FEDC();
  v42 = sub_22BA1046C();
  v43 = os_log_type_enabled(v41, v42);
  v189 = v22;
  v174 = v21;
  if (v43)
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    *&v222 = v45;
    *v44 = 136315138;
    sub_22B9358B4(&v224, v225);
    v46 = sub_22B9B580C();
    v48 = v47;
    sub_22B936C4C(&v224);
    v49 = sub_22B99153C(v46, v48, &v222);

    *(v44 + 4) = v49;
    _os_log_impl(&dword_22B92A000, v41, v42, "xpc_activity state run for %s", v44, 0xCu);
    sub_22B936C4C(v45);
    MEMORY[0x23189ADD0](v45, -1, -1);
    v50 = v44;
    v51 = v192;
    v22 = v189;
    v52 = v190;
    v53 = v174;
    MEMORY[0x23189ADD0](v50, -1, -1);
  }

  else
  {
    v53 = v21;

    sub_22B936C4C(&v224);
    v52 = v190;
    v51 = v192;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v59 = v188;
  v60 = v176;
  if (Strong)
  {
    v61 = Strong;
    (*(v52 + 16))(v176, Strong + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_identifier, v22);
    v62 = v51;
    v63 = *(v51 + 16);
    v64 = v59;
    v63(v53, v61 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_startDate, v59);
    swift_unknownObjectRelease();
  }

  else
  {
    v62 = v51;
    v64 = v188;
    sub_22BA0FDBC();
    sub_22BA0FD7C();
  }

  v65 = v186;
  v170 = type metadata accessor for XPCActivity();
  v66 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  if (qword_281416778 != -1)
  {
    swift_once();
  }

  v175 = xmmword_28141AEB0;
  sub_22B935B38(v193, &v224);
  v67 = *(v52 + 16);
  v167 = v52 + 16;
  v168 = v67;
  v67(v184, v60, v22);
  v68 = *(v62 + 16);
  v165 = v62 + 16;
  v166 = v68;
  v68(v185, v53, v64);
  sub_22B935B38(v179, &v222);
  sub_22B935B38(v180, v221);
  sub_22B935B38(v65, v218);
  sub_22B943D3C(v218, v219);
  v216 = &type metadata for DatabaseRecordPersistence;
  v217 = &off_283F55858;
  v180 = type metadata accessor for CountStore();
  v69 = swift_allocObject();
  sub_22B943D3C(v215, &type metadata for DatabaseRecordPersistence);
  v213 = &type metadata for DatabaseRecordPersistence;
  v214 = &off_283F55858;

  swift_unknownObjectRetain();
  swift_defaultActor_initialize();
  sub_22B92DFEC(&v212, v69 + 112);
  sub_22B936C4C(v215);
  sub_22B936C4C(v218);
  v179 = sub_22B9E43A0(1, 1, 0);
  v70 = [objc_opt_self() defaultManager];
  v160 = v70;
  v71 = type metadata accessor for SyncTelemetryReporter();
  v182 = v66;
  v72 = v71;
  v159 = v71;
  v73 = [objc_allocWithZone(v71) init];
  v161 = v73;
  v74 = sub_22B943D3C(&v224, v225);
  v172 = v158;
  MEMORY[0x28223BE20](v74);
  v76 = (v158 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v77 + 16))(v76);
  v78 = sub_22B943D3C(&v222, v223);
  v171 = v158;
  MEMORY[0x28223BE20](v78);
  v80 = (v158 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v81 + 16))(v80);
  v82 = *v76;
  v83 = *v80;
  v84 = type metadata accessor for SyncJob();
  v220 = &off_283F54680;
  v219 = v84;
  v218[0] = v82;
  v217 = &off_283F52B80;
  v216 = v170;
  v215[0] = v66;
  v85 = type metadata accessor for CloudState();
  v214 = &off_283F589F0;
  v213 = v85;
  *&v212 = v83;
  v211 = &off_283F53B48;
  v210 = &type metadata for FileManagerProvider;
  v209[0] = v70;
  v208 = &off_283F57D70;
  v207 = v72;
  v206[0] = v73;
  v205 = &off_283F57A60;
  v204 = v180;
  v203[0] = v69;
  type metadata accessor for SyncContext(0);
  v86 = swift_allocObject();
  v87 = sub_22B943D3C(v218, v84);
  v170 = v158;
  MEMORY[0x28223BE20](v87);
  v89 = (v158 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v90 + 16))(v89);
  v91 = sub_22B943D3C(&v212, v213);
  v169 = v158;
  MEMORY[0x28223BE20](v91);
  v93 = (v158 - ((v92 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v94 + 16))(v93);
  v95 = sub_22B943D3C(v209, v210);
  v164 = v158;
  MEMORY[0x28223BE20](v95);
  v97 = (v158 - ((v96 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v98 + 16))(v97);
  v99 = sub_22B943D3C(v206, v207);
  v163 = v158;
  MEMORY[0x28223BE20](v99);
  v101 = (v158 - ((v100 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v102 + 16))(v101);
  v103 = sub_22B943D3C(v203, v204);
  v162 = v158;
  MEMORY[0x28223BE20](v103);
  v105 = (v158 - ((v104 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v106 + 16))(v105);
  v107 = *v89;
  v108 = *v93;
  v109 = *v97;
  v110 = *v101;
  v111 = *v105;
  v202 = &off_283F54680;
  v201 = v84;
  v200[0] = v107;
  v199[3] = v85;
  v199[4] = &off_283F589F0;
  v199[0] = v108;
  v198[4] = &off_283F53B48;
  v198[3] = &type metadata for FileManagerProvider;
  v198[0] = v109;
  v197[3] = v159;
  v197[4] = &off_283F57D70;
  v197[0] = v110;
  v195 = v180;
  v196 = &off_283F57A60;
  *&v194 = v111;
  sub_22B935B38(v200, v86 + 16);
  v168(v86 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_identifier, v184, v189);
  v166(v86 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_startDate, v185, v188);
  sub_22B935B38(v215, v86 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_activity);
  sub_22B935B38(v199, v86 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState);
  sub_22B935B38(v221, v86 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudDatabase);
  *(v86 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_syncDatabase) = v175;
  *(v86 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_delegate) = v187;
  *(v86 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_notifiers) = v183;
  *(v86 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_attemptCount) = v181;
  type metadata accessor for OSActivity();
  v112 = swift_allocObject();
  *(v112 + 24) = 0;
  *(v112 + 32) = 0;
  v113 = qword_2814160E0;

  v180 = v160;
  *&v175 = v161;
  swift_unknownObjectRetain();

  if (v113 != -1)
  {
    swift_once();
  }

  v114 = v179;
  v181 = v179 >> 24;
  *(v112 + 16) = _os_activity_create(&dword_22B92A000, "messages-cloud-sync", qword_2814160F0, OS_ACTIVITY_FLAG_DEFAULT);
  swift_beginAccess();
  v115 = swift_unknownObjectRetain();
  os_activity_scope_enter(v115, (v112 + 24));
  swift_endAccess();
  swift_unknownObjectRelease();
  *(v86 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_osActivity) = v112;
  sub_22B935B38(v198, v86 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_fileProvider);
  sub_22B935B38(v197, v86 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_telemetryService);
  LODWORD(v168) = *(*sub_22B9358B4(v200, v201) + 17);
  type metadata accessor for SyncStatsCollector();
  v116 = swift_allocObject();
  swift_defaultActor_initialize();
  v117 = sub_22B9BB998(&unk_283F509E8);
  v118 = sub_22B9BB998(&unk_283F50A68);
  v119 = sub_22B9BB998(&unk_283F50AE8);
  v120 = sub_22B9BB998(&unk_283F50B68);
  v121 = sub_22B9BB998(&unk_283F50BE8);

  sub_22B936C4C(v221);
  v122 = *(v192 + 8);
  v123 = v188;
  v192 += 8;
  v183 = v122;
  v122(v185, v188);
  v124 = *(v190 + 8);
  v190 += 8;
  v185 = v124;
  (v124)(v184, v189);
  sub_22B936C4C(v215);
  sub_22B936C4C(v197);
  sub_22B936C4C(v198);
  sub_22B936C4C(v199);
  *(v116 + 112) = v168;
  *(v116 + 120) = 0;
  *(v116 + 128) = 0;
  *(v116 + 136) = 0;
  *(v116 + 144) = v117;
  *(v116 + 152) = v118;
  v125 = MEMORY[0x277D84F90];
  *(v116 + 160) = v119;
  *(v116 + 168) = v120;
  *(v116 + 176) = v121;
  *(v116 + 184) = v125;
  *(v116 + 192) = v125;
  *(v86 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_statsCollector) = v116;
  sub_22B92DFEC(&v194, v86 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_countStore);
  v126 = (v86 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_devicePolicy);
  *v126 = v114 & 1;
  v126[1] = BYTE1(v114) & 1;
  v126[2] = BYTE2(v114) & 1;
  v126[3] = v181;
  v126[4] = BYTE4(v114) & 1;
  sub_22B936C4C(v200);
  sub_22B936C4C(v203);
  sub_22B936C4C(v206);
  sub_22B936C4C(v209);
  sub_22B936C4C(&v212);
  sub_22B936C4C(v218);
  sub_22B936C4C(&v222);
  sub_22B936C4C(&v224);
  sub_22B939184(0x6974617669746341, 0xED00002E2E2E676ELL);
  type metadata accessor for SyncCoordinator();

  sub_22B9B51D4(v127, &off_283F56AF0);
  v128 = v123;
  v129 = v189;

  v130 = (v86 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState);
  v131 = sub_22B9358B4((v86 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState), *(v86 + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState + 24));
  v132 = *(*v131 + 56);
  v133 = v173;
  if (v132)
  {
    [*(*v131 + 56) startChanges];
    v134 = *sub_22B9358B4(v193, v193[3].isa);

    v128 = v188;
    sub_22B92E064(v135, v134);

    [v132 commitChanges];
    v136 = v187;
    if (!v187)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  v156 = *sub_22B9358B4(v193, v193[3].isa);

  sub_22B92E064(v157, v156);

  v136 = v187;
  if (v187)
  {
LABEL_30:
    *&v224 = 0x2E636E7973;
    *(&v224 + 1) = 0xE500000000000000;
    sub_22B9358B4((v86 + 16), *(v86 + 40));
    v137 = sub_22B9B580C();
    MEMORY[0x231899730](v137);

    MEMORY[0x231899730](46, 0xE100000000000000);
    sub_22B944034();
    v138 = sub_22BA10C1C();
    MEMORY[0x231899730](v138);

    v139 = sub_22BA0FFCC();

    v128 = v188;
    v140 = sub_22BA0FDAC();
    [v136 syncCoordinatorStartedSyncWithName:v139 identifier:v140];
  }

LABEL_31:
  sub_22B939184(0x69756E69746E6F43, 0xEF636E795320676ELL);
  if (xpc_activity_set_state(v191, 4))
  {
    v141 = sub_22BA1030C();
    (*(*(v141 - 8) + 56))(v133, 1, 1, v141);
    sub_22B935B38(v193, &v224);
    sub_22B935B38(v186, &v222);
    v142 = swift_allocObject();
    v142[2] = 0;
    v142[3] = 0;
    v142[4] = v86;
    sub_22B92DFEC(&v224, (v142 + 5));
    sub_22B92DFEC(&v222, (v142 + 10));
    v144 = v177;
    v143 = v178;
    v142[15] = v177;
    v142[16] = v143;

    sub_22B930C20(v144, v143);
    sub_22B9B5500(0, 0, v133, &unk_22BA13600, v142);

    v183(v174, v128);
    (v185)(v176, v129);
  }

  else
  {
    v145 = sub_22B9BBA8C(MEMORY[0x277D84F90]);
    sub_22B939308(v145);

    v146 = sub_22B9358B4(v130, v130[3]);
    v147 = *v146;
    v148 = *(*v146 + 56);
    if (v148)
    {
      [v148 startChanges];
    }

    sub_22BA08EA4(1);
    v149 = *(v147 + 56);
    v150 = v185;
    v151 = v183;
    if (v149)
    {
      [v149 setSyncJobStateWithState_];
      v152 = *(v147 + 56);
      if (v152)
      {
        [v152 commitChanges];
      }
    }

    v153 = sub_22BA0FEDC();
    v154 = sub_22BA1045C();
    if (os_log_type_enabled(v153, v154))
    {
      v155 = swift_slowAlloc();
      *v155 = 0;
      _os_log_impl(&dword_22B92A000, v153, v154, "We did not set the state of activity to CONTINUE successfully", v155, 2u);
      MEMORY[0x23189ADD0](v155, -1, -1);
    }

    v151(v174, v128);
    v150(v176, v129);
  }
}

uint64_t sub_22B9407BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[14] = a8;
  v8[15] = v10;
  v8[12] = a6;
  v8[13] = a7;
  v8[10] = a4;
  v8[11] = a5;
  return MEMORY[0x2822009F8](sub_22B9407EC, 0, 0);
}

uint64_t sub_22B9407EC()
{
  v47 = v0;
  v1 = *(v0 + 88);
  v2 = sub_22B9BBA8C(MEMORY[0x277D84F90]);
  sub_22B939308(v2);

  *(v0 + 72) = v1;
  v3 = v1;
  sub_22B9349C8(&qword_27D8D55E0, &unk_22BA135D0);
  if (swift_dynamicCast())
  {
    v4 = *(v0 + 56);
    if (v4 >= 5)
    {
      if (qword_281414D30 != -1)
      {
        swift_once();
      }

      v11 = *(v0 + 96);
      v12 = sub_22BA0FEFC();
      sub_22B936CA8(v12, qword_28141AD40);
      sub_22B935B38(v11, v0 + 16);
      sub_22B944AC0(v4);

      v13 = sub_22BA0FEDC();
      v14 = sub_22BA1044C();
      sub_22B944AB0(v4);

      if (!os_log_type_enabled(v13, v14))
      {
        sub_22B944AB0(v4);

        sub_22B936C4C((v0 + 16));
        v10 = *(v0 + 104);
        if (v10)
        {
          goto LABEL_15;
        }

        goto LABEL_19;
      }

      v15 = *(v0 + 80);
      v16 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v44 = v42;
      *v16 = 136315650;
      sub_22B9358B4((v0 + 16), *(v0 + 40));
      v41 = v14;
      v17 = sub_22B9B580C();
      v19 = v18;
      sub_22B936C4C((v0 + 16));
      v20 = sub_22B99153C(v17, v19, &v44);

      *(v16 + 4) = v20;
      *(v16 + 12) = 2080;
      v45 = 0x2E636E7973;
      v46 = 0xE500000000000000;
      sub_22B9358B4((v4 + 16), *(v4 + 40));
      v21 = sub_22B9B580C();
      MEMORY[0x231899730](v21);

      MEMORY[0x231899730](46, 0xE100000000000000);
      sub_22BA0FDCC();
      sub_22B944034();
      v22 = sub_22BA10C1C();
      MEMORY[0x231899730](v22);

      v23 = sub_22B99153C(v45, v46, &v44);

      *(v16 + 14) = v23;
      *(v16 + 22) = 2080;
      v45 = 0x2E636E7973;
      v46 = 0xE500000000000000;
      sub_22B9358B4((v15 + 16), *(v15 + 40));
      v24 = sub_22B9B580C();
      MEMORY[0x231899730](v24);

      MEMORY[0x231899730](46, 0xE100000000000000);
      v25 = sub_22BA10C1C();
      MEMORY[0x231899730](v25);

      v26 = sub_22B99153C(v45, v46, &v44);

      *(v16 + 24) = v26;
      _os_log_impl(&dword_22B92A000, v13, v41, "Tried to kick %s but another sync was already going %s %s", v16, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x23189ADD0](v42, -1, -1);
      MEMORY[0x23189ADD0](v16, -1, -1);
      sub_22B944AB0(v4);

LABEL_14:
      v10 = *(v0 + 104);
      if (v10)
      {
        goto LABEL_15;
      }

LABEL_19:
      if (!xpc_activity_set_state(*(v0 + 120), 5))
      {
        if (qword_281414D30 != -1)
        {
          swift_once();
        }

        v31 = sub_22BA0FEFC();
        sub_22B936CA8(v31, qword_28141AD40);

        v32 = sub_22BA0FEDC();
        v33 = sub_22BA1044C();

        if (os_log_type_enabled(v32, v33))
        {
          v34 = *(v0 + 80);
          v35 = swift_slowAlloc();
          v36 = swift_slowAlloc();
          *v35 = 136315138;
          v44 = v36;
          v45 = 0x2E636E7973;
          v46 = 0xE500000000000000;
          sub_22B9358B4((v34 + 16), *(v34 + 40));
          v37 = sub_22B9B580C();
          MEMORY[0x231899730](v37);

          MEMORY[0x231899730](46, 0xE100000000000000);
          sub_22BA0FDCC();
          sub_22B944034();
          v38 = sub_22BA10C1C();
          MEMORY[0x231899730](v38);

          v39 = sub_22B99153C(v45, v46, &v44);

          *(v35 + 4) = v39;
          _os_log_impl(&dword_22B92A000, v32, v33, "Failed to set activity state to done %s", v35, 0xCu);
          sub_22B936C4C(v36);
          MEMORY[0x23189ADD0](v36, -1, -1);
          MEMORY[0x23189ADD0](v35, -1, -1);
        }
      }

      v40 = *(v0 + 8);

      return v40();
    }

    sub_22B944AB0(*(v0 + 56));
  }

  v5 = sub_22B9358B4((*(v0 + 80) + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState), *(*(v0 + 80) + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState + 24));
  v6 = *v5;
  v7 = *(*v5 + 56);
  if (v7)
  {
    [v7 startChanges];
  }

  sub_22BA08EA4(1);
  v8 = *(v6 + 56);
  if (!v8)
  {
    goto LABEL_14;
  }

  [v8 setSyncJobStateWithState_];
  v9 = *(v6 + 56);
  if (!v9)
  {
    goto LABEL_14;
  }

  [v9 commitChanges];
  v10 = *(v0 + 104);
  if (!v10)
  {
    goto LABEL_19;
  }

LABEL_15:
  v28 = *(v0 + 80);
  v27 = *(v0 + 88);
  v43 = (v10 + *v10);
  v29 = swift_task_alloc();
  *(v0 + 128) = v29;
  *v29 = v0;
  v29[1] = sub_22B940F1C;

  return (v43)(v28, &off_283F56AF0, 1, v27);
}

uint64_t sub_22B940F1C()
{

  return MEMORY[0x2822009F8](sub_22B941018, 0, 0);
}

uint64_t sub_22B941018()
{
  v13 = v0;
  if (!xpc_activity_set_state(*(v0 + 120), 5))
  {
    if (qword_281414D30 != -1)
    {
      swift_once();
    }

    v1 = sub_22BA0FEFC();
    sub_22B936CA8(v1, qword_28141AD40);

    v2 = sub_22BA0FEDC();
    v3 = sub_22BA1044C();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = *(v0 + 80);
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      *v5 = 136315138;
      v12[0] = v6;
      v12[1] = 0x2E636E7973;
      v12[2] = 0xE500000000000000;
      sub_22B9358B4((v4 + 16), *(v4 + 40));
      v7 = sub_22B9B580C();
      MEMORY[0x231899730](v7);

      MEMORY[0x231899730](46, 0xE100000000000000);
      sub_22BA0FDCC();
      sub_22B944034();
      v8 = sub_22BA10C1C();
      MEMORY[0x231899730](v8);

      v9 = sub_22B99153C(0x2E636E7973, 0xE500000000000000, v12);

      *(v5 + 4) = v9;
      _os_log_impl(&dword_22B92A000, v2, v3, "Failed to set activity state to done %s", v5, 0xCu);
      sub_22B936C4C(v6);
      MEMORY[0x23189ADD0](v6, -1, -1);
      MEMORY[0x23189ADD0](v5, -1, -1);
    }
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_22B941244(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[13] = a7;
  v8[14] = a8;
  v8[11] = a5;
  v8[12] = a6;
  v8[10] = a4;
  type metadata accessor for HandleErrorOutcome(0);
  v8[15] = swift_task_alloc();
  v8[16] = swift_task_alloc();
  v8[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B9412F4, 0, 0);
}

uint64_t sub_22B9412F4()
{
  v26 = v0;
  sub_22B939184(0x676E696E6E7552, 0xE700000000000000);
  if (qword_281414D30 != -1)
  {
    swift_once();
  }

  v1 = v0[11];
  v2 = sub_22BA0FEFC();
  v0[18] = sub_22B936CA8(v2, qword_28141AD40);
  sub_22B935B38(v1, (v0 + 2));

  v3 = sub_22BA0FEDC();
  v4 = sub_22BA1046C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v25[0] = v6;
    *v5 = 136315394;
    sub_22B9358B4(v0 + 2, v0[5]);
    v7 = sub_22B9B580C();
    v9 = v8;
    sub_22B936C4C(v0 + 2);
    v10 = sub_22B99153C(v7, v9, v25);

    *(v5 + 4) = v10;
    *(v5 + 12) = 2080;
    sub_22BA0FDCC();
    sub_22B944034();
    v11 = sub_22BA10C1C();
    v13 = sub_22B99153C(v11, v12, v25);

    *(v5 + 14) = v13;
    _os_log_impl(&dword_22B92A000, v3, v4, "Running handler for %s %s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23189ADD0](v6, -1, -1);
    MEMORY[0x23189ADD0](v5, -1, -1);
  }

  else
  {

    sub_22B936C4C(v0 + 2);
  }

  v14 = [objc_opt_self() sharedInstance];
  if (v14)
  {
    v15 = v14;
    v16 = [v14 isInternalInstall];

    if (v16)
    {
      sub_22B9441FC((v0[10] + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState), 0xD000000000000012, 0x800000022BA1C320);
    }
  }

  v17 = v0[11];
  v18 = v17[3];
  v19 = v17[4];
  sub_22B9358B4(v17, v18);
  v20 = *(*(v19 + 8) + 8);
  v24 = (*(v20 + 40) + **(v20 + 40));
  v21 = swift_task_alloc();
  v0[19] = v21;
  *v21 = v0;
  v21[1] = sub_22B9417C4;
  v22 = v0[10];

  return v24(v22, &off_283F56AF0, v18, v20);
}

uint64_t sub_22B9417C4()
{

  return MEMORY[0x2822009F8](sub_22B9418C0, 0, 0);
}

uint64_t sub_22B9418C0()
{
  sub_22B9358B4(*(v0 + 88), *(*(v0 + 88) + 24));
  v1 = swift_task_alloc();
  *(v0 + 160) = v1;
  *v1 = v0;
  v1[1] = sub_22B941980;
  v2 = *(v0 + 80);

  return sub_22B93BD74(v2, &off_283F56AF0);
}

uint64_t sub_22B941980(uint64_t a1, char a2)
{
  v5 = *v3;
  *(*v3 + 168) = v2;

  if (v2)
  {
    v6 = sub_22B942DF0;
  }

  else
  {
    *(v5 + 248) = a2;
    v6 = sub_22B941AA8;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_22B941AA8()
{
  v1 = v0[11];
  v2 = v1[3];
  v3 = v1[4];
  sub_22B9358B4(v1, v2);
  v4 = *(*(v3 + 8) + 8);
  v8 = (*(v4 + 56) + **(v4 + 56));
  v5 = swift_task_alloc();
  v0[22] = v5;
  *v5 = v0;
  v5[1] = sub_22B941BE4;
  v6 = v0[10];

  return v8(v6, &off_283F56AF0, v2, v4);
}

uint64_t sub_22B941BE4()
{

  return MEMORY[0x2822009F8](sub_22B941CE0, 0, 0);
}

uint64_t sub_22B941CE0()
{
  v1 = *(v0 + 136);
  v2 = sub_22B9349C8(&qword_27D8D4CC8, &qword_22BA13580);
  (*(*(v2 - 8) + 56))(v1, 2, 2, v2);
  v3 = *(v0 + 248);
  v4 = *(v0 + 168);
  *(v0 + 184) = 0;
  v5 = *(*(v0 + 80) + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_osActivity);
  swift_beginAccess();
  os_activity_scope_leave((v5 + 24));
  swift_endAccess();
  v6 = sub_22B9BBA8C(MEMORY[0x277D84F90]);
  sub_22B939308(v6);

  type metadata accessor for SyncCoordinator();
  sub_22B9B5378();
  if (v4)
  {
    v7 = sub_22BA0FEDC();
    v8 = sub_22BA1045C();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_22B92A000, v7, v8, "Failed to clear active sync state!", v9, 2u);
      MEMORY[0x23189ADD0](v9, -1, -1);
    }
  }

  v10 = *(v0 + 128);
  sub_22B944198(*(v0 + 136), v10);
  v11 = sub_22B9349C8(&qword_27D8D4CC8, &qword_22BA13580);
  v12 = (*(*(v11 - 8) + 48))(v10, 2, v11);
  v13 = *(v0 + 104);
  if (v12)
  {
    if (v12 == 1)
    {
      if (v13)
      {
        v14 = *(v0 + 80);
        v29 = (v13 + *v13);
        v15 = swift_task_alloc();
        *(v0 + 200) = v15;
        *v15 = v0;
        v15[1] = sub_22B9423B8;
        v16 = v14;
        v17 = 64;
LABEL_13:

        return (v29)(v16, &off_283F56AF0, v17, 0);
      }
    }

    else
    {
      v20 = (*(v0 + 80) + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_activity);
      v21 = v20[3];
      v22 = v20[4];
      sub_22B9358B4(v20, v21);
      (*(v22 + 40))(v21, v22);
      if (v13)
      {
        v23 = *(v0 + 80);
        v29 = (*(v0 + 104) + **(v0 + 104));
        v24 = swift_task_alloc();
        *(v0 + 208) = v24;
        *v24 = v0;
        v24[1] = sub_22B942540;
        v17 = v3 & 1;
        v16 = v23;
        goto LABEL_13;
      }
    }

    sub_22B9440D8(*(v0 + 136));
  }

  else
  {
    if (v13)
    {
      v18 = *(v0 + 80);
      v29 = (v13 + *v13);
      v19 = swift_task_alloc();
      *(v0 + 192) = v19;
      *v19 = v0;
      v19[1] = sub_22B9421F4;
      v16 = v18;
      v17 = 128;
      goto LABEL_13;
    }

    sub_22B9440D8(*(v0 + 136));

    v26 = *(v0 + 128);
    v27 = sub_22BA0FD8C();
    (*(*(v27 - 8) + 8))(v26, v27);
  }

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_22B9421F4()
{

  return MEMORY[0x2822009F8](sub_22B9422F0, 0, 0);
}

uint64_t sub_22B9422F0()
{
  v1 = *(v0 + 136);

  sub_22B9440D8(v1);
  v2 = *(v0 + 128);
  v3 = sub_22BA0FD8C();
  (*(*(v3 - 8) + 8))(v2, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_22B9423B8()
{

  return MEMORY[0x2822009F8](sub_22B9424B4, 0, 0);
}

uint64_t sub_22B9424B4()
{
  v1 = *(v0 + 136);

  sub_22B9440D8(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_22B942540()
{

  return MEMORY[0x2822009F8](sub_22B945AD0, 0, 0);
}

uint64_t sub_22B94263C()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  v1[29] = v3;
  *v3 = v2;
  v3[1] = sub_22B9427EC;
  v4 = v1[27];
  v5 = v1[15];
  v6 = v1[14];
  v7 = v1[13];
  v8 = v1[12];
  v9 = v1[10];

  return sub_22B93C914(v5, v9, &off_283F56AF0, v8, v7, v6, v4);
}

uint64_t sub_22B9427EC()
{
  v2 = *v1;
  *(*v1 + 240) = v0;

  if (v0)
  {
    v3 = sub_22B942F4C;
  }

  else
  {
    v3 = sub_22B942920;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22B942920()
{
  sub_22B944134(v0[15], v0[17]);
  v1 = v0[30];
  v2 = v0[27];
  v0[23] = v2;
  v3 = *(v0[10] + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_osActivity);
  swift_beginAccess();
  os_activity_scope_leave((v3 + 24));
  swift_endAccess();
  v4 = sub_22B9BBA8C(MEMORY[0x277D84F90]);
  sub_22B939308(v4);

  type metadata accessor for SyncCoordinator();
  sub_22B9B5378();
  if (v1)
  {
    v5 = sub_22BA0FEDC();
    v6 = sub_22BA1045C();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_22B92A000, v5, v6, "Failed to clear active sync state!", v7, 2u);
      MEMORY[0x23189ADD0](v7, -1, -1);
    }
  }

  v8 = v0[16];
  sub_22B944198(v0[17], v8);
  v9 = sub_22B9349C8(&qword_27D8D4CC8, &qword_22BA13580);
  v10 = (*(*(v9 - 8) + 48))(v8, 2, v9);
  v11 = v0[13];
  if (v10)
  {
    if (v10 == 1)
    {
      if (v11)
      {
        v12 = v0[10];
        v27 = (v11 + *v11);
        v13 = swift_task_alloc();
        v0[25] = v13;
        *v13 = v0;
        v13[1] = sub_22B9423B8;
        v14 = v12;
        v15 = 64;
LABEL_13:

        return (v27)(v14, &off_283F56AF0, v15, v2);
      }
    }

    else
    {
      v18 = (v0[10] + OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_activity);
      v19 = v18[3];
      v20 = v18[4];
      sub_22B9358B4(v18, v19);
      (*(v20 + 40))(v19, v20);
      if (v11)
      {
        v21 = v0[10];
        v27 = (v0[13] + *v0[13]);
        v22 = swift_task_alloc();
        v0[26] = v22;
        *v22 = v0;
        v22[1] = sub_22B942540;
        v14 = v21;
        v15 = 1;
        goto LABEL_13;
      }
    }

    sub_22B9440D8(v0[17]);
  }

  else
  {
    if (v11)
    {
      v16 = v0[10];
      v27 = (v11 + *v11);
      v17 = swift_task_alloc();
      v0[24] = v17;
      *v17 = v0;
      v17[1] = sub_22B9421F4;
      v14 = v16;
      v15 = 128;
      goto LABEL_13;
    }

    sub_22B9440D8(v0[17]);

    v24 = v0[16];
    v25 = sub_22BA0FD8C();
    (*(*(v25 - 8) + 8))(v24, v25);
  }

  v26 = v0[1];

  return v26();
}

uint64_t sub_22B942DF0()
{
  v1 = v0[21];
  v0[27] = v1;
  v2 = v0[11];
  v3 = v2[3];
  v4 = v2[4];
  sub_22B9358B4(v2, v3);
  v5 = *(*(v4 + 8) + 8);
  v6 = *(v5 + 56);
  v7 = v1;
  v11 = (v6 + *v6);
  v8 = swift_task_alloc();
  v0[28] = v8;
  *v8 = v0;
  v8[1] = sub_22B94263C;
  v9 = v0[10];

  return (v11)(v9, &off_283F56AF0, v3, v5);
}

uint64_t sub_22B942F4C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22B942FD8(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  return MEMORY[0x2822009F8](sub_22B942FFC, 0, 0);
}

uint64_t sub_22B942FFC(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 96);
  v5 = *(v4 + 97);
  *(v3 + 232) = v5;
  v6 = *(v4 + 88);
  *(v3 + 104) = v6;
  v7 = *(v6 + 16);
  *(v3 + 112) = v7;
  if (v7)
  {
    v8 = MEMORY[0x277D84F90];
    *(v3 + 192) = 0;
    *(v3 + 200) = v8;
    *(v3 + 176) = 0;
    *(v3 + 184) = 0;
    *(v3 + 233) = v5 == 2;
    if (*(v6 + 16))
    {
      sub_22B935B38(v6 + 32, v3 + 16);
      v10 = *(v3 + 40);
      v9 = *(v3 + 48);
      sub_22B9358B4((v3 + 16), v10);
      v11 = swift_task_alloc();
      *(v3 + 208) = v11;
      *v11 = v3;
      v11[1] = sub_22B943600;
      v13 = *(v3 + 80);
      v12 = *(v3 + 88);

      return sub_22B97EDC0(v13, v12, v10, v9);
    }

    __break(1u);
    return MEMORY[0x2822009F8](a1, a2, a3);
  }

  v15 = MEMORY[0x277D84F90];
  v16 = *(MEMORY[0x277D84F90] + 16);
  *(v3 + 120) = MEMORY[0x277D84F90];
  *(v3 + 128) = v16;
  if (v16)
  {
    v17 = *(v15 + 32);
    *(v3 + 136) = v17;
    if (v16 != 1)
    {
      v22 = *(v3 + 80);
      v23 = OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_statsCollector;
      *(v3 + 144) = OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState;
      *(v3 + 152) = *(v22 + v23);
      v24 = v17;
      *(v3 + 160) = 1;
      v25 = *(v3 + 152);
      v26 = *(*(v3 + 120) + 40);
      *(v3 + 168) = v26;

      v27 = v26;
      a1 = sub_22B943268;
      a2 = v25;
      a3 = 0;

      return MEMORY[0x2822009F8](a1, a2, a3);
    }

    v18 = v17;
    swift_willThrow();

    v19 = *(v3 + 8);

    return v19();
  }

  else
  {
    v20 = v5 == 2;

    v21 = *(v3 + 8);

    return v21(0, v20);
  }
}

uint64_t sub_22B943268()
{
  v1 = *(v0 + 152);
  swift_beginAccess();
  v2 = *(v1 + 184);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + 184) = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = *(v0 + 152);
    v2 = sub_22B97FA40(0, v2[2] + 1, 1, v2);
    *(v9 + 184) = v2;
  }

  v5 = v2[2];
  v4 = v2[3];
  if (v5 >= v4 >> 1)
  {
    v2 = sub_22B97FA40((v4 > 1), v5 + 1, 1, v2);
  }

  v6 = *(v0 + 168);
  v7 = *(v0 + 152);
  v2[2] = v5 + 1;
  v2[v5 + 4] = v6;
  *(v7 + 184) = v2;
  swift_endAccess();
  v8 = v6;

  return MEMORY[0x2822009F8](sub_22B94337C, 0, 0);
}

uint64_t sub_22B94337C()
{
  v24 = v0;
  v1 = (*(v0 + 80) + *(v0 + 144));
  v2 = *(*sub_22B9358B4(v1, v1[3]) + 56);
  if (v2)
  {
    v3 = *(v0 + 168);
    v4 = *(v0 + 128);
    v5 = *(v0 + 160) + 1;
    swift_unknownObjectRetain();
    v6 = sub_22BA0FB5C();
    [v2 appendError_];
    swift_unknownObjectRelease();

    if (v5 == v4)
    {
LABEL_3:

      swift_willThrow();

      v7 = *(v0 + 8);

      return v7();
    }
  }

  else
  {
    if (qword_281414D30 != -1)
    {
      swift_once();
    }

    v9 = sub_22BA0FEFC();
    sub_22B936CA8(v9, qword_28141AD40);
    v10 = sub_22BA0FEDC();
    v11 = sub_22BA1044C();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v23 = v13;
      *v12 = 136315138;
      v14 = sub_22B97D720();
      v16 = sub_22B99153C(v14, v15, &v23);

      *(v12 + 4) = v16;
      _os_log_impl(&dword_22B92A000, v10, v11, "Encountered error setting sync date: %s", v12, 0xCu);
      sub_22B936C4C(v13);
      MEMORY[0x23189ADD0](v13, -1, -1);
      MEMORY[0x23189ADD0](v12, -1, -1);
    }

    v17 = *(v0 + 128);
    v18 = *(v0 + 160) + 1;

    if (v18 == v17)
    {
      goto LABEL_3;
    }
  }

  v19 = *(v0 + 152);
  v20 = *(v0 + 160) + 1;
  *(v0 + 160) = v20;
  v21 = *(*(v0 + 120) + 8 * v20 + 32);
  *(v0 + 168) = v21;
  v22 = v21;

  return MEMORY[0x2822009F8](sub_22B943268, v19, 0);
}

uint64_t sub_22B943600(uint64_t a1, char a2)
{
  v5 = *v3;
  *(v5 + 234) = a2;
  *(v5 + 216) = v2;

  if (v2)
  {
    sub_22B936C4C((v5 + 16));
    v6 = sub_22B943A58;
  }

  else
  {
    *(v5 + 224) = a1;
    sub_22B936C4C((v5 + 16));
    v6 = sub_22B94373C;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_22B94373C(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 224);
  v5 = *(v3 + 184);
  v6 = v5 + v4;
  if (__OFADD__(v5, v4))
  {
    __break(1u);
    goto LABEL_31;
  }

  if (*(v3 + 232))
  {
    if (*(v3 + 232) == 1)
    {
      if (*(v3 + 234))
      {

        v7 = 1;
        goto LABEL_14;
      }

      v9 = sub_22BA10C6C();

      if (v9)
      {
        v7 = 1;
        goto LABEL_14;
      }

      goto LABEL_11;
    }

    if (*(v3 + 234))
    {
      v8 = sub_22BA10C6C();

      if ((v8 & 1) == 0)
      {
LABEL_11:
        v7 = *(v3 + 233);
        goto LABEL_14;
      }
    }

    else
    {
    }
  }

  v7 = 0;
LABEL_14:
  v10 = *(v3 + 192) + 1;
  if (v10 != *(v3 + 112))
  {
    *(v3 + 184) = v6;
    *(v3 + 192) = v10;
    *(v3 + 176) = v6;
    *(v3 + 233) = v7;
    v17 = *(v3 + 104);
    if (v10 < *(v17 + 16))
    {
      sub_22B935B38(v17 + 40 * v10 + 32, v3 + 16);
      v19 = *(v3 + 40);
      v18 = *(v3 + 48);
      sub_22B9358B4((v3 + 16), v19);
      v20 = swift_task_alloc();
      *(v3 + 208) = v20;
      *v20 = v3;
      v20[1] = sub_22B943600;
      v22 = *(v3 + 80);
      v21 = *(v3 + 88);

      return sub_22B97EDC0(v22, v21, v19, v18);
    }

LABEL_31:
    __break(1u);
    return MEMORY[0x2822009F8](a1, a2, a3);
  }

  v11 = *(v3 + 200);
  *(v3 + 120) = v11;
  v12 = *(v11 + 16);
  *(v3 + 128) = v12;
  if (v12)
  {
    v13 = *(v11 + 32);
    *(v3 + 136) = v13;
    if (v12 == 1)
    {
      v14 = v13;
      swift_willThrow();

      v15 = *(v3 + 8);

      return v15();
    }

    v24 = *(v3 + 80);
    v25 = OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_statsCollector;
    *(v3 + 144) = OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState;
    *(v3 + 152) = *(v24 + v25);
    v26 = v13;
    *(v3 + 160) = 1;
    v27 = *(v3 + 152);
    v28 = *(*(v3 + 120) + 40);
    *(v3 + 168) = v28;

    v29 = v28;
    a1 = sub_22B943268;
    a2 = v27;
    a3 = 0;

    return MEMORY[0x2822009F8](a1, a2, a3);
  }

  v23 = *(v3 + 8);

  return v23(v6, v7);
}

uint64_t sub_22B943A58()
{
  if ((*(*(v0 + 96) + 96) & 1) == 0)
  {

    swift_willThrow();
    goto LABEL_11;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + 200);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    isUniquelyReferenced_nonNull_native = sub_22B97FA40(0, v4[2] + 1, 1, *(v0 + 200));
    v4 = isUniquelyReferenced_nonNull_native;
  }

  v6 = v4[2];
  v5 = v4[3];
  if (v6 >= v5 >> 1)
  {
    isUniquelyReferenced_nonNull_native = sub_22B97FA40((v5 > 1), v6 + 1, 1, v4);
    v4 = isUniquelyReferenced_nonNull_native;
  }

  v7 = *(v0 + 216);
  v4[2] = v6 + 1;
  v8 = (v4 + 4);
  v4[v6 + 4] = v7;
  v9 = *(v0 + 192) + 1;
  if (v9 == *(v0 + 112))
  {
    v10 = *(v0 + 176);
    v11 = *(v0 + 233);
    *(v0 + 120) = v4;
    v12 = v4[2];
    *(v0 + 128) = v12;
    if (v12)
    {
      v13 = *v8;
      *(v0 + 136) = *v8;
      if (v12 == 1)
      {
        v14 = v13;
        swift_willThrow();

LABEL_11:
        v15 = *(v0 + 8);

        return v15();
      }

      v24 = *(v0 + 80);
      v25 = OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_statsCollector;
      *(v0 + 144) = OBJC_IVAR____TtC17MessagesCloudSync11SyncContext_cloudState;
      *(v0 + 152) = *(v24 + v25);
      v26 = v13;
      *(v0 + 160) = 1;
      v27 = *(v0 + 152);
      v28 = *(*(v0 + 120) + 40);
      *(v0 + 168) = v28;

      v29 = v28;
      isUniquelyReferenced_nonNull_native = sub_22B943268;
      v2 = v27;
      v3 = 0;

      return MEMORY[0x2822009F8](isUniquelyReferenced_nonNull_native, v2, v3);
    }

    v23 = *(v0 + 8);

    return v23(v10, v11);
  }

  else
  {
    *(v0 + 192) = v9;
    *(v0 + 200) = v4;
    v17 = *(v0 + 104);
    if (v9 >= *(v17 + 16))
    {
      __break(1u);
      return MEMORY[0x2822009F8](isUniquelyReferenced_nonNull_native, v2, v3);
    }

    sub_22B935B38(v17 + 40 * v9 + 32, v0 + 16);
    v19 = *(v0 + 40);
    v18 = *(v0 + 48);
    sub_22B9358B4((v0 + 16), v19);
    v20 = swift_task_alloc();
    *(v0 + 208) = v20;
    *v20 = v0;
    v20[1] = sub_22B943600;
    v22 = *(v0 + 80);
    v21 = *(v0 + 88);

    return sub_22B97EDC0(v22, v21, v19, v18);
  }
}

uint64_t sub_22B943D3C(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t sub_22B943D8C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[10];
  v8 = v1[11];
  v9 = v1[12];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_22B943E68;

  return sub_22B939430(a1, v4, v5, v6, (v1 + 5), v7, v8, v9);
}

uint64_t sub_22B943E68()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_22B943F5C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[15];
  v8 = v1[16];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_22B943E68;

  return sub_22B939AA0(a1, v4, v5, v6, (v1 + 5), (v1 + 10), v7, v8);
}

unint64_t sub_22B944034()
{
  result = qword_281416BE0;
  if (!qword_281416BE0)
  {
    sub_22BA0FDCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281416BE0);
  }

  return result;
}

uint64_t type metadata accessor for HandleErrorOutcome(uint64_t a1)
{
  result = qword_2814155F0;
  if (!qword_2814155F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22B9440D8(uint64_t a1)
{
  v2 = type metadata accessor for HandleErrorOutcome(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22B944134(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HandleErrorOutcome(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22B944198(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HandleErrorOutcome(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_22B9441FC(void *a1, void *a2, uint64_t a3)
{
  v6 = [objc_opt_self() sharedInstance];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 isInternalInstall];

    if (v8)
    {
      v9 = *(*sub_22B9358B4(a1, a1[3]) + 24);
      v54 = a2;
      v55 = a3;
      v10 = v9;

      MEMORY[0x231899730](0x6E69616D6F64, 0xE600000000000000);
      v11 = sub_22BA0FFCC();

      v12 = [v10 stringForKey_];

      if (v12)
      {
        v52 = sub_22BA0FFFC();
        v14 = v13;
      }

      else
      {
        v52 = 0;
        v14 = 0;
      }

      v56 = v14;
      v15 = *(*sub_22B9358B4(a1, a1[3]) + 24);
      v54 = a2;
      v55 = a3;

      v16 = v15;
      MEMORY[0x231899730](1701080931, 0xE400000000000000);
      v17 = sub_22BA0FFCC();

      v51 = [v16 integerForKey_];

      v18 = *(*sub_22B9358B4(a1, a1[3]) + 24);
      v54 = a2;
      v55 = a3;

      v19 = v18;
      MEMORY[0x231899730](1868983913, 0xE400000000000000);
      v20 = sub_22BA0FFCC();

      v21 = [v19 dictionaryForKey_];

      if (v21)
      {
        v53 = sub_22BA0FF6C();
      }

      else
      {
        v53 = 0;
      }

      v22 = *(*sub_22B9358B4(a1, a1[3]) + 24);
      v54 = a2;
      v55 = a3;

      v23 = v22;
      MEMORY[0x231899730](0x746E756F63, 0xE500000000000000);
      v24 = sub_22BA0FFCC();

      v25 = [v23 integerForKey_];

      if (v56)
      {
        if (v25)
        {
          if (v25 >= 1)
          {
            v26 = *(*sub_22B9358B4(a1, a1[3]) + 24);
            v54 = a2;
            v55 = a3;

            v27 = v26;
            MEMORY[0x231899730](0x746E756F63, 0xE500000000000000);
            v28 = sub_22BA0FFCC();

            [v27 setInteger:v25 - 1 forKey:v28];

            if (qword_281414D30 != -1)
            {
              swift_once();
            }

            v29 = sub_22BA0FEFC();
            sub_22B936CA8(v29, qword_28141AD40);

            v30 = sub_22BA0FEDC();
            v31 = sub_22BA1046C();

            if (os_log_type_enabled(v30, v31))
            {
              v32 = swift_slowAlloc();
              v33 = swift_slowAlloc();
              v54 = v33;
              *v32 = 136315906;
              *(v32 + 4) = sub_22B99153C(v52, v56, &v54);
              *(v32 + 12) = 2048;
              *(v32 + 14) = v51;
              *(v32 + 22) = 2048;
              *(v32 + 24) = v25;
              *(v32 + 32) = 2048;
              *(v32 + 34) = v25 - 1;
              _os_log_impl(&dword_22B92A000, v30, v31, "Decremented error(%s: %ld) count from %ld to %ld", v32, 0x2Au);
              sub_22B936C4C(v33);
              MEMORY[0x23189ADD0](v33, -1, -1);
              MEMORY[0x23189ADD0](v32, -1, -1);
            }
          }

          v34 = sub_22BA0FFCC();

          if (v53)
          {
            v35 = sub_22BA0FF5C();
          }

          else
          {
            v35 = 0;
          }

          v43 = [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:v34 code:v51 userInfo:v35];

          if (qword_281414D30 != -1)
          {
            swift_once();
          }

          v44 = sub_22BA0FEFC();
          sub_22B936CA8(v44, qword_28141AD40);
          v45 = v43;
          v46 = sub_22BA0FEDC();
          v47 = sub_22BA1044C();

          if (os_log_type_enabled(v46, v47))
          {
            v48 = swift_slowAlloc();
            v49 = swift_slowAlloc();
            *v48 = 138412290;
            *(v48 + 4) = v45;
            *v49 = v45;
            v50 = v45;
            _os_log_impl(&dword_22B92A000, v46, v47, "Throwing forced error %@, based on defaults in com.apple.madrid MiC.ForceJobError.*", v48, 0xCu);
            sub_22B936BEC(v49, &qword_27D8D4CD0, qword_22BA14360);
            MEMORY[0x23189ADD0](v49, -1, -1);
            MEMORY[0x23189ADD0](v48, -1, -1);
          }

          swift_willThrow();
        }

        else
        {

          if (qword_281414D30 != -1)
          {
            swift_once();
          }

          v36 = sub_22BA0FEFC();
          sub_22B936CA8(v36, qword_28141AD40);

          v37 = sub_22BA0FEDC();
          v38 = sub_22BA1044C();

          if (os_log_type_enabled(v37, v38))
          {
            v39 = v56;
            v40 = swift_slowAlloc();
            v41 = swift_slowAlloc();
            v54 = v41;
            *v40 = 136315650;
            v42 = sub_22B99153C(v52, v39, &v54);

            *(v40 + 4) = v42;
            *(v40 + 12) = 2048;
            *(v40 + 14) = v51;
            *(v40 + 22) = 2048;
            *(v40 + 24) = 0;
            _os_log_impl(&dword_22B92A000, v37, v38, "Forced error (%s: %ld) found, but count is %ld, ignoring", v40, 0x20u);
            sub_22B936C4C(v41);
            MEMORY[0x23189ADD0](v41, -1, -1);
            MEMORY[0x23189ADD0](v40, -1, -1);
          }

          else
          {
          }
        }
      }

      else
      {
      }
    }
  }
}