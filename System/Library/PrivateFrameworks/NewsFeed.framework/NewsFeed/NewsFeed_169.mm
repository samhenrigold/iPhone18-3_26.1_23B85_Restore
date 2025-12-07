double sub_1D6AA1610()
{
  sub_1D6195740(0);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v45 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v38 - v6;
  MEMORY[0x1EEE9AC00](v8, v9);
  v40 = &v38 - v10;
  MEMORY[0x1EEE9AC00](v11, v12);
  v44 = &v38 - v13;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v38 - v16;
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v38 - v20;
  v22 = type metadata accessor for DebugFormatEditorWorkspaceGroup(0);
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22, v24);
  v26 = &v38 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor__workspaceGroup;
  v46 = v0;

  sub_1D725B31C();

  v41 = v23;
  v42 = *(v23 + 48);
  if (v42(v21, 1, v22) == 1)
  {
    sub_1D6AA8A18(v21, sub_1D6195740);
  }

  else
  {
    v38 = v7;
    sub_1D6AA8ADC(v21, v26, type metadata accessor for DebugFormatEditorWorkspaceGroup);

    sub_1D725B31C();

    v85 = v71;
    v86 = v72;
    v87 = v73;
    v88 = v74;
    v81 = v67;
    v82 = v68;
    v83 = v69;
    v84 = v70;
    v77 = v63;
    v78 = v64;
    v79 = v65;
    v80 = v66;
    v75 = v61;
    v76 = v62;
    v27 = sub_1D5DEA380(&v75);
    v39 = v22;
    v57 = v71;
    v58 = v72;
    v59 = v73;
    if (v27 == 1)
    {
      v60 = v74;
      v53 = v67;
      v54 = v68;
      v55 = v69;
      v56 = v70;
      v49 = v63;
      v50 = v64;
      v51 = v65;
      v52 = v66;
      v47 = v61;
      v48 = v62;
      sub_1D6AA87D4(&v47, qword_1EC880D80, &type metadata for DebugFormatEditorWorkspace);
      (*(v41 + 56))(v17, 1, 1, v22);
    }

    else
    {
      v28 = v74;
      v60 = v74;
      v53 = v67;
      v54 = v68;
      v55 = v69;
      v56 = v70;
      v49 = v63;
      v50 = v64;
      v51 = v65;
      v52 = v66;
      v47 = v61;
      v48 = v62;

      v29 = sub_1D6AA87D4(&v47, qword_1EC880D80, &type metadata for DebugFormatEditorWorkspace);
      MEMORY[0x1EEE9AC00](v29, v30);
      *(&v38 - 2) = v26;
      sub_1D5E3E9D4(sub_1D5BD04E0, v28, v17);
    }

    v31 = v44;
    sub_1D6AA3978(v17, v44, sub_1D6195740);
    sub_1D6AA3978(v31, v40, sub_1D6195740);

    sub_1D725B32C();

    sub_1D6AA8A18(v31, sub_1D6195740);
    sub_1D6AA8A18(v17, sub_1D6195740);
    sub_1D6AA8A18(v26, type metadata accessor for DebugFormatEditorWorkspaceGroup);
    v7 = v38;
    v22 = v39;
  }

  sub_1D725B31C();

  if (v42(v7, 1, v22) == 1)
  {
    sub_1D6AA8A18(v7, sub_1D6195740);

    sub_1D725B31C();

    v85 = v71;
    v86 = v72;
    v87 = v73;
    v88 = v74;
    v81 = v67;
    v82 = v68;
    v83 = v69;
    v84 = v70;
    v77 = v63;
    v78 = v64;
    v79 = v65;
    v80 = v66;
    v75 = v61;
    v76 = v62;
    if (sub_1D5DEA380(&v75) == 1)
    {
      v57 = v71;
      v58 = v72;
      v59 = v73;
      v60 = v74;
      v53 = v67;
      v54 = v68;
      v55 = v69;
      v56 = v70;
      v49 = v63;
      v50 = v64;
      v51 = v65;
      v52 = v66;
      v47 = v61;
      v48 = v62;
      sub_1D6AA87D4(&v47, qword_1EC880D80, &type metadata for DebugFormatEditorWorkspace);
      (*(v41 + 56))(v45, 1, 1, v22);
    }

    else
    {
      v33 = v74;
      v57 = v71;
      v58 = v72;
      v59 = v73;
      v60 = v74;
      v53 = v67;
      v54 = v68;
      v55 = v69;
      v56 = v70;
      v49 = v63;
      v50 = v64;
      v51 = v65;
      v52 = v66;
      v47 = v61;
      v48 = v62;

      sub_1D6AA87D4(&v47, qword_1EC880D80, &type metadata for DebugFormatEditorWorkspace);
      v34 = v41;
      if (*(v33 + 16))
      {
        sub_1D6AA3978(v33 + ((*(v41 + 80) + 32) & ~*(v41 + 80)), v45, type metadata accessor for DebugFormatEditorWorkspaceGroup);
        v35 = 0;
      }

      else
      {
        v35 = 1;
      }

      (*(v34 + 56))(v45, v35, 1, v22);
    }

    v36 = v45;
    sub_1D6AA3978(v45, v44, sub_1D6195740);

    sub_1D725B32C();

    v32 = v36;
  }

  else
  {
    v32 = v7;
  }

  sub_1D6AA8A18(v32, sub_1D6195740);
  return result;
}

double sub_1D6AA1F34(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor_hiddenInventoryIdentifiers) = a1;

  sub_1D5B81B04();
  sub_1D6AA8C90(&qword_1EC8911F8, sub_1D5B81B04, MEMORY[0x1E69E6508]);
  sub_1D5BF4D9C();
  sub_1D726252C();

  sub_1D725973C();

  return result;
}

double sub_1D6AA2030(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v3 = sub_1D5F606AC();
    swift_beginAccess();

    v4 = sub_1D725B30C();
    *v5 = v3;

    v4(&v6, 0);
  }

  return result;
}

double sub_1D6AA20FC(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for FormatVersioningModeSelection(0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1D72596FC();
    sub_1D72596DC();
    if (qword_1EC87D510 != -1)
    {
      swift_once();
    }

    sub_1D72596CC();

    swift_beginAccess();

    v7 = sub_1D725B30C();
    v9 = v8;
    v10 = type metadata accessor for FormatDerivedDataCompilerSettings(0);
    sub_1D6AA39E0(v5, v9 + *(v10 + 20));
    v7(v11, 0);
  }

  return result;
}

double sub_1D6AA2270(uint64_t a1, uint64_t *a2)
{
  if (qword_1EC87D728 != -1)
  {
    swift_once();
  }

  type metadata accessor for DebugFormatEditor(0);
  sub_1D6AA8C90(&qword_1EC8911E0, type metadata accessor for DebugFormatEditor, &unk_1D731B330);

  sub_1D725989C();

  return result;
}

double sub_1D6AA2350(uint64_t a1, uint64_t a2)
{
  v33 = a1;
  sub_1D6AA8A78(0, &unk_1EDF43AB0, MEMORY[0x1E69D6638], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v33 - v5;
  v7 = sub_1D725ACBC();
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v9 = sub_1D725BD1C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v33 - v16;
  v18 = type metadata accessor for FormatVersioningModeSelection(0);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v21 = &v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D68D69D4(0);
  MEMORY[0x1EEE9AC00](v22 - 8, v23);
  v25 = &v33 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6AA3978(a2, v25, sub_1D68D69D4);
  v26 = type metadata accessor for DebugFormatFileDirectoryMetadata(0);
  v27 = (*(*(v26 - 8) + 48))(v25, 1, v26);
  v28 = sub_1D68D69D4;
  if (v27 == 1)
  {
    v29 = 0;
  }

  else
  {

    sub_1D725972C();

    sub_1D60D74F0(v13);
    sub_1D725BCFC();
    v30 = sub_1D725B17C();
    (*(*(v30 - 8) + 56))(v6, 1, 1, v30);
    sub_1D725BCEC();
    v31 = *(v10 + 8);
    v31(v13, v9);
    v29 = sub_1D725BCBC();
    v31(v17, v9);
    sub_1D6AA8A18(v21, type metadata accessor for FormatVersioningModeSelection);
    v28 = type metadata accessor for DebugFormatFileDirectoryMetadata;
  }

  sub_1D6AA8A18(v25, v28);
  v34 = v29 & 1;

  sub_1D725B32C();

  return result;
}

double sub_1D6AA272C(uint64_t a1, uint64_t a2)
{
  v30[1] = a2;
  sub_1D6AA8A78(0, &unk_1EDF43AB0, MEMORY[0x1E69D6638], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v30 - v5;
  v7 = sub_1D725ACBC();
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v9 = sub_1D725BD1C();
  v30[0] = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = v30 - v15;
  v17 = type metadata accessor for DebugFormatFileDirectoryMetadata(0);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D68D69D4(0);
  MEMORY[0x1EEE9AC00](v22 - 8, v23);
  v25 = v30 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30[2] = a1;

  sub_1D725B31C();

  if ((*(v18 + 48))(v25, 1, v17))
  {
    sub_1D6AA8A18(v25, sub_1D68D69D4);
    v26 = 0;
  }

  else
  {
    sub_1D6AA3978(v25, v21, type metadata accessor for DebugFormatFileDirectoryMetadata);
    sub_1D6AA8A18(v25, sub_1D68D69D4);
    sub_1D60D74F0(v12);
    sub_1D725BCFC();
    v27 = sub_1D725B17C();
    (*(*(v27 - 8) + 56))(v6, 1, 1, v27);
    sub_1D725BCEC();
    v28 = *(v30[0] + 8);
    v28(v12, v9);
    v26 = sub_1D725BCBC();
    v28(v16, v9);
    sub_1D6AA8A18(v21, type metadata accessor for DebugFormatFileDirectoryMetadata);
  }

  v31 = v26 & 1;

  sub_1D725B32C();

  return result;
}

void sub_1D6AA2B24()
{
  v0 = sub_1D7257A4C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC87D5D8 != -1)
  {
    swift_once();
  }

  sub_1D6AA8C90(&qword_1EC88DEE8, type metadata accessor for DebugFormatEditor, &unk_1D731B370);
  sub_1D725964C();
  v36[0] = v37;
  v36[1] = v38;
  sub_1D72579DC();
  sub_1D5BF4D9C();
  v5 = sub_1D7263A4C();
  v7 = v6;
  (*(v1 + 8))(v4, v0);

  v8 = HIBYTE(v7) & 0xF;
  v9 = v5 & 0xFFFFFFFFFFFFLL;
  if ((v7 & 0x2000000000000000) != 0)
  {
    v10 = HIBYTE(v7) & 0xF;
  }

  else
  {
    v10 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (!v10)
  {
    goto LABEL_65;
  }

  if ((v7 & 0x1000000000000000) != 0)
  {
    LOBYTE(v36[0]) = 0;
    sub_1D5FD15E0(v5, v7, 10);
    goto LABEL_65;
  }

  if ((v7 & 0x2000000000000000) == 0)
  {
    if ((v5 & 0x1000000000000000) != 0)
    {
      v11 = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v11 = sub_1D7263E5C();
    }

    v12 = *v11;
    if (v12 == 43)
    {
      if (v9 >= 1)
      {
        v8 = v9 - 1;
        if (v9 != 1)
        {
          v21 = 0;
          if (v11)
          {
            v22 = v11 + 1;
            while (1)
            {
              v23 = *v22 - 48;
              if (v23 > 9)
              {
                goto LABEL_63;
              }

              v24 = 10 * v21;
              if ((v21 * 10) >> 64 != (10 * v21) >> 63)
              {
                goto LABEL_63;
              }

              v21 = v24 + v23;
              if (__OFADD__(v24, v23))
              {
                goto LABEL_63;
              }

              ++v22;
              if (!--v8)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_55;
        }

        goto LABEL_63;
      }

      goto LABEL_71;
    }

    if (v12 != 45)
    {
      if (v9)
      {
        v29 = 0;
        if (v11)
        {
          while (1)
          {
            v30 = *v11 - 48;
            if (v30 > 9)
            {
              goto LABEL_63;
            }

            v31 = 10 * v29;
            if ((v29 * 10) >> 64 != (10 * v29) >> 63)
            {
              goto LABEL_63;
            }

            v29 = v31 + v30;
            if (__OFADD__(v31, v30))
            {
              goto LABEL_63;
            }

            ++v11;
            if (!--v9)
            {
              goto LABEL_55;
            }
          }
        }

        goto LABEL_55;
      }

LABEL_63:
      LOBYTE(v8) = 1;
      goto LABEL_64;
    }

    if (v9 >= 1)
    {
      v8 = v9 - 1;
      if (v9 != 1)
      {
        v13 = 0;
        if (v11)
        {
          v14 = v11 + 1;
          while (1)
          {
            v15 = *v14 - 48;
            if (v15 > 9)
            {
              goto LABEL_63;
            }

            v16 = 10 * v13;
            if ((v13 * 10) >> 64 != (10 * v13) >> 63)
            {
              goto LABEL_63;
            }

            v13 = v16 - v15;
            if (__OFSUB__(v16, v15))
            {
              goto LABEL_63;
            }

            ++v14;
            if (!--v8)
            {
              goto LABEL_64;
            }
          }
        }

LABEL_55:
        LOBYTE(v8) = 0;
LABEL_64:
        LOBYTE(v36[0]) = v8;
LABEL_65:

        return;
      }

      goto LABEL_63;
    }

    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v37 = v5;
  v38 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v5 != 43)
  {
    if (v5 != 45)
    {
      if (v8)
      {
        v32 = 0;
        v33 = &v37;
        while (1)
        {
          v34 = *v33 - 48;
          if (v34 > 9)
          {
            break;
          }

          v35 = 10 * v32;
          if ((v32 * 10) >> 64 != (10 * v32) >> 63)
          {
            break;
          }

          v32 = v35 + v34;
          if (__OFADD__(v35, v34))
          {
            break;
          }

          v33 = (v33 + 1);
          if (!--v8)
          {
            goto LABEL_64;
          }
        }
      }

      goto LABEL_63;
    }

    if (v8)
    {
      if (--v8)
      {
        v17 = 0;
        v18 = &v37 + 1;
        while (1)
        {
          v19 = *v18 - 48;
          if (v19 > 9)
          {
            break;
          }

          v20 = 10 * v17;
          if ((v17 * 10) >> 64 != (10 * v17) >> 63)
          {
            break;
          }

          v17 = v20 - v19;
          if (__OFSUB__(v20, v19))
          {
            break;
          }

          ++v18;
          if (!--v8)
          {
            goto LABEL_64;
          }
        }
      }

      goto LABEL_63;
    }

    goto LABEL_70;
  }

  if (v8)
  {
    if (--v8)
    {
      v25 = 0;
      v26 = &v37 + 1;
      while (1)
      {
        v27 = *v26 - 48;
        if (v27 > 9)
        {
          break;
        }

        v28 = 10 * v25;
        if ((v25 * 10) >> 64 != (10 * v25) >> 63)
        {
          break;
        }

        v25 = v28 + v27;
        if (__OFADD__(v28, v27))
        {
          break;
        }

        ++v26;
        if (!--v8)
        {
          goto LABEL_64;
        }
      }
    }

    goto LABEL_63;
  }

LABEL_72:
  __break(1u);
}

uint64_t sub_1D6AA2FA0(uint64_t a1, uint64_t a2)
{
  v2 = *(*a1 + 16);
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(*(a2 + *(type metadata accessor for DebugFormatEditorWorkspaceGroup(0) + 24)) + 16);
  if (v3 == *(v5 + 16) && v4 == *(v5 + 24))
  {
    return 1;
  }

  else
  {
    return sub_1D72646CC() & 1;
  }
}

uint64_t sub_1D6AA301C()
{
  sub_1D6AA8A18(v0 + OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor_key, type metadata accessor for DebugGroupLayoutKey);

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor_factory));

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor_featureAvailability));

  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor_sourceTheme));

  return v0;
}

uint64_t sub_1D6AA3638()
{
  sub_1D6AA301C();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DebugFormatEditor(uint64_t a1)
{
  result = qword_1EC8911D0;
  if (!qword_1EC8911D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D6AA36E4(uint64_t a1)
{
  result = type metadata accessor for DebugGroupLayoutKey(319);
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_1D6AA3978(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D6AA39E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatVersioningModeSelection(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D6AA3A44()
{
  sub_1D6AA8C40(0, &qword_1EDF3B8E0, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1D725BB1C();
}

uint64_t sub_1D6AA3AA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1D7261ABC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1D7261B2C();
  v10 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v11);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B5A498(0, &qword_1EDF1AA30, 0x1E69E9610);
  v14 = sub_1D726308C();
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a3;
  aBlock[4] = sub_1D6AA8B44;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D5B6B06C;
  aBlock[3] = &block_descriptor_80_0;
  v16 = _Block_copy(aBlock);

  sub_1D7261AEC();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1D6AA8C90(&qword_1EDF3A8F0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  sub_1D5B73908(0);
  sub_1D6AA8C90(&qword_1EDF1B560, sub_1D5B73908, MEMORY[0x1E69E6328]);
  sub_1D7263B6C();
  MEMORY[0x1DA6FA730](0, v13, v9, v16);
  _Block_release(v16);

  (*(v6 + 8))(v9, v5);
  return (*(v10 + 8))(v13, v19);
}

double sub_1D6AA3D9C(uint64_t a1, unint64_t a2)
{
  v3 = type metadata accessor for FormatDerivedDataCompilerSettings(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v6);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v30 - v9;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    v14 = OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor_compilerOperationQueue;
    v15 = a2 >> 62;
    if ([*(Strong + OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor_compilerOperationQueue) operationCount])
    {
      if (v15)
      {
        if (sub_1D7263BFC())
        {
          goto LABEL_5;
        }
      }

      else if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_5:
        v16 = [*(v13 + v14) operationCount];
        if (v15)
        {
          v18 = v16;
          v17 = sub_1D7263BFC();
          v16 = v18;
        }

        else
        {
          v17 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        sub_1D6AA41E4(v16, v17);
LABEL_28:

        return result;
      }
    }

    v35 = v4;
    v36 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    swift_beginAccess();

    sub_1D725B31C();

    v37 = MEMORY[0x1E69E7CC0];
    if (v15)
    {
      goto LABEL_25;
    }

    v19 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v19)
    {
LABEL_26:
      v21 = MEMORY[0x1E69E7CC0];
LABEL_27:
      v22 = v36;
      sub_1D6AA3978(v10, v36, type metadata accessor for FormatDerivedDataCompilerSettings);
      v23 = (*(v35 + 80) + 16) & ~*(v35 + 80);
      v24 = swift_allocObject();
      sub_1D6AA8ADC(v22, v24 + v23, type metadata accessor for FormatDerivedDataCompilerSettings);
      *(v24 + ((v5 + v23 + 7) & 0xFFFFFFFFFFFFFFF8)) = v21;
      sub_1D6AA8A78(0, &qword_1EC8911E8, sub_1D67423FC, MEMORY[0x1E69D6940]);
      v26 = objc_allocWithZone(v25);
      v27 = sub_1D725B71C();
      sub_1D6AA8A18(v10, type metadata accessor for FormatDerivedDataCompilerSettings);
      v28 = swift_allocObject();
      swift_weakInit();
      v29 = swift_allocObject();
      *(v29 + 16) = v28;
      *(v29 + 24) = a2;

      sub_1D725ACDC();
      [*(v13 + v14) addOperation_];

      goto LABEL_28;
    }

LABEL_12:
    v31 = v5;
    v32 = v10;
    v33 = v14;
    v34 = v13;
    v10 = 0;
    v5 = a2 & 0xC000000000000001;
    while (1)
    {
      if (v5)
      {
        v20 = MEMORY[0x1DA6FB460](v10, a2);
        v13 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
LABEL_22:
          __break(1u);
LABEL_23:
          v21 = v37;
          v14 = v33;
          v13 = v34;
          v5 = v31;
          v10 = v32;
          goto LABEL_27;
        }
      }

      else
      {
        if (v10 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_25:
          v19 = sub_1D7263BFC();
          if (!v19)
          {
            goto LABEL_26;
          }

          goto LABEL_12;
        }

        v20 = *(a2 + 8 * v10 + 32);

        v13 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          goto LABEL_22;
        }
      }

      if (*(*(v20 + 16) + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_role) == 5)
      {
      }

      else
      {
        sub_1D7263E9C();
        v14 = *(v37 + 16);
        sub_1D7263EDC();
        sub_1D7263EEC();
        sub_1D7263EAC();
      }

      ++v10;
      if (v13 == v19)
      {
        goto LABEL_23;
      }
    }
  }

  return result;
}

double sub_1D6AA41E4(uint64_t a1, uint64_t a2)
{

  sub_1D725B31C();

  if (LOBYTE(v8[0]) == 1)
  {
    if (a1 && a2)
    {

      sub_1D725B32C();

      sub_1D7263D4C();

      strcpy(v8, "Compiling... ");
      HIWORD(v8[1]) = -4864;
      v5 = sub_1D72644BC();
      MEMORY[0x1DA6F9910](v5);

      MEMORY[0x1DA6F9910](0x6974617265706F20, 0xEA00000000006E6FLL);
      if (a1 == 1)
      {
        v6 = 0;
      }

      else
      {
        v6 = 115;
      }

      if (a1 == 1)
      {
        v7 = 0xE000000000000000;
      }

      else
      {
        v7 = 0xE100000000000000;
      }

      MEMORY[0x1DA6F9910](v6, v7);

      MEMORY[0x1DA6F9910](0x696E69616D657220, 0xEA0000000000676ELL);

      sub_1D725B32C();

      sub_1D725B32C();
    }

    else
    {

      sub_1D725B32C();

      sub_1D725B32C();

      sub_1D725B32C();

      v8[0] = 0x7964616552;
      v8[1] = 0xE500000000000000;

      sub_1D725B32C();

      if (qword_1EC87D498 != -1)
      {
        swift_once();
      }

      return sub_1D5F5EBA0(2, 0x2D656C69706D6F63, 0xEC000000656D6974, 0xD000000000000011, 0x80000001D73E3AB0);
    }
  }

  return result;
}

double sub_1D6AA44F4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    if ((v5 & 1) == 0)
    {

      sub_1D725B31C();

      v9 = sub_1D6741AD8(v4, v18, *(&v18 + 1), v19);
      v11 = v10;
      v13 = v12;

      *&v18 = v9;
      *(&v18 + 1) = v11;
      v19 = v13;

      sub_1D725B32C();

      sub_1D725B31C();

      v17 = v18;

      sub_1D725B32C();
    }

    v14 = [*(v8 + OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor_compilerOperationQueue) operationCount];
    if (a3 >> 62)
    {
      v16 = v14;
      v15 = sub_1D7263BFC();
      v14 = v16;
    }

    else
    {
      v15 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    sub_1D6AA41E4(v14, v15);
  }

  return result;
}

uint64_t sub_1D6AA46AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D7261ABC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1D7261B2C();
  v9 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v10);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B5A498(0, &qword_1EDF1AA30, 0x1E69E9610);
  v13 = sub_1D726308C();
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  aBlock[4] = sub_1D6AA89DC;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D5B6B06C;
  aBlock[3] = &block_descriptor_28;
  v15 = _Block_copy(aBlock);

  sub_1D7261AEC();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1D6AA8C90(&qword_1EDF3A8F0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  sub_1D5B73908(0);
  sub_1D6AA8C90(&qword_1EDF1B560, sub_1D5B73908, MEMORY[0x1E69E6328]);
  sub_1D7263B6C();
  MEMORY[0x1DA6FA730](0, v12, v8, v15);
  _Block_release(v15);

  (*(v5 + 8))(v8, v4);
  return (*(v9 + 8))(v12, v18);
}

double sub_1D6AA49A4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    sub_1D725B31C();

    sub_1D6741980(a2, v4, v5, v6);

    sub_1D725B32C();

    sub_1D725B31C();

    sub_1D725B32C();
  }

  return result;
}

uint64_t sub_1D6AA4AF4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1D7261ABC();
  v25 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D7261B2C();
  v23 = *(v12 - 8);
  v24 = v12;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  v17 = *(a1 + 8);
  sub_1D5B5A498(0, &qword_1EDF1AA30, 0x1E69E9610);
  v22 = sub_1D726308C();
  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  *(v18 + 24) = a3;
  *(v18 + 32) = v16;
  *(v18 + 40) = v17;
  *(v18 + 48) = a4;
  aBlock[4] = sub_1D6AA8954;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D5B6B06C;
  aBlock[3] = &block_descriptor_70;
  v19 = _Block_copy(aBlock);

  sub_1D6AA8968(v16, v17);

  sub_1D7261AEC();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1D6AA8C90(&qword_1EDF3A8F0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  sub_1D5B73908(0);
  sub_1D6AA8C90(&qword_1EDF1B560, sub_1D5B73908, MEMORY[0x1E69E6328]);
  sub_1D7263B6C();
  v20 = v22;
  MEMORY[0x1DA6FA730](0, v15, v11, v19);
  _Block_release(v19);

  (*(v25 + 8))(v11, v8);
  return (*(v23 + 8))(v15, v24);
}

