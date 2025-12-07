id sub_257FF03DC()
{
  v0 = sub_257FF4390(&qword_27F915630, type metadata accessor for AppCodeIdentityRecord, &unk_25804D69C);
  v1 = *(v0 + 24);
  v2 = type metadata accessor for AppCodeIdentityRecord(0);
  v1(v2, v0);
  (*(v0 + 32))(v2, v0);
  (*(v0 + 40))(v2, v0);
  v3 = objc_allocWithZone(MEMORY[0x277D034C8]);
  v4 = sub_25804A100();

  v5 = sub_25804A100();

  v6 = sub_25804A100();

  v7 = [v3 initWithCodeSigningID:v4 teamID:v5 path:v6];

  return v7;
}

void sub_257FF055C(unint64_t a1)
{
  oslog = sub_257FF40C4(a1);
  if (oslog)
  {
    v28[0] = a1;
    swift_getKeyPath();
    sub_257FF4390(&qword_27F9152E0, type metadata accessor for ExtensionRecord, &unk_25804D728);
    sub_258049A90();

    swift_getKeyPath();
    type metadata accessor for DataRecord(0);
    sub_257FF4390(&qword_27F9152D8, type metadata accessor for ExtensionRecord, &unk_25804D754);
    sub_257FDAD00();
    sub_258049EF0();

    if (a1 >> 62)
    {
      goto LABEL_28;
    }

    v2 = *((v28[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      while (1)
      {
        v3 = 0;
        while ((a1 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x259C768B0](v3, a1);
          v8 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
LABEL_19:
            __break(1u);
            goto LABEL_20;
          }

LABEL_11:
          v28[0] = v7;
          swift_getKeyPath();
          sub_257FF4390(&qword_27F9152E8, type metadata accessor for DataRecord, &unk_25804D834);
          sub_258049A90();

          swift_getKeyPath();
          sub_257FF4390(&qword_27F9152A8, type metadata accessor for DataRecord, &unk_25804D7C4);
          sub_258049F00();

          v9 = sub_25804A4C0();

          if (v9 == 1)
          {
          }

          else
          {
            if (v9 == 2)
            {
              LOBYTE(v9) = 2;
            }

            else
            {
              LOBYTE(v9) = 0;
            }

            v10 = sub_25804A560();

            if ((v10 & 1) == 0)
            {

              goto LABEL_7;
            }
          }

          v4 = sub_258043AC4(v9, oslog);
          v6 = v5;
          swift_beginAccess();
          sub_257FF2318(&v29, v4, v6);
          swift_endAccess();

LABEL_7:
          ++v3;
          if (v8 == v2)
          {
            goto LABEL_29;
          }
        }

        if (v3 < *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          break;
        }

        __break(1u);
LABEL_28:
        v2 = sub_25804A480();
        if (!v2)
        {
          goto LABEL_29;
        }
      }

      v7 = *(a1 + 8 * v3 + 32);

      v8 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

LABEL_29:

    v28[0] = a1;
    swift_getKeyPath();
    sub_258049A90();

    swift_getKeyPath();
    type metadata accessor for CredentialRecord(0);
    sub_257FDAE04();
    sub_258049EF0();

    if (a1 >> 62)
    {
      goto LABEL_43;
    }

    v18 = *((v28[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v18)
    {
LABEL_31:
      v19 = 0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v20 = MEMORY[0x259C768B0](v19, a1);
          v21 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            goto LABEL_41;
          }
        }

        else
        {
          if (v19 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v20 = *(a1 + 8 * v19 + 32);

          v21 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
LABEL_41:
            __break(1u);
LABEL_42:
            __break(1u);
LABEL_43:
            v18 = sub_25804A480();
            if (!v18)
            {
              break;
            }

            goto LABEL_31;
          }
        }

        v28[0] = v20;
        swift_getKeyPath();
        sub_257FF4390(&qword_27F9152F0, type metadata accessor for CredentialRecord, &unk_25804D194);
        sub_258049A90();

        swift_getKeyPath();
        sub_257FF4390(&qword_27F9152C0, type metadata accessor for CredentialRecord, &unk_25804D228);
        sub_258049F00();

        v22 = sub_257FF644C(v20, v28[1]);
        if (v22 == 4)
        {
          v22 = 0;
        }

        v23 = sub_258043C54(v22, oslog);
        v25 = v24;
        swift_beginAccess();
        sub_257FF2318(&v29, v23, v25);
        swift_endAccess();

        ++v19;
      }

      while (v21 != v18);
    }
  }

  else
  {
LABEL_20:
    if (qword_27F915178 != -1)
    {
      swift_once();
    }

    v11 = sub_258049D30();
    __swift_project_value_buffer(v11, qword_27F919E18);

    osloga = sub_258049D10();
    v12 = sub_25804A2D0();

    if (os_log_type_enabled(osloga, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v28[0] = v14;
      *v13 = 136315138;
      v15 = sub_2580187EC();
      v17 = sub_258032C5C(v15, v16, v28);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_257FD4000, osloga, v12, "Cannot send notification for: %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v14);
      MEMORY[0x259C77210](v14, -1, -1);
      MEMORY[0x259C77210](v13, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_257FF0CE0(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, void *a5)
{
  v5 = a2;
  v87 = a2;
  if (!a1)
  {
    goto LABEL_26;
  }

  v7 = a1 & 0xFFFFFFFFFFFFFF8;
  if (!(a1 >> 62))
  {
    v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      goto LABEL_4;
    }

LABEL_26:
    v83 = MEMORY[0x277D84F90];
    goto LABEL_27;
  }

LABEL_25:
  v8 = sub_25804A480();
  if (!v8)
  {
    goto LABEL_26;
  }

LABEL_4:
  v9 = 0;
  v83 = MEMORY[0x277D84F90];
  do
  {
    v5 = v9;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x259C768B0](v5, a1);
        v11 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_23;
        }
      }

      else
      {
        if (v5 >= *(v7 + 16))
        {
          goto LABEL_24;
        }

        v10 = *(a1 + 8 * v5 + 32);

        v11 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
LABEL_23:
          __break(1u);
LABEL_24:
          __break(1u);
          goto LABEL_25;
        }
      }

      v90 = v11;
      swift_getKeyPath();
      sub_257FF4390(&qword_27F9152E8, type metadata accessor for DataRecord, &unk_25804D834);
      sub_258049A90();

      swift_getKeyPath();
      sub_257FF4390(&qword_27F9152A8, type metadata accessor for DataRecord, &unk_25804D7C4);
      sub_258049F00();

      v12 = sub_25804A4C0();

      if (v12 == 1)
      {
        break;
      }

      v13 = sub_25804A560();

      if (v13)
      {
        goto LABEL_17;
      }

      ++v5;
      if (v90 == v8)
      {
        v5 = v87;
        goto LABEL_27;
      }
    }

LABEL_17:
    swift_getKeyPath();
    sub_258049A90();

    swift_getKeyPath();
    sub_258049F00();

    v14 = v10;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v83 = sub_25800A2A8(0, *(v83 + 2) + 1, 1, v83);
    }

    v5 = v87;
    v16 = *(v83 + 2);
    v15 = *(v83 + 3);
    if (v16 >= v15 >> 1)
    {
      v83 = sub_25800A2A8((v15 > 1), v16 + 1, 1, v83);
    }

    *(v83 + 2) = v16 + 1;
    v17 = &v83[16 * v16];
    *(v17 + 4) = v14;
    *(v17 + 5) = v94;
    v9 = v90;
  }

  while (v90 != v8);
LABEL_27:
  v18 = MEMORY[0x277D84F90];
  if (v5)
  {
    v19 = (v5 & 0xFFFFFFFFFFFFFF8);
    if (v5 >> 62)
    {
      goto LABEL_179;
    }

    v20 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v20)
    {
      goto LABEL_30;
    }
  }

LABEL_48:
  v30 = sub_257FF4004(v83);

  v31 = sub_257FF4004(v18);

  v32 = sub_257FF2160(v30, v31);

  if ((v32 & 1) == 0)
  {
    v33 = sub_258043AC4(1, a5);
    v35 = v34;
    swift_beginAccess();
    sub_257FF2318(&v95, v33, v35);
    swift_endAccess();
  }

  v36 = a3;
  v87 = a3 & 0xFFFFFFFFFFFFFF8;
  v37 = 0;
  v19 = MEMORY[0x277D84F90];
  while (2)
  {
    v81 = v37;
    v5 = *(&unk_286937888 + v37 + 32);
    if (!v36)
    {
      goto LABEL_110;
    }

    v95 = v19;
    if (v36 >> 62)
    {
      v19 = sub_25804A480();
      if (v19)
      {
        goto LABEL_55;
      }

LABEL_95:
      v19 = MEMORY[0x277D84F90];
      v46 = MEMORY[0x277D84F90];
      if ((MEMORY[0x277D84F90] & 0x8000000000000000) != 0)
      {
        goto LABEL_108;
      }

      goto LABEL_96;
    }

    v19 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v19)
    {
      goto LABEL_95;
    }

LABEL_55:
    v38 = 0;
    do
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        MEMORY[0x259C768B0](v38, a3);
        v39 = (v38 + 1);
        if (__OFADD__(v38, 1))
        {
          goto LABEL_171;
        }
      }

      else
      {
        if (v38 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_172;
        }

        v39 = (v38 + 1);
        if (__OFADD__(v38, 1))
        {
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
          v20 = sub_25804A480();
          if (!v20)
          {
            goto LABEL_48;
          }

LABEL_30:
          v21 = 0;
          v91 = v5 & 0xC000000000000001;
          v86 = v20;
          while (1)
          {
            v84 = v18;
            v22 = v21;
            while (1)
            {
              if (v91)
              {
                v23 = MEMORY[0x259C768B0](v22, v5);
                v21 = v22 + 1;
                if (__OFADD__(v22, 1))
                {
                  goto LABEL_175;
                }
              }

              else
              {
                if (v22 >= v19[2])
                {
                  goto LABEL_176;
                }

                v23 = *(v5 + 8 * v22 + 32);

                v21 = v22 + 1;
                if (__OFADD__(v22, 1))
                {
                  goto LABEL_175;
                }
              }

              v18 = OBJC_IVAR____TtC15ManagedAppsCore10DataRecord___observationRegistrar;
              swift_getKeyPath();
              sub_257FF4390(&qword_27F9152E8, type metadata accessor for DataRecord, &unk_25804D834);
              sub_258049A90();

              swift_getKeyPath();
              sub_257FF4390(&qword_27F9152A8, type metadata accessor for DataRecord, &unk_25804D7C4);
              sub_258049F00();

              v24 = sub_25804A4C0();

              if (v24 == 1)
              {
                break;
              }

              v25 = sub_25804A560();

              if (v25)
              {
                goto LABEL_43;
              }

              ++v22;
              v5 = v87;
              if (v21 == v86)
              {
                v18 = v84;
                goto LABEL_48;
              }
            }

LABEL_43:
            swift_getKeyPath();
            sub_258049A90();

            swift_getKeyPath();
            sub_258049F00();

            v26 = v23;
            v18 = v84;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v18 = sub_25800A2A8(0, *(v84 + 16) + 1, 1, v84);
            }

            v28 = *(v18 + 16);
            v27 = *(v18 + 24);
            v5 = v87;
            if (v28 >= v27 >> 1)
            {
              v18 = sub_25800A2A8((v27 > 1), v28 + 1, 1, v18);
            }

            *(v18 + 16) = v28 + 1;
            v29 = v18 + 16 * v28;
            *(v29 + 32) = v26;
            *(v29 + 40) = v94;
            if (v21 == v86)
            {
              goto LABEL_48;
            }
          }
        }
      }

      v18 = &unk_25804BE48;
      swift_getKeyPath();
      sub_257FF4390(&qword_27F9152F0, type metadata accessor for CredentialRecord, &unk_25804D194);
      sub_258049A90();

      swift_getKeyPath();
      sub_257FF4390(&qword_27F9152C0, type metadata accessor for CredentialRecord, &unk_25804D228);
      sub_258049F00();

      v40 = sub_25804A4C0();

      if (v40 == 3)
      {
        v42 = 0xE800000000000000;
        v41 = 0x797469746E656469;
        if (v5 > 1)
        {
          goto LABEL_74;
        }
      }

      else if (v40 == 2)
      {
        v41 = 0x6369666974726563;
        v42 = 0xEB00000000657461;
        if (v5 > 1)
        {
          goto LABEL_74;
        }
      }

      else
      {
        if (v40 == 1)
        {
          v41 = 0x64726F7773736170;
        }

        else
        {
          v41 = 0x6E776F6E6B6E75;
        }

        if (v40 == 1)
        {
          v42 = 0xE800000000000000;
        }

        else
        {
          v42 = 0xE700000000000000;
        }

        if (v5 > 1)
        {
LABEL_74:
          if (v5 == 2)
          {
            v44 = 0x6369666974726563;
          }

          else
          {
            v44 = 0x797469746E656469;
          }

          if (v5 == 2)
          {
            v43 = 0xEB00000000657461;
          }

          else
          {
            v43 = 0xE800000000000000;
          }

          if (v41 != v44)
          {
            goto LABEL_87;
          }

          goto LABEL_85;
        }
      }

      if (v5)
      {
        v43 = 0xE800000000000000;
        if (v41 != 0x64726F7773736170)
        {
          goto LABEL_87;
        }
      }

      else
      {
        v43 = 0xE700000000000000;
        if (v41 != 0x6E776F6E6B6E75)
        {
          goto LABEL_87;
        }
      }

LABEL_85:
      if (v42 == v43)
      {

        goto LABEL_88;
      }

LABEL_87:
      v45 = sub_25804A560();

      if ((v45 & 1) == 0)
      {

        goto LABEL_57;
      }

LABEL_88:
      sub_25804A410();
      sub_25804A440();
      sub_25804A450();
      sub_25804A420();
LABEL_57:
      ++v38;
    }

    while (v39 != v19);
    v46 = v95;
    v19 = MEMORY[0x277D84F90];
    if ((v95 & 0x8000000000000000) == 0)
    {
LABEL_96:
      if ((v46 & 0x4000000000000000) != 0)
      {
        goto LABEL_108;
      }

      v47 = *(v46 + 16);
      if (v47)
      {
        goto LABEL_98;
      }

LABEL_109:

LABEL_110:
      v92 = v19;
      if (!a4)
      {
        goto LABEL_167;
      }

      goto LABEL_111;
    }

LABEL_108:
    v56 = v46;
    v47 = sub_25804A480();
    v46 = v56;
    if (!v47)
    {
      goto LABEL_109;
    }

LABEL_98:
    v48 = v46;
    sub_258033204(0, v47 & ~(v47 >> 63), 0);
    if (v47 < 0)
    {
      goto LABEL_177;
    }

    v49 = 0;
    v92 = v19;
    v50 = v48;
    v83 = v47;
    do
    {
      v19 = v5;
      if ((v48 & 0xC000000000000001) != 0)
      {
        v51 = MEMORY[0x259C768B0](v49, v50);
      }

      else
      {
        v51 = *(v50 + 8 * v49 + 32);
      }

      swift_getKeyPath();
      sub_257FF4390(&qword_27F9152F0, type metadata accessor for CredentialRecord, &unk_25804D194);
      sub_258049A90();

      swift_getKeyPath();
      sub_257FF4390(&qword_27F9152C0, type metadata accessor for CredentialRecord, &unk_25804D228);
      sub_258049F00();

      MEMORY[0x259C76670](2108704, 0xE300000000000000);
      v95 = v51;
      swift_getKeyPath();
      sub_258049A90();

      swift_getKeyPath();
      sub_258049F00();

      MEMORY[0x259C76670](v95, v96);

      v18 = v94;
      v52 = v92;
      v54 = *(v92 + 16);
      v53 = *(v92 + 24);
      if (v54 >= v53 >> 1)
      {
        sub_258033204((v53 > 1), v54 + 1, 1);
        v52 = v92;
      }

      ++v49;
      *(v52 + 16) = v54 + 1;
      v92 = v52;
      v55 = v52 + 16 * v54;
      *(v55 + 32) = v51;
      *(v55 + 40) = v94;
      v50 = v48;
      v5 = v19;
    }

    while (v47 != v49);

    if (!a4)
    {
LABEL_167:
      v68 = MEMORY[0x277D84F90];
      goto LABEL_168;
    }

LABEL_111:
    v95 = MEMORY[0x277D84F90];
    if (!(a4 >> 62))
    {
      v57 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v57)
      {
        goto LABEL_113;
      }

LABEL_153:
      v65 = MEMORY[0x277D84F90];
      if ((MEMORY[0x277D84F90] & 0x8000000000000000) != 0)
      {
        goto LABEL_165;
      }

LABEL_154:
      if ((v65 & 0x4000000000000000) != 0)
      {
        goto LABEL_165;
      }

      v66 = *(v65 + 16);
      if (v66)
      {
        goto LABEL_156;
      }

LABEL_166:

      goto LABEL_167;
    }

    v57 = sub_25804A480();
    if (!v57)
    {
      goto LABEL_153;
    }

LABEL_113:
    v58 = 0;
    while (2)
    {
      if ((a4 & 0xC000000000000001) != 0)
      {
        MEMORY[0x259C768B0](v58, a4);
        v59 = v58 + 1;
        if (__OFADD__(v58, 1))
        {
          goto LABEL_173;
        }
      }

      else
      {
        if (v58 >= *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_174;
        }

        v59 = v58 + 1;
        if (__OFADD__(v58, 1))
        {
          goto LABEL_173;
        }
      }

      v19 = &unk_25804BE48;
      swift_getKeyPath();
      sub_257FF4390(&qword_27F9152F0, type metadata accessor for CredentialRecord, &unk_25804D194);
      sub_258049A90();

      swift_getKeyPath();
      sub_257FF4390(&qword_27F9152C0, type metadata accessor for CredentialRecord, &unk_25804D228);
      sub_258049F00();

      v60 = sub_25804A4C0();

      if (v60 == 3)
      {
        v62 = 0xE800000000000000;
        v61 = 0x797469746E656469;
        if (v5 <= 1)
        {
          goto LABEL_129;
        }
      }

      else if (v60 == 2)
      {
        v61 = 0x6369666974726563;
        v62 = 0xEB00000000657461;
        if (v5 <= 1)
        {
          goto LABEL_129;
        }
      }

      else
      {
        if (v60 == 1)
        {
          v61 = 0x64726F7773736170;
        }

        else
        {
          v61 = 0x6E776F6E6B6E75;
        }

        if (v60 == 1)
        {
          v62 = 0xE800000000000000;
        }

        else
        {
          v62 = 0xE700000000000000;
        }

        if (v5 <= 1)
        {
LABEL_129:
          if (v5)
          {
            v63 = 0xE800000000000000;
            if (v61 != 0x64726F7773736170)
            {
              goto LABEL_145;
            }
          }

          else
          {
            v63 = 0xE700000000000000;
            if (v61 != 0x6E776F6E6B6E75)
            {
              goto LABEL_145;
            }
          }

LABEL_144:
          if (v62 != v63)
          {
            goto LABEL_145;
          }

          goto LABEL_115;
        }
      }

      if (v5 == 2)
      {
        v64 = 0x6369666974726563;
      }

      else
      {
        v64 = 0x797469746E656469;
      }

      if (v5 == 2)
      {
        v63 = 0xEB00000000657461;
      }

      else
      {
        v63 = 0xE800000000000000;
      }

      if (v61 == v64)
      {
        goto LABEL_144;
      }

LABEL_145:
      v18 = sub_25804A560();

      if (v18)
      {
LABEL_115:
        sub_25804A410();
        v18 = *(v95 + 16);
        sub_25804A440();
        sub_25804A450();
        sub_25804A420();
      }

      else
      {
      }

      ++v58;
      if (v59 != v57)
      {
        continue;
      }

      break;
    }

    v65 = v95;
    if ((v95 & 0x8000000000000000) == 0)
    {
      goto LABEL_154;
    }

