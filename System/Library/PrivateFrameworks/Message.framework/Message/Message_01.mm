unint64_t sub_1B03A0454(uint64_t a1)
{
  v1 = a1;
  v2 = a1 + 56;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 56);
  v6 = (v3 + 63) >> 6;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v7 = 0;
  if (!v5)
  {
LABEL_5:
    while (1)
    {
      v8 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if (v8 >= v6)
      {

        goto LABEL_19;
      }

      v5 = *(v2 + 8 * v8);
      ++v7;
      if (v5)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_96:

LABEL_19:
    appended = Capability.mailboxSpecificAppendLimit.unsafeMutableAddressor();
    v22 = *appended;
    v23 = appended[1];
    v24 = appended[2];
    v25 = *(appended + 24);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    LODWORD(v22) = sub_1B039F8EC(v22, v23, v24, v25, v1);

    return ~v22 & 1;
  }

  while (1)
  {
    v8 = v7;
LABEL_8:
    v9 = v1;
    v10 = *(v1 + 48) + ((v8 << 11) | (32 * __clz(__rbit64(v5))));
    v12 = *v10;
    v11 = *(v10 + 8);
    v13 = *(v10 + 16);
    v14 = *(v10 + 24);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v50 = v13;
    v51 = v12;
    if (v14)
    {
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    }

    else
    {
      v15 = sub_1B0E44EE8();
      MEMORY[0x1B2726D00](v15);
    }

    v16 = sub_1B0E44BB8();
    v18 = v17;

    if (v16 == 0x494C444E45505041 && v18 == 0xEB0000000054494DLL)
    {
      v1 = v9;

      goto LABEL_22;
    }

    v20 = sub_1B0E46A78();

    v1 = v9;
    if (v20)
    {
      break;
    }

    v5 &= v5 - 1;

    v7 = v8;
    if (!v5)
    {
      goto LABEL_5;
    }
  }

LABEL_22:
  v27 = Capability.value.getter(v51, v11, v50, v14);
  v29 = v28;

  if (!v29)
  {
    goto LABEL_19;
  }

  v30 = HIBYTE(v29) & 0xF;
  v31 = v27 & 0xFFFFFFFFFFFFLL;
  if ((v29 & 0x2000000000000000) != 0)
  {
    v32 = HIBYTE(v29) & 0xF;
  }

  else
  {
    v32 = v27 & 0xFFFFFFFFFFFFLL;
  }

  if (!v32)
  {
    goto LABEL_96;
  }

  if ((v29 & 0x1000000000000000) != 0)
  {
    v34 = sub_1B0B6D434(v27, v29, 10);
    v47 = v49;
    goto LABEL_87;
  }

  if ((v29 & 0x2000000000000000) != 0)
  {
    v52[0] = v27;
    v52[1] = v29 & 0xFFFFFFFFFFFFFFLL;
    if (v27 == 43)
    {
      if (v30)
      {
        if (--v30)
        {
          v34 = 0;
          v42 = v52 + 1;
          while (1)
          {
            v43 = *v42 - 48;
            if (v43 > 9)
            {
              break;
            }

            if (!is_mul_ok(v34, 0xAuLL))
            {
              break;
            }

            v37 = __CFADD__(10 * v34, v43);
            v34 = 10 * v34 + v43;
            if (v37)
            {
              break;
            }

            ++v42;
            if (!--v30)
            {
              goto LABEL_86;
            }
          }
        }

        goto LABEL_85;
      }

LABEL_102:
      __break(1u);
      return result;
    }

    if (v27 != 45)
    {
      if (v30)
      {
        v34 = 0;
        v45 = v52;
        while (1)
        {
          v46 = *v45 - 48;
          if (v46 > 9)
          {
            break;
          }

          if (!is_mul_ok(v34, 0xAuLL))
          {
            break;
          }

          v37 = __CFADD__(10 * v34, v46);
          v34 = 10 * v34 + v46;
          if (v37)
          {
            break;
          }

          ++v45;
          if (!--v30)
          {
            goto LABEL_86;
          }
        }
      }

      goto LABEL_85;
    }

    if (v30)
    {
      if (--v30)
      {
        v34 = 0;
        v38 = v52 + 1;
        while (1)
        {
          v39 = *v38 - 48;
          if (v39 > 9)
          {
            break;
          }

          if (!is_mul_ok(v34, 0xAuLL))
          {
            break;
          }

          v37 = 10 * v34 >= v39;
          v34 = 10 * v34 - v39;
          if (!v37)
          {
            break;
          }

          ++v38;
          if (!--v30)
          {
            goto LABEL_86;
          }
        }
      }

      goto LABEL_85;
    }

    goto LABEL_100;
  }

  if ((v27 & 0x1000000000000000) != 0)
  {
    result = (v29 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = sub_1B0E46368();
  }

  v33 = *result;
  if (v33 == 43)
  {
    if (v31 < 1)
    {
LABEL_101:
      __break(1u);
      goto LABEL_102;
    }

    v30 = v31 - 1;
    if (v31 != 1)
    {
      v34 = 0;
      if (result)
      {
        v40 = (result + 1);
        while (1)
        {
          v41 = *v40 - 48;
          if (v41 > 9)
          {
            goto LABEL_85;
          }

          if (!is_mul_ok(v34, 0xAuLL))
          {
            goto LABEL_85;
          }

          v37 = __CFADD__(10 * v34, v41);
          v34 = 10 * v34 + v41;
          if (v37)
          {
            goto LABEL_85;
          }

          ++v40;
          if (!--v30)
          {
            goto LABEL_86;
          }
        }
      }

      goto LABEL_77;
    }

LABEL_85:
    v34 = 0;
    LOBYTE(v30) = 1;
    goto LABEL_86;
  }

  if (v33 != 45)
  {
    if (v31)
    {
      v34 = 0;
      if (result)
      {
        while (1)
        {
          v44 = *result - 48;
          if (v44 > 9)
          {
            goto LABEL_85;
          }

          if (!is_mul_ok(v34, 0xAuLL))
          {
            goto LABEL_85;
          }

          v37 = __CFADD__(10 * v34, v44);
          v34 = 10 * v34 + v44;
          if (v37)
          {
            goto LABEL_85;
          }

          ++result;
          if (!--v31)
          {
            goto LABEL_77;
          }
        }
      }

      goto LABEL_77;
    }

    goto LABEL_85;
  }

  if (v31 < 1)
  {
    __break(1u);
LABEL_100:
    __break(1u);
    goto LABEL_101;
  }

  v30 = v31 - 1;
  if (v31 == 1)
  {
    goto LABEL_85;
  }

  v34 = 0;
  if (result)
  {
    v35 = (result + 1);
    while (1)
    {
      v36 = *v35 - 48;
      if (v36 > 9)
      {
        goto LABEL_85;
      }

      if (!is_mul_ok(v34, 0xAuLL))
      {
        goto LABEL_85;
      }

      v37 = 10 * v34 >= v36;
      v34 = 10 * v34 - v36;
      if (!v37)
      {
        goto LABEL_85;
      }

      ++v35;
      if (!--v30)
      {
        goto LABEL_86;
      }
    }
  }

LABEL_77:
  LOBYTE(v30) = 0;
LABEL_86:
  v53 = v30;
  v47 = v30;
LABEL_87:

  if ((v47 & 1) != 0 || v34 >> 5 < 0xC35)
  {
    goto LABEL_19;
  }

  if (v34 >= 2000000000)
  {
    v48 = 2000000000;
  }

  else
  {
    v48 = v34;
  }

  if (v34 >= 0)
  {
    return v48;
  }

  else
  {
    return 2000000000;
  }
}

uint64_t *Capability.mailboxSpecificAppendLimit.unsafeMutableAddressor()
{
  if (qword_1EB6DEA38 != -1)
  {
    swift_once();
  }

  return &static Capability.mailboxSpecificAppendLimit;
}

uint64_t *Capability.idle.unsafeMutableAddressor()
{
  if (qword_1EB6DEA20 != -1)
  {
    swift_once();
  }

  return &static Capability.idle;
}

uint64_t sub_1B03A0A2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, void *), uint64_t a6)
{
  v45 = a6;
  v46 = a5;
  v43 = a2;
  v44 = a1;
  v8 = type metadata accessor for StateWithTasks(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v39[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v39[-v12];
  sub_1B0390720(a4, &v39[-v12], type metadata accessor for StateWithTasks);
  v14 = sub_1B0398D1C();
  v41 = v15;
  v42 = v14;
  v40 = v16;
  sub_1B0390574(v13, type metadata accessor for StateWithTasks);
  sub_1B0390720(a4, v10, type metadata accessor for StateWithTasks);
  memcpy(v52, v10, sizeof(v52));
  v17 = sub_1B03A7A88();
  v18 = LOBYTE(v52[3]);
  v19 = BYTE1(v52[3]);
  v20 = v52[4];
  v21 = v52[7];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v22 = sub_1B0397D14();
  v23 = v22;
  if (v20 == 3 || v20 == 2)
  {

    v24 = 1;
    goto LABEL_4;
  }

  v37 = sub_1B0BAE1A4(v22);
  if (v19)
  {
    goto LABEL_12;
  }

  if (v20 == 1)
  {
    if (v18)
    {
      v24 = v18 == 1;
      goto LABEL_13;
    }

LABEL_12:
    v24 = v37 ^ 1;
    goto LABEL_13;
  }

  if (v20 || (v18 - 1) >= 2)
  {
    goto LABEL_12;
  }

  v24 = 0;
LABEL_13:
  sub_1B0397E04(&unk_1F2710548, v21);
  sub_1B0BAE1A4(v23);
  v38 = sub_1B039109C(v21);

  if (v38 & 1) == 0 && (v19)
  {
    sub_1B0BAE1A4(v23);
  }

LABEL_4:

  sub_1B03A8380(v52[21], v52[22], v52[23], v52[24] & 1, v52[15], v17, v24 & 1, v52[26]);
  v26 = v25;
  v28 = v27;

  rawValue = sub_1B03AC81C(v26, v28).elements._rawValue;

  sub_1B03C8B98(*(v10 + 264), v10[34]);
  v31 = v30;
  sub_1B0390574(v10, type metadata accessor for StateWithTasks);
  v47[0] = v43;
  v47[1] = a3;

  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5198, "$]\t");
  v33 = sub_1B039E3F8(&qword_1EB6DC958, &qword_1EB6E5198, "$]\t", MEMORY[0x1E69955C0]);
  v34 = MailboxesSelectionUsage.removing<A>(notContainedIn:)(v47, rawValue, v32, v33);

  v48[0] = v42;
  v48[1] = v41;
  v49 = v40 & 1;
  v50 = v34;
  v51 = v31;
  v35 = v46(v44, v48);

  sub_1B03C81E4(v31);
  return v35;
}

Swift::Void __swiftcall StateWithTasks.logSyncRequests()()
{
  memcpy(__dst, v0, sizeof(__dst));
  v1 = *(v0 + 272);
  v2 = *(v0 + 280);
  v3 = *(v0 + 264);
  v4 = type metadata accessor for StateWithTasks(0);
  sub_1B03A0E2C(v3, v1, v2, v0 + *(v4 + 28));
}

void sub_1B03A0E2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v179 = a2;
  v204 = type metadata accessor for TaskHistory.Running(0);
  v177 = *(v204 - 8);
  MEMORY[0x1EEE9AC00](v204);
  v7 = &v163 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v163 - v9);
  MEMORY[0x1EEE9AC00](v11);
  v200 = &v163 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v203 = &v163 - v14;
  v185 = type metadata accessor for RunningTask(0);
  v174 = *(v185 - 8);
  MEMORY[0x1EEE9AC00](v185);
  v16 = &v163 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v175 = type metadata accessor for State.Logger(0);
  MEMORY[0x1EEE9AC00](v175);
  v18 = &v163 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  MEMORY[0x1EEE9AC00](v20);
  v166 = &v163 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v192 = *(v4 + 64);
  if (*(v192 + 16))
  {
    v165 = &v163 - v23;
    v178 = v24;
    v168 = v4;
    v25 = static SyncRequest.Kind.allCases.getter();
    v171 = *(v25 + 2);
    if (v171)
    {
      v27 = 0;
      v167 = 0;
      v183 = v192 + 64;
      v170 = v25 + 32;
      *&v26 = 68159234;
      v164 = v26;
      *&v26 = 68159747;
      v172 = v26;
      *&v26 = 68158722;
      v163 = v26;
      v199 = v10;
      v186 = v16;
      v184 = a4;
      v202 = v7;
      v169 = v25;
LABEL_6:
      if (v27 >= *(v25 + 2))
      {
        goto LABEL_112;
      }

      v28 = v170[v27];
      v176 = v27 + 1;
      v221 = MEMORY[0x1E69E7CD0];
      v29 = 1 << *(v192 + 32);
      if (v29 < 64)
      {
        v30 = ~(-1 << v29);
      }

      else
      {
        v30 = -1;
      }

      v31 = v30 & *(v192 + 64);
      swift_beginAccess();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v32 = 0;
LABEL_12:
      if (v31)
      {
        goto LABEL_17;
      }

      while (1)
      {
        v33 = v32 + 1;
        if (__OFADD__(v32, 1))
        {
          break;
        }

        if (v33 >= ((v29 + 63) >> 6))
        {
          swift_endAccess();

          if (!*(v221 + 16))
          {
            goto LABEL_4;
          }

          v173 = v221;
          if (*(v168 + 192))
          {
            v38 = *(v168 + 168);
            v39 = v167;
            v201 = sub_1B0B86000(0, v38, &v221);
            v167 = v39;
            v40 = *(v38 + 16);
            v41 = v166;
            sub_1B03906B8(a4, v166, type metadata accessor for State.Logger);
            sub_1B0394868();
            sub_1B0394868();
            sub_1B0394868();
            v42 = sub_1B0E43988();
            v43 = sub_1B0E45908();
            v44 = os_log_type_enabled(v42, v43);
            v181 = v40;
            if (v44)
            {
              v45 = swift_slowAlloc();
              v198 = v38;
              v46 = v41;
              v47 = v45;
              v197 = swift_slowAlloc();
              *&v210 = v197;
              *v47 = v164;
              *(v47 + 4) = 2;
              *(v47 + 8) = 256;
              v48 = *(v46 + *(v175 + 20));
              sub_1B0390514(v46, type metadata accessor for State.Logger);
              *(v47 + 10) = v48;
              v10 = v199;
              *(v47 + 11) = 2082;
              v49 = sub_1B0E462C8();
              v51 = sub_1B0399D64(v49, v50, &v210);

              *(v47 + 13) = v51;
              *(v47 + 21) = 2048;
              *(v47 + 23) = *(v173 + 16);
              *(v47 + 31) = 2082;
              v52 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
              v53 = sub_1B0B88A40(v52);
              v55 = v54;

              v56 = sub_1B0399D64(v53, v55, &v210);
              v38 = v198;

              *(v47 + 33) = v56;
              *(v47 + 41) = 2048;
              *(v47 + 43) = v201;
              *(v47 + 51) = 2048;
              v40 = v181;
              *(v47 + 53) = v181;
              _os_log_impl(&dword_1B0389000, v42, v43, "[%.*hhx] Sync kind '%{public}s': %ld running sync request(s) {%{public}s} with total of %ld of %ld mailbox(es).", v47, 0x3Du);
              v57 = v197;
              swift_arrayDestroy();
              v16 = v186;
              MEMORY[0x1B272C230](v57, -1, -1);
              MEMORY[0x1B272C230](v47, -1, -1);
            }

            else
            {
              sub_1B0390514(v41, type metadata accessor for State.Logger);
            }

            v73 = v202;
            if (v40)
            {
              v74 = v40;
              v75 = 0;
              v76 = v38 + 32;
              v180 = v38 + 32;
              do
              {
                v77 = (v76 + 176 * v75);
                v78 = *v77;
                v79 = v77[2];
                v211 = v77[1];
                v212 = v79;
                v210 = v78;
                v80 = v77[3];
                v81 = v77[4];
                v82 = v77[6];
                v215 = v77[5];
                v216 = v82;
                v213 = v80;
                v214 = v81;
                v83 = v77[7];
                v84 = v77[8];
                v85 = v77[10];
                v219 = v77[9];
                v220 = v85;
                v217 = v83;
                v218 = v84;
                if (*(*(&v84 + 1) + 16))
                {
                  v86 = v216;
                  if (v216)
                  {
                    v189 = v75;
                    v87 = v211;
                    v88 = DWORD2(v211);
                    v89 = OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
                    swift_beginAccess();
                    v187 = *(v86 + v89);
                    v90 = *(v179 + 16);
                    v193 = v87;
                    if (v90)
                    {
                      v91 = v174;
                      v92 = v179 + ((*(v174 + 80) + 32) & ~*(v174 + 80));
                      sub_1B03A35B8(&v210, v208);
                      v93 = 0;
                      v201 = *(v91 + 72);
                      v94 = v92;
                      v182 = (v87 + 32);
                      v194 = MEMORY[0x1E69E7CC0];
                      v195 = v88 | (v88 << 32);
                      v95 = v88;
                      v197 = v90;
                      v198 = v88;
                      v196 = v92;
                      while (1)
                      {
                        sub_1B03906B8(v94 + v201 * v93, v16, type metadata accessor for RunningTask);
                        sub_1B0450DB0(v16, v208);
                        if (v209)
                        {
                          if (v209 == 1)
                          {
                            sub_1B0450C74(v208, v205);
                            v96 = v206;
                            v97 = v207;
                            __swift_project_boxed_opaque_existential_0(v205, v206);
                            (*(v97 + 32))(&v222, v96, v97);
                            v226 = v223;
                            v227 = v224;
                            v225 = v222;
                            sub_1B039E440(&v225);
                            __swift_destroy_boxed_opaque_existential_0Tm(v205);
                            if ((v227 | (v227 << 32)) != v195)
                            {
                              sub_1B039E440(&v226);
                              v90 = v197;
                              v95 = v198;
LABEL_67:
                              v94 = v196;
                              goto LABEL_68;
                            }

                            v98 = *(v226 + 16);
                            v90 = v197;
                            if (v98 != *(v193 + 16))
                            {
                              sub_1B039E440(&v226);
                              v95 = v198;
                              goto LABEL_67;
                            }

                            v95 = v198;
                            v94 = v196;
                            if (!v98 || v226 == v193)
                            {
LABEL_54:
                              sub_1B039E440(&v226);
                              v101 = &v16[*(v185 + 28)];
                              v102 = &v101[*(type metadata accessor for Task.Logger(0) + 20)];
                              v103 = *(v102 + 1);
                              v190 = *(v102 + 2);
                              v191 = v103;
                              _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
                              v104 = *(v16 + 6);
                              v105 = *(v104 + 16);
                              if (v105)
                              {
                                v106 = *(v177 + 80);
                                v188 = *(v16 + 6);
                                v107 = v104 + ((v106 + 32) & ~v106);
                                v108 = *(v177 + 72);
                                v109 = v107;
                                v110 = MEMORY[0x1E69E7CC0];
                                do
                                {
                                  v111 = v203;
                                  sub_1B03906B8(v109, v203, type metadata accessor for TaskHistory.Running);
                                  sub_1B0B950AC(v111, v10, type metadata accessor for TaskHistory.Running);
                                  if (swift_getEnumCaseMultiPayload() == 1)
                                  {
                                    sub_1B0390514(v10, type metadata accessor for TaskHistory.Running);
                                  }

                                  else
                                  {
                                    v112 = *v10;
                                    v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3EE0, &qword_1B0EC2AF0);
                                    sub_1B0390514(v10 + *(v113 + 64), type metadata accessor for ClientCommand);
                                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                                    {
                                      v110 = sub_1B0B01220(0, *(v110 + 2) + 1, 1, v110);
                                    }

                                    v115 = *(v110 + 2);
                                    v114 = *(v110 + 3);
                                    if (v115 >= v114 >> 1)
                                    {
                                      v110 = sub_1B0B01220((v114 > 1), v115 + 1, 1, v110);
                                    }

                                    *(v110 + 2) = v115 + 1;
                                    *&v110[8 * v115 + 32] = v112;
                                    v73 = v202;
                                    v10 = v199;
                                  }

                                  v109 += v108;
                                  --v105;
                                }

                                while (v105);
                                v116 = *(v188 + 16);
                                if (v116)
                                {
                                  v117 = MEMORY[0x1E69E7CC0];
                                  do
                                  {
                                    v118 = v200;
                                    sub_1B03906B8(v107, v200, type metadata accessor for TaskHistory.Running);
                                    sub_1B0B950AC(v118, v73, type metadata accessor for TaskHistory.Running);
                                    if (swift_getEnumCaseMultiPayload() == 1)
                                    {
                                      v119 = *v73;
                                      sub_1B03E1BE8(*(v73 + 8));
                                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                                      {
                                        v117 = sub_1B0B0120C(0, *(v117 + 2) + 1, 1, v117);
                                      }

                                      v121 = *(v117 + 2);
                                      v120 = *(v117 + 3);
                                      if (v121 >= v120 >> 1)
                                      {
                                        v117 = sub_1B0B0120C((v120 > 1), v121 + 1, 1, v117);
                                      }

                                      *(v117 + 2) = v121 + 1;
                                      *&v117[4 * v121 + 32] = v119;
                                      v73 = v202;
                                    }

                                    else
                                    {
                                      sub_1B0390514(v73, type metadata accessor for TaskHistory.Running);
                                    }

                                    v107 += v108;
                                    --v116;
                                  }

                                  while (v116);
                                }

                                else
                                {
                                  v117 = MEMORY[0x1E69E7CC0];
                                }

                                v16 = v186;
                              }

                              else
                              {
                                v117 = MEMORY[0x1E69E7CC0];
                                v110 = MEMORY[0x1E69E7CC0];
                              }

                              sub_1B0390514(v16, type metadata accessor for RunningTask);
                              if (swift_isUniquelyReferenced_nonNull_native())
                              {
                                v122 = v194;
                              }

                              else
                              {
                                v122 = sub_1B0B01100(0, *(v194 + 2) + 1, 1, v194);
                              }

                              v124 = *(v122 + 2);
                              v123 = *(v122 + 3);
                              if (v124 >= v123 >> 1)
                              {
                                v122 = sub_1B0B01100((v123 > 1), v124 + 1, 1, v122);
                              }

                              *(v122 + 2) = v124 + 1;
                              v194 = v122;
                              v125 = &v122[32 * v124];
                              v126 = v190;
                              *(v125 + 4) = v191;
                              *(v125 + 5) = v126;
                              *(v125 + 6) = v110;
                              *(v125 + 7) = v117;
                              v95 = v198;
                              v10 = v199;
                              v94 = v196;
                              v90 = v197;
                              goto LABEL_69;
                            }

                            v99 = (v226 + 32);
                            v100 = v182;
                            while (*v99 == *v100)
                            {
                              ++v99;
                              ++v100;
                              if (!--v98)
                              {
                                goto LABEL_54;
                              }
                            }

                            sub_1B039E440(&v226);
                          }
                        }

                        else
                        {
                          sub_1B0B7ABB4(v208);
                        }

LABEL_68:
                        sub_1B0390514(v16, type metadata accessor for RunningTask);
LABEL_69:
                        if (++v93 == v90)
                        {
                          goto LABEL_92;
                        }
                      }
                    }

                    sub_1B03A35B8(&v210, v208);
                    v194 = MEMORY[0x1E69E7CC0];
                    v95 = v88;
LABEL_92:
                    a4 = v184;
                    v127 = v178;
                    sub_1B03906B8(v184, v178, type metadata accessor for State.Logger);
                    sub_1B0394868();
                    sub_1B0394868();
                    sub_1B0394868();
                    sub_1B03A35B8(&v210, v208);
                    sub_1B03A35B8(&v210, v208);
                    sub_1B0394868();
                    sub_1B0394868();
                    sub_1B0394868();
                    v128 = v194;
                    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
                    sub_1B03A35B8(&v210, v208);
                    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
                    v129 = sub_1B0E43988();
                    v130 = sub_1B0E45908();
                    sub_1B03A3614(&v210);
                    if (os_log_type_enabled(v129, v130))
                    {
                      LODWORD(v197) = v130;
                      v131 = swift_slowAlloc();
                      v196 = swift_slowAlloc();
                      v205[0] = v196;
                      *v131 = v172;
                      *(v131 + 4) = 2;
                      *(v131 + 8) = 256;
                      v132 = *(v127 + *(v175 + 20));
                      sub_1B0390514(v127, type metadata accessor for State.Logger);
                      *(v131 + 10) = v132;
                      *(v131 + 11) = 1040;
                      *(v131 + 13) = 2;
                      *(v131 + 17) = 512;
                      sub_1B03A3614(&v210);
                      *(v131 + 19) = WORD6(v220);
                      sub_1B03A3614(&v210);
                      *(v131 + 21) = 2160;
                      *(v131 + 23) = 0x786F626C69616DLL;
                      *(v131 + 31) = 2085;
                      *&v208[0] = v193;
                      DWORD2(v208[0]) = v95;
                      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
                      v133 = sub_1B0E44BA8();
                      v135 = sub_1B0399D64(v133, v134, v205);

                      *(v131 + 33) = v135;
                      *(v131 + 41) = 2048;
                      v136 = *(v128 + 2);

                      *(v131 + 43) = v136;

                      *(v131 + 51) = 2082;
                      v137 = ConnectionID.debugDescription.getter(v187);
                      v139 = sub_1B0399D64(v137, v138, v205);

                      *(v131 + 53) = v139;
                      v201 = v131;
                      *(v131 + 61) = 2082;
                      v140 = *(v128 + 2);
                      if (v140)
                      {
                        v198 = v129;
                        *&v208[0] = MEMORY[0x1E69E7CC0];
                        sub_1B041D32C(0, v140, 0);
                        v141 = *&v208[0];
                        v142 = (v128 + 56);
                        do
                        {
                          v143 = *(v142 - 3);
                          v144 = *(v142 - 2);
                          v145 = *(v142 - 1);
                          v146 = *v142;
                          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
                          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
                          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
                          v147 = sub_1B0B88598(v143, v144, v145, v146);
                          v149 = v148;

                          *&v208[0] = v141;
                          v151 = *(v141 + 16);
                          v150 = *(v141 + 24);
                          if (v151 >= v150 >> 1)
                          {
                            sub_1B041D32C((v150 > 1), v151 + 1, 1);
                            v141 = *&v208[0];
                          }

                          *(v141 + 16) = v151 + 1;
                          v152 = v141 + 16 * v151;
                          *(v152 + 32) = v147;
                          *(v152 + 40) = v149;
                          v142 += 4;
                          --v140;
                        }

                        while (v140);

                        a4 = v184;
                        v129 = v198;
                        v10 = v199;
                      }

                      else
                      {

                        v141 = MEMORY[0x1E69E7CC0];
                      }

                      *&v208[0] = v141;
                      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
                      sub_1B039E3F8(&qword_1EB6DB070, &qword_1EB6E2A70, &qword_1B0E9B5F0, MEMORY[0x1E69E6310]);
                      v153 = sub_1B0E448E8();
                      v155 = v154;

                      v156 = sub_1B0399D64(v153, v155, v205);

                      v157 = v201;
                      *(v201 + 63) = v156;
                      _os_log_impl(&dword_1B0389000, v129, v197, "[%.*hhx] [{%.*hx}-%{sensitive,mask.mailbox}s] Is running %ld task(s) on %{public}s: %{public}s", v157, 0x47u);
                      v158 = v196;
                      swift_arrayDestroy();
                      MEMORY[0x1B272C230](v158, -1, -1);
                      MEMORY[0x1B272C230](v157, -1, -1);

                      sub_1B03A3614(&v210);
                      v73 = v202;
                      v16 = v186;
                    }

                    else
                    {

                      sub_1B03A3614(&v210);
                      sub_1B0390514(v127, type metadata accessor for State.Logger);

                      sub_1B03A3614(&v210);

                      sub_1B03A3614(&v210);
                    }

                    v76 = v180;
                    v74 = v181;
                    v75 = v189;
                  }
                }

                ++v75;
              }

              while (v75 != v74);
            }

LABEL_4:
          }

          else
          {
            v58 = v165;
            sub_1B03906B8(a4, v165, type metadata accessor for State.Logger);
            sub_1B0394868();
            sub_1B0394868();
            sub_1B0394868();
            v59 = sub_1B0E43988();
            v60 = sub_1B0E45908();
            if (os_log_type_enabled(v59, v60))
            {
              v61 = swift_slowAlloc();
              v62 = swift_slowAlloc();
              *&v210 = v62;
              *v61 = v163;
              *(v61 + 4) = 2;
              *(v61 + 8) = 256;
              v63 = *(v58 + *(v175 + 20));
              sub_1B0390514(v58, type metadata accessor for State.Logger);
              *(v61 + 10) = v63;
              v10 = v199;
              *(v61 + 11) = 2082;
              v64 = sub_1B0E462C8();
              v66 = sub_1B0399D64(v64, v65, &v210);

              *(v61 + 13) = v66;
              *(v61 + 21) = 2048;
              *(v61 + 23) = *(v173 + 16);
              *(v61 + 31) = 2082;
              v67 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
              v68 = sub_1B0B88A40(v67);
              v70 = v69;

              v71 = sub_1B0399D64(v68, v70, &v210);

              *(v61 + 33) = v71;
              _os_log_impl(&dword_1B0389000, v59, v60, "[%.*hhx] Sync kind '%{public}s': %ld running sync request(s) {%{public}s}. Mailbox(es) are unknown.", v61, 0x29u);
              swift_arrayDestroy();
              v72 = v62;
              v16 = v186;
              MEMORY[0x1B272C230](v72, -1, -1);
              MEMORY[0x1B272C230](v61, -1, -1);
            }

            else
            {
              sub_1B0390514(v58, type metadata accessor for State.Logger);
            }
          }

          v27 = v176;
          v25 = v169;
          if (v176 == v171)
          {
            goto LABEL_107;
          }

          goto LABEL_6;
        }

        v31 = *(v183 + 8 * v33);
        ++v32;
        if (v31)
        {
          v32 = v33;
LABEL_17:
          v34 = __clz(__rbit64(v31));
          v31 &= v31 - 1;
          v35 = v34 | (v32 << 6);
          v36 = *(*(v192 + 48) + 4 * v35);
          v37 = *(*(v192 + 56) + 32 * v35);
          switch(v37)
          {
            case 2:
              if (v28 != 2)
              {
                goto LABEL_12;
              }

              break;
            case 3:
              if (v28 != 3)
              {
                goto LABEL_12;
              }

              break;
            case 4:
              if (v28 == 4)
              {
                break;
              }

              goto LABEL_12;
            default:
              if (v28 - 2) < 3 || ((v37 ^ v28))
              {
                goto LABEL_12;
              }

              break;
          }

          sub_1B03FF318(v208, v36);
          goto LABEL_12;
        }
      }

      __break(1u);
      __break(1u);
LABEL_112:
      __break(1u);
    }

    else
    {

LABEL_107:
    }
  }

  else
  {
    sub_1B03906B8(a4, v18, type metadata accessor for State.Logger);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v159 = sub_1B0E43988();
    v160 = sub_1B0E45908();
    if (os_log_type_enabled(v159, v160))
    {
      v161 = swift_slowAlloc();
      *v161 = 68157952;
      *(v161 + 4) = 2;
      *(v161 + 8) = 256;
      v162 = v18[*(v175 + 20)];
      sub_1B0390514(v18, type metadata accessor for State.Logger);
      *(v161 + 10) = v162;
      _os_log_impl(&dword_1B0389000, v159, v160, "[%.*hhx] No running sync requests.", v161, 0xBu);
      MEMORY[0x1B272C230](v161, -1, -1);
    }

    else
    {
      sub_1B0390514(v18, type metadata accessor for State.Logger);
    }
  }
}

