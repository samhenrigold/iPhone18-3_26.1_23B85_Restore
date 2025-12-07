id sub_199B42BD8()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E69DC888]) init];
  *&v0[OBJC_IVAR___ContactsButtonSlotTraits_bgColor] = v1;
  v2 = [objc_allocWithZone(MEMORY[0x1E69DC888]) init];
  *&v0[OBJC_IVAR___ContactsButtonSlotTraits_fgColor] = v2;
  v3 = &v0[OBJC_IVAR___ContactsButtonSlotTraits_hostAppBundlePath];
  *v3 = 0;
  *(v3 + 1) = 0;
  v4 = [objc_allocWithZone(MEMORY[0x1E69DC888]) init];
  *&v0[OBJC_IVAR___ContactsButtonSlotTraits_avatarBGColor] = v4;
  *&v0[OBJC_IVAR___ContactsButtonSlotTraits_displayScale] = 0;
  v5 = [objc_allocWithZone(MEMORY[0x1E69DB878]) init];
  *&v0[OBJC_IVAR___ContactsButtonSlotTraits_font] = v5;
  v6 = &v0[OBJC_IVAR___ContactsButtonSlotTraits_captionTextField];
  *v6 = 0;
  *(v6 + 1) = 0xE000000000000000;
  v7 = &v0[OBJC_IVAR___ContactsButtonSlotTraits_trailingEdgeFromAvatar];
  *v7 = 0;
  v7[8] = 1;
  v8 = &v0[OBJC_IVAR___ContactsButtonSlotTraits_widthOfAvatar];
  *v8 = 0;
  v8[8] = 1;
  v9 = *MEMORY[0x1E69DDC90];
  *&v0[OBJC_IVAR___ContactsButtonSlotTraits_contentSizeCategory] = *MEMORY[0x1E69DDC90];
  *&v0[OBJC_IVAR___ContactsButtonSlotTraits_tintColor] = 0;
  v12.receiver = v0;
  v12.super_class = type metadata accessor for ContactsButtonSlotTraits();
  v10 = v9;
  return objc_msgSendSuper2(&v12, sel_init);
}

uint64_t sub_199B42DA8()
{
  v1 = v0;
  sub_199DFA71C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74540, &qword_199E3D4D0);
  v2 = sub_199DF9FBC();
  MEMORY[0x19A8F7E00](v2);

  MEMORY[0x19A8F7E00](8236, 0xE200000000000000);
  sub_199DFA71C();

  strcpy(v19, "avatarWidth: ");
  HIWORD(v19[1]) = -4864;
  v17 = *(v0 + OBJC_IVAR___ContactsButtonSlotTraits_widthOfAvatar);
  LOBYTE(v18) = *(v0 + OBJC_IVAR___ContactsButtonSlotTraits_widthOfAvatar + 8);
  v3 = sub_199DF9FBC();
  MEMORY[0x19A8F7E00](v3);

  MEMORY[0x19A8F7E00](2622, 0xE200000000000000);
  sub_199DF81AC();
  MEMORY[0x19A8F7E00](v19[0], v19[1]);

  sub_199DFA71C();

  strcpy(v19, "<font: ");
  v19[1] = 0xE700000000000000;
  v4 = [*(v0 + OBJC_IVAR___ContactsButtonSlotTraits_font) description];
  v5 = sub_199DF9F8C();
  v7 = v6;

  MEMORY[0x19A8F7E00](v5, v7);

  MEMORY[0x19A8F7E00](0xD000000000000010, 0x8000000199E48980);
  MEMORY[0x19A8F7E00](*(v1 + OBJC_IVAR___ContactsButtonSlotTraits_captionTextField), *(v1 + OBJC_IVAR___ContactsButtonSlotTraits_captionTextField + 8));
  MEMORY[0x19A8F7E00](2622, 0xE200000000000000);
  sub_199DF81AC();
  MEMORY[0x19A8F7E00](v19[0], 0xE700000000000000);

  sub_199DFA71C();

  strcpy(v19, "<tintColor: ");
  HIWORD(v19[1]) = -5120;
  v8 = *(v1 + OBJC_IVAR___ContactsButtonSlotTraits_tintColor);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75498, &qword_199E40160);
  v9 = sub_199DF9FBC();
  MEMORY[0x19A8F7E00](v9);

  MEMORY[0x19A8F7E00](2622, 0xE200000000000000);
  sub_199DF81AC();
  MEMORY[0x19A8F7E00](v19[0], v19[1]);

  sub_199DFA71C();

  strcpy(v19, "<bgColor: ");
  BYTE3(v19[1]) = 0;
  HIDWORD(v19[1]) = -369098752;
  v10 = [*(v1 + OBJC_IVAR___ContactsButtonSlotTraits_bgColor) description];
  v11 = sub_199DF9F8C();
  v13 = v12;

  MEMORY[0x19A8F7E00](v11, v13);

  MEMORY[0x19A8F7E00](0xD000000000000010, 0x8000000199E489A0);
  v14 = *(v1 + OBJC_IVAR___ContactsButtonSlotTraits_avatarBGColor);
  v15 = sub_199DF9FBC();
  MEMORY[0x19A8F7E00](v15);

  MEMORY[0x19A8F7E00](2622, 0xE200000000000000);
  sub_199DF81AC();
  MEMORY[0x19A8F7E00](v19[0], v19[1]);

  return 0x6E696C696172743CLL;
}

id sub_199B43228@<X0>(void *a1@<X8>)
{
  a1[3] = type metadata accessor for ContactsButtonSlotTraits();
  *a1 = v3;

  return v3;
}

id ContactsButtonSlotTraits.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ContactsButtonSlotTraits();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

ContactsUI::ContactButtonServiceErrorType_optional __swiftcall ContactButtonServiceErrorType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 0;
  v3 = 3;
  switch(rawValue)
  {
    case 0:
      goto LABEL_11;
    case 1:
      v2 = 1;
      goto LABEL_11;
    case 2:
      v2 = 2;
LABEL_11:
      v3 = v2;
      goto LABEL_12;
    case 3:
LABEL_12:
      *v1 = v3;
      break;
    case 4:
      *v1 = 4;
      break;
    case 5:
      *v1 = 5;
      break;
    case 6:
      *v1 = 6;
      break;
    case 7:
      *v1 = 7;
      break;
    case 8:
      *v1 = 8;
      break;
    case 9:
      *v1 = 9;
      break;
    case 10:
      *v1 = 10;
      break;
    case 11:
      *v1 = 11;
      break;
    case 12:
      *v1 = 12;
      break;
    case 13:
      *v1 = 13;
      break;
    case 14:
      *v1 = 14;
      break;
    case 15:
      *v1 = 15;
      break;
    case 16:
      *v1 = 16;
      break;
    case 17:
      *v1 = 17;
      break;
    case 18:
      *v1 = 18;
      break;
    case 19:
      *v1 = 19;
      break;
    case 20:
      *v1 = 20;
      break;
    default:
      *v1 = 21;
      break;
  }

  return rawValue;
}