LABEL_165:
    v66 = sub_25804A480();
    if (!v66)
    {
      goto LABEL_166;
    }

LABEL_156:
    v93 = MEMORY[0x277D84F90];
    sub_258033204(0, v66 & ~(v66 >> 63), 0);
    if (v66 < 0)
    {
      goto LABEL_178;
    }

    v80 = v5;
    v67 = 0;
    v68 = v93;
    v82 = v65 & 0xC000000000000001;
    v83 = v66;
    v85 = v65;
    do
    {
      if (v82)
      {
        v69 = MEMORY[0x259C768B0](v67, v65);
      }

      else
      {
        v69 = *(v65 + 8 * v67 + 32);
      }

      swift_getKeyPath();
      sub_257FF4390(&qword_27F9152F0, type metadata accessor for CredentialRecord, &unk_25804D194);
      sub_258049A90();

      swift_getKeyPath();
      sub_257FF4390(&qword_27F9152C0, type metadata accessor for CredentialRecord, &unk_25804D228);
      sub_258049F00();

      MEMORY[0x259C76670](2108704, 0xE300000000000000);
      v95 = v69;
      swift_getKeyPath();
      sub_258049A90();

      swift_getKeyPath();
      sub_258049F00();

      MEMORY[0x259C76670](v95, v96);

      v18 = *(v93 + 16);
      v70 = *(v93 + 24);
      if (v18 >= v70 >> 1)
      {
        sub_258033204((v70 > 1), v18 + 1, 1);
      }

      ++v67;
      *(v93 + 16) = v18 + 1;
      v71 = v93 + 16 * v18;
      *(v71 + 32) = v69;
      *(v71 + 40) = v94;
      v65 = v85;
    }

    while (v66 != v67);

    LOBYTE(v5) = v80;
LABEL_168:
    v72 = sub_257FF4004(v92);

    v73 = sub_257FF4004(v68);

    v74 = sub_257FF2160(v72, v73);

    if ((v74 & 1) == 0)
    {
      v76 = sub_258043C54(v5, a5);
      v78 = v77;
      swift_beginAccess();
      sub_257FF2318(&v95, v76, v78);
      swift_endAccess();
    }

    v37 = v81 + 1;
    v36 = a3;
    v19 = MEMORY[0x277D84F90];
    if (v81 != 3)
    {
      continue;
    }

    return result;
  }
}

uint64_t sub_257FF20FC()
{

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_257FF2160(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v22 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v13 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    sub_25804A600();

    sub_25804A150();
    v16 = sub_25804A620();
    v17 = -1 << *(a2 + 32);
    v18 = v16 & ~v17;
    if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
LABEL_23:

      return 0;
    }

    v19 = ~v17;
    while (1)
    {
      v20 = (*(a2 + 48) + 16 * v18);
      v21 = *v20 == v15 && v20[1] == v14;
      if (v21 || (sub_25804A560() & 1) != 0)
      {
        break;
      }

      v18 = (v18 + 1) & v19;
      if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = v22;
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_257FF2318(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_25804A600();
  sub_25804A150();
  v8 = sub_25804A620();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_25804A560() & 1) != 0)
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

    sub_257FF3E84(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_257FF2468(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];

        sub_257FF35B8(v12, v13);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

uint64_t sub_257FF2594(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v66 = *MEMORY[0x277D85DE8];
  if (!*(a2 + 16))
  {

    return MEMORY[0x277D84FA0];
  }

  v53 = 0;
  v7 = a1 + 56;
  v6 = *(a1 + 56);
  v8 = -1;
  v9 = -1 << *(a1 + 32);
  v57 = ~v9;
  if (-v9 < 64)
  {
    v10 = ~(-1 << -v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v6;
  v12 = (63 - v9) >> 6;
  v61 = (a2 + 56);

  v15 = 0;
  v59 = v13;
  if (!v11)
  {
LABEL_6:
    v16 = v15;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_56;
      }

      if (v17 >= v12)
      {
        goto LABEL_53;
      }

      v11 = *(v7 + 8 * v17);
      ++v16;
      if (v11)
      {
        v15 = v17;
        break;
      }
    }
  }

  while (1)
  {
    v18 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v19 = *(v13 + 48);
    v60 = v15;
    v20 = (v19 + ((v15 << 10) | (16 * v18)));
    v22 = *v20;
    v21 = v20[1];
    sub_25804A600();

    sub_25804A150();
    v23 = sub_25804A620();
    v24 = -1 << *(v5 + 32);
    v2 = v23 & ~v24;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v61[v2 >> 6]) != 0)
    {
      break;
    }

LABEL_19:

    v13 = v59;
    v15 = v60;
    v8 = -1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  v3 = ~v24;
  while (1)
  {
    v25 = (*(v5 + 48) + 16 * v2);
    v26 = *v25 == v22 && v25[1] == v21;
    if (v26 || (sub_25804A560() & 1) != 0)
    {
      break;
    }

    v2 = (v2 + 1) & v3;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v61[v2 >> 6]) == 0)
    {
      goto LABEL_19;
    }
  }

  v3 = v59;
  v27 = v60;
  v63 = v57;
  v64 = v60;
  v65 = v11;
  v62[0] = v59;
  v62[1] = v7;

  v29 = *(v5 + 32);
  v54 = ((1 << v29) + 63) >> 6;
  v14 = 8 * v54;
  if ((v29 & 0x3Fu) > 0xD)
  {
    goto LABEL_57;
  }

  while (1)
  {
    v55 = &v53;
    MEMORY[0x28223BE20](v28);
    v2 = &v53 - ((v30 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v2, v61, v30);
    v31 = *(v2 + 8 * v8) & ~v4;
    v32 = *(v5 + 16);
    v58 = v2;
    *(v2 + 8 * v8) = v31;
    v33 = v32 - 1;
LABEL_23:
    v56 = v33;
    if (v11)
    {
      goto LABEL_33;
    }

LABEL_28:
    v35 = v27;
    while (1)
    {
      v36 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v36 >= v12)
      {
        v5 = sub_257FF3394(v58, v54, v56, v5);
        goto LABEL_51;
      }

      v11 = *(v7 + 8 * v36);
      ++v35;
      if (v11)
      {
        v27 = v36;
        while (1)
        {
LABEL_33:
          while (1)
          {
            v37 = __clz(__rbit64(v11));
            v11 &= v11 - 1;
            v38 = *(v3 + 48);
            v60 = v27;
            v39 = (v38 + ((v27 << 10) | (16 * v37)));
            v40 = *v39;
            v4 = v39[1];
            sub_25804A600();

            sub_25804A150();
            v41 = sub_25804A620();
            v42 = -1 << *(v5 + 32);
            v8 = v41 & ~v42;
            v2 = v8 >> 6;
            v43 = 1 << v8;
            if (((1 << v8) & v61[v8 >> 6]) != 0)
            {
              break;
            }

LABEL_45:

            v27 = v60;
            if (!v11)
            {
              goto LABEL_28;
            }
          }

          v44 = (*(v5 + 48) + 16 * v8);
          if (*v44 != v40 || v44[1] != v4)
          {
            v46 = ~v42;
            while ((sub_25804A560() & 1) == 0)
            {
              v8 = (v8 + 1) & v46;
              v2 = v8 >> 6;
              v43 = 1 << v8;
              if (((1 << v8) & v61[v8 >> 6]) == 0)
              {
                v3 = v59;
                goto LABEL_45;
              }

              v47 = (*(v5 + 48) + 16 * v8);
              if (*v47 == v40 && v47[1] == v4)
              {
                break;
              }
            }
          }

          v3 = v59;
          v34 = v58[v2];
          v58[v2] = v34 & ~v43;
          v26 = (v34 & v43) == 0;
          v27 = v60;
          if (!v26)
          {
            break;
          }

          if (!v11)
          {
            goto LABEL_28;
          }
        }

        v33 = v56 - 1;
        if (__OFSUB__(v56, 1))
        {
          __break(1u);
        }

        if (v56 == 1)
        {

          v5 = MEMORY[0x277D84FA0];
          goto LABEL_51;
        }

        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    v49 = v14;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v27 = v60;
  }

  v50 = swift_slowAlloc();
  memcpy(v50, v61, v49);
  v51 = v53;
  v52 = sub_257FF36F4(v50, v54, v5, v2, v62);

  if (!v51)
  {

    MEMORY[0x259C77210](v50, -1, -1);
    v3 = v62[0];
    v57 = v63;
    v5 = v52;
LABEL_51:
    v13 = v3;
LABEL_53:
    sub_257FF43E0(v13);
    return v5;
  }

  result = MEMORY[0x259C77210](v50, -1, -1);
  __break(1u);
  return result;
}

uint64_t sub_257FF2B04(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915628, &qword_25804BF10);
  result = sub_25804A380();
  v5 = result;
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
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_25804A600();
      sub_25804A150();
      result = sub_25804A620();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
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

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

unint64_t *sub_257FF2D64(uint64_t a1, uint64_t a2)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = 8 * v6;

  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    bzero(v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v7);
    v9 = sub_257FF2FB8((v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0)), v6, a2, a1);
  }

  else
  {
    v11 = swift_slowAlloc();

    v9 = sub_257FF2F28(v11, v6, a2, a1);

    MEMORY[0x259C77210](v11, -1, -1);
  }

  return v9;
}

unint64_t *sub_257FF2F28(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
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

    v8 = sub_257FF2FB8(result, a2, a3, a4);

    return v8;
  }

  return result;
}