uint64_t sub_1B03A22C4(uint64_t a1)
{
  v2 = v1;
  v29 = type metadata accessor for Engine.Logger(0);
  MEMORY[0x1EEE9AC00](v29);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v28 - v6;
  swift_beginAccess();
  v8 = sub_1B03A2728();
  v10 = v9;
  swift_endAccess();
  v11 = &unk_1EB737000;
  if (v10)
  {
    v12 = v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_logger;
    sub_1B03903A8(v1 + OBJC_IVAR____TtC22IMAP2ConnectionControl6Engine_logger, v7, type metadata accessor for Engine.Logger);
    swift_retain_n();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0C497D8(v8, v10);

    v13 = sub_1B0E43988();
    v14 = sub_1B0E439A8();
    (*(*(v14 - 8) + 8))(v7, v14);
    v15 = sub_1B0E458E8();
    if (os_log_type_enabled(v13, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 68158208;
      *(v16 + 4) = 2;
      *(v16 + 8) = 256;
      v17 = *(v12 + *(v29 + 20));

      *(v16 + 10) = v17;

      *(v16 + 11) = 1024;
      sub_1B0C497E8(v8, v10);
      *(v16 + 13) = v8;
      sub_1B0C497E8(v8, v10);
      _os_log_impl(&dword_1B0389000, v13, v15, "[%.*hhx] Did not receive any credentials %u.", v16, 0x11u);
      v18 = v16;
      v11 = &unk_1EB737000;
      MEMORY[0x1B272C230](v18, -1, -1);
    }

    else
    {
      sub_1B0C497E8(v8, v10);

      sub_1B0C497E8(v8, v10);
    }

    v10(MEMORY[0x1E69E7CC0]);
    sub_1B0C497E8(v8, v10);
    sub_1B0C497E8(v8, v10);
  }

  swift_beginAccess();
  v19 = sub_1B03A28A8();
  v21 = v20;
  result = swift_endAccess();
  if (v19)
  {
    v23 = v2 + v11[348];
    sub_1B03903A8(v23, v4, type metadata accessor for Engine.Logger);

    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v24 = sub_1B0E43988();
    v25 = sub_1B0E439A8();
    (*(*(v25 - 8) + 8))(v4, v25);
    v26 = sub_1B0E458E8();
    if (os_log_type_enabled(v24, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 68157952;
      *(v27 + 4) = 2;
      *(v27 + 8) = 256;
      *(v27 + 10) = *(v23 + *(v29 + 20));

      _os_log_impl(&dword_1B0389000, v24, v26, "[%.*hhx] Did not receive any push registration info.", v27, 0xBu);
      MEMORY[0x1B272C230](v27, -1, -1);
    }

    else
    {
    }

    memset(v30, 0, sizeof(v30));
    v19(v30);
    return sub_1B03B1AF0(v19, v21);
  }

  return result;
}

uint64_t sub_1B03A2728()
{
  v1 = v0;
  v2 = sub_1B03A2724();
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  v4 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *v0;
  v10 = *v1;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1B0C4B380();
    v6 = v10;
  }

  v7 = v4;
  v8 = *(*(v6 + 56) + 24 * v4);
  sub_1B0C48168(v7, v6);
  *v1 = v6;
  return v8;
}

unint64_t sub_1B03A27D4(uint64_t a1)
{
  v1 = a1;
  sub_1B0E46C28();
  sub_1B0E46C88();
  v2 = sub_1B0E46CB8();
  return sub_1B03A283C(v1, v2);
}

unint64_t sub_1B03A283C(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 4 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_1B03A28A8()
{
  v1 = v0;
  v2 = sub_1B03A2724();
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  v4 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *v0;
  v10 = *v1;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1B0C4B21C();
    v6 = v10;
  }

  v7 = v4;
  v8 = *(*(v6 + 56) + 16 * v4);
  sub_1B0C47FD4(v7, v6);
  *v1 = v6;
  return v8;
}

uint64_t sub_1B03A293C()
{
  v1 = _s19UserInitiatedSearchVMa(0);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = (&v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (v0[3])
  {
    v5 = *v0;
    result = MEMORY[0x1E69E7CD0];
    v36 = MEMORY[0x1E69E7CD0];
    v7 = *(v5 + 16);
    if (v7)
    {
      v8 = 0;
      v31 = v5 + 32;
      do
      {
        v9 = (v31 + 176 * v8);
        v10 = *v9;
        v11 = v9[2];
        v33[1] = v9[1];
        v33[2] = v11;
        v33[0] = v10;
        v12 = v9[3];
        v13 = v9[4];
        v14 = v9[6];
        v33[5] = v9[5];
        v33[6] = v14;
        v33[3] = v12;
        v33[4] = v13;
        v15 = v9[7];
        v16 = v9[8];
        v17 = v9[10];
        v34 = v9[9];
        v35 = v17;
        v33[7] = v15;
        v33[8] = v16;
        v18 = *(*(&v34 + 1) + 16);
        if (v18)
        {
          v19 = *(&v34 + 1) + ((*(v2 + 80) + 32) & ~*(v2 + 80));
          sub_1B03A35B8(v33, v32);
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v20 = *(v2 + 72);
          do
          {
            sub_1B03B1BD0(v19, v4, _s19UserInitiatedSearchVMa);
            sub_1B0B01B88(v32, *v4);
            sub_1B03B1DC0(v4, _s19UserInitiatedSearchVMa);
            v19 += v20;
            --v18;
          }

          while (v18);
          sub_1B03A3614(v33);
        }

        ++v8;
      }

      while (v8 != v7);
      return v36;
    }
  }

  else
  {
    v21 = v0[1];
    v22 = *(v21 + 16);
    v23 = MEMORY[0x1E69E7CC0];
    if (v22)
    {
      *&v33[0] = MEMORY[0x1E69E7CC0];
      sub_1B0B0A3A4(0, v22, 0);
      v23 = *&v33[0];
      v24 = (v21 + 32);
      v25 = *(*&v33[0] + 16);
      do
      {
        v27 = *v24;
        v24 += 6;
        v26 = v27;
        *&v33[0] = v23;
        v28 = *(v23 + 24);
        if (v25 >= v28 >> 1)
        {
          sub_1B0B0A3A4((v28 > 1), v25 + 1, 1);
          v23 = *&v33[0];
        }

        *(v23 + 16) = v25 + 1;
        *(v23 + 4 * v25++ + 32) = v26;
        --v22;
      }

      while (v22);
    }

    v29 = sub_1B0B38738(v23);

    return v29;
  }

  return result;
}

uint64_t sub_1B03A2BB8()
{
  result = MEMORY[0x1E69E7CD0];
  if (v0[3])
  {
    v2 = *v0;
    v23 = MEMORY[0x1E69E7CD0];
    v3 = *(v2 + 16);
    if (v3)
    {
      v4 = 0;
      v5 = v2 + 32;
      do
      {
        v6 = (v5 + 176 * v4);
        v7 = *v6;
        v8 = v6[2];
        v20[1] = v6[1];
        v20[2] = v8;
        v20[0] = v7;
        v9 = v6[3];
        v10 = v6[4];
        v11 = v6[6];
        v20[5] = v6[5];
        v20[6] = v11;
        v20[3] = v9;
        v20[4] = v10;
        v12 = v6[7];
        v13 = v6[8];
        v14 = v6[10];
        v21 = v6[9];
        v22 = v14;
        v20[7] = v12;
        v20[8] = v13;
        v15 = v21;
        v16 = *(v21 + 16);
        sub_1B03A35B8(v20, v19);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        if (v16)
        {
          v17 = (v15 + 32);
          do
          {
            v18 = *v17;
            v17 += 10;
            sub_1B0B02C80(v19, v18);
            --v16;
          }

          while (v16);
        }

        ++v4;
        sub_1B03A3614(v20);
      }

      while (v4 != v3);
      return v23;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_16IMAP2Persistence17MailboxOfInterestV17LocalModificationO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    return *a2;
  }

  return v3;
}

uint64_t StateWithTasks.update(updates:send:persist:)(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t), uint64_t a3, void (*a4)(unint64_t), void (*a5)(void, void, void, void, void))
{
  v6 = v5;
  v87 = a2;
  v88 = a3;
  v74 = type metadata accessor for State.Logger(0);
  MEMORY[0x1EEE9AC00](v74);
  v80 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v76 = &v73 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v78 = &v73 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v75 = &v73 - v16;
  v17 = *(v5 + 184);
  v18 = *(v5 + 216);
  v97[4] = *(v5 + 200);
  v98[0] = v18;
  *(v98 + 12) = *(v5 + 228);
  v97[2] = *(v5 + 168);
  v97[3] = v17;
  v77 = sub_1B03A293C();
  v19 = *(v5 + 200);
  v96[3] = *(v5 + 184);
  v96[4] = v19;
  v97[0] = *(v5 + 216);
  *(v97 + 12) = *(v5 + 228);
  v96[2] = *(v5 + 168);
  v20 = sub_1B03A2BB8();
  v21 = *(v5 + 184);
  v22 = *(v5 + 216);
  v91[2] = *(v5 + 200);
  v92[0] = v22;
  *(v92 + 12) = *(v5 + 228);
  v91[0] = *(v5 + 168);
  v91[1] = v21;
  v90 = MEMORY[0x1E69E7CD0];
  v23 = *(a1 + 16);
  v81 = a1;
  v82 = v5;
  v86 = v23;
  v79 = v20;
  if (v23)
  {
    v85 = a1 + 32;
    sub_1B03A3668(v91, v95);
    v24 = 0;
    v83 = a4;
    v84 = a5;
    do
    {
      v25 = *(v85 + 8 * v24);
      v26 = *(v6 + 264);
      v89 = v25 & 0x3FFFFFFFFFFFFFFFLL;

      v27 = *tracingLog.unsafeMutableAddressor();
      v28 = sub_1B0E45D38();

      v29 = v25 >> 62;
      if (v28)
      {
        if (v29)
        {
          if (v29 == 1)
          {
            v30 = *(v89 + 16);
            v31 = *(v89 + 24);
            sub_1B0390664(v30, *(v89 + 24));
            sub_1B0394E2C(v26, v30, v31);
            sub_1B0390678(v30, v31);
          }
        }

        else
        {
          v32 = *(v25 + 16);
          v33 = *(v25 + 24);
          sub_1B044CD04(v33);
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          sub_1B0BB6170(v26, v32, v33);
          sub_1B044CEF8(v33);
          a4 = v83;

          a5 = v84;
        }
      }

      sub_1B03A36C4(v25, v87, v88, a4, a5);
      if (v29 == 1 && (*(v89 + 24) & 1) != 0)
      {
        v34 = *(v89 + 16);
        if (((v34 >> 59) & 0x1E | (v34 >> 2) & 1) == 0x13)
        {
          v35 = *((v34 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
          v36 = *(v35 + 16);
          if (v36)
          {
            *&v95[0] = MEMORY[0x1E69E7CC0];
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            sub_1B0B0A3A4(0, v36, 0);
            v37 = *&v95[0];
            v38 = *(*&v95[0] + 16);
            v39 = 32;
            do
            {
              v40 = *(v35 + v39);
              *&v95[0] = v37;
              v41 = *(v37 + 24);
              if (v38 >= v41 >> 1)
              {
                sub_1B0B0A3A4((v41 > 1), v38 + 1, 1);
                v37 = *&v95[0];
              }

              *(v37 + 16) = v38 + 1;
              *(v37 + 4 * v38 + 32) = v40;
              v39 += 24;
              ++v38;
              --v36;
            }

            while (v36);

            v6 = v82;
            a4 = v83;
          }

          else
          {
            v37 = MEMORY[0x1E69E7CC0];
          }

          v42 = *(v37 + 16);
          a5 = v84;
          if (v42)
          {
            v43 = 32;
            do
            {
              sub_1B0B01B88(v95, *(v37 + v43));
              v43 += 4;
              --v42;
            }

            while (v42);
          }
        }
      }

      ++v24;
    }

    while (v24 != v86);
  }

  else
  {
    sub_1B03A3668(v91, v95);
  }

  v44 = sub_1B03A5BE4(v87, v88, a4, a5);
  sub_1B03CA990(v81);
  v45 = v78;
  if ((v44 & 1) == 0 && !*(*(v6 + 272) + 16) && *(v6 + 192) == 1)
  {
    *&v95[0] = *(v6 + 168);
    sub_1B0B2AA88(v95);
    v46 = *&v95[0];
    *(v6 + 176) = 0;
    *(v6 + 184) = 0;
    *(v6 + 168) = v46;
    *(v6 + 192) = 1;
  }

  v47 = *(v6 + 184);
  v48 = *(v6 + 216);
  v95[2] = *(v6 + 200);
  v96[0] = v48;
  *(v96 + 12) = *(v6 + 228);
  v95[0] = *(v6 + 168);
  v95[1] = v47;
  v49 = sub_1B03B0204(v90, v77, sub_1B0B01B88);
  v50 = sub_1B03CA88C(v49);

  v51 = v6;
  if ((~v50 & 0xF000000000000007) != 0)
  {
    v52 = v6 + *(type metadata accessor for StateWithTasks(0) + 28);
    v53 = v75;
    sub_1B0390720(v52, v75, type metadata accessor for State.Logger);
    sub_1B0390720(v53, v45, type metadata accessor for State.Logger);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v54 = sub_1B0E43988();
    v55 = sub_1B0E458C8();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = v45;
      v58 = v56;
      *v56 = 68157952;
      *(v56 + 4) = 2;
      *(v56 + 8) = 256;
      v59 = *(v57 + *(v74 + 20));
      sub_1B0390574(v57, type metadata accessor for State.Logger);
      v58[10] = v59;
      v53 = v75;
      _os_log_impl(&dword_1B0389000, v54, v55, "[%.*hhx] Updating running search requests.", v58, 0xBu);
      MEMORY[0x1B272C230](v58, -1, -1);
    }

    else
    {
      sub_1B0390574(v45, type metadata accessor for State.Logger);
    }

    a4(v50);
    sub_1B0B7C1A0(v50);
    sub_1B0390574(v53, type metadata accessor for State.Logger);
    v51 = v82;
  }

  v60 = *(v51 + 184);
  v61 = *(v51 + 216);
  v93[4] = *(v51 + 200);
  v94[0] = v61;
  *(v94 + 12) = *(v51 + 228);
  v93[2] = *(v51 + 168);
  v93[3] = v60;
  v62 = sub_1B0BA75E8(v81, sub_1B03CAE90, 0, v79);

  v63 = v51;
  v64 = v80;
  if ((~v62 & 0xF000000000000007) != 0)
  {
    v65 = v51 + *(type metadata accessor for StateWithTasks(0) + 28);
    v66 = v76;
    sub_1B0390720(v65, v76, type metadata accessor for State.Logger);
    sub_1B0390720(v66, v64, type metadata accessor for State.Logger);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v67 = sub_1B0E43988();
    v68 = sub_1B0E458C8();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      *v69 = 68157952;
      *(v69 + 4) = 2;
      *(v69 + 8) = 256;
      v70 = *(v64 + *(v74 + 20));
      sub_1B0390574(v64, type metadata accessor for State.Logger);
      *(v69 + 10) = v70;
      v66 = v76;
      _os_log_impl(&dword_1B0389000, v67, v68, "[%.*hhx] Updating running download requests.", v69, 0xBu);
      MEMORY[0x1B272C230](v69, -1, -1);
    }

    else
    {
      sub_1B0390574(v64, type metadata accessor for State.Logger);
    }

    a4(v62);
    sub_1B0B7C1A0(v62);
    sub_1B0390574(v66, type metadata accessor for State.Logger);
  }

  v71 = *(v63 + 200);
  v92[3] = *(v63 + 184);
  v92[4] = v71;
  v93[0] = *(v63 + 216);
  *(v93 + 12) = *(v63 + 228);
  v92[2] = *(v63 + 168);
  sub_1B03CAFC4(*(v63 + 264), v91);
  return sub_1B03AD10C(v91);
}

void sub_1B03A36C4(unint64_t a1, uint64_t (*a2)(uint64_t, void *), uint64_t a3, void (*a4)(unint64_t), uint64_t a5)
{
  v6 = v5;
  v129 = a5;
  v130 = a4;
  v133 = type metadata accessor for State.Logger(0);
  MEMORY[0x1EEE9AC00](v133);
  v135 = &v129 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v134 = &v129 - v12;
  v13 = type metadata accessor for TaskHistory.Running(0);
  v136 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v129 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = type metadata accessor for RunningTask(0);
  v142 = *(v139 - 8);
  MEMORY[0x1EEE9AC00](v139);
  v144 = &v129 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v145 = &v129 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v137 = &v129 - v20;
  v140 = v5;
  v143 = a1;
  v132 = a1 >> 62;
  if (!(a1 >> 62))
  {
    v21 = *(a1 + 24);
    if (v21 >> 60 != 1)
    {
      goto LABEL_20;
    }

    v22 = *(a1 + 16);
    v23 = v21 & 0xFFFFFFFFFFFFFFFLL;
    v24 = *(v23 + 24);
    v25 = *(v23 + 32);
    v26 = *(v23 + 40);
    if (*(v6 + 192) == 1)
    {
      v27 = *(v6 + 168);
      v28 = *(v27 + 16);
      if (v28)
      {
        LODWORD(v148) = v24;
        v149 = v25;
        v29 = (v27 + 128);
        v30 = v29;
        do
        {
          v32 = *v30;
          v30 += 22;
          v31 = v32;
          if (v32)
          {
            v33 = *(v29 - 18);
            v34 = *(v29 - 10);
            v35 = OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
            swift_beginAccess();
            if (*(v31 + v35) == v22)
            {
              _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
              goto LABEL_16;
            }
          }

          v29 = v30;
          --v28;
        }

        while (v28);
        v34 = 0;
        v33 = 0;
LABEL_16:
        v6 = v140;
        a1 = v143;
        v25 = v149;
        v24 = v148;
      }

      else
      {
        v34 = 0;
        v33 = 0;
        v6 = v140;
      }
    }

    else
    {
      v34 = 0;
      v33 = 0;
    }

    v157 = v22;
    v158 = v34;
    v159 = v33;
    v160 = v24;
    v161 = v25;
    v162 = v26;
    v43 = *(type metadata accessor for StateWithTasks(0) + 28);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0B7D354(&v157, v6, v6 + v43);

    goto LABEL_19;
  }

  if (a1 >> 62 == 1 && *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x18) == 1 && ((*((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x10) >> 59) & 0x1E | (*((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x10) >> 2) & 1) == 4)
  {
    v36 = *(type metadata accessor for StateWithTasks(0) + 28);
    v37 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0B877CC(v37, (v6 + v36));
    v39 = v38;

    v40 = sub_1B0398D1C();
    sub_1B0BAD608(v39, v140, a2, a3, v40, v42, v41 & 1);
    v6 = v140;
LABEL_19:
  }

LABEL_20:
  v131 = *(type metadata accessor for StateWithTasks(0) + 28);
  sub_1B03907EC(a1, v6 + v131);
  v44 = *(v6 + 272);
  v141 = v44[2];
  if (!v141)
  {
LABEL_45:
    if (v132 != 1)
    {
      return;
    }

    if (*((v143 & 0x3FFFFFFFFFFFFFFFLL) + 0x18) != 1)
    {
      return;
    }

    v77 = *((v143 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    if (((v77 >> 59) & 0x1E | (v77 >> 2) & 1) != 2)
    {
      return;
    }

    v78 = v77 & 0xFFFFFFFFFFFFFFBLL;
    v79 = *(v78 + 24);
    v80 = *(v78 + 32);
    v81 = *(v78 + 40);
    if (*(v6 + 192) == 1)
    {
      v82 = *(v6 + 168);
      v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3DD8, &qword_1B0EC0F10);
      v84 = sub_1B039E3F8(&qword_1EB6DA400, &qword_1EB6E3DD8, &qword_1B0EC0F10, MEMORY[0x1E69E6CC8]);
      v85 = swift_allocObject();
      v85[2] = v82;
      v85[3] = sub_1B03FFDF0;
      v85[4] = 0;
      v85[5] = sub_1B0A8F5AC;
      v85[6] = 0;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    }

    else
    {
      v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3DD0, &qword_1B0EC0F08);
      v84 = sub_1B039E3F8(&qword_1EB6DB4A8, &qword_1EB6E3DD0, &qword_1B0EC0F08, MEMORY[0x1E69E6328]);
      v85 = MEMORY[0x1E69E7CC0];
    }

    v154 = v83;
    v155 = v84;
    *&v153 = v85;
    v86 = __swift_project_boxed_opaque_existential_0(&v153, v83);
    v87 = MEMORY[0x1EEE9AC00](v86);
    v90 = (*(v89 + 16))(&v129 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0), v87);
    MEMORY[0x1EEE9AC00](v90);
    *(&v129 - 32) = v79;
    *(&v129 - 3) = v80;
    LOBYTE(v128) = v81;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v91 = sub_1B0E44FC8();

    __swift_destroy_boxed_opaque_existential_0Tm(&v153);
    v92 = *(v91 + 16);
    if (!v92)
    {

      return;
    }

    sub_1B0390720(v140 + v131, v134, type metadata accessor for State.Logger);
    v149 = v91;
    v93 = v91 + 48;
    *&v94 = 68158467;
    v147 = v94;
    v148 = v92;
    v95 = v135;
    do
    {
      v102 = *(v93 - 16);
      v103 = *(v93 - 8);
      sub_1B0390720(v134, v95, type metadata accessor for State.Logger);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v104 = sub_1B0E43988();
      v105 = sub_1B0E458C8();

      if (os_log_type_enabled(v104, v105))
      {
        v96 = swift_slowAlloc();
        v97 = swift_slowAlloc();
        v150[0] = v97;
        *v96 = v147;
        *(v96 + 4) = 2;
        *(v96 + 8) = 256;
        v98 = *(v135 + *(v133 + 20));
        sub_1B0390574(v135, type metadata accessor for State.Logger);
        *(v96 + 10) = v98;
        *(v96 + 11) = 2160;
        *(v96 + 13) = 0x786F626C69616DLL;
        *(v96 + 21) = 2085;

        *&v153 = v102;
        DWORD2(v153) = v103;
        v99 = sub_1B0E44BA8();
        v101 = sub_1B0399D64(v99, v100, v150);

        *(v96 + 23) = v101;
        _os_log_impl(&dword_1B0389000, v104, v105, "[%.*hhx] Notifying persistence that %{sensitive,mask.mailbox}s is already synced.", v96, 0x1Fu);
        __swift_destroy_boxed_opaque_existential_0Tm(v97);
        v95 = v135;
        MEMORY[0x1B272C230](v97, -1, -1);
        MEMORY[0x1B272C230](v96, -1, -1);
      }

      else
      {
        sub_1B0390574(v95, type metadata accessor for State.Logger);
      }

      v93 += 48;
      v92 = (v92 - 1);
    }

    while (v92);
    v106 = sub_1B03C8E00(MEMORY[0x1E69E7CC0]);
    v107 = 0;
    v108 = v149;
    for (i = (v149 + 56); ; i += 6)
    {
      if (v107 >= *(v108 + 16))
      {
        goto LABEL_77;
      }

      v111 = *(i - 1);
      v112 = *i;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v153 = v106;
      v114 = sub_1B03B8A9C(v111, v112);
      v116 = v106[2];
      v117 = (v115 & 1) == 0;
      v118 = __OFADD__(v116, v117);
      v119 = v116 + v117;
      if (v118)
      {
        goto LABEL_78;
      }

      v120 = v115;
      if (v106[3] < v119)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_66;
      }

      v126 = v114;
      sub_1B0B8D4FC();
      v114 = v126;
      v106 = v153;
      if ((v120 & 1) == 0)
      {
LABEL_67:
        v106[(v114 >> 6) + 8] |= 1 << v114;
        v122 = (v106[6] + 16 * v114);
        *v122 = v111;
        v122[1] = v112;
        v123 = v106[7] + 24 * v114;
        *v123 = 0;
        *(v123 + 4) = 1;
        *(v123 + 8) = 0;
        *(v123 + 16) = 1;

        v124 = v106[2];
        v118 = __OFADD__(v124, 1);
        v125 = v124 + 1;
        if (v118)
        {
          goto LABEL_79;
        }

        v106[2] = v125;
        goto LABEL_59;
      }

LABEL_58:
      v110 = v106[7] + 24 * v114;
      *v110 = 0;
      *(v110 + 4) = 1;
      *(v110 + 8) = 0;
      *(v110 + 16) = 1;

LABEL_59:
      v107 = (v107 + 1);
      v108 = v149;
      if (v148 == v107)
      {

        v127 = swift_allocObject();
        *(v127 + 16) = v106;
        v130(v127 | 0x9000000000000004);

        sub_1B0390574(v134, type metadata accessor for State.Logger);
        return;
      }
    }

    sub_1B0B2F9F0(v119, isUniquelyReferenced_nonNull_native);
    v114 = sub_1B03B8A9C(v111, v112);
    if ((v120 & 1) != (v121 & 1))
    {
      goto LABEL_80;
    }

LABEL_66:
    v106 = v153;
    if ((v120 & 1) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_58;
  }

  v45 = 0;
  v46 = 0;
  v47 = *(v6 + 264);
  v48 = v137;
  while (v45 < v44[2])
  {
    v146 = (*(v142 + 80) + 32) & ~*(v142 + 80);
    v49 = v44 + v146;
    v149 = *(v142 + 72) * v45;
    sub_1B0390720(v44 + v146 + v149, v48, type metadata accessor for RunningTask);
    sub_1B045070C(v143, v6);
    v50 = v46;
    v148 = v44;
    if (v46)
    {
      *&v147 = 0;
      sub_1B0450DB0(v48, &v153);
      v51 = v145;
      if (v156)
      {
        if (v156 == 1)
        {
          sub_1B0450C74(&v153, v150);
          v52 = v151;
          v53 = v152;
          __swift_project_boxed_opaque_existential_0(v150, v151);
          v54 = *(v53 + 136);
          v55 = v52;
          v44 = v148;
          v56 = v53;
          v6 = v140;
          v54(v140, v48 + *(v139 + 28), v55, v56);

          sub_1B0B7ABB4(v48);
          *v48 = 1;
          *(v48 + 8) = 0u;
          *(v48 + 24) = 0u;
          *(v48 + 37) = 0;
          *(v48 + 45) = 2;
          __swift_destroy_boxed_opaque_existential_0Tm(v150);
        }

        else
        {
        }
      }

      else
      {

        sub_1B0B7ABB4(v48);
        *v48 = 1;
        *(v48 + 8) = 0u;
        *(v48 + 24) = 0u;
        *(v48 + 37) = 0;
        *(v48 + 45) = 2;
        sub_1B0B7ABB4(&v153);
      }
    }

    else
    {
      *&v147 = 0;
      v51 = v145;
    }

    sub_1B0390720(v48, v51, type metadata accessor for RunningTask);
    v57 = v144;
    if (v45 >= v44[2])
    {
      goto LABEL_75;
    }

    sub_1B0390720(&v49[v149], v144, type metadata accessor for RunningTask);
    v58 = *tracingLog.unsafeMutableAddressor();
    v59 = sub_1B0E45D38();

    if (v59)
    {
      v60 = v51;
      v61 = *(v51 + 48);
      v62 = *(v57 + 48);
      *&v153 = MEMORY[0x1E69E7CC0];
      *(&v153 + 1) = MEMORY[0x1E69E7CC0];
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      MEMORY[0x1EEE9AC00](v64);
      v65 = sub_1B0450C8C();
      Array.findAppendOnlyDiff<A>(from:id:added:removed:update:)(v62, KeyPath, sub_1B0B7C1EC, (&v129 - 4), sub_1B0B7C1F4, (&v129 - 4), __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1, 0, v61, v65);

      v66 = *(&v153 + 1);
      v67 = *(v153 + 16);
      if (v67)
      {
        v138 = *(&v153 + 1);
        v68 = *(v60 + *(v139 + 32));
        v69 = v153 + ((*(v136 + 80) + 32) & ~*(v136 + 80));
        v70 = *(v136 + 72);
        do
        {
          sub_1B0390720(v69, v15, type metadata accessor for TaskHistory.Running);
          sub_1B0B793EC(v47, v68);
          sub_1B0390574(v15, type metadata accessor for TaskHistory.Running);
          v69 += v70;
          --v67;
        }

        while (v67);

        v48 = v137;
        v66 = v138;
      }

      else
      {

        v48 = v137;
      }

      v72 = *(v66 + 16);
      v6 = v140;
      v57 = v144;
      if (v72)
      {
        v73 = *&v145[*(v139 + 32)];
        v74 = (v66 + 40);
        do
        {
          v75 = *(v74 - 1);
          v76 = *v74;
          v74 += 12;
          sub_1B0B7A1F4(v47, v73, v75, v76, v71);
          --v72;
        }

        while (v72);
      }

      v51 = v145;
    }

    sub_1B0390574(v57, type metadata accessor for RunningTask);
    v44 = v148;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v44 = sub_1B0B8CA2C(v44);
    }

    if (v45 >= v44[2])
    {
      goto LABEL_76;
    }

    ++v45;
    sub_1B0450CE0(v51, v44 + v146 + v149, type metadata accessor for RunningTask);
    *(v6 + 272) = v44;
    sub_1B0390574(v48, type metadata accessor for RunningTask);
    v46 = v147;
    if (v45 == v141)
    {
      goto LABEL_45;
    }
  }

  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  sub_1B0E46BA8();
  __break(1u);
}

uint64_t sub_1B03A476C()
{

  return swift_deallocObject();
}

uint64_t sub_1B03A47A4()
{

  return swift_deallocObject();
}

BOOL sub_1B03A47F4()
{
  v1 = *v0;
  if ((v0[3] & 1) == 0)
  {
    return *(v1 + 16) != 0;
  }

  if (*(v0[4] + 16))
  {
    return 1;
  }

  v3 = (v1 + 168);
  v4 = *(v1 + 16) + 1;
  do
  {
    result = --v4 != 0;
    if (!v4)
    {
      break;
    }

    v5 = *v3;
    v3 += 22;
  }

  while (!*(v5 + 16));
  return result;
}

uint64_t block_destroy_helper_8(uint64_t a1)
{
}

{
}

uint64_t sub_1B03A48FC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CD0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4330, &qword_1B0EDC420);
  v3 = sub_1B0E46228();
  v4 = 0;
  v5 = v3 + 56;
  v6 = a1 + 32;
  while (1)
  {
    v7 = (v6 + 16 * v4);
    v8 = *v7;
    v9 = *(v7 + 2);
    sub_1B0E46C28();
    MEMORY[0x1B2728D70](v9 | (v9 << 32));
    result = sub_1B0E46CB8();
    v11 = -1 << *(v3 + 32);
    v12 = result & ~v11;
    v13 = v12 >> 6;
    v14 = *(v5 + 8 * (v12 >> 6));
    v15 = 1 << v12;
    v16 = *(v3 + 48);
    if (((1 << v12) & v14) != 0)
    {
      break;
    }

LABEL_18:
    *(v5 + 8 * v13) = v14 | v15;
    v24 = v16 + 16 * v12;
    *v24 = v8;
    *(v24 + 8) = v9;
    v25 = *(v3 + 16);
    v26 = __OFADD__(v25, 1);
    v27 = v25 + 1;
    if (v26)
    {
      goto LABEL_23;
    }

    *(v3 + 16) = v27;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
LABEL_3:
    if (++v4 == v1)
    {
      return v3;
    }
  }

  v17 = ~v11;
  while (1)
  {
    v18 = (v16 + 16 * v12);
    if ((v18[2] | (v18[2] << 32)) == (v9 | (v9 << 32)))
    {
      v19 = *v18;
      v20 = *(*v18 + 16);
      if (v20 == *(v8 + 16))
      {
        break;
      }
    }

LABEL_6:
    v12 = (v12 + 1) & v17;
    v13 = v12 >> 6;
    v14 = *(v5 + 8 * (v12 >> 6));
    v15 = 1 << v12;
    if ((v14 & (1 << v12)) == 0)
    {
      goto LABEL_18;
    }
  }

  if (v20)
  {
    v21 = v19 == v8;
  }

  else
  {
    v21 = 1;
  }

  if (v21)
  {
    goto LABEL_3;
  }

  v22 = (v19 + 32);
  v23 = (v8 + 32);
  while (v20)
  {
    if (*v22 != *v23)
    {
      goto LABEL_6;
    }

    ++v22;
    ++v23;
    if (!--v20)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

char *sub_1B03A4AB8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5EE0, &qword_1B0E99B40);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1B03A4BAC(char *a1, int64_t a2, char a3)
{
  result = sub_1B03A4AB8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1B03A4BCC(uint64_t result, char a2)
{
  if (result < 0)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v3 = v2;
  v5 = result;
  v8 = v2[1];
  v6 = v2 + 1;
  v7 = v8;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v6 = v8;
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v7 + 24) >> 1)
  {
    v10 = *v3;
    if (*v3)
    {
      goto LABEL_5;
    }
  }

  else
  {
    if (*(v7 + 16) <= v5)
    {
      v14 = v5;
    }

    else
    {
      v14 = *(v7 + 16);
    }

    sub_1B03A8208(isUniquelyReferenced_nonNull_native, v14, 0);
    v7 = *v6;
    v10 = *v3;
    if (*v3)
    {
LABEL_5:
      swift_beginAccess();
      v11 = *(v10 + 16) & 0x3FLL;
      v12 = MEMORY[0x1B27256A0](v5);
      if (a2)
      {
        v13 = v12;
        if (v11 >= v12)
        {
          goto LABEL_20;
        }
      }

      else
      {
        v16 = v12;
        swift_beginAccess();
        v12 = v16;
        v13 = *(v10 + 24) & 0x3FLL;
        if (v11 >= v12)
        {
          goto LABEL_20;
        }
      }

LABEL_16:
      if (v13 <= v12)
      {
        v15 = v12;
      }

      else
      {
        v15 = v13;
      }

      goto LABEL_30;
    }
  }

  v12 = MEMORY[0x1B27256A0](v5);
  v11 = 0;
  if (a2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v12 > 0)
  {
    goto LABEL_16;
  }

