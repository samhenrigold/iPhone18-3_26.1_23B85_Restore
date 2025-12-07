Swift::Void __swiftcall PromotableContent.tryToFillBestRepresentation(size:)(CGSize size)
{
  [v2 setBestRepresentation_];

  swift_unknownObjectRelease();
}

void *sub_1C1AFD12C(unint64_t a1, void *a2)
{
  v9 = sub_1C1AC1F08(&qword_1EBF07AC8, &qword_1C1B9CED0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v65 - v10;
  v12 = sub_1C1B944A8();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!(a1 >> 62))
  {
    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

    return 0;
  }

LABEL_94:
  if (!sub_1C1B953A8())
  {
    return 0;
  }

LABEL_3:
  v66 = v2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v16 = MEMORY[0x1C6907490](0, a1);
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_99;
    }

    v16 = *(a1 + 32);
    swift_unknownObjectRetain();
  }

  swift_getObjectType();
  v17 = sub_1C1B4E4EC();
  if (v17)
  {
    v18 = v17;
    if (*(v17 + 16) && (v19 = sub_1C1AA7C14(0x697463656E6E6F63, 0xEE00657079546E6FLL), (v20 & 1) != 0))
    {
      sub_1C1AAA7B8(*(v18 + 56) + 32 * v19, v74);

      if (swift_dynamicCast())
      {
        v17 = *&v73;
        goto LABEL_13;
      }
    }

    else
    {
    }

    v17 = 0;
  }

LABEL_13:
  v4 = dbl_1C1B9D310[sub_1C1B1945C(v17)];
  v2 = v16;
  v21 = sub_1C1B4E4EC();
  v22 = 0.0;
  if (v21)
  {
    v2 = v21;
    if (*(v21 + 16) && (v23 = sub_1C1AA7C14(0x74536C616E676973, 0xEE006874676E6572), (v24 & 1) != 0))
    {
      sub_1C1AAA7B8(*(v2 + 56) + 32 * v23, v74);

      if (swift_dynamicCast())
      {
        v22 = *&v73;
      }
    }

    else
    {
    }
  }

  v71 = v11;
  v72 = v16;

  v74[0] = sub_1C1B90C40(v25);
  a1 = 0;
  v26 = sub_1C1B8FF18(v74);
  v3 = v74[0];
  v5 = v22 / 100.0;
  if ((v74[0] & 0x8000000000000000) == 0 && (v74[0] & 0x4000000000000000) == 0)
  {
    v11 = *(v74[0] + 16);
    goto LABEL_22;
  }

LABEL_99:
  v26 = sub_1C1B953A8();
  v11 = v26;
LABEL_22:
  v5 = v4 * v5;
  v65 = a2;
  v67 = v15;
  if (!v11)
  {

    a2 = 0;
    LOBYTE(v15) = 1;
    v6 = 0.0;
    v4 = 0.0;
    v36 = 0.0;
    v37 = v71;
    goto LABEL_72;
  }

  v68 = v12;
  v69 = v13;
  v13 = v3 & 0xC000000000000001;
  if ((v3 & 0xC000000000000001) != 0)
  {
    a2 = MEMORY[0x1C6907490](0, v3);
  }

  else
  {
    if (!*(v3 + 16))
    {
      __break(1u);
      goto LABEL_102;
    }

    a2 = *(v3 + 32);
    swift_unknownObjectRetain();
  }

  v27 = 0;
  v12 = 0x65746172746962;
  v70 = (v3 + 32);
  v15 = MEMORY[0x1E69E63B0];
  while (1)
  {
    if (v13)
    {
      a1 = MEMORY[0x1C6907490](v27, v3);
      v28 = (v27 + 1);
      if (__OFADD__(v27, 1))
      {
        goto LABEL_92;
      }
    }

    else
    {
      if (v27 >= *(v3 + 16))
      {
        goto LABEL_93;
      }

      a1 = *(v3 + 8 * v27 + 32);
      swift_unknownObjectRetain();
      v28 = (v27 + 1);
      if (__OFADD__(v27, 1))
      {
LABEL_92:
        __break(1u);
LABEL_93:
        __break(1u);
        goto LABEL_94;
      }
    }

    swift_getObjectType();
    v2 = a1;
    v29 = sub_1C1B4E4EC();
    if (!v29)
    {
      goto LABEL_40;
    }

    v2 = v29;
    if (!*(v29 + 16) || (v30 = sub_1C1AA7C14(0x65746172746962, 0xE700000000000000), (v31 & 1) == 0))
    {

LABEL_40:
      v26 = swift_unknownObjectRelease();
      goto LABEL_41;
    }

    sub_1C1AAA7B8(*(v2 + 56) + 32 * v30, v74);

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_40;
    }

    if (v73 > v5)
    {
      break;
    }

    v26 = swift_unknownObjectRelease();
    a2 = a1;
LABEL_41:
    ++v27;
    if (v28 == v11)
    {
      goto LABEL_42;
    }
  }

  v26 = swift_unknownObjectRelease();
LABEL_42:
  LOBYTE(v15) = a2 == 0;
  v4 = 0.0;
  if (!a2)
  {
    v32 = v70;
LABEL_51:
    if (v13)
    {
      goto LABEL_82;
    }

    goto LABEL_52;
  }

  swift_getObjectType();
  v26 = sub_1C1B4E4EC();
  v32 = v70;
  if (!v26)
  {
    goto LABEL_51;
  }

  v33 = v26;
  if (!*(v26 + 16) || (v34 = sub_1C1AA7C14(0x65746172746962, 0xE700000000000000), (v35 & 1) == 0))
  {

    if (v13)
    {
      goto LABEL_82;
    }

    goto LABEL_52;
  }

  sub_1C1AAA7B8(*(v33 + 56) + 32 * v34, v74);

  v26 = swift_dynamicCast();
  if ((v26 & 1) == 0)
  {
    goto LABEL_51;
  }

  v4 = v73;
  if (v13)
  {
LABEL_82:
    v38 = MEMORY[0x1C6907490](0, v3);
    goto LABEL_54;
  }

LABEL_52:
  if (!*(v3 + 16))
  {
    goto LABEL_103;
  }

  v38 = *v32;
  swift_unknownObjectRetain();
LABEL_54:
  swift_getObjectType();
  v39 = sub_1C1B4E4EC();
  swift_unknownObjectRelease();
  v6 = 0.0;
  if (v39)
  {
    if (*(v39 + 16) && (v40 = sub_1C1AA7C14(0x65746172746962, 0xE700000000000000), (v41 & 1) != 0))
    {
      sub_1C1AAA7B8(*(v39 + 56) + 32 * v40, v74);

      if (swift_dynamicCast())
      {
        v6 = v73;
      }
    }

    else
    {
    }
  }

  v26 = (v11 - 1);
  if (__OFSUB__(v11, 1))
  {
LABEL_102:
    __break(1u);
LABEL_103:
    __break(1u);
LABEL_104:
    MEMORY[0x1C6907490](v26, v3);
LABEL_65:

    swift_getObjectType();
    v42 = sub_1C1B4E4EC();
    swift_unknownObjectRelease();
    v36 = 0.0;
    v13 = v69;
    v37 = v71;
    if (v42)
    {
      if (*(v42 + 16))
      {
        v43 = sub_1C1AA7C14(v12, 0xE700000000000000);
        if (v44)
        {
          sub_1C1AAA7B8(*(v42 + 56) + 32 * v43, v74);

          v45 = swift_dynamicCast();
          v12 = v68;
          if (v45)
          {
            v36 = v73;
          }

LABEL_72:
          v46 = MEMORY[0x1E69E63B0];
          sub_1C1AC53E4();
          v47 = sub_1C1B95298();
          v48 = sub_1C1B95138();
          sub_1C1AC1F08(&qword_1EBF08EF0, &unk_1C1B9AF80);
          v49 = swift_allocObject();
          *(v49 + 16) = xmmword_1C1B9D2F0;
          v50 = MEMORY[0x1E69E6438];
          *(v49 + 56) = v46;
          *(v49 + 64) = v50;
          *(v49 + 32) = v5;
          *(v49 + 96) = v46;
          *(v49 + 104) = v50;
          *(v49 + 72) = v36;
          *(v49 + 136) = v46;
          *(v49 + 144) = v50;
          *(v49 + 112) = v6;
          *(v49 + 176) = v46;
          *(v49 + 184) = v50;
          *(v49 + 152) = v4;
          sub_1C1B94B98("Max allowable bitrate: %{public}f, max provided bitrate: %{public}f, min provided bitrate: %{public}f, selected bitrate: %{public}f", 131, 2, &dword_1C1AA2000, v47, v48, v49, v65, v66);

          if ((v15 & 1) == 0)
          {
            swift_getObjectType();
            v51 = sub_1C1B4E4EC();
            if (v51)
            {
              v52 = v51;
              if (*(v51 + 16))
              {
                v53 = sub_1C1AA7C14(0x4C52557465737361, 0xE800000000000000);
                if (v54)
                {
                  sub_1C1AAA7B8(*(v52 + 56) + 32 * v53, v74);

                  v55 = swift_dynamicCast();
                  (*(v13 + 56))(v37, v55 ^ 1u, 1, v12);
                  if ((*(v13 + 48))(v37, 1, v12) == 1)
                  {
                    swift_unknownObjectRelease();
LABEL_80:
                    sub_1C1AA7C8C(v37, &qword_1EBF07AC8, &qword_1C1B9CED0);
                    return a2;
                  }

                  v56 = v67;
                  (*(v13 + 32))(v67, v37, v12);
                  v57 = sub_1C1B4E4EC();
                  if (v57)
                  {
                    v58 = v57;
                    if (!*(v57 + 16) || (v59 = sub_1C1AA7C14(0x6E6F697461727564, 0xE800000000000000), (v60 & 1) == 0))
                    {

                      goto LABEL_91;
                    }

                    sub_1C1AAA7B8(*(v58 + 56) + 32 * v59, v74);

                    if (swift_dynamicCast())
                    {
                      v61 = v73;
                      [a2 adSize];
                      sub_1C1AFE5B4(v56, v4, v61, v62, v63);
LABEL_91:
                      swift_unknownObjectRelease();
                      (*(v13 + 8))(v56, v12);
                      return a2;
                    }
                  }

                  (*(v13 + 8))(v56, v12);
                  swift_unknownObjectRelease();
                  return a2;
                }
              }
            }
          }

          swift_unknownObjectRelease();
          (*(v13 + 56))(v37, 1, 1, v12);
          goto LABEL_80;
        }
      }
    }

    v12 = v68;
    goto LABEL_72;
  }

  if (v13)
  {
    goto LABEL_104;
  }

  if ((v26 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v26 < *(v3 + 16))
  {
    swift_unknownObjectRetain();
    goto LABEL_65;
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_1C1AFDB5C(unint64_t a1, uint64_t a2, double a3, double a4)
{
  v5 = v4;
  v25 = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
LABEL_17:
    v9 = sub_1C1B953A8();
    if (v9)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
LABEL_3:
      v10 = 0;
      v11 = a1 & 0xC000000000000001;
      v23 = v9;
      while (1)
      {
        if (v11)
        {
          v12 = MEMORY[0x1C6907490](v10, a1);
          v13 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            goto LABEL_13;
          }
        }

        else
        {
          if (v10 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_17;
          }

          v12 = *(a1 + 8 * v10 + 32);
          swift_unknownObjectRetain();
          v13 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
LABEL_13:
            __break(1u);
LABEL_14:
            v14 = v25;
            if ((v25 & 0x8000000000000000) == 0)
            {
              goto LABEL_19;
            }

            goto LABEL_23;
          }
        }

        v24 = v12;
        if (sub_1C1AFDE38(&v24, v4, a3, a4))
        {
          sub_1C1B954F8();
          sub_1C1B95528();
          sub_1C1B95538();
          sub_1C1B95508();
          v9 = v23;
          v11 = a1 & 0xC000000000000001;
        }

        else
        {
          swift_unknownObjectRelease();
        }

        ++v10;
        if (v13 == v9)
        {
          goto LABEL_14;
        }
      }
    }
  }

  v14 = MEMORY[0x1E69E7CC0];
  if ((MEMORY[0x1E69E7CC0] & 0x8000000000000000) != 0)
  {
    goto LABEL_23;
  }

LABEL_19:
  if ((v14 & 0x4000000000000000) != 0)
  {
LABEL_23:
    if (sub_1C1B953A8())
    {
      return v14;
    }

    goto LABEL_21;
  }

  if (!*(v14 + 16))
  {
LABEL_21:
    v15 = sub_1C1B95138();
    sub_1C1AC53E4();
    v16 = sub_1C1B95298();
    sub_1C1AC1F08(&qword_1EBF08EF0, &unk_1C1B9AF80);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1C1B98E60;
    v18 = [v5 identifier];
    v19 = sub_1C1B94D88();
    v21 = v20;

    *(v17 + 56) = MEMORY[0x1E69E6158];
    *(v17 + 64) = sub_1C1AA5E7C();
    *(v17 + 32) = v19;
    *(v17 + 40) = v21;
    sub_1C1B94BA8(v15, &dword_1C1AA2000, v16, "[PC] No eligible representations found for %{public}@", 53, 2, v17);
  }

  return v14;
}

BOOL sub_1C1AFDE38(void **a1, void *a2, double a3, double a4)
{
  v7 = *a1;
  v8 = sub_1C1B95138();
  sub_1C1AC53E4();
  v9 = sub_1C1B95298();
  sub_1C1AC1F08(&qword_1EBF08EF0, &unk_1C1B9AF80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1C1B9C9C0;
  v11 = MEMORY[0x1E69E7DE0];
  *(v10 + 56) = MEMORY[0x1E69E7DE0];
  v12 = sub_1C1AFC370();
  *(v10 + 64) = v12;
  *(v10 + 32) = a3;
  *(v10 + 96) = v11;
  *(v10 + 104) = v12;
  *(v10 + 72) = a4;
  [v7 adSize];
  *(v10 + 136) = v11;
  *(v10 + 144) = v12;
  *(v10 + 112) = v13;
  [v7 adSize];
  *(v10 + 176) = v11;
  *(v10 + 184) = v12;
  *(v10 + 152) = v14;
  v15 = [a2 identifier];
  v16 = sub_1C1B94D88();
  v18 = v17;

  *(v10 + 216) = MEMORY[0x1E69E6158];
  *(v10 + 224) = sub_1C1AA5E7C();
  *(v10 + 192) = v16;
  *(v10 + 200) = v18;
  sub_1C1B94BA8(v8, &dword_1C1AA2000, v9, "[PC] Computing best rep for size w: %{public}g, h: %{public}g for against ad w: %{public}g, h: %{public}g identifier %{public}@", 127, 2, v10);

  [v7 adSize];
  if (v19 > a3)
  {
    return 0;
  }

  [v7 adSize];
  return v21 <= a4;
}

BOOL sub_1C1AFE010(void **a1, void **a2)
{
  v5 = sub_1C1B945F8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v10 = *a2;
  swift_getObjectType();
  v11 = sub_1C1B4E4EC();
  if (v11)
  {
    v12 = v11;
    if (!*(v11 + 16))
    {
      goto LABEL_10;
    }

    v13 = sub_1C1AA7C14(0x65746172746962, 0xE700000000000000);
    if ((v14 & 1) == 0)
    {
      goto LABEL_10;
    }

    sub_1C1AAA7B8(*(v12 + 56) + 32 * v13, v50);

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_11;
    }

    v15 = v49;
    swift_getObjectType();
    v16 = sub_1C1B4E4EC();
    if (!v16)
    {
      goto LABEL_11;
    }

    v17 = v16;
    if (!*(v16 + 16) || (v18 = sub_1C1AA7C14(0x65746172746962, 0xE700000000000000), (v19 & 1) == 0))
    {
LABEL_10:

      goto LABEL_11;
    }

    sub_1C1AAA7B8(*(v17 + 56) + 32 * v18, v50);

    if (swift_dynamicCast())
    {
      return v15 < v49;
    }
  }

LABEL_11:
  v21 = sub_1C1B4E4EC();
  if (v21)
  {
    v22 = v21;
    if (*(v21 + 16) && (v23 = sub_1C1AA7C14(0x65746172746962, 0xE700000000000000), (v24 & 1) != 0))
    {
      sub_1C1AAA7B8(*(v22 + 56) + 32 * v23, v50);

      if (swift_dynamicCast())
      {
        if (qword_1EDE6C4E0 != -1)
        {
          swift_once();
        }

        v25 = sub_1C1B94BE8();
        sub_1C1AB4454(v25, qword_1EDE6D058);
        swift_unknownObjectRetain();
        v26 = sub_1C1B94BC8();
        v27 = sub_1C1B95128();
        swift_unknownObjectRelease();
        if (os_log_type_enabled(v26, v27))
        {
          v28 = swift_slowAlloc();
          v29 = swift_slowAlloc();
          v48 = v2;
          v30 = v29;
          v50[0] = v29;
          *v28 = 136446210;
          v31 = [v9 id];
          sub_1C1B945D8();

          sub_1C1AFE7F8();
          v32 = sub_1C1B95858();
          v34 = v33;
          (*(v6 + 8))(v8, v5);
          v35 = sub_1C1AC7650(v32, v34, v50);

          *(v28 + 4) = v35;
          _os_log_impl(&dword_1C1AA2000, v26, v27, "Representation [%{public}s]: No valid bitrate.", v28, 0xCu);
          sub_1C1AA86F8(v30);
          MEMORY[0x1C6908230](v30, -1, -1);
          MEMORY[0x1C6908230](v28, -1, -1);
        }

        v36 = sub_1C1B94D78();
        APSimulateCrash();

        return 1;
      }
    }

    else
    {
    }
  }

  if (qword_1EDE6C4E0 != -1)
  {
    swift_once();
  }

  v37 = sub_1C1B94BE8();
  sub_1C1AB4454(v37, qword_1EDE6D058);
  swift_unknownObjectRetain();
  v38 = sub_1C1B94BC8();
  v39 = sub_1C1B95128();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v48 = v2;
    v42 = v41;
    v50[0] = v41;
    *v40 = 136446210;
    v43 = [v10 id];
    sub_1C1B945D8();

    sub_1C1AFE7F8();
    v44 = sub_1C1B95858();
    v46 = v45;
    (*(v6 + 8))(v8, v5);
    v47 = sub_1C1AC7650(v44, v46, v50);

    *(v40 + 4) = v47;
    _os_log_impl(&dword_1C1AA2000, v38, v39, "Representation [%{public}s]: No valid bitrate.", v40, 0xCu);
    sub_1C1AA86F8(v42);
    MEMORY[0x1C6908230](v42, -1, -1);
    MEMORY[0x1C6908230](v40, -1, -1);
  }

  return 0;
}

uint64_t sub_1C1AFE5B4(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v6 = v5;
  if (![v5 mediaMetricHelper] || (sub_1C1AC1F08(&qword_1EBF088D0, &qword_1C1B9D308), sub_1C1AC1F08(&qword_1EBF088D8, &qword_1C1BA46E0), (swift_dynamicCast() & 1) == 0))
  {
    v25 = 0;
    v23 = 0u;
    v24 = 0u;
    goto LABEL_9;
  }

  if (!*(&v24 + 1))
  {
LABEL_9:
    sub_1C1AA7C8C(&v23, &qword_1EBF088C8, &qword_1C1B9D300);
    v16 = sub_1C1B95128();
    sub_1C1AC53E4();
    v17 = sub_1C1B95298();
    sub_1C1AC1F08(&qword_1EBF08EF0, &unk_1C1B9AF80);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1C1B98E60;
    v19 = [v6 identifier];
    v20 = sub_1C1B94D88();
    v22 = v21;

    *(v18 + 56) = MEMORY[0x1E69E6158];
    *(v18 + 64) = sub_1C1AA5E7C();
    *(v18 + 32) = v20;
    *(v18 + 40) = v22;
    sub_1C1B94BA8(v16, &dword_1C1AA2000, v17, "[PC] (%{public}@): Cannot find media metric helper to update video quality.", 75, 2, v18);
  }

  sub_1C1AC0580(&v23, v26);
  v12 = sub_1C1AFBB40(a4 * a5 * a2 * 0.000000953674316);
  if (v13)
  {
    v14 = 0;
  }

  else
  {
    v14 = v12;
  }

  sub_1C1AAABE0(v26, v26[3]);
  sub_1C1B18484(a1, v14, a3);
  return sub_1C1AA86F8(v26);
}

unint64_t sub_1C1AFE7F8()
{
  result = qword_1EDE6B830;
  if (!qword_1EDE6B830)
  {
    sub_1C1B945F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6B830);
  }

  return result;
}

PromotedContent::ActionResult_optional __swiftcall ActionResult.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1C1B955F8();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t ActionResult.rawValue.getter()
{
  v1 = 0x73736563637573;
  if (*v0 != 1)
  {
    v1 = 0x64656C696166;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656C6C65636E6163;
  }
}

uint64_t sub_1C1AFE908(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0x73736563637573;
  if (v2 != 1)
  {
    v4 = 0x64656C696166;
    v3 = 0xE600000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x656C6C65636E6163;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE900000000000064;
  }

  v7 = 0xE700000000000000;
  v8 = 0x73736563637573;
  if (*a2 != 1)
  {
    v8 = 0x64656C696166;
    v7 = 0xE600000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x656C6C65636E6163;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE900000000000064;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1C1B95888();
  }

  return v11 & 1;
}

unint64_t sub_1C1AFEA08()
{
  result = qword_1EBF088E0;
  if (!qword_1EBF088E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF088E0);
  }

  return result;
}

uint64_t sub_1C1AFEA5C()
{
  sub_1C1B95958();
  sub_1C1B94DE8();

  return sub_1C1B959A8();
}

uint64_t sub_1C1AFEB00(uint64_t a1)
{
  sub_1C1B94DE8();
}

uint64_t sub_1C1AFEB90(uint64_t a1)
{
  sub_1C1B95958();
  sub_1C1B94DE8();

  return sub_1C1B959A8();
}

void sub_1C1AFEC3C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000064;
  v4 = 0xE700000000000000;
  v5 = 0x73736563637573;
  if (v2 != 1)
  {
    v5 = 0x64656C696166;
    v4 = 0xE600000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x656C6C65636E6163;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_1C1AFECAC(unint64_t result)
{
  if (result >= 2)
  {
    v1 = result;
    if (qword_1EDE6C4E0 != -1)
    {
      swift_once();
    }

    v2 = sub_1C1B94BE8();
    sub_1C1AB4454(v2, qword_1EDE6D058);
    v3 = sub_1C1B94BC8();
    v4 = sub_1C1B95118();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 134217984;
      *(v5 + 4) = v1;
      _os_log_impl(&dword_1C1AA2000, v3, v4, "Unable to determine APPrivacyMarkerType for APPrivacyMarkerType of type: %lu.", v5, 0xCu);
      MEMORY[0x1C6908230](v5, -1, -1);
    }

    return 0;
  }

  return result;
}

unint64_t sub_1C1AFEDB4()
{
  if (*v0)
  {
    return 0xD000000000000018;
  }

  else
  {
    return 0xD000000000000019;
  }
}

uint64_t sub_1C1AFEDEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 0xD000000000000019 && 0x80000001C1BA8C10 == a2;
  if (v5 || (sub_1C1B95888() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001C1BA8C30 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1C1B95888();

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

uint64_t sub_1C1AFEED0(uint64_t a1)
{
  v2 = sub_1C1AFF138();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C1AFEF0C(uint64_t a1)
{
  v2 = sub_1C1AFF138();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ClientStyle.encode(to:)(void *a1)
{
  v4 = sub_1C1AC1F08(&qword_1EBF088E8, &qword_1C1B9D430);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - v6;
  v8 = *v1;
  v10 = v1[1];
  sub_1C1AAABE0(a1, a1[3]);
  sub_1C1AFF138();

  sub_1C1B95A18();
  v12 = v8;
  v11 = 0;
  sub_1C1AC1F08(&qword_1EBF088F0, &qword_1C1B9D438);
  sub_1C1AFF430(&qword_1EDE6A6F8, sub_1C1AFF18C, MEMORY[0x1E69E6300]);
  sub_1C1B95808();

  if (!v2)
  {
    v12 = v10;
    v11 = 1;
    sub_1C1B95808();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_1C1AFF138()
{
  result = qword_1EDE6B270;
  if (!qword_1EDE6B270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6B270);
  }

  return result;
}

unint64_t sub_1C1AFF18C()
{
  result = qword_1EDE6B280;
  if (!qword_1EDE6B280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6B280);
  }

  return result;
}

uint64_t ClientStyle.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_1C1AC1F08(&qword_1EBF088F8, &qword_1C1B9D440);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  sub_1C1AAABE0(a1, a1[3]);
  sub_1C1AFF138();
  sub_1C1B95A08();
  if (v2)
  {
    return sub_1C1AA86F8(a1);
  }

  v13 = a2;
  sub_1C1AC1F08(&qword_1EBF088F0, &qword_1C1B9D438);
  v14 = 0;
  sub_1C1AFF430(&qword_1EDE6A6F0, sub_1C1AFF4A8, MEMORY[0x1E69E6330]);
  sub_1C1B956F8();
  v9 = v15;
  v14 = 1;
  sub_1C1B956F8();
  (*(v6 + 8))(v8, v5);
  v10 = v15;
  v11 = v13;
  *v13 = v9;
  v11[1] = v10;

  sub_1C1AA86F8(a1);
}

uint64_t sub_1C1AFF430(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1C1AC3404(&qword_1EBF088F0, &qword_1C1B9D438);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C1AFF4A8()
{
  result = qword_1EDE6B278;
  if (!qword_1EDE6B278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6B278);
  }

  return result;
}

uint64_t sub_1C1AFF52C(uint64_t *a1, int a2)
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

uint64_t sub_1C1AFF574(uint64_t result, int a2, int a3)
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

unint64_t sub_1C1AFF5D4()
{
  result = qword_1EBF08900[0];
  if (!qword_1EBF08900[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBF08900);
  }

  return result;
}

unint64_t sub_1C1AFF62C()
{
  result = qword_1EDE6B260;
  if (!qword_1EDE6B260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6B260);
  }

  return result;
}

unint64_t sub_1C1AFF684()
{
  result = qword_1EDE6B268;
  if (!qword_1EDE6B268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6B268);
  }

  return result;
}

uint64_t sub_1C1AFF728@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  *a8 = a1;
  *(a8 + 1) = a2;
  v12 = type metadata accessor for TelemetryPipelineTransformer.AppstoreAdData(0, a6, a7, a4);
  v13 = *(v12 + 36);
  v14 = sub_1C1B94588();
  result = (*(*(v14 - 8) + 32))(&a8[v13], a3, v14);
  v16 = &a8[*(v12 + 40)];
  *v16 = a4;
  *(v16 + 1) = a5;
  return result;
}