unint64_t *sub_257FF2FB8(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v50 = result;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v53 = 0;
    v13 = 0;
    v14 = a3 + 56;
    v15 = 1 << *(a3 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(a3 + 56);
    v18 = (v15 + 63) >> 6;
    v19 = a4 + 56;
    while (v17)
    {
      v20 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_18:
      v51 = v20 | (v13 << 6);
      v23 = (*(a3 + 48) + 16 * v51);
      v25 = *v23;
      v24 = v23[1];
      sub_25804A600();

      sub_25804A150();
      v26 = sub_25804A620();
      v27 = -1 << *(v4 + 32);
      v28 = v26 & ~v27;
      if ((*(v19 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28))
      {
        v29 = ~v27;
        while (1)
        {
          v30 = (*(a4 + 48) + 16 * v28);
          v31 = *v30 == v25 && v30[1] == v24;
          if (v31 || (sub_25804A560() & 1) != 0)
          {
            break;
          }

          v28 = (v28 + 1) & v29;
          if (((*(v19 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
          {
            goto LABEL_10;
          }
        }

        *(v50 + ((v51 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v51;
        v32 = __OFADD__(v53++, 1);
        v4 = a4;
        if (v32)
        {
          __break(1u);
LABEL_30:
          v5 = a3;
LABEL_31:

          return sub_257FF3394(v50, a2, v53, v5);
        }
      }

      else
      {
LABEL_10:

        v4 = a4;
      }
    }

    v21 = v13;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_30;
      }

      v22 = *(v14 + 8 * v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v17 = (v22 - 1) & v22;
        goto LABEL_18;
      }
    }

LABEL_54:
    __break(1u);
  }

  else
  {
    v53 = 0;
    v6 = 0;
    v7 = a4 + 56;
    v8 = 1 << *(a4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(a4 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = a3 + 56;
    v49 = v11;
    while (v10)
    {
      v33 = __clz(__rbit64(v10));
      v52 = (v10 - 1) & v10;
LABEL_41:
      v36 = (*(v4 + 48) + 16 * (v33 | (v6 << 6)));
      v38 = *v36;
      v37 = v36[1];
      sub_25804A600();

      sub_25804A150();
      v39 = sub_25804A620();
      v40 = -1 << *(v5 + 32);
      v41 = v39 & ~v40;
      v42 = v41 >> 6;
      v43 = 1 << v41;
      if (((1 << v41) & *(v12 + 8 * (v41 >> 6))) != 0)
      {
        v44 = (*(v5 + 48) + 16 * v41);
        if (*v44 != v38 || v44[1] != v37)
        {
          v46 = ~v40;
          while ((sub_25804A560() & 1) == 0)
          {
            v41 = (v41 + 1) & v46;
            v42 = v41 >> 6;
            v43 = 1 << v41;
            if (((1 << v41) & *(v12 + 8 * (v41 >> 6))) == 0)
            {
              v5 = a3;
              goto LABEL_33;
            }

            v47 = (*(a3 + 48) + 16 * v41);
            if (*v47 == v38 && v47[1] == v37)
            {
              break;
            }
          }
        }

        v11 = v49;
        v50[v42] |= v43;
        v5 = a3;
        v32 = __OFADD__(v53++, 1);
        v4 = a4;
        v10 = v52;
        if (v32)
        {
          __break(1u);
          goto LABEL_54;
        }
      }

      else
      {
LABEL_33:

        v4 = a4;
        v11 = v49;
        v10 = v52;
      }
    }

    v34 = v6;
    while (1)
    {
      v6 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      if (v6 >= v11)
      {
        goto LABEL_31;
      }

      v35 = *(v7 + 8 * v6);
      ++v34;
      if (v35)
      {
        v33 = __clz(__rbit64(v35));
        v52 = (v35 - 1) & v35;
        goto LABEL_41;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_257FF3394(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915628, &qword_25804BF10);
  result = sub_25804A390();
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
  v12 = result + 56;
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_25804A600();

    sub_25804A150();
    result = sub_25804A620();
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v29;
    if (!v5)
    {
      goto LABEL_6;
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
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_257FF35B8(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_25804A600();
  sub_25804A150();
  v6 = sub_25804A620();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(v5 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_25804A560() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v16 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_257FF392C();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  sub_257FF3CC0(v8);
  *v2 = v16;
  return v12;
}

unint64_t *sub_257FF36F4(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v31 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v30 = v8;
    do
    {
      while (1)
      {
        v11 = a5[3];
        v12 = a5[4];
        if (!v12)
        {
          v14 = (a5[2] + 64) >> 6;
          v15 = a5[3];
          while (1)
          {
            v13 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              __break(1u);
              goto LABEL_30;
            }

            if (v13 >= v14)
            {
              break;
            }

            v12 = *(a5[1] + 8 * v13);
            ++v15;
            if (v12)
            {
              goto LABEL_10;
            }
          }

          if (v14 <= v11 + 1)
          {
            v28 = v11 + 1;
          }

          else
          {
            v28 = (a5[2] + 64) >> 6;
          }

          a5[3] = v28 - 1;
          a5[4] = 0;

          return sub_257FF3394(v31, a2, v30, a3);
        }

        v13 = a5[3];
LABEL_10:
        v16 = (*(*a5 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v12)))));
        v18 = *v16;
        v17 = v16[1];
        a5[3] = v13;
        a5[4] = (v12 - 1) & v12;
        sub_25804A600();

        sub_25804A150();
        v19 = sub_25804A620();
        v20 = -1 << *(a3 + 32);
        v21 = v19 & ~v20;
        v22 = v21 >> 6;
        v23 = 1 << v21;
        if (((1 << v21) & *(v9 + 8 * (v21 >> 6))) != 0)
        {
          break;
        }

LABEL_21:
      }

      v24 = (*(a3 + 48) + 16 * v21);
      if (*v24 != v18 || v24[1] != v17)
      {
        v26 = ~v20;
        while ((sub_25804A560() & 1) == 0)
        {
          v21 = (v21 + 1) & v26;
          v22 = v21 >> 6;
          v23 = 1 << v21;
          if (((1 << v21) & *(v9 + 8 * (v21 >> 6))) == 0)
          {
            goto LABEL_21;
          }

          v27 = (*(a3 + 48) + 16 * v21);
          if (*v27 == v18 && v27[1] == v17)
          {
            break;
          }
        }
      }

      v10 = v31[v22];
      v31[v22] = v10 & ~v23;
    }

    while ((v10 & v23) == 0);
    v8 = v30 - 1;
    if (__OFSUB__(v30, 1))
    {
LABEL_30:
      __break(1u);
    }

    else
    {
      if (v30 != 1)
      {
        continue;
      }

      return MEMORY[0x277D84FA0];
    }

    return result;
  }
}

void *sub_257FF392C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915628, &qword_25804BF10);
  v2 = *v0;
  v3 = sub_25804A370();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
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

  return result;
}

uint64_t sub_257FF3A88(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915628, &qword_25804BF10);
  result = sub_25804A380();
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
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_25804A600();

      sub_25804A150();
      result = sub_25804A620();
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

  return result;
}

unint64_t sub_257FF3CC0(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_25804A360();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_25804A600();

        sub_25804A150();
        v10 = sub_25804A620();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 16 * v2);
          v14 = (v12 + 16 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_257FF3E84(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_257FF2B04(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_257FF392C();
      goto LABEL_16;
    }

    sub_257FF3A88(v8 + 1);
  }

  v10 = *v4;
  sub_25804A600();
  sub_25804A150();
  result = sub_25804A620();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_25804A560();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_25804A570();
  __break(1u);
  return result;
}

uint64_t sub_257FF4004(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x259C76790](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_257FF2318(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

id sub_257FF40C4(uint64_t a1)
{
  swift_getKeyPath();
  sub_257FF4390(&qword_27F9152E0, type metadata accessor for ExtensionRecord, &unk_25804D728);
  sub_258049A90();

  swift_getKeyPath();
  sub_257FF4390(&qword_27F9152D8, type metadata accessor for ExtensionRecord, &unk_25804D754);
  sub_257FF42EC();
  sub_258049F00();

  if (!v8)
  {
    return 0;
  }

  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_258049F00();

  v2 = objc_allocWithZone(MEMORY[0x277D034C8]);
  v3 = sub_25804A100();

  v4 = sub_25804A100();

  v5 = sub_25804A100();
  v6 = [v2 initWithCodeSigningID:v3 teamID:v4 path:{v5, a1}];

  return v6;
}

unint64_t sub_257FF42EC()
{
  result = qword_27F915520;
  if (!qword_27F915520)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F915528, &qword_25804BFA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F915520);
  }

  return result;
}

uint64_t sub_257FF4390(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_257FF43F4()
{
  sub_25804A600();
  sub_25804A150();

  return sub_25804A620();
}

uint64_t sub_257FF44BC(uint64_t a1)
{
  sub_25804A150();
}

uint64_t sub_257FF4570(uint64_t a1)
{
  sub_25804A600();
  sub_25804A150();

  return sub_25804A620();
}

unint64_t sub_257FF4634@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_257FF644C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_257FF4664(uint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x6E776F6E6B6E75;
  v4 = 0xEB00000000657461;
  v5 = 0x6369666974726563;
  if (*v1 != 2)
  {
    v5 = 0x797469746E656469;
    v4 = 0xE800000000000000;
  }

  if (*v1)
  {
    v3 = 0x64726F7773736170;
    v2 = 0xE800000000000000;
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

uint64_t sub_257FF47BC()
{
  v1 = *v0;
  sub_25804A600();
  MEMORY[0x259C76B00](v1);
  return sub_25804A620();
}

uint64_t sub_257FF4830(uint64_t a1)
{
  v2 = *v1;
  sub_25804A600();
  MEMORY[0x259C76B00](v2);
  return sub_25804A620();
}

uint64_t sub_257FF4874()
{
  v1 = 0x6465766C6F736572;
  if (*v0 != 1)
  {
    v1 = 0x6F5464656C696166;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x766C6F7365726E75;
  }
}

uint64_t sub_257FF48E0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_257FF6F30(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_257FF4920(uint64_t a1)
{
  v2 = sub_257FF68F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_257FF495C(uint64_t a1)
{
  v2 = sub_257FF68F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_257FF4998(void *a1, uint64_t a2, uint64_t a3)
{
  v27 = a3;
  v25 = a2;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915660, &qword_25804C380);
  v24 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v23 = &v19 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915668, &qword_25804C388);
  v21 = *(v5 - 8);
  v22 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v19 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915670, &qword_25804C390);
  v20 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v19 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915678, &qword_25804C398);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v19 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_257FF68F8();
  v15 = v27;
  sub_25804A640();
  if (v15 == 2)
  {
    v29 = 1;
    sub_257FF69A0();
    sub_25804A520();
    (*(v21 + 8))(v7, v22);
    return (*(v12 + 8))(v14, v11);
  }

  if (v15 == 1)
  {
    v28 = 0;
    sub_257FF69F4();
    sub_25804A520();
    (*(v20 + 8))(v10, v8);
    return (*(v12 + 8))(v14, v11);
  }

  v30 = 2;
  sub_257FF694C();
  v17 = v23;
  sub_25804A520();
  v18 = v26;
  sub_25804A530();
  (*(v24 + 8))(v17, v18);
  return (*(v12 + 8))(v14, v11);
}

uint64_t sub_257FF4DB8(uint64_t a1)
{
  v2 = sub_257FF694C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_257FF4DF4(uint64_t a1)
{
  v2 = sub_257FF694C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_257FF4E3C@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_257FF4E6C(uint64_t a1)
{
  v2 = sub_257FF69A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_257FF4EA8(uint64_t a1)
{
  v2 = sub_257FF69A0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_257FF4EE4(uint64_t a1)
{
  v2 = sub_257FF69F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_257FF4F20(uint64_t a1)
{
  v2 = sub_257FF69F4();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_257FF4F5C@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_257FF7058(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

BOOL sub_257FF4FA4(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (v3 == 2)
  {
    return v4 == 2;
  }

  if (v3 == 1)
  {
    return v4 == 1;
  }

  if ((v4 - 1) < 2)
  {
    return 0;
  }

  if (v3)
  {
    if (v4 && (*a1 == *a2 && v3 == v4 || (sub_25804A560() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v4)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_257FF5040()
{
  v1 = v0;
  v2 = sub_258049A20();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DataPersistenceValue(0);
  MEMORY[0x28223BE20](v6);
  v8 = (&v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_257FF7690(v1, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v3 + 32))(v5, v8, v2);
    v15 = 0x286C72752ELL;
    v16 = 0xE500000000000000;
    sub_257FF79C0(&qword_27F915740, MEMORY[0x277CC9290]);
    v9 = sub_25804A550();
    MEMORY[0x259C76670](v9);

    MEMORY[0x259C76670](41, 0xE100000000000000);
    v10 = v15;
    (*(v3 + 8))(v5, v2);
  }

  else
  {
    v11 = *v8;
    v12 = v8[1];
    v15 = 0x28617461642ELL;
    v16 = 0xE600000000000000;
    v13 = sub_258049A50();
    MEMORY[0x259C76670](v13);

    MEMORY[0x259C76670](41, 0xE100000000000000);
    sub_257FDAAB4(v11, v12);
    return v15;
  }

  return v10;
}

uint64_t sub_257FF5260(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9156C8, &qword_25804C3C8);
  v33 = *(v2 - 8);
  v34 = v2;
  MEMORY[0x28223BE20](v2);
  v30 = &v26 - v3;
  v4 = sub_258049A20();
  v31 = *(v4 - 8);
  v32 = v4;
  MEMORY[0x28223BE20](v4);
  v29 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9156D0, &qword_25804C3D0);
  v27 = *(v6 - 8);
  v28 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v26 - v7;
  v9 = type metadata accessor for DataPersistenceValue(0);
  MEMORY[0x28223BE20](v9);
  v11 = (&v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9156D8, &qword_25804C3D8);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v26 - v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_257FF763C();
  sub_25804A640();
  sub_257FF7690(v35, v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = v31;
    v17 = v29;
    v18 = v11;
    v19 = v32;
    (*(v31 + 32))(v29, v18, v32);
    LOBYTE(v36) = 1;
    sub_257FF76F4();
    v20 = v30;
    sub_25804A520();
    sub_257FF79C0(&qword_27F9156F0, MEMORY[0x277CC9268]);
    v21 = v34;
    sub_25804A540();
    (*(v33 + 8))(v20, v21);
    (*(v16 + 8))(v17, v19);
    return (*(v13 + 8))(v15, v12);
  }

  else
  {
    v24 = *v11;
    v23 = v11[1];
    LOBYTE(v36) = 0;
    sub_257FF7748();
    sub_25804A520();
    v36 = v24;
    v37 = v23;
    sub_257FF779C();
    v25 = v28;
    sub_25804A540();
    (*(v27 + 8))(v8, v25);
    (*(v13 + 8))(v15, v12);
    return sub_257FDAAB4(v24, v23);
  }
}

uint64_t sub_257FF56E0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915708, &qword_25804C3E0);
  v4 = *(v3 - 8);
  v49 = v3;
  v50 = v4;
  MEMORY[0x28223BE20](v3);
  v52 = &v43 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915710, &qword_25804C3E8);
  v47 = *(v6 - 8);
  v48 = v6;
  MEMORY[0x28223BE20](v6);
  v51 = &v43 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915718, &qword_25804C3F0);
  v53 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v43 - v9;
  v11 = type metadata accessor for DataPersistenceValue(0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v43 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v43 - v18;
  v20 = a1[3];
  v56 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_257FF763C();
  v21 = v54;
  sub_25804A630();
  if (!v21)
  {
    v44 = v17;
    v45 = v19;
    v54 = v14;
    v23 = v51;
    v22 = v52;
    v24 = sub_25804A510();
    v25 = v8;
    v26 = v10;
    if (*(v24 + 16) == 1)
    {
      v43 = v24;
      if (*(v24 + 32))
      {
        LOBYTE(v55) = 1;
        sub_257FF76F4();
        v27 = v10;
        v28 = v22;
        sub_25804A4D0();
        v29 = v53;
        sub_258049A20();
        v35 = v8;
        sub_257FF79C0(&qword_27F915720, MEMORY[0x277CC9280]);
        v36 = v54;
        v37 = v28;
        v38 = v49;
        sub_25804A500();
        (*(v50 + 8))(v37, v38);
        (*(v29 + 8))(v27, v35);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v39 = v36;
      }

      else
      {
        LOBYTE(v55) = 0;
        sub_257FF7748();
        sub_25804A4D0();
        v33 = v53;
        sub_257FF7854();
        v40 = v48;
        sub_25804A500();
        (*(v47 + 8))(v23, v40);
        (*(v33 + 8))(v26, v25);
        swift_unknownObjectRelease();
        v41 = v44;
        *v44 = v55;
        swift_storeEnumTagMultiPayload();
        v39 = v41;
      }

      v42 = v45;
      sub_257FF77F0(v39, v45);
      sub_257FF77F0(v42, v46);
    }

    else
    {
      v30 = sub_25804A3F0();
      swift_allocError();
      v32 = v31;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9156C0, &qword_25804C3C0);
      *v32 = v11;
      sub_25804A4E0();
      sub_25804A3E0();
      (*(*(v30 - 8) + 104))(v32, *MEMORY[0x277D84160], v30);
      swift_willThrow();
      (*(v53 + 8))(v26, v8);
      swift_unknownObjectRelease();
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v56);
}

uint64_t sub_257FF5CD4()
{
  if (*v0)
  {
    return 7107189;
  }

  else
  {
    return 1635017060;
  }
}

uint64_t sub_257FF5D00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1635017060 && a2 == 0xE400000000000000;
  if (v5 || (sub_25804A560() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_25804A560();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_257FF5DE8(uint64_t a1)
{
  v2 = sub_257FF763C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_257FF5E24(uint64_t a1)
{
  v2 = sub_257FF763C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_257FF5E60(uint64_t a1)
{
  v2 = sub_257FF7748();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_257FF5E9C(uint64_t a1)
{
  v2 = sub_257FF7748();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_257FF5ED8()
{
  sub_25804A600();
  MEMORY[0x259C76B00](0);
  return sub_25804A620();
}

uint64_t sub_257FF5F1C(uint64_t a1)
{
  sub_25804A600();
  MEMORY[0x259C76B00](0);
  return sub_25804A620();
}

uint64_t sub_257FF5F5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_25804A560();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_257FF5FDC(uint64_t a1)
{
  v2 = sub_257FF76F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_257FF6018(uint64_t a1)
{
  v2 = sub_257FF76F4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_257FF608C@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_2580498C0();
    if (v10)
    {
      v11 = sub_2580498E0();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_2580498D0();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_2580498C0();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_2580498E0();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_2580498D0();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_257FF62BC(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v13[2] = *MEMORY[0x277D85DE8];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_257FF6A48(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_257FDAAB4(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_257FF608C(v13, a3, a4, &v12);
  v10 = v4;
  sub_257FDAAB4(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

unint64_t sub_257FF644C(uint64_t a1, uint64_t a2)
{
  v2 = sub_25804A4C0();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t getEnumTagSinglePayload for AppCredentialType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AppCredentialType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_15ManagedAppsCore17DataResolveStatusO(uint64_t a1)
{
  v1 = *(a1 + 8);
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

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_257FF663C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 16))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) < 2)
  {
    LODWORD(v3) = 0;
  }

  if (v3 >= 3)
  {
    return (v3 - 2);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_257FF66A0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

void *sub_257FF66F0(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    result[1] = 0;
    *result = a2 - 0x7FFFFFFF;
  }

  else if (a2)
  {
    result[1] = a2;
  }

  return result;
}

uint64_t type metadata accessor for DataPersistenceValue(uint64_t a1)
{
  result = qword_27F915638;
  if (!qword_27F915638)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_257FF67CC(uint64_t a1)
{
  result = sub_258049A20();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_257FF683C()
{
  result = qword_27F915648;
  if (!qword_27F915648)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F915650, qword_25804C1B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F915648);
  }

  return result;
}

unint64_t sub_257FF68A4()
{
  result = qword_27F915658;
  if (!qword_27F915658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F915658);
  }

  return result;
}

unint64_t sub_257FF68F8()
{
  result = qword_27F915680;
  if (!qword_27F915680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F915680);
  }

  return result;
}

unint64_t sub_257FF694C()
{
  result = qword_27F915688;
  if (!qword_27F915688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F915688);
  }

  return result;
}

unint64_t sub_257FF69A0()
{
  result = qword_27F915690;
  if (!qword_27F915690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F915690);
  }

  return result;
}

unint64_t sub_257FF69F4()
{
  result = qword_27F915698;
  if (!qword_27F915698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F915698);
  }

  return result;
}

uint64_t sub_257FF6A48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_2580498C0();
  v11 = result;
  if (result)
  {
    result = sub_2580498E0();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_2580498D0();
  sub_257FF608C(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

BOOL sub_257FF6B00(_BOOL8 result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_257FECD7C(a3, a4);
          return sub_257FF62BC(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_257FF6C68(uint64_t a1, uint64_t a2)
{
  v4 = sub_258049A20();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DataPersistenceValue(0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = (&v26 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915738, &qword_25804C3F8);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v17 = &v26 - v16;
  v18 = (&v26 + *(v15 + 56) - v16);
  sub_257FF7690(a1, &v26 - v16);
  sub_257FF7690(a2, v18);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_257FF7690(v17, v11);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      (*(v5 + 32))(v7, v18, v4);
      v19 = sub_2580499F0();
      v20 = *(v5 + 8);
      v20(v7, v4);
      v20(v11, v4);
LABEL_9:
      sub_257FF7964(v17);
      return v19 & 1;
    }

    (*(v5 + 8))(v11, v4);
  }

  else
  {
    sub_257FF7690(v17, v13);
    v21 = *v13;
    v22 = v13[1];
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v23 = *v18;
      v24 = v18[1];
      v19 = sub_257FF6B00(v21, v22, *v18, v24);
      sub_257FDAAB4(v23, v24);
      sub_257FDAAB4(v21, v22);
      goto LABEL_9;
    }

    sub_257FDAAB4(v21, v22);
  }

  sub_257FF78FC(v17);
  v19 = 0;
  return v19 & 1;
}

uint64_t sub_257FF6F30(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x766C6F7365726E75 && a2 == 0xEA00000000006465;
  if (v4 || (sub_25804A560() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6465766C6F736572 && a2 == 0xE800000000000000 || (sub_25804A560() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F5464656C696166 && a2 == 0xEF65766C6F736552)
  {

    return 2;
  }

  else
  {
    v6 = sub_25804A560();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

void *sub_257FF7058(void *a1)
{
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9156A0, &qword_25804C3A0);
  v36 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v37 = &v30 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9156A8, &qword_25804C3A8);
  v4 = *(v3 - 8);
  v34 = v3;
  v35 = v4;
  MEMORY[0x28223BE20](v3);
  v6 = &v30 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9156B0, &qword_25804C3B0);
  v32 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v30 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9156B8, &qword_25804C3B8);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v30 - v12;
  v14 = a1[3];
  v39 = a1;
  v15 = __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_257FF68F8();
  v16 = v38;
  sub_25804A630();
  if (!v16)
  {
    v31 = 0;
    v17 = v37;
    v38 = v13;
    v18 = sub_25804A510();
    v19 = *(v18 + 16);
    if (!v19 || ((v20 = *(v18 + 32), v19 == 1) ? (v21 = v20 == 3) : (v21 = 1), v21))
    {
      v22 = sub_25804A3F0();
      swift_allocError();
      v24 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9156C0, &qword_25804C3C0);
      *v24 = &type metadata for DataResolveStatus;
      v15 = v38;
      sub_25804A4E0();
      sub_25804A3E0();
      (*(*(v22 - 8) + 104))(v24, *MEMORY[0x277D84160], v22);
      swift_willThrow();
      (*(v11 + 8))(v15, v10);
    }

    else
    {
      if (*(v18 + 32))
      {
        if (v20 == 1)
        {
          v41 = 1;
          sub_257FF69A0();
          v15 = v38;
          v25 = v31;
          sub_25804A4D0();
          if (!v25)
          {
            (*(v35 + 8))(v6, v34);
            (*(v11 + 8))(v15, v10);
            swift_unknownObjectRelease();
            v15 = 0;
            goto LABEL_18;
          }
        }

        else
        {
          v42 = 2;
          sub_257FF694C();
          v15 = v38;
          v27 = v31;
          sub_25804A4D0();
          if (!v27)
          {
            v29 = v33;
            v15 = sub_25804A4F0();
            (*(v36 + 8))(v17, v29);
            (*(v11 + 8))(v38, v10);
            swift_unknownObjectRelease();
            goto LABEL_18;
          }
        }
      }

      else
      {
        v40 = 0;
        sub_257FF69F4();
        v15 = v38;
        v26 = v31;
        sub_25804A4D0();
        if (!v26)
        {
          (*(v32 + 8))(v9, v7);
          (*(v11 + 8))(v15, v10);
          swift_unknownObjectRelease();
          v15 = 0;
          goto LABEL_18;
        }
      }

      (*(v11 + 8))(v15, v10);
    }

    swift_unknownObjectRelease();
  }

LABEL_18:
  __swift_destroy_boxed_opaque_existential_1(v39);
  return v15;
}

unint64_t sub_257FF763C()
{
  result = qword_27F9156E0;
  if (!qword_27F9156E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9156E0);
  }

  return result;
}

uint64_t sub_257FF7690(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DataPersistenceValue(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_257FF76F4()
{
  result = qword_27F9156E8;
  if (!qword_27F9156E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9156E8);
  }

  return result;
}

unint64_t sub_257FF7748()
{
  result = qword_27F9156F8;
  if (!qword_27F9156F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9156F8);
  }

  return result;
}

unint64_t sub_257FF779C()
{
  result = qword_27F915700;
  if (!qword_27F915700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F915700);
  }

  return result;
}

uint64_t sub_257FF77F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DataPersistenceValue(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_257FF7854()
{
  result = qword_27F915728;
  if (!qword_27F915728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F915728);
  }

  return result;
}

unint64_t sub_257FF78A8()
{
  result = qword_27F915730;
  if (!qword_27F915730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F915730);
  }

  return result;
}

uint64_t sub_257FF78FC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915738, &qword_25804C3F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_257FF7964(uint64_t a1)
{
  v2 = type metadata accessor for DataPersistenceValue(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_257FF79C0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_258049A20();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DataPersistenceValue.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for DataPersistenceValue.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for DataResolveStatus.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DataResolveStatus.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AssetResolverError(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for AssetResolverError(_WORD *result, int a2, int a3)
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

unint64_t sub_257FF7DE4()
{
  result = qword_27F915748;
  if (!qword_27F915748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F915748);
  }

  return result;
}

unint64_t sub_257FF7E3C()
{
  result = qword_27F915750;
  if (!qword_27F915750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F915750);
  }

  return result;
}

unint64_t sub_257FF7E94()
{
  result = qword_27F915758;
  if (!qword_27F915758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F915758);
  }

  return result;
}

unint64_t sub_257FF7EEC()
{
  result = qword_27F915760;
  if (!qword_27F915760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F915760);
  }

  return result;
}

unint64_t sub_257FF7F44()
{
  result = qword_27F915768;
  if (!qword_27F915768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F915768);
  }

  return result;
}

unint64_t sub_257FF7F9C()
{
  result = qword_27F915770;
  if (!qword_27F915770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F915770);
  }

  return result;
}

unint64_t sub_257FF7FF4()
{
  result = qword_27F915778;
  if (!qword_27F915778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F915778);
  }

  return result;
}

unint64_t sub_257FF804C()
{
  result = qword_27F915780;
  if (!qword_27F915780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F915780);
  }

  return result;
}

unint64_t sub_257FF80A4()
{
  result = qword_27F915788;
  if (!qword_27F915788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F915788);
  }

  return result;
}

unint64_t sub_257FF80FC()
{
  result = qword_27F915790;
  if (!qword_27F915790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F915790);
  }

  return result;
}

unint64_t sub_257FF8154()
{
  result = qword_27F915798;
  if (!qword_27F915798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F915798);
  }

  return result;
}

unint64_t sub_257FF81AC()
{
  result = qword_27F9157A0;
  if (!qword_27F9157A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9157A0);
  }

  return result;
}

unint64_t sub_257FF8204()
{
  result = qword_27F9157A8;
  if (!qword_27F9157A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9157A8);
  }

  return result;
}

unint64_t sub_257FF825C()
{
  result = qword_27F9157B0;
  if (!qword_27F9157B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9157B0);
  }

  return result;
}

unint64_t sub_257FF82B4()
{
  result = qword_27F9157B8;
  if (!qword_27F9157B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9157B8);
  }

  return result;
}

unint64_t sub_257FF830C()
{
  result = qword_27F9157C0;
  if (!qword_27F9157C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9157C0);
  }

  return result;
}

unint64_t sub_257FF8364()
{
  result = qword_27F9157C8;
  if (!qword_27F9157C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9157C8);
  }

  return result;
}

unint64_t sub_257FF83BC()
{
  result = qword_27F9157D0;
  if (!qword_27F9157D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9157D0);
  }

  return result;
}

unint64_t sub_257FF8414()
{
  result = qword_27F9157D8;
  if (!qword_27F9157D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9157D8);
  }

  return result;
}

uint64_t sub_257FF84A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_258049FB0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_257FF8578(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_258049FB0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

void sub_257FF8654(uint64_t a1)
{
  sub_258049FB0();
  if (v1 <= 0x3F)
  {
    sub_257FF86F4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_257FF86F4()
{
  if (!qword_27F9157F0)
  {
    v0 = sub_25804A340();
    if (!v1)
    {
      atomic_store(v0, &qword_27F9157F0);
    }
  }
}

uint64_t sub_257FF8764(uint64_t a1)
{
  result = type metadata accessor for AppRecordLookalike(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for ExtensionRecordLookalike(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_257FF87F8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_257FF8844(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_258049FB0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915280, &qword_25804ED30);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_257FF8974(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_258049FB0();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915280, &qword_25804ED30);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

void sub_257FF8A8C(uint64_t a1)
{
  sub_258049FB0();
  if (v1 <= 0x3F)
  {
    sub_257FF8B30(319);
    if (v2 <= 0x3F)
    {
      sub_257FF86F4();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_257FF8B30(uint64_t a1)
{
  if (!qword_27F915818)
  {
    type metadata accessor for AppRecordLookalike(255);
    v1 = sub_25804A340();
    if (!v2)
    {
      atomic_store(v1, &qword_27F915818);
    }
  }
}

uint64_t sub_257FF8B88()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915280, &qword_25804ED30);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v21 - v2;
  v4 = type metadata accessor for ExtensionRecordLookalike(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AppRecordLookalike(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for LookalikeType(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257FECC14(v0, v13);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_257FF94D0(v13, v10, type metadata accessor for AppRecordLookalike);
    v21 = 544239681;
    v22 = 0xE400000000000000;
    MEMORY[0x259C76670](*&v10[*(v7 + 24)], *&v10[*(v7 + 24) + 8]);
    v18 = v21;
    v19 = type metadata accessor for AppRecordLookalike;
    v20 = v10;
    goto LABEL_5;
  }

  sub_257FF94D0(v13, v6, type metadata accessor for ExtensionRecordLookalike);
  v21 = 0;
  v22 = 0xE000000000000000;
  sub_25804A3B0();

  v21 = 0x6F69736E65747845;
  v22 = 0xEA0000000000206ELL;
  MEMORY[0x259C76670](*&v6[*(v4 + 24)], *&v6[*(v4 + 24) + 8]);
  MEMORY[0x259C76670](0x70706120726F6620, 0xE900000000000020);
  sub_257FF9400(&v6[*(v4 + 20)], v3);
  result = (*(v8 + 48))(v3, 1, v7);
  if (result != 1)
  {
    v15 = &v3[*(v7 + 24)];
    v16 = *v15;
    v17 = *(v15 + 1);

    sub_257FF9470(v3, type metadata accessor for AppRecordLookalike);
    MEMORY[0x259C76670](v16, v17);

    v18 = v21;
    v19 = type metadata accessor for ExtensionRecordLookalike;
    v20 = v6;
LABEL_5:
    sub_257FF9470(v20, v19);
    return v18;
  }

  __break(1u);
  return result;
}

uint64_t sub_257FF8ED8()
{
  v1 = v0;
  sub_25804A3B0();
  MEMORY[0x259C76670](0xD000000000000020, 0x8000000258050590);
  v2 = type metadata accessor for AppRecordLookalike(0);
  MEMORY[0x259C76670](*(v1 + v2[5]), *(v1 + v2[5] + 8));
  MEMORY[0x259C76670](0xD000000000000011, 0x80000002580505C0);
  v3 = (v0 + v2[6]);
  v5 = *v3;
  v4 = v3[1];
  if (sub_25804A160() < 13)
  {
  }

  else
  {

    v7 = sub_2580368E4(6, v5, v4, v6);
    v9 = v8;
    v11 = v10;
    v13 = v12;

    v14 = MEMORY[0x259C76630](v7, v9, v11, v13);
    v16 = v15;

    MEMORY[0x259C76670](v14, v16);

    MEMORY[0x259C76670](10911970, 0xA300000000000000);

    v18 = sub_25801994C(6uLL, v5, v4, v17);
    v20 = v19;
    v22 = v21;
    v24 = v23;

    v25 = MEMORY[0x259C76630](v18, v20, v22, v24);
    v27 = v26;

    MEMORY[0x259C76670](v25, v27);

    MEMORY[0x259C76670](62, 0xE100000000000000);
    v5 = 60;
    v4 = 0xE100000000000000;
  }

  MEMORY[0x259C76670](v5, v4);

  MEMORY[0x259C76670](0x6E6F73726570202CLL, 0xED0000203A444961);
  v28 = (v1 + v2[7]);
  if (v28[1])
  {
    v29 = *v28;
    v30 = v28[1];
  }

  else
  {
    v29 = 7104878;
    v30 = 0xE300000000000000;
  }

  MEMORY[0x259C76670](v29, v30);

  MEMORY[0x259C76670](0x656C646E7562202CLL, 0xEC000000203A4449);
  v31 = (v1 + v2[8]);
  if (v31[1])
  {
    v32 = *v31;
    v33 = v31[1];
  }

  else
  {
    v32 = 7104878;
    v33 = 0xE300000000000000;
  }

  MEMORY[0x259C76670](v32, v33);

  MEMORY[0x259C76670](0x697463417369202CLL, 0xEC000000203A6576);
  if (*(v1 + v2[9]))
  {
    v34 = 1702195828;
  }

  else
  {
    v34 = 0x65736C6166;
  }

  if (*(v1 + v2[9]))
  {
    v35 = 0xE400000000000000;
  }

  else
  {
    v35 = 0xE500000000000000;
  }

  MEMORY[0x259C76670](v34, v35);

  MEMORY[0x259C76670](0xD000000000000011, 0x80000002580505E0);
  if (*(v1 + v2[10]))
  {
    v36 = 1702195828;
  }

  else
  {
    v36 = 0x65736C6166;
  }

  if (*(v1 + v2[10]))
  {
    v37 = 0xE400000000000000;
  }

  else
  {
    v37 = 0xE500000000000000;
  }

  MEMORY[0x259C76670](v36, v37);

  MEMORY[0x259C76670](32032, 0xE200000000000000);
  return 0;
}

uint64_t sub_257FF9284()
{
  sub_25804A3B0();
  MEMORY[0x259C76670](0xD000000000000026, 0x8000000258050560);
  v1 = type metadata accessor for ExtensionRecordLookalike(0);
  MEMORY[0x259C76670](*(v0 + v1[6]), *(v0 + v1[6] + 8));
  MEMORY[0x259C76670](0x44496D616574202CLL, 0xEA0000000000203ALL);
  v2 = (v0 + v1[7]);
  if (v2[1])
  {
    v3 = *v2;
    v4 = v2[1];
  }

  else
  {
    v3 = 7104878;
    v4 = 0xE300000000000000;
  }

  MEMORY[0x259C76670](v3, v4);

  MEMORY[0x259C76670](0x6E6F73726570202CLL, 0xED0000203A444961);
  v5 = (v0 + v1[8]);
  if (v5[1])
  {
    v6 = *v5;
    v7 = v5[1];
  }

  else
  {
    v6 = 7104878;
    v7 = 0xE300000000000000;
  }

  MEMORY[0x259C76670](v6, v7);

  MEMORY[0x259C76670](32032, 0xE200000000000000);
  return 0;
}

uint64_t sub_257FF9400(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915280, &qword_25804ED30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_257FF9470(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_257FF94D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_257FF9538()
{
  swift_getKeyPath();
  sub_258009670(&qword_27F915288, type metadata accessor for AppRecord, &unk_25804D860);
  sub_258049A90();

  swift_getKeyPath();
  sub_258009670(&qword_27F915290, type metadata accessor for AppRecord, &unk_25804D87C);
  sub_258049F00();

  return v0;
}

uint64_t sub_257FF963C()
{
  swift_getKeyPath();
  sub_258009670(&qword_27F915288, type metadata accessor for AppRecord, &unk_25804D860);
  sub_258049A90();

  swift_getKeyPath();
  type metadata accessor for DataRecord(0);
  sub_258009670(&qword_27F915290, type metadata accessor for AppRecord, &unk_25804D87C);
  sub_257FDAD00();
  sub_258049EF0();

  return v0;
}

uint64_t sub_257FF9784(unint64_t a1, uint64_t (*a2)(uint64_t, void, uint64_t))
{
  if (a1 >> 62)
  {
    v5 = sub_25804A480();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v2 >> 62))
  {
    v6 = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v7 = __OFADD__(v6, v5);
    result = v6 + v5;
    if (!v7)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = sub_25804A480();
  v7 = __OFADD__(v15, v5);
  result = v15 + v5;
  if (v7)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_25800A58C(result, 1);
  v9 = *v2;
  v10 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v10 + 8 * *(v10 + 0x10) + 32, (*(v10 + 0x18) >> 1) - *(v10 + 0x10), a1);
  v12 = v11;

  if (v12 < v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v12 < 1)
  {
LABEL_9:
    *v2 = v9;
    return result;
  }

  v13 = *(v10 + 16);
  v7 = __OFADD__(v13, v12);
  v14 = v13 + v12;
  if (!v7)
  {
    *(v10 + 16) = v14;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_257FF987C(uint64_t result)
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
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_25800A3B4(isUniquelyReferenced_nonNull_native, v12, 1, v3);
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
  v8 = (v3[3] >> 1) - v3[2];
  result = sub_25804A030();
  if (v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_257FF99A8()
{
  swift_getKeyPath();
  sub_258009670(&qword_27F915288, type metadata accessor for AppRecord, &unk_25804D860);
  sub_258049A90();

  swift_getKeyPath();
  type metadata accessor for CredentialRecord(0);
  sub_258009670(&qword_27F915290, type metadata accessor for AppRecord, &unk_25804D87C);
  sub_257FDAE04();
  sub_258049EF0();

  return v0;
}

uint64_t sub_257FF9AC0()
{
  swift_getKeyPath();
  sub_258009670(&qword_27F915288, type metadata accessor for AppRecord, &unk_25804D860);
  sub_258049A90();

  swift_getKeyPath();
  type metadata accessor for ExtensionRecord(0);
  sub_258009670(&qword_27F915290, type metadata accessor for AppRecord, &unk_25804D87C);
  sub_257FDAEC0();
  sub_258049EF0();

  return v0;
}

uint64_t sub_257FF9BD8()
{
  swift_getKeyPath();
  sub_258009670(&qword_27F9152E0, type metadata accessor for ExtensionRecord, &unk_25804D728);
  sub_258049A90();

  swift_getKeyPath();
  type metadata accessor for DataRecord(0);
  sub_258009670(&qword_27F9152D8, type metadata accessor for ExtensionRecord, &unk_25804D754);
  sub_257FDAD00();
  sub_258049EF0();

  return v0;
}

uint64_t sub_257FF9CF0()
{
  swift_getKeyPath();
  sub_258009670(&qword_27F9152E0, type metadata accessor for ExtensionRecord, &unk_25804D728);
  sub_258049A90();

  swift_getKeyPath();
  type metadata accessor for CredentialRecord(0);
  sub_258009670(&qword_27F9152D8, type metadata accessor for ExtensionRecord, &unk_25804D754);
  sub_257FDAE04();
  sub_258049EF0();

  return v0;
}

uint64_t sub_257FF9E08()
{
  swift_getKeyPath();
  sub_258009670(&qword_27F9152E8, type metadata accessor for DataRecord, &unk_25804D834);
  sub_258049A90();

  swift_getKeyPath();
  sub_258009670(&qword_27F9152A8, type metadata accessor for DataRecord, &unk_25804D7C4);
  sub_258049F00();

  return v0;
}

uint64_t sub_257FF9F0C()
{
  swift_getKeyPath();
  sub_258009670(&qword_27F9152E8, type metadata accessor for DataRecord, &unk_25804D834);
  sub_258049A90();

  swift_getKeyPath();
  sub_258009670(&qword_27F9152A8, type metadata accessor for DataRecord, &unk_25804D7C4);
  sub_258009670(&qword_27F915278, type metadata accessor for DataAssetRecord, &unk_25804D430);
  v0 = sub_258049EE0();

  return v0;
}

uint64_t sub_257FFA044()
{
  swift_getKeyPath();
  sub_258009670(&qword_27F915270, type metadata accessor for DataAssetRecord, &unk_25804D39C);
  sub_258049A90();

  swift_getKeyPath();
  sub_258009670(&qword_27F915278, type metadata accessor for DataAssetRecord, &unk_25804D430);
  sub_257FDAB10();
  sub_258049F00();

  return v0;
}

uint64_t sub_257FFA14C()
{
  swift_getKeyPath();
  sub_258009670(&qword_27F915270, type metadata accessor for DataAssetRecord, &unk_25804D39C);
  sub_258049A90();

  swift_getKeyPath();
  sub_258009670(&qword_27F915278, type metadata accessor for DataAssetRecord, &unk_25804D430);
  sub_258049F00();

  return v0;
}

uint64_t sub_257FFA250()
{
  swift_getKeyPath();
  sub_258009670(&qword_27F9152F0, type metadata accessor for CredentialRecord, &unk_25804D194);
  sub_258049A90();

  swift_getKeyPath();
  sub_258009670(&qword_27F9152C0, type metadata accessor for CredentialRecord, &unk_25804D228);
  sub_258049F00();

  return v0;
}

uint64_t sub_257FFA354()
{
  swift_getKeyPath();
  sub_258009670(&qword_27F9152F0, type metadata accessor for CredentialRecord, &unk_25804D194);
  sub_258049A90();

  swift_getKeyPath();
  sub_258009670(&qword_27F9152C0, type metadata accessor for CredentialRecord, &unk_25804D228);
  sub_258009670(&qword_27F915258, type metadata accessor for CredentialAssetRecord, &unk_25804D32C);
  v0 = sub_258049EE0();

  return v0;
}

uint64_t sub_257FFA48C()
{
  swift_getKeyPath();
  sub_258009670(&qword_27F915250, type metadata accessor for CredentialAssetRecord, &unk_25804D298);
  sub_258049A90();

  swift_getKeyPath();
  sub_258009670(&qword_27F915258, type metadata accessor for CredentialAssetRecord, &unk_25804D32C);
  sub_257FDAB10();
  sub_258049F00();

  return v0;
}

uint64_t sub_257FFA594()
{
  swift_getKeyPath();
  sub_258009670(&qword_27F915250, type metadata accessor for CredentialAssetRecord, &unk_25804D298);
  sub_258049A90();

  swift_getKeyPath();
  sub_258009670(&qword_27F915258, type metadata accessor for CredentialAssetRecord, &unk_25804D32C);
  sub_258049F00();

  return v0;
}

uint64_t sub_257FFA698()
{
  swift_getKeyPath();
  sub_258009670(&qword_27F915288, type metadata accessor for AppRecord, &unk_25804D860);
  sub_258049A90();

  swift_getKeyPath();
  sub_258009670(&qword_27F915290, type metadata accessor for AppRecord, &unk_25804D87C);
  sub_258049F00();

  return v0;
}

int *sub_257FFA79C@<X0>(uint64_t a1@<X8>)
{
  sub_258009670(&qword_27F915290, type metadata accessor for AppRecord, &unk_25804D87C);
  sub_258049E90();
  swift_getKeyPath();
  sub_258009670(&qword_27F915288, type metadata accessor for AppRecord, &unk_25804D860);
  sub_258049A90();

  swift_getKeyPath();
  v3 = MEMORY[0x277D83808];
  sub_258049F00();

  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_258049F00();

  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_258012034(&qword_27F915520, v3, MEMORY[0x277D84F58]);
  sub_258049F00();

  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_258049F00();

  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_258049F00();

  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_258049F00();

  result = type metadata accessor for AppRecordLookalike(0);
  v5 = (a1 + result[5]);
  *v5 = v1;
  v5[1] = v9;
  v6 = (a1 + result[6]);
  *v6 = v1;
  v6[1] = v9;
  v7 = (a1 + result[7]);
  *v7 = v1;
  v7[1] = v9;
  v8 = (a1 + result[8]);
  *v8 = v1;
  v8[1] = v9;
  *(a1 + result[9]) = v1;
  *(a1 + result[10]) = v1;
  return result;
}

uint64_t sub_257FFAB74()
{
  swift_getKeyPath();
  sub_258009670(&qword_27F915288, type metadata accessor for AppRecord, &unk_25804D860);
  sub_258049A90();

  swift_getKeyPath();
  sub_258009670(&qword_27F915290, type metadata accessor for AppRecord, &unk_25804D87C);
  sub_258009670(&qword_27F9154C0, type metadata accessor for AppCodeIdentityRecord, &unk_25804D0AC);
  v0 = sub_258049EE0();

  return v0;
}

uint64_t sub_257FFACB8()
{
  swift_getKeyPath();
  sub_258009670(&qword_27F9152E8, type metadata accessor for DataRecord, &unk_25804D834);
  sub_258049A90();

  swift_getKeyPath();
  sub_258009670(&qword_27F9152A8, type metadata accessor for DataRecord, &unk_25804D7C4);
  sub_2580142C0(&qword_27F915600, MEMORY[0x277D83BB8], MEMORY[0x277D84F58]);
  sub_258049F00();

  return v0;
}

uint64_t sub_257FFADE8()
{
  swift_getKeyPath();
  sub_258009670(&qword_27F9152E8, type metadata accessor for DataRecord, &unk_25804D834);
  sub_258049A90();

  swift_getKeyPath();
  sub_258009670(&qword_27F9152A8, type metadata accessor for DataRecord, &unk_25804D7C4);
  sub_258012034(&qword_27F915520, MEMORY[0x277D83808], MEMORY[0x277D84F58]);
  sub_258049F00();

  return v0;
}

uint64_t sub_257FFAF14@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_258009670(&qword_27F915288, type metadata accessor for AppRecord, &unk_25804D860);
  sub_258049A90();

  swift_getKeyPath();
  sub_258009670(&qword_27F915290, type metadata accessor for AppRecord, &unk_25804D87C);
  sub_258049F00();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_257FFB020(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_258009670(&qword_27F915288, type metadata accessor for AppRecord, &unk_25804D860);
  sub_258049A80();
}

uint64_t sub_257FFB0F8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_258009670(&qword_27F915288, type metadata accessor for AppRecord, &unk_25804D860);
  sub_258049A90();

  swift_getKeyPath();
  sub_258009670(&qword_27F915290, type metadata accessor for AppRecord, &unk_25804D87C);
  sub_258049F00();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_257FFB204(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_258009670(&qword_27F915288, type metadata accessor for AppRecord, &unk_25804D860);
  sub_258049A80();
}

uint64_t sub_257FFB2E8(uint64_t a1)
{
  swift_getKeyPath();
  sub_258009670(&qword_27F915288, type metadata accessor for AppRecord, &unk_25804D860);
  sub_258049A90();

  swift_getKeyPath();
  sub_258009670(&qword_27F915290, type metadata accessor for AppRecord, &unk_25804D87C);
  sub_258049F00();

  return v2;
}

uint64_t sub_257FFB3E4@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  sub_258009670(&qword_27F915288, type metadata accessor for AppRecord, &unk_25804D860);
  sub_258049A90();

  swift_getKeyPath();
  sub_258009670(&qword_27F915290, type metadata accessor for AppRecord, &unk_25804D87C);
  sub_258049F00();

  *a2 = v4;
  return result;
}

uint64_t sub_257FFB4F0(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_258009670(&qword_27F915288, type metadata accessor for AppRecord, &unk_25804D860);
  sub_258049A80();
}

uint64_t sub_257FFB5C0()
{
  swift_getKeyPath();
  sub_258009670(&qword_27F9152E0, type metadata accessor for ExtensionRecord, &unk_25804D728);
  sub_258049A90();

  swift_getKeyPath();
  sub_258009670(&qword_27F9152D8, type metadata accessor for ExtensionRecord, &unk_25804D754);
  sub_258049F00();

  return v0;
}

uint64_t sub_257FFB6D0(uint64_t a1)
{
  swift_getKeyPath();
  sub_258009670(&qword_27F9152E0, type metadata accessor for ExtensionRecord, &unk_25804D728);
  sub_258049A90();

  swift_getKeyPath();
  sub_258009670(&qword_27F9152D8, type metadata accessor for ExtensionRecord, &unk_25804D754);
  sub_258012034(&qword_27F915520, MEMORY[0x277D83808], MEMORY[0x277D84F58]);
  sub_258049F00();

  return v1;
}

uint64_t sub_257FFB7F4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v31 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915280, &qword_25804ED30);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v24 - v4;
  v6 = sub_258049FB0();
  v29 = *(v6 - 8);
  v30 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258009670(&qword_27F9152D8, type metadata accessor for ExtensionRecord, &unk_25804D754);
  v28 = v8;
  sub_258049E90();
  v32 = v1;
  swift_getKeyPath();
  sub_258009670(&qword_27F9152E0, type metadata accessor for ExtensionRecord, &unk_25804D728);
  sub_258049A90();

  swift_getKeyPath();
  sub_258009670(&qword_27F915290, type metadata accessor for AppRecord, &unk_25804D87C);
  v9 = sub_258049EE0();

  if (v9)
  {
    sub_257FFA79C(v5);

    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = type metadata accessor for AppRecordLookalike(0);
  (*(*(v11 - 8) + 56))(v5, v10, 1, v11);
  v32 = v2;
  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  v12 = MEMORY[0x277D83808];
  sub_258049F00();

  v26 = v33;
  v27 = v32;
  v32 = v2;
  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_258012034(&qword_27F915520, v12, MEMORY[0x277D84F58]);
  sub_258049F00();

  v13 = v32;
  v25 = v33;
  v32 = v2;
  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_258049F00();

  v14 = v32;
  v15 = v33;
  v16 = v31;
  (*(v29 + 32))(v31, v28, v30);
  v17 = type metadata accessor for ExtensionRecordLookalike(0);
  result = sub_258014250(v5, v16 + v17[5]);
  v19 = (v16 + v17[6]);
  v20 = v26;
  *v19 = v27;
  v19[1] = v20;
  v21 = (v16 + v17[7]);
  v22 = v25;
  *v21 = v13;
  v21[1] = v22;
  v23 = (v16 + v17[8]);
  *v23 = v14;
  v23[1] = v15;
  return result;
}

uint64_t sub_257FFBC60@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_258009670(&qword_27F9152E8, type metadata accessor for DataRecord, &unk_25804D834);
  sub_258049A90();

  swift_getKeyPath();
  sub_258009670(&qword_27F9152A8, type metadata accessor for DataRecord, &unk_25804D7C4);
  sub_258049F00();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_257FFBD6C(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_258009670(&qword_27F9152E8, type metadata accessor for DataRecord, &unk_25804D834);
  sub_258049A80();
}

uint64_t sub_257FFBE44@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_258009670(&qword_27F9152F0, type metadata accessor for CredentialRecord, &unk_25804D194);
  sub_258049A90();

  swift_getKeyPath();
  sub_258009670(&qword_27F9152C0, type metadata accessor for CredentialRecord, &unk_25804D228);
  sub_258049F00();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_257FFBF50(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_258009670(&qword_27F9152F0, type metadata accessor for CredentialRecord, &unk_25804D194);
  sub_258049A80();
}

uint64_t sub_257FFC028()
{
  swift_getKeyPath();
  sub_258009670(&qword_27F9152F0, type metadata accessor for CredentialRecord, &unk_25804D194);
  sub_258049A90();

  swift_getKeyPath();
  sub_258009670(&qword_27F9152C0, type metadata accessor for CredentialRecord, &unk_25804D228);
  sub_258009670(&qword_27F915290, type metadata accessor for AppRecord, &unk_25804D87C);
  v0 = sub_258049EE0();

  if (v0)
  {
    v4 = v0;
    swift_getKeyPath();
    sub_258009670(&qword_27F915288, type metadata accessor for AppRecord, &unk_25804D860);
    sub_258049A90();

    swift_getKeyPath();
    sub_258049F00();

LABEL_3:

    return v4;
  }

  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_258009670(&qword_27F9152D8, type metadata accessor for ExtensionRecord, &unk_25804D754);
  v2 = sub_258049EE0();

  if (v2)
  {
    swift_getKeyPath();
    sub_258009670(&qword_27F9152E0, type metadata accessor for ExtensionRecord, &unk_25804D728);
    sub_258049A90();

    swift_getKeyPath();
    v3 = sub_258049EE0();

    if (v3)
    {
      v4 = v3;
      swift_getKeyPath();
      sub_258009670(&qword_27F915288, type metadata accessor for AppRecord, &unk_25804D860);
      sub_258049A90();

      swift_getKeyPath();
      sub_258049F00();

      goto LABEL_3;
    }
  }

  return 0;
}

uint64_t sub_257FFC410@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_258009670(&qword_27F915270, type metadata accessor for DataAssetRecord, &unk_25804D39C);
  sub_258049A90();

  swift_getKeyPath();
  sub_258009670(&qword_27F915278, type metadata accessor for DataAssetRecord, &unk_25804D430);
  sub_258049F00();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_257FFC51C(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_258009670(&qword_27F915270, type metadata accessor for DataAssetRecord, &unk_25804D39C);
  sub_258049A80();
}

uint64_t sub_257FFC5F4()
{
  swift_getKeyPath();
  sub_258009670(&qword_27F915250, type metadata accessor for CredentialAssetRecord, &unk_25804D298);
  sub_258049A90();

  swift_getKeyPath();
  sub_258009670(&qword_27F915258, type metadata accessor for CredentialAssetRecord, &unk_25804D32C);
  sub_258049F00();

  return v0;
}

uint64_t sub_257FFC6F8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_258009670(&qword_27F915250, type metadata accessor for CredentialAssetRecord, &unk_25804D298);
  sub_258049A90();

  swift_getKeyPath();
  sub_258009670(&qword_27F915258, type metadata accessor for CredentialAssetRecord, &unk_25804D32C);
  sub_258049F00();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_257FFC804(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_258009670(&qword_27F915250, type metadata accessor for CredentialAssetRecord, &unk_25804D298);
  sub_258049A80();
}

uint64_t sub_257FFC8DC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_258009670(&qword_27F915250, type metadata accessor for CredentialAssetRecord, &unk_25804D298);
  sub_258049A90();

  swift_getKeyPath();
  sub_258009670(&qword_27F915258, type metadata accessor for CredentialAssetRecord, &unk_25804D32C);
  sub_258049F00();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_257FFC9E8(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_258009670(&qword_27F915250, type metadata accessor for CredentialAssetRecord, &unk_25804D298);
  sub_258049A80();
}

uint64_t sub_257FFCAC0(unint64_t a1)
{
  swift_getKeyPath();
  sub_258009670(&qword_27F915288, type metadata accessor for AppRecord, &unk_25804D860);
  sub_258049A90();

  swift_getKeyPath();
  sub_258009670(&qword_27F915290, type metadata accessor for AppRecord, &unk_25804D87C);
  sub_258049F00();

  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_258049F00();

  if (v1 == a1)
  {
  }

  else
  {
    v3 = sub_25804A560();

    if ((v3 & 1) == 0)
    {
      return result;
    }
  }

  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_258049F00();

  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  sub_258049A80();

  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_258012034(&qword_27F915520, MEMORY[0x277D83808], MEMORY[0x277D84F58]);
  sub_258049F00();

  if (!v18)
  {
    swift_getKeyPath();
    sub_258049A90();

    swift_getKeyPath();
    sub_258049F00();

    v6 = swift_getKeyPath();
    MEMORY[0x28223BE20](v6);
    sub_258049A80();
  }

  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_258009670(&qword_27F9154C0, type metadata accessor for AppCodeIdentityRecord, &unk_25804D0AC);
  v7 = sub_258049EE0();

  if (v7)
  {

    v8 = 0;
  }

  else
  {
    swift_getKeyPath();
    sub_258049A90();

    swift_getKeyPath();
    v9 = sub_258049EE0();

    if (v9)
    {
      type metadata accessor for AppCodeIdentityRecord(0);
      swift_allocObject();

      sub_258002BF0(v10);
      v11 = swift_getKeyPath();
      MEMORY[0x28223BE20](v11);
      v8 = 0;
      sub_258049A80();
    }

    else
    {
      v8 = 0;
    }
  }

  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  type metadata accessor for ExtensionCodeIdentityRecord(0);
  sub_258011E3C();
  sub_258049EF0();

  v12 = a1;
  if (a1 >> 62)
  {
    v13 = sub_25804A480();
  }

  else
  {
    v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v13)
  {
    result = sub_25804A430();
    if (v13 < 0)
    {
      __break(1u);
      return result;
    }

    for (i = 0; i != v13; ++i)
    {
      v17 = v8;
      if ((a1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x259C768B0](i, v12);
      }

      else
      {
      }

      v15 = swift_allocObject();
      *(v15 + 48) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915A70, &qword_25804E108);
      sub_258009670(&qword_27F915430, type metadata accessor for ExtensionCodeIdentityRecord, &unk_25804CFA8);
      *(v15 + 56) = swift_getOpaqueTypeConformance2();
      __swift_allocate_boxed_opaque_existential_1((v15 + 24));
      sub_258049EA0();
      *(v15 + 16) = 1;
      sub_258049AA0();
      __swift_project_boxed_opaque_existential_1((v15 + 24), *(v15 + 48));
      swift_getKeyPath();
      sub_258049D60();

      *(v15 + 16) = 0;
      swift_getKeyPath();
      sub_258009670(&qword_27F915518, type metadata accessor for ExtensionCodeIdentityRecord, &unk_25804CF14);
      sub_258049A90();

      swift_getKeyPath();
      sub_258049F00();

      __swift_project_boxed_opaque_existential_1((v15 + 24), *(v15 + 48));
      swift_getKeyPath();
      sub_258049D50();

      swift_getKeyPath();
      sub_258049A90();

      swift_getKeyPath();
      sub_258049F00();

      __swift_project_boxed_opaque_existential_1((v15 + 24), *(v15 + 48));
      swift_getKeyPath();
      sub_258049D50();

      swift_getKeyPath();
      sub_258049A90();

      swift_getKeyPath();
      sub_258049F00();

      __swift_project_boxed_opaque_existential_1((v15 + 24), *(v15 + 48));
      swift_getKeyPath();
      sub_258049D50();

      sub_25804A410();
      sub_25804A440();
      sub_25804A450();
      sub_25804A420();
      v8 = v17;
      v12 = a1;
    }
  }

  v16 = swift_getKeyPath();
  MEMORY[0x28223BE20](v16);
  sub_258049A80();
}

uint64_t sub_257FFD6B8@<X0>(uint64_t *a2@<X8>)
{
  swift_getKeyPath();
  sub_258009670(&qword_27F915908, type metadata accessor for AppCodeIdentityRecord, &unk_25804D018);
  sub_258049A90();

  swift_getKeyPath();
  sub_258009670(&qword_27F9154C0, type metadata accessor for AppCodeIdentityRecord, &unk_25804D0AC);
  sub_258009670(&qword_27F915290, type metadata accessor for AppRecord, &unk_25804D87C);
  v3 = sub_258049EE0();

  *a2 = v3;
  return result;
}

uint64_t sub_257FFD7F4(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_258009670(&qword_27F915908, type metadata accessor for AppCodeIdentityRecord, &unk_25804D018);
  sub_258049A80();
}

uint64_t sub_257FFD8C0@<X0>(uint64_t *a2@<X8>)
{
  swift_getKeyPath();
  sub_258009670(&qword_27F915518, type metadata accessor for ExtensionCodeIdentityRecord, &unk_25804CF14);
  sub_258049A90();

  swift_getKeyPath();
  sub_258009670(&qword_27F915430, type metadata accessor for ExtensionCodeIdentityRecord, &unk_25804CFA8);
  sub_258009670(&qword_27F915290, type metadata accessor for AppRecord, &unk_25804D87C);
  v3 = sub_258049EE0();

  *a2 = v3;
  return result;
}

uint64_t sub_257FFD9FC(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_258009670(&qword_27F915518, type metadata accessor for ExtensionCodeIdentityRecord, &unk_25804CF14);
  sub_258049A80();
}

uint64_t sub_257FFDAC8()
{
  swift_getKeyPath();
  sub_258009670(&qword_27F915270, type metadata accessor for DataAssetRecord, &unk_25804D39C);
  sub_258049A90();

  swift_getKeyPath();
  type metadata accessor for DataRecord(0);
  sub_258009670(&qword_27F915278, type metadata accessor for DataAssetRecord, &unk_25804D430);
  sub_257FDAD00();
  sub_258049EF0();

  return v0;
}

uint64_t sub_257FFDBE0()
{
  swift_getKeyPath();
  sub_258009670(&qword_27F915250, type metadata accessor for CredentialAssetRecord, &unk_25804D298);
  sub_258049A90();

  swift_getKeyPath();
  type metadata accessor for CredentialRecord(0);
  sub_258009670(&qword_27F915258, type metadata accessor for CredentialAssetRecord, &unk_25804D32C);
  sub_257FDAE04();
  sub_258049EF0();

  return v0;
}

uint64_t sub_257FFDCF8()
{
  swift_getKeyPath();
  sub_258009670(&qword_27F915270, type metadata accessor for DataAssetRecord, &unk_25804D39C);
  sub_258049A90();

  swift_getKeyPath();
  sub_258009670(&qword_27F915278, type metadata accessor for DataAssetRecord, &unk_25804D430);
  sub_257FEC568();
  sub_258049F00();
}

uint64_t sub_257FFDE00(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6E776F6E6B6E75;
  if (a1 > 1u)
  {
    v4 = a1 == 2;
    v3 = 0xEB00000000657461;
    if (a1 == 2)
    {
      v5 = 0x6369666974726563;
    }

    else
    {
      v5 = 0x797469746E656469;
    }
  }

  else
  {
    v3 = 0xE700000000000000;
    v4 = a1 == 0;
    if (a1)
    {
      v5 = 0x64726F7773736170;
    }

    else
    {
      v5 = 0x6E776F6E6B6E75;
    }
  }

  if (v4)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  v7 = 0xE700000000000000;
  v8 = 0x6369666974726563;
  v9 = 0xEB00000000657461;
  if (a2 != 2)
  {
    v8 = 0x797469746E656469;
    v9 = 0xE800000000000000;
  }

  if (a2)
  {
    v2 = 0x64726F7773736170;
    v7 = 0xE800000000000000;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (a2 <= 1u)
  {
    v11 = v7;
  }

  else
  {
    v11 = v9;
  }

  if (v5 == v10 && v6 == v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_25804A560();
  }

  return v12 & 1;
}

uint64_t sub_257FFDF4C()
{
  swift_getKeyPath();
  sub_258009670(&qword_27F9152F0, type metadata accessor for CredentialRecord, &unk_25804D194);
  sub_258049A90();

  swift_getKeyPath();
  sub_258009670(&qword_27F9152C0, type metadata accessor for CredentialRecord, &unk_25804D228);
  sub_258049F00();

  return v0;
}

uint64_t sub_257FFE050()
{
  swift_getKeyPath();
  sub_258009670(&qword_27F915288, type metadata accessor for AppRecord, &unk_25804D860);
  sub_258049A90();

  swift_getKeyPath();
  sub_258009670(&qword_27F915290, type metadata accessor for AppRecord, &unk_25804D87C);
  sub_258012034(&qword_27F915520, MEMORY[0x277D83808], MEMORY[0x277D84F58]);
  sub_258049F00();

  return v0;
}

double sub_257FFE17C@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_258009670(&qword_27F915288, type metadata accessor for AppRecord, &unk_25804D860);
  sub_258049A90();

  swift_getKeyPath();
  sub_258009670(&qword_27F915290, type metadata accessor for AppRecord, &unk_25804D87C);
  sub_258012034(&qword_27F915520, MEMORY[0x277D83808], MEMORY[0x277D84F58]);
  sub_258049F00();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_257FFE2B0(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_258009670(&qword_27F915288, type metadata accessor for AppRecord, &unk_25804D860);
  sub_258049A80();
}

uint64_t sub_257FFE388@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_258009670(&qword_27F915288, type metadata accessor for AppRecord, &unk_25804D860);
  sub_258049A90();

  swift_getKeyPath();
  type metadata accessor for DataRecord(0);
  sub_258009670(&qword_27F915290, type metadata accessor for AppRecord, &unk_25804D87C);
  sub_257FDAD00();
  sub_258049EF0();

  *a2 = v4;
  return result;
}

uint64_t sub_257FFE4A8(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_258009670(&qword_27F915288, type metadata accessor for AppRecord, &unk_25804D860);
  sub_258049A80();
}

uint64_t sub_257FFE574(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  type metadata accessor for DataRecord(0);
  sub_258009670(&qword_27F915290, type metadata accessor for AppRecord, &unk_25804D87C);
  sub_257FDAD00();
  sub_258049F10();
}

uint64_t sub_257FFE630@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_258009670(&qword_27F915288, type metadata accessor for AppRecord, &unk_25804D860);
  sub_258049A90();

  swift_getKeyPath();
  type metadata accessor for CredentialRecord(0);
  sub_258009670(&qword_27F915290, type metadata accessor for AppRecord, &unk_25804D87C);
  sub_257FDAE04();
  sub_258049EF0();

  *a2 = v4;
  return result;
}

uint64_t sub_257FFE750(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_258009670(&qword_27F915288, type metadata accessor for AppRecord, &unk_25804D860);
  sub_258049A80();
}

uint64_t sub_257FFE81C(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  type metadata accessor for CredentialRecord(0);
  sub_258009670(&qword_27F915290, type metadata accessor for AppRecord, &unk_25804D87C);
  sub_257FDAE04();
  sub_258049F10();
}

uint64_t sub_257FFE8D8(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  type metadata accessor for ExtensionRecord(0);
  sub_258009670(&qword_27F915290, type metadata accessor for AppRecord, &unk_25804D87C);
  sub_257FDAEC0();
  sub_258049F10();
}

uint64_t sub_257FFE9D4(uint64_t a1, char a2, uint64_t a3)
{
  swift_getKeyPath();
  sub_258009670(&qword_27F915290, type metadata accessor for AppRecord, &unk_25804D87C);
  sub_258049F20();
}

uint64_t sub_257FFEA78()
{
  swift_getKeyPath();
  sub_258009670(&qword_27F915288, type metadata accessor for AppRecord, &unk_25804D860);
  sub_258049A90();

  swift_getKeyPath();
  sub_258009670(&qword_27F915290, type metadata accessor for AppRecord, &unk_25804D87C);
  sub_258012034(&qword_27F915520, MEMORY[0x277D83808], MEMORY[0x277D84F58]);
  sub_258049F00();

  return v0;
}

uint64_t sub_257FFEBF4@<X0>(uint64_t *a2@<X8>)
{
  swift_getKeyPath();
  sub_258009670(&qword_27F915288, type metadata accessor for AppRecord, &unk_25804D860);
  sub_258049A90();

  swift_getKeyPath();
  sub_258009670(&qword_27F915290, type metadata accessor for AppRecord, &unk_25804D87C);
  sub_258009670(&qword_27F9154C0, type metadata accessor for AppCodeIdentityRecord, &unk_25804D0AC);
  v3 = sub_258049EE0();

  *a2 = v3;
  return result;
}

uint64_t sub_257FFED30(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_258009670(&qword_27F915288, type metadata accessor for AppRecord, &unk_25804D860);
  sub_258049A80();
}

uint64_t sub_257FFEDFC(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_258009670(&qword_27F915290, type metadata accessor for AppRecord, &unk_25804D87C);
  sub_258009670(&qword_27F9154C0, type metadata accessor for AppCodeIdentityRecord, &unk_25804D0AC);
  sub_258049F30();
}

uint64_t sub_257FFEED4()
{
  swift_getKeyPath();
  sub_258009670(&qword_27F915288, type metadata accessor for AppRecord, &unk_25804D860);
  sub_258049A90();

  swift_getKeyPath();
  type metadata accessor for ExtensionCodeIdentityRecord(0);
  sub_258009670(&qword_27F915290, type metadata accessor for AppRecord, &unk_25804D87C);
  sub_258011E3C();
  sub_258049EF0();

  return v0;
}

uint64_t sub_257FFEFEC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_258009670(&qword_27F915288, type metadata accessor for AppRecord, &unk_25804D860);
  sub_258049A90();

  swift_getKeyPath();
  type metadata accessor for ExtensionCodeIdentityRecord(0);
  sub_258009670(&qword_27F915290, type metadata accessor for AppRecord, &unk_25804D87C);
  sub_258011E3C();
  sub_258049EF0();

  *a2 = v4;
  return result;
}

uint64_t sub_257FFF10C(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_258009670(&qword_27F915288, type metadata accessor for AppRecord, &unk_25804D860);
  sub_258049A80();
}

uint64_t sub_257FFF1D8(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  type metadata accessor for ExtensionCodeIdentityRecord(0);
  sub_258009670(&qword_27F915290, type metadata accessor for AppRecord, &unk_25804D87C);
  sub_258011E3C();
  sub_258049F10();
}

uint64_t sub_257FFF294(unint64_t a1, unint64_t a2)
{
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_32;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  if (a2 >> 62)
  {
    result = sub_25804A480();
    if (v5 == result)
    {
      goto LABEL_5;
    }

LABEL_34:
    v15 = 0;
    return v15 & 1;
  }

  result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 != result)
  {
    goto LABEL_34;
  }

LABEL_5:
  if (!v5)
  {
    goto LABEL_28;
  }

  v7 = a1 & 0xFFFFFFFFFFFFFF8;
  v8 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
  if ((a1 & 0x8000000000000000) != 0)
  {
    v7 = a1;
  }

  if (v4)
  {
    v8 = v7;
  }

  v9 = a2 & 0xFFFFFFFFFFFFFF8;
  v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
  if ((a2 & 0x8000000000000000) != 0)
  {
    v9 = a2;
  }

  if (a2 >> 62)
  {
    v10 = v9;
  }

  if (v8 == v10)
  {
LABEL_28:
    v15 = 1;
    return v15 & 1;
  }

  if ((v5 & 0x8000000000000000) == 0)
  {
    v4 = type metadata accessor for ExtensionRecord(0);
    v11 = a2 & 0xC000000000000001;
    v12 = 4;
    while (1)
    {
      v13 = v12 - 4;
      v14 = v12 - 3;
      if (__OFADD__(v12 - 4, 1))
      {
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        v5 = sub_25804A480();
        goto LABEL_3;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x259C768B0](v12 - 4, a1);
        if (v11)
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (v13 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_30;
        }

        if (v11)
        {
LABEL_20:
          MEMORY[0x259C768B0](v12 - 4, a2);
          goto LABEL_25;
        }
      }

      if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_31;
      }

LABEL_25:
      sub_258009670(&qword_27F915920, type metadata accessor for ExtensionRecord, &unk_25804D6B8);
      v15 = sub_25804A0F0();

      if (v15)
      {
        ++v12;
        if (v14 != v5)
        {
          continue;
        }
      }

      return v15 & 1;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_257FFF4A8(unint64_t a1, unint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v4 = a1;
  v5 = (a1 >> 62);
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v6)
    {
      goto LABEL_29;
    }

    v8 = v4 & 0xFFFFFFFFFFFFFF8;
    v9 = (v4 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v4 < 0)
    {
      v8 = v4;
    }

    if (v5)
    {
      v9 = v8;
    }

    v10 = a2 & 0xFFFFFFFFFFFFFF8;
    v11 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if ((a2 & 0x8000000000000000) != 0)
    {
      v10 = a2;
    }

    if (a2 >> 62)
    {
      v11 = v10;
    }

    if (v9 == v11)
    {
LABEL_29:
      v17 = 1;
      return v17 & 1;
    }

    if (v6 < 0)
    {
      __break(1u);
      return result;
    }

    if (((a2 | v4) & 0xC000000000000001) != 0)
    {
      v12 = a2 & 0xC000000000000001;
      v13 = 4;
      while (1)
      {
        v14 = v13 - 4;
        v5 = (v13 - 3);
        if (__OFADD__(v13 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v4 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x259C768B0](v13 - 4, v4);
          if (!v12)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v14 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v15 = *(v4 + 8 * v13);

          if (!v12)
          {
LABEL_24:
            if (v14 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v16 = *(a2 + 8 * v13);

            goto LABEL_26;
          }
        }

        v16 = MEMORY[0x259C768B0](v13 - 4, a2);
LABEL_26:
        v17 = a3(v15, v16);

        if (v17)
        {
          ++v13;
          if (v5 != v6)
          {
            continue;
          }
        }

        return v17 & 1;
      }
    }

    v5 = (v4 + 32);
    v18 = (a2 + 32);
    v19 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v20 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v21 = v6 - 1;
    while (1)
    {
      if (!v19)
      {
        goto LABEL_40;
      }

      if (!v20)
      {
        break;
      }

      v22 = *v5++;
      a2 = v22;
      v23 = *v18++;
      v4 = v23;

      v17 = a3(a2, v23);

      v25 = v21-- != 0;
      if (v17)
      {
        --v20;
        --v19;
        if (v25)
        {
          continue;
        }
      }

      return v17 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v6 = sub_25804A480();
  }

  result = sub_25804A480();
  if (v6 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_257FFF6FC()
{
  swift_getKeyPath();
  sub_258009670(&qword_27F9152E8, type metadata accessor for DataRecord, &unk_25804D834);
  sub_258049A90();

  swift_getKeyPath();
  sub_258009670(&qword_27F9152A8, type metadata accessor for DataRecord, &unk_25804D7C4);
  sub_258009670(&qword_27F915290, type metadata accessor for AppRecord, &unk_25804D87C);
  v0 = sub_258049EE0();

  return v0;
}

uint64_t sub_257FFF834@<X0>(uint64_t *a2@<X8>)
{
  swift_getKeyPath();
  sub_258009670(&qword_27F9152E8, type metadata accessor for DataRecord, &unk_25804D834);
  sub_258049A90();

  swift_getKeyPath();
  sub_258009670(&qword_27F9152A8, type metadata accessor for DataRecord, &unk_25804D7C4);
  sub_258009670(&qword_27F915290, type metadata accessor for AppRecord, &unk_25804D87C);
  v3 = sub_258049EE0();

  *a2 = v3;
  return result;
}

uint64_t sub_257FFF970(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_258009670(&qword_27F9152E8, type metadata accessor for DataRecord, &unk_25804D834);
  sub_258049A80();
}

uint64_t sub_257FFFA3C()
{
  swift_getKeyPath();
  sub_258009670(&qword_27F9152F0, type metadata accessor for CredentialRecord, &unk_25804D194);
  sub_258049A90();

  swift_getKeyPath();
  sub_258009670(&qword_27F9152C0, type metadata accessor for CredentialRecord, &unk_25804D228);
  sub_258009670(&qword_27F915290, type metadata accessor for AppRecord, &unk_25804D87C);
  v0 = sub_258049EE0();

  return v0;
}

uint64_t sub_257FFFB74@<X0>(uint64_t *a2@<X8>)
{
  swift_getKeyPath();
  sub_258009670(&qword_27F9152F0, type metadata accessor for CredentialRecord, &unk_25804D194);
  sub_258049A90();

  swift_getKeyPath();
  sub_258009670(&qword_27F9152C0, type metadata accessor for CredentialRecord, &unk_25804D228);
  sub_258009670(&qword_27F915290, type metadata accessor for AppRecord, &unk_25804D87C);
  v3 = sub_258049EE0();

  *a2 = v3;
  return result;
}

uint64_t sub_257FFFCB0(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_258009670(&qword_27F9152F0, type metadata accessor for CredentialRecord, &unk_25804D194);
  sub_258049A80();
}

uint64_t sub_257FFFD7C()
{
  swift_getKeyPath();
  sub_258009670(&qword_27F9152E0, type metadata accessor for ExtensionRecord, &unk_25804D728);
  sub_258049A90();

  swift_getKeyPath();
  sub_258009670(&qword_27F9152D8, type metadata accessor for ExtensionRecord, &unk_25804D754);
  sub_258009670(&qword_27F915290, type metadata accessor for AppRecord, &unk_25804D87C);
  v0 = sub_258049EE0();

  return v0;
}

uint64_t sub_257FFFEB4@<X0>(uint64_t *a2@<X8>)
{
  swift_getKeyPath();
  sub_258009670(&qword_27F9152E0, type metadata accessor for ExtensionRecord, &unk_25804D728);
  sub_258049A90();

  swift_getKeyPath();
  sub_258009670(&qword_27F9152D8, type metadata accessor for ExtensionRecord, &unk_25804D754);
  sub_258009670(&qword_27F915290, type metadata accessor for AppRecord, &unk_25804D87C);
  v3 = sub_258049EE0();

  *a2 = v3;
  return result;
}

uint64_t sub_257FFFFF0(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_258009670(&qword_27F9152E0, type metadata accessor for ExtensionRecord, &unk_25804D728);
  sub_258049A80();
}

void *sub_2580000BC(__int128 *a1)
{
  v2 = v1;
  *(v1 + 48) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9159E8, &unk_25804DB98);
  sub_258009670(&qword_27F915290, type metadata accessor for AppRecord, &unk_25804D87C);
  *(v1 + 56) = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1((v1 + 24));
  sub_258049EA0();
  __swift_project_boxed_opaque_existential_1((v2 + 24), *(v2 + 48));
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915528, &qword_25804BFA0);
  sub_258012034(&qword_27F9159E0, MEMORY[0x277D837D8], MEMORY[0x277D84F40]);
  sub_258049D50();

  *(v1 + 16) = 0;
  __swift_project_boxed_opaque_existential_1((v2 + 24), *(v2 + 48));
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9152A0, &qword_25804B460);
  type metadata accessor for DataRecord(0);
  sub_257FDAD00();
  sub_258049D40();

  __swift_project_boxed_opaque_existential_1((v2 + 24), *(v2 + 48));
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9152B8, &qword_25804B490);
  type metadata accessor for CredentialRecord(0);
  sub_257FDAE04();
  sub_258049D40();

  __swift_project_boxed_opaque_existential_1((v2 + 24), *(v2 + 48));
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9152D0, &qword_25804B4C0);
  type metadata accessor for ExtensionRecord(0);
  sub_257FDAEC0();
  sub_258049D40();

  __swift_project_boxed_opaque_existential_1((v2 + 24), *(v2 + 48));
  swift_getKeyPath();
  sub_258049D50();

  __swift_project_boxed_opaque_existential_1((v2 + 24), *(v2 + 48));
  swift_getKeyPath();
  sub_258049D50();

  __swift_project_boxed_opaque_existential_1((v2 + 24), *(v2 + 48));
  swift_getKeyPath();
  sub_258049D50();

  *(v1 + 17) = 256;
  __swift_project_boxed_opaque_existential_1((v2 + 24), *(v2 + 48));
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9159D8, &unk_25804DB88);
  type metadata accessor for ExtensionCodeIdentityRecord(0);
  sub_258011E3C();
  sub_258049D40();

  sub_258049AA0();
  *(v1 + 16) = 0;
  *(v1 + 18) = 0;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v1 + 24));
  sub_257FDAA0C(a1, v1 + 24);
  swift_endAccess();
  return v1;
}

uint64_t sub_2580005B8(uint64_t a1)
{
  result = sub_258049AB0();
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

uint64_t sub_2580006E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(void))
{
  v8 = *v5;
  swift_getKeyPath();
  sub_258009670(&qword_27F915288, type metadata accessor for AppRecord, &unk_25804D860);
  sub_258049A90();

  swift_getKeyPath();
  a4(0);
  sub_258009670(&qword_27F915290, type metadata accessor for AppRecord, &unk_25804D87C);
  a5();
  sub_258049EF0();

  return v8;
}

uint64_t sub_258000820(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_258009670(&qword_27F9152D8, type metadata accessor for ExtensionRecord, &unk_25804D754);
  sub_258009670(&qword_27F915290, type metadata accessor for AppRecord, &unk_25804D87C);
  sub_258049F30();
}

double sub_258000948@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_258009670(&qword_27F9152E0, type metadata accessor for ExtensionRecord, &unk_25804D728);
  sub_258049A90();

  swift_getKeyPath();
  sub_258009670(&qword_27F9152D8, type metadata accessor for ExtensionRecord, &unk_25804D754);
  sub_258012034(&qword_27F915520, MEMORY[0x277D83808], MEMORY[0x277D84F58]);
  sub_258049F00();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_258000A7C(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_258009670(&qword_27F9152E0, type metadata accessor for ExtensionRecord, &unk_25804D728);
  sub_258049A80();
}

double sub_258000B60@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_258009670(&qword_27F9152E0, type metadata accessor for ExtensionRecord, &unk_25804D728);
  sub_258049A90();

  swift_getKeyPath();
  sub_258009670(&qword_27F9152D8, type metadata accessor for ExtensionRecord, &unk_25804D754);
  sub_258012034(&qword_27F915520, MEMORY[0x277D83808], MEMORY[0x277D84F58]);
  sub_258049F00();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_258000C94(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_258009670(&qword_27F9152E0, type metadata accessor for ExtensionRecord, &unk_25804D728);
  sub_258049A80();
}

uint64_t sub_258000D6C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_258009670(&qword_27F9152E0, type metadata accessor for ExtensionRecord, &unk_25804D728);
  sub_258049A90();

  swift_getKeyPath();
  type metadata accessor for DataRecord(0);
  sub_258009670(&qword_27F9152D8, type metadata accessor for ExtensionRecord, &unk_25804D754);
  sub_257FDAD00();
  sub_258049EF0();

  *a2 = v4;
  return result;
}

uint64_t sub_258000E8C(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_258009670(&qword_27F9152E0, type metadata accessor for ExtensionRecord, &unk_25804D728);
  sub_258049A80();
}

uint64_t sub_258000F58(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  type metadata accessor for DataRecord(0);
  sub_258009670(&qword_27F9152D8, type metadata accessor for ExtensionRecord, &unk_25804D754);
  sub_257FDAD00();
  sub_258049F10();
}

uint64_t sub_258001014@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_258009670(&qword_27F9152E0, type metadata accessor for ExtensionRecord, &unk_25804D728);
  sub_258049A90();

  swift_getKeyPath();
  type metadata accessor for CredentialRecord(0);
  sub_258009670(&qword_27F9152D8, type metadata accessor for ExtensionRecord, &unk_25804D754);
  sub_257FDAE04();
  sub_258049EF0();

  *a2 = v4;
  return result;
}

uint64_t sub_258001134(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_258009670(&qword_27F9152E0, type metadata accessor for ExtensionRecord, &unk_25804D728);
  sub_258049A80();
}

uint64_t sub_258001200(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  type metadata accessor for CredentialRecord(0);
  sub_258009670(&qword_27F9152D8, type metadata accessor for ExtensionRecord, &unk_25804D754);
  sub_257FDAE04();
  sub_258049F10();
}

uint64_t sub_2580012BC()
{
  swift_getKeyPath();
  sub_258009670(&qword_27F9152E8, type metadata accessor for DataRecord, &unk_25804D834);
  sub_258049A90();

  swift_getKeyPath();
  sub_258009670(&qword_27F9152A8, type metadata accessor for DataRecord, &unk_25804D7C4);
  sub_258009670(&qword_27F9152D8, type metadata accessor for ExtensionRecord, &unk_25804D754);
  v0 = sub_258049EE0();

  return v0;
}

uint64_t sub_2580013F4@<X0>(uint64_t *a2@<X8>)
{
  swift_getKeyPath();
  sub_258009670(&qword_27F9152E8, type metadata accessor for DataRecord, &unk_25804D834);
  sub_258049A90();

  swift_getKeyPath();
  sub_258009670(&qword_27F9152A8, type metadata accessor for DataRecord, &unk_25804D7C4);
  sub_258009670(&qword_27F9152D8, type metadata accessor for ExtensionRecord, &unk_25804D754);
  v3 = sub_258049EE0();

  *a2 = v3;
  return result;
}

uint64_t sub_258001530(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_258009670(&qword_27F9152E8, type metadata accessor for DataRecord, &unk_25804D834);
  sub_258049A80();
}

uint64_t sub_2580015FC()
{
  swift_getKeyPath();
  sub_258009670(&qword_27F9152F0, type metadata accessor for CredentialRecord, &unk_25804D194);
  sub_258049A90();

  swift_getKeyPath();
  sub_258009670(&qword_27F9152C0, type metadata accessor for CredentialRecord, &unk_25804D228);
  sub_258009670(&qword_27F9152D8, type metadata accessor for ExtensionRecord, &unk_25804D754);
  v0 = sub_258049EE0();

  return v0;
}

uint64_t sub_258001734@<X0>(uint64_t *a2@<X8>)
{
  swift_getKeyPath();
  sub_258009670(&qword_27F9152F0, type metadata accessor for CredentialRecord, &unk_25804D194);
  sub_258049A90();

  swift_getKeyPath();
  sub_258009670(&qword_27F9152C0, type metadata accessor for CredentialRecord, &unk_25804D228);
  sub_258009670(&qword_27F9152D8, type metadata accessor for ExtensionRecord, &unk_25804D754);
  v3 = sub_258049EE0();

  *a2 = v3;
  return result;
}

uint64_t sub_258001870(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_258009670(&qword_27F9152F0, type metadata accessor for CredentialRecord, &unk_25804D194);
  sub_258049A80();
}

void *sub_25800193C(__int128 *a1)
{
  v2 = v1;
  *(v1 + 48) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9159F8, &qword_25804DD90);
  sub_258009670(&qword_27F9152D8, type metadata accessor for ExtensionRecord, &unk_25804D754);
  *(v1 + 56) = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1((v1 + 24));
  sub_258049EA0();
  *(v1 + 16) = 257;
  *(v1 + 18) = 1;
  __swift_project_boxed_opaque_existential_1((v2 + 24), *(v2 + 48));
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9152A0, &qword_25804B460);
  type metadata accessor for DataRecord(0);
  sub_257FDAD00();
  sub_258049D40();

  __swift_project_boxed_opaque_existential_1((v2 + 24), *(v2 + 48));
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9152B8, &qword_25804B490);
  type metadata accessor for CredentialRecord(0);
  sub_257FDAE04();
  sub_258049D40();

  sub_258049AA0();
  *(v1 + 16) = 0;
  *(v1 + 18) = 0;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v1 + 24));
  sub_257FDAA0C(a1, v1 + 24);
  swift_endAccess();
  return v1;
}