LABEL_20:
  if (v13 <= v12)
  {
    v17 = v12;
  }

  else
  {
    v17 = v13;
  }

  result = MEMORY[0x1B27256A0](*(v7 + 16));
  if (result <= v17)
  {
    v18 = v17;
  }

  else
  {
    v18 = result;
  }

  if (v18 < v11)
  {
    if (v13 <= v18)
    {
      v15 = v18;
    }

    else
    {
      v15 = v13;
    }

LABEL_30:
    v19 = sub_1B0BCA150(v7, v15, 0, v13);

    *v3 = v19;
    return result;
  }

  if (!v10 || (result = swift_isUniquelyReferenced_native(), (result & 1) != 0))
  {
    v20 = *v3;
    if (*v3)
    {
      goto LABEL_35;
    }

LABEL_39:
    if (!v13)
    {
      return result;
    }

    __break(1u);
    goto LABEL_41;
  }

  if (!*v3)
  {
LABEL_42:
    __break(1u);
    return result;
  }

  v20 = sub_1B0E43578();

  *v3 = v20;
  if (!v20)
  {
    goto LABEL_39;
  }

LABEL_35:
  result = swift_beginAccess();
  if ((*(v20 + 24) & 0x3FLL) != v13)
  {
    *(v20 + 24) = *(v20 + 24) & 0xFFFFFFFFFFFFFFC0 | v13 & 0x3F;
  }

  return result;
}