unint64_t sub_199B43488()
{
  result = qword_1EAF754A0;
  if (!qword_1EAF754A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF754A0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ContactButtonServiceErrorType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEC)
  {
    goto LABEL_17;
  }

  if (a2 + 20 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 20) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 20;
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

      return (*a1 | (v4 << 8)) - 20;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 20;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x15;
  v8 = v6 - 21;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ContactButtonServiceErrorType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 20 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 20) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEC)
  {
    v4 = 0;
  }

  if (a2 > 0xEB)
  {
    v5 = ((a2 - 236) >> 8) + 1;
    *result = a2 + 20;
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
    *result = a2 + 20;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_199B43754(uint64_t result, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v4 = *(result + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = result;
  if (swift_isUniquelyReferenced_nonNull_native() && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(v9 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v5 = a2();
  if (!*(v9 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v10 = (*(v5 + 24) >> 1) - *(v5 + 16);
  result = a3(0);
  if (v10 < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return result;
  }

  v11 = *(v5 + 16);
  v12 = __OFADD__(v11, v4);
  v13 = v11 + v4;
  if (!v12)
  {
    *(v5 + 16) = v13;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_199B438B0(unint64_t a1, uint64_t (*a2)(uint64_t, void, uint64_t))
{
  if (a1 >> 62)
  {
    v5 = sub_199DFA87C();
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

  v15 = sub_199DFA87C();
  v7 = __OFADD__(v15, v5);
  result = v15 + v5;
  if (v7)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_199B486E4(result, 1);
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

uint64_t sub_199B439A8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_199DF841C();

  return v1;
}

char *sub_199B43A58(char *result)
{
  v2 = v1;
  v3 = &result[OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_avatar];
  v4 = (*&result[OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_avatar] == 1) | *&result[OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_avatar + 8];
  v5 = *&result[OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_poster];
  if (v5 != 1)
  {
    v4 &= *&result[OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_poster + 8];
  }

  if (v4)
  {
    v82 = v1;
    v91 = *&result[OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_poster];
    if (result[OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_type] == 2)
    {
      v80 = result;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_199DF841C();

      v6 = aBlock;
      if (aBlock >> 62)
      {
        v38 = sub_199DFA87C();
        v6 = aBlock;
        if (!v38)
        {
        }
      }

      else
      {
        v38 = *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v38)
        {
        }
      }

      v88 = *v3;
      v90 = v6 & 0xC000000000000001;
      v81 = v6 & 0xFFFFFFFFFFFFFF8;
      v3 = 4;
      v84 = v38;
      v86 = v6;
      while (1)
      {
        v5 = (v3 - 4);
        if (v90)
        {
          v39 = MEMORY[0x19A8F8520](v3 - 4);
        }

        else
        {
          if (v5 >= *(v81 + 16))
          {
            goto LABEL_77;
          }

          v39 = *(v6 + 8 * v3);
        }

        v40 = v39;
        v41 = *&v39[OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_avatar];
        if (v41 >= 2)
        {
          v44 = [v41 imageData];
          v45 = sub_199DF71FC();
          v47 = v46;

          v42 = sub_199DF71EC();
          v43 = v48;
          sub_199A9EF34(v45, v47);
        }

        else
        {
          v42 = 0;
          v43 = 0xE000000000000000;
        }

        v49 = *&v40[OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_poster];
        if (v49 >= 2)
        {
          v52 = [v49 identifier];
          v50 = sub_199DF9F8C();
          v51 = v53;
        }

        else
        {
          v50 = 0;
          v51 = 0xE000000000000000;
        }

        v93 = v43;
        sub_199DF81AC();
        MEMORY[0x19A8F7E00](v50, v51);

        v54 = v42;
        if (v88 >= 2)
        {
          v57 = [v88 imageData];
          v58 = sub_199DF71FC();
          v60 = v59;

          v55 = sub_199DF71EC();
          v56 = v61;
          sub_199A9EF34(v58, v60);
        }

        else
        {
          v55 = 0;
          v56 = 0xE000000000000000;
        }

        if (v91 >= 2)
        {
          v64 = [v91 identifier];
          v62 = sub_199DF9F8C();
          v63 = v65;

          v2 = v82;
        }

        else
        {
          v62 = 0;
          v63 = 0xE000000000000000;
        }

        aBlock = v55;
        v93 = v56;
        sub_199DF81AC();
        MEMORY[0x19A8F7E00](v62, v63);

        if (v54 == v55 && v43 == v93)
        {
          break;
        }

        v66 = sub_199DFA99C();

        if (v66)
        {
          goto LABEL_58;
        }

        v67 = v3 - 3;
        if (__OFADD__(v5, 1))
        {
          while (2)
          {
            __break(1u);
            while (2)
            {
              __break(1u);
LABEL_77:
              __break(1u);
LABEL_78:
              v79 = v6;
              v7 = sub_199DFA87C();
              v6 = v79;
              if (!v7)
              {
              }

LABEL_8:
              v8 = 0;
              v87 = *v3;
              v89 = v6 & 0xC000000000000001;
              v83 = v6 & 0xFFFFFFFFFFFFFF8;
              v85 = v7;
              v3 = v6;
LABEL_9:
              if (v89)
              {
                v9 = MEMORY[0x19A8F8520](v8);
              }

              else
              {
                if (v8 >= *(v83 + 16))
                {
                  continue;
                }

                v9 = *(v6 + 8 * v8 + 32);
              }

              break;
            }

            v10 = v9;
            v11 = *&v9[OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_avatar];
            if (v11 >= 2)
            {
              v14 = [v11 imageData];
              v15 = sub_199DF71FC();
              v17 = v16;

              v12 = sub_199DF71EC();
              v13 = v18;
              sub_199A9EF34(v15, v17);
            }

            else
            {
              v12 = 0;
              v13 = 0xE000000000000000;
            }

            v19 = *&v10[OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_poster];
            if (v19 >= 2)
            {
              v22 = [v19 identifier];
              v20 = sub_199DF9F8C();
              v21 = v23;
            }

            else
            {
              v20 = 0;
              v21 = 0xE000000000000000;
            }

            v93 = v13;
            sub_199DF81AC();
            MEMORY[0x19A8F7E00](v20, v21);

            v24 = v12;
            if (v87 >= 2)
            {
              v31 = [v87 imageData];
              v32 = sub_199DF71FC();
              v34 = v33;

              v25 = sub_199DF71EC();
              v26 = v35;
              sub_199A9EF34(v32, v34);
              if (v5 < 2)
              {
                goto LABEL_23;
              }

LABEL_21:
              v27 = [v5 identifier];
              v28 = sub_199DF9F8C();
              v30 = v29;

              v5 = v91;
            }

            else
            {
              v25 = 0;
              v26 = 0xE000000000000000;
              if (v5 >= 2)
              {
                goto LABEL_21;
              }

LABEL_23:
              v28 = 0;
              v30 = 0xE000000000000000;
            }

            aBlock = v25;
            v93 = v26;
            sub_199DF81AC();
            MEMORY[0x19A8F7E00](v28, v30);

            if (v24 == v25 && v13 == v93)
            {

LABEL_57:

              v68 = &v82[OBJC_IVAR____TtC10ContactsUI37CNAvatarPosterPairCollectionViewModel_pendingDeletedIndex];
              *v68 = v8;
              v2 = v82;
              v68[8] = 0;
              v82[OBJC_IVAR____TtC10ContactsUI37CNAvatarPosterPairCollectionViewModel_deletingContactPair] = 1;
              goto LABEL_64;
            }

            v36 = sub_199DFA99C();

            if (v36)
            {
              goto LABEL_57;
            }

            v37 = v8 + 1;
            if (__OFADD__(v8, 1))
            {
              __break(1u);
              continue;
            }

            break;
          }

          ++v8;
          v6 = v3;
          if (v37 == v85)
          {
          }

          goto LABEL_9;
        }

        ++v3;
        v6 = v86;
        if (v67 == v84)
        {
        }
      }

LABEL_58:

      swift_getKeyPath();
      swift_getKeyPath();
      sub_199DF841C();

      if ((aBlock & 0xC000000000000001) != 0)
      {
        v69 = MEMORY[0x19A8F8520](v3 - 4, aBlock);
      }

      else
      {
        if (v5 >= *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_84;
        }

        v69 = *(aBlock + 8 * v3);
      }

      v70 = v69;

      v71 = v70[OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_isRecentUsedAsContactPair];

      if (v71 == 1)
      {
        v2[OBJC_IVAR____TtC10ContactsUI37CNAvatarPosterPairCollectionViewModel_deletingContactPair] = 1;
      }

      v72 = &v2[OBJC_IVAR____TtC10ContactsUI37CNAvatarPosterPairCollectionViewModel_pendingDeletedIndex];
      *v72 = v5;
      v72[8] = 0;
LABEL_64:
      result = v80;
    }

    else if (!result[OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_type])
    {
      v80 = result;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_199DF841C();

      v6 = aBlock;
      if (aBlock >> 62)
      {
        goto LABEL_78;
      }

      v7 = *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v7)
      {
      }

      goto LABEL_8;
    }

    v63 = &v2[OBJC_IVAR____TtC10ContactsUI37CNAvatarPosterPairCollectionViewModel_pendingDeletedIndex];
    if (v2[OBJC_IVAR____TtC10ContactsUI37CNAvatarPosterPairCollectionViewModel_pendingDeletedIndex + 8])
    {
      return result;
    }

    sub_199B496F0(result);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_199DF841C();

    if (!(aBlock >> 62))
    {
      v73 = *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_68;
    }

LABEL_84:
    v73 = sub_199DFA87C();
LABEL_68:

    v74 = *&v2[OBJC_IVAR____TtC10ContactsUI37CNAvatarPosterPairCollectionViewModel_workQueue];
    v75 = swift_allocObject();
    *(v75 + 16) = v2;
    v96 = sub_199B49D70;
    v97 = v75;
    aBlock = MEMORY[0x1E69E9820];
    v93 = 1107296256;
    v94 = sub_199AB45A0;
    v95 = &block_descriptor_13;
    v76 = _Block_copy(&aBlock);
    swift_unknownObjectRetain();
    v77 = v2;

    [v74 performBlock_];
    _Block_release(v76);
    swift_unknownObjectRelease();
    if (__OFSUB__(v73, 1))
    {
      __break(1u);
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_199DF841C();

      if (!(aBlock >> 62))
      {
        v78 = *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_71;
      }
    }

    v78 = sub_199DFA87C();
LABEL_71:

    if (v73 - 1 != v78)
    {
      *v63 = 0;
      *(v63 + 8) = 1;
    }
  }

  return result;
}

id sub_199B44448()
{
  v1 = sub_199DF723C();
  v2 = *(v1 - 8);
  *&v3 = MEMORY[0x1EEE9AC00](v1).n128_u64[0];
  v5 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + OBJC_IVAR____TtC10ContactsUI37CNAvatarPosterPairCollectionViewModel_contact);
  v7 = [v6 imageData];
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  v9 = sub_199DF71FC();
  v11 = v10;

  v12 = [v6 identifier];
  v13 = sub_199DF9F8C();
  v15 = v14;

  v54 = v13;
  v55 = v15;
  v52 = 58;
  v53 = 0xE100000000000000;
  sub_199A9C458();
  v16 = sub_199DFA64C();

  if (*(v16 + 16))
  {
    sub_199DF81AC();

    sub_199AA7630(v9, v11);
    [v6 cropRect];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;
    sub_199DF722C();
    v25 = objc_allocWithZone(MEMORY[0x1E695CD88]);
    v26 = sub_199DF9F5C();

    v27 = sub_199DF71DC();
    v28 = sub_199DF721C();
    v51 = v5;
    v29 = v9;
    v30 = v11;
    v31 = v2;
    v32 = v1;
    v33 = v28;
    v34 = [v25 initWithIdentifier:v26 imageData:v27 cropRect:v28 lastUsedDate:{v18, v20, v22, v24}];

    v1 = v32;
    v2 = v31;
    v11 = v30;
    v9 = v29;
    v5 = v51;
    sub_199A9EF34(v9, v11);
  }

  else
  {

    sub_199AA7630(v9, v11);
    [v6 cropRect];
    v37 = v36;
    v39 = v38;
    v41 = v40;
    v43 = v42;
    sub_199DF722C();
    v44 = objc_allocWithZone(MEMORY[0x1E695CD88]);
    v45 = sub_199DF71DC();
    sub_199A9EF34(v9, v11);
    v46 = sub_199DF721C();
    v34 = [v44 initWithImageData:v45 cropRect:v46 lastUsedDate:{v37, v39, v41, v43}];
  }

  (*(v2 + 8))(v5, v1);
  v35 = v34;
  [v35 setSource_];
  [v6 isUsingSharedPhoto];
  v47 = [v6 thumbnailImageData];
  if (v47)
  {
    v48 = v47;
    sub_199DF71FC();

    sub_199A9EF34(v9, v11);
  }

  else
  {

    sub_199A9EF34(v9, v11);
  }

  return v35;
}

uint64_t sub_199B44844()
{
  v1 = sub_199DF723C();
  v2 = *(v1 - 8);
  *&v3 = MEMORY[0x1EEE9AC00](v1).n128_u64[0];
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + OBJC_IVAR____TtC10ContactsUI37CNAvatarPosterPairCollectionViewModel_contactForSharedProfile);
  v7 = [v6 imageData];
  if (!v7)
  {
    return 1;
  }

  v8 = v7;
  v9 = sub_199DF71FC();
  v11 = v10;

  v12 = *(v0 + OBJC_IVAR____TtC10ContactsUI37CNAvatarPosterPairCollectionViewModel_contact);
  sub_199AA7630(v9, v11);
  [v12 cropRect];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  sub_199DF722C();
  v21 = objc_allocWithZone(MEMORY[0x1E695CD88]);
  v22 = sub_199DF71DC();
  sub_199A9EF34(v9, v11);
  v23 = sub_199DF721C();
  v24 = [v21 initWithImageData:v22 cropRect:v23 lastUsedDate:{v14, v16, v18, v20}];

  (*(v2 + 8))(v5, v1);
  [v24 setSource_];
  v25 = [v6 thumbnailImageData];
  if (v25)
  {
    v26 = v25;
    sub_199DF71FC();
    sub_199A9EF34(v9, v11);
  }

  else
  {
    sub_199A9EF34(v9, v11);
  }

  return v24;
}

id sub_199B44AA4()
{
  v1 = sub_199DF723C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF73C00, &unk_199E3B930);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = v28 - v10;
  if (qword_1EAF718E0 != -1)
  {
    swift_once();
  }

  v12 = sub_199B73ABC(*(v0 + OBJC_IVAR____TtC10ContactsUI37CNAvatarPosterPairCollectionViewModel_contact), v9);
  sub_199A7A02C(0, &unk_1EAF75580, off_1E74DEC78);
  v13 = sub_199B2B2CC(v12);
  v28[0] = v14;
  v15 = v13;
  v16 = [v12 serverUUID];
  if (v16)
  {
    v17 = v16;
    sub_199DF727C();

    v18 = sub_199DF729C();
    (*(*(v18 - 8) + 56))(v7, 0, 1, v18);
  }

  else
  {
    v18 = sub_199DF729C();
    (*(*(v18 - 8) + 56))(v7, 1, 1, v18);
  }

  sub_199ADA5B8(v7, v11);
  sub_199DF729C();
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v11, 1, v18) == 1)
  {
    sub_199A79A04(v11, &unk_1EAF73C00, &unk_199E3B930);
  }

  else
  {
    sub_199DF724C();
    (*(v19 + 8))(v11, v18);
  }

  sub_199DF722C();
  v20 = objc_allocWithZone(MEMORY[0x1E695CDD0]);
  v21 = sub_199DF9F5C();

  v22 = v15;
  v23 = v28[0];
  v24 = sub_199DF71DC();
  v25 = sub_199DF721C();
  v26 = [v20 initWithIdentifier:v21 posterData:v24 lastUsedDate:v25];

  sub_199A9EF34(v22, v23);
  (*(v2 + 8))(v4, v1);
  return v26;
}

id sub_199B44E6C()
{
  v56[1] = *MEMORY[0x1E69E9840];
  v1 = sub_199DF723C();
  v55 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v49 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF73C00, &unk_199E3B930);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v8 = MEMORY[0x1EEE9AC00](v7).n128_u64[0];
  v10 = &v49 - v9;
  v11 = *(v0 + OBJC_IVAR____TtC10ContactsUI37CNAvatarPosterPairCollectionViewModel_contact);
  v12 = [v11 wallpaper];
  if (v12)
  {
    v13 = v12;
    v14 = [v12 contentIsSensitive];

    if (v14)
    {
      v15 = 256;
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  v16 = [v11 wallpaper];
  if (!v16)
  {
    return sub_199B44AA4();
  }

  v54 = v1;
  v17 = v16;
  v18 = [v16 posterArchiveData];

  v19 = sub_199DF71FC();
  v21 = v20;

  v22 = v21 >> 62;
  if ((v21 >> 62) > 1)
  {
    if (v22 != 2 || *(v19 + 16) == *(v19 + 24))
    {
      goto LABEL_20;
    }

    goto LABEL_13;
  }

  if (!v22)
  {
    if ((v21 & 0xFF000000000000) == 0)
    {
      goto LABEL_20;
    }

LABEL_13:
    v53 = v15;
    v23 = objc_opt_self();
    v24 = sub_199DF71DC();
    v56[0] = 0;
    v25 = [v23 unarchiveCNConfigurationFromData:v24 error:v56];

    if (!v25)
    {
      v33 = v56[0];
      v34 = sub_199DF717C();

      swift_willThrow();
      sub_199A9EF34(v19, v21);

      return sub_199B44AA4();
    }

    v26 = v56[0];
    v27 = [v11 wallpaper];
    if (!v27 || (v28 = v27, v29 = [v27 extensionBundleID], v28, !v29))
    {
      v30 = [v11 wallpaperMetadata];
      if (!v30)
      {
        v50 = 0;
        v51 = 0;
LABEL_25:
        v36 = [v25 serverUUID];
        if (v36)
        {
          v37 = v36;
          sub_199DF727C();

          v38 = 0;
        }

        else
        {
          v38 = 1;
        }

        v39 = sub_199DF729C();
        v40 = *(v39 - 8);
        (*(v40 + 56))(v6, v38, 1, v39);
        sub_199ADA5B8(v6, v10);
        v41 = (*(v40 + 48))(v10, 1, v39);
        v52 = v25;
        if (v41 == 1)
        {
          sub_199A79A04(v10, &unk_1EAF73C00, &unk_199E3B930);
        }

        else
        {
          sub_199DF724C();
          (*(v40 + 8))(v10, v39);
        }

        sub_199AA7630(v19, v21);
        sub_199DF722C();
        v42 = objc_allocWithZone(MEMORY[0x1E695CDD0]);
        v43 = sub_199DF9F5C();

        v44 = sub_199DF71DC();
        v45 = sub_199DF721C();
        v46 = [v42 initWithIdentifier:v43 posterData:v44 lastUsedDate:v45];

        sub_199A9EF34(v19, v21);
        (*(v55 + 8))(v3, v54);
        v47 = v52;
        if (v51)
        {
          if (v50 == 0xD00000000000002ELL && v51 == 0x8000000199E45770)
          {

LABEL_37:
            sub_199A9EF34(v19, v21);
            return v46;
          }

          v48 = sub_199DFA99C();

          if (v48)
          {

            goto LABEL_37;
          }
        }

        [v11 isUsingSharedPhoto];

        sub_199A9EF34(v19, v21);
        return v46;
      }

      v31 = v30;
      v29 = [v30 extensionBundleID];
    }

    v50 = sub_199DF9F8C();
    v51 = v32;

    goto LABEL_25;
  }

  if (v19 != v19 >> 32)
  {
    goto LABEL_13;
  }

LABEL_20:
  sub_199A9EF34(v19, v21);
  return sub_199B44AA4();
}

id sub_199B45474()
{
  v43[1] = *MEMORY[0x1E69E9840];
  v1 = sub_199DF723C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF73C00, &unk_199E3B930);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v9 = MEMORY[0x1EEE9AC00](v8).n128_u64[0];
  v11 = &v40 - v10;
  v12 = *(v0 + OBJC_IVAR____TtC10ContactsUI37CNAvatarPosterPairCollectionViewModel_contactForSharedProfile);
  v13 = [v12 wallpaper];
  if (v13)
  {
    v14 = v13;
    v15 = [v13 contentIsSensitive];
  }

  else
  {
    v15 = 0;
  }

  v16 = [v12 wallpaper];
  if (!v16)
  {
    return sub_199B44AA4();
  }

  v17 = v16;
  v18 = [v16 posterArchiveData];

  v19 = sub_199DF71FC();
  v21 = v20;

  v22 = v21 >> 62;
  if ((v21 >> 62) > 1)
  {
    if (v22 != 2 || *(v19 + 16) == *(v19 + 24))
    {
      goto LABEL_15;
    }
  }

  else if (v22)
  {
    if (v19 == v19 >> 32)
    {
LABEL_15:
      sub_199A9EF34(v19, v21);
      return sub_199B44AA4();
    }
  }

  else if ((v21 & 0xFF000000000000) == 0)
  {
    goto LABEL_15;
  }

  v42 = v2;
  v23 = objc_opt_self();
  v24 = sub_199DF71DC();
  v43[0] = 0;
  v25 = [v23 unarchiveCNConfigurationFromData:v24 error:v43];

  if (!v25)
  {
    v30 = v43[0];
    v31 = sub_199DF717C();

    swift_willThrow();
    sub_199A9EF34(v19, v21);

    return sub_199B44AA4();
  }

  v26 = v43[0];
  v27 = [v25 serverUUID];
  v41 = v25;
  if (v27)
  {
    v28 = v27;
    sub_199DF727C();

    v29 = 0;
  }

  else
  {
    v29 = 1;
  }

  v33 = sub_199DF729C();
  v34 = *(v33 - 8);
  (*(v34 + 56))(v7, v29, 1, v33);
  sub_199ADA5B8(v7, v11);
  if ((*(v34 + 48))(v11, 1, v33) == 1)
  {
    sub_199A79A04(v11, &unk_1EAF73C00, &unk_199E3B930);
  }

  else
  {
    sub_199DF724C();
    (*(v34 + 8))(v11, v33);
  }

  sub_199AA7630(v19, v21);
  sub_199DF722C();
  v35 = objc_allocWithZone(MEMORY[0x1E695CDD0]);
  v36 = sub_199DF9F5C();

  v37 = sub_199DF71DC();
  v38 = sub_199DF721C();
  v39 = [v35 initWithIdentifier:v36 posterData:v37 lastUsedDate:v38];

  sub_199A9EF34(v19, v21);
  (*(v42 + 8))(v4, v1);
  [v39 setContentIsSensitive_];
  sub_199A9EF34(v19, v21);

  return v39;
}

id sub_199B45958()
{
  v0 = sub_199DF723C();
  v32 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v30 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF73C00, &unk_199E3B930);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v30 - v7;
  v9 = [objc_allocWithZone(MEMORY[0x1E695CD58]) init];
  if (qword_1EAF718E0 != -1)
  {
    swift_once();
  }

  v10 = [objc_opt_self() lightGrayColor];
  v11 = sub_199B760E0(1, v9, v10, 0, 0, 2);
  v12 = objc_opt_self();
  v13 = sub_199DF9F5C();
  v14 = [v12 finalizedConfiguration:v11 forExtensionIdentifier:v13];

  if (v14)
  {

    v11 = v14;
  }

  sub_199A7A02C(0, &unk_1EAF75580, off_1E74DEC78);
  v15 = sub_199B2B2CC(v11);
  v31 = v0;
  v17 = v16;
  v18 = v15;
  v19 = [v11 serverUUID];
  if (v19)
  {
    v20 = v19;
    sub_199DF727C();

    v21 = sub_199DF729C();
    (*(*(v21 - 8) + 56))(v5, 0, 1, v21);
  }

  else
  {
    v21 = sub_199DF729C();
    (*(*(v21 - 8) + 56))(v5, 1, 1, v21);
  }

  sub_199ADA5B8(v5, v8);
  sub_199DF729C();
  v22 = *(v21 - 8);
  if ((*(v22 + 48))(v8, 1, v21) == 1)
  {
    sub_199A79A04(v8, &unk_1EAF73C00, &unk_199E3B930);
  }

  else
  {
    sub_199DF724C();
    (*(v22 + 8))(v8, v21);
  }

  sub_199DF722C();
  v23 = objc_allocWithZone(MEMORY[0x1E695CDD0]);
  v24 = sub_199DF9F5C();

  v25 = v18;
  v26 = sub_199DF71DC();
  v27 = sub_199DF721C();
  v28 = [v23 initWithIdentifier:v24 posterData:v26 lastUsedDate:v27];

  sub_199A9EF34(v25, v17);
  (*(v32 + 8))(v2, v31);
  return v28;
}

void sub_199B45DDC()
{
  v1 = sub_199B465EC();
  v2 = [objc_opt_self() unifiedMeContactMonitor];
  v3 = [v2 isMeContact_];

  v72 = v0;
  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = sub_199B469D4();
  }

  v89[4] = v1;
  v89[5] = v4;
  v5 = MEMORY[0x1E69E7CC0];
  v86 = MEMORY[0x1E69E7CC0];
  v70 = v4;
  v69 = v1;
  v6 = 0;
  v74 = v5;
  while (v6 != 2)
  {
    v7 = v89[v6++ + 4];
    if (v7)
    {
      v8 = v7;
      MEMORY[0x19A8F7E80]();
      if (*((v86 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v86 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_199DFA0EC();
      }

      sub_199DFA10C();
      v74 = v86;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF75570, &qword_199E406C8);
  swift_arrayDestroy();
  v9 = v74 >> 62;
  if (v0[OBJC_IVAR____TtC10ContactsUI37CNAvatarPosterPairCollectionViewModel_loadingMode])
  {
    goto LABEL_13;
  }

  if (v9)
  {
    if (sub_199DFA87C())
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if (!*((v74 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_13:
  }

LABEL_14:
  v10 = sub_199B46AC0();
  if (v9)
  {
    goto LABEL_68;
  }

  for (i = *((v74 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_199DFA87C())
  {
    v71 = v10 >> 62;
    if (!i)
    {
      break;
    }

    v88 = v5;
    sub_199DFA79C();
    if (i < 0)
    {
      __break(1u);
    }

    else
    {
      v5 = i;
      if (!v71)
      {
        v77 = v10 & 0xFFFFFFFFFFFFFF8;
        v81 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_20;
      }
    }

    v77 = v10 & 0xFFFFFFFFFFFFFF8;
    v81 = sub_199DFA87C();
LABEL_20:
    v12 = 0;
    v78 = v10 & 0xC000000000000001;
    v76 = v10;
    v73 = v5;
    while (v12 < v5)
    {
      if (__OFADD__(v12, 1))
      {
        goto LABEL_66;
      }

      v75 = v12 + 1;
      if ((v74 & 0xC000000000000001) != 0)
      {
        v27 = MEMORY[0x19A8F8520]();
      }

      else
      {
        if (v12 >= *((v74 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_67;
        }

        v27 = *(v74 + 32 + 8 * v12);
      }

      v28 = v27;
      if (v81)
      {
        v5 = 0;
        v82 = OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_poster;
        v83 = OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_avatar;
        v84 = v27;
        while (1)
        {
          if (v78)
          {
            v29 = MEMORY[0x19A8F8520](v5, v10);
          }

          else
          {
            if (v5 >= *(v77 + 16))
            {
              goto LABEL_64;
            }

            v29 = *(v10 + 8 * v5 + 32);
          }

          v30 = v29;
          v31 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
            break;
          }

          v80 = OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_avatar;
          v32 = *&v29[OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_avatar];
          if (v32 >= 2)
          {
            v35 = [v32 imageData];
            v36 = sub_199DF71FC();
            v38 = v37;

            v33 = sub_199DF71EC();
            v34 = v39;
            sub_199A9EF34(v36, v38);
          }

          else
          {
            v33 = 0;
            v34 = 0xE000000000000000;
          }

          v79 = OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_poster;
          v40 = *&v30[OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_poster];
          if (v40 >= 2)
          {
            v43 = [v40 identifier];
            v41 = sub_199DF9F8C();
            v42 = v44;
          }

          else
          {
            v41 = 0;
            v42 = 0xE000000000000000;
          }

          v86 = v33;
          v87 = v34;
          sub_199DF81AC();
          MEMORY[0x19A8F7E00](v41, v42);

          v45 = v86;
          v46 = v87;
          v47 = *&v28[v83];
          if (v47 >= 2)
          {
            v50 = [v47 imageData];
            v51 = sub_199DF71FC();
            v53 = v52;

            v48 = sub_199DF71EC();
            v49 = v54;
            v55 = v53;
            v28 = v84;
            sub_199A9EF34(v51, v55);
          }

          else
          {
            v48 = 0;
            v49 = 0xE000000000000000;
          }

          v56 = *&v28[v82];
          if (v56 >= 2)
          {
            v59 = [v56 identifier];
            v57 = sub_199DF9F8C();
            v58 = v60;

            v10 = v76;
          }

          else
          {
            v57 = 0;
            v58 = 0xE000000000000000;
          }

          v86 = v48;
          v87 = v49;
          sub_199DF81AC();
          MEMORY[0x19A8F7E00](v57, v58);

          if (v45 == v86 && v46 == v87)
          {
            v14 = v79;
            v13 = v80;
            v15 = &v30[v80];
            v16 = &v30[v79];

LABEL_22:
            v17 = *&v30[v13];
            v18 = *(v15 + 1);
            v19 = *(v15 + 2);
            v20 = *(v15 + 3);
            v21 = *&v30[v14];
            v22 = *(v16 + 4);
            v23 = type metadata accessor for CNAvatarPosterPair();
            v24 = objc_allocWithZone(v23);
            v24[OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_isRecentUsedAsContactPair] = 0;
            v24[OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_type] = 0;
            v25 = &v24[OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_avatar];
            *v25 = v17;
            v25[1] = v18;
            v25[2] = v19;
            v25[3] = v20;
            v26 = &v24[OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_poster];
            *v26 = v21;
            *(v26 + 4) = v22;
            sub_199B492C4(v17, v18, v19, v20);
            sub_199AA2284(v21);
            sub_199B492C4(v17, v18, v19, v20);
            sub_199AA2284(v21);
            v85.receiver = v24;
            v85.super_class = v23;
            objc_msgSendSuper2(&v85, sel_init);

            sub_199AA2294(v21);
            sub_199B49278(v17, v18, v19, v20);
            v10 = v76;
LABEL_23:
            v5 = v73;
            goto LABEL_24;
          }

          v61 = sub_199DFA99C();

          if (v61)
          {
            v14 = v79;
            v13 = v80;
            v15 = &v30[v80];
            v16 = &v30[v79];
            goto LABEL_22;
          }

          ++v5;
          v28 = v84;
          if (v31 == v81)
          {
            goto LABEL_23;
          }
        }

        __break(1u);
LABEL_64:
        __break(1u);
        break;
      }

LABEL_24:
      sub_199DFA77C();
      sub_199DFA7AC();
      sub_199DFA7BC();
      sub_199DFA78C();
      v12 = v75;
      if (v75 == v5)
      {

        v62 = v88;
        goto LABEL_58;
      }
    }

    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    ;
  }

  v62 = MEMORY[0x1E69E7CC0];
LABEL_58:
  v63 = sub_199DFA30C();
  v64 = CNUILogPosters();
  if (os_log_type_enabled(v64, v63))
  {
    sub_199DF81AC();
    v65 = swift_slowAlloc();
    *v65 = 134217984;
    if (v71)
    {
      v66 = sub_199DFA87C();
    }

    else
    {
      v66 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v65 + 4) = v66;

    _os_log_impl(&dword_199A75000, v64, v63, "Carousel has %ld recent pairs", v65, 0xCu);
    MEMORY[0x19A8FA1A0](v65, -1, -1);
  }

  v86 = v62;
  sub_199B438B0(v10, sub_199B48AC4);
  v67 = v86;
  swift_getKeyPath();
  swift_getKeyPath();
  v86 = v67;
  v68 = v72;
  sub_199DF842C();
}

char *sub_199B465EC()
{
  if (*(v0 + OBJC_IVAR____TtC10ContactsUI37CNAvatarPosterPairCollectionViewModel_deletingContactPair))
  {
    return 0;
  }

  v1 = sub_199B44448();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  if (*(v0 + OBJC_IVAR____TtC10ContactsUI37CNAvatarPosterPairCollectionViewModel_displayMode) == 1)
  {
    v8 = sub_199B44E6C();
    v10 = v9 & 0x101;
  }

  else
  {
    v10 = 0;
    v8 = 1;
  }

  v11 = type metadata accessor for CNAvatarPosterPair();
  v12 = objc_allocWithZone(v11);
  v12[OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_isRecentUsedAsContactPair] = 0;
  v12[OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_type] = 0;
  v13 = &v12[OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_avatar];
  *v13 = v1;
  v13[1] = v3 & 1;
  v13[2] = v5;
  v13[3] = v7;
  v14 = &v12[OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_poster];
  *v14 = v8;
  *(v14 + 4) = v10;
  v48 = v1;
  sub_199AFF43C(v5, v7);
  sub_199AA2284(v8);
  v51.receiver = v12;
  v51.super_class = v11;
  v15 = objc_msgSendSuper2(&v51, sel_init);
  v16 = sub_199B469D4();
  v17 = v16;
  v49 = v5;
  v50 = v7;
  if (v16)
  {
    v18 = *&v16[OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_avatar];
    v19 = v16;
    if (v18 > 1)
    {
      v23 = [v18 imageData];
      v24 = sub_199DF71FC();
      v26 = v25;

      v20 = sub_199DF71EC();
      v21 = v27;
      sub_199A9EF34(v24, v26);
    }

    else
    {
      v20 = 0;
      v21 = 0xE000000000000000;
    }

    v28 = *&v17[OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_poster];
    if (v28 >= 2)
    {
      v31 = [v28 identifier];
      v29 = sub_199DF9F8C();
      v30 = v32;
    }

    else
    {
      v29 = 0;
      v30 = 0xE000000000000000;
    }

    sub_199DF81AC();
    MEMORY[0x19A8F7E00](v29, v30);

    v22 = v20;
  }

  else
  {
    v22 = 0;
    v21 = 0;
  }

  v33 = *&v15[OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_avatar];
  if (v33 >= 2)
  {
    v36 = [v33 imageData];
    v37 = sub_199DF71FC();
    v39 = v38;

    v34 = sub_199DF71EC();
    v35 = v40;
    sub_199A9EF34(v37, v39);
  }

  else
  {
    v34 = 0;
    v35 = 0xE000000000000000;
  }

  v41 = *&v15[OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_poster];
  if (v41 >= 2)
  {
    v44 = [v41 identifier];
    v42 = sub_199DF9F8C();
    v43 = v45;
  }

  else
  {
    v42 = 0;
    v43 = 0xE000000000000000;
  }

  sub_199DF81AC();
  MEMORY[0x19A8F7E00](v42, v43);

  if (v21)
  {
    if (v22 == v34 && v21 == v35)
    {

      sub_199A9EF20(v49, v50);
      sub_199AA2294(v8);

LABEL_26:
      return 0;
    }

    v46 = sub_199DFA99C();

    sub_199A9EF20(v49, v50);
    sub_199AA2294(v8);

    if (v46)
    {
      goto LABEL_26;
    }
  }

  else
  {

    sub_199A9EF20(v49, v50);
    sub_199AA2294(v8);
  }

  return v15;
}

id sub_199B469D4()
{
  v1 = sub_199B44844();
  if (v1 == 1)
  {
    return 0;
  }

  v5 = v1;
  v6 = v2;
  v7 = v3;
  if (*(v0 + OBJC_IVAR____TtC10ContactsUI37CNAvatarPosterPairCollectionViewModel_displayMode) == 1)
  {
    v8 = sub_199B45474();
    v10 = v9;
  }

  else
  {
    v10 = 0;
    v8 = 1;
  }

  v11 = type metadata accessor for CNAvatarPosterPair();
  v12 = objc_allocWithZone(v11);
  v12[OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_isRecentUsedAsContactPair] = 0;
  v12[OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_type] = 1;
  v13 = &v12[OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_avatar];
  *v13 = v5;
  v13[1] = 0;
  v13[2] = v6;
  v13[3] = v7;
  v14 = &v12[OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_poster];
  *v14 = v8;
  *(v14 + 4) = v10;
  v15.receiver = v12;
  v15.super_class = v11;
  return objc_msgSendSuper2(&v15, sel_init);
}

id sub_199B46AC0()
{
  v72[1] = *MEMORY[0x1E69E9840];
  v1 = &selRef_imagesFilter;
  v2 = [objc_allocWithZone(MEMORY[0x1E695CFB0]) init];
  if (!*(v0 + OBJC_IVAR____TtC10ContactsUI37CNAvatarPosterPairCollectionViewModel_displayMode))
  {
    v20 = [objc_allocWithZone(MEMORY[0x1E695CDA8]) init];
    v21 = [*(v0 + OBJC_IVAR____TtC10ContactsUI37CNAvatarPosterPairCollectionViewModel_contact) identifier];
    if (!v21)
    {
      sub_199DF9F8C();
      v21 = sub_199DF9F5C();
    }

    v1 = [v2 recentImagesForContactWithIdentifier_];

    v72[0] = 0;
    v22 = [v20 performFetchRequest:v1 error:v72];
    v23 = v72[0];
    sub_199A7A02C(0, &qword_1EAF710C0, 0x1E695CD88);
    v24 = sub_199DFA0CC();
    v25 = v23;

    v72[0] = MEMORY[0x1E69E7CC0];
    if (v24 >> 62)
    {
      v3 = sub_199DFA87C();
      if (v3)
      {
LABEL_21:
        v62 = v25;
        v64 = v1;
        v67 = v2;
        v68 = v20;
        v4 = 0;
        v2 = (v24 & 0xC000000000000001);
        v5 = &unk_1EAF75000;
        v10 = 1;
        do
        {
          if (v2)
          {
            v26 = MEMORY[0x19A8F8520](v4, v24);
          }

          else
          {
            if (v4 >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_65;
            }

            v26 = *(v24 + 8 * v4 + 32);
          }

          v27 = v26;
          v1 = (v4 + 1);
          if (__OFADD__(v4, 1))
          {
            goto LABEL_64;
          }

          v28 = type metadata accessor for CNAvatarPosterPair();
          v29 = objc_allocWithZone(v28);
          v29[OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_isRecentUsedAsContactPair] = 0;
          v29[OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_type] = 2;
          v30 = &v29[OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_avatar];
          *v30 = v27;
          *(v30 + 8) = xmmword_199E402D0;
          *(v30 + 3) = 0xF000000000000000;
          v31 = &v29[OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_poster];
          *v31 = 1;
          *(v31 + 4) = 0;
          v69.receiver = v29;
          v69.super_class = v28;
          objc_msgSendSuper2(&v69, sel_init);
          MEMORY[0x19A8F7E80]();
          if (*((v72[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v72[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_199DFA0EC();
          }

          sub_199DFA10C();
          ++v4;
        }

        while (v1 != v3);
        v53 = v72[0];
        v2 = v67;
        v20 = v68;
        v25 = v62;
        v1 = v64;
        goto LABEL_72;
      }
    }

    else
    {
      v3 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v3)
      {
        goto LABEL_21;
      }
    }

    v53 = MEMORY[0x1E69E7CC0];
LABEL_72:

    return v53;
  }

  v3 = [objc_allocWithZone(MEMORY[0x1E695CE00]) init];
  v4 = *(v0 + OBJC_IVAR____TtC10ContactsUI37CNAvatarPosterPairCollectionViewModel_contact);
  v5 = &selRef_finishFlowAndSaveAsRecent_;
  v6 = [v4 identifier];
  if (!v6)
  {
    sub_199DF9F8C();
    v6 = sub_199DF9F5C();
  }

  v7 = [v2 recentPostersForContactWithIdentifier_];

  v72[0] = 0;
  v60 = v7;
  v8 = [(SEL *)v3 performFetchRequest:v7 error:v72];
  v9 = v72[0];
  sub_199A7A02C(0, &unk_1EAF75558, 0x1E695CDD0);
  v10 = sub_199DFA0CC();
  v68 = v9;

  v72[0] = MEMORY[0x1E69E7CC0];
  if (v10 >> 62)
  {
    goto LABEL_66;
  }

  for (i = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_199DFA87C())
  {
    v61 = v3;
    v12 = MEMORY[0x1E69E7CC0];
    v66 = v2;
    if (!i)
    {
      break;
    }

    v63 = v4;
    v1 = 0;
    v2 = (v10 & 0xC000000000000001);
    v3 = (v10 & 0xFFFFFFFFFFFFFF8);
    v5 = 1;
    while (1)
    {
      if (v2)
      {
        v13 = MEMORY[0x19A8F8520](v1, v10);
      }

      else
      {
        if (v1 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_61;
        }

        v13 = *(v10 + 8 * v1 + 32);
      }

      v14 = v13;
      v15 = v1 + 1;
      if (__OFADD__(v1, 1))
      {
        break;
      }

      v16 = [v13 pairedImage];
      v4 = type metadata accessor for CNAvatarPosterPair();
      v17 = objc_allocWithZone(v4);
      v17[OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_isRecentUsedAsContactPair] = 0;
      v17[OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_type] = 2;
      v18 = &v17[OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_avatar];
      *v18 = v16;
      *(v18 + 8) = xmmword_199E402D0;
      *(v18 + 3) = 0xF000000000000000;
      v19 = &v17[OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_poster];
      *v19 = v14;
      *(v19 + 4) = 1;
      v71.receiver = v17;
      v71.super_class = v4;
      objc_msgSendSuper2(&v71, sel_init);
      MEMORY[0x19A8F7E80]();
      if (*((v72[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v72[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v4 = *((v72[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_199DFA0EC();
      }

      sub_199DFA10C();
      v1 = (v1 + 1);
      if (v15 == i)
      {
        v59 = v72[0];
        v4 = v63;
        v2 = v66;
        v1 = &selRef_imagesFilter;
        v5 = 0x1E74F1000;
        v12 = MEMORY[0x1E69E7CC0];
        goto LABEL_32;
      }
    }

    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    ;
  }

  v59 = MEMORY[0x1E69E7CC0];
LABEL_32:

  v32 = [objc_allocWithZone(MEMORY[0x1E695CDA8]) v1[71]];
  v33 = [v4 *(v5 + 3304)];
  if (!v33)
  {
    sub_199DF9F8C();
    v33 = sub_199DF9F5C();
  }

  v34 = [v2 recentImagesForContactWithIdentifier_];

  v72[0] = v68;
  v57 = v34;
  v35 = [v32 performFetchRequest:v34 error:v72];
  v56 = v72[0];

  sub_199A7A02C(0, &qword_1EAF710C0, 0x1E695CD88);
  v5 = sub_199DFA0CC();

  v72[0] = v12;
  if (v5 >> 62)
  {
    v68 = (v5 & 0xFFFFFFFFFFFFFF8);
    v36 = sub_199DFA87C();
    v58 = v32;
    if (v36)
    {
LABEL_36:
      v3 = 0;
      v65 = MEMORY[0x1E69E7CC0];
      v2 = &off_1E74E9000;
      v55 = xmmword_199E402D0;
      v10 = v68;
LABEL_37:
      v37 = v3;
      while (1)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v38 = MEMORY[0x19A8F8520](v37, v5);
        }

        else
        {
          if (v37 >= *(v10 + 16))
          {
            goto LABEL_63;
          }

          v38 = *(v5 + 8 * v37 + 32);
        }

        v39 = v38;
        v3 = (v37 + 1);
        if (__OFADD__(v37, 1))
        {
          goto LABEL_62;
        }

        v40 = [v38 pairedPoster];
        if (!v40)
        {
          goto LABEL_56;
        }

        v41 = [v39 pairedPoster];
        if (v41)
        {
          v42 = v41;
          v1 = [v41 posterData];

          v4 = sub_199DF71FC();
          v44 = v43;

          v45 = v44 >> 62;
          if ((v44 >> 62) > 1)
          {
            if (v45 != 2)
            {
              sub_199A9EF34(v4, v44);
LABEL_56:
              v48 = sub_199B44AA4();
              v49 = type metadata accessor for CNAvatarPosterPair();
              v50 = objc_allocWithZone(v49);
              v50[OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_isRecentUsedAsContactPair] = 0;
              v50[OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_type] = 2;
              v51 = &v50[OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_avatar];
              *v51 = v39;
              *(v51 + 8) = xmmword_199E402D0;
              *(v51 + 3) = 0xF000000000000000;
              v52 = &v50[OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_poster];
              *v52 = v48;
              *(v52 + 4) = 1;
              v70.receiver = v50;
              v70.super_class = v49;
              objc_msgSendSuper2(&v70, sel_init);
              MEMORY[0x19A8F7E80]();
              if (*((v72[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v72[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_199DFA0EC();
                v10 = v68;
              }

              sub_199DFA10C();
              v65 = v72[0];
              if (v3 != v36)
              {
                goto LABEL_37;
              }

              goto LABEL_69;
            }

            v1 = *(v4 + 16);
            v46 = *(v4 + 24);
            sub_199A9EF34(v4, v44);
          }

          else
          {
            if (!v45)
            {
              sub_199A9EF34(v4, v44);
              if ((v44 & 0xFF000000000000) == 0)
              {
                goto LABEL_56;
              }

              goto LABEL_39;
            }

            sub_199A9EF34(v4, v44);
            v1 = v4;
            v46 = v4 >> 32;
          }

          v47 = v1 == v46;
          v10 = v68;
          if (v47)
          {
            goto LABEL_56;
          }
        }

LABEL_39:

        v37 = (v37 + 1);
        if (v3 == v36)
        {
          goto LABEL_69;
        }
      }
    }
  }

  else
  {
    v68 = (v5 & 0xFFFFFFFFFFFFFF8);
    v36 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v58 = v32;
    if (v36)
    {
      goto LABEL_36;
    }
  }

  v65 = MEMORY[0x1E69E7CC0];
LABEL_69:

  v72[0] = v59;
  sub_199B438B0(v65, sub_199B48AC4);

  return v72[0];
}

id sub_199B4744C()
{
  v1 = sub_199DF723C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_199DF722C();
  v5 = objc_allocWithZone(MEMORY[0x1E695CD88]);
  v6 = sub_199DF721C();
  v7 = [v5 initWithImageData:0 cropRect:v6 lastUsedDate:{0.0, 0.0, 0.0, 0.0}];

  (*(v2 + 8))(v4, v1);
  if (*(v0 + OBJC_IVAR____TtC10ContactsUI37CNAvatarPosterPairCollectionViewModel_displayMode) == 1)
  {
    v8 = sub_199B45958();
  }

  else
  {
    v8 = 1;
  }

  v9 = type metadata accessor for CNAvatarPosterPair();
  v10 = objc_allocWithZone(v9);
  v10[OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_isRecentUsedAsContactPair] = 0;
  v10[OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_type] = 3;
  v11 = &v10[OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_avatar];
  *v11 = v7;
  v11[1] = 0;
  v11[2] = 0;
  v11[3] = 0xF000000000000000;
  v12 = &v10[OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_poster];
  *v12 = v8;
  *(v12 + 4) = 0;
  v14.receiver = v10;
  v14.super_class = v9;
  return objc_msgSendSuper2(&v14, sel_init);
}

uint64_t type metadata accessor for CNAvatarPosterPairCollectionViewModel(uint64_t a1)
{
  result = qword_1EAF754F0;
  if (!qword_1EAF754F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_199B47758(uint64_t a1)
{
  sub_199B47830(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_199B47830(uint64_t a1)
{
  if (!qword_1EAF75500)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF75CA0, &qword_199E41F00);
    v1 = sub_199DF843C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EAF75500);
    }
  }
}

uint64_t sub_199B47894@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for CNAvatarPosterPairCollectionViewModel(0);
  result = sub_199DF83BC();
  *a2 = result;
  return result;
}

uint64_t sub_199B478D4(uint64_t a1, void *a2, char a3, uint64_t a4, unint64_t a5)
{
  if (a2)
  {
    sub_199DFAA9C();
    v9 = a2;
    sub_199DFA4FC();
  }

  else
  {
    sub_199DFAA9C();
  }

  sub_199DFAA9C();
  if (a5 >> 60 == 15)
  {
    return sub_199DFAA9C();
  }

  sub_199DFAA9C();

  return MEMORY[0x1EEDC45B0](a1, a4, a5);
}

void *sub_199B479A8@<X0>(uint64_t *a1@<X8>)
{
  result = *v1;
  if (*v1)
  {
    v4 = [result imageData];
    v5 = sub_199DF71FC();
    v7 = v6;

    v8 = sub_199DF71EC();
    v10 = v9;
    result = sub_199A9EF34(v5, v7);
  }

  else
  {
    v8 = 0;
    v10 = 0xE000000000000000;
  }

  *a1 = v8;
  a1[1] = v10;
  return result;
}

uint64_t sub_199B47A3C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  sub_199DFAA7C();
  sub_199B478D4(v6, v1, v2, v4, v3);
  return sub_199DFAABC();
}

uint64_t sub_199B47AB0(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  sub_199DFAA7C();
  sub_199B478D4(v7, v2, v3, v5, v4);
  return sub_199DFAABC();
}

void sub_199B47B34(uint64_t *a1@<X8>)
{
  if (*v1)
  {
    v3 = [*v1 identifier];
    v4 = sub_199DF9F8C();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0xE000000000000000;
  }

  *a1 = v4;
  a1[1] = v6;
}

uint64_t sub_199B47B9C()
{
  v1 = *v0;
  sub_199DFAA7C();
  sub_199DFAA9C();
  if (v1)
  {
    v2 = v1;
    sub_199DFA4FC();
  }

  sub_199DFAA9C();
  sub_199DFAA9C();
  return sub_199DFAABC();
}

uint64_t sub_199B47C30(uint64_t a1)
{
  v2 = *v1;
  if (*v1)
  {
    sub_199DFAA9C();
    v3 = v2;
    sub_199DFA4FC();
  }

  else
  {
    sub_199DFAA9C();
  }

  sub_199DFAA9C();
  return sub_199DFAA9C();
}

uint64_t sub_199B47CB4(uint64_t a1)
{
  v2 = *v1;
  sub_199DFAA7C();
  sub_199DFAA9C();
  if (v2)
  {
    v3 = v2;
    sub_199DFA4FC();
  }

  sub_199DFAA9C();
  sub_199DFAA9C();
  return sub_199DFAABC();
}

void *sub_199B47D44(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 9))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  if (*(a2 + 9))
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  return sub_199B48DF0(*a1, v2 | *(a1 + 8), *a2, v3 | *(a2 + 8));
}

id sub_199B47DC8(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t __swift_memcpy10_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t sub_199B47E94(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 10))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_199B47EF0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_199B47F98(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_199B47FF4(uint64_t result, unsigned int a2, unsigned int a3)
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
      *result = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CNAvatarPosterPairCollectionViewModel.LoadingMode(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for CNAvatarPosterPairCollectionViewModel.LoadingMode(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_199B481C8()
{
  result = qword_1EAF75538;
  if (!qword_1EAF75538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF75538);
  }

  return result;
}

unint64_t sub_199B48220()
{
  result = qword_1EAF75540;
  if (!qword_1EAF75540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF75540);
  }

  return result;
}

unint64_t sub_199B48278()
{
  result = qword_1EAF75548;
  if (!qword_1EAF75548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF75548);
  }

  return result;
}

unint64_t sub_199B482D0()
{
  result = qword_1EAF75550;
  if (!qword_1EAF75550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF75550);
  }

  return result;
}

uint64_t sub_199B48324@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v25 = *MEMORY[0x1E69E9840];
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
    v10 = sub_199DF6F2C();
    if (v10)
    {
      v11 = sub_199DF6F4C();
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
      result = sub_199DF6F3C();
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
  v10 = sub_199DF6F2C();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_199DF6F4C();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_199DF6F3C();
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

uint64_t sub_199B48554(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v13[2] = *MEMORY[0x1E69E9840];
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
    v10 = sub_199B48EB8(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_199A9EF34(a3, a4);
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
  sub_199B48324(v13, a3, a4, &v12);
  v10 = v4;
  sub_199A9EF34(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t sub_199B486E4(uint64_t a1, char a2)
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

  sub_199DFA87C();
LABEL_9:
  result = sub_199DFA75C();
  *v2 = result;
  return result;
}

uint64_t sub_199B48784(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_199DFA87C();
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
      result = sub_199DFA87C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_199B49D9C(&qword_1EAF755B0, &qword_1EAF755A8, &qword_199E40728);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF755A8, &qword_199E40728);
            v9 = sub_199AA05F4(v13, i, a3);
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
        sub_199A7A02C(0, &qword_1EAF71030, off_1E74DECA8);
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

uint64_t sub_199B48924(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_199DFA87C();
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
      result = sub_199DFA87C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_199B49D9C(&unk_1EAF75598, &qword_1EAF75590, &qword_199E40720);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75590, &qword_199E40720);
            v9 = sub_199AA05F4(v13, i, a3);
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
        sub_199A7A02C(0, &qword_1EAF710C0, 0x1E695CD88);
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

uint64_t sub_199B48AC4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_199DFA87C();
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
      result = sub_199DFA87C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_199B49D9C(&qword_1EAF75568, &qword_1EAF75CA0, &qword_199E41F00);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75CA0, &qword_199E41F00);
            v9 = sub_199AA07DC(v13, i, a3);
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
        type metadata accessor for CNAvatarPosterPair();
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

uint64_t sub_199B48C50(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_199DFA87C();
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
      result = sub_199DFA87C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_199B49D9C(&qword_1EAF755B8, &qword_1EAF73560, &unk_199E40730);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73560, &unk_199E40730);
            v9 = sub_199AA05F4(v13, i, a3);
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
        sub_199A7A02C(0, &qword_1ED615BF0, 0x1E695CD58);
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

void *sub_199B48DF0(void *result, int a2, void *a3, int a4)
{
  if (!result)
  {
    if (a3 || ((a2 ^ a4) & 1) != 0)
    {
      return result;
    }

    return (((a4 & 0x100) == 0) ^ ((a2 & 0x100) >> 8));
  }

  if (!a3)
  {
    return 0;
  }

  v5 = result;
  v6 = a2;
  v7 = a4;
  sub_199A7A02C(0, &unk_1EAF75558, 0x1E695CDD0);
  v8 = a3;
  v9 = v5;
  LOBYTE(v5) = sub_199DFA4EC();

  result = 0;
  if (v5)
  {
    LOWORD(a4) = v7;
    LOWORD(a2) = v6;
    if (((v6 ^ v7) & 1) == 0)
    {
      return (((a4 & 0x100) == 0) ^ ((a2 & 0x100) >> 8));
    }
  }

  return result;
}

uint64_t sub_199B48EB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_199DF6F2C();
  v11 = result;
  if (result)
  {
    result = sub_199DF6F4C();
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

  sub_199DF6F3C();
  sub_199B48324(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

BOOL sub_199B48F70(_BOOL8 result, unint64_t a2, uint64_t a3, unint64_t a4)
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
          sub_199AA7630(a3, a4);
          return sub_199B48554(v13, a2, a3, a4) & 1;
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

BOOL sub_199B490D8(_BOOL8 result, int a2, uint64_t a3, unint64_t a4, void *a5, int a6, uint64_t a7, unint64_t a8)
{
  if (result)
  {
    if (!a5)
    {
      return 0;
    }

    v13 = result;
    sub_199A7A02C(0, &qword_1EAF710C0, 0x1E695CD88);
    v16 = a5;
    v17 = v13;
    v18 = sub_199DFA4EC();

    result = 0;
    if (v18 & 1) == 0 || ((a2 ^ a6))
    {
      return result;
    }

LABEL_8:
    if (a4 >> 60 == 15)
    {
      if (a8 >> 60 == 15)
      {
        sub_199AFF43C(a3, a4);
        sub_199AFF43C(a7, a8);
        sub_199A9EF20(a3, a4);
        return 1;
      }
    }

    else if (a8 >> 60 != 15)
    {
      sub_199AFF43C(a3, a4);
      sub_199AFF43C(a7, a8);
      v19 = sub_199B48F70(a3, a4, a7, a8);
      sub_199A9EF20(a7, a8);
      sub_199A9EF20(a3, a4);
      return v19;
    }

    sub_199AFF43C(a3, a4);
    sub_199AFF43C(a7, a8);
    sub_199A9EF20(a3, a4);
    sub_199A9EF20(a7, a8);
    return 0;
  }

  if (!a5 && ((a2 ^ a6) & 1) == 0)
  {
    goto LABEL_8;
  }

  return result;
}

void *sub_199B49278(void *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (result != 1)
  {

    return sub_199A9EF20(a3, a4);
  }

  return result;
}

void *sub_199B492C4(void *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (result != 1)
  {
    v7 = result;

    return sub_199AFF43C(a3, a4);
  }

  return result;
}

uint64_t sub_199B49310(void x0_0, uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = a3 >> 1;
  v7 = (a3 >> 1) - a2;
  if (__OFSUB__(a3 >> 1, a2))
  {
    __break(1u);
  }

  else
  {
    v5 = a2;
    if (!(*v4 >> 62))
    {
      v8 = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v9 = __OFADD__(v8, v7);
      result = v8 + v7;
      if (!v9)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  v14 = sub_199DFA87C();
  v9 = __OFADD__(v14, v7);
  result = v14 + v7;
  if (v9)
  {
    goto LABEL_15;
  }

LABEL_4:
  result = sub_199B486E4(result, 1);
  v11 = *v4;
  if (v6 == v5)
  {
    if (v7 <= 0)
    {
LABEL_11:
      *v4 = v11;
      return result;
    }

    __break(1u);
  }

  if ((*((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1) - *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) < v7)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_199A7A02C(0, &qword_1EAF710C0, 0x1E695CD88);
  result = swift_arrayInitWithCopy();
  if (v7 <= 0)
  {
    goto LABEL_11;
  }

  v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v9 = __OFADD__(v12, v7);
  v13 = v12 + v7;
  if (!v9)
  {
    *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) = v13;
    goto LABEL_11;
  }

LABEL_17:
  __break(1u);
  return result;
}

void sub_199B49424(unint64_t a1, Class *a2, void *a3, SEL *a4, uint64_t a5)
{
  v6 = a3;
  v36[1] = *MEMORY[0x1E69E9840];
  v8 = a1 >> 62;
  if (a1 >> 62)
  {
    v28 = a2;
    v29 = a4;
    v30 = sub_199DFA87C();
    a4 = v29;
    a2 = v28;
    v6 = a3;
    if (v30)
    {
      goto LABEL_3;
    }

LABEL_21:
    sub_199DFA30C();
    v31 = CNUILogPosters();
    sub_199DF7FEC();

    return;
  }

  if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_21;
  }

LABEL_3:
  v35 = a4;
  v9 = [objc_allocWithZone(*a2) init];
  if (v8)
  {
    v10 = sub_199DFA87C();
  }

  else
  {
    v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v10)
  {
    v36[0] = MEMORY[0x1E69E7CC0];
    sub_199A9C55C(0, v10 & ~(v10 >> 63), 0);
    if (v10 < 0)
    {
      __break(1u);
    }

    v32 = v6;
    v33 = v9;
    v34 = v5;
    v11 = 0;
    v12 = v36[0];
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x19A8F8520](v11, a1);
      }

      else
      {
        v13 = *(a1 + 8 * v11 + 32);
      }

      v14 = v13;
      v15 = [v13 identifier];
      v16 = sub_199DF9F8C();
      v18 = v17;

      v36[0] = v12;
      v20 = v12[2];
      v19 = v12[3];
      if (v20 >= v19 >> 1)
      {
        sub_199A9C55C((v19 > 1), v20 + 1, 1);
        v12 = v36[0];
      }

      ++v11;
      v12[2] = v20 + 1;
      v21 = &v12[2 * v20];
      v21[4] = v16;
      v21[5] = v18;
    }

    while (v10 != v11);
    v9 = v33;
  }

  v22 = objc_opt_self();
  v23 = sub_199DFA0BC();

  v24 = [v22 *v35];

  v36[0] = 0;
  if ([v9 performDeleteRequest:v24 error:v36])
  {
    v25 = v36[0];
  }

  else
  {
    v26 = v36[0];
    sub_199DF717C();

    swift_willThrow();
  }
}

void sub_199B496F0(char *a1)
{
  v46 = MEMORY[0x1E69E7CC0];
  v45 = MEMORY[0x1E69E7CC0];
  v3 = OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_avatar;
  v4 = *&a1[OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_avatar];
  if (v4 >= 2)
  {
    v5 = v1;
    v6 = v4;
    MEMORY[0x19A8F7E80]();
    if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_199DFA0EC();
    }

    sub_199DFA10C();
    v7 = [v6 pairedPoster];
    if (v7)
    {
      if (*&a1[OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_poster] < 2uLL)
      {
        v43 = v7;
        v8 = sub_199DFA2FC();
        v9 = CNUILogPosters();
        if (os_log_type_enabled(v9, v8))
        {
          v10 = swift_slowAlloc();
          v11 = swift_slowAlloc();
          *v10 = 138412290;
          *(v10 + 4) = a1;
          *v11 = a1;
          v12 = a1;
          _os_log_impl(&dword_199A75000, v9, v8, "There was no poster in %@, but the avatar had a poster. Unexpected. Marking it for deletion.", v10, 0xCu);
          sub_199A79A04(v11, &unk_1EAF73A90, &unk_199E3A0B0);
          v13 = v11;
          v5 = v1;
          MEMORY[0x19A8FA1A0](v13, -1, -1);
          MEMORY[0x19A8FA1A0](v10, -1, -1);
        }

        v14 = v43;
        MEMORY[0x19A8F7E80]();
        if (*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v45 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_199DFA0EC();
        }

        sub_199DFA10C();

        goto LABEL_13;
      }
    }

LABEL_13:
    v1 = v5;
  }

  v15 = *&a1[OBJC_IVAR____TtC10ContactsUI18CNAvatarPosterPair_poster];
  if (v15 >= 2)
  {
    sub_199AA2284(v15);
    v16 = v15;
    MEMORY[0x19A8F7E80]();
    if (*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v45 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_199DFA0EC();
    }

    sub_199DFA10C();
    v17 = [v16 pairedImage];
    if (v17)
    {
      v18 = v17;
      if (*&a1[v3] >= 2uLL)
      {
        sub_199AA2294(v15);
      }

      else
      {
        v19 = sub_199DFA2FC();
        v20 = CNUILogPosters();
        if (os_log_type_enabled(v20, v19))
        {
          v21 = swift_slowAlloc();
          v22 = swift_slowAlloc();
          *v21 = 138412290;
          *(v21 + 4) = a1;
          *v22 = a1;
          v23 = a1;
          _os_log_impl(&dword_199A75000, v20, v19, "There was no avatar in %@, but the poster had an avatar. Unexpected. Marking it for deletion.", v21, 0xCu);
          sub_199A79A04(v22, &unk_1EAF73A90, &unk_199E3A0B0);
          MEMORY[0x19A8FA1A0](v22, -1, -1);
          MEMORY[0x19A8FA1A0](v21, -1, -1);
        }

        v24 = v18;
        MEMORY[0x19A8F7E80]();
        if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_199DFA0EC();
        }

        sub_199DFA10C();

        sub_199AA2294(v15);
      }
    }

    else
    {
      sub_199AA2294(v15);
    }
  }

  v25 = sub_199DF81AC();
  sub_199B49424(v25, 0x1E695CDA8, 0x1E695CD98, &selRef_requestToDeleteImageForIdentifiers_, "Skipping delete of 0 avatars");
  if (v1)
  {

    swift_bridgeObjectRelease_n();
  }

  else
  {

    v26 = sub_199DF81AC();
    sub_199B49424(v26, 0x1E695CE00, 0x1E695CDF0, &selRef_requestToDeletePosterForIdentifiers_, "Skipping delete of 0 posters");

    v27 = CNUILogPosters();
    v28 = sub_199DFA33C();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v44 = v30;
      *v29 = 136315394;
      v31 = sub_199A7A02C(0, &qword_1EAF710C0, 0x1E695CD88);
      v32 = sub_199DF81AC();
      v33 = MEMORY[0x19A8F7EB0](v32, v31);
      v35 = v34;

      v36 = sub_199A9BE90(v33, v35, &v44);

      *(v29 + 4) = v36;
      *(v29 + 12) = 2080;
      v37 = sub_199A7A02C(0, &unk_1EAF75558, 0x1E695CDD0);
      v38 = sub_199DF81AC();
      v39 = MEMORY[0x19A8F7EB0](v38, v37);
      v41 = v40;

      v42 = sub_199A9BE90(v39, v41, &v44);

      *(v29 + 14) = v42;
      _os_log_impl(&dword_199A75000, v27, v28, "Removed avatars: %s and posters: %s", v29, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x19A8FA1A0](v30, -1, -1);
      MEMORY[0x19A8FA1A0](v29, -1, -1);
    }
  }
}

uint64_t sub_199B49D9C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t CNContactHeaderQuickActionsGroupAction.init(actionBlock:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t CNContactHeaderQuickActionsModel.CustomAction.init(type:handler:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

void CNContactHeaderQuickActionsModel.init(contacts:actionTypes:groupActionsPerType:container:)(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  *(v5 + 16) = 0;
  v10 = MEMORY[0x1E69E7CC0];
  *(v5 + 24) = sub_199B4B498(MEMORY[0x1E69E7CC0]);
  v11 = sub_199B4B5B4(v10);
  *(v5 + 24) = a3;
  *(v5 + 32) = v11;
  sub_199DF81AC();

  v12 = objc_allocWithZone(CNContactQuickActionsController);
  swift_unknownObjectRetain();
  v13 = sub_199DFA0BC();
  v14 = [v12 initWithActionTypes:v13 contactQuickActionViewContainer:a4];

  swift_unknownObjectRelease();
  *(v5 + 40) = v14;
  v15 = type metadata accessor for CNContactHeaderQuickActionsControllerObserver();
  v16 = objc_allocWithZone(v15);
  *&v16[OBJC_IVAR____TtC10ContactsUIP33_3062C0EB640D5F51DAD6AB600DEB05B645CNContactHeaderQuickActionsControllerObserver_quickActionsController] = v14;
  *&v16[OBJC_IVAR____TtC10ContactsUIP33_3062C0EB640D5F51DAD6AB600DEB05B645CNContactHeaderQuickActionsControllerObserver_container] = a4;
  *&v16[OBJC_IVAR____TtC10ContactsUIP33_3062C0EB640D5F51DAD6AB600DEB05B645CNContactHeaderQuickActionsControllerObserver_actionTypes] = a2;
  v33.receiver = v16;
  v33.super_class = v15;
  swift_unknownObjectRetain();
  v17 = v14;
  sub_199DF81AC();
  v18 = objc_msgSendSuper2(&v33, sel_init);
  *(v5 + 48) = v18;
  [*(v5 + 40) setModelTrackingDelegate_];
  if (a1 >> 62)
  {
    if (sub_199DFA87C() == 1)
    {
      if (!sub_199DFA87C())
      {
        v20 = 0;
        goto LABEL_7;
      }

LABEL_3:
      if ((a1 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x19A8F8520](0, a1);
      }

      else
      {
        if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_21:
          __break(1u);
          return;
        }

        v19 = *(a1 + 32);
      }

      v20 = v19;
LABEL_7:
      v21 = *(v5 + 16);
      *(v5 + 16) = v20;
      v22 = v20;

      if (v20)
      {
        v23 = *(v5 + 40);

        [v23 setContact_];

        swift_unknownObjectRelease();
        return;
      }

      goto LABEL_21;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
  {
    goto LABEL_3;
  }

  v24 = *(a2 + 16);
  if (v24)
  {
    v32 = a2;
    v25 = (a2 + 40);
    do
    {
      v29 = *(v25 - 1);
      v28 = *v25;
      sub_199DF81AC();
      v30 = sub_199DF9F5C();
      v31 = [a4 viewForActionType_];

      if (*(a3 + 16))
      {
        sub_199AEF9E8(v29, v28);
        v27 = v26;
      }

      else
      {

        v27 = 0;
      }

      [v31 setEnabled_];

      v25 += 2;
      --v24;
    }

    while (v24);
  }

  swift_unknownObjectRelease();
}

uint64_t CNContactHeaderQuickActionsModel.__allocating_init(contact:actionTypes:customActions:container:)(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  swift_allocObject();
  v8 = sub_199B4B7DC(a1, a2, a3, a4);

  swift_unknownObjectRelease();
  return v8;
}

uint64_t CNContactHeaderQuickActionsModel.init(contact:actionTypes:customActions:container:)(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = sub_199B4B7DC(a1, a2, a3, a4);

  swift_unknownObjectRelease();
  return v5;
}

void sub_199B4A268(uint64_t a1, uint64_t a2)
{
  if (*(v2 + 16))
  {
    swift_beginAccess();
    v5 = *(v2 + 32);
    if (*(v5 + 16))
    {
      sub_199DF81AC();
      v6 = sub_199AEF9E8(a1, a2);
      if (v7)
      {
        v8 = *(v5 + 56) + 32 * v6;
        v9 = *(v8 + 16);
        v10 = *(v8 + 24);
        sub_199DF81AC();
        sub_199A9A57C(v9, v10);

        if (v9)
        {
          v9(v11);

          v12 = v9;
        }

        else
        {

          v12 = 0;
        }

        sub_199A9A5FC(v12, v10);
        return;
      }
    }

    v18 = *(v2 + 40);
    v19 = sub_199DF9F5C();
    [v18 executeTapBehaviorWithoutDisambiguationForActionType_];

    return;
  }

  v13 = *(v2 + 24);
  if (*(v13 + 16))
  {
    sub_199DF81AC();
    v14 = sub_199AEF9E8(a1, a2);
    if (v15)
    {
      v16 = *(*(v13 + 56) + 16 * v14);
      swift_retain_n();

      v16(v17);
    }

    else
    {
    }
  }
}

uint64_t sub_199B4A420(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 40);
  v4 = sub_199DF9F5C();
  v5 = [v3 disambiguationMenuForActionType_];

  sub_199A7A02C(0, &unk_1EAF755D8, 0x1E69DCC78);
  v6 = sub_199DFA0CC();

  return v6;
}

id *CNContactHeaderQuickActionsModel.deinit()
{

  return v0;
}

uint64_t CNContactHeaderQuickActionsModel.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void sub_199B4A558()
{
  v25 = *(*(v0 + OBJC_IVAR____TtC10ContactsUIP33_3062C0EB640D5F51DAD6AB600DEB05B645CNContactHeaderQuickActionsControllerObserver_actionTypes) + 16);
  if (!v25)
  {
    return;
  }

  v28 = OBJC_IVAR____TtC10ContactsUIP33_3062C0EB640D5F51DAD6AB600DEB05B645CNContactHeaderQuickActionsControllerObserver_quickActionsController;
  v24 = OBJC_IVAR____TtC10ContactsUIP33_3062C0EB640D5F51DAD6AB600DEB05B645CNContactHeaderQuickActionsControllerObserver_container;
  v1 = sub_199DF81AC();
  v2 = 0;
  v23 = v1;
  do
  {
    if (v2 >= *(v1 + 16))
    {
      __break(1u);
LABEL_22:
      __break(1u);
      return;
    }

    v27 = v2;
    v3 = *(v31 + v24);
    sub_199DF81AC();
    swift_unknownObjectRetain();
    v4 = sub_199DF9F5C();
    v5 = [v3 viewForActionType_];

    swift_unknownObjectRelease();
    v26 = v5;
    v6 = [v5 subviews];
    sub_199A7A02C(0, &unk_1EAF75660, 0x1E69DD250);
    v7 = sub_199DFA0CC();

    if (v7 >> 62)
    {
      v8 = sub_199DFA87C();
      if (!v8)
      {
        goto LABEL_3;
      }
    }

    else
    {
      v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v8)
      {
        goto LABEL_3;
      }
    }

    if (v8 < 1)
    {
      goto LABEL_22;
    }

    v9 = 0;
    v32 = v7 & 0xC000000000000001;
    v29 = v7;
    v30 = v8;
    do
    {
      if (v32)
      {
        v10 = MEMORY[0x19A8F8520](v9, v7);
      }

      else
      {
        v10 = *(v7 + 8 * v9 + 32);
      }

      v11 = v10;
      objc_opt_self();
      v12 = swift_dynamicCastObjCClass();
      if (v12)
      {
        v13 = v12;
        v14 = *(v31 + v28);
        v15 = v11;
        v16 = v14;
        v17 = sub_199DF9F5C();
        LODWORD(v14) = [v16 hasDefaultActionForActionType_];

        [v13 setShowsMenuAsPrimaryAction_];
        v7 = v29;
        v18 = *(v31 + v28);
        v19 = sub_199DF9F5C();
        v20 = [v18 disambiguationMenuForActionType_];

        sub_199A7A02C(0, &unk_1EAF755D8, 0x1E69DCC78);
        v21 = sub_199DFA0CC();

        sub_199A7A02C(0, &unk_1EAF75C60, 0x1E69DCC60);
        v22 = v21;
        v8 = v30;
        v11 = sub_199DFA46C();
        [v13 setMenu_];
      }

      ++v9;
    }

    while (v8 != v9);
LABEL_3:
    v2 = v27 + 1;

    v1 = v23;
  }

  while (v27 + 1 != v25);
}

id sub_199B4A974()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CNContactHeaderQuickActionsControllerObserver();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_199B4AA08(uint64_t a1)
{
  v2 = sub_199DFA6AC();

  return sub_199B4ABD0(a1, v2);
}

unint64_t sub_199B4AA4C(uint64_t a1)
{
  v2 = a1;
  v3 = sub_199AA9A60(*(v1 + 40), a1);

  return sub_199B4AC98(v2, v3);
}

unint64_t sub_199B4AA90(uint64_t a1, uint64_t a2)
{
  sub_199DF9F8C();
  sub_199DFAA7C();
  sub_199DF9FEC();
  v3 = sub_199DFAABC();

  return sub_199B4AF50(a1, v3);
}

unint64_t sub_199B4AB20(uint64_t a1)
{
  v2 = sub_199DFAA6C();

  return sub_199B4B054(a1, v2);
}

unint64_t sub_199B4AB64(uint64_t a1)
{
  v1 = a1;
  sub_199DFAA7C();
  MEMORY[0x19A8F8860](v1);
  v2 = sub_199DFAABC();

  return sub_199B4B0C0(v1, v2);
}

unint64_t sub_199B4ABD0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_199B4BC40(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x19A8F8490](v9, a1);
      sub_199B4BC9C(v9);
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

unint64_t sub_199B4AC98(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    v6 = a1;
    while (1)
    {
      v7 = *(*(v2 + 48) + v4);
      if (v7 <= 2)
      {
        if (*(*(v2 + 48) + v4))
        {
          if (v7 == 1)
          {
            v8 = 0x6464416C69616D65;
          }

          else
          {
            v8 = 0x64416C6174736F70;
          }

          if (v7 == 1)
          {
            v9 = 0xEC00000073736572;
          }

          else
          {
            v9 = 0xED00007373657264;
          }
        }

        else
        {
          v8 = 0x6D754E656E6F6870;
          v9 = 0xEB00000000726562;
        }
      }

      else if (*(*(v2 + 48) + v4) > 4u)
      {
        if (v7 == 5)
        {
          v9 = 0xE400000000000000;
          v8 = 1702129518;
        }

        else
        {
          v9 = 0xE600000000000000;
          v8 = 0x6D6F74737563;
        }
      }

      else
      {
        if (v7 == 3)
        {
          v8 = 0x7961646874726962;
        }

        else
        {
          v8 = 0x52746361746E6F63;
        }

        if (v7 == 3)
        {
          v9 = 0xE800000000000000;
        }

        else
        {
          v9 = 0xEF6E6F6974616C65;
        }
      }

      v10 = 0x6D6F74737563;
      if (v6 == 5)
      {
        v10 = 1702129518;
      }

      v11 = 0xE400000000000000;
      if (v6 != 5)
      {
        v11 = 0xE600000000000000;
      }

      v12 = 0x7961646874726962;
      if (v6 != 3)
      {
        v12 = 0x52746361746E6F63;
      }

      v13 = 0xEF6E6F6974616C65;
      if (v6 == 3)
      {
        v13 = 0xE800000000000000;
      }

      if (v6 <= 4)
      {
        v10 = v12;
        v11 = v13;
      }

      v14 = 0x6464416C69616D65;
      if (v6 != 1)
      {
        v14 = 0x64416C6174736F70;
      }

      v15 = 0xED00007373657264;
      if (v6 == 1)
      {
        v15 = 0xEC00000073736572;
      }

      if (!v6)
      {
        v14 = 0x6D754E656E6F6870;
        v15 = 0xEB00000000726562;
      }

      v16 = v6 <= 2 ? v14 : v10;
      v17 = v6 <= 2 ? v15 : v11;
      if (v8 == v16 && v9 == v17)
      {
        break;
      }

      v18 = sub_199DFA99C();

      if ((v18 & 1) == 0)
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

unint64_t sub_199B4AF50(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_199DF9F8C();
      v8 = v7;
      if (v6 == sub_199DF9F8C() && v8 == v9)
      {
        break;
      }

      v11 = sub_199DFA99C();

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

unint64_t sub_199B4B054(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_199B4B0C0(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_199B4B130(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75648, &unk_199E40878);
    v3 = sub_199DFA8BC();
    v4 = a1 + 32;

    while (1)
    {
      sub_199AAD408(v4, v13, &qword_1EAF75650, &qword_199E3E5C0);
      result = sub_199B4AA08(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_199B429C0(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

unint64_t sub_199B4B26C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75688, &qword_199E408A8);
    v3 = sub_199DFA8BC();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;
      sub_199DF81AC();
      result = sub_199AEF9E8(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_199B4B370(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF75670, &unk_199E40890);
    v3 = sub_199DFA8BC();
    v4 = a1 + 32;

    while (1)
    {
      sub_199AAD408(v4, &v12, &qword_1EAF72C68, &unk_199E39168);
      v5 = v12;
      result = sub_199B4AA90(v12, v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_199B429C0(&v13, (v3[7] + 32 * result));
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      v4 += 40;
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

unint64_t sub_199B4B498(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75698, &qword_199E408B8);
    v3 = sub_199DFA8BC();

    for (i = (a1 + 48); ; i += 2)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v13 = *i;
      sub_199DF81AC();

      result = sub_199AEF9E8(v5, v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      *(v3[7] + 16 * result) = v13;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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

unint64_t sub_199B4B5B4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75690, &qword_199E408B0);
    v3 = sub_199DFA8BC();

    for (i = (a1 + 72); ; i += 6)
    {
      v5 = *(i - 5);
      v6 = *(i - 4);
      v8 = *(i - 3);
      v7 = *(i - 2);
      v9 = *(i - 1);
      v10 = *i;
      sub_199DF81AC();
      sub_199DF81AC();
      sub_199A9A57C(v9, v10);
      result = sub_199AEF9E8(v5, v6);
      if (v12)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v3[6] + 16 * result);
      *v13 = v5;
      v13[1] = v6;
      v14 = (v3[7] + 32 * result);
      *v14 = v8;
      v14[1] = v7;
      v14[2] = v9;
      v14[3] = v10;
      v15 = v3[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v3[2] = v17;
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

unint64_t sub_199B4B6FC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75658, &qword_199E40888);
    v3 = sub_199DFA8BC();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_199B4AB20(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

uint64_t sub_199B4B7DC(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  *(v4 + 16) = 0;
  v9 = MEMORY[0x1E69E7CC0];
  *(v4 + 24) = sub_199B4B498(MEMORY[0x1E69E7CC0]);
  *(v4 + 32) = sub_199B4B5B4(v9);
  v10 = (v4 + 32);
  v11 = *(v4 + 16);
  v49 = v4;
  *(v4 + 16) = a1;
  v12 = a1;

  v13 = objc_allocWithZone(CNContactQuickActionsController);
  swift_unknownObjectRetain();
  v14 = sub_199DFA0BC();
  v15 = [v13 initWithActionTypes:v14 contactQuickActionViewContainer:a4];

  swift_unknownObjectRelease();
  *(v4 + 40) = v15;
  [v15 setContact_];
  v16 = *(v4 + 40);
  v17 = type metadata accessor for CNContactHeaderQuickActionsControllerObserver();
  v18 = objc_allocWithZone(v17);
  *&v18[OBJC_IVAR____TtC10ContactsUIP33_3062C0EB640D5F51DAD6AB600DEB05B645CNContactHeaderQuickActionsControllerObserver_quickActionsController] = v16;
  *&v18[OBJC_IVAR____TtC10ContactsUIP33_3062C0EB640D5F51DAD6AB600DEB05B645CNContactHeaderQuickActionsControllerObserver_container] = a4;
  *&v18[OBJC_IVAR____TtC10ContactsUIP33_3062C0EB640D5F51DAD6AB600DEB05B645CNContactHeaderQuickActionsControllerObserver_actionTypes] = a2;
  v52.receiver = v18;
  v52.super_class = v17;
  v50 = a4;
  swift_unknownObjectRetain();
  v19 = v16;
  v20 = objc_msgSendSuper2(&v52, sel_init);
  *(v4 + 48) = v20;
  [*(v4 + 40) setModelTrackingDelegate_];
  v21 = *(a3 + 16);
  if (!v21)
  {
    return v49;
  }

  v22 = (a3 + 56);
  while (1)
  {
    v29 = *(v22 - 3);
    v28 = *(v22 - 2);
    v30 = *(v22 - 1);
    v31 = *v22;
    swift_beginAccess();
    sub_199DF81AC();
    sub_199A9A57C(v30, v31);
    sub_199DF81AC();
    sub_199A9A57C(v30, v31);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v33 = *v10;
    v51 = *v10;
    *v10 = 0x8000000000000000;
    v34 = sub_199AEF9E8(v29, v28);
    v36 = v33[2];
    v37 = (v35 & 1) == 0;
    v38 = __OFADD__(v36, v37);
    v39 = v36 + v37;
    if (v38)
    {
      break;
    }

    v40 = v35;
    if (v33[3] < v39)
    {
      sub_199B74CB0(v39, isUniquelyReferenced_nonNull_native);
      v34 = sub_199AEF9E8(v29, v28);
      if ((v40 & 1) != (v41 & 1))
      {
        goto LABEL_18;
      }

LABEL_10:
      v42 = v51;
      if (v40)
      {
        goto LABEL_3;
      }

      goto LABEL_11;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_10;
    }

    v47 = v34;
    sub_199B75960();
    v34 = v47;
    v42 = v51;
    if (v40)
    {
LABEL_3:
      v23 = (v42[7] + 32 * v34);
      v24 = v23[2];
      v25 = v23[3];
      *v23 = v29;
      v23[1] = v28;
      v23[2] = v30;
      v23[3] = v31;

      sub_199A9A5FC(v24, v25);
      goto LABEL_4;
    }

LABEL_11:
    v42[(v34 >> 6) + 8] |= 1 << v34;
    v43 = (v42[6] + 16 * v34);
    *v43 = v29;
    v43[1] = v28;
    v44 = (v42[7] + 32 * v34);
    *v44 = v29;
    v44[1] = v28;
    v44[2] = v30;
    v44[3] = v31;
    v45 = v42[2];
    v38 = __OFADD__(v45, 1);
    v46 = v45 + 1;
    if (v38)
    {
      goto LABEL_17;
    }

    v42[2] = v46;
    sub_199DF81AC();
LABEL_4:
    v22 += 4;
    *v10 = v42;
    swift_endAccess();
    v26 = sub_199DF9F5C();
    v27 = [v50 viewForActionType_];

    [v27 setEnabled_];

    sub_199A9A5FC(v30, v31);
    if (!--v21)
    {
      return v49;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  result = sub_199DFA9FC();
  __break(1u);
  return result;
}

uint64_t sub_199B4BCF4()
{
  v0 = sub_199DF804C();
  __swift_allocate_value_buffer(v0, qword_1EAF870E0);
  __swift_project_value_buffer(v0, qword_1EAF870E0);
  return sub_199DF803C();
}

id sub_199B4BDBC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DuplicateContactCardView.Coordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_199B4BE34(uint64_t a1, uint64_t a2)
{
  v2 = [objc_opt_self() viewControllerForContact_];
  [v2 setShowContactPhotoPosterCell_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75778, &qword_199E409D8);
  sub_199DF911C();
  [v2 setDelegate_];

  [v2 setAllowsEditing_];
  [v2 setAllowsActions_];
  [v2 setForcesTransparentBackground_];
  return v2;
}

void *sub_199B4BF18@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = type metadata accessor for DuplicateContactCardView.Coordinator();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR____TtCV10ContactsUI24DuplicateContactCardView11Coordinator_parent] = v3;
  v8.receiver = v5;
  v8.super_class = v4;
  v6 = v3;
  result = objc_msgSendSuper2(&v8, sel_init);
  *a1 = result;
  return result;
}

void sub_199B4C034(uint64_t a1)
{
  sub_199B4C060();
  sub_199DF90BC();
  __break(1u);
}

unint64_t sub_199B4C060()
{
  result = qword_1EAF75780;
  if (!qword_1EAF75780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF75780);
  }

  return result;
}

id sub_199B4C0B4(id a1, id a2, char a3)
{
  v4 = a1;
  v48[1] = *MEMORY[0x1E69E9840];
  if ((a3 & 1) == 0)
  {
LABEL_11:
    v37 = [v4 copyWithDistinctIdentifier];
    v38 = 0;
    v23 = 0;
    if (!a2)
    {
      goto LABEL_13;
    }

LABEL_12:
    v39 = a2;
    [v37 mutableCopy];
    sub_199DFA66C();
    swift_unknownObjectRelease();
    sub_199B4C724();
    swift_dynamicCast();
    v40 = v48[0];
    [v39 updateImageForContact_];

    v4 = v39;
    v37 = v40;
    goto LABEL_13;
  }

  v5 = a1;
  v6 = [v5 identifier];
  v7 = sub_199DF9F8C();
  v9 = v8;

  v10 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v10 = v7 & 0xFFFFFFFFFFFFLL;
  }

  if (!v10)
  {

    goto LABEL_11;
  }

  v44 = a2;
  v11 = [objc_opt_self() descriptorForRequiredKeys];
  v46 = [objc_allocWithZone(MEMORY[0x1E695CE18]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72A60, &unk_199E38FD0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_199E37DF0;
  *(v12 + 32) = v11;
  v13 = objc_allocWithZone(MEMORY[0x1E695CD78]);
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74790, &qword_199E38F80);
  v14 = sub_199DFA0BC();

  a2 = [v13 initWithKeysToFetch_];

  v15 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF722B0, &unk_199E37150);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_199E37D40;
  v17 = [v5 identifier];

  v18 = sub_199DF9F8C();
  v20 = v19;

  *(v16 + 32) = v18;
  *(v16 + 40) = v20;
  v21 = sub_199DFA0BC();

  v22 = [v15 predicateForContactsWithIdentifiers_];

  [a2 setPredicate_];
  [a2 setUnifyResults_];
  v48[0] = 0;
  v23 = swift_allocObject();
  *(v23 + 16) = v48;
  v24 = swift_allocObject();
  v24[2] = sub_199B4C770;
  v24[3] = v23;
  aBlock[4] = sub_199B4C7AC;
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_199B7EFB4;
  aBlock[3] = &block_descriptor_14;
  v25 = _Block_copy(aBlock);

  aBlock[0] = 0;
  v45 = a2;
  v26 = [v46 enumerateContactsWithFetchRequest:a2 error:aBlock usingBlock:v25];
  _Block_release(v25);
  v27 = aBlock[0];
  LOBYTE(v20) = swift_isEscapingClosureAtFileLocation();

  if (v20)
  {
    __break(1u);
LABEL_20:
    swift_once();
    goto LABEL_8;
  }

  a2 = v44;
  if (v26)
  {
    goto LABEL_15;
  }

  v11 = sub_199DF717C();

  swift_willThrow();
  v28 = v48[0];
  v48[0] = 0;

  if (qword_1EAF71F10 != -1)
  {
    goto LABEL_20;
  }

LABEL_8:
  v29 = sub_199DF804C();
  __swift_project_value_buffer(v29, qword_1EAF870E0);
  v30 = v11;
  v31 = sub_199DF802C();
  v32 = sub_199DFA31C();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    aBlock[0] = v43;
    *v33 = 136315138;
    swift_getErrorValue();
    v34 = sub_199DFAA0C();
    v36 = sub_199A9BE90(v34, v35, aBlock);

    *(v33 + 4) = v36;
    _os_log_impl(&dword_199A75000, v31, v32, "Failed to refetch contact for duplicate contact card. %s", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v43);
    MEMORY[0x19A8FA1A0](v43, -1, -1);
    MEMORY[0x19A8FA1A0](v33, -1, -1);
  }

  else
  {
  }

LABEL_15:
  v42 = v5;
  if (v48[0])
  {
    v42 = v48[0];
  }

  v37 = [v42 copyWithDistinctIdentifier];
  swift_unknownObjectRelease();

  v38 = sub_199B4C770;
  if (a2)
  {
    goto LABEL_12;
  }

LABEL_13:

  sub_199A9A5FC(v38, v23);
  return v37;
}

unint64_t sub_199B4C724()
{
  result = qword_1EAF710A0;
  if (!qword_1EAF710A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EAF710A0);
  }

  return result;
}

void sub_199B4C770(void *a1, _BYTE *a2)
{
  v4 = *(v2 + 16);
  v5 = *v4;
  *v4 = a1;
  v6 = a1;

  *a2 = 1;
}

void sub_199B4C804(uint64_t a1)
{
  sub_199B4C8B0(319);
  if (v1 <= 0x3F)
  {
    sub_199B4C944();
    if (v2 <= 0x3F)
    {
      sub_199DF884C();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_199B4C8B0(uint64_t a1)
{
  if (!qword_1EAF71360)
  {
    type metadata accessor for CNWallpaperSuggestionsGalleryViewModel(255);
    sub_199B4D930(&qword_1EAF716B0, type metadata accessor for CNWallpaperSuggestionsGalleryViewModel, &unk_199E3EF20);
    v1 = sub_199DF87DC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EAF71360);
    }
  }
}

void sub_199B4C944()
{
  if (!qword_1EAF714B8)
  {
    v0 = sub_199DFA63C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EAF714B8);
    }
  }
}

unint64_t sub_199B4C994()
{
  result = qword_1EAF75788;
  if (!qword_1EAF75788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF75788);
  }

  return result;
}

double sub_199B4C9E8(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = sub_199DF86EC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v21[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v21[-v11];
  if (a2)
  {
    v13 = 10.0;
  }

  else
  {
    v13 = *&a1;
  }

  type metadata accessor for CNWallpaperSuggestionsGalleryLayout(0);
  if (sub_199DF883C())
  {
    v14 = [objc_opt_self() mainScreen];
    [v14 bounds];

    if (*v3 == 1)
    {
      sub_199DF876C();
      sub_199DF893C();
      v21[8] = v15 & 1;
      v21[0] = v16 & 1;
      sub_199DF86CC();
      (*(v7 + 8))(v12, v6);
    }

    sub_199DF876C();
    sub_199DF893C();
    v21[24] = v17 & 1;
    v21[16] = v18 & 1;
    sub_199DF86CC();
    (*(v7 + 8))(v9, v6);
    CGSizeMake();
    return v19;
  }

  return v13;
}

uint64_t sub_199B4CC4C(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9)
{
  v72 = a4;
  v71[1] = a3;
  v82 = a2;
  v79 = a1;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75790, &qword_199E40AD0);
  MEMORY[0x1EEE9AC00](v84);
  v77 = v71 - v15;
  v16 = sub_199DF86EC();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v85 = v71 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v76 = v71 - v20;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75798, &qword_199E40AD8);
  v75 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v81 = v71 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = v71 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = v71 - v26;
  MEMORY[0x1EEE9AC00](v28);
  v88 = v71 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v32 = v71 - v31;
  v99.origin.x = a6;
  v99.origin.y = a7;
  v99.size.width = a8;
  v99.size.height = a9;
  CGRectGetMidX(v99);
  v86 = v9;
  v80 = *v9;
  if (v80 == 1)
  {
    v33 = a5;
    sub_199DF876C();
    v34 = *(v17 + 56);
    v34(v32, 0, 1, v16);
  }

  else
  {
    v34 = *(v17 + 56);
    v33 = a5;
    v34(v32, 1, 1, v16);
  }

  v35 = v32;
  v83 = v32;
  v36 = v88;
  v74 = v33;
  sub_199DF876C();
  v34(v36, 0, 1, v16);
  sub_199B4D978(v35, v27);
  v37 = *(v17 + 48);
  v87 = v17 + 48;
  v38 = v37;
  v39 = v17;
  if (v37(v27, 1, v16) == 1)
  {
    sub_199A79A04(v27, &qword_1EAF75798, &qword_199E40AD8);
  }

  else
  {
    sub_199DF893C();
    v90 = v40 & 1;
    v89 = v41 & 1;
    sub_199DF86CC();
    (*(v17 + 8))(v27, v16);
  }

  v42 = v77;
  v43 = v76;
  type metadata accessor for CNWallpaperSuggestionsGalleryLayout(0);
  if ((sub_199DF883C() & 1) == 0)
  {
    sub_199B4D978(v88, v24);
    if (v38(v24, 1, v16) == 1)
    {
      sub_199A79A04(v24, &qword_1EAF75798, &qword_199E40AD8);
    }

    else
    {
      sub_199DF893C();
      v92 = v44 & 1;
      v91 = v45 & 1;
      sub_199DF86CC();
      (*(v17 + 8))(v24, v16);
    }
  }

  sub_199DF876C();
  if (v86[40])
  {
    if (v72)
    {
      v100.origin.x = a6;
      v100.origin.y = a7;
      v100.size.width = a8;
      v100.size.height = a9;
      CGRectGetHeight(v100);
    }

    v46 = v86;
  }

  else
  {
    v46 = v86;
  }

  if (sub_199DF883C())
  {
    v47 = [objc_opt_self() mainScreen];
    [v47 bounds];
  }

  v48 = *(*(v46 + 2) + OBJC_IVAR____TtC10ContactsUI38CNWallpaperSuggestionsGalleryViewModel_suggestionFormat) == 1;
  v73 = a6;
  if (v48)
  {
    v49 = a7;
    v50 = objc_opt_self();
    v51 = [v50 mainScreen];
    [v51 bounds];

    v52 = [v50 mainScreen];
    [v52 bounds];

    v53 = a8;
    if (v46[24] != 1)
    {
      v54 = a9;
      goto LABEL_28;
    }

    goto LABEL_26;
  }

  if (v82)
  {
    v101.origin.x = a6;
    v101.origin.y = a7;
    v101.size.width = a8;
    v101.size.height = a9;
    CGRectGetWidth(v101);
  }

  v49 = a7;
  v55 = [objc_opt_self() currentDevice];
  [v55 userInterfaceIdiom];

  v53 = a8;
  if (v46[24])
  {
LABEL_26:
    v54 = a9;
    goto LABEL_28;
  }

  v54 = a9;
LABEL_28:
  sub_199DF9C1C();
  v98 = 0;
  v97 = 0;
  sub_199DF86DC();
  v56 = *(v17 + 8);
  v56(v43, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF757A0, &unk_199E40AE0);
  v57 = *(v75 + 72);
  v58 = (*(v75 + 80) + 32) & ~*(v75 + 80);
  v59 = swift_allocObject() + v58;
  sub_199B4D978(v83, v59);
  sub_199B4D978(v88, v59 + v57);
  v86 = (v39 + 8);
  v60 = (v39 + 32);
  v61 = *(v84 + 48);
  *v42 = 0;
  sub_199B4D978(v59, v42 + v61);
  v62 = v81;
  sub_199B4D978(v42 + v61, v81);
  if (v38(v62, 1, v16) == 1)
  {
    sub_199A79A04(v62, &qword_1EAF75798, &qword_199E40AD8);
  }

  else
  {
    (*v60)(v85, v62, v16);
    sub_199DF893C();
    v96 = v63 & 1;
    v95 = v64 & 1;
    sub_199DF86CC();
    if (v82)
    {
      v102.origin.x = v73;
      v102.origin.y = v49;
      v102.size.width = v53;
      v102.size.height = v54;
      CGRectGetWidth(v102);
    }

    sub_199DF9C1C();
    v94 = 0;
    v93 = 0;
    v65 = v85;
    sub_199DF86DC();
    v56(v65, v16);
    v62 = v81;
  }

  sub_199A79A04(v42, &qword_1EAF75790, &qword_199E40AD0);
  v66 = *(v84 + 48);
  *v42 = 1;
  sub_199B4D978(v59 + v57, v42 + v66);
  sub_199B4D978(v42 + v66, v62);
  if (v38(v62, 1, v16) == 1)
  {
    sub_199A79A04(v62, &qword_1EAF75798, &qword_199E40AD8);
  }

  else
  {
    (*v60)(v85, v62, v16);
    sub_199DF893C();
    v96 = v67 & 1;
    v95 = v68 & 1;
    sub_199DF86CC();
    if (v82)
    {
      v103.origin.x = v73;
      v103.origin.y = v49;
      v103.size.width = v53;
      v103.size.height = v54;
      CGRectGetWidth(v103);
    }

    sub_199DF9C1C();
    v94 = 0;
    v93 = 0;
    v69 = v85;
    sub_199DF86DC();
    v56(v69, v16);
  }

  sub_199A79A04(v42, &qword_1EAF75790, &qword_199E40AD0);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_199A79A04(v88, &qword_1EAF75798, &qword_199E40AD8);
  return sub_199A79A04(v83, &qword_1EAF75798, &qword_199E40AD8);
}

uint64_t (*sub_199B4D85C(uint64_t *a1))()
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
  *(v2 + 32) = sub_199DF849C();
  return sub_199B4D8E4;
}

uint64_t sub_199B4D930(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_199B4D978(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75798, &qword_199E40AD8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_199B4D9E8()
{
  v1 = type metadata accessor for CNWallpaperSuggestionsSourceButtonViewLayout(0);
  if (sub_199DF883C())
  {
    sub_199DF875C();
    sub_199B4D930(&qword_1EAF71368, MEMORY[0x1E697E3C0], MEMORY[0x1E697E3D8]);
    sub_199DFA29C();
    sub_199DFA2BC();
    if (__OFSUB__(sub_199DFA2AC(), *(v0 + *(v1 + 24))))
    {
      __break(1u);
    }

    else
    {
      v2 = [objc_opt_self() preferredFontForTextStyle_];
      [v2 lineHeight];
    }
  }
}

uint64_t sub_199B4DC18(uint64_t a1, char a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF757A8, &qword_199E40BE8);
  v102 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106);
  v19 = &v89 - v18;
  v112 = sub_199DF86EC();
  v101 = *(v112 - 8);
  MEMORY[0x1EEE9AC00](v112);
  v111 = &v89 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v96 = &v89 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF757B0, &qword_199E40BF0);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v25 = &v89 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v104 = (&v89 - v27);
  v28 = sub_199DF875C();
  v100 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v105 = &v89 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF757B8, &qword_199E40BF8);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v98 = &v89 - v31;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF757C0, &qword_199E40C00);
  MEMORY[0x1EEE9AC00](v99);
  v33 = &v89 - v32;
  v34 = [objc_opt_self() currentDevice];
  v110 = COERCE_DOUBLE([v34 userInterfaceIdiom]);

  v35 = sub_199B4D930(&qword_1EAF71368, MEMORY[0x1E697E3C0], MEMORY[0x1E697E3D8]);
  sub_199DFA29C();
  sub_199DFA2BC();
  v36 = sub_199DFA2AC();
  result = type metadata accessor for CNWallpaperSuggestionsSourceButtonViewLayout(0);
  v95 = *(*&v10 + *(result + 24));
  v108 = v36 - v95;
  if (__OFSUB__(v36, v95))
  {
    goto LABEL_67;
  }

  v109 = result;
  v94 = a1;
  v103 = v25;
  v38 = 4;
  if (*&v110 == 1)
  {
    v38 = 5;
  }

  v39 = v38;
  sub_199DFA29C();
  sub_199DFA2BC();
  v107 = v28;
  v97 = v35;
  v40 = sub_199DFA2AC();
  if (v39 >= v40)
  {
    v41 = v40;
  }

  else
  {
    v41 = v39;
  }

  v42 = *(*&v10 + 8);
  v43 = OBJC_IVAR____TtC10ContactsUI38CNWallpaperSuggestionsGalleryViewModel_suggestionFormat;
  if (*(v42 + OBJC_IVAR____TtC10ContactsUI38CNWallpaperSuggestionsGalleryViewModel_suggestionFormat))
  {
    v44 = 8.0;
  }

  else
  {
    v44 = 15.0;
  }

  if (a2)
  {
    v115.origin.x = a3;
    v115.origin.y = a4;
    v115.size.width = a5;
    v115.size.height = a6;
    Width = CGRectGetWidth(v115);
  }

  else
  {
    Width = *&v94;
  }

  v110 = (v41 + -1.0) * v44;
  v46 = Width - v110;
  v47 = *(v109 + 20);
  result = sub_199DF883C();
  if (result)
  {
    v48 = v46;
  }

  else
  {
    v48 = v46 / v41;
  }

  if (*(v42 + v43))
  {
    v49 = 117.0;
  }

  else
  {
    result = sub_199DF883C();
    v49 = 99.0;
    if ((result & 1) == 0)
    {
      v49 = v48 + 24.0;
    }
  }

  if (v41 <= -9.22337204e18)
  {
LABEL_68:
    __break(1u);
  }

  else if (v41 < 9.22337204e18)
  {
    v90 = v49;
    v89 = v44;
    v50 = a3;
    v51 = a5;
    v52 = a6;
    v53 = v41;
    v54 = 0.0;
    v55 = 0.0;
    v56 = 0.0;
    if (v95 >= 1)
    {
      v55 = v48;
      if (sub_199DF883C())
      {
        v57 = v53;
        v55 = v48 / v53 <= 132.0 ? v48 / v53 : 132.0;
        v116.origin.x = v50;
        v116.origin.y = a4;
        v116.size.width = v51;
        v116.size.height = v52;
        v58 = (CGRectGetWidth(v116) - (v55 + 15.0) * v57) * 0.5;
        v54 = v58 < 0.0 ? 0.0 : v58;
        v110 = v55 * v57 + v110 + v54;
        v117.origin.x = v50;
        v117.origin.y = a4;
        v117.size.width = v51;
        v117.size.height = v52;
        v56 = 17.0;
        if (CGRectGetWidth(v117) < v110)
        {
          v54 = 0.0;
        }
      }
    }

    v109 = v47;
    v110 = v10;
    v59 = v100;
    v60 = v98;
    v61 = v107;
    (*(v100 + 16))(v98, a9, v107);
    (*(v59 + 32))(v105, v60, v61);
    sub_199B4D930(&qword_1EAF71370, MEMORY[0x1E697E3C0], MEMORY[0x1E697E3D0]);
    sub_199DFA08C();
    v94 = *(v99 + 36);
    *(v33 + v94) = 0;
    v62 = 0;
    v105 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF757C8, &qword_199E40C08) + 36);
    v95 = (v101 + 2);
    v63 = (v101 + 4);
    v64 = (v102 + 7);
    v102 += 6;
    v93 = v48;
    v92 = v90;
    v91 = v55;
    ++v101;
    v98 = (v53 - 1);
    v65 = __OFSUB__(v53, 1);
    LODWORD(v99) = v65;
    v66 = v89 + v48;
    v67 = v90 + 17.0;
    v90 = v89 + v90;
    v89 = v89 + v55;
    v68 = v55 + 17.0;
    v69 = 0.0;
    v70 = a4;
    while (1)
    {
      while (1)
      {
        sub_199DFA2BC();
        if (*&v105[v33] == v113[0])
        {
          v71 = 1;
          v72 = v106;
          v73 = v103;
        }

        else
        {
          v100 = v62;
          v74 = sub_199DFA2DC();
          v75 = v96;
          v76 = v112;
          (*v95)(v96);
          v74(v113, 0);
          v77 = v100;
          sub_199DFA2CC();
          v72 = v106;
          v78 = *(v106 + 48);
          *v19 = v77;
          result = (*v63)(&v19[v78], v75, v76);
          v79 = __OFADD__(v77, 1);
          v62 = v77 + 1;
          if (v79)
          {
            __break(1u);
LABEL_64:
            __break(1u);
LABEL_65:
            __break(1u);
LABEL_66:
            __break(1u);
LABEL_67:
            __break(1u);
            goto LABEL_68;
          }

          *(v33 + v94) = v62;
          v73 = v103;
          sub_199AB7794(v19, v103, &qword_1EAF757A8, &qword_199E40BE8);
          v71 = 0;
        }

        (*v64)(v73, v71, 1, v72);
        v80 = v73;
        v81 = v104;
        sub_199AB7794(v80, v104, &qword_1EAF757B0, &qword_199E40BF0);
        if ((*v102)(v81, 1, v72) == 1)
        {
          return sub_199A79A04(v33, &qword_1EAF757C0, &qword_199E40C00);
        }

        v82 = v19;
        v83 = *v81;
        (*v63)(v111, v81 + *(v72 + 48), v112);
        if ((sub_199DF883C() & 1) != 0 && v83 >= v108 && v83 == v108)
        {
          a4 = v56 + v70;
          v69 = v54;
          v70 = v56 + v70;
        }

        sub_199DF9C1C();
        LOBYTE(v113[0]) = 0;
        v114 = 0;
        v84 = v111;
        sub_199DF86DC();
        v85 = sub_199DF883C();
        result = (*v101)(v84, v112);
        if (v85)
        {
          break;
        }

        if (v99)
        {
          goto LABEL_64;
        }

        v88 = v67 + a4;
        if (v83 == v98)
        {
          a4 = v67 + a4;
          v69 = 0.0;
        }

        else
        {
          v69 = v66 + v69;
        }

        if (v83 == v98)
        {
          v70 = v88;
        }

LABEL_37:
        v19 = v82;
      }

      v86 = &v83[-v108];
      if (v83 < v108)
      {
        a4 = v90 + a4;
        v70 = a4;
        goto LABEL_37;
      }

      if (__OFSUB__(v83, v108))
      {
        goto LABEL_65;
      }

      if (v99)
      {
        goto LABEL_66;
      }

      v19 = v82;
      v87 = v68 + a4;
      if (v86 == v98)
      {
        a4 = v68 + a4;
        v69 = v54;
      }

      else
      {
        v69 = v89 + v69;
      }

      if (v86 == v98)
      {
        v70 = v87;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t (*sub_199B4E7AC(uint64_t *a1))()
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
  *(v2 + 32) = sub_199DF849C();
  return sub_199B4E9C8;
}

void sub_199B4E834(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

void sub_199B4E8C4(uint64_t a1)
{
  sub_199B4C8B0(319);
  if (v1 <= 0x3F)
  {
    sub_199DF884C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

id sub_199B4EA1C()
{
  v1 = OBJC_IVAR____TtC10ContactsUI40CNWallpaperSuggestionsGalleryViewWrapper_hostingController;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_199B4EAD0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC10ContactsUI40CNWallpaperSuggestionsGalleryViewWrapper_hostingController;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_199B4EB28(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC10ContactsUI40CNWallpaperSuggestionsGalleryViewWrapper_hostingController;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

id CNWallpaperSuggestionsGalleryViewWrapper.__allocating_init(with:windowScene:mode:contact:isEditingSNaP:isOnboarding:photoLibraryAssetID:)(uint64_t a1, void *a2, uint64_t a3, void *a4, int a5, int a6, uint64_t a7, uint64_t a8)
{
  v54 = a5;
  v55 = a6;
  v60 = a2;
  v13 = type metadata accessor for CNWallpaperSuggestionsGallery(0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v57 = &v53 - v17;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF757E0, &unk_199E40C20);
  MEMORY[0x1EEE9AC00](v56);
  v59 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v53 - v20;
  v61 = v8;
  v58 = objc_allocWithZone(v8);
  swift_unknownObjectWeakInit();
  LOBYTE(v66) = 0;
  v22 = a4;
  swift_unknownObjectRetain();
  sub_199DF983C();
  v23 = v64;
  v15[88] = v63;
  *(v15 + 12) = v23;
  v66 = 0;
  v67 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74540, &qword_199E3D4D0);
  sub_199DF983C();
  v24 = v64;
  v25 = v65;
  *(v15 + 13) = v63;
  v15[112] = v24;
  *(v15 + 15) = v25;
  *(v15 + 16) = swift_getKeyPath();
  v15[136] = 0;
  v26 = v13[12];
  *&v15[v26] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72D30, &qword_199E39598);
  swift_storeEnumTagMultiPayload();
  v27 = objc_allocWithZone(type metadata accessor for CNWallpaperSuggestionsGalleryViewModel(0));
  v28 = v22;
  sub_199B2F998(v28, a3 != 0, a7, a8);

  sub_199B58020(&qword_1EAF716B0, type metadata accessor for CNWallpaperSuggestionsGalleryViewModel, &unk_199E3EF20);
  *(v15 + 1) = sub_199DF87AC();
  *(v15 + 2) = v29;
  swift_unknownObjectWeakAssign();
  v30 = v55;
  v15[v13[13]] = v54;
  v15[v13[14]] = v30;
  v31 = [objc_allocWithZone(MEMORY[0x1E695CF18]) init];
  v32 = [v28 givenName];
  if (!v32)
  {
    sub_199DF9F8C();
    v32 = sub_199DF9F5C();
  }

  [v31 setGivenName_];

  v33 = [v28 familyName];
  if (!v33)
  {
    sub_199DF9F8C();
    v33 = sub_199DF9F5C();
  }

  [v31 setFamilyName_];

  v15[v13[15]] = [objc_opt_self() nameOrderForContact_] == 1;
  v34 = [v28 givenName];
  v35 = sub_199DF9F8C();
  v37 = v36;

  *(v15 + 3) = v35;
  *(v15 + 4) = v37;
  *(v15 + 5) = 0;
  v38 = [v28 familyName];
  v39 = sub_199DF9F8C();
  v41 = v40;

  *(v15 + 6) = v39;
  *(v15 + 7) = v41;
  *(v15 + 8) = 0;
  [v28 mutableCopy];
  sub_199DFA66C();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_199A7A02C(0, &qword_1EAF710A0, 0x1E695CF18);
  swift_dynamicCast();
  *(v15 + 9) = v66;
  *(v15 + 10) = 0;
  v42 = v57;
  sub_199B58478(v15, v57, type metadata accessor for CNWallpaperSuggestionsGallery);
  KeyPath = swift_getKeyPath();
  sub_199B58478(v42, v21, type metadata accessor for CNWallpaperSuggestionsGallery);
  v44 = &v21[*(v56 + 36)];
  v46 = v59;
  v45 = v60;
  *v44 = KeyPath;
  v44[1] = v45;
  sub_199AAD408(v21, v46, &qword_1EAF757E0, &unk_199E40C20);
  v47 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF757E8, &unk_199E40C90));
  v48 = v45;
  v49 = sub_199DF8DFC();
  v50 = v58;
  *&v58[OBJC_IVAR____TtC10ContactsUI40CNWallpaperSuggestionsGalleryViewWrapper_hostingController] = v49;
  v62.receiver = v50;
  v62.super_class = v61;
  v51 = objc_msgSendSuper2(&v62, sel_init);

  swift_unknownObjectRelease();
  sub_199A79A04(v21, &qword_1EAF757E0, &unk_199E40C20);
  return v51;
}

id CNWallpaperSuggestionsGalleryViewWrapper.init(with:windowScene:mode:contact:isEditingSNaP:isOnboarding:photoLibraryAssetID:)(uint64_t a1, void *a2, uint64_t a3, void *a4, unsigned int a5, unsigned int a6, uint64_t a7, uint64_t a8)
{
  v10 = sub_199B5739C(a1, a2, a3, a4, a5, a6, a7, a8);
  swift_unknownObjectRelease();

  return v10;
}

id CNWallpaperSuggestionsGalleryViewWrapper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CNWallpaperSuggestionsGalleryViewWrapper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CNWallpaperSuggestionsGalleryViewWrapper();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_199B4F38C@<X0>(uint64_t a1@<X8>)
{
  v98 = a1;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF74FB8, &qword_199E40E10);
  MEMORY[0x1EEE9AC00](v104);
  v81 = &v75 - v2;
  v3 = type metadata accessor for CNWallpaperSuggestionsGallery(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF757F8, &qword_199E40E18);
  v96 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97);
  v95 = &v75 - v7;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75800, &qword_199E40E20);
  v93 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94);
  v92 = &v75 - v8;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75808, &qword_199E40E28);
  v90 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91);
  v89 = &v75 - v9;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75810, &qword_199E40E30);
  v87 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v99 = &v75 - v10;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75818, &qword_199E40E38);
  v85 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v84 = &v75 - v11;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75820, &qword_199E40E40);
  v82 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83);
  v80 = &v75 - v12;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75828, &unk_199E40E48);
  v79 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v14 = &v75 - v13;
  v15 = v1;
  sub_199B58890(v1, v6, type metadata accessor for CNWallpaperSuggestionsGallery);
  v16 = *(v4 + 80);
  v17 = (v16 + 16) & ~v16;
  v106 = v17 + v5;
  v107 = v16;
  v18 = swift_allocObject();
  v108 = v17;
  v19 = v6;
  sub_199B58478(v6, v18 + v17, type metadata accessor for CNWallpaperSuggestionsGallery);
  *&v110 = sub_199B57D50;
  *(&v110 + 1) = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73690, &qword_199E3B0F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_199E3A600;
  LOBYTE(v6) = sub_199DF919C();
  *(inited + 32) = v6;
  v21 = sub_199DF91BC();
  *(inited + 33) = v21;
  v22 = sub_199DF918C();
  *(inited + 34) = v22;
  sub_199DF91AC();
  sub_199DF91AC();
  if (sub_199DF91AC() != v6)
  {
    sub_199DF91AC();
  }

  sub_199DF91AC();
  if (sub_199DF91AC() != v21)
  {
    sub_199DF91AC();
  }

  sub_199DF91AC();
  if (sub_199DF91AC() != v22)
  {
    sub_199DF91AC();
  }

  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75830, &qword_199E40E58);
  v24 = sub_199AA0B90(&qword_1EAF71380, &qword_1EAF75830, &qword_199E40E58, MEMORY[0x1E697E378]);
  sub_199DF94AC();

  v25 = v15;
  v101 = *(v15 + 16);
  swift_getKeyPath();
  swift_getKeyPath();
  v26 = v81;
  sub_199DF841C();

  v105 = type metadata accessor for CNWallpaperSuggestionsGallery;
  v103 = v25;
  v27 = v19;
  sub_199B58890(v25, v19, type metadata accessor for CNWallpaperSuggestionsGallery);
  v28 = swift_allocObject();
  v100 = type metadata accessor for CNWallpaperSuggestionsGallery;
  sub_199B58478(v19, v28 + v108, type metadata accessor for CNWallpaperSuggestionsGallery);
  *&v110 = v23;
  *(&v110 + 1) = v24;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v76 = sub_199B57F6C();
  v29 = v80;
  v30 = v78;
  v31 = v104;
  sub_199DF962C();

  sub_199A79A04(v26, &unk_1EAF74FB8, &qword_199E40E10);
  (*(v79 + 8))(v14, v30);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_199DF841C();

  LOBYTE(v109) = v110;
  v102 = v27;
  v32 = v105;
  sub_199B58890(v25, v27, v105);
  v33 = swift_allocObject() + v108;
  v34 = v27;
  v35 = v100;
  sub_199B58478(v34, v33, v100);
  *&v110 = v30;
  *(&v110 + 1) = v31;
  v111 = OpaqueTypeConformance2;
  v112 = v76;
  v104 = MEMORY[0x1E6981440];
  v81 = swift_getOpaqueTypeConformance2();
  v36 = v84;
  v37 = v83;
  sub_199DF962C();

  (*(v82 + 8))(v29, v37);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_199DF841C();

  v38 = v110;
  v109 = v110;
  v39 = v102;
  sub_199B58890(v103, v102, v32);
  v40 = swift_allocObject();
  v41 = v108;
  sub_199B58478(v39, v40 + v108, v35);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF740A0, &unk_199E3C3C0);
  *&v110 = v37;
  *(&v110 + 1) = MEMORY[0x1E69E6370];
  v111 = v81;
  v112 = MEMORY[0x1E69E6388];
  v83 = swift_getOpaqueTypeConformance2();
  v43 = sub_199B58098();
  v44 = v86;
  v45 = v42;
  sub_199DF962C();

  (*(v85 + 8))(v36, v44);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_199DF841C();

  v46 = v110;
  v109 = v110;
  v47 = v102;
  v48 = v103;
  sub_199B58890(v103, v102, v105);
  v49 = swift_allocObject();
  v50 = v100;
  sub_199B58478(v47, v49 + v41, v100);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF74FD0, &qword_199E3EE40);
  *&v110 = v44;
  *(&v110 + 1) = v45;
  v111 = v83;
  v112 = v43;
  v84 = swift_getOpaqueTypeConformance2();
  v86 = sub_199B58230();
  v51 = v89;
  v52 = v88;
  v53 = v99;
  sub_199DF962C();

  (*(v87 + 8))(v53, v52);
  v54 = *(v48 + 40);
  v110 = *(v48 + 24);
  v111 = v54;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73FD8, &qword_199E40F90);
  sub_199DF984C();
  v55 = v102;
  v56 = v105;
  sub_199B58890(v48, v102, v105);
  v57 = swift_allocObject();
  v58 = v108;
  sub_199B58478(v55, v57 + v108, v50);
  *&v110 = v52;
  *(&v110 + 1) = v85;
  v111 = v84;
  v112 = v86;
  v59 = swift_getOpaqueTypeConformance2();
  v60 = v92;
  v61 = v91;
  sub_199DF962C();

  (*(v90 + 8))(v51, v61);
  v62 = v103;
  v63 = *(v103 + 64);
  v110 = *(v103 + 48);
  v111 = v63;
  sub_199DF984C();
  v64 = v62;
  v65 = v102;
  sub_199B58890(v64, v102, v56);
  v66 = swift_allocObject() + v58;
  v67 = v100;
  sub_199B58478(v65, v66, v100);
  *&v110 = v61;
  v68 = MEMORY[0x1E69E6158];
  *(&v110 + 1) = MEMORY[0x1E69E6158];
  v111 = v59;
  v112 = MEMORY[0x1E69E6180];
  v69 = swift_getOpaqueTypeConformance2();
  v70 = v95;
  v71 = v94;
  sub_199DF962C();

  (*(v93 + 8))(v60, v71);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_199DF841C();

  LOBYTE(v109) = v110;
  sub_199B58890(v103, v65, v105);
  v72 = swift_allocObject();
  sub_199B58478(v65, v72 + v108, v67);
  *&v110 = v71;
  *(&v110 + 1) = v68;
  v111 = v69;
  v112 = MEMORY[0x1E69E6180];
  swift_getOpaqueTypeConformance2();
  v73 = v97;
  sub_199DF962C();

  return (*(v96 + 8))(v70, v73);
}

uint64_t sub_199B50374@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v42 = a1;
  v49 = a3;
  v47 = sub_199DF86BC();
  v5 = *(v47 - 8);
  v48 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v47);
  v45 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CNWallpaperSuggestionsGallery(0);
  v44 = *(v7 - 8);
  v43 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75838, &qword_199E41028);
  MEMORY[0x1EEE9AC00](v46);
  v41 = &v38 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75840, &qword_199E41030);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v38 - v13;
  v50 = a2;
  v51 = a1;
  sub_199DF914C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75848, &qword_199E41038);
  sub_199B584E8();
  sub_199DF854C();
  v15 = sub_199DF902C();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_199DF901C();
  sub_199AA0B90(&qword_1EAF71408, &qword_1EAF75840, &qword_199E41030, MEMORY[0x1EEE7B510]);
  sub_199DF95BC();
  (*(v16 + 8))(v18, v15);
  (*(v12 + 8))(v14, v11);
  v39 = type metadata accessor for CNWallpaperSuggestionsGallery;
  v40 = a2;
  sub_199B58890(a2, v9, type metadata accessor for CNWallpaperSuggestionsGallery);
  v19 = v5;
  v20 = *(v5 + 16);
  v21 = v45;
  v22 = v47;
  v20(v45, v42, v47);
  v23 = *(v44 + 80);
  v24 = (v23 + 16) & ~v23;
  v43 += v24;
  v25 = (v43 + *(v19 + 80)) & ~*(v19 + 80);
  v44 = v23 | 7;
  v26 = swift_allocObject();
  v48 = type metadata accessor for CNWallpaperSuggestionsGallery;
  sub_199B58478(v9, v26 + v24, type metadata accessor for CNWallpaperSuggestionsGallery);
  (*(v19 + 32))(v26 + v25, v21, v22);
  v27 = v41;
  v28 = &v41[*(v46 + 36)];
  *v28 = sub_199B58658;
  v28[1] = v26;
  v28[2] = 0;
  v28[3] = 0;
  sub_199DF869C();
  v52 = v29;
  v30 = v39;
  sub_199B58890(a2, v9, v39);
  v31 = swift_allocObject();
  v32 = v48;
  sub_199B58478(v9, v31 + v24, v48);
  sub_199B5873C();
  sub_199B121E8();
  v33 = v49;
  sub_199DF962C();

  sub_199A984E8(v27);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75868, &qword_199E41058);
  sub_199AA7690(v33 + *(v34 + 52));
  sub_199B58890(v40, v9, v30);
  v35 = swift_allocObject();
  result = sub_199B58478(v9, v35 + v24, v32);
  v37 = (v33 + *(v34 + 56));
  *v37 = sub_199B58820;
  v37[1] = v35;
  return result;
}