uint64_t sub_258001C24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(void))
{
  v8 = *v5;
  swift_getKeyPath();
  sub_258009670(&qword_27F9152E0, type metadata accessor for ExtensionRecord, &unk_25804D728);
  sub_258049A90();

  swift_getKeyPath();
  a4(0);
  sub_258009670(&qword_27F9152D8, type metadata accessor for ExtensionRecord, &unk_25804D754);
  a5();
  sub_258049EF0();

  return v8;
}

uint64_t sub_258001D84(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = sub_258009670(&qword_27F9152D8, type metadata accessor for ExtensionRecord, &unk_25804D754);

  return MEMORY[0x28212CAA0](v3, v4, v2, v5);
}

uint64_t sub_258001E04()
{
  swift_getKeyPath();
  sub_258009670(&qword_27F915908, type metadata accessor for AppCodeIdentityRecord, &unk_25804D018);
  sub_258049A90();

  swift_getKeyPath();
  sub_258009670(&qword_27F9154C0, type metadata accessor for AppCodeIdentityRecord, &unk_25804D0AC);
  sub_258009670(&qword_27F915290, type metadata accessor for AppRecord, &unk_25804D87C);
  v0 = sub_258049EE0();

  return v0;
}

uint64_t sub_258001F3C(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_258009670(&qword_27F9154C0, type metadata accessor for AppCodeIdentityRecord, &unk_25804D0AC);
  sub_258009670(&qword_27F915290, type metadata accessor for AppRecord, &unk_25804D87C);
  sub_258049F30();
}