double sub_1D6AA4E1C(uint64_t a1, unint64_t a2, void *a3, char a4, uint64_t a5)
{
  sub_1D6AA8974(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6AA89A8(0);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v19 = [*(Strong + OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor_compilerOperationQueue) operationCount];
    if (a2 >> 62)
    {
      v42 = v19;
      v20 = sub_1D7263BFC();
      v19 = v42;
    }

    else
    {
      v20 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    sub_1D6AA41E4(v19, v20);
    if (a4)
    {

      sub_1D725B31C();

      v44 = v46;
      *&v46 = v47;
      v21 = *(a5 + 16);

      v22 = sub_1D6E74418();
      sub_1D607EA98(v22, v23, v16);

      sub_1D6AA8A18(v16, sub_1D6AA89A8);

      v24 = v46;
      v46 = v44;
      v47 = v24;

      sub_1D725B32C();

      sub_1D725B31C();

      v44 = v46;

      v46 = v44;

      sub_1D725B32C();

      *&v46 = a3;
      v25 = a3;
      sub_1D5BA6EF4();
      v26 = sub_1D725B3BC();
      v27 = swift_dynamicCast();
      v28 = *(*(v26 - 8) + 56);
      if (v27)
      {
        v29 = *(v26 - 8);
        v28(v12, 0, 1, v26);
        if ((*(v29 + 88))(v12, v26) == *MEMORY[0x1E69D6780])
        {

          (*(v29 + 8))(v12, v26);
          return result;
        }

        (*(v29 + 8))(v12, v26);
      }

      else
      {
        v28(v12, 1, 1, v26);
        sub_1D6AA8A18(v12, sub_1D6AA8974);
      }

      *&v46 = 0;
      *(&v46 + 1) = 0xE000000000000000;
      sub_1D7263D4C();
      MEMORY[0x1DA6F9910](0xD00000000000001ALL, 0x80000001D73E3AD0);
      v38 = *(v21 + 16);
      v39 = *(v21 + 24);

      MEMORY[0x1DA6F9910](v38, v39);

      MEMORY[0x1DA6F9910](8236, 0xE200000000000000);
      v45 = a3;
      sub_1D7263F9C();
      v41 = *(&v46 + 1);
      v40 = v46;
      if (qword_1EC87D498 != -1)
      {
        v43 = v46;
        swift_once();
        v40 = v43;
      }

      sub_1D5F5EBA0(a3, 0, 0, v40, v41);
    }

    else
    {

      sub_1D725B31C();

      v31 = *(&v46 + 1);
      v30 = v46;
      *&v46 = v47;

      v32 = sub_1D6E74418();
      sub_1D607EA98(v32, v33, v16);

      sub_1D6AA8A18(v16, sub_1D6AA89A8);
      if (a3[2])
      {
        v45 = a3;
        sub_1D6AA8968(a3, 0);

        sub_1D6987ED4(v34);
        v35 = v45;
        sub_1D67423FC(0);
        sub_1D6AA8C90(&qword_1EC88DDF0, sub_1D67423FC, MEMORY[0x1E69E6328]);
        v36 = sub_1D72623DC();

        v30 = v35;
        v31 = v36;
      }

      else
      {
      }

      v37 = v46;
      *&v46 = v30;
      *(&v46 + 1) = v31;
      v47 = v37;

      sub_1D725B32C();

      sub_1D725B31C();

      v44 = v46;

      v46 = v44;

      sub_1D725B32C();
    }
  }

  return result;
}

id sub_1D6AA5460(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v7 = sub_1D725BD1C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24[3] = &type metadata for DebugFormatFeatureAvailability;
  v24[4] = &off_1F51F4340;
  v24[0] = swift_allocObject();
  sub_1D6AA8778(a1, v24[0] + 16);
  sub_1D5B68374(a3 + OBJC_IVAR____TtC8NewsFeed19FormatSystemFactory_userInfo, v23);
  sub_1D5B68374(v24, v22);
  sub_1D5B68374(a3 + OBJC_IVAR____TtC8NewsFeed19FormatSystemFactory_appConfigManager, v21);
  v12 = *(a3 + OBJC_IVAR____TtC8NewsFeed19FormatSystemFactory_bundleSubscriptionManager);
  v13 = *(v8 + 16);
  v13(v11, a2, v7);
  v14 = *(a3 + OBJC_IVAR____TtC8NewsFeed19FormatSystemFactory_offlineManager);
  sub_1D5B68374(a3 + OBJC_IVAR____TtC8NewsFeed19FormatSystemFactory_bundleSessionManager, v20);
  v15 = objc_allocWithZone(ObjectType);
  sub_1D5B68374(v23, &v15[OBJC_IVAR____TtC8NewsFeed19FormatSystemFactory_userInfo]);
  sub_1D5B68374(v22, &v15[OBJC_IVAR____TtC8NewsFeed19FormatSystemFactory_featureAvailability]);
  sub_1D5B68374(v21, &v15[OBJC_IVAR____TtC8NewsFeed19FormatSystemFactory_appConfigManager]);
  *&v15[OBJC_IVAR____TtC8NewsFeed19FormatSystemFactory_bundleSubscriptionManager] = v12;
  v13(&v15[OBJC_IVAR____TtC8NewsFeed19FormatSystemFactory_formatVersion], v11, v7);
  *&v15[OBJC_IVAR____TtC8NewsFeed19FormatSystemFactory_offlineManager] = v14;
  sub_1D5B68374(v20, &v15[OBJC_IVAR____TtC8NewsFeed19FormatSystemFactory_bundleSessionManager]);
  v19.receiver = v15;
  v19.super_class = ObjectType;
  swift_unknownObjectRetain();
  v16 = v14;
  v17 = objc_msgSendSuper2(&v19, sel_init);
  __swift_destroy_boxed_opaque_existential_1(v20);
  (*(v8 + 8))(v11, v7);
  __swift_destroy_boxed_opaque_existential_1(v21);
  __swift_destroy_boxed_opaque_existential_1(v22);
  __swift_destroy_boxed_opaque_existential_1(v23);
  __swift_destroy_boxed_opaque_existential_1(v24);
  return v17;
}

uint64_t sub_1D6AA56F4(uint64_t (*a1)(uint64_t a1), uint64_t (*a2)(uint64_t a1), int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  LODWORD(v471) = a3;
  v462 = a1;
  v12 = type metadata accessor for FormatOption(0);
  v437 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v13);
  v438 = &v437 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v443 = sub_1D725A19C();
  v442 = *(v443 - 8);
  MEMORY[0x1EEE9AC00](v443, v15);
  v441 = &v437 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v468 = type metadata accessor for FormatVersionRequirement(0);
  v463 = *(v468 - 8);
  MEMORY[0x1EEE9AC00](v468, v17);
  v455 = &v437 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v445 = &v437 - v21;
  MEMORY[0x1EEE9AC00](v22, v23);
  v454 = &v437 - v24;
  MEMORY[0x1EEE9AC00](v25, v26);
  v453 = &v437 - v27;
  MEMORY[0x1EEE9AC00](v28, v29);
  v452 = &v437 - v30;
  MEMORY[0x1EEE9AC00](v31, v32);
  v451 = &v437 - v33;
  MEMORY[0x1EEE9AC00](v34, v35);
  v450 = &v437 - v36;
  MEMORY[0x1EEE9AC00](v37, v38);
  v449 = &v437 - v39;
  MEMORY[0x1EEE9AC00](v40, v41);
  v43 = &v437 - v42;
  sub_1D6AA89E4(0);
  MEMORY[0x1EEE9AC00](v44 - 8, v45);
  v47 = &v437 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v475[3] = type metadata accessor for DebugFormatLogger();
  v475[4] = &off_1F5125BB8;
  v475[0] = a4;
  v48 = sub_1D7259CFC();
  v49 = *(v48 - 8);
  v50 = *(v49 + 16);
  v460 = a2;
  v50(v47, a2, v48);
  (*(v49 + 56))(v47, 0, 1, v48);
  v51 = v462;
  LOBYTE(v472) = v471;
  *&v473 = a5;
  *(&v473 + 1) = a6;

  v446 = a6;

  v448 = a7;
  v447 = sub_1D6C30264(v51, v47, &v472, &v473);
  sub_1D6AA8A18(v47, sub_1D6AA89E4);
  sub_1D5CDE22C(v473, *(&v473 + 1));
  v461 = [objc_opt_self() sharedAccount];
  sub_1D6AA8A78(0, &unk_1EDF199B0, sub_1D5D24660, MEMORY[0x1E69E6F90]);
  v469 = swift_allocObject();
  *(v469 + 16) = xmmword_1D731B2C0;
  v458 = swift_allocBox();
  v53 = v52;
  if (qword_1EDF31EF8 != -1)
  {
    swift_once();
  }

  v54 = sub_1D725BD1C();
  v55 = __swift_project_value_buffer(v54, qword_1EDFFCDC8);
  v467 = v54;
  v56 = *(v54 - 8);
  v465 = *(v56 + 16);
  v464 = v56 + 16;
  v465(v43, v55, v54);
  *&v471 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  sub_1D7259E7C();
  v58 = v57;
  v59 = swift_allocObject();
  *(v59 + 16) = v58;
  v60 = MEMORY[0x1E69E7CC0];
  *(v59 + 24) = MEMORY[0x1E69E7CC0];
  *v53 = 0xD000000000000015;
  *(v53 + 1) = 0x80000001D73E3AF0;
  *(v53 + 2) = v59 | 0x3000000000000000;
  *(v53 + 3) = 1;
  v61 = *(v12 + 28);
  v457 = type metadata accessor for FormatVersionRequirement;
  sub_1D6AA8ADC(v43, &v53[v61], type metadata accessor for FormatVersionRequirement);
  v470 = v12;
  v466 = *(v463 + 56);
  v463 += 56;
  v62 = v468;
  v466(&v53[v61], 0, 1, v468);
  *(v469 + 32) = v458;
  v458 = swift_allocBox();
  v64 = v63;
  v459 = v55;
  v65 = v467;
  v465(v43, v55, v467);
  swift_storeEnumTagMultiPayload();
  sub_1D7259E7C();
  v67 = v66;
  v68 = swift_allocObject();
  *(v68 + 16) = v67;
  *(v68 + 24) = v60;
  *v64 = 0xD000000000000016;
  *(v64 + 1) = 0x80000001D73E3B10;
  *(v64 + 2) = v68 | 0x3000000000000000;
  *(v64 + 3) = 1;
  v69 = *(v470 + 28);
  v70 = v457;
  sub_1D6AA8ADC(v43, &v64[v69], v457);
  v71 = v62;
  v72 = v466;
  v466(&v64[v69], 0, 1, v71);
  *(v469 + 40) = v458;
  v456 = swift_allocBox();
  v74 = v73;
  v465(v43, v55, v65);
  swift_storeEnumTagMultiPayload();
  sub_1D7259E4C();
  v76 = v75;
  v77 = swift_allocObject();
  *(v77 + 16) = v76;
  *(v77 + 24) = v60;
  v458 = 0xD000000000000013;
  *v74 = 0xD000000000000013;
  *(v74 + 1) = 0x80000001D73E3B30;
  *(v74 + 2) = v77 | 0x3000000000000000;
  *(v74 + 3) = 1;
  v78 = *(v470 + 28);
  sub_1D6AA8ADC(v43, &v74[v78], v70);
  v79 = v468;
  v72(&v74[v78], 0, 1, v468);
  v80 = v469;
  *(v469 + 48) = v456;
  v81 = swift_allocBox();
  v83 = v82;
  v84 = v465;
  v465(v43, v459, v467);
  swift_storeEnumTagMultiPayload();
  sub_1D7259E4C();
  v86 = v85;
  v87 = swift_allocObject();
  *(v87 + 16) = v86;
  *(v87 + 24) = v60;
  *v83 = 0xD000000000000014;
  *(v83 + 1) = 0x80000001D73E3B50;
  *(v83 + 2) = v87 | 0x3000000000000000;
  *(v83 + 3) = 1;
  v88 = *(v470 + 28);
  v89 = v457;
  sub_1D6AA8ADC(v43, &v83[v88], v457);
  v90 = v79;
  v91 = v466;
  v466(&v83[v88], 0, 1, v90);
  *(v80 + 56) = v81;
  v92 = swift_allocBox();
  v94 = v93;
  v95 = v467;
  v84(v43, v459, v467);
  swift_storeEnumTagMultiPayload();
  v96 = v470;
  sub_1D7259F1C();
  v98 = v97;
  v99 = swift_allocObject();
  *(v99 + 16) = v98;
  *(v99 + 24) = v60;
  strcpy(v94, "layout-scale");
  *(v94 + 13) = 0;
  *(v94 + 14) = -5120;
  *(v94 + 16) = v99 | 0x3000000000000000;
  *(v94 + 24) = 1;
  v100 = *(v96 + 28);
  sub_1D6AA8ADC(v43, v94 + v100, v89);
  v101 = v94 + v100;
  v102 = v468;
  v91(v101, 0, 1, v468);
  *(v469 + 64) = v92;
  v444 = swift_allocBox();
  v104 = v103;
  v105 = v102;
  if (qword_1EDF31ED0 != -1)
  {
    swift_once();
  }

  v106 = __swift_project_value_buffer(v95, qword_1EDFFCD50);
  v456 = v106;
  v465(v43, v106, v467);
  swift_storeEnumTagMultiPayload();
  sub_1D7259E8C();
  v108 = v107;
  v109 = swift_allocObject();
  *(v109 + 16) = v108;
  *(v109 + 24) = v60;
  v459 = 0xD000000000000011;
  *v104 = 0xD000000000000011;
  v104[1] = 0x80000001D73E3B70;
  v104[2] = v109 | 0x3000000000000000;
  v104[3] = 1;
  v110 = v470;
  v111 = *(v470 + 28);
  v457 = type metadata accessor for FormatVersionRequirement;
  sub_1D6AA8ADC(v43, v104 + v111, type metadata accessor for FormatVersionRequirement);
  v112 = v104 + v111;
  v113 = v466;
  v466(v112, 0, 1, v105);
  *(v469 + 72) = v444;
  v440 = swift_allocBox();
  v115 = v114;
  v116 = v106;
  v117 = v465;
  v465(v43, v116, v467);
  swift_storeEnumTagMultiPayload();
  sub_1D7259E8C();
  v119 = v118;
  v120 = swift_allocObject();
  *(v120 + 16) = v119;
  *(v120 + 24) = v60;
  v444 = 0xD000000000000012;
  *v115 = 0xD000000000000012;
  *(v115 + 1) = 0x80000001D73E3B90;
  *(v115 + 2) = v120 | 0x3000000000000000;
  *(v115 + 3) = 1;
  v121 = *(v110 + 28);
  sub_1D6AA8ADC(v43, &v115[v121], v457);
  v113(&v115[v121], 0, 1, v468);
  v122 = v469;
  *(v469 + 80) = v440;
  v440 = swift_allocBox();
  v124 = v123;
  v117(v43, v456, v467);
  swift_storeEnumTagMultiPayload();
  sub_1D7259E8C();
  v126 = v125;
  v127 = swift_allocObject();
  *(v127 + 16) = v126;
  *(v127 + 24) = v60;
  *v124 = 0xD000000000000014;
  *(v124 + 1) = 0x80000001D73E3BB0;
  *(v124 + 2) = v127 | 0x3000000000000000;
  *(v124 + 3) = 1;
  v128 = *(v110 + 28);
  v129 = v457;
  sub_1D6AA8ADC(v43, &v124[v128], v457);
  v466(&v124[v128], 0, 1, v468);
  *(v122 + 88) = v440;
  v440 = swift_allocBox();
  v131 = v130;
  v132 = v456;
  v133 = v465;
  v465(v43, v456, v467);
  swift_storeEnumTagMultiPayload();
  sub_1D7259E8C();
  v135 = v134;
  v136 = swift_allocObject();
  *(v136 + 16) = v135;
  *(v136 + 24) = v60;
  v137 = v458;
  *v131 = v458;
  v131[1] = 0x80000001D73E3BD0;
  v131[2] = v136 | 0x3000000000000000;
  v131[3] = 1;
  v138 = *(v470 + 28);
  sub_1D6AA8ADC(v43, v131 + v138, v129);
  v139 = v468;
  v466(v131 + v138, 0, 1, v468);
  *(v469 + 96) = v440;
  v440 = swift_allocBox();
  v141 = v140;
  v133(v43, v132, v467);
  swift_storeEnumTagMultiPayload();
  sub_1D7259C1C();
  v143 = v142;
  v144 = swift_allocObject();
  *(v144 + 16) = v143;
  *(v144 + 24) = v60;
  *v141 = v137;
  v141[1] = 0x80000001D73E3BF0;
  v141[2] = v144 | 0x3000000000000000;
  v141[3] = 1;
  v145 = v470;
  v146 = *(v470 + 28);
  v147 = v457;
  sub_1D6AA8ADC(v43, v141 + v146, v457);
  v148 = v466;
  v466(v141 + v146, 0, 1, v139);
  v149 = v469;
  *(v469 + 104) = v440;
  v150 = swift_allocBox();
  v152 = v151;
  v153 = v467;
  v465(v43, v456, v467);
  swift_storeEnumTagMultiPayload();
  v154 = swift_allocObject();
  *(v154 + 16) = 0x400921FB54442D18;
  *(v154 + 24) = v60;
  *v152 = 26992;
  v152[1] = 0xE200000000000000;
  v152[2] = v154 | 0x3000000000000000;
  v152[3] = 1;
  v155 = *(v145 + 28);
  sub_1D6AA8ADC(v43, v152 + v155, v147);
  v156 = v152 + v155;
  v157 = v468;
  v148(v156, 0, 1, v468);
  *(v149 + 112) = v150;
  v457 = swift_allocBox();
  v159 = v158;
  if (qword_1EDF31F08 != -1)
  {
    swift_once();
  }

  v456 = __swift_project_value_buffer(v153, qword_1EDFFCDE0);
  v465(v43, v456, v153);
  swift_storeEnumTagMultiPayload();
  sub_1D7259EFC();
  v161 = v160;
  v162 = swift_allocObject();
  *(v162 + 16) = v161;
  *(v162 + 24) = v60;
  *v159 = 0xD000000000000014;
  *(v159 + 1) = 0x80000001D73E3C10;
  *(v159 + 2) = v162 | 0x3000000000000000;
  *(v159 + 3) = 1;
  v163 = *(v145 + 28);
  v439 = type metadata accessor for FormatVersionRequirement;
  sub_1D6AA8ADC(v43, &v159[v163], type metadata accessor for FormatVersionRequirement);
  v164 = v466;
  v466(&v159[v163], 0, 1, v157);
  v165 = v469;
  *(v469 + 120) = v457;
  v457 = swift_allocBox();
  v167 = v166;
  v465(v43, v456, v153);
  swift_storeEnumTagMultiPayload();
  sub_1D7259EFC();
  v169 = v168;
  v170 = swift_allocObject();
  *(v170 + 16) = v169;
  *(v170 + 24) = v60;
  v440 = 0xD000000000000015;
  *v167 = 0xD000000000000015;
  v167[1] = 0x80000001D73E3C30;
  v167[2] = v170 | 0x3000000000000000;
  v167[3] = 1;
  v171 = *(v145 + 28);
  sub_1D6AA8ADC(v43, v167 + v171, v439);
  v172 = v167 + v171;
  v173 = v468;
  v164(v172, 0, 1, v468);
  *(v165 + 128) = v457;
  v439 = swift_allocBox();
  v175 = v174;
  v176 = v173;
  if (qword_1EDF31EE0 != -1)
  {
    swift_once();
  }

  v177 = v467;
  v178 = __swift_project_value_buffer(v467, qword_1EDFFCD80);
  v457 = v178;
  v465(v43, v178, v177);
  swift_storeEnumTagMultiPayload();
  v179 = v441;
  sub_1D7259EDC();
  sub_1D725A18C();
  v181 = v180;
  (*(v442 + 8))(v179, v443);
  v182 = swift_allocObject();
  *(v182 + 16) = v181;
  *(v182 + 24) = v60;
  *v175 = 0xD00000000000001BLL;
  *(v175 + 1) = 0x80000001D73E3C50;
  *(v175 + 2) = v182 | 0x3000000000000000;
  *(v175 + 3) = 1;
  v183 = v470;
  v184 = *(v470 + 28);
  v456 = type metadata accessor for FormatVersionRequirement;
  sub_1D6AA8ADC(v43, &v175[v184], type metadata accessor for FormatVersionRequirement);
  v466(&v175[v184], 0, 1, v176);
  *(v469 + 136) = v439;
  v185 = v183;
  v443 = swift_allocBox();
  v187 = v186;
  v188 = v467;
  v189 = v465;
  v465(v43, v178, v467);
  swift_storeEnumTagMultiPayload();
  sub_1D7259E9C();
  v191 = v190;
  v192 = swift_allocObject();
  *(v192 + 16) = v191;
  *(v192 + 24) = v60;
  *v187 = 0xD000000000000014;
  *(v187 + 1) = 0x80000001D73E3C70;
  *(v187 + 2) = v192 | 0x3000000000000000;
  *(v187 + 3) = 1;
  v193 = v185;
  v194 = *(v185 + 28);
  sub_1D6AA8ADC(v43, &v187[v194], type metadata accessor for FormatVersionRequirement);
  v195 = v468;
  v466(&v187[v194], 0, 1, v468);
  *(v469 + 144) = v443;
  v443 = swift_allocBox();
  v197 = v196;
  v198 = v188;
  v199 = v189;
  v189(v43, v457, v198);
  swift_storeEnumTagMultiPayload();
  sub_1D7259E9C();
  v201 = v200;
  v202 = swift_allocObject();
  *(v202 + 16) = v201;
  *(v202 + 24) = v60;
  *v197 = v440;
  v197[1] = 0x80000001D73E3C90;
  v197[2] = v202 | 0x3000000000000000;
  v197[3] = 1;
  v203 = *(v193 + 28);
  v204 = v456;
  sub_1D6AA8ADC(v43, v197 + v203, v456);
  v205 = v466;
  v466(v197 + v203, 0, 1, v195);
  v206 = v469;
  *(v469 + 152) = v443;
  v443 = swift_allocBox();
  v208 = v207;
  v199(v43, v457, v467);
  swift_storeEnumTagMultiPayload();
  sub_1D7259E9C();
  v210 = v209;
  v211 = swift_allocObject();
  *(v211 + 16) = v210;
  *(v211 + 24) = v60;
  *v208 = 0xD000000000000017;
  *(v208 + 1) = 0x80000001D73E3CB0;
  *(v208 + 2) = v211 | 0x3000000000000000;
  *(v208 + 3) = 1;
  v212 = v470;
  v213 = *(v470 + 28);
  sub_1D6AA8ADC(v43, &v208[v213], v204);
  v205(&v208[v213], 0, 1, v468);
  *(v206 + 160) = v443;
  v443 = swift_allocBox();
  v215 = v214;
  v216 = v467;
  v217 = v465;
  v465(v43, v457, v467);
  swift_storeEnumTagMultiPayload();
  sub_1D7259E9C();
  v219 = v218;
  v220 = swift_allocObject();
  *(v220 + 16) = v219;
  *(v220 + 24) = v60;
  *v215 = 0xD000000000000016;
  *(v215 + 1) = 0x80000001D73E3CD0;
  *(v215 + 2) = v220 | 0x3000000000000000;
  *(v215 + 3) = 1;
  v221 = *(v212 + 28);
  sub_1D6AA8ADC(v43, &v215[v221], v456);
  v466(&v215[v221], 0, 1, v468);
  *(v469 + 168) = v443;
  v456 = swift_allocBox();
  v223 = v222;
  v224 = v217;
  if (qword_1EDF31ED8 != -1)
  {
    swift_once();
  }

  v457 = __swift_project_value_buffer(v216, qword_1EDFFCD68);
  v217(v43, v457, v216);
  swift_storeEnumTagMultiPayload();
  v225 = sub_1D7259CCC();
  v226 = swift_allocObject();
  *(v226 + 16) = v225;
  *(v226 + 24) = v60;
  strcpy(v223, "column-count");
  *(v223 + 13) = 0;
  *(v223 + 14) = -5120;
  *(v223 + 16) = v226 | 0x4000000000000000;
  *(v223 + 24) = 1;
  v227 = *(v470 + 28);
  v228 = v43;
  v462 = type metadata accessor for FormatVersionRequirement;
  sub_1D6AA8ADC(v43, v223 + v227, type metadata accessor for FormatVersionRequirement);
  v229 = (v223 + v227);
  v230 = v468;
  v466(v229, 0, 1, v468);
  *(v469 + 176) = v456;
  v456 = swift_allocBox();
  v232 = v231;
  v233 = v457;
  v224(v43, v457, v216);
  swift_storeEnumTagMultiPayload();
  sub_1D7259C0C();
  v235 = v234;
  v236 = swift_allocObject();
  *(v236 + 16) = v235;
  *(v236 + 24) = v60;
  strcpy(v232, "column-width");
  *(v232 + 13) = 0;
  *(v232 + 14) = -5120;
  *(v232 + 16) = v236 | 0x3000000000000000;
  *(v232 + 24) = 1;
  v237 = *(v470 + 28);
  sub_1D6AA8ADC(v228, v232 + v237, v462);
  v466((v232 + v237), 0, 1, v230);
  v238 = v469;
  *(v469 + 184) = v456;
  v456 = swift_allocBox();
  v240 = v239;
  v241 = v467;
  v465(v228, v233, v467);
  swift_storeEnumTagMultiPayload();
  sub_1D7259C1C();
  v243 = v242;
  v244 = swift_allocObject();
  *(v244 + 16) = v243;
  *(v244 + 24) = v60;
  *v240 = v458;
  v240[1] = 0x80000001D73E3CF0;
  v240[2] = v244 | 0x3000000000000000;
  v240[3] = 1;
  v245 = *(v470 + 28);
  sub_1D6AA8ADC(v228, v240 + v245, v462);
  v466(v240 + v245, 0, 1, v468);
  *(v238 + 192) = v456;
  v443 = swift_allocBox();
  v247 = v246;
  v248 = v241;
  v249 = v465;
  v465(v228, v233, v248);
  swift_storeEnumTagMultiPayload();
  sub_1D7259CDC();
  v251 = v250;
  v252 = swift_allocObject();
  *(v252 + 16) = v251;
  *(v252 + 24) = v60;
  v456 = 0xD000000000000010;
  *v247 = 0xD000000000000010;
  v247[1] = 0x80000001D73E3D10;
  v247[2] = v252 | 0x3000000000000000;
  v247[3] = 1;
  v253 = v470;
  v254 = *(v470 + 28);
  v255 = v462;
  sub_1D6AA8ADC(v228, v247 + v254, v462);
  v256 = v247 + v254;
  v257 = v466;
  v466(v256, 0, 1, v468);
  *(v238 + 200) = v443;
  v442 = swift_allocBox();
  v259 = v258;
  v260 = v457;
  v249(v228, v457, v467);
  swift_storeEnumTagMultiPayload();
  sub_1D7259C4C();
  v262 = v261;
  v263 = swift_allocObject();
  *(v263 + 16) = v262;
  *(v263 + 24) = v60;
  v443 = 0xD000000000000019;
  *v259 = 0xD000000000000019;
  *(v259 + 1) = 0x80000001D73E3D30;
  *(v259 + 2) = v263 | 0x3000000000000000;
  *(v259 + 3) = 1;
  v264 = *(v253 + 28);
  sub_1D6AA8ADC(v228, &v259[v264], v255);
  v257(&v259[v264], 0, 1, v468);
  v265 = v469;
  *(v469 + 208) = v442;
  v442 = swift_allocBox();
  v267 = v266;
  v268 = v260;
  v269 = v467;
  v270 = v465;
  v465(v228, v268, v467);
  swift_storeEnumTagMultiPayload();
  sub_1D7259CEC();
  v272 = v271;
  v273 = swift_allocObject();
  *(v273 + 16) = v272;
  *(v273 + 24) = v60;
  *v267 = v456;
  *(v267 + 1) = 0x80000001D73E3D50;
  *(v267 + 2) = v273 | 0x3000000000000000;
  *(v267 + 3) = 1;
  v274 = v470;
  v275 = *(v470 + 28);
  sub_1D6AA8ADC(v228, &v267[v275], v462);
  v466(&v267[v275], 0, 1, v468);
  *(v265 + 216) = v442;
  v276 = swift_allocBox();
  v278 = v277;
  v270(v228, v457, v269);
  swift_storeEnumTagMultiPayload();
  sub_1D7259C5C();
  v280 = v279;
  v281 = swift_allocObject();
  *(v281 + 16) = v280;
  *(v281 + 24) = v60;
  *v278 = v443;
  v278[1] = 0x80000001D73E3D70;
  v278[2] = v281 | 0x3000000000000000;
  v278[3] = 1;
  v282 = *(v274 + 28);
  v457 = v228;
  sub_1D6AA8ADC(v228, v278 + v282, v462);
  v466(v278 + v282, 0, 1, v468);
  *(v469 + 224) = v276;
  if (qword_1EDF31F40 != -1)
  {
    swift_once();
  }

  v462 = __swift_project_value_buffer(v467, qword_1EDFFCE50);
  (v465)(v449);
  swift_storeEnumTagMultiPayload();
  v283 = [v461 firstName];
  if (v283)
  {
    v284 = v283;
    v285 = sub_1D726207C();
    v287 = v286;
  }

  else
  {
    v285 = 0;
    v287 = 0xE000000000000000;
  }

  v288 = v470;
  v289 = swift_allocBox();
  v291 = v290;
  v292 = swift_allocObject();
  *(v292 + 16) = v285;
  *(v292 + 24) = v287;
  *(v292 + 32) = v60;
  *v291 = v444;
  v291[1] = 0x80000001D73E3D90;
  v291[2] = v292 | 0x5000000000000000;
  v291[3] = 1;
  v293 = *(v288 + 28);
  sub_1D6AA8ADC(v449, v291 + v293, type metadata accessor for FormatVersionRequirement);
  v466(v291 + v293, 0, 1, v468);
  *(v469 + 232) = v289;
  v465(v450, v462, v467);
  swift_storeEnumTagMultiPayload();
  v294 = [v461 middleName];
  if (v294)
  {
    v295 = v294;
    v296 = sub_1D726207C();
    v298 = v297;
  }

  else
  {
    v296 = 0;
    v298 = 0xE000000000000000;
  }

  v299 = v470;
  v300 = swift_allocBox();
  v302 = v301;
  v303 = swift_allocObject();
  *(v303 + 16) = v296;
  *(v303 + 24) = v298;
  *(v303 + 32) = v60;
  *v302 = v458;
  v302[1] = 0x80000001D73E3DB0;
  v302[2] = v303 | 0x5000000000000000;
  v302[3] = 1;
  v304 = *(v299 + 28);
  sub_1D6AA8ADC(v450, v302 + v304, type metadata accessor for FormatVersionRequirement);
  v466(v302 + v304, 0, 1, v468);
  *(v469 + 240) = v300;
  v465(v451, v462, v467);
  swift_storeEnumTagMultiPayload();
  v305 = [v461 lastName];
  if (v305)
  {
    v306 = v305;
    v307 = sub_1D726207C();
    v309 = v308;
  }

  else
  {
    v307 = 0;
    v309 = 0xE000000000000000;
  }

  v310 = v470;
  v311 = swift_allocBox();
  v313 = v312;
  v314 = swift_allocObject();
  *(v314 + 16) = v307;
  *(v314 + 24) = v309;
  *(v314 + 32) = v60;
  *v313 = v459;
  v313[1] = 0x80000001D73E3DD0;
  v313[2] = v314 | 0x5000000000000000;
  v313[3] = 1;
  v315 = *(v310 + 28);
  sub_1D6AA8ADC(v451, v313 + v315, type metadata accessor for FormatVersionRequirement);
  v466(v313 + v315, 0, 1, v468);
  *(v469 + 248) = v311;
  v465(v452, v462, v467);
  swift_storeEnumTagMultiPayload();
  v316 = [v461 fullName];
  if (v316)
  {
    v317 = v316;
    v318 = sub_1D726207C();
    v320 = v319;
  }

  else
  {
    v318 = 0;
    v320 = 0xE000000000000000;
  }

  v321 = v470;
  v322 = swift_allocBox();
  v324 = v323;
  v325 = swift_allocObject();
  *(v325 + 16) = v318;
  *(v325 + 24) = v320;
  *(v325 + 32) = v60;
  *v324 = v459;
  v324[1] = 0x80000001D73E3DF0;
  v324[2] = v325 | 0x5000000000000000;
  v324[3] = 1;
  v326 = *(v321 + 28);
  sub_1D6AA8ADC(v452, v324 + v326, type metadata accessor for FormatVersionRequirement);
  v466(v324 + v326, 0, 1, v468);
  *(v469 + 256) = v322;
  v465(v453, v462, v467);
  swift_storeEnumTagMultiPayload();
  v327 = [v461 username];
  if (v327)
  {
    v328 = v327;
    v329 = sub_1D726207C();
    v331 = v330;
  }

  else
  {
    v329 = 0;
    v331 = 0xE000000000000000;
  }

  v332 = v470;
  v333 = swift_allocBox();
  v335 = v334;
  v336 = swift_allocObject();
  *(v336 + 16) = v329;
  *(v336 + 24) = v331;
  *(v336 + 32) = v60;
  *v335 = v456;
  *(v335 + 1) = 0x80000001D73E3E10;
  *(v335 + 2) = v336 | 0x5000000000000000;
  *(v335 + 3) = 1;
  v337 = *(v332 + 28);
  sub_1D6AA8ADC(v453, &v335[v337], type metadata accessor for FormatVersionRequirement);
  v466(&v335[v337], 0, 1, v468);
  *(v469 + 264) = v333;
  v465(v454, v462, v467);
  swift_storeEnumTagMultiPayload();
  v338 = [v461 formattedUsername];
  if (v338)
  {
    v339 = v338;
    v340 = sub_1D726207C();
    v342 = v341;
  }

  else
  {
    v340 = 0;
    v342 = 0xE000000000000000;
  }

  v343 = v470;
  v344 = swift_allocBox();
  v346 = v345;
  v347 = swift_allocObject();
  *(v347 + 16) = v340;
  *(v347 + 24) = v342;
  *(v347 + 32) = v60;
  *v346 = 0xD00000000000001ALL;
  *(v346 + 1) = 0x80000001D73E3E30;
  *(v346 + 2) = v347 | 0x5000000000000000;
  *(v346 + 3) = 1;
  v348 = *(v343 + 28);
  sub_1D6AA8ADC(v454, &v346[v348], type metadata accessor for FormatVersionRequirement);
  v466(&v346[v348], 0, 1, v468);
  *(v469 + 272) = v344;
  v349 = v445;
  v465(v445, v462, v467);
  swift_storeEnumTagMultiPayload();
  v350 = [v461 personID];
  if (v350)
  {
    v351 = v350;
    v352 = sub_1D726207C();
    v354 = v353;
  }

  else
  {
    v352 = 0;
    v354 = 0xE000000000000000;
  }

  v355 = v470;
  v356 = swift_allocBox();
  v358 = v357;
  v359 = swift_allocObject();
  *(v359 + 16) = v352;
  *(v359 + 24) = v354;
  *(v359 + 32) = v60;
  *v358 = v459;
  v358[1] = 0x80000001D73E3E50;
  v358[2] = v359 | 0x5000000000000000;
  v358[3] = 1;
  v360 = *(v355 + 28);
  sub_1D6AA8ADC(v349, v358 + v360, type metadata accessor for FormatVersionRequirement);
  v466(v358 + v360, 0, 1, v468);
  *(v469 + 280) = v356;
  v465(v455, v462, v467);
  swift_storeEnumTagMultiPayload();
  v361 = [v461 normalizedPersonId];
  if (v361)
  {
    v362 = v361;
    v363 = sub_1D726207C();
    v365 = v364;
  }

  else
  {
    v363 = 0;
    v365 = 0xE000000000000000;
  }

  v366 = v470;
  v367 = swift_allocBox();
  v369 = v368;
  v370 = swift_allocObject();
  *(v370 + 16) = v363;
  *(v370 + 24) = v365;
  *(v370 + 32) = v60;
  *v369 = 0xD00000000000001CLL;
  *(v369 + 1) = 0x80000001D73E3E70;
  *(v369 + 2) = v370 | 0x5000000000000000;
  *(v369 + 3) = 1;
  v371 = *(v366 + 28);
  sub_1D6AA8ADC(v455, &v369[v371], type metadata accessor for FormatVersionRequirement);
  v466(&v369[v371], 0, 1, v468);
  *(v469 + 288) = v367;
  v459 = swift_allocBox();
  v373 = v372;
  v374 = v457;
  v465(v457, v462, v467);
  swift_storeEnumTagMultiPayload();
  v375 = [v461 ageCategory];
  v376 = swift_allocObject();
  *(v376 + 16) = v375;
  *(v376 + 24) = v60;
  *v373 = 0xD000000000000014;
  *(v373 + 1) = 0x80000001D73E3E90;
  *(v373 + 2) = v376 | 0x4000000000000000;
  *(v373 + 3) = 1;
  v377 = *(v366 + 28);
  v460 = type metadata accessor for FormatVersionRequirement;
  sub_1D6AA8ADC(v374, &v373[v377], type metadata accessor for FormatVersionRequirement);
  v378 = v468;
  v379 = v466;
  v466(&v373[v377], 0, 1, v468);
  v380 = v366;
  *(v469 + 296) = v459;
  v459 = swift_allocBox();
  v382 = v381;
  v465(v374, v462, v467);
  swift_storeEnumTagMultiPayload();
  v383 = v461;
  LOBYTE(v375) = [v461 isSuspended];
  v384 = swift_allocObject();
  *(v384 + 16) = v375;
  *(v384 + 24) = v60;
  *v382 = 0xD000000000000014;
  *(v382 + 1) = 0x80000001D73E3EB0;
  *(v382 + 2) = v384;
  *(v382 + 3) = 1;
  v385 = *(v380 + 28);
  sub_1D6AA8ADC(v374, &v382[v385], type metadata accessor for FormatVersionRequirement);
  v379(&v382[v385], 0, 1, v378);
  *(v469 + 304) = v459;
  v458 = swift_allocBox();
  v387 = v386;
  v388 = v462;
  v389 = v467;
  v465(v374, v462, v467);
  swift_storeEnumTagMultiPayload();
  LOBYTE(v375) = [v383 isiCloudSuspended];
  v390 = swift_allocObject();
  *(v390 + 16) = v375;
  *(v390 + 24) = v60;
  v459 = 0xD00000000000001BLL;
  *v387 = 0xD00000000000001BLL;
  *(v387 + 1) = 0x80000001D73E3ED0;
  *(v387 + 2) = v390;
  *(v387 + 3) = 1;
  v391 = *(v470 + 28);
  v392 = v460;
  sub_1D6AA8ADC(v374, &v387[v391], v460);
  v393 = v466;
  v466(&v387[v391], 0, 1, v468);
  *(v469 + 312) = v458;
  v458 = swift_allocBox();
  v395 = v394;
  v396 = v388;
  v397 = v465;
  v465(v374, v396, v389);
  swift_storeEnumTagMultiPayload();
  LOBYTE(v375) = [v461 isFamilySuspended];
  v398 = swift_allocObject();
  *(v398 + 16) = v375;
  *(v398 + 24) = v60;
  *v395 = v459;
  v395[1] = 0x80000001D73E3EF0;
  v395[2] = v398;
  v395[3] = 1;
  v399 = *(v470 + 28);
  sub_1D6AA8ADC(v374, v395 + v399, v392);
  v400 = v468;
  v393(v395 + v399, 0, 1, v468);
  v401 = v469;
  *(v469 + 320) = v458;
  v459 = swift_allocBox();
  v403 = v402;
  v397(v374, v462, v467);
  v404 = v470;
  swift_storeEnumTagMultiPayload();
  v405 = v461;
  LOBYTE(v399) = [v461 isFamilyEligible];
  v406 = swift_allocObject();
  *(v406 + 16) = v399;
  *(v406 + 24) = v60;
  *v403 = 0xD00000000000001ALL;
  *(v403 + 1) = 0x80000001D73E3F10;
  *(v403 + 2) = v406;
  *(v403 + 3) = 1;
  v407 = *(v404 + 28);
  sub_1D6AA8ADC(v374, &v403[v407], v460);
  v466(&v403[v407], 0, 1, v400);
  *(v401 + 328) = v459;

  v474 = v401;
  v408 = v446;
  v409 = *(v446 + 16);
  if (v409)
  {
    *&v473 = v60;
    sub_1D5D24610(0, v409, 0);
    v60 = v473;
    v410 = v408 + ((*(v437 + 80) + 32) & ~*(v437 + 80));
    v411 = *(v437 + 72);
    v412 = v438;
    do
    {
      sub_1D6AA3978(v410, v412, type metadata accessor for FormatOption);
      v413 = swift_allocBox();
      sub_1D6AA8ADC(v412, v414, type metadata accessor for FormatOption);
      *&v473 = v60;
      v416 = *(v60 + 16);
      v415 = *(v60 + 24);
      if (v416 >= v415 >> 1)
      {
        sub_1D5D24610((v415 > 1), v416 + 1, 1);
        v60 = v473;
      }

      *(v60 + 16) = v416 + 1;
      *(v60 + 8 * v416 + 32) = v413;
      v410 += v411;
      --v409;
    }

    while (v409);
  }

  sub_1D6985C44(v60);
  v417 = v474;
  sub_1D5B68374(v475, &v473);
  v418 = v448;
  v419 = (v448 + OBJC_IVAR____TtC8NewsFeed19FormatSystemFactory_appConfigManager);
  v420 = *(v448 + OBJC_IVAR____TtC8NewsFeed19FormatSystemFactory_appConfigManager + 24);
  v421 = *(v448 + OBJC_IVAR____TtC8NewsFeed19FormatSystemFactory_appConfigManager + 32);
  __swift_project_boxed_opaque_existential_1((v448 + OBJC_IVAR____TtC8NewsFeed19FormatSystemFactory_appConfigManager), v420);
  v422 = (*(v421 + 8))(v420, v421);
  v423 = v419[3];
  v424 = v419[4];
  __swift_project_boxed_opaque_existential_1(v419, v423);
  v425 = (*(v424 + 16))(v423, v424);
  v426 = v419[3];
  v427 = v419[4];
  __swift_project_boxed_opaque_existential_1(v419, v426);
  (*(v427 + 24))(&v472, v426, v427);
  v428 = v419[3];
  v429 = v419[4];
  __swift_project_boxed_opaque_existential_1(v419, v428);
  v430 = (*(v429 + 40))(v428, v429);
  v431 = [*(v418 + OBJC_IVAR____TtC8NewsFeed19FormatSystemFactory_bundleSubscriptionManager) cachedSubscription];
  v471 = v472;
  v432 = v419[3];
  v433 = v419[4];
  __swift_project_boxed_opaque_existential_1(v419, v432);
  (*(v433 + 32))(&v472, v432, v433);
  v434 = v472;
  type metadata accessor for FormatSystem();
  v435 = swift_allocObject();
  *(v435 + 64) = v447;
  *(v435 + 72) = v417;
  sub_1D5B7DDE8(&v473, v435 + 80);
  *(v435 + 16) = v422;
  *(v435 + 24) = v425;
  *(v435 + 32) = v471;
  *(v435 + 48) = v430;
  *(v435 + 56) = v431;
  *(v435 + 120) = v434;
  __swift_destroy_boxed_opaque_existential_1(v475);
  return v435;
}