__n128 sub_199B50908@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v35 = a2;
  v36 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75858, &qword_199E41048);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v31 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75850, &qword_199E41040);
  v8 = v7 - 8;
  MEMORY[0x1EEE9AC00](v7);
  v34 = &v31 - v9;
  v10 = type metadata accessor for CNWallpaperSuggestionsGalleryLayout(0);
  v11 = v10 - 8;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v31 - v15;
  v31 = *(a1 + *(type metadata accessor for CNWallpaperSuggestionsGallery(0) + 56));
  v17 = *(a1 + 16);
  v18 = *(a1 + 96);
  LOBYTE(v39) = *(a1 + 88);
  *(&v39 + 1) = v18;
  v33 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74750, &qword_199E39620);
  sub_199DF984C();
  v32 = v37;
  v19 = *(a1 + 112);
  v20 = *(a1 + 120);
  *&v39 = *(a1 + 104);
  BYTE8(v39) = v19;
  *&v40 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74758, &qword_199E3DC08);
  sub_199DF984C();
  v21 = v37;
  v22 = v38;
  sub_199AC2898(&v16[*(v11 + 40)]);
  *v16 = v31;
  type metadata accessor for CNWallpaperSuggestionsGalleryViewModel(0);
  sub_199B58020(&qword_1EAF716B0, type metadata accessor for CNWallpaperSuggestionsGalleryViewModel, &unk_199E3EF20);
  *(v16 + 1) = sub_199DF87AC();
  *(v16 + 2) = v23;
  v16[24] = v32;
  *(v16 + 4) = v21;
  v16[40] = v22;
  v24 = v16;
  v25 = v34;
  sub_199B58478(v24, v13, type metadata accessor for CNWallpaperSuggestionsGalleryLayout);
  sub_199B58890(v13, v6, type metadata accessor for CNWallpaperSuggestionsGalleryLayout);
  sub_199AAD408(v6, v25, &qword_1EAF75858, &qword_199E41048);
  sub_199B50D5C(a1, v25 + *(v8 + 52));
  sub_199A79A04(v6, &qword_1EAF75858, &qword_199E41048);
  sub_199B588F8(v13, type metadata accessor for CNWallpaperSuggestionsGalleryLayout);
  sub_199DF869C();
  sub_199DF9B5C();
  sub_199DF897C();
  v26 = v36;
  sub_199AB7794(v25, v36, &qword_1EAF75850, &qword_199E41040);
  v27 = v26 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75848, &qword_199E41038) + 36);
  v28 = v44;
  *(v27 + 64) = v43;
  *(v27 + 80) = v28;
  *(v27 + 96) = v45;
  v29 = v40;
  *v27 = v39;
  *(v27 + 16) = v29;
  result = v42;
  *(v27 + 32) = v41;
  *(v27 + 48) = result;
  return result;
}