uint64_t sub_258002014@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_258009670(&qword_27F915908, type metadata accessor for AppCodeIdentityRecord, &unk_25804D018);
  sub_258049A90();

  swift_getKeyPath();
  sub_258009670(&qword_27F9154C0, type metadata accessor for AppCodeIdentityRecord, &unk_25804D0AC);
  sub_258049F00();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_258002120(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_258009670(&qword_27F915908, type metadata accessor for AppCodeIdentityRecord, &unk_25804D018);
  sub_258049A80();
}

uint64_t sub_2580021F8()
{
  swift_getKeyPath();
  sub_258009670(&qword_27F915908, type metadata accessor for AppCodeIdentityRecord, &unk_25804D018);
  sub_258049A90();

  swift_getKeyPath();
  sub_258009670(&qword_27F9154C0, type metadata accessor for AppCodeIdentityRecord, &unk_25804D0AC);
  sub_258049F00();

  return v0;
}

uint64_t sub_2580022FC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_258009670(&qword_27F915908, type metadata accessor for AppCodeIdentityRecord, &unk_25804D018);
  sub_258049A90();

  swift_getKeyPath();
  sub_258009670(&qword_27F9154C0, type metadata accessor for AppCodeIdentityRecord, &unk_25804D0AC);
  sub_258049F00();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_258002408(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_258009670(&qword_27F915908, type metadata accessor for AppCodeIdentityRecord, &unk_25804D018);
  sub_258049A80();
}