uint64_t sub_1D6AA87D4(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_1D6AA8C40(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D6AA88C0(uint64_t *a1)
{
  v3 = *(type metadata accessor for FormatDerivedDataCompilerSettings(0) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_1D67D0B04(a1, v4, v5, v6);
}

double sub_1D6AA8948(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }

  return result;
}

id sub_1D6AA8968(id a1, char a2)
{
  if (a2)
  {
    return a1;
  }

  else
  {
  }
}

uint64_t sub_1D6AA8A18(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D6AA8A78(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D6AA8ADC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D6AA8B4C(uint64_t a1)
{
  v3 = *(type metadata accessor for FormatDerivedDataCompilerSettings(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1D67D2FA4(a1, (v1 + v4), v5);
}

uint64_t objectdestroy_7Tm(void (*a1)(void, __n128))
{

  (a1)(*(v1 + 24));

  return swift_deallocObject();
}

void sub_1D6AA8C40(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1D6AA8C90(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_1D6AA8CE8(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v6 = v5;
  v7 = objc_opt_self();
  v8 = [v7 systemGrayColor];
  v72 = v7;
  v9 = [v7 lightGrayColor];
  v10 = objc_opt_self();
  v11 = *MEMORY[0x1E69DB958];
  v73 = v10;
  v12 = [v10 systemFontOfSize:12.0 weight:*MEMORY[0x1E69DB958]];
  v13 = [objc_allocWithZone(MEMORY[0x1E69DCA78]) initWithSize_];
  v14 = swift_allocObject();
  *(v14 + 16) = v8;
  v71 = vdupq_n_s64(0x4046000000000000uLL);
  *(v14 + 24) = v71;
  *(v14 + 40) = 0;
  *(v14 + 48) = 0;
  *(v14 + 56) = v12;
  *(v14 + 64) = v9;
  v15 = swift_allocObject();
  v15[2] = sub_1D6139584;
  v15[3] = v14;
  *&v80 = sub_1D6139588;
  *(&v80 + 1) = v15;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v79 = sub_1D62E78B0;
  *(&v79 + 1) = &block_descriptor_71;
  v16 = _Block_copy(&aBlock);
  v17 = *(&v80 + 1);
  v18 = v8;
  v19 = v12;
  v20 = v9;

  v21 = [v13 imageWithActions_];

  _Block_release(v16);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_25;
  }

  v6[4] = v21;
  v20 = v72;
  v23 = [v72 lightGrayColor];
  v24 = [v73 systemFontOfSize:12.0 weight:v11];
  v18 = [objc_allocWithZone(MEMORY[0x1E69DCA78]) initWithSize_];
  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  *(v25 + 24) = v71;
  *(v25 + 40) = 0;
  *(v25 + 48) = 0;
  *(v25 + 56) = v24;
  *(v25 + 64) = v23;
  v13 = swift_allocObject();
  v13[2] = sub_1D61395AC;
  v13[3] = v25;
  *&v80 = sub_1D61395B0;
  *(&v80 + 1) = v13;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v79 = sub_1D62E78B0;
  *(&v79 + 1) = &block_descriptor_16_2;
  v26 = _Block_copy(&aBlock);
  v27 = v24;
  v17 = v23;

  v15 = [v18 imageWithActions_];

  _Block_release(v26);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v6[5] = v15;
  v28 = [v72 lightGrayColor];
  v29 = [v73 systemFontOfSize:12.0 weight:v11];
  v15 = [objc_allocWithZone(MEMORY[0x1E69DCA78]) initWithSize_];
  isEscapingClosureAtFileLocation = swift_allocObject();
  *(isEscapingClosureAtFileLocation + 16) = 0;
  *(isEscapingClosureAtFileLocation + 24) = vdupq_n_s64(0x4046000000000000uLL);
  *(isEscapingClosureAtFileLocation + 40) = xmmword_1D729E1B0;
  *(isEscapingClosureAtFileLocation + 56) = v29;
  *(isEscapingClosureAtFileLocation + 64) = v28;
  v13 = swift_allocObject();
  v13[2] = sub_1D61395AC;
  v13[3] = isEscapingClosureAtFileLocation;
  *&v80 = sub_1D61395B0;
  *(&v80 + 1) = v13;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v79 = sub_1D62E78B0;
  *(&v79 + 1) = &block_descriptor_27_2;
  v30 = _Block_copy(&aBlock);
  v17 = *(&v80 + 1);
  v31 = v29;
  v18 = v28;

  v32 = [v15 imageWithActions_];

  _Block_release(v30);
  LOBYTE(v30) = swift_isEscapingClosureAtFileLocation();

  if (v30)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    isEscapingClosureAtFileLocation = sub_1D6995194(0, *(isEscapingClosureAtFileLocation + 16) + 1, 1, isEscapingClosureAtFileLocation);
    *(v13 + v6) = isEscapingClosureAtFileLocation;
    goto LABEL_8;
  }

  v33 = MEMORY[0x1E69E7CD0];
  v6[6] = v32;
  v6[7] = v33;
  v34 = MEMORY[0x1E69E7CC8];
  v6[8] = v33;
  v6[9] = v34;
  v35 = MEMORY[0x1E69E7CC0];
  v6[10] = MEMORY[0x1E69E7CC0];
  v6[11] = v33;
  *(v6 + OBJC_IVAR____TtC8NewsFeed41DebugPersonalizationInspectViewDataSource_sections) = v35;
  *(v6 + OBJC_IVAR____TtC8NewsFeed41DebugPersonalizationInspectViewDataSource_feedItemImages) = v34;
  v17 = a1;
  sub_1D6AAC480(a1, v6 + OBJC_IVAR____TtC8NewsFeed41DebugPersonalizationInspectViewDataSource_key, type metadata accessor for DebugGroupLayoutKey);
  v15 = (a1 + *(type metadata accessor for DebugGroupLayoutKey(0) + 24));
  v36 = v15[4];
  v37 = v15[5];
  __swift_project_boxed_opaque_existential_1(v15 + 1, v36);
  (*(v37 + 64))(&aBlock, v36, v37);
  v38 = *(&v79 + 1);
  if (*(&v79 + 1))
  {
    v39 = v80;
    __swift_project_boxed_opaque_existential_1(&aBlock, *(&v79 + 1));
    v40 = (*(v39 + 16))(v38, v39);
    v42 = v41;
    __swift_destroy_boxed_opaque_existential_1(&aBlock);
  }

  else
  {
    sub_1D6330678(&aBlock);
    v40 = *a1;
    v42 = a1[1];
  }

  v20 = a5;
  v18 = a4;
  v6[2] = v40;
  v6[3] = v42;
  sub_1D5B68374(a4, &aBlock);
  type metadata accessor for DebugInspectHeadlineService();
  v43 = swift_allocObject();
  sub_1D5B63F14(&aBlock, v43 + 16);
  *(v6 + OBJC_IVAR____TtC8NewsFeed41DebugPersonalizationInspectViewDataSource_headlineService) = v43;
  sub_1D5B68374(a5, &aBlock);
  type metadata accessor for DebugInspectRecipeService();
  v44 = swift_allocObject();
  sub_1D5B63F14(&aBlock, v44 + 16);
  *(v6 + OBJC_IVAR____TtC8NewsFeed41DebugPersonalizationInspectViewDataSource_recipeService) = v44;
  sub_1D6AAB5C4(a1, &aBlock);
  v13 = OBJC_IVAR____TtC8NewsFeed41DebugPersonalizationInspectViewDataSource_sections;
  swift_beginAccess();
  isEscapingClosureAtFileLocation = *(v13 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v13 + v6) = isEscapingClosureAtFileLocation;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_8:
  v47 = *(isEscapingClosureAtFileLocation + 16);
  v46 = *(isEscapingClosureAtFileLocation + 24);
  if (v47 >= v46 >> 1)
  {
    isEscapingClosureAtFileLocation = sub_1D6995194((v46 > 1), v47 + 1, 1, isEscapingClosureAtFileLocation);
  }

  *(isEscapingClosureAtFileLocation + 16) = v47 + 1;
  v48 = (isEscapingClosureAtFileLocation + (v47 << 6));
  v49 = aBlock;
  v50 = v79;
  v51 = v81;
  v48[4] = v80;
  v48[5] = v51;
  v48[2] = v49;
  v48[3] = v50;
  *(v13 + v6) = isEscapingClosureAtFileLocation;
  swift_endAccess();
  v52 = v15[4];
  v53 = v15[5];
  __swift_project_boxed_opaque_existential_1(v15 + 1, v52);
  (*(v53 + 64))(v75, v52, v53);
  v54 = v76;
  if (v76)
  {
    v55 = v77;
    __swift_project_boxed_opaque_existential_1(v75, v76);
    v56 = (*(v55 + 32))(v54, v55);
    if (v56)
    {
      v57 = *(v56 + 16);

      __swift_destroy_boxed_opaque_existential_1(v75);
      if (v57 >> 62)
      {
        v58 = sub_1D7263BFC();
      }

      else
      {
        v58 = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v58)
      {
        v59 = sub_1D6AAB448(v17);
        swift_beginAccess();
        v60 = *(v13 + v6);
        v61 = swift_isUniquelyReferenced_nonNull_native();
        *(v13 + v6) = v60;
        if ((v61 & 1) == 0)
        {
          v60 = sub_1D6995194(0, *(v60 + 2) + 1, 1, v60);
          *(v13 + v6) = v60;
        }

        v63 = *(v60 + 2);
        v62 = *(v60 + 3);
        if (v63 >= v62 >> 1)
        {
          v60 = sub_1D6995194((v62 > 1), v63 + 1, 1, v60);
        }

        *(v60 + 2) = v63 + 1;
        v64 = &v60[64 * v63];
        *(v64 + 4) = 0xD000000000000014;
        *(v64 + 5) = 0x80000001D73E3F90;
        *(v64 + 6) = 0;
        *(v64 + 7) = 0;
        *(v64 + 8) = v59;
        v64[72] = 0;
        *(v64 + 73) = *v74;
        *(v64 + 19) = *&v74[3];
        *(v64 + 10) = 0;
        *(v64 + 11) = 0;
        *(v13 + v6) = v60;
        swift_endAccess();
      }

      __swift_destroy_boxed_opaque_existential_1(v20);
      __swift_destroy_boxed_opaque_existential_1(v18);
      sub_1D6084EA8(a3);
      sub_1D6AAC53C(a2, type metadata accessor for GroupLayoutBindingContext);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(v20);
      __swift_destroy_boxed_opaque_existential_1(v18);
      sub_1D6084EA8(a3);
      sub_1D6AAC53C(a2, type metadata accessor for GroupLayoutBindingContext);
      __swift_destroy_boxed_opaque_existential_1(v75);
    }
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v20);
    __swift_destroy_boxed_opaque_existential_1(v18);
    sub_1D6084EA8(a3);
    sub_1D6AAC53C(a2, type metadata accessor for GroupLayoutBindingContext);
    sub_1D6330678(v75);
  }

  sub_1D6AAC53C(v17, type metadata accessor for DebugGroupLayoutKey);
  return v6;
}

id *sub_1D6AA977C()
{

  sub_1D6AAC53C(v0 + OBJC_IVAR____TtC8NewsFeed41DebugPersonalizationInspectViewDataSource_key, type metadata accessor for DebugGroupLayoutKey);

  return v0;
}

uint64_t sub_1D6AA9840()
{
  sub_1D6AA977C();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DebugPersonalizationInspectViewDataSource(uint64_t a1)
{
  result = qword_1EC891220;
  if (!qword_1EC891220)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D6AA98EC(uint64_t a1)
{
  result = type metadata accessor for DebugGroupLayoutKey(319);
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

double sub_1D6AA99C0(void *a1, uint64_t a2, void *a3, void (*a4)(id))
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    __swift_project_boxed_opaque_existential_1(a3, a3[3]);
    v10 = sub_1D725AA4C();
    v12 = v11;
    if (a1)
    {
      v13 = a1;
    }

    else
    {
      v13 = *(v9 + 48);
    }

    v14 = OBJC_IVAR____TtC8NewsFeed41DebugPersonalizationInspectViewDataSource_feedItemImages;
    swift_beginAccess();
    v15 = a1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *(v9 + v14);
    *(v9 + v14) = 0x8000000000000000;
    sub_1D6D7A208(v13, v10, v12, isUniquelyReferenced_nonNull_native);

    *(v9 + v14) = v19;
    swift_endAccess();
    v17 = v15;
    if (!a1)
    {
      v17 = *(v9 + 48);
    }

    v18 = v15;
    a4(v17);
  }

  return result;
}

void *sub_1D6AA9B1C(void *a1, uint64_t a2, unint64_t a3, void (*a4)(void), uint64_t a5)
{
  v189 = a3;
  v197 = type metadata accessor for FeedRecipe.State(0);
  MEMORY[0x1EEE9AC00](v197, v9);
  v11 = &v182 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v208 = type metadata accessor for FeedHeadline(0);
  MEMORY[0x1EEE9AC00](v208, v12);
  v14 = &v182 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v200 = type metadata accessor for FeedHeadline.State(0);
  MEMORY[0x1EEE9AC00](v200, v15);
  v199 = &v182 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5D504A0(0);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v207 = &v182 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v209 = type metadata accessor for FeedItem(0);
  v216 = *(v209 - 8);
  MEMORY[0x1EEE9AC00](v209, v20);
  v213 = &v182 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v211 = &v182 - v24;
  MEMORY[0x1EEE9AC00](v25, v26);
  v212 = &v182 - v27;
  MEMORY[0x1EEE9AC00](v28, v29);
  v191 = &v182 - v30;
  MEMORY[0x1EEE9AC00](v31, v32);
  v214 = &v182 - v33;
  MEMORY[0x1EEE9AC00](v34, v35);
  v37 = &v182 - v36;
  MEMORY[0x1EEE9AC00](v38, v39);
  v41 = &v182 - v40;
  MEMORY[0x1EEE9AC00](v42, v43);
  v198 = &v182 - v44;
  v183 = type metadata accessor for FormatContent.Resolved(0);
  MEMORY[0x1EEE9AC00](v183, v45);
  MEMORY[0x1EEE9AC00](v46, v47);
  v50 = &v182 - v49;
  v51 = *a1;
  v52 = a1[3];
  if (!*(*a1 + 16) && !*(v52 + 16))
  {
    swift_beginAccess();
    sub_1D5EC25C8(v189, v218);
    swift_endAccess();
    v219 = v218[0];
    v220 = v218[1];
    *v221 = v218[2];
    *&v221[16] = v218[3];
    sub_1D6AAC4E8(&v219);
    a4(MEMORY[0x1E69E7CC0]);
    goto LABEL_115;
  }

  v182 = v48;
  v201 = v37;
  v187 = v52;
  v184 = a5;
  v185 = a4;
  v190 = a2;
  v53 = a2 + OBJC_IVAR____TtC8NewsFeed41DebugPersonalizationInspectViewDataSource_key;
  v54 = v51;
  v55 = (v53 + *(type metadata accessor for DebugGroupLayoutKey(0) + 24));
  v56 = v55[4];
  v57 = v55[5];
  v188 = v55;
  __swift_project_boxed_opaque_existential_1(v55 + 1, v56);
  v58 = *(v57 + 64);
  v186 = v54;

  v58(&v219, v56, v57);
  v59 = *(&v220 + 1);
  v215 = v41;
  if (!*(&v220 + 1))
  {
    sub_1D6330678(&v219);
LABEL_38:
    v210 = MEMORY[0x1E69E7CC0];
    goto LABEL_43;
  }

  v60 = *v221;
  __swift_project_boxed_opaque_existential_1(&v219, *(&v220 + 1));
  v61 = (*(v60 + 40))(v59, v60);
  if (!v61)
  {
    __swift_destroy_boxed_opaque_existential_1(&v219);
    goto LABEL_38;
  }

  sub_1D6AAC480(v61 + OBJC_IVAR____TtC8NewsFeed20FeedGroupDebugFormat_content, v50, type metadata accessor for FormatContent.Resolved);

  v62 = v217;
  v63 = sub_1D5CEB958(*&v50[*(v183 + 36)]);
  v217 = v62;
  sub_1D6AAC53C(v50, type metadata accessor for FormatContent.Resolved);
  if (v63 >> 62)
  {
    v64 = sub_1D7263BFC();
    if (v64)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v64 = *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v64)
    {
LABEL_7:
      *&v218[0] = MEMORY[0x1E69E7CC0];
      result = sub_1D69992E8(0, v64 & ~(v64 >> 63), 0);
      if (v64 < 0)
      {
        __break(1u);
LABEL_122:
        __break(1u);
        return result;
      }

      v66 = 0;
      v67 = *&v218[0];
      v68 = v63;
      v193 = v63 & 0xC000000000000001;
      v192 = xmmword_1D727C330;
      v196 = v11;
      v195 = v63;
      v194 = v64;
      do
      {
        v210 = v67;
        *&v206 = v66;
        if (v193)
        {
          v69 = MEMORY[0x1DA6FB460](v66, v68);
        }

        else
        {
          v69 = *(v68 + 8 * v66 + 32);
          swift_unknownObjectRetain();
        }

        v70 = sub_1D726045C();
        v71 = v207;
        (*(*(v70 - 8) + 56))(v207, 1, 1, v70);
        v72 = v200;
        v73 = *(v200 + 24);
        v74 = type metadata accessor for SharedItem(0);
        v75 = v199;
        (*(*(v74 - 8) + 56))(&v199[v73], 1, 1, v74);
        *v75 = 258;
        v205 = v72[7];
        *(v75 + v205) = 1;
        v76 = v72[8];
        *(v75 + v76) = 0;
        v202 = v72[9];
        *(v75 + v202) = 0;
        v204 = v72[10];
        *(v75 + v204) = 0;
        v77 = v208;
        *&v14[*(v208 + 48)] = v192;
        ObjectType = swift_getObjectType();
        v78 = [v69 identifier];
        v79 = sub_1D726207C();
        v81 = v80;

        *v14 = v79;
        *(v14 + 1) = v81;
        *(v14 + 5) = v69;
        *(v14 + 6) = 0;
        sub_1D6AAC480(v71, &v14[v77[11]], sub_1D5D504A0);
        sub_1D6AAC480(v75, &v14[v77[10]], type metadata accessor for FeedHeadline.State);
        *&v14[v77[14]] = 0;
        v14[56] = 0;
        v82 = [swift_unknownObjectRetain() title];
        v85 = 0;
        if (v82)
        {
          v83 = v82;
          v84 = [v82 ne_isNaturallyRTL];

          if (v84)
          {
            v85 = 1;
          }
        }

        *(v14 + 2) = v85;
        v14[24] = 0;
        sub_1D5BC7BD4(&v222);
        swift_unknownObjectRelease();
        v86 = v206;
        if (*(v75 + v76) - 1 <= 1 && (v222 & 0x1000) == 0)
        {
          v222 |= 0x1000uLL;
        }

        v87 = *(v75 + v204);
        v88 = 0x80000000;
        if (!*(v75 + v204))
        {
          v88 = 0x100000000;
        }

        if ((v222 & v88) != 0)
        {
          v88 = 0;
        }

        *(v14 + 4) = v222 | v88;
        v41 = v215;
        if (*(v75 + v205))
        {
          v11 = v196;
          if (*(v75 + v202))
          {
            sub_1D6AAC53C(v75, type metadata accessor for FeedHeadline.State);
            sub_1D6AAC53C(v207, sub_1D5D504A0);
            v89 = 1;
          }

          else if (v87)
          {
            v93 = [v69 sourceChannel];
            sub_1D6AAC53C(v75, type metadata accessor for FeedHeadline.State);
            sub_1D6AAC53C(v207, sub_1D5D504A0);
            v89 = 2;
            if (v93)
            {
              v89 = v93;
            }
          }

          else
          {
            sub_1D6AAC53C(v75, type metadata accessor for FeedHeadline.State);
            sub_1D6AAC53C(v207, sub_1D5D504A0);
            v89 = 2;
          }
        }

        else
        {
          sub_1D6AAC53C(v75, type metadata accessor for FeedHeadline.State);
          sub_1D6AAC53C(v207, sub_1D5D504A0);
          v89 = 0;
          v11 = v196;
        }

        *&v14[*(v208 + 52)] = v89;
        v90 = v198;
        sub_1D5C21AEC(v14, v198, type metadata accessor for FeedHeadline);
        swift_storeEnumTagMultiPayload();
        v67 = v210;
        *&v218[0] = v210;
        v92 = *(v210 + 16);
        v91 = *(v210 + 24);
        v59 = v92 + 1;
        if (v92 >= v91 >> 1)
        {
          sub_1D69992E8((v91 > 1), v92 + 1, 1);
          v67 = *&v218[0];
        }

        v66 = v86 + 1;
        *(v67 + 16) = v59;
        sub_1D5C21AEC(v90, v67 + ((*(v216 + 80) + 32) & ~*(v216 + 80)) + *(v216 + 72) * v92, type metadata accessor for FeedItem);
        v68 = v195;
      }

      while (v194 != v66);

      goto LABEL_42;
    }
  }

  v67 = MEMORY[0x1E69E7CC0];
LABEL_42:
  v210 = v67;
  __swift_destroy_boxed_opaque_existential_1(&v219);
LABEL_43:
  v94 = v188[4];
  v95 = v188[5];
  __swift_project_boxed_opaque_existential_1(v188 + 1, v94);
  (*(v95 + 64))(&v219, v94, v95);
  v96 = *(&v220 + 1);
  if (!*(&v220 + 1))
  {
    sub_1D6330678(&v219);
    goto LABEL_62;
  }

  v97 = *v221;
  __swift_project_boxed_opaque_existential_1(&v219, *(&v220 + 1));
  v98 = (*(v97 + 40))(v96, v97);
  if (!v98)
  {
    __swift_destroy_boxed_opaque_existential_1(&v219);
LABEL_62:
    v215 = MEMORY[0x1E69E7CC0];
    v105 = v201;
    v103 = v210;
    v127 = *(v210 + 16);
    if (v127)
    {
      goto LABEL_63;
    }

    goto LABEL_72;
  }

  v99 = v182;
  sub_1D6AAC480(v98 + OBJC_IVAR____TtC8NewsFeed20FeedGroupDebugFormat_content, v182, type metadata accessor for FormatContent.Resolved);

  v100 = v217;
  v101 = sub_1D5CECAC0(*(v99 + *(v183 + 36)));
  v217 = v100;
  sub_1D6AAC53C(v99, type metadata accessor for FormatContent.Resolved);
  v102 = v101;
  v103 = v210;
  if (v101 >> 62)
  {
    goto LABEL_120;
  }

  v104 = *((v101 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    v105 = v201;
    if (v104)
    {
      v106 = v102;
      *&v218[0] = MEMORY[0x1E69E7CC0];
      result = sub_1D69992E8(0, v104 & ~(v104 >> 63), 0);
      if (v104 < 0)
      {
        goto LABEL_122;
      }

      v107 = 0;
      v108 = *&v218[0];
      v109 = v106;
      v207 = v106 & 0xC000000000000001;
      v206 = xmmword_1D727C320;
      v208 = v106;
      do
      {
        if (v207)
        {
          v110 = MEMORY[0x1DA6FB460](v107, v109);
        }

        else
        {
          v110 = *(v109 + 8 * v107 + 32);
        }

        v111 = v110;
        v112 = v197;
        v113 = *(v197 + 20);
        v114 = type metadata accessor for SharedItem(0);
        (*(*(v114 - 8) + 56))(&v11[v113], 1, 1, v114);
        *v11 = 0;
        v115 = *(v112 + 24);
        v11[v115] = 0;
        *(v41 + 16) = 0;
        *(v41 + 24) = 1;
        *(v41 + 32) = v206;
        v116 = [v111 identifier];
        v117 = sub_1D726207C();
        v119 = v118;

        *v215 = v117;
        v215[1] = v119;
        v41 = v215;
        v215[7] = v111;
        v120 = type metadata accessor for FeedRecipe(0);
        sub_1D6AAC480(v11, v41 + v120[9], type metadata accessor for FeedRecipe.State);
        v121 = v41 + v120[10];
        *(v121 + 32) = 0;
        *v121 = 0u;
        *(v121 + 16) = 0u;
        *(v41 + v120[11]) = 0;
        if (v11[v115] == 1)
        {
          v122 = [v111 sourceChannel];
        }

        else
        {
          v122 = 2;
        }

        v105 = v201;
        sub_1D6AAC53C(v11, type metadata accessor for FeedRecipe.State);
        *(v41 + 48) = v122;
        v123 = v41 + v120[12];
        *(v123 + 32) = 0;
        *v123 = 0u;
        *(v123 + 16) = 0u;
        v124 = v41 + v120[13];
        *(v124 + 32) = 0;
        *v124 = 0u;
        *(v124 + 16) = 0u;
        swift_storeEnumTagMultiPayload();
        *&v218[0] = v108;
        v126 = v108[2];
        v125 = v108[3];
        v59 = v126 + 1;
        if (v126 >= v125 >> 1)
        {
          sub_1D69992E8((v125 > 1), v126 + 1, 1);
          v108 = *&v218[0];
        }

        ++v107;
        v108[2] = v59;
        sub_1D5C21AEC(v41, v108 + ((*(v216 + 80) + 32) & ~*(v216 + 80)) + *(v216 + 72) * v126, type metadata accessor for FeedItem);
        v109 = v208;
      }

      while (v104 != v107);
      v215 = v108;

      v103 = v210;
    }

    else
    {

      v215 = MEMORY[0x1E69E7CC0];
    }

    __swift_destroy_boxed_opaque_existential_1(&v219);
    v127 = *(v103 + 16);
    if (v127)
    {
LABEL_63:
      v59 = v103 + ((*(v216 + 80) + 32) & ~*(v216 + 80));
      v128 = *(v216 + 72);
      v129 = MEMORY[0x1E69E7CC0];
      do
      {
        sub_1D6AAC480(v59, v105, type metadata accessor for FeedItem);
        v130 = FeedItem.identifier.getter();
        v132 = v131;
        sub_1D6AAC53C(v105, type metadata accessor for FeedItem);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v129 = sub_1D5B858EC(0, *(v129 + 2) + 1, 1, v129);
        }

        v41 = *(v129 + 2);
        v133 = *(v129 + 3);
        v11 = (v41 + 1);
        if (v41 >= v133 >> 1)
        {
          v129 = sub_1D5B858EC((v133 > 1), v41 + 1, 1, v129);
        }

        *(v129 + 2) = v11;
        v134 = &v129[16 * v41];
        *(v134 + 4) = v130;
        *(v134 + 5) = v132;
        v59 += v128;
        --v127;
      }

      while (v127);
    }

    else
    {
LABEL_72:

      v129 = MEMORY[0x1E69E7CC0];
    }

    v135 = v215[2];
    if (v135)
    {
      v59 = v215 + ((*(v216 + 80) + 32) & ~*(v216 + 80));
      v41 = *(v216 + 72);
      v136 = MEMORY[0x1E69E7CC0];
      do
      {
        v137 = v214;
        sub_1D6AAC480(v59, v214, type metadata accessor for FeedItem);
        v138 = FeedItem.identifier.getter();
        v140 = v139;
        sub_1D6AAC53C(v137, type metadata accessor for FeedItem);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v136 = sub_1D5B858EC(0, *(v136 + 2) + 1, 1, v136);
        }

        v105 = *(v136 + 2);
        v141 = *(v136 + 3);
        v11 = (v105 + 1);
        if (v105 >= v141 >> 1)
        {
          v136 = sub_1D5B858EC((v141 > 1), v105 + 1, 1, v136);
        }

        *(v136 + 2) = v11;
        v142 = &v136[16 * v105];
        *(v142 + 4) = v138;
        *(v142 + 5) = v140;
        v59 += v41;
        --v135;
      }

      while (v135);
    }

    else
    {

      v136 = MEMORY[0x1E69E7CC0];
    }

    *&v219 = v129;
    sub_1D6985160(v136);
    v215 = v219;
    *&v219 = v186;

    sub_1D6986C7C(v143);
    v144 = v219;
    v214 = *(v219 + 16);
    if (v214)
    {
      v145 = 0;
      v146 = MEMORY[0x1E69E7CC0];
      v103 = v191;
      while (v145 < *(v144 + 16))
      {
        v41 = (*(v216 + 80) + 32) & ~*(v216 + 80);
        v11 = v144;
        v147 = *(v216 + 72);
        sub_1D6AAC480(v144 + v41 + v147 * v145, v103, type metadata accessor for FeedItem);
        v105 = &v182;
        *&v219 = FeedItem.identifier.getter();
        *(&v219 + 1) = v148;
        MEMORY[0x1EEE9AC00](v219, v148);
        *(&v182 - 2) = &v219;
        v149 = v217;
        v59 = sub_1D5BD0418(sub_1D5BD0538, (&v182 - 4), v215);
        v217 = v149;

        if (v59)
        {
          sub_1D6AAC53C(v103, type metadata accessor for FeedItem);
        }

        else
        {
          sub_1D5C21AEC(v103, v211, type metadata accessor for FeedItem);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v218[0] = v146;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1D69992E8(0, *(v146 + 16) + 1, 1);
            v103 = v191;
            v146 = *&v218[0];
          }

          v105 = *(v146 + 16);
          v151 = *(v146 + 24);
          v59 = v105 + 1;
          if (v105 >= v151 >> 1)
          {
            sub_1D69992E8((v151 > 1), v105 + 1, 1);
            v103 = v191;
            v146 = *&v218[0];
          }

          *(v146 + 16) = v59;
          sub_1D5C21AEC(v211, v146 + v41 + v105 * v147, type metadata accessor for FeedItem);
        }

        if (v214 == ++v145)
        {
          goto LABEL_94;
        }
      }

      __break(1u);
LABEL_117:
      v102 = sub_1D5EC3C18(v144);
      v144 = v102;
      *(v59 + v146) = v102;
      goto LABEL_112;
    }

    v146 = MEMORY[0x1E69E7CC0];
LABEL_94:
    v210 = v144;

    v41 = *(v146 + 16);
    v152 = MEMORY[0x1E69E7CC0];
    if (v41)
    {
      v153 = v146 + ((*(v216 + 80) + 32) & ~*(v216 + 80));
      v154 = *(v216 + 72);
      do
      {
        v155 = v212;
        sub_1D6AAC480(v153, v212, type metadata accessor for FeedItem);
        v156 = FeedItem.identifier.getter();
        v158 = v157;
        sub_1D6AAC53C(v155, type metadata accessor for FeedItem);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v152 = sub_1D5B858EC(0, *(v152 + 2) + 1, 1, v152);
        }

        v160 = *(v152 + 2);
        v159 = *(v152 + 3);
        if (v160 >= v159 >> 1)
        {
          v152 = sub_1D5B858EC((v159 > 1), v160 + 1, 1, v152);
        }

        *(v152 + 2) = v160 + 1;
        v161 = &v152[16 * v160];
        *(v161 + 4) = v156;
        *(v161 + 5) = v158;
        v153 += v154;
        --v41;
      }

      while (v41);
    }

    v162 = v190;
    *(v190 + 80) = v152;
    v59 = v162;

    v163 = *(v146 + 16);
    if (v163 >= 0xA)
    {
      v164 = 10;
    }

    else
    {
      v164 = *(v146 + 16);
    }

    if (v163)
    {
      *&v218[0] = MEMORY[0x1E69E7CC0];
      v165 = v216;
      v166 = v146 + ((*(v216 + 80) + 32) & ~*(v216 + 80));
      sub_1D69998B8(0, v164, 0);
      v11 = *&v218[0];
      v167 = *(v165 + 72);
      v41 = 1;
      v168 = v209;
      do
      {
        v169 = v213;
        sub_1D6AAC480(v166, v213, type metadata accessor for FeedItem);
        *(&v220 + 1) = v168;
        *v221 = sub_1D67256F8();
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v219);
        sub_1D5C21AEC(v169, boxed_opaque_existential_1, type metadata accessor for FeedItem);
        v221[24] = 1;
        *&v218[0] = v11;
        v172 = *(v11 + 2);
        v171 = *(v11 + 3);
        if (v172 >= v171 >> 1)
        {
          sub_1D69998B8((v171 > 1), v172 + 1, 1);
          v168 = v209;
          v11 = *&v218[0];
        }

        *(v11 + 2) = v172 + 1;
        v173 = &v11[64 * v172];
        v174 = v219;
        v175 = v220;
        v176 = *v221;
        *(v173 + 73) = *&v221[9];
        *(v173 + 3) = v175;
        *(v173 + 4) = v176;
        *(v173 + 2) = v174;
        v166 += v167;
        --v164;
      }

      while (v164);

      v59 = v190;
    }

    else
    {

      v11 = MEMORY[0x1E69E7CC0];
    }

    v146 = OBJC_IVAR____TtC8NewsFeed41DebugPersonalizationInspectViewDataSource_sections;
    swift_beginAccess();
    v144 = *(v59 + v146);
    v102 = swift_isUniquelyReferenced_nonNull_native();
    *(v59 + v146) = v144;
    v105 = v185;
    v103 = v184;
    if ((v102 & 1) == 0)
    {
      goto LABEL_117;
    }

LABEL_112:
    if ((v189 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_119;
    }

    if (*(v144 + 16) > v189)
    {
      break;
    }

LABEL_119:
    __break(1u);
LABEL_120:
    v181 = v102;
    v104 = sub_1D7263BFC();
    v102 = v181;
  }

  v177 = v144 + (v189 << 6);
  v178 = *(v177 + 32);
  v179 = *(v177 + 48);
  v180 = *(v177 + 80);
  *v221 = *(v177 + 64);
  *&v221[16] = v180;
  v219 = v178;
  v220 = v179;
  *(v177 + 32) = 0x1000000000000016;
  *(v177 + 40) = 0x80000001D73E3FE0;
  *(v177 + 48) = 0xD00000000000002ELL;
  *(v177 + 56) = 0x80000001D73E4000;
  *(v177 + 64) = v11;
  *(v177 + 72) = 0;
  *(v177 + 80) = 0;
  *(v177 + 88) = 0;
  *(v59 + v146) = v144;
  swift_endAccess();
  sub_1D6AAC4E8(&v219);
  (v105)(v210);

LABEL_115:
  sub_1D6AAC59C(0, &qword_1EDF3B8E0, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1D725BB1C();
}

uint64_t sub_1D6AAB270(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t (*a4)(void), __n128 a5)
{
  if (qword_1EC87DC18 != -1)
  {
    swift_once();
  }

  v8 = qword_1EC9BAD28;
  v9 = sub_1D7262EBC();
  sub_1D5BFB840(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1D7273AE0;
  *&v14[0] = 0;
  *(&v14[0] + 1) = 0xE000000000000000;
  *&v13[0] = a1;
  sub_1D5B49474(0, &qword_1EDF3C5D0, MEMORY[0x1E69E7280]);
  sub_1D7263F9C();
  v11 = v14[0];
  *(v10 + 56) = MEMORY[0x1E69E6158];
  *(v10 + 64) = sub_1D5B7E2C0();
  *(v10 + 32) = v11;
  sub_1D725C30C("Failed to fetch headlines for scored feed items, error=%@", 57, 2, &dword_1D5B42000, v8, v9, v10);

  swift_beginAccess();
  sub_1D5EC25C8(a3, v13);
  swift_endAccess();
  v14[0] = v13[0];
  v14[1] = v13[1];
  v14[2] = v13[2];
  v14[3] = v13[3];
  sub_1D6AAC4E8(v14);
  return a4(MEMORY[0x1E69E7CC0]);
}

uint64_t sub_1D6AAB448(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for DebugGroupLayoutKey(0) + 24));
  v2 = v1[4];
  v3 = v1[5];
  __swift_project_boxed_opaque_existential_1(v1 + 1, v2);
  (*(v3 + 64))(v10, v2, v3);
  v4 = v11;
  if (v11)
  {
    v5 = v12;
    __swift_project_boxed_opaque_existential_1(v10, v11);
    v6 = (*(v5 + 32))(v4, v5);
    if (v6)
    {
      v7 = *(v6 + 16);

      __swift_destroy_boxed_opaque_existential_1(v10);
      if (v7 >> 62)
      {
        v8 = sub_1D7263BFC();
      }

      else
      {
        v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v8)
      {
        sub_1D6AAC59C(0, &qword_1EC88ECA8, &type metadata for DebugPersonalizationItem, MEMORY[0x1E69E6F90]);
        result = swift_allocObject();
        *(result + 16) = xmmword_1D7273AE0;
        *(result + 32) = 0u;
        *(result + 48) = 0u;
        *(result + 64) = 0u;
        *(result + 80) = 0;
        *(result + 88) = 2;
        return result;
      }
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(v10);
    }
  }

  else
  {
    sub_1D6330678(v10);
  }

  return MEMORY[0x1E69E7CC0];
}

void sub_1D6AAB5C4(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v119 = a2;
  v121 = 0;
  v128 = type metadata accessor for FeedRecipe.State(0);
  MEMORY[0x1EEE9AC00](v128, v3);
  v135 = &v116 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = type metadata accessor for FeedHeadline(0);
  MEMORY[0x1EEE9AC00](v138, v5);
  v7 = &v116 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = type metadata accessor for FeedHeadline.State(0);
  MEMORY[0x1EEE9AC00](v129, v8);
  v10 = &v116 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5D504A0(0);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  *&v137 = &v116 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for FeedItem(0);
  v139 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v116 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = (&v116 - v20);
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v116 - v24;
  v118 = type metadata accessor for FormatContent.Resolved(0);
  MEMORY[0x1EEE9AC00](v118, v26);
  v117 = &v116 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28, v29);
  v31 = &v116 - v30;
  v32 = (a1 + *(type metadata accessor for DebugGroupLayoutKey(0) + 24));
  v33 = v32[4];
  v34 = v32[5];
  v120 = v32;
  __swift_project_boxed_opaque_existential_1(v32 + 1, v33);
  (*(v34 + 64))(&v143, v33, v34);
  v35 = *(&v144 + 1);
  v136 = v14;
  v130 = v17;
  v141 = v21;
  if (!*(&v144 + 1))
  {
    sub_1D6330678(&v143);
LABEL_37:
    v140 = MEMORY[0x1E69E7CC0];
    goto LABEL_40;
  }

  v36 = *v145;
  __swift_project_boxed_opaque_existential_1(&v143, *(&v144 + 1));
  v37 = (*(v36 + 40))(v35, v36);
  if (!v37)
  {
    __swift_destroy_boxed_opaque_existential_1(&v143);
    goto LABEL_37;
  }

  sub_1D6AAC480(v37 + OBJC_IVAR____TtC8NewsFeed20FeedGroupDebugFormat_content, v31, type metadata accessor for FormatContent.Resolved);

  v38 = v121;
  v39 = sub_1D5CEB958(*&v31[*(v118 + 36)]);
  sub_1D6AAC53C(v31, type metadata accessor for FormatContent.Resolved);
  if (v39 >> 62)
  {
    v40 = sub_1D7263BFC();
  }

  else
  {
    v40 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v121 = v38;
  if (v40)
  {
    v41 = v39;
    v146 = MEMORY[0x1E69E7CC0];
    sub_1D69992E8(0, v40 & ~(v40 >> 63), 0);
    if (v40 < 0)
    {
      __break(1u);
      goto LABEL_72;
    }

    v42 = 0;
    v140 = v146;
    v43 = v41;
    v123 = v41 & 0xC000000000000001;
    v122 = xmmword_1D727C330;
    v127 = v10;
    v126 = v25;
    v125 = v41;
    v124 = v40;
    do
    {
      v134 = v42;
      if (v123)
      {
        v44 = MEMORY[0x1DA6FB460](v42, v43);
      }

      else
      {
        v44 = *(v43 + 8 * v42 + 32);
        swift_unknownObjectRetain();
      }

      v45 = sub_1D726045C();
      v46 = v137;
      (*(*(v45 - 8) + 56))(v137, 1, 1, v45);
      v47 = v129;
      v48 = *(v129 + 24);
      v49 = type metadata accessor for SharedItem(0);
      v50 = v127;
      (*(*(v49 - 8) + 56))(v127 + v48, 1, 1, v49);
      *v50 = 258;
      v133 = v47[7];
      *(v50 + v133) = 1;
      v51 = v47[8];
      *(v50 + v51) = 0;
      v131 = v47[9];
      *(v50 + v131) = 0;
      v52 = v47[10];
      *(v50 + v52) = 0;
      v53 = v138;
      *&v7[*(v138 + 48)] = v122;
      ObjectType = swift_getObjectType();
      v54 = [v44 identifier];
      v55 = sub_1D726207C();
      v57 = v56;

      *v7 = v55;
      *(v7 + 1) = v57;
      *(v7 + 5) = v44;
      *(v7 + 6) = 0;
      sub_1D6AAC480(v46, &v7[v53[11]], sub_1D5D504A0);
      sub_1D6AAC480(v50, &v7[v53[10]], type metadata accessor for FeedHeadline.State);
      *&v7[v53[14]] = 0;
      v7[56] = 0;
      v58 = [swift_unknownObjectRetain() title];
      v61 = 0;
      if (v58)
      {
        v59 = v58;
        v60 = [v58 ne_isNaturallyRTL];

        if (v60)
        {
          v61 = 1;
        }
      }

      *(v7 + 2) = v61;
      v7[24] = 0;
      sub_1D5BC7BD4(&v142);
      swift_unknownObjectRelease();
      v17 = v130;
      v21 = v141;
      v62 = v126;
      if (*(v50 + v51) - 1 <= 1 && (v142 & 0x1000) == 0)
      {
        v142 |= 0x1000uLL;
      }

      v63 = *(v50 + v52);
      v64 = 0x80000000;
      if (!*(v50 + v52))
      {
        v64 = 0x100000000;
      }

      if ((v142 & v64) != 0)
      {
        v64 = 0;
      }

      *(v7 + 4) = v142 | v64;
      if (*(v50 + v133))
      {
        v14 = v136;
        if (*(v50 + v131))
        {
          sub_1D6AAC53C(v50, type metadata accessor for FeedHeadline.State);
          sub_1D6AAC53C(v137, sub_1D5D504A0);
          v65 = 1;
        }

        else if (v63)
        {
          v71 = [v44 sourceChannel];
          sub_1D6AAC53C(v50, type metadata accessor for FeedHeadline.State);
          sub_1D6AAC53C(v137, sub_1D5D504A0);
          v65 = 2;
          if (v71)
          {
            v65 = v71;
          }
        }

        else
        {
          sub_1D6AAC53C(v50, type metadata accessor for FeedHeadline.State);
          sub_1D6AAC53C(v137, sub_1D5D504A0);
          v65 = 2;
        }
      }

      else
      {
        sub_1D6AAC53C(v50, type metadata accessor for FeedHeadline.State);
        sub_1D6AAC53C(v137, sub_1D5D504A0);
        v65 = 0;
        v14 = v136;
      }

      *&v7[*(v138 + 52)] = v65;
      sub_1D5C21AEC(v7, v62, type metadata accessor for FeedHeadline);
      swift_storeEnumTagMultiPayload();
      v66 = v140;
      v146 = v140;
      v68 = *(v140 + 16);
      v67 = *(v140 + 24);
      v69 = v134;
      if (v68 >= v67 >> 1)
      {
        v72 = v134;
        sub_1D69992E8((v67 > 1), v68 + 1, 1);
        v69 = v72;
        v66 = v146;
      }

      v42 = v69 + 1;
      *(v66 + 16) = v68 + 1;
      v70 = (*(v139 + 80) + 32) & ~*(v139 + 80);
      v140 = v66;
      sub_1D5C21AEC(v62, v66 + v70 + *(v139 + 72) * v68, type metadata accessor for FeedItem);
      v43 = v125;
    }

    while (v124 != v42);
  }

  else
  {

    v140 = MEMORY[0x1E69E7CC0];
  }

  __swift_destroy_boxed_opaque_existential_1(&v143);
LABEL_40:
  v73 = v120[4];
  v74 = v120[5];
  __swift_project_boxed_opaque_existential_1(v120 + 1, v73);
  (*(v74 + 64))(&v143, v73, v74);
  v75 = *(&v144 + 1);
  if (*(&v144 + 1))
  {
    v76 = *v145;
    __swift_project_boxed_opaque_existential_1(&v143, *(&v144 + 1));
    v77 = (*(v76 + 40))(v75, v76);
    if (v77)
    {
      v78 = v117;
      sub_1D6AAC480(v77 + OBJC_IVAR____TtC8NewsFeed20FeedGroupDebugFormat_content, v117, type metadata accessor for FormatContent.Resolved);

      v79 = sub_1D5CECAC0(*(v78 + *(v118 + 36)));
      sub_1D6AAC53C(v78, type metadata accessor for FormatContent.Resolved);
      if (v79 >> 62)
      {
        v80 = sub_1D7263BFC();
        if (v80)
        {
LABEL_44:
          v146 = MEMORY[0x1E69E7CC0];
          sub_1D69992E8(0, v80 & ~(v80 >> 63), 0);
          if ((v80 & 0x8000000000000000) == 0)
          {
            v81 = 0;
            v82 = v146;
            v138 = v79 & 0xC000000000000001;
            v137 = xmmword_1D727C320;
            v83 = v79;
            v84 = v80;
            do
            {
              if (v138)
              {
                v85 = MEMORY[0x1DA6FB460](v81, v79);
              }

              else
              {
                v85 = *(v79 + 8 * v81 + 32);
              }

              v86 = v85;
              v87 = v128;
              v88 = *(v128 + 20);
              v89 = type metadata accessor for SharedItem(0);
              v90 = v135;
              (*(*(v89 - 8) + 56))(&v135[v88], 1, 1, v89);
              *v90 = 0;
              v91 = *(v87 + 24);
              v90[v91] = 0;
              v21[2] = 0;
              *(v21 + 24) = 1;
              *(v21 + 2) = v137;
              v92 = [v86 identifier];
              v93 = sub_1D726207C();
              v95 = v94;

              *v141 = v93;
              v141[1] = v95;
              v21 = v141;
              v141[7] = v86;
              v96 = type metadata accessor for FeedRecipe(0);
              sub_1D6AAC480(v90, v21 + v96[9], type metadata accessor for FeedRecipe.State);
              v97 = v21 + v96[10];
              *(v97 + 4) = 0;
              *v97 = 0u;
              *(v97 + 1) = 0u;
              *(v21 + v96[11]) = 0;
              if (v90[v91] == 1)
              {
                v98 = [v86 sourceChannel];
              }

              else
              {
                v98 = 2;
              }

              v14 = v136;
              sub_1D6AAC53C(v135, type metadata accessor for FeedRecipe.State);
              v21[6] = v98;
              v99 = v21 + v96[12];
              *(v99 + 4) = 0;
              *v99 = 0u;
              *(v99 + 1) = 0u;
              v100 = v21 + v96[13];
              *(v100 + 4) = 0;
              *v100 = 0u;
              *(v100 + 1) = 0u;
              swift_storeEnumTagMultiPayload();
              v146 = v82;
              v102 = *(v82 + 16);
              v101 = *(v82 + 24);
              v79 = v83;
              if (v102 >= v101 >> 1)
              {
                sub_1D69992E8((v101 > 1), v102 + 1, 1);
                v82 = v146;
              }

              ++v81;
              *(v82 + 16) = v102 + 1;
              sub_1D5C21AEC(v21, v82 + ((*(v139 + 80) + 32) & ~*(v139 + 80)) + *(v139 + 72) * v102, type metadata accessor for FeedItem);
            }

            while (v84 != v81);

            v17 = v130;
            goto LABEL_62;
          }

LABEL_72:
          __break(1u);
          return;
        }
      }

      else
      {
        v80 = *((v79 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v80)
        {
          goto LABEL_44;
        }
      }

      v82 = MEMORY[0x1E69E7CC0];
LABEL_62:
      __swift_destroy_boxed_opaque_existential_1(&v143);
      goto LABEL_63;
    }

    __swift_destroy_boxed_opaque_existential_1(&v143);
  }

  else
  {
    sub_1D6330678(&v143);
  }

  v82 = MEMORY[0x1E69E7CC0];
LABEL_63:
  *&v143 = v140;
  sub_1D6986C7C(v82);
  v103 = v143;
  v104 = *(v143 + 16);
  if (v104)
  {
    v146 = MEMORY[0x1E69E7CC0];
    sub_1D69998B8(0, v104, 0);
    v105 = v146;
    v106 = v103 + ((*(v139 + 80) + 32) & ~*(v139 + 80));
    v107 = *(v139 + 72);
    do
    {
      sub_1D6AAC480(v106, v17, type metadata accessor for FeedItem);
      *(&v144 + 1) = v14;
      *v145 = sub_1D67256F8();
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v143);
      sub_1D5C21AEC(v17, boxed_opaque_existential_1, type metadata accessor for FeedItem);
      v145[24] = 1;
      v146 = v105;
      v110 = *(v105 + 16);
      v109 = *(v105 + 24);
      if (v110 >= v109 >> 1)
      {
        sub_1D69998B8((v109 > 1), v110 + 1, 1);
        v105 = v146;
      }

      *(v105 + 16) = v110 + 1;
      v111 = (v105 + (v110 << 6));
      v112 = v143;
      v113 = v144;
      v114 = *v145;
      *(v111 + 73) = *&v145[9];
      v111[3] = v113;
      v111[4] = v114;
      v111[2] = v112;
      v106 += v107;
      --v104;
    }

    while (v104);
  }

  else
  {

    v105 = MEMORY[0x1E69E7CC0];
  }

  v115 = v119;
  *v119 = xmmword_1D731B3B0;
  *(v115 + 2) = 0xD000000000000024;
  *(v115 + 3) = 0x80000001D73E3FB0;
  *(v115 + 4) = v105;
  *(v115 + 40) = 1;
  *(v115 + 6) = 0;
  *(v115 + 7) = 0;
}

uint64_t sub_1D6AAC480(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D6AAC53C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D6AAC59C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1D6AAC604(uint64_t a1)
{
  v2 = sub_1D725891C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  if (v7)
  {
    v14 = MEMORY[0x1E69E7CC0];
    sub_1D7263ECC();
    v9 = (a1 + 40);
    do
    {
      v10 = *(v9 - 1);
      v11 = *v9;

      sub_1D725B99C();
      static Random.issue(with:isCurrent:publicationDate:)(v10, v11, 0, v6);

      (*(v3 + 8))(v6, v2);
      sub_1D7263E9C();
      sub_1D7263EDC();
      sub_1D7263EEC();
      sub_1D7263EAC();
      v9 += 2;
      --v7;
    }

    while (v7);
    v8 = v14;
  }

  v14 = v8;
  sub_1D6AAC928(0, &unk_1EDF17950, sub_1D5B90088, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1D725BB1C();
}

uint64_t sub_1D6AAC7C0(uint64_t a1)
{
  v2 = sub_1D725891C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v7)
  {
    v13 = MEMORY[0x1E69E7CC0];
    sub_1D7263ECC();
    v9 = (a1 + 40);
    do
    {
      v10 = *(v9 - 1);
      v11 = *v9;

      sub_1D725B99C();
      static Random.issue(with:isCurrent:publicationDate:)(v10, v11, 0, v6);

      (*(v3 + 8))(v6, v2);
      sub_1D7263E9C();
      sub_1D7263EDC();
      sub_1D7263EEC();
      sub_1D7263EAC();
      v9 += 2;
      --v7;
    }

    while (v7);
    return v13;
  }

  return result;
}

void sub_1D6AAC928(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t FormatAnimationNodeBasicAnimation.keyPath.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  v7 = *(v1 + 56);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  v8 = *(v1 + 64);
  *(a1 + 48) = v8;
  return sub_1D62B753C(v2, v3, v4, v5, v6, v7, v8);
}

uint64_t FormatAnimationNodeBasicAnimation.cumulative.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 72);
  v3 = *(v1 + 80);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 88);
  *(a1 + 16) = v4;
  return sub_1D6189668(v2, v3, v4);
}