uint64_t sub_199B50D5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for CNWallpaperSuggestionsGallery.SourceButtonsView(0);
  MEMORY[0x1EEE9AC00](v4);
  v68 = v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (v46 - v7);
  v9 = *(a1 + 16);
  sub_199DF869C();
  v11 = v10;
  v12 = *(a1 + 72);
  v55 = *(a1 + 80);
  v56 = v12;
  *&v70 = v12;
  *(&v70 + 1) = v55;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75870, &unk_199E41060);
  sub_199DF986C();
  v66 = v85;
  v67 = v84;
  v65 = v86;
  sub_199DF869C();
  v14 = v13;
  v15 = type metadata accessor for CNWallpaperSuggestionsGalleryViewModel(0);
  v16 = sub_199B58020(&qword_1EAF716B0, type metadata accessor for CNWallpaperSuggestionsGalleryViewModel, &unk_199E3EF20);
  v17 = v9;
  v46[1] = v16;
  v47 = v15;
  v57 = sub_199DF87AC();
  v64 = v18;
  *&v70 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72748, &qword_199E3EE20);
  sub_199DF983C();
  v62 = v85;
  v63 = v84;
  KeyPath = swift_getKeyPath();
  v99 = 0;
  v60 = swift_getKeyPath();
  v59 = sub_199AC3DD4(*(a1 + 128), *(a1 + 136));
  v58 = v99;
  v19 = type metadata accessor for CNWallpaperSuggestionsGallery(0);
  v52 = 0;
  v53 = 0;
  v50 = 0;
  v51 = 0.0;
  v20 = 0;
  v48 = 0.0;
  v49 = 0;
  v69 = 0;
  v21 = 0;
  v22 = 0;
  v54 = 0;
  if (*(a1 + *(v19 + 56)) == 1)
  {
    v54 = *(a1 + *(v19 + 60));
    v23 = *(a1 + 40);
    v70 = *(a1 + 24);
    *&v71 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73FD8, &qword_199E40F90);
    sub_199DF986C();
    v52 = v85;
    v53 = v84;
    v50 = v87;
    v51 = v86;
    v24 = *(a1 + 64);
    v70 = *(a1 + 48);
    *&v71 = v24;
    sub_199DF986C();
    v20 = v84;
    v48 = v86;
    v49 = v85;
    v69 = v87;
    v84 = v56;
    v85 = v55;
    sub_199DF984C();
    sub_199A7A02C(0, &qword_1EAF710A0, 0x1E695CF18);
    sub_199DF983C();
    v21 = v84;
    v22 = v85;
  }

  v55 = v22;
  v56 = v21;
  v25 = v11 * 0.35;
  swift_unknownObjectWeakLoadStrong();
  sub_199AC2898((v8 + *(v4 + 28)));
  *v8 = sub_199DF87AC();
  v8[1] = v26;
  swift_unknownObjectWeakInit();
  swift_unknownObjectRelease();
  sub_199B58890(v8, v68, type metadata accessor for CNWallpaperSuggestionsGallery.SourceButtonsView);
  *&v70 = v57;
  *(&v70 + 1) = v64;
  *&v71 = v25;
  *(&v71 + 1) = v63;
  *&v72 = v62;
  *(&v72 + 1) = v67;
  *&v73 = v66;
  v47 = v8;
  *(&v73 + 1) = v65;
  *&v74 = v14;
  *(&v74 + 1) = KeyPath;
  LOBYTE(v75) = v58;
  *(&v75 + 1) = *v98;
  DWORD1(v75) = *&v98[3];
  *(&v75 + 1) = v60;
  v76 = v59;
  *(a2 + 96) = v59;
  v27 = v73;
  *(a2 + 32) = v72;
  *(a2 + 48) = v27;
  v28 = v71;
  *a2 = v70;
  *(a2 + 16) = v28;
  v29 = v75;
  *(a2 + 64) = v74;
  *(a2 + 80) = v29;
  v30 = v54;
  v31 = v20;
  v46[0] = v20;
  v33 = v52;
  v32 = v53;
  *&v77 = v54;
  *(&v77 + 1) = v53;
  v34 = v50;
  v35 = v51;
  *&v78 = v52;
  *(&v78 + 1) = v51;
  *&v79 = v50;
  *(&v79 + 1) = v31;
  v37 = v48;
  v36 = v49;
  *&v80 = v49;
  *(&v80 + 1) = v48;
  *&v81 = v69;
  *(&v81 + 1) = v56;
  v38 = v55;
  v82 = v55;
  v39 = v77;
  *(a2 + 120) = v78;
  *(a2 + 104) = v39;
  v40 = v79;
  v41 = v80;
  v42 = v81;
  *(a2 + 184) = v38;
  *(a2 + 168) = v42;
  *(a2 + 152) = v41;
  *(a2 + 136) = v40;
  v43 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75878, &qword_199E41070) + 64);
  v44 = v68;
  sub_199B58890(v68, v43, type metadata accessor for CNWallpaperSuggestionsGallery.SourceButtonsView);
  sub_199AAD408(&v70, &v84, &qword_1EAF75880, &qword_199E41078);
  sub_199AAD408(&v77, &v84, &qword_1EAF75888, &unk_199E41080);
  sub_199B588F8(v47, type metadata accessor for CNWallpaperSuggestionsGallery.SourceButtonsView);
  sub_199B588F8(v44, type metadata accessor for CNWallpaperSuggestionsGallery.SourceButtonsView);
  v83[0] = v30;
  v83[1] = v32;
  v83[2] = v33;
  *&v83[3] = v35;
  v83[4] = v34;
  v83[5] = v46[0];
  v83[6] = v36;
  *&v83[7] = v37;
  v83[8] = v69;
  v83[9] = v56;
  v83[10] = v55;
  sub_199A79A04(v83, &qword_1EAF75888, &unk_199E41080);
  v84 = v57;
  v85 = v64;
  v86 = v25;
  v87 = v63;
  v88 = v62;
  v89 = v67;
  v90 = v66;
  v91 = v65;
  v92 = v14;
  v93 = KeyPath;
  v94 = v58;
  *v95 = *v98;
  *&v95[3] = *&v98[3];
  v96 = v60;
  v97 = v59;
  return sub_199A79A04(&v84, &qword_1EAF75880, &qword_199E41078);
}