uint64_t sub_2580024E0()
{
  swift_getKeyPath();
  sub_258009670(&qword_27F915908, type metadata accessor for AppCodeIdentityRecord, &unk_25804D018);
  sub_258049A90();

  swift_getKeyPath();
  sub_258009670(&qword_27F9154C0, type metadata accessor for AppCodeIdentityRecord, &unk_25804D0AC);
  sub_258049F00();

  return v0;
}

uint64_t sub_2580025E4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_258009670(&qword_27F915908, type metadata accessor for AppCodeIdentityRecord, &unk_25804D018);
  sub_258049A90();

  swift_getKeyPath();
  sub_258009670(&qword_27F9154C0, type metadata accessor for AppCodeIdentityRecord, &unk_25804D0AC);
  sub_258049F00();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_2580026F0(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_258009670(&qword_27F915908, type metadata accessor for AppCodeIdentityRecord, &unk_25804D018);
  sub_258049A80();
}

uint64_t sub_2580027C8()
{
  swift_getKeyPath();
  sub_258009670(&qword_27F915908, type metadata accessor for AppCodeIdentityRecord, &unk_25804D018);
  sub_258049A90();

  swift_getKeyPath();
  sub_258009670(&qword_27F9154C0, type metadata accessor for AppCodeIdentityRecord, &unk_25804D0AC);
  sub_258049F00();

  return v0;
}

