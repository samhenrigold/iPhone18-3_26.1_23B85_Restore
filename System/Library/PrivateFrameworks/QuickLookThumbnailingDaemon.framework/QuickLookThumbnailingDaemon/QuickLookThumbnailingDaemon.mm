id _log()
{
  v0 = MEMORY[0x277CDAB78];
  v1 = *(MEMORY[0x277CDAB78] + 56);
  if (!v1)
  {
    QLTInitLogging();
    v1 = *(v0 + 56);
  }

  return v1;
}

id _log_0()
{
  v0 = MEMORY[0x277CDAB78];
  v1 = *(MEMORY[0x277CDAB78] + 8);
  if (!v1)
  {
    QLTInitLogging();
    v1 = *(v0 + 8);
  }

  return v1;
}

id _log_1()
{
  v0 = MEMORY[0x277CDAB78];
  v1 = *(MEMORY[0x277CDAB78] + 72);
  if (!v1)
  {
    QLTInitLogging();
    v1 = *(v0 + 72);
  }

  return v1;
}

id _log_2()
{
  v0 = MEMORY[0x277CDAB78];
  v1 = *MEMORY[0x277CDAB78];
  if (!*MEMORY[0x277CDAB78])
  {
    QLTInitLogging();
    v1 = *v0;
  }

  return v1;
}

id _log_3()
{
  v0 = MEMORY[0x277CDAB78];
  v1 = *(MEMORY[0x277CDAB78] + 24);
  if (!v1)
  {
    QLTInitLogging();
    v1 = *(v0 + 24);
  }

  return v1;
}

id _log_4()
{
  v0 = MEMORY[0x277CDAB78];
  v1 = *(MEMORY[0x277CDAB78] + 128);
  if (!v1)
  {
    QLTInitLogging();
    v1 = *(v0 + 128);
  }

  return v1;
}

id _log_5()
{
  v0 = MEMORY[0x277CDAB78];
  v1 = *(MEMORY[0x277CDAB78] + 40);
  if (!v1)
  {
    QLTInitLogging();
    v1 = *(v0 + 40);
  }

  return v1;
}

id _log_6()
{
  v0 = MEMORY[0x277CDAB78];
  v1 = *(MEMORY[0x277CDAB78] + 176);
  if (!v1)
  {
    QLTInitLogging();
    v1 = *(v0 + 176);
  }

  return v1;
}

id _log_7()
{
  v0 = MEMORY[0x277CDAB78];
  v1 = *(MEMORY[0x277CDAB78] + 64);
  if (!v1)
  {
    QLTInitLogging();
    v1 = *(v0 + 64);
  }

  return v1;
}

id _log_8()
{
  v0 = MEMORY[0x277CDAB78];
  v1 = *(MEMORY[0x277CDAB78] + 48);
  if (!v1)
  {
    QLTInitLogging();
    v1 = *(v0 + 48);
  }

  return v1;
}

id _log_9()
{
  v0 = MEMORY[0x277CDAB78];
  v1 = *(MEMORY[0x277CDAB78] + 168);
  if (!v1)
  {
    QLTInitLogging();
    v1 = *(v0 + 168);
  }

  return v1;
}

id _dbLog()
{
  v0 = MEMORY[0x277CDAB78];
  v1 = *(MEMORY[0x277CDAB78] + 88);
  if (!v1)
  {
    QLTInitLogging();
    v1 = *(v0 + 88);
  }

  return v1;
}

uint64_t sub_2615D5EE4(void *a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = type metadata accessor for ThumbnailExtensionMonitor.Predicate(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_26162B4FC();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v23 - v14;
  v16 = [a1 contentType];
  if (!v16)
  {
    return 0;
  }

  v24 = ObjectType;
  v17 = v16;
  sub_26162B47C();

  (*(v10 + 32))(v15, v13, v9);
  (*(v10 + 16))(v8, v15, v9);
  v18 = [a1 shouldUseRestrictedExtension];
  v8[*(v6 + 20)] = v18;
  *&v8[*(v6 + 24)] = a2;
  MEMORY[0x28223BE20](v18);
  *(&v23 - 4) = v2;
  *(&v23 - 3) = v8;
  *(&v23 - 2) = v24;
  v20 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEB52C0, &qword_261630EB0);
  sub_26162BA6C();

  (*(v10 + 8))(v15, v9);
  v21 = v25;
  sub_2615D69B0(v8);
  return v21;
}

uint64_t sub_2615D6168(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2615D61A0(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v45 = a3;
  v44 = type metadata accessor for ThumbnailExtensionMonitor.Predicate(0);
  MEMORY[0x28223BE20](v44);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEB5358, &qword_261631110);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v42 - v8;
  v10 = sub_26162B3BC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR___QLThumbnailExtensionMonitor_matchingExtensionsCache;
  swift_beginAccess();
  v15 = *(a1 + v14);
  if (*(v15 + 16))
  {

    v16 = sub_2615D66A8(a2);
    if (v17)
    {
      (*(v11 + 16))(v13, *(v15 + 56) + *(v11 + 72) * v16, v10);

      v18 = OBJC_IVAR___QLThumbnailExtensionMonitor_extensionByIdentifier;
      swift_beginAccess();
      v19 = *(a1 + v18);
      if (*(v19 + 16))
      {

        v20 = sub_2615D6A0C(v13);
        if (v21)
        {
          v22 = *(v11 + 8);
          v23 = *(*(v19 + 56) + 8 * v20);
          v22(v13, v10);

          goto LABEL_23;
        }
      }

      swift_beginAccess();
      sub_26161DF7C(a2, v9);
      sub_261620814(v9, &unk_27FEB5358, &qword_261631110);
      swift_endAccess();
      (*(v11 + 8))(v13, v10);
    }

    else
    {
    }
  }

  v24 = sub_2615DB130(a2);
  v27 = v26;
  if (v24)
  {
    v28 = v24;

    v23 = sub_26161C7C0(a2, v28);
  }

  else
  {
    v43 = v25;
    if (qword_2813686F8 != -1)
    {
      swift_once();
    }

    v29 = sub_26162B54C();
    __swift_project_value_buffer(v29, qword_281368AD0);
    sub_2615D694C(a2, v6);

    v30 = sub_26162B52C();
    v31 = sub_26162BA2C();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v48 = v33;
      *v32 = 136315394;
      v34 = sub_26162B43C();
      if (v6[*(v44 + 20)])
      {
        v36 = 0x6369727473657228;
      }

      else
      {
        v36 = 0;
      }

      if (v6[*(v44 + 20)])
      {
        v37 = 0xEC00000029646574;
      }

      else
      {
        v37 = 0xE000000000000000;
      }

      v46 = v34;
      v47 = v35;

      MEMORY[0x266706AF0](v36, v37);

      v38 = v46;
      v39 = v47;
      sub_2615D69B0(v6);
      v40 = sub_2615DD1E8(v38, v39, &v48);

      *(v32 + 4) = v40;
      *(v32 + 12) = 2080;
      v41 = sub_2615DD1E8(v43, v27, &v48);

      *(v32 + 14) = v41;
      _os_log_impl(&dword_2615D3000, v30, v31, "No extension found for %s, reason: %s", v32, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2667082C0](v33, -1, -1);
      MEMORY[0x2667082C0](v32, -1, -1);
    }

    else
    {

      sub_2615D69B0(v6);
    }

    v23 = 0;
  }

LABEL_23:
  *v45 = v23;
}

unint64_t sub_2615D66A8(uint64_t a1)
{
  sub_26162BCEC();
  sub_26162B4FC();
  sub_2615D6788(&qword_281368730, MEMORY[0x277D85578], MEMORY[0x277D85588]);
  sub_26162B87C();
  v2 = type metadata accessor for ThumbnailExtensionMonitor.Predicate(0);
  sub_26162BD0C();
  MEMORY[0x266706EF0](*(a1 + *(v2 + 24)));
  v3 = sub_26162BD1C();

  return sub_2615D67D0(a1, v3);
}