uint64_t sub_199B51310(uint64_t a1)
{
  sub_199DF869C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74758, &qword_199E3DC08);
  return sub_199DF985C();
}

void *sub_199B51384(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF74FB8, &qword_199E40E10);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v15 - v6;
  v8 = *a2;
  v9 = *(a3 + 96);
  LOBYTE(v18) = *(a3 + 88);
  v19 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74750, &qword_199E39620);
  result = sub_199DF984C();
  if ((v16 & 1) == 0)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_199DF841C();

    v11 = type metadata accessor for CNWallpaperSuggestionsGallerySource(0);
    v12 = (*(*(v11 - 8) + 48))(v7, 1, v11);
    result = sub_199A79A04(v7, &unk_1EAF74FB8, &qword_199E40E10);
    if (v12 == 1)
    {
      v13 = *(a3 + 112);
      v14 = *(a3 + 120);
      v18 = *(a3 + 104);
      LOBYTE(v19) = v13;
      v20 = v14;
      v16 = v8;
      v17 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74758, &qword_199E3DC08);
      return sub_199DF985C();
    }
  }

  return result;
}

uint64_t sub_199B51534(char *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF74FB8, &qword_199E40E10);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11[-v5];
  v7 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_199DF841C();

  v8 = type metadata accessor for CNWallpaperSuggestionsGallerySource(0);
  LODWORD(a1) = (*(*(v8 - 8) + 48))(v6, 1, v8);
  result = sub_199A79A04(v6, &unk_1EAF74FB8, &qword_199E40E10);
  if (a1 == 1)
  {
    v10 = *(a2 + 96);
    v11[16] = *(a2 + 88);
    v12 = v10;
    v11[15] = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74750, &qword_199E39620);
    return sub_199DF985C();
  }

  return result;
}