unint64_t sub_1C1AFF7C8()
{
  v1 = *v0;
  if (v0[17])
  {
    v2 = v0[17];
  }

  else
  {
    v4 = *(v1 + 80);
    v3 = *(v1 + 88);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v7 = type metadata accessor for TelemetryPipelineTransformer.AppstoreAdData(255, v4, v3, v6);
    swift_getTupleTypeMetadata2();
    v8 = sub_1C1B94F18();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v2 = sub_1C1B20B18(v8, AssociatedTypeWitness, v7, AssociatedConformanceWitness);

    v0[17] = v2;
  }

  return v2;
}

uint64_t sub_1C1AFF90C(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  *(v4 + 32) = a2;
  *(v4 + 40) = v3;
  *(v4 + 24) = a1;
  v6 = *v3;
  v7 = sub_1C1B94818();
  *(v4 + 48) = v7;
  *(v4 + 56) = *(v7 - 8);
  *(v4 + 64) = swift_task_alloc();
  v8 = sub_1C1B947B8();
  *(v4 + 72) = v8;
  *(v4 + 80) = *(v8 - 8);
  *(v4 + 88) = swift_task_alloc();
  sub_1C1B94588();
  *(v4 + 96) = swift_task_alloc();
  v9 = *(v6 + 80);
  *(v4 + 104) = v9;
  v10 = *(v6 + 88);
  *(v4 + 112) = v10;
  *(v4 + 120) = type metadata accessor for TelemetryPipelineTransformer.AppstoreAdData(255, v9, v10, v11);
  sub_1C1B952D8();
  *(v4 + 128) = swift_task_alloc();
  *(v4 + 136) = *(v10 + 8);
  *(v4 + 144) = swift_getAssociatedTypeWitness();
  *(v4 + 152) = swift_task_alloc();
  v12 = sub_1C1B949F8();
  *(v4 + 160) = v12;
  *(v4 + 168) = *(v12 - 8);
  *(v4 + 176) = swift_task_alloc();
  *(v4 + 184) = swift_task_alloc();
  *(v4 + 217) = *a3;

  return MEMORY[0x1EEE6DFA0](sub_1C1AFFB98, 0, 0);
}

uint64_t sub_1C1AFFB98()
{
  v1 = *(v0 + 217);
  v2 = *(v0 + 40);
  v3 = v2[5];
  v4 = v2[6];
  sub_1C1AAABE0(v2 + 2, v3);
  *(v0 + 216) = v1;
  v9 = (*(v4 + 24) + **(v4 + 24));
  v5 = swift_task_alloc();
  *(v0 + 192) = v5;
  *v5 = v0;
  v5[1] = sub_1C1AFFCE0;
  v7 = *(v0 + 24);
  v6 = *(v0 + 32);

  return v9(v7, v6, v0 + 216, v3, v4);
}