char *sub_1B03A4DAC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4CB0, &unk_1B0ED5D30);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1B03A4EB8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4CA8, &qword_1B0EC9BA0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = (v11 - 32 + ((v11 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[2 * v8])
    {
      memmove(v12, v13, 2 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 2 * v8);
  }

  return v10;
}

char *sub_1B03A4FB4(char *a1, int64_t a2, char a3)
{
  result = sub_1B03A4EB8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t *MailboxName.inbox.unsafeMutableAddressor()
{
  if (qword_1EB6DE998 != -1)
  {
    swift_once();
  }

  return &static MailboxName.inbox;
}

uint64_t _s16IMAP2Persistence17MailboxOfInterestV17LocalModificationO21__derived_enum_equalsySbAE_AEtFZ_0(uint64_t a1, int a2, unint64_t a3, int a4)
{
  if (a1)
  {
    if (a1 == 1)
    {
      if (a3 == 1)
      {
        return 1;
      }
    }

    else if (a1 == 2)
    {
      if (a3 == 2)
      {
        return 1;
      }
    }

    else if (a3 >= 3 && a2 == a4 && (sub_1B04520BC(a1, a3) & 1) != 0)
    {
      return 1;
    }
  }

  else if (!a3)
  {
    return 1;
  }

  return 0;
}

char *sub_1B03A50A4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B03A50C4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1B03A50D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v7 = v3[1];
  v8 = *(v7 + 16);
  v9 = v7 + 32;
  if (*v3)
  {
    v10 = sub_1B0BA7CA4(a2, v4, v9, v8, (*v3 + 16), *v3 + 32);
    v12 = v11;
    if (v13)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v10 = sub_1B03A912C(a2, v4, v9, v8);
    v12 = 0;
    if (v20)
    {
LABEL_3:
      if ((a1 & 0x100000000) != 0)
      {
      }

      else
      {
        sub_1B03A5284(a2, v4, v12);

        v16 = v3[2];
        v14 = v3 + 2;
        v15 = v16;
        result = swift_isUniquelyReferenced_nonNull_native();
        *v14 = v16;
        if ((result & 1) == 0)
        {
          result = sub_1B03A50A4(0, *(v15 + 16) + 1, 1);
          v15 = *v14;
        }

        v19 = *(v15 + 16);
        v18 = *(v15 + 24);
        if (v19 >= v18 >> 1)
        {
          result = sub_1B03A50A4((v18 > 1), v19 + 1, 1);
          v15 = *v14;
        }

        *(v15 + 16) = v19 + 1;
        *(v15 + 4 * v19 + 32) = a1;
        *v14 = v15;
      }

      return result;
    }
  }

  v21 = v10;

  if ((a1 & 0x100000000) != 0)
  {
    sub_1B0BCAE88(v21, v12, v22);

    return sub_1B0BCB25C(v21, sub_1B03A91CC);
  }

  else
  {
    v23 = v3[2];
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1B03A91CC(v23);
      v23 = result;
    }

    if ((v21 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v21 < *(v23 + 16))
    {
      *(v23 + 4 * v21 + 32) = a1;
      v3[2] = v23;
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1B03A5284(uint64_t a1, int a2, uint64_t a3)
{
  v4 = v3;
  v9 = v3[1];
  v7 = v3 + 1;
  v8 = v9;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  result = swift_isUniquelyReferenced_nonNull_native();
  *v7 = v9;
  if ((result & 1) == 0)
  {
    result = sub_1B03A8208(0, *(v8 + 16) + 1, 1);
    v8 = *v7;
  }

  v12 = *(v8 + 16);
  v11 = *(v8 + 24);
  if (v12 >= v11 >> 1)
  {
    result = sub_1B03A8208((v11 > 1), v12 + 1, 1);
    v8 = *v7;
  }

  *(v8 + 16) = v12 + 1;
  v13 = v8 + 16 * v12;
  *(v13 + 32) = a1;
  *(v13 + 40) = a2;
  v4[1] = v8;
  v14 = *v4;
  if (*v4)
  {
    swift_beginAccess();
    if (MEMORY[0x1B2725670](*(v14 + 16) & 0x3FLL) > v12)
    {
      result = swift_isUniquelyReferenced_native();
      v15 = *v4;
      if ((result & 1) == 0)
      {
        if (!v15)
        {
LABEL_16:
          __break(1u);
          return result;
        }

        v16 = sub_1B0E43578();

        *v4 = v16;
        v15 = v16;
      }

      if (v15)
      {
        return sub_1B0E43518();
      }

      __break(1u);
      goto LABEL_16;
    }
  }

  else if (v12 < 0xF)
  {
    return result;
  }

  return sub_1B0BCA00C();
}

void sub_1B03A53FC(unint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for UntaggedResponse(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v72 - v9;
  v11 = type metadata accessor for State.Logger(0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    return;
  }

  v15 = *(a1 + 24);
  v16 = v15 >> 60;
  if ((v15 >> 60) > 8)
  {
    goto LABEL_15;
  }

  if (((1 << v16) & 0x1D6) != 0)
  {
    return;
  }

  if (v16 != 3)
  {
    if (v16 == 5)
    {
      if (!*(v2 + 48))
      {
        return;
      }

      v26 = *((v15 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
      v25 = *((v15 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
      v27 = *((v15 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v28 = *((v15 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v29 = *((v15 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      sub_1B044CD04(v15);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0B6DCB0(v27, v26, v25);
      sub_1B0B8FD1C(v29, v28, &v91);

      sub_1B0B6DCF0(v27, v26, v25);

      sub_1B0398EFC(&v91, &qword_1EB6E4568, &qword_1B0EC55C0);
LABEL_24:
      sub_1B044CEF8(v15);
      return;
    }

LABEL_15:
    v76 = v12;
    v80 = v2;
    v30 = *(v15 + 16);
    v31 = *(v15 + 40);
    v32 = *(v15 + 24);
    v33 = *(v15 + 56);
    v34 = *(v15 + 88);
    v35 = *(v15 + 72);
    v36 = *(v15 + 104);
    v37 = *(v15 + 120);
    v38 = *(v15 + 152);
    v39 = *(v15 + 136);
    v40 = *(v15 + 184);
    v100 = *(v15 + 168);
    v101 = v40;
    v97 = v37;
    v98 = v39;
    v99 = v38;
    v93 = v33;
    v94 = v35;
    v95 = v34;
    v96 = v36;
    v91 = v32;
    v92 = v31;
    sub_1B044CD04(v15);
    sub_1B044CD04(v15);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B039F420(&v91, v81);
    sub_1B039F4CC(v30, &v91, v84);
    v41 = v84[0];
    v42 = v84[1];
    v43 = v84[2];
    v78 = v84[4];
    v79 = v84[3];
    v77 = v85 | (v86 << 16);
    sub_1B0B6DD30(a2, v14, type metadata accessor for State.Logger);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v44 = sub_1B0E43988();
    v45 = sub_1B0E45908();
    if (os_log_type_enabled(v44, v45))
    {
      v74 = v41 >> 56;
      v72 = (v41 & 0x100) == 0;
      v73 = (v41 & 0x1000000) == 0;
      v46 = swift_slowAlloc();
      v75 = v43;
      v47 = v46;
      *v46 = 68159744;
      *(v46 + 4) = 2;
      *(v46 + 8) = 256;
      v48 = *(v76 + 20);
      LODWORD(v76) = v45;
      v49 = v41;
      v50 = v42;
      v51 = v14[v48];
      sub_1B03B88DC(v14);
      *(v47 + 10) = v51;
      v42 = v50;
      v41 = v49;
      *(v47 + 11) = 1024;
      *(v47 + 13) = (v49 & 1) == 0;
      *(v47 + 17) = 1024;
      *(v47 + 19) = v72;
      *(v47 + 23) = 1024;
      *(v47 + 25) = (v49 & 0xFF0000) == 0;
      *(v47 + 29) = 1024;
      *(v47 + 31) = v73;
      *(v47 + 35) = 1024;
      *(v47 + 37) = (v42 & 1) == 0;
      *(v47 + 41) = 1024;
      v52 = v74;
      *(v47 + 43) = v74 == 1;
      *(v47 + 47) = 1024;
      *(v47 + 49) = v52 == 2;
      _os_log_impl(&dword_1B0389000, v44, v76, "[%.*hhx] Server support: move: %{BOOL}d, Gmail labels: %{BOOL}d, cond-store: %{BOOL}d, message-seq-numbers: %{BOOL}d special-use: %{BOOL}d list-status: %{BOOL}d status-mod-seq: %{BOOL}d", v47, 0x35u);
      v53 = v47;
      v43 = v75;
      MEMORY[0x1B272C230](v53, -1, -1);
    }

    else
    {
      sub_1B03B88DC(v14);
    }

    v54 = v80;
    sub_1B044CEF8(v15);

    if (*v54 == 2)
    {
      sub_1B044CEF8(v15);
      if (v41 == 2)
      {
        return;
      }
    }

    else if (v41 == 2)
    {
      sub_1B044CEF8(v15);
    }

    else
    {
      v60 = *(v54 + 16);
      v61 = *(v54 + 32);
      v62 = *(v54 + 40) | (*(v54 + 42) << 16);
      v87[0] = *v54;
      v87[1] = v60;
      v88 = v61;
      v89 = v62;
      v90 = BYTE2(v62);
      v81[0] = v41;
      v81[1] = v42;
      v81[2] = v43;
      v81[3] = v79;
      v81[4] = v78;
      v82 = v77;
      v83 = BYTE2(v77);
      v63 = sub_1B0B6D9B8(v87, v81);
      sub_1B044CEF8(v15);
      if (v63)
      {
        return;
      }
    }

    *v54 = v41;
    *(v54 + 8) = v42;
    v64 = v78;
    v65 = v79;
    *(v54 + 16) = v43;
    *(v54 + 24) = v65;
    *(v54 + 32) = v64;
    BYTE2(v64) = BYTE2(v77);
    *(v54 + 40) = v77;
    *(v54 + 42) = BYTE2(v64);
    return;
  }

  v17 = swift_projectBox();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 7)
  {
    sub_1B0B6DD30(v17, v10, type metadata accessor for UntaggedResponse);
    v55 = *v10;
    v56 = *(v10 + 1);
    v57 = *(v10 + 4);
    v58 = v10[20];
    v59 = *(v10 + 3);
    v79 = *(v10 + 4);
    v80 = v59;
    sub_1B044CD04(v15);
    sub_1B044CD04(v15);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    RemoteMailbox.init(attributes:path:)(v55, v56, v57 | (v58 << 32), &v91);
    sub_1B0B6C4B0(&v91);
    sub_1B044CEF8(v15);

    sub_1B039E440(&v91);

    goto LABEL_24;
  }

  if (EnumCaseMultiPayload == 9)
  {
    sub_1B0B6DD30(v17, v7, type metadata accessor for UntaggedResponse);
    v19 = *v7;
    v20 = *(v7 + 2);
    v21 = *(v7 + 6);
    v95 = *(v7 + 5);
    v96 = v21;
    v22 = *(v7 + 8);
    v97 = *(v7 + 7);
    v98 = v22;
    v23 = *(v7 + 2);
    v91 = *(v7 + 1);
    v92 = v23;
    v24 = *(v7 + 4);
    v93 = *(v7 + 3);
    v94 = v24;
    if (BYTE8(v91) & 1) != 0 || (v93 & 1) != 0 || (BYTE8(v93))
    {

      sub_1B0B11B9C(&v91);
    }

    else
    {
      v66 = v91;
      v67 = HIDWORD(v92);
      v68 = DWORD1(v93);
      sub_1B044CD04(v15);
      sub_1B044CD04(v15);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0B11B9C(&v91);
      if (*(v2 + 48))
      {
        v79 = v94;
        v80 = BYTE8(v94);
        v78 = v96;
        v77 = BYTE8(v96);
        v70 = sub_1B0B6C038(v81, v19, v20);
        if (*v69)
        {
          *(v69 + 24) = v66;
          *(v69 + 32) = v67 | (v68 << 32);
          v71 = v80;
          *(v69 + 40) = v79;
          *(v69 + 48) = v71;
          *(v69 + 56) = v78;
          *(v69 + 64) = v77;
        }

        (v70)(v81, 0);
        sub_1B044CEF8(v15);
      }

      else
      {

        sub_1B044CEF8(v15);
      }
    }

    goto LABEL_24;
  }
}

uint64_t sub_1B03A5BE4(uint64_t (*a1)(uint64_t, uint64_t), uint64_t a2, void (*a3)(unint64_t), void (*a4)(void, void, void, void, void))
{
  v5 = v4;
  v284 = a3;
  v285 = a4;
  v8 = type metadata accessor for Task.Logger(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v269 = (v256 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for StateWithTasks(0);
  MEMORY[0x1EEE9AC00](v10);
  v283 = v256 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v292 = type metadata accessor for RunningTask(0);
  v298 = *(v292 - 8);
  MEMORY[0x1EEE9AC00](v292);
  v273 = v256 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v287 = v256 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v305 = v256 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v286 = v256 - v18;
  v260 = type metadata accessor for State.Logger(0);
  MEMORY[0x1EEE9AC00](v260);
  v288 = v256 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v259 = v256 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v261 = v256 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v263 = v256 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v28 = v256 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v31 = v256 - v30;
  v32 = type metadata accessor for Command(0);
  MEMORY[0x1EEE9AC00](v32);
  v34 = v256 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = v5[72];
  v270 = a1;
  v271 = a2;
  if (v35 == 2)
  {
    v304 = v10;
    swift_storeEnumTagMultiPayload();
    v36 = sub_1B03A8228(MEMORY[0x1E69E7CC0]);
    sub_1B03A0A2C(v34, v36, v37, v5, a1, a2);
    v282 = 0;
    sub_1B0390574(v34, type metadata accessor for Command);

    v10 = v304;
    sub_1B0390720(&v5[*(v304 + 28)], v31, type metadata accessor for State.Logger);
    sub_1B0390720(v31, v28, type metadata accessor for State.Logger);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v38 = sub_1B0E43988();
    v39 = sub_1B0E458D8();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 68157952;
      *(v40 + 4) = 2;
      *(v40 + 8) = 256;
      v41 = v28[*(v260 + 20)];
      sub_1B0390574(v28, type metadata accessor for State.Logger);
      *(v40 + 10) = v41;
      _os_log_impl(&dword_1B0389000, v38, v39, "[%.*hhx] Creating initial connection to get capabilities.", v40, 0xBu);
      MEMORY[0x1B272C230](v40, -1, -1);
    }

    else
    {
      sub_1B0390574(v28, type metadata accessor for State.Logger);
    }

    sub_1B0390574(v31, type metadata accessor for State.Logger);
  }

  else
  {
    v282 = 0;
  }

  v325 = sub_1B03AC0B0(v5[264], *(v5 + 34));
  v42 = *(v10 + 28);
  v43 = *(v10 + 32);
  *&v44 = 68157952;
  v257 = v44;
  *(&v44 + 1) = 2;
  v264 = xmmword_1B0EC1E70;
  *&v44 = 68158723;
  v258 = v44;
  v299 = v5;
  v289 = v42;
  v272 = v43;
LABEL_9:
  v45 = sub_1B0398D1C();
  v48 = sub_1B0BC9560(v45, v47, v46 & 1);
  v50 = v49;
  v52 = v51;
  v53 = *&v5[v43];
  v54 = *(v5 + 200);
  v340[1] = *(v5 + 184);
  v340[2] = v54;
  v341[0] = *(v5 + 216);
  *(v341 + 12) = *(v5 + 228);
  v340[0] = *(v5 + 168);
  sub_1B03A3668(v340, &v313);
  sub_1B0BCC328(v48, v50, v52, &v5[v42], v53, v340);
  sub_1B03AD10C(v340);
  v262 = *(v50 + 16);
  v290 = v50;
  v291 = v48;
  v276 = v52;
  sub_1B03AD160(v48, v50, v52, &v5[v42]);
  v274 = 0;
LABEL_13:
  memcpy(v339, v5, sizeof(v339));
  v60 = *(v5 + 34);
  v61 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v62 = sub_1B03ADA68(v61);
  v64 = v63;
  v66 = v65;

  v67 = v5[264];
  swift_bridgeObjectRetain_n();
  sub_1B03AE4B8(v62, v64, v66, v291, v290, v276, v339, v309, v60);

  sub_1B03B5C80(v309, &v323, &qword_1EB6E4CF0, &qword_1B0EC9BD0);
  if (BYTE8(v324[1]) == 255)
  {
    sub_1B0398EFC(&v323, &qword_1EB6E4CF0, &qword_1B0EC9BD0);
    v75 = v305;
    v69 = MEMORY[0x1E69E7CD0];
  }

  else
  {
    v313 = v323;
    v314[0] = v324[0];
    *(v314 + 9) = *(v324 + 9);
    sub_1B0B7ABE4(&v313, &v323);
    v68 = v286;
    sub_1B0B75280(&v323, v67, v286);
    sub_1B0BAF6BC(v68 + *(v292 + 28));
    sub_1B0B7D174(v68);
    sub_1B0390574(v68, type metadata accessor for RunningTask);
    sub_1B0B7ABE4(&v313, &v323);
    v69 = MEMORY[0x1E69E7CD0];
    if (BYTE8(v324[1]))
    {
      sub_1B0450C74(&v323, v306);
      v70 = v307;
      v71 = v308;
      __swift_project_boxed_opaque_existential_0(v306, v307);
      (*(v71 + 32))(&v326, v70, v71);
      v72 = v327;
      v73 = v328;
      v333 = v326;
      sub_1B039E440(&v333);
      __swift_destroy_boxed_opaque_existential_0Tm(v306);
      sub_1B03AB2E0(&v323, v72, v73);

      v74 = &v313;
    }

    else
    {
      sub_1B0B7AC40(&v313);
      v74 = &v323;
    }

    sub_1B0B7AC40(v74);
    v274 = 1;
    v75 = v305;
  }

  v293 = sub_1B03C8E00(MEMORY[0x1E69E7CC0]);
  v76 = (v312 + 56);
  v77 = 1 << *(v312 + 32);
  if (v77 < 64)
  {
    v78 = ~(-1 << v77);
  }

  else
  {
    v78 = -1;
  }

  v79 = v78 & *(v312 + 56);
  v80 = v339[21];
  v296 = v339[23];
  v297 = v339[22];
  LODWORD(v300) = LOBYTE(v339[24]);
  v81 = (v77 + 63) >> 6;
  v303 = v312;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v82 = 0;
  v301 = v81;
  v302 = v76;
  while (2)
  {
    v294 = v80 + 32;
    v295 = v80;
    if (v79)
    {
      goto LABEL_29;
    }

    do
    {
LABEL_25:
      v83 = v82 + 1;
      if (__OFADD__(v82, 1))
      {
        __break(1u);
        goto LABEL_171;
      }

      if (v83 >= v81)
      {

        v55 = v293;
        if (v293[2])
        {
          v56 = swift_allocObject();
          *(v56 + 16) = v55;
          v284(v56 | 0x9000000000000004);
        }

        else
        {
        }

        v58 = v288;
        v57 = v289;
        sub_1B03B5C80(v309, &v313, &qword_1EB6E4CF0, &qword_1B0EC9BD0);
        sub_1B03C8F58(v309);
        v59 = BYTE8(v314[1]);
        sub_1B0398EFC(&v313, &qword_1EB6E4CF0, &qword_1B0EC9BD0);
        if (v59 != 255)
        {
          goto LABEL_13;
        }

        v160 = v291;

        v161 = v290;

        v162 = static MonotonicTime.now()();
        v163 = *(v5 + 34);
        v164 = sub_1B03C8FC0(v162, v163, sub_1B0452308, 0, v160, v161);

        v268 = *(v164 + 16);
        if (v268)
        {
          v165 = 0;
          v256[1] = v164;
          v267 = v164 + 32;
          v266 = v5[264];
          v166 = v287;
          while (1)
          {
            v167 = *(v267 + 8 * v165);
            if ((v167 & 0x8000000000000000) != 0)
            {
              goto LABEL_174;
            }

            if (v167 >= v163[2])
            {
              goto LABEL_175;
            }

            v168 = (*(v298 + 80) + 32) & ~*(v298 + 80);
            v302 = v163;
            v169 = v163 + v168;
            v304 = *(v298 + 72) * v167;
            sub_1B0390720(v163 + v168 + v304, v166, type metadata accessor for RunningTask);
            v170 = v166 + *(v292 + 36);
            v171 = *v170;
            LODWORD(v297) = *(v170 + 8);
            *v170 = 0;
            v300 = v170;
            *(v170 + 8) = 1;
            v172 = sub_1B0398D1C();
            v295 = v173;
            v296 = v172;
            LODWORD(v294) = v174;
            v175 = v283;
            sub_1B0390720(v5, v283, type metadata accessor for StateWithTasks);
            memcpy(v338, v175, sizeof(v338));
            v176 = v338[26];
            v177 = v338[15];
            v301 = v165;
            v303 = v167;
            v277 = v168;
            v278 = v169;
            v275 = v171;
            v293 = v338[22];
            v280 = v338[21];
            v281 = v338[23];
            LODWORD(v279) = LOBYTE(v338[24]);
            if ((v338[24] & 1) == 0)
            {
              goto LABEL_121;
            }

            if (!v338[15] || !*(v338[15] + 16))
            {
              v199 = *(v338[21] + 16);
              if (v199)
              {
                v200 = (v338[21] + 32);
                do
                {
                  v201 = *v200;
                  v202 = v200[2];
                  v314[0] = v200[1];
                  v314[1] = v202;
                  v313 = v201;
                  v203 = v200[3];
                  v204 = v200[4];
                  v205 = v200[6];
                  v317 = v200[5];
                  v318 = v205;
                  v315 = v203;
                  v316 = v204;
                  v206 = v200[7];
                  v207 = v200[8];
                  v208 = v200[10];
                  v321 = v200[9];
                  v322 = v208;
                  v319 = v206;
                  v320 = v207;
                  v209 = DWORD2(v314[0]);
                  sub_1B03A35B8(&v313, v309);
                  v210 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
                  LOBYTE(v209) = MailboxName.isInbox.getter(v210, v209);

                  sub_1B03A3614(&v313);
                  if (v209)
                  {
                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4CB0, &unk_1B0ED5D30);
                    v211 = swift_allocObject();
                    *(v211 + 16) = v264;
                    v212 = MailboxName.inbox.unsafeMutableAddressor();
                    v213 = *(v212 + 2);
                    *(v211 + 32) = *v212;
                    *(v211 + 40) = v213;
                    v178 = sub_1B03A48FC(v211);
                    swift_setDeallocating();
                    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
                    sub_1B039E440((v211 + 32));
                    swift_deallocClassInstance();
                    goto LABEL_125;
                  }

                  v200 += 11;
                  --v199;
                }

                while (v199);
              }

LABEL_121:
              v178 = MEMORY[0x1E69E7CD0];
              goto LABEL_125;
            }

            v265 = v338[26];
            v178 = MEMORY[0x1E69E7CD0];
            *&v323 = MEMORY[0x1E69E7CD0];
            v179 = *(v338[21] + 16);
            if (!v179)
            {
              goto LABEL_123;
            }

            v180 = (v338[21] + 32);
            do
            {
              v181 = *v180;
              v182 = v180[2];
              v314[0] = v180[1];
              v314[1] = v182;
              v313 = v181;
              v183 = v180[3];
              v184 = v180[4];
              v185 = v180[6];
              v317 = v180[5];
              v318 = v185;
              v315 = v183;
              v316 = v184;
              v186 = v180[7];
              v187 = v180[8];
              v188 = v180[10];
              v321 = v180[9];
              v322 = v188;
              v319 = v186;
              v320 = v187;
              v189 = *&v314[0];
              v190 = DWORD2(v314[0]);
              v191 = v317;
              v192 = *(&v316 + 1);
              sub_1B03A35B8(&v313, v309);
              if ((static MailboxOfInterest.LocalModification.__derived_enum_equals(_:_:)(v192, v191, 0, 0) & 1) == 0)
              {
                sub_1B03A3614(&v313);
                goto LABEL_104;
              }

              v193 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
              if (MailboxName.isInbox.getter(v193, v190))
              {
LABEL_107:
                sub_1B03AB2E0(v309, v189, v190);
                sub_1B03A3614(&v313);

                goto LABEL_104;
              }

              if (*(v177 + 16))
              {
                v194 = sub_1B03AB888(v189, v190);
                if (v195)
                {
                  v196 = *(*(v177 + 56) + 72 * v194 + 14);
                  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
                  v197 = *RemoteMailbox.Attributes.noSelect.unsafeMutableAddressor();
                  v198 = *RemoteMailbox.Attributes.nonExistent.unsafeMutableAddressor();

                  if (v197)
                  {
                    if ((v198 & ~v197) == 0)
                    {
LABEL_115:
                      if ((v197 & v196) == 0)
                      {
                        goto LABEL_107;
                      }

                      goto LABEL_116;
                    }
                  }

                  else if (!v198)
                  {
                    goto LABEL_107;
                  }

                  v197 |= v198;
                  goto LABEL_115;
                }
              }

LABEL_116:

              sub_1B03A3614(&v313);
LABEL_104:
              v180 += 11;
              --v179;
            }

            while (v179);
            v178 = v323;
LABEL_123:
            v176 = v265;
LABEL_125:
            v214 = LOBYTE(v338[3]);
            v215 = BYTE1(v338[3]);
            v216 = v338[4];
            v217 = v338[7];
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            v218 = sub_1B0397D14();
            v219 = v218;
            if (v216 == 3 || v216 == 2)
            {

              v220 = 1;
              goto LABEL_128;
            }

            v241 = sub_1B0BAE1A4(v218);
            if (v215)
            {
              goto LABEL_154;
            }

            if (v216 == 1)
            {
              if (v214)
              {
                v220 = v214 == 1;
                goto LABEL_155;
              }

LABEL_154:
              v220 = v241 ^ 1;
              goto LABEL_155;
            }

            if (v216 || (v214 - 1) >= 2)
            {
              goto LABEL_154;
            }

            v220 = 0;
LABEL_155:
            sub_1B0397E04(&unk_1F2710548, v217);
            sub_1B0BAE1A4(v219);
            v247 = sub_1B039109C(v217);

            if (v247 & 1) == 0 && (v215)
            {
              sub_1B0BAE1A4(v219);
            }

LABEL_128:

            sub_1B03A8380(v280, v293, v281, v279 & 1, v177, v178, v220 & 1, v176);
            v222 = v221;
            v224 = v223;

            v225 = v283;
            rawValue = sub_1B03AC81C(v222, v224).elements._rawValue;

            sub_1B03C8B98(*(v225 + 264), *(v225 + 272));
            v228 = v227;
            sub_1B0390574(v225, type metadata accessor for StateWithTasks);
            *&v313 = v291;
            *(&v313 + 1) = v290;

            v229 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5198, "$]\t");
            v230 = sub_1B039E3F8(&qword_1EB6DC958, &qword_1EB6E5198, "$]\t", MEMORY[0x1E69955C0]);
            v231 = MailboxesSelectionUsage.removing<A>(notContainedIn:)(&v313, rawValue, v229, v230);

            v232 = *(v292 + 28);
            v233 = v287;
            v234 = v269;
            sub_1B0390720(v287 + v232, v269, type metadata accessor for Task.Logger);
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            sub_1B0452640(v228);
            *(&v255 + 1) = v295;
            *&v255 = v296;
            v5 = v299;
            v235 = v282;
            sub_1B0452650(v234, v299, v284, v285, v233, v299, v270, v271, v255, v294 & 1, v231, v228);
            if (!v235)
            {
              sub_1B0390574(v234, type metadata accessor for Task.Logger);

              sub_1B03C81E4(v228);
              v236 = v273;
              v237 = v233;
LABEL_140:
              v43 = v272;
              v242 = v303;
              goto LABEL_142;
            }

            sub_1B0390574(v234, type metadata accessor for Task.Logger);
            sub_1B0450DB0(v233, &v313);
            v236 = v273;
            v237 = v233;
            if (!BYTE13(v314[1]))
            {

              sub_1B0B7ABB4(v233);
              *v233 = 1;
              *(v233 + 8) = 0u;
              *(v233 + 24) = 0u;
              *(v233 + 37) = 0;
              *(v233 + 45) = 2;
              sub_1B0B7ABB4(&v313);
LABEL_139:

              sub_1B03C81E4(v228);
              goto LABEL_140;
            }

            if (BYTE13(v314[1]) == 1)
            {
              sub_1B0450C74(&v313, v309);
              v238 = v310;
              v239 = v311;
              __swift_project_boxed_opaque_existential_0(v309, v310);
              v240 = v238;
              v236 = v273;
              (*(v239 + 136))(v5, v287 + v232, v240, v239);
              v237 = v287;

              sub_1B0B7ABB4(v237);
              *v237 = 1;
              *(v237 + 8) = 0u;
              *(v237 + 24) = 0u;
              *(v237 + 37) = 0;
              *(v237 + 45) = 2;
              __swift_destroy_boxed_opaque_existential_0Tm(v309);
              goto LABEL_139;
            }

            v43 = v272;
            v242 = v303;

            sub_1B03C81E4(v228);
LABEL_142:

            sub_1B03C81E4(v228);
            v243 = v300;
            if (((*(v300 + 8) | v297) & 1) == 0)
            {
              v244 = *v300;
              if (v275 < *v300)
              {
                v244 = v275;
              }

              *v300 = v244;
              *(v243 + 8) = 0;
            }

            sub_1B0390720(v237, v236, type metadata accessor for RunningTask);
            v245 = v301;
            v163 = v302;
            if (v242 >= v302[2])
            {
              goto LABEL_176;
            }

            v282 = 0;
            v246 = v286;
            sub_1B0390720(&v278[v304], v286, type metadata accessor for RunningTask);
            sub_1B0454F70(v266, v246);
            sub_1B0390574(v246, type metadata accessor for RunningTask);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v163 = sub_1B0B8CA2C(v163);
            }

            v166 = v287;
            v57 = v289;
            sub_1B0390574(v287, type metadata accessor for RunningTask);
            if (v242 >= v163[2])
            {
              goto LABEL_177;
            }

            v165 = v245 + 1;
            sub_1B0450CE0(v236, v163 + v277 + v304, type metadata accessor for RunningTask);
            *(v5 + 34) = v163;
            v58 = v288;
            if (v165 == v268)
            {

              goto LABEL_159;
            }
          }
        }

        v43 = v272;
LABEL_159:
        if (sub_1B03C9BC0())
        {
          if (v274)
          {
          }

          else
          {
            if (*(*(v5 + 34) + 16) || !*(*(v5 + 31) + 16))
            {
              goto LABEL_172;
            }

            v248 = v259;
            sub_1B0390720(&v5[v289], v259, type metadata accessor for State.Logger);
            sub_1B0390720(v248, v58, type metadata accessor for State.Logger);
            sub_1B0394868();
            sub_1B0394868();
            sub_1B0394868();
            v249 = sub_1B0E43988();
            v250 = sub_1B0E458D8();
            if (os_log_type_enabled(v249, v250))
            {
              v251 = swift_slowAlloc();
              *v251 = v257;
              *(v251 + 4) = 2;
              *(v251 + 8) = 256;
              v252 = *(v288 + *(v260 + 20));
              sub_1B0390574(v288, type metadata accessor for State.Logger);
              *(v251 + 10) = v252;
              _os_log_impl(&dword_1B0389000, v249, v250, "[%.*hhx] Re-starting blocked non-mailbox tasks.", v251, 0xBu);
              MEMORY[0x1B272C230](v251, -1, -1);
            }

            else
            {
              sub_1B0390574(v58, type metadata accessor for State.Logger);
            }

            sub_1B0390574(v259, type metadata accessor for State.Logger);

            *(v5 + 31) = MEMORY[0x1E69E7CC0];
          }

          v42 = v289;
        }

        else
        {

          v42 = v57;
        }

        goto LABEL_9;
      }

      v79 = v76[v83];
      ++v82;
    }

    while (!v79);
    v82 = v83;
    while (1)
    {
LABEL_29:
      v84 = *(v303 + 48) + ((v82 << 10) | (16 * __clz(__rbit64(v79))));
      v85 = *v84;
      v304 = *(v84 + 8);
      v86 = *(v5 + 34);
      v306[0] = v69;
      v87 = v69;
      v88 = *(v86 + 16);
      if (v88)
      {
        v89 = v298;
        v90 = v86 + ((*(v298 + 80) + 32) & ~*(v298 + 80));
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v91 = *(v89 + 72);
        do
        {
          sub_1B0390720(v90, v75, type metadata accessor for RunningTask);
          sub_1B0450DB0(v75, &v313);
          if (BYTE13(v314[1]))
          {
            if (BYTE13(v314[1]) == 1)
            {
              sub_1B0450C74(&v313, &v323);
              v92 = *(&v324[0] + 1);
              v93 = *&v324[1];
              __swift_project_boxed_opaque_existential_0(&v323, *(&v324[0] + 1));
              (*(v93 + 32))(&v329, v92, v93);
              v94 = v330;
              v95 = v331;
              v332 = v329;
              sub_1B039E440(&v332);
              __swift_destroy_boxed_opaque_existential_0Tm(&v323);
              v96 = v94;
              v75 = v305;
              sub_1B03AB2E0(&v313, v96, v95);
            }

            sub_1B0390574(v75, type metadata accessor for RunningTask);
          }

          else
          {
            sub_1B0390574(v75, type metadata accessor for RunningTask);
            sub_1B0B7ABB4(&v313);
          }

          v90 += v91;
          --v88;
        }

        while (v88);
        v97 = v306[0];
        v5 = v299;
        v69 = MEMORY[0x1E69E7CD0];
      }

      else
      {
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v97 = v87;
        v69 = v87;
      }

      v79 &= v79 - 1;
      if (*(v97 + 16))
      {
        sub_1B0E46C28();
        v98 = v304 | (v304 << 32);
        MEMORY[0x1B2728D70](v98);
        v99 = sub_1B0E46CB8();
        v100 = -1 << *(v97 + 32);
        v101 = v99 & ~v100;
        if ((*(v97 + 56 + ((v101 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v101))
        {
          v102 = ~v100;
          do
          {
            v103 = *(v97 + 48) + 16 * v101;
            if ((*(v103 + 8) | (*(v103 + 8) << 32)) == v98)
            {
              v104 = *v103;
              v105 = *(v104 + 16);
              if (v105 == *(v85 + 16))
              {
                if (!v105 || v104 == v85)
                {
LABEL_50:

                  goto LABEL_67;
                }

                v106 = 32;
                while (*(v104 + v106) == *(v85 + v106))
                {
                  ++v106;
                  if (!--v105)
                  {
                    goto LABEL_50;
                  }
                }
              }
            }

            v101 = (v101 + 1) & v102;
          }

          while (((*(v97 + 56 + ((v101 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v101) & 1) != 0);
        }
      }

      if (v300)
      {
        v107 = v295;
        v108 = *(v295 + 16);
        if (v108)
        {
          break;
        }
      }

LABEL_66:

      v75 = v305;
LABEL_67:
      v81 = v301;
      v76 = v302;
      if (!v79)
      {
        goto LABEL_25;
      }
    }

    v109 = 0;
    while (1)
    {
      v110 = v294 + 176 * v109;
      if ((*(v110 + 24) | (*(v110 + 24) << 32)) == (v304 | (v304 << 32)))
      {
        v111 = *(v110 + 16);
        v112 = *(v111 + 16);
        if (v112 == *(v85 + 16))
        {
          break;
        }
      }

LABEL_54:
      if (++v109 == v108)
      {
        goto LABEL_66;
      }
    }

    if (v112)
    {
      v113 = v111 == v85;
    }

    else
    {
      v113 = 1;
    }

    if (v113)
    {
LABEL_69:
      sub_1B03B9A2C(v295, v297, v296, 1);
      v116 = v107;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v116 = sub_1B03D0E54(v107);
      }

      if (v109 >= *(v116 + 2))
      {
        __break(1u);
LABEL_174:
        __break(1u);
LABEL_175:
        __break(1u);
LABEL_176:
        __break(1u);
LABEL_177:
        __break(1u);
LABEL_178:
        __break(1u);
LABEL_179:
        __break(1u);
LABEL_180:
        result = sub_1B0E46BA8();
        __break(1u);
        return result;
      }

      v117 = &v116[176 * v109];
      if (*(*(v117 + 21) + 16))
      {
        *(v117 + 21) = v69;

        v118 = *(v117 + 4);
        v294 = *(v117 + 5);
        LODWORD(v280) = *(v117 + 34);
        v119 = v117[140];
        *(v5 + 22) = 0;
        *(v5 + 23) = 0;
        *(v5 + 21) = v116;
        v5[192] = 1;
        v300 = v118;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B03BB638(v107, v297, v296, 1);
        v120 = *(v5 + 200);
        v335 = *(v5 + 184);
        v336 = v120;
        v337[0] = *(v5 + 216);
        *(v337 + 12) = *(v5 + 228);
        v334 = *(v5 + 168);
        v121 = sub_1B0B2639C(v85, v304, &v334);
        LODWORD(v296) = v122;
        LODWORD(v295) = v122 & 0x100;
        if ((v122 & 0x100) != 0)
        {
          v123 = 0;
        }

        else
        {
          v123 = v121;
        }

        v297 = v123;
        v124 = v263;
        sub_1B0390720(&v5[v289], v263, type metadata accessor for State.Logger);
        v125 = v261;
        sub_1B0390720(v124, v261, type metadata accessor for State.Logger);
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v126 = sub_1B0E43988();
        v127 = sub_1B0E45908();

        v128 = os_log_type_enabled(v126, v127);
        LODWORD(v281) = v119;
        if (v128)
        {
          v129 = swift_slowAlloc();
          v279 = swift_slowAlloc();
          *&v323 = v279;
          *v129 = v258;
          *(v129 + 4) = 2;
          *(v129 + 8) = 256;
          v130 = v125;
          v131 = *(v125 + *(v260 + 20));
          sub_1B0390574(v130, type metadata accessor for State.Logger);
          *(v129 + 10) = v131;
          *(v129 + 11) = 2160;
          *(v129 + 13) = 0x786F626C69616DLL;
          *(v129 + 21) = 2085;
          *&v313 = v85;
          DWORD2(v313) = v304;
          v132 = sub_1B0E44BA8();
          v134 = sub_1B0399D64(v132, v133, &v323);

          *(v129 + 23) = v134;
          *(v129 + 31) = 2082;
          if (v281)
          {
            v135 = 0xE300000000000000;
            v136 = 7104878;
          }

          else
          {
            LODWORD(v313) = v280;
            v136 = sub_1B0E44B88();
            v135 = v137;
          }

          v138 = sub_1B0399D64(v136, v135, &v323);

          *(v129 + 33) = v138;
          _os_log_impl(&dword_1B0389000, v126, v127, "[%.*hhx] No new and no running tasks for '%{sensitive,mask.mailbox}s' with change ID %{public}s. Marking as done.", v129, 0x29u);
          v139 = v279;
          swift_arrayDestroy();
          MEMORY[0x1B272C230](v139, -1, -1);
          MEMORY[0x1B272C230](v129, -1, -1);
        }

        else
        {
          sub_1B0390574(v125, type metadata accessor for State.Logger);
        }

        v140 = v293;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v313 = v140;
        v142 = sub_1B03B8A9C(v300, v294);
        v144 = v140[2];
        v145 = (v143 & 1) == 0;
        v146 = __OFADD__(v144, v145);
        v147 = v144 + v145;
        v81 = v301;
        v76 = v302;
        if (v146)
        {
          goto LABEL_178;
        }

        v148 = v143;
        if (v140[3] >= v147)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v159 = v142;
            sub_1B0B8D4FC();
            v142 = v159;
          }
        }

        else
        {
          sub_1B0B2F9F0(v147, isUniquelyReferenced_nonNull_native);
          v142 = sub_1B03B8A9C(v300, v294);
          if ((v148 & 1) != (v149 & 1))
          {
            goto LABEL_180;
          }
        }

        v150 = v296 | (v295 >> 8);
        if (v148)
        {
          v151 = v142;

          v293 = v313;
          v152 = *(v313 + 56) + 24 * v151;
          *v152 = v280;
          *(v152 + 4) = v281;
          *(v152 + 8) = v297;
          *(v152 + 16) = v150 & 1;
          sub_1B0390574(v263, type metadata accessor for State.Logger);
        }

        else
        {
          v153 = v313;
          *(v313 + 8 * (v142 >> 6) + 64) |= 1 << v142;
          v154 = (v153[6] + 16 * v142);
          v155 = v294;
          *v154 = v300;
          v154[1] = v155;
          v156 = v153[7] + 24 * v142;
          *v156 = v280;
          *(v156 + 4) = v281;
          *(v156 + 8) = v297;
          *(v156 + 16) = v150 & 1;
          sub_1B0390574(v263, type metadata accessor for State.Logger);
          v157 = v153[2];
          v146 = __OFADD__(v157, 1);
          v158 = v157 + 1;
          if (v146)
          {
            goto LABEL_179;
          }

          v293 = v153;
          v153[2] = v158;
        }

        v75 = v305;
        v80 = v334;
        v296 = v335;
        v297 = *(&v334 + 1);
        v274 = 1;
        LODWORD(v300) = BYTE8(v335);
      }

      else
      {
        sub_1B03BB638(v107, v297, v296, 1);

        v296 = 0;
        v297 = 0;
        *(v5 + 22) = 0;
        *(v5 + 23) = 0;
        *(v5 + 21) = v116;
        v80 = v116;
        v5[192] = 1;
        v75 = v305;
        v81 = v301;
        v76 = v302;
      }

      continue;
    }

    break;
  }

  v114 = (v111 + 32);
  v115 = (v85 + 32);
  while (v112)
  {
    if (*v114 != *v115)
    {
      goto LABEL_54;
    }

    ++v114;
    ++v115;
    if (!--v112)
    {
      goto LABEL_69;
    }
  }

LABEL_171:
  __break(1u);
LABEL_172:

  v253 = v262 != 0;
  sub_1B03CA2AC(v325, &v5[v289], v5, v5);

  return v253;
}

uint64_t type metadata accessor for Command(uint64_t a1)
{
  result = qword_1EB6DD1C8;
  if (!qword_1EB6DD1C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

{
  result = qword_1EB6DE108;
  if (!qword_1EB6DE108)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B03A7A88()
{
  result = MEMORY[0x1E69E7CD0];
  if (*(v0 + 192))
  {
    v2 = *(v0 + 168);
    v3 = *(v0 + 120);
    if (v3 && *(v3 + 16))
    {
      v41 = MEMORY[0x1E69E7CD0];
      v4 = *(v2 + 16);
      if (!v4)
      {
        return result;
      }

      for (i = (v2 + 32); ; i += 11)
      {
        v6 = *i;
        v7 = i[2];
        v44 = i[1];
        v45 = v7;
        v43 = v6;
        v8 = i[3];
        v9 = i[4];
        v10 = i[6];
        v48 = i[5];
        v49 = v10;
        v46 = v8;
        v47 = v9;
        v11 = i[7];
        v12 = i[8];
        v13 = i[10];
        v52 = i[9];
        v53 = v13;
        v50 = v11;
        v51 = v12;
        v14 = v44;
        v15 = DWORD2(v44);
        v16 = v48;
        v17 = *(&v47 + 1);
        sub_1B03A35B8(&v43, v42);
        if ((static MailboxOfInterest.LocalModification.__derived_enum_equals(_:_:)(v17, v16, 0, 0) & 1) == 0)
        {
          goto LABEL_7;
        }

        v18 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        if (MailboxName.isInbox.getter(v18, v15))
        {
          goto LABEL_11;
        }

        if (*(v3 + 16))
        {
          v19 = sub_1B03AB888(v14, v15);
          if (v20)
          {
            v21 = *(*(v3 + 56) + 72 * v19 + 14);
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            v22 = *RemoteMailbox.Attributes.noSelect.unsafeMutableAddressor();
            v23 = *RemoteMailbox.Attributes.nonExistent.unsafeMutableAddressor();

            if (!v22)
            {
              if (!v23)
              {
                goto LABEL_11;
              }

LABEL_19:
              if (((v23 | v22) & v21) == 0)
              {
LABEL_11:
                sub_1B03AB2E0(v42, v14, v15);
                sub_1B03A3614(&v43);

                goto LABEL_8;
              }

              goto LABEL_6;
            }

            if ((v23 & ~v22) != 0)
            {
              goto LABEL_19;
            }

            if ((v22 & v21) == 0)
            {
              goto LABEL_11;
            }
          }
        }

LABEL_6:

LABEL_7:
        sub_1B03A3614(&v43);
LABEL_8:
        if (!--v4)
        {
          return v41;
        }
      }
    }

    v24 = *(v2 + 16);
    if (!v24)
    {
      return result;
    }

    v25 = (v2 + 32);
    v26 = MEMORY[0x1E69E7CD0];
    while (1)
    {
      v27 = *v25;
      v28 = v25[2];
      v44 = v25[1];
      v45 = v28;
      v43 = v27;
      v29 = v25[3];
      v30 = v25[4];
      v31 = v25[6];
      v48 = v25[5];
      v49 = v31;
      v46 = v29;
      v47 = v30;
      v32 = v25[7];
      v33 = v25[8];
      v34 = v25[10];
      v52 = v25[9];
      v53 = v34;
      v50 = v32;
      v51 = v33;
      v35 = DWORD2(v44);
      sub_1B03A35B8(&v43, v42);
      v36 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      LOBYTE(v35) = MailboxName.isInbox.getter(v36, v35);

      sub_1B03A3614(&v43);
      if (v35)
      {
        break;
      }

      v25 += 11;
      if (!--v24)
      {
        return v26;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4CB0, &unk_1B0ED5D30);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B0EC1E70;
    v38 = MailboxName.inbox.unsafeMutableAddressor();
    v39 = *(v38 + 2);
    *(inited + 32) = *v38;
    *(inited + 40) = v39;
    v40 = sub_1B03A48FC(inited);
    swift_setDeallocating();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B039E440((inited + 32));
    return v40;
  }

  return result;
}

uint64_t MailboxName.isInbox.getter(uint64_t a1, unsigned int a2)
{
  v2 = a2 | (a2 << 32);
  if (qword_1EB6DE9B8 != -1)
  {
    v20 = a1;
    swift_once();
    a1 = v20;
  }

  if (v2 != qword_1EB6DE9C0 || *(a1 + 16) != 5)
  {
    return 0;
  }

  v24 = MEMORY[0x1E69E7CC0];
  v3 = a1;
  sub_1B03A4BAC(0, 5, 0);
  v4 = v24;
  v5 = *(v3 + 32);
  v7 = *(v24 + 16);
  v6 = *(v24 + 24);
  v8 = v6 >> 1;
  v9 = v7 + 1;
  if (v6 >> 1 <= v7)
  {
    sub_1B03A4BAC((v6 > 1), v7 + 1, 1);
    v10 = v3;
    v4 = v24;
    v6 = *(v24 + 24);
    v8 = v6 >> 1;
  }

  else
  {
    v10 = v3;
  }

  *(v4 + 16) = v9;
  *(v4 + v7 + 32) = v5 & 0xDF;
  v11 = v10[33];
  v25 = v4;
  v12 = v7 + 2;
  if (v8 <= v9)
  {
    v21 = v10[33];
    sub_1B03A4BAC((v6 > 1), v7 + 2, 1);
    v11 = v21;
    v10 = v3;
    v4 = v25;
    v6 = *(v25 + 24);
    v8 = v6 >> 1;
  }

  *(v4 + 16) = v12;
  *(v4 + v9 + 32) = v11 & 0xDF;
  v13 = v10[34];
  v26 = v4;
  v14 = v7 + 3;
  if (v8 <= v12)
  {
    v22 = v10[34];
    sub_1B03A4BAC((v6 > 1), v7 + 3, 1);
    v13 = v22;
    v10 = v3;
    v4 = v26;
    v6 = *(v26 + 24);
    v8 = v6 >> 1;
  }

  *(v4 + 16) = v14;
  *(v4 + v12 + 32) = v13 & 0xDF;
  v15 = v10[35];
  v27 = v4;
  v16 = v7 + 4;
  if (v8 <= v14)
  {
    v23 = v10[35];
    sub_1B03A4BAC((v6 > 1), v7 + 4, 1);
    v15 = v23;
    v10 = v3;
    v4 = v27;
    v6 = *(v27 + 24);
    v8 = v6 >> 1;
  }

  *(v4 + 16) = v16;
  *(v4 + v14 + 32) = v15 & 0xDF;
  v17 = v10[36];
  if (v8 <= v16)
  {
    sub_1B03A4BAC((v6 > 1), v7 + 5, 1);
  }

  *(v4 + 16) = v7 + 5;
  *(v4 + v16 + 32) = v17 & 0xDF;
  v18 = sub_1B03A7FD8(0x584F424E49uLL, 0xE500000000000000, v4);

  return v18 & 1;
}

unint64_t sub_1B03A7FD8(unint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = a1;
  v5 = 0;
  v6 = *(a3 + 16);
  v7 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v7 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v30 = a3 + 32;
  v32 = v7;
  v8 = 4 * v7;
  v9 = (a1 >> 59) & 1;
  if ((a2 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  v27 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v28 = a2 & 0xFFFFFFFFFFFFFFLL;
  result = 15;
  v29 = 4 << v9;
  while (1)
  {
    if (v5 == v6)
    {
      v12 = 0;
      v13 = v6;
      goto LABEL_11;
    }

    if (v5 >= v6)
    {
      break;
    }

    v13 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      goto LABEL_35;
    }

    v12 = *(v30 + v5);
LABEL_11:
    v14 = result >> 14;
    v15 = result >> 14 == v8;
    if (result >> 14 == v8)
    {
      v16 = 0;
      if (v5 == v6)
      {
        return v15;
      }

      goto LABEL_30;
    }

    v17 = result & 0xC;
    v18 = result;
    if (v17 == v10)
    {
      v22 = result;
      v23 = sub_1B0A6D6C4(result, a1, a2);
      v10 = v29;
      v4 = a1;
      v18 = v23;
      result = v22;
    }

    v19 = v18 >> 16;
    if (v18 >> 16 >= v32)
    {
      goto LABEL_34;
    }

    if ((a2 & 0x1000000000000000) != 0)
    {
      v26 = result;
      v24 = sub_1B0E44E08();
      v10 = v29;
      v4 = a1;
      v16 = v24;
      result = v26;
      if (v17 == v29)
      {
        goto LABEL_27;
      }
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v33[0] = v4;
        v33[1] = v28;
        v20 = v33;
      }

      else
      {
        v20 = v27;
        if ((v4 & 0x1000000000000000) == 0)
        {
          v25 = result;
          v21 = sub_1B0E46368();
          v10 = v29;
          v4 = a1;
          v20 = v21;
          result = v25;
        }
      }

      v16 = *(v20 + v19);
      if (v17 == v10)
      {
LABEL_27:
        result = sub_1B0A6D6C4(result, a1, a2);
        v10 = v29;
        v4 = a1;
        if ((a2 & 0x1000000000000000) == 0)
        {
LABEL_24:
          result = (result & 0xFFFFFFFFFFFF0000) + 65540;
          if (v5 == v6)
          {
            return v15;
          }

          goto LABEL_30;
        }

        goto LABEL_28;
      }
    }

    if ((a2 & 0x1000000000000000) == 0)
    {
      goto LABEL_24;
    }

LABEL_28:
    if (v32 <= result >> 16)
    {
      goto LABEL_36;
    }

    result = sub_1B0E44DD8();
    v10 = v29;
    v4 = a1;
    if (v5 == v6)
    {
      return v15;
    }

LABEL_30:
    v15 = 0;
    if (v14 != v8)
    {
      v5 = v13;
      if (v12 == v16)
      {
        continue;
      }
    }

    return v15;
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

char *sub_1B03A8208(char *a1, int64_t a2, char a3)
{
  result = sub_1B03A4DAC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1B03A8228(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7CC0];
  v12 = MEMORY[0x1E69E7CC0];
  v3 = *(a1 + 16);
  sub_1B03A4BCC(v3, 0);
  sub_1B03A4FB4(0, v3, 0);
  if (!v3)
  {
    return 0;
  }

  v4 = (a1 + 44);
  while (1)
  {
    v5 = *v4;
    v6 = *(v4 - 1);
    result = sub_1B03A912C(*(v4 - 6), v6, v12 + 32, *(v12 + 16));
    if ((v8 & 1) == 0)
    {
      break;
    }

    v9 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B03A5284(v9, v6, 0);
    v11 = *(v2 + 16);
    v10 = *(v2 + 24);
    if (v11 >= v10 >> 1)
    {
      sub_1B03A4FB4((v10 > 1), v11 + 1, 1);
    }

    v4 += 8;
    *(v2 + 16) = v11 + 1;
    *(v2 + 2 * v11 + 32) = v5;
    if (!--v3)
    {
      return 0;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B03A8380(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  if ((a4 & 1) == 0)
  {
    if (a7)
    {
      return sub_1B03A8FD8(MEMORY[0x1E69E7CC0]);
    }

    v72 = MailboxName.inbox.unsafeMutableAddressor();
    if ((sub_1B03B5DDC(*v72, *(v72 + 2), a6) & 1) == 0)
    {
      return sub_1B03A8FD8(MEMORY[0x1E69E7CC0]);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4470, &qword_1B0EC51E8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B0EC1E70;
    v74 = *(v72 + 2);
    *(inited + 32) = *v72;
    *(inited + 40) = v74;
    *(inited + 44) = 1879048191;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v75 = sub_1B03A8FD8(inited);
    swift_setDeallocating();
    sub_1B0B38EE8(inited + 32);
    return v75;
  }

  v11 = MEMORY[0x1E69E7CC0];
  v12 = sub_1B03A8FD8(MEMORY[0x1E69E7CC0]);
  v14 = v13;
  v16 = v15;
  v17 = v12;
  v179 = v12;
  v180 = v13;
  v181 = v15;
  v177 = v11;
  v178 = v11;
  v176 = v11;
  v173 = sub_1B03A8FD8(v11);
  v174 = v18;
  v175 = v19;
  v20 = *(a1 + 16);
  if (v20)
  {
    v21 = 0;
    v22 = a1 + 32;
    v151 = a1 + 32;
    v153 = a6;
    v149 = *(a1 + 16);
    v150 = a8;
    while (1)
    {
      v23 = (v22 + 176 * v21);
      v24 = *v23;
      v25 = v23[2];
      v162[1] = v23[1];
      v162[2] = v25;
      v162[0] = v24;
      v26 = v23[3];
      v27 = v23[4];
      v28 = v23[6];
      v163 = v23[5];
      v164 = v28;
      v162[3] = v26;
      v162[4] = v27;
      v29 = v23[7];
      v30 = v23[8];
      v31 = v23[10];
      v167 = v23[9];
      v168 = v31;
      v165 = v29;
      v166 = v30;
      memmove(&__dst, v23, 0xB0uLL);
      v32 = v170;
      v158 = __dst;
      v33 = v171;
      v34 = v172;
      if (sub_1B03B5DDC(v171, v172, a6))
      {
        break;
      }

      sub_1B03A35B8(v162, v161);
      sub_1B03A3614(&__dst);
LABEL_5:
      if (++v21 == v20)
      {
        v77 = v179;
        v14 = v180;
        v16 = v181;
        v11 = v178;
        goto LABEL_76;
      }
    }

    sub_1B03A35B8(v162, v161);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v35 = MailboxName.inbox.unsafeMutableAddressor();
    if ((v34 | (v34 << 32)) == (v35[2] | (v35[2] << 32)))
    {
      v36 = *v35;
      v37 = *(v33 + 16);
      if (v37 != *(*v35 + 16))
      {

        if (v21 < 0x10000)
        {
          v39 = 0;
          if (v21 >= 0x4000)
          {
            goto LABEL_22;
          }

          goto LABEL_25;
        }

        goto LABEL_68;
      }

      if (!v37 || v33 == v36)
      {
LABEL_14:

        if (v21 >> 16)
        {
          v39 = 1;
          goto LABEL_22;
        }

        v39 = 1;
        if (v21 >> 14)
        {
          goto LABEL_22;
        }

LABEL_25:
        v40 = v21;
        if (*(a8 + 16))
        {
          goto LABEL_23;
        }

        goto LABEL_26;
      }

      v38 = 32;
      while (*(v33 + v38) == *(v36 + v38))
      {
        ++v38;
        if (!--v37)
        {
          goto LABEL_14;
        }
      }
    }

    if (!(v21 >> 16))
    {
      v39 = 0;
      if (v21 >> 14)
      {
LABEL_22:
        v40 = 0x3FFF;
        if (*(a8 + 16))
        {
LABEL_23:
          v41 = a8;
          v42 = v40;
          v43 = v39;
          v44 = sub_1B03B8A9C(v158, v32);
          if (v45)
          {
            v46 = *(*(v41 + 56) + 2 * v44);
            v47 = v46 < 0;
            v48 = v46 & 0x3FFF;
          }

          else
          {
            v47 = 1;
            v48 = 0x3FFF;
          }

          v49 = a5;
          v39 = v43;
          v40 = v42;
LABEL_29:
          v50 = v165;
          v51 = *(&v165 + 1);
          v52 = v166;
          if ((BYTE8(v163) & 1) == 0 && ((BYTE12(v164) & 1) != 0 || DWORD2(v164) < DWORD1(v163)))
          {
            if (!v39)
            {
              goto LABEL_60;
            }
          }

          else
          {
            if (!v49 || !*(v49 + 16) || (v53 = v33, v54 = v34, v55 = v34, v56 = v39, v57 = v40, v58 = v33, v59 = v47, v60 = sub_1B03AB888(v53, v54), v47 = v59, v33 = v58, v40 = v57, v39 = v56, v34 = v55, (v61 & 1) == 0) || (v62 = *(a5 + 56) + 72 * v60, (*(v62 + 65) & 1) != 0) || (*(v62 + 64) & 1) != 0 || (v50 != HIDWORD(*(v62 + 32)) ? (v63 = 1) : (v63 = v52), (v63 & 1) == 0 && v51 >= *(v62 + 56)))
            {
              if (v39)
              {
                if (v47)
                {
                  v64 = 1610612736;
                }

                else
                {
                  v64 = 0x20000000;
                }

LABEL_56:
                v20 = v149;
                a8 = v150;
                v68 = v64 | (v48 << 14) | v40;
                _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
                v161[0] = 0;
                v67 = v68;
                goto LABEL_57;
              }

              if (v47)
              {
                v65 = -536870912;
              }

              else
              {
                v65 = -1610612736;
              }

              v66 = v65 | (v48 << 14) | v40;
              v20 = v149;
              a8 = v150;
              if (!v47)
              {
                goto LABEL_67;
              }

              _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
              if (v48 == 0x3FFF)
              {
                v161[0] = 0;
                v67 = v66;
LABEL_57:
                sub_1B03A50D8(v67, v33, v34);
                sub_1B03A3614(&__dst);
LABEL_66:
                v22 = v151;
                a6 = v153;
                goto LABEL_5;
              }

              v69 = v33;
LABEL_65:
              sub_1B041E020(v69, v34, v66);
              sub_1B03A3614(&__dst);

              goto LABEL_66;
            }

            if ((v39 & 1) == 0)
            {
LABEL_60:
              if (v47)
              {
                v70 = -1073741824;
              }

              else
              {
                v70 = 0x80000000;
              }

              v66 = v70 | (v48 << 14) | v40;
              v20 = v149;
              a8 = v150;
              if (!v47)
              {
LABEL_67:
                v22 = v151;
                v71 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
                sub_1B041E020(v71, v34, v66);
                sub_1B03A3614(&__dst);

                a6 = v153;
                goto LABEL_5;
              }

              v69 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
              goto LABEL_65;
            }
          }

          if (v47)
          {
            v64 = 0x40000000;
          }

          else
          {
            v64 = 0;
          }

          goto LABEL_56;
        }

LABEL_26:
        v47 = 1;
        v48 = 0x3FFF;
        v49 = a5;
        goto LABEL_29;
      }

      goto LABEL_25;
    }

LABEL_68:
    v39 = 0;
    goto LABEL_22;
  }

  v77 = v17;
LABEL_76:
  __dst = v77;
  v170 = v14;

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v159 = v16;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v159 = sub_1B03A91CC(v16);
  }

  v78 = 0;
  v79 = *(v11 + 16);
LABEL_79:
  v80 = __dst;
  v156 = v170;
  v81 = (v170 + 32);
  while (v78 != v79)
  {
    if (v78 >= *(v11 + 16))
    {
      goto LABEL_171;
    }

    v82 = v11 + 32 + 16 * v78;
    v14 = *v82;
    ++v78;
    v83 = *(v82 + 8);
    v84 = *(v82 + 12);
    v85 = *(v156 + 2);
    if (v80)
    {
      v86 = sub_1B0BA7CA4(v14, v83, v81, v85, (v80 + 16), v80 + 32);
      if (v88)
      {
        v95 = v87;
LABEL_102:
        v96 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B03A5284(v96, v83, v95);
        *&v162[0] = v159;
        v98 = *(v159 + 2);
        v97 = *(v159 + 3);
        if (v98 >= v97 >> 1)
        {
          sub_1B03A50A4((v97 > 1), v98 + 1, 1);

          v159 = *&v162[0];
        }

        else
        {
        }

        *(v159 + 2) = v98 + 1;
        *&v159[4 * v98 + 32] = v84;
        goto LABEL_79;
      }
    }

    else
    {
      if (!v85)
      {
LABEL_101:
        v95 = 0;
        goto LABEL_102;
      }

      v86 = 0;
      while (1)
      {
        v89 = (v81 + 16 * v86);
        if ((v89[2] | (v89[2] << 32)) == (v83 | (v83 << 32)))
        {
          v90 = *v89;
          v91 = *(*v89 + 16);
          if (v91 == *(v14 + 2))
          {
            break;
          }
        }

LABEL_87:
        if (++v86 == v85)
        {
          goto LABEL_101;
        }
      }

      if (v91)
      {
        v92 = v90 == v14;
      }

      else
      {
        v92 = 1;
      }

      if (!v92)
      {
        v93 = v90 + 32;
        v94 = v14 + 32;
        while (v91)
        {
          if (*v93 != *v94)
          {
            goto LABEL_87;
          }

          ++v93;
          ++v94;
          if (!--v91)
          {
            goto LABEL_98;
          }
        }

        __break(1u);
LABEL_169:
        __break(1u);
        goto LABEL_170;
      }
    }

LABEL_98:
    if ((v86 & 0x8000000000000000) != 0)
    {
      goto LABEL_172;
    }

    if (v86 >= *(v159 + 2))
    {
      goto LABEL_173;
    }
  }

  v99 = v177;
  __dst = v80;
  v170 = v156;

  v152 = v99;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v154 = v159;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v154 = sub_1B03A91CC(v159);
  }

  v100 = 0;
  v101 = *(v152 + 16);
  v14 = (v152 + 32);
LABEL_109:
  v102 = __dst;
  v103 = v170;
  v104 = (v170 + 32);
  while (v100 != v101)
  {
    if (v100 >= *(v152 + 16))
    {
      goto LABEL_174;
    }

    v105 = &v14[16 * v100];
    v106 = *v105;
    ++v100;
    v107 = *(v105 + 2);
    v108 = *(v105 + 3);
    v109 = *(v103 + 2);
    if (v102)
    {
      v110 = sub_1B0BA7CA4(*v105, *(v105 + 2), v104, v109, (v102 + 16), v102 + 32);
      if (v112)
      {
        v119 = v111;
LABEL_132:
        v120 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B03A5284(v120, v107, v119);
        *&v162[0] = v154;
        v122 = *(v154 + 2);
        v121 = *(v154 + 3);
        if (v122 >= v121 >> 1)
        {
          sub_1B03A50A4((v121 > 1), v122 + 1, 1);

          v154 = *&v162[0];
        }

        else
        {
        }

        *(v154 + 2) = v122 + 1;
        *&v154[4 * v122 + 32] = v108;
        goto LABEL_109;
      }
    }

    else
    {
      if (!v109)
      {
LABEL_131:
        v119 = 0;
        goto LABEL_132;
      }

      v110 = 0;
      while (1)
      {
        v113 = (v104 + 16 * v110);
        if ((v113[2] | (v113[2] << 32)) == (v107 | (v107 << 32)))
        {
          v114 = *v113;
          v115 = *(*v113 + 16);
          if (v115 == *(v106 + 16))
          {
            break;
          }
        }

LABEL_117:
        if (++v110 == v109)
        {
          goto LABEL_131;
        }
      }

      if (v115)
      {
        v116 = v114 == v106;
      }

      else
      {
        v116 = 1;
      }

      if (!v116)
      {
        v117 = (v114 + 32);
        v118 = (v106 + 32);
        while (v115)
        {
          if (*v117 != *v118)
          {
            goto LABEL_117;
          }

          ++v117;
          ++v118;
          if (!--v115)
          {
            goto LABEL_128;
          }
        }

        goto LABEL_169;
      }
    }

LABEL_128:
    if ((v110 & 0x8000000000000000) != 0)
    {
      goto LABEL_175;
    }

    if (v110 >= *(v154 + 2))
    {
      goto LABEL_176;
    }
  }

  v123 = v176;

  v124 = v154;

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v124 = sub_1B03A91CC(v154);
  }

  v125 = 0;
  v126 = *(v123 + 16);
  v157 = v123;
  v160 = v123 + 32;
  while (2)
  {
    v127 = __dst;
    v14 = v170;
    v128 = (v170 + 32);
    while (1)
    {
      if (v125 == v126)
      {

        v147 = v174;
        v148 = v175;
        v171 = v124;

        sub_1B03A9204(v147, v148, &__dst);

        return __dst;
      }

      if (v125 >= *(v123 + 16))
      {
        goto LABEL_177;
      }

      v129 = v160 + 16 * v125;
      v130 = *v129;
      ++v125;
      v131 = *(v129 + 8);
      v132 = *(v129 + 12);
      v133 = *(v14 + 2);
      if (!v127)
      {
        break;
      }

      v134 = sub_1B0BA7CA4(*v129, *(v129 + 8), v128, v133, (v127 + 16), v127 + 32);
      if (v136)
      {
        v143 = v135;
        goto LABEL_163;
      }

      v123 = v157;
LABEL_158:
      if ((v134 & 0x8000000000000000) != 0)
      {
        goto LABEL_178;
      }

      if (v134 >= *(v124 + 2))
      {
        goto LABEL_179;
      }
    }

    if (!v133)
    {
LABEL_161:
      v143 = 0;
LABEL_163:
      v144 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B03A5284(v144, v131, v143);
      *&v162[0] = v124;
      v146 = *(v124 + 2);
      v145 = *(v124 + 3);
      if (v146 >= v145 >> 1)
      {
        sub_1B03A50A4((v145 > 1), v146 + 1, 1);

        v124 = *&v162[0];
      }

      else
      {
      }

      v123 = v157;
      *(v124 + 2) = v146 + 1;
      *&v124[4 * v146 + 32] = v132;
      continue;
    }

    break;
  }

  v134 = 0;
  while (1)
  {
    v137 = (v128 + 16 * v134);
    if ((v137[2] | (v137[2] << 32)) == (v131 | (v131 << 32)))
    {
      v138 = *v137;
      v139 = *(*v137 + 16);
      if (v139 == *(v130 + 16))
      {
        break;
      }
    }

LABEL_147:
    if (++v134 == v133)
    {
      goto LABEL_161;
    }
  }

  if (v139)
  {
    v140 = v138 == v130;
  }

  else
  {
    v140 = 1;
  }

  if (v140)
  {
    goto LABEL_158;
  }

  v141 = (v138 + 32);
  v142 = (v130 + 32);
  while (v139)
  {
    if (*v141 != *v142)
    {
      goto LABEL_147;
    }

    ++v141;
    ++v142;
    if (!--v139)
    {
      goto LABEL_158;
    }
  }

LABEL_170:
  __break(1u);
LABEL_171:
  __break(1u);
LABEL_172:
  __break(1u);
LABEL_173:
  __break(1u);
LABEL_174:
  __break(1u);
LABEL_175:
  __break(1u);
LABEL_176:
  __break(1u);
LABEL_177:
  __break(1u);
LABEL_178:
  __break(1u);
LABEL_179:
  __break(1u);
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_1B03A8FD8(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7CC0];
  v12 = MEMORY[0x1E69E7CC0];
  v3 = *(a1 + 16);
  sub_1B03A4BCC(v3, 0);
  sub_1B03A50A4(0, v3, 0);
  if (!v3)
  {
    return 0;
  }

  v4 = (a1 + 44);
  while (1)
  {
    v5 = *(v4 - 1);
    v6 = *v4;
    result = sub_1B03A912C(*(v4 - 3), v5, v12 + 32, *(v12 + 16));
    if ((v8 & 1) == 0)
    {
      break;
    }

    v9 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B03A5284(v9, v5, 0);
    v11 = *(v2 + 16);
    v10 = *(v2 + 24);
    if (v11 >= v10 >> 1)
    {
      sub_1B03A50A4((v10 > 1), v11 + 1, 1);
    }

    v4 += 4;
    *(v2 + 16) = v11 + 1;
    *(v2 + 4 * v11 + 32) = v6;
    if (!--v3)
    {
      return 0;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B03A912C(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    for (result = 0; result != a4; ++result)
    {
      v6 = (a3 + 16 * result);
      if ((v6[2] | (v6[2] << 32)) == (a2 | (a2 << 32)))
      {
        v7 = *v6;
        v8 = *(*v6 + 16);
        if (v8 == *(a1 + 16))
        {
          if (!v8 || v7 == a1)
          {
            return result;
          }

          v9 = (v7 + 32);
          for (i = (a1 + 32); *v9 == *i; ++i)
          {
            ++v9;
            if (!--v8)
            {
              return result;
            }
          }
        }
      }
    }
  }

  return 0;
}

uint64_t sub_1B03A9204(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = a3 + 2;
  v6 = a3[2];
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1B03A91CC(v6);
    v6 = result;
  }

  v8 = *(a2 + 16);
  *v5 = v6;
  v34 = v8;
  if (!v8)
  {
    return result;
  }

  v9 = 0;
  v33 = a2 + 32;
  do
  {
    v10 = v6 + 32;
    while (1)
    {
      if (v9 >= *(a1 + 16))
      {
        goto LABEL_35;
      }

      v11 = a1 + 32 + 16 * v9;
      v12 = *v11;
      v13 = *(v33 + 4 * v9);
      v14 = *(v11 + 8);
      ++v9;
      v15 = a3[1];
      v16 = v15 + 32;
      v17 = *(v15 + 16);
      if (*a3)
      {
        break;
      }

      if (!v17)
      {
LABEL_28:
        v29 = 0;
        goto LABEL_30;
      }

      v21 = 0;
      while (1)
      {
        v22 = (v16 + 16 * v21);
        if ((v22[2] | (v22[2] << 32)) == (v14 | (v14 << 32)))
        {
          v23 = *v22;
          v24 = *(*v22 + 16);
          if (v24 == *(v12 + 16))
          {
            break;
          }
        }

LABEL_13:
        if (++v21 == v17)
        {
          goto LABEL_28;
        }
      }

      if (v24)
      {
        v25 = v23 == v12;
      }

      else
      {
        v25 = 1;
      }

      if (!v25)
      {
        v26 = (v23 + 32);
        v27 = (v12 + 32);
        while (v24)
        {
          if (*v26 != *v27)
          {
            goto LABEL_13;
          }

          ++v26;
          ++v27;
          if (!--v24)
          {
            goto LABEL_24;
          }
        }

        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
        return result;
      }

LABEL_24:
      result = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
LABEL_25:
      if (v21 >= *(v6 + 16))
      {
        goto LABEL_37;
      }

      v28 = *(v10 + 4 * v21);

      *(v10 + 4 * v21) = v28;
      *v5 = v6;
      if (v9 >= v34)
      {
        return result;
      }
    }

    v18 = sub_1B0BA7CA4(v12, v14, v16, v17, (*a3 + 16), *a3 + 32);
    if ((v20 & 1) == 0)
    {
      v21 = v18;
      result = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      if ((v21 & 0x8000000000000000) != 0)
      {
        goto LABEL_36;
      }

      goto LABEL_25;
    }

    v29 = v19;
LABEL_30:
    v30 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B03A5284(v30, v14, v29);
    a3[2] = v6;
    v32 = *(v6 + 16);
    v31 = *(v6 + 24);
    if (v32 >= v31 >> 1)
    {
      sub_1B03A50A4((v31 > 1), v32 + 1, 1);
    }

    v6 = *v5;
    *(v6 + 16) = v32 + 1;
    *(v6 + 4 * v32 + 32) = v13;
    *v5 = v6;
  }

  while (v9 < v34);
  return result;
}

uint64_t sub_1B03A944C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v13 = MEMORY[0x1E69E7CC0];

    sub_1B03A9648(0, v4, 0);
    v6 = v13;
    v7 = (a3 + 32);
    do
    {
      v9 = *v7++;
      v8 = v9;
      v14 = v6;
      v11 = *(v6 + 16);
      v10 = *(v6 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_1B03A9648((v10 > 1), v11 + 1, 1);
        v6 = v14;
      }

      *(v6 + 16) = v11 + 1;
      *(v6 + v11 + 32) = (v8 & 0x40000000) != 0;
      --v4;
    }

    while (v4);
  }

  else
  {
  }

  return a1;
}

char *sub_1B03A9554(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4CC0, &qword_1B0EC9BA8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1B03A9648(char *a1, int64_t a2, char a3)
{
  result = sub_1B03A9554(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B03A967C()
{
  v1 = *v0;
  v2 = *(v0 + 24);
  v3 = sub_1B03A9668(MEMORY[0x1E69E7CC0]);
  if ((v2 & 1) == 0)
  {
    return v3;
  }

  v4 = *(v1 + 16);
  if (!v4)
  {
    return v3;
  }

  v5 = 0;
  v6 = v1 + 32;
  while (2)
  {
    v7 = (v6 + 176 * v5);
    for (i = v5; ; ++i)
    {
      if (i >= v4)
      {
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

      v9 = *v7;
      v10 = v7[2];
      v49 = v7[1];
      v50 = v10;
      v48 = v9;
      v11 = v7[3];
      v12 = v7[4];
      v13 = v7[6];
      v53 = v7[5];
      v54 = v13;
      v51 = v11;
      v52 = v12;
      v14 = v7[7];
      v15 = v7[8];
      v16 = v7[10];
      v57 = v7[9];
      v58 = v16;
      v55 = v14;
      v56 = v15;
      v5 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_40;
      }

      v17 = *(v57 + 16);
      if (v17)
      {
        break;
      }

      v7 += 11;
      if (v5 == v4)
      {
        return v3;
      }
    }

    LOBYTE(v18) = *(v57 + 64);
    v19 = v17 - 1;
    if (v17 != 1)
    {
      if (v17 < 3)
      {
        v20 = 1;
        goto LABEL_23;
      }

      v20 = v19 | 1;
      v21 = (v57 + 144);
      v22 = v19 & 0xFFFFFFFFFFFFFFFELL;
      LOBYTE(v23) = *(v57 + 64);
      do
      {
        v24 = *(v21 - 40);
        v26 = *v21;
        v21 += 80;
        v25 = v26;
        if (v18 <= v24)
        {
          v18 = v24;
        }

        else
        {
          v18 = v18;
        }

        v23 = v23;
        if (v23 <= v25)
        {
          v23 = v25;
        }

        v22 -= 2;
      }

      while (v22);
      if (v18 <= v23)
      {
        LOBYTE(v18) = v23;
      }

      if (v19 != (v19 & 0xFFFFFFFFFFFFFFFELL))
      {
LABEL_23:
        v27 = v17 - v20;
        v28 = (v57 + 40 * v20 + 64);
        do
        {
          v30 = *v28;
          v28 += 40;
          v29 = v30;
          if (v18 <= v30)
          {
            LOBYTE(v18) = v29;
          }

          --v27;
        }

        while (v27);
      }
    }

    v31 = v49;
    v32 = DWORD2(v49);
    sub_1B03A35B8(&v48, &v47);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v47 = v3;
    v34 = sub_1B03AB888(v31, v32);
    v36 = v3[2];
    v37 = (v35 & 1) == 0;
    v38 = __OFADD__(v36, v37);
    v39 = v36 + v37;
    if (v38)
    {
      goto LABEL_41;
    }

    v40 = v35;
    if (v3[3] < v39)
    {
      sub_1B0B310D4(v39, isUniquelyReferenced_nonNull_native, &qword_1EB6E4758, &qword_1B0EC5E18);
      v34 = sub_1B03AB888(v31, v32);
      if ((v40 & 1) != (v41 & 1))
      {
        goto LABEL_43;
      }

LABEL_32:
      v3 = v47;
      if (v40)
      {
        goto LABEL_33;
      }

LABEL_35:
      v3[(v34 >> 6) + 8] |= 1 << v34;
      v43 = v3[6] + 16 * v34;
      *v43 = v31;
      *(v43 + 8) = v32;
      *(v3[7] + v34) = v18;
      v44 = v3[2];
      v38 = __OFADD__(v44, 1);
      v45 = v44 + 1;
      if (!v38)
      {
        v3[2] = v45;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        goto LABEL_37;
      }

LABEL_42:
      __break(1u);
LABEL_43:
      result = sub_1B0E46BA8();
      __break(1u);
      return result;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_32;
    }

    v42 = v34;
    sub_1B0B8E138();
    v34 = v42;
    v3 = v47;
    if ((v40 & 1) == 0)
    {
      goto LABEL_35;
    }

LABEL_33:
    *(v3[7] + v34) = v18;
LABEL_37:
    sub_1B03A3614(&v48);
    if (v5 != v4)
    {
      continue;
    }

    return v3;
  }
}

uint64_t sub_1B03A9934(uint64_t a1, uint64_t a2, char a3, uint64_t (*a4)(void), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t (*a9)(void), uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  v18 = a12;
  v19 = sub_1B03A8228(MEMORY[0x1E69E7CC0]);
  v21 = v20;
  v169 = v19;
  v170 = v20;
  v171 = v22;
  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  v24 = swift_allocObject();
  *(v24 + 16) = a12;
  v172[0] = a6;
  v172[1] = a7;
  v172[2] = a8;
  v172[3] = sub_1B03AAF64;
  v172[4] = 0;
  v172[5] = sub_1B03AAF8C;
  v172[6] = v24;
  v172[7] = sub_1B03AAF94;
  v172[8] = 0;
  v172[9] = sub_1B0BCBFD0;
  v172[10] = 0;

  v161 = a8;

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v168[0] = sub_1B03AABBC(v172);
  sub_1B03AB180(v168);
  v25 = a13;
  sub_1B0398EFC(v172, &qword_1EB6E5318, &qword_1B0ECE380);
  v26 = v168[0];
  v27 = *(v168[0] + 16);
  v162 = a7;
  v159 = v23;
  v157 = a3;
  if (!v27)
  {

    v54 = v161;
    if (a14)
    {
      goto LABEL_50;
    }

LABEL_43:
    if (a3)
    {
      v55 = 0;
    }

    else
    {
      v56 = a2;
      if (a2 >= a1)
      {
        v56 = a1;
      }

      v57 = __OFSUB__(v56, 2);
      v58 = v56 - 2;
      if (v57)
      {
LABEL_225:
        __break(1u);
LABEL_226:
        __break(1u);
LABEL_227:
        __break(1u);
LABEL_228:
        __break(1u);
LABEL_229:
        __break(1u);
LABEL_230:
        __break(1u);
LABEL_231:
        __break(1u);
LABEL_232:
        __break(1u);
LABEL_233:
        __break(1u);

        __break(1u);
        return result;
      }

      v55 = v58 & ~(v58 >> 63);
    }

    if (sub_1B03ABC50(v55, a11, &v169, a6, a7, v54, a2, a3 & 1))
    {
      goto LABEL_50;
    }

    goto LABEL_195;
  }

  for (i = 0; i != v27; ++i)
  {
    if (i >= *(v26 + 16))
    {
      __break(1u);
LABEL_214:
      __break(1u);
LABEL_215:
      __break(1u);
LABEL_216:
      __break(1u);
LABEL_217:
      __break(1u);
LABEL_218:
      __break(1u);
LABEL_219:
      __break(1u);
LABEL_220:
      __break(1u);
LABEL_221:
      __break(1u);
LABEL_222:
      __break(1u);
LABEL_223:
      __break(1u);
LABEL_224:
      __break(1u);
      goto LABEL_225;
    }

    v30 = v26 + 32 + 16 * i;
    v31 = *v30;
    v32 = *(v30 + 8);
    v33 = *(v30 + 12);
    if ((sub_1B03B5DDC(*v30, *(v30 + 8), a11) & 1) == 0)
    {
      v34 = v21 + 32;
      v35 = *(v21 + 16);
      if (v169)
      {
        sub_1B0BA7CA4(v31, v32, v34, v35, (v169 + 16), v169 + 32);
        if ((v36 & 1) == 0)
        {
          continue;
        }
      }

      else if (v35)
      {
        for (j = 0; j != v35; ++j)
        {
          v38 = (v34 + 16 * j);
          if ((v38[2] | (v38[2] << 32)) == (v32 | (v32 << 32)))
          {
            v39 = *v38;
            v40 = *(*v38 + 16);
            if (v40 == *(v31 + 16))
            {
              if (v40)
              {
                v41 = v39 == v31;
              }

              else
              {
                v41 = 1;
              }

              if (v41)
              {
                goto LABEL_6;
              }

              v42 = (v39 + 32);
              v43 = (v31 + 32);
              while (1)
              {
                v45 = *v42++;
                v44 = v45;
                v46 = *v43++;
                if (v44 != v46)
                {
                  break;
                }

                if (!--v40)
                {
                  goto LABEL_6;
                }
              }
            }
          }
        }
      }

      v47 = *(a7 + 16);
      if (a6)
      {
        v48 = sub_1B0BA7CA4(v31, v32, a7 + 32, v47, (a6 + 16), a6 + 32);
        if (v49)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v48 = sub_1B03A912C(v31, v32, a7 + 32, v47);
        if (v50)
        {
          goto LABEL_32;
        }
      }

      if ((v48 & 0x8000000000000000) != 0)
      {
        goto LABEL_218;
      }

      if (v48 >= *(v161 + 16))
      {
        goto LABEL_219;
      }

      if ((*(v161 + 32 + v48) & 1) == 0)
      {
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v29 = 0;
        goto LABEL_5;
      }

LABEL_32:
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v51 = sub_1B03ABBC8(v23, a9);
      v52 = sub_1B03B5DDC(v31, v32, v51);

      if (v52)
      {
        v29 = 0;
      }

      else if (*(a12 + 16) && (sub_1B03AB888(v31, v32), (v53 & 1) != 0))
      {
        v29 = 1;
      }

      else if (sub_1B03B5DDC(v31, v32, a13))
      {
        v29 = 2;
      }

      else
      {
        v29 = 3;
      }

      a7 = v162;
LABEL_5:
      sub_1B03BB69C(v29 | (v33 << 8), v31, v32);
      v21 = v170;
      if (*(v170 + 16) >= a2)
      {

        goto LABEL_198;
      }

      continue;
    }

LABEL_6:
    ;
  }

  v54 = v161;
  v25 = a13;
  v18 = a12;
  a3 = v157;
  if ((a14 & 1) == 0)
  {
    goto LABEL_43;
  }

LABEL_50:
  if (sub_1B03AC384(a11, &v169, a6, a7, v54, v23, a9, a10, v18, v25, a2))
  {
    v59 = a4();
    v60 = swift_allocObject();
    *(v60 + 16) = v59;
    v168[0] = a6;
    v168[1] = a7;
    v168[2] = v54;
    v168[3] = sub_1B03AAF64;
    v168[4] = 0;
    v168[5] = sub_1B0BCC8E4;
    v168[6] = v60;
    v168[7] = sub_1B03AAF94;
    v168[8] = 0;
    v168[9] = sub_1B0BCBFD0;
    v168[10] = 0;
    v61 = *(v54 + 16);

    sub_1B03B5C80(v168, &v165, &qword_1EB6E5320, &qword_1B0ECE388);
    if (v61)
    {
      v62 = a7;
      v63 = 0;
      v154 = v54 + 32;
      v156 = v60;
      v64 = (v62 + 40);
      v158 = v61;
      do
      {
        if (v63 >= *(v162 + 16))
        {
          goto LABEL_214;
        }

        if (v63 >= *(v54 + 16))
        {
          goto LABEL_215;
        }

        v65 = *v64;
        v66 = *(v64 - 1);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v163 = v66;
        v164 = v65;
        sub_1B03ABB24(&v163, *(v60 + 16), &v165);

        v67 = v165;
        if (!v165 || (v68 = v166 | (v167 << 32), (sub_1B03B5DDC(v165, v166, a11) & 1) != 0))
        {

          goto LABEL_54;
        }

        v70 = v169;
        v69 = v170;
        v71 = *(v170 + 16);
        v72 = v170 + 32;
        if (v169)
        {
          sub_1B0BA7CA4(v67, v68, v72, v71, (v169 + 16), v169 + 32);
          if ((v73 & 1) == 0)
          {
            goto LABEL_69;
          }
        }

        else
        {
          sub_1B03A912C(v67, v68, v72, v71);
          if ((v77 & 1) == 0)
          {
LABEL_69:

            v54 = v161;
            v61 = v158;
            goto LABEL_54;
          }
        }

        if (BYTE4(v68) > 7u)
        {
          switch(BYTE4(v68))
          {
            case 8u:
              v78 = -16383;
              goto LABEL_131;
            case 9u:
              v78 = -16382;
              goto LABEL_131;
            case 0xAu:
              v78 = -16381;
              if (v157)
              {
                goto LABEL_74;
              }

              goto LABEL_83;
          }

LABEL_79:
          v82 = *(v162 + 16);
          if (a6)
          {
            v83 = sub_1B0BA7CA4(v67, v68, v162 + 32, v82, (a6 + 16), a6 + 32);
            if (v84)
            {
              goto LABEL_97;
            }
          }

          else
          {
            v83 = sub_1B03A912C(v67, v68, v162 + 32, v82);
            if (v93)
            {
              goto LABEL_97;
            }
          }

          if ((v83 & 0x8000000000000000) != 0)
          {
            goto LABEL_229;
          }

          if (v83 >= *(v161 + 16))
          {
            goto LABEL_232;
          }

          if (*(v154 + v83))
          {
LABEL_97:
            v94 = sub_1B03ABBC8(v159, a9);
            v95 = sub_1B03B5DDC(v67, v68, v94);

            if (v95)
            {
              goto LABEL_98;
            }

            if (*(a12 + 16) && (sub_1B03AB888(v67, v68), (v104 & 1) != 0))
            {
              v96 = 1;
            }

            else if (sub_1B03B5DDC(v67, v68, a13))
            {
              v96 = 2;
            }

            else
            {
              v96 = 3;
            }
          }

          else
          {
LABEL_98:
            v96 = 0;
          }

          v78 = v96 | (BYTE4(v68) << 8);
          goto LABEL_131;
        }

        if (BYTE4(v68) == 5)
        {
          v79 = *(v162 + 16);
          if (a6)
          {
            v80 = sub_1B0BA7CA4(v67, v68, v162 + 32, v79, (a6 + 16), a6 + 32);
            if (v81)
            {
              goto LABEL_91;
            }
          }

          else
          {
            v80 = sub_1B03A912C(v67, v68, v162 + 32, v79);
            if (v90)
            {
LABEL_91:
              v91 = sub_1B03ABBC8(v159, a9);
              v92 = sub_1B03B5DDC(v67, v68, v91);

              if (v92)
              {
                goto LABEL_92;
              }

              if (*(a12 + 16) && (sub_1B03AB888(v67, v68), (v103 & 1) != 0))
              {
                v78 = 16385;
              }

              else if (sub_1B03B5DDC(v67, v68, a13))
              {
                v78 = 16386;
              }

              else
              {
                v78 = 16387;
              }

              goto LABEL_131;
            }
          }

          if ((v80 & 0x8000000000000000) != 0)
          {
            goto LABEL_226;
          }

          if (v80 >= *(v161 + 16))
          {
            goto LABEL_233;
          }

          if ((*(v154 + v80) & 1) == 0)
          {
LABEL_92:
            v78 = 0x4000;
            goto LABEL_131;
          }

          goto LABEL_91;
        }

        if (BYTE4(v68) == 6)
        {
          v78 = -16384;
          if (v157)
          {
LABEL_74:

            v54 = v161;
            v61 = v158;
            goto LABEL_148;
          }

LABEL_83:
          v85 = *(v69 + 16);
          v86 = v69 + 32;
          if (v70)
          {
            v87 = sub_1B0BA7CA4(v67, v68, v86, v85, (v70 + 16), v70 + 32);
            if ((v89 & 1) == 0)
            {
              goto LABEL_107;
            }
          }

          else
          {
            v87 = sub_1B03A912C(v67, v68, v86, v85);
            if ((v100 & 1) == 0)
            {
LABEL_107:
              v101 = v87;
              v54 = v161;
              v61 = v158;

              v102 = v171;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v102 = sub_1B0B94750(v102);
              }

              if ((v101 & 0x8000000000000000) != 0)
              {
                goto LABEL_227;
              }

              if (v101 >= *(v102 + 2))
              {
                goto LABEL_230;
              }

              goto LABEL_147;
            }

            v88 = 0;
          }

          goto LABEL_133;
        }

        if (BYTE4(v68) != 7)
        {
          goto LABEL_79;
        }

        v74 = *(v162 + 16);
        if (a6)
        {
          v75 = sub_1B0BA7CA4(v67, v68, v162 + 32, v74, (a6 + 16), a6 + 32);
          if ((v76 & 1) == 0)
          {
            goto LABEL_100;
          }
        }

        else
        {
          v75 = sub_1B03A912C(v67, v68, v162 + 32, v74);
          if ((v97 & 1) == 0)
          {
LABEL_100:
            if ((v75 & 0x8000000000000000) != 0)
            {
              goto LABEL_228;
            }

            if (v75 >= *(v161 + 16))
            {
              goto LABEL_231;
            }

            if ((*(v154 + v75) & 1) == 0)
            {
LABEL_104:
              v78 = 0x8000;
              goto LABEL_131;
            }
          }
        }

        v98 = sub_1B03ABBC8(v159, a9);
        v99 = sub_1B03B5DDC(v67, v68, v98);

        if (v99)
        {
          goto LABEL_104;
        }

        if (*(a12 + 16) && (sub_1B03AB888(v67, v68), (v105 & 1) != 0))
        {
          v78 = -32767;
        }

        else if (sub_1B03B5DDC(v67, v68, a13))
        {
          v78 = -32766;
        }

        else
        {
          v78 = -32765;
        }

LABEL_131:
        v106 = *(v69 + 16);
        v107 = v69 + 32;
        if (v70)
        {
          v108 = sub_1B0BA7CA4(v67, v68, v107, v106, (v70 + 16), v70 + 32);
          if ((v109 & 1) == 0)
          {
            v101 = v108;
            v54 = v161;
            v61 = v158;
            goto LABEL_143;
          }

LABEL_133:
          v54 = v161;
          v61 = v158;
          goto LABEL_136;
        }

        v110 = sub_1B03A912C(v67, v68, v107, v106);
        v54 = v161;
        v61 = v158;
        if ((v111 & 1) == 0)
        {
          v101 = v110;
LABEL_143:

          v102 = v171;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v102 = sub_1B0B94750(v102);
          }

          if ((v101 & 0x8000000000000000) != 0)
          {
            goto LABEL_222;
          }

          if (v101 >= *(v102 + 2))
          {
            goto LABEL_223;
          }

LABEL_147:
          *&v102[2 * v101 + 32] = v78;
          v171 = v102;
          goto LABEL_148;
        }

        v88 = 0;
LABEL_136:
        sub_1B03A5284(v67, v68, v88);

        v112 = v171;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1B03A4FB4(0, *(v112 + 2) + 1, 1);
          v112 = v171;
        }

        v114 = *(v112 + 2);
        v113 = *(v112 + 3);
        if (v114 >= v113 >> 1)
        {
          sub_1B03A4FB4((v113 > 1), v114 + 1, 1);
          v112 = v171;
        }

        *(v112 + 2) = v114 + 1;
        *&v112[2 * v114 + 32] = v78;
LABEL_148:
        v60 = v156;
        if (*(v170 + 16) >= a2)
        {

          sub_1B0398EFC(v168, &qword_1EB6E5320, &qword_1B0ECE388);

          goto LABEL_197;
        }

LABEL_54:
        ++v63;
        v64 += 4;
      }

      while (v61 != v63);
    }

    sub_1B0398EFC(v168, &qword_1EB6E5320, &qword_1B0ECE388);

    v115 = v162;

    v116 = swift_allocObject();
    v116[2] = v159;
    v116[3] = a9;
    v116[4] = a10;
    v117 = swift_allocObject();
    *(v117 + 16) = sub_1B03AD054;
    *(v117 + 24) = v116;
    v118 = *(v54 + 16);
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();

    if (v118)
    {
      for (k = 0; k != v118; ++k)
      {
        if (k >= *(v115 + 16))
        {
          goto LABEL_216;
        }

        if (k >= *(v161 + 16))
        {
          goto LABEL_217;
        }

        v120 = v162 + 32 + 16 * k;
        v121 = *v120;
        v122 = *(v120 + 8);
        v123 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        if ((*(v117 + 16))(v123, v122) & 1) == 0 || (sub_1B03B5DDC(v121, v122, a11))
        {
LABEL_153:

          v115 = v162;
          continue;
        }

        v124 = v169;
        v125 = v170;
        v126 = *(v170 + 16);
        if (v169)
        {
          sub_1B0BA7CA4(v121, v122, v170 + 32, v126, (v169 + 16), v169 + 32);
          if ((v127 & 1) == 0)
          {
            goto LABEL_153;
          }

          v128 = sub_1B0BA7CA4(v121, v122, v125 + 32, *(v125 + 16), (v124 + 16), v124 + 32);
          if (v130)
          {
            goto LABEL_178;
          }
        }

        else
        {
          if (v126)
          {
            for (m = 0; m != v126; ++m)
            {
              v132 = (v170 + 32 + 16 * m);
              if ((v132[2] | (v132[2] << 32)) == (v122 | (v122 << 32)))
              {
                v133 = *v132;
                v134 = *(*v132 + 16);
                if (v134 == *(v121 + 16))
                {
                  if (v134)
                  {
                    v135 = v133 == v121;
                  }

                  else
                  {
                    v135 = 1;
                  }

                  if (v135)
                  {
                    goto LABEL_153;
                  }

                  v136 = (v133 + 32);
                  v137 = (v121 + 32);
                  while (1)
                  {
                    v139 = *v136++;
                    v138 = v139;
                    v140 = *v137++;
                    if (v138 != v140)
                    {
                      break;
                    }

                    if (!--v134)
                    {
                      goto LABEL_153;
                    }
                  }
                }
              }
            }
          }

          v128 = sub_1B03A912C(v121, v122, v170 + 32, v126);
          if (v141)
          {
            v129 = 0;
LABEL_178:
            sub_1B03A5284(v121, v122, v129);

            v142 = v171;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_1B03A4FB4(0, *(v142 + 2) + 1, 1);
              v142 = v171;
            }

            v115 = v162;
            v144 = *(v142 + 2);
            v143 = *(v142 + 3);
            if (v144 >= v143 >> 1)
            {
              sub_1B03A4FB4((v143 > 1), v144 + 1, 1);
              v142 = v171;
            }

            *(v142 + 2) = v144 + 1;
            *&v142[2 * v144 + 32] = -16382;
            v125 = v170;
            goto LABEL_188;
          }
        }

        v145 = v128;

        v142 = v171;
        v115 = v162;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v142 = sub_1B0B94750(v142);
        }

        if ((v145 & 0x8000000000000000) != 0)
        {
          goto LABEL_220;
        }

        if (v145 >= *(v142 + 2))
        {
          goto LABEL_221;
        }

        *&v142[2 * v145 + 32] = -16382;
LABEL_188:
        v171 = v142;
        if (*(v125 + 16) >= a2)
        {

          isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

          if (isEscapingClosureAtFileLocation)
          {
            __break(1u);
            goto LABEL_207;
          }

          return v169;
        }
      }
    }

    v146 = swift_isEscapingClosureAtFileLocation();

    if ((v146 & 1) == 0)
    {
      LOBYTE(v122) = v157;
      if ((sub_1B03ABC50(0x7FFFFFFFFFFFFFFFLL, a11, &v169, a6, v115, v161, a2, v157 & 1) & 1) == 0 || !*(v115 + 16))
      {

        goto LABEL_197;
      }

      isEscapingClosureAtFileLocation = *(v115 + 32);
      v117 = *(v115 + 40);
      if (sub_1B03B5DDC(isEscapingClosureAtFileLocation, *(v115 + 40), a11))
      {

        goto LABEL_210;
      }

      v151 = *(v170 + 16);
      v150 = v170 + 32;
      if (v169)
      {
        sub_1B0BA7CA4(isEscapingClosureAtFileLocation, v117, v150, v151, (v169 + 16), v169 + 32);
      }

      else
      {
LABEL_207:
        sub_1B03A912C(isEscapingClosureAtFileLocation, v117, v150, v151);
      }

      v152 = v148;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

      if ((v152 & 1) != 0 && (v122 & 1) == 0)
      {
        sub_1B03BB69C(0xC003u, isEscapingClosureAtFileLocation, v117);
      }

      else
      {
LABEL_210:
      }

      goto LABEL_196;
    }

    goto LABEL_224;
  }

LABEL_195:

LABEL_196:

LABEL_197:

LABEL_198:

  return v169;
}

uint64_t sub_1B03AAB44()
{

  return swift_deallocObject();
}

uint64_t sub_1B03AAB7C()
{

  return swift_deallocObject();
}

void *sub_1B03AABBC(void *a1)
{
  v1 = a1[1];
  v2 = a1[2];
  v48 = a1[5];
  v49 = a1[3];
  v47 = a1[7];
  v41 = a1[9];
  v3 = *(v2 + 16);

  v5 = MEMORY[0x1E69E7CC0];
  if (!v3)
  {
    v8 = 0;
    goto LABEL_27;
  }

  v6 = v3;
  v7 = 0;
  v8 = 0;
  v9 = v2 + 32;
  v42 = MEMORY[0x1E69E7CC0] + 32;
  v10 = v1 + 40;
  v40 = v1 + 40;
  while (2)
  {
    v44 = v8;
    v46 = v5;
    v11 = (v10 + 16 * v7);
    while (1)
    {
      if (v7 >= *(v1 + 16))
      {
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      if (v7 >= *(v2 + 16))
      {
        goto LABEL_32;
      }

      v12 = v2;
      v13 = v1;
      v14 = *v11;
      v15 = *(v9 + v7++);
      v51 = *(v11 - 1);
      v52 = v14;
      v53 = v15;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v49(&v50, &v51);

      v48(&v51, &v50);

      v16 = v51;
      v17 = v53;
      v18 = v52;
      v54 = v51;
      v56 = v53;
      v55 = v52;
      if (v47(&v54))
      {
        break;
      }

      v11 += 4;
      v1 = v13;
      v2 = v12;
      if (v7 >= v6)
      {
        v8 = v44;
        goto LABEL_27;
      }
    }

    v54 = v16;
    v55 = v18;
    v56 = (v18 | (v17 << 32)) >> 32;
    v41(&v51, &v54);

    v19 = v51;
    v20 = v52;
    v21 = v53;
    v22 = v44;
    if (v44)
    {
      v23 = v42;
    }

    else
    {
      v39 = v53;
      v43 = v52;
      v45 = v51;
      v24 = v5[3];
      if (((v24 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_35;
      }

      v25 = v24 & 0xFFFFFFFFFFFFFFFELL;
      if (v25 <= 1)
      {
        v26 = 1;
      }

      else
      {
        v26 = v25;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4228, &qword_1B0EC4570);
      v5 = swift_allocObject();
      v27 = _swift_stdlib_malloc_size_0(v5);
      v28 = v27 - 32;
      if (v27 < 32)
      {
        v28 = v27 - 17;
      }

      v29 = v28 >> 4;
      v5[2] = v26;
      v5[3] = 2 * (v28 >> 4);
      v30 = (v5 + 4);
      v31 = v46[3] >> 1;
      v32 = 16 * v31;
      if (v46[2])
      {
        v33 = (v46 + 4);
        if (v5 != v46 || v30 >= &v33[v32])
        {
          v34 = v28 >> 4;
          memmove(v5 + 4, v33, v32);
          v29 = v34;
        }

        v46[2] = 0;
      }

      v23 = &v30[v32];
      v22 = (v29 & 0x7FFFFFFFFFFFFFFFLL) - v31;

      v19 = v45;
      v20 = v43;
      v21 = v39;
    }

    v35 = __OFSUB__(v22, 1);
    v8 = v22 - 1;
    v10 = v40;
    if (v35)
    {
      goto LABEL_33;
    }

    v1 = v13;
    *v23 = v19;
    *(v23 + 8) = v20;
    *(v23 + 12) = v21;
    v42 = v23 + 16;
    v2 = v12;
    if (v7 < v6)
    {
      continue;
    }

    break;
  }

LABEL_27:

  v36 = v5[3];
  if (v36 < 2)
  {
    return v5;
  }

  v37 = v36 >> 1;
  v35 = __OFSUB__(v37, v8);
  v38 = v37 - v8;
  if (!v35)
  {
    v5[2] = v38;
    return v5;
  }

LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_1B03AAF68@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 2);
  *a2 = *a1;
  *(a2 + 8) = v2;
  return _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
}

unint64_t sub_1B03AAFA8@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a2 + 16) && (v5 = *result, v6 = *(result + 8), result = sub_1B03AB888(*result, v6), (v7 & 1) != 0))
  {
    v8 = *(*(a2 + 56) + result);
    *a3 = v5;
    *(a3 + 8) = v6;
    *(a3 + 12) = v8;

    return _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  }

  else
  {
    *a3 = 0;
    *(a3 + 12) = 0;
    *(a3 + 8) = 0;
  }

  return result;
}

void *sub_1B03AB038(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4228, &qword_1B0EC4570);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4CB8, &unk_1B0ECE3A0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1B03AB180(void *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1B03AB16C(v2);
  }

  v3 = v2[2];
  v4 = v2 + 4;
  v19[0] = (v2 + 4);
  v19[1] = v3;
  result = sub_1B0E469A8();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v4;
        do
        {
          v13 = *(v12 + 28);
          if (*(v12 + 12) >= v13)
          {
            break;
          }

          v14 = v12[2];
          v15 = *(v12 + 6);
          *(v12 + 1) = *v12;
          *v12 = v14;
          *(v12 + 2) = v15;
          *(v12 + 12) = v13;
          v12 -= 2;
        }

        while (!__CFADD__(v11++, 1));
        v4 += 2;
        --v9;
      }
    }
  }

  else
  {
    v6 = result;
    v7 = v3 >> 1;
    if (v3 >= 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4CB8, &unk_1B0ECE3A0);
      v8 = sub_1B0E45278();
      *(v8 + 16) = v7;
    }

    else
    {
      v8 = MEMORY[0x1E69E7CC0];
    }

    v17[0] = v8 + 32;
    v17[1] = v7;
    sub_1B0BCA504(v17, v18, v19, v6);
    *(v8 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_1B03AB2E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v7 = *v3;
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](v4 | (v4 << 32));
  result = sub_1B0E46CB8();
  v9 = -1 << *(v7 + 32);
  v10 = result & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      if ((v12[2] | (v12[2] << 32)) == (v4 | (v4 << 32)))
      {
        v13 = *v12;
        v14 = *(*v12 + 16);
        if (v14 == *(a2 + 16))
        {
          break;
        }
      }

LABEL_3:
      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    if (v14)
    {
      v15 = v13 == a2;
    }

    else
    {
      v15 = 1;
    }

    if (v15)
    {
LABEL_14:

      v18 = *(v7 + 48) + 16 * v10;
      v19 = *v18;
      LODWORD(v18) = *(v18 + 8);
      *a1 = v19;
      *(a1 + 8) = v18;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      return 0;
    }

    else
    {
      v16 = (v13 + 32);
      v17 = (a2 + 32);
      while (v14)
      {
        if (*v16 != *v17)
        {
          goto LABEL_3;
        }

        ++v16;
        ++v17;
        if (!--v14)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
    }
  }

  else
  {
LABEL_15:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    v21 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B03AB6C0(v21, v4, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v22;
    *a1 = a2;
    *(a1 + 8) = v4;
    return 1;
  }

  return result;
}

uint64_t sub_1B03AB484(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4330, &qword_1B0EDC420);
  result = sub_1B0E46208();
  v5 = result;
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
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = *(v3 + 48) + 16 * (v14 | (v6 << 6));
      v18 = *v17;
      v19 = *(v17 + 8);
      sub_1B0E46C28();
      MEMORY[0x1B2728D70](v19 | (v19 << 32));
      result = sub_1B0E46CB8();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
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
      v13 = *(v5 + 48) + 16 * v12;
      *v13 = v18;
      *(v13 + 8) = v19;
      ++*(v5 + 16);
      result = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
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

  return result;
}

void sub_1B03AB6C0(uint64_t result, unsigned int a2, unint64_t a3, char a4)
{
  v7 = *(*v4 + 16);
  v8 = *(*v4 + 24);
  if (v8 <= v7 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_1B041E1C0(v7 + 1);
    }

    else
    {
      if (v8 > v7)
      {
        v9 = a3;
        sub_1B0B070C8();
        a3 = v9;
        goto LABEL_22;
      }

      sub_1B03AB484(v7 + 1);
    }

    v10 = *v4;
    sub_1B0E46C28();
    MEMORY[0x1B2728D70](a2 | (a2 << 32));
    v11 = sub_1B0E46CB8();
    v12 = -1 << *(v10 + 32);
    a3 = v11 & ~v12;
    if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
    {
      v13 = ~v12;
      while (1)
      {
        v14 = (*(v10 + 48) + 16 * a3);
        if ((v14[2] | (v14[2] << 32)) == (a2 | (a2 << 32)))
        {
          v15 = *v14;
          v16 = *(*v14 + 16);
          if (v16 == *(result + 16))
          {
            break;
          }
        }

LABEL_10:
        a3 = (a3 + 1) & v13;
        if (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) == 0)
        {
          goto LABEL_22;
        }
      }

      if (v16)
      {
        v17 = v15 == result;
      }

      else
      {
        v17 = 1;
      }

      if (!v17)
      {
        v18 = (v15 + 32);
        v19 = (result + 32);
        while (v16)
        {
          if (*v18 != *v19)
          {
            goto LABEL_10;
          }

          ++v18;
          ++v19;
          if (!--v16)
          {
            goto LABEL_21;
          }
        }

        __break(1u);
        goto LABEL_25;
      }

LABEL_21:
      sub_1B0E46B98();
      __break(1u);
    }
  }

LABEL_22:
  v20 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v21 = *(v20 + 48) + 16 * a3;
  *v21 = result;
  *(v21 + 8) = a2;
  v22 = *(v20 + 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (!v23)
  {
    *(v20 + 16) = v24;
    return;
  }

LABEL_25:
  __break(1u);
}

unint64_t sub_1B03AB888(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](v2 | (v2 << 32));
  v4 = sub_1B0E46CB8();

  return sub_1B03AB900(a1, v2, v4);
}

unint64_t sub_1B03AB900(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v5 = -1 << *(v3 + 32);
  result = a3 & ~v5;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v7 = ~v5;
    do
    {
      v8 = (*(v3 + 48) + 16 * result);
      if ((v8[2] | (v8[2] << 32)) == (a2 | (a2 << 32)))
      {
        v9 = *v8;
        v10 = *(*v8 + 16);
        if (v10 == *(a1 + 16))
        {
          if (!v10 || v9 == a1)
          {
            return result;
          }

          v11 = (v9 + 32);
          for (i = (a1 + 32); *v11 == *i; ++i)
          {
            ++v11;
            if (!--v10)
            {
              return result;
            }
          }
        }
      }

      result = (result + 1) & v7;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t UIDValidityWith.init(uidValidity:value:)@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _DWORD *a4@<X8>, uint64_t a5@<X3>)
{
  *a4 = a1;
  v8 = type metadata accessor for UIDValidityWith(0, a3, a3, a5);
  v9 = *(*(a3 - 8) + 32);
  v10 = a4 + *(v8 + 28);

  return v9(v10, a2, a3);
}

unint64_t sub_1B03ABAA0()
{
  v2 = qword_1EB6DCCC0;
  if (!qword_1EB6DCCC0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DCCC0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B03ABB24@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 2);
  result = MailboxesSelectionUsage.subscript.getter(*a1, v5, a2);
  if ((v7 & 0x100) == 0 && (v7 & 1) != 0 && result)
  {
    *a3 = v4;
    *(a3 + 8) = v5;
    if (result == 1)
    {
      v8 = 8;
    }

    else
    {
      v8 = 7;
    }

    *(a3 + 12) = v8;

    return _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  }

  else
  {
    *a3 = 0;
    *(a3 + 12) = 0;
    *(a3 + 8) = 0;
  }

  return result;
}

uint64_t sub_1B03ABBC8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = (a1 + 16);
  v2 = *(a1 + 16);
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = a2();
    swift_beginAccess();
    *v3 = v4;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v4;
}

uint64_t sub_1B03ABC50(uint64_t result, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_59;
  }

  v10 = result;
  v55[0] = a4;
  v55[1] = a5;
  v55[2] = a6;
  v55[3] = sub_1B0BC9E34;
  v55[4] = 0;
  v55[5] = sub_1B03AAF94;
  v55[6] = 0;
  v55[7] = sub_1B0BCCDFC;
  v55[8] = 0;
  v55[9] = result;
  if (!result)
  {
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
LABEL_53:
    v49 = 1;
    goto LABEL_54;
  }

  v11 = *(a6 + 16);
  v54 = a2 + 56;
  swift_retain_n();
  swift_retain_n();
  result = swift_retain_n();
  v12 = 0;
  v13 = a5 + 40;
  while (2)
  {
    if (v12 >= v11)
    {
      goto LABEL_53;
    }

    if ((v12 & 0x8000000000000000) != 0)
    {
LABEL_59:
      __break(1u);
      goto LABEL_60;
    }

    --v10;
    v14 = (v13 + 16 * v12);
    while (1)
    {
      if (v12 >= *(a5 + 16))
      {
        __break(1u);
LABEL_56:
        __break(1u);
        goto LABEL_57;
      }

      if (v12 >= *(a6 + 16))
      {
        goto LABEL_56;
      }

      v15 = *v14;
      v16 = *(v14 - 1);
      v17 = *(a6 + 32 + v12);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      if (v17 != 1)
      {
        break;
      }

LABEL_8:
      ++v12;

      v14 += 4;
      if (v11 == v12)
      {
        goto LABEL_53;
      }
    }

    if (!v16)
    {
      goto LABEL_8;
    }

    if (*(a2 + 16))
    {
      sub_1B0E46C28();
      MEMORY[0x1B2728D70](v15 | (v15 << 32));
      v18 = sub_1B0E46CB8();
      v19 = -1 << *(a2 + 32);
      v20 = v18 & ~v19;
      if ((*(v54 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20))
      {
        v21 = ~v19;
        do
        {
          v22 = (*(a2 + 48) + 16 * v20);
          if ((v22[2] | (v22[2] << 32)) == (v15 | (v15 << 32)))
          {
            v23 = *v22;
            v24 = *(*v22 + 16);
            if (v24 == *(v16 + 16))
            {
              if (v24)
              {
                v25 = v23 == v16;
              }

              else
              {
                v25 = 1;
              }

              if (v25)
              {
                goto LABEL_32;
              }

              v26 = (v23 + 32);
              v27 = (v16 + 32);
              while (1)
              {
                v29 = *v26++;
                v28 = v29;
                v30 = *v27++;
                if (v28 != v30)
                {
                  break;
                }

                if (!--v24)
                {
                  goto LABEL_32;
                }
              }
            }
          }

          v20 = (v20 + 1) & v21;
        }

        while (((*(v54 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) != 0);
      }
    }

    v31 = a3[1];
    v32 = *(v31 + 16);
    v33 = v31 + 32;
    if (!*a3)
    {
      sub_1B03A912C(v16, v15, v33, v32);
      if ((v35 & 1) == 0)
      {
        goto LABEL_32;
      }

LABEL_29:
      if (a8)
      {

        goto LABEL_49;
      }

      v36 = a3[1];
      v37 = *(v36 + 16);
      v38 = v36 + 32;
      if (*a3)
      {
        v39 = sub_1B0BA7CA4(v16, v15, v38, v37, (*a3 + 16), *a3 + 32);
        if ((v41 & 1) == 0)
        {
LABEL_43:
          v47 = v39;

          v48 = a3[2];
          result = swift_isUniquelyReferenced_nonNull_native();
          a3[2] = v48;
          if ((result & 1) == 0)
          {
            result = sub_1B0B94750(v48);
            v48 = result;
            a3[2] = result;
          }

          if ((v47 & 0x8000000000000000) == 0)
          {
            if (v47 >= *(v48 + 16))
            {
              goto LABEL_61;
            }

            v46 = v48 + 2 * v47;
            goto LABEL_48;
          }

LABEL_60:
          __break(1u);
LABEL_61:
          __break(1u);
          return result;
        }
      }

      else
      {
        v39 = sub_1B03A912C(v16, v15, v38, v37);
        if ((v42 & 1) == 0)
        {
          goto LABEL_43;
        }

        v40 = 0;
      }

      sub_1B03A5284(v16, v15, v40);

      v43 = a3[2];
      result = swift_isUniquelyReferenced_nonNull_native();
      a3[2] = v43;
      if ((result & 1) == 0)
      {
        result = sub_1B03A4FB4(0, *(v43 + 16) + 1, 1);
        v43 = a3[2];
      }

      v45 = *(v43 + 16);
      v44 = *(v43 + 24);
      if (v45 >= v44 >> 1)
      {
        result = sub_1B03A4FB4((v44 > 1), v45 + 1, 1);
        v43 = a3[2];
      }

      *(v43 + 16) = v45 + 1;
      v46 = v43 + 2 * v45;
LABEL_48:
      *(v46 + 32) = -16384;
LABEL_49:
      if (*(a3[1] + 16) < a7)
      {
        goto LABEL_50;
      }

LABEL_57:
      v49 = 0;
      break;
    }

    sub_1B0BA7CA4(v16, v15, v33, v32, (*a3 + 16), *a3 + 32);
    if (v34)
    {
      goto LABEL_29;
    }

LABEL_32:

LABEL_50:
    ++v12;
    v49 = 1;
    v13 = a5 + 40;
    if (v10)
    {
      continue;
    }

    break;
  }

LABEL_54:
  sub_1B0398EFC(v55, &qword_1EB6E5328, &qword_1B0ECE390);

  return v49;
}

uint64_t sub_1B03AC0B0(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for RunningTask(0) - 8;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v16[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1E69E7CD0];
  v21 = MEMORY[0x1E69E7CD0];
  v8 = *(a2 + 16);
  if (v8)
  {
    v9 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v10 = *(v4 + 72);
    do
    {
      sub_1B0450D48(v9, v6, type metadata accessor for RunningTask);
      sub_1B0450DB0(v6, v19);
      if (v20)
      {
        if (v20 == 1)
        {
          sub_1B0450C74(v19, v16);
          v11 = v17;
          v12 = v18;
          __swift_project_boxed_opaque_existential_0(v16, v17);
          (*(v12 + 32))(&v22, v11, v12);
          v13 = v23;
          v14 = v24;
          v25 = v22;
          sub_1B039E440(&v25);
          __swift_destroy_boxed_opaque_existential_0Tm(v16);
          sub_1B03AB2E0(v19, v13, v14);
        }
      }

      else
      {
        sub_1B0B7ABB4(v19);
      }

      sub_1B0450ED8(v6, type metadata accessor for RunningTask);
      v9 += v10;
      --v8;
    }

    while (v8);
    return v21;
  }

  return result;
}

uint64_t sub_1B03AC27C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    do
    {
      v6 = *v3;
      v7 = *v4;
      v8 = v6 >> 14;
      if (v6 >> 14 > 1)
      {
        if (v8 == 2)
        {
          v12 = v7 & 0xC000;
          v13 = (v7 ^ v6);
          if (v12 != 0x8000 || v13 != 0)
          {
            return 0;
          }
        }

        else if (*v3 > 0xC001u)
        {
          if (v6 == 49154)
          {
            if (v7 != 49154)
            {
              return 0;
            }
          }

          else if (v7 != 49155)
          {
            return 0;
          }
        }

        else if (v6 == 49152)
        {
          if (v7 != 49152)
          {
            return 0;
          }
        }

        else if (v7 != 49153)
        {
          return 0;
        }
      }

      else if (v8)
      {
        v9 = v7 & 0xC000;
        v10 = (v7 ^ v6);
        if (v9 != 0x4000 || v10 != 0)
        {
          return 0;
        }
      }

      else
      {
        if (v7 >> 14)
        {
          v5 = 0;
        }

        else
        {
          v5 = v6 == v7;
        }

        if (!v5)
        {
          return 0;
        }
      }

      ++v3;
      ++v4;
      --v2;
    }

    while (v2);
  }

  return 1;
}

unint64_t sub_1B03AC384(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void), uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v14 = swift_allocObject();
  *(v14 + 16) = a10;
  v53[0] = a3;
  v53[1] = a4;
  v53[2] = a5;
  v53[3] = sub_1B03AAF64;
  v53[4] = 0;
  v53[5] = sub_1B0BCC8EC;
  v53[6] = v14;
  v53[7] = sub_1B03AAF94;
  v53[8] = 0;
  v53[9] = sub_1B0BCCDFC;
  v53[10] = 0;
  v15 = *(a5 + 16);
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();

  result = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  if (!v15)
  {
LABEL_47:
    v17 = 1;
LABEL_48:
    sub_1B0398EFC(v53, &qword_1EB6E5330, &qword_1B0ECE398);

    return v17;
  }

  v17 = 0;
  v18 = 0;
  v19 = (a4 + 40);
  v46 = v14;
  v47 = a3;
  while (v18 < *(a4 + 16))
  {
    if (v18 >= *(a5 + 16))
    {
      goto LABEL_50;
    }

    v20 = *v19;
    v21 = *(v19 - 1);
    v22 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    if ((sub_1B03B5DDC(v22, v20, *(v14 + 16)) & 1) == 0)
    {

LABEL_16:

      goto LABEL_17;
    }

    if (!v21 || (sub_1B03B5DDC(v21, v20, a1) & 1) != 0)
    {
      goto LABEL_16;
    }

    v23 = a2[1];
    v24 = *(v23 + 16);
    v25 = v23 + 32;
    if (*a2)
    {
      sub_1B0BA7CA4(v21, v20, v25, v24, (*a2 + 16), *a2 + 32);
      if ((v26 & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    else
    {
      sub_1B03A912C(v21, v20, v25, v24);
      if ((v30 & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    v27 = *(a4 + 16);
    v28 = a4 + 32;
    if (a3)
    {
      result = sub_1B0BA7CA4(v21, v20, v28, v27, (a3 + 16), a3 + 32);
      if (v29)
      {
        goto LABEL_23;
      }
    }

    else
    {
      result = sub_1B03A912C(v21, v20, v28, v27);
      if (v31)
      {
        goto LABEL_23;
      }
    }

    if ((result & 0x8000000000000000) != 0)
    {
      goto LABEL_51;
    }

    if (result >= *(a5 + 16))
    {
      goto LABEL_53;
    }

    if (*(a5 + 32 + result) != 1)
    {
LABEL_24:
      v34 = 0x4000;
      goto LABEL_31;
    }

LABEL_23:
    v32 = sub_1B03ABBC8(a6, a7);
    v33 = sub_1B03B5DDC(v21, v20, v32);

    if (v33)
    {
      goto LABEL_24;
    }

    if (*(a9 + 16) && (sub_1B03AB888(v21, v20), (v35 & 1) != 0))
    {
      v34 = 16385;
    }

    else if (sub_1B03B5DDC(v21, v20, a10))
    {
      v34 = 16386;
    }

    else
    {
      v34 = 16387;
    }

LABEL_31:
    v50 = v34;
    v36 = a2[1];
    v37 = *(v36 + 16);
    v38 = v36 + 32;
    if (*a2)
    {
      v39 = sub_1B0BA7CA4(v21, v20, v38, v37, (*a2 + 16), *a2 + 32);
      if ((v41 & 1) == 0)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v39 = sub_1B03A912C(v21, v20, v38, v37);
      if ((v42 & 1) == 0)
      {
LABEL_41:
        v45 = v39;

        v43 = a2[2];
        result = swift_isUniquelyReferenced_nonNull_native();
        a2[2] = v43;
        if ((result & 1) == 0)
        {
          result = sub_1B0B94750(v43);
          v43 = result;
          a2[2] = result;
        }

        if ((v45 & 0x8000000000000000) != 0)
        {
          goto LABEL_52;
        }

        if (v45 >= *(v43 + 16))
        {
          goto LABEL_54;
        }

        goto LABEL_45;
      }

      v40 = 0;
    }

    sub_1B03A5284(v21, v20, v40);

    v43 = a2[2];
    result = swift_isUniquelyReferenced_nonNull_native();
    a2[2] = v43;
    if ((result & 1) == 0)
    {
      result = sub_1B03A4FB4(0, *(v43 + 16) + 1, 1);
      v43 = a2[2];
    }

    v45 = *(v43 + 16);
    v44 = *(v43 + 24);
    if (v45 >= v44 >> 1)
    {
      result = sub_1B03A4FB4((v44 > 1), v45 + 1, 1);
      v43 = a2[2];
    }

    *(v43 + 16) = v45 + 1;
LABEL_45:
    *(v43 + 2 * v45 + 32) = v50;
    v14 = v46;
    a3 = v47;
    if (*(a2[1] + 16) >= a11)
    {
      goto LABEL_48;
    }

LABEL_17:
    v17 = ++v18 >= v15;
    v19 += 4;
    if (v15 == v18)
    {
      goto LABEL_47;
    }
  }

  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
  return result;
}

uint64_t sub_1B03AC7E0()
{

  return swift_deallocObject();
}

IMAP2Connection::MailboxesSelectionUsage sub_1B03AC81C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  result.elements._rawValue = MailboxesSelectionUsage.init()().elements._rawValue;
  rawValue = result.elements._rawValue;
  v5 = *(v2 + 168);
  v6 = *(v2 + 192);
  if (v6 == 1)
  {
    v7 = 0;
    v8 = *(v5 + 16);
    v9 = MEMORY[0x1E69E7CC0];
LABEL_3:
    v10 = v5 - 128 + 176 * v7;
    while (v8 != v7)
    {
      if (v7 >= *(v5 + 16))
      {
        goto LABEL_66;
      }

      ++v7;
      v11 = v10 + 176;
      v12 = *(v10 + 256);
      if (*(*(v10 + 296) + 16))
      {
        v13 = v12 == 0;
      }

      else
      {
        v13 = 1;
      }

      v10 += 176;
      if (!v13)
      {
        v14 = *v11;
        v63 = *(v11 + 8);
        v64 = v6;
        v15 = OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
        swift_beginAccess();
        v16 = *(v12 + v15);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        result.elements._rawValue = swift_isUniquelyReferenced_nonNull_native();
        if ((result.elements._rawValue & 1) == 0)
        {
          result.elements._rawValue = sub_1B03B9450(0, v9[2] + 1, 1, v9);
          v9 = result.elements._rawValue;
        }

        v18 = v9[2];
        v17 = v9[3];
        if (v18 >= v17 >> 1)
        {
          result.elements._rawValue = sub_1B03B9450((v17 > 1), v18 + 1, 1, v9);
          v9 = result.elements._rawValue;
        }

        v9[2] = v18 + 1;
        v19 = &v9[3 * v18];
        *(v19 + 8) = v16;
        v19[5] = v14;
        v6 = v64;
        *(v19 + 12) = v63;
        goto LABEL_3;
      }
    }
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  v20 = v9[2];
  if (v20)
  {
    v21 = 0;
    v22 = (v9 + 6);
    while (v21 < v9[2])
    {
      ++v21;
      v23 = *v22;
      v24 = *(v22 - 4);
      v25 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      result.elements._rawValue = MailboxesSelectionUsage.subscript.setter(v25, v23, 1, 1, v24);
      v22 += 6;
      if (v20 == v21)
      {
        goto LABEL_20;
      }
    }

LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

LABEL_20:

  result.elements._rawValue = sub_1B03ACCBC(*(v3 + 264), *(v3 + 272));
  v26 = result.elements._rawValue;
  v27 = *(result.elements._rawValue + 2);
  if (v27)
  {
    v28 = 0;
    v29 = (result.elements._rawValue + 48);
    while (v28 < v26[2])
    {
      ++v28;
      v30 = *v29;
      v31 = *(v29 - 4);
      v32 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      result.elements._rawValue = MailboxesSelectionUsage.subscript.setter(v32, v30, 2, 1, v31);
      v29 += 6;
      if (v27 == v28)
      {
        goto LABEL_24;
      }
    }

LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

LABEL_24:

  if (v6)
  {
    v33 = 0;
    v34 = *(v5 + 16);
    v35 = MEMORY[0x1E69E7CC0];
LABEL_26:
    v36 = v5 - 128 + 176 * v33;
    while (v34 != v33)
    {
      if (v33 >= *(v5 + 16))
      {
        goto LABEL_67;
      }

      ++v33;
      v37 = v36 + 176;
      v38 = *(v36 + 256);
      if (*(*(v36 + 296) + 16))
      {
        v39 = 1;
      }

      else
      {
        v39 = v38 == 0;
      }

      v36 += 176;
      if (!v39)
      {
        v40 = *v37;
        v41 = *(v37 + 8);
        v42 = OBJC_IVAR____TtCVVV13IMAP2Behavior5State12LocalMailbox13SelectedStateP33_FBA699F01A458FEA4D2013E40A8E4C8B8_Storage_wrapped;
        swift_beginAccess();
        v43 = *(v38 + v42);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        result.elements._rawValue = swift_isUniquelyReferenced_nonNull_native();
        if ((result.elements._rawValue & 1) == 0)
        {
          result.elements._rawValue = sub_1B03B9450(0, v35[2] + 1, 1, v35);
          v35 = result.elements._rawValue;
        }

        v45 = v35[2];
        v44 = v35[3];
        if (v45 >= v44 >> 1)
        {
          result.elements._rawValue = sub_1B03B9450((v44 > 1), v45 + 1, 1, v35);
          v35 = result.elements._rawValue;
        }

        v35[2] = v45 + 1;
        v46 = &v35[3 * v45];
        *(v46 + 8) = v43;
        v46[5] = v40;
        *(v46 + 12) = v41;
        goto LABEL_26;
      }
    }
  }

  else
  {
    v35 = MEMORY[0x1E69E7CC0];
  }

  v47 = v35[2];
  if (!v47)
  {
LABEL_61:

    return rawValue;
  }

  v48 = 0;
  while (v48 < v35[2])
  {
    v49 = &v35[3 * v48 + 4];
    v50 = *v49;
    v51 = *(v49 + 8);
    v52 = *(v49 + 16);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    result.elements._rawValue = MailboxesSelectionUsage.subscript.getter(v50, rawValue);
    if (result.elements._rawValue)
    {
    }

    else
    {
      v53 = *(a1 + 16);
      if (v53)
      {
        v54 = 0;
        while (1)
        {
          v55 = (a1 + 32 + 16 * v54);
          if ((v55[2] | (v55[2] << 32)) == (v52 | (v52 << 32)))
          {
            v56 = *v55;
            v57 = *(*v55 + 16);
            if (v57 == *(v51 + 16))
            {
              break;
            }
          }

LABEL_47:
          if (++v54 == v53)
          {
            goto LABEL_59;
          }
        }

        if (v57)
        {
          v58 = v56 == v51;
        }

        else
        {
          v58 = 1;
        }

        if (!v58)
        {
          v59 = (v56 + 32);
          v60 = (v51 + 32);
          while (v57)
          {
            if (*v59 != *v60)
            {
              goto LABEL_47;
            }

            ++v59;
            ++v60;
            if (!--v57)
            {
              goto LABEL_58;
            }
          }

          __break(1u);
          goto LABEL_63;
        }

LABEL_58:
        v61 = 0;
        v62 = *(a2 + 16) - v54;
      }

      else
      {
LABEL_59:
        v62 = 0;
        v61 = 1;
      }

      result.elements._rawValue = MailboxesSelectionUsage.subscript.setter(v51, v52, v62, v61, v50);
    }

    if (++v48 == v47)
    {
      goto LABEL_61;
    }
  }

LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
  return result;
}

void *sub_1B03ACCBC(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for RunningTask(0) - 8;
  MEMORY[0x1EEE9AC00](v3);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a2 + 16);
  if (!v7)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v8 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v9 = *(v4 + 72);
  v10 = MEMORY[0x1E69E7CC0];
  do
  {
    sub_1B0450D48(v8, v6, type metadata accessor for RunningTask);
    sub_1B0450DB0(v6, &v24);
    if (v27)
    {
      if (v27 == 1)
      {
        v11 = v25;
        v12 = v26;
        sub_1B0450C74(&v24, v21);
        if (v12)
        {
          sub_1B0450ED8(v6, type metadata accessor for RunningTask);
          __swift_destroy_boxed_opaque_existential_0Tm(v21);
        }

        else
        {
          v13 = v22;
          v14 = v23;
          __swift_project_boxed_opaque_existential_0(v21, v22);
          (*(v14 + 32))(&v28, v13, v14);
          sub_1B0450ED8(v6, type metadata accessor for RunningTask);
          v31 = v28;
          sub_1B039E440(&v31);
          __swift_destroy_boxed_opaque_existential_0Tm(v21);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = sub_1B03B9450(0, v10[2] + 1, 1, v10);
          }

          v16 = v10[2];
          v15 = v10[3];
          if (v16 >= v15 >> 1)
          {
            v10 = sub_1B03B9450((v15 > 1), v16 + 1, 1, v10);
          }

          v17 = v29;
          v18 = v30;
          v10[2] = v16 + 1;
          v19 = &v10[3 * v16];
          *(v19 + 8) = v11;
          v19[5] = v17;
          *(v19 + 12) = v18;
        }
      }

      else
      {
        sub_1B0450ED8(v6, type metadata accessor for RunningTask);
      }
    }

    else
    {
      sub_1B0450ED8(v6, type metadata accessor for RunningTask);
      sub_1B0B7ABB4(&v24);
    }

    v8 += v9;
    --v7;
  }

  while (v7);
  return v10;
}

uint64_t MailboxesSelectionUsage.subscript.getter(uint64_t result, unsigned int a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (!v3)
  {
    return 0;
  }

  v4 = 0;
  while (1)
  {
    v5 = a3 + 32 + 40 * v4;
    if ((*(v5 + 16) | (*(v5 + 16) << 32)) == (a2 | (a2 << 32)))
    {
      v6 = *(v5 + 8);
      v7 = *(v6 + 16);
      if (v7 == *(result + 16))
      {
        break;
      }
    }

LABEL_3:
    if (++v4 == v3)
    {
      return 0;
    }
  }

  if (v7)
  {
    v8 = v6 == result;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    return *(v5 + 24);
  }

  v9 = (v6 + 32);
  v10 = (result + 32);
  while (v7)
  {
    if (*v9 != *v10)
    {
      goto LABEL_3;
    }

    ++v9;
    ++v10;
    if (!--v7)
    {
      return *(v5 + 24);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B03AD054(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  v5 = sub_1B03ABBC8(*(v2 + 16), *(v2 + 24));
  LOBYTE(v3) = sub_1B03B5DDC(a1, v3, v5);

  return v3 & 1;
}

void sub_1B03AD160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = type metadata accessor for State.Logger(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v4 + 8);
  v12 = (v4 + 8);
  v14 = *(v13 + 16);

  v15 = sub_1B03AD360(v12, a1, a2, a3);
  v16 = *(*v12 + 16);
  if (v16 < v15)
  {
    __break(1u);
  }

  else
  {
    sub_1B03AD818(v15, v16);
    v17 = *(*v12 + 16);
    v18 = v14 - v17;
    if (v14 != v17)
    {
      sub_1B0450D48(a4, v11, type metadata accessor for State.Logger);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v19 = sub_1B0E43988();
      v20 = sub_1B0E458D8();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 68158208;
        *(v21 + 4) = 2;
        *(v21 + 8) = 256;
        v22 = v11[*(v9 + 20)];
        sub_1B0450ED8(v11, type metadata accessor for State.Logger);
        *(v21 + 10) = v22;
        *(v21 + 11) = 2048;
        *(v21 + 13) = v18;
        _os_log_impl(&dword_1B0389000, v19, v20, "[%.*hhx] Pruned %ld mailbox task(s) without mailbox affinity.", v21, 0x15u);
        MEMORY[0x1B272C230](v21, -1, -1);
      }

      else
      {
        sub_1B0450ED8(v11, type metadata accessor for State.Logger);
      }
    }
  }
}

unint64_t sub_1B03AD360(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = type metadata accessor for RunningTask(0);
  v51 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v44 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v44 - v16;
  v47 = a1;
  v18 = *a1;

  v19 = sub_1B03AD728(v18, a2, a3);
  LODWORD(v53) = v20;

  v54 = v4;
  if (v4)
  {
  }

  v50 = v17;
  v46 = v14;
  v52 = v19;

  if (v53)
  {
    v52 = *(v18 + 16);

LABEL_8:

    return v52;
  }

  v44 = a4;
  v45 = v11;
  v48 = a3;
  v49 = a2;
  v22 = v52 + 1;
  if (!__OFADD__(v52, 1))
  {
    v23 = v18;
    v25 = (v18 + 16);
    v24 = *(v18 + 16);
    v26 = v50;
    if (v22 == v24)
    {
LABEL_7:

      goto LABEL_8;
    }

    while (v22 < v24)
    {
      v27 = (*(v51 + 80) + 32) & ~*(v51 + 80);
      v53 = v23;
      v28 = v23 + v27;
      v29 = *(v51 + 72);
      sub_1B0450D48(v23 + v27 + v29 * v22, v26, type metadata accessor for RunningTask);
      v30 = v54;
      v31 = sub_1B0450F38(v26, v49, v48);
      v32 = v26;
      v33 = v31;
      result = sub_1B0450ED8(v32, type metadata accessor for RunningTask);
      v54 = v30;
      if (v30)
      {
      }

      if (v33)
      {
        v26 = v50;
        v23 = v53;
      }

      else
      {
        v34 = v52;
        if (v22 == v52)
        {
          v26 = v50;
          v23 = v53;
        }

        else
        {
          if ((v52 & 0x8000000000000000) != 0)
          {
            goto LABEL_26;
          }

          v35 = *v25;
          if (v52 >= v35)
          {
            goto LABEL_27;
          }

          v36 = v29 * v52;
          result = sub_1B0450D48(&v28[v29 * v52], v46, type metadata accessor for RunningTask);
          if (v22 >= v35)
          {
            goto LABEL_28;
          }

          v37 = v29 * v22;
          v38 = &v28[v29 * v22];
          v39 = v45;
          sub_1B0450D48(v38, v45, type metadata accessor for RunningTask);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v53 = sub_1B0B8CA2C(v53);
          }

          v40 = v46;
          v26 = v50;
          v41 = v53;
          v42 = v53 + v27;
          v43 = &v42[v36];
          v23 = v53;
          result = sub_1B0B7DE7C(v39, v43);
          if (v22 >= v41[2])
          {
            goto LABEL_29;
          }

          result = sub_1B0B7DE7C(v40, &v42[v37]);
          *v47 = v23;
          v34 = v52;
        }

        v52 = v34 + 1;
      }

      ++v22;
      v25 = v23 + 2;
      v24 = v23[2];
      if (v22 == v24)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }

  __break(1u);
  return result;
}