uint64_t sub_199B516A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF74FB8, &qword_199E40E10);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v30 - v9;
  v11 = type metadata accessor for CNWallpaperSuggestionsGallerySource(0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_199AAD408(a2, v10, &unk_1EAF74FB8, &qword_199E40E10);
  v15 = *(v12 + 48);
  if (v15(v10, 1, v11) == 1)
  {
    return sub_199A79A04(v10, &unk_1EAF74FB8, &qword_199E40E10);
  }

  sub_199B58478(v10, v14, type metadata accessor for CNWallpaperSuggestionsGallerySource);
  v17 = *(a3 + 16);
  if (*(v17 + OBJC_IVAR____TtC10ContactsUI38CNWallpaperSuggestionsGalleryViewModel_suggestionFormat) == 1)
  {
    if (v14[*(v11 + 20)] > 2u || v14[*(v11 + 20)])
    {
      v20 = sub_199DFA99C();

      if ((v20 & 1) == 0)
      {
        v22 = sub_199AC3DD4(*(a3 + 128), *(a3 + 136));
        if (v22)
        {
          v23 = v22;
          v24 = type metadata accessor for CNWallpaperSuggestionsGallery(0);
          sub_199B2BE70(v23, *(a3 + *(v24 + 52)));
        }

        return sub_199B588F8(v14, type metadata accessor for CNWallpaperSuggestionsGallerySource);
      }
    }

    else
    {
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v31 = 0uLL;
    v21 = v17;
    sub_199DF842C();
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v31) = 1;
    sub_199DF842C();
    return sub_199B588F8(v14, type metadata accessor for CNWallpaperSuggestionsGallerySource);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return sub_199B588F8(v14, type metadata accessor for CNWallpaperSuggestionsGallerySource);
  }

  v19 = Strong;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_199DF841C();

  result = (v15)(v7, 1, v11);
  if (result != 1)
  {
    sub_199B588F8(v7, type metadata accessor for CNWallpaperSuggestionsGallerySource);
    v25 = sub_199DF9F5C();

    v26 = *(a3 + 40);
    v31 = *(a3 + 24);
    v32 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73FD8, &qword_199E40F90);
    sub_199DF984C();
    v27 = sub_199DF9F5C();

    v28 = *(a3 + 64);
    v31 = *(a3 + 48);
    v32 = v28;
    sub_199DF984C();
    v29 = sub_199DF9F5C();

    [v19 suggestionsGalleryDidSelectAvatarSourceType:v25 withGivenName:v27 familyName:v29];
    swift_unknownObjectRelease();

    return sub_199B588F8(v14, type metadata accessor for CNWallpaperSuggestionsGallerySource);
  }

  __break(1u);
  return result;
}

void sub_199B51C08(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) + OBJC_IVAR____TtC10ContactsUI38CNWallpaperSuggestionsGalleryViewModel_editorVC);
  if (v3)
  {
    if (*a2 == 1)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v5 = Strong;
        v6 = v3;
        [v5 suggestionsGalleryDidRequestPresentationOfPosterEditingViewController_];

        swift_unknownObjectRelease();
      }
    }

    else
    {
      v7 = *(*(a3 + 16) + OBJC_IVAR____TtC10ContactsUI38CNWallpaperSuggestionsGalleryViewModel_editorVC);

      [v7 dismissViewControllerAnimated:1 completion:0];
    }
  }
}

void sub_199B51CC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF74FB8, &qword_199E40E10);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v27 - v5;
  v7 = type metadata accessor for CNWallpaperSuggestionsGallerySource(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a3 + 16);
  v12 = OBJC_IVAR____TtC10ContactsUI38CNWallpaperSuggestionsGalleryViewModel_lastSelectedSource;
  swift_beginAccess();
  sub_199AAD408(v11 + v12, v6, &unk_1EAF74FB8, &qword_199E40E10);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_199A79A04(v6, &unk_1EAF74FB8, &qword_199E40E10);
    return;
  }

  sub_199B58478(v6, v10, type metadata accessor for CNWallpaperSuggestionsGallerySource);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_199DF841C();

  v13 = v28;
  if (!v28)
  {
    goto LABEL_15;
  }

  v14 = v10[*(v7 + 20)];
  v15 = v14 >= 2;
  if (v14 > 2)
  {
    if (v14 != 3 && v14 == 4)
    {
      goto LABEL_16;
    }

    v16 = MEMORY[0x1E695CCE8];
  }

  else
  {
    v16 = MEMORY[0x1E695CCF0];
    if (v15)
    {
      v16 = MEMORY[0x1E695CCE0];
    }
  }

  v18 = *v16;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    v21 = *(a3 + 40);
    v28 = *(a3 + 24);
    v29 = v21;
    v22 = v18;
    v23 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73FD8, &qword_199E40F90);
    sub_199DF984C();
    v24 = sub_199DF9F5C();

    v25 = *(a3 + 64);
    v28 = *(a3 + 48);
    v29 = v25;
    sub_199DF984C();
    v26 = sub_199DF9F5C();

    [v20 suggestionsGalleryDidFinishWithPosterConfiguration:v23 posterType:v22 withGivenName:v24 familyName:v26];
    swift_unknownObjectRelease();

LABEL_15:
    sub_199B588F8(v10, type metadata accessor for CNWallpaperSuggestionsGallerySource);
    return;
  }

LABEL_16:
  sub_199B588F8(v10, type metadata accessor for CNWallpaperSuggestionsGallerySource);
}

void sub_199B52020(uint64_t a1, void **a2, uint64_t a3)
{
  v3 = *a2;
  if (*a2)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      v6 = v3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73FD8, &qword_199E40F90);
      sub_199DF984C();
      v7 = sub_199DF9F5C();

      sub_199DF984C();
      v8 = sub_199DF9F5C();

      [v5 suggestionsGalleryDidSelectSuggestedAvatar:v6 withGivenName:v7 familyName:v8];

      swift_unknownObjectRelease();
    }
  }
}

void sub_199B52134(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = sub_199DF6EFC();
  v6 = *(v5 - 8);
  *&v7 = MEMORY[0x1EEE9AC00](v5).n128_u64[0];
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a2;
  v11 = a2[1];
  v12 = *(a3 + 16);
  v13 = OBJC_IVAR____TtC10ContactsUI38CNWallpaperSuggestionsGalleryViewModel_contact;
  [*(v12 + OBJC_IVAR____TtC10ContactsUI38CNWallpaperSuggestionsGalleryViewModel_contact) mutableCopy];
  sub_199DFA66C();
  swift_unknownObjectRelease();
  sub_199A7A02C(0, &qword_1EAF710A0, 0x1E695CF18);
  swift_dynamicCast();
  v14 = v17[1];
  v17[2] = v10;
  v17[3] = v11;
  sub_199DF6EEC();
  sub_199A9C458();
  sub_199DFA65C();
  (*(v6 + 8))(v9, v5);
  v15 = sub_199DF9F5C();

  [v14 setGivenName_];

  v16 = *(v12 + v13);
  *(v12 + v13) = v14;
}

void sub_199B522F0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  v4 = OBJC_IVAR____TtC10ContactsUI38CNWallpaperSuggestionsGalleryViewModel_contact;
  [*(v3 + OBJC_IVAR____TtC10ContactsUI38CNWallpaperSuggestionsGalleryViewModel_contact) mutableCopy];
  sub_199DFA66C();
  swift_unknownObjectRelease();
  sub_199A7A02C(0, &qword_1EAF710A0, 0x1E695CF18);
  swift_dynamicCast();
  v5 = sub_199DF9F5C();
  [v7 setFamilyName_];

  v6 = *(v3 + v4);
  *(v3 + v4) = v7;
}

void sub_199B523CC(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  if (*a2 == 1)
  {
    v8 = sub_199B2DB98();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [Strong suggestionsGalleryDidRequestPresentationOfImagePickerController_];

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_199DF841C();

    if (v9)
    {

      v5 = sub_199AC3DD4(*(a3 + 128), *(a3 + 136));
      if (v5)
      {
        v6 = v5;
        v7 = type metadata accessor for CNWallpaperSuggestionsGallery(0);
        sub_199B2BE70(v6, *(a3 + *(v7 + 52)));
      }
    }
  }
}

id sub_199B5250C()
{
  result = [objc_allocWithZone(MEMORY[0x1E695CD58]) init];
  qword_1EAF757D0 = result;
  return result;
}

uint64_t sub_199B52540@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v53 = a1;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75910, &qword_199E41320);
  MEMORY[0x1EEE9AC00](v50);
  v49 = (&v44 - v3);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75918, &qword_199E41328);
  v4 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v6 = &v44 - v5;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75920, &qword_199E41330);
  MEMORY[0x1EEE9AC00](v52);
  if (*(*(v2 + 8) + OBJC_IVAR____TtC10ContactsUI38CNWallpaperSuggestionsGalleryViewModel_suggestionFormat) == 1)
  {
    v54 = *(v2 + 24);
    v47 = v8;
    v48 = &v44 - v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75940, &qword_199E41350);
    v46 = v4;
    sub_199DF986C();
    v44 = v61;
    v9 = v62;
    v10 = swift_allocObject();
    v11 = *(v2 + 48);
    *(v10 + 48) = *(v2 + 32);
    *(v10 + 64) = v11;
    *(v10 + 80) = *(v2 + 64);
    *(v10 + 96) = *(v2 + 80);
    v12 = *(v2 + 16);
    *(v10 + 16) = *v2;
    *(v10 + 32) = v12;
    v54 = v44;
    *&v56[0] = 0;
    v55 = v9;
    BYTE8(v56[0]) = 0;
    v56[1] = 0uLL;
    LOBYTE(v57) = 0;
    *(&v57 + 1) = 0;
    *&v58 = 0;
    WORD4(v58) = 0;
    *&v59 = sub_199B591E8;
    *(&v59 + 1) = v10;
    v60 = 0uLL;
    v65 = *(v2 + 40);
    *&v66 = *(v2 + 56);
    sub_199B591F0(v2, &v61);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75948, &qword_199E41358);
    MEMORY[0x19A8F7740](&v61, v13);
    v14 = v61;
    *&v65 = v61;
    v15 = swift_allocObject();
    v16 = *(v2 + 48);
    *(v15 + 48) = *(v2 + 32);
    *(v15 + 64) = v16;
    *(v15 + 80) = *(v2 + 64);
    *(v15 + 96) = *(v2 + 80);
    v17 = *(v2 + 16);
    *(v15 + 16) = *v2;
    *(v15 + 32) = v17;
    sub_199B591F0(v2, &v61);
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75938, &qword_199E41348);
    v45 = v6;
    v19 = v18;
    v20 = sub_199A7A02C(0, &qword_1EAF710A0, 0x1E695CF18);
    v21 = sub_199B5915C();
    v22 = sub_199B58134(&qword_1EAF71098, &qword_1EAF710A0, 0x1E695CF18);
    sub_199DF962C();

    v63[2] = v57;
    v63[3] = v58;
    v63[4] = v59;
    v63[5] = v60;
    v61 = v54;
    v62 = v55;
    v63[0] = v56[0];
    v63[1] = v56[1];
    sub_199A79A04(&v61, &qword_1EAF75938, &qword_199E41348);
    *&v65 = *(v2 + 64);
    v23 = swift_allocObject();
    v24 = *(v2 + 48);
    *(v23 + 48) = *(v2 + 32);
    *(v23 + 64) = v24;
    *(v23 + 80) = *(v2 + 64);
    *(v23 + 96) = *(v2 + 80);
    v25 = *(v2 + 16);
    *(v23 + 16) = *v2;
    *(v23 + 32) = v25;
    sub_199B591F0(v2, &v54);
    *&v54 = v19;
    *(&v54 + 1) = v20;
    *&v55 = v21;
    *(&v55 + 1) = v22;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v27 = sub_199B121E8();
    v28 = v51;
    v29 = v45;
    sub_199DF962C();

    (*(v46 + 8))(v29, v28);
    v30 = v47;
    v31 = v52;
    (*(v47 + 16))();
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75930, &qword_199E41340);
    *&v54 = v28;
    *(&v54 + 1) = MEMORY[0x1E69E7DE0];
    *&v55 = OpaqueTypeConformance2;
    *(&v55 + 1) = v27;
    swift_getOpaqueTypeConformance2();
    sub_199AA0B90(&qword_1EAF71180, &qword_1EAF75930, &qword_199E41340, MEMORY[0x1E6981880]);
    sub_199DF8EDC();
    return (*(v30 + 8))(v48, v31);
  }

  else
  {
    v33 = sub_199DF9B5C();
    v35 = v34;
    sub_199B52F70(v2, &v65);
    v54 = v65;
    v55 = v66;
    v56[0] = v67[0];
    *(v56 + 9) = *(v67 + 9);
    v61 = v65;
    v62 = v66;
    v63[0] = v67[0];
    *(v63 + 9) = *(v67 + 9);
    sub_199AAD408(&v54, v64, &qword_1EAF75928, &qword_199E41338);
    sub_199A79A04(&v61, &qword_1EAF75928, &qword_199E41338);
    v36 = v49;
    *v49 = v33;
    v36[1] = v35;
    v37 = v55;
    *(v36 + 1) = v54;
    *(v36 + 2) = v37;
    *(v36 + 3) = v56[0];
    *(v36 + 57) = *(v56 + 9);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75930, &qword_199E41340);
    v38 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF75938, &qword_199E41348);
    v39 = sub_199A7A02C(255, &qword_1EAF710A0, 0x1E695CF18);
    v40 = sub_199B5915C();
    v41 = sub_199B58134(&qword_1EAF71098, &qword_1EAF710A0, 0x1E695CF18);
    *&v65 = v38;
    *(&v65 + 1) = v39;
    *&v66 = v40;
    *(&v66 + 1) = v41;
    v42 = swift_getOpaqueTypeConformance2();
    v43 = sub_199B121E8();
    *&v65 = v51;
    *(&v65 + 1) = MEMORY[0x1E69E7DE0];
    *&v66 = v42;
    *(&v66 + 1) = v43;
    swift_getOpaqueTypeConformance2();
    sub_199AA0B90(&qword_1EAF71180, &qword_1EAF75930, &qword_199E41340, MEMORY[0x1E6981880]);
    return sub_199DF8EDC();
  }
}