uint64_t sub_2580028CC(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for AppCodeIdentityRecord(0);
  *(v2 + 48) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915A68, &qword_25804E100);
  v15 = sub_258009670(&qword_27F9154C0, type metadata accessor for AppCodeIdentityRecord, &unk_25804D0AC);
  *(v2 + 56) = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1((v2 + 24));
  sub_258049EA0();
  *(v2 + 16) = 1;
  sub_258049AA0();
  __swift_project_boxed_opaque_existential_1((v2 + 24), *(v2 + 48));
  swift_getKeyPath();
  type metadata accessor for AppRecord(0);
  sub_258009670(&qword_27F915290, type metadata accessor for AppRecord, &unk_25804D87C);
  sub_258049D60();

  *(v2 + 16) = 0;
  v5 = [a1 codeSigningID];
  v6 = sub_25804A110();
  v8 = v7;

  __swift_project_boxed_opaque_existential_1((v2 + 24), *(v2 + 48));
  swift_getKeyPath();
  sub_258049D50();

  v9 = [a1 teamID];
  v10 = sub_25804A110();
  v12 = v11;

  __swift_project_boxed_opaque_existential_1((v2 + 24), *(v2 + 48));
  swift_getKeyPath();
  sub_258049D50();

  v13 = [a1 path];
  sub_25804A110();

  __swift_project_boxed_opaque_existential_1((v2 + 24), *(v2 + 48));
  swift_getKeyPath();
  sub_258049D50();

  return v2;
}

uint64_t sub_258002BF0(uint64_t a1)
{
  v2 = v1;
  type metadata accessor for AppCodeIdentityRecord(0);
  *(v1 + 48) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915A68, &qword_25804E100);
  sub_258009670(&qword_27F9154C0, type metadata accessor for AppCodeIdentityRecord, &unk_25804D0AC);
  *(v1 + 56) = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1((v1 + 24));
  sub_258049EA0();
  *(v1 + 16) = 1;
  sub_258049AA0();
  __swift_project_boxed_opaque_existential_1((v2 + 24), *(v2 + 48));
  swift_getKeyPath();
  type metadata accessor for AppRecord(0);
  sub_258009670(&qword_27F915290, type metadata accessor for AppRecord, &unk_25804D87C);
  sub_258049D60();

  *(v1 + 16) = 0;
  swift_getKeyPath();
  sub_258009670(&qword_27F915908, type metadata accessor for AppCodeIdentityRecord, &unk_25804D018);
  sub_258049A90();

  swift_getKeyPath();
  sub_258049F00();

  __swift_project_boxed_opaque_existential_1((v2 + 24), *(v2 + 48));
  swift_getKeyPath();
  sub_258049D50();

  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_258049F00();

  __swift_project_boxed_opaque_existential_1((v2 + 24), *(v2 + 48));
  swift_getKeyPath();
  sub_258049D50();

  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_258049F00();

  __swift_project_boxed_opaque_existential_1((v2 + 24), *(v2 + 48));
  swift_getKeyPath();
  sub_258049D50();

  return v1;
}

uint64_t sub_258002FF8(__int128 *a1)
{
  type metadata accessor for AppCodeIdentityRecord(0);
  *(v1 + 48) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915A68, &qword_25804E100);
  sub_258009670(&qword_27F9154C0, type metadata accessor for AppCodeIdentityRecord, &unk_25804D0AC);
  *(v1 + 56) = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1((v1 + 24));
  sub_258049EA0();
  *(v1 + 16) = 1;
  sub_258049AA0();
  *(v1 + 16) = 0;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v1 + 24));
  sub_257FDAA0C(a1, v1 + 24);
  swift_endAccess();
  return v1;
}

uint64_t sub_2580031A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  swift_getKeyPath();
  sub_258009670(&qword_27F915908, type metadata accessor for AppCodeIdentityRecord, &unk_25804D018);
  sub_258049A90();

  swift_getKeyPath();
  sub_258009670(&qword_27F9154C0, type metadata accessor for AppCodeIdentityRecord, &unk_25804D0AC);
  sub_258049F00();

  return v4;
}

uint64_t sub_2580032AC()
{
  swift_getKeyPath();
  sub_258009670(&qword_27F915518, type metadata accessor for ExtensionCodeIdentityRecord, &unk_25804CF14);
  sub_258049A90();

  swift_getKeyPath();
  sub_258009670(&qword_27F915430, type metadata accessor for ExtensionCodeIdentityRecord, &unk_25804CFA8);
  sub_258009670(&qword_27F915290, type metadata accessor for AppRecord, &unk_25804D87C);
  v0 = sub_258049EE0();

  return v0;
}

uint64_t sub_2580033E4(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_258009670(&qword_27F915430, type metadata accessor for ExtensionCodeIdentityRecord, &unk_25804CFA8);
  sub_258009670(&qword_27F915290, type metadata accessor for AppRecord, &unk_25804D87C);
  sub_258049F30();
}

uint64_t sub_2580034BC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_258009670(&qword_27F915518, type metadata accessor for ExtensionCodeIdentityRecord, &unk_25804CF14);
  sub_258049A90();

  swift_getKeyPath();
  sub_258009670(&qword_27F915430, type metadata accessor for ExtensionCodeIdentityRecord, &unk_25804CFA8);
  sub_258049F00();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_2580035C8(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_258009670(&qword_27F915518, type metadata accessor for ExtensionCodeIdentityRecord, &unk_25804CF14);
  sub_258049A80();
}

uint64_t sub_2580036A0()
{
  swift_getKeyPath();
  sub_258009670(&qword_27F915518, type metadata accessor for ExtensionCodeIdentityRecord, &unk_25804CF14);
  sub_258049A90();

  swift_getKeyPath();
  sub_258009670(&qword_27F915430, type metadata accessor for ExtensionCodeIdentityRecord, &unk_25804CFA8);
  sub_258049F00();

  return v0;
}

uint64_t sub_2580037A4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_258009670(&qword_27F915518, type metadata accessor for ExtensionCodeIdentityRecord, &unk_25804CF14);
  sub_258049A90();

  swift_getKeyPath();
  sub_258009670(&qword_27F915430, type metadata accessor for ExtensionCodeIdentityRecord, &unk_25804CFA8);
  sub_258049F00();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_2580038B0(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_258009670(&qword_27F915518, type metadata accessor for ExtensionCodeIdentityRecord, &unk_25804CF14);
  sub_258049A80();
}

uint64_t sub_258003988()
{
  swift_getKeyPath();
  sub_258009670(&qword_27F915518, type metadata accessor for ExtensionCodeIdentityRecord, &unk_25804CF14);
  sub_258049A90();

  swift_getKeyPath();
  sub_258009670(&qword_27F915430, type metadata accessor for ExtensionCodeIdentityRecord, &unk_25804CFA8);
  sub_258049F00();

  return v0;
}

uint64_t sub_258003A8C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_258009670(&qword_27F915518, type metadata accessor for ExtensionCodeIdentityRecord, &unk_25804CF14);
  sub_258049A90();

  swift_getKeyPath();
  sub_258009670(&qword_27F915430, type metadata accessor for ExtensionCodeIdentityRecord, &unk_25804CFA8);
  sub_258049F00();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_258003B98(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_258009670(&qword_27F915518, type metadata accessor for ExtensionCodeIdentityRecord, &unk_25804CF14);
  sub_258049A80();
}

uint64_t sub_258003C70()
{
  swift_getKeyPath();
  sub_258009670(&qword_27F915518, type metadata accessor for ExtensionCodeIdentityRecord, &unk_25804CF14);
  sub_258049A90();

  swift_getKeyPath();
  sub_258009670(&qword_27F915430, type metadata accessor for ExtensionCodeIdentityRecord, &unk_25804CFA8);
  sub_258049F00();

  return v0;
}

uint64_t sub_258003D74(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for ExtensionCodeIdentityRecord(0);
  *(v2 + 48) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915A70, &qword_25804E108);
  v15 = sub_258009670(&qword_27F915430, type metadata accessor for ExtensionCodeIdentityRecord, &unk_25804CFA8);
  *(v2 + 56) = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1((v2 + 24));
  sub_258049EA0();
  *(v2 + 16) = 1;
  sub_258049AA0();
  __swift_project_boxed_opaque_existential_1((v2 + 24), *(v2 + 48));
  swift_getKeyPath();
  type metadata accessor for AppRecord(0);
  sub_258009670(&qword_27F915290, type metadata accessor for AppRecord, &unk_25804D87C);
  sub_258049D60();

  *(v2 + 16) = 0;
  v5 = [a1 codeSigningID];
  v6 = sub_25804A110();
  v8 = v7;

  __swift_project_boxed_opaque_existential_1((v2 + 24), *(v2 + 48));
  swift_getKeyPath();
  sub_258049D50();

  v9 = [a1 teamID];
  v10 = sub_25804A110();
  v12 = v11;

  __swift_project_boxed_opaque_existential_1((v2 + 24), *(v2 + 48));
  swift_getKeyPath();
  sub_258049D50();

  v13 = [a1 path];
  sub_25804A110();

  __swift_project_boxed_opaque_existential_1((v2 + 24), *(v2 + 48));
  swift_getKeyPath();
  sub_258049D50();

  return v2;
}

uint64_t sub_258004098(__int128 *a1)
{
  type metadata accessor for ExtensionCodeIdentityRecord(0);
  *(v1 + 48) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915A70, &qword_25804E108);
  sub_258009670(&qword_27F915430, type metadata accessor for ExtensionCodeIdentityRecord, &unk_25804CFA8);
  *(v1 + 56) = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1((v1 + 24));
  sub_258049EA0();
  *(v1 + 16) = 1;
  sub_258049AA0();
  *(v1 + 16) = 0;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v1 + 24));
  sub_257FDAA0C(a1, v1 + 24);
  swift_endAccess();
  return v1;
}

uint64_t sub_258004200()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_258009670(&qword_27F915518, type metadata accessor for ExtensionCodeIdentityRecord, &unk_25804CF14);
  sub_258049A90();

  swift_getKeyPath();
  sub_258009670(&qword_27F915430, type metadata accessor for ExtensionCodeIdentityRecord, &unk_25804CFA8);
  sub_258049F00();

  return v1;
}

uint64_t sub_258004304()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_258009670(&qword_27F915518, type metadata accessor for ExtensionCodeIdentityRecord, &unk_25804CF14);
  sub_258049A90();

  swift_getKeyPath();
  sub_258009670(&qword_27F915430, type metadata accessor for ExtensionCodeIdentityRecord, &unk_25804CFA8);
  sub_258049F00();

  return v1;
}

uint64_t sub_258004408()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_258009670(&qword_27F915518, type metadata accessor for ExtensionCodeIdentityRecord, &unk_25804CF14);
  sub_258049A90();

  swift_getKeyPath();
  sub_258009670(&qword_27F915430, type metadata accessor for ExtensionCodeIdentityRecord, &unk_25804CFA8);
  sub_258049F00();

  return v1;
}

uint64_t sub_258004518(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_258009670(&qword_27F9152A8, type metadata accessor for DataRecord, &unk_25804D7C4);
  sub_258009670(&qword_27F915290, type metadata accessor for AppRecord, &unk_25804D87C);
  sub_258049F30();
}

uint64_t sub_2580045F0(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_258009670(&qword_27F9152A8, type metadata accessor for DataRecord, &unk_25804D7C4);
  sub_258009670(&qword_27F9152D8, type metadata accessor for ExtensionRecord, &unk_25804D754);
  sub_258049F30();
}

uint64_t sub_2580046C8()
{
  swift_getKeyPath();
  sub_258009670(&qword_27F9152E8, type metadata accessor for DataRecord, &unk_25804D834);
  sub_258049A90();

  swift_getKeyPath();
  sub_258009670(&qword_27F9152A8, type metadata accessor for DataRecord, &unk_25804D7C4);
  sub_258049F00();

  return v0;
}

uint64_t sub_25800481C@<X0>(uint64_t *a2@<X8>)
{
  swift_getKeyPath();
  sub_258009670(&qword_27F9152E8, type metadata accessor for DataRecord, &unk_25804D834);
  sub_258049A90();

  swift_getKeyPath();
  sub_258009670(&qword_27F9152A8, type metadata accessor for DataRecord, &unk_25804D7C4);
  sub_258009670(&qword_27F915278, type metadata accessor for DataAssetRecord, &unk_25804D430);
  v3 = sub_258049EE0();

  *a2 = v3;
  return result;
}

uint64_t sub_258004958(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_258009670(&qword_27F9152E8, type metadata accessor for DataRecord, &unk_25804D834);
  sub_258049A80();
}

uint64_t sub_258004A24(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_258009670(&qword_27F9152A8, type metadata accessor for DataRecord, &unk_25804D7C4);
  sub_258009670(&qword_27F915278, type metadata accessor for DataAssetRecord, &unk_25804D430);
  sub_258049F30();
}

uint64_t sub_258004AFC(uint64_t a1, uint64_t a2, char a3)
{
  swift_getKeyPath();
  sub_258009670(&qword_27F9152A8, type metadata accessor for DataRecord, &unk_25804D7C4);
  sub_2580142C0(&qword_27F915A90, MEMORY[0x277D83B90], MEMORY[0x277D84F40]);
  sub_258049F20();
}

double sub_258004BE0@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_258009670(&qword_27F9152E8, type metadata accessor for DataRecord, &unk_25804D834);
  sub_258049A90();

  swift_getKeyPath();
  sub_258009670(&qword_27F9152A8, type metadata accessor for DataRecord, &unk_25804D7C4);
  sub_258012034(&qword_27F915520, MEMORY[0x277D83808], MEMORY[0x277D84F58]);
  sub_258049F00();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_258004D14(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_258009670(&qword_27F9152E8, type metadata accessor for DataRecord, &unk_25804D834);
  sub_258049A80();
}

uint64_t sub_258004E3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t a7)
{
  swift_getKeyPath();
  sub_258009670(a5, a6, a7);
  sub_258012034(&qword_27F9159E0, MEMORY[0x277D837D8], MEMORY[0x277D84F40]);
  sub_258049F20();
}

uint64_t sub_258004F04()
{
  swift_getKeyPath();
  sub_258009670(&qword_27F9152E8, type metadata accessor for DataRecord, &unk_25804D834);
  sub_258049A90();

  swift_getKeyPath();
  sub_258009670(&qword_27F9152A8, type metadata accessor for DataRecord, &unk_25804D7C4);
  sub_258009670(&qword_27F915290, type metadata accessor for AppRecord, &unk_25804D87C);
  v0 = sub_258049EE0();

  if (v0)
  {
    v4 = v0;
    swift_getKeyPath();
    sub_258009670(&qword_27F915288, type metadata accessor for AppRecord, &unk_25804D860);
    sub_258049A90();

    swift_getKeyPath();
    sub_258049F00();

LABEL_3:

    return v4;
  }

  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_258009670(&qword_27F9152D8, type metadata accessor for ExtensionRecord, &unk_25804D754);
  v2 = sub_258049EE0();

  if (v2)
  {
    swift_getKeyPath();
    sub_258009670(&qword_27F9152E0, type metadata accessor for ExtensionRecord, &unk_25804D728);
    sub_258049A90();

    swift_getKeyPath();
    v3 = sub_258049EE0();

    if (v3)
    {
      v4 = v3;
      swift_getKeyPath();
      sub_258009670(&qword_27F915288, type metadata accessor for AppRecord, &unk_25804D860);
      sub_258049A90();

      swift_getKeyPath();
      sub_258049F00();

      goto LABEL_3;
    }
  }

  return 0;
}

void *sub_2580052EC(__int128 *a1)
{
  *(v1 + 48) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9159F0, &qword_25804DC98);
  sub_258009670(&qword_27F9152A8, type metadata accessor for DataRecord, &unk_25804D7C4);
  *(v1 + 56) = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1((v1 + 24));
  sub_258049EA0();
  *(v1 + 16) = 16843009;
  *(v1 + 20) = 1;
  sub_258049AA0();
  *(v1 + 20) = 0;
  *(v1 + 16) = 0;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v1 + 24));
  sub_257FDAA0C(a1, v1 + 24);
  swift_endAccess();
  return v1;
}