uint64_t FormatAnimationNodeBasicAnimation.additive.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 96);
  v3 = *(v1 + 104);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 112);
  *(a1 + 16) = v4;
  return sub_1D6189668(v2, v3, v4);
}

uint64_t FormatAnimationNodeBasicAnimation.mediaTiming.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 200);
  v3 = *(v1 + 232);
  v12[6] = *(v1 + 216);
  v13[0] = v3;
  *(v13 + 9) = *(v1 + 241);
  v4 = *(v1 + 136);
  v5 = *(v1 + 168);
  v12[2] = *(v1 + 152);
  v12[3] = v5;
  v12[4] = *(v1 + 184);
  v12[5] = v2;
  v12[0] = *(v1 + 120);
  v12[1] = v4;
  v6 = *(v1 + 200);
  v7 = *(v1 + 232);
  a1[6] = *(v1 + 216);
  a1[7] = v7;
  *(a1 + 121) = *(v1 + 241);
  v8 = *(v1 + 136);
  v9 = *(v1 + 168);
  a1[2] = *(v1 + 152);
  a1[3] = v9;
  a1[4] = *(v1 + 184);
  a1[5] = v6;
  *a1 = *(v1 + 120);
  a1[1] = v8;
  return sub_1D6047E28(v12, &v11);
}

__n128 FormatAnimationNodeBasicAnimation.__allocating_init(keyPath:cumulative:additive:mediaTiming:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v9 = *(a1 + 16);
  *(v8 + 16) = *a1;
  *(v8 + 32) = v9;
  *(v8 + 48) = *(a1 + 32);
  *(v8 + 72) = *a2;
  *(v8 + 96) = *a3;
  v10 = *(a4 + 16);
  *(v8 + 120) = *a4;
  v11 = *(a4 + 64);
  *(v8 + 200) = *(a4 + 80);
  v12 = *(a4 + 112);
  *(v8 + 216) = *(a4 + 96);
  *(v8 + 232) = v12;
  *(v8 + 241) = *(a4 + 121);
  *(v8 + 136) = v10;
  result = *(a4 + 32);
  v14 = *(a4 + 48);
  *(v8 + 152) = result;
  *(v8 + 168) = v14;
  v15 = *(a2 + 16);
  v16 = *(a3 + 16);
  *(v8 + 64) = *(a1 + 48);
  *(v8 + 88) = v15;
  *(v8 + 112) = v16;
  *(v8 + 184) = v11;
  return result;
}

uint64_t FormatAnimationNodeBasicAnimation.init(keyPath:cumulative:additive:mediaTiming:)(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v5 = *(a1 + 48);
  v6 = *(a2 + 16);
  v7 = *(a3 + 16);
  v8 = *(a1 + 16);
  *(v4 + 16) = *a1;
  *(v4 + 32) = v8;
  *(v4 + 48) = *(a1 + 32);
  *(v4 + 64) = v5;
  *(v4 + 72) = *a2;
  *(v4 + 88) = v6;
  *(v4 + 96) = *a3;
  *(v4 + 112) = v7;
  v9 = a4[1];
  *(v4 + 120) = *a4;
  v10 = a4[5];
  *(v4 + 184) = a4[4];
  v11 = a4[2];
  *(v4 + 168) = a4[3];
  *(v4 + 152) = v11;
  *(v4 + 136) = v9;
  v12 = a4[6];
  v13 = a4[7];
  *(v4 + 241) = *(a4 + 121);
  *(v4 + 232) = v13;
  *(v4 + 216) = v12;
  *(v4 + 200) = v10;
  return v4;
}

uint64_t sub_1D6AACBAC(uint64_t a1)
{
  v3 = v1;
  v5 = *(v1 + 64);
  v6 = *(v1 + 32);
  v114 = *(v1 + 16);
  v115 = v6;
  v116 = *(v1 + 48);
  LOBYTE(v117) = v5;
  sub_1D67EA1C8();
  v7 = sub_1D726203C();

  v8 = [objc_opt_self() animationWithKeyPath_];

  v9 = *(v1 + 24);
  v10 = *(v1 + 32);
  v11 = *(v1 + 40);
  v12 = *(v1 + 48);
  v13 = *(v1 + 56);
  v14 = *(v1 + 64);
  *&v114 = *(v1 + 16);
  *(&v114 + 1) = v9;
  *&v115 = v10;
  *(&v115 + 1) = v11;
  *&v116 = v12;
  *(&v116 + 1) = v13;
  LOBYTE(v117) = v14;
  sub_1D62B753C(v114, v9, v10, v11, v12, v13, v14);
  sub_1D67EA354(&v105);
  if (v2)
  {
    sub_1D62B4A44(v114, *(&v114 + 1), v115, *(&v115 + 1), v116, *(&v116 + 1), v117);
  }

  else
  {
    sub_1D62B4A44(v114, *(&v114 + 1), v115, *(&v115 + 1), v116, *(&v116 + 1), v117);
    v15 = *(&v106 + 1);
    if (*(&v106 + 1))
    {
      v16 = __swift_project_boxed_opaque_existential_1(&v105, *(&v106 + 1));
      v95 = &v89;
      v17 = a1;
      v18 = v8;
      v19 = *(v15 - 8);
      v20 = MEMORY[0x1EEE9AC00](v16, v16);
      v22 = &v89 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v19 + 16))(v22, v20);
      v23 = sub_1D72646AC();
      (*(v19 + 8))(v22, v15);
      v8 = v18;
      a1 = v17;
      __swift_destroy_boxed_opaque_existential_1(&v105);
    }

    else
    {
      v23 = 0;
    }

    [v8 setFromValue_];
    swift_unknownObjectRelease();
    v24 = *(v3 + 24);
    v25 = *(v3 + 32);
    v26 = *(v3 + 40);
    v27 = *(v3 + 48);
    v28 = *(v3 + 56);
    v29 = *(v3 + 64);
    *&v114 = *(v3 + 16);
    *(&v114 + 1) = v24;
    *&v115 = v25;
    *(&v115 + 1) = v26;
    *&v116 = v27;
    *(&v116 + 1) = v28;
    LOBYTE(v117) = v29;
    sub_1D62B753C(v114, v24, v25, v26, v27, v28, v29);
    sub_1D67EA620(&v105);
    sub_1D62B4A44(v114, *(&v114 + 1), v115, *(&v115 + 1), v116, *(&v116 + 1), v117);
    v30 = *(&v106 + 1);
    if (*(&v106 + 1))
    {
      v31 = __swift_project_boxed_opaque_existential_1(&v105, *(&v106 + 1));
      v95 = v8;
      v32 = *(v30 - 8);
      v33 = MEMORY[0x1EEE9AC00](v31, v31);
      v35 = &v89 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v32 + 16))(v35, v33);
      v36 = sub_1D72646AC();
      (*(v32 + 8))(v35, v30);
      v8 = v95;
      __swift_destroy_boxed_opaque_existential_1(&v105);
    }

    else
    {
      v36 = 0;
    }

    [v8 setToValue_];
    swift_unknownObjectRelease();
    v37 = *(v3 + 24);
    v38 = *(v3 + 32);
    v39 = *(v3 + 40);
    v40 = *(v3 + 48);
    v41 = *(v3 + 56);
    v42 = *(v3 + 64);
    *&v114 = *(v3 + 16);
    *(&v114 + 1) = v37;
    *&v115 = v38;
    *(&v115 + 1) = v39;
    *&v116 = v40;
    *(&v116 + 1) = v41;
    LOBYTE(v117) = v42;
    sub_1D62B753C(v114, v37, v38, v39, v40, v41, v42);
    sub_1D67EA8F0(&v105);
    sub_1D62B4A44(v114, *(&v114 + 1), v115, *(&v115 + 1), v116, *(&v116 + 1), v117);
    v44 = *(&v106 + 1);
    if (*(&v106 + 1))
    {
      v45 = __swift_project_boxed_opaque_existential_1(&v105, *(&v106 + 1));
      v95 = v8;
      v46 = *(v44 - 8);
      v47 = MEMORY[0x1EEE9AC00](v45, v45);
      v49 = &v89 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v46 + 16))(v49, v47);
      v50 = sub_1D72646AC();
      (*(v46 + 8))(v49, v44);
      v8 = v95;
      __swift_destroy_boxed_opaque_existential_1(&v105);
    }

    else
    {
      v50 = 0;
    }

    [v8 setByValue_];
    swift_unknownObjectRelease();
    v51 = *(v3 + 88);
    if (v51 != 255)
    {
      v114 = *(v3 + 72);
      LOBYTE(v115) = v51 & 1;
      v52 = v8;
      sub_1D725A7EC();
      v53 = FormatBoolean.value(contextLayoutOptions:)(v105);

      [v52 setCumulative_];
    }

    v54 = *(v3 + 112);
    if (v54 != 255)
    {
      v114 = *(v3 + 96);
      LOBYTE(v115) = v54 & 1;
      v55 = v8;
      sub_1D725A7EC();
      v56 = FormatBoolean.value(contextLayoutOptions:)(v105);

      [v55 setAdditive_];
    }

    v57 = *(v3 + 64);
    v58 = *(v3 + 32);
    v112[2] = *(v3 + 16);
    v112[3] = v58;
    v112[4] = *(v3 + 48);
    v113 = v57;
    v95 = sub_1D67EA1C8();
    v60 = v59;
    v61 = *(v3 + 216);
    v119 = *(v3 + 200);
    v120 = v61;
    v121[0] = *(v3 + 232);
    *(v121 + 9) = *(v3 + 241);
    v62 = *(v3 + 136);
    v63 = *(v3 + 168);
    v116 = *(v3 + 152);
    v117 = v63;
    v118 = *(v3 + 184);
    v114 = *(v3 + 120);
    v115 = v62;
    v64 = *(v3 + 24);
    v65 = *(v3 + 32);
    v66 = *(v3 + 40);
    v67 = *(v3 + 48);
    v68 = *(v3 + 56);
    v69 = *(v3 + 64);
    *&v105 = *(v3 + 16);
    *(&v105 + 1) = v64;
    *&v106 = v65;
    *(&v106 + 1) = v66;
    *&v107 = v67;
    *(&v107 + 1) = v68;
    LOBYTE(v108) = v69;
    sub_1D62B753C(v105, v64, v65, v66, v67, v68, v69);
    sub_1D67EABC0();
    v92 = v60;
    v93 = v70;
    v71 = v95;
    v94 = v72;
    sub_1D62B4A44(v105, *(&v105 + 1), v106, *(&v106 + 1), v107, *(&v107 + 1), v108);
    v73 = *(v3 + 24);
    v74 = *(v3 + 32);
    v75 = *(v3 + 40);
    v76 = *(v3 + 48);
    v77 = *(v3 + 56);
    v78 = *(v3 + 64);
    *&v105 = *(v3 + 16);
    *(&v105 + 1) = v73;
    *&v106 = v74;
    *(&v106 + 1) = v75;
    *&v107 = v76;
    *(&v107 + 1) = v77;
    LOBYTE(v108) = v78;
    sub_1D62B753C(v105, v73, v74, v75, v76, v77, v78);
    sub_1D67EB394();
    v90 = v80;
    v91 = v79;
    sub_1D62B4A44(v105, *(&v105 + 1), v106, *(&v106 + 1), v107, *(&v107 + 1), v108);
    v89 = type metadata accessor for FormatAnimation();
    v3 = swift_allocObject();
    v110 = v119;
    v111 = v120;
    v112[0] = v121[0];
    *(v112 + 9) = *(v121 + 9);
    v107 = v116;
    v108 = v117;
    v109 = v118;
    v105 = v114;
    v106 = v115;
    sub_1D68137D4(a1, &v105);
    *(v3 + 16) = v8;
    *(v3 + 24) = v71;
    v81 = v93;
    *(v3 + 32) = v92;
    v82 = v94;
    *(v3 + 56) = v81;
    *(v3 + 64) = v82;
    v83 = v90;
    *(v3 + 72) = v91;
    *(v3 + 80) = v83;
    v103 = v120;
    v104[0] = v121[0];
    *(v104 + 9) = *(v121 + 9);
    v99 = v116;
    v100 = v117;
    v101 = v118;
    v102 = v119;
    v97 = v114;
    v98 = v115;
    if (sub_1D60486AC(&v97) == 1 || (v84 = v98) == 0)
    {
      *(v3 + 40) = 0;
      *(v3 + 48) = 1;
    }

    else
    {
      v96 = a1;
      v85 = off_1F51AF338[0];
      v95 = v8;
      sub_1D5DEA510(v93, v94);
      v86 = v91;
      sub_1D5DEA510(v91, v83);
      type metadata accessor for FormatNodeContext(0);

      v87 = v85();
      v88 = sub_1D5E02AFC(v87, v84);

      sub_1D5B74328(v86, v83);
      sub_1D5B74328(v93, v94);

      *(v3 + 40) = v88;
      *(v3 + 48) = 0;
    }
  }

  return v3;
}

uint64_t FormatAnimationNodeBasicAnimation.deinit()
{
  sub_1D62B4A44(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));
  sub_1D60107F0(*(v0 + 72), *(v0 + 80), *(v0 + 88));
  sub_1D60107F0(*(v0 + 96), *(v0 + 104), *(v0 + 112));
  v1 = *(v0 + 200);
  v2 = *(v0 + 232);
  v6[6] = *(v0 + 216);
  v7[0] = v2;
  *(v7 + 9) = *(v0 + 241);
  v3 = *(v0 + 136);
  v4 = *(v0 + 168);
  v6[2] = *(v0 + 152);
  v6[3] = v4;
  v6[4] = *(v0 + 184);
  v6[5] = v1;
  v6[0] = *(v0 + 120);
  v6[1] = v3;
  sub_1D6048FE4(v6, sub_1D6047E8C);
  return v0;
}

uint64_t FormatAnimationNodeBasicAnimation.__deallocating_deinit()
{
  sub_1D62B4A44(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));
  sub_1D60107F0(*(v0 + 72), *(v0 + 80), *(v0 + 88));
  sub_1D60107F0(*(v0 + 96), *(v0 + 104), *(v0 + 112));
  v1 = *(v0 + 200);
  v2 = *(v0 + 232);
  v6[6] = *(v0 + 216);
  v7[0] = v2;
  *(v7 + 9) = *(v0 + 241);
  v3 = *(v0 + 136);
  v4 = *(v0 + 168);
  v6[2] = *(v0 + 152);
  v6[3] = v4;
  v6[4] = *(v0 + 184);
  v6[5] = v1;
  v6[0] = *(v0 + 120);
  v6[1] = v3;
  sub_1D6048FE4(v6, sub_1D6047E8C);
  return swift_deallocClassInstance();
}