void sub_199B52CA0(uint64_t a1)
{
  v2 = sub_199AC3DD4(*(a1 + 72), *(a1 + 80));
  if (v2)
  {
    v3 = v2;
    v4 = objc_opt_self();
    v11 = *(a1 + 40);
    v12 = *(a1 + 56);
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75948, &qword_199E41358);
    MEMORY[0x19A8F7740](aBlock, v5);
    v6 = aBlock[0];
    v7 = swift_allocObject();
    v8 = *(a1 + 48);
    *(v7 + 48) = *(a1 + 32);
    *(v7 + 64) = v8;
    *(v7 + 80) = *(a1 + 64);
    *(v7 + 96) = *(a1 + 80);
    v9 = *(a1 + 16);
    *(v7 + 16) = *a1;
    *(v7 + 32) = v9;
    aBlock[4] = sub_199B5A858;
    aBlock[5] = v7;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_199B77770;
    aBlock[3] = &block_descriptor_150;
    v10 = _Block_copy(aBlock);
    sub_199B591F0(a1, &v11);

    [v4 incomingCallPlaceholderSnapshotForContact:v6 windowScene:v3 completionBlock:{v10, v11, v12}];
    _Block_release(v10);
  }
}

void sub_199B52E0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = sub_199AC3DD4(*(a3 + 72), *(a3 + 80));
  if (v9)
  {
    v10 = v9;
    v11 = objc_opt_self();
    v18 = *(a3 + 40);
    v19 = *(a3 + 56);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75948, &qword_199E41358);
    MEMORY[0x19A8F7740](aBlock, v12);
    v13 = aBlock[0];
    v14 = swift_allocObject();
    v15 = *(a3 + 48);
    *(v14 + 48) = *(a3 + 32);
    *(v14 + 64) = v15;
    *(v14 + 80) = *(a3 + 64);
    *(v14 + 96) = *(a3 + 80);
    v16 = *(a3 + 16);
    *(v14 + 16) = *a3;
    *(v14 + 32) = v16;
    aBlock[4] = a5;
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_199B77770;
    aBlock[3] = a6;
    v17 = _Block_copy(aBlock);
    sub_199B591F0(a3, &v18);

    [v11 incomingCallPlaceholderSnapshotForContact:v13 windowScene:v10 completionBlock:{v17, v18, v19}];
    _Block_release(v17);
  }
}

id sub_199B52F70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (qword_1EAF71F18 != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v3 = qword_1EAF757D0;
  v4 = *(a1 + 16);
  v5 = objc_opt_self();
  v6 = v3;
  v10 = [v5 defaultSettings];
  *a2 = v6;
  *(a2 + 8) = v4;
  *(a2 + 16) = v10;
  *(a2 + 24) = 1;
  *(a2 + 32) = v6;
  *(a2 + 40) = v4;
  *(a2 + 48) = v10;
  *(a2 + 56) = 1;
  v7 = v6;

  return v10;
}

uint64_t sub_199B53060(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75940, &qword_199E41350);
  return sub_199DF985C();
}

uint64_t sub_199B53104@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75898, &qword_199E41210);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v25 - v4;
  v6 = sub_199DF884C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CNWallpaperSuggestionsSourceButtonViewLayout(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v25 - v14);
  v16 = *(a1 + 8);
  v17 = *(type metadata accessor for CNWallpaperSuggestionsGallery.SourceButtonsView(0) + 28);
  v18 = *(v7 + 16);
  v27 = a1;
  v18(v9, a1 + v17, v6);
  swift_getKeyPath();
  swift_getKeyPath();
  v19 = v16;
  sub_199DF841C();

  if (v28)
  {
    v20 = *(v28 + 16);
  }

  else
  {
    v20 = 0;
  }

  type metadata accessor for CNWallpaperSuggestionsGalleryViewModel(0);
  sub_199B58020(&qword_1EAF716B0, type metadata accessor for CNWallpaperSuggestionsGalleryViewModel, &unk_199E3EF20);
  *v15 = sub_199DF87AC();
  v15[1] = v21;
  (*(v7 + 32))(v15 + *(v10 + 20), v9, v6);
  *(v15 + *(v10 + 24)) = v20;
  sub_199B58478(v15, v12, type metadata accessor for CNWallpaperSuggestionsSourceButtonViewLayout);
  sub_199B58890(v12, v5, type metadata accessor for CNWallpaperSuggestionsSourceButtonViewLayout);
  v22 = v26;
  sub_199AAD408(v5, v26, &qword_1EAF75898, &qword_199E41210);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF758A0, &qword_199E41260);
  sub_199B53448(v27, (v22 + *(v23 + 44)));
  sub_199A79A04(v5, &qword_1EAF75898, &qword_199E41210);
  return sub_199B588F8(v12, type metadata accessor for CNWallpaperSuggestionsSourceButtonViewLayout);
}

uint64_t sub_199B53448@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v73 = a2;
  v3 = sub_199DF8CDC();
  v63 = *(v3 - 8);
  v64 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v60 = v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v62 = v53 - v6;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF758A8, &qword_199E41268);
  v59 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v58 = v53 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF758B0, &qword_199E41270);
  v9 = *(v8 - 8);
  v70 = v8;
  v71 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v57 = v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v56 = v53 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF758B8, &qword_199E41278);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v72 = v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v65 = v53 - v16;
  v17 = type metadata accessor for CNWallpaperSuggestionsGallery.SourceButtonsView(0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF758C0, &qword_199E41280);
  v68 = *(v20 - 8);
  v69 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v67 = v53 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = v53 - v23;
  v25 = *(a1 + 8);
  v74 = sub_199B2C6C8();
  v55 = a1;
  sub_199B58890(a1, v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CNWallpaperSuggestionsGallery.SourceButtonsView);
  v26 = (*(v18 + 80) + 16) & ~*(v18 + 80);
  v53[1] = v19;
  v27 = swift_allocObject();
  v54 = v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_199B58478(v54, v27 + v26, type metadata accessor for CNWallpaperSuggestionsGallery.SourceButtonsView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF758C8, &qword_199E41288);
  sub_199DF729C();
  type metadata accessor for CNWallpaperSuggestionsGallery.SourceButton(0);
  sub_199AA0B90(&qword_1EAF71118, &qword_1EAF758C8, &qword_199E41288, MEMORY[0x1E69E6338]);
  sub_199B58020(&qword_1EAF71970, type metadata accessor for CNWallpaperSuggestionsGallery.SourceButton, &unk_199E413F8);
  sub_199B58020(&qword_1EAF71878, type metadata accessor for CNWallpaperSuggestionsGallerySource, &unk_199E38178);
  v66 = v24;
  sub_199DF99FC();
  if (*(v25 + OBJC_IVAR____TtC10ContactsUI38CNWallpaperSuggestionsGalleryViewModel_suggestionFormat))
  {
    v28 = 1;
    v29 = v70;
    v30 = v65;
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_199DF841C();

    v31 = v74;
    if (!v74)
    {
      v31 = MEMORY[0x1E69E7CC0];
    }

    v74 = v31;
    v32 = v54;
    sub_199B58890(v55, v54, type metadata accessor for CNWallpaperSuggestionsGallery.SourceButtonsView);
    v33 = swift_allocObject();
    sub_199B58478(v32, v33 + v26, type metadata accessor for CNWallpaperSuggestionsGallery.SourceButtonsView);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF758D8, &qword_199E41298);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF758E0, &qword_199E412A0);
    sub_199AA0B90(&qword_1EAF71110, &qword_1EAF758D8, &qword_199E41298, MEMORY[0x1E69E6338]);
    sub_199B59000();
    sub_199B59108();
    v34 = v58;
    sub_199DF99FC();
    v35 = v62;
    sub_199DF8CCC();
    v37 = v63;
    v36 = v64;
    (*(v63 + 16))(v60, v35, v64);
    sub_199B58020(&qword_1EAF75900, MEMORY[0x1E697F260], MEMORY[0x1E697F258]);
    v38 = sub_199DF865C();
    (*(v37 + 8))(v35, v36);
    v39 = v57;
    (*(v59 + 32))(v57, v34, v61);
    v40 = v70;
    *&v39[*(v70 + 36)] = v38;
    v41 = v39;
    v42 = v56;
    sub_199AB7794(v41, v56, &qword_1EAF758B0, &qword_199E41270);
    v30 = v65;
    sub_199AB7794(v42, v65, &qword_1EAF758B0, &qword_199E41270);
    v28 = 0;
    v29 = v40;
  }

  (*(v71 + 56))(v30, v28, 1, v29);
  v44 = v67;
  v43 = v68;
  v45 = *(v68 + 16);
  v46 = v66;
  v47 = v69;
  v45(v67, v66, v69);
  v48 = v72;
  sub_199AAD408(v30, v72, &qword_1EAF758B8, &qword_199E41278);
  v49 = v73;
  v45(v73, v44, v47);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF758D0, &qword_199E41290);
  sub_199AAD408(v48, &v49[*(v50 + 48)], &qword_1EAF758B8, &qword_199E41278);
  sub_199A79A04(v30, &qword_1EAF758B8, &qword_199E41278);
  v51 = *(v43 + 8);
  v51(v46, v47);
  sub_199A79A04(v48, &qword_1EAF758B8, &qword_199E41278);
  return (v51)(v44, v47);
}

uint64_t sub_199B53D28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = *(a2 + 8);
  swift_unknownObjectWeakLoadStrong();
  v7 = type metadata accessor for CNWallpaperSuggestionsGallery.SourceButton(0);
  sub_199B58890(a1, &a3[*(v7 + 24)], type metadata accessor for CNWallpaperSuggestionsGallerySource);
  v8 = *(type metadata accessor for CNWallpaperSuggestionsGallery.SourceButtonsView(0) + 28);
  v9 = *(v7 + 28);
  v10 = sub_199DF884C();
  (*(*(v10 - 8) + 16))(&a3[v9], a2 + v8, v10);
  type metadata accessor for CNWallpaperSuggestionsGalleryViewModel(0);
  sub_199B58020(&qword_1EAF716B0, type metadata accessor for CNWallpaperSuggestionsGalleryViewModel, &unk_199E3EF20);
  v11 = v6;
  *a3 = sub_199DF87AC();
  *(a3 + 1) = v12;
  swift_unknownObjectWeakInit();

  return swift_unknownObjectRelease();
}

uint64_t sub_199B53E64@<X0>(id *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = sub_199DF8CDC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v26 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v24 - v10;
  v25 = *a1;
  v12 = *(a2 + 8);
  swift_unknownObjectWeakLoadStrong();
  v13 = *(type metadata accessor for CNWallpaperSuggestionsGallery.SourceButtonsView(0) + 28);
  v14 = type metadata accessor for CNWallpaperSuggestionsGallery.AvatarSuggestionButton(0);
  v15 = v14[7];
  v16 = sub_199DF884C();
  (*(*(v16 - 8) + 16))(&a3[v15], a2 + v13, v16);
  KeyPath = swift_getKeyPath();
  *&a3[v14[9]] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF75060, &qword_199E41310);
  swift_storeEnumTagMultiPayload();
  *a3 = v12;
  swift_unknownObjectWeakInit();
  v18 = v12;
  v19 = v25;
  swift_unknownObjectRelease();
  *(a3 + 2) = v19;
  v20 = &a3[v14[8]];
  *v20 = KeyPath;
  v20[8] = 0;
  v21 = v14[10];
  v27 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75908, &qword_199E41318);
  sub_199DF983C();
  *&a3[v21] = v28;
  sub_199DF8CCC();
  (*(v7 + 16))(v26, v11, v6);
  sub_199B58020(&qword_1EAF75900, MEMORY[0x1E697F260], MEMORY[0x1E697F258]);
  v22 = sub_199DF865C();
  (*(v7 + 8))(v11, v6);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF758E0, &qword_199E412A0);
  *&a3[*(result + 36)] = v22;
  return result;
}

uint64_t sub_199B54120(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_199DFA17C();
  *(v1 + 24) = sub_199DFA16C();
  v3 = sub_199DFA12C();

  return MEMORY[0x1EEE6DFA0](sub_199B541B8, v3, v2);
}

uint64_t sub_199B541B8()
{

  sub_199B2CCE4();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_199B54220@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1 - 8);
  v15 = sub_199B58B58(*(*(v2 + 8) + OBJC_IVAR____TtC10ContactsUI38CNWallpaperSuggestionsGalleryViewModel_suggestionFormat));
  v8 = v7;
  sub_199B58890(v2, &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CNWallpaperSuggestionsGallery.SourceButtonsView);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  sub_199B58478(&v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for CNWallpaperSuggestionsGallery.SourceButtonsView);
  sub_199B58890(v3, &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CNWallpaperSuggestionsGallery.SourceButtonsView);
  v11 = swift_allocObject();
  sub_199B58478(&v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v9, type metadata accessor for CNWallpaperSuggestionsGallery.SourceButtonsView);
  v12 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75890, &qword_199E41208) + 36));
  sub_199DF871C();
  result = sub_199DFA18C();
  *v12 = &unk_199E41200;
  v12[1] = v11;
  *a2 = v15;
  a2[1] = v8;
  a2[2] = sub_199B58C70;
  a2[3] = v10;
  return result;
}

uint64_t sub_199B543F8@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v2 = sub_199DF886C();
  v30 = *(v2 - 8);
  v31 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v29 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v28 = &v27 - v5;
  v32 = type metadata accessor for CNWallpaperSuggestionsGallery.AvatarSuggestionButton(0);
  v6 = *(v32 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75A20, &qword_199E41638) - 8;
  MEMORY[0x1EEE9AC00](v33);
  v9 = &v27 - v8;
  sub_199B58890(v1, &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CNWallpaperSuggestionsGallery.AvatarSuggestionButton);
  v10 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v11 = swift_allocObject();
  sub_199B58478(&v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10, type metadata accessor for CNWallpaperSuggestionsGallery.AvatarSuggestionButton);
  v35 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75A28, &qword_199E41640);
  sub_199B5A29C();
  sub_199DF989C();
  sub_199B58890(v1, &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CNWallpaperSuggestionsGallery.AvatarSuggestionButton);
  v12 = swift_allocObject();
  sub_199B58478(&v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v10, type metadata accessor for CNWallpaperSuggestionsGallery.AvatarSuggestionButton);
  v13 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75A48, &qword_199E41660) + 36)];
  sub_199DF871C();
  sub_199DFA18C();
  *v13 = &unk_199E41658;
  *(v13 + 1) = v12;
  LOBYTE(v12) = sub_199DF919C();
  sub_199DF84FC();
  v14 = &v9[*(v33 + 44)];
  *v14 = v12;
  *(v14 + 1) = v15;
  *(v14 + 2) = v16;
  *(v14 + 3) = v17;
  *(v14 + 4) = v18;
  v14[40] = 0;
  v19 = 0;
  if (sub_199DF883C())
  {
    v20 = v28;
    sub_199AC3B48(v28);
    v22 = v29;
    v21 = v30;
    v23 = v31;
    (*(v30 + 104))(v29, *MEMORY[0x1E697E7D8], v31);
    v19 = sub_199DF885C();
    v24 = *(v21 + 8);
    v24(v22, v23);
    v24(v20, v23);
  }

  v25 = v34;
  sub_199AB7794(v9, v34, &qword_1EAF75A20, &qword_199E41638);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75A50, &qword_199E41668);
  *(v25 + *(result + 36)) = v19 & 1;
  return result;
}

uint64_t sub_199B547F4(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 16);
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  v4 = v1;
  return sub_199DF842C();
}

void *sub_199B54868@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_199DF8CDC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v16 - v9;
  v18 = *(a1 + *(type metadata accessor for CNWallpaperSuggestionsGallery.AvatarSuggestionButton(0) + 40));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75A58, &qword_199E41670);
  result = sub_199DF984C();
  v12 = v17;
  if (v17)
  {
    v13 = [objc_opt_self() defaultSettings];
    sub_199DF8CCC();
    (*(v5 + 16))(v7, v10, v4);
    sub_199B58020(&qword_1EAF75900, MEMORY[0x1E697F260], MEMORY[0x1E697F258]);
    v14 = sub_199DF865C();
    result = (*(v5 + 8))(v10, v4);
    v15 = 0x406A800000000000;
  }

  else
  {
    v15 = 0;
    v13 = 0;
    v14 = 0;
  }

  *a2 = v12;
  a2[1] = v15;
  a2[2] = v13;
  a2[3] = 0;
  a2[4] = v14;
  return result;
}

uint64_t sub_199B54A50(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_199DFA17C();
  *(v1 + 24) = sub_199DFA16C();
  v3 = sub_199DFA12C();

  return MEMORY[0x1EEE6DFA0](sub_199B54AE8, v3, v2);
}

uint64_t sub_199B54AE8()
{

  sub_199B54B4C();
  v1 = *(v0 + 8);

  return v1();
}

void sub_199B54B4C()
{
  v1 = v0;
  v2 = sub_199DF886C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v37 - v7;
  v9 = type metadata accessor for CNWallpaperSuggestionsGallery.AvatarSuggestionButton(0);
  v10 = v0 + *(v9 + 40);
  v12 = *v10;
  v11 = *(v10 + 8);
  v39 = *v10;
  v40 = v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75A58, &qword_199E41670);
  sub_199DF984C();
  if (v38)
  {
  }

  else
  {
    v37 = v13;
    v14 = *(v0 + 16);
    v15 = [objc_allocWithZone(CNPhotoPickerRecentsProvider) init];
    v16 = sub_199AC22BC(*(v1 + *(v9 + 32)), *(v1 + *(v9 + 32) + 8));
    v17 = v15;
    sub_199AC3B48(v8);
    (*(v3 + 104))(v5, *MEMORY[0x1E697E7D8], v2);
    LOBYTE(v15) = sub_199DF885C();
    v18 = *(v3 + 8);
    v18(v5, v2);
    v18(v8, v2);
    v19 = [objc_opt_self() defaultProvider];
    v20 = sub_199DF9F5C();
    v21 = [v19 newSerialSchedulerWithName_];

    swift_unknownObjectRelease();
    v22 = [v17 providerItemForContactImage:v14 size:v15 & 1 scale:v21 RTL:objc_msgSend(objc_opt_self() renderingQueue:sel_mainThreadScheduler) callbackQueue:1 fallbackToDefaultItem:{212.0, 212.0, v16}];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v23 = [objc_allocWithZone(MEMORY[0x1E695CF18]) init];
    if (v22)
    {
      v24 = v22;
      v25 = [v24 imageData];
      v26 = sub_199DF71FC();
      v28 = v27;

      v29 = sub_199DF71DC();
      sub_199A9EF34(v26, v28);
      [v23 setImageData_];

      [v24 cropRect];
      [v23 setCropRect_];
    }

    else
    {
      v30 = [v14 imageData];
      v31 = sub_199DF71FC();
      v33 = v32;

      v34 = sub_199DF71DC();
      sub_199A9EF34(v31, v33);
      [v23 setImageData_];

      [v14 cropRect];
      [v23 setCropRect_];
    }

    v39 = v12;
    v40 = v11;
    v38 = v23;

    v35 = v23;
    v36 = v12;
    sub_199DF985C();
  }
}

uint64_t sub_199B54F9C()
{
  v0 = [objc_opt_self() preferredFontForTextStyle_];
  [v0 lineHeight];

  type metadata accessor for CNWallpaperSuggestionsGallery.SourceButton(0);
  return sub_199DF883C();
}

uint64_t sub_199B55080()
{
  v1 = type metadata accessor for CNWallpaperSuggestionsGallerySource(0);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF74FB8, &qword_199E40E10);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v12[-v6];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_199DF841C();

  if (v12[15] == 1)
  {
    v8 = *(v0 + *(type metadata accessor for CNWallpaperSuggestionsGallery.SourceButton(0) + 24) + *(v1 + 20));
    swift_getKeyPath();
    swift_getKeyPath();
    sub_199DF841C();

    if (!(*(v2 + 48))(v7, 1, v1))
    {
      sub_199B58890(v7, v4, type metadata accessor for CNWallpaperSuggestionsGallerySource);
      sub_199A79A04(v7, &unk_1EAF74FB8, &qword_199E40E10);
      v11 = v4[*(v1 + 20)];
      sub_199B588F8(v4, type metadata accessor for CNWallpaperSuggestionsGallerySource);
      v9 = sub_199AA9278(v8, v11);
      return v9 & 1;
    }

    sub_199A79A04(v7, &unk_1EAF74FB8, &qword_199E40E10);
  }

  v9 = 0;
  return v9 & 1;
}

uint64_t sub_199B552DC@<X0>(uint64_t (**a1)(uint64_t a1)@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for CNWallpaperSuggestionsGallery.SourceButton(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = sub_199DF883C();
  if (*(*(v1 + 8) + OBJC_IVAR____TtC10ContactsUI38CNWallpaperSuggestionsGalleryViewModel_suggestionFormat))
  {
    v8 = 0x4020000000000000;
  }

  else
  {
    v8 = 0x4018000000000000;
  }

  if (v7)
  {
    v14 = sub_199DF8CFC();
    v15 = v8;
    v16 = 0;
    sub_199B599F0();
  }

  else
  {
    v14 = sub_199DF8D4C();
    v15 = v8;
    v16 = 0;
    sub_199B598F0();
  }

  v9 = sub_199DF9BBC();
  sub_199B58890(v2, &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CNWallpaperSuggestionsGallery.SourceButton);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  result = sub_199B58478(&v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10, type metadata accessor for CNWallpaperSuggestionsGallery.SourceButton);
  *(v11 + ((v6 + v10 + 7) & 0xFFFFFFFFFFFFFFF8)) = v9;
  *a1 = sub_199B59944;
  a1[1] = v11;
  return result;
}

uint64_t sub_199B5548C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CNWallpaperSuggestionsGallery.SourceButton(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_199B58890(a2, &v12[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for CNWallpaperSuggestionsGallery.SourceButton);
  v9 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v10 = swift_allocObject();
  sub_199B58478(&v12[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], v10 + v9, type metadata accessor for CNWallpaperSuggestionsGallery.SourceButton);
  v13 = a3;
  v14 = a2;
  v15 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75968, &qword_199E41448);
  sub_199B59A7C();
  return sub_199DF989C();
}

uint64_t sub_199B55610(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF74FB8, &qword_199E40E10);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v20 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74FC8, &qword_199E3EE18);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v20 - v12;
  v14 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  v20[1] = 0;
  v15 = v14;
  sub_199DF842C();
  v16 = a1 + *(type metadata accessor for CNWallpaperSuggestionsGallery.SourceButton(0) + 24);
  v17 = type metadata accessor for CNWallpaperSuggestionsGallerySource(0);
  if (!*(v16 + *(v17 + 20)))
  {
    v20[0] = v15;
    sub_199DF728C();
    v18 = type metadata accessor for CNWallpaperSuggestionsGallerySource.PickerType(0);
    *&v13[*(v18 + 20)] = 1;
    (*(*(v18 - 8) + 56))(v13, 0, 1, v18);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_199AAD408(v13, v10, &qword_1EAF74FC8, &qword_199E3EE18);
    sub_199DF842C();
    sub_199A79A04(v13, &qword_1EAF74FC8, &qword_199E3EE18);
  }

  sub_199B58890(v16, v7, type metadata accessor for CNWallpaperSuggestionsGallerySource);
  (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_199AAD408(v7, v4, &unk_1EAF74FB8, &qword_199E40E10);
  v15;
  sub_199DF842C();
  sub_199B2BC48();
  return sub_199A79A04(v7, &unk_1EAF74FB8, &qword_199E40E10);
}

__n128 sub_199B55938@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75970, &qword_199E41450);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v17 - v9;
  *(v17 - v9) = a1;
  v12 = *(v11 + 52);

  sub_199B55B30(a2, a3, &v10[v12]);
  type metadata accessor for CNWallpaperSuggestionsGallery.SourceButton(0);
  if (sub_199DF883C())
  {
    sub_199DF869C();
  }

  if (sub_199DF883C())
  {
    sub_199DF9B6C();
  }

  else
  {
    sub_199DF9B5C();
  }

  sub_199DF897C();
  sub_199AB7794(v10, a4, &qword_1EAF75970, &qword_199E41450);
  v13 = a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75968, &qword_199E41448) + 36);
  v14 = v17[5];
  *(v13 + 64) = v17[4];
  *(v13 + 80) = v14;
  *(v13 + 96) = v17[6];
  v15 = v17[1];
  *v13 = v17[0];
  *(v13 + 16) = v15;
  result = v17[3];
  *(v13 + 32) = v17[2];
  *(v13 + 48) = result;
  return result;
}