uint64_t sub_1C1AFFCE0(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 200) = a1;
  *(v3 + 208) = v1;

  if (v1)
  {
    v4 = sub_1C1B002A0;
  }

  else
  {
    v4 = sub_1C1AFFDF4;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1C1AFFDF4()
{
  sub_1C1B01524(MEMORY[0x1E69E7CC0]);
  sub_1C1B949E8();

  if (sub_1C1B94F58())
  {
    v1 = 0;
    v24 = v0[25] + 32;
    v25 = v0[5];
    v23 = v0[15] - 8;
    v21 = (v0[21] + 16);
    v22 = (v0[7] + 8);
    v20 = (v0[10] + 8);
    do
    {
      v2 = sub_1C1B94F38();
      sub_1C1B94EF8();
      if (v2)
      {
        v3 = *(v24 + 8 * v1);
        swift_unknownObjectRetain();
        v4 = v1 + 1;
        if (__OFADD__(v1, 1))
        {
          goto LABEL_9;
        }
      }

      else
      {
        v3 = sub_1C1B95488();
        v4 = v1 + 1;
        if (__OFADD__(v1, 1))
        {
LABEL_9:
          __break(1u);
          break;
        }
      }

      v31 = v0[23];
      v29 = v0[22];
      v30 = v0[20];
      v5 = v0[16];
      v26 = v0[15];
      v7 = v0[13];
      v6 = v0[14];
      v8 = v0[12];
      v32 = v0[11];
      v33 = v0[9];
      v27 = v0[8];
      v28 = v0[6];
      v0[2] = v3;
      v34 = v4;
      sub_1C1B95478();
      v35 = v1;
      v9 = sub_1C1B94898();
      v11 = v10;
      sub_1C1B948B8();
      v12 = sub_1C1B948A8();
      sub_1C1AFF728(v9, v11, v8, v12, v13, v7, v6, v5);
      (*(*v23 + 56))(v5, 0, 1, v26);
      v36 = sub_1C1AFF7C8();
      swift_getAssociatedConformanceWitness();
      sub_1C1B94CF8();
      sub_1C1B94D18();
      v25[17] = v36;

      sub_1C1B94898();
      sub_1C1B94808();
      sub_1C1B947F8();
      (*v22)(v27, v28);
      sub_1C1B948A8();
      (*v21)(v29, v31, v30);
      sub_1C1AA7D00(MEMORY[0x1E69E7CC0]);
      sub_1C1B947A8();
      sub_1C1AAABE0(v25 + 7, v25[10]);
      sub_1C1B016A4(&qword_1EBF08A10, MEMORY[0x1E6989D60], MEMORY[0x1E6989D58]);
      sub_1C1B94738();
      swift_unknownObjectRelease();
      (*v20)(v32, v33);
      v1 = v35 + 1;
    }

    while (v34 != sub_1C1B94F58());
  }

  v14 = v0[23];
  v15 = v0[20];
  v16 = v0[21];

  (*(v16 + 8))(v14, v15);

  v17 = v0[1];
  v18 = v0[25];

  return v17(v18);
}

uint64_t sub_1C1B002A0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C1B00354(uint64_t a1, unsigned int a2)
{
  v3 = v2;
  v71 = a2;
  v70 = a1;
  v4 = *v2;
  v5 = sub_1C1B94818();
  v54 = *(v5 - 8);
  v55 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v53 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C1B94868();
  v58 = *(v7 - 8);
  v59 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v57 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_1C1B94A18();
  v61 = *(v67 - 8);
  v9 = MEMORY[0x1EEE9AC00](v67);
  v60 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v56 = &v50 - v11;
  v12 = sub_1C1B94588();
  v63 = *(v12 - 8);
  v64 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v62 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for TelemetryPipelineTransformer.AppstoreAdData(255, *(v4 + 80), *(v4 + 88), v14);
  v69 = sub_1C1B952D8();
  v16 = *(v69 - 8);
  v17 = MEMORY[0x1EEE9AC00](v69);
  v66 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v50 - v20;
  v22 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v68 = &v50 - v23;
  sub_1C1AFF7C8();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v25 = v70;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v65 = AssociatedTypeWitness;
  sub_1C1B94D08();

  if ((*(v22 + 48))(v21, 1, v15) == 1)
  {
    (*(v16 + 8))(v21, v69);
  }

  else
  {
    v50 = AssociatedConformanceWitness;
    v52 = v16;
    v27 = v71;
    v51 = v22;
    v28 = *(v22 + 32);
    v29 = v68;
    v28(v68, v21, v15);
    sub_1C1AAABE0(v2 + 12, v2[15]);
    v30 = v62;
    sub_1C1B94578();
    sub_1C1B94528();
    v32 = v31;
    (*(v63 + 8))(v30, v64);
    v33 = objc_allocWithZone(MEMORY[0x1E696AD98]);
    v34 = [v33 initWithDouble_];
    sub_1C1B949B8();

    v35 = v29;
    if (v27 != 4)
    {
      v64 = v3;
      sub_1C1B01524(MEMORY[0x1E69E7CC0]);
      v36 = v56;
      sub_1C1B94A08();
      v37 = sub_1C1B94958();
      v38 = v67;
      if (v37)
      {
        sub_1C1B01524(MEMORY[0x1E69E7CC0]);
        v39 = v60;
        sub_1C1B94A08();
        v40 = v61;
        (*(v61 + 8))(v36, v38);
        (*(v40 + 32))(v36, v39, v38);
      }

      v41 = v53;
      sub_1C1B94808();
      sub_1C1B947F8();
      (*(v54 + 8))(v41, v55);
      v42 = v61;
      (*(v61 + 16))(v60, v36, v38);

      sub_1C1AA7D00(MEMORY[0x1E69E7CC0]);
      v43 = v57;
      sub_1C1B94858();
      v3 = v64;
      sub_1C1AAABE0(v64 + 7, v64[10]);
      sub_1C1B016A4(&qword_1EBF08A08, MEMORY[0x1E6989DB8], MEMORY[0x1E6989DB0]);
      v44 = v36;
      v45 = v59;
      sub_1C1B94738();
      (*(v58 + 8))(v43, v45);
      (*(v42 + 8))(v44, v67);
      v35 = v68;
    }

    v72 = sub_1C1AFF7C8();
    sub_1C1B94CF8();
    v46 = v66;
    v25 = v70;
    sub_1C1B94CD8();
    (*(v52 + 8))(v46, v69);
    v3[17] = v72;

    (*(v51 + 8))(v35, v15);
  }

  v47 = v3[5];
  v48 = v3[6];
  sub_1C1AAABE0(v3 + 2, v47);
  return (*(v48 + 32))(v25, v71, v47, v48);
}

unint64_t sub_1C1B00B68()
{
  v1 = *v0;
  v50 = v0 + 7;
  v49 = sub_1C1B94818();
  v2 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v48 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1C1B94868();
  v4 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v46 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v1 + 88);
  v35 = *(v1 + 80);
  v54 = type metadata accessor for TelemetryPipelineTransformer.AppstoreAdData(0, v35, v6, v7);
  v8 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v44 = &v34 - v9;
  v53 = sub_1C1B94A18();
  v10 = *(v53 - 8);
  v11 = MEMORY[0x1EEE9AC00](v53);
  v43 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v34 - v13;
  sub_1C1B01524(MEMORY[0x1E69E7CC0]);
  v52 = v14;
  sub_1C1B94A08();
  v55 = v0;
  result = sub_1C1AFF7C8();
  v16 = 0;
  v34 = *(v6 + 8);
  v17 = *(result + 64);
  v37 = result + 64;
  v51 = result;
  v18 = 1 << *(result + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v17;
  v21 = (v18 + 63) >> 6;
  v41 = (v2 + 8);
  v42 = v8 + 16;
  v45 = v8;
  v40 = v8 + 8;
  v36 = v10;
  v38 = (v4 + 8);
  v39 = (v10 + 16);
  if ((v19 & v17) != 0)
  {
    do
    {
      v22 = v16;
LABEL_9:
      v23 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
      v24 = v44;
      v25 = v45;
      v26 = v54;
      (*(v45 + 16))(v44, *(v51 + 56) + *(v45 + 72) * (v23 | (v22 << 6)), v54);
      v57 = *v24;

      v27 = v48;
      sub_1C1B94808();
      v56 = sub_1C1B947F8();
      (*v41)(v27, v49);
      v28 = *(v25 + 8);

      v28(v24, v26);
      (*v39)(v43, v52, v53);
      v29 = v46;
      sub_1C1B94858();
      sub_1C1AAABE0(v50, v55[10]);
      sub_1C1B016A4(&qword_1EBF08A08, MEMORY[0x1E6989DB8], MEMORY[0x1E6989DB0]);
      v30 = v47;
      sub_1C1B94738();
      result = (*v38)(v29, v30);
    }

    while (v20);
  }

  while (1)
  {
    v22 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v22 >= v21)
    {

      swift_getAssociatedTypeWitness();
      swift_getAssociatedConformanceWitness();
      v31 = v55;
      v32 = v55[5];
      v33 = v55[6];
      sub_1C1AAABE0(v55 + 2, v32);
      (*(v33 + 40))(v32, v33);
      v58 = sub_1C1AFF7C8();
      sub_1C1B94CF8();
      sub_1C1B94CE8();
      v31[17] = v58;

      return (*(v36 + 8))(v52, v53);
    }

    v20 = *(v37 + 8 * v22);
    ++v16;
    if (v20)
    {
      v16 = v22;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void *sub_1C1B01170()
{
  sub_1C1AA86F8(v0 + 2);
  sub_1C1AA86F8(v0 + 7);
  sub_1C1AA86F8(v0 + 12);

  return v0;
}

uint64_t sub_1C1B011A8()
{
  sub_1C1B01170();

  return MEMORY[0x1EEE6BDC0](v0, 144, 7);
}

void sub_1C1B011FC(uint64_t a1)
{
  sub_1C1B94588();
  if (v1 <= 0x3F)
  {
    sub_1C1B012D0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C1B012D0()
{
  if (!qword_1EDE6BBC8)
  {
    v0 = sub_1C1B952D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDE6BBC8);
    }
  }
}

uint64_t sub_1C1B0132C(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1C1B013DC;

  return sub_1C1AFF90C(a1, a2, a3);
}

uint64_t sub_1C1B013DC(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

unint64_t sub_1C1B01524(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1C1AC1F08(&unk_1EBF080D0, &unk_1C1B9A6A0);
    v3 = sub_1C1B955C8();
    v4 = a1 + 32;

    while (1)
    {
      sub_1C1B01634(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_1C1AA7C14(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1C1AA7E98(&v15, (v3[7] + 32 * result));
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1C1B01634(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C1AC1F08(&qword_1EBF08340, &qword_1C1B9AF70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C1B016A4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t static ImageDownloader.shared.getter()
{
  if (qword_1EDE6B160 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1C1B01748(uint64_t a1)
{
  v2[16] = a1;
  v2[17] = v1;
  v3 = sub_1C1B944A8();
  v2[18] = v3;
  v4 = *(v3 - 8);
  v2[19] = v4;
  v2[20] = *(v4 + 64);
  v2[21] = swift_task_alloc();
  sub_1C1AC1F08(&qword_1EBF08560, &qword_1C1B9AF90);
  v2[22] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C1B01848, v1, 0);
}

uint64_t sub_1C1B01848()
{
  v1 = v0[17];
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (!*(v2 + 16))
  {
    goto LABEL_8;
  }

  v3 = v0[16];

  v4 = sub_1C1AD8BA0(v3);
  if ((v5 & 1) == 0)
  {

LABEL_8:
    v12 = v0[21];
    v11 = v0[22];
    v13 = v0[19];
    v14 = v0[17];
    v15 = v0[18];
    v16 = v0[16];
    v33 = v16;
    v17 = sub_1C1B95028();
    (*(*(v17 - 8) + 56))(v11, 1, 1, v17);
    v18 = *(v13 + 16);
    v0[26] = v18;
    v0[27] = (v13 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v18(v12, v16, v15);
    v19 = sub_1C1B031C0();
    v20 = (*(v13 + 80) + 40) & ~*(v13 + 80);
    v21 = swift_allocObject();
    *(v21 + 2) = v14;
    *(v21 + 3) = v19;
    *(v21 + 4) = v14;
    (*(v13 + 32))(&v21[v20], v12, v15);
    swift_retain_n();
    v22 = sub_1C1B02320(0, 0, v11, &unk_1C1B9D738, v21);
    v0[28] = v22;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34 = *(v1 + 112);
    *(v1 + 112) = 0x8000000000000000;
    sub_1C1AE41E0(v22, 0, v33, isUniquelyReferenced_nonNull_native);
    *(v1 + 112) = v34;
    swift_endAccess();
    v24 = swift_task_alloc();
    v0[29] = v24;
    v25 = sub_1C1B0330C();
    v26 = sub_1C1AC1F08(&qword_1EBF08A18, &qword_1C1B9D740);
    *v24 = v0;
    v24[1] = sub_1C1B01D9C;
    v27 = MEMORY[0x1E69E7288];
    v28 = v0 + 14;
    v29 = v22;
    v30 = v25;
    goto LABEL_9;
  }

  v6 = *(v2 + 56) + 16 * v4;
  v7 = *v6;
  v0[23] = *v6;
  v8 = *(v6 + 8);
  sub_1C1ADBD90(v7, v8);

  if (v8)
  {

    v9 = v0[1];

    return v9(v7);
  }

  v31 = swift_task_alloc();
  v0[24] = v31;
  v32 = sub_1C1B0330C();
  v26 = sub_1C1AC1F08(&qword_1EBF08A18, &qword_1C1B9D740);
  *v31 = v0;
  v31[1] = sub_1C1B01BF0;
  v27 = MEMORY[0x1E69E7288];
  v28 = v0 + 15;
  v29 = v7;
  v30 = v32;
LABEL_9:

  return MEMORY[0x1EEE6DA10](v28, v29, v30, v26, v27);
}

uint64_t sub_1C1B01BF0()
{
  v2 = *v1;
  *(*v1 + 200) = v0;

  v3 = *(v2 + 136);
  if (v0)
  {
    v4 = sub_1C1B01FC0;
  }

  else
  {
    v4 = sub_1C1B01D1C;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1C1B01D1C()
{
  sub_1C1AD4AEC(*(v0 + 184), 0);
  v1 = *(v0 + 120);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1C1B01D9C()
{
  v2 = *v1;
  *(*v1 + 240) = v0;

  v3 = *(v2 + 136);
  if (v0)
  {
    v4 = sub_1C1B02038;
  }

  else
  {
    v4 = sub_1C1B01EC8;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1C1B01EC8()
{
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[14];
  swift_beginAccess();
  v4 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v2 + 112);
  *(v2 + 112) = 0x8000000000000000;
  sub_1C1AE41E0(v3, 1, v1, isUniquelyReferenced_nonNull_native);
  *(v2 + 112) = v8;
  swift_endAccess();

  v6 = v0[1];

  return v6(v4);
}

uint64_t sub_1C1B01FC0()
{
  sub_1C1AD4AEC(*(v0 + 184), 0);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C1B02038()
{
  v1 = *(v0 + 168);
  (*(v0 + 208))(v1, *(v0 + 128), *(v0 + 144));
  swift_beginAccess();
  sub_1C1AD2DC8(0, 255, v1);
  swift_endAccess();
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1C1B02110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a1;
  v5[3] = a4;
  v7 = swift_task_alloc();
  v5[4] = v7;
  *v7 = v5;
  v7[1] = sub_1C1B021B0;

  return sub_1C1B02B10(a5);
}

uint64_t sub_1C1B021B0(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    v8 = *(v4 + 24);
    *(v4 + 40) = a1;

    return MEMORY[0x1EEE6DFA0](sub_1C1B022FC, v8, 0);
  }
}

uint64_t sub_1C1B02320(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1C1AC1F08(&qword_1EBF08560, &qword_1C1B9AF90);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v22 - v9;
  sub_1C1B03588(a3, v22 - v9);
  v11 = sub_1C1B95028();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_1C1AA7C8C(v10, &qword_1EBF08560, &qword_1C1B9AF90);
  }

  else
  {
    sub_1C1B95018();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1C1B94FC8();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v22[0] = a2;
      v18 = sub_1C1B94DD8() + 32;
      sub_1C1B0330C();

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_1C1AA7C8C(a3, &qword_1EBF08560, &qword_1C1B9AF90);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1C1AA7C8C(a3, &qword_1EBF08560, &qword_1C1B9AF90);
  sub_1C1B0330C();
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_1C1B025C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1C1AC1F08(&qword_1EBF08560, &qword_1C1B9AF90);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v22 - v9;
  sub_1C1B03588(a3, v22 - v9);
  v11 = sub_1C1B95028();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_1C1AA7C8C(v10, &qword_1EBF08560, &qword_1C1B9AF90);
  }

  else
  {
    sub_1C1B95018();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1C1B94FC8();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_1C1B94DD8() + 32;

      sub_1C1AC1F08(&qword_1EBF098F0, &qword_1C1B9D838);
      v19 = (v17 | v15);
      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_1C1AA7C8C(a3, &qword_1EBF08560, &qword_1C1B9AF90);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1C1AA7C8C(a3, &qword_1EBF08560, &qword_1C1B9AF90);
  sub_1C1AC1F08(&qword_1EBF098F0, &qword_1C1B9D838);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_1C1B02874(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1C1AC1F08(&qword_1EBF08560, &qword_1C1B9AF90);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v22 - v9;
  sub_1C1B03588(a3, v22 - v9);
  v11 = sub_1C1B95028();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_1C1AA7C8C(v10, &qword_1EBF08560, &qword_1C1B9AF90);
  }

  else
  {
    sub_1C1B95018();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1C1B94FC8();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_1C1B94DD8() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_1C1AA7C8C(a3, &qword_1EBF08560, &qword_1C1B9AF90);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1C1AA7C8C(a3, &qword_1EBF08560, &qword_1C1B9AF90);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_1C1B02B10(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1C1B02B30, v1, 0);
}

uint64_t sub_1C1B02B30()
{
  v0[4] = [objc_opt_self() sharedSession];
  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_1C1B02BF4;
  v2 = v0[2];

  return MEMORY[0x1EEDC6268](v2, 0);
}

uint64_t sub_1C1B02BF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  *(v5 + 48) = a1;
  *(v5 + 56) = a2;
  *(v5 + 64) = a3;
  *(v5 + 72) = v3;

  if (v3)
  {
    v6 = *(v5 + 24);
    v7 = sub_1C1B030E4;
  }

  else
  {
    v8 = *(v5 + 24);

    v7 = sub_1C1B02D1C;
    v6 = v8;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, 0);
}

uint64_t sub_1C1B02D1C()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
  sub_1C1AF5DAC(v2, v1);
  v4 = sub_1C1B944C8();
  v5 = [v3 initWithData_];

  sub_1C1AE4A00(v2, v1);
  if (v5)
  {
    v7 = *(v0 + 48);
    v6 = *(v0 + 56);

    sub_1C1AE4A00(v7, v6);
    v8 = *(v0 + 8);

    return v8(v5);
  }

  else
  {
    objc_opt_self();
    v10 = swift_dynamicCastObjCClass();
    v11 = qword_1EDE6C4E0;
    if (v10)
    {
      v12 = v10;
      v13 = *(v0 + 64);
      if (v11 == -1)
      {
        v14 = v13;
      }

      else
      {
        swift_once();
        v14 = *(v0 + 64);
      }

      v15 = sub_1C1B94BE8();
      sub_1C1AB4454(v15, qword_1EDE6D058);
      v16 = v14;
      v17 = sub_1C1B94BC8();
      v18 = sub_1C1B95128();

      v19 = os_log_type_enabled(v17, v18);
      v20 = *(v0 + 64);
      if (v19)
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        *v21 = 138412290;
        *(v21 + 4) = v12;
        *v22 = v12;
        v23 = v20;
        _os_log_impl(&dword_1C1AA2000, v17, v18, "Failed to download image with response %@.", v21, 0xCu);
        sub_1C1AA7C8C(v22, &qword_1EBF08A28, &qword_1C1B9D830);
        MEMORY[0x1C6908230](v22, -1, -1);
        MEMORY[0x1C6908230](v21, -1, -1);

        v17 = *(v0 + 64);
      }

      else
      {
      }
    }

    else
    {
      if (qword_1EDE6C4E0 != -1)
      {
        swift_once();
      }

      v24 = *(v0 + 64);
      v25 = sub_1C1B94BE8();
      sub_1C1AB4454(v25, qword_1EDE6D058);
      v26 = v24;
      v17 = sub_1C1B94BC8();
      v27 = sub_1C1B95128();

      if (os_log_type_enabled(v17, v27))
      {
        v28 = *(v0 + 64);
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        *v29 = 138412290;
        *(v29 + 4) = v28;
        *v30 = v28;
        v31 = v28;
        _os_log_impl(&dword_1C1AA2000, v17, v27, "Failed to download image with response %@.", v29, 0xCu);
        sub_1C1AA7C8C(v30, &qword_1EBF08A28, &qword_1C1B9D830);
        MEMORY[0x1C6908230](v30, -1, -1);
        MEMORY[0x1C6908230](v29, -1, -1);
      }
    }

    v32 = *(v0 + 56);
    v33 = *(v0 + 64);
    v34 = *(v0 + 48);

    sub_1C1B03534();
    swift_allocError();
    swift_willThrow();

    sub_1C1AE4A00(v34, v32);
    v35 = *(v0 + 8);

    return v35();
  }
}

uint64_t sub_1C1B030E4()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t ImageDownloader.deinit()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t ImageDownloader.__deallocating_deinit()
{

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

unint64_t sub_1C1B031C0()
{
  result = qword_1EDE6B158;
  if (!qword_1EDE6B158)
  {
    type metadata accessor for ImageDownloader();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6B158);
  }

  return result;
}

uint64_t sub_1C1B03214(uint64_t a1)
{
  v4 = *(sub_1C1B944A8() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1C1AB9A98;

  return sub_1C1B02110(a1, v6, v7, v8, v1 + v5);
}

unint64_t sub_1C1B0330C()
{
  result = qword_1EDE6A630;
  if (!qword_1EDE6A630)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDE6A630);
  }

  return result;
}

uint64_t dispatch thunk of ImageDownloader.image(from:)(uint64_t a1)
{
  v6 = (*(*v1 + 128) + **(*v1 + 128));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1C1AEE19C;

  return v6(a1);
}

uint64_t sub_1C1B0349C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1C1B034E4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

unint64_t sub_1C1B03534()
{
  result = qword_1EBF08A20;
  if (!qword_1EBF08A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08A20);
  }

  return result;
}

uint64_t sub_1C1B03588(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C1AC1F08(&qword_1EBF08560, &qword_1C1B9AF90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C1B0360C()
{
  result = qword_1EBF08A30;
  if (!qword_1EBF08A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08A30);
  }

  return result;
}

uint64_t NativeRepresentation.articleID.getter()
{
  v1 = *(v0 + OBJC_IVAR___APPCNativeRepresentation_articleID);

  return v1;
}

uint64_t NativeRepresentation.articleTitle.getter()
{
  v1 = *(v0 + OBJC_IVAR___APPCNativeRepresentation_articleTitle);

  return v1;
}

id sub_1C1B036FC(uint64_t a1, uint64_t a2, void *a3)
{
  if (*(a1 + *a3 + 8))
  {

    v3 = sub_1C1B94D78();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t NativeRepresentation.advertiserName.getter()
{
  v1 = *(v0 + OBJC_IVAR___APPCNativeRepresentation_advertiserName);

  return v1;
}

uint64_t NativeRepresentation.campaignData.getter()
{
  v1 = *(v0 + OBJC_IVAR___APPCNativeRepresentation_campaignData);

  return v1;
}

uint64_t sub_1C1B037F8()
{
  sub_1C1B95958();
  sub_1C1B94DE8();

  return sub_1C1B959A8();
}

uint64_t sub_1C1B038DC(uint64_t a1)
{
  sub_1C1B94DE8();
}

uint64_t sub_1C1B039AC(uint64_t a1)
{
  sub_1C1B95958();
  sub_1C1B94DE8();

  return sub_1C1B959A8();
}

unint64_t sub_1C1B03A8C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C1B04A94(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1C1B03ABC(uint64_t *a1@<X8>)
{
  v2 = 0xE900000000000044;
  v3 = 0x49656C6369747261;
  v4 = 0xEE00656D614E7265;
  v5 = 0x7369747265766461;
  if (*v1 != 2)
  {
    v5 = 0x6E676961706D6163;
    v4 = 0xEC00000061746144;
  }

  if (*v1)
  {
    v3 = 0x54656C6369747261;
    v2 = 0xEC000000656C7469;
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

uint64_t sub_1C1B03B5C()
{
  v1 = 0x49656C6369747261;
  v2 = 0x7369747265766461;
  if (*v0 != 2)
  {
    v2 = 0x6E676961706D6163;
  }

  if (*v0)
  {
    v1 = 0x54656C6369747261;
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

unint64_t sub_1C1B03BF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C1B04A94(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C1B03C20(uint64_t a1)
{
  v2 = sub_1C1B046E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C1B03C5C(uint64_t a1)
{
  v2 = sub_1C1B046E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id sub_1C1B03C98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, uint64_t a11, uint64_t a12, uint64_t a13, unint64_t a14, uint64_t a15)
{
  v16 = v15;
  v44 = a7;
  v45 = a8;
  v48 = a3;
  v49 = a4;
  v46 = a1;
  v47 = a2;
  v50 = a15;
  v21 = sub_1C1B945F8();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v43 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a6)
  {
    v25 = a5;
  }

  else
  {
    v25 = 0;
  }

  v26 = 0xE000000000000000;
  if (a6)
  {
    v27 = a6;
  }

  else
  {
    v27 = 0xE000000000000000;
  }

  v28 = &v16[OBJC_IVAR___APPCNativeRepresentation_articleID];
  *v28 = v25;
  v28[1] = v27;
  v29 = &v16[OBJC_IVAR___APPCNativeRepresentation_articleTitle];
  *v29 = v44;
  v29[1] = v45;
  v30 = &v16[OBJC_IVAR___APPCNativeRepresentation_advertiserName];
  *v30 = a11;
  *(v30 + 1) = a12;
  if (a14)
  {
    v31 = a13;
  }

  else
  {
    v31 = 0;
  }

  if (a14)
  {
    v26 = a14;
  }

  v32 = &v16[OBJC_IVAR___APPCNativeRepresentation_campaignData];
  *v32 = v31;
  v32[1] = v26;
  v33 = *(v22 + 16);
  v34 = v46;
  v33(v24, v46, v21);
  v35 = sub_1C1B945A8();
  v36 = &v16[OBJC_IVAR___APPCContentRepresentation_identifier];
  *v36 = v35;
  v36[1] = v37;
  v33(&v16[OBJC_IVAR___APPCContentRepresentation_id], v24, v21);
  *&v16[OBJC_IVAR___APPCContentRepresentation_adType] = v47;
  *&v16[OBJC_IVAR___APPCContentRepresentation_desiredPosition] = v48;
  *&v16[OBJC_IVAR___APPCContentRepresentation_privacyMarkerPosition] = v49;
  *&v16[OBJC_IVAR___APPCContentRepresentation_privacyMarkerType] = 0;
  v38 = &v16[OBJC_IVAR___APPCContentRepresentation_adSize];
  *v38 = a9;
  v38[1] = a10;
  *&v16[OBJC_IVAR___APPCContentRepresentation_tapAction] = 0;
  *&v16[OBJC_IVAR___APPCContentRepresentation_adPolicyData] = v50;
  v39 = type metadata accessor for ContentRepresentation(0);
  v51.receiver = v16;
  v51.super_class = v39;
  v40 = objc_msgSendSuper2(&v51, sel_init);
  v41 = *(v22 + 8);
  v41(v34, v21);
  v41(v24, v21);
  return v40;
}

void *sub_1C1B040F8(void *a1)
{
  v3 = v1;
  v5 = sub_1C1AC1F08(&qword_1EBF08A60, &qword_1C1B9DAB8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v23[-1] - v7;
  sub_1C1AAABE0(a1, a1[3]);
  sub_1C1B046E8();
  sub_1C1B95A08();
  if (v2)
  {
    sub_1C1AA86F8(a1);
    type metadata accessor for NativeRepresentation(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v23[0]) = 0;
    v9 = sub_1C1B95698();
    v11 = (v1 + OBJC_IVAR___APPCNativeRepresentation_articleID);
    *v11 = v9;
    v11[1] = v12;
    LOBYTE(v23[0]) = 1;
    v13 = sub_1C1B95638();
    v14 = (v1 + OBJC_IVAR___APPCNativeRepresentation_articleTitle);
    *v14 = v13;
    v14[1] = v15;
    LOBYTE(v23[0]) = 2;
    v16 = sub_1C1B95638();
    v17 = (v1 + OBJC_IVAR___APPCNativeRepresentation_advertiserName);
    *v17 = v16;
    v17[1] = v18;
    LOBYTE(v23[0]) = 3;
    v19 = sub_1C1B95698();
    v20 = (v1 + OBJC_IVAR___APPCNativeRepresentation_campaignData);
    *v20 = v19;
    v20[1] = v21;
    sub_1C1B95628();
    v3 = ContentRepresentation.init(from:)(v23);
    (*(v6 + 8))(v8, v5);
    sub_1C1AA86F8(a1);
  }

  return v3;
}

uint64_t sub_1C1B0449C(void *a1)
{
  v3 = v1;
  v5 = sub_1C1AC1F08(&qword_1EBF08A38, &unk_1C1B9D900);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v10 - v7;
  sub_1C1AAABE0(a1, a1[3]);
  sub_1C1B046E8();
  sub_1C1B95A18();
  LOBYTE(v10[0]) = 0;
  sub_1C1B957A8();
  if (!v2)
  {
    v10[0] = *(v3 + OBJC_IVAR___APPCNativeRepresentation_articleTitle);
    v11 = 1;
    sub_1C1AC1F08(&qword_1EBF07AB8, &qword_1C1B98D00);
    sub_1C1AC344C();
    sub_1C1B95808();
    v10[0] = *(v3 + OBJC_IVAR___APPCNativeRepresentation_advertiserName);
    v11 = 2;
    sub_1C1B95808();
    LOBYTE(v10[0]) = 3;
    sub_1C1B957A8();
    sub_1C1B95738();
    sub_1C1B4FA4C(v10);
    sub_1C1AA86F8(v10);
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1C1B046E8()
{
  result = qword_1EBF08A40;
  if (!qword_1EBF08A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08A40);
  }

  return result;
}

uint64_t sub_1C1B0479C()
{
}

id NativeRepresentation.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NativeRepresentation(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for NativeRepresentation(uint64_t a1)
{
  result = qword_1EDE6C568;
  if (!qword_1EDE6C568)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1C1B04990()
{
  result = qword_1EBF08A48;
  if (!qword_1EBF08A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08A48);
  }

  return result;
}

unint64_t sub_1C1B049E8()
{
  result = qword_1EBF08A50;
  if (!qword_1EBF08A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08A50);
  }

  return result;
}

unint64_t sub_1C1B04A40()
{
  result = qword_1EBF08A58;
  if (!qword_1EBF08A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08A58);
  }

  return result;
}

unint64_t sub_1C1B04A94(uint64_t a1, uint64_t a2)
{
  v2 = sub_1C1B955F8();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

void sub_1C1B04B00(void *a1)
{
  v196 = sub_1C1B944A8();
  v2 = *(v196 - 8);
  v3 = MEMORY[0x1EEE9AC00](v196);
  v184 = &v154 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v183 = &v154 - v5;
  v6 = sub_1C1AC1F08(&qword_1EBF07AC8, &qword_1C1B9CED0);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v186 = &v154 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v187 = &v154 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v185 = &v154 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v154 - v14;
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v154 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v154 - v19;
  v21 = type metadata accessor for ClientLayoutElement(0);
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v24 = &v154 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1C1B945F8();
  v192 = *(v25 - 8);
  v26 = MEMORY[0x1EEE9AC00](v25);
  v191 = &v154 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v193 = &v154 - v28;
  objc_opt_self();
  v197 = swift_dynamicCastObjCClass();
  if (v197)
  {
    v29 = a1;
    v189 = sub_1C1AFB6A4(v29);
    v177 = v29;
    v30 = [v29 targetingDimensions];
    v190 = v2;
    if (v30)
    {
      sub_1C1AED82C(v30, &v200);
      v179 = v200;
      v178 = v201;
    }

    else
    {
      v179 = 0;
      v178 = 0;
    }

    v35 = v193;
    sub_1C1B945E8();
    v198 = sub_1C1B945A8();
    v199 = v36;
    v37 = *(v192 + 8);
    v181 = v192 + 8;
    v180 = v37;
    v37(v35, v25);
    v38 = [v197 elements];
    v188 = v15;
    v194 = v20;
    v182 = v25;
    v195 = v18;
    if (!v38)
    {
      v43 = MEMORY[0x1E69E7CC0];
LABEL_28:
      v48 = v197;
      v49 = [v197 button];
      if (v49)
      {
        sub_1C1B21D50(v49, &v200);
        v176 = v200;
        v175 = v201;
        v172 = v202;
        v50 = v204;
        v174 = v203;
        v51 = &v205;
      }

      else
      {
        v176 = 0;
        v175 = 0;
        v174 = 0;
        v173 = 0;
        v50 = 1;
        v51 = &v204;
      }

      v51[-16].receiver = v50;
      v52 = [v48 localizedHeadlines];
      if (v52)
      {
        v53 = v52;
        sub_1C1AA576C(0, &qword_1EDE6A638, 0x1E698A078);
        v54 = sub_1C1B94EC8();

        sub_1C1B5C04C(v54, &v200);
        v170 = v200;
      }

      else
      {
        v170 = 0;
      }

      v55 = v177;
      v56 = [v177 tapAction];
      if (v56)
      {
        v57 = v56;
        v171 = _s15PromotedContent9TapActionC04makecD04withACSo05APTapD0C_tFZ_0(v56);
      }

      else
      {
        v171 = 0;
      }

      v58 = [v48 defaultStyle];
      if (v58)
      {
        sub_1C1AFAC60(v58, &v200);
        v169 = v200;
        v168 = v201;
      }

      else
      {
        v169 = 0;
        v168 = 0;
      }

      v59 = v55;
      v60 = [v48 identifier];
      sub_1C1B945D8();

      v61 = [v48 placementType];
      if ((v61 - 1) > 6)
      {
        v167 = 0;
      }

      else
      {
        v167 = qword_1C1B9DAC0[(v61 - 1)];
      }

      v62 = [v48 desiredPosition];
      if (v62 == 1101)
      {
        v63 = 1101;
      }

      else
      {
        v63 = 0;
      }

      if (v62 == 1102)
      {
        v63 = 1102;
      }

      v166 = v63;
      v165 = sub_1C1B5B708([v48 privacyMarkerPosition]);
      [v48 size];
      v65 = v64;
      v66 = [v48 headline];
      if (v66)
      {
        v67 = v66;
        v164 = sub_1C1B94D88();
        v163 = v68;
      }

      else
      {
        v164 = 0;
        v163 = 0;
      }

      v69 = [v48 accessibleHeadline];
      if (v69)
      {
        v70 = v69;
        v161 = sub_1C1B94D88();
        v160 = v71;
      }

      else
      {
        v161 = 0;
        v160 = 0;
      }

      v72 = [v48 adCopy];
      if (v72)
      {
        v73 = v72;
        v159 = sub_1C1B94D88();
        v158 = v74;
      }

      else
      {
        v159 = 0;
        v158 = 0;
      }

      v75 = [v48 accessibleAdCopy];
      if (v75)
      {
        v76 = v75;
        v157 = sub_1C1B94D88();
        v156 = v77;
      }

      else
      {
        v157 = 0;
        v156 = 0;
      }

      v78 = [v48 sponsor];
      if (v78)
      {
        v79 = v78;
        v155 = sub_1C1B94D88();
        v81 = v80;
      }

      else
      {
        v155 = 0;
        v81 = 0;
      }

      v82 = [v48 adFormatType];
      v83 = [v48 sponsoredByAssetURL];
      if (v83)
      {
        v84 = v83;
        sub_1C1B94488();

        v85 = 0;
      }

      else
      {
        v85 = 1;
      }

      v86 = *(v190 + 56);
      v87 = 1;
      v88 = v196;
      v86(v20, v85, 1, v196);
      v89 = [v197 sponsoredByAssetURLForDarkMode];
      if (v89)
      {
        v90 = v89;
        sub_1C1B94488();

        v88 = v196;
        v87 = 0;
      }

      v91 = v18;
      v92 = 1;
      v86(v91, v87, 1, v88);
      v93 = v197;
      v94 = [v197 actionURL];
      if (v94)
      {
        v95 = v94;
        sub_1C1B94488();

        v88 = v196;
        v92 = 0;
      }

      v86(v15, v92, 1, v88);
      v96 = [v93 journeyRelayCampaignId];

      if (v96)
      {
        v197 = sub_1C1B94D88();
        v162 = v97;
      }

      else
      {
        v197 = 0;
        v162 = 0;
      }

      v98 = objc_allocWithZone(type metadata accessor for ClientLayoutRepresentation(0));
      v99 = &v98[OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_headline];
      v100 = v163;
      *v99 = v164;
      v99[1] = v100;
      v101 = &v98[OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_accessibilityHeadline];
      v102 = v160;
      *v101 = v161;
      v101[1] = v102;
      v103 = &v98[OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_adCopy];
      v104 = v158;
      *v103 = v159;
      v103[1] = v104;
      v105 = &v98[OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_accessibilityAdCopy];
      v106 = v156;
      *v105 = v157;
      v105[1] = v106;
      v107 = &v98[OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_sponsoredBy];
      *v107 = v155;
      v107[1] = v81;
      *&v98[OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_elements] = v43;
      *&v98[OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_adFormatType] = v82;
      v108 = v194;
      sub_1C1AC5430(v194, &v98[OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_sponsoredByAssetURL]);
      v109 = v185;
      sub_1C1AC5430(v108, v185);
      v110 = v190;
      v111 = *(v190 + 48);
      v112 = v196;
      v113 = v111(v109, 1, v196);
      v177 = v59;
      if (v113 == 1)
      {
        v114 = v189;
        sub_1C1AC54A0(v109);
        v86(&v98[OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_sponsoredByAssetProxyURL], 1, 1, v112);
      }

      else
      {
        v115 = v183;
        (*(v110 + 32))(v183, v109, v112);
        v116 = objc_opt_self();
        v117 = v189;
        v118 = v110;
        v119 = sub_1C1B94478();
        v120 = sub_1C1B94D78();
        v121 = [v116 proxyURLForURL:v119 adIdentifier:v120];

        v110 = v118;
        v122 = v187;
        sub_1C1B94488();

        v112 = v196;
        (*(v118 + 8))(v115, v196);
        v86(v122, 0, 1, v112);
        sub_1C1AEF258(v122, &v98[OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_sponsoredByAssetProxyURL]);
      }

      v123 = v186;
      sub_1C1AC5430(v195, v186);
      if (v111(v123, 1, v112) == 1)
      {

        sub_1C1AC54A0(v123);
        v86(&v98[OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_sponsoredByAssetURLForDarkModeProxyURL], 1, 1, v112);
      }

      else
      {
        v124 = v184;
        (*(v110 + 32))(v184, v123, v112);
        v125 = v112;
        v126 = objc_opt_self();
        v127 = v110;
        v128 = sub_1C1B94478();
        v129 = sub_1C1B94D78();

        v130 = [v126 proxyURLForURL:v128 adIdentifier:v129];

        v131 = v187;
        sub_1C1B94488();

        (*(v127 + 8))(v124, v125);
        v86(v131, 0, 1, v125);
        sub_1C1AEF258(v131, &v98[OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_sponsoredByAssetURLForDarkModeProxyURL]);
      }

      v132 = v177;
      v133 = &v98[OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_button];
      v134 = v175;
      *v133 = v176;
      *(v133 + 1) = v134;
      v135 = v174;
      *(v133 + 2) = v172;
      *(v133 + 3) = v135;
      *(v133 + 4) = v173;
      v136 = v188;
      sub_1C1AC5430(v188, &v98[OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_actionURL]);
      *&v98[OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_localizedHeadlines] = v170;
      v137 = &v98[OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_style];
      v138 = v168;
      *v137 = v169;
      v137[1] = v138;
      v139 = &v98[OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_targetingDimensions];
      v140 = v178;
      *v139 = v179;
      v139[1] = v140;
      v141 = &v98[OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_journeyRelayCampaignID];
      v142 = v162;
      *v141 = v197;
      *(v141 + 1) = v142;
      v143 = v193;
      v144 = *(v192 + 16);
      v145 = v191;
      v146 = v182;
      v144(v193, v191, v182);
      v147 = sub_1C1B945A8();
      v148 = &v98[OBJC_IVAR___APPCContentRepresentation_identifier];
      *v148 = v147;
      v148[1] = v149;
      v144(&v98[OBJC_IVAR___APPCContentRepresentation_id], v143, v146);
      *&v98[OBJC_IVAR___APPCContentRepresentation_adType] = v167;
      *&v98[OBJC_IVAR___APPCContentRepresentation_desiredPosition] = v166;
      *&v98[OBJC_IVAR___APPCContentRepresentation_privacyMarkerPosition] = v165;
      *&v98[OBJC_IVAR___APPCContentRepresentation_privacyMarkerType] = 0;
      v150 = &v98[OBJC_IVAR___APPCContentRepresentation_adSize];
      *v150 = v65;
      *(v150 + 1) = 0x4079000000000000;
      *&v98[OBJC_IVAR___APPCContentRepresentation_tapAction] = v171;
      v151 = v189;
      *&v98[OBJC_IVAR___APPCContentRepresentation_adPolicyData] = v189;
      v152 = type metadata accessor for ContentRepresentation(0);
      v205.receiver = v98;
      v205.super_class = v152;
      objc_msgSendSuper2(&v205, sel_init);

      v153 = v180;
      v180(v143, v146);
      sub_1C1AC54A0(v136);
      sub_1C1AC54A0(v195);
      sub_1C1AC54A0(v194);
      v153(v145, v146);
      return;
    }

    v39 = v38;
    sub_1C1AA576C(0, &qword_1EDE6BB60, 0x1E698A070);
    v40 = sub_1C1B94EC8();

    if (v40 >> 62)
    {
      v41 = sub_1C1B953A8();
      if (v41)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v41 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v41)
      {
LABEL_13:
        if (v41 < 1)
        {
          __break(1u);
          return;
        }

        v42 = 0;
        v43 = MEMORY[0x1E69E7CC0];
        do
        {
          if ((v40 & 0xC000000000000001) != 0)
          {
            v44 = MEMORY[0x1C6907490](v42, v40);
          }

          else
          {
            v44 = *(v40 + 8 * v42 + 32);
          }

          v45 = v44;

          sub_1C1AF1D9C(v45, v24);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v43 = sub_1C1ACDE24(0, v43[2] + 1, 1, v43);
          }

          v47 = v43[2];
          v46 = v43[3];
          if (v47 >= v46 >> 1)
          {
            v43 = sub_1C1ACDE24((v46 > 1), v47 + 1, 1, v43);
          }

          ++v42;

          v43[2] = v47 + 1;
          sub_1C1B05CBC(v24, v43 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v47);
        }

        while (v41 != v42);
        goto LABEL_27;
      }
    }

    v43 = MEMORY[0x1E69E7CC0];
LABEL_27:

    v15 = v188;
    v20 = v194;
    v18 = v195;
    goto LABEL_28;
  }

  if (qword_1EDE6C4E0 != -1)
  {
    swift_once();
  }

  v31 = sub_1C1B94BE8();
  sub_1C1AB4454(v31, qword_1EDE6D058);
  v32 = sub_1C1B94BC8();
  v33 = sub_1C1B95128();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&dword_1C1AA2000, v32, v33, "APRepresentationData must be of type PCNativeRepresentation in order to initialize ClientLayoutRepresentation.", v34, 2u);
    MEMORY[0x1C6908230](v34, -1, -1);
  }
}

uint64_t sub_1C1B05CBC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClientLayoutElement(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t DeepLinkTapAction.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15PromotedContent17DeepLinkTapAction_url;
  v4 = sub_1C1B944A8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1C1B05D98()
{
  sub_1C1B95958();
  sub_1C1B94DE8();
  return sub_1C1B959A8();
}

uint64_t sub_1C1B05DF4(uint64_t a1)
{
  sub_1C1B95958();
  sub_1C1B94DE8();
  return sub_1C1B959A8();
}

uint64_t sub_1C1B05E3C@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_1C1B955F8();

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_1C1B05EB4@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_1C1B955F8();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_1C1B05F0C(uint64_t a1)
{
  v2 = sub_1C1B066D0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C1B05F48(uint64_t a1)
{
  v2 = sub_1C1B066D0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id DeepLinkTapAction.__allocating_init(url:confirmedClickInterval:)(uint64_t a1, double a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = OBJC_IVAR____TtC15PromotedContent17DeepLinkTapAction_url;
  v7 = sub_1C1B944A8();
  v8 = *(v7 - 8);
  (*(v8 + 16))(&v5[v6], a1, v7);
  *&v5[OBJC_IVAR___APPCTapAction_actionType] = 3;
  *&v5[OBJC_IVAR___APPCTapAction_confirmedClickInterval] = a2;
  v11.receiver = v5;
  v11.super_class = type metadata accessor for TapAction();
  v9 = objc_msgSendSuper2(&v11, sel_init);
  (*(v8 + 8))(a1, v7);
  return v9;
}

id DeepLinkTapAction.init(url:confirmedClickInterval:)(uint64_t a1, double a2)
{
  v5 = OBJC_IVAR____TtC15PromotedContent17DeepLinkTapAction_url;
  v6 = sub_1C1B944A8();
  v7 = *(v6 - 8);
  (*(v7 + 16))(&v2[v5], a1, v6);
  *&v2[OBJC_IVAR___APPCTapAction_actionType] = 3;
  *&v2[OBJC_IVAR___APPCTapAction_confirmedClickInterval] = a2;
  v10.receiver = v2;
  v10.super_class = type metadata accessor for TapAction();
  v8 = objc_msgSendSuper2(&v10, sel_init);
  (*(v7 + 8))(a1, v6);
  return v8;
}

void *sub_1C1B061EC(void *a1)
{
  v3 = sub_1C1B944A8();
  v16 = *(v3 - 8);
  v17 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C1AC1F08(&qword_1EBF08AA0, &qword_1C1B9DC88);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v14 - v8;
  sub_1C1AAABE0(a1, a1[3]);
  sub_1C1B066D0();
  sub_1C1B95A08();
  if (v1)
  {
    v13 = v20;
    sub_1C1AA86F8(a1);
    type metadata accessor for DeepLinkTapAction(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v15 = v7;
    v10 = v16;
    sub_1C1AEF214(&unk_1EDE6C3A0, MEMORY[0x1E6968FD0]);
    v11 = v17;
    sub_1C1B956F8();
    (*(v10 + 32))(v20 + OBJC_IVAR____TtC15PromotedContent17DeepLinkTapAction_url, v5, v11);
    sub_1C1B95628();
    sub_1C1AAD2FC(v19, v18);
    v13 = TapAction.init(from:)(v18);
    sub_1C1AA86F8(v19);
    (*(v15 + 8))(v9, v6);
    sub_1C1AA86F8(a1);
  }

  return v13;
}

uint64_t sub_1C1B06530(void *a1)
{
  v3 = sub_1C1AC1F08(&qword_1EBF08A68, &unk_1C1B9DB00);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9[-1] - v5;
  sub_1C1AAABE0(a1, a1[3]);
  sub_1C1B066D0();
  sub_1C1B95A18();
  sub_1C1B944A8();
  sub_1C1AEF214(&unk_1EDE6C3B0, MEMORY[0x1E6968FB8]);
  sub_1C1B95808();
  if (!v1)
  {
    sub_1C1B95738();
    sub_1C1B3BBE0(v9);
    sub_1C1AA86F8(v9);
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1C1B066D0()
{
  result = qword_1EBF08A70;
  if (!qword_1EBF08A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08A70);
  }

  return result;
}

uint64_t sub_1C1B06784()
{
  v1 = OBJC_IVAR____TtC15PromotedContent17DeepLinkTapAction_url;
  v2 = sub_1C1B944A8();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

id DeepLinkTapAction.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DeepLinkTapAction(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for DeepLinkTapAction(uint64_t a1)
{
  result = qword_1EBF08A78;
  if (!qword_1EBF08A78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C1B068E4(uint64_t a1)
{
  result = sub_1C1B944A8();
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

unint64_t sub_1C1B069B4()
{
  result = qword_1EBF08A88;
  if (!qword_1EBF08A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08A88);
  }

  return result;
}

unint64_t sub_1C1B06A0C()
{
  result = qword_1EBF08A90;
  if (!qword_1EBF08A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08A90);
  }

  return result;
}

unint64_t sub_1C1B06A64()
{
  result = qword_1EBF08A98;
  if (!qword_1EBF08A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08A98);
  }

  return result;
}

uint64_t BannerRepresentation.adTag.getter()
{
  v1 = *(v0 + OBJC_IVAR___APPCBannerRepresentation_adTag);

  return v1;
}

void *BannerRepresentation.adamIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR___APPCBannerRepresentation_adamIdentifier);
  v2 = v1;
  return v1;
}

void *BannerRepresentation.outstreamVideoInfo.getter()
{
  v1 = *(v0 + OBJC_IVAR___APPCBannerRepresentation_outstreamVideoInfo);
  v2 = v1;
  return v1;
}

uint64_t sub_1C1B06C14()
{
  v1 = sub_1C1AC1F08(&qword_1EBF08AA8, &qword_1C1B9DC90);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v9 - v3;
  v5 = *(v0 + OBJC_IVAR___APPCBannerRepresentation_adTag + 8);
  if (!v5)
  {
    goto LABEL_5;
  }

  v6 = *(v0 + OBJC_IVAR___APPCBannerRepresentation_adTag);
  sub_1C1AB0DC4(&qword_1EBF08AB0, &qword_1EBF08AA8, &qword_1C1B9DC90, MEMORY[0x1E69E9290]);
  sub_1C1B94AF8();
  v10 = v6;
  v11 = v5;
  v9[0] = 0xD00000000000001ELL;
  v9[1] = 0x80000001C1BA8EC0;
  sub_1C1B074F4();
  if ((sub_1C1B952E8() & 1) == 0)
  {
    (*(v2 + 8))(v4, v1);
LABEL_5:
    v7 = 0;
    return v7 & 1;
  }

  v10 = v6;
  v11 = v5;
  sub_1C1B07548();
  v7 = sub_1C1B94D48();
  (*(v2 + 8))(v4, v1);
  return v7 & 1;
}

uint64_t sub_1C1B06DF8@<X0>(uint64_t a1@<X8>)
{
  v52 = a1;
  v1 = sub_1C1AC1F08(&qword_1EBF08AA8, &qword_1C1B9DC90);
  v2 = *(v1 - 8);
  v50 = v1;
  v51 = v2;
  v3 = MEMORY[0x1EEE9AC00](v1);
  v49 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v47 = &v44 - v6;
  v7 = MEMORY[0x1EEE9AC00](v5);
  v48 = &v44 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v44 - v9;
  v58 = sub_1C1B94AC8();
  v11 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1C1AC1F08(&qword_1EBF08B18, &qword_1C1B9DE60);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v44 - v15;
  v17 = sub_1C1B946C8();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_1C1AC1F08(&qword_1EBF08B20, &unk_1C1B9DE68);
  v57 = *(v54 - 8);
  v21 = MEMORY[0x1EEE9AC00](v54);
  v23 = &v44 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v53 = &v44 - v24;
  v61 = 0x4C52556F65646976;
  v62 = 0xEA0000000000223ALL;
  v25 = sub_1C1B08844();
  MEMORY[0x1C6906690](v63, &v61, MEMORY[0x1E69E6158], v25);
  sub_1C1B94AD8();
  v26 = sub_1C1B94AE8();
  (*(*(v26 - 8) + 56))(v16, 1, 1, v26);
  sub_1C1B946B8();
  sub_1C1B08898(&qword_1EBF08B30, MEMORY[0x1E69E8250], MEMORY[0x1E69E8248]);
  v27 = MEMORY[0x1E69E67B0];
  sub_1C1B94AB8();
  v28 = *(v11 + 8);
  v55 = v11 + 8;
  v56 = v28;
  v28(v13, v58);
  sub_1C1B088E0(v16);
  (*(v18 + 8))(v20, v17);
  v45 = v10;
  MEMORY[0x1C69066D0](v10, v27);
  v29 = sub_1C1AB0DC4(&qword_1EBF08B38, &qword_1EBF08B20, &unk_1C1B9DE68, MEMORY[0x1E69E8290]);
  v30 = v54;
  MEMORY[0x1C6906690](v23, v54, v29);
  v31 = *(v57 + 8);
  v57 += 8;
  v46 = v31;
  v31(v23, v30);
  v59 = 34;
  v60 = 0xE100000000000000;
  v44 = v25;
  MEMORY[0x1C6906690](&v61, &v59, MEMORY[0x1E69E6158], v25);
  v59 = v63[0];
  v60 = v63[1];
  sub_1C1B946A8();

  sub_1C1B946B8();
  sub_1C1AB0DC4(&qword_1EBF08AB0, &qword_1EBF08AA8, &qword_1C1B9DC90, MEMORY[0x1E69E9290]);
  v32 = v47;
  v33 = v50;
  sub_1C1B94AA8();
  v34 = v49;
  sub_1C1B94AA8();
  v35 = v48;
  v36 = v32;
  v37 = v33;
  v38 = v13;
  sub_1C1B94A98();
  v39 = *(v51 + 8);
  v39(v34, v37);
  v40 = v36;
  v39(v36, v37);
  v56(v38, v58);
  v42 = v61;
  v41 = v62;
  sub_1C1B946B8();
  v59 = v42;
  v60 = v41;
  sub_1C1B94AA8();
  sub_1C1B94AA8();

  sub_1C1B94A98();
  v39(v34, v37);
  v39(v40, v37);
  v56(v38, v58);
  v39(v35, v37);
  v39(v45, v37);
  return v46(v53, v54);
}

unint64_t sub_1C1B074F4()
{
  result = qword_1EBF08AB8;
  if (!qword_1EBF08AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08AB8);
  }

  return result;
}

unint64_t sub_1C1B07548()
{
  result = qword_1EBF08AC0;
  if (!qword_1EBF08AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08AC0);
  }

  return result;
}

uint64_t sub_1C1B075A8()
{
  sub_1C1B95958();
  sub_1C1B94DE8();

  return sub_1C1B959A8();
}

uint64_t sub_1C1B07674(uint64_t a1)
{
  sub_1C1B94DE8();
}

uint64_t sub_1C1B0772C(uint64_t a1)
{
  sub_1C1B95958();
  sub_1C1B94DE8();

  return sub_1C1B959A8();
}

unint64_t sub_1C1B077F4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C1B0853C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1C1B07824(unint64_t *a1@<X8>)
{
  v2 = 0xE500000000000000;
  v3 = 0x6761546461;
  v4 = 0xD000000000000011;
  v5 = 0x80000001C1BA5750;
  if (*v1 != 2)
  {
    v4 = 0xD000000000000012;
    v5 = 0x80000001C1BA5770;
  }

  if (*v1)
  {
    v3 = 0x6E6564496D616461;
    v2 = 0xEE00726569666974;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v4;
  }

  if (*v1 > 1u)
  {
    v2 = v5;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_1C1B078AC()
{
  v1 = *v0;
  v2 = 0x6761546461;
  v3 = 0xD000000000000011;
  if (v1 != 2)
  {
    v3 = 0xD000000000000012;
  }

  if (*v0)
  {
    v2 = 0x6E6564496D616461;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1C1B07930@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C1B0853C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C1B07958(uint64_t a1)
{
  v2 = sub_1C1B081DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C1B07994(uint64_t a1)
{
  v2 = sub_1C1B081DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1C1B07B54(void *a1)
{
  v3 = v1;
  v5 = sub_1C1AC1F08(&qword_1EBF08B00, &qword_1C1B9DE58);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v16 - v7;
  sub_1C1AAABE0(a1, a1[3]);
  sub_1C1B081DC();
  sub_1C1B95A08();
  if (v2)
  {
    sub_1C1AA86F8(a1);
    type metadata accessor for BannerRepresentation(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v16[0]) = 0;
    v9 = sub_1C1B95638();
    v11 = (v1 + OBJC_IVAR___APPCBannerRepresentation_adTag);
    *v11 = v9;
    v11[1] = v12;
    LOBYTE(v16[0]) = 1;
    v13 = sub_1C1B95658();
    if (v14)
    {
      v15 = 0;
    }

    else
    {
      v15 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
    }

    *(v1 + OBJC_IVAR___APPCBannerRepresentation_adamIdentifier) = v15;
    v17 = 2;
    sub_1C1B08588();
    sub_1C1B956F8();
    *(v1 + OBJC_IVAR___APPCBannerRepresentation_appAdTemplateType) = v16[0];
    type metadata accessor for OutstreamVideoInfo(0);
    v17 = 3;
    sub_1C1B08898(&qword_1EBF08B10, type metadata accessor for OutstreamVideoInfo, &protocol conformance descriptor for OutstreamVideoInfo);
    sub_1C1B95678();
    *(v1 + OBJC_IVAR___APPCBannerRepresentation_outstreamVideoInfo) = v16[0];
    sub_1C1B95628();
    v3 = ContentRepresentation.init(from:)(v16);
    (*(v6 + 8))(v8, v5);
    sub_1C1AA86F8(a1);
  }

  return v3;
}

uint64_t sub_1C1B07F44(void *a1)
{
  v3 = v1;
  v5 = sub_1C1AC1F08(&qword_1EBF08AC8, &qword_1C1B9DC98);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v10 - v7;
  sub_1C1AAABE0(a1, a1[3]);
  sub_1C1B081DC();
  sub_1C1B95A18();
  LOBYTE(v10[0]) = 0;
  sub_1C1B95748();
  if (!v2)
  {
    if (*(v3 + OBJC_IVAR___APPCBannerRepresentation_adamIdentifier))
    {
      [*(v3 + OBJC_IVAR___APPCBannerRepresentation_adamIdentifier) doubleValue];
    }

    LOBYTE(v10[0]) = 1;
    sub_1C1B95768();
    v10[0] = *(v3 + OBJC_IVAR___APPCBannerRepresentation_appAdTemplateType);
    v11 = 2;
    sub_1C1B08230();
    sub_1C1B95808();
    v10[0] = *(v3 + OBJC_IVAR___APPCBannerRepresentation_outstreamVideoInfo);
    v11 = 3;
    type metadata accessor for OutstreamVideoInfo(0);
    sub_1C1B08898(&qword_1EBF08AE0, type metadata accessor for OutstreamVideoInfo, &protocol conformance descriptor for OutstreamVideoInfo);
    sub_1C1B95788();
    sub_1C1B95738();
    sub_1C1B4FA4C(v10);
    sub_1C1AA86F8(v10);
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1C1B081DC()
{
  result = qword_1EBF08AD0;
  if (!qword_1EBF08AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08AD0);
  }

  return result;
}

unint64_t sub_1C1B08230()
{
  result = qword_1EBF08AD8;
  if (!qword_1EBF08AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08AD8);
  }

  return result;
}

void sub_1C1B082E4()
{

  v1 = *(v0 + OBJC_IVAR___APPCBannerRepresentation_outstreamVideoInfo);
}

id BannerRepresentation.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BannerRepresentation(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1C1B08438()
{
  result = qword_1EBF08AE8;
  if (!qword_1EBF08AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08AE8);
  }

  return result;
}

unint64_t sub_1C1B08490()
{
  result = qword_1EBF08AF0;
  if (!qword_1EBF08AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08AF0);
  }

  return result;
}

unint64_t sub_1C1B084E8()
{
  result = qword_1EBF08AF8;
  if (!qword_1EBF08AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08AF8);
  }

  return result;
}

unint64_t sub_1C1B0853C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1C1B955F8();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1C1B08588()
{
  result = qword_1EBF08B08;
  if (!qword_1EBF08B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08B08);
  }

  return result;
}

id sub_1C1B085DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, void *a11, void *a12, uint64_t a13, uint64_t a14)
{
  v15 = v14;
  v45 = a4;
  v46 = a5;
  v43 = a2;
  v44 = a3;
  v47 = a14;
  v48 = a6;
  v21 = sub_1C1B945F8();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v43 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = &v15[OBJC_IVAR___APPCBannerRepresentation_adTag];
  *v25 = a7;
  *(v25 + 1) = a8;
  *&v15[OBJC_IVAR___APPCBannerRepresentation_adamIdentifier] = a12;
  v26 = sub_1C1AF1CC0(a13);
  if (v27)
  {
    v28 = 0;
  }

  else
  {
    v28 = v26;
  }

  *&v15[OBJC_IVAR___APPCBannerRepresentation_appAdTemplateType] = v28;
  *&v15[OBJC_IVAR___APPCBannerRepresentation_outstreamVideoInfo] = a11;
  v29 = *(v22 + 16);
  v29(v24, a1, v21);
  v30 = a11;
  v31 = a12;
  v32 = sub_1C1B945A8();
  v33 = &v15[OBJC_IVAR___APPCContentRepresentation_identifier];
  *v33 = v32;
  v33[1] = v34;
  v29(&v15[OBJC_IVAR___APPCContentRepresentation_id], v24, v21);
  v35 = v44;
  *&v15[OBJC_IVAR___APPCContentRepresentation_adType] = v43;
  *&v15[OBJC_IVAR___APPCContentRepresentation_desiredPosition] = v35;
  v36 = v46;
  *&v15[OBJC_IVAR___APPCContentRepresentation_privacyMarkerPosition] = v45;
  *&v15[OBJC_IVAR___APPCContentRepresentation_privacyMarkerType] = v36;
  v37 = &v15[OBJC_IVAR___APPCContentRepresentation_adSize];
  *v37 = a9;
  v37[1] = a10;
  v38 = v47;
  *&v15[OBJC_IVAR___APPCContentRepresentation_tapAction] = v48;
  *&v15[OBJC_IVAR___APPCContentRepresentation_adPolicyData] = v38;
  v39 = type metadata accessor for ContentRepresentation(0);
  v49.receiver = v15;
  v49.super_class = v39;
  v40 = objc_msgSendSuper2(&v49, sel_init);
  v41 = *(v22 + 8);
  v41(a1, v21);
  v41(v24, v21);
  return v40;
}

unint64_t sub_1C1B08844()
{
  result = qword_1EBF08B28;
  if (!qword_1EBF08B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08B28);
  }

  return result;
}

uint64_t sub_1C1B08898(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C1B088E0(uint64_t a1)
{
  v2 = sub_1C1AC1F08(&qword_1EBF08B18, &qword_1C1B9DE60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *ClientLayoutElement.asset.getter()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

uint64_t ClientLayoutElement.caption.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ClientLayoutElement.accessibilityCaption.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

void ClientLayoutElement.ctaButton.getter(uint64_t *a1@<X8>)
{
  v2 = v1[6];
  v3 = v1[7];
  v4 = v1[8];
  v5 = v1[9];
  v6 = v1[10];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  sub_1C1B08A14(v2, v3, v4, v5, v6);
}

void sub_1C1B08A14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 != 1)
  {
  }
}

uint64_t ClientLayoutElement.actionUrl.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ClientLayoutElement(0) + 36);

  return sub_1C1AC5430(v3, a1);
}

uint64_t type metadata accessor for ClientLayoutElement(uint64_t a1)
{
  result = qword_1EDE6AE68;
  if (!qword_1EDE6AE68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *ClientLayoutElement.tapAction.getter()
{
  v1 = *(v0 + *(type metadata accessor for ClientLayoutElement(0) + 40));
  v2 = v1;
  return v1;
}

uint64_t ClientLayoutElement.style.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ClientLayoutElement(0) + 44));
  v4 = *v3;
  v5 = v3[1];
  *a1 = *v3;
  a1[1] = v5;

  return sub_1C1B08B68(v4, v5);
}

uint64_t sub_1C1B08B68(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1C1B08BA8()
{
  v1 = *v0;
  v2 = 0x49746E656D656C65;
  v3 = 0x6F69746341706174;
  if (v1 != 6)
  {
    v3 = 0x656C797473;
  }

  v4 = 0x6F74747542617463;
  if (v1 != 4)
  {
    v4 = 0x72556E6F69746361;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x6E6F6974706163;
  if (v1 != 2)
  {
    v5 = 0xD000000000000014;
  }

  if (*v0)
  {
    v2 = 0x7465737361;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1C1B08CA0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1C1B09DD4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1C1B08CC8(uint64_t a1)
{
  v2 = sub_1C1B090F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C1B08D04(uint64_t a1)
{
  v2 = sub_1C1B090F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ClientLayoutElement.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1C1AC1F08(&qword_1EBF08B40, &qword_1C1B9DE78);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17 - v7;
  sub_1C1AAABE0(a1, a1[3]);
  sub_1C1B090F8();
  sub_1C1B95A18();
  LOBYTE(v17) = 0;
  sub_1C1B95818();
  if (!v2)
  {
    v17 = v3[1];
    v22 = 1;
    type metadata accessor for ClientLayoutAsset();
    sub_1C1B098F0(&qword_1EBF08B50, type metadata accessor for ClientLayoutAsset, &protocol conformance descriptor for ClientLayoutAsset);
    sub_1C1B95788();
    LOBYTE(v17) = 2;
    sub_1C1B95748();
    LOBYTE(v17) = 3;
    sub_1C1B95748();
    v9 = v3[7];
    v10 = v3[8];
    v11 = v3[9];
    v12 = v3[10];
    v17 = v3[6];
    v18 = v9;
    v19 = v10;
    v20 = v11;
    v21 = v12;
    v22 = 4;
    sub_1C1B08A14(v17, v9, v10, v11, v12);
    sub_1C1B0914C();
    sub_1C1B95788();
    sub_1C1B091A0(v17, v18, v19, v20, v21);
    v13 = type metadata accessor for ClientLayoutElement(0);
    LOBYTE(v17) = 5;
    sub_1C1B944A8();
    sub_1C1B098F0(&unk_1EDE6C3B0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FB8]);
    sub_1C1B95788();
    v17 = *(v3 + *(v13 + 40));
    v22 = 6;
    type metadata accessor for TapAction();
    sub_1C1B098F0(&qword_1EBF08B60, type metadata accessor for TapAction, &protocol conformance descriptor for TapAction);
    sub_1C1B95788();
    v14 = (v3 + *(v13 + 44));
    v15 = v14[1];
    v17 = *v14;
    v18 = v15;
    v22 = 7;
    sub_1C1B08B68(v17, v15);
    sub_1C1B091E8();
    sub_1C1B95788();
    sub_1C1B0923C(v17, v18);
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1C1B090F8()
{
  result = qword_1EBF08B48;
  if (!qword_1EBF08B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08B48);
  }

  return result;
}

unint64_t sub_1C1B0914C()
{
  result = qword_1EBF08B58;
  if (!qword_1EBF08B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08B58);
  }

  return result;
}

void sub_1C1B091A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 != 1)
  {
  }
}

unint64_t sub_1C1B091E8()
{
  result = qword_1EDE6B258;
  if (!qword_1EDE6B258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6B258);
  }

  return result;
}

uint64_t sub_1C1B0923C(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

void ClientLayoutElement.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v4 = sub_1C1AC1F08(&qword_1EBF07AC8, &qword_1C1B9CED0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v30 - v5;
  v7 = sub_1C1AC1F08(&qword_1EBF08B68, &qword_1C1B9DE80);
  v33 = *(v7 - 8);
  v34 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v30 - v8;
  v10 = type metadata accessor for ClientLayoutElement(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v35 = a1;
  sub_1C1AAABE0(a1, v13);
  sub_1C1B090F8();
  v14 = v9;
  sub_1C1B95A08();
  if (v2)
  {
    sub_1C1AA86F8(v35);
    return;
  }

  v15 = v6;
  v16 = v33;
  v17 = v34;
  LOBYTE(v36) = 0;
  v18 = v12;
  *v12 = sub_1C1B95708();
  type metadata accessor for ClientLayoutAsset();
  v39 = 1;
  sub_1C1B098F0(&qword_1EBF08B70, type metadata accessor for ClientLayoutAsset, &protocol conformance descriptor for ClientLayoutAsset);
  sub_1C1B95678();
  *(v12 + 8) = v36;
  LOBYTE(v36) = 2;
  *(v12 + 16) = sub_1C1B95638();
  *(v12 + 24) = v19;
  LOBYTE(v36) = 3;
  v20 = sub_1C1B95638();
  v31 = 0;
  *(v12 + 32) = v20;
  *(v12 + 40) = v21;
  v39 = 4;
  sub_1C1B0989C();
  v22 = v31;
  sub_1C1B95678();
  v31 = v22;
  if (v22)
  {
    (*(v16 + 8))(v14, v17);
    v23 = 0;
    LODWORD(v12) = 0;
  }

  else
  {
    v24 = v38;
    v25 = v37;
    *(v12 + 48) = v36;
    *(v12 + 64) = v25;
    *(v12 + 80) = v24;
    sub_1C1B944A8();
    LOBYTE(v36) = 5;
    sub_1C1B098F0(&unk_1EDE6C3A0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FD0]);
    v26 = v31;
    sub_1C1B95678();
    v31 = v26;
    if (v26)
    {
      (*(v16 + 8))(v14, v17);
      LODWORD(v12) = 0;
      v23 = 1;
    }

    else
    {
      sub_1C1AEF258(v15, v12 + v10[9]);
      type metadata accessor for TapAction();
      v39 = 6;
      sub_1C1B098F0(&qword_1EBF08B80, type metadata accessor for TapAction, &protocol conformance descriptor for TapAction);
      v27 = v31;
      sub_1C1B95678();
      v31 = v27;
      if (!v27)
      {
        *(v12 + v10[10]) = v36;
        v39 = 7;
        sub_1C1B09938();
        v29 = v31;
        sub_1C1B95678();
        v31 = v29;
        if (!v29)
        {
          (*(v16 + 8))(v14, v17);
          *(v12 + v10[11]) = v36;
          sub_1C1B0998C(v12, v32);
          sub_1C1AA86F8(v35);
          sub_1C1B099F0(v12);
          return;
        }

        (*(v16 + 8))(v14, v17);
        sub_1C1AA86F8(v35);

        v28 = 1;
        LOBYTE(v12) = 1;
        goto LABEL_14;
      }

      (*(v16 + 8))(v14, v17);
      v23 = 1;
      LODWORD(v12) = 1;
    }
  }

  sub_1C1AA86F8(v35);

  if ((v23 & 1) == 0)
  {
    if (v12)
    {
      sub_1C1AC54A0(v18 + v10[9]);
    }

    return;
  }

  v28 = 0;
LABEL_14:
  sub_1C1B091A0(*(v18 + 48), *(v18 + 56), *(v18 + 64), *(v18 + 72), *(v18 + 80));
  if (v12)
  {
    sub_1C1AC54A0(v18 + v10[9]);
    if ((v28 & 1) == 0)
    {
      return;
    }
  }

  else if (!v28)
  {
    return;
  }
}

unint64_t sub_1C1B0989C()
{
  result = qword_1EBF08B78;
  if (!qword_1EBF08B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08B78);
  }

  return result;
}

uint64_t sub_1C1B098F0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1C1B09938()
{
  result = qword_1EDE6B250;
  if (!qword_1EDE6B250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6B250);
  }

  return result;
}

uint64_t sub_1C1B0998C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClientLayoutElement(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C1B099F0(uint64_t a1)
{
  v2 = type metadata accessor for ClientLayoutElement(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1C1B09AA4(uint64_t a1)
{
  sub_1C1B09C1C(319, &qword_1EDE6B040, type metadata accessor for ClientLayoutAsset);
  if (v1 <= 0x3F)
  {
    sub_1C1B09C70(319, &qword_1EDE6BBC8, MEMORY[0x1E69E6158]);
    if (v2 <= 0x3F)
    {
      sub_1C1B09C70(319, &qword_1EBF08B88, &type metadata for ClientLayoutButton);
      if (v3 <= 0x3F)
      {
        sub_1C1B09C1C(319, &qword_1EDE6CD38, MEMORY[0x1E6968FB0]);
        if (v4 <= 0x3F)
        {
          sub_1C1B09C1C(319, &qword_1EDE6A7A0, type metadata accessor for TapAction);
          if (v5 <= 0x3F)
          {
            sub_1C1B09C70(319, &qword_1EDE6B248, &type metadata for ClientStyle);
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

void sub_1C1B09C1C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C1B952D8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1C1B09C70(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_1C1B952D8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1C1B09CD0()
{
  result = qword_1EBF08B90;
  if (!qword_1EBF08B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08B90);
  }

  return result;
}

unint64_t sub_1C1B09D28()
{
  result = qword_1EBF08B98;
  if (!qword_1EBF08B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08B98);
  }

  return result;
}

unint64_t sub_1C1B09D80()
{
  result = qword_1EBF08BA0;
  if (!qword_1EBF08BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08BA0);
  }

  return result;
}

uint64_t sub_1C1B09DD4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x49746E656D656C65 && a2 == 0xE900000000000044 || (sub_1C1B95888() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7465737361 && a2 == 0xE500000000000000 || (sub_1C1B95888() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6F6974706163 && a2 == 0xE700000000000000 || (sub_1C1B95888() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001C1BA9040 == a2 || (sub_1C1B95888() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6F74747542617463 && a2 == 0xE90000000000006ELL || (sub_1C1B95888() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x72556E6F69746361 && a2 == 0xE90000000000006CLL || (sub_1C1B95888() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6F69746341706174 && a2 == 0xE90000000000006ELL || (sub_1C1B95888() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x656C797473 && a2 == 0xE500000000000000)
  {

    return 7;
  }

  else
  {
    v5 = sub_1C1B95888();

    if (v5)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_1C1B0A094()
{
  v1 = 6579570;
  v2 = 0x6E65657267;
  if (*v0 != 2)
  {
    v2 = 0x6168706C61;
  }

  if (*v0)
  {
    v1 = 1702194274;
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

uint64_t sub_1C1B0A0F8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1C1B0A718(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1C1B0A120(uint64_t a1)
{
  v2 = sub_1C1B0A36C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C1B0A15C(uint64_t a1)
{
  v2 = sub_1C1B0A36C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ClientColor.encode(to:)(void *a1)
{
  v3 = sub_1C1AC1F08(&qword_1EBF08BC0, &qword_1C1B9E048);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  sub_1C1AAABE0(a1, a1[3]);
  sub_1C1B0A36C();
  sub_1C1B95A18();
  v8[15] = 0;
  sub_1C1B957D8();
  if (!v1)
  {
    v8[14] = 1;
    sub_1C1B957D8();
    v8[13] = 2;
    sub_1C1B957D8();
    v8[12] = 3;
    sub_1C1B957D8();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1C1B0A36C()
{
  result = qword_1EBF08BC8;
  if (!qword_1EBF08BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08BC8);
  }

  return result;
}

uint64_t ClientColor.init(from:)@<X0>(void *a1@<X0>, _DWORD *a2@<X8>)
{
  v5 = sub_1C1AC1F08(&qword_1EBF08BD0, &qword_1C1B9E050);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18 - v7;
  sub_1C1AAABE0(a1, a1[3]);
  sub_1C1B0A36C();
  sub_1C1B95A08();
  if (!v2)
  {
    v22 = 0;
    sub_1C1B956C8();
    v10 = v9;
    v21 = 1;
    sub_1C1B956C8();
    v12 = v11;
    v20 = 2;
    sub_1C1B956C8();
    v15 = v14;
    v19 = 3;
    sub_1C1B956C8();
    v17 = v16;
    (*(v6 + 8))(v8, v5);
    *a2 = v10;
    a2[1] = v12;
    a2[2] = v15;
    a2[3] = v17;
  }

  return sub_1C1AA86F8(a1);
}

__n128 initializeBufferWithCopyOfBuffer for ClientColor(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

unint64_t sub_1C1B0A614()
{
  result = qword_1EBF08BD8;
  if (!qword_1EBF08BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08BD8);
  }

  return result;
}

unint64_t sub_1C1B0A66C()
{
  result = qword_1EBF08BE0;
  if (!qword_1EBF08BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08BE0);
  }

  return result;
}

unint64_t sub_1C1B0A6C4()
{
  result = qword_1EBF08BE8;
  if (!qword_1EBF08BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08BE8);
  }

  return result;
}

uint64_t sub_1C1B0A718(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 6579570 && a2 == 0xE300000000000000;
  if (v3 || (sub_1C1B95888() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1702194274 && a2 == 0xE400000000000000 || (sub_1C1B95888() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E65657267 && a2 == 0xE500000000000000 || (sub_1C1B95888() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6168706C61 && a2 == 0xE500000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1C1B95888();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t type metadata accessor for PlaceholderRequest(uint64_t a1)
{
  result = qword_1EDE6CD28;
  if (!qword_1EDE6CD28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C1B0A8E8(uint64_t a1)
{
  sub_1C1B945F8();
  if (v1 <= 0x3F)
  {
    type metadata accessor for CGSize(319);
    if (v2 <= 0x3F)
    {
      sub_1C1B0A9A4();
      if (v3 <= 0x3F)
      {
        sub_1C1B0AA08();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_1C1B0A9A4()
{
  result = qword_1EDE6C880;
  if (!qword_1EDE6C880)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDE6C880);
  }

  return result;
}

unint64_t sub_1C1B0AA08()
{
  result = qword_1EDE6C4B0;
  if (!qword_1EDE6C4B0)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1EDE6C4B0);
  }

  return result;
}

uint64_t sub_1C1B0AA64()
{
  sub_1C1B95958();
  sub_1C1B94DE8();

  return sub_1C1B959A8();
}

uint64_t sub_1C1B0AB24(uint64_t a1)
{
  sub_1C1B94DE8();
}

uint64_t sub_1C1B0ABD0(uint64_t a1)
{
  sub_1C1B95958();
  sub_1C1B94DE8();

  return sub_1C1B959A8();
}

unint64_t sub_1C1B0AC8C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C1B0B94C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1C1B0ACBC(uint64_t *a1@<X8>)
{
  v2 = 0xE400000000000000;
  v3 = 1684632949;
  v4 = 0xE600000000000000;
  v5 = 0x657A69536461;
  if (*v1 != 2)
  {
    v5 = 0x6465746F6D6F7270;
    v4 = 0xEF746E65746E6F43;
  }

  if (*v1)
  {
    v3 = 0x657079546461;
    v2 = 0xE600000000000000;
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

uint64_t sub_1C1B0AD38()
{
  v1 = 1684632949;
  v2 = 0x657A69536461;
  if (*v0 != 2)
  {
    v2 = 0x6465746F6D6F7270;
  }

  if (*v0)
  {
    v1 = 0x657079546461;
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

unint64_t sub_1C1B0ADB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C1B0B94C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C1B0ADD8(uint64_t a1)
{
  v2 = sub_1C1B0B630();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C1B0AE14(uint64_t a1)
{
  v2 = sub_1C1B0B630();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C1B0AE50@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v4 = sub_1C1B945F8();
  v20 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v21 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1C1AC1F08(&qword_1EBF08BF0, &qword_1C1B9E288);
  v19 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v7 = &v18 - v6;
  v8 = type metadata accessor for PlaceholderRequest(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C1AAABE0(a1, a1[3]);
  sub_1C1B0B630();
  v22 = v7;
  sub_1C1B95A08();
  if (v2)
  {
    return sub_1C1AA86F8(a1);
  }

  v11 = v10;
  v13 = v19;
  v12 = v20;
  LOBYTE(v24) = 0;
  sub_1C1B0B798(&qword_1EDE6C358, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
  v14 = v21;
  sub_1C1B956F8();
  (*(v12 + 32))(v11, v14, v4);
  v25 = 1;
  sub_1C1AC1FF8();
  sub_1C1B956F8();
  *(v11 + v8[5]) = v24;
  type metadata accessor for CGSize(0);
  v25 = 2;
  sub_1C1B0B798(&unk_1EDE6BB30, type metadata accessor for CGSize, MEMORY[0x1E695EFA0]);
  sub_1C1B956F8();
  *(v11 + v8[6]) = v24;
  v25 = 3;
  sub_1C1B0B684();
  sub_1C1B956F8();
  (*(v13 + 8))(v22, v23);
  v15 = v24;
  sub_1C1B0B798(&qword_1EDE6BC08, type metadata accessor for PromotedContent, &protocol conformance descriptor for PromotedContent);
  sub_1C1B0B798(&qword_1EDE6BC10, type metadata accessor for PromotedContent, &protocol conformance descriptor for PromotedContent);
  *(v11 + v8[7]) = v15;
  v16 = (v11 + v8[8]);
  *v16 = nullsub_2;
  v16[1] = 0;
  sub_1C1B0B6D8(v11, v18);
  sub_1C1AA86F8(a1);
  return sub_1C1B0B73C(v11);
}

uint64_t sub_1C1B0B2C4(void *a1)
{
  v3 = v1;
  v5 = sub_1C1AC1F08(&qword_1EBF08C00, &qword_1C1B9E290);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - v7;
  sub_1C1AAABE0(a1, a1[3]);
  sub_1C1B0B630();
  sub_1C1B95A18();
  LOBYTE(v12) = 0;
  sub_1C1B945F8();
  sub_1C1B0B798(&unk_1EDE6C360, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
  sub_1C1B95808();
  if (!v2)
  {
    v9 = type metadata accessor for PlaceholderRequest(0);
    *&v12 = *(v3 + *(v9 + 20));
    v13 = 1;
    sub_1C1AC1FA4();
    sub_1C1B95808();
    v12 = *(v3 + *(v9 + 24));
    v13 = 2;
    type metadata accessor for CGSize(0);
    sub_1C1B0B798(&qword_1EDE6BB40, type metadata accessor for CGSize, MEMORY[0x1E695EF88]);
    sub_1C1B95808();
    type metadata accessor for PromotedContent(0);
    v10 = swift_dynamicCastClass();
    if (v10)
    {
      swift_unknownObjectRetain();
    }

    *&v12 = v10;
    v13 = 3;
    sub_1C1B0B7E0();
    sub_1C1B95788();
  }

  return (*(v6 + 8))(v8, v5);
}

BOOL sub_1C1B0B580(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_1C1B945C8() & 1) != 0 && *(a1 + *(a3 + 20)) == *(a2 + *(a3 + 20)) && (v6 = *(a3 + 24), v7 = a1 + v6, v8 = *(a1 + v6), v9 = (a2 + v6), v8 == *v9))
  {
    return *(v7 + 8) == v9[1];
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1C1B0B630()
{
  result = qword_1EBF08BF8;
  if (!qword_1EBF08BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08BF8);
  }

  return result;
}

unint64_t sub_1C1B0B684()
{
  result = qword_1EDE6B810;
  if (!qword_1EDE6B810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6B810);
  }

  return result;
}

uint64_t sub_1C1B0B6D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlaceholderRequest(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C1B0B73C(uint64_t a1)
{
  v2 = type metadata accessor for PlaceholderRequest(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C1B0B798(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1C1B0B7E0()
{
  result = qword_1EDE6B818;
  if (!qword_1EDE6B818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6B818);
  }

  return result;
}

unint64_t sub_1C1B0B848()
{
  result = qword_1EBF08C08;
  if (!qword_1EBF08C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08C08);
  }

  return result;
}

unint64_t sub_1C1B0B8A0()
{
  result = qword_1EBF08C10;
  if (!qword_1EBF08C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08C10);
  }

  return result;
}

unint64_t sub_1C1B0B8F8()
{
  result = qword_1EBF08C18;
  if (!qword_1EBF08C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08C18);
  }

  return result;
}

unint64_t sub_1C1B0B94C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1C1B955F8();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

PromotedContent::BannerType_optional __swiftcall BannerType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1C1B955F8();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t BannerType.rawValue.getter()
{
  v1 = *v0;
  v2 = 7958113;
  v3 = 0x656C62756F64;
  v4 = 0x65526D756964656DLL;
  if (v1 != 3)
  {
    v4 = 0x656772616CLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x647261646E617473;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1C1B0BA98()
{
  sub_1C1B95958();
  sub_1C1B94DE8();

  return sub_1C1B959A8();
}

uint64_t sub_1C1B0BB78(uint64_t a1)
{
  sub_1C1B94DE8();
}

uint64_t sub_1C1B0BC44(uint64_t a1)
{
  sub_1C1B95958();
  sub_1C1B94DE8();

  return sub_1C1B959A8();
}

void sub_1C1B0BD2C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 7958113;
  v5 = 0xE600000000000000;
  v6 = 0x656C62756F64;
  v7 = 0xEF656C676E617463;
  v8 = 0x65526D756964656DLL;
  if (v2 != 3)
  {
    v8 = 0x656772616CLL;
    v7 = 0xE500000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x647261646E617473;
    v3 = 0xE800000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_1C1B0BE10@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR___APPCDesiredPlacement_type);
  if (v2 >= 9)
  {
    result = sub_1C1B958C8();
    __break(1u);
  }

  else
  {
    v3 = byte_1C1B9E54A[v2];
    *a1 = *(v1 + OBJC_IVAR___APPCDesiredPlacement_count);
    *(a1 + 8) = v3;
  }

  return result;
}

id DesiredPlacement.__allocating_init(type:count:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR___APPCDesiredPlacement_type] = a1;
  *&v5[OBJC_IVAR___APPCDesiredPlacement_count] = a2;
  v7.receiver = v5;
  v7.super_class = v2;
  return objc_msgSendSuper2(&v7, sel_init);
}

id DesiredPlacement.init(type:count:)(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR___APPCDesiredPlacement_type] = a1;
  *&v2[OBJC_IVAR___APPCDesiredPlacement_count] = a2;
  v4.receiver = v2;
  v4.super_class = type metadata accessor for DesiredPlacement();
  return objc_msgSendSuper2(&v4, sel_init);
}

id DesiredPlacement.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DesiredPlacement.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DesiredPlacement();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t _s15PromotedContent20DesiredPlacementTypeO2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = v3 >> 5;
  if (v3 >> 5 > 3)
  {
    v9 = v5 & 0xE0;
    v11 = v9 == 192 && v2 == v4;
    v13 = v5 > 0xDF && v2 == v4;
    if (v6 != 6)
    {
      v11 = v13;
    }

    v15 = v9 == 128 && v2 == v4;
    v17 = v9 == 160 && v2 == v4;
    if (v6 == 4)
    {
      v17 = v15;
    }

    if (v3 >> 5 <= 5)
    {
      return v17;
    }

    else
    {
      return v11;
    }
  }

  else if (v3 >> 5 > 1)
  {
    v19 = (v5 & 0xE0) == 0x40 && v2 == v4;
    v21 = (v5 & 0xE0) == 0x60 && v2 == v4;
    if (v6 == 2)
    {
      return v19;
    }

    else
    {
      return v21;
    }
  }

  else if (v6)
  {
    return (v5 & 0xE0) == 0x20 && v2 == v4;
  }

  else if (v5 <= 0x1F && v2 == v4)
  {
    return sub_1C1B53CB8(v3, v5);
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1C1B0C14C()
{
  result = qword_1EBF08C30;
  if (!qword_1EBF08C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08C30);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DesiredPlacementType(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x19 && *(a1 + 9))
  {
    return (*a1 + 25);
  }

  v3 = (*(a1 + 8) & 0x18 | (*(a1 + 8) >> 5)) ^ 0x1F;
  if (v3 >= 0x18)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for DesiredPlacementType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x18)
  {
    *(result + 8) = 0;
    *result = a2 - 25;
    if (a3 >= 0x19)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x19)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 8 * (((-a2 >> 3) & 3) - 4 * a2);
    }
  }

  return result;
}

id sub_1C1B0C2B4(double a1)
{
  if ((~*&a1 & 0x7FF0000000000000) == 0 && (*&a1 & 0xFFFFFFFFFFFFFLL) != 0)
  {
    return 0;
  }

  v2 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  v3 = [objc_opt_self() notANumber];
  sub_1C1AA576C(0, &qword_1EDE6C9F0, 0x1E696AD98);
  v4 = sub_1C1B95278();

  if ((v4 & 1) == 0)
  {
    return v2;
  }

  return 0;
}

uint64_t sub_1C1B0C3E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1C1AB9A98;

  return MEMORY[0x1EEDB2930](a1, a2, a3);
}

uint64_t sub_1C1B0C498()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C1AB9CA0;

  return MEMORY[0x1EEDB2940]();
}

uint64_t sub_1C1B0C528()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C1AB9CA0;

  return MEMORY[0x1EEDB2938]();
}

uint64_t sub_1C1B0C774@<X0>(char *a1@<X8>)
{
  v3 = sub_1C1AC1F08(&qword_1EBF07AC8, &qword_1C1B9CED0);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v13[-v7];
  v9 = OBJC_IVAR___APPCVideoRepresentation____lazy_storage___videoURL;
  swift_beginAccess();
  sub_1C1AC5430(v1 + v9, v8);
  v10 = sub_1C1B944A8();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a1, v8, v10);
  }

  sub_1C1AC54A0(v8);
  sub_1C1B0CD88(v1, a1);
  (*(v11 + 16))(v6, a1, v10);
  (*(v11 + 56))(v6, 0, 1, v10);
  swift_beginAccess();
  sub_1C1B0CFC4(v6, v1 + v9);
  return swift_endAccess();
}

uint64_t sub_1C1B0CACC(uint64_t a1)
{
  v3 = sub_1C1AC1F08(&qword_1EBF07AC8, &qword_1C1B9CED0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v10 - v4;
  v6 = sub_1C1B944A8();
  v7 = *(v6 - 8);
  (*(v7 + 32))(v5, a1, v6);
  (*(v7 + 56))(v5, 0, 1, v6);
  v8 = OBJC_IVAR___APPCVideoRepresentation____lazy_storage___videoURL;
  swift_beginAccess();
  sub_1C1B0CFC4(v5, v1 + v8);
  return swift_endAccess();
}

uint64_t sub_1C1B0CBF4(uint64_t a1, uint64_t *a2)
{
  v4 = sub_1C1AC1F08(&qword_1EBF07AC8, &qword_1C1B9CED0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v14 - v5;
  v7 = sub_1C1B944A8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v10, a1, v7);
  v11 = *a2;
  (*(v8 + 32))(v6, v10, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  v12 = OBJC_IVAR___APPCVideoRepresentation____lazy_storage___videoURL;
  swift_beginAccess();
  sub_1C1B0CFC4(v6, v11 + v12);
  return swift_endAccess();
}

void sub_1C1B0CD88(uint64_t a1@<X0>, char *a2@<X8>)
{
  v22 = a2;
  v3 = sub_1C1B944A8();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v21 - v8;
  v10 = OBJC_IVAR___APPCVideoRepresentation_originalVideoURL;
  v11 = *(v4 + 16);
  v21 = a1;
  v11(&v21 - v8, a1 + OBJC_IVAR___APPCVideoRepresentation_originalVideoURL, v3);
  sub_1C1B94498();
  v13 = v12;
  v14 = *(v4 + 8);
  v14(v9, v3);
  if (v13)
  {
    v15 = sub_1C1B94D78();
  }

  else
  {
    v15 = 0;
  }

  v16 = objc_opt_self();
  v17 = [v16 shouldProxyRequestToHost_];

  if (v17)
  {
    v11(v7, v21 + v10, v3);
    v18 = sub_1C1B94478();
    v14(v7, v3);
    v19 = sub_1C1B94D78();
    v20 = [v16 proxyURLForVideoURL:v18 adIdentifier:v19 changeScheme:1];

    sub_1C1B94488();
  }

  else
  {
    v11(v22, v21 + v10, v3);
  }
}

uint64_t sub_1C1B0CFC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C1AC1F08(&qword_1EBF07AC8, &qword_1C1B9CED0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void (*sub_1C1B0D034(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x58uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 48) = v1;
  v6 = *(*(sub_1C1AC1F08(&qword_1EBF07AC8, &qword_1C1B9CED0) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v5[7] = v7;
  v8 = sub_1C1B944A8();
  v5[8] = v8;
  v9 = *(v8 - 8);
  v5[9] = v9;
  if (v3)
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(*(v9 + 64));
  }

  v5[10] = v10;
  sub_1C1B0C774(v10);
  return sub_1C1B0D154;
}

void sub_1C1B0D154(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 80);
  v5 = *(*a1 + 56);
  v6 = *(*a1 + 64);
  v7 = *(*a1 + 48);
  if (a2)
  {
    (*(v3 + 16))(v2[7], v2[10], v2[8]);
    (*(v3 + 56))(v5, 0, 1, v6);
    v8 = OBJC_IVAR___APPCVideoRepresentation____lazy_storage___videoURL;
    swift_beginAccess();
    sub_1C1B0CFC4(v5, v7 + v8);
    swift_endAccess();
    (*(v3 + 8))(v4, v6);
  }

  else
  {
    (*(v3 + 32))(v2[7], v2[10], v2[8]);
    (*(v3 + 56))(v5, 0, 1, v6);
    v9 = OBJC_IVAR___APPCVideoRepresentation____lazy_storage___videoURL;
    swift_beginAccess();
    sub_1C1B0CFC4(v5, v7 + v9);
    swift_endAccess();
  }

  free(v4);
  free(v5);

  free(v2);
}

uint64_t sub_1C1B0D2CC(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 0x657A6953656C6966;
    v7 = 0x62616E4570696B73;
    v8 = 0x65646E6172626E75;
    if (a1 != 3)
    {
      v8 = 0x65746172746962;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 0x6572685470696B73;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0x4C52556F65646976;
    v2 = 0x6E6F697461727564;
    if (a1 != 9)
    {
      v2 = 0xD000000000000010;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0x74536C616E676973;
    v4 = 0x697463656E6E6F63;
    if (a1 != 6)
    {
      v4 = 0x7A69536F65646976;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1C1B0D460(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_1C1B0D2CC(*a1);
  v5 = v4;
  if (v3 == sub_1C1B0D2CC(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1C1B95888();
  }

  return v8 & 1;
}

uint64_t sub_1C1B0D4E8()
{
  v1 = *v0;
  sub_1C1B95958();
  sub_1C1B0D2CC(v1);
  sub_1C1B94DE8();

  return sub_1C1B959A8();
}

uint64_t sub_1C1B0D54C(uint64_t a1)
{
  sub_1C1B0D2CC(*v1);
  sub_1C1B94DE8();
}

uint64_t sub_1C1B0D5A0(uint64_t a1)
{
  v2 = *v1;
  sub_1C1B95958();
  sub_1C1B0D2CC(v2);
  sub_1C1B94DE8();

  return sub_1C1B959A8();
}

unint64_t sub_1C1B0D600@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C1B0F26C(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1C1B0D630@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C1B0D2CC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1C1B0D678@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C1B0F26C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C1B0D6AC(uint64_t a1)
{
  v2 = sub_1C1B0E2FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C1B0D6E8(uint64_t a1)
{
  v2 = sub_1C1B0E2FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id sub_1C1B0D724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7, uint64_t a8, double a9, double a10, double a11, double a12, double a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v17 = v16;
  v49 = a8;
  v50 = a2;
  v47 = a6;
  v48 = a7;
  v52 = a3;
  v53 = a16;
  v51 = a15;
  v46 = a14;
  v26 = sub_1C1B945F8();
  v27 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v45 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = OBJC_IVAR___APPCVideoRepresentation____lazy_storage___videoURL;
  v31 = sub_1C1B944A8();
  v32 = *(v31 - 8);
  (*(v32 + 56))(&v17[v30], 1, 1, v31);
  *&v17[OBJC_IVAR___APPCVideoRepresentation_duration] = a9;
  *&v17[OBJC_IVAR___APPCVideoRepresentation_fileSize] = a5;
  (*(v32 + 16))(&v17[OBJC_IVAR___APPCVideoRepresentation_originalVideoURL], a4, v31);
  *&v17[OBJC_IVAR___APPCVideoRepresentation_skipThreshold] = a10;
  v33 = v48;
  v17[OBJC_IVAR___APPCVideoRepresentation_skipEnabled] = v47;
  v17[OBJC_IVAR___APPCVideoRepresentation_unbranded] = v33;
  *&v17[OBJC_IVAR___APPCVideoRepresentation_bitrate] = a11;
  *&v17[OBJC_IVAR___APPCVideoRepresentation_connectionType] = v49;
  v34 = &v17[OBJC_IVAR___APPCVideoRepresentation_videoSize];
  *v34 = a12;
  v34[1] = a13;
  *&v17[OBJC_IVAR___APPCVideoRepresentation_signalStrength] = v46;
  v35 = *(v27 + 16);
  v35(v29, a1, v26);
  v36 = sub_1C1B945A8();
  v37 = &v17[OBJC_IVAR___APPCContentRepresentation_identifier];
  *v37 = v36;
  v37[1] = v38;
  v35(&v17[OBJC_IVAR___APPCContentRepresentation_id], v29, v26);
  *&v17[OBJC_IVAR___APPCContentRepresentation_adType] = v50;
  v39 = v51;
  *&v17[OBJC_IVAR___APPCContentRepresentation_desiredPosition] = v52;
  *&v17[OBJC_IVAR___APPCContentRepresentation_privacyMarkerPosition] = 0;
  *&v17[OBJC_IVAR___APPCContentRepresentation_privacyMarkerType] = 0;
  v40 = &v17[OBJC_IVAR___APPCContentRepresentation_adSize];
  *v40 = 0;
  v40[1] = 0;
  *&v17[OBJC_IVAR___APPCContentRepresentation_tapAction] = v39;
  *&v17[OBJC_IVAR___APPCContentRepresentation_adPolicyData] = v53;
  v41 = type metadata accessor for ContentRepresentation(0);
  v54.receiver = v17;
  v54.super_class = v41;
  v42 = objc_msgSendSuper2(&v54, sel_init);
  (*(v32 + 8))(a4, v31);
  v43 = *(v27 + 8);
  v43(a1, v26);
  v43(v29, v26);
  return v42;
}

void *VideoRepresentation.init(from:)(void *a1)
{
  v3 = sub_1C1AC1F08(&qword_1EBF07AC8, &qword_1C1B9CED0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v36 = v33 - v4;
  v5 = sub_1C1B944A8();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v34 = v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v33 - v9;
  v11 = sub_1C1AC1F08(&qword_1EBF08C38, &qword_1C1B9E588);
  v35 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v33 - v12;
  v37 = v6;
  v38 = v5;
  v16 = *(v6 + 56);
  v14 = v6 + 56;
  v15 = v16;
  v41 = v1;
  v16(v1 + OBJC_IVAR___APPCVideoRepresentation____lazy_storage___videoURL, 1, 1, v5);
  v17 = a1[3];
  v40 = a1;
  sub_1C1AAABE0(a1, v17);
  sub_1C1B0E2FC();
  v18 = v39;
  sub_1C1B95A08();
  if (v18)
  {
    v30 = v41;
    sub_1C1AA86F8(v40);
    sub_1C1AC54A0(v30 + OBJC_IVAR___APPCVideoRepresentation____lazy_storage___videoURL);
    type metadata accessor for VideoRepresentation(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v19 = v10;
    v33[1] = v14;
    v39 = v15;
    v20 = v35;
    v21 = v36;
    LOBYTE(v42[0]) = 0;
    v22 = sub_1C1B956D8();
    v24 = v41;
    *(v41 + OBJC_IVAR___APPCVideoRepresentation_fileSize) = v22;
    LOBYTE(v42[0]) = 1;
    sub_1C1B956B8();
    *(v24 + OBJC_IVAR___APPCVideoRepresentation_skipThreshold) = v25;
    LOBYTE(v42[0]) = 2;
    *(v24 + OBJC_IVAR___APPCVideoRepresentation_skipEnabled) = sub_1C1B956A8() & 1;
    LOBYTE(v42[0]) = 3;
    *(v24 + OBJC_IVAR___APPCVideoRepresentation_unbranded) = sub_1C1B956A8() & 1;
    LOBYTE(v42[0]) = 4;
    sub_1C1B956B8();
    *(v24 + OBJC_IVAR___APPCVideoRepresentation_bitrate) = v26;
    LOBYTE(v42[0]) = 5;
    *(v24 + OBJC_IVAR___APPCVideoRepresentation_signalStrength) = sub_1C1B956E8();
    LOBYTE(v42[0]) = 6;
    *(v24 + OBJC_IVAR___APPCVideoRepresentation_connectionType) = sub_1C1B956D8();
    v43 = 7;
    sub_1C1B0E39C();
    sub_1C1B956F8();
    *(v24 + OBJC_IVAR___APPCVideoRepresentation_videoSize) = v42[0];
    LOBYTE(v42[0]) = 9;
    sub_1C1B956B8();
    *(v24 + OBJC_IVAR___APPCVideoRepresentation_duration) = v27;
    LOBYTE(v42[0]) = 10;
    v33[0] = sub_1C1AEF214(&unk_1EDE6C3A0, MEMORY[0x1E6968FD0]);
    sub_1C1B956F8();
    v28 = v19;
    v29 = *(v37 + 32);
    v29(v41 + OBJC_IVAR___APPCVideoRepresentation_originalVideoURL, v28, v38);
    sub_1C1B95628();
    v30 = ContentRepresentation.init(from:)(v42);
    LOBYTE(v42[0]) = 8;
    sub_1C1B956F8();
    (*(v20 + 8))(v13, v11);
    v31 = v38;
    v29(v21, v34, v38);
    v39(v21, 0, 1, v31);
    v32 = OBJC_IVAR___APPCVideoRepresentation____lazy_storage___videoURL;
    swift_beginAccess();
    sub_1C1B0CFC4(v21, v30 + v32);
    swift_endAccess();
    sub_1C1AA86F8(v40);
  }

  return v30;
}

unint64_t sub_1C1B0E2FC()
{
  result = qword_1EBF08C40;
  if (!qword_1EBF08C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08C40);
  }

  return result;
}

uint64_t type metadata accessor for VideoRepresentation(uint64_t a1)
{
  result = qword_1EDE6C790;
  if (!qword_1EDE6C790)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1C1B0E39C()
{
  result = qword_1EBF08C48;
  if (!qword_1EBF08C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08C48);
  }

  return result;
}

uint64_t sub_1C1B0E3F0(void *a1)
{
  v2 = sub_1C1B944A8();
  v23 = *(v2 - 8);
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v21 - v6;
  v8 = sub_1C1AC1F08(&qword_1EBF08C50, &unk_1C1B9E590);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v21 - v10;
  sub_1C1AAABE0(a1, a1[3]);
  sub_1C1B0E2FC();
  v12 = v25;
  sub_1C1B95A18();
  LOBYTE(v26[0]) = 0;
  v13 = v24;
  sub_1C1B957E8();
  if (!v13)
  {
    v22 = v2;
    LOBYTE(v26[0]) = 1;
    sub_1C1B957C8();
    LOBYTE(v26[0]) = 2;
    sub_1C1B957B8();
    LOBYTE(v26[0]) = 3;
    sub_1C1B957B8();
    LOBYTE(v26[0]) = 4;
    sub_1C1B957C8();
    LOBYTE(v26[0]) = 5;
    sub_1C1B957F8();
    LOBYTE(v26[0]) = 6;
    sub_1C1B957E8();
    v26[0] = *(v12 + OBJC_IVAR___APPCVideoRepresentation_videoSize);
    v27 = 7;
    sub_1C1B0E90C();
    sub_1C1B95808();
    sub_1C1B0C774(v7);
    LOBYTE(v26[0]) = 8;
    v14 = sub_1C1AEF214(&unk_1EDE6C3B0, MEMORY[0x1E6968FB8]);
    v24 = v7;
    v15 = v14;
    v16 = v22;
    sub_1C1B95808();
    v21[1] = v15;
    v17 = v16;
    v19 = v23;
    v18 = v24;
    v24 = *(v23 + 8);
    (v24)(v18, v17);
    LOBYTE(v26[0]) = 9;
    sub_1C1B957C8();
    (*(v19 + 16))(v5, v25 + OBJC_IVAR___APPCVideoRepresentation_originalVideoURL, v22);
    LOBYTE(v26[0]) = 10;
    sub_1C1B95808();
    (v24)(v5, v22);
    sub_1C1B95738();
    sub_1C1B4FA4C(v26);
    sub_1C1AA86F8(v26);
  }

  return (*(v9 + 8))(v11, v8);
}

unint64_t sub_1C1B0E90C()
{
  result = qword_1EBF08C58;
  if (!qword_1EBF08C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08C58);
  }

  return result;
}

uint64_t sub_1C1B0E9C0()
{
  sub_1C1AC54A0(v0 + OBJC_IVAR___APPCVideoRepresentation____lazy_storage___videoURL);
  v1 = OBJC_IVAR___APPCVideoRepresentation_originalVideoURL;
  v2 = sub_1C1B944A8();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

id VideoRepresentation.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VideoRepresentation(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1C1B0EAF4(uint64_t a1)
{
  sub_1C1AEF0A4(319);
  if (v1 <= 0x3F)
  {
    sub_1C1B944A8();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t getEnumTagSinglePayload for VideoRepresentation.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for VideoRepresentation.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1C1B0EE18()
{
  result = qword_1EBF08C60;
  if (!qword_1EBF08C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08C60);
  }

  return result;
}

uint64_t sub_1C1B0EE6C(void *a1, double a2, double a3)
{
  v5 = sub_1C1AC1F08(&qword_1EBF08C88, &qword_1C1B9E7C8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  sub_1C1AAABE0(a1, a1[3]);
  sub_1C1B0F468();
  sub_1C1B95A18();
  v12 = 0;
  sub_1C1B957C8();
  if (!v3)
  {
    v11 = 1;
    sub_1C1B957C8();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1C1B0EFF4()
{
  if (*v0)
  {
    return 0x746867696568;
  }

  else
  {
    return 0x6874646977;
  }
}

uint64_t sub_1C1B0F028@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6874646977 && a2 == 0xE500000000000000;
  if (v6 || (sub_1C1B95888() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x746867696568 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1C1B95888();

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

uint64_t sub_1C1B0F0FC(uint64_t a1)
{
  v2 = sub_1C1B0F468();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C1B0F138(uint64_t a1)
{
  v2 = sub_1C1B0F468();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1C1B0F174(double *a1@<X8>, void *a2@<X0>)
{
  v4 = sub_1C1B0F2B8(a2);
  if (!v2)
  {
    *a1 = v4;
    *(a1 + 1) = v5;
  }
}

unint64_t sub_1C1B0F1C0()
{
  result = qword_1EBF08C68;
  if (!qword_1EBF08C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08C68);
  }

  return result;
}

unint64_t sub_1C1B0F218()
{
  result = qword_1EBF08C70;
  if (!qword_1EBF08C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08C70);
  }

  return result;
}

unint64_t sub_1C1B0F26C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1C1B955F8();

  if (v2 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v2;
  }
}

double sub_1C1B0F2B8(void *a1)
{
  v2 = sub_1C1AC1F08(&qword_1EBF08C78, &qword_1C1B9E7C0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v9[-v4];
  sub_1C1AAABE0(a1, a1[3]);
  sub_1C1B0F468();
  sub_1C1B95A08();
  v9[15] = 0;
  sub_1C1B956B8();
  v7 = v6;
  v9[14] = 1;
  sub_1C1B956B8();
  (*(v3 + 8))(v5, v2);
  sub_1C1AA86F8(a1);
  return v7;
}

unint64_t sub_1C1B0F468()
{
  result = qword_1EBF08C80;
  if (!qword_1EBF08C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08C80);
  }

  return result;
}

unint64_t sub_1C1B0F4D0()
{
  result = qword_1EBF08C90;
  if (!qword_1EBF08C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08C90);
  }

  return result;
}

unint64_t sub_1C1B0F528()
{
  result = qword_1EBF08C98;
  if (!qword_1EBF08C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08C98);
  }

  return result;
}

unint64_t sub_1C1B0F580()
{
  result = qword_1EBF08CA0;
  if (!qword_1EBF08CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08CA0);
  }

  return result;
}

uint64_t ContentValidationPipelineTransformer.__allocating_init(readthroughSource:policyEngine:errorContentDataProvider:)(__int128 *a1, __int128 *a2, __int128 *a3)
{
  v6 = swift_allocObject();
  sub_1C1AC0580(a1, v6 + 16);
  sub_1C1AC0580(a3, v6 + 56);
  sub_1C1AC0580(a2, v6 + 96);
  return v6;
}

uint64_t ContentValidationPipelineTransformer.init(readthroughSource:policyEngine:errorContentDataProvider:)(__int128 *a1, __int128 *a2, __int128 *a3)
{
  sub_1C1AC0580(a1, v3 + 16);
  sub_1C1AC0580(a3, v3 + 56);
  sub_1C1AC0580(a2, v3 + 96);
  return v3;
}

uint64_t sub_1C1B0F6B0(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v5 = v3;
  *(v4 + 152) = a2;
  *(v4 + 160) = v5;
  *(v4 + 144) = a1;
  *(v4 + 168) = *v5;
  v7 = sub_1C1B945F8();
  *(v4 + 176) = v7;
  *(v4 + 184) = *(v7 - 8);
  *(v4 + 192) = swift_task_alloc();
  *(v4 + 226) = *a3;

  return MEMORY[0x1EEE6DFA0](sub_1C1B0F7A8, 0, 0);
}

uint64_t sub_1C1B0F7A8()
{
  v1 = *(v0 + 226);
  v2 = *(v0 + 160);
  v3 = v2[5];
  v4 = v2[6];
  sub_1C1AAABE0(v2 + 2, v3);
  *(v0 + 224) = v1;
  v9 = (*(v4 + 24) + **(v4 + 24));
  v5 = swift_task_alloc();
  *(v0 + 200) = v5;
  *v5 = v0;
  v5[1] = sub_1C1B0F8F0;
  v7 = *(v0 + 144);
  v6 = *(v0 + 152);

  return v9(v7, v6, v0 + 224, v3, v4);
}

uint64_t sub_1C1B0F8F0(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 208) = a1;
  *(v3 + 216) = v1;

  if (v1)
  {
    v4 = sub_1C1B10214;
  }

  else
  {
    v4 = sub_1C1B0FA04;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1C1B0FA04()
{
  v77 = v0;
  if (qword_1EDE6C4E0 != -1)
  {
    swift_once();
  }

  v73 = (v0 + 225);
  v1 = *(v0 + 144);
  v2 = sub_1C1B94BE8();
  sub_1C1AB4454(v2, qword_1EDE6D058);

  v3 = v1;
  v4 = sub_1C1B94BC8();
  v5 = sub_1C1B95138();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = *(v0 + 184);
    v6 = *(v0 + 192);
    v70 = *(v0 + 176);
    v8 = *(v0 + 144);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v76[0] = v10;
    *v9 = 134218242;
    *(v9 + 4) = sub_1C1B94F58();

    *(v9 + 12) = 2080;
    v11 = OBJC_IVAR___APPCBaseContext_identifier;
    swift_beginAccess();
    (*(v7 + 16))(v6, v8 + v11, v70);
    v12 = sub_1C1B945A8();
    v14 = v13;
    (*(v7 + 8))(v6, v70);
    v15 = sub_1C1AC7650(v12, v14, v76);

    *(v9 + 14) = v15;
    _os_log_impl(&dword_1C1AA2000, v4, v5, "[ContentPipelineTransformer] Validating %ld contents for context %s", v9, 0x16u);
    sub_1C1AA86F8(v10);
    MEMORY[0x1C6908230](v10, -1, -1);
    MEMORY[0x1C6908230](v9, -1, -1);
  }

  else
  {
  }

  v16 = *(v0 + 208);
  v17 = *(v0 + 160);
  v18 = *(v0 + 168);
  *(v0 + 225) = 4;
  sub_1C1AAABE0((v17 + 96), *(v17 + 120));
  v20 = *(v18 + 80);
  v19 = *(v18 + 88);
  *(v0 + 120) = sub_1C1B94878();
  sub_1C1B106E8();
  sub_1C1B959F8();
  v21 = sub_1C1B94FA8();
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x1C6906E20](v21, WitnessTable);

  *(v0 + 128) = *(v0 + 112);
  v23 = swift_task_alloc();
  v23[2] = v73;
  v23[3] = v17;
  v23[4] = v16;
  v24 = swift_task_alloc();
  v24[2] = v20;
  v24[3] = v19;
  v24[4] = sub_1C1B1073C;
  v24[5] = v23;
  v25 = v20;
  sub_1C1B95588();
  swift_getWitnessTable();
  v26 = sub_1C1B94E18();

  *(v0 + 136) = v26;
  sub_1C1B94FA8();
  swift_getWitnessTable();
  v27 = sub_1C1B950D8();
  v28 = *(v0 + 144);
  if (v27)
  {

    v29 = 1031;
    if (*v73 - 1 < 4)
    {
      v29 = 1025;
    }

    v74 = v29;
    v30 = v28;
    v31 = sub_1C1B94BC8();
    v32 = sub_1C1B95138();

    if (os_log_type_enabled(v31, v32))
    {
      v34 = *(v0 + 184);
      v33 = *(v0 + 192);
      v35 = *(v0 + 176);
      v36 = *(v0 + 144);
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v76[0] = v38;
      *v37 = 136315138;
      v71 = v25;
      v39 = OBJC_IVAR___APPCBaseContext_identifier;
      swift_beginAccess();
      (*(v34 + 16))(v33, v36 + v39, v35);
      v40 = sub_1C1B945A8();
      v42 = v41;
      (*(v34 + 8))(v33, v35);
      v43 = sub_1C1AC7650(v40, v42, v76);
      v25 = v71;

      *(v37 + 4) = v43;
      _os_log_impl(&dword_1C1AA2000, v31, v32, "[ContentPipelineTransformer] Finished Validation. No contents remain for context %s", v37, 0xCu);
      sub_1C1AA86F8(v38);
      MEMORY[0x1C6908230](v38, -1, -1);
      MEMORY[0x1C6908230](v37, -1, -1);
    }

    v44 = *(v0 + 184);
    v45 = *(v0 + 192);
    v46 = *(v0 + 176);
    v47 = *(v0 + 160);
    v72 = *(v0 + 152);
    v48 = *(v0 + 144);
    sub_1C1B10674(v25, v25);
    swift_allocObject();
    v26 = sub_1C1B94EE8();
    v49 = v47[10];
    v50 = v47[11];
    sub_1C1AAABE0(v47 + 7, v49);
    v51 = OBJC_IVAR___APPCBaseContext_identifier;
    swift_beginAccess();
    (*(v44 + 16))(v45, v48 + v51, v46);
    v52 = sub_1C1B945A8();
    v54 = v53;
    (*(v44 + 8))(v45, v46);
    (*(v50 + 16))(v52, v54, v72, v74, v49, v50);
  }

  else
  {
    v55 = v28;

    v56 = sub_1C1B94BC8();
    v57 = sub_1C1B95138();

    if (os_log_type_enabled(v56, v57))
    {
      v59 = *(v0 + 184);
      v58 = *(v0 + 192);
      v60 = *(v0 + 176);
      v61 = *(v0 + 144);
      v62 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v76[0] = v75;
      *v62 = 134218242;
      *(v62 + 4) = sub_1C1B94F58();

      *(v62 + 12) = 2080;
      v63 = OBJC_IVAR___APPCBaseContext_identifier;
      swift_beginAccess();
      (*(v59 + 16))(v58, v61 + v63, v60);
      v64 = sub_1C1B945A8();
      v66 = v65;
      (*(v59 + 8))(v58, v60);
      v67 = sub_1C1AC7650(v64, v66, v76);

      *(v62 + 14) = v67;
      _os_log_impl(&dword_1C1AA2000, v56, v57, "[ContentPipelineTransformer] Finished Validation. Returning %ld contents for context %s", v62, 0x16u);
      sub_1C1AA86F8(v75);
      MEMORY[0x1C6908230](v75, -1, -1);
      MEMORY[0x1C6908230](v62, -1, -1);
    }

    else
    {
    }
  }

  v68 = *(v0 + 8);

  return v68(v26);
}

uint64_t sub_1C1B10214()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C1B10278(uint64_t a1, uint64_t a2, char a3, _BYTE *a4, void *a5, uint64_t a6)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  v12 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v14 = &v19 - v13;
  if (a3)
  {
    v15 = *a4;
    if (v15 == 4)
    {
      LOBYTE(v15) = a2;
    }

    *a4 = v15;
    v16 = a5[5];
    v17 = a5[6];
    v20 = v12;
    sub_1C1AAABE0(a5 + 2, v16);
    sub_1C1B94FB8();
    v21 = v22;
    sub_1C1B95478();
    swift_unknownObjectRelease();
    (*(v17 + 32))(v14, a2, v16, v17);
    (*(v11 + 8))(v14, v20);
    return 0;
  }

  else
  {
    swift_unknownObjectRetain();
  }

  return a2;
}

uint64_t sub_1C1B10444(uint64_t a1, uint64_t a2)
{
  v5 = v2[5];
  v6 = v2[6];
  sub_1C1AAABE0(v2 + 2, v5);
  return (*(v6 + 32))(a1, a2, v5, v6);
}

uint64_t sub_1C1B104B0()
{
  v1 = v0[5];
  v2 = v0[6];
  sub_1C1AAABE0(v0 + 2, v1);
  return (*(v2 + 40))(v1, v2);
}

void *ContentValidationPipelineTransformer.deinit()
{
  sub_1C1AA86F8(v0 + 2);
  sub_1C1AA86F8(v0 + 7);
  sub_1C1AA86F8(v0 + 12);
  return v0;
}

uint64_t ContentValidationPipelineTransformer.__deallocating_deinit()
{
  sub_1C1AA86F8(v0 + 2);
  sub_1C1AA86F8(v0 + 7);
  sub_1C1AA86F8(v0 + 12);

  return MEMORY[0x1EEE6BDC0](v0, 136, 7);
}

uint64_t sub_1C1B1057C(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1C1B013DC;

  return sub_1C1B0F6B0(a1, a2, a3);
}

uint64_t sub_1C1B10674(uint64_t a1, uint64_t a2)
{
  if (swift_isClassType() && a2)
  {

    return sub_1C1AC1F08(&qword_1EBF08D30, qword_1C1B9E9E0);
  }

  else
  {

    return MEMORY[0x1EEE6AEE8](0, a2);
  }
}

unint64_t sub_1C1B106E8()
{
  result = qword_1EBF08CA8[0];
  if (!qword_1EBF08CA8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBF08CA8);
  }

  return result;
}

uint64_t sub_1C1B1074C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 32))(*a1, *(a1 + 8), *(a1 + 16));
  *a2 = result;
  return result;
}

uint64_t dispatch thunk of ContentValidationPipelineTransformer.fetch(using:adType:cachePolicy:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 128) + **(*v3 + 128));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_1C1AEE19C;

  return v10(a1, a2, a3);
}

uint64_t sub_1C1B109C4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7C && *(a1 + 8))
  {
    return (*a1 + 124);
  }

  v3 = (((*a1 >> 57) >> 4) | (8 * ((*a1 >> 57) & 8 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7B)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1C1B10A20(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7B)
  {
    *result = a2 - 124;
    if (a3 >= 0x7C)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7C)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 3) & 0xF | (16 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_1C1B10AA4@<X0>(char *a2@<X8>)
{
  v3 = sub_1C1B955F8();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

uint64_t sub_1C1B10B04@<X0>(char *a3@<X8>)
{
  v4 = sub_1C1B955F8();

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

uint64_t sub_1C1B10B68(uint64_t a1)
{
  v2 = sub_1C1B1190C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C1B10BA4(uint64_t a1)
{
  v2 = sub_1C1B1190C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C1B10BEC()
{
  sub_1C1B95958();
  sub_1C1B94DE8();

  return sub_1C1B959A8();
}

uint64_t sub_1C1B10CD8(uint64_t a1)
{
  sub_1C1B94DE8();
}

uint64_t sub_1C1B10DB0(uint64_t a1)
{
  sub_1C1B95958();
  sub_1C1B94DE8();

  return sub_1C1B959A8();
}

unint64_t sub_1C1B10E98@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C1B1138C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1C1B10EC8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x72656E6E6162;
  v5 = 0xE600000000000000;
  v6 = 0x65766974616ELL;
  v7 = 0xED0000676E69646ELL;
  v8 = 0x614C686372616573;
  if (v2 != 3)
  {
    v8 = 0x614C746E65696C63;
    v7 = 0xEC00000074756F79;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x6F65646976;
    v3 = 0xE500000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_1C1B11020(void *a1, unint64_t a2)
{
  v5 = sub_1C1AC1F08(&qword_1EBF08D58, &qword_1C1B9EB30);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13[-v7];
  sub_1C1AAABE0(a1, a1[3]);
  sub_1C1B1190C();
  sub_1C1B95A18();
  v9 = a2 >> 61;
  v16 = a2 >> 61;
  v15 = 0;
  sub_1C1B119B4();
  sub_1C1B95808();
  if (!v2)
  {
    if (v9 <= 1)
    {
      if (v9)
      {
        a2 &= 0x1FFFFFFFFFFFFFFFuLL;
        v10 = type metadata accessor for VideoRepresentation;
        sub_1C1B11A08(&qword_1EBF08D48, type metadata accessor for VideoRepresentation, &protocol conformance descriptor for ContentRepresentation);
        v11 = &unk_1EBF09920;
      }

      else
      {
        v10 = type metadata accessor for BannerRepresentation;
        sub_1C1B11A08(&qword_1EBF08D50, type metadata accessor for BannerRepresentation, &protocol conformance descriptor for ContentRepresentation);
        v11 = &unk_1EBF09930;
      }
    }

    else
    {
      a2 &= 0x1FFFFFFFFFFFFFFFuLL;
      if (v9 == 2)
      {
        v10 = type metadata accessor for NativeRepresentation;
        sub_1C1B11A08(&qword_1EBF08D40, type metadata accessor for NativeRepresentation, &protocol conformance descriptor for ContentRepresentation);
        v11 = &unk_1EBF09910;
      }

      else if (v9 == 3)
      {
        v10 = type metadata accessor for SearchLandingPageRepresentation;
        sub_1C1B11A08(&unk_1EDE6A7F0, type metadata accessor for SearchLandingPageRepresentation, &protocol conformance descriptor for ContentRepresentation);
        v11 = &unk_1EDE6A800;
      }

      else
      {
        v10 = type metadata accessor for ClientLayoutRepresentation;
        sub_1C1B11A08(&qword_1EDE6A8F0, type metadata accessor for ClientLayoutRepresentation, &protocol conformance descriptor for ContentRepresentation);
        v11 = &unk_1EDE6A8F8;
      }
    }

    sub_1C1B11A08(v11, v10, &protocol conformance descriptor for ContentRepresentation);
    swift_getObjectType();
    v14 = a2;
    v13[15] = 1;
    sub_1C1B95808();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1C1B11344@<X0>(unint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1C1B1148C(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

unint64_t sub_1C1B1138C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1C1B955F8();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1C1B113D8(uint64_t a1)
{
  type metadata accessor for BannerRepresentation(0);
  result = swift_dynamicCastClass();
  if (!result)
  {
    type metadata accessor for VideoRepresentation(0);
    v2 = swift_dynamicCastClass();
    if (v2)
    {
      return v2 | 0x2000000000000000;
    }

    else
    {
      type metadata accessor for NativeRepresentation(0);
      v3 = swift_dynamicCastClass();
      if (v3)
      {
        return v3 | 0x4000000000000000;
      }

      else
      {
        type metadata accessor for SearchLandingPageRepresentation(0);
        v4 = swift_dynamicCastClass();
        if (v4)
        {
          return v4 | 0x6000000000000000;
        }

        else
        {
          type metadata accessor for ClientLayoutRepresentation(0);
          v5 = swift_dynamicCastClass();
          if (v5)
          {
            return v5 | 0x8000000000000000;
          }

          else
          {
            swift_unknownObjectRelease();
            return 0xF000000000000007;
          }
        }
      }
    }
  }

  return result;
}

unint64_t sub_1C1B1148C(void *a1)
{
  v3 = sub_1C1AC1F08(&qword_1EBF08D38, &qword_1C1B9EB28);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - v5;
  v7 = sub_1C1AAABE0(a1, a1[3]);
  sub_1C1B1190C();
  sub_1C1B95A08();
  if (!v1)
  {
    v10 = 0;
    sub_1C1B11960();
    sub_1C1B956F8();
    if (v9 <= 1u)
    {
      if (v9)
      {
        type metadata accessor for VideoRepresentation(0);
        v10 = 1;
        sub_1C1B11A08(&qword_1EBF08D48, type metadata accessor for VideoRepresentation, &protocol conformance descriptor for ContentRepresentation);
        sub_1C1B956F8();
        (*(v4 + 8))(v6, v3);
        v7 = v9 | 0x2000000000000000;
      }

      else
      {
        type metadata accessor for BannerRepresentation(0);
        v10 = 1;
        sub_1C1B11A08(&qword_1EBF08D50, type metadata accessor for BannerRepresentation, &protocol conformance descriptor for ContentRepresentation);
        sub_1C1B956F8();
        (*(v4 + 8))(v6, v3);
        v7 = v9;
      }
    }

    else if (v9 == 2)
    {
      type metadata accessor for NativeRepresentation(0);
      v10 = 1;
      sub_1C1B11A08(&qword_1EBF08D40, type metadata accessor for NativeRepresentation, &protocol conformance descriptor for ContentRepresentation);
      sub_1C1B956F8();
      (*(v4 + 8))(v6, v3);
      v7 = v9 | 0x4000000000000000;
    }

    else if (v9 == 3)
    {
      type metadata accessor for SearchLandingPageRepresentation(0);
      v10 = 1;
      sub_1C1B11A08(&unk_1EDE6A7F0, type metadata accessor for SearchLandingPageRepresentation, &protocol conformance descriptor for ContentRepresentation);
      sub_1C1B956F8();
      (*(v4 + 8))(v6, v3);
      v7 = v9 | 0x6000000000000000;
    }

    else
    {
      type metadata accessor for ClientLayoutRepresentation(0);
      v10 = 1;
      sub_1C1B11A08(&qword_1EDE6A8F0, type metadata accessor for ClientLayoutRepresentation, &protocol conformance descriptor for ContentRepresentation);
      sub_1C1B956F8();
      (*(v4 + 8))(v6, v3);
      v7 = v9 | 0x8000000000000000;
    }
  }

  sub_1C1AA86F8(a1);
  return v7;
}

unint64_t sub_1C1B1190C()
{
  result = qword_1EDE6C350;
  if (!qword_1EDE6C350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6C350);
  }

  return result;
}

unint64_t sub_1C1B11960()
{
  result = qword_1EDE6C328;
  if (!qword_1EDE6C328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6C328);
  }

  return result;
}

unint64_t sub_1C1B119B4()
{
  result = qword_1EDE6C338;
  if (!qword_1EDE6C338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6C338);
  }

  return result;
}

uint64_t sub_1C1B11A08(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1C1B11A74()
{
  result = qword_1EBF08D60;
  if (!qword_1EBF08D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08D60);
  }

  return result;
}

unint64_t sub_1C1B11ACC()
{
  result = qword_1EBF08D68;
  if (!qword_1EBF08D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08D68);
  }

  return result;
}

unint64_t sub_1C1B11B24()
{
  result = qword_1EDE6C340;
  if (!qword_1EDE6C340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6C340);
  }

  return result;
}

unint64_t sub_1C1B11B7C()
{
  result = qword_1EDE6C348;
  if (!qword_1EDE6C348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6C348);
  }

  return result;
}

unint64_t sub_1C1B11BD0()
{
  result = qword_1EDE6C330;
  if (!qword_1EDE6C330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6C330);
  }

  return result;
}

uint64_t PromotedContentInfo.ready.getter()
{
  v1 = *(v0 + OBJC_IVAR___APPCPromotedContentInfo_ready);
  sub_1C1AC0598(v1);
  return v1;
}

id sub_1C1B11E30()
{
  result = [*(v0 + OBJC_IVAR___APPCPromotedContentInfo_promotedContent) bestRepresentation];
  if (result)
  {
    type metadata accessor for NativeRepresentation(0);
    result = swift_dynamicCastClass();
    if (!result)
    {
      swift_unknownObjectRelease();
      return 0;
    }
  }

  return result;
}

id sub_1C1B11F18()
{
  result = [*(v0 + OBJC_IVAR___APPCPromotedContentInfo_promotedContent) bestRepresentation];
  if (result)
  {
    v2 = [result desiredPosition];
    swift_unknownObjectRelease();
    return v2;
  }

  return result;
}

uint64_t sub_1C1B12044()
{
  v1 = OBJC_IVAR___APPCPromotedContentInfo_placeholder;
  swift_beginAccess();
  return *(v0 + v1);
}

BOOL sub_1C1B1216C()
{
  if (![*(v0 + OBJC_IVAR___APPCPromotedContentInfo_promotedContent) bestRepresentation])
  {
    return 0;
  }

  type metadata accessor for ClientLayoutRepresentation(0);
  v1 = swift_dynamicCastClass() != 0;
  swift_unknownObjectRelease();
  return v1;
}

uint64_t sub_1C1B12214()
{
  result = [*(v0 + OBJC_IVAR___APPCPromotedContentInfo_promotedContent) bestRepresentation];
  if (result)
  {
    type metadata accessor for BannerRepresentation(0);
    v2 = swift_dynamicCastClass();
    if (v2)
    {
      v3 = v2;
      v4 = *(v2 + OBJC_IVAR___APPCBannerRepresentation_adamIdentifier);
      if (v4 && [v4 integerValue])
      {
        swift_unknownObjectRelease();
        return 1;
      }

      v5 = *(v3 + OBJC_IVAR___APPCContentRepresentation_tapAction);
      v6 = v5;
      swift_unknownObjectRelease();
      if (v5)
      {
        v7 = *&v6[OBJC_IVAR___APPCTapAction_actionType];

        return v7 == 2;
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }

    return 0;
  }

  return result;
}

uint64_t sub_1C1B123A8()
{
  v1 = *(v0 + OBJC_IVAR___APPCPromotedContentInfo_promotedContent);
  if ([v1 bestRepresentation] && (type metadata accessor for VideoRepresentation(0), v2 = swift_dynamicCastClass(), swift_unknownObjectRelease(), v2))
  {
    return 1;
  }

  else
  {
    return [v1 isOutstreamVideoAd];
  }
}

id PromotedContentInfo.__deallocating_deinit()
{
  if ([*&v0[OBJC_IVAR___APPCPromotedContentInfo_promotedContent] adType] == 1)
  {
    [*&v0[OBJC_IVAR___APPCPromotedContentInfo_metricsHelper] manuallyDiscardWithReason_];
  }

  v2.receiver = v0;
  v2.super_class = type metadata accessor for PromotedContentInfo();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id PromotedContentInfo.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t MetricsVideoQuality.init(rawValue:)(uint64_t result)
{
  if ((result - 103) < 0xFFFFFFFFFFFFFFFDLL)
  {
    return 0;
  }

  return result;
}

unint64_t sub_1C1B12700()
{
  result = qword_1EBF08D98;
  if (!qword_1EBF08D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF08D98);
  }

  return result;
}

uint64_t *sub_1C1B12754@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result - 103;
  v4 = __CFADD__(v3, 3);
  v5 = v3 < 0xFFFFFFFFFFFFFFFDLL;
  if (!v4)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_1C1B12784(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR___APPCMediaMetricsHelper_promotedContentIdentifier);
  swift_beginAccess();
  *v4 = v3;
  v4[1] = v2;
}

uint64_t sub_1C1B127F0()
{
  v1 = (v0 + OBJC_IVAR___APPCMediaMetricsHelper_promotedContentIdentifier);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_1C1B12848()
{
  v1 = v0 + OBJC_IVAR___APPCMediaMetricsHelper_containerType;
  swift_beginAccess();
  return *v1;
}

void *sub_1C1B12894()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v2 = Strong;
  if (Strong)
  {
    [Strong impressionThreshold];
    v4 = v3;
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0;
  }

  v5 = v0 + OBJC_IVAR___APPCMediaMetricsHelper_impressionThreshold;
  *v5 = v4;
  *(v5 + 8) = v2 == 0;
  v6 = swift_unknownObjectWeakLoadStrong();
  if (!v6)
  {
LABEL_8:
    v7 = 0;
    goto LABEL_9;
  }

  v7 = [v6 context];
  swift_unknownObjectRelease();
  if (v7)
  {
    v8 = [v7 current];
    swift_unknownObjectRelease();
    if (v8)
    {
      v7 = [v8 placement];
      swift_unknownObjectRelease();
      v9 = 0;
      goto LABEL_10;
    }

    goto LABEL_8;
  }

LABEL_9:
  v9 = 1;
LABEL_10:
  v10 = v0 + OBJC_IVAR___APPCMediaMetricsHelper_containerType;
  swift_beginAccess();
  *v10 = v7;
  *(v10 + 8) = v9;
  result = swift_unknownObjectWeakLoadStrong();
  v12 = result;
  if (result)
  {
    v13 = [result adType];
    result = swift_unknownObjectRelease();
  }

  else
  {
    v13 = 0;
  }

  v14 = v0 + OBJC_IVAR___APPCMediaMetricsHelper_adType;
  *v14 = v13;
  *(v14 + 8) = v12 == 0;
  return result;
}

uint64_t sub_1C1B12A28()
{
  v1 = OBJC_IVAR___APPCMediaMetricsHelper____lazy_storage___initialVolumeSender;
  v2 = *(v0 + OBJC_IVAR___APPCMediaMetricsHelper____lazy_storage___initialVolumeSender);
  if (v2 == 2)
  {
    LOBYTE(v2) = sub_1C1B12A6C(v0);
    *(v0 + v1) = v2 & 1;
  }

  return v2 & 1;
}

uint64_t sub_1C1B12A6C(uint64_t a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = [Strong adType];
    swift_unknownObjectRelease();
    if (v3 == 3)
    {
      v11 = [objc_opt_self() sharedInstance];
      [v11 outputVolume];
      v13 = v12;

      v4 = v13;
      goto LABEL_7;
    }

    if (!v3)
    {
      v4 = 0.0;
LABEL_7:
      sub_1C1B1608C(0.0, v4);
      return 1;
    }

    v15 = sub_1C1B95128();
    sub_1C1AC53E4();
    v6 = sub_1C1B95298();
    sub_1C1AC1F08(&qword_1EBF08EF0, &unk_1C1B9AF80);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1C1B98E60;
    v17 = (a1 + OBJC_IVAR___APPCMediaMetricsHelper_promotedContentIdentifier);
    swift_beginAccess();
    v19 = *v17;
    v18 = v17[1];
    *(v16 + 56) = MEMORY[0x1E69E6158];
    *(v16 + 64) = sub_1C1AA5E7C();
    *(v16 + 32) = v19;
    *(v16 + 40) = v18;

    sub_1C1B94BA8(v15, &dword_1C1AA2000, v6, "PC %{public}@: Ad type is %{public}@ but mediaPlayed is triggered.", 66, 2, v16);
  }

  else
  {
    v5 = sub_1C1B95128();
    sub_1C1AC53E4();
    v6 = sub_1C1B95298();
    sub_1C1AC1F08(&qword_1EBF08EF0, &unk_1C1B9AF80);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1C1B98E60;
    v8 = (a1 + OBJC_IVAR___APPCMediaMetricsHelper_promotedContentIdentifier);
    swift_beginAccess();
    v10 = *v8;
    v9 = v8[1];
    *(v7 + 56) = MEMORY[0x1E69E6158];
    *(v7 + 64) = sub_1C1AA5E7C();
    *(v7 + 32) = v10;
    *(v7 + 40) = v9;

    sub_1C1B94BA8(v5, &dword_1C1AA2000, v6, "PC %{public}@: Ad type is not set.", 34, 2, v7);
  }

  return 0;
}

uint64_t sub_1C1B12E08()
{
  v1 = (v0 + OBJC_IVAR___APPCMediaMetricsHelper_visiblePercentageChanged);
  swift_beginAccess();
  v2 = *v1;
  sub_1C1AC0598(*v1);
  return v2;
}

uint64_t sub_1C1B12E64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v5(a2, a3);
}

uint64_t sub_1C1B12F84(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___APPCMediaMetricsHelper_visiblePercentageChanged);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_1C1AC0530(v6, v7);
}

uint64_t sub_1C1B12FE4@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR___APPCMediaMetricsHelper_visiblePercentageChanged);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1C1B19354;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1C1AC0598(v4);
}

uint64_t sub_1C1B13084(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1C1B19318;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR___APPCMediaMetricsHelper_visiblePercentageChanged);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_1C1AC0598(v3);
  return sub_1C1AC0530(v8, v9);
}

uint64_t sub_1C1B13220(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR___APPCMediaMetricsHelper__visiblePercentage);
  if ((a1 & ~(a1 >> 63)) >= 100)
  {
    v3 = 100;
  }

  else
  {
    v3 = a1 & ~(a1 >> 63);
  }

  *(v1 + OBJC_IVAR___APPCMediaMetricsHelper__visiblePercentage) = v3;
  v4 = v1 + OBJC_IVAR___APPCMediaMetricsHelper_visiblePercentageChanged;
  result = swift_beginAccess();
  v6 = *v4;
  if (*v4)
  {
    v7 = *(v4 + 8);

    v6(v2, v3);
    return sub_1C1AC0530(v6, v7);
  }

  return result;
}

void (*sub_1C1B132C4(void *a1))(char **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR___APPCMediaMetricsHelper__visiblePercentage;
  v3[7] = v1;
  v3[8] = v4;
  v3[6] = *(v1 + v4);
  return sub_1C1B13338;
}

void sub_1C1B13338(char **a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 7);
  v3 = *(*a1 + 8);
  v5 = *(v4 + v3);
  if ((*(*a1 + 6) & ~(*(*a1 + 6) >> 63)) >= 100)
  {
    v6 = 100;
  }

  else
  {
    v6 = *(*a1 + 6) & ~(*(*a1 + 6) >> 63);
  }

  *(v4 + v3) = v6;
  v7 = v4 + OBJC_IVAR___APPCMediaMetricsHelper_visiblePercentageChanged;
  swift_beginAccess();
  v8 = *v7;
  if (*v7)
  {
    v9 = *(v7 + 8);

    v8(v5, v6);
    sub_1C1AC0530(v8, v9);
  }

  free(v2);
}

uint64_t sub_1C1B1352C(uint64_t a1, uint64_t a2)
{
  if (qword_1EDE6BC60 != -1)
  {
    swift_once();
  }

  sub_1C1AAD2FC(&qword_1EDE6CE68, v12);
  sub_1C1AAABE0(v12, v12[3]);
  v5 = *(v2 + OBJC_IVAR___APPCMediaMetricsHelper_contextIdentifier);
  v6 = *(v2 + OBJC_IVAR___APPCMediaMetricsHelper_contextIdentifier + 8);
  v7 = (v2 + OBJC_IVAR___APPCMediaMetricsHelper_promotedContentIdentifier);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;

  sub_1C1B4A2D8(v5, v6, v8, v9, sub_1C1B18B2C, v10);

  return sub_1C1AA86F8(v12);
}

void sub_1C1B13680(uint64_t a1, void (*a2)(id))
{
  v3 = swift_unknownObjectRetain();
  v4 = sub_1C1B4062C(v3);
  swift_unknownObjectRelease();
  a2(v4);
}

uint64_t sub_1C1B13778()
{
  if (qword_1EDE6BC60 != -1)
  {
    swift_once();
  }

  sub_1C1AAD2FC(&qword_1EDE6CE68, v7);
  sub_1C1AAABE0(v7, v7[3]);
  v1 = *(v0 + OBJC_IVAR___APPCMediaMetricsHelper_contextIdentifier);
  v2 = *(v0 + OBJC_IVAR___APPCMediaMetricsHelper_contextIdentifier + 8);
  v3 = (v0 + OBJC_IVAR___APPCMediaMetricsHelper_promotedContentIdentifier);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];

  sub_1C1B4A4E4(v1, v2, v4, v5);

  return sub_1C1AA86F8(v7);
}

uint64_t sub_1C1B138B8()
{
  v1 = v0;
  v2 = sub_1C1AC1F08(&qword_1EBF07F50, &qword_1C1B9A590);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = v58 - v7;
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = v58 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v13 = v58 - v12;
  v14 = sub_1C1B94588();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v60 = v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v61 = v58 - v18;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v20 = [Strong metricEventsTracking];
    swift_unknownObjectRelease();
    if (v20)
    {
      [v20 didReceivePrerollVideoResponse];
      swift_unknownObjectRelease();
    }
  }

  v21 = swift_unknownObjectWeakLoadStrong();
  if (!v21 || (v22 = [v21 metricEventsTracking], swift_unknownObjectRelease(), !v22))
  {
    (*(v15 + 56))(v13, 1, 1, v14);
LABEL_11:
    v8 = v13;
LABEL_12:
    sub_1C1AA7C8C(v8, &qword_1EBF07F50, &qword_1C1B9A590);
    v26 = sub_1C1B95128();
    sub_1C1AC53E4();
    v27 = sub_1C1B95298();
    sub_1C1AC1F08(&qword_1EBF08EF0, &unk_1C1B9AF80);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_1C1B98E60;
    v29 = (v1 + OBJC_IVAR___APPCMediaMetricsHelper_promotedContentIdentifier);
    swift_beginAccess();
    v31 = *v29;
    v30 = v29[1];
    *(v28 + 56) = MEMORY[0x1E69E6158];
    *(v28 + 64) = sub_1C1AA5E7C();
    *(v28 + 32) = v31;
    *(v28 + 40) = v30;

    sub_1C1B94BA8(v26, &dword_1C1AA2000, v27, "PC %{public}@: Pre-roll video interval from preroll request cannot send analytics as the data because a value is nil.", 117, 2, v28);
  }

  v23 = [v22 prerollAdRequestTimestamp];
  swift_unknownObjectRelease();
  if (v23)
  {
    sub_1C1B94558();

    v24 = *(v15 + 56);
    v24(v11, 0, 1, v14);
  }

  else
  {
    v24 = *(v15 + 56);
    v24(v11, 1, 1, v14);
  }

  sub_1C1B193EC(v11, v13);
  v25 = *(v15 + 48);
  if (v25(v13, 1, v14) == 1)
  {
    goto LABEL_11;
  }

  v33 = *(v15 + 32);
  v58[1] = v15 + 32;
  v59 = v24;
  v58[0] = v33;
  v33(v61, v13, v14);
  v34 = swift_unknownObjectWeakLoadStrong();
  if (!v34 || (v35 = [v34 metricEventsTracking], swift_unknownObjectRelease(), !v35))
  {
    (*(v15 + 8))(v61, v14);
    v59(v8, 1, 1, v14);
    goto LABEL_12;
  }

  v36 = [v35 prerollAdResponseTimestamp];
  swift_unknownObjectRelease();
  if (v36)
  {
    sub_1C1B94558();

    v37 = 0;
  }

  else
  {
    v37 = 1;
  }

  v59(v5, v37, 1, v14);
  sub_1C1B193EC(v5, v8);
  if (v25(v8, 1, v14) == 1)
  {
    (*(v15 + 8))(v61, v14);
    goto LABEL_12;
  }

  (v58[0])(v60, v8, v14);
  sub_1C1B94528();
  v39 = v38;
  v40 = swift_unknownObjectWeakLoadStrong();
  if (v40)
  {
    v41 = [v40 retrieveNetworkType];
    swift_unknownObjectRelease();
  }

  else
  {
    v41 = 0;
  }

  v42 = swift_unknownObjectWeakLoadStrong();
  if (v42 && (v43 = [v42 context], swift_unknownObjectRelease(), v43) && (v44 = objc_msgSend(v43, sel_current), swift_unknownObjectRelease(), v44))
  {
    v45 = [v44 placement];
    swift_unknownObjectRelease();
    v59 = Placement.apPlacement.getter(v45);
  }

  else
  {
    v59 = 0;
  }

  v46 = sub_1C1B95108();
  sub_1C1AC53E4();
  v47 = sub_1C1B95298();
  sub_1C1AC1F08(&qword_1EBF08EF0, &unk_1C1B9AF80);
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_1C1B9EEE0;
  v49 = (v1 + OBJC_IVAR___APPCMediaMetricsHelper_promotedContentIdentifier);
  swift_beginAccess();
  v51 = *v49;
  v50 = v49[1];
  *(v48 + 56) = MEMORY[0x1E69E6158];
  *(v48 + 64) = sub_1C1AA5E7C();
  *(v48 + 32) = v51;
  *(v48 + 40) = v50;
  v52 = MEMORY[0x1E69E6438];
  *(v48 + 96) = MEMORY[0x1E69E63B0];
  *(v48 + 104) = v52;
  v53 = MEMORY[0x1E69E6810];
  *(v48 + 72) = v39;
  v54 = MEMORY[0x1E69E6870];
  *(v48 + 136) = v53;
  *(v48 + 144) = v54;
  *(v48 + 112) = v41;

  sub_1C1B94BA8(v46, &dword_1C1AA2000, v47, "PC %{public}@: Pre-roll video interval from preroll request is %{public}f, network type is %{public}d.", 102, 2, v48);

  v55 = swift_unknownObjectWeakLoadStrong();
  if (v55)
  {
    v56 = [v55 metricEventsTracking];
    swift_unknownObjectRelease();
    if (v56)
    {
      [v56 sendAnalyticsEventFor:8 interval:v41 networkType:v59 placementType:0 failed:v39];
      swift_unknownObjectRelease();
    }
  }

  v57 = *(v15 + 8);
  v57(v60, v14);
  return (v57)(v61, v14);
}

uint64_t sub_1C1B140B0()
{
  v1 = v0;
  v2 = sub_1C1AC1F08(&qword_1EBF07F50, &qword_1C1B9A590);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v58 - v7;
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v58 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v58 - v12;
  v14 = sub_1C1B94588();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v61 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v58 - v18;
  v62 = OBJC_IVAR___APPCMediaMetricsHelper_promotedContent;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v21 = [Strong context], swift_unknownObjectRelease(), !v21))
  {
    (*(v15 + 56))(v13, 1, 1, v14);
    v8 = v13;
LABEL_18:
    sub_1C1AA7C8C(v8, &qword_1EBF07F50, &qword_1C1B9A590);
    v29 = sub_1C1B95128();
    sub_1C1AC53E4();
    v30 = sub_1C1B95298();
    sub_1C1AC1F08(&qword_1EBF08EF0, &unk_1C1B9AF80);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_1C1B98E60;
    v32 = (v1 + OBJC_IVAR___APPCMediaMetricsHelper_promotedContentIdentifier);
    swift_beginAccess();
    v34 = *v32;
    v33 = v32[1];
    *(v31 + 56) = MEMORY[0x1E69E6158];
    *(v31 + 64) = sub_1C1AA5E7C();
    *(v31 + 32) = v34;
    *(v31 + 40) = v33;

    sub_1C1B94BA8(v29, &dword_1C1AA2000, v30, "PC %{public}@: Pre-roll video interval from prefetch cannot be calculated, we are missing prefetchTimestamp or adResponseTimestamp.", 131, 2, v31);
  }

  v22 = [v21 prefetchTimestamp];
  swift_unknownObjectRelease();
  v60 = v1;
  if (v22)
  {
    sub_1C1B94558();

    v23 = *(v15 + 56);
    v23(v11, 0, 1, v14);
  }

  else
  {
    v23 = *(v15 + 56);
    v23(v11, 1, 1, v14);
  }

  sub_1C1B193EC(v11, v13);
  v24 = *(v15 + 48);
  if (v24(v13, 1, v14) == 1)
  {
    v8 = v13;
LABEL_17:
    v1 = v60;
    goto LABEL_18;
  }

  v58 = *(v15 + 32);
  v59 = v19;
  v58();
  v25 = swift_unknownObjectWeakLoadStrong();
  if (!v25 || (v26 = [v25 metricEventsTracking], swift_unknownObjectRelease(), !v26))
  {
    (*(v15 + 8))(v59, v14);
    v23(v8, 1, 1, v14);
    goto LABEL_17;
  }

  v27 = [v26 prerollAdResponseTimestamp];
  swift_unknownObjectRelease();
  if (v27)
  {
    sub_1C1B94558();

    v28 = 0;
  }

  else
  {
    v28 = 1;
  }

  v23(v5, v28, 1, v14);
  sub_1C1B193EC(v5, v8);
  if (v24(v8, 1, v14) == 1)
  {
    (*(v15 + 8))(v59, v14);
    goto LABEL_17;
  }

  (v58)(v61, v8, v14);
  v36 = v60;
  v37 = swift_unknownObjectWeakLoadStrong();
  if (v37)
  {
    v38 = [v37 retrieveNetworkType];
    swift_unknownObjectRelease();
  }

  else
  {
    v38 = 0;
  }

  sub_1C1B94528();
  v40 = v39;
  v41 = swift_unknownObjectWeakLoadStrong();
  if (v41 && (v42 = [v41 context], swift_unknownObjectRelease(), v42) && (v43 = objc_msgSend(v42, sel_current), swift_unknownObjectRelease(), v43))
  {
    v44 = [v43 placement];
    swift_unknownObjectRelease();
    v45 = Placement.apPlacement.getter(v44);
  }

  else
  {
    v45 = 0;
  }

  v46 = sub_1C1B95108();
  sub_1C1AC53E4();
  v47 = sub_1C1B95298();
  sub_1C1AC1F08(&qword_1EBF08EF0, &unk_1C1B9AF80);
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_1C1B9EEE0;
  v49 = (v36 + OBJC_IVAR___APPCMediaMetricsHelper_promotedContentIdentifier);
  swift_beginAccess();
  v50 = *v49;
  v51 = v49[1];
  *(v48 + 56) = MEMORY[0x1E69E6158];
  *(v48 + 64) = sub_1C1AA5E7C();
  *(v48 + 32) = v50;
  *(v48 + 40) = v51;
  v52 = MEMORY[0x1E69E6438];
  *(v48 + 96) = MEMORY[0x1E69E63B0];
  *(v48 + 104) = v52;
  v53 = MEMORY[0x1E69E6810];
  *(v48 + 72) = v40;
  v54 = MEMORY[0x1E69E6870];
  *(v48 + 136) = v53;
  *(v48 + 144) = v54;
  *(v48 + 112) = v38;

  sub_1C1B94BA8(v46, &dword_1C1AA2000, v47, "PC %{public}@: Pre-roll video interval from prefetch is %{public}f, network type is %{public}d.", 95, 2, v48);

  v55 = swift_unknownObjectWeakLoadStrong();
  if (v55)
  {
    v56 = [v55 metricEventsTracking];
    swift_unknownObjectRelease();
    if (v56)
    {
      [v56 sendAnalyticsEventFor:7 interval:v38 networkType:v45 placementType:0 failed:v40];
      swift_unknownObjectRelease();
    }
  }

  v57 = *(v15 + 8);
  v57(v61, v14);
  return (v57)(v59, v14);
}

void sub_1C1B14874()
{
  v1 = v0;
  v2 = sub_1C1B944A8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C1AC1F08(&qword_1EBF07AC8, &qword_1C1B9CED0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v66 - v7;
  v9 = sub_1C1B94A58();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v17 = v66 - v16;
  v18 = OBJC_IVAR___APPCMediaMetricsHelper_videoDuration;
  if (*(v1 + OBJC_IVAR___APPCMediaMetricsHelper_videoDuration) == 0.0)
  {
    v19 = sub_1C1B95128();
    sub_1C1AC53E4();
    v20 = sub_1C1B95298();
    sub_1C1AC1F08(&qword_1EBF08EF0, &unk_1C1B9AF80);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1C1B98E60;
    v22 = (v1 + OBJC_IVAR___APPCMediaMetricsHelper_promotedContentIdentifier);
    swift_beginAccess();
    v24 = *v22;
    v23 = v22[1];
    *(v21 + 56) = MEMORY[0x1E69E6158];
    *(v21 + 64) = sub_1C1AA5E7C();
    *(v21 + 32) = v24;
    *(v21 + 40) = v23;

    sub_1C1B94BA8(v19, &dword_1C1AA2000, v20, "PC %{public}@: Video duration is invalid.", 41, 2, v21);
  }

  else
  {
    v70 = v15;
    v67 = v8;
    v74 = v13;
    v66[0] = v5;
    v71 = v3;
    v72 = v2;
    v73 = v14;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v26 = [Strong adType];
      swift_unknownObjectRelease();
      if (v26 == 3)
      {
        sub_1C1B138B8();
        sub_1C1B140B0();
      }
    }

    sub_1C1AC1F08(&qword_1EBF08DC8, &unk_1C1B9F390);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C1B9EEE0;
    v28 = *(v10 + 104);
    v29 = v74;
    v28(v17, *MEMORY[0x1E6989FB0], v74);
    v30 = sub_1C1B94A48();
    v76 = v1;
    v32 = v31;
    v33 = *(v10 + 8);
    v33(v17, v29);
    *(inited + 32) = v30;
    v66[1] = inited + 32;
    *(inited + 40) = v32;
    *(inited + 48) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
    v34 = *MEMORY[0x1E6989F40];
    v35 = v70;
    v75 = v10 + 104;
    v69 = v28;
    v28(v70, v34, v29);
    v36 = sub_1C1B94A48();
    v38 = v37;
    v70 = (v10 + 8);
    v68 = v33;
    v33(v35, v29);
    *(inited + 56) = v36;
    *(inited + 64) = v38;
    v39 = v76;
    v40 = OBJC_IVAR___APPCMediaMetricsHelper_videoURL;
    swift_beginAccess();
    v41 = v39 + v40;
    v42 = v67;
    sub_1C1AA7E30(v41, v67, &qword_1EBF07AC8, &qword_1C1B9CED0);
    v43 = v71;
    v44 = v72;
    if ((*(v71 + 48))(v42, 1, v72))
    {
      sub_1C1AA7C8C(v42, &qword_1EBF07AC8, &qword_1C1B9CED0);
    }

    else
    {
      v45 = v66[0];
      (*(v43 + 16))(v66[0], v42, v44);
      sub_1C1AA7C8C(v42, &qword_1EBF07AC8, &qword_1C1B9CED0);
      sub_1C1B94468();
      (*(v43 + 8))(v45, v44);
    }

    v46 = sub_1C1B94D78();

    *(inited + 72) = v46;
    v47 = v73;
    v48 = v74;
    v49 = v69;
    v69(v73, *MEMORY[0x1E6989FA8], v74);
    v50 = sub_1C1B94A48();
    v52 = v51;
    v53 = v68;
    v68(v47, v48);
    *(inited + 80) = v50;
    *(inited + 88) = v52;
    v54 = v76;
    *(inited + 96) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    sub_1C1AD408C(inited);
    swift_setDeallocating();
    sub_1C1AC1F08(&unk_1EBF08DD0, &unk_1C1B9EF00);
    swift_arrayDestroy();
    sub_1C1AC1F08(&unk_1EBF08FE0, qword_1C1B9EF10);
    v55 = swift_initStackObject();
    *(v55 + 16) = xmmword_1C1B98E60;
    v49(v47, *MEMORY[0x1E6989FA0], v48);
    v56 = sub_1C1B94A48();
    v58 = v57;
    v53(v47, v48);
    *(v55 + 32) = v56;
    *(v55 + 40) = v58;
    *(v55 + 48) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    sub_1C1AB3BEC(v55);
    swift_setDeallocating();
    sub_1C1AA7C8C(v55 + 32, &qword_1EBF08DE0, &unk_1C1B9FAA0);
    v59 = *(v54 + OBJC_IVAR___APPCMediaMetricsHelper_eventCountTracker);
    [*(v59 + 16) lock];
    v60 = *(v59 + 32);
    v61 = __OFADD__(v60, 1);
    v62 = v60 + 1;
    if (v61)
    {
      __break(1u);
    }

    else
    {
      *(v59 + 32) = v62;
      [*(v59 + 16) unlock];
      v63 = *(v54 + OBJC_IVAR___APPCMediaMetricsHelper_primitiveCreator);
      swift_unknownObjectRetain();
      sub_1C1AC1F08(&qword_1EBF08EE0, &unk_1C1B9BE70);
      v64 = sub_1C1B94CA8();
      sub_1C1AC1F08(&qword_1EBF08E00, &unk_1C1B9F5A0);
      v65 = sub_1C1B94CA8();
      [v63 recordMetric:1600 forPurpose:100 properties:v64 internalProperties:v65 order:sub_1C1B948C8() options:0];

      swift_unknownObjectRelease();
    }
  }
}

void sub_1C1B151A8()
{
  v1 = sub_1C1B94A58();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v36 - v6;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = [Strong bestRepresentation];
    swift_unknownObjectRelease();
    if (v9)
    {
      type metadata accessor for VideoRepresentation(0);
      v10 = swift_dynamicCastClass();
      if (v10)
      {
        v11 = v10;
        v36[1] = v9;
        sub_1C1AC1F08(&qword_1EBF08DC8, &unk_1C1B9F390);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1C1B9AF30;
        v13 = *MEMORY[0x1E6989F68];
        v14 = *(v2 + 104);
        v39 = v2 + 104;
        v14(v7, v13, v1);
        v38 = v0;
        v15 = sub_1C1B94A48();
        v17 = v16;
        v18 = *(v2 + 8);
        v36[2] = v2 + 8;
        v18(v7, v1);
        v37 = v18;
        *(inited + 32) = v15;
        *(inited + 40) = v17;
        v19 = v11 + OBJC_IVAR___APPCVideoRepresentation_videoSize;
        *(inited + 48) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
        v14(v5, *MEMORY[0x1E6989F80], v1);
        v20 = sub_1C1B94A48();
        v22 = v21;
        v18(v5, v1);
        *(inited + 56) = v20;
        *(inited + 64) = v22;
        *(inited + 72) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
        sub_1C1AD408C(inited);
        swift_setDeallocating();
        sub_1C1AC1F08(&unk_1EBF08DD0, &unk_1C1B9EF00);
        swift_arrayDestroy();
        sub_1C1AC1F08(&unk_1EBF08FE0, qword_1C1B9EF10);
        v23 = swift_initStackObject();
        *(v23 + 16) = xmmword_1C1B98E60;
        v14(v7, *MEMORY[0x1E6989FA0], v1);
        v24 = sub_1C1B94A48();
        v25 = v38;
        v26 = v24;
        v28 = v27;
        v37(v7, v1);
        *(v23 + 32) = v26;
        *(v23 + 40) = v28;
        *(v23 + 48) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
        sub_1C1AB3BEC(v23);
        swift_setDeallocating();
        sub_1C1AA7C8C(v23 + 32, &qword_1EBF08DE0, &unk_1C1B9FAA0);
        v29 = *(v25 + OBJC_IVAR___APPCMediaMetricsHelper_eventCountTracker);
        [*(v29 + 16) lock];
        v30 = *(v29 + 32);
        v31 = __OFADD__(v30, 1);
        v32 = v30 + 1;
        if (v31)
        {
          __break(1u);
        }

        else
        {
          *(v29 + 32) = v32;
          [*(v29 + 16) unlock];
          v33 = *(v25 + OBJC_IVAR___APPCMediaMetricsHelper_primitiveCreator);
          swift_unknownObjectRetain();
          sub_1C1AC1F08(&qword_1EBF08EE0, &unk_1C1B9BE70);
          v34 = sub_1C1B94CA8();
          sub_1C1AC1F08(&qword_1EBF08E00, &unk_1C1B9F5A0);
          v35 = sub_1C1B94CA8();
          [v33 recordMetric:1601 forPurpose:100 properties:v34 internalProperties:v35 order:sub_1C1B948C8() options:0];
          swift_unknownObjectRelease();

          swift_unknownObjectRelease();
        }
      }

      else
      {

        swift_unknownObjectRelease();
      }
    }
  }
}

void sub_1C1B156F4(double a1)
{
  v2 = v1;
  v4 = sub_1C1B94A58();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + OBJC_IVAR___APPCMediaMetricsHelper_mediaHasStarted) = 1;
  if (*(v1 + OBJC_IVAR___APPCMediaMetricsHelper_videoDuration) == 0.0)
  {
    v9 = sub_1C1B95128();
    sub_1C1AC53E4();
    v10 = sub_1C1B95298();
    sub_1C1AC1F08(&qword_1EBF08EF0, &unk_1C1B9AF80);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1C1B98E60;
    v12 = (v2 + OBJC_IVAR___APPCMediaMetricsHelper_promotedContentIdentifier);
    swift_beginAccess();
    v14 = *v12;
    v13 = v12[1];
    *(v11 + 56) = MEMORY[0x1E69E6158];
    *(v11 + 64) = sub_1C1AA5E7C();
    *(v11 + 32) = v14;
    *(v11 + 40) = v13;

    sub_1C1B94BA8(v9, &dword_1C1AA2000, v10, "PC %{public}@: Video duration is invalid.", 41, 2, v11);
  }

  else
  {
    v15 = v6;
    v16 = sub_1C1B179B0(v6, a1);
    if ((v16 & 0x100000000) == 0)
    {
      v17 = v16;
      sub_1C1AC1F08(&qword_1EBF08DC8, &unk_1C1B9F390);
      inited = swift_initStackObject();
      v39 = xmmword_1C1B98E60;
      *(inited + 16) = xmmword_1C1B98E60;
      v19 = *MEMORY[0x1E6989EF0];
      v38 = *(v5 + 104);
      v38(v8, v19, v15);
      v20 = sub_1C1B94A48();
      v22 = v21;
      v23 = *(v5 + 8);
      v23(v8, v15);
      *(inited + 32) = v20;
      *(inited + 40) = v22;
      v24 = objc_allocWithZone(MEMORY[0x1E696AD98]);
      LODWORD(v25) = v17;
      *(inited + 48) = [v24 initWithFloat_];
      v37 = sub_1C1AD408C(inited);
      swift_setDeallocating();
      sub_1C1AA7C8C(inited + 32, &unk_1EBF08DD0, &unk_1C1B9EF00);
      sub_1C1AC1F08(&unk_1EBF08FE0, qword_1C1B9EF10);
      v26 = swift_initStackObject();
      *(v26 + 16) = v39;
      v38(v8, *MEMORY[0x1E6989FA0], v15);
      v27 = sub_1C1B94A48();
      v29 = v28;
      v23(v8, v15);
      *(v26 + 32) = v27;
      *(v26 + 40) = v29;
      *(v26 + 48) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
      sub_1C1AB3BEC(v26);
      swift_setDeallocating();
      sub_1C1AA7C8C(v26 + 32, &qword_1EBF08DE0, &unk_1C1B9FAA0);
      v30 = *(v2 + OBJC_IVAR___APPCMediaMetricsHelper_eventCountTracker);
      [*(v30 + 16) lock];
      v31 = *(v30 + 32);
      v32 = __OFADD__(v31, 1);
      v33 = v31 + 1;
      if (v32)
      {
        __break(1u);
      }

      else
      {
        *(v30 + 32) = v33;
        [*(v30 + 16) unlock];
        v34 = *(v2 + OBJC_IVAR___APPCMediaMetricsHelper_primitiveCreator);
        swift_unknownObjectRetain();
        sub_1C1AC1F08(&qword_1EBF08EE0, &unk_1C1B9BE70);
        v35 = sub_1C1B94CA8();
        sub_1C1AC1F08(&qword_1EBF08E00, &unk_1C1B9F5A0);
        v36 = sub_1C1B94CA8();
        [v34 recordMetric:1602 forPurpose:100 properties:v35 internalProperties:v36 order:sub_1C1B948C8() options:0];

        swift_unknownObjectRelease();
      }
    }
  }
}

unint64_t sub_1C1B15C88(double a1)
{
  v2 = v1;
  v4 = sub_1C1B94A58();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v31[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*&v1[OBJC_IVAR___APPCMediaMetricsHelper_videoDuration] == 0.0)
  {
    v9 = sub_1C1B95128();
    sub_1C1AC53E4();
    v10 = sub_1C1B95298();
    sub_1C1AC1F08(&qword_1EBF08EF0, &unk_1C1B9AF80);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1C1B98E60;
    v12 = &v2[OBJC_IVAR___APPCMediaMetricsHelper_promotedContentIdentifier];
    swift_beginAccess();
    v14 = *v12;
    v13 = *(v12 + 1);
    *(v11 + 56) = MEMORY[0x1E69E6158];
    *(v11 + 64) = sub_1C1AA5E7C();
    *(v11 + 32) = v14;
    *(v11 + 40) = v13;

    sub_1C1B94BA8(v9, &dword_1C1AA2000, v10, "PC %{public}@: Video duration is invalid.", 41, 2, v11);
  }

  else
  {
    v16 = v6;
    v17 = sub_1C1B17C6C();
    result = sub_1C1B179B0(v17, a1);
    if ((result & 0x100000000) == 0)
    {
      v18 = result;
      sub_1C1AC1F08(&qword_1EBF08DC8, &unk_1C1B9F390);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1C1B98E60;
      (*(v5 + 104))(v8, *MEMORY[0x1E6989EF0], v16);
      v20 = sub_1C1B94A48();
      v22 = v21;
      (*(v5 + 8))(v8, v16);
      *(inited + 32) = v20;
      *(inited + 40) = v22;
      v23 = objc_allocWithZone(MEMORY[0x1E696AD98]);
      LODWORD(v24) = v18;
      *(inited + 48) = [v23 initWithFloat_];
      sub_1C1AD408C(inited);
      swift_setDeallocating();
      sub_1C1AA7C8C(inited + 32, &unk_1EBF08DD0, &unk_1C1B9EF00);
      v25 = *&v2[OBJC_IVAR___APPCMediaMetricsHelper_eventCountTracker];
      result = [*(v25 + 16) lock];
      v26 = *(v25 + 32);
      v27 = __OFADD__(v26, 1);
      v28 = v26 + 1;
      if (v27)
      {
        __break(1u);
      }

      else
      {
        *(v25 + 32) = v28;
        [*(v25 + 16) unlock];
        v29 = *&v2[OBJC_IVAR___APPCMediaMetricsHelper_primitiveCreator];
        swift_unknownObjectRetain();
        sub_1C1AC1F08(&qword_1EBF08EE0, &unk_1C1B9BE70);
        v30 = sub_1C1B94CA8();
        [v29 recordMetric:1604 forPurpose:100 properties:v30 internalProperties:0 order:sub_1C1B948C8() options:0];

        swift_unknownObjectRelease();

        return [v2 mediaComplete];
      }
    }
  }

  return result;
}

void sub_1C1B1608C(double a1, float a2)
{
  v3 = v2;
  v6 = sub_1C1B94A58();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v54 - v12;
  if (*(v2 + OBJC_IVAR___APPCMediaMetricsHelper_videoDuration) == 0.0)
  {
    v14 = sub_1C1B95128();
    sub_1C1AC53E4();
    v15 = sub_1C1B95298();
    sub_1C1AC1F08(&qword_1EBF08EF0, &unk_1C1B9AF80);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1C1B98E60;
    v17 = (v3 + OBJC_IVAR___APPCMediaMetricsHelper_promotedContentIdentifier);
    swift_beginAccess();
    v19 = *v17;
    v18 = v17[1];
    *(v16 + 56) = MEMORY[0x1E69E6158];
    *(v16 + 64) = sub_1C1AA5E7C();
    *(v16 + 32) = v19;
    *(v16 + 40) = v18;

    sub_1C1B94BA8(v14, &dword_1C1AA2000, v15, "PC %{public}@: Video duration is invalid.", 41, 2, v16);
  }

  else
  {
    v20 = v11;
    v21 = sub_1C1B179B0(v11, a1);
    if ((v21 & 0x100000000) == 0)
    {
      v56 = v2;
      v22 = v21;
      if (a2 == 1.0)
      {
        v23 = [objc_opt_self() processInfo];
        v24 = [v23 isRunningTests];

        a2 = 1.0;
        if ((v24 & 1) == 0)
        {
          v25 = [objc_opt_self() sharedInstance];
          [v25 outputVolume];
          a2 = v26;
        }
      }

      sub_1C1AC1F08(&qword_1EBF08DC8, &unk_1C1B9F390);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1C1B9AF30;
      v28 = *(v7 + 104);
      v29 = v20;
      v28(v13, *MEMORY[0x1E6989EF0], v20);
      v30 = sub_1C1B94A48();
      v32 = v31;
      v55 = *(v7 + 8);
      v55(v13, v20);
      *(inited + 32) = v30;
      *(inited + 40) = v32;
      v33 = objc_allocWithZone(MEMORY[0x1E696AD98]);
      LODWORD(v34) = v22;
      *(inited + 48) = [v33 initWithFloat_];
      v28(v10, *MEMORY[0x1E6989F90], v20);
      v35 = sub_1C1B94A48();
      v37 = v36;
      v38 = v10;
      v39 = v55;
      v55(v38, v20);
      *(inited + 56) = v35;
      *(inited + 64) = v37;
      v40 = objc_allocWithZone(MEMORY[0x1E696AD98]);
      *&v41 = a2;
      *(inited + 72) = [v40 initWithFloat_];
      v54 = sub_1C1AD408C(inited);
      swift_setDeallocating();
      sub_1C1AC1F08(&unk_1EBF08DD0, &unk_1C1B9EF00);
      swift_arrayDestroy();
      sub_1C1AC1F08(&unk_1EBF08FE0, qword_1C1B9EF10);
      v42 = swift_initStackObject();
      *(v42 + 16) = xmmword_1C1B98E60;
      v28(v13, *MEMORY[0x1E6989FA0], v20);
      v43 = sub_1C1B94A48();
      v45 = v44;
      v39(v13, v29);
      *(v42 + 32) = v43;
      *(v42 + 40) = v45;
      v46 = v56;
      *(v42 + 48) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
      sub_1C1AB3BEC(v42);
      swift_setDeallocating();
      sub_1C1AA7C8C(v42 + 32, &qword_1EBF08DE0, &unk_1C1B9FAA0);
      v47 = *(v46 + OBJC_IVAR___APPCMediaMetricsHelper_eventCountTracker);
      [*(v47 + 16) lock];
      v48 = *(v47 + 32);
      v49 = __OFADD__(v48, 1);
      v50 = v48 + 1;
      if (v49)
      {
        __break(1u);
      }

      else
      {
        *(v47 + 32) = v50;
        [*(v47 + 16) unlock];
        v51 = *(v46 + OBJC_IVAR___APPCMediaMetricsHelper_primitiveCreator);
        swift_unknownObjectRetain();
        sub_1C1AC1F08(&qword_1EBF08EE0, &unk_1C1B9BE70);
        v52 = sub_1C1B94CA8();
        sub_1C1AC1F08(&qword_1EBF08E00, &unk_1C1B9F5A0);
        v53 = sub_1C1B94CA8();
        [v51 recordMetric:1605 forPurpose:100 properties:v52 internalProperties:v53 order:sub_1C1B948C8() options:0];

        swift_unknownObjectRelease();
      }
    }
  }
}

void sub_1C1B1675C(int a1, uint64_t a2, double a3)
{
  v5 = v3;
  v8 = sub_1C1B94A58();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v50 - v14;
  if (*(v3 + OBJC_IVAR___APPCMediaMetricsHelper_videoDuration) == 0.0)
  {
    v16 = sub_1C1B95128();
    sub_1C1AC53E4();
    v17 = sub_1C1B95298();
    sub_1C1AC1F08(&qword_1EBF08EF0, &unk_1C1B9AF80);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1C1B98E60;
    v19 = (v5 + OBJC_IVAR___APPCMediaMetricsHelper_promotedContentIdentifier);
    swift_beginAccess();
    v21 = *v19;
    v20 = v19[1];
    *(v18 + 56) = MEMORY[0x1E69E6158];
    *(v18 + 64) = sub_1C1AA5E7C();
    *(v18 + 32) = v21;
    *(v18 + 40) = v20;

    sub_1C1B94BA8(v16, &dword_1C1AA2000, v17, "PC %{public}@: Video duration is invalid.", 41, 2, v18);
  }

  else
  {
    v22 = v13;
    v23 = sub_1C1B179B0(v13, a3);
    if ((v23 & 0x100000000) == 0)
    {
      v50 = a2;
      v24 = v23;
      sub_1C1AC1F08(&qword_1EBF08DC8, &unk_1C1B9F390);
      inited = swift_initStackObject();
      v52 = a1;
      v26 = inited;
      *(inited + 16) = xmmword_1C1B9AF30;
      v27 = *MEMORY[0x1E6989EF0];
      v28 = *(v9 + 104);
      v54 = v9 + 104;
      v28(v15, v27, v22);
      v53 = v28;
      v29 = sub_1C1B94A48();
      v31 = v30;
      v51 = *(v9 + 8);
      v51(v15, v22);
      v26[4] = v29;
      v26[5] = v31;
      v32 = objc_allocWithZone(MEMORY[0x1E696AD98]);
      LODWORD(v33) = v24;
      v26[6] = [v32 initWithFloat_];
      v28(v12, *MEMORY[0x1E6989EB8], v22);
      v34 = sub_1C1B94A48();
      v36 = v35;
      v37 = v51;
      v51(v12, v22);
      v26[7] = v34;
      v26[8] = v36;
      v38 = objc_allocWithZone(MEMORY[0x1E696AD98]);
      v26[9] = [v38 initWithBool_];
      sub_1C1AD408C(v26);
      swift_setDeallocating();
      sub_1C1AC1F08(&unk_1EBF08DD0, &unk_1C1B9EF00);
      swift_arrayDestroy();
      sub_1C1AC1F08(&unk_1EBF08FE0, qword_1C1B9EF10);
      v39 = swift_initStackObject();
      *(v39 + 16) = xmmword_1C1B98E60;
      v53(v15, *MEMORY[0x1E6989FA0], v22);
      v40 = sub_1C1B94A48();
      v42 = v41;
      v37(v15, v22);
      *(v39 + 32) = v40;
      *(v39 + 40) = v42;
      *(v39 + 48) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
      sub_1C1AB3BEC(v39);
      swift_setDeallocating();
      sub_1C1AA7C8C(v39 + 32, &qword_1EBF08DE0, &unk_1C1B9FAA0);
      v43 = *(v5 + OBJC_IVAR___APPCMediaMetricsHelper_eventCountTracker);
      [*(v43 + 16) lock];
      v44 = *(v43 + 32);
      v45 = __OFADD__(v44, 1);
      v46 = v44 + 1;
      if (v45)
      {
        __break(1u);
      }

      else
      {
        *(v43 + 32) = v46;
        [*(v43 + 16) unlock];
        v47 = *(v5 + OBJC_IVAR___APPCMediaMetricsHelper_primitiveCreator);
        swift_unknownObjectRetain();
        sub_1C1AC1F08(&qword_1EBF08EE0, &unk_1C1B9BE70);
        v48 = sub_1C1B94CA8();
        sub_1C1AC1F08(&qword_1EBF08E00, &unk_1C1B9F5A0);
        v49 = sub_1C1B94CA8();
        [v47 recordMetric:v50 forPurpose:100 properties:v48 internalProperties:v49 order:sub_1C1B948C8() options:0];

        swift_unknownObjectRelease();
      }
    }
  }
}

void sub_1C1B16D70(uint64_t a1, double a2)
{
  v4 = v2;
  v6 = sub_1C1B94A58();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v2 + OBJC_IVAR___APPCMediaMetricsHelper_videoDuration) == 0.0)
  {
    v11 = sub_1C1B95128();
    sub_1C1AC53E4();
    v12 = sub_1C1B95298();
    sub_1C1AC1F08(&qword_1EBF08EF0, &unk_1C1B9AF80);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1C1B98E60;
    v14 = (v4 + OBJC_IVAR___APPCMediaMetricsHelper_promotedContentIdentifier);
    swift_beginAccess();
    v16 = *v14;
    v15 = v14[1];
    *(v13 + 56) = MEMORY[0x1E69E6158];
    *(v13 + 64) = sub_1C1AA5E7C();
    *(v13 + 32) = v16;
    *(v13 + 40) = v15;

    sub_1C1B94BA8(v11, &dword_1C1AA2000, v12, "PC %{public}@: Video duration is invalid.", 41, 2, v13);
  }

  else
  {
    v17 = v8;
    v18 = sub_1C1B179B0(v8, a2);
    if ((v18 & 0x100000000) == 0)
    {
      v40 = a1;
      v19 = v18;
      sub_1C1AC1F08(&qword_1EBF08DC8, &unk_1C1B9F390);
      inited = swift_initStackObject();
      v42 = xmmword_1C1B98E60;
      *(inited + 16) = xmmword_1C1B98E60;
      v21 = *MEMORY[0x1E6989EF0];
      v41 = *(v7 + 104);
      v41(v10, v21, v17);
      v22 = sub_1C1B94A48();
      v24 = v23;
      v25 = *(v7 + 8);
      v25(v10, v17);
      *(inited + 32) = v22;
      *(inited + 40) = v24;
      v26 = objc_allocWithZone(MEMORY[0x1E696AD98]);
      LODWORD(v27) = v19;
      *(inited + 48) = [v26 initWithFloat_];
      v39[1] = sub_1C1AD408C(inited);
      swift_setDeallocating();
      sub_1C1AA7C8C(inited + 32, &unk_1EBF08DD0, &unk_1C1B9EF00);
      sub_1C1AC1F08(&unk_1EBF08FE0, qword_1C1B9EF10);
      v28 = swift_initStackObject();
      *(v28 + 16) = v42;
      v41(v10, *MEMORY[0x1E6989FA0], v17);
      v29 = sub_1C1B94A48();
      v31 = v30;
      v25(v10, v17);
      *(v28 + 32) = v29;
      *(v28 + 40) = v31;
      *(v28 + 48) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
      sub_1C1AB3BEC(v28);
      swift_setDeallocating();
      sub_1C1AA7C8C(v28 + 32, &qword_1EBF08DE0, &unk_1C1B9FAA0);
      v32 = *(v4 + OBJC_IVAR___APPCMediaMetricsHelper_eventCountTracker);
      [*(v32 + 16) lock];
      v33 = *(v32 + 32);
      v34 = __OFADD__(v33, 1);
      v35 = v33 + 1;
      if (v34)
      {
        __break(1u);
      }

      else
      {
        *(v32 + 32) = v35;
        [*(v32 + 16) unlock];
        v36 = *(v4 + OBJC_IVAR___APPCMediaMetricsHelper_primitiveCreator);
        swift_unknownObjectRetain();
        sub_1C1AC1F08(&qword_1EBF08EE0, &unk_1C1B9BE70);
        v37 = sub_1C1B94CA8();
        sub_1C1AC1F08(&qword_1EBF08E00, &unk_1C1B9F5A0);
        v38 = sub_1C1B94CA8();
        [v36 recordMetric:v40 forPurpose:100 properties:v37 internalProperties:v38 order:sub_1C1B948C8() options:0];

        swift_unknownObjectRelease();
      }
    }
  }
}

uint64_t sub_1C1B172A8()
{
  v1 = v0;
  sub_1C1B1748C(0);
  result = sub_1C1B12A28();
  if ((result & 1) == 0)
  {
    v3 = sub_1C1B95128();
    sub_1C1AC53E4();
    v4 = sub_1C1B95298();
    sub_1C1AC1F08(&qword_1EBF08EF0, &unk_1C1B9AF80);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1C1B98E60;
    v6 = (v1 + OBJC_IVAR___APPCMediaMetricsHelper_promotedContentIdentifier);
    swift_beginAccess();
    v8 = *v6;
    v7 = v6[1];
    *(v5 + 56) = MEMORY[0x1E69E6158];
    *(v5 + 64) = sub_1C1AA5E7C();
    *(v5 + 32) = v8;
    *(v5 + 40) = v7;

    sub_1C1B94BA8(v3, &dword_1C1AA2000, v4, "%{public}@: Unable to send initial volume.", 42, 2, v5);
  }

  return result;
}

void sub_1C1B1748C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1C1B94A58();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v41 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v39 - v8;
  v1[OBJC_IVAR___APPCMediaMetricsHelper_mediaHasStarted] = 1;
  sub_1C1B17C6C();
  v10 = [objc_opt_self() processInfo];
  [v10 isRunningTests];

  v11 = 100;
  if (a1 < 100)
  {
    v11 = a1;
  }

  v12 = v11 & ~(v11 >> 63);
  if (v12 != a1)
  {
    LODWORD(v40) = sub_1C1B95128();
    sub_1C1AC53E4();
    v13 = sub_1C1B95298();
    sub_1C1AC1F08(&qword_1EBF08EF0, &unk_1C1B9AF80);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1C1B9EEE0;
    v15 = &v2[OBJC_IVAR___APPCMediaMetricsHelper_promotedContentIdentifier];
    swift_beginAccess();
    v16 = *v15;
    v17 = v15[1];
    *(v14 + 56) = MEMORY[0x1E69E6158];
    v18 = sub_1C1AA5E7C();
    *(v14 + 32) = v16;
    *(v14 + 40) = v17;
    v19 = MEMORY[0x1E69E6530];
    v20 = MEMORY[0x1E69E65A8];
    *(v14 + 96) = MEMORY[0x1E69E6530];
    *(v14 + 104) = v20;
    *(v14 + 64) = v18;
    *(v14 + 72) = a1;
    *(v14 + 136) = v19;
    *(v14 + 144) = v20;
    *(v14 + 112) = v12;

    sub_1C1B94BA8(v40, &dword_1C1AA2000, v13, "PC %{public}@: Progress %{public}d is out of range and thus clamped to %{public}d.", 82, 2, v14);
  }

  v39 = a1;
  sub_1C1AC1F08(&qword_1EBF08DC8, &unk_1C1B9F390);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C1B9AF30;
  v22 = v12;
  v23 = *(v5 + 104);
  v23(v9, *MEMORY[0x1E6989FB8], v4);
  v24 = sub_1C1B94A48();
  v26 = v25;
  v40 = v2;
  v27 = *(v5 + 8);
  v27(v9, v4);
  *(inited + 32) = v24;
  *(inited + 40) = v26;
  *(inited + 48) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  v28 = v41;
  v23(v41, *MEMORY[0x1E6989FA0], v4);
  v29 = sub_1C1B94A48();
  v31 = v30;
  v27(v28, v4);
  v32 = v40;
  *(inited + 56) = v29;
  *(inited + 64) = v31;
  *(inited + 72) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  sub_1C1AD408C(inited);
  swift_setDeallocating();
  sub_1C1AC1F08(&unk_1EBF08DD0, &unk_1C1B9EF00);
  swift_arrayDestroy();
  v33 = *&v32[OBJC_IVAR___APPCMediaMetricsHelper_eventCountTracker];
  [*(v33 + 16) lock];
  v34 = *(v33 + 32);
  v35 = __OFADD__(v34, 1);
  v36 = v34 + 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(v33 + 32) = v36;
    [*(v33 + 16) unlock];
    v37 = *&v32[OBJC_IVAR___APPCMediaMetricsHelper_primitiveCreator];
    swift_unknownObjectRetain();
    sub_1C1AC1F08(&qword_1EBF08EE0, &unk_1C1B9BE70);
    v38 = sub_1C1B94CA8();
    [v37 recordMetric:1609 forPurpose:100 properties:v38 internalProperties:0 order:sub_1C1B948C8() options:0];

    swift_unknownObjectRelease();

    if (v39 == 100)
    {
      [v32 mediaComplete];
    }
  }
}

unint64_t sub_1C1B179B0(uint64_t a1, double a2)
{
  v3 = v2;
  v4 = *(v2 + OBJC_IVAR___APPCMediaMetricsHelper_videoDuration);
  if (v4 == 0.0)
  {
    v5 = sub_1C1B95128();
    sub_1C1AC53E4();
    v6 = sub_1C1B95298();
    sub_1C1AC1F08(&qword_1EBF08EF0, &unk_1C1B9AF80);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1C1B98E60;
    v8 = (v3 + OBJC_IVAR___APPCMediaMetricsHelper_promotedContentIdentifier);
    swift_beginAccess();
    v10 = *v8;
    v9 = v8[1];
    *(v7 + 56) = MEMORY[0x1E69E6158];
    *(v7 + 64) = sub_1C1AA5E7C();
    *(v7 + 32) = v10;
    *(v7 + 40) = v9;

    sub_1C1B94BA8(v5, &dword_1C1AA2000, v6, "PC %{public}@: Cannot read the video duration.", 46, 2, v7);

    v11 = 0;
  }

  else
  {
    v12 = a2 / v4;
    v13 = 1.0;
    if (v12 <= 1.0)
    {
      v13 = v12;
    }

    if (v12 >= 0.0)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0.0;
    }

    if (v14 != v12)
    {
      v15 = sub_1C1B95128();
      sub_1C1AC53E4();
      v16 = sub_1C1B95298();
      sub_1C1AC1F08(&qword_1EBF08EF0, &unk_1C1B9AF80);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_1C1B9EEE0;
      v18 = (v3 + OBJC_IVAR___APPCMediaMetricsHelper_promotedContentIdentifier);
      swift_beginAccess();
      v20 = *v18;
      v19 = v18[1];
      *(v17 + 56) = MEMORY[0x1E69E6158];
      *(v17 + 64) = sub_1C1AA5E7C();
      *(v17 + 32) = v20;
      *(v17 + 40) = v19;
      v21 = MEMORY[0x1E69E6448];
      v22 = MEMORY[0x1E69E64A8];
      *(v17 + 96) = MEMORY[0x1E69E6448];
      *(v17 + 104) = v22;
      *(v17 + 72) = v12;
      *(v17 + 136) = v21;
      *(v17 + 144) = v22;
      *(v17 + 112) = v14;

      sub_1C1B94BA8(v15, &dword_1C1AA2000, v16, "PC %{public}@: Position %{public}f is out of range and thus clamped to %f.", 74, 2, v17);
    }

    v11 = LODWORD(v14);
  }

  return v11 | ((v4 == 0.0) << 32);
}