uint64_t sub_1D6AAD664(uint64_t a1)
{
  result = sub_1D6AAD758(&qword_1EC891230, &protocol conformance descriptor for FormatAnimationNodeBasicAnimation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D6AAD6CC(void *a1)
{
  a1[1] = sub_1D6AAD758(&qword_1EC886650, &protocol conformance descriptor for FormatAnimationNodeBasicAnimation);
  a1[2] = sub_1D6AAD758(&qword_1EC889F00, &protocol conformance descriptor for FormatAnimationNodeBasicAnimation);
  result = sub_1D6AAD758(&qword_1EC891238, &protocol conformance descriptor for FormatAnimationNodeBasicAnimation);
  a1[3] = result;
  return result;
}

uint64_t sub_1D6AAD758(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FormatAnimationNodeBasicAnimation();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D6AAD798@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D66717F4(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void *sub_1D6AAD820(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 112);
  v65[6] = *(a1 + 96);
  v65[7] = v3;
  v65[8] = *(a1 + 128);
  v66 = *(a1 + 144);
  v4 = *(a1 + 48);
  v65[2] = *(a1 + 32);
  v65[3] = v4;
  v5 = *(a1 + 80);
  v65[4] = *(a1 + 64);
  v65[5] = v5;
  v6 = *(a1 + 16);
  v65[0] = *a1;
  v65[1] = v6;
  v7 = MEMORY[0x1E69E6F90];
  sub_1D5B562D8(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_1D7273AE0;
  sub_1D5B562D8(0, &qword_1EC896750, type metadata accessor for FormatInspectionItem, v7);
  v42 = type metadata accessor for FormatInspectionItem(0);
  v8 = *(v42 - 8);
  v39 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_1D7273AE0;
  sub_1D5B562D8(0, &qword_1EC8803C0, sub_1D5E4F38C, v7);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1D7270C10;
  sub_1D5B562D8(0, &qword_1EC880490, sub_1D5EA74B8, v7);
  sub_1D5EA74B8(0);
  v11 = *(*(v10 - 8) + 72);
  v12 = (*(*(v10 - 8) + 80) + 32) & ~*(*(v10 - 8) + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1D7270C10;
  v14 = (v13 + v12);
  if (a2)
  {
    v15 = *(a2 + 72);
    v16 = *(a2 + 80);
    v17 = *(a2 + 88);
    sub_1D6189668(v15, v16, v17);
  }

  else
  {
    v15 = 0;
    v16 = 0;
    v17 = -1;
  }

  sub_1D71237B4(0x6974616C756D7543, 0xEA00000000006576, v15, v16, v17, v14);
  v18 = *(v8 + 56);
  v18(v14, 0, 1, v42);
  if (a2)
  {
    v20 = *(a2 + 96);
    v19 = *(a2 + 104);
    v21 = *(a2 + 112);
    sub_1D6189668(v20, v19, v21);
  }

  else
  {
    v20 = 0;
    v19 = 0;
    v21 = -1;
  }

  sub_1D71237B4(0x6576697469646441, 0xE800000000000000, v20, v19, v21, &v14[v11]);
  v18(&v14[v11], 0, 1, v42);
  sub_1D6795150(0x6E41206369736142, 0xEF6E6F6974616D69, 0, 0, v13, v63);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *(v9 + 56) = &type metadata for FormatInspectionGroup;
  *(v9 + 64) = &off_1F518B2C0;
  v22 = swift_allocObject();
  *(v9 + 32) = v22;
  v23 = v63[1];
  *(v22 + 16) = v63[0];
  *(v22 + 32) = v23;
  *(v22 + 48) = v64;
  if (a2)
  {
    v24 = *(a2 + 200);
    v25 = *(a2 + 232);
    v53 = *(a2 + 216);
    v54[0] = v25;
    *(v54 + 9) = *(a2 + 241);
    v26 = *(a2 + 136);
    v27 = *(a2 + 168);
    v49 = *(a2 + 152);
    v50 = v27;
    v51 = *(a2 + 184);
    v52 = v24;
    v47 = *(a2 + 120);
    v48 = v26;
    sub_1D6047E28(&v47, &v43);
    v61 = v53;
    v62[0] = v54[0];
    *(v62 + 9) = *(v54 + 9);
    v57 = v49;
    v58 = v50;
    v59 = v51;
    v60 = v52;
    v55 = v47;
    v56 = v48;
  }

  else
  {
    sub_1D6048FB0(&v55);
  }

  v28 = sub_1D6814648(v65, &v55);
  v53 = v61;
  v54[0] = v62[0];
  *(v54 + 9) = *(v62 + 9);
  v49 = v57;
  v50 = v58;
  v51 = v59;
  v52 = v60;
  v47 = v55;
  v48 = v56;
  sub_1D6048FE4(&v47, sub_1D6047E8C);
  *(v9 + 96) = &type metadata for FormatInspection;
  *(v9 + 104) = &off_1F51E3FD0;
  *(v9 + 72) = v28;
  v29 = sub_1D5F62BFC(v9);
  swift_setDeallocating();
  sub_1D5E4F38C();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v30 = sub_1D7073500(v29);

  sub_1D711AD20(1701869908, 0xE400000000000000, v30, 0x6369736142, 0xE500000000000000, (v40 + v39));
  if (a2)
  {
    v31 = *(a2 + 64);
    v32 = *(a2 + 32);
    v43 = *(a2 + 16);
    v44 = v32;
    v45 = *(a2 + 48);
    v46 = v31;
    v33 = sub_1D67EC070();
  }

  else
  {
    v33 = MEMORY[0x1E69E7CC0];
  }

  *&v43 = v40;
  sub_1D698529C(v33);
  v34 = sub_1D5F62998(v43);

  sub_1D6795150(0x6F6974616D696E41, 0xE90000000000006ELL, 0, 0, v34, &v43);

  *(v41 + 56) = &type metadata for FormatInspectionGroup;
  *(v41 + 64) = &off_1F518B2C0;
  v35 = swift_allocObject();
  *(v41 + 32) = v35;
  v36 = v44;
  *(v35 + 16) = v43;
  *(v35 + 32) = v36;
  *(v35 + 48) = v45;
  v37 = sub_1D7073500(v41);
  swift_setDeallocating();
  sub_1D6048FE4(v41 + 32, sub_1D5E4F358);
  swift_deallocClassInstance();
  return v37;
}

id sub_1D6AADE84@<X0>(void *a1@<X8>)
{
  v2 = objc_opt_self();
  v19 = [v2 secondaryLabelColor];
  v3 = objc_opt_self();
  v4 = *MEMORY[0x1E69DB970];
  v18 = [v3 monospacedSystemFontOfSize:14.0 weight:*MEMORY[0x1E69DB970]];
  sub_1D5C0B9F0();
  v5._countAndFlagsBits = 0x38373139454323;
  v5._object = 0xE700000000000000;
  isa = UIColor.init(hex:)(v5).super.isa;
  v16 = [v3 monospacedSystemFontOfSize:14.0 weight:v4];
  v6 = [v2 systemPinkColor];
  v7 = [v3 monospacedSystemFontOfSize:14.0 weight:v4];
  v8._countAndFlagsBits = 0x39364642304423;
  v8._object = 0xE700000000000000;
  v9 = UIColor.init(hex:)(v8).super.isa;
  v10 = [v3 monospacedSystemFontOfSize:14.0 weight:v4];
  v11._countAndFlagsBits = 0x36444339363523;
  v11._object = 0xE700000000000000;
  v12 = UIColor.init(hex:)(v11).super.isa;
  v13 = [v3 monospacedSystemFontOfSize:14.0 weight:v4];
  v14 = [v2 systemGray2Color];
  result = [v3 monospacedSystemFontOfSize:14.0 weight:v4];
  *a1 = 1634889539;
  a1[1] = 0xE400000000000000;
  a1[2] = v19;
  a1[3] = v18;
  a1[4] = isa;
  a1[5] = v16;
  a1[6] = v6;
  a1[7] = v7;
  a1[8] = v9;
  a1[9] = v10;
  a1[10] = v12;
  a1[11] = v13;
  a1[12] = v14;
  a1[13] = result;
  return result;
}

uint64_t sub_1D6AAE09C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
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

uint64_t sub_1D6AAE0E4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1D6AAE160(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v153 = a2;
  v154 = a3;
  *&v158 = a1;
  v184 = a4;
  v4 = type metadata accessor for FormatDecorationContext(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v144 = &v136 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1E69E6720];
  sub_1D5B5633C(0, &qword_1EDF3B668, MEMORY[0x1E69D78C0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v148 = &v136 - v10;
  sub_1D5B5633C(0, &qword_1EDF3B4A8, MEMORY[0x1E69D8488], v7);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v145 = &v136 - v13;
  v14 = sub_1D725ED4C();
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  *&v156 = &v136 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = sub_1D725ED1C();
  v155 = *(v149 - 8);
  MEMORY[0x1EEE9AC00](v149, v17);
  v19 = &v136 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v136 - v22;
  v24 = sub_1D725E94C();
  v147 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v136 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28, v29);
  v31 = &v136 - v30;
  v32 = sub_1D725DD3C();
  v146 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32, v33);
  v35 = &v136 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36, v37);
  v39 = &v136 - v38;
  v40 = sub_1D725F15C();
  v151 = *(v40 - 8);
  v152 = v40;
  MEMORY[0x1EEE9AC00](v40, v41);
  v150 = &v136 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_1D725F3DC();
  MEMORY[0x1EEE9AC00](v43, v44);
  v49 = &v136 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = *v157;
  v51 = *v157 >> 60;
  if (v51 <= 3)
  {
    v137 = v39;
    v138 = v35;
    v139 = v27;
    v140 = v31;
    v143 = v45;
    v144 = v32;
    v148 = v19;
    *&v157 = v23;
    v53 = v155;
    v54 = v156;
    v141 = v49;
    v142 = v47;
    if (v51 > 1)
    {
      if (v51 == 2)
      {
        v57 = (v50 & 0xFFFFFFFFFFFFFFFLL);
        v58 = v57[6];
        *&v176[64] = v57[5];
        *&v176[80] = v58;
        v59 = v57[8];
        *&v176[96] = v57[7];
        *&v176[112] = v59;
        v60 = v57[2];
        *v176 = v57[1];
        *&v176[16] = v60;
        v61 = v57[4];
        *&v176[32] = v57[3];
        *&v176[48] = v61;
        v62 = *&v176[112];
        MEMORY[0x1EEE9AC00](v45, v46);
        *(&v136 - 2) = v158;
        sub_1D60865E4(v176, &v169);
        v63 = v159;
        v64 = sub_1D5EC9E90(sub_1D6AB2678, (&v136 - 4), v62);
        if (v63)
        {
          sub_1D6086640(v176);
        }

        else
        {
          v98 = v64;
          v99 = *v176;
          v100 = *&v176[8];
          v101 = v176[48];
          v102 = *&v176[56];
          v103 = *&v176[64];
          v104 = v176[104];
          v105 = *&v176[120];

          v158 = *&v176[88];
          v159 = *&v176[72];
          v156 = *&v176[32];
          v157 = *&v176[16];
          sub_1D6086640(v176);
          LOBYTE(v160[0]) = v101;
          LOBYTE(v175) = v104;
          *&v169 = v99;
          *(&v169 + 1) = v100;
          v170 = v157;
          v171 = v156;
          LOBYTE(v172) = v101;
          *(&v172 + 1) = v102;
          *&v173[0] = v103;
          *(&v173[1] + 8) = v158;
          *(v173 + 8) = v159;
          BYTE8(v173[2]) = v104;
          *&v174[0] = v98;
          *(&v174[0] + 1) = v105;
          v165 = v173[0];
          v166 = v173[1];
          v167 = v173[2];
          v168[0] = v174[0];
          v161 = v169;
          v162 = v157;
          v163 = v156;
          v164 = v172;
          *&v159 = &v136;
          v106 = v140;
          sub_1D6A50794(v140);
          sub_1D6086640(&v169);
          sub_1D725F3FC();
          *&v158 = swift_allocBox();
          v107 = v147;
          (*(v147 + 16))(v139, v106, v24);
          (*(v142 + 16))(v141, v153, v143);
          (*(v151 + 16))(v150, v154, v152);
          sub_1D725F3EC();
          (*(v107 + 8))(v106, v24);
          *v184 = v158 | 0x4000000000000000;
        }
      }

      else
      {
        v84 = v50 & 0xFFFFFFFFFFFFFFFLL;
        v86 = *(v84 + 24);
        v85 = *(v84 + 32);
        v87 = *(v84 + 40);
        v88 = *(v84 + 48);
        v89 = *(v84 + 56);
        v176[0] = *(v84 + 16);
        *&v176[8] = v86;
        v147 = v85;
        *&v176[16] = v85;
        *&v176[24] = v87;
        *&v176[32] = v88;
        v176[40] = v89;

        v90 = v157;
        v91 = v159;
        sub_1D6A9B104(v158, v157);
        *&v159 = v91;
        if (v91)
        {
          goto LABEL_20;
        }

        LODWORD(v139) = v89;
        v140 = v88;
        v144 = v87;
        (*(v53 + 16))(v148, v90, v149);
        v115 = v147;
        v146 = v86;
        if (v147 == 4)
        {
          v116 = 0;
          v117 = 0;
          v115 = 2;
          v118 = 1;
        }

        else
        {
          v116 = v144;
          v117 = v140;
          v118 = v139;
        }

        LOBYTE(v169) = v118 & 1;
        sub_1D725ED6C();
        v122 = swift_allocBox();
        *&v156 = v123;
        v176[0] = v115;
        *&v176[8] = v116;
        *&v176[16] = v117;
        v176[24] = v169;
        sub_1D6C5888C(v54);
        v124 = sub_1D725EF9C();
        (*(*(v124 - 8) + 56))(v145, 1, 1, v124);
        (*(v142 + 16))(v141, v153, v143);
        (*(v151 + 16))(v150, v154, v152);
        sub_1D725ED2C();

        (*(v53 + 8))(v157, v149);
        *v184 = v122 | 0x6000000000000000;
      }
    }

    else
    {
      if (v51)
      {
        v78 = (v50 & 0xFFFFFFFFFFFFFFFLL);
        v79 = v78[2];
        *v176 = v78[1];
        *&v176[16] = v79;
        v80 = v78[4];
        *&v176[32] = v78[3];
        *&v176[48] = v80;
        v81 = *v176;
        MEMORY[0x1EEE9AC00](v45, v46);
        *(&v136 - 2) = v158;
        sub_1D6086694(v176, &v169);
        v82 = v159;
        v83 = sub_1D5EC9E90(sub_1D6AB26CC, (&v136 - 4), v81);
        if (v82)
        {
          sub_1D60866F0(v176);
          return;
        }

        v108 = v83;
        v109 = *&v176[8];
        v110 = *&v176[48];
        v111 = *&v176[56];
        if (*&v176[48])
        {

          sub_1D6FD5540(v110, v111, &v169);
          v112 = v144;
          v113 = v146;
          v114 = v138;
          sub_1D60866F0(v176);
          v111 = *(&v169 + 1);
          v128 = v169;
        }

        else
        {

          sub_1D60866F0(v176);
          v128 = 0;
          v112 = v144;
          v113 = v146;
          v114 = v138;
        }

        v177[0] = v108;
        v177[1] = v109;
        v178 = *&v176[16];
        v179 = *&v176[32];
        v180 = v128;
        v181 = v111;
        v129 = v137;
        sub_1D6AAF1C4(v158, v137);
        sub_1D60866F0(v177);
        sub_1D725EE2C();
        *&v159 = swift_allocBox();
        (*(v113 + 16))(v114, v129, v112);
        (*(v142 + 16))(v141, v153, v143);
        (*(v151 + 16))(v150, v154, v152);
        sub_1D725EE1C();
        (*(v113 + 8))(v129, v112);
        v92 = v159 | 0x2000000000000000;
        goto LABEL_43;
      }

      v55 = *(v50 + 16);

      v56 = v159;
      sub_1D5FA8D3C(v158, v55, v176);
      if (v56)
      {
        goto LABEL_20;
      }

      v95 = *v176;
      sub_1D725EB9C();
      v96 = swift_allocBox();
      *v176 = v95;
      FormatColor.color.getter(v97);
      (*(v142 + 16))(v141, v153, v143);
      (*(v151 + 16))(v150, v154, v152);
      sub_1D725EB8C();

      *v184 = v96;
    }
  }

  else
  {
    if (v51 > 5)
    {
      v52 = v158;
      if (v51 == 6)
      {
        v75 = v50 & 0xFFFFFFFFFFFFFFFLL;
        v76 = *(v75 + 16);
        v77 = *(v75 + 24);

        sub_1D5FA0884(v76, v77, v176);
        sub_1D6AAE160(v52, v153, v154, v184);

        return;
      }

      if (v51 == 7)
      {
        *v176 = *((v50 & 0xFFFFFFFFFFFFFFFLL) + 0x20);

        sub_1D6AAE160(v52, v153, v154, v184);
LABEL_20:

        return;
      }

      v92 = 0xF000000000000007;
      goto LABEL_43;
    }

    v65 = v47;
    v66 = v45;
    v67 = v159;
    v68 = v158;
    if (v51 == 4)
    {
      v69 = v50 & 0xFFFFFFFFFFFFFFFLL;
      v70 = *(v69 + 128);
      *&v176[96] = *(v69 + 112);
      *&v176[112] = v70;
      *&v176[128] = *(v69 + 144);
      v176[144] = *(v69 + 160);
      v71 = *(v69 + 64);
      *&v176[32] = *(v69 + 48);
      *&v176[48] = v71;
      v72 = *(v69 + 96);
      *&v176[64] = *(v69 + 80);
      *&v176[80] = v72;
      v73 = *(v69 + 32);
      *v176 = *(v69 + 16);
      *&v176[16] = v73;
      v74 = *v176;
      sub_1D62B4EA4(v176, &v169);

      sub_1D6E3B000(v68, v74, &v175);
      if (v67)
      {
        sub_1D62B4F00(v176);

        return;
      }

      v160[0] = v175;
      sub_1D6AAF4A8(v160, v68, &v161);
      *&v159 = v161;
      v173[2] = *&v176[104];
      v174[0] = *&v176[120];
      *(v174 + 9) = *&v176[129];
      v171 = *&v176[40];
      v172 = *&v176[56];
      v173[0] = *&v176[72];
      v173[1] = *&v176[88];
      v169 = *&v176[8];
      v170 = *&v176[24];
      if (sub_1D60486AC(&v169) == 1)
      {

        sub_1D62B4F00(v176);
        v119 = sub_1D725D4AC();
        v120 = v148;
        (*(*(v119 - 8) + 56))(v148, 1, 1, v119);
      }

      else
      {
        v182[6] = v173[2];
        v183[0] = v174[0];
        *(v183 + 9) = *(v174 + 9);
        v182[2] = v171;
        v182[3] = v172;
        v182[4] = v173[0];
        v182[5] = v173[1];
        v182[0] = v169;
        v182[1] = v170;
        v125 = v144;
        sub_1D6AB2614(v68, v144);
        v167 = *&v176[104];
        v168[0] = *&v176[120];
        *(v168 + 9) = *&v176[129];
        v163 = *&v176[40];
        v164 = *&v176[56];
        v165 = *&v176[72];
        v166 = *&v176[88];
        v161 = *&v176[8];
        v162 = *&v176[24];
        sub_1D62B4994(&v161, v160);
        v120 = v148;
        sub_1D6E3A954(v182, v125);

        sub_1D62B4F00(v176);
        v130 = sub_1D725D4AC();
        (*(*(v130 - 8) + 56))(v120, 0, 1, v130);
      }

      v131 = v159;
      v132 = type metadata accessor for FormatMicaSectionDecorationItem(0);
      v133 = swift_allocBox();
      v135 = v134;
      sub_1D688DA08(v120, &v134[v132[5]]);
      (*(v65 + 16))(&v135[v132[6]], v153, v66);
      (*(v151 + 16))(&v135[v132[7]], v154, v152);
      *v135 = v131;
      v92 = v133 | 0x8000000000000000;
LABEL_43:
      *v184 = v92;
      return;
    }

    v93 = v49;
    v94 = *((v50 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
    sub_1D6086744(v94);
    sub_1D6FD707C(v68, v94, v176);
    if (v67)
    {
      sub_1D6086768(v94);
    }

    else
    {
      v121 = *v176;
      if ((v176[0] & 7u) > 1 || (v126 = *v176, (v176[0] & 7) != 0))
      {
        v126 = *v176 & 0xFFFFFFFFFFFFFFF8;
      }

      sub_1D725EB9C();
      *&v159 = swift_allocBox();
      *v176 = v126;
      FormatColor.color.getter(v127);
      (*(v65 + 16))(v93, v153, v66);
      (*(v151 + 16))(v150, v154, v152);
      sub_1D725EB8C();
      sub_1D6086768(v121);
      sub_1D6086768(v94);
      *v184 = v159;
    }
  }
}

uint64_t sub_1D6AAF1C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2;
  v23[2] = a2;
  v23[3] = a1;
  v5 = sub_1D725DD0C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = (v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *v4;
  v10 = v4[1];
  v26 = *(v4 + 3);
  v12 = *(v11 + 16);
  v23[4] = v10;
  v24 = v5;
  if (v12)
  {
    v27 = MEMORY[0x1E69E7CC0];

    sub_1D5E3A490(&v26, v25, &qword_1EDF2C1D0, &type metadata for FormatPointEquation);
    sub_1D7263ECC();
    v14 = (v11 + 32);
    do
    {
      v15 = *v14++;
      v25[0] = v15;
      FormatColor.color.getter(v13);
      sub_1D7263E9C();
      sub_1D7263EDC();
      sub_1D7263EEC();
      sub_1D7263EAC();
      --v12;
    }

    while (v12);
    v16 = v27;
    v5 = v24;
  }

  else
  {

    sub_1D5E3A490(&v26, v25, &qword_1EDF2C1D0, &type metadata for FormatPointEquation);
    v16 = MEMORY[0x1E69E7CC0];
  }

  v17 = *(v4 + 2);
  *v9 = *(v4 + 1);
  v9[1] = v17;
  (*(v6 + 104))(v9, *MEMORY[0x1E69D7B68], v5);
  v18 = v26;
  if (v26)
  {
    v23[1] = v16;
    v19 = *(&v26 + 1);
    v20 = off_1F513B080[0];
    type metadata accessor for FormatDecorationContext(0);
    v21 = v20();
    sub_1D5E02AFC(v21, v18);
    if (v3)
    {

      (*(v6 + 8))(v9, v24);
      return sub_1D5E3AAD0(&v26, &qword_1EDF2C1D0, &type metadata for FormatPointEquation);
    }

    sub_1D5E02AFC(v21, v19);

    sub_1D5E3AAD0(&v26, &qword_1EDF2C1D0, &type metadata for FormatPointEquation);
  }

  return sub_1D725DCCC();
}

unint64_t sub_1D6AAF4A8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v6 = sub_1D72585BC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  if (*a1 < 0)
  {
    v17 = *((v11 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
    v18 = *((v11 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
    v19 = swift_allocObject();
    v21 = v17;
    sub_1D6AAF4A8(&v21, a2, (v19 + 16));
    v21 = v18;
    sub_1D6AAF4A8(&v21, a2, (v19 + 24));
    result = v19 | 0x8000000000000000;
  }

  else
  {
    v12 = swift_projectBox();
    (*(v7 + 16))(v10, v12, v6);
    v13 = *(a2 + 96);
    v14 = sub_1D725844C();
    v15 = [v13 assetHandleForURL:v14 lifetimeHint:0];

    (*(v7 + 8))(v10, v6);
    result = swift_allocObject();
    *(result + 16) = v15;
  }

  *a3 = result;
  return result;
}

uint64_t static FormatDecorationContent.== infix(_:_:)(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1 >> 60;
  if (v4 > 3)
  {
    if (v4 > 5)
    {
      if (v4 == 6)
      {
        if (v3 >> 60 != 6)
        {
          goto LABEL_36;
        }

        v37 = v2 & 0xFFFFFFFFFFFFFFFLL;
        v38 = *(v37 + 24);
        v40 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v39 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
        *v63 = *(v37 + 16);
        *&v63[8] = v38;
        *v55 = v40;
        *&v55[8] = v39;

        if (static FormatDecorationContent.== infix(_:_:)(v63, v55))
        {

          v41 = sub_1D634F3BC(v38, v39);

          swift_bridgeObjectRelease_n();
          if (v41)
          {
LABEL_23:
            v15 = 1;
            return v15 & 1;
          }

LABEL_36:
          v15 = 0;
          return v15 & 1;
        }
      }

      else
      {
        if (v4 != 7)
        {
          if (v3 == 0x8000000000000000)
          {

            v15 = 1;
            return v15 & 1;
          }

          goto LABEL_36;
        }

        if (v3 >> 60 != 7)
        {
          goto LABEL_36;
        }

        v6 = *((v2 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
        v5 = *((v2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        v7 = *((v2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v8 = v3 & 0xFFFFFFFFFFFFFFFLL;
        v10 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v9 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
        v11 = *(v8 + 32);
        *v63 = v7;
        *&v63[8] = v6;
        *&v63[16] = v5;
        *v55 = v10;
        *&v55[8] = v9;
        *&v55[16] = v11;
        v72[0] = v7;
        v72[1] = v6;
        v71[0] = v10;
        v71[1] = v9;

        if (static FormatDecorationContent.== infix(_:_:)(v72, v71))
        {

          v12 = sub_1D634F3BC(v6, v9);

          if (v12)
          {
            v13 = static FormatDecorationContent.== infix(_:_:)(&v63[16], &v55[16]);

            if (v13)
            {
              goto LABEL_23;
            }

            goto LABEL_36;
          }
        }
      }

      goto LABEL_36;
    }

    if (v4 == 4)
    {
      if (v3 >> 60 != 4)
      {
        goto LABEL_36;
      }

      v27 = v2 & 0xFFFFFFFFFFFFFFFLL;
      v28 = v3 & 0xFFFFFFFFFFFFFFFLL;
      v29 = *(v28 + 128);
      v59 = *(v28 + 112);
      v60 = v29;
      v61 = *(v28 + 144);
      v62 = *(v28 + 160);
      v30 = *(v28 + 64);
      *&v55[32] = *(v28 + 48);
      v56 = v30;
      v31 = *(v28 + 96);
      v57 = *(v28 + 80);
      v58 = v31;
      v32 = *(v28 + 32);
      *v55 = *(v28 + 16);
      *&v55[16] = v32;
      v33 = *(v27 + 128);
      v67 = *(v27 + 112);
      v68 = v33;
      v69 = *(v27 + 144);
      v70 = *(v27 + 160);
      v34 = *(v27 + 64);
      *&v63[32] = *(v27 + 48);
      v64 = v34;
      v35 = *(v27 + 96);
      v65 = *(v27 + 80);
      v66 = v35;
      v36 = *(v27 + 32);
      *v63 = *(v27 + 16);
      *&v63[16] = v36;

      v26 = _s8NewsFeed20FormatMicaBackgroundV2eeoiySbAC_ACtFZ_0(v63, v55);
    }

    else
    {
      if (v3 >> 60 != 5)
      {
        goto LABEL_36;
      }

      v53 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      *v63 = *((v2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      *v55 = v53;

      v26 = _s8NewsFeed11FormatShineO2eeoiySbAC_ACtFZ_0(v63, v55);
    }

LABEL_32:
    v15 = v26;

    return v15 & 1;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      if (v3 >> 60 != 2)
      {
        goto LABEL_36;
      }

      v16 = (v2 & 0xFFFFFFFFFFFFFFFLL);
      v17 = (v3 & 0xFFFFFFFFFFFFFFFLL);
      v18 = v17[6];
      v57 = v17[5];
      v58 = v18;
      v19 = v17[8];
      v59 = v17[7];
      v60 = v19;
      v20 = v17[2];
      *v55 = v17[1];
      *&v55[16] = v20;
      v21 = v17[4];
      *&v55[32] = v17[3];
      v56 = v21;
      v22 = v16[6];
      v65 = v16[5];
      v66 = v22;
      v23 = v16[8];
      v67 = v16[7];
      v68 = v23;
      v24 = v16[2];
      *v63 = v16[1];
      *&v63[16] = v24;
      v25 = v16[4];
      *&v63[32] = v16[3];
      v64 = v25;

      v26 = _s8NewsFeed20FormatRadialGradientV2eeoiySbAC_ACtFZ_0(v63, v55);
    }

    else
    {
      if (v3 >> 60 != 3)
      {
        goto LABEL_36;
      }

      v48 = v2 & 0xFFFFFFFFFFFFFFFLL;
      v49 = *(v48 + 56);
      v50 = v3 & 0xFFFFFFFFFFFFFFFLL;
      v51 = *(v50 + 16);
      v52 = *(v50 + 56);
      v63[0] = *(v48 + 16);
      *&v63[8] = *(v48 + 24);
      *&v63[24] = *(v48 + 40);
      v63[40] = v49;
      v55[0] = v51;
      *&v55[8] = *(v50 + 24);
      *&v55[24] = *(v50 + 40);
      v55[40] = v52;

      v26 = _s8NewsFeed13FormatPatternV2eeoiySbAC_ACtFZ_0(v63, v55);
    }

    goto LABEL_32;
  }

  if (v4)
  {
    if (v3 >> 60 != 1)
    {
      goto LABEL_36;
    }

    v42 = (v2 & 0xFFFFFFFFFFFFFFFLL);
    v43 = (v3 & 0xFFFFFFFFFFFFFFFLL);
    v44 = v43[2];
    *v55 = v43[1];
    *&v55[16] = v44;
    v45 = v43[4];
    *&v55[32] = v43[3];
    v56 = v45;
    v46 = v42[2];
    *v63 = v42[1];
    *&v63[16] = v46;
    v47 = v42[4];
    *&v63[32] = v42[3];
    v64 = v47;

    v26 = _s8NewsFeed14FormatGradientV2eeoiySbAC_ACtFZ_0(v63, v55);
    goto LABEL_32;
  }

  if (v3 >> 60)
  {
    goto LABEL_36;
  }

  v14 = *(v3 + 16);
  *v63 = *(v2 + 16);
  *v55 = v14;

  v15 = static FormatColor.== infix(_:_:)(v63, v55);

  return v15 & 1;
}

void sub_1D6AAFB58(__int128 *a1, unint64_t *a2)
{
  v2 = a1[7];
  v247 = a1[6];
  v248 = v2;
  v249 = a1[8];
  v250 = *(a1 + 18);
  v3 = a1[3];
  v243 = a1[2];
  v244 = v3;
  v4 = a1[5];
  v245 = a1[4];
  v246 = v4;
  v5 = a1[1];
  v241 = *a1;
  v242 = v5;
  v6 = *a2;
  if ((~*a2 & 0xF000000000000007) == 0)
  {
    v7 = MEMORY[0x1E69E6F90];
    sub_1D5B5633C(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
    v8 = swift_allocObject();
    v203 = xmmword_1D7273AE0;
    *(v8 + 16) = xmmword_1D7273AE0;
    sub_1D5B5633C(0, &qword_1EC880490, sub_1D5EA74B8, v7);
    sub_1D5EA74B8(0);
    v10 = (*(*(v9 - 8) + 80) + 32) & ~*(*(v9 - 8) + 80);
    v11 = swift_allocObject();
    *(v11 + 16) = v203;
    v12 = (v11 + v10);
    v13 = 1701736270;
    v14 = 0xE400000000000000;
LABEL_3:
    sub_1D711F844(1701869908, 0xE400000000000000, v13, v14, v12);
    v15 = type metadata accessor for FormatInspectionItem(0);
    (*(*(v15 - 8) + 56))(v11 + v10, 0, 1, v15);
    sub_1D6795150(0x697461726F636544, 0xEA00000000006E6FLL, 0, 0, v11, &v229);
    swift_setDeallocating();
    sub_1D5EF5F0C(v11 + v10, sub_1D5EA74B8);
    swift_deallocClassInstance();
    *(v8 + 56) = &type metadata for FormatInspectionGroup;
    *(v8 + 64) = &off_1F518B2C0;
    v16 = swift_allocObject();
    *(v8 + 32) = v16;
    v17 = v230;
    *(v16 + 16) = v229;
    *(v16 + 32) = v17;
    *(v16 + 48) = v231;
    sub_1D7073500(v8);
    swift_setDeallocating();
    sub_1D5EF5F0C(v8 + 32, sub_1D5E4F358);
    swift_deallocClassInstance();
    return;
  }

  v18 = v6 >> 60;
  if ((v6 >> 60) <= 3)
  {
    if (v18 > 1)
    {
      if (v18 != 2)
      {
        v148 = v6 & 0xFFFFFFFFFFFFFFFLL;
        v150 = *(v148 + 24);
        v149 = *(v148 + 32);
        v151 = *(v148 + 48);
        v201 = *(v148 + 40);
        v202 = v149;
        *&v200 = v151;
        LODWORD(v198) = *(v148 + 16);
        LODWORD(v199) = *(v148 + 56);
        v152 = MEMORY[0x1E69E6F90];
        sub_1D5B5633C(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
        v153 = swift_allocObject();
        *(v153 + 16) = xmmword_1D7273AE0;
        sub_1D5B5633C(0, &qword_1EC880490, sub_1D5EA74B8, v152);
        sub_1D5EA74B8(0);
        *&v203 = v154;
        v155 = *(*(v154 - 8) + 72);
        v156 = (*(*(v154 - 8) + 80) + 32) & ~*(*(v154 - 8) + 80);
        v157 = swift_allocObject();
        *(v157 + 16) = xmmword_1D7274590;
        v158 = v157 + v156;

        sub_1D711F844(1701869908, 0xE400000000000000, 0x6E726574746150, 0xE700000000000000, (v157 + v156));
        v159 = type metadata accessor for FormatInspectionItem(0);
        v160 = *(*(v159 - 8) + 56);
        v160(v158, 0, 1, v159);
        sub_1D712CB74(1701080909, 0xE400000000000000, v198, (v158 + v155));
        v160(v158 + v155, 0, 1, v159);
        sub_1D712CE68(0x6E6F697469736F50, 0xE800000000000000, v202, v201, v200, v199, (v158 + 2 * v155));
        v160(v158 + 2 * v155, 0, 1, v159);

        v161 = sub_1D712D17C(0x746E65746E6F43, 0xE700000000000000, v150, (v158 + 3 * v155));
        (v160)(v158 + 3 * v155, 0, 1, v159, v161);
        sub_1D6795150(0x697461726F636544, 0xEA00000000006E6FLL, 0, 0, v157, &v229);
        swift_setDeallocating();
        swift_arrayDestroy();
        swift_deallocClassInstance();
        *(v153 + 56) = &type metadata for FormatInspectionGroup;
        *(v153 + 64) = &off_1F518B2C0;
        v162 = swift_allocObject();
        *(v153 + 32) = v162;
        v163 = v230;
        *(v162 + 16) = v229;
        *(v162 + 32) = v163;
        *(v162 + 48) = v231;
        sub_1D7073500(v153);
        swift_setDeallocating();
        sub_1D5EF5F0C(v153 + 32, sub_1D5E4F358);
        swift_deallocClassInstance();

        return;
      }

      v70 = (v6 & 0xFFFFFFFFFFFFFFFLL);
      v71 = v70[6];
      v208 = v70[5];
      v209 = v71;
      v72 = v70[8];
      v210 = v70[7];
      v211[0] = v72;
      v73 = v70[2];
      v204 = v70[1];
      v205 = v73;
      v74 = v70[4];
      v206 = v70[3];
      v207 = v74;
      v75 = MEMORY[0x1E69E6F90];
      sub_1D5B5633C(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
      v76 = swift_allocObject();
      *(v76 + 16) = xmmword_1D7270C10;
      sub_1D5B5633C(0, &qword_1EC880490, sub_1D5EA74B8, v75);
      sub_1D5EA74B8(0);
      v78 = (*(*(v77 - 8) + 80) + 32) & ~*(*(v77 - 8) + 80);
      v79 = swift_allocObject();
      *(v79 + 16) = xmmword_1D7273AE0;
      sub_1D60865E4(&v204, &v229);
      sub_1D711F844(1701869908, 0xE400000000000000, 0x47206C6169646152, 0xEF746E6569646172, (v79 + v78));
      v80 = type metadata accessor for FormatInspectionItem(0);
      (*(*(v80 - 8) + 56))(v79 + v78, 0, 1, v80);
      sub_1D6795150(0x697461726F636544, 0xEA00000000006E6FLL, 0, 0, v79, v239);
      swift_setDeallocating();
      sub_1D5EF5F0C(v79 + v78, sub_1D5EA74B8);
      swift_deallocClassInstance();
      *(v76 + 56) = &type metadata for FormatInspectionGroup;
      *(v76 + 64) = &off_1F518B2C0;
      v81 = swift_allocObject();
      *(v76 + 32) = v81;
      v82 = v239[1];
      *(v81 + 16) = v239[0];
      *(v81 + 32) = v82;
      *(v81 + 48) = v240;
      v235 = v247;
      v236 = v248;
      v237 = v249;
      v238 = v250;
      v231 = v243;
      v232 = v244;
      v233 = v245;
      v234 = v246;
      v229 = v241;
      v230 = v242;
      v217 = v208;
      v218 = v209;
      v219 = v210;
      v220[0] = v211[0];
      v213 = v204;
      v214 = v205;
      v215 = v206;
      v216 = v207;
      nullsub_1();
      v225 = v217;
      v226 = v218;
      v227 = v219;
      v228 = v220[0];
      v221 = v213;
      v222 = v214;
      v223 = v215;
      v224 = v216;
      v83 = sub_1D6A51104(&v229, &v221);
      *&v212[64] = v225;
      *&v212[80] = v226;
      *&v212[96] = v227;
      *&v212[112] = v228;
      *v212 = v221;
      *&v212[16] = v222;
      *&v212[32] = v223;
      *&v212[48] = v224;
      v84 = &qword_1EC890C28;
      v85 = &type metadata for FormatRadialGradient;
    }

    else
    {
      if (!v18)
      {
        v53 = *(v6 + 16);
        v54 = MEMORY[0x1E69E6F90];
        sub_1D5B5633C(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
        v55 = swift_allocObject();
        *(v55 + 16) = xmmword_1D7273AE0;
        sub_1D5B5633C(0, &qword_1EC880490, sub_1D5EA74B8, v54);
        sub_1D5EA74B8(0);
        *&v203 = v56;
        v57 = *(*(v56 - 8) + 72);
        v58 = (*(*(v56 - 8) + 80) + 32) & ~*(*(v56 - 8) + 80);
        v59 = swift_allocObject();
        *(v59 + 16) = xmmword_1D7270C10;
        v60 = (v59 + v58);
        v61 = v53;
        v202 = v53;

        sub_1D711F844(1701869908, 0xE400000000000000, 0x726F6C6F43, 0xE500000000000000, v60);
        v62 = type metadata accessor for FormatInspectionItem(0);
        v63 = *(*(v62 - 8) + 56);
        v63(v60, 0, 1, v62);
        v64 = &v60[v57];
        v65 = *(v62 + 24);
        *&v64[v65] = v61;
        v66 = type metadata accessor for FormatInspectionItem.Value(0);
        swift_storeEnumTagMultiPayload();
        (*(*(v66 - 8) + 56))(&v64[v65], 0, 1, v66);
        *v64 = xmmword_1D72EBCC0;
        *(v64 + 2) = 0;
        *(v64 + 3) = 0;
        v67 = &v64[*(v62 + 28)];
        *v67 = 0;
        *(v67 + 1) = 0;
        v67[16] = -1;
        v63(v64, 0, 1, v62);

        sub_1D6795150(0x697461726F636544, 0xEA00000000006E6FLL, 0, 0, v59, &v229);
        swift_setDeallocating();
        swift_arrayDestroy();
        swift_deallocClassInstance();
        *(v55 + 56) = &type metadata for FormatInspectionGroup;
        *(v55 + 64) = &off_1F518B2C0;
        v68 = swift_allocObject();
        *(v55 + 32) = v68;
        v69 = v230;
        *(v68 + 16) = v229;
        *(v68 + 32) = v69;
        *(v68 + 48) = v231;
        sub_1D7073500(v55);
        swift_setDeallocating();
        sub_1D5EF5F0C(v55 + 32, sub_1D5E4F358);
        swift_deallocClassInstance();

        return;
      }

      v138 = (v6 & 0xFFFFFFFFFFFFFFFLL);
      v139 = v138[2];
      v213 = v138[1];
      v214 = v139;
      v140 = v138[4];
      v215 = v138[3];
      v216 = v140;
      v141 = MEMORY[0x1E69E6F90];
      sub_1D5B5633C(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
      v76 = swift_allocObject();
      *(v76 + 16) = xmmword_1D7270C10;
      sub_1D5B5633C(0, &qword_1EC880490, sub_1D5EA74B8, v141);
      sub_1D5EA74B8(0);
      v143 = (*(*(v142 - 8) + 80) + 32) & ~*(*(v142 - 8) + 80);
      v144 = swift_allocObject();
      *(v144 + 16) = xmmword_1D7273AE0;
      sub_1D6086694(&v213, &v229);
      sub_1D711F844(1701869908, 0xE400000000000000, 0x746E656964617247, 0xE800000000000000, (v144 + v143));
      v145 = type metadata accessor for FormatInspectionItem(0);
      (*(*(v145 - 8) + 56))(v144 + v143, 0, 1, v145);
      sub_1D6795150(0x697461726F636544, 0xEA00000000006E6FLL, 0, 0, v144, v221.i64);
      swift_setDeallocating();
      sub_1D5EF5F0C(v144 + v143, sub_1D5EA74B8);
      swift_deallocClassInstance();
      *(v76 + 56) = &type metadata for FormatInspectionGroup;
      *(v76 + 64) = &off_1F518B2C0;
      v146 = swift_allocObject();
      *(v76 + 32) = v146;
      v147 = v222;
      *(v146 + 16) = v221;
      *(v146 + 32) = v147;
      *(v146 + 48) = v223.i64[0];
      v235 = v247;
      v236 = v248;
      v237 = v249;
      v238 = v250;
      v231 = v243;
      v232 = v244;
      v233 = v245;
      v234 = v246;
      v229 = v241;
      v230 = v242;
      v204 = v213;
      v205 = v214;
      v206 = v215;
      v207 = v216;
      v83 = sub_1D6BB7CE4(&v229, &v204);
      *v212 = v204;
      *&v212[16] = v205;
      *&v212[32] = v206;
      *&v212[48] = v207;
      v84 = &qword_1EC890C30;
      v85 = &type metadata for FormatGradient;
    }

    sub_1D5E3AAD0(v212, v84, v85);
    *(v76 + 96) = &type metadata for FormatInspection;
    *(v76 + 104) = &off_1F51E3FD0;
    *(v76 + 72) = v83;
    sub_1D7073500(v76);
    swift_setDeallocating();
    sub_1D5E4F358(0);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    return;
  }

  if (v18 > 5)
  {
    if (v18 == 6)
    {
      v105 = v6 & 0xFFFFFFFFFFFFFFFLL;
      v107 = *(v105 + 16);
      v106 = *(v105 + 24);
      v108 = MEMORY[0x1E69E6F90];
      v202 = a1;
      sub_1D5B5633C(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
      v200 = xmmword_1D7273AE0;
      v199 = swift_allocObject();
      *(v199 + 16) = xmmword_1D7273AE0;
      sub_1D5B5633C(0, &qword_1EC880490, sub_1D5EA74B8, v108);
      sub_1D5EA74B8(0);
      v198 = v109;
      v110 = *(v109 - 8);
      v201 = *(v110 + 72);
      v111 = (*(v110 + 80) + 32) & ~*(v110 + 80);
      v112 = swift_allocObject();
      *(v112 + 16) = xmmword_1D7279970;
      v197 = v112;
      v113 = (v112 + v111);

      sub_1D711F844(1701869908, 0xE400000000000000, 0x726F7463656C6553, 0xE800000000000000, v113);
      v114 = type metadata accessor for FormatInspectionItem(0);
      v115 = *(v114 - 8);
      v116 = *(v115 + 56);
      v117 = v115 + 56;
      v116(v113, 0, 1, v114);
      sub_1D5B5633C(0, &qword_1EC8803C0, sub_1D5E4F38C, v108);
      v118 = swift_allocObject();
      *(v118 + 16) = v200;
      *&v229 = v107;

      sub_1D6AAFB58(v202, &v229);
      v120 = v119;
      v202 = v107;
      sub_1D5C84FF4(v107);
      *(v118 + 56) = &type metadata for FormatInspection;
      *(v118 + 64) = &off_1F51E3FD0;
      *(v118 + 32) = v120;
      v121 = sub_1D5F62BFC(v118);
      swift_setDeallocating();
      __swift_destroy_boxed_opaque_existential_1((v118 + 32));
      swift_deallocClassInstance();
      v122 = sub_1D7073500(v121);

      sub_1D711AD20(0x65756C6156, 0xE500000000000000, v122, 0, 0, &v113[v201]);
      *&v200 = v114;
      v195 = v117;
      v196 = v116;
      v116(&v113[v201], 0, 1, v114);
      v123 = *(v106 + 16);
      v124 = MEMORY[0x1E69E7CC0];
      if (v123)
      {
        v194 = v113;
        v213.i64[0] = MEMORY[0x1E69E7CC0];

        sub_1D6997EC0(0, v123, 0);
        v125 = 0;
        v124 = v213.i64[0];
        v126 = (v106 + 48);
        *&v203 = v106;
        while (v125 < *(v106 + 16))
        {
          v127 = *(v126 - 1);
          v128 = *v126;
          *v212 = *(v126 - 2);
          *&v212[8] = v127;
          *&v212[16] = v128;

          sub_1D6AB1E6C(v212, &v241, &v229);

          v213.i64[0] = v124;
          v130 = *(v124 + 16);
          v129 = *(v124 + 24);
          if (v130 >= v129 >> 1)
          {
            sub_1D6997EC0((v129 > 1), v130 + 1, 1);
          }

          ++v125;
          v131 = *(&v230 + 1);
          v132 = v231;
          v133 = __swift_mutable_project_boxed_opaque_existential_1(&v229, *(&v230 + 1));
          v134 = MEMORY[0x1EEE9AC00](v133, v133);
          v136 = v193 - ((v135 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v137 + 16))(v136, v134);
          sub_1D5BD0BE4(v130, v136, v213.i64, v131, v132);
          __swift_destroy_boxed_opaque_existential_1(&v229);
          v124 = v213.i64[0];
          v126 += 3;
          v106 = v203;
          if (v123 == v125)
          {

            v181 = v199;
            v113 = v194;
            goto LABEL_35;
          }
        }

        __break(1u);
        goto LABEL_39;
      }

      v181 = v199;
LABEL_35:
      v182 = &v113[2 * v201];
      v183 = sub_1D5F62BFC(v124);

      v184 = sub_1D7073500(v183);

      sub_1D711AD20(0x726F7463656C6553, 0xE900000000000073, v184, 0, 0, v182);
      v196(v182, 0, 1, v200);
      sub_1D6795150(0x697461726F636544, 0xEA00000000006E6FLL, 0, 0, v197, &v229);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v181[7] = &type metadata for FormatInspectionGroup;
      v181[8] = &off_1F518B2C0;
      v185 = swift_allocObject();
      v181[4] = v185;
      v186 = v230;
      *(v185 + 16) = v229;
      *(v185 + 32) = v186;
      *(v185 + 48) = v231;
      sub_1D7073500(v181);
      swift_setDeallocating();
      sub_1D5EF5F0C((v181 + 4), sub_1D5E4F358);
      swift_deallocClassInstance();
    }

    else
    {
      if (v18 != 7)
      {
        v164 = MEMORY[0x1E69E6F90];
        sub_1D5B5633C(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
        v8 = swift_allocObject();
        v203 = xmmword_1D7273AE0;
        *(v8 + 16) = xmmword_1D7273AE0;
        sub_1D5B5633C(0, &qword_1EC880490, sub_1D5EA74B8, v164);
        sub_1D5EA74B8(0);
        v10 = (*(*(v165 - 8) + 80) + 32) & ~*(*(v165 - 8) + 80);
        v11 = swift_allocObject();
        *(v11 + 16) = v203;
        v13 = 0x7974706D45;
        v12 = (v11 + v10);
        v14 = 0xE500000000000000;
        goto LABEL_3;
      }

      v19 = (v6 & 0xFFFFFFFFFFFFFFFLL);
      v20 = v19[2];
      v21 = v19[3];
      v22 = v19[4];
      v23 = MEMORY[0x1E69E6F90];
      v202 = a1;
      sub_1D5B5633C(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
      v200 = xmmword_1D7273AE0;
      v198 = swift_allocObject();
      *(v198 + 16) = xmmword_1D7273AE0;
      sub_1D5B5633C(0, &qword_1EC880490, sub_1D5EA74B8, v23);
      sub_1D5EA74B8(0);
      v197 = v24;
      v25 = *(v24 - 8);
      v201 = *(v25 + 72);
      v26 = (*(v25 + 80) + 32) & ~*(v25 + 80);
      v27 = swift_allocObject();
      v27[1] = xmmword_1D7279970;
      v196 = v27;
      v28 = v27 + v26;
      v199 = v22;

      sub_1D711F844(1701869908, 0xE400000000000000, 0x7463656C65736E55, 0xEA0000000000726FLL, v28);
      v29 = type metadata accessor for FormatInspectionItem(0);
      v30 = *(v29 - 8);
      v31 = *(v30 + 56);
      v32 = v30 + 56;
      (v31)(v28, 0, 1, v29);
      sub_1D5B5633C(0, &qword_1EC8803C0, sub_1D5E4F38C, v23);
      v33 = swift_allocObject();
      *(v33 + 16) = v200;
      *&v229 = v20;

      sub_1D6AAFB58(v202, &v229);
      v35 = v34;
      v202 = v20;
      sub_1D5C84FF4(v20);
      *(v33 + 56) = &type metadata for FormatInspection;
      *(v33 + 64) = &off_1F51E3FD0;
      *(v33 + 32) = v35;
      v36 = sub_1D5F62BFC(v33);
      swift_setDeallocating();
      __swift_destroy_boxed_opaque_existential_1((v33 + 32));
      swift_deallocClassInstance();
      v37 = sub_1D7073500(v36);

      sub_1D711AD20(0x65756C6156, 0xE500000000000000, v37, 0, 0, &v28[v201]);
      *&v200 = v28;
      v194 = v31;
      v195 = v29;
      v193[1] = v32;
      (v31)(&v28[v201], 0, 1, v29);
      v38 = *(v21 + 16);
      v39 = MEMORY[0x1E69E7CC0];
      if (v38)
      {
        v213.i64[0] = MEMORY[0x1E69E7CC0];

        sub_1D6997EC0(0, v38, 0);
        v40 = 0;
        v39 = v213.i64[0];
        v41 = (v21 + 48);
        *&v203 = v21;
        while (v40 < *(v21 + 16))
        {
          v42 = *(v41 - 1);
          v43 = *v41;
          *v212 = *(v41 - 2);
          *&v212[8] = v42;
          *&v212[16] = v43;

          sub_1D6AB2178(v212, &v241, &v229);

          v213.i64[0] = v39;
          v45 = *(v39 + 16);
          v44 = *(v39 + 24);
          if (v45 >= v44 >> 1)
          {
            sub_1D6997EC0((v44 > 1), v45 + 1, 1);
          }

          ++v40;
          v46 = *(&v230 + 1);
          v47 = v231;
          v48 = __swift_mutable_project_boxed_opaque_existential_1(&v229, *(&v230 + 1));
          v49 = MEMORY[0x1EEE9AC00](v48, v48);
          v51 = v193 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v52 + 16))(v51, v49);
          sub_1D5BD0BE4(v45, v51, v213.i64, v46, v47);
          __swift_destroy_boxed_opaque_existential_1(&v229);
          v39 = v213.i64[0];
          v41 += 3;
          v21 = v203;
          if (v38 == v40)
          {

            goto LABEL_36;
          }
        }

LABEL_39:
        __break(1u);

        __break(1u);
        return;
      }

LABEL_36:
      v187 = (v200 + 2 * v201);
      v188 = sub_1D5F62BFC(v39);

      v189 = sub_1D7073500(v188);

      sub_1D711AD20(0x726F7463656C6553, 0xE900000000000073, v189, 0, 0, v187);
      (v194)(v187, 0, 1, v195);
      sub_1D6795150(0x697461726F636544, 0xEA00000000006E6FLL, 0, 0, v196, &v229);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v190 = v198;
      *(v198 + 56) = &type metadata for FormatInspectionGroup;
      *(v190 + 64) = &off_1F518B2C0;
      v191 = swift_allocObject();
      *(v190 + 32) = v191;
      v192 = v230;
      *(v191 + 16) = v229;
      *(v191 + 32) = v192;
      *(v191 + 48) = v231;
      sub_1D7073500(v190);
      swift_setDeallocating();
      sub_1D5EF5F0C(v190 + 32, sub_1D5E4F358);
      swift_deallocClassInstance();
    }

    return;
  }

  v86 = v6 & 0xFFFFFFFFFFFFFFFLL;
  if (v18 == 4)
  {
    v87 = *(v86 + 128);
    *&v212[96] = *(v86 + 112);
    *&v212[112] = v87;
    *&v212[128] = *(v86 + 144);
    v212[144] = *(v86 + 160);
    v88 = *(v86 + 64);
    *&v212[32] = *(v86 + 48);
    *&v212[48] = v88;
    v89 = *(v86 + 96);
    *&v212[64] = *(v86 + 80);
    *&v212[80] = v89;
    v90 = *(v86 + 32);
    *v212 = *(v86 + 16);
    *&v212[16] = v90;
    v91 = MEMORY[0x1E69E6F90];
    sub_1D5B5633C(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
    v92 = swift_allocObject();
    v203 = xmmword_1D7270C10;
    *(v92 + 16) = xmmword_1D7270C10;
    sub_1D5B5633C(0, &qword_1EC880490, sub_1D5EA74B8, v91);
    sub_1D5EA74B8(0);
    v94 = *(*(v93 - 8) + 72);
    v95 = (*(*(v93 - 8) + 80) + 32) & ~*(*(v93 - 8) + 80);
    v96 = swift_allocObject();
    *(v96 + 16) = v203;
    v97 = (v96 + v95);
    sub_1D62B4EA4(v212, &v229);
    sub_1D711F844(1701869908, 0xE400000000000000, 1633904973, 0xE400000000000000, v97);
    v98 = type metadata accessor for FormatInspectionItem(0);
    v99 = *(*(v98 - 8) + 56);
    v99(v97, 0, 1, v98);
    v100 = *v212;

    v101 = sub_1D712C844(0x746E65746E6F43, 0xE700000000000000, v100, &v97[v94]);
    (v99)(&v97[v94], 0, 1, v98, v101);
    sub_1D6795150(0x697461726F636544, 0xEA00000000006E6FLL, 0, 0, v96, v221.i64);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    *(v92 + 56) = &type metadata for FormatInspectionGroup;
    *(v92 + 64) = &off_1F518B2C0;
    v102 = swift_allocObject();
    *(v92 + 32) = v102;
    v103 = v222;
    *(v102 + 16) = v221;
    *(v102 + 32) = v103;
    *(v102 + 48) = v223.i64[0];
    v235 = v247;
    v236 = v248;
    v237 = v249;
    v238 = v250;
    v231 = v243;
    v232 = v244;
    v233 = v245;
    v234 = v246;
    v229 = v241;
    v230 = v242;
    v210 = *&v212[104];
    v211[0] = *&v212[120];
    *(v211 + 9) = *&v212[129];
    v206 = *&v212[40];
    v207 = *&v212[56];
    v208 = *&v212[72];
    v209 = *&v212[88];
    v204 = *&v212[8];
    v205 = *&v212[24];
    sub_1D5E3A490(&v212[8], &v213, &qword_1EDF10BF0, &type metadata for FormatMediaTiming);
    v104 = sub_1D6814648(&v229, v204.i8);
    v219 = v210;
    v220[0] = v211[0];
    *(v220 + 9) = *(v211 + 9);
    v215 = v206;
    v216 = v207;
    v217 = v208;
    v218 = v209;
    v213 = v204;
    v214 = v205;
    sub_1D5E3AAD0(&v213, &qword_1EDF10BF0, &type metadata for FormatMediaTiming);
    *(v92 + 96) = &type metadata for FormatInspection;
    *(v92 + 104) = &off_1F51E3FD0;
    *(v92 + 72) = v104;
    sub_1D7073500(v92);
    swift_setDeallocating();
    sub_1D5E4F358(0);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    sub_1D62B4F00(v212);
  }

  else
  {
    v166 = *(v86 + 16);
    v167 = MEMORY[0x1E69E6F90];
    sub_1D5B5633C(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
    v169 = swift_allocObject();
    *(v169 + 16) = xmmword_1D7270C10;
    sub_1D5B5633C(0, &qword_1EC880490, sub_1D5EA74B8, v167);
    sub_1D5EA74B8(0);
    v171 = (*(*(v170 - 8) + 80) + 32) & ~*(*(v170 - 8) + 80);
    v172 = swift_allocObject();
    *(v172 + 16) = xmmword_1D7273AE0;
    sub_1D6086744(v166);
    sub_1D711F844(1701869908, 0xE400000000000000, 0xD000000000000012, 0x80000001D73E40B0, (v172 + v171));
    v173 = type metadata accessor for FormatInspectionItem(0);
    (*(*(v173 - 8) + 56))(v172 + v171, 0, 1, v173);
    sub_1D6795150(0x697461726F636544, 0xEA00000000006E6FLL, 0, 0, v172, v212);
    swift_setDeallocating();
    sub_1D5EF5F0C(v172 + v171, sub_1D5EA74B8);
    swift_deallocClassInstance();
    *(v169 + 56) = &type metadata for FormatInspectionGroup;
    *(v169 + 64) = &off_1F518B2C0;
    v174 = swift_allocObject();
    *(v169 + 32) = v174;
    v175 = *&v212[16];
    *(v174 + 16) = *v212;
    *(v174 + 32) = v175;
    *(v174 + 48) = *&v212[32];
    v176 = a1[7];
    v235 = a1[6];
    v236 = v176;
    v237 = a1[8];
    v238 = *(a1 + 18);
    v177 = a1[3];
    v231 = a1[2];
    v232 = v177;
    v178 = a1[5];
    v233 = a1[4];
    v234 = v178;
    v179 = a1[1];
    v229 = *a1;
    v230 = v179;
    v213.i64[0] = v166;
    sub_1D6086744(v166);
    v180 = sub_1D7100E88(&v229, &v213);
    sub_1D6A7DA28(v213.u64[0]);
    *(v169 + 96) = &type metadata for FormatInspection;
    *(v169 + 104) = &off_1F51E3FD0;
    *(v169 + 72) = v180;
    sub_1D7073500(v169);
    swift_setDeallocating();
    sub_1D5E4F358(0);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    sub_1D6086768(v166);
  }
}

double sub_1D6AB1E6C@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  v7 = MEMORY[0x1E69E6F90];
  sub_1D5B5633C(0, &qword_1EC880490, sub_1D5EA74B8, MEMORY[0x1E69E6F90]);
  sub_1D5EA74B8(0);
  v22 = *(*(v8 - 8) + 72);
  v9 = (*(*(v8 - 8) + 80) + 32) & ~*(*(v8 - 8) + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1D7270C10;
  v11 = v10 + v9;

  sub_1D71202F0(0x726F7463656C6553, 0xE800000000000000, v5, v4, (v10 + v9));
  v12 = type metadata accessor for FormatInspectionItem(0);
  v13 = *(*(v12 - 8) + 56);
  v13(v11, 0, 1, v12);
  sub_1D5B5633C(0, &qword_1EC8803C0, sub_1D5E4F38C, v7);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7273AE0;
  *&v24[0] = v6;
  sub_1D6AAFB58(a2, v24);
  v16 = v15;
  sub_1D5C84FF4(v6);
  *(inited + 56) = &type metadata for FormatInspection;
  *(inited + 64) = &off_1F51E3FD0;
  *(inited + 32) = v16;
  v17 = sub_1D5F62BFC(inited);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1((inited + 32));
  v18 = sub_1D7073500(v17);

  sub_1D711AD20(0x65756C6156, 0xE500000000000000, v18, 0, 0, (v11 + v22));
  v13(v11 + v22, 0, 1, v12);
  sub_1D6795150(0, 0xE000000000000000, 0, 0, v10, v24);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  a3[3] = &type metadata for FormatInspectionGroup;
  a3[4] = &off_1F518B2C0;
  v19 = swift_allocObject();
  *a3 = v19;
  result = *v24;
  v21 = v24[1];
  *(v19 + 16) = v24[0];
  *(v19 + 32) = v21;
  *(v19 + 48) = v25;
  return result;
}

double sub_1D6AB2178@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = MEMORY[0x1E69E6F90];
  sub_1D5B5633C(0, &qword_1EC880490, sub_1D5EA74B8, MEMORY[0x1E69E6F90]);
  sub_1D5EA74B8(0);
  v24 = *(*(v7 - 8) + 72);
  v8 = (*(*(v7 - 8) + 80) + 32) & ~*(*(v7 - 8) + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1D7270C10;
  v10 = v9 + v8;
  v11 = type metadata accessor for FormatInspectionItem(0);
  v12 = (v9 + v8 + *(v11 + 24));
  *v12 = v3;
  v12[1] = v4;
  v13 = type metadata accessor for FormatInspectionItem.Value(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v13 - 8) + 56))(v12, 0, 1, v13);
  *v10 = xmmword_1D731B700;
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  v14 = v10 + *(v11 + 28);
  *v14 = 0;
  *(v14 + 8) = 0;
  *(v14 + 16) = -1;
  v15 = *(*(v11 - 8) + 56);
  v15(v10, 0, 1, v11);
  sub_1D5B5633C(0, &qword_1EC8803C0, sub_1D5E4F38C, v6);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7273AE0;
  *&v27[0] = v5;

  sub_1D6AAFB58(a2, v27);
  v18 = v17;
  sub_1D5C84FF4(v5);
  *(inited + 56) = &type metadata for FormatInspection;
  *(inited + 64) = &off_1F51E3FD0;
  *(inited + 32) = v18;
  v19 = sub_1D5F62BFC(inited);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1((inited + 32));
  v20 = sub_1D7073500(v19);

  sub_1D711AD20(0x65756C6156, 0xE500000000000000, v20, 0, 0, (v10 + v24));
  v15(v10 + v24, 0, 1, v11);
  sub_1D6795150(0, 0xE000000000000000, 0, 0, v9, v27);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  a3[3] = &type metadata for FormatInspectionGroup;
  a3[4] = &off_1F518B2C0;
  v21 = swift_allocObject();
  *a3 = v21;
  result = *v27;
  v23 = v27[1];
  *(v21 + 16) = v27[0];
  *(v21 + 32) = v23;
  *(v21 + 48) = v28;
  return result;
}

void sub_1D6AB24E8(unint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, unint64_t *a4@<X8>)
{
  sub_1D5FA8D3C(a2, *a1, a4);
  if (v4)
  {
    *a3 = v4;
  }
}

unint64_t sub_1D6AB2524(uint64_t a1)
{
  result = sub_1D6686220();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6AB254C(void *a1)
{
  a1[1] = sub_1D5C4C8EC();
  a1[2] = sub_1D6686110();
  result = sub_1D6AB2584();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6AB2584()
{
  result = qword_1EDF27650;
  if (!qword_1EDF27650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF27650);
  }

  return result;
}

void *sub_1D6AB25D8(void *result, uint64_t a2)
{
  if (a2 < 8)
  {
    *result = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 60);
  }

  else
  {
    *result = (8 * (a2 - 8)) | 0x8000000000000000;
  }

  return result;
}

uint64_t sub_1D6AB2614(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatDecorationContext(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D6AB2690(unint64_t *a1@<X0>, void *a2@<X1>, unint64_t *a3@<X8>)
{
  sub_1D5FA8D3C(*(v3 + 16), *a1, a3);
  if (v4)
  {
    *a2 = v4;
  }
}

uint64_t FeedItemImpressionProcessor.__allocating_init(contentPrefetchManager:recipeHistory:readingHistory:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  FeedItemImpressionProcessor.init(contentPrefetchManager:recipeHistory:readingHistory:)(a1, a2, a3);
  return v6;
}

char *sub_1D6AB273C(unint64_t a1, void *a2)
{
  v4 = sub_1D725891C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2[3];
  v10 = a2[4];
  v11 = __swift_project_boxed_opaque_existential_1(a2, v9);
  if (a1 >> 62)
  {
    v12 = sub_1D7263BFC();
  }

  else
  {
    v12 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v12)
  {
LABEL_13:
    sub_1D725890C();
    sub_1D7261C2C();

    return (*(v5 + 8))(v8, v4);
  }

  v29 = v11;
  v30 = MEMORY[0x1E69E7CC0];
  result = sub_1D5BFC364(0, v12 & ~(v12 >> 63), 0);
  if ((v12 & 0x8000000000000000) == 0)
  {
    v25[1] = v10;
    v25[2] = v9;
    v26 = v8;
    v27 = v5;
    v28 = v4;
    v14 = 0;
    v15 = v30;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x1DA6FB460](v14, a1);
      }

      else
      {
        v16 = *(a1 + 8 * v14 + 32);
      }

      v17 = v16;
      v18 = [v16 identifier];
      v19 = sub_1D726207C();
      v21 = v20;

      v30 = v15;
      v23 = *(v15 + 16);
      v22 = *(v15 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_1D5BFC364((v22 > 1), v23 + 1, 1);
        v15 = v30;
      }

      ++v14;
      *(v15 + 16) = v23 + 1;
      v24 = v15 + 16 * v23;
      *(v24 + 32) = v19;
      *(v24 + 40) = v21;
    }

    while (v12 != v14);
    v5 = v27;
    v4 = v28;
    v8 = v26;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

void sub_1D6AB296C(uint64_t a1, void *a2)
{
  sub_1D5B5D6A0();
  v3 = sub_1D726265C();
}

uint64_t FeedItemImpressionProcessor.deinit()
{
  sub_1D5BFB774(v0 + 16, &qword_1EDF35290, &qword_1EDF35298, &protocol descriptor for FeedItemContentPrefetchManagerType);

  return v0;
}

uint64_t FeedItemImpressionProcessor.__deallocating_deinit()
{
  FeedItemImpressionProcessor.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1D6AB2AF0(uint64_t a1)
{
  v2 = (v1 + 2);
  v3 = *v1;
  v29 = a1;
  v30 = v3;
  v4 = type metadata accessor for FeedItem(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v10);
  v12 = &v24 - v11;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v14 = sub_1D725CE8C();
  v28 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v24 - v16;
  sub_1D5C3AE10(v2, v35, &qword_1EDF35290, &qword_1EDF35298, &protocol descriptor for FeedItemContentPrefetchManagerType);
  v18 = v36;
  if (!v36)
  {
    return sub_1D5BFB774(v35, &qword_1EDF35290, &qword_1EDF35298, &protocol descriptor for FeedItemContentPrefetchManagerType);
  }

  v27 = v37;
  v26 = __swift_project_boxed_opaque_existential_1(v35, v36);
  v19 = swift_getAssociatedTypeWitness();
  v25 = v7;
  v20 = v19;
  v21 = swift_getAssociatedConformanceWitness();
  v31 = v20;
  v32 = AssociatedTypeWitness;
  v33 = v21;
  v34 = AssociatedConformanceWitness;
  sub_1D725E98C();
  sub_1D725E97C();
  sub_1D725CE7C();
  (*(v28 + 8))(v17, v14);
  v22 = v25;
  (*(*(v30 + 96) + 8))(AssociatedTypeWitness);
  (*(v9 + 8))(v12, AssociatedTypeWitness);
  (*(v27 + 8))(v22, v18);
  sub_1D5BCA92C(v22, type metadata accessor for FeedItem);
  return __swift_destroy_boxed_opaque_existential_1(v35);
}

uint64_t sub_1D6AB2E80(uint64_t a1)
{
  v46 = a1;
  v2 = *v1;
  v48 = v1 + 2;
  v3 = type metadata accessor for FeedHeadline(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v49 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for FeedRecipe(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v40 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = v1;
  v44 = v2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v10);
  v12 = &v39 - v11;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v13 = sub_1D725CE8C();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v39 - v16;
  v45 = type metadata accessor for FeedItem(0);
  MEMORY[0x1EEE9AC00](v45, v18);
  v47 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v39 - v22;
  v24 = swift_getAssociatedTypeWitness();
  v25 = swift_getAssociatedConformanceWitness();
  v50[0] = v24;
  v50[1] = AssociatedTypeWitness;
  v50[2] = v25;
  v51 = AssociatedConformanceWitness;
  sub_1D725DDCC();
  sub_1D725DDBC();
  sub_1D725CE7C();
  v26 = v13;
  v27 = v43;
  (*(v14 + 8))(v17, v26);
  (*(*(v44 + 96) + 8))(AssociatedTypeWitness);
  (*(v42 + 8))(v12, AssociatedTypeWitness);
  sub_1D5C3AE10(v48, v50, &qword_1EDF35290, &qword_1EDF35298, &protocol descriptor for FeedItemContentPrefetchManagerType);
  v28 = v51;
  if (v51)
  {
    v29 = v52;
    __swift_project_boxed_opaque_existential_1(v50, v51);
    (*(v29 + 16))(v23, v28, v29);
    __swift_destroy_boxed_opaque_existential_1(v50);
  }

  else
  {
    sub_1D5BFB774(v50, &qword_1EDF35290, &qword_1EDF35298, &protocol descriptor for FeedItemContentPrefetchManagerType);
  }

  v30 = v47;
  sub_1D5BC8CF4(v23, v47);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v32 = v49;
  if (EnumCaseMultiPayload == 3)
  {
    sub_1D5BE30BC(v30, v49, type metadata accessor for FeedHeadline);
    swift_beginAccess();
    if (v27[8])
    {
      swift_endAccess();
      v50[0] = *(v32 + 40);
      swift_getKeyPath();

      swift_unknownObjectRetain();
      sub_1D725CEEC();
      swift_unknownObjectRelease();

      v35 = type metadata accessor for FeedHeadline;
      goto LABEL_10;
    }

    v38 = type metadata accessor for FeedHeadline;
  }

  else
  {
    if (EnumCaseMultiPayload != 12)
    {
      sub_1D5BCA92C(v23, type metadata accessor for FeedItem);
      v36 = v30;
      return sub_1D5BCA92C(v36, type metadata accessor for FeedItem);
    }

    v32 = v40;
    sub_1D5BE30BC(v30, v40, type metadata accessor for FeedRecipe);
    swift_beginAccess();
    if (v27[7])
    {
      swift_endAccess();
      v50[0] = *(v32 + 56);
      v33 = v50[0];
      swift_getKeyPath();

      v34 = v33;
      sub_1D725CEEC();

      v35 = type metadata accessor for FeedRecipe;
LABEL_10:
      sub_1D5BCA92C(v32, v35);
      v36 = v23;
      return sub_1D5BCA92C(v36, type metadata accessor for FeedItem);
    }

    v38 = type metadata accessor for FeedRecipe;
  }

  sub_1D5BCA92C(v32, v38);
  sub_1D5BCA92C(v23, type metadata accessor for FeedItem);
  return swift_endAccess();
}

uint64_t sub_1D6AB34B4(uint64_t a1)
{
  v2 = (v1 + 2);
  v3 = *v1;
  v29 = a1;
  v30 = v3;
  v4 = type metadata accessor for FeedItem(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v10);
  v12 = &v24 - v11;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v14 = sub_1D725CE8C();
  v28 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v24 - v16;
  sub_1D5C3AE10(v2, v35, &qword_1EDF35290, &qword_1EDF35298, &protocol descriptor for FeedItemContentPrefetchManagerType);
  v18 = v36;
  if (!v36)
  {
    return sub_1D5BFB774(v35, &qword_1EDF35290, &qword_1EDF35298, &protocol descriptor for FeedItemContentPrefetchManagerType);
  }

  v27 = v37;
  v26 = __swift_project_boxed_opaque_existential_1(v35, v36);
  v19 = swift_getAssociatedTypeWitness();
  v25 = v7;
  v20 = v19;
  v21 = swift_getAssociatedConformanceWitness();
  v31 = v20;
  v32 = AssociatedTypeWitness;
  v33 = v21;
  v34 = AssociatedConformanceWitness;
  sub_1D725DDCC();
  sub_1D725DDBC();
  sub_1D725CE7C();
  (*(v28 + 8))(v17, v14);
  v22 = v25;
  (*(*(v30 + 96) + 8))(AssociatedTypeWitness);
  (*(v9 + 8))(v12, AssociatedTypeWitness);
  (*(v27 + 16))(v22, v18);
  sub_1D5BCA92C(v22, type metadata accessor for FeedItem);
  return __swift_destroy_boxed_opaque_existential_1(v35);
}

uint64_t sub_1D6AB387C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 89))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 72);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D6AB38C4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 89) = 1;
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
      *(result + 72) = (a2 - 1);
      return result;
    }

    *(result + 89) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1D6AB392C@<X0>(unint64_t *a1@<X8>)
{
  result = ContextMenu.ItemOptions.description.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void *sub_1D6AB3968(__int128 *a1, _OWORD *a2)
{
  v375 = type metadata accessor for FeedRecipe.State(0);
  MEMORY[0x1EEE9AC00](v375, v4);
  v384 = &v370 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1E69E6720];
  sub_1D5D5058C(0, qword_1EDF34D20, type metadata accessor for FeedRecipe, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v385 = &v370 - v9;
  v10 = type metadata accessor for FeedHeadline(0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v370 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v380 = &v370 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  ObjectType = &v370 - v20;
  *&v388 = type metadata accessor for FeedHeadline.State(0);
  MEMORY[0x1EEE9AC00](v388, v21);
  v387 = &v370 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v24);
  v376 = &v370 - v25;
  MEMORY[0x1EEE9AC00](v26, v27);
  v386 = &v370 - v28;
  sub_1D5D504A0(0);
  MEMORY[0x1EEE9AC00](v29 - 8, v30);
  v383 = &v370 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32, v33);
  v382 = (&v370 - v34);
  MEMORY[0x1EEE9AC00](v35, v36);
  v381 = &v370 - v37;
  sub_1D5D5058C(0, qword_1EDF42030, type metadata accessor for FeedHeadline, v6);
  MEMORY[0x1EEE9AC00](v38 - 8, v39);
  v41 = &v370 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42, v43);
  v378 = &v370 - v44;
  MEMORY[0x1EEE9AC00](v45, v46);
  v377 = &v370 - v47;
  sub_1D5EA74B8(0);
  v391 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48, v49);
  v52 = (&v370 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0));
  v53 = a1[7];
  v426 = a1[6];
  v427 = v53;
  v428 = a1[8];
  v429 = *(a1 + 18);
  v54 = a1[3];
  v422 = a1[2];
  v423 = v54;
  v55 = a1[5];
  v424 = a1[4];
  v425 = v55;
  v56 = a1[1];
  v420 = *a1;
  v421 = v56;
  v57 = a2[3];
  v431 = a2[2];
  v432 = v57;
  v433[0] = a2[4];
  v58 = v433[0];
  *(v433 + 9) = *(a2 + 73);
  v59 = a2[1];
  v430[0] = *a2;
  v430[1] = v59;
  *&v437[25] = *(v433 + 9);
  *v437 = v57;
  *&v437[16] = v58;
  v435 = v59;
  v436 = v431;
  v434 = v430[0];
  if (!*(&v58 + 1))
  {
LABEL_5:
    v62 = MEMORY[0x1E69E7CC0];

    return sub_1D7073500(v62);
  }

  v371 = v11;
  v372 = v14;
  v373 = v10;
  v389 = v50;
  v60 = *(*(&v58 + 1) + 16);
  if (v60)
  {
    sub_1D5E24188(*(*(&v58 + 1) + 16), 0);
    v390 = sub_1D5E2A8B4();
    v61 = v416;
    v374 = *&v417[1];
    sub_1D6AB756C(v430, &v402);

    sub_1D5B87E38(v61);
    if (v390 != v60)
    {
      __break(1u);
      goto LABEL_5;
    }
  }

  else
  {
    v64 = a2[3];
    v404 = a2[2];
    v405 = v64;
    v406[0] = a2[4];
    *(v406 + 9) = *(a2 + 73);
    v65 = a2[1];
    v402 = *a2;
    v403 = v65;
    sub_1D6A695D4(&v402, &v416);
  }

  v66 = sub_1D72626EC();

  v67 = *(v66 + 16);
  if (v67)
  {
    v374 = v41;
    *&v402 = MEMORY[0x1E69E7CC0];
    sub_1D69972A4(0, v67, 0);
    v68 = v402;
    v69 = 32;
    v390 = v66;
    do
    {
      LOBYTE(v416) = *(v66 + v69);
      v70 = ContextMenu.ItemOptions.description.getter();
      v72 = v71;
      v73 = type metadata accessor for FormatInspectionItem(0);
      v74 = (v52 + *(v73 + 24));
      *v74 = 0;
      v74[1] = 0xE000000000000000;
      v75 = type metadata accessor for FormatInspectionItem.Value(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v75 - 8) + 56))(v74, 0, 1, v75);
      *v52 = v70;
      v52[1] = v72;
      v52[2] = 0;
      v52[3] = 0;
      v76 = v52 + *(v73 + 28);
      *v76 = 0;
      *(v76 + 1) = 0;
      v76[16] = -1;
      (*(*(v73 - 8) + 56))(v52, 0, 1, v73);
      *&v402 = v68;
      v78 = *(v68 + 16);
      v77 = *(v68 + 24);
      if (v78 >= v77 >> 1)
      {
        sub_1D69972A4((v77 > 1), v78 + 1, 1);
        v68 = v402;
      }

      *(v68 + 16) = v78 + 1;
      sub_1D5CAD8D4(v52, v68 + ((*(v391 + 80) + 32) & ~*(v391 + 80)) + v391[9] * v78, sub_1D5EA74B8);
      ++v69;
      --v67;
      v66 = v390;
    }

    while (v67);

    v41 = v374;
  }

  else
  {

    v68 = MEMORY[0x1E69E7CC0];
  }

  sub_1D6795150(0xD000000000000019, 0x80000001D73E4120, 0, 0, v68, &v411);

  v79 = v434;
  switch(v437[18])
  {
    case 1:
      v250 = MEMORY[0x1E69E6F90];
      sub_1D5D5058C(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
      v251 = swift_allocObject();
      *(v251 + 16) = xmmword_1D7279970;
      sub_1D5D5058C(0, &qword_1EC880490, sub_1D5EA74B8, v250);
      v252 = (*(v391 + 80) + 32) & ~*(v391 + 80);
      v387 = v391[9];
      v253 = swift_allocObject();
      v253[1] = xmmword_1D7270C10;
      v391 = v253;
      v254 = v253 + v252;
      swift_unknownObjectRetain();
      sub_1D711F844(0x70795420756E654DLL, 0xE900000000000065, 0x6C50206F69647541, 0xEE006B6361627961, v254);
      v255 = type metadata accessor for FormatInspectionItem(0);
      v256 = *(v255 - 8);
      v257 = *(v256 + 56);
      v390 = v254;
      v385 = v257;
      v386 = v255;
      v384 = (v256 + 56);
      (v257)(v254, 0, 1);
      v258 = sub_1D726045C();
      v259 = v382;
      (*(*(v258 - 8) + 56))(v382, 1, 1, v258);
      v260 = v388;
      v261 = *(v388 + 24);
      v262 = type metadata accessor for SharedItem(0);
      v263 = v376;
      (*(*(v262 - 8) + 56))(v376 + v261, 1, 1, v262);
      *v263 = 258;
      v383 = v260[7];
      *(v263 + v383) = 1;
      v381 = v260[8];
      *(v263 + v381) = 0;
      v377 = v260[9];
      *(v263 + v377) = 0;
      *&v388 = v260[10];
      *(v263 + v388) = 0;
      v264 = v373;
      v265 = v380;
      *(v380 + v373[12]) = xmmword_1D727C330;
      ObjectType = swift_getObjectType();
      v266 = [swift_unknownObjectRetain() identifier];
      v267 = sub_1D726207C();
      v269 = v268;

      *v265 = v267;
      *(v265 + 8) = v269;
      v270 = v264;
      *(v265 + 40) = v79;
      *(v265 + 48) = 0;
      sub_1D5BFA014(v259, v265 + v264[11], sub_1D5D504A0);
      sub_1D5BFA014(v263, v265 + v264[10], type metadata accessor for FeedHeadline.State);
      *(v265 + v264[14]) = 0;
      *(v265 + 56) = 0;
      v271 = [swift_unknownObjectRetain() title];
      if (v271)
      {
        v272 = v271;
        v273 = [v271 ne_isNaturallyRTL];

        v274 = v273;
      }

      else
      {
        v274 = 0;
      }

      *(v265 + 16) = v274;
      *(v265 + 24) = 0;
      sub_1D5BC7BD4(&v402);
      sub_1D6AB75E0(&v434);
      if (*(v263 + v381) - 1 <= 1 && (v402 & 0x1000) == 0)
      {
        *&v402 = v402 | 0x1000;
      }

      v354 = *(v263 + v388);
      v355 = 0x80000000;
      if (!*(v263 + v388))
      {
        v355 = 0x100000000;
      }

      if ((v402 & v355) != 0)
      {
        v355 = 0;
      }

      *(v265 + 32) = v402 | v355;
      if (*(v263 + v383))
      {
        v356 = v378;
        if (*(v263 + v377))
        {
          sub_1D6AB7724(v263, type metadata accessor for FeedHeadline.State);
          sub_1D6AB7724(v382, sub_1D5D504A0);
          v357 = 1;
        }

        else if (v354)
        {
          v369 = [v79 sourceChannel];
          sub_1D6AB7724(v263, type metadata accessor for FeedHeadline.State);
          sub_1D6AB7724(v382, sub_1D5D504A0);
          v357 = 2;
          if (v369)
          {
            v357 = v369;
          }
        }

        else
        {
          sub_1D6AB7724(v263, type metadata accessor for FeedHeadline.State);
          sub_1D6AB7724(v382, sub_1D5D504A0);
          v357 = 2;
        }
      }

      else
      {
        sub_1D6AB7724(v263, type metadata accessor for FeedHeadline.State);
        sub_1D6AB7724(v382, sub_1D5D504A0);
        v357 = 0;
        v356 = v378;
      }

      *(v265 + v270[13]) = v357;
      sub_1D5CAD8D4(v265, v356, type metadata accessor for FeedHeadline);
      (*(v371 + 56))(v356, 0, 1, v270);
      v358 = v390;
      v359 = v387;
      sub_1D711E4BC(0x656E696C64616548, 0xE800000000000000, v356, (v390 + v387));
      (v385)(v358 + v359, 0, 1, v386);
      sub_1D6795150(0x20747865746E6F43, 0xEC000000756E654DLL, 0, 0, v391, &v416);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      *(v251 + 56) = &type metadata for FormatInspectionGroup;
      *(v251 + 64) = &off_1F518B2C0;
      v360 = swift_allocObject();
      *(v251 + 32) = v360;
      v361 = v417[0];
      *(v360 + 16) = v416;
      *(v360 + 32) = v361;
      *(v360 + 48) = *&v417[1];
      *(v251 + 96) = &type metadata for FormatInspectionGroup;
      *(v251 + 104) = &off_1F518B2C0;
      v362 = swift_allocObject();
      *(v251 + 72) = v362;
      v363 = v412;
      *(v362 + 16) = v411;
      *(v362 + 32) = v363;
      *(v362 + 48) = v413;
      v407 = v426;
      v408 = v427;
      v409 = v428;
      v410 = v429;
      v404 = v422;
      v405 = v423;
      v406[0] = v424;
      v406[1] = v425;
      v402 = v420;
      v403 = v421;
      *&v397 = *&v437[32];
      BYTE8(v397) = v437[40];
      sub_1D5EC9444(*&v437[32], v437[40]);
      v364 = sub_1D5EC750C(&v402, &v397);
      sub_1D6A69684(v397, BYTE8(v397));
      *(v251 + 136) = &type metadata for FormatInspection;
      *(v251 + 144) = &off_1F51E3FD0;
      *(v251 + 112) = v364;
      v243 = sub_1D7073500(v251);
      swift_setDeallocating();
      sub_1D5E4F358(0);
      swift_arrayDestroy();
      goto LABEL_42;
    case 2:
      v374 = v41;
      swift_unknownObjectRetain();
      v177 = MEMORY[0x1E69E6F90];
      sub_1D5D5058C(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
      v390 = swift_allocObject();
      *(v390 + 16) = xmmword_1D7279970;
      sub_1D5D5058C(0, &qword_1EC880490, sub_1D5EA74B8, v177);
      v178 = (*(v391 + 80) + 32) & ~*(v391 + 80);
      v385 = v391[9];
      v179 = swift_allocObject();
      v179[1] = xmmword_1D7270C10;
      v391 = v179;
      v180 = v179 + v178;
      sub_1D711F844(0x70795420756E654DLL, 0xE900000000000065, 0x656E696C64616548, 0xE800000000000000, v179 + v178);
      v181 = type metadata accessor for FormatInspectionItem(0);
      v182 = *(v181 - 8);
      v183 = *(v182 + 56);
      v386 = v180;
      v384 = v181;
      v381 = v182 + 56;
      v382 = v183;
      (v183)(v180, 0, 1);
      v184 = sub_1D726045C();
      v185 = v383;
      (*(*(v184 - 8) + 56))(v383, 1, 1, v184);
      v186 = v388;
      v187 = *(v388 + 24);
      v188 = type metadata accessor for SharedItem(0);
      v189 = v387;
      (*(*(v188 - 8) + 56))(v387 + v187, 1, 1, v188);
      *v189 = 258;
      v380 = v186[7];
      *(v189 + v380) = 1;
      ObjectType = v186[8];
      *(v189 + ObjectType) = 0;
      v378 = v186[9];
      *(v189 + v378) = 0;
      v190 = v186[10];
      *(v189 + v190) = 0;
      v191 = v372;
      v192 = v373;
      *&v372[v373[12]] = xmmword_1D727C330;
      *&v388 = swift_getObjectType();
      v193 = [swift_unknownObjectRetain() identifier];
      v194 = sub_1D726207C();
      v196 = v195;

      *v191 = v194;
      *(v191 + 1) = v196;
      *(v191 + 5) = v79;
      *(v191 + 6) = 0;
      sub_1D5BFA014(v185, &v191[v192[11]], sub_1D5D504A0);
      sub_1D5BFA014(v189, &v191[v192[10]], type metadata accessor for FeedHeadline.State);
      *&v191[v192[14]] = 0;
      v191[56] = 0;
      v197 = [swift_unknownObjectRetain() title];
      if (v197)
      {
        v198 = v197;
        v199 = [v197 ne_isNaturallyRTL];

        v200 = v199;
      }

      else
      {
        v200 = 0;
      }

      v330 = v372;
      *(v372 + 2) = v200;
      v330[24] = 0;
      sub_1D5BC7BD4(&v402);
      swift_unknownObjectRelease();
      v331 = v387;
      if (*(v387 + ObjectType) - 1 <= 1 && (v402 & 0x1000) == 0)
      {
        *&v402 = v402 | 0x1000;
      }

      v332 = *(v387 + v190);
      v333 = 0x80000000;
      if (!*(v387 + v190))
      {
        v333 = 0x100000000;
      }

      if ((v402 & v333) != 0)
      {
        v333 = 0;
      }

      *(v372 + 4) = v402 | v333;
      if (*(v331 + v380))
      {
        v334 = v374;
        if (*(v331 + v378))
        {
          sub_1D6AB7724(v331, type metadata accessor for FeedHeadline.State);
          sub_1D6AB7724(v383, sub_1D5D504A0);
          v335 = 1;
        }

        else if (v332)
        {
          v365 = v331;
          v366 = [v79 sourceChannel];
          sub_1D6AB7724(v365, type metadata accessor for FeedHeadline.State);
          sub_1D6AB7724(v383, sub_1D5D504A0);
          v335 = 2;
          if (v366)
          {
            v335 = v366;
          }
        }

        else
        {
          sub_1D6AB7724(v331, type metadata accessor for FeedHeadline.State);
          sub_1D6AB7724(v383, sub_1D5D504A0);
          v335 = 2;
        }
      }

      else
      {
        sub_1D6AB7724(v331, type metadata accessor for FeedHeadline.State);
        sub_1D6AB7724(v383, sub_1D5D504A0);
        v335 = 0;
        v334 = v374;
      }

      v336 = v372;
      v337 = v373;
      *&v372[v373[13]] = v335;
      sub_1D5CAD8D4(v336, v334, type metadata accessor for FeedHeadline);
      (*(v371 + 56))(v334, 0, 1, v337);
      v338 = v385;
      v339 = v386;
      sub_1D711E4BC(0x656E696C64616548, 0xE800000000000000, v334, &v385[v386]);
      (v382)(&v338[v339], 0, 1, v384);
      goto LABEL_75;
    case 3:
      v223 = v434;
      v224 = MEMORY[0x1E69E6F90];
      sub_1D5D5058C(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
      v225 = swift_allocObject();
      *(v225 + 16) = xmmword_1D7279970;
      sub_1D5D5058C(0, &qword_1EC880490, sub_1D5EA74B8, v224);
      v390 = v391[9];
      v226 = (*(v391 + 80) + 32) & ~*(v391 + 80);
      v227 = swift_allocObject();
      *(v227 + 16) = xmmword_1D7270C10;
      v228 = (v227 + v226);
      sub_1D711F844(0x70795420756E654DLL, 0xE900000000000065, 0x6575737349, 0xE500000000000000, v228);
      v229 = type metadata accessor for FormatInspectionItem(0);
      v230 = *(v229 - 8);
      v387 = *(v230 + 56);
      *&v388 = v230 + 56;
      (v387)(v228, 0, 1, v229);
      v231 = [objc_allocWithZone(MEMORY[0x1E69B52B8]) init];
      v232 = v223;
      v391 = v232;
      v233 = [v232 identifier];
      v234 = sub_1D726207C();
      v236 = v235;

      *&v397 = v232;
      *(&v397 + 1) = v234;
      *&v398 = v236;
      WORD4(v398) = 0;
      *(&v398 + 10) = *&v395[7];
      HIWORD(v398) = v396;
      *&v399 = 0;
      BYTE8(v399) = 0;
      *(&v399 + 9) = *v395;
      HIDWORD(v399) = *&v395[3];
      *&v400 = 1;
      *(&v400 + 1) = v231;
      LOBYTE(v401[0]) = 0;
      *(v401 + 1) = *v394;
      DWORD1(v401[0]) = *&v394[3];
      *(v401 + 8) = xmmword_1D7279980;
      *(&v401[1] + 8) = 0u;
      *(&v401[2] + 8) = 0u;
      *(&v401[3] + 1) = 0;
      *&v401[4] = 5;
      BYTE8(v401[4]) = 0;
      nullsub_1();
      v418[2] = v401[1];
      v418[3] = v401[2];
      v419[0] = v401[3];
      *(v419 + 9) = *(&v401[3] + 9);
      v417[1] = v399;
      v418[0] = v400;
      v418[1] = v401[0];
      v416 = v397;
      v417[0] = v398;
      v237 = v390;
      sub_1D711EB00(0x6575737349, 0xE500000000000000, &v416, &v228[v390]);
      (v387)(&v228[v237], 0, 1, v229);
      sub_1D6795150(0x20747865746E6F43, 0xEC000000756E654DLL, 0, 0, v227, v414);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      *(v225 + 56) = &type metadata for FormatInspectionGroup;
      *(v225 + 64) = &off_1F518B2C0;
      v238 = swift_allocObject();
      *(v225 + 32) = v238;
      v239 = v414[1];
      *(v238 + 16) = v414[0];
      *(v238 + 32) = v239;
      *(v238 + 48) = v415;
      *(v225 + 96) = &type metadata for FormatInspectionGroup;
      *(v225 + 104) = &off_1F518B2C0;
      v240 = swift_allocObject();
      *(v225 + 72) = v240;
      v241 = v412;
      *(v240 + 16) = v411;
      *(v240 + 32) = v241;
      *(v240 + 48) = v413;
      v407 = v426;
      v408 = v427;
      v409 = v428;
      v410 = v429;
      v404 = v422;
      v405 = v423;
      v406[0] = v424;
      v406[1] = v425;
      v402 = v420;
      v403 = v421;
      v392 = *&v437[32];
      v393 = v437[40];
      sub_1D5EC9444(*&v437[32], v437[40]);
      v242 = sub_1D5EC750C(&v402, &v392);
      sub_1D6A69684(v392, v393);
      *(v225 + 136) = &type metadata for FormatInspection;
      *(v225 + 144) = &off_1F51E3FD0;
      *(v225 + 112) = v242;
      v243 = sub_1D7073500(v225);
      swift_setDeallocating();
      sub_1D5E4F358(0);
      swift_arrayDestroy();
      swift_deallocClassInstance();

      break;
    case 4:
      v128 = MEMORY[0x1E69E6F90];
      sub_1D5D5058C(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
      v105 = swift_allocObject();
      v388 = xmmword_1D7279970;
      *(v105 + 16) = xmmword_1D7279970;
      sub_1D5D5058C(0, &qword_1EC880490, sub_1D5EA74B8, v128);
      v129 = v391[9];
      v130 = (*(v391 + 80) + 32) & ~*(v391 + 80);
      v390 = 2 * v129;
      v131 = swift_allocObject();
      v391 = v131;
      v131[1] = v388;
      v132 = v131 + v130;
      swift_unknownObjectRetain();
      sub_1D711F844(0x70795420756E654DLL, 0xE900000000000065, 6775124, 0xE300000000000000, v132);
      v133 = type metadata accessor for FormatInspectionItem(0);
      v134 = *(v133 - 8);
      v387 = *(v134 + 56);
      *&v388 = v134 + 56;
      (v387)(v132, 0, 1, v133);
      swift_unknownObjectRetain();
      v135 = [v79 identifier];
      v136 = sub_1D726207C();
      v138 = v137;

      v406[1] = xmmword_1D7279980;
      v407 = 0u;
      v408 = 0u;
      v409 = 0u;
      LOBYTE(v410) = 0;
      *&v402 = v136;
      *(&v402 + 1) = v138;
      *&v403 = v79;
      BYTE8(v403) = 0;
      *&v405 = 0;
      *(&v405 + 1) = 0xE000000000000000;
      *&v404 = 0;
      BYTE8(v404) = 0;
      *&v406[0] = 0;
      *(&v406[0] + 1) = MEMORY[0x1E69E7CD0];
      sub_1D7121274(6775124, 0xE300000000000000, &v402, &v132[v129]);
      v139 = v387;
      (v387)(&v132[v129], 0, 1, v133);
      v140 = FCFeedDescriptorConfiguration.description.getter(*(&v79 + 1));
      v141 = v390;
      v143 = sub_1D711F844(0xD000000000000012, 0x80000001D73E4150, v140, v142, &v132[v390]);
      v139(&v132[v141], 0, 1, v133, v143);
      sub_1D6795150(0x20747865746E6F43, 0xEC000000756E654DLL, 0, 0, v391, &v416);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      *(v105 + 56) = &type metadata for FormatInspectionGroup;
      *(v105 + 64) = &off_1F518B2C0;
      v144 = swift_allocObject();
      *(v105 + 32) = v144;
      v145 = v417[0];
      *(v144 + 16) = v416;
      *(v144 + 32) = v145;
      *(v144 + 48) = *&v417[1];
      *(v105 + 96) = &type metadata for FormatInspectionGroup;
      *(v105 + 104) = &off_1F518B2C0;
      v146 = swift_allocObject();
      *(v105 + 72) = v146;
      v147 = v412;
      *(v146 + 16) = v411;
      *(v146 + 32) = v147;
      *(v146 + 48) = v413;
      v407 = v426;
      v408 = v427;
      v409 = v428;
      v410 = v429;
      v404 = v422;
      v405 = v423;
      v406[0] = v424;
      v406[1] = v425;
      v402 = v420;
      v403 = v421;
      goto LABEL_39;
    case 5:
      v275 = MEMORY[0x1E69E6F90];
      sub_1D5D5058C(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
      v105 = swift_allocObject();
      *(v105 + 16) = xmmword_1D7279970;
      sub_1D5D5058C(0, &qword_1EC880490, sub_1D5EA74B8, v275);
      v276 = v391[9];
      v277 = (*(v391 + 80) + 32) & ~*(v391 + 80);
      v124 = swift_allocObject();
      *(v124 + 16) = xmmword_1D7270C10;
      v278 = (v124 + v277);

      sub_1D711F844(0x70795420756E654DLL, 0xE900000000000065, 0x65726F6353, 0xE500000000000000, v278);
      v279 = type metadata accessor for FormatInspectionItem(0);
      v280 = *(*(v279 - 8) + 56);
      v280(v278, 0, 1, v279);

      sub_1D7129D9C(0x65726F6353, 0xE500000000000000, v79, &v278[v276]);
      v280(&v278[v276], 0, 1, v279);
      goto LABEL_38;
    case 6:
      v297 = MEMORY[0x1E69E6F90];
      sub_1D5D5058C(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
      v105 = swift_allocObject();
      *(v105 + 16) = xmmword_1D7279970;
      sub_1D5D5058C(0, &qword_1EC880490, sub_1D5EA74B8, v297);
      v298 = v391[9];
      v299 = (*(v391 + 80) + 32) & ~*(v391 + 80);
      v124 = swift_allocObject();
      *(v124 + 16) = xmmword_1D7270C10;
      v300 = (v124 + v299);

      sub_1D711F844(0x70795420756E654DLL, 0xE900000000000065, 0x676E69646E617453, 0xE800000000000000, v300);
      v301 = type metadata accessor for FormatInspectionItem(0);
      v302 = *(*(v301 - 8) + 56);
      v302(v300, 0, 1, v301);

      sub_1D712A028(0x676E69646E617453, 0xE800000000000000, v79, &v300[v298]);
      v302(&v300[v298], 0, 1, v301);
      goto LABEL_38;
    case 7:
      v244 = MEMORY[0x1E69E6F90];
      sub_1D5D5058C(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
      v105 = swift_allocObject();
      *(v105 + 16) = xmmword_1D7279970;
      sub_1D5D5058C(0, &qword_1EC880490, sub_1D5EA74B8, v244);
      v245 = v391[9];
      v246 = (*(v391 + 80) + 32) & ~*(v391 + 80);
      v124 = swift_allocObject();
      *(v124 + 16) = xmmword_1D7270C10;
      v247 = (v124 + v246);

      sub_1D711F844(0x70795420756E654DLL, 0xE900000000000065, 0x74656B63617242, 0xE700000000000000, v247);
      v248 = type metadata accessor for FormatInspectionItem(0);
      v249 = *(*(v248 - 8) + 56);
      v249(v247, 0, 1, v248);

      sub_1D712A040(0x74656B63617242, 0xE700000000000000, v79, &v247[v245]);
      v249(&v247[v245], 0, 1, v248);
      goto LABEL_38;
    case 8:
      v309 = MEMORY[0x1E69E6F90];
      sub_1D5D5058C(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
      v105 = swift_allocObject();
      *(v105 + 16) = xmmword_1D7279970;
      sub_1D5D5058C(0, &qword_1EC880490, sub_1D5EA74B8, v309);
      v310 = v391[9];
      v311 = (*(v391 + 80) + 32) & ~*(v391 + 80);
      v124 = swift_allocObject();
      *(v124 + 16) = xmmword_1D7270C10;
      v312 = (v124 + v311);

      sub_1D711F844(0x70795420756E654DLL, 0xE900000000000065, 0x726F635320786F42, 0xE900000000000065, v312);
      v313 = type metadata accessor for FormatInspectionItem(0);
      v314 = *(*(v313 - 8) + 56);
      v314(v312, 0, 1, v313);

      sub_1D712A394(0x726F635320786F42, 0xE900000000000065, v79, &v312[v310]);
      v314(&v312[v310], 0, 1, v313);
      goto LABEL_38;
    case 9:
      v171 = MEMORY[0x1E69E6F90];
      sub_1D5D5058C(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
      v105 = swift_allocObject();
      *(v105 + 16) = xmmword_1D7279970;
      sub_1D5D5058C(0, &qword_1EC880490, sub_1D5EA74B8, v171);
      v172 = v391[9];
      v173 = (*(v391 + 80) + 32) & ~*(v391 + 80);
      v124 = swift_allocObject();
      *(v124 + 16) = xmmword_1D7270C10;
      v174 = (v124 + v173);

      sub_1D711F844(0x70795420756E654DLL, 0xE900000000000065, 0x6F635320656E694CLL, 0xEA00000000006572, v174);
      v175 = type metadata accessor for FormatInspectionItem(0);
      v176 = *(*(v175 - 8) + 56);
      v176(v174, 0, 1, v175);

      sub_1D712A3AC(0x6F635320656E694CLL, 0xEA00000000006572, v79, &v174[v172]);
      v176(&v174[v172], 0, 1, v175);
      goto LABEL_38;
    case 0xA:
      v303 = MEMORY[0x1E69E6F90];
      sub_1D5D5058C(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
      v105 = swift_allocObject();
      *(v105 + 16) = xmmword_1D7279970;
      sub_1D5D5058C(0, &qword_1EC880490, sub_1D5EA74B8, v303);
      v304 = v391[9];
      v305 = (*(v391 + 80) + 32) & ~*(v391 + 80);
      v124 = swift_allocObject();
      *(v124 + 16) = xmmword_1D7270C10;
      v306 = (v124 + v305);

      sub_1D711F844(0x70795420756E654DLL, 0xE900000000000065, 0x52207972756A6E49, 0xED000074726F7065, v306);
      v307 = type metadata accessor for FormatInspectionItem(0);
      v308 = *(*(v307 - 8) + 56);
      v308(v306, 0, 1, v307);

      sub_1D712A3C4(0x52207972756A6E49, 0xED000074726F7065, v79, &v306[v304]);
      v308(&v306[v304], 0, 1, v307);
      goto LABEL_38;
    case 0xB:
      v121 = MEMORY[0x1E69E6F90];
      sub_1D5D5058C(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
      v105 = swift_allocObject();
      *(v105 + 16) = xmmword_1D7279970;
      sub_1D5D5058C(0, &qword_1EC880490, sub_1D5EA74B8, v121);
      v122 = v391[9];
      v123 = (*(v391 + 80) + 32) & ~*(v391 + 80);
      v124 = swift_allocObject();
      *(v124 + 16) = xmmword_1D7270C10;
      v125 = (v124 + v123);

      sub_1D711F844(0x70795420756E654DLL, 0xE900000000000065, 0x79616C502079654BLL, 0xEA00000000007265, v125);
      v126 = type metadata accessor for FormatInspectionItem(0);
      v127 = *(*(v126 - 8) + 56);
      v127(v125, 0, 1, v126);

      sub_1D712A3DC(0x79616C502079654BLL, 0xEB00000000737265, v79, &v125[v122]);
      v127(&v125[v122], 0, 1, v126);
LABEL_38:
      sub_1D6795150(0x20747865746E6F43, 0xEC000000756E654DLL, 0, 0, v124, &v416);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      *(v105 + 56) = &type metadata for FormatInspectionGroup;
      *(v105 + 64) = &off_1F518B2C0;
      v315 = swift_allocObject();
      *(v105 + 32) = v315;
      v316 = v417[0];
      *(v315 + 16) = v416;
      *(v315 + 32) = v316;
      *(v315 + 48) = *&v417[1];
      *(v105 + 96) = &type metadata for FormatInspectionGroup;
      *(v105 + 104) = &off_1F518B2C0;
      v317 = swift_allocObject();
      *(v105 + 72) = v317;
      v318 = v412;
      *(v317 + 16) = v411;
      *(v317 + 32) = v318;
      *(v317 + 48) = v413;
      v407 = v426;
      v408 = v427;
      v409 = v428;
      v410 = v429;
      v404 = v422;
      v405 = v423;
      v406[0] = v424;
      v406[1] = v425;
      v402 = v420;
      v403 = v421;
LABEL_39:
      *&v397 = *&v437[32];
      BYTE8(v397) = v437[40];
      sub_1D5EC9444(*&v437[32], v437[40]);
      v118 = sub_1D5EC750C(&v402, &v397);
      v119 = v397;
      v120 = BYTE8(v397);
      goto LABEL_40;
    case 0xC:
      v148 = MEMORY[0x1E69E6F90];
      sub_1D5D5058C(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
      *&v388 = swift_allocObject();
      *(v388 + 16) = xmmword_1D7279970;
      sub_1D5D5058C(0, &qword_1EC880490, sub_1D5EA74B8, v148);
      v387 = v391[9];
      v149 = (*(v391 + 80) + 32) & ~*(v391 + 80);
      v150 = swift_allocObject();
      v150[1] = xmmword_1D7274590;
      v391 = v150;
      v151 = v150 + v149;
      v152 = v79;
      sub_1D711F844(0x70795420756E654DLL, 0xE900000000000065, 1684366662, 0xE400000000000000, v151);
      v153 = type metadata accessor for FormatInspectionItem(0);
      v386 = *(*(v153 - 8) + 56);
      (v386)(v151, 0, 1, v153);
      v154 = FCFeedDescriptor.feedTag.getter();
      v155 = [v154 identifier];
      v156 = sub_1D726207C();
      v158 = v157;

      v406[1] = xmmword_1D7279980;
      v407 = 0u;
      v408 = 0u;
      v409 = 0u;
      LOBYTE(v410) = 0;
      *&v402 = v156;
      *(&v402 + 1) = v158;
      v159 = v387;
      *&v403 = v154;
      BYTE8(v403) = 0;
      *&v405 = 0;
      *(&v405 + 1) = 0xE000000000000000;
      *&v404 = 0;
      BYTE8(v404) = 0;
      *&v406[0] = 0;
      *(&v406[0] + 1) = MEMORY[0x1E69E7CD0];
      sub_1D7121274(6775124, 0xE300000000000000, &v402, &v151[v387]);
      v160 = v386;
      (v386)(&v151[v159], 0, 1, v153);
      v390 = v151;
      v161 = &v151[2 * v159];
      v162 = FCFeedDescriptorConfiguration.description.getter([v152 feedConfiguration]);
      v164 = sub_1D711F844(0xD000000000000012, 0x80000001D73E4150, v162, v163, v161);
      v160(v161, 0, 1, v153, v164);
      v165 = [v152 alternativeFeedDescriptor];
      if (v165)
      {
        v166 = v165;
        v167 = [v165 feedConfiguration];

        v168 = FCFeedDescriptorConfiguration.description.getter(v167);
        v170 = v169;
      }

      else
      {
        v168 = 0;
        v170 = 0;
      }

      v324 = v390;
      v325 = sub_1D711F844(0xD000000000000017, 0x80000001D73E4170, v168, v170, (v390 + 3 * v159));
      v160((v324 + 3 * v159), 0, 1, v153, v325);
      sub_1D6795150(0x20747865746E6F43, 0xEC000000756E654DLL, 0, 0, v391, &v416);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v202 = v388;
      *(v388 + 56) = &type metadata for FormatInspectionGroup;
      *(v202 + 64) = &off_1F518B2C0;
      v323 = swift_allocObject();
      *(v202 + 32) = v323;
      goto LABEL_48;
    case 0xD:
      v281 = v436;
      v282 = v435;
      v390 = v434;
      v417[1] = v436;
      v418[0] = *v437;
      *(v418 + 15) = *&v437[15];
      v416 = v434;
      v417[0] = v435;
      sub_1D5BFA014(&v416, &v402, sub_1D6AB76A0);
      sub_1D6205FF8(*(&v79 + 1), v282, *(&v282 + 1), v281, *(&v281 + 1));
      v283 = MEMORY[0x1E69E6F90];
      sub_1D5D5058C(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
      v284 = swift_allocObject();
      *(v284 + 16) = xmmword_1D7279970;
      sub_1D5D5058C(0, &qword_1EC880490, sub_1D5EA74B8, v283);
      v285 = v391[9];
      v286 = (*(v391 + 80) + 32) & ~*(v391 + 80);
      v287 = swift_allocObject();
      *(v287 + 16) = xmmword_1D7270C10;
      v288 = (v287 + v286);
      sub_1D711F844(0x70795420756E654DLL, 0xE900000000000065, 0x656C7A7A7550, 0xE600000000000000, v288);
      v289 = type metadata accessor for FormatInspectionItem(0);
      v290 = *(*(v289 - 8) + 56);
      v290(v288, 0, 1, v289);
      v291 = swift_unknownObjectRetain();
      FeedPuzzle.init(puzzle:)(v291, &v402);
      sub_1D711F45C(0x656C7A7A7550, 0xE600000000000000, &v402, &v288[v285]);
      v290(&v288[v285], 0, 1, v289);
      sub_1D6795150(0x20747865746E6F43, 0xEC000000756E654DLL, 0, 0, v287, &v397);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      *(v284 + 56) = &type metadata for FormatInspectionGroup;
      *(v284 + 64) = &off_1F518B2C0;
      v292 = swift_allocObject();
      *(v284 + 32) = v292;
      v293 = v398;
      *(v292 + 16) = v397;
      *(v292 + 32) = v293;
      *(v292 + 48) = v399;
      *(v284 + 96) = &type metadata for FormatInspectionGroup;
      *(v284 + 104) = &off_1F518B2C0;
      v294 = swift_allocObject();
      *(v284 + 72) = v294;
      v295 = v412;
      *(v294 + 16) = v411;
      *(v294 + 32) = v295;
      *(v294 + 48) = v413;
      v407 = v426;
      v408 = v427;
      v409 = v428;
      v410 = v429;
      v404 = v422;
      v405 = v423;
      v406[0] = v424;
      v406[1] = v425;
      v402 = v420;
      v403 = v421;
      *&v414[0] = *&v437[32];
      BYTE8(v414[0]) = v437[40];
      sub_1D5EC9444(*&v437[32], v437[40]);
      v296 = sub_1D5EC750C(&v402, v414);
      sub_1D6A69684(*&v414[0], BYTE8(v414[0]));
      *(v284 + 136) = &type metadata for FormatInspection;
      *(v284 + 144) = &off_1F51E3FD0;
      *(v284 + 112) = v296;
      v243 = sub_1D7073500(v284);
      swift_setDeallocating();
      sub_1D5E4F358(0);
      goto LABEL_76;
    case 0xE:
      v104 = MEMORY[0x1E69E6F90];
      sub_1D5D5058C(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
      v105 = swift_allocObject();
      *(v105 + 16) = xmmword_1D7279970;
      sub_1D5D5058C(0, &qword_1EC880490, sub_1D5EA74B8, v104);
      v390 = v391[9];
      v106 = (*(v391 + 80) + 32) & ~*(v391 + 80);
      v107 = swift_allocObject();
      *(v107 + 16) = xmmword_1D7270C10;
      swift_unknownObjectRetain();
      sub_1D711F844(0x70795420756E654DLL, 0xE900000000000065, 0x5420656C7A7A7550, 0xEB00000000657079, (v107 + v106));
      v108 = type metadata accessor for FormatInspectionItem(0);
      v391 = *(*(v108 - 8) + 56);
      (v391)(v107 + v106, 0, 1, v108);
      swift_unknownObjectRetain();
      v109 = [v79 identifier];
      v110 = sub_1D726207C();
      v112 = v111;

      v416 = 0uLL;
      LOBYTE(v417[0]) = 1;
      *(v417 + 8) = xmmword_1D728A8E0;
      *(&v417[1] + 1) = v110;
      *&v418[0] = v112;
      *(&v418[0] + 1) = v79;
      v113 = v390;
      sub_1D712A3F4(0x5420656C7A7A7550, 0xEB00000000657079, &v416, (v107 + v106 + v390));
      (v391)(v107 + v106 + v113, 0, 1, v108);
      sub_1D6795150(0x20747865746E6F43, 0xEC000000756E654DLL, 0, 0, v107, &v397);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      *(v105 + 56) = &type metadata for FormatInspectionGroup;
      *(v105 + 64) = &off_1F518B2C0;
      v114 = swift_allocObject();
      *(v105 + 32) = v114;
      v115 = v398;
      *(v114 + 16) = v397;
      *(v114 + 32) = v115;
      *(v114 + 48) = v399;
      *(v105 + 96) = &type metadata for FormatInspectionGroup;
      *(v105 + 104) = &off_1F518B2C0;
      v116 = swift_allocObject();
      *(v105 + 72) = v116;
      v117 = v412;
      *(v116 + 16) = v411;
      *(v116 + 32) = v117;
      *(v116 + 48) = v413;
      v407 = v426;
      v408 = v427;
      v409 = v428;
      v410 = v429;
      v404 = v422;
      v405 = v423;
      v406[0] = v424;
      v406[1] = v425;
      v402 = v420;
      v403 = v421;
      *&v414[0] = *&v437[32];
      BYTE8(v414[0]) = v437[40];
      sub_1D5EC9444(*&v437[32], v437[40]);
      v118 = sub_1D5EC750C(&v402, v414);
      v119 = *&v414[0];
      v120 = BYTE8(v414[0]);
LABEL_40:
      sub_1D6A69684(v119, v120);
      *(v105 + 136) = &type metadata for FormatInspection;
      *(v105 + 144) = &off_1F51E3FD0;
      *(v105 + 112) = v118;
      v243 = sub_1D7073500(v105);
      swift_setDeallocating();
      sub_1D5E4F358(0);
      goto LABEL_41;
    case 0xF:
      v201 = MEMORY[0x1E69E6F90];
      sub_1D5D5058C(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
      v202 = swift_allocObject();
      *(v202 + 16) = xmmword_1D7279970;
      sub_1D5D5058C(0, &qword_1EC880490, sub_1D5EA74B8, v201);
      v203 = (*(v391 + 80) + 32) & ~*(v391 + 80);
      v390 = v391[9];
      v204 = swift_allocObject();
      v204[1] = xmmword_1D7270C10;
      v391 = v204;
      v205 = v204 + v203;
      v206 = v79;
      sub_1D711F844(0x70795420756E654DLL, 0xE900000000000065, 0x657069636552, 0xE600000000000000, v205);
      v207 = type metadata accessor for FormatInspectionItem(0);
      v208 = *(v207 - 8);
      v387 = *(v208 + 56);
      *&v388 = v207;
      v386 = v208 + 56;
      (v387)(v205, 0, 1);
      v209 = v375;
      v210 = *(v375 + 20);
      v211 = type metadata accessor for SharedItem(0);
      v212 = v384;
      (*(*(v211 - 8) + 56))(&v384[v210], 1, 1, v211);
      *v212 = 0;
      v213 = *(v209 + 24);
      v212[v213] = 0;
      v214 = v385;
      *(v385 + 2) = 0;
      v214[24] = 1;
      *(v214 + 2) = xmmword_1D727C320;
      v215 = v206;
      v216 = [v215 identifier];
      v217 = sub_1D726207C();
      v219 = v218;

      *v214 = v217;
      *(v214 + 1) = v219;
      *(v214 + 7) = v215;
      v220 = type metadata accessor for FeedRecipe(0);
      sub_1D5BFA014(v212, &v214[v220[9]], type metadata accessor for FeedRecipe.State);
      v221 = &v214[v220[10]];
      *(v221 + 4) = 0;
      *v221 = 0u;
      *(v221 + 1) = 0u;
      v214[v220[11]] = 0;
      if (v212[v213] == 1)
      {
        v222 = [v215 sourceChannel];
      }

      else
      {
        v222 = 2;
      }

      sub_1D6AB7724(v384, type metadata accessor for FeedRecipe.State);
      v319 = v385;
      *(v385 + 6) = v222;
      v320 = v319 + v220[12];
      *(v320 + 32) = 0;
      *v320 = 0u;
      *(v320 + 16) = 0u;
      v321 = v319 + v220[13];
      *(v321 + 32) = 0;
      *v321 = 0u;
      *(v321 + 16) = 0u;
      (*(*(v220 - 1) + 56))(v319, 0, 1, v220);
      v322 = v390;
      sub_1D711EF28(0x657069636552, 0xE600000000000000, v319, &v205[v390]);
      (v387)(&v205[v322], 0, 1, v388);
      sub_1D6795150(0x20747865746E6F43, 0xEC000000756E654DLL, 0, 0, v391, &v416);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      *(v202 + 56) = &type metadata for FormatInspectionGroup;
      *(v202 + 64) = &off_1F518B2C0;
      v323 = swift_allocObject();
      *(v202 + 32) = v323;
LABEL_48:
      v326 = v417[0];
      *(v323 + 16) = v416;
      *(v323 + 32) = v326;
      *(v323 + 48) = *&v417[1];
      *(v202 + 96) = &type metadata for FormatInspectionGroup;
      *(v202 + 104) = &off_1F518B2C0;
      v327 = swift_allocObject();
      *(v202 + 72) = v327;
      v328 = v412;
      *(v327 + 16) = v411;
      *(v327 + 32) = v328;
      *(v327 + 48) = v413;
      v407 = v426;
      v408 = v427;
      v409 = v428;
      v410 = v429;
      v404 = v422;
      v405 = v423;
      v406[0] = v424;
      v406[1] = v425;
      v402 = v420;
      v403 = v421;
      *&v397 = *&v437[32];
      BYTE8(v397) = v437[40];
      sub_1D5EC9444(*&v437[32], v437[40]);
      v329 = sub_1D5EC750C(&v402, &v397);
      sub_1D6A69684(v397, BYTE8(v397));
      *(v202 + 136) = &type metadata for FormatInspection;
      *(v202 + 144) = &off_1F51E3FD0;
      *(v202 + 112) = v329;
      v243 = sub_1D7073500(v202);
      swift_setDeallocating();
      sub_1D5E4F358(0);
LABEL_41:
      swift_arrayDestroy();
LABEL_42:
      swift_deallocClassInstance();
      sub_1D6AB75E0(&v434);
      break;
    default:
      v80 = MEMORY[0x1E69E6F90];
      sub_1D5D5058C(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
      v390 = swift_allocObject();
      *(v390 + 16) = xmmword_1D7279970;
      sub_1D5D5058C(0, &qword_1EC880490, sub_1D5EA74B8, v80);
      v81 = (*(v391 + 80) + 32) & ~*(v391 + 80);
      v385 = v391[9];
      v82 = swift_allocObject();
      v82[1] = xmmword_1D7270C10;
      v391 = v82;
      v83 = v82 + v81;
      swift_unknownObjectRetain();
      sub_1D711F844(0x70795420756E654DLL, 0xE900000000000065, 0x6F69647541, 0xE500000000000000, v83);
      v84 = type metadata accessor for FormatInspectionItem(0);
      v85 = *(v84 - 8);
      v86 = *(v85 + 56);
      v387 = v83;
      v383 = v86;
      v384 = v84;
      v382 = (v85 + 56);
      v86(v83, 0, 1);
      v87 = sub_1D726045C();
      v88 = v381;
      (*(*(v87 - 8) + 56))(v381, 1, 1, v87);
      v89 = v388;
      v90 = *(v388 + 24);
      v91 = type metadata accessor for SharedItem(0);
      v92 = v386;
      (*(*(v91 - 8) + 56))(v386 + v90, 1, 1, v91);
      *v92 = 258;
      v380 = v89[7];
      *(v92 + v380) = 1;
      v378 = v89[8];
      *(v92 + v378) = 0;
      v376 = v89[9];
      *(v92 + v376) = 0;
      v93 = v89[10];
      *(v92 + v93) = 0;
      v94 = v373;
      v95 = ObjectType;
      *(ObjectType + v373[12]) = xmmword_1D727C330;
      *&v388 = swift_getObjectType();
      v96 = [swift_unknownObjectRetain() identifier];
      v97 = sub_1D726207C();
      v99 = v98;

      *v95 = v97;
      *(v95 + 8) = v99;
      *(v95 + 40) = v79;
      *(v95 + 48) = 0;
      sub_1D5BFA014(v88, v95 + v94[11], sub_1D5D504A0);
      sub_1D5BFA014(v92, v95 + v94[10], type metadata accessor for FeedHeadline.State);
      *(v95 + v94[14]) = 0;
      *(v95 + 56) = 0;
      v100 = [swift_unknownObjectRetain() title];
      if (v100)
      {
        v101 = v100;
        v102 = [v100 ne_isNaturallyRTL];

        v103 = v102;
      }

      else
      {
        v103 = 0;
      }

      *(v95 + 16) = v103;
      *(v95 + 24) = 0;
      sub_1D5BC7BD4(&v402);
      swift_unknownObjectRelease();
      v340 = v386;
      if (*(v386 + v378) - 1 <= 1 && (v402 & 0x1000) == 0)
      {
        *&v402 = v402 | 0x1000;
      }

      v341 = *(v386 + v93);
      v342 = 0x80000000;
      if (!*(v386 + v93))
      {
        v342 = 0x100000000;
      }

      if ((v402 & v342) != 0)
      {
        v342 = 0;
      }

      *(v95 + 32) = v402 | v342;
      if (*(v340 + v380))
      {
        v343 = v377;
        if (*(v340 + v376))
        {
          sub_1D6AB7724(v340, type metadata accessor for FeedHeadline.State);
          sub_1D6AB7724(v381, sub_1D5D504A0);
          v344 = 1;
        }

        else if (v341)
        {
          v367 = v340;
          v368 = [v79 sourceChannel];
          sub_1D6AB7724(v367, type metadata accessor for FeedHeadline.State);
          sub_1D6AB7724(v381, sub_1D5D504A0);
          v344 = 2;
          if (v368)
          {
            v344 = v368;
          }
        }

        else
        {
          sub_1D6AB7724(v340, type metadata accessor for FeedHeadline.State);
          sub_1D6AB7724(v381, sub_1D5D504A0);
          v344 = 2;
        }
      }

      else
      {
        sub_1D6AB7724(v340, type metadata accessor for FeedHeadline.State);
        sub_1D6AB7724(v381, sub_1D5D504A0);
        v344 = 0;
        v343 = v377;
      }

      v345 = v373;
      *(v95 + v373[13]) = v344;
      sub_1D5CAD8D4(v95, v343, type metadata accessor for FeedHeadline);
      (*(v371 + 56))(v343, 0, 1, v345);
      v346 = v387;
      v347 = v385;
      sub_1D711E4BC(0x656E696C64616548, 0xE800000000000000, v343, &v385[v387]);
      (v383)(&v347[v346], 0, 1, v384);
LABEL_75:
      sub_1D6795150(0x20747865746E6F43, 0xEC000000756E654DLL, 0, 0, v391, &v416);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v348 = v390;
      *(v390 + 56) = &type metadata for FormatInspectionGroup;
      v348[8] = &off_1F518B2C0;
      v349 = swift_allocObject();
      v348[4] = v349;
      v350 = v417[0];
      *(v349 + 16) = v416;
      *(v349 + 32) = v350;
      *(v349 + 48) = *&v417[1];
      v348[12] = &type metadata for FormatInspectionGroup;
      v348[13] = &off_1F518B2C0;
      v351 = swift_allocObject();
      v348[9] = v351;
      v352 = v412;
      *(v351 + 16) = v411;
      *(v351 + 32) = v352;
      *(v351 + 48) = v413;
      v407 = v426;
      v408 = v427;
      v409 = v428;
      v410 = v429;
      v404 = v422;
      v405 = v423;
      v406[0] = v424;
      v406[1] = v425;
      v402 = v420;
      v403 = v421;
      *&v397 = *&v437[32];
      BYTE8(v397) = v437[40];
      sub_1D5EC9444(*&v437[32], v437[40]);
      v353 = sub_1D5EC750C(&v402, &v397);
      sub_1D6A69684(v397, BYTE8(v397));
      v348[17] = &type metadata for FormatInspection;
      v348[18] = &off_1F51E3FD0;
      v348[14] = v353;
      v243 = sub_1D7073500(v348);
      swift_setDeallocating();
      sub_1D5E4F358(0);
LABEL_76:
      swift_arrayDestroy();
      swift_deallocClassInstance();
      swift_unknownObjectRelease();
      break;
  }

  sub_1D6AB7634(v430);
  return v243;
}

uint64_t sub_1D6AB756C(uint64_t a1, uint64_t a2)
{
  sub_1D5B49CBC(0, &qword_1EC891240, &type metadata for FormatContextMenuData);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D6AB7634(uint64_t a1)
{
  sub_1D5B49CBC(0, &qword_1EC891240, &type metadata for FormatContextMenuData);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D6AB76A0(uint64_t a1)
{
  if (!qword_1EC891248)
  {
    sub_1D6152704();
    sub_1D5B49CBC(255, &qword_1EDF11680, &type metadata for PuzzleShareData);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC891248);
    }
  }
}

uint64_t sub_1D6AB7724(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D6AB7784(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  result = swift_getAssociatedTypeWitness();
  if (v5 <= 0x3F)
  {
    result = type metadata accessor for FeedItemFilter(319, v2, v1, v4);
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D6AB7834(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 84);
  v9 = *(*(v5 - 8) + 64);
  if (v8 <= 0xFE)
  {
    v10 = 254;
  }

  else
  {
    v10 = *(v7 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v11 = *(*(v5 - 8) + 80);
  v12 = *(*(AssociatedTypeWitness - 8) + 64) + v11;
  if (a2 <= v10)
  {
    goto LABEL_28;
  }

  v13 = v9 + (v12 & ~v11) + 1;
  v14 = 8 * v13;
  if (v13 <= 3)
  {
    v17 = ((a2 - v10 + ~(-1 << v14)) >> v14) + 1;
    if (HIWORD(v17))
    {
      v15 = *(a1 + v13);
      if (!v15)
      {
        goto LABEL_28;
      }

      goto LABEL_15;
    }

    if (v17 > 0xFF)
    {
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_28;
      }

      goto LABEL_15;
    }

    if (v17 < 2)
    {
LABEL_28:
      if (v8 < 0xFE)
      {
        v22 = *(((a1 + v12) & ~v11) + v9);
        if (v22 >= 2)
        {
          return (v22 ^ 0xFF) + 1;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        v21 = *(v7 + 48);

        return v21(a1);
      }
    }
  }

  v15 = *(a1 + v13);
  if (!*(a1 + v13))
  {
    goto LABEL_28;
  }

LABEL_15:
  v18 = (v15 - 1) << v14;
  if (v13 > 3)
  {
    v18 = 0;
  }

  if (v13)
  {
    if (v13 <= 3)
    {
      v19 = v13;
    }

    else
    {
      v19 = 4;
    }

    if (v19 > 2)
    {
      if (v19 == 3)
      {
        v20 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v20 = *a1;
      }
    }

    else if (v19 == 1)
    {
      v20 = *a1;
    }

    else
    {
      v20 = *a1;
    }
  }

  else
  {
    v20 = 0;
  }

  return v10 + (v20 | v18) + 1;
}

void sub_1D6AB7A64(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(swift_getAssociatedTypeWitness() - 8);
  v9 = *(v8 + 84);
  v10 = *(*(v7 - 8) + 64);
  v11 = *(v8 + 64);
  if (v9 <= 0xFE)
  {
    v12 = 254;
  }

  else
  {
    v12 = *(v8 + 84);
  }

  v13 = *(*(v7 - 8) + 80);
  v14 = v11 + v13;
  v15 = v10 + 1;
  v16 = ((v11 + v13) & ~v13) + v10 + 1;
  if (a3 <= v12)
  {
    v17 = 0;
  }

  else if (v16 <= 3)
  {
    v20 = ((a3 - v12 + ~(-1 << (8 * v16))) >> (8 * v16)) + 1;
    if (HIWORD(v20))
    {
      v17 = 4;
    }

    else
    {
      if (v20 < 0x100)
      {
        v21 = 1;
      }

      else
      {
        v21 = 2;
      }

      if (v20 >= 2)
      {
        v17 = v21;
      }

      else
      {
        v17 = 0;
      }
    }
  }

  else
  {
    v17 = 1;
  }

  if (v12 < a2)
  {
    v18 = ~v12 + a2;
    if (v16 < 4)
    {
      v19 = (v18 >> (8 * v16)) + 1;
      if (v16)
      {
        v22 = v18 & ~(-1 << (8 * v16));
        bzero(a1, v16);
        if (v16 != 3)
        {
          if (v16 == 2)
          {
            *a1 = v22;
            if (v17 > 1)
            {
LABEL_55:
              if (v17 == 2)
              {
                *&a1[v16] = v19;
              }

              else
              {
                *&a1[v16] = v19;
              }

              return;
            }
          }

          else
          {
            *a1 = v18;
            if (v17 > 1)
            {
              goto LABEL_55;
            }
          }

          goto LABEL_52;
        }

        *a1 = v22;
        a1[2] = BYTE2(v22);
      }

      if (v17 > 1)
      {
        goto LABEL_55;
      }
    }

    else
    {
      bzero(a1, v16);
      *a1 = v18;
      v19 = 1;
      if (v17 > 1)
      {
        goto LABEL_55;
      }
    }

LABEL_52:
    if (v17)
    {
      a1[v16] = v19;
    }

    return;
  }

  if (v17 > 1)
  {
    if (v17 != 2)
    {
      *&a1[v16] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v16] = 0;
LABEL_30:
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!v17)
  {
    goto LABEL_30;
  }

  a1[v16] = 0;
  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v9 < 0xFE)
  {
    v24 = (&a1[v14] & ~v13);
    if (a2 > 0xFE)
    {
      if (v15 <= 3)
      {
        v25 = ~(-1 << (8 * v15));
      }

      else
      {
        v25 = -1;
      }

      if (v10 != -1)
      {
        v26 = v25 & (a2 - 255);
        if (v15 <= 3)
        {
          v27 = v10 + 1;
        }

        else
        {
          v27 = 4;
        }

        bzero(v24, v15);
        if (v27 > 2)
        {
          if (v27 == 3)
          {
            *v24 = v26;
            v24[2] = BYTE2(v26);
          }

          else
          {
            *v24 = v26;
          }
        }

        else if (v27 == 1)
        {
          *v24 = v26;
        }

        else
        {
          *v24 = v26;
        }
      }
    }

    else
    {
      v24[v10] = -a2;
    }
  }

  else
  {
    v23 = *(v8 + 56);

    v23(a1, a2);
  }
}

uint64_t sub_1D6AB7DA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(a5, a1, AssociatedTypeWitness);
  v12 = *(type metadata accessor for FeedItemFilterResultEntry(0, a3, a4, v11) + 36);
  v14 = type metadata accessor for FeedItemFilter(0, a3, a4, v13);
  v15 = *(*(v14 - 8) + 32);

  return v15(a5 + v12, a2, v14);
}

uint64_t sub_1D6AB7E9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = type metadata accessor for FeedItemFilter(0, v6, v7, a4);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v21 - v10;
  v12 = *(v6 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13, v14);
  v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v11, v4 + *(a1 + 36), v15);
  (*(v12 + 32))(v17, v11, v6);
  v19 = (*(v7 + 32))(v4, v6, v7);
  (*(v12 + 8))(v17, v6);
  return v19;
}

unint64_t sub_1D6AB804C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for FeedItemFilter(0, v4, *(v8 + 24), v9);
  v12 = MEMORY[0x1EEE9AC00](v10, v11);
  v14 = &v21 - v13;
  (*(v15 + 16))(&v21 - v13, v2 + *(a1 + 36), v10, v12);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  (*(v5 + 32))(v7, v14, v4);
  v21 = 0;
  v22 = 0xE000000000000000;
  sub_1D7263D4C();

  if (EnumCaseMultiPayload == 1)
  {
    v17 = 0x80000001D73E4190;
    v21 = 0xD000000000000013;
  }

  else
  {
    v17 = 0x80000001D73E41B0;
    v21 = 0xD000000000000014;
  }

  v22 = v17;
  v18 = sub_1D72644BC();
  MEMORY[0x1DA6F9910](v18);

  v19 = v21;
  (*(v5 + 8))(v7, v4);
  return v19;
}

uint64_t BundleSession.description.getter()
{
  v1 = v0;
  sub_1D7263D4C();
  MEMORY[0x1DA6F9910](0x566E6F6973736573, 0xEE00203A65756C61);
  v2 = sub_1D72644BC();
  MEMORY[0x1DA6F9910](v2);

  MEMORY[0x1DA6F9910](0xD000000000000013, 0x80000001D73E41D0);
  v3 = type metadata accessor for BundleSession(0);
  sub_1D725891C();
  sub_1D5CE4528(&qword_1EDF3C3B0, MEMORY[0x1E6969570]);
  v4 = sub_1D72644BC();
  MEMORY[0x1DA6F9910](v4);

  MEMORY[0x1DA6F9910](0x745364656566202CLL, 0xED0000203A657461);
  if (*(v0 + v3[6]))
  {
    if (*(v0 + v3[6]) == 1)
    {
      v5 = 0xE700000000000000;
      v6 = 0x64657269707865;
    }

    else
    {
      v5 = 0xE800000000000000;
      v6 = 0x64656C6261736964;
    }
  }

  else
  {
    v5 = 0xE600000000000000;
    v6 = 0x657669746361;
  }

  MEMORY[0x1DA6F9910](v6, v5);

  MEMORY[0x1DA6F9910](0xD000000000000017, 0x80000001D73E41F0);
  if (*(v0 + v3[7]))
  {
    if (*(v0 + v3[7]) == 1)
    {
      v7 = 0xE600000000000000;
      v8 = 0x6465696E6564;
    }

    else
    {
      v7 = 0xEA00000000006465;
      v8 = 0x7A69726F68747561;
    }
  }

  else
  {
    v7 = 0xED000064656E696DLL;
    v8 = 0x7265746544746F6ELL;
  }

  MEMORY[0x1DA6F9910](v8, v7);

  MEMORY[0x1DA6F9910](0xD000000000000010, 0x80000001D73E4210);
  v9 = FamilyStatus.description.getter();
  MEMORY[0x1DA6F9910](v9);

  MEMORY[0x1DA6F9910](0x656C7377656E202CLL, 0xEF203A7372657474);
  v10 = *(v0 + v3[9]);
  v11 = sub_1D5B5A498(0, &qword_1EDF1AC18, 0x1E69B53F0);
  v12 = MEMORY[0x1DA6F9D20](v10, v11);
  MEMORY[0x1DA6F9910](v12);

  MEMORY[0x1DA6F9910](0xD00000000000001DLL, 0x80000001D73E4230);
  if (*(v1 + v3[10]))
  {
    v13 = 1702195828;
  }

  else
  {
    v13 = 0x65736C6166;
  }

  if (*(v1 + v3[10]))
  {
    v14 = 0xE400000000000000;
  }

  else
  {
    v14 = 0xE500000000000000;
  }

  MEMORY[0x1DA6F9910](v13, v14);

  MEMORY[0x1DA6F9910](0xD00000000000001BLL, 0x80000001D73E4250);
  if (*(v1 + v3[11]))
  {
    v15 = 1702195828;
  }

  else
  {
    v15 = 0x65736C6166;
  }

  if (*(v1 + v3[11]))
  {
    v16 = 0xE400000000000000;
  }

  else
  {
    v16 = 0xE500000000000000;
  }

  MEMORY[0x1DA6F9910](v15, v16);

  return 0;
}

uint64_t BundleSession.init(session:initialExposure:feedState:notificationsStatus:familyStatus:newsletters:isSubscribedToNewsletters:premiumHeadlineSlotting:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, char *a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, char a8@<W7>, char *a9@<X8>)
{
  v13 = *a3;
  v14 = *a4;
  v15 = *a5;
  v16 = a5[1];
  *a9 = a1;
  v17 = type metadata accessor for BundleSession(0);
  v18 = v17[5];
  v19 = sub_1D725891C();
  result = (*(*(v19 - 8) + 32))(&a9[v18], a2, v19);
  a9[v17[6]] = v13;
  a9[v17[7]] = v14;
  v21 = &a9[v17[8]];
  *v21 = v15;
  *(v21 + 1) = v16;
  *&a9[v17[9]] = a6;
  a9[v17[10]] = a7;
  a9[v17[11]] = a8;
  return result;
}

void sub_1D6AB8740(unint64_t a1, uint64_t a2)
{
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D7263BFC())
  {
    v5 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1DA6FB460](v5, a1);
      }

      else
      {
        if (v5 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v6 = *(a1 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v9 = v6;
      sub_1D6AB9D78(&v9);

      if (!v2)
      {
        ++v5;
        if (v8 != i)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

uint64_t sub_1D6AB8834()
{
  v7 = MEMORY[0x1E69E7CD0];
  v1 = sub_1D6AB98D4();
  sub_1D5B886D0(v1);
  v2 = sub_1D6AB9A38();
  sub_1D5B886D0(v2);
  v3 = sub_1D6AB9AFC();
  sub_1D5B886D0(v3);
  sub_1D7263D4C();

  v6[0] = 0x732D656C646E7562;
  v6[1] = 0xEF2D6E6F69737365;
  v4 = sub_1D72644BC();
  MEMORY[0x1DA6F9910](v4);

  sub_1D5B860D0(v6, 0x732D656C646E7562, 0xEF2D6E6F69737365);

  if (*(v0 + *(type metadata accessor for BundleSession(0) + 44)) == 1)
  {
    sub_1D5B860D0(v6, 0xD000000000000028, 0x80000001D73E4270);
  }

  return v7;
}

uint64_t BundleSession.initialExposure.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for BundleSession(0) + 20);
  v4 = sub_1D725891C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t BundleSession.feedState.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for BundleSession(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t BundleSession.notificationsStatus.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for BundleSession(0);
  *a1 = *(v1 + *(result + 28));
  return result;
}

__n128 BundleSession.familyStatus.getter@<Q0>(__n128 *a1@<X8>)
{
  result = *(v1 + *(type metadata accessor for BundleSession(0) + 32));
  *a1 = result;
  return result;
}

uint64_t BundleSession.newsletters.getter()
{
  type metadata accessor for BundleSession(0);
}

unint64_t sub_1D6AB8B3C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D6ABA66C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1D6AB8B6C(unint64_t *a1@<X8>)
{
  v2 = *v1;
  if (v2 > 3)
  {
    v8 = 0x80000001D73B8D90;
    v9 = 0xD000000000000017;
    if (v2 == 6)
    {
      v9 = 0xD000000000000019;
    }

    else
    {
      v8 = 0x80000001D73B8DB0;
    }

    v10 = 0xEC00000073757461;
    v11 = 0x7453796C696D6166;
    if (v2 != 4)
    {
      v11 = 0x7474656C7377656ELL;
      v10 = 0xEB00000000737265;
    }

    if (*v1 <= 5u)
    {
      v12 = v11;
    }

    else
    {
      v12 = v9;
    }

    if (*v1 <= 5u)
    {
      v8 = v10;
    }

    *a1 = v12;
    a1[1] = v8;
  }

  else
  {
    v3 = 0xE700000000000000;
    v4 = 0x6E6F6973736573;
    v5 = 0xE900000000000065;
    v6 = 0x7461745364656566;
    if (v2 != 2)
    {
      v6 = 0xD000000000000013;
      v5 = 0x80000001D73B8D60;
    }

    if (*v1)
    {
      v4 = 0x456C616974696E69;
      v3 = 0xEF657275736F7078;
    }

    if (*v1 <= 1u)
    {
      v7 = v4;
    }

    else
    {
      v7 = v6;
    }

    if (*v1 > 1u)
    {
      v3 = v5;
    }

    *a1 = v7;
    a1[1] = v3;
  }
}

unint64_t sub_1D6AB8C9C()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v5 = 0xD000000000000017;
    if (v1 == 6)
    {
      v5 = 0xD000000000000019;
    }

    v6 = 0x7453796C696D6166;
    if (v1 != 4)
    {
      v6 = 0x7474656C7377656ELL;
    }

    if (*v0 <= 5u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v2 = 0x6E6F6973736573;
    v3 = 0x7461745364656566;
    if (v1 != 2)
    {
      v3 = 0xD000000000000013;
    }

    if (*v0)
    {
      v2 = 0x456C616974696E69;
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
}

unint64_t sub_1D6AB8DC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D6ABA66C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D6AB8DEC(uint64_t a1)
{
  v2 = sub_1D6ABA278();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6AB8E28(uint64_t a1)
{
  v2 = sub_1D6ABA278();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t BundleSession.encode(to:)(void *a1)
{
  v3 = v1;
  v24 = *MEMORY[0x1E69E9840];
  sub_1D6ABA320(0, &qword_1EC891250, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v21 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6ABA278();
  sub_1D7264B5C();
  LOBYTE(v23) = 0;
  sub_1D726442C();
  if (v2)
  {
    return (*(v7 + 8))(v10, v6);
  }

  v11 = type metadata accessor for BundleSession(0);
  LOBYTE(v23) = 1;
  sub_1D725891C();
  sub_1D5CE4528(&qword_1EDF45B18, MEMORY[0x1E6969538]);
  sub_1D726443C();
  LOBYTE(v23) = *(v3 + v11[6]);
  v22 = 2;
  sub_1D61184F4();
  sub_1D726443C();
  LOBYTE(v23) = *(v3 + v11[7]);
  v22 = 3;
  sub_1D6ABA2CC();
  sub_1D726443C();
  v23 = *(v3 + v11[8]);
  v22 = 4;
  sub_1D5B78B28();
  sub_1D726443C();
  v13 = objc_opt_self();
  sub_1D5B5A498(0, &qword_1EDF1AC18, 0x1E69B53F0);
  v14 = sub_1D726265C();
  *&v23 = 0;
  v15 = [v13 archivedDataWithRootObject:v14 requiringSecureCoding:1 error:&v23];

  v16 = v23;
  if (!v15)
  {
    v20 = v16;
    sub_1D725829C();

    swift_willThrow();
    return (*(v7 + 8))(v10, v6);
  }

  v17 = sub_1D725867C();
  v19 = v18;

  *&v23 = v17;
  *(&v23 + 1) = v19;
  v22 = 5;
  sub_1D5F13DF8();
  sub_1D726443C();
  LOBYTE(v23) = 6;
  sub_1D726438C();
  LOBYTE(v23) = 7;
  sub_1D726440C();
  (*(v7 + 8))(v10, v6);
  return sub_1D5B952F8(v17, v19);
}

void BundleSession.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v3 = sub_1D725891C();
  v33 = *(v3 - 8);
  v34 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6ABA320(0, &qword_1EDF03AC0, MEMORY[0x1E69E6F48]);
  v8 = v7;
  v35 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v28 - v10;
  v12 = type metadata accessor for BundleSession(0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = (&v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6ABA278();
  v36 = v11;
  v16 = v37;
  sub_1D7264B0C();
  if (v16)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v18 = v33;
    v17 = v34;
    LOBYTE(v38) = 0;
    v19 = sub_1D72642FC();
    v37 = v15;
    *v15 = v19;
    LOBYTE(v38) = 1;
    sub_1D5CE4528(&qword_1EDF45B08, MEMORY[0x1E6969558]);
    v20 = v6;
    v21 = v17;
    sub_1D726431C();
    (*(v18 + 32))(v37 + v12[5], v20, v17);
    v39 = 2;
    sub_1D61184A0();
    sub_1D726431C();
    v22 = v37;
    *(v37 + v12[6]) = v38;
    v39 = 3;
    sub_1D6ABA384();
    sub_1D726431C();
    v23 = v35;
    *(v22 + v12[7]) = v38;
    v39 = 4;
    sub_1D5B78AD4();
    sub_1D726431C();
    *(v22 + v12[8]) = v38;
    v39 = 5;
    sub_1D5F1449C();
    sub_1D726431C();
    v30 = v8;
    v31 = *(&v38 + 1);
    v24 = v38;
    sub_1D5B5A498(0, &qword_1EC891268, 0x1E696ACD0);
    sub_1D5B5A498(0, &qword_1EDF1AC18, 0x1E69B53F0);
    v29 = v24;
    v25 = sub_1D7262FFC();
    v26 = v36;
    if (v25)
    {
      *(v22 + v12[9]) = v25;
      LOBYTE(v38) = 6;
      *(v22 + v12[10]) = sub_1D726423C() & 1;
      LOBYTE(v38) = 7;
      v27 = sub_1D72642CC();
      (*(v23 + 8))(v26, v30);
      sub_1D5B952F8(v29, v31);
      *(v22 + v12[11]) = v27 & 1;
      sub_1D6ABA42C(v22, v32);
      __swift_destroy_boxed_opaque_existential_1(a1);
      sub_1D6ABA490(v22);
    }

    else
    {
      sub_1D6ABA3D8();
      swift_allocError();
      swift_willThrow();
      sub_1D5B952F8(v29, v31);
      (*(v23 + 8))(v26, v30);
      __swift_destroy_boxed_opaque_existential_1(a1);
      (*(v18 + 8))(v22 + v12[5], v21);
    }
  }
}

uint64_t sub_1D6AB98D4()
{
  v8 = MEMORY[0x1E69E7CD0];
  v1 = *(v0 + *(type metadata accessor for BundleSession(0) + 32));
  if ((v1 & 0x8000000000000000) == 0)
  {
    if (v1)
    {
      v2 = "family-status-not-eligible";
      v3 = 0xD000000000000016;
    }

    else
    {
      v2 = "notifications-status-authorized";
      v3 = 0xD00000000000001ALL;
    }

    goto LABEL_7;
  }

  sub_1D5B860D0(&v6, 0xD000000000000014, 0x80000001D73E43D0);

  v6 = 0;
  v7 = 0xE000000000000000;
  sub_1D7263D4C();

  v6 = 0xD000000000000014;
  v7 = 0x80000001D73E43F0;
  v4 = sub_1D72644BC();
  MEMORY[0x1DA6F9910](v4);

  sub_1D5B860D0(&v6, v6, v7);

  if (v1)
  {
    v2 = "family-member-count-";
    v3 = 0xD000000000000017;
LABEL_7:
    sub_1D5B860D0(&v6, v3, v2 | 0x8000000000000000);
  }

  return v8;
}

uint64_t sub_1D6AB9A38()
{
  v7 = MEMORY[0x1E69E7CD0];
  v1 = type metadata accessor for BundleSession(0);
  if (!*(v0 + *(v1 + 28)))
  {
    v4 = "newsletters-subscribed";
    v3 = 0xD000000000000023;
LABEL_6:
    v2 = v4 | 0x8000000000000000;
    goto LABEL_7;
  }

  if (*(v0 + *(v1 + 28)) != 1)
  {
    v4 = "notifications-status-denied";
    v3 = 0xD00000000000001FLL;
    goto LABEL_6;
  }

  v2 = 0x80000001D73E4350;
  v3 = 0xD00000000000001BLL;
LABEL_7:
  sub_1D5B860D0(&v6, v3, v2);

  return v7;
}