uint64_t sub_199B55B30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v68 = a3;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75988, &qword_199E41468);
  MEMORY[0x1EEE9AC00](v65);
  v66 = v5;
  v67 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v62 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75990, &qword_199E41470);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v62 - v10);
  *v11 = sub_199DF9B5C();
  v11[1] = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75998, &qword_199E41478);
  sub_199B561B8(a1, a2, v11 + *(v13 + 44));
  v14 = sub_199DF9B5C();
  v64 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF759A0, &qword_199E41480);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v62 - v17;
  v19 = sub_199B55080();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF759A8, &qword_199E41488);
  v21 = v20;
  v22 = *(v20 - 8);
  if (v19)
  {
    v62 = &v62;
    MEMORY[0x1EEE9AC00](v20);
    v24 = &v62 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_199DF85FC();
    v25 = sub_199DF971C();
    v63 = v11;
    v26 = v25;
    KeyPath = swift_getKeyPath();
    v28 = &v24[*(v21 + 36)];
    *v28 = KeyPath;
    v28[1] = v26;
    v11 = v63;
    sub_199AB7794(v24, v18, &qword_1EAF759A8, &qword_199E41488);
    (*(v22 + 56))(v18, 0, 1, v21);
  }

  else
  {
    (*(*(v20 - 8) + 56))(v18, 1, 1, v20);
  }

  v29 = v11 + *(v9 + 36);
  sub_199AB7794(v18, v29, &qword_1EAF759A0, &qword_199E41480);
  v30 = (v29 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF759B0, &qword_199E41490) + 36));
  v31 = v64;
  *v30 = v14;
  v30[1] = v31;
  type metadata accessor for CNWallpaperSuggestionsGallery.SourceButton(0);
  if (sub_199DF883C())
  {
    sub_199DF869C();
  }

  sub_199DF9B5C();
  sub_199DF897C();
  sub_199AB7794(v11, v8, &qword_1EAF75990, &qword_199E41470);
  v32 = &v8[*(v65 + 36)];
  v33 = v76;
  *(v32 + 4) = v75;
  *(v32 + 5) = v33;
  *(v32 + 6) = v77;
  v34 = v72;
  *v32 = v71;
  *(v32 + 1) = v34;
  v35 = v74;
  *(v32 + 2) = v73;
  *(v32 + 3) = v35;
  v36 = v67;
  sub_199AB7794(v8, v67, &qword_1EAF75988, &qword_199E41468);
  v69 = sub_199AA9D28();
  v70 = v37;
  sub_199A9C458();
  v38 = sub_199DF93CC();
  v40 = v39;
  v42 = v41;
  v43 = [objc_opt_self() labelColor];
  sub_199DF969C();
  v44 = sub_199DF933C();
  v46 = v45;
  v48 = v47;

  sub_199ACE3E8(v38, v40, v42 & 1);

  sub_199DF92EC();
  v49 = sub_199DF939C();
  v51 = v50;
  v53 = v52;
  v55 = v54;

  sub_199ACE3E8(v44, v46, v48 & 1);

  MEMORY[0x1EEE9AC00](v56);
  v58 = &v62 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_199AAD408(v36, v58, &qword_1EAF75988, &qword_199E41468);
  v59 = v68;
  sub_199AAD408(v58, v68, &qword_1EAF75988, &qword_199E41468);
  v60 = v59 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF759B8, &qword_199E41498) + 48);
  *v60 = v49;
  *(v60 + 8) = v51;
  v53 &= 1u;
  *(v60 + 16) = v53;
  *(v60 + 24) = v55;
  sub_199ACE3F8(v49, v51, v53);
  sub_199DF81AC();
  sub_199A79A04(v36, &qword_1EAF75988, &qword_199E41468);
  sub_199ACE3E8(v49, v51, v53);

  return sub_199A79A04(v58, &qword_1EAF75988, &qword_199E41468);
}

uint64_t sub_199B561B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v120 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF74640, &qword_199E3AC30);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v116 = &v100 - v6;
  v112 = sub_199DF9F4C();
  v111 = *(v112 - 8);
  MEMORY[0x1EEE9AC00](v112);
  v110 = &v100 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF759C0, &qword_199E41520);
  MEMORY[0x1EEE9AC00](v118);
  v9 = &v100 - v8;
  v114 = sub_199DF96AC();
  v113 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114);
  v11 = &v100 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF759C8, &qword_199E41528);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = (&v100 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF759D0, &qword_199E41530);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v100 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF759D8, &qword_199E41538);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v119 = &v100 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v121 = &v100 - v22;
  v115 = *(a1 + 8);
  if (*(v115 + OBJC_IVAR____TtC10ContactsUI38CNWallpaperSuggestionsGalleryViewModel_suggestionFormat) == 1)
  {
    v106 = v13;
    v107 = v12;
    v108 = a2;
    v103 = sub_199DF896C();
    v23 = *(v103 + 20);
    v24 = *MEMORY[0x1E697F468];
    v25 = sub_199DF8D1C();
    v26 = *(*(v25 - 8) + 104);
    v102 = v24;
    v101 = v26;
    v26(&v18[v23], v24, v25);
    __asm { FMOV            V0.2D, #16.0 }

    v100 = _Q0;
    *v18 = _Q0;
    *&v117 = type metadata accessor for CNWallpaperSuggestionsGallery.SourceButton(0);
    v32 = sub_199AAA0C0();
    v33 = a1;
    KeyPath = swift_getKeyPath();
    v35 = &v18[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF759E8, &unk_199E41578) + 36)];
    *v35 = KeyPath;
    v35[1] = v32;
    v105 = sub_199DF9B5C();
    v104 = v36;
    v37 = &v18[*(v16 + 36)];
    v109 = v33;
    if (sub_199B55080())
    {
      (*(v113 + 104))(v11, *MEMORY[0x1E69814D8], v114);
      v38 = sub_199DF979C();
      v39 = v107;
      v40 = v15 + *(v107 + 36);
      v101(&v40[*(v103 + 20)], v102, v25);
      *v40 = v100;
      *&v40[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72C10, &qword_199E38FC0) + 36)] = 256;
      *v15 = v38;
      sub_199AB7794(v15, v37, &qword_1EAF759C8, &qword_199E41528);
      v41 = 0;
    }

    else
    {
      v41 = 1;
      v39 = v107;
    }

    (*(v106 + 56))(v37, v41, 1, v39);
    v49 = (v37 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF759F0, &qword_199E41588) + 36));
    v50 = v104;
    *v49 = v105;
    v49[1] = v50;
    sub_199AAD408(v18, v9, &qword_1EAF759D0, &qword_199E41530);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF759E0, &qword_199E41570);
    sub_199B59BEC();
    sub_199B59D8C();
    sub_199DF8EDC();
    sub_199A79A04(v18, &qword_1EAF759D0, &qword_199E41530);
    a1 = v109;
  }

  else
  {
    *&v117 = type metadata accessor for CNWallpaperSuggestionsGallery.SourceButton(0);
    v42 = sub_199AAA0C0();
    v43 = swift_getKeyPath();
    v44 = sub_199DF9B5C();
    v46 = v45;
    if (sub_199B55080())
    {
      (*(v113 + 104))(v11, *MEMORY[0x1E69814D8], v114);
      v47 = sub_199DF979C();
      v48 = 256;
    }

    else
    {
      v47 = 0;
      v48 = 0;
    }

    *v9 = v43;
    *(v9 + 1) = v42;
    *(v9 + 2) = v47;
    *(v9 + 12) = v48;
    *(v9 + 4) = v44;
    *(v9 + 5) = v46;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF759E0, &qword_199E41570);
    sub_199B59BEC();
    sub_199B59D8C();
    sub_199DF8EDC();
  }

  type metadata accessor for CNWallpaperSuggestionsGallery.SourceButton(0);
  v51 = a1 + *(v117 + 24);
  if (*(v51 + *(type metadata accessor for CNWallpaperSuggestionsGallerySource(0) + 20)) == 3)
  {
  }

  else
  {
    v52 = sub_199DFA99C();

    if ((v52 & 1) == 0)
    {
      v82 = v116;
      v83 = sub_199DF97EC();
      sub_199DF869C();
      sub_199B54F9C();
      sub_199DF925C();
      v84 = sub_199DF922C();
      (*(*(v84 - 8) + 56))(v82, 1, 1, v84);
      v85 = sub_199DF928C();
      sub_199A79A04(v82, &unk_1EAF74640, &qword_199E3AC30);
      v86 = swift_getKeyPath();
      v87 = sub_199AA9EB0();
      v88 = swift_getKeyPath();
      v122 = v83;
      v123 = v86;
      v124 = v85;
      v125 = v88;
      v126 = v87;
      v127 = 1;
      goto LABEL_18;
    }
  }

  v53 = *(v115 + OBJC_IVAR____TtC10ContactsUI38CNWallpaperSuggestionsGalleryViewModel_contact);
  v54 = objc_opt_self();
  v55 = v53;
  v56 = [v54 abbreviatedStringFromContact:v55 trimmingWhitespace:1];
  if (v56)
  {
    v57 = v56;
    v58 = sub_199DF9F8C();
    v60 = v59;

    v55 = v57;
  }

  else
  {
    v61 = v110;
    sub_199DF9EEC();
    v58 = sub_199AA8A84(v61, MEMORY[0x1E69E7CC0]);
    v60 = v62;
    (*(v111 + 8))(v61, v112);
  }

  *&v128 = v58;
  *(&v128 + 1) = v60;
  sub_199A9C458();
  v63 = sub_199DF93CC();
  v65 = v64;
  v67 = v66;
  sub_199DF869C();
  sub_199B54F9C();
  sub_199DF923C();
  v68 = *MEMORY[0x1E6980E28];
  v69 = sub_199DF922C();
  v70 = *(v69 - 8);
  v71 = v116;
  (*(v70 + 104))(v116, v68, v69);
  (*(v70 + 56))(v71, 0, 1, v69);
  sub_199DF928C();
  sub_199A79A04(v71, &unk_1EAF74640, &qword_199E3AC30);
  v72 = sub_199DF939C();
  v74 = v73;
  LOBYTE(v70) = v75;

  sub_199ACE3E8(v63, v65, v67 & 1);

  sub_199AA9EB0();
  v76 = sub_199DF933C();
  v78 = v77;
  LOBYTE(v65) = v79;
  v81 = v80;

  sub_199ACE3E8(v72, v74, v70 & 1);

  v122 = v76;
  v123 = v78;
  v124 = v65 & 1;
  v125 = v81;
  v126 = 0;
  v127 = 0;
LABEL_18:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75A08, &qword_199E415D0);
  sub_199B59F50();
  sub_199DF8EDC();
  v118 = v129;
  v117 = v128;
  v89 = v130;
  v90 = v131;
  v91 = v121;
  v92 = v119;
  sub_199AAD408(v121, v119, &qword_1EAF759D8, &qword_199E41538);
  v93 = v120;
  sub_199AAD408(v92, v120, &qword_1EAF759D8, &qword_199E41538);
  v94 = v93 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF75A18, &qword_199E415E8) + 48);
  v95 = v118;
  v96 = v117;
  *v94 = v117;
  *(v94 + 16) = v95;
  *(v94 + 32) = v89;
  *(v94 + 40) = v90;
  v97 = v96;
  v98 = v95;
  sub_199B5A0C0(v96, *(&v96 + 1), v95, *(&v95 + 1), v89, v90);
  sub_199A79A04(v91, &qword_1EAF759D8, &qword_199E41538);
  sub_199B5A158(v97, *(&v97 + 1), v98, *(&v98 + 1), v89, v90);
  return sub_199A79A04(v92, &qword_1EAF759D8, &qword_199E41538);
}

double sub_199B56F6C@<D0>(_OWORD *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_199DF841C();

  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_199B56FEC(uint64_t *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_199DF81AC();
  v3 = v2;
  return sub_199DF842C();
}

uint64_t sub_199B570BC(char *a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v7 = v6;
  return sub_199DF842C();
}

double sub_199B57128()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_199DF841C();

  return result;
}

uint64_t sub_199B571A4(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF74FB8, &qword_199E40E10);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v12 - v8;
  sub_199AAD408(a1, &v12 - v8, &unk_1EAF74FB8, &qword_199E40E10);
  v10 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_199AAD408(v9, v6, &unk_1EAF74FB8, &qword_199E40E10);
  v10;
  sub_199DF842C();
  sub_199B2BC48();
  return sub_199A79A04(v9, &unk_1EAF74FB8, &qword_199E40E10);
}

uint64_t sub_199B5732C(void **a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *a1;
  v7 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v8 = v6;
  v9 = v7;
  return sub_199DF842C();
}

id sub_199B5739C(uint64_t a1, void *a2, uint64_t a3, void *a4, unsigned int a5, unsigned int a6, uint64_t a7, uint64_t a8)
{
  v57 = a2;
  v53 = __PAIR64__(a6, a5);
  v12 = type metadata accessor for CNWallpaperSuggestionsGallery(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v55 = &v53 - v16;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF757E0, &unk_199E40C20);
  MEMORY[0x1EEE9AC00](v54);
  v56 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v53 - v19;
  swift_unknownObjectWeakInit();
  LOBYTE(v63) = 0;
  v21 = a4;
  swift_unknownObjectRetain();
  sub_199DF983C();
  v22 = v61;
  v14[88] = v60;
  *(v14 + 12) = v22;
  v63 = 0;
  v64 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74540, &qword_199E3D4D0);
  sub_199DF983C();
  v23 = v61;
  v24 = v62;
  *(v14 + 13) = v60;
  v14[112] = v23;
  *(v14 + 15) = v24;
  *(v14 + 16) = swift_getKeyPath();
  v14[136] = 0;
  v25 = v12[12];
  *&v14[v25] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72D30, &qword_199E39598);
  swift_storeEnumTagMultiPayload();
  v26 = objc_allocWithZone(type metadata accessor for CNWallpaperSuggestionsGalleryViewModel(0));
  v27 = v21;
  sub_199B2F998(v27, a3 != 0, a7, a8);

  sub_199B58020(&qword_1EAF716B0, type metadata accessor for CNWallpaperSuggestionsGalleryViewModel, &unk_199E3EF20);
  *(v14 + 1) = sub_199DF87AC();
  *(v14 + 2) = v28;
  swift_unknownObjectWeakAssign();
  v29 = BYTE4(v53);
  v14[v12[13]] = v53;
  v14[v12[14]] = v29;
  v30 = [objc_allocWithZone(MEMORY[0x1E695CF18]) init];
  v31 = [v27 givenName];
  if (!v31)
  {
    sub_199DF9F8C();
    v31 = sub_199DF9F5C();
  }

  [v30 setGivenName_];

  v32 = [v27 familyName];
  if (!v32)
  {
    sub_199DF9F8C();
    v32 = sub_199DF9F5C();
  }

  [v30 setFamilyName_];

  v14[v12[15]] = [objc_opt_self() nameOrderForContact_] == 1;
  v33 = [v27 givenName];
  v34 = sub_199DF9F8C();
  v36 = v35;

  *(v14 + 3) = v34;
  *(v14 + 4) = v36;
  *(v14 + 5) = 0;
  v37 = [v27 familyName];
  v38 = sub_199DF9F8C();
  v40 = v39;

  *(v14 + 6) = v38;
  *(v14 + 7) = v40;
  *(v14 + 8) = 0;
  [v27 mutableCopy];
  sub_199DFA66C();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_199A7A02C(0, &qword_1EAF710A0, 0x1E695CF18);
  swift_dynamicCast();
  *(v14 + 9) = v63;
  *(v14 + 10) = 0;
  v41 = v55;
  sub_199B58478(v14, v55, type metadata accessor for CNWallpaperSuggestionsGallery);
  KeyPath = swift_getKeyPath();
  sub_199B58478(v41, v20, type metadata accessor for CNWallpaperSuggestionsGallery);
  v43 = &v20[*(v54 + 36)];
  v45 = v56;
  v44 = v57;
  *v43 = KeyPath;
  v43[1] = v44;
  sub_199AAD408(v20, v45, &qword_1EAF757E0, &unk_199E40C20);
  v46 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF757E8, &unk_199E40C90));
  v47 = v44;
  v48 = sub_199DF8DFC();
  v49 = v58;
  *&v58[OBJC_IVAR____TtC10ContactsUI40CNWallpaperSuggestionsGalleryViewWrapper_hostingController] = v48;
  v50 = type metadata accessor for CNWallpaperSuggestionsGalleryViewWrapper();
  v59.receiver = v49;
  v59.super_class = v50;
  v51 = objc_msgSendSuper2(&v59, sel_init);
  sub_199A79A04(v20, &qword_1EAF757E0, &unk_199E40C20);
  return v51;
}

void sub_199B57A2C(uint64_t a1)
{
  sub_199B4C8B0(319);
  if (v1 <= 0x3F)
  {
    sub_199B594A0(319, &qword_1EAF711D0, MEMORY[0x1E69E6158], MEMORY[0x1E6981790]);
    if (v2 <= 0x3F)
    {
      sub_199B57C10(319);
      if (v3 <= 0x3F)
      {
        sub_199B594A0(319, &qword_1EAF711C0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
        if (v4 <= 0x3F)
        {
          sub_199B594F0(319, &qword_1EAF711D8, &qword_1EAF74540, &qword_199E3D4D0, MEMORY[0x1E6981790]);
          if (v5 <= 0x3F)
          {
            sub_199B594F0(319, &qword_1EAF713E0, &qword_1EAF72E80, &unk_199E398B0, MEMORY[0x1E697DCC0]);
            if (v6 <= 0x3F)
            {
              sub_199B57C78(319, &qword_1EAF713F0, MEMORY[0x1E697E730]);
              if (v7 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_199B57C10(uint64_t a1)
{
  if (!qword_1EAF711B0)
  {
    sub_199A7A02C(255, &qword_1EAF710A0, 0x1E695CF18);
    v1 = sub_199DF987C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EAF711B0);
    }
  }
}

void sub_199B57C78(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_199DF859C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_199B57CFC()
{
  result = qword_1EAF757F0;
  if (!qword_1EAF757F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF757F0);
  }

  return result;
}

uint64_t objectdestroyTm_6()
{
  v1 = (type metadata accessor for CNWallpaperSuggestionsGallery(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = v0 + v3;
  MEMORY[0x19A8FA290](v0 + v3);

  sub_199AC6288(*(v5 + 128), *(v5 + 136));
  v6 = v1[14];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72D30, &qword_199E39598);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_199DF884C();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_199B57EEC(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for CNWallpaperSuggestionsGallery(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_199B516A8(a1, a2, v6);
}

unint64_t sub_199B57F6C()
{
  result = qword_1EAF71850;
  if (!qword_1EAF71850)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EAF74FB8, &qword_199E40E10);
    sub_199B58020(&qword_1EAF71880, type metadata accessor for CNWallpaperSuggestionsGallerySource, &unk_199E38150);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF71850);
  }

  return result;
}

uint64_t sub_199B58020(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_199B58098()
{
  result = qword_1EAF71040;
  if (!qword_1EAF71040)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EAF740A0, &unk_199E3C3C0);
    sub_199B58134(&qword_1EAF71038, &qword_1EAF71048, off_1E74DEC80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF71040);
  }

  return result;
}

uint64_t sub_199B58134(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    sub_199A7A02C(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_199B5819C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(type metadata accessor for CNWallpaperSuggestionsGallery(0) - 8);
  v7 = v3 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a3(a1, a2, v7);
}

unint64_t sub_199B58230()
{
  result = qword_1EAF71718;
  if (!qword_1EAF71718)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EAF74FD0, &qword_199E3EE40);
    sub_199B582B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF71718);
  }

  return result;
}

unint64_t sub_199B582B4()
{
  result = qword_1EAF71728;
  if (!qword_1EAF71728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF71728);
  }

  return result;
}

uint64_t sub_199B58338(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(type metadata accessor for CNWallpaperSuggestionsGallery(0) - 8);
  v7 = v3 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a3(a1, a2, v7);
}

uint64_t sub_199B583E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(type metadata accessor for CNWallpaperSuggestionsGallery(0) - 8);
  v7 = v3 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a3(a1, a2, v7);
}

uint64_t sub_199B58478(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_199B584E8()
{
  result = qword_1EAF71320;
  if (!qword_1EAF71320)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF75848, &qword_199E41038);
    sub_199B58574();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF71320);
  }

  return result;
}

unint64_t sub_199B58574()
{
  result = qword_1EAF713A0;
  if (!qword_1EAF713A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF75850, &qword_199E41040);
    sub_199AA0B90(&qword_1EAF713C0, &qword_1EAF75858, &qword_199E41048, MEMORY[0x1E697DDD0]);
    sub_199AA0B90(&qword_1EAF71140, &qword_1EAF75860, &qword_199E41050, MEMORY[0x1E6981F48]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF713A0);
  }

  return result;
}

uint64_t sub_199B58658()
{
  v1 = *(type metadata accessor for CNWallpaperSuggestionsGallery(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  sub_199DF86BC();

  return sub_199B51310(v0 + v2);
}

unint64_t sub_199B5873C()
{
  result = qword_1EAF712E8;
  if (!qword_1EAF712E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF75838, &qword_199E41028);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF75840, &qword_199E41030);
    sub_199AA0B90(&qword_1EAF71408, &qword_1EAF75840, &qword_199E41030, MEMORY[0x1EEE7B510]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF712E8);
  }

  return result;
}

uint64_t sub_199B58820(char *a1)
{
  v3 = *(type metadata accessor for CNWallpaperSuggestionsGallery(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_199B51534(a1, v4);
}

uint64_t sub_199B58890(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_199B588F8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_199B589A0(uint64_t a1)
{
  sub_199B4C8B0(319);
  if (v1 <= 0x3F)
  {
    sub_199DF884C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

__n128 __swift_memcpy81_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_199B58A70(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 81))
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

uint64_t sub_199B58AB8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 81) = 1;
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

    *(result + 81) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_199B58B58(char a1)
{
  v1 = sub_199DF9F4C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_199DF9EEC();
  v5 = sub_199AA8A84(v4, MEMORY[0x1E69E7CC0]);
  (*(v2 + 8))(v4, v1);
  return v5;
}

uint64_t sub_199B58C70@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CNWallpaperSuggestionsGallery.SourceButtonsView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_199B53104(v4, a1);
}

uint64_t objectdestroy_99Tm()
{
  v1 = (type metadata accessor for CNWallpaperSuggestionsGallery.SourceButtonsView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  MEMORY[0x19A8FA290](v0 + v3 + 16);
  v5 = v1[9];
  v6 = sub_199DF884C();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_199B58DD0()
{
  v2 = *(type metadata accessor for CNWallpaperSuggestionsGallery.SourceButtonsView(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_199AA7314;

  return sub_199B54120(v0 + v3);
}

uint64_t sub_199B58EC8(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = v3 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return a3(a1, v6);
}

uint64_t sub_199B58F80@<X0>(id *a1@<X0>, char *a2@<X8>)
{
  v5 = *(type metadata accessor for CNWallpaperSuggestionsGallery.SourceButtonsView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_199B53E64(a1, v6, a2);
}

unint64_t sub_199B59000()
{
  result = qword_1EAF758E8;
  if (!qword_1EAF758E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF758E0, &qword_199E412A0);
    sub_199B58020(&qword_1EAF71948, type metadata accessor for CNWallpaperSuggestionsGallery.AvatarSuggestionButton, &unk_199E413A8);
    sub_199AA0B90(&qword_1EAF758F0, &qword_1EAF758F8, &qword_199E412A8, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF758E8);
  }

  return result;
}

unint64_t sub_199B59108()
{
  result = qword_1EAF71720;
  if (!qword_1EAF71720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF71720);
  }

  return result;
}

unint64_t sub_199B5915C()
{
  result = qword_1EAF71348;
  if (!qword_1EAF71348)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF75938, &qword_199E41348);
    sub_199B4152C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF71348);
  }

  return result;
}

uint64_t objectdestroy_126Tm()
{

  sub_199AC6288(*(v0 + 88), *(v0 + 96));

  return MEMORY[0x1EEE6BDD0](v0, 97, 7);
}

void sub_199B5934C(uint64_t a1)
{
  type metadata accessor for CNWallpaperSuggestionsGalleryViewModel(319);
  if (v1 <= 0x3F)
  {
    sub_199DF884C();
    if (v2 <= 0x3F)
    {
      sub_199B594A0(319, &qword_1EAF713F8, MEMORY[0x1E69E7DE0], MEMORY[0x1E697DCC0]);
      if (v3 <= 0x3F)
      {
        sub_199B57C78(319, &qword_1EAF713E8, MEMORY[0x1E697E7E0]);
        if (v4 <= 0x3F)
        {
          sub_199B594F0(319, &qword_1EAF711A8, &qword_1EAF75908, &qword_199E41318, MEMORY[0x1E6981790]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_199B594A0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_199B594F0(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
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

void sub_199B5957C(uint64_t a1)
{
  sub_199B4C8B0(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for CNWallpaperSuggestionsGallerySource(319);
    if (v2 <= 0x3F)
    {
      sub_199DF884C();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_199B59624()
{
  result = qword_1EAF71340;
  if (!qword_1EAF71340)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF75890, &qword_199E41208);
    sub_199AA0B90(qword_1EAF71748, &qword_1EAF75950, &qword_199E41398, &unk_199E42158);
    sub_199B596DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF71340);
  }

  return result;
}

unint64_t sub_199B596DC()
{
  result = qword_1EAF713A8;
  if (!qword_1EAF713A8)
  {
    sub_199DF871C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF713A8);
  }

  return result;
}

unint64_t sub_199B59728()
{
  result = qword_1EAF71230;
  if (!qword_1EAF71230)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF75958, &qword_199E413A0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF75918, &qword_199E41328);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF75938, &qword_199E41348);
    sub_199A7A02C(255, &qword_1EAF710A0, 0x1E695CF18);
    sub_199B5915C();
    sub_199B58134(&qword_1EAF71098, &qword_1EAF710A0, 0x1E695CF18);
    swift_getOpaqueTypeConformance2();
    sub_199B121E8();
    swift_getOpaqueTypeConformance2();
    sub_199AA0B90(&qword_1EAF71180, &qword_1EAF75930, &qword_199E41340, MEMORY[0x1E6981880]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF71230);
  }

  return result;
}

unint64_t sub_199B598F0()
{
  result = qword_1EAF713B0;
  if (!qword_1EAF713B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF713B0);
  }

  return result;
}