uint64_t sub_2615D6788(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2615D67D0(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for ThumbnailExtensionMonitor.Predicate(0);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = *(v6 + 72);
    do
    {
      sub_2615D694C(*(v2 + 48) + v12 * v10, v8);
      if ((sub_26162B46C() & 1) != 0 && v8[*(v5 + 20)] == *(a1 + *(v5 + 20)))
      {
        v13 = *&v8[*(v5 + 24)];
        sub_2615D69B0(v8);
        if (v13 == *(a1 + *(v5 + 24)))
        {
          return v10;
        }
      }

      else
      {
        sub_2615D69B0(v8);
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

uint64_t sub_2615D694C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ThumbnailExtensionMonitor.Predicate(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2615D69B0(uint64_t a1)
{
  v2 = type metadata accessor for ThumbnailExtensionMonitor.Predicate(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2615D6A0C(uint64_t a1)
{
  sub_26162B3BC();
  v2 = MEMORY[0x277CC95F0];
  sub_2615D6788(&qword_281368740, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v3 = sub_26162B86C();
  return sub_2615D6AE0(a1, v3, MEMORY[0x277CC95F0], &qword_281368738, v2, MEMORY[0x277CC9610]);
}

unint64_t sub_2615D6AE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v24 = a5;
  v25 = a6;
  v23 = a4;
  v21[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v21 - v10;
  v22 = v6;
  v12 = -1 << *(v6 + 32);
  v13 = a2 & ~v12;
  v21[0] = v6 + 64;
  if ((*(v6 + 64 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    v17 = *(v9 + 16);
    v16 = v9 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    do
    {
      v15(v11, *(v22 + 48) + v18 * v13, v8);
      sub_2615D6788(v23, v24, v25);
      v19 = sub_26162B88C();
      (*(v16 - 8))(v11, v8);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
    }

    while (((*(v21[0] + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
  }

  return v13;
}

id sub_2615D6C8C(uint64_t a1, uint64_t a2, void *a3)
{

  v3 = sub_26162B89C();

  return v3;
}

void sub_2615D84E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, os_activity_scope_state_s state, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  os_activity_scope_leave(&state);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2615D8E48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, ...)
{
  va_start(va, a34);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_2615DB130(uint64_t a1)
{
  v2 = v1;
  v4 = sub_26162B4FC();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v78 - v9;
  v11 = sub_26162B82C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = (&v78 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(v2 + OBJC_IVAR___QLThumbnailExtensionMonitor_queue);
  *v14 = v15;
  (*(v12 + 104))(v14, *MEMORY[0x277D85200], v11);
  v16 = v15;
  v17 = sub_26162B83C();
  v19 = *(v12 + 8);
  v18 = v12 + 8;
  v19(v14, v11);
  if (v17)
  {
    (*(v5 + 16))(v10, a1, v4);
    v20 = type metadata accessor for ThumbnailExtensionMonitor.Predicate(0);
    v82 = *(a1 + *(v20 + 24));
    v21 = OBJC_IVAR___QLThumbnailExtensionMonitor_identitiesByType;
    swift_beginAccess();
    v22 = *(v2 + v21);
    v23 = *(v22 + 16);
    v88 = v10;
    v81 = v2;
    if (v23)
    {

      v24 = sub_2615DBA84(v10);
      if (v25)
      {
        v17 = *(*(v22 + 56) + 8 * v24);
      }

      else
      {
        v17 = 0;
      }
    }

    else
    {
      v17 = 0;
    }

    v84 = swift_allocObject();
    *(v84 + 16) = 1;
    v85 = swift_allocObject();
    *(v85 + 16) = 1;
    v86 = swift_allocObject();
    *(v86 + 16) = 1;
    sub_26162B4AC();
    v26 = sub_26162B4DC();
    v28 = *(v5 + 8);
    v27 = v5 + 8;
    v29 = v8;
    v30 = v28;
    v28(v29, v4);
    if (v26)
    {
      v31 = v4;

      v32 = 0;
      v33 = v88;
LABEL_70:
      v30(v33, v31);
      goto LABEL_71;
    }

    v34 = *(a1 + *(v20 + 20));
    v87 = v27;
    if (v34 != 1 || !v17)
    {
LABEL_30:
      v18 = v82;
      if (v82 != 1)
      {
        v46 = objc_opt_self();
        v47 = sub_26162B45C();
        LODWORD(v46) = [v46 contentTypeIsIWorkType_];

        if (v46)
        {
          if (v17)
          {
            v48 = v17 & 0xFFFFFFFFFFFFFF8;
            v79 = v30;
            v80 = v4;
            if (v17 >> 62)
            {
              v49 = sub_26162BBEC();
            }

            else
            {
              v49 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            if (v49)
            {
              v50 = 0;
              v51 = v17 & 0xC000000000000001;
              v52 = &unk_279ADE000;
              v78 = v17;
              do
              {
                if (v51)
                {
                  v53 = MEMORY[0x266706D50](v50, v17);
                  v18 = v50 + 1;
                  if (__OFADD__(v50, 1))
                  {
                    goto LABEL_48;
                  }
                }

                else
                {
                  if (v50 >= *(v48 + 16))
                  {
                    goto LABEL_73;
                  }

                  v53 = *(v17 + 8 * v50 + 32);
                  v18 = v50 + 1;
                  if (__OFADD__(v50, 1))
                  {
LABEL_48:
                    __break(1u);
                    break;
                  }
                }

                v32 = v53;
                v54 = [v32 v52[136]];
                if (v54 && (v55 = v54, v56 = [v54 bundleIdentifier], v55, v56))
                {
                  v57 = sub_26162B8CC();
                  v58 = v51;
                  v59 = v49;
                  v60 = v48;
                  v61 = v52;
                  v63 = v62;

                  v64 = sub_261618D44(0x6C7070612E6D6F63, 0xEA00000000002E65, v57, v63);
                  v52 = v61;
                  v48 = v60;
                  v49 = v59;
                  v51 = v58;
                  v17 = v78;

                  if (v64)
                  {
                    swift_bridgeObjectRelease_n();
                    goto LABEL_65;
                  }
                }

                else
                {
                }

                ++v50;
              }

              while (v18 != v49);
            }

            v30 = v79;
            v4 = v80;
            v18 = v82;
          }
        }
      }

      v31 = v4;
      v65 = objc_opt_self();
      v66 = sub_26162B45C();
      v67 = [v65 contentTypeIsInternallyClaimed_];

      if (v67)
      {
        v32 = sub_2615DBFD8(v84, v17);

        if (v32)
        {
          v33 = v88;
        }

        else
        {
          v74 = v88;
          v32 = sub_2615DBF54(v86, v81, v88);
          v33 = v74;
        }

        goto LABEL_70;
      }

      v68 = v84;
      if (v18 == 1)
      {
        v69 = sub_2615DBFD8(v84, v17);
        if (v69)
        {
          v32 = v69;
LABEL_62:

          v33 = v88;
          goto LABEL_70;
        }
      }

      else
      {
        v70 = sub_26162B45C();
        v71 = [v65 externalGeneratorPreferredForType_];

        v72 = v85;
        if (v71)
        {
          v73 = sub_26161C62C(v85, v17);
          if (v73)
          {
            v32 = v73;

            v33 = v88;
            goto LABEL_70;
          }
        }

        v75 = sub_2615DBFD8(v68, v17);
        if (v75)
        {
          v32 = v75;
          goto LABEL_62;
        }

        v32 = sub_26161C62C(v72, v17);

        if (v32)
        {
          v33 = v88;
          goto LABEL_70;
        }
      }

      v76 = v88;
      v32 = sub_2615DBF54(v86, v81, v88);
      v33 = v76;
      goto LABEL_70;
    }

    v18 = v17 & 0xFFFFFFFFFFFFFF8;
    v79 = v30;
    v80 = v4;
    if (!(v17 >> 62))
    {
      v35 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_14;
    }
  }

  else
  {
LABEL_74:
    __break(1u);
  }

  v35 = sub_26162BBEC();
LABEL_14:

  if (!v35)
  {
LABEL_29:

    v30 = v79;
    v4 = v80;
    goto LABEL_30;
  }

  v36 = 0;
  v83 = v17 & 0xC000000000000001;
  while (1)
  {
    if (v83)
    {
      v37 = MEMORY[0x266706D50](v36, v17);
      v38 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }
    }

    else
    {
      if (v36 >= *(v18 + 16))
      {
        __break(1u);
LABEL_73:
        __break(1u);
        goto LABEL_74;
      }

      v37 = *(v17 + 8 * v36 + 32);
      v38 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        goto LABEL_28;
      }
    }

    v32 = v37;
    v39 = [v32 extensionPointIdentifier];
    v40 = sub_26162B8CC();
    v42 = v41;

    if (v40 == sub_26162B8CC() && v42 == v43)
    {
      break;
    }

    v45 = sub_26162BC7C();

    if (v45)
    {
      goto LABEL_64;
    }

    ++v36;
    if (v38 == v35)
    {
      goto LABEL_29;
    }
  }

  swift_bridgeObjectRelease_n();

LABEL_64:

LABEL_65:
  v79(v88, v80);
LABEL_71:

  return v32;
}

uint64_t sub_2615DBA44()
{
  v1 = *(v0 + 16);
  if (v1 != 1)
  {
  }

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

unint64_t sub_2615DBA84(uint64_t a1)
{
  sub_26162B4FC();
  v2 = MEMORY[0x277D85578];
  sub_2615D6788(&qword_281368730, MEMORY[0x277D85578], MEMORY[0x277D85588]);
  v3 = sub_26162B86C();
  return sub_2615D6AE0(a1, v3, MEMORY[0x277D85578], &unk_281368720, v2, MEMORY[0x277D85590]);
}

id sub_2615DBB58(uint64_t a1, uint64_t a2)
{
  v42 = sub_26162B4FC();
  v4 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v41 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR___QLThumbnailExtensionMonitor_identitiesByType;
  swift_beginAccess();
  v37 = v6;
  v38 = a1;
  v7 = *(a1 + v6);
  v8 = *(v7 + 16);
  v39 = v4;
  if (v8)
  {
    v9 = sub_2615DC17C(v8, 0);
    v10 = sub_2615DC278(&v44, &v9[(*(v4 + 80) + 32) & ~*(v4 + 80)], v8, v7);
    v11 = v44;
    swift_bridgeObjectRetain_n();
    sub_2615DC520(v11);
    if (v10 != v8)
    {
      goto LABEL_35;
    }

    v4 = v39;
  }

  else
  {

    v9 = MEMORY[0x277D84F90];
  }

  v44 = v9;
  sub_2615DC528(&v44);

  v12 = v44;
  v13 = v44[2];
  if (!v13)
  {
LABEL_30:

    return 0;
  }

  v14 = 0;
  v15 = v44 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v43 = v4 + 16;
  v16 = (v4 + 8);
  v8 = v41;
  v17 = v42;
  v35 = (v4 + 8);
  v36 = v44;
  v33 = v13;
  v34 = a2;
  v32 = v15;
  while (1)
  {
    if (v14 >= *(v12 + 16))
    {
      goto LABEL_34;
    }

    (*(v4 + 16))(v8, &v15[*(v4 + 72) * v14], v17);
    if ((sub_26162B4DC() & 1) == 0)
    {
      goto LABEL_8;
    }

    v18 = *(v38 + v37);
    v19 = *(v18 + 16);

    if (v19 && (v20 = sub_2615DBA84(v8), (v21 & 1) != 0))
    {
      v22 = *(*(v18 + 56) + 8 * v20);
    }

    else
    {
      v22 = MEMORY[0x277D84F90];
    }

    v40 = v14;

    if (!(v22 >> 62))
    {
      v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v23)
      {
        break;
      }

      goto LABEL_7;
    }

    v23 = sub_26162BBEC();
    if (v23)
    {
      break;
    }

LABEL_7:

    v13 = v33;
    v8 = v41;
    v17 = v42;
    v4 = v39;
    v14 = v40;
    v16 = v35;
    v12 = v36;
    v15 = v32;
LABEL_8:
    ++v14;
    (*v16)(v8, v17);
    if (v14 == v13)
    {
      goto LABEL_30;
    }
  }

  v24 = 0;
  while ((v22 & 0xC000000000000001) != 0)
  {
    v25 = MEMORY[0x266706D50](v24, v22);
    v8 = (v24 + 1);
    if (__OFADD__(v24, 1))
    {
      goto LABEL_32;
    }

LABEL_21:
    v26 = v25;
    v27 = [v26 bundleIdentifier];
    v28 = sub_26162B8CC();
    v30 = v29;

    LOBYTE(v27) = sub_261618D44(0x6C7070612E6D6F63, 0xEA00000000002E65, v28, v30);

    if (v27)
    {
      (*v35)(v41, v42);

      return v26;
    }

    ++v24;
    if (v8 == v23)
    {
      goto LABEL_7;
    }
  }

  if (v24 >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_33;
  }

  v25 = *(v22 + 8 * v24 + 32);
  v8 = (v24 + 1);
  if (!__OFADD__(v24, 1))
  {
    goto LABEL_21;
  }

LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);

  __break(1u);
  return result;
}

id sub_2615DBF54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (a1 + 16);
  v3 = *(a1 + 16);
  v5 = v3;
  if (v3 == 1)
  {
    v5 = sub_2615DBB58(a2, a3);
    swift_beginAccess();
    v6 = *v4;
    *v4 = v5;
    v7 = v5;
    sub_2615DC16C(v6);
  }

  sub_2615DD1A0(v3);
  return v5;
}

id sub_2615DBFD8(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 16);
  v2 = (a1 + 16);
  v3 = v4;
  if (v4 == 1)
  {
    if (a2)
    {
      if (a2 >> 62)
      {
        goto LABEL_18;
      }

      for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; v2 = v15)
      {
        v20 = v2;
        v7 = 0;
        while (1)
        {
          if ((a2 & 0xC000000000000001) != 0)
          {
            v8 = MEMORY[0x266706D50](v7, a2);
            v9 = v7 + 1;
            if (__OFADD__(v7, 1))
            {
LABEL_14:
              __break(1u);
              goto LABEL_15;
            }

            goto LABEL_9;
          }

          if (v7 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            break;
          }

          v8 = *(a2 + 8 * v7 + 32);
          v9 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
            goto LABEL_14;
          }

LABEL_9:
          v3 = v8;
          v10 = [v3 bundleIdentifier];
          v11 = sub_26162B8CC();
          v13 = v12;

          LOBYTE(v10) = sub_261618D44(0x6C7070612E6D6F63, 0xEA00000000002E65, v11, v13);

          if (v10)
          {
            goto LABEL_16;
          }

          ++v7;
          if (v9 == i)
          {
            v3 = 0;
LABEL_16:
            v2 = v20;
            goto LABEL_20;
          }
        }

        __break(1u);
LABEL_18:
        v15 = v2;
        i = sub_26162BBEC();
      }
    }

    v3 = 0;
LABEL_20:
    v16 = v2;
    swift_beginAccess();
    v17 = *v16;
    *v16 = v3;
    v18 = v3;
    sub_2615DC16C(v17);
  }

  else
  {
LABEL_15:
    v14 = v3;
  }

  return v3;
}

void sub_2615DC16C(id a1)
{
  if (a1 != 1)
  {
  }
}

void *sub_2615DC17C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEB5268, &qword_261630E80);
  v4 = *(sub_26162B4FC() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2615DC278(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v40 = sub_26162B4FC();
  v42 = *(v40 - 8);
  v8 = MEMORY[0x28223BE20](v40);
  v41 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v39 = &v33 - v11;
  v12 = a4 + 64;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 64);
  if (!a2)
  {
LABEL_19:
    v31 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v12;
    *(a1 + 16) = ~v13;
    *(a1 + 24) = v31;
    *(a1 + 32) = v15;
    return a3;
  }

  if (!a3)
  {
    v31 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = -1 << *(a4 + 32);
    v34 = a1;
    result = 0;
    v16 = 0;
    v17 = (63 - v13) >> 6;
    v35 = v42 + 32;
    v36 = v42 + 16;
    a1 = 1;
    v37 = a4 + 64;
    v38 = a3;
    v18 = v39;
    while (v15)
    {
      v44 = a2;
LABEL_15:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v43 = v16;
      v22 = a4;
      v23 = *(a4 + 48);
      v24 = v41;
      v25 = v42;
      v26 = *(v42 + 72);
      v27 = v40;
      (*(v42 + 16))(v41, v23 + v26 * (v21 | (v16 << 6)), v40);
      v28 = *(v25 + 32);
      v28(v18, v24, v27);
      v29 = v44;
      v28(v44, v18, v27);
      a3 = v38;
      if (a1 == v38)
      {
        v13 = v33;
        a1 = v34;
        a4 = v22;
        v31 = v43;
        v12 = v37;
        goto LABEL_25;
      }

      a2 = &v29[v26];
      result = a1;
      v30 = __OFADD__(a1++, 1);
      a4 = v22;
      v16 = v43;
      v12 = v37;
      if (v30)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v19;
      if (v15)
      {
        v44 = a2;
        v16 = v20;
        goto LABEL_15;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v32 = v16 + 1;
    }

    else
    {
      v32 = v17;
    }

    v31 = v32 - 1;
    a3 = result;
    v13 = v33;
    a1 = v34;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_2615DC528(uint64_t *a1)
{
  v2 = *(sub_26162B4FC() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_2616201BC(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_2615DC5D0(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_2615DC5D0(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_26162BC6C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_26162B4FC();
        v6 = sub_26162B97C();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_26162B4FC() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_2615DC6FC(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_26161F868(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_2615DC6FC(unint64_t *a1, uint64_t a2, void *a3, unint64_t a4)
{
  v6 = v4;
  v115 = a1;
  v9 = sub_26162B4FC();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v119 = &v112 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v127 = &v112 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v133 = &v112 - v16;
  result = MEMORY[0x28223BE20](v15);
  v132 = &v112 - v18;
  v19 = a3[1];
  if (v19 < 1)
  {
    v21 = MEMORY[0x277D84F90];
LABEL_95:
    v5 = *v115;
    if (!*v115)
    {
      goto LABEL_136;
    }

    a4 = v21;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a4;
    }

    else
    {
LABEL_130:
      result = sub_2616200C4(a4);
    }

    v107 = v6;
    v135 = result;
    a4 = *(result + 16);
    if (a4 >= 2)
    {
      v108 = v10;
      v10 = a3;
      a3 = v108;
      while (*v10)
      {
        v109 = *(result + 16 * a4);
        v110 = result;
        v6 = *(result + 16 * (a4 - 1) + 40);
        sub_26161FADC(*v10 + a3[9] * v109, *v10 + a3[9] * *(result + 16 * (a4 - 1) + 32), *v10 + a3[9] * v6, v5);
        if (v107)
        {
        }

        if (v6 < v109)
        {
          goto LABEL_123;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v110 = sub_2616200C4(v110);
        }

        if (a4 - 2 >= *(v110 + 2))
        {
          goto LABEL_124;
        }

        v111 = &v110[16 * a4];
        *v111 = v109;
        *(v111 + 1) = v6;
        v135 = v110;
        sub_261620038(a4 - 1);
        result = v135;
        a4 = *(v135 + 16);
        if (a4 <= 1)
        {
        }
      }

      goto LABEL_134;
    }
  }

  v20 = 0;
  v130 = (v10 + 1);
  v131 = v10 + 2;
  v129 = (v10 + 4);
  v21 = MEMORY[0x277D84F90];
  v116 = a3;
  v114 = a4;
  v134 = v9;
  while (1)
  {
    v22 = v20;
    v120 = v21;
    v117 = v20;
    if ((v20 + 1) >= v19)
    {
      v19 = (v20 + 1);
    }

    else
    {
      v113 = v6;
      v23 = *a3;
      v5 = v10[9];
      v24 = *a3 + v5 * (v20 + 1);
      v25 = v132;
      v125 = v10[2];
      v125(v132, v24, v9);
      v26 = v22;
      v27 = v133;
      sub_26162B44C();
      LODWORD(v126) = sub_26162B46C();
      v28 = v9;
      v29 = v10[1];
      v29(v27, v28);
      result = (v29)(v25, v28);
      v30 = v26 + 2;
      v128 = v5;
      v31 = v23 + v5 * (v26 + 2);
      while (v19 != v30)
      {
        v32 = v10;
        v33 = v132;
        v34 = v134;
        v125(v132, v31, v134);
        v35 = v133;
        sub_26162B44C();
        v5 = v19;
        v36 = sub_26162B46C() & 1;
        v29(v35, v34);
        v37 = v33;
        v10 = v32;
        result = (v29)(v37, v34);
        ++v30;
        v31 += v128;
        v38 = (v126 & 1) == v36;
        v19 = v5;
        if (!v38)
        {
          v19 = v30 - 1;
          break;
        }
      }

      a3 = v116;
      v22 = v117;
      v21 = v120;
      a4 = v114;
      v9 = v134;
      v6 = v113;
      if (v126)
      {
        if (v19 < v117)
        {
          goto LABEL_127;
        }

        if (v117 < v19)
        {
          v112 = v10;
          v39 = v128 * (v19 - 1);
          v40 = v19 * v128;
          v125 = v19;
          v41 = v19;
          v42 = v117;
          v43 = v117 * v128;
          do
          {
            if (v42 != --v41)
            {
              v45 = *a3;
              if (!*a3)
              {
                goto LABEL_133;
              }

              v5 = v45 + v43;
              v46 = *v129;
              (*v129)(v119, v45 + v43, v134, v21);
              if (v43 < v39 || v5 >= v45 + v40)
              {
                v44 = v134;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                v44 = v134;
                if (v43 != v39)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              result = (v46)(v45 + v39, v119, v44);
              a3 = v116;
              v22 = v117;
              v21 = v120;
            }

            ++v42;
            v39 -= v128;
            v40 -= v128;
            v43 += v128;
          }

          while (v42 < v41);
          v6 = v113;
          v10 = v112;
          a4 = v114;
          v9 = v134;
          v19 = v125;
        }
      }
    }

    v47 = a3[1];
    if (v19 < v47)
    {
      if (__OFSUB__(v19, v22))
      {
        goto LABEL_126;
      }

      if (v19 - v22 < a4)
      {
        if (__OFADD__(v22, a4))
        {
          goto LABEL_128;
        }

        if ((v22 + a4) >= v47)
        {
          v48 = a3[1];
        }

        else
        {
          v48 = (v22 + a4);
        }

        if (v48 < v22)
        {
LABEL_129:
          __break(1u);
          goto LABEL_130;
        }

        if (v19 != v48)
        {
          break;
        }
      }
    }

    v49 = v19;
    if (v19 < v22)
    {
      goto LABEL_125;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v21 = v120;
    }

    else
    {
      result = sub_2615DD09C(0, *(v120 + 2) + 1, 1, v120);
      v21 = result;
    }

    a4 = *(v21 + 2);
    v50 = *(v21 + 3);
    v5 = a4 + 1;
    if (a4 >= v50 >> 1)
    {
      result = sub_2615DD09C((v50 > 1), a4 + 1, 1, v21);
      v21 = result;
    }

    *(v21 + 2) = v5;
    v51 = &v21[16 * a4];
    *(v51 + 4) = v22;
    *(v51 + 5) = v49;
    v52 = *v115;
    if (!*v115)
    {
      goto LABEL_135;
    }

    v121 = v49;
    if (a4)
    {
      while (1)
      {
        v53 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v54 = *(v21 + 4);
          v55 = *(v21 + 5);
          v64 = __OFSUB__(v55, v54);
          v56 = v55 - v54;
          v57 = v64;
LABEL_52:
          if (v57)
          {
            goto LABEL_114;
          }

          v70 = &v21[16 * v5];
          v72 = *v70;
          v71 = *(v70 + 1);
          v73 = __OFSUB__(v71, v72);
          v74 = v71 - v72;
          v75 = v73;
          if (v73)
          {
            goto LABEL_117;
          }

          v76 = &v21[16 * v53 + 32];
          v78 = *v76;
          v77 = *(v76 + 1);
          v64 = __OFSUB__(v77, v78);
          v79 = v77 - v78;
          if (v64)
          {
            goto LABEL_120;
          }

          if (__OFADD__(v74, v79))
          {
            goto LABEL_121;
          }

          if (v74 + v79 >= v56)
          {
            if (v56 < v79)
            {
              v53 = v5 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v80 = &v21[16 * v5];
        v82 = *v80;
        v81 = *(v80 + 1);
        v64 = __OFSUB__(v81, v82);
        v74 = v81 - v82;
        v75 = v64;
LABEL_66:
        if (v75)
        {
          goto LABEL_116;
        }

        v83 = &v21[16 * v53];
        v85 = *(v83 + 4);
        v84 = *(v83 + 5);
        v64 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v64)
        {
          goto LABEL_119;
        }

        if (v86 < v74)
        {
          goto LABEL_3;
        }

LABEL_73:
        a4 = v53 - 1;
        if (v53 - 1 >= v5)
        {
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
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
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
          goto LABEL_129;
        }

        if (!*a3)
        {
          goto LABEL_132;
        }

        v91 = v21;
        v92 = *&v21[16 * a4 + 32];
        v5 = *&v21[16 * v53 + 40];
        sub_26161FADC(*a3 + v10[9] * v92, *a3 + v10[9] * *&v21[16 * v53 + 32], *a3 + v10[9] * v5, v52);
        if (v6)
        {
        }

        if (v5 < v92)
        {
          goto LABEL_110;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v91 = sub_2616200C4(v91);
        }

        if (a4 >= *(v91 + 2))
        {
          goto LABEL_111;
        }

        v93 = &v91[16 * a4];
        *(v93 + 4) = v92;
        *(v93 + 5) = v5;
        v135 = v91;
        result = sub_261620038(v53);
        v21 = v135;
        v5 = *(v135 + 16);
        v9 = v134;
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v58 = &v21[16 * v5 + 32];
      v59 = *(v58 - 64);
      v60 = *(v58 - 56);
      v64 = __OFSUB__(v60, v59);
      v61 = v60 - v59;
      if (v64)
      {
        goto LABEL_112;
      }

      v63 = *(v58 - 48);
      v62 = *(v58 - 40);
      v64 = __OFSUB__(v62, v63);
      v56 = v62 - v63;
      v57 = v64;
      if (v64)
      {
        goto LABEL_113;
      }

      v65 = &v21[16 * v5];
      v67 = *v65;
      v66 = *(v65 + 1);
      v64 = __OFSUB__(v66, v67);
      v68 = v66 - v67;
      if (v64)
      {
        goto LABEL_115;
      }

      v64 = __OFADD__(v56, v68);
      v69 = v56 + v68;
      if (v64)
      {
        goto LABEL_118;
      }

      if (v69 >= v61)
      {
        v87 = &v21[16 * v53 + 32];
        v89 = *v87;
        v88 = *(v87 + 1);
        v64 = __OFSUB__(v88, v89);
        v90 = v88 - v89;
        if (v64)
        {
          goto LABEL_122;
        }

        if (v56 < v90)
        {
          v53 = v5 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v19 = a3[1];
    v20 = v121;
    a4 = v114;
    if (v121 >= v19)
    {
      goto LABEL_95;
    }
  }

  v113 = v6;
  v94 = *a3;
  v95 = v10[9];
  v112 = v10;
  v128 = v10[2];
  v96 = v22 - v19;
  v97 = (v94 + v95 * (v19 - 1));
  a4 = -v95;
  v126 = v94;
  v118 = v95;
  v5 = v94 + v19 * v95;
  v121 = v48;
LABEL_85:
  v124 = v96;
  v125 = v19;
  v122 = v5;
  v123 = v97;
  v98 = v97;
  while (1)
  {
    v99 = v132;
    (v128)(v132, v5, v9, v21);
    v100 = v133;
    sub_26162B44C();
    v101 = sub_26162B46C();
    v102 = *v130;
    v103 = v100;
    v9 = v134;
    (*v130)(v103, v134);
    result = v102(v99, v9);
    if ((v101 & 1) == 0)
    {
LABEL_84:
      v19 = v125 + 1;
      v96 = v124 - 1;
      v97 = &v123[v118];
      v5 = v122 + v118;
      v49 = v121;
      if (v125 + 1 != v121)
      {
        goto LABEL_85;
      }

      v6 = v113;
      a3 = v116;
      v22 = v117;
      v10 = v112;
      if (v121 < v117)
      {
        goto LABEL_125;
      }

      goto LABEL_33;
    }

    if (!v126)
    {
      break;
    }

    v104 = *v129;
    v105 = v127;
    (*v129)(v127, v5, v9);
    swift_arrayInitWithTakeFrontToBack();
    v104(v98, v105, v9);
    v98 += a4;
    v5 += a4;
    if (__CFADD__(v96++, 1))
    {
      goto LABEL_84;
    }
  }

  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
  return result;
}

char *sub_2615DD09C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEB5380, &unk_261631128);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

id sub_2615DD1A0(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_2615DD1E8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2615DD4A4(v11, 0, 0, 1, a1, a2);
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
    sub_2615DD69C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

void *sub_2615DD2B4(uint64_t a1, unint64_t a2)
{
  v3 = sub_2615DD374(a1, a2);
  sub_2615DD5B0(&unk_2873E1FE8);
  return v3;
}

void *sub_2615DD300(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEB5240, &qword_261630E50);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

void *sub_2615DD374(uint64_t a1, unint64_t a2)
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

  v6 = sub_2615DD300(v5, 0);
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

  result = sub_26162BB6C();
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
        v10 = sub_26162B91C();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_2615DD300(v10, 0);
        result = sub_26162BB3C();
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

unint64_t sub_2615DD4A4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_2615DD2B4(a5, a6);
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
    result = sub_26162BB6C();
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

uint64_t sub_2615DD5B0(uint64_t result)
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

  result = sub_2616154C4(result, v11, 1, v3);
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

uint64_t sub_2615DD69C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
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

void *sub_2615DDBDC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_2615DDC50()
{
  _Block_release(*(v0 + 48));

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2615DDCAC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2615DDCEC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2615DDD34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26162B4FC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_2615DDE00(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_26162B4FC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_2615DDEB8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2615DDEF0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2615DDF30()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2615DDFC4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEB5480, &qword_261631338);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2615DE034(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEB5480, &qword_261631338);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2615DE09C()
{

  sub_261623634(*(v0 + 72), *(v0 + 80));

  return MEMORY[0x2821FE8E8](v0, 81, 7);
}

void sub_2615E3978(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2615E3BE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t traceSQL(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = MEMORY[0x277CDAB78];
  v5 = *(MEMORY[0x277CDAB78] + 8);
  if (a2)
  {
    if (!v5)
    {
      QLTInitLogging();
      v5 = *(v4 + 8);
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      traceSQL_cold_1(v5, a2, a3);
    }
  }

  else
  {
    if (!v5)
    {
      QLTInitLogging();
      v5 = *(v4 + 8);
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      traceSQL_cold_2();
    }
  }

  return 0;
}

void sub_2615E6F40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_2_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, va, 0xCu);
}

void OUTLINED_FUNCTION_4(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void OUTLINED_FUNCTION_5(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x12u);
}

void OUTLINED_FUNCTION_8(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

void OUTLINED_FUNCTION_0_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, va, 2u);
}

void sub_2615EABA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, ...)
{
  va_start(va, a27);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2615EB0D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, ...)
{
  va_start(va, a33);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v33 - 184), 8);
  _Block_object_dispose((v33 - 152), 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

uint64_t UIKitLibraryCore(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v1 = UIKitLibraryCore_frameworkLibrary;
  v6 = UIKitLibraryCore_frameworkLibrary;
  if (!UIKitLibraryCore_frameworkLibrary)
  {
    v7 = xmmword_279ADD388;
    v8 = *off_279ADD398;
    v9 = 0;
    v4[3] = _sl_dlopen();
    UIKitLibraryCore_frameworkLibrary = v4[3];
    v1 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v1;
}

void sub_2615EB880(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __UIKitLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  UIKitLibraryCore_frameworkLibrary = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t UIKitLibrary()
{
  v3 = 0;
  v0 = UIKitLibraryCore(&v3);
  v1 = v3;
  if (!v0)
  {
    v1 = abort_report_np("%s", v3);
    goto LABEL_5;
  }

  if (v3)
  {
LABEL_5:
    free(v1);
  }

  return v0;
}

id getUIImageClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getUIImageClass_softClass;
  v7 = getUIImageClass_softClass;
  if (!getUIImageClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getUIImageClass_block_invoke;
    v3[3] = &unk_279ADD3E0;
    v3[4] = &v4;
    __getUIImageClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_2615EBA54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getUIImageClass_block_invoke(uint64_t a1)
{
  UIKitLibrary();
  result = objc_getClass("UIImage");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getUIImageClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getUIImageClass_block_invoke_cold_1();
    return getUIGraphicsBeginImageContextWithOptionsSymbolLoc();
  }

  return result;
}

uint64_t getUIGraphicsBeginImageContextWithOptionsSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getUIGraphicsBeginImageContextWithOptionsSymbolLoc_ptr;
  v6 = getUIGraphicsBeginImageContextWithOptionsSymbolLoc_ptr;
  if (!getUIGraphicsBeginImageContextWithOptionsSymbolLoc_ptr)
  {
    v1 = UIKitLibrary();
    v4[3] = dlsym(v1, "UIGraphicsBeginImageContextWithOptions");
    getUIGraphicsBeginImageContextWithOptionsSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_2615EBB98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getUIGraphicsBeginImageContextWithOptionsSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = UIKitLibrary();
  result = dlsym(v2, "UIGraphicsBeginImageContextWithOptions");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getUIGraphicsBeginImageContextWithOptionsSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t _UIGraphicsBeginImageContextWithOptions(uint64_t a1, double a2, double a3, double a4)
{
  UIGraphicsBeginImageContextWithOptionsSymbolLoc = getUIGraphicsBeginImageContextWithOptionsSymbolLoc();
  if (UIGraphicsBeginImageContextWithOptionsSymbolLoc)
  {
    v9.n128_f64[0] = a2;
    v10.n128_f64[0] = a3;
    v11.n128_f64[0] = a4;

    return UIGraphicsBeginImageContextWithOptionsSymbolLoc(a1, v9, v10, v11);
  }

  else
  {
    _UIGraphicsBeginImageContextWithOptions_cold_1();
    return getUIGraphicsGetCurrentContextSymbolLoc();
  }
}

uint64_t getUIGraphicsGetCurrentContextSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getUIGraphicsGetCurrentContextSymbolLoc_ptr;
  v6 = getUIGraphicsGetCurrentContextSymbolLoc_ptr;
  if (!getUIGraphicsGetCurrentContextSymbolLoc_ptr)
  {
    v1 = UIKitLibrary();
    v4[3] = dlsym(v1, "UIGraphicsGetCurrentContext");
    getUIGraphicsGetCurrentContextSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_2615EBD40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getUIGraphicsGetCurrentContextSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = UIKitLibrary();
  result = dlsym(v2, "UIGraphicsGetCurrentContext");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getUIGraphicsGetCurrentContextSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t _UIGraphicsGetCurrentContext()
{
  CurrentContextSymbolLoc = getUIGraphicsGetCurrentContextSymbolLoc();
  if (CurrentContextSymbolLoc)
  {

    return CurrentContextSymbolLoc();
  }

  else
  {
    _UIGraphicsBeginImageContextWithOptions_cold_1();
    return getUIGraphicsEndImageContextSymbolLoc();
  }
}

uint64_t getUIGraphicsEndImageContextSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getUIGraphicsEndImageContextSymbolLoc_ptr;
  v6 = getUIGraphicsEndImageContextSymbolLoc_ptr;
  if (!getUIGraphicsEndImageContextSymbolLoc_ptr)
  {
    v1 = UIKitLibrary();
    v4[3] = dlsym(v1, "UIGraphicsEndImageContext");
    getUIGraphicsEndImageContextSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_2615EBEAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getUIGraphicsEndImageContextSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = UIKitLibrary();
  result = dlsym(v2, "UIGraphicsEndImageContext");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getUIGraphicsEndImageContextSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t _UIGraphicsEndImageContext()
{
  UIGraphicsEndImageContextSymbolLoc = getUIGraphicsEndImageContextSymbolLoc();
  if (UIGraphicsEndImageContextSymbolLoc)
  {

    return UIGraphicsEndImageContextSymbolLoc();
  }

  else
  {
    _UIGraphicsBeginImageContextWithOptions_cold_1();
    return getUIGraphicsPushContextSymbolLoc();
  }
}

uint64_t getUIGraphicsPushContextSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getUIGraphicsPushContextSymbolLoc_ptr;
  v6 = getUIGraphicsPushContextSymbolLoc_ptr;
  if (!getUIGraphicsPushContextSymbolLoc_ptr)
  {
    v1 = UIKitLibrary();
    v4[3] = dlsym(v1, "UIGraphicsPushContext");
    getUIGraphicsPushContextSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_2615EC018(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getUIGraphicsPushContextSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = UIKitLibrary();
  result = dlsym(v2, "UIGraphicsPushContext");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getUIGraphicsPushContextSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t _UIGraphicsPushContext(uint64_t a1)
{
  UIGraphicsPushContextSymbolLoc = getUIGraphicsPushContextSymbolLoc();
  if (UIGraphicsPushContextSymbolLoc)
  {

    return UIGraphicsPushContextSymbolLoc(a1);
  }

  else
  {
    _UIGraphicsBeginImageContextWithOptions_cold_1();
    return getUIGraphicsPopContextSymbolLoc();
  }
}

uint64_t getUIGraphicsPopContextSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getUIGraphicsPopContextSymbolLoc_ptr;
  v6 = getUIGraphicsPopContextSymbolLoc_ptr;
  if (!getUIGraphicsPopContextSymbolLoc_ptr)
  {
    v1 = UIKitLibrary();
    v4[3] = dlsym(v1, "UIGraphicsPopContext");
    getUIGraphicsPopContextSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_2615EC198(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getUIGraphicsPopContextSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = UIKitLibrary();
  result = dlsym(v2, "UIGraphicsPopContext");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getUIGraphicsPopContextSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

QLExtensionHostContextThumbnailOperation *_UIGraphicsPopContext()
{
  UIGraphicsPopContextSymbolLoc = getUIGraphicsPopContextSymbolLoc();
  if (UIGraphicsPopContextSymbolLoc)
  {

    return UIGraphicsPopContextSymbolLoc();
  }

  else
  {
    _UIGraphicsBeginImageContextWithOptions_cold_1();
    return [(QLExtensionHostContextThumbnailOperation *)v2 initWithAppex:v3 request:v4 completionHandler:v5, v6];
  }
}

void sub_2615EC6E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2615ECFC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id location)
{
  objc_destroyWeak(&a27);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

BOOL file_exists(char *a1, _BYTE *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    return 0;
  }

  if (v7 == a1)
  {
    v4 = 0;
  }

  else
  {
    v4 = __strlcpy_chk();
  }

  if (*a2)
  {
    if (*a1 != 47 || a1[1])
    {
      v4 = __strlcat_chk();
    }

    if (v4 > 0x3FF)
    {
      return 0;
    }

    v4 = __strlcat_chk();
  }

  if (v4 >= 0x400)
  {
    return 0;
  }

  memset(&v6, 0, sizeof(v6));
  return stat(v7, &v6) == 0;
}

void OUTLINED_FUNCTION_1_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0x12u);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2615F0528(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2615F0D0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, ...)
{
  va_start(va, a44);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id cancelledError(void *a1)
{
  v1 = MEMORY[0x277CDAAE0];
  v2 = [a1 request];
  v3 = [v1 errorWithCode:5 request:v2 additionalUserInfo:0];

  return v3;
}

void sub_2615F4FB8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 80));
  _Unwind_Resume(a1);
}

id generationFailedErrorWithUnderlyingError(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = objc_opt_new();
  v9 = v8;
  if (v6)
  {
    [v8 setObject:v6 forKeyedSubscript:*MEMORY[0x277CCA7E8]];
  }

  if (v7)
  {
    [v9 setObject:v7 forKeyedSubscript:*MEMORY[0x277CCA068]];
  }

  v10 = MEMORY[0x277CDAAE0];
  v11 = [v5 request];
  v12 = [v10 errorWithCode:0 request:v11 additionalUserInfo:v9];

  return v12;
}

void sub_2615F5224(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2615F7084(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, id location)
{
  objc_destroyWeak((v27 + 80));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id generationFailedError(void *a1)
{
  v1 = MEMORY[0x277CDAAE0];
  v2 = [a1 request];
  v3 = [v1 errorWithCode:0 request:v2 additionalUserInfo:0];

  return v3;
}

void OUTLINED_FUNCTION_1_2(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

_BYTE *OUTLINED_FUNCTION_0_6(_BYTE *result, _BYTE *a2)
{
  *result = 0;
  *a2 = 0;
  return result;
}

void OUTLINED_FUNCTION_3_1(void *a1, int a2, os_log_t log, const char *a4, uint8_t *a5)
{

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, a5, 2u);
}

void OUTLINED_FUNCTION_4_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 2u);
}

void OUTLINED_FUNCTION_9(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, a5, 0x16u);
}

id QLGetValidCacheLocation()
{
  if (overrideCacheLocation)
  {
    [overrideCacheLocation stringByAppendingPathComponent:*MEMORY[0x277CDAB70]];
  }

  else
  {
    QLTGetDefaultCacheLocation();
  }
  v0 = ;

  return v0;
}

void sub_2615FFE74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_261600FA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_261601254(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void OUTLINED_FUNCTION_1_3(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

void OUTLINED_FUNCTION_7_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, v8, OS_LOG_TYPE_DEBUG, a4, va, 0x20u);
}

void OUTLINED_FUNCTION_11(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, v8, OS_LOG_TYPE_DEBUG, a4, va, 0xCu);
}

void sub_2616021C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_261602AB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ql_create_tables_initial(void *a1, void *a2)
{
  v3 = a1;
  if ([v3 execute:{@"CREATE TABLE thumbnails( docid integer not null, vol_uuid blob not null, last_hit_date integer not null, last_seen_path text not null, PRIMARY KEY (docid, vol_uuid))"}])
  {
    v4 = [v3 setUserVersion:1];
    if (!a2)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v4 = 0;
    if (!a2)
    {
      goto LABEL_7;
    }
  }

  if ((v4 & 1) == 0)
  {
    *a2 = [v3 lastError];
  }

LABEL_7:

  return v4;
}

uint64_t ql_add_cache_delete(void *a1, void *a2)
{
  v3 = a1;
  if ([v3 execute:@"ALTER TABLE thumbnails ADD COLUMN size integer"] && objc_msgSend(v3, "execute:", @"CREATE INDEX thumbnail_last_hit_date ON thumbnails(last_hit_date)"))
  {
    v4 = [v3 setUserVersion:2];
    if (!a2)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v4 = 0;
    if (!a2)
    {
      goto LABEL_8;
    }
  }

  if ((v4 & 1) == 0)
  {
    *a2 = [v3 lastError];
  }

LABEL_8:

  return v4;
}

uint64_t ql_add_index_on_volume_uuid(void *a1, void *a2)
{
  v3 = a1;
  if ([v3 execute:@"CREATE INDEX thumbnail_vol_uuid ON thumbnails(vol_uuid)"])
  {
    v4 = [v3 setUserVersion:3];
    if (!a2)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v4 = 0;
    if (!a2)
    {
      goto LABEL_7;
    }
  }

  if ((v4 & 1) == 0)
  {
    *a2 = [v3 lastError];
  }

LABEL_7:

  return v4;
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_261603148(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_261603684(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_261603FF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_261604468(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2616046C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26160492C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_261604C64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_261606700(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2616068B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_261606B9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t QLCacheInDebugMode(uint64_t a1, uint64_t a2)
{
  if (QLCacheInDebugMode_onceToken != -1)
  {
    QLCacheInDebugMode_cold_1();
  }

  return QLCacheInDebugMode__cacheIsInDebugMode;
}

uint64_t __QLCacheInDebugMode_block_invoke()
{
  result = _os_feature_enabled_impl();
  QLCacheInDebugMode__cacheIsInDebugMode = result;
  return result;
}

__CFString *stringForCacheMode(unint64_t a1)
{
  if (a1 > 5)
  {
    return @"unknown mode";
  }

  else
  {
    return off_279ADDEF0[a1];
  }
}

void sub_261609148(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_261609934(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_261609B5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26160A2D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26160AB10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26160E808(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id location)
{
  objc_destroyWeak((v30 + 72));
  objc_destroyWeak((v31 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t sub_261610180(uint64_t a1)
{
  v2 = sub_261610B2C(&qword_27FEB5188, type metadata accessor for QLThumbnailError, &unk_261630A20);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_2616101EC(uint64_t a1)
{
  v2 = sub_261610B2C(&qword_27FEB5188, type metadata accessor for QLThumbnailError, &unk_261630A20);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_26161025C(uint64_t a1)
{
  v2 = sub_261610B2C(&qword_27FEB51C0, type metadata accessor for QLThumbnailError, &unk_261630A64);

  return MEMORY[0x28211CA68](a1, v2);
}

uint64_t sub_2616102D0()
{
  v0 = sub_26162B8CC();
  v1 = MEMORY[0x266706B20](v0);

  return v1;
}

uint64_t sub_26161030C(uint64_t a1)
{
  sub_26162B8CC();
  sub_26162B8EC();
}

uint64_t sub_261610360(uint64_t a1)
{
  sub_26162B8CC();
  sub_26162BCEC();
  sub_26162B8EC();
  v1 = sub_26162BD1C();

  return v1;
}

uint64_t sub_2616103D4(uint64_t a1, id *a2)
{
  result = sub_26162B8AC();
  *a2 = 0;
  return result;
}

uint64_t sub_26161044C(uint64_t a1, id *a2)
{
  v3 = sub_26162B8BC();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_2616104CC@<X0>(uint64_t *a2@<X8>)
{
  sub_26162B8CC();
  v3 = sub_26162B89C();

  *a2 = v3;
  return result;
}

uint64_t sub_261610524()
{
  v1 = *v0;
  sub_26162BCEC();
  MEMORY[0x266706EF0](v1);
  return sub_26162BD1C();
}

uint64_t sub_261610598(uint64_t a1)
{
  v2 = *v1;
  sub_26162BCEC();
  MEMORY[0x266706EF0](v2);
  return sub_26162BD1C();
}

uint64_t sub_2616105EC(uint64_t a1)
{
  v2 = sub_261610B2C(&qword_27FEB51C0, type metadata accessor for QLThumbnailError, &unk_261630A64);

  return MEMORY[0x28211CAD0](a1, v2);
}

uint64_t sub_261610658(uint64_t a1)
{
  v2 = sub_261610B2C(&qword_27FEB51C0, type metadata accessor for QLThumbnailError, &unk_261630A64);

  return MEMORY[0x28211CA88](a1, v2);
}

uint64_t sub_2616106C4(void *a1, uint64_t a2)
{
  v4 = sub_261610B2C(&qword_27FEB51C0, type metadata accessor for QLThumbnailError, &unk_261630A64);
  v5 = a1;

  return MEMORY[0x28211CA70](v5, a2, v4);
}

uint64_t sub_261610778(uint64_t a1, uint64_t a2)
{
  v4 = sub_261610B2C(&qword_27FEB51C0, type metadata accessor for QLThumbnailError, &unk_261630A64);

  return MEMORY[0x28211CAB8](a1, a2, v4);
}

uint64_t sub_2616107F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_26162BCEC();
  sub_26162B87C();
  return sub_26162BD1C();
}

uint64_t sub_261610854(void *a1, uint64_t *a2)
{
  v2 = sub_26162B8CC();
  v4 = v3;
  if (v2 == sub_26162B8CC() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_26162BC7C();
  }

  return v7 & 1;
}

uint64_t sub_2616108E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_261610B2C(&qword_27FEB51C0, type metadata accessor for QLThumbnailError, &unk_261630A64);

  return MEMORY[0x28211CA98](a1, a2, a3, v6);
}

uint64_t sub_26161096C@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_26162B89C();

  *a2 = v3;
  return result;
}

uint64_t sub_2616109B4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26162B8CC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2616109E0(uint64_t a1)
{
  v2 = sub_261610B2C(&unk_2813685F8, type metadata accessor for QLFileThumbnailRequestOptions, &unk_261630828);
  v3 = sub_261610B2C(&qword_27FEB5160, type metadata accessor for QLFileThumbnailRequestOptions, &unk_2616306B4);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_261610B2C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_261610C3C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_261610C5C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

unint64_t sub_261610E60()
{
  result = qword_27FEB51B0;
  if (!qword_27FEB51B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEB51B0);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_261610F64(uint64_t a1, int a2)
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

uint64_t sub_261610F84(uint64_t result, int a2, int a3)
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

void sub_261610FC0(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_261611020()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEB5268, &qword_261630E80);
  sub_26162B4FC();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_261630C50;
  sub_26162B4CC();
  sub_26162B48C();
  sub_26162B4EC();
  sub_26162B49C();
  sub_26162B4BC();
  v1 = sub_261617528(v0);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_27FEB63F0 = v1;
  return result;
}

uint64_t sub_261611158()
{
  v0 = sub_26162B54C();
  __swift_allocate_value_buffer(v0, qword_281368A80);
  __swift_project_value_buffer(v0, qword_281368A80);
  return sub_26162B53C();
}

uint64_t sub_2616111D8()
{
  v0 = sub_26162BA4C();
  MEMORY[0x28223BE20](v0);
  v1 = sub_26162B81C();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = sub_26162BA5C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_261618454(0, &qword_281368610, 0x277D85C78);
  (*(v3 + 104))(v5, *MEMORY[0x277D85268], v2);
  sub_26162B80C();
  v7[1] = MEMORY[0x277D84F90];
  sub_2616185B0(&qword_281368618, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEB5290, &qword_261630E60);
  sub_26161849C();
  sub_26162BACC();
  result = sub_26162BA8C();
  qword_27FEB63F8 = result;
  return result;
}

uint64_t sub_26161142C()
{
  v1 = *v0;
  sub_26162BCEC();
  MEMORY[0x266706EF0](v1);
  return sub_26162BD1C();
}

uint64_t sub_2616114A0(uint64_t a1)
{
  v2 = *v1;
  sub_26162BCEC();
  MEMORY[0x266706EF0](v2);
  return sub_26162BD1C();
}

uint64_t sub_2616114E4()
{
  v0 = qword_27FEB51E0;

  return v0;
}

uint64_t sub_261611524(uint64_t a1)
{
  v2 = sub_261617ED4();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_261611560(uint64_t a1)
{
  v2 = sub_261617ED4();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_2616115A0(uint64_t a1, uint64_t a2, int a3, char a4, uint64_t a5)
{
  *(v6 + 704) = v5;
  *(v6 + 696) = a5;
  *(v6 + 916) = a4;
  *(v6 + 912) = a3;
  *(v6 + 688) = a2;
  *(v6 + 680) = a1;
  v7 = sub_26162B4FC();
  *(v6 + 712) = v7;
  *(v6 + 720) = *(v7 - 8);
  *(v6 + 728) = swift_task_alloc();
  *(v6 + 736) = swift_task_alloc();
  *(v6 + 744) = swift_task_alloc();
  *(v6 + 752) = swift_task_alloc();
  *(v6 + 760) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2616116A4, 0, 0);
}

uint64_t sub_2616116A4()
{
  v30 = v0;
  v1 = *(v0 + 688);
  v2 = [*(v0 + 680) request];
  *(v0 + 768) = v2;
  v3 = [v1 contentType];
  if (v3)
  {
    v4 = v3;
    sub_26162B47C();

    if (qword_281368790 != -1)
    {
      swift_once();
    }

    v5 = *(v0 + 760);
    swift_beginAccess();
    v6 = qword_2813686F0;
    v7 = sub_26161B140(v5, [v2 shouldUseRestrictedExtension], 3);
    *(v0 + 776) = v7;

    if (v7)
    {
      if ((v7[OBJC_IVAR___QLThumbnailExtension_externalResourcesAccessAllowed] & 1) == 0)
      {
        [*(v0 + 688) setParentDirectoryWrapper_];
      }

      if (qword_281368650 != -1)
      {
        swift_once();
      }

      v8 = *(v0 + 688);
      v9 = sub_26162B54C();
      *(v0 + 784) = __swift_project_value_buffer(v9, qword_281368A80);
      v10 = v2;
      v11 = v8;
      v12 = v7;
      v13 = sub_26162B52C();
      v14 = sub_26162BA0C();

      if (os_log_type_enabled(v13, v14))
      {
        v15 = *(v0 + 688);
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v29[0] = v28;
        *v16 = 138413058;
        *(v16 + 4) = v15;
        *v17 = v15;
        *(v16 + 12) = 2080;
        v18 = v15;
        [v10 size];
        v19 = sub_26162BA9C();
        v21 = sub_2615DD1E8(v19, v20, v29);

        *(v16 + 14) = v21;
        *(v16 + 22) = 2048;
        v22 = [v10 badgeType];

        *(v16 + 24) = v22;
        *(v16 + 32) = 2112;
        *(v16 + 34) = v12;
        v17[1] = v7;
        v23 = v12;
        _os_log_impl(&dword_2615D3000, v13, v14, "Generating thumbnail for %@ (size %s) with badge type %lu with extension %@", v16, 0x2Au);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEB5210, &qword_261631170);
        swift_arrayDestroy();
        MEMORY[0x2667082C0](v17, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v28);
        MEMORY[0x2667082C0](v28, -1, -1);
        MEMORY[0x2667082C0](v16, -1, -1);
      }

      else
      {
      }

      v27 = *&v12[OBJC_IVAR___QLThumbnailExtension_queueLock];
      *(swift_task_alloc() + 16) = v12;
      os_unfair_lock_lock((v27 + 24));
      sub_2616149E0((v27 + 16), v29);
      os_unfair_lock_unlock((v27 + 24));
      *(v0 + 792) = v29[0];

      return MEMORY[0x2822009F8](sub_261611B4C, 0, 0);
    }

    (*(*(v0 + 720) + 8))(*(v0 + 760), *(v0 + 712));
  }

  sub_261613E58();
  swift_allocError();
  *v24 = 0;
  swift_willThrow();

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_261611B4C()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 16;
  v4 = v0 + 664;
  v5 = *(v0 + 912);
  *(v1 + 16) = v2;
  *(v1 + 56) = v4;
  *(v1 + 24) = sub_26161211C;
  v53 = v3;
  v52 = swift_continuation_init();
  v6 = MEMORY[0x277D849A8];
  if (v5)
  {
    v7 = *(v1 + 912);
    v8 = *MEMORY[0x277CDAB30];
    *(v1 + 280) = MEMORY[0x277D849A8];
    *(v1 + 256) = v7;
    sub_2616149FC((v1 + 256), (v1 + 288));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_2616164C4((v1 + 288), v8, isUniquelyReferenced_nonNull_native);
  }

  v10 = MEMORY[0x277D839B0];
  if (*(v1 + 916) == 1)
  {
    v11 = *MEMORY[0x277CDAB50];
    *(v1 + 600) = MEMORY[0x277D839B0];
    *(v1 + 576) = 1;
    sub_2616149FC((v1 + 576), (v1 + 608));
    v12 = swift_isUniquelyReferenced_nonNull_native();
    sub_2616164C4((v1 + 608), v11, v12);
  }

  if ([*(v1 + 768) interpolationQuality])
  {
    v13 = *MEMORY[0x277CDAB38];
    v14 = [*(v1 + 768) interpolationQuality];
    *(v1 + 344) = v6;
    *(v1 + 320) = v14;
    sub_2616149FC((v1 + 320), (v1 + 352));
    v15 = swift_isUniquelyReferenced_nonNull_native();
    sub_2616164C4((v1 + 352), v13, v15);
  }

  if ([*(v1 + 768) badgeType])
  {
    v16 = *MEMORY[0x277CDAB28];
    v17 = [*(v1 + 768) badgeType];
    *(v1 + 408) = MEMORY[0x277D83E88];
    *(v1 + 384) = v17;
    sub_2616149FC((v1 + 384), (v1 + 416));
    v18 = swift_isUniquelyReferenced_nonNull_native();
    sub_2616164C4((v1 + 416), v16, v18);
  }

  if ([*(v1 + 768) thirdPartyVideoDecodersAllowed])
  {
    v19 = *MEMORY[0x277CDAB48];
    v20 = [*(v1 + 768) thirdPartyVideoDecodersAllowed];
    *(v1 + 536) = v10;
    *(v1 + 512) = v20;
    sub_2616149FC((v1 + 512), (v1 + 544));
    v21 = swift_isUniquelyReferenced_nonNull_native();
    sub_2616164C4((v1 + 544), v19, v21);
  }

  v22 = *(v1 + 768);
  v23 = *(v1 + 696);
  v24 = *MEMORY[0x277CDAB40];
  v25 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(v1 + 472) = sub_261618454(0, &qword_2813685E0, 0x277CCABB0);
  *(v1 + 448) = v25;
  sub_2616149FC((v1 + 448), (v1 + 480));
  v26 = swift_isUniquelyReferenced_nonNull_native();
  sub_2616164C4((v1 + 480), v24, v26);
  [v22 size];
  v28 = v27;
  v30 = v29;
  [v22 minimumDimension];
  v32 = v31;
  [v22 scale];
  v34 = v33;
  if (!v23)
  {
    v35 = [*(v1 + 768) externalThumbnailGeneratorData];
    sub_26162B85C();
  }

  v50 = *(v1 + 776);
  v51 = *(v1 + 792);
  v49 = *(v1 + 704);
  v36 = *(v1 + 688);
  v37 = objc_allocWithZone(MEMORY[0x277CDAAA8]);
  type metadata accessor for QLFileThumbnailRequestOptions(0);
  sub_2616185B0(&unk_2813685F8, type metadata accessor for QLFileThumbnailRequestOptions, &unk_261630828);

  v38 = sub_26162B84C();

  v39 = sub_26162B84C();

  v40 = [v37 initWithItem:v36 maximumSize:v38 minimumSize:v39 scale:v28 options:v30 generationData:{v32, v34}];

  v41 = swift_allocObject();
  *(v41 + 16) = v52;
  v42 = objc_allocWithZone(QLExtensionHostContextThumbnailOperation);
  *(v1 + 240) = sub_261616604;
  *(v1 + 248) = v41;
  *(v1 + 208) = MEMORY[0x277D85DD0];
  *(v1 + 216) = 1107296256;
  *(v1 + 224) = sub_261614A0C;
  *(v1 + 232) = &block_descriptor;
  v43 = _Block_copy((v1 + 208));
  v44 = [v42 initWithAppex:v50 request:v40 completionHandler:v43];
  _Block_release(v43);

  v45 = OBJC_IVAR___QLThumbnailExtensionGenerator_operation;
  *(v1 + 800) = OBJC_IVAR___QLThumbnailExtensionGenerator_operation;
  v46 = *(v49 + v45);
  *(v49 + v45) = v44;
  v47 = v44;

  [v51 addOperation_];

  return MEMORY[0x282200938](v53);
}

uint64_t sub_26161211C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 808) = v2;
  if (v2)
  {
    swift_willThrow();
    v3 = sub_2616130DC;
  }

  else
  {
    *(v1 + 816) = *(v1 + 664);
    v3 = sub_261612240;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_261612240()
{
  v2 = v0;
  v3 = *(v0 + 816);
  v4 = *(v0 + 800);
  v5 = *(v0 + 704);
  v6 = *(v5 + v4);
  *(v5 + v4) = 0;

  v7 = [v3 metadata];
  *(v0 + 824) = v7;
  v8 = [v3 bitmapImages];
  if (v8)
  {
    v9 = v8;
    sub_261618454(0, &qword_281368778, 0x277CDAAB8);
    v10 = sub_26162B95C();

    if (v10 >> 62)
    {
      goto LABEL_50;
    }

    for (i = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_26162BBEC())
    {
      v147 = MEMORY[0x277D84F90];
      sub_26162BB9C();
      if (i < 0)
      {
        __break(1u);
LABEL_78:
        swift_once();
LABEL_21:
        v46 = *(v2 + 720);
        v144 = v2;
        v47 = qword_27FEB63F0;
        v137 = v46[2];
        v137(*(v2 + 744), *(v2 + 752), *(v2 + 712));
        v10 = v47 + 56;
        v48 = -1;
        v49 = -1 << *(v47 + 32);
        if (-v49 < 64)
        {
          v48 = ~(-1 << -v49);
        }

        v50 = v48 & *(v47 + 56);
        v2 = (63 - v49) >> 6;
        v141 = v47;

        v51 = 0;
        v138 = (v46 + 1);
        while (v50)
        {
          v52 = v51;
LABEL_30:
          v53 = *(v144 + 736);
          v1 = *(v144 + 712);
          v54 = __clz(__rbit64(v50));
          v50 &= v50 - 1;
          v137(v53, *(v141 + 48) + v46[9] * (v54 | (v52 << 6)), v1);
          v55 = sub_26162B4DC();
          v7 = v46[1];
          *(v144 + 840) = v7;
          *(v144 + 848) = (v46 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
          v7(v53, v1);
          if (v55)
          {
            v1 = v144;
            v56 = *(v144 + 728);
            v57 = *(v144 + 712);
            v7(*(v144 + 744), v57);

            sub_26162B48C();
            v58 = sub_26162B4DC();
            v7(v56, v57);
            if (v58)
            {
              v59 = *(v144 + 916);
              v60 = [objc_allocWithZone(QLTGeneratorThumbnailRequest) initWithRequest:*(v144 + 768) generationHandler:0];
              v61 = [objc_allocWithZone(QLPreviewThumbnailGenerator) initWithGeneratorRequest:v60 lowQuality:v59 thumbnailItem:v136];
              *(v144 + 856) = v61;

              if (qword_27FEB5138 != -1)
              {
                swift_once();
              }

              [v61 setGenerationQueue_];
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEB5200, &qword_2616311F0);
              v62 = swift_allocObject();
              *(v144 + 864) = v62;
              *(v62 + 16) = xmmword_261630C60;
              *(v144 + 80) = v144;
              *(v144 + 120) = v144 + 672;
              *(v144 + 88) = sub_2616131BC;
              v63 = swift_continuation_init();
              *(v144 + 200) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEB5208, qword_261630C90);
              *(v144 + 144) = MEMORY[0x277D85DD0];
              *(v144 + 152) = 1107296256;
              *(v144 + 160) = sub_261613FEC;
              *(v144 + 168) = &block_descriptor_5;
              *(v144 + 176) = v63;
              [v61 generateThumbnailWithCompletionHandler_];

              return MEMORY[0x282200938](v144 + 80);
            }

            else
            {
              v88 = *(v144 + 816);
              LODWORD(v12) = [v88 iconFlavor];
              v89 = [v88 metadata];
              v90 = [v89 additionalProperties];

              if (v90)
              {
                v91 = sub_26162B85C();
              }

              else
              {
LABEL_44:
                v91 = sub_261617848(MEMORY[0x277D84F90]);
              }

              v92 = sub_2616140C4(v91);
              *(v1 + 880) = v92;

              v93 = swift_task_alloc();
              *(v1 + 888) = v93;
              *v93 = v1;
              v93[1] = sub_2616136C0;
              v94 = *(v1 + 916);
              v95 = *(v1 + 680);

              return sub_2616115A0(v95, v136, v12, v94, v92);
            }
          }
        }

        while (1)
        {
          v52 = v51 + 1;
          if (__OFADD__(v51, 1))
          {
            goto LABEL_49;
          }

          if (v52 >= v2)
          {
            break;
          }

          v50 = *(v10 + 8 * v52);
          ++v51;
          if (v50)
          {
            v51 = v52;
            goto LABEL_30;
          }
        }

        v2 = v144;
        v77 = *(v144 + 752);
        v78 = *(v144 + 712);
        v79 = *v138;
        (*v138)(*(v144 + 744), v78);

        v79(v77, v78);
        goto LABEL_40;
      }

      v12 = 0;
      v139 = v7;
      while (1)
      {
        v13 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          __break(1u);
          goto LABEL_44;
        }

        if ((v10 & 0xC000000000000001) != 0)
        {
          v14 = MEMORY[0x266706D50](v12, v10);
          goto LABEL_11;
        }

        if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          break;
        }

        v14 = *(v10 + 8 * v12 + 32);
LABEL_11:
        v15 = v14;
        v16 = v2;
        [*(v2 + 768) scale];
        v18 = v17;
        v19 = [v15 data];
        v20 = sub_26162B39C();
        v22 = v21;

        v23 = sub_26162B38C();
        sub_2616179D8(v20, v22);
        v24 = [v15 format];
        v25 = QLCreateCGImageWithDataAndFormat();

        if (!v25)
        {
          v35 = v16;
          v36 = v16[102];
          v37 = v16[99];
          v38 = v16[97];
          v39 = v16[96];
          v143 = v16[95];
          v40 = v16[90];
          v41 = v35[89];

          sub_261613E58();
          swift_allocError();
          *v42 = 2;
          swift_willThrow();

          v2 = v35;
          (*(v40 + 8))(v143, v41);

          goto LABEL_71;
        }

        v7 = [objc_opt_self() imageWithCGImage:v25 scale:1 orientation:v18];

        sub_26162BB7C();
        v1 = *(v147 + 16);
        sub_26162BBAC();
        sub_26162BBBC();
        sub_26162BB8C();
        ++v12;
        v2 = v16;
        if (v13 == i)
        {

          v26 = v147;
          goto LABEL_52;
        }
      }

      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      ;
    }

    v26 = MEMORY[0x277D84F90];
    goto LABEL_52;
  }

  v27 = [*(v0 + 816) ioSurface];
  if (!v27)
  {
    v139 = v7;
    v43 = [*(v0 + 816) item];
    *(v0 + 832) = v43;
    if (v43)
    {
      v136 = v43;
      v44 = [v43 contentType];
      if (v44)
      {
        v45 = v44;
        sub_26162B47C();

        if (qword_27FEB5130 != -1)
        {
          goto LABEL_78;
        }

        goto LABEL_21;
      }

LABEL_40:
      v80 = *(v2 + 816);
      v81 = *(v2 + 792);
      v82 = *(v2 + 776);
      v83 = *(v2 + 768);
      v84 = *(v2 + 760);
      v85 = *(v2 + 720);
      v86 = *(v2 + 712);
      sub_261613E58();
      swift_allocError();
      *v87 = 2;
      swift_willThrow();

      (*(v85 + 8))(v84, v86);
    }

    else
    {
      v69 = *(v0 + 816);
      v70 = *(v2 + 792);
      v71 = *(v2 + 776);
      v72 = *(v2 + 768);
      v73 = *(v2 + 760);
      v74 = *(v2 + 720);
      v75 = *(v2 + 712);
      sub_261613E58();
      swift_allocError();
      *v76 = 2;
      swift_willThrow();

      (*(v74 + 8))(v73, v75);
    }

    goto LABEL_71;
  }

  v28 = v27;
  v29 = *(v0 + 768);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEB5200, &qword_2616311F0);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_261630C60;
  [v29 scale];
  v31 = v30;
  v32 = CGImageCreateFromIOSurface();
  if (!v32)
  {
    v64 = *(v0 + 816);
    v65 = *(v0 + 792);
    v66 = *(v0 + 776);
    v145 = *(v0 + 760);
    v67 = *(v0 + 720);
    v140 = *(v0 + 768);
    v142 = *(v0 + 712);
    sub_261613E58();
    swift_allocError();
    *v68 = 2;
    swift_willThrow();

    v2 = v0;
    (*(v67 + 8))(v145, v142);
    *(v26 + 16) = 0;

LABEL_71:

    v132 = *(v2 + 8);

    return v132();
  }

  v33 = v32;
  v34 = [objc_opt_self() imageWithCGImage:v32 scale:1 orientation:v31];

  *(v26 + 32) = v34;
LABEL_52:

  v96 = *(v2 + 768);
  [v96 minimumDimension];
  v98 = v97;
  [v96 scale];
  if (v26 >> 62)
  {
LABEL_76:
    v133 = v99;
    v134 = sub_26162BBEC();
    v99 = v133;
    v100 = v134;
  }

  else
  {
    v100 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v101 = 0;
  v102 = v98 * v99;
  while (v100 != v101)
  {
    if ((v26 & 0xC000000000000001) != 0)
    {
      v103 = MEMORY[0x266706D50](v101, v26);
    }

    else
    {
      if (v101 >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_75;
      }

      v103 = *(v26 + 8 * v101 + 32);
    }

    v104 = v103;
    if (__OFADD__(v101, 1))
    {
      __break(1u);
LABEL_75:
      __break(1u);
      goto LABEL_76;
    }

    [v103 size];
    v106 = v105;
    [v104 scale];
    if (v102 > v106 * v107)
    {

LABEL_68:
      swift_bridgeObjectRelease_n();
      v120 = sub_26162B52C();
      v121 = sub_26162BA2C();
      if (os_log_type_enabled(v120, v121))
      {
        v122 = swift_slowAlloc();
        *v122 = 0;
        _os_log_impl(&dword_2615D3000, v120, v121, "Thumbnail generator returned an image smaller than the minimum size, returning no thumbnail", v122, 2u);
        MEMORY[0x2667082C0](v122, -1, -1);
      }

      v123 = *(v2 + 824);
      v124 = *(v2 + 816);
      v125 = v2;
      v126 = *(v2 + 792);
      v127 = v125[97];
      v128 = v125[96];
      v146 = v125[95];
      v129 = v125[90];
      v130 = v125[89];

      sub_261613E58();
      swift_allocError();
      *v131 = 2;
      swift_willThrow();

      v2 = v125;
      (*(v129 + 8))(v146, v130);
      goto LABEL_71;
    }

    [v104 size];
    v98 = v108;
    [v104 scale];
    v110 = v109;

    v99 = v98 * v110;
    ++v101;
    if (v102 > v98 * v110)
    {
      goto LABEL_68;
    }
  }

  v111 = *(v2 + 816);
  v112 = *(v2 + 792);
  v113 = v2;
  v114 = *(v2 + 776);
  v115 = *(v113 + 760);
  v116 = *(v113 + 720);
  v117 = *(v113 + 712);

  (*(v116 + 8))(v115, v117);

  v118 = *(v113 + 8);
  v119 = *(v113 + 824);

  return v118(v26, v119);
}

uint64_t sub_2616130DC()
{
  v1 = *(v0 + 776);
  v2 = *(v0 + 768);
  v3 = *(v0 + 760);
  v4 = *(v0 + 720);
  v5 = *(v0 + 712);

  (*(v4 + 8))(v3, v5);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_2616131BC()
{
  v1 = *(*v0 + 112);
  *(*v0 + 872) = v1;
  if (v1)
  {
    v2 = sub_261613BFC;
  }

  else
  {
    v2 = sub_2616132CC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2616132CC()
{
  v1 = *(v0 + 856);
  v2 = *(v0 + 840);
  v3 = *(v0 + 832);
  v4 = *(v0 + 752);
  v5 = *(v0 + 712);
  *(*(v0 + 864) + 32) = *(v0 + 672);

  v2(v4, v5);
  v6 = *(v0 + 864);
  v7 = *(v0 + 768);

  [v7 minimumDimension];
  v9 = v8;
  [v7 scale];
  if (v6 >> 62)
  {
LABEL_24:
    v43 = v10;
    v44 = sub_26162BBEC();
    v10 = v43;
    v11 = v44;
  }

  else
  {
    v11 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v12 = 0;
  v13 = v9 * v10;
  while (v11 != v12)
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      v14 = MEMORY[0x266706D50](v12, v6);
    }

    else
    {
      if (v12 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_23;
      }

      v14 = *(v6 + 8 * v12 + 32);
    }

    v15 = v14;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    [v14 size];
    v17 = v16;
    [v15 scale];
    if (v13 > v17 * v18)
    {

LABEL_17:
      swift_bridgeObjectRelease_n();
      v31 = sub_26162B52C();
      v32 = sub_26162BA2C();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&dword_2615D3000, v31, v32, "Thumbnail generator returned an image smaller than the minimum size, returning no thumbnail", v33, 2u);
        MEMORY[0x2667082C0](v33, -1, -1);
      }

      v34 = *(v0 + 824);
      v35 = *(v0 + 816);
      v36 = *(v0 + 792);
      v37 = *(v0 + 776);
      v38 = *(v0 + 768);
      v45 = *(v0 + 760);
      v39 = *(v0 + 720);
      v40 = *(v0 + 712);

      sub_261613E58();
      swift_allocError();
      *v41 = 2;
      swift_willThrow();

      (*(v39 + 8))(v45, v40);

      v42 = *(v0 + 8);

      return v42();
    }

    [v15 size];
    v9 = v19;
    [v15 scale];
    v21 = v20;

    v10 = v9 * v21;
    ++v12;
    if (v13 > v9 * v21)
    {
      goto LABEL_17;
    }
  }

  v22 = *(v0 + 816);
  v23 = *(v0 + 792);
  v24 = *(v0 + 776);
  v25 = *(v0 + 760);
  v26 = *(v0 + 720);
  v27 = *(v0 + 712);

  (*(v26 + 8))(v25, v27);

  v28 = *(v0 + 8);
  v29 = *(v0 + 824);

  return v28(v6, v29);
}

uint64_t sub_2616136C0(uint64_t a1, void *a2)
{
  v6 = *v3;
  *(*v3 + 896) = v2;

  if (v2)
  {

    v7 = sub_261613D44;
  }

  else
  {

    *(v6 + 904) = a1;
    v7 = sub_261613818;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_261613818()
{
  v1 = *(v0 + 840);
  v2 = *(v0 + 752);
  v3 = *(v0 + 712);

  v1(v2, v3);
  v4 = *(v0 + 904);
  v5 = *(v0 + 768);

  [v5 minimumDimension];
  v7 = v6;
  [v5 scale];
  if (v4 >> 62)
  {
LABEL_24:
    v41 = v8;
    v42 = sub_26162BBEC();
    v8 = v41;
    v9 = v42;
  }

  else
  {
    v9 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = 0;
  v11 = v7 * v8;
  while (v9 != v10)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x266706D50](v10, v4);
    }

    else
    {
      if (v10 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_23;
      }

      v12 = *(v4 + 8 * v10 + 32);
    }

    v13 = v12;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    [v12 size];
    v15 = v14;
    [v13 scale];
    if (v11 > v15 * v16)
    {

LABEL_17:
      swift_bridgeObjectRelease_n();
      v29 = sub_26162B52C();
      v30 = sub_26162BA2C();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_2615D3000, v29, v30, "Thumbnail generator returned an image smaller than the minimum size, returning no thumbnail", v31, 2u);
        MEMORY[0x2667082C0](v31, -1, -1);
      }

      v32 = *(v0 + 824);
      v33 = *(v0 + 816);
      v34 = *(v0 + 792);
      v35 = *(v0 + 776);
      v36 = *(v0 + 768);
      v43 = *(v0 + 760);
      v37 = *(v0 + 720);
      v38 = *(v0 + 712);

      sub_261613E58();
      swift_allocError();
      *v39 = 2;
      swift_willThrow();

      (*(v37 + 8))(v43, v38);

      v40 = *(v0 + 8);

      return v40();
    }

    [v13 size];
    v7 = v17;
    [v13 scale];
    v19 = v18;

    v8 = v7 * v19;
    ++v10;
    if (v11 > v7 * v19)
    {
      goto LABEL_17;
    }
  }

  v20 = *(v0 + 816);
  v21 = *(v0 + 792);
  v22 = *(v0 + 776);
  v23 = *(v0 + 760);
  v24 = *(v0 + 720);
  v25 = *(v0 + 712);

  (*(v24 + 8))(v23, v25);

  v26 = *(v0 + 8);
  v27 = *(v0 + 824);

  return v26(v4, v27);
}

uint64_t sub_261613BFC()
{
  v1 = v0[108];
  v2 = v0[107];
  v3 = v0[105];
  v4 = v0[103];
  v5 = v0[102];
  v6 = v0[99];
  v10 = v0[97];
  v11 = v0[104];
  v14 = v0[95];
  v12 = v0[96];
  v13 = v0[94];
  v7 = v0[89];
  swift_willThrow();

  v3(v13, v7);
  v3(v14, v7);
  *(v1 + 16) = 0;

  v8 = v0[1];

  return v8();
}

uint64_t sub_261613D44()
{
  v1 = *(v0 + 840);
  v2 = *(v0 + 832);
  v3 = *(v0 + 824);
  v4 = *(v0 + 816);
  v5 = *(v0 + 776);
  v6 = *(v0 + 768);
  v11 = *(v0 + 760);
  v7 = *(v0 + 752);
  v8 = *(v0 + 712);

  v1(v7, v8);
  v1(v11, v8);

  v9 = *(v0 + 8);

  return v9();
}

unint64_t sub_261613E58()
{
  result = qword_27FEB51F0;
  if (!qword_27FEB51F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEB51F0);
  }

  return result;
}

uint64_t sub_261613EAC(void *a1, void *a2, uint64_t a3)
{
  if (a1)
  {
    **(*(a3 + 64) + 40) = a1;
    v4 = a1;

    return MEMORY[0x282200950](a3);
  }

  else
  {
    if (a2)
    {
      v6 = a2;
    }

    else
    {
      type metadata accessor for QLThumbnailError(0);
      sub_261617848(MEMORY[0x277D84F90]);
      sub_2616185B0(&qword_27FEB51C0, type metadata accessor for QLThumbnailError, &unk_261630A64);
      sub_26162B36C();
      v6 = v10;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEB5248, &qword_261630E58);
    swift_allocError();
    *v7 = v6;
    v8 = a2;
    return swift_continuation_throwingResumeWithError();
  }
}

uint64_t sub_261613FEC(uint64_t a1, void *a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEB5248, &qword_261630E58);
    swift_allocError();
    *v7 = a3;
    v8 = a3;

    return swift_continuation_throwingResumeWithError();
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x282200950](v5);
  }
}

uint64_t sub_2616140C4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEB5250, &qword_261630E68);
    v2 = sub_26162BC1C();
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
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_2615DD69C(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_2616149FC(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_2616149FC(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_2616149FC(v31, v32);
    result = sub_26162BAEC();
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v7 + 8 * (v18 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *(v7 + 8 * v19);
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_2616149FC(v32, (*(v2 + 56) + 32 * v10));
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

uint64_t sub_261614548(void *a1, void *a2, int a3, char a4, uint64_t a5, void *aBlock, void *a7)
{
  v7[3] = a2;
  v7[4] = a7;
  v7[2] = a1;
  v7[5] = _Block_copy(aBlock);
  if (a5)
  {
    a5 = sub_26162B85C();
  }

  v7[6] = a5;
  v14 = a1;
  v15 = a2;
  a7;
  v16 = swift_task_alloc();
  v7[7] = v16;
  *v16 = v7;
  v16[1] = sub_26161467C;

  return sub_2616115A0(v14, v15, a3, a4 & 1, a5);
}

uint64_t sub_26161467C(uint64_t a1, void *a2)
{
  v4 = v2;
  v6 = *v3;
  v7 = *(*v3 + 32);
  v8 = *(*v3 + 24);
  v9 = *(*v3 + 16);
  v10 = *v3;

  v11 = *(v6 + 40);

  if (v4)
  {
    v12 = sub_26162B37C();

    (v11)[2](v11, 0, 0, v12);
    _Block_release(v11);
  }

  else
  {
    sub_261618454(0, &qword_281368628, 0x277D43EA8);
    v13 = sub_26162B94C();
    (v11)[2](v11, v13, a2, 0);

    _Block_release(v11);
  }

  v14 = *(v10 + 8);

  return v14();
}

id ThumbnailExtensionGenerator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ThumbnailExtensionGenerator.init()()
{
  *&v0[OBJC_IVAR___QLThumbnailExtensionGenerator_operation] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ThumbnailExtensionGenerator();
  return objc_msgSendSuper2(&v2, sel_init);
}

id ThumbnailExtensionGenerator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ThumbnailExtensionGenerator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

_OWORD *sub_2616149FC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void sub_261614A0C(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_261614A98(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

unint64_t sub_261614AE4(uint64_t a1, uint64_t a2)
{
  sub_26162BCEC();
  sub_26162B8EC();
  v4 = sub_26162BD1C();

  return sub_261614B5C(a1, a2, v4);
}

unint64_t sub_261614B5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_26162BC7C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_261614C14(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_26161865C;

  return v6();
}

uint64_t sub_261614CFC(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_261614DE4;

  return v7();
}

uint64_t sub_261614DE4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_261614ED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEB53B0, &qword_261630E00);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v23 - v10;
  sub_261618548(a3, v23 - v10, &unk_27FEB53B0, &qword_261630E00);
  v12 = sub_26162B9BC();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_261618238(v11);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_26162B9AC();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_26162B99C();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_26162B8DC() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_261618238(a3);

    return v21;
  }

LABEL_8:
  sub_261618238(a3);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_2616151A4(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_26161529C;

  return v6(a1);
}

uint64_t sub_26161529C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void sub_2616153BC(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(a1, a2, a3);
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

_BYTE **sub_261615430(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void sub_261615468(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_2615DD1E8(v6, v7, a3);

  v9 = *a1;
  *v9 = v8;
  *a1 = v9 + 1;
}

char *sub_2616154C4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEB5240, &qword_261630E50);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

void sub_2616155B8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEB5278, &unk_261630E90);
  v35 = v4;
  v6 = sub_26162BC0C();
  v7 = v6;
  if (*(v5 + 16))
  {
    v33 = v2;
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(v5 + 56);
      v21 = *(*(v5 + 48) + 8 * v19);
      v22 = (v20 + 32 * v19);
      if (v35)
      {
        sub_2616149FC(v22, v36);
      }

      else
      {
        sub_2615DD69C(v22, v36);
        v23 = v21;
      }

      sub_26162B8CC();
      sub_26162BCEC();
      sub_26162B8EC();
      v24 = sub_26162BD1C();

      v25 = -1 << *(v7 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      sub_2616149FC(v36, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
      v5 = v34;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if ((v35 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
}

uint64_t sub_261615888(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_26162B3BC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEB5230, &qword_261630DF0);
  v39 = v4;
  result = sub_26162BC0C();
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

      sub_2616185B0(&qword_281368740, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      result = sub_26162B86C();
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

uint64_t sub_261615C64(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_26162B4FC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEB5238, &qword_261630DF8);
  v39 = v4;
  result = sub_26162BC0C();
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

      sub_2616185B0(&qword_281368730, MEMORY[0x277D85578], MEMORY[0x277D85588]);
      result = sub_26162B86C();
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

uint64_t sub_261616040(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v50 = sub_26162B3BC();
  v5 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v49 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ThumbnailExtensionMonitor.Predicate(0);
  v44 = *(v7 - 8);
  v45 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEB5228, &qword_261630DE8);
  v46 = v4;
  result = sub_26162BC0C();
  v12 = result;
  if (*(v10 + 16))
  {
    v13 = 0;
    v14 = (v10 + 64);
    v15 = 1 << *(v10 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v10 + 64);
    v18 = (v15 + 63) >> 6;
    v40 = v2;
    v41 = v5 + 16;
    v42 = v10;
    v43 = v5;
    v47 = (v5 + 32);
    v19 = result + 64;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v24 = v21 | (v13 << 6);
      v25 = *(v10 + 48);
      v48 = *(v44 + 72);
      v26 = v25 + v48 * v24;
      if (v46)
      {
        sub_261617F28(v26, v9);
        v27 = *(v10 + 56);
        v28 = *(v43 + 72);
        (*(v43 + 32))(v49, v27 + v28 * v24, v50);
      }

      else
      {
        sub_2615D694C(v26, v9);
        v29 = *(v10 + 56);
        v28 = *(v43 + 72);
        (*(v43 + 16))(v49, v29 + v28 * v24, v50);
      }

      sub_26162BCEC();
      sub_26162B4FC();
      sub_2616185B0(&qword_281368730, MEMORY[0x277D85578], MEMORY[0x277D85588]);
      sub_26162B87C();
      v30 = v45;
      sub_26162BD0C();
      MEMORY[0x266706EF0](*&v9[*(v30 + 24)]);
      result = sub_26162BD1C();
      v31 = -1 << *(v12 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v19 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v19 + 8 * v33);
          if (v37 != -1)
          {
            v20 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v32) & ~*(v19 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      sub_261617F28(v9, *(v12 + 48) + v48 * v20);
      result = (*v47)(*(v12 + 56) + v28 * v20, v49, v50);
      ++*(v12 + 16);
      v10 = v42;
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v18)
      {
        break;
      }

      v23 = v14[v13];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v46 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_34;
    }

    v38 = 1 << *(v10 + 32);
    v3 = v40;
    if (v38 >= 64)
    {
      bzero(v14, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v38;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

_OWORD *sub_2616164C4(_OWORD *a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_26161DD1C(a2);
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = v7[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_261616BB4();
      v8 = v16;
      goto LABEL_8;
    }

    sub_2616155B8(v13, a3 & 1);
    v8 = sub_26161DD1C(a2);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      type metadata accessor for QLFileThumbnailRequestOptions(0);
      result = sub_26162BC9C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    v19 = (v18[7] + 32 * v8);
    __swift_destroy_boxed_opaque_existential_0(v19);

    return sub_2616149FC(a1, v19);
  }

  else
  {
    sub_2616169B8(v8, a2, a1, v18);

    return a2;
  }
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_261616624(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for ThumbnailExtensionMonitor.Predicate(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  v13 = sub_2615D66A8(a2);
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
      sub_261617228();
      goto LABEL_7;
    }

    sub_261616040(v16, a3 & 1);
    v27 = sub_2615D66A8(a2);
    if ((v17 & 1) == (v28 & 1))
    {
      v13 = v27;
      v19 = *v4;
      if (v17)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_2615D694C(a2, v10);
      return sub_261616A20(v13, v10, a1, v19);
    }

LABEL_15:
    result = sub_26162BC9C();
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
  v20 = v19[7];
  v21 = sub_26162B3BC();
  v22 = *(v21 - 8);
  v23 = *(v22 + 40);
  v24 = v21;
  v25 = v20 + *(v22 + 72) * v13;

  return v23(v25, a1, v24);
}

void sub_2616167EC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_26162B3BC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_2615D6A0C(a2);
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
      sub_261616D34();
      goto LABEL_7;
    }

    sub_261615888(v17, a3 & 1);
    v23 = sub_2615D6A0C(a2);
    if ((v18 & 1) == (v24 & 1))
    {
      v14 = v23;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      sub_261616AFC(v14, v11, a1, v20);
      return;
    }

LABEL_15:
    sub_26162BC9C();
    __break(1u);
    return;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = *(v21 + 8 * v14);
  *(v21 + 8 * v14) = a1;
}

_OWORD *sub_2616169B8(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_2616149FC(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

uint64_t sub_261616A20(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for ThumbnailExtensionMonitor.Predicate(0);
  sub_261617F28(a2, v8 + *(*(v9 - 8) + 72) * a1);
  v10 = a4[7];
  v11 = sub_26162B3BC();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a3, v11);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

uint64_t sub_261616AFC(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_26162B3BC();
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

id sub_261616BB4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEB5278, &unk_261630E90);
  v2 = *v0;
  v3 = sub_26162BBFC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
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
        v18 = *(*(v2 + 48) + 8 * v17);
        sub_2615DD69C(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        sub_2616149FC(v19, (*(v4 + 56) + 32 * v17));
        result = v18;
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

  return result;
}

char *sub_261616D34()
{
  v1 = v0;
  v31 = sub_26162B3BC();
  v33 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v30 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEB5230, &qword_261630DF0);
  v3 = *v0;
  v4 = sub_26162BBFC();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v26 = v1;
    v27 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v32 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v28 = v33 + 32;
    v29 = v33 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v34 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v33;
        v20 = *(v33 + 72) * v18;
        v22 = v30;
        v21 = v31;
        (*(v33 + 16))(v30, *(v3 + 48) + v20, v31);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v32;
        (*(v19 + 32))(*(v32 + 48) + v20, v22, v21);
        *(*(v24 + 56) + 8 * v18) = v23;
        result = v23;
        v13 = v34;
      }

      while (v34);
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

        v1 = v26;
        v5 = v32;
        goto LABEL_18;
      }

      v17 = *(v27 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v34 = (v17 - 1) & v17;
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

char *sub_261616FA8()
{
  v1 = v0;
  v33 = sub_26162B4FC();
  v35 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v32 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEB5238, &qword_261630DF8);
  v3 = *v0;
  v4 = sub_26162BBFC();
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

char *sub_261617228()
{
  v1 = v0;
  v2 = sub_26162B3BC();
  v3 = *(v2 - 8);
  v38 = v2;
  v39 = v3;
  MEMORY[0x28223BE20](v2);
  v37 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ThumbnailExtensionMonitor.Predicate(0);
  v36 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v35 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEB5228, &qword_261630DE8);
  v7 = *v0;
  v8 = sub_26162BBFC();
  v9 = v8;
  if (*(v7 + 16))
  {
    result = (v8 + 64);
    v11 = (v7 + 64);
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    v31 = v1;
    v32 = v7 + 64;
    if (v9 != v7 || result >= &v11[8 * v12])
    {
      result = memmove(result, v11, 8 * v12);
    }

    v13 = 0;
    v14 = *(v7 + 16);
    v40 = v9;
    *(v9 + 16) = v14;
    v15 = 1 << *(v7 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v7 + 64);
    v18 = (v15 + 63) >> 6;
    v33 = v39 + 32;
    v34 = v39 + 16;
    v19 = v35;
    if (v17)
    {
      do
      {
        v20 = __clz(__rbit64(v17));
        v41 = (v17 - 1) & v17;
LABEL_14:
        v23 = v20 | (v13 << 6);
        v24 = *(v36 + 72) * v23;
        sub_2615D694C(*(v7 + 48) + v24, v19);
        v26 = v38;
        v25 = v39;
        v27 = *(v39 + 72) * v23;
        v28 = v37;
        (*(v39 + 16))(v37, *(v7 + 56) + v27, v38);
        v29 = v40;
        sub_261617F28(v19, *(v40 + 48) + v24);
        result = (*(v25 + 32))(*(v29 + 56) + v27, v28, v26);
        v17 = v41;
      }

      while (v41);
    }

    v21 = v13;
    v9 = v40;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v1 = v31;
        goto LABEL_18;
      }

      v22 = *(v32 + 8 * v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v41 = (v22 - 1) & v22;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v9;
  }

  return result;
}

uint64_t sub_261617528(uint64_t a1)
{
  v2 = sub_26162B4FC();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEB5270, &qword_261630E88);
    v9 = sub_26162BB2C();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_2616185B0(&qword_281368730, MEMORY[0x277D85578], MEMORY[0x277D85588]);
      v16 = sub_26162B86C();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_2616185B0(&unk_281368720, MEMORY[0x277D85578], MEMORY[0x277D85590]);
          v23 = sub_26162B88C();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

unint64_t sub_261617848(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEB5258, &qword_261630E70);
    v3 = sub_26162BC1C();
    v4 = a1 + 32;

    while (1)
    {
      sub_261618548(v4, &v13, &qword_27FEB5260, &qword_261630E78);
      v5 = v13;
      v6 = v14;
      result = sub_261614AE4(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_2616149FC(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_2616179D8(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t dispatch thunk of ThumbnailExtensionGenerator.generateThumbnail(thumbnailRequest:item:flavor:wantsLowQuality:generationData:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *((*MEMORY[0x277D85000] & *v5) + 0x70);
  v15 = (v12 + *v12);
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_261617BC8;

  return v15(a1, a2, a3, a4, a5);
}

uint64_t sub_261617BC8(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

uint64_t getEnumTagSinglePayload for ThumbnailExtensionGenerator.Errors(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ThumbnailExtensionGenerator.Errors(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_261617E80()
{
  result = qword_27FEB5218;
  if (!qword_27FEB5218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEB5218);
  }

  return result;
}

unint64_t sub_261617ED4()
{
  result = qword_27FEB5220;
  if (!qword_27FEB5220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEB5220);
  }

  return result;
}

uint64_t sub_261617F28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ThumbnailExtensionMonitor.Predicate(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_261617F8C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 36);
  v6 = *(v0 + 40);
  v7 = *(v0 + 48);
  v8 = *(v0 + 56);
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_261614DE4;

  return sub_261614548(v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_26161806C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_26161865C;

  return sub_261614C14(v2, v3, v4);
}

uint64_t objectdestroy_22Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_26161816C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_26161865C;

  return sub_261614CFC(a1, v4, v5, v6);
}

uint64_t sub_261618238(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEB53B0, &qword_261630E00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2616182A0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_26161865C;

  return sub_2616151A4(a1, v4);
}

uint64_t sub_261618358(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_261614DE4;

  return sub_2616151A4(a1, v4);
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_261618454(uint64_t a1, unint64_t *a2, void *a3)
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

unint64_t sub_26161849C()
{
  result = qword_281368630;
  if (!qword_281368630)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27FEB5290, &qword_261630E60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281368630);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_261618548(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2616185B0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_261618660(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = [v2 attributes];
  v7 = sub_26162B85C();

  if (*(v7 + 16) && (v8 = sub_261614AE4(a1, a2), (v9 & 1) != 0))
  {
    sub_2615DD69C(*(v7 + 56) + 32 * v8, &v15);

    sub_2616149FC(&v15, v17);
  }

  else
  {

    v15 = 0u;
    v16 = 0u;
    v10 = [v3 nsExtensionAttributes];
    v11 = sub_26162B85C();

    if (*(v11 + 16) && (v12 = sub_261614AE4(a1, a2), (v13 & 1) != 0))
    {
      sub_2615DD69C(*(v11 + 56) + 32 * v12, v17);

      if (*(&v16 + 1))
      {
        sub_261620814(&v15, &unk_27FEB5370, &qword_261631120);
      }
    }

    else
    {

      memset(v17, 0, sizeof(v17));
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEB5370, &qword_261631120);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEB53A8, &unk_261631150);
  if (swift_dynamicCast())
  {
    return v15;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_261618824(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = [v2 attributes];
  v7 = sub_26162B85C();

  if (*(v7 + 16) && (v8 = sub_261614AE4(a1, a2), (v9 & 1) != 0))
  {
    sub_2615DD69C(*(v7 + 56) + 32 * v8, &v15);

    sub_2616149FC(&v15, v17);
  }

  else
  {

    v15 = 0u;
    v16 = 0u;
    v10 = [v3 nsExtensionAttributes];
    v11 = sub_26162B85C();

    if (*(v11 + 16) && (v12 = sub_261614AE4(a1, a2), (v13 & 1) != 0))
    {
      sub_2615DD69C(*(v11 + 56) + 32 * v12, v17);

      if (*(&v16 + 1))
      {
        sub_261620814(&v15, &unk_27FEB5370, &qword_261631120);
      }
    }

    else
    {

      memset(v17, 0, sizeof(v17));
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEB5370, &qword_261631120);
  if (swift_dynamicCast())
  {
    return v15;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_2616189D8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = [v2 attributes];
  v7 = sub_26162B85C();

  if (*(v7 + 16) && (v8 = sub_261614AE4(a1, a2), (v9 & 1) != 0))
  {
    sub_2615DD69C(*(v7 + 56) + 32 * v8, &v15);

    sub_2616149FC(&v15, v17);
  }

  else
  {

    v15 = 0u;
    v16 = 0u;
    v10 = [v3 nsExtensionAttributes];
    v11 = sub_26162B85C();

    if (*(v11 + 16) && (v12 = sub_261614AE4(a1, a2), (v13 & 1) != 0))
    {
      sub_2615DD69C(*(v11 + 56) + 32 * v12, v17);

      if (*(&v16 + 1))
      {
        sub_261620814(&v15, &unk_27FEB5370, &qword_261631120);
      }
    }

    else
    {

      memset(v17, 0, sizeof(v17));
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEB5370, &qword_261631120);
  if (swift_dynamicCast())
  {
    return v15;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_261618B8C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = [v2 attributes];
  v7 = sub_26162B85C();

  if (*(v7 + 16) && (v8 = sub_261614AE4(a1, a2), (v9 & 1) != 0))
  {
    sub_2615DD69C(*(v7 + 56) + 32 * v8, &v17);

    sub_2616149FC(&v17, v19);
  }

  else
  {

    v17 = 0u;
    v18 = 0u;
    v10 = [v3 nsExtensionAttributes];
    v11 = sub_26162B85C();

    if (*(v11 + 16) && (v12 = sub_261614AE4(a1, a2), (v13 & 1) != 0))
    {
      sub_2615DD69C(*(v11 + 56) + 32 * v12, v19);

      if (*(&v18 + 1))
      {
        sub_261620814(&v17, &unk_27FEB5370, &qword_261631120);
      }
    }

    else
    {

      memset(v19, 0, sizeof(v19));
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEB5370, &qword_261631120);
  v14 = swift_dynamicCast();
  v15 = v17;
  if (!v14)
  {
    return 0;
  }

  return v15;
}

uint64_t sub_261618D44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  v4 = sub_26162B90C();
  if (v5)
  {
    v6 = v4;
    v7 = v5;
    do
    {
      v10 = sub_26162B90C();
      if (!v11)
      {

        return 1;
      }

      if (v6 == v10 && v7 == v11)
      {
      }

      else
      {
        v8 = sub_26162BC7C();

        if ((v8 & 1) == 0)
        {

          goto LABEL_14;
        }
      }

      v6 = sub_26162B90C();
      v7 = v9;
    }

    while (v9);
  }

  sub_26162B90C();
  v13 = v12;

  if (!v13)
  {
    return 1;
  }

LABEL_14:

  return 0;
}

uint64_t sub_261618EA0(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEB5358, &qword_261631110);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = sub_26162B3BC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v9 + 48))(a1, 1, v8) == 1)
  {
    sub_261620814(a1, &unk_27FEB5358, &qword_261631110);
    sub_26161DF7C(a2, v7);
    sub_2615D69B0(a2);
    return sub_261620814(v7, &unk_27FEB5358, &qword_261631110);
  }

  else
  {
    (*(v9 + 32))(v11, a1, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    sub_261616624(v11, a2, isUniquelyReferenced_nonNull_native);
    result = sub_2615D69B0(a2);
    *v2 = v15;
  }

  return result;
}

uint64_t sub_26161906C()
{
  v0 = [objc_allocWithZone(type metadata accessor for ThumbnailExtensionMonitor()) init];
  result = sub_261619BDC();
  qword_2813686F0 = v0;
  return result;
}

id static ThumbnailExtensionMonitor.shared.getter()
{
  if (qword_281368790 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = qword_2813686F0;

  return v0;
}

void static ThumbnailExtensionMonitor.shared.setter(uint64_t a1)
{
  if (qword_281368790 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_2813686F0;
  qword_2813686F0 = a1;
}

uint64_t (*static ThumbnailExtensionMonitor.shared.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_281368790 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

id sub_2616192C0@<X0>(void *a1@<X8>)
{
  if (qword_281368790 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_2813686F0;
  *a1 = qword_2813686F0;

  return v2;
}

void sub_26161934C(id *a1)
{
  v1 = qword_281368790;
  v2 = *a1;
  if (v1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = qword_2813686F0;
  qword_2813686F0 = v2;
}

uint64_t sub_2616193D4(uint64_t a1)
{
  sub_26162BCEC();
  sub_26162B4FC();
  sub_2615D6788(&qword_281368730, MEMORY[0x277D85578], MEMORY[0x277D85588]);
  sub_26162B87C();
  sub_26162BD0C();
  MEMORY[0x266706EF0](*(v1 + *(a1 + 24)));
  return sub_26162BD1C();
}

uint64_t sub_26161948C(uint64_t a1, uint64_t a2)
{
  sub_26162B4FC();
  sub_2615D6788(&qword_281368730, MEMORY[0x277D85578], MEMORY[0x277D85588]);
  sub_26162B87C();
  sub_26162BD0C();
  return MEMORY[0x266706EF0](*(v2 + *(a2 + 24)));
}

uint64_t sub_261619530(uint64_t a1, uint64_t a2)
{
  sub_26162BCEC();
  sub_26162B4FC();
  sub_2615D6788(&qword_281368730, MEMORY[0x277D85578], MEMORY[0x277D85588]);
  sub_26162B87C();
  sub_26162BD0C();
  MEMORY[0x266706EF0](*(v2 + *(a2 + 24)));
  return sub_26162BD1C();
}

uint64_t sub_2616195E4(uint64_t a1)
{
  v3 = sub_26162B43C();
  v4 = *(v1 + *(a1 + 20)) == 0;
  if (*(v1 + *(a1 + 20)))
  {
    v5 = 0x6369727473657228;
  }

  else
  {
    v5 = 0;
  }

  if (v4)
  {
    v6 = 0xE000000000000000;
  }

  else
  {
    v6 = 0xEC00000029646574;
  }

  v8 = v3;

  MEMORY[0x266706AF0](v5, v6);

  return v8;
}

uint64_t sub_2616196E8()
{
  v0 = sub_26162B54C();
  __swift_allocate_value_buffer(v0, qword_281368AD0);
  __swift_project_value_buffer(v0, qword_281368AD0);
  return sub_26162B53C();
}

id ThumbnailExtensionMonitor.init()()
{
  v25 = sub_26162BA5C();
  v0 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v2 = v23 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_26162BA4C();
  MEMORY[0x28223BE20](v3);
  v4 = sub_26162B81C();
  MEMORY[0x28223BE20](v4 - 8);
  v24 = OBJC_IVAR___QLThumbnailExtensionMonitor_queue;
  v23[1] = sub_261618454(0, &qword_281368610, 0x277D85C78);
  sub_26162B80C();
  v28 = MEMORY[0x277D84F90];
  sub_2615D6788(&qword_281368618, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEB5290, &qword_261630E60);
  sub_26161B81C(&qword_281368630, &unk_27FEB5290, &qword_261630E60);
  sub_26162BACC();
  (*(v0 + 104))(v2, *MEMORY[0x277D85260], v25);
  v5 = sub_26162BA8C();
  v6 = v26;
  *&v26[v24] = v5;
  v7 = MEMORY[0x277D84F98];
  *&v6[OBJC_IVAR___QLThumbnailExtensionMonitor_identitiesByType] = MEMORY[0x277D84F98];
  *&v6[OBJC_IVAR___QLThumbnailExtensionMonitor_extensionByIdentifier] = v7;
  *&v6[OBJC_IVAR___QLThumbnailExtensionMonitor_matchingExtensionsCache] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEB5200, &qword_2616311F0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_261630EA0;
  v9 = objc_allocWithZone(MEMORY[0x277CC5DF8]);
  v10 = sub_26162B89C();
  v11 = [v9 initWithExtensionPointIdentifier_];

  *(v8 + 32) = v11;
  v12 = objc_allocWithZone(MEMORY[0x277CC5DF8]);
  v13 = sub_26162B89C();
  v14 = [v12 initWithExtensionPointIdentifier_];

  *(v8 + 40) = v14;
  v15 = objc_allocWithZone(MEMORY[0x277CC5DF8]);
  v16 = sub_26162B89C();
  v17 = [v15 initWithExtensionPointIdentifier_];

  *(v8 + 48) = v17;
  v18 = objc_allocWithZone(MEMORY[0x277CC5E00]);
  sub_261618454(0, &unk_2813685D0, 0x277CC5DF8);
  v19 = sub_26162B94C();

  v20 = [v18 initWithQueries_];

  *&v6[OBJC_IVAR___QLThumbnailExtensionMonitor_queryController] = v20;
  v21 = type metadata accessor for ThumbnailExtensionMonitor();
  v27.receiver = v6;
  v27.super_class = v21;
  return objc_msgSendSuper2(&v27, sel_init);
}

uint64_t sub_261619BDC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEB53B0, &qword_261630E00);
  MEMORY[0x28223BE20](v1 - 8);
  v31 = &v27 - v2;
  v3 = sub_26162B7FC();
  v30 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_26162B81C();
  v28 = *(v6 - 8);
  v29 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2813686F8 != -1)
  {
    swift_once();
  }

  v9 = sub_26162B54C();
  __swift_project_value_buffer(v9, qword_281368AD0);
  v10 = v0;
  v11 = sub_26162B52C();
  v12 = sub_26162BA1C();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138412290;
    *(v13 + 4) = v10;
    *v14 = v10;
    v15 = v10;
    _os_log_impl(&dword_2615D3000, v11, v12, "Setup cache for %@", v13, 0xCu);
    sub_261620814(v14, &qword_27FEB5210, &qword_261631170);
    MEMORY[0x2667082C0](v14, -1, -1);
    MEMORY[0x2667082C0](v13, -1, -1);
  }

  v16 = *&v10[OBJC_IVAR___QLThumbnailExtensionMonitor_queue];
  v17 = swift_allocObject();
  *(v17 + 16) = v10;
  aBlock[4] = sub_261620570;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26161A1C4;
  aBlock[3] = &block_descriptor_42;
  v18 = _Block_copy(aBlock);
  v19 = v10;
  v20 = v16;
  sub_26162B80C();
  v32 = MEMORY[0x277D84F90];
  sub_2615D6788(&qword_281368648, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEB52D0, &qword_261630EB8);
  sub_26161B81C(&unk_281368638, &unk_27FEB52D0, &qword_261630EB8);
  sub_26162BACC();
  MEMORY[0x266706C70](0, v8, v5, v18);
  _Block_release(v18);

  (*(v30 + 8))(v5, v3);
  (*(v28 + 8))(v8, v29);

  v21 = OBJC_IVAR___QLThumbnailExtensionMonitor_queryController;
  [*&v19[OBJC_IVAR___QLThumbnailExtensionMonitor_queryController] setDelegate_];
  [*&v19[v21] resume];
  v22 = sub_26162B9BC();
  v23 = v31;
  (*(*(v22 - 8) + 56))(v31, 1, 1, v22);
  v24 = swift_allocObject();
  v24[2] = 0;
  v24[3] = 0;
  v24[4] = v19;
  v25 = v19;
  sub_26161AA1C(0, 0, v23, &unk_261631168, v24);
}

double sub_26161A0C4(uint64_t a1)
{
  v1 = [*(a1 + OBJC_IVAR___QLThumbnailExtensionMonitor_queryController) queries];
  if (!v1)
  {
    sub_261618454(0, &unk_2813685D0, 0x277CC5DF8);
    sub_26162B95C();
    v1 = sub_26162B94C();
  }

  v2 = [objc_opt_self() executeQueries_];

  sub_261618454(0, &qword_281368608, 0x277CC5DD8);
  v3 = sub_26162B95C();

  sub_26161B98C(v3);

  return result;
}

uint64_t sub_26161A1C4(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_26161A208(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a4;
  v5 = sub_26162B7FC();
  v4[10] = v5;
  v4[11] = *(v5 - 8);
  v4[12] = swift_task_alloc();
  v6 = sub_26162B81C();
  v4[13] = v6;
  v4[14] = *(v6 - 8);
  v4[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEB53C0, &qword_261631190);
  v4[16] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEB53C8, &qword_261631198);
  v4[17] = v7;
  v4[18] = *(v7 - 8);
  v4[19] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEB53D0, &qword_2616311A0);
  v4[20] = v8;
  v4[21] = *(v8 - 8);
  v4[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26161A42C, 0, 0);
}

uint64_t sub_26161A42C()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[17];
  sub_26162B3EC();
  sub_26162B9CC();
  (*(v2 + 8))(v1, v3);
  v0[23] = OBJC_IVAR___QLThumbnailExtensionMonitor_queue;
  v4 = swift_task_alloc();
  v0[24] = v4;
  *v4 = v0;
  v4[1] = sub_26161A524;
  v5 = v0[20];
  v6 = v0[16];

  return MEMORY[0x2822003E8](v6, 0, 0, v5);
}

uint64_t sub_26161A524()
{

  return MEMORY[0x2822009F8](sub_26161A620, 0, 0);
}

uint64_t sub_26161A620()
{
  v1 = v0[16];
  v2 = sub_26162B3DC();
  v3 = (*(*(v2 - 8) + 48))(v1, 1, v2);
  v4 = v0[12];
  if (v3 == 1)
  {
    (*(v0[21] + 8))(v0[22], v0[20]);

    v5 = v0[1];

    return v5();
  }

  else
  {
    v19 = v0[14];
    v20 = v0[13];
    v7 = v0[10];
    v17 = v0[15];
    v18 = v0[11];
    v21 = v1;
    v8 = v0[9];
    v9 = *&v8[v0[23]];
    v10 = swift_allocObject();
    *(v10 + 16) = v8;
    v0[6] = sub_26162080C;
    v0[7] = v10;
    v0[2] = MEMORY[0x277D85DD0];
    v0[3] = 1107296256;
    v0[4] = sub_26161A1C4;
    v0[5] = &block_descriptor_63;
    v11 = _Block_copy(v0 + 2);
    v12 = v9;
    v13 = v8;
    sub_26162B80C();
    v0[8] = MEMORY[0x277D84F90];
    sub_2615D6788(&qword_281368648, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEB52D0, &qword_261630EB8);
    sub_26161B81C(&unk_281368638, &unk_27FEB52D0, &qword_261630EB8);
    sub_26162BACC();
    MEMORY[0x266706C70](0, v17, v4, v11);
    _Block_release(v11);

    (*(v18 + 8))(v4, v7);
    (*(v19 + 8))(v17, v20);

    sub_261620814(v21, &qword_27FEB53C0, &qword_261631190);
    v14 = swift_task_alloc();
    v0[24] = v14;
    *v14 = v0;
    v14[1] = sub_26161A524;
    v15 = v0[20];
    v16 = v0[16];

    return MEMORY[0x2822003E8](v16, 0, 0, v15);
  }
}

double sub_26161A988(uint64_t a1)
{
  v1 = [*(a1 + OBJC_IVAR___QLThumbnailExtensionMonitor_queryController) extensionIdentities];
  sub_261618454(0, &qword_281368608, 0x277CC5DD8);
  v2 = sub_26162B95C();

  sub_26161B98C(v2);

  return result;
}

uint64_t sub_26161AA1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEB53B0, &qword_261630E00);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_26162062C(a3, v25 - v10);
  v12 = sub_26162B9BC();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_261620814(v11, &unk_27FEB53B0, &qword_261630E00);
  }

  else
  {
    sub_26162B9AC();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_26162B99C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_26162B8DC() + 32;
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

      sub_261620814(a3, &unk_27FEB53B0, &qword_261630E00);

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

  sub_261620814(a3, &unk_27FEB53B0, &qword_261630E00);
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

BOOL sub_26161AD0C(double a1, double a2, uint64_t a3)
{
  v5 = COERCE_DOUBLE(sub_26161AEB0(a3));
  if (v6)
  {
    return 0;
  }

  if (a1 == 0.0 && a2 == 0.0)
  {
    return 1;
  }

  if (v5 <= a1)
  {
    return v5 <= a2;
  }

  return 0;
}

uint64_t sub_26161AEB0(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for ThumbnailExtensionMonitor.Predicate(0);
  MEMORY[0x28223BE20](v5);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_26162B4FC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26162B48C();
  v12 = sub_26162B4DC();
  (*(v9 + 8))(v11, v8);
  if (v12)
  {
    return 0x4031000000000000;
  }

  if (qword_27FEB5140 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v8, qword_27FEB6400);
  if (sub_26162B4DC())
  {
    return 0x4031000000000000;
  }

  v14 = (*(v9 + 16))(v7, a1, v8);
  v7[*(v5 + 20)] = 0;
  *&v7[*(v5 + 24)] = 3;
  MEMORY[0x28223BE20](v14);
  v19[-4] = v2;
  v19[-3] = v7;
  v19[-2] = ObjectType;
  v16 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEB52C0, &qword_261630EB0);
  sub_26162BA6C();

  v17 = v19[1];
  sub_2615D69B0(v7);
  if (!v17)
  {
    return 0;
  }

  v18 = *&v17[OBJC_IVAR___QLThumbnailExtension_minimumThumbnailDimension];

  return v18;
}

uint64_t sub_26161B140(uint64_t a1, char a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v8 = type metadata accessor for ThumbnailExtensionMonitor.Predicate(0);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v11 = &v17[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_26162B4FC();
  (*(*(v12 - 8) + 16))(v11, a1, v12);
  v11[*(v9 + 28)] = a2;
  *&v11[*(v9 + 32)] = a3;
  v13 = *(v3 + OBJC_IVAR___QLThumbnailExtensionMonitor_queue);
  v18 = v3;
  v19 = v11;
  v20 = ObjectType;
  v14 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEB52C0, &qword_261630EB0);
  sub_26162BA6C();

  v15 = v21;
  sub_2615D69B0(v11);
  return v15;
}

uint64_t sub_26161B49C(void *a1)
{
  v3 = sub_26162B7FC();
  v18 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_26162B81C();
  v6 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *&v1[OBJC_IVAR___QLThumbnailExtensionMonitor_queue];
  v10 = swift_allocObject();
  *(v10 + 16) = v1;
  *(v10 + 24) = a1;
  aBlock[4] = sub_26161B7FC;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26161A1C4;
  aBlock[3] = &block_descriptor_0;
  v11 = _Block_copy(aBlock);
  v12 = v9;
  v13 = v1;
  v14 = a1;
  sub_26162B80C();
  v19 = MEMORY[0x277D84F90];
  sub_2615D6788(&qword_281368648, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEB52D0, &qword_261630EB8);
  sub_26161B81C(&unk_281368638, &unk_27FEB52D0, &qword_261630EB8);
  sub_26162BACC();
  MEMORY[0x266706C70](0, v8, v5, v11);
  _Block_release(v11);

  (*(v18 + 8))(v5, v3);
  (*(v6 + 8))(v8, v17);
}

double sub_26161B76C(int a1, id a2)
{
  v2 = [a2 extensionIdentities];
  sub_261618454(0, &qword_281368608, 0x277CC5DD8);
  v3 = sub_26162B95C();

  sub_26161B98C(v3);

  return result;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_26161B81C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_26161B98C(unint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEB5388, &qword_261631138);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v92 - v5;
  v7 = sub_26162B4FC();
  v104 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7);
  v110 = &v92 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v116 = &v92 - v10;
  v107 = sub_26162B3BC();
  v93 = *(v107 - 8);
  v11 = MEMORY[0x28223BE20](v107);
  v106 = &v92 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v92 = &v92 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v99 = &v92 - v16;
  MEMORY[0x28223BE20](v15);
  v105 = &v92 - v17;
  v18 = sub_26162B82C();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = (&v92 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = *(v2 + OBJC_IVAR___QLThumbnailExtensionMonitor_queue);
  *v21 = v22;
  (*(v19 + 104))(v21, *MEMORY[0x277D85200], v18);
  v23 = v22;
  LOBYTE(v22) = sub_26162B83C();
  (*(v19 + 8))(v21, v18);
  if ((v22 & 1) == 0)
  {
    goto LABEL_40;
  }

  v121 = MEMORY[0x277D84FA0];
  v24 = OBJC_IVAR___QLThumbnailExtensionMonitor_identitiesByType;
  v114 = OBJC_IVAR___QLThumbnailExtensionMonitor_identitiesByType;
  swift_beginAccess();
  if (*(*(v2 + v24) + 16))
  {
    swift_isUniquelyReferenced_nonNull_native();
    v120 = *&v114[v2];
    *&v114[v2] = 0x8000000000000000;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEB5398, &qword_261631140);
    sub_26162BBDC();
    *&v114[v2] = v120;
  }

  v115 = v2;
  swift_endAccess();
  if (a1 >> 62)
  {
    goto LABEL_41;
  }

  v25 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = 0; v25; i = 0)
  {
    v27 = 0;
    v102 = a1 & 0xC000000000000001;
    v101 = "abled for this file type";
    v95 = a1 & 0xFFFFFFFFFFFFFF8;
    v94 = a1 + 32;
    v98 = (v93 + 8);
    v112 = (v104 + 48);
    v113 = v104 + 56;
    v109 = (v104 + 32);
    v103 = v104 + 16;
    v108 = (v104 + 8);
    v96 = a1;
    v97 = v25;
    while (1)
    {
      if (v102)
      {
        v28 = MEMORY[0x266706D50](v27, a1);
      }

      else
      {
        if (v27 >= *(v95 + 16))
        {
          goto LABEL_39;
        }

        v28 = *(v94 + 8 * v27);
      }

      v29 = v28;
      v30 = __OFADD__(v27++, 1);
      if (v30)
      {
        break;
      }

      v31 = sub_261618660(0xD000000000000017, v101 | 0x8000000000000000);
      if (v31)
      {
        v32 = v31;
        v33 = a1;
        v34 = [v29 uniqueIdentifier];
        v35 = v99;
        sub_26162B3AC();

        a1 = v29;
        v36 = v105;
        sub_26161EA34(v105, v35);
        (*v98)(v36, v107);
        v118 = *(v32 + 16);
        if (v118)
        {
          v111 = a1;
          v100 = v27;
          v117 = objc_opt_self();
          v37 = 0;
          v38 = v32 + 40;
          v39 = &unk_279ADE000;
          while (v37 < *(v32 + 16))
          {

            a1 = sub_26162B89C();

            v42 = [v117 v39[138]];

            if (v42)
            {
              (*v113)(v6, 1, 1, v7);
              sub_2615D6788(&qword_2813687A0, MEMORY[0x277D85578], MEMORY[0x277D855A0]);
              sub_26162BC4C();

              if ((*v112)(v6, 1, v7) != 1)
              {
                v43 = v110;
                v44 = *v109;
                v45 = i;
                v46 = v6;
                (*v109)(v110, v6, v7);
                v6 = v116;
                v44(v116, v43, v7);
                v47 = v114;
                v48 = v115;
                swift_beginAccess();
                sub_261620560(v45, 0);
                a1 = swift_isUniquelyReferenced_nonNull_native();
                v120 = *&v47[v48];
                v49 = v120;
                *&v47[v48] = 0x8000000000000000;
                v50 = sub_2615DBA84(v6);
                v52 = v49[2];
                v53 = (v51 & 1) == 0;
                v30 = __OFADD__(v52, v53);
                v54 = v52 + v53;
                if (v30)
                {
                  goto LABEL_36;
                }

                v55 = v51;
                if (v49[3] >= v54)
                {
                  v6 = v46;
                  v39 = &unk_279ADE000;
                  if ((a1 & 1) == 0)
                  {
                    a1 = v50;
                    sub_261616FA8();
                    v50 = a1;
                    v49 = v120;
                  }
                }

                else
                {
                  sub_261615C64(v54, a1);
                  v49 = v120;
                  v50 = sub_2615DBA84(v116);
                  v39 = &unk_279ADE000;
                  if ((v55 & 1) != (v56 & 1))
                  {
                    goto LABEL_65;
                  }

                  v6 = v46;
                }

                *&v114[v115] = v49;
                if ((v55 & 1) == 0)
                {
                  v49[(v50 >> 6) + 8] |= 1 << v50;
                  v57 = v50;
                  (*(v104 + 16))(v49[6] + *(v104 + 72) * v50, v116, v7);
                  *(v49[7] + 8 * v57) = MEMORY[0x277D84F90];
                  v58 = v49[2];
                  v30 = __OFADD__(v58, 1);
                  v59 = v58 + 1;
                  if (v30)
                  {
                    goto LABEL_37;
                  }

                  v50 = v57;
                  v49[2] = v59;
                }

                v40 = (v49[7] + 8 * v50);
                v41 = v111;
                MEMORY[0x266706B30]();
                if (*((*v40 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v40 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  a1 = *((*v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  sub_26162B96C();
                }

                sub_26162B98C();
                swift_endAccess();
                (*v108)(v116, v7);
                i = sub_26161C61C;
              }
            }

            v37 = (v37 + 1);
            v38 += 16;
            if (v118 == v37)
            {

              a1 = v96;
              v25 = v97;
              v27 = v100;
              goto LABEL_8;
            }
          }

          __break(1u);
LABEL_36:
          __break(1u);
LABEL_37:
          __break(1u);
          break;
        }

        a1 = v33;
        v25 = v97;
      }

      else
      {
      }

LABEL_8:
      if (v27 == v25)
      {
        goto LABEL_42;
      }
    }

    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    v25 = sub_26162BBEC();
  }

LABEL_42:
  v108 = i;
  v60 = OBJC_IVAR___QLThumbnailExtensionMonitor_extensionByIdentifier;
  v61 = v115;
  swift_beginAccess();
  v62 = *(v61 + v60);
  v63 = (v62 + 64);
  v64 = 1 << *(v62 + 32);
  if (v64 < 64)
  {
    v65 = ~(-1 << v64);
  }

  else
  {
    v65 = -1;
  }

  v66 = v65 & *(v62 + 64);
  v67 = ((v64 + 63) >> 6);
  v116 = (v93 + 16);
  v110 = (v93 + 32);
  v118 = (v93 + 8);
  v113 = v62;

  v68 = 0;
  v111 = v67;
  v112 = v63;
  v109 = v60;
  if (v66)
  {
    goto LABEL_50;
  }

  while (1)
  {
    v69 = v68 + 1;
    if (__OFADD__(v68, 1))
    {
      break;
    }

    if (v69 >= v67)
    {

      return sub_261620560(v108, 0);
    }

    v66 = v63[v69];
    ++v68;
    if (v66)
    {
      v68 = v69;
      do
      {
LABEL_50:
        v70 = __clz(__rbit64(v66));
        v66 &= v66 - 1;
        v71 = *(v113 + 48);
        v72 = v93;
        v117 = *(v93 + 72);
        v73 = v92;
        v74 = v107;
        v114 = *(v93 + 16);
        (v114)(v92, v71 + v117 * (v70 | (v68 << 6)), v107);
        (*(v72 + 32))(v106, v73, v74);
        v75 = v121;
        if (*(v121 + 16) && (sub_2615D6788(&qword_281368740, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]), v76 = sub_26162B86C(), v77 = -1 << *(v75 + 32), v78 = v76 & ~v77, ((*(v75 + 56 + ((v78 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v78) & 1) != 0))
        {
          v79 = ~v77;
          while (1)
          {
            v80 = v105;
            v81 = v107;
            (v114)(v105, *(v75 + 48) + v78 * v117, v107);
            sub_2615D6788(&qword_281368738, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
            v82 = sub_26162B88C();
            v83 = *v118;
            (*v118)(v80, v81);
            if (v82)
            {
              break;
            }

            v78 = (v78 + 1) & v79;
            if (((*(v75 + 56 + ((v78 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v78) & 1) == 0)
            {
              goto LABEL_55;
            }
          }

          v83(v106, v107);
        }

        else
        {
LABEL_55:
          v84 = v115;
          v85 = v109;
          swift_beginAccess();
          v86 = sub_2615D6A0C(v106);
          if (v87)
          {
            v88 = v86;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v90 = *&v85[v84];
            v119 = v90;
            *&v85[v84] = 0x8000000000000000;
            if (!isUniquelyReferenced_nonNull_native)
            {
              sub_261616D34();
              v90 = v119;
            }

            (*v118)(*(v90 + 48) + v88 * v117, v107);

            sub_26161E104(v88, v90);
            *&v85[v84] = v90;
          }

          swift_endAccess();
          (*v118)(v106, v107);
        }

        v67 = v111;
        v63 = v112;
      }

      while (v66);
    }
  }

  __break(1u);
LABEL_65:
  result = sub_26162BC9C();
  __break(1u);
  return result;
}

id sub_26161C62C(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 16);
  v2 = (a1 + 16);
  v3 = v4;
  if (v4 == 1)
  {
    if (a2)
    {
      if (a2 >> 62)
      {
        goto LABEL_18;
      }

      for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; v2 = v15)
      {
        v20 = v2;
        v7 = 0;
        while (1)
        {
          if ((a2 & 0xC000000000000001) != 0)
          {
            v8 = MEMORY[0x266706D50](v7, a2);
            v9 = v7 + 1;
            if (__OFADD__(v7, 1))
            {
LABEL_14:
              __break(1u);
              goto LABEL_15;
            }

            goto LABEL_9;
          }

          if (v7 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            break;
          }

          v8 = *(a2 + 8 * v7 + 32);
          v9 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
            goto LABEL_14;
          }

LABEL_9:
          v3 = v8;
          v10 = [v3 bundleIdentifier];
          v11 = sub_26162B8CC();
          v13 = v12;

          LOBYTE(v10) = sub_261618D44(0x6C7070612E6D6F63, 0xEA00000000002E65, v11, v13);

          if ((v10 & 1) == 0)
          {
            goto LABEL_16;
          }

          ++v7;
          if (v9 == i)
          {
            v3 = 0;
LABEL_16:
            v2 = v20;
            goto LABEL_20;
          }
        }

        __break(1u);
LABEL_18:
        v15 = v2;
        i = sub_26162BBEC();
      }
    }

    v3 = 0;
LABEL_20:
    v16 = v2;
    swift_beginAccess();
    v17 = *v16;
    *v16 = v3;
    v18 = v3;
    sub_2615DC16C(v17);
  }

  else
  {
LABEL_15:
    v14 = v3;
  }

  return v3;
}

id sub_26161C7C0(uint64_t a1, void *a2)
{
  v3 = v2;
  v47 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEB5358, &qword_261631110);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v43 - v6;
  v8 = type metadata accessor for ThumbnailExtensionMonitor.Predicate(0);
  MEMORY[0x28223BE20](v8 - 8);
  v48 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_26162B3BC();
  v49 = *(v46 - 8);
  v10 = MEMORY[0x28223BE20](v46);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v43 - v13;
  v15 = sub_26162B82C();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = (&v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = *(v3 + OBJC_IVAR___QLThumbnailExtensionMonitor_queue);
  *v18 = v19;
  (*(v16 + 104))(v18, *MEMORY[0x277D85200], v15);
  v20 = v19;
  v21 = sub_26162B83C();
  result = (*(v16 + 8))(v18, v15);
  if (v21)
  {
    v23 = [a2 uniqueIdentifier];
    sub_26162B3AC();

    v24 = OBJC_IVAR___QLThumbnailExtensionMonitor_extensionByIdentifier;
    swift_beginAccess();
    v25 = *(v3 + v24);
    v26 = v49;
    if (*(v25 + 16))
    {

      v27 = sub_2615D6A0C(v14);
      if (v28)
      {
        v29 = *(v26 + 8);
        v30 = *(*(v25 + 56) + 8 * v27);
        v31 = v14;
        v32 = v46;
        v29(v31, v46);

LABEL_7:
        v41 = v48;
        sub_2615D694C(v47, v48);
        v42 = [a2 uniqueIdentifier];
        sub_26162B3AC();

        (*(v26 + 56))(v7, 0, 1, v32);
        swift_beginAccess();
        sub_261618EA0(v7, v41);
        swift_endAccess();
        return v30;
      }
    }

    v44 = *(v26 + 8);
    v45 = v7;
    v33 = v14;
    v32 = v46;
    v44(v33, v46);
    v34 = objc_allocWithZone(type metadata accessor for ThumbnailExtension(0));
    v35 = a2;
    v36 = sub_26162021C(v35);

    v37 = [v35 uniqueIdentifier];
    sub_26162B3AC();

    v26 = v49;
    swift_beginAccess();
    v38 = v36;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v50 = *(v3 + v24);
    *(v3 + v24) = 0x8000000000000000;
    sub_2616167EC(v38, v12, isUniquelyReferenced_nonNull_native);
    v40 = v12;
    v30 = v38;
    v44(v40, v32);
    v7 = v45;
    *(v3 + v24) = v50;
    swift_endAccess();
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_26161CCCC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEB5388, &qword_261631138);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_26162B4FC();
  __swift_allocate_value_buffer(v3, qword_27FEB6400);
  v4 = __swift_project_value_buffer(v3, qword_27FEB6400);
  sub_26162B50C();
  v5 = *(v3 - 8);
  result = (*(v5 + 48))(v2, 1, v3);
  if (result != 1)
  {
    return (*(v5 + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

uint64_t sub_26161CDFC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0x746C7561666564;
  if (v2 != 1)
  {
    v4 = 1751607656;
    v3 = 0xE400000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 7827308;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  v7 = 0xE700000000000000;
  v8 = 0x746C7561666564;
  if (*a2 != 1)
  {
    v8 = 1751607656;
    v7 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 7827308;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE300000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_26162BC7C();
  }

  return v11 & 1;
}

uint64_t sub_26161CEE8()
{
  sub_26162BCEC();
  sub_26162B8EC();

  return sub_26162BD1C();
}

double sub_26161CF7C(uint64_t a1)
{
  sub_26162B8EC();

  return result;
}

uint64_t sub_26161CFFC(uint64_t a1)
{
  sub_26162BCEC();
  sub_26162B8EC();

  return sub_26162BD1C();
}

unint64_t sub_26161D08C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2616201D0(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_26161D0BC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x746C7561666564;
  if (v2 != 1)
  {
    v5 = 1751607656;
    v4 = 0xE400000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 7827308;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t ThumbnailExtension.generatorIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR___QLThumbnailExtension_generatorIdentifier);

  return v1;
}

uint64_t ThumbnailExtension.generatorVersion.getter()
{
  v1 = *(v0 + OBJC_IVAR___QLThumbnailExtension_generatorVersion);

  return v1;
}

uint64_t sub_26161D304()
{
  v1 = v0;
  v2 = [v0 description];
  v3 = sub_26162B8CC();
  v5 = v4;

  MEMORY[0x266706AF0](v3, v5);

  MEMORY[0x266706AF0](8250, 0xE200000000000000);
  MEMORY[0x266706AF0](*&v1[OBJC_IVAR___QLThumbnailExtension_generatorIdentifier], *&v1[OBJC_IVAR___QLThumbnailExtension_generatorIdentifier + 8]);
  MEMORY[0x266706AF0](2112032, 0xE300000000000000);
  sub_26162B41C();
  sub_26162BBCC();
  return 0;
}

id sub_26161D41C@<X0>(void **a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *a1;
  if (*a1)
  {
    *a3 = v4;
  }

  else
  {
    v7 = [objc_allocWithZone(MEMORY[0x277CCABD8]) init];
    sub_26162BB4C();

    MEMORY[0x266706AF0](*(a2 + OBJC_IVAR___QLThumbnailExtension_generatorIdentifier), *(a2 + OBJC_IVAR___QLThumbnailExtension_generatorIdentifier + 8));
    v8 = sub_26162B89C();

    [v7 setName_];

    [v7 setMaxConcurrentOperationCount_];
    *a1 = v7;
    *a3 = v7;
    v9 = v7;
    v4 = 0;
  }

  return v4;
}

id ThumbnailExtension.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_26161D604(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_26161D880(uint64_t a1)
{
  result = sub_26162B41C();
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

uint64_t getEnumTagSinglePayload for ThumbnailExtension.ConcurrencyLevel(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ThumbnailExtension.ConcurrencyLevel(uint64_t result, unsigned int a2, unsigned int a3)
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

void sub_26161DBAC(uint64_t a1)
{
  sub_26162B4FC();
  if (v1 <= 0x3F)
  {
    type metadata accessor for QLExtensionMatchingType(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_26161DC84()
{
  result = qword_27FEB5348;
  if (!qword_27FEB5348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEB5348);
  }

  return result;
}

unint64_t sub_26161DCD8(uint64_t a1)
{
  v2 = sub_26162BAEC();

  return sub_26161DDB0(a1, v2);
}

unint64_t sub_26161DD1C(uint64_t a1)
{
  sub_26162B8CC();
  sub_26162BCEC();
  sub_26162B8EC();
  v2 = sub_26162BD1C();

  return sub_26161DE78(a1, v2);
}

unint64_t sub_26161DDB0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_261620874(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x266706CF0](v9, a1);
      sub_2616208D0(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_26161DE78(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_26162B8CC();
      v8 = v7;
      if (v6 == sub_26162B8CC() && v8 == v9)
      {
        break;
      }

      v11 = sub_26162BC7C();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

uint64_t sub_26161DF7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_2615D66A8(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_261617228();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = type metadata accessor for ThumbnailExtensionMonitor.Predicate(0);
    sub_2615D69B0(v10 + *(*(v11 - 8) + 72) * v7);
    v12 = *(v9 + 56);
    v13 = sub_26162B3BC();
    v20 = *(v13 - 8);
    (*(v20 + 32))(a2, v12 + *(v20 + 72) * v7, v13);
    sub_26161E424(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = sub_26162B3BC();
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

unint64_t sub_26161E104(int64_t a1, uint64_t a2)
{
  v40 = sub_26162B3BC();
  v4 = *(v40 - 8);
  result = MEMORY[0x28223BE20](v40);
  v39 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v41 = v6;
    v12 = sub_26162BADC();
    v13 = v40;
    v6 = v41;
    v14 = v11;
    v38 = (v12 + 1) & v11;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v36 = a2 + 64;
    v37 = v16;
    v17 = *(v15 + 56);
    v35 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v10;
      v20 = v39;
      v21 = v14;
      v22 = v15;
      v37(v39, *(v6 + 48) + v17 * v10, v13);
      sub_2615D6788(&qword_281368740, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      v23 = sub_26162B86C();
      result = (*v35)(v20, v13);
      v14 = v21;
      v24 = v23 & v21;
      if (a1 >= v38)
      {
        if (v24 >= v38 && a1 >= v24)
        {
LABEL_15:
          v6 = v41;
          v27 = *(v41 + 48);
          result = v27 + v18 * a1;
          v15 = v22;
          if (v18 * a1 < v19 || (v17 = v18, result >= v27 + v19 + v18))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v6 = v41;
            v17 = v18;
            v14 = v21;
            v8 = v36;
          }

          else
          {
            v8 = v36;
            if (v18 * a1 != v19)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v6 = v41;
              v17 = v18;
              v14 = v21;
            }
          }

          v28 = *(v6 + 56);
          v29 = (v28 + 8 * a1);
          v30 = (v28 + 8 * v10);
          if (a1 != v10 || v29 >= v30 + 1)
          {
            *v29 = *v30;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v38 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v15 = v22;
      v8 = v36;
      v17 = v18;
      v6 = v41;
LABEL_4:
      v10 = (v10 + 1) & v14;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v31 = *(v6 + 16);
  v32 = __OFSUB__(v31, 1);
  v33 = v31 - 1;
  if (v32)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v33;
    ++*(v6 + 36);
  }

  return result;
}

unint64_t sub_26161E424(int64_t a1, uint64_t a2)
{
  v30 = type metadata accessor for ThumbnailExtensionMonitor.Predicate(0);
  v4 = *(v30 - 8);
  result = MEMORY[0x28223BE20](v30);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = (sub_26162BADC() + 1) & ~v9;
    v13 = *(v4 + 72);
    v29 = a2 + 64;
    do
    {
      v14 = v13;
      v15 = v13 * v10;
      sub_2615D694C(*(a2 + 48) + v13 * v10, v7);
      sub_26162BCEC();
      sub_26162B4FC();
      sub_2615D6788(&qword_281368730, MEMORY[0x277D85578], MEMORY[0x277D85588]);
      sub_26162B87C();
      v16 = v30;
      sub_26162BD0C();
      MEMORY[0x266706EF0](*&v7[*(v16 + 24)]);
      v17 = sub_26162BD1C();
      result = sub_2615D69B0(v7);
      v18 = v17 & v11;
      if (a1 >= v12)
      {
        if (v18 < v12)
        {
          v8 = v29;
          v13 = v14;
          goto LABEL_4;
        }

        v13 = v14;
        if (a1 >= v18)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v13 = v14;
        if (v18 >= v12 || a1 >= v18)
        {
LABEL_11:
          if (v13 * a1 < v15 || *(a2 + 48) + v13 * a1 >= (*(a2 + 48) + v15 + v13))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v13 * a1 != v15)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v19 = *(a2 + 56);
          v20 = *(*(sub_26162B3BC() - 8) + 72);
          v21 = v20 * a1;
          result = v19 + v20 * a1;
          v22 = v20 * v10;
          v23 = v19 + v20 * v10 + v20;
          v24 = v21 < v22 || result >= v23;
          v8 = v29;
          if (v24)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v10;
          }

          else
          {
            a1 = v10;
            if (v21 != v22)
            {
              result = swift_arrayInitWithTakeBackToFront();
              a1 = v10;
            }
          }

          goto LABEL_4;
        }
      }

      v8 = v29;
LABEL_4:
      v10 = (v10 + 1) & v11;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v25 = *(a2 + 16);
  v26 = __OFSUB__(v25, 1);
  v27 = v25 - 1;
  if (v26)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v27;
    ++*(a2 + 36);
  }

  return result;
}

void *sub_26161E758(void *result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEB5268, &qword_261630E80);
  v10 = *(sub_26162B4FC() - 8);
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
  v15 = *(sub_26162B4FC() - 8);
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