uint64_t sub_25800547C(uint64_t a1)
{
  result = sub_258049AB0();
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

uint64_t sub_258005548(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_258009670(&qword_27F9152C0, type metadata accessor for CredentialRecord, &unk_25804D228);
  sub_258009670(&qword_27F915290, type metadata accessor for AppRecord, &unk_25804D87C);
  sub_258049F30();
}

uint64_t sub_258005620(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_258009670(&qword_27F9152C0, type metadata accessor for CredentialRecord, &unk_25804D228);
  sub_258009670(&qword_27F9152D8, type metadata accessor for ExtensionRecord, &unk_25804D754);
  sub_258049F30();
}

uint64_t sub_2580056F8()
{
  swift_getKeyPath();
  sub_258009670(&qword_27F9152F0, type metadata accessor for CredentialRecord, &unk_25804D194);
  sub_258049A90();

  swift_getKeyPath();
  sub_258009670(&qword_27F9152C0, type metadata accessor for CredentialRecord, &unk_25804D228);
  sub_258049F00();

  return v0;
}

uint64_t sub_2580057FC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_258009670(&qword_27F9152F0, type metadata accessor for CredentialRecord, &unk_25804D194);
  sub_258049A90();

  swift_getKeyPath();
  sub_258009670(&qword_27F9152C0, type metadata accessor for CredentialRecord, &unk_25804D228);
  sub_258049F00();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_258005908(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_258009670(&qword_27F9152F0, type metadata accessor for CredentialRecord, &unk_25804D194);
  sub_258049A80();
}

uint64_t sub_2580059E0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_258009670(&qword_27F9152F0, type metadata accessor for CredentialRecord, &unk_25804D194);
  sub_258049A90();

  swift_getKeyPath();
  sub_258009670(&qword_27F9152C0, type metadata accessor for CredentialRecord, &unk_25804D228);
  sub_258049F00();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_258005AEC(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_258009670(&qword_27F9152F0, type metadata accessor for CredentialRecord, &unk_25804D194);
  sub_258049A80();
}

uint64_t sub_258005BC4@<X0>(uint64_t *a2@<X8>)
{
  swift_getKeyPath();
  sub_258009670(&qword_27F9152F0, type metadata accessor for CredentialRecord, &unk_25804D194);
  sub_258049A90();

  swift_getKeyPath();
  sub_258009670(&qword_27F9152C0, type metadata accessor for CredentialRecord, &unk_25804D228);
  sub_258009670(&qword_27F915258, type metadata accessor for CredentialAssetRecord, &unk_25804D32C);
  v3 = sub_258049EE0();

  *a2 = v3;
  return result;
}

uint64_t sub_258005D00(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_258009670(&qword_27F9152F0, type metadata accessor for CredentialRecord, &unk_25804D194);
  sub_258049A80();
}

uint64_t sub_258005DCC(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_258009670(&qword_27F9152C0, type metadata accessor for CredentialRecord, &unk_25804D228);
  sub_258009670(&qword_27F915258, type metadata accessor for CredentialAssetRecord, &unk_25804D32C);
  sub_258049F30();
}

void *sub_258005EA4(__int128 *a1)
{
  *(v1 + 48) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915A60, &qword_25804E0F8);
  sub_258009670(&qword_27F9152C0, type metadata accessor for CredentialRecord, &unk_25804D228);
  *(v1 + 56) = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1((v1 + 24));
  sub_258049EA0();
  *(v1 + 16) = 257;
  *(v1 + 18) = 1;
  sub_258049AA0();
  *(v1 + 16) = 0;
  *(v1 + 18) = 0;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v1 + 24));
  sub_257FDAA0C(a1, v1 + 24);
  swift_endAccess();
  return v1;
}

uint64_t sub_258006050(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = sub_258049AB0();
  if (v6 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_25800611C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_258009670(&qword_27F915270, type metadata accessor for DataAssetRecord, &unk_25804D39C);
  sub_258049A90();

  swift_getKeyPath();
  type metadata accessor for DataRecord(0);
  sub_258009670(&qword_27F915278, type metadata accessor for DataAssetRecord, &unk_25804D430);
  sub_257FDAD00();
  sub_258049EF0();

  *a2 = v4;
  return result;
}

uint64_t sub_25800623C(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_258009670(&qword_27F915270, type metadata accessor for DataAssetRecord, &unk_25804D39C);
  sub_258049A80();
}

uint64_t sub_258006308(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  type metadata accessor for DataRecord(0);
  sub_258009670(&qword_27F915278, type metadata accessor for DataAssetRecord, &unk_25804D430);
  sub_257FDAD00();
  sub_258049F10();
}

uint64_t sub_2580063C4()
{
  swift_getKeyPath();
  sub_258009670(&qword_27F915270, type metadata accessor for DataAssetRecord, &unk_25804D39C);
  sub_258049A90();

  swift_getKeyPath();
  sub_258009670(&qword_27F915278, type metadata accessor for DataAssetRecord, &unk_25804D430);
  sub_257FEC568();
  sub_258049F00();
}

uint64_t sub_2580064CC(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915268, &qword_25804F1E0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9[-v5];
  sub_258013990(a1, &v9[-v5]);
  v7 = *a2;
  v12 = v7;
  swift_getKeyPath();
  v10 = v7;
  v11 = v6;
  sub_258009670(&qword_27F915270, type metadata accessor for DataAssetRecord, &unk_25804D39C);
  sub_258049A80();

  return sub_258013A00(v6);
}

uint64_t sub_2580065FC(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_258009670(&qword_27F915278, type metadata accessor for DataAssetRecord, &unk_25804D430);
  sub_258013A68();
  sub_258049F20();
}

double sub_2580066A4@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_258009670(&qword_27F915270, type metadata accessor for DataAssetRecord, &unk_25804D39C);
  sub_258049A90();

  swift_getKeyPath();
  sub_258009670(&qword_27F915278, type metadata accessor for DataAssetRecord, &unk_25804D430);
  sub_257FDAB10();
  sub_258049F00();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_2580067B4(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_258009670(&qword_27F915270, type metadata accessor for DataAssetRecord, &unk_25804D39C);
  sub_258049A80();
}

uint64_t sub_2580068DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t a7)
{
  swift_getKeyPath();
  sub_258009670(a5, a6, a7);
  sub_25801393C();
  sub_258049F20();
}

void *sub_258006980(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  *(&v14 + 1) = a2;
  v15 = a3;
  *&v14 = a1;
  v5 = *v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915268, &qword_25804F1E0);
  MEMORY[0x28223BE20](v6);
  v8 = &v13 - v7;
  v4[6] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915A18, &qword_25804E020);
  v9 = sub_258009670(&qword_27F915278, type metadata accessor for DataAssetRecord, &unk_25804D430);
  *&v18 = v5;
  *(&v18 + 1) = v5;
  v19 = v9;
  v20 = v9;
  v4[7] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(v4 + 3);
  sub_258049EA0();
  __swift_project_boxed_opaque_existential_1(v4 + 3, v4[6]);
  swift_getKeyPath();
  *&v18 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9152A0, &qword_25804B460);
  type metadata accessor for DataRecord(0);
  sub_257FDAD00();
  sub_258049D40();

  v10 = type metadata accessor for DataPersistenceValue(0);
  (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  __swift_project_boxed_opaque_existential_1(v4 + 3, v4[6]);
  swift_getKeyPath();
  sub_258013A68();
  sub_258049D50();

  sub_258013A00(v8);
  *(v4 + 16) = 0;
  __swift_project_boxed_opaque_existential_1(v4 + 3, v4[6]);
  swift_getKeyPath();
  v18 = xmmword_25804CBD0;
  sub_25801393C();
  sub_258049D50();

  sub_258049AA0();
  __swift_project_boxed_opaque_existential_1(v4 + 3, v4[6]);
  swift_getKeyPath();
  v18 = v14;
  sub_258049D50();

  v11 = v15;
  sub_258013990(v15, v8);
  *&v18 = v4;
  swift_getKeyPath();
  v16 = v4;
  v17 = v8;
  sub_258009670(&qword_27F915270, type metadata accessor for DataAssetRecord, &unk_25804D39C);
  sub_258049A80();

  sub_258013A00(v11);
  sub_258013A00(v8);
  return v4;
}

void *sub_258006D70(__int128 *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915268, &qword_25804F1E0);
  MEMORY[0x28223BE20](v5);
  v7 = &v11 - v6;
  v2[6] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915A18, &qword_25804E020);
  v8 = sub_258009670(&qword_27F915278, type metadata accessor for DataAssetRecord, &unk_25804D430);
  *&v11 = v4;
  *(&v11 + 1) = v4;
  v12 = v8;
  v13 = v8;
  v2[7] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(v2 + 3);
  sub_258049EA0();
  __swift_project_boxed_opaque_existential_1(v2 + 3, v2[6]);
  swift_getKeyPath();
  *&v11 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9152A0, &qword_25804B460);
  type metadata accessor for DataRecord(0);
  sub_257FDAD00();
  sub_258049D40();

  v9 = type metadata accessor for DataPersistenceValue(0);
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  __swift_project_boxed_opaque_existential_1(v2 + 3, v2[6]);
  swift_getKeyPath();
  sub_258013A68();
  sub_258049D50();

  sub_258013A00(v7);
  *(v2 + 16) = 0;
  __swift_project_boxed_opaque_existential_1(v2 + 3, v2[6]);
  swift_getKeyPath();
  v11 = xmmword_25804CBD0;
  sub_25801393C();
  sub_258049D50();

  sub_258049AA0();
  *(v2 + 16) = 0;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1(v2 + 3);
  sub_257FDAA0C(a1, (v2 + 3));
  swift_endAccess();
  return v2;
}

uint64_t sub_2580070E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = sub_258049AB0();
  if (v6 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_25800719C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t a7)
{
  swift_getKeyPath();
  sub_258009670(a5, a6, a7);
  sub_258049F20();
}

uint64_t sub_25800723C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_258009670(&qword_27F915250, type metadata accessor for CredentialAssetRecord, &unk_25804D298);
  sub_258049A90();

  swift_getKeyPath();
  type metadata accessor for CredentialRecord(0);
  sub_258009670(&qword_27F915258, type metadata accessor for CredentialAssetRecord, &unk_25804D32C);
  sub_257FDAE04();
  sub_258049EF0();

  *a2 = v4;
  return result;
}

uint64_t sub_25800735C(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_258009670(&qword_27F915250, type metadata accessor for CredentialAssetRecord, &unk_25804D298);
  sub_258049A80();
}

uint64_t sub_258007428(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  type metadata accessor for CredentialRecord(0);
  sub_258009670(&qword_27F915258, type metadata accessor for CredentialAssetRecord, &unk_25804D32C);
  sub_257FDAE04();
  sub_258049F10();
}

uint64_t sub_2580074E4()
{
  swift_getKeyPath();
  sub_258009670(&qword_27F915250, type metadata accessor for CredentialAssetRecord, &unk_25804D298);
  sub_258049A90();

  swift_getKeyPath();
  sub_258009670(&qword_27F915258, type metadata accessor for CredentialAssetRecord, &unk_25804D32C);
  sub_2580141BC(&qword_27F915A50, sub_257FF7854, MEMORY[0x277D84F58]);
  sub_258049F00();

  return v0;
}

double sub_25800761C@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_258009670(&qword_27F915250, type metadata accessor for CredentialAssetRecord, &unk_25804D298);
  sub_258049A90();

  swift_getKeyPath();
  sub_258009670(&qword_27F915258, type metadata accessor for CredentialAssetRecord, &unk_25804D32C);
  sub_2580141BC(&qword_27F915A50, sub_257FF7854, MEMORY[0x277D84F58]);
  sub_258049F00();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_25800775C(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_258009670(&qword_27F915250, type metadata accessor for CredentialAssetRecord, &unk_25804D298);
  sub_258049A80();
}

uint64_t sub_258007834(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  sub_258009670(&qword_27F915258, type metadata accessor for CredentialAssetRecord, &unk_25804D32C);
  sub_2580141BC(&qword_27F915A40, sub_257FF779C, MEMORY[0x277D84F40]);
  sub_258049F20();
}

double sub_25800791C@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_258009670(&qword_27F915250, type metadata accessor for CredentialAssetRecord, &unk_25804D298);
  sub_258049A90();

  swift_getKeyPath();
  sub_258009670(&qword_27F915258, type metadata accessor for CredentialAssetRecord, &unk_25804D32C);
  sub_257FDAB10();
  sub_258049F00();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_258007A2C(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_258009670(&qword_27F915250, type metadata accessor for CredentialAssetRecord, &unk_25804D298);
  sub_258049A80();
}

void *sub_258007B54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v7 = v6;
  *(v6 + 48) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915A58, &qword_25804E0F0);
  sub_258009670(&qword_27F915258, type metadata accessor for CredentialAssetRecord, &unk_25804D32C);
  *(v6 + 56) = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1((v6 + 24));
  sub_258049EA0();
  __swift_project_boxed_opaque_existential_1((v7 + 24), *(v7 + 48));
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9152B8, &qword_25804B490);
  type metadata accessor for CredentialRecord(0);
  sub_257FDAE04();
  sub_258049D40();

  __swift_project_boxed_opaque_existential_1((v7 + 24), *(v7 + 48));
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915A48, &qword_25804E0E8);
  sub_2580141BC(&qword_27F915A40, sub_257FF779C, MEMORY[0x277D84F40]);
  sub_258049D50();

  *(v6 + 16) = 0;
  __swift_project_boxed_opaque_existential_1((v7 + 24), *(v7 + 48));
  swift_getKeyPath();
  sub_25801393C();
  sub_258049D50();

  sub_258049AA0();
  __swift_project_boxed_opaque_existential_1((v7 + 24), *(v7 + 48));
  swift_getKeyPath();
  sub_258049D50();

  __swift_project_boxed_opaque_existential_1((v7 + 24), *(v7 + 48));
  swift_getKeyPath();
  sub_258049D50();

  swift_getKeyPath();
  sub_258009670(&qword_27F915250, type metadata accessor for CredentialAssetRecord, &unk_25804D298);
  sub_258049A80();
  sub_257FDAAA0(a5, a6);

  return v6;
}

void *sub_258007F54(__int128 *a1)
{
  v2 = v1;
  *(v1 + 48) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915A58, &qword_25804E0F0);
  sub_258009670(&qword_27F915258, type metadata accessor for CredentialAssetRecord, &unk_25804D32C);
  *(v1 + 56) = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1((v1 + 24));
  sub_258049EA0();
  __swift_project_boxed_opaque_existential_1((v2 + 24), *(v2 + 48));
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9152B8, &qword_25804B490);
  type metadata accessor for CredentialRecord(0);
  sub_257FDAE04();
  sub_258049D40();

  __swift_project_boxed_opaque_existential_1((v2 + 24), *(v2 + 48));
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915A48, &qword_25804E0E8);
  sub_2580141BC(&qword_27F915A40, sub_257FF779C, MEMORY[0x277D84F40]);
  sub_258049D50();

  *(v1 + 16) = 0;
  __swift_project_boxed_opaque_existential_1((v2 + 24), *(v2 + 48));
  swift_getKeyPath();
  sub_25801393C();
  sub_258049D50();

  sub_258049AA0();
  *(v1 + 16) = 0;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v1 + 24));
  sub_257FDAA0C(a1, v1 + 24);
  swift_endAccess();
  return v1;
}

uint64_t sub_258008230(uint64_t *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 3);
  v3 = *a1;
  v4 = sub_258049AB0();
  (*(*(v4 - 8) + 8))(&v1[v3], v4);
  v5 = *(*v1 + 48);
  v6 = *(*v1 + 52);

  return MEMORY[0x2821FE8D8](v1, v5, v6);
}

uint64_t sub_2580082FC(uint64_t a1)
{
  result = sub_258049AB0();
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

void (*sub_258008474(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 128) = v1;
  swift_beginAccess();
  sub_257FDA854(v1 + 24, v4);
  return sub_258008504;
}

void (*sub_258008668(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 128) = v1;
  swift_beginAccess();
  sub_257FDA854(v1 + 24, v4);
  return sub_258008504;
}

void sub_2580086F8(uint64_t *a1, char a2, void (*a3)(void *, uint64_t))
{
  v4 = *a1;
  v5 = *(*a1 + 128);
  if (a2)
  {
    sub_257FDA854(*a1, (v4 + 5));
    swift_beginAccess();
    __swift_destroy_boxed_opaque_existential_1((v5 + 24));
    a3(v4 + 5, v5 + 24);
    swift_endAccess();
    __swift_destroy_boxed_opaque_existential_1(v4);
  }

  else
  {
    swift_beginAccess();
    __swift_destroy_boxed_opaque_existential_1((v5 + 24));
    a3(v4, v5 + 24);
    swift_endAccess();
  }

  free(v4);
}

void (*sub_2580088D0(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 128) = v1;
  swift_beginAccess();
  sub_257FDA854(v1 + 24, v4);
  return sub_258008504;
}

void (*sub_258008A64(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 128) = v1;
  swift_beginAccess();
  sub_257FDA854(v1 + 24, v4);
  return sub_258008504;
}

void (*sub_258008BF8(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 128) = v1;
  swift_beginAccess();
  sub_257FDA854(v1 + 24, v4);
  return sub_258008504;
}

uint64_t sub_258008D8C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v6 = swift_allocObject();
  a4(a1);
  return v6;
}

void (*sub_258008DDC(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 128) = v1;
  swift_beginAccess();
  sub_257FDA854(v1 + 24, v4);
  return sub_258008504;
}

uint64_t sub_258008E70(uint64_t a1, uint64_t a2)
{
  sub_25804A600();
  sub_25804A0E0();
  return sub_25804A620();
}

uint64_t sub_258008F48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_25804A600();
  sub_25804A0E0();
  return sub_25804A620();
}

void (*sub_258009048(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 128) = v1;
  swift_beginAccess();
  sub_257FDA854(v1 + 24, v4);
  return sub_258008504;
}

uint64_t sub_25800923C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(uint64_t))
{
  (a4)(0, a2, a3);
  v7 = swift_allocObject();
  a5(a1);
  return v7;
}

uint64_t sub_258009298(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v4 + 24));
  a4(a1, v4 + 24);
  return swift_endAccess();
}

void (*sub_258009300(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 128) = v1;
  swift_beginAccess();
  sub_257FDA854(v1 + 24, v4);
  return sub_258008504;
}

uint64_t sub_258009410(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  sub_25804A600();
  a3(0);
  sub_258009670(a4, a5, a6);
  sub_258049ED0();
  return sub_25804A620();
}

uint64_t sub_25800950C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_25804A600();
  swift_getWitnessTable();
  sub_258049ED0();
  return sub_25804A620();
}

uint64_t sub_2580095B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  (a3)(0, a2);
  sub_258009670(a4, a5, a6);
  return sub_258049E90();
}

uint64_t sub_258009670(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_258009E98(uint64_t a1)
{
  result = sub_258009670(&qword_27F9158E8, type metadata accessor for ExtensionCodeIdentityRecord, &unk_25804D630);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_258009EF0(uint64_t a1)
{
  result = sub_258009670(&qword_27F915900, type metadata accessor for AppCodeIdentityRecord, &unk_25804D674);
  *(a1 + 8) = result;
  return result;
}

char *sub_25800A2A8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915A78, &unk_25804E110);
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

void *sub_25800A3B4(void *result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9159A8, &qword_25804D8F0);
  v10 = *(sub_25804A030() - 8);
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
  v15 = *(sub_25804A030() - 8);
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

uint64_t sub_25800A58C(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_25804A480();
LABEL_9:
  result = sub_25804A3D0();
  *v2 = result;
  return result;
}

uint64_t sub_25800A62C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_25804A480();
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
      result = sub_25804A480();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_257FECB0C(&qword_27F915A80, &qword_27F9152B8, &qword_25804B490, MEMORY[0x277D83988]);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9152B8, &qword_25804B490);
            v9 = sub_2580362C4(v13, i, a3);
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
        type metadata accessor for CredentialRecord(0);
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

uint64_t sub_25800A7D0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_25804A480();
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
      result = sub_25804A480();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_257FECB0C(&qword_27F915A88, &qword_27F9152A0, &qword_25804B460, MEMORY[0x277D83988]);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9152A0, &qword_25804B460);
            v9 = sub_258036344(v13, i, a3);
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
        type metadata accessor for DataRecord(0);
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

uint64_t sub_25800A974(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_25804A480();
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
      result = sub_25804A480();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_257FECB0C(&qword_27F915A98, &qword_27F9152D0, &qword_25804B4C0, MEMORY[0x277D83988]);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9152D0, &qword_25804B4C0);
            v9 = sub_2580362C4(v13, i, a3);
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
        type metadata accessor for ExtensionRecord(0);
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

uint64_t sub_25800AB18(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_258009670(&qword_27F915270, type metadata accessor for DataAssetRecord, &unk_25804D39C);
  sub_258049A90();

  swift_getKeyPath();
  sub_258009670(&qword_27F915278, type metadata accessor for DataAssetRecord, &unk_25804D430);
  sub_258049F00();

  swift_getKeyPath();
  sub_258049A90();

  swift_getKeyPath();
  sub_258049F00();

  if (a1 == a2)
  {
    v3 = 1;
  }

  else
  {
    v3 = sub_25804A560();
  }

  return v3 & 1;
}