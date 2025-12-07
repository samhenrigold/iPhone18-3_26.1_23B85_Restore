id sub_1924()
{
  v0 = objc_allocWithZone(CKSettingsMessagesController);

  return [v0 init];
}

id sub_195C()
{
  v0 = objc_allocWithZone(PSListControllerCellHighlightingSelectionInvocationRelay);

  return [v0 init];
}

uint64_t sub_1994@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v20[1] = a5;
  v9 = sub_1B90(&qword_C1E0, &qword_4760);
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = v20 - v11;
  v13 = swift_allocObject();
  v13[2] = a1;
  v13[3] = a2;
  v13[4] = a3;
  v13[5] = a4;
  sub_3D80();
  sub_3C18(&qword_C1E8, &type metadata accessor for PreferencesControllerView, &protocol conformance descriptor for PreferencesControllerView);

  v14 = a3;
  v15 = a4;
  sub_3E80();
  v16 = swift_allocObject();
  v16[2] = a1;
  v16[3] = a2;
  v16[4] = v14;
  v16[5] = v15;
  sub_2C80();

  v17 = v14;
  v18 = v15;
  sub_3E30();
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_1B90(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1BD8(uint64_t a1)
{
  sub_3DF0();
  __chkstk_darwin();
  sub_3ED0();
  sub_3EC0();
  sub_3EB0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_3CC4(0, &qword_C2F8, CKMessagesSettingsContainerViewController_ptr);
  v2 = [objc_allocWithZone(PSSpecifier) init];
  [v2 setProperty:a1 forKey:PSListControllerCellHighlightingSelectionInvocationRelayKey];
  sub_3DB0();
  sub_3D70();
}

uint64_t sub_1D30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[10] = a5;
  v6[11] = a6;
  v6[8] = a3;
  v6[9] = a4;
  v6[6] = a1;
  v6[7] = a2;
  sub_1B90(&qword_C2A0, &qword_4918);
  v6[12] = swift_task_alloc();
  v7 = sub_3E20();
  v6[13] = v7;
  v6[14] = *(v7 - 8);
  v6[15] = swift_task_alloc();
  sub_3EF0();
  v6[16] = swift_task_alloc();
  v8 = sub_3DF0();
  v6[17] = v8;
  v6[18] = *(v8 - 8);
  v6[19] = swift_task_alloc();
  v6[20] = swift_task_alloc();
  sub_1B90(&qword_C2A8, &qword_4920);
  v6[21] = swift_task_alloc();
  v9 = sub_3D50();
  v6[22] = v9;
  v6[23] = *(v9 - 8);
  v6[24] = swift_task_alloc();
  v10 = sub_3E10();
  v6[25] = v10;
  v6[26] = *(v10 - 8);
  v6[27] = swift_task_alloc();
  v11 = sub_3D60();
  v6[28] = v11;
  v6[29] = *(v11 - 8);
  v6[30] = swift_task_alloc();
  v6[31] = sub_3ED0();
  v6[32] = sub_3EC0();
  v13 = sub_3EB0();

  return _swift_task_switch(sub_2048, v13, v12);
}

uint64_t sub_2048()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 184);
  v3 = *(v0 + 168);

  sub_3E50();
  sub_3E40();
  sub_3D20();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v5 = *(v0 + 232);
    v4 = *(v0 + 240);
    v7 = *(v0 + 216);
    v6 = *(v0 + 224);
    v8 = *(v0 + 200);
    v9 = *(v0 + 208);
    sub_3C60(*(v0 + 168), &qword_C2A8, &qword_4920);
    sub_3E70();
    (*(v9 + 8))(v7, v8);
    (*(v5 + 8))(v4, v6);
    goto LABEL_57;
  }

  (*(*(v0 + 184) + 32))(*(v0 + 192), *(v0 + 168), *(v0 + 176));
  *(v0 + 16) = sub_3D30();
  *(v0 + 24) = v10;
  *(v0 + 32) = 47;
  *(v0 + 40) = 0xE100000000000000;
  sub_3B70();
  v11 = sub_3F00();

  v12 = *(v11 + 16);
  if (!v12)
  {
    v15 = _swiftEmptyArrayStorage;
    goto LABEL_26;
  }

  v13 = 0;
  v84 = -v12;
  v14 = v11 + 40;
  v15 = _swiftEmptyArrayStorage;
  do
  {
    v16 = (v14 + 16 * v13++);
    while (1)
    {
      if ((v13 - 1) >= *(v11 + 16))
      {
        __break(1u);
        JUMPOUT(0x2B80);
      }

      v18 = *(v16 - 1);
      v17 = *v16;

      sub_3EC0();
      sub_3EB0();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v19 = HIBYTE(v17) & 0xF;
      if ((v17 & 0x2000000000000000) == 0)
      {
        v19 = v18 & 0xFFFFFFFFFFFFLL;
      }

      if (v19)
      {
        break;
      }

LABEL_7:
      ++v13;
      v16 += 2;
      if (v84 + v13 == 1)
      {
        goto LABEL_26;
      }
    }

    if (v18 == *(v0 + 64) && v17 == *(v0 + 72))
    {

LABEL_18:

      goto LABEL_7;
    }

    v20 = sub_3F20();

    if (v20)
    {
      goto LABEL_18;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_337C(0, _swiftEmptyArrayStorage[2] + 1, 1);
    }

    v22 = _swiftEmptyArrayStorage[2];
    v21 = _swiftEmptyArrayStorage[3];
    if (v22 >= v21 >> 1)
    {
      sub_337C((v21 > 1), v22 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v22 + 1;
    v23 = &_swiftEmptyArrayStorage[2 * v22];
    v23[4] = v18;
    v23[5] = v17;
    v14 = v11 + 40;
  }

  while (v84 + v13);
LABEL_26:

  v24 = _swiftEmptyArrayStorage[2];
  if (v24)
  {
    goto LABEL_27;
  }

  sub_3D40();
  if (v55)
  {
    v56 = *(v0 + 88);

    v57 = sub_3E90();

    [v56 setSpecifierIdentifierToScrollAndHighlight:v57];

LABEL_56:
    v59 = *(v0 + 232);
    v58 = *(v0 + 240);
    v61 = *(v0 + 216);
    v60 = *(v0 + 224);
    v62 = *(v0 + 200);
    v63 = *(v0 + 208);
    v65 = *(v0 + 184);
    v64 = *(v0 + 192);
    v66 = *(v0 + 176);
    sub_3E70();
    (*(v65 + 8))(v64, v66);
    (*(v63 + 8))(v61, v62);
    (*(v59 + 8))(v58, v60);
    goto LABEL_57;
  }

  v24 = _swiftEmptyArrayStorage[2];
  if (!v24)
  {

    goto LABEL_56;
  }

LABEL_27:
  v25 = (*(v0 + 144) + 8);
  v80 = (*(v0 + 112) + 48);
  while (2)
  {
    v33 = *(v15 + 4);
    v34 = *(v15 + 5);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || (v24 - 1) > *(v15 + 3) >> 1)
    {
      v15 = sub_34A8(isUniquelyReferenced_nonNull_native, v24, 1, v15);
    }

    sub_3BC4((v15 + 32));
    v36 = *(v15 + 2);
    memmove(v15 + 32, v15 + 48, 16 * v36 - 16);
    *(v15 + 2) = v36 - 1;
    switch(sub_35B4(v33, v34))
    {
      case 1u:
        v26 = *(v0 + 160);
        v27 = *(v0 + 136);
        v28 = [objc_allocWithZone(CKSettingsiMessageAppManager) init];
        v29 = [objc_allocWithZone(CKSettingsiMessageAppsViewController) initWithAppManager:v28];
        sub_3DA0();
        sub_3C18(&qword_C2B8, &type metadata accessor for PreferencesControllerRecipe, &protocol conformance descriptor for PreferencesControllerRecipe);
        sub_3E00();

        goto LABEL_29;
      case 2u:
        v45 = *(v0 + 88);
        v37 = sub_3E90();
        [v45 setSpecifierIdentifierToScrollAndSelect:v37];
        goto LABEL_40;
      case 3u:
        v26 = *(v0 + 160);
        v27 = *(v0 + 136);
        v43 = &unk_C2E8;
        v44 = CKSettingsSharedWithYouController_ptr;
        goto LABEL_48;
      case 4u:
        v26 = *(v0 + 160);
        v27 = *(v0 + 136);
        v43 = &unk_C2E0;
        v44 = CKNotificationsUnknownSendersController_ptr;
        goto LABEL_48;
      case 5u:
        v26 = *(v0 + 160);
        v27 = *(v0 + 136);
        v43 = &unk_C2D8;
        v44 = CKFilteringListController_ptr;
        goto LABEL_48;
      case 6u:
        v26 = *(v0 + 160);
        v27 = *(v0 + 136);
        v43 = &unk_C2D0;
        v44 = CKSettingSMSRelayController_ptr;
        goto LABEL_48;
      case 7u:
        v26 = *(v0 + 160);
        v27 = *(v0 + 136);
        v43 = &unk_C2C8;
        v44 = CKRCSController_ptr;
        goto LABEL_48;
      case 8u:
        v47 = *(v0 + 96);
        v46 = *(v0 + 104);
        sub_3EE0();
        sub_3DD0();
        sub_3D90();
        if ((*v80)(v47, 1, v46) == 1)
        {
          v26 = *(v0 + 152);
          v27 = *(v0 + 136);
          sub_3C60(*(v0 + 96), &qword_C2A0, &qword_4918);
LABEL_49:
          sub_3C18(&qword_C2B8, &type metadata accessor for PreferencesControllerRecipe, &protocol conformance descriptor for PreferencesControllerRecipe);
          sub_3E00();
LABEL_29:
          v30 = *v25;
          v31 = v26;
          v32 = v27;
LABEL_30:
          v30(v31, v32);
LABEL_31:
          v24 = *(v15 + 2);
          if (!v24)
          {
LABEL_53:

            goto LABEL_56;
          }

          continue;
        }

        v83 = *(v0 + 224);
        v85 = *(v0 + 240);
        v75 = *(v0 + 216);
        v69 = *(v0 + 208);
        v81 = *(v0 + 200);
        v82 = *(v0 + 232);
        v70 = *(v0 + 184);
        v78 = *(v0 + 176);
        v79 = *(v0 + 192);
        v76 = *(v0 + 136);
        v77 = *(v0 + 152);
        v72 = *(v0 + 112);
        v71 = *(v0 + 120);
        v74 = *(v0 + 96);
        v73 = *(v0 + 104);

        (*(v72 + 32))(v71, v74, v73);
        sub_3E60();
        (*(v72 + 8))(v71, v73);
        (*v25)(v77, v76);
        (*(v70 + 8))(v79, v78);
        (*(v69 + 8))(v75, v81);
        (*(v82 + 8))(v85, v83);
LABEL_57:

        v67 = *(v0 + 8);

        return v67();
      case 9u:
      case 0xAu:
      case 0xBu:
        v48 = *(v0 + 80);
        v49 = sub_3E90();

        v50 = [v48 specifierForID:v49];

        if (!v50)
        {
          goto LABEL_31;
        }

        v51 = *(v0 + 160);
        v40 = *(v0 + 136);
        v52 = *(v0 + 80);
        v53 = sub_3E90();
        [v50 setProperty:v52 forKey:v53];

        v54 = v50;
        sub_3DE0();
        sub_3C18(&qword_C2B8, &type metadata accessor for PreferencesControllerRecipe, &protocol conformance descriptor for PreferencesControllerRecipe);
        sub_3E00();

        v30 = *v25;
        v31 = v51;
        goto LABEL_52;
      case 0xCu:
        v26 = *(v0 + 160);
        v27 = *(v0 + 136);
        v43 = &unk_C2C0;
        v44 = CKSettingsMessagesForBusinessViewController_ptr;
LABEL_48:
        sub_3CC4(0, v43, v44);
        sub_3DC0();
        goto LABEL_49;
      case 0xDu:
        goto LABEL_53;
      default:
        v37 = [*(v0 + 80) regController];
        v38 = [objc_allocWithZone(CNFRegSettingsController) initWithRegController:v37];
        if (!v38)
        {
LABEL_40:

          goto LABEL_31;
        }

        v39 = *(v0 + 160);
        v40 = *(v0 + 136);
        v41 = v38;
        [v38 setShowEnableSwitch:0];
        v42 = v41;
        sub_3DA0();
        sub_3C18(&qword_C2B8, &type metadata accessor for PreferencesControllerRecipe, &protocol conformance descriptor for PreferencesControllerRecipe);
        sub_3E00();

        v30 = *v25;
        v31 = v39;
LABEL_52:
        v32 = v40;
        goto LABEL_30;
    }
  }
}

uint64_t sub_2BB8(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_3D18;

  return sub_1D30(a1, a2, v6, v7, v9, v8);
}

unint64_t sub_2C80()
{
  result = qword_C1F0;
  if (!qword_C1F0)
  {
    sub_2CE4(&qword_C1E0, &qword_4760);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C1F0);
  }

  return result;
}

uint64_t sub_2CE4(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_2D30(char a1)
{
  result = 0xD000000000000016;
  switch(a1)
  {
    case 1:
    case 9:
    case 12:
      result = 0xD000000000000014;
      break;
    case 2:
      result = 0xD00000000000001DLL;
      break;
    case 3:
    case 5:
      result = 0xD000000000000016;
      break;
    case 4:
      result = 0xD000000000000024;
      break;
    case 6:
      result = 0xD000000000000011;
      break;
    case 7:
      result = 0xD000000000000012;
      break;
    case 8:
      result = 0xD00000000000002CLL;
      break;
    case 10:
      result = 0xD00000000000001CLL;
      break;
    case 11:
      result = 0xD000000000000015;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_2EA4()
{
  [objc_allocWithZone(CKSettingsMessagesController) init];
  [objc_allocWithZone(PSListControllerCellHighlightingSelectionInvocationRelay) init];
  return 0xD000000000000013;
}

uint64_t sub_2F18@<X0>(uint64_t a1@<X8>)
{
  v17[1] = a1;
  v2 = sub_1B90(&qword_C1E0, &qword_4760);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = v17 - v4;
  v7 = *v1;
  v6 = v1[1];
  v8 = v1[2];
  v9 = v1[3];
  v10 = swift_allocObject();
  v10[2] = v7;
  v10[3] = v6;
  v10[4] = v8;
  v10[5] = v9;
  sub_3D80();
  sub_3C18(&qword_C1E8, &type metadata accessor for PreferencesControllerView, &protocol conformance descriptor for PreferencesControllerView);

  v11 = v8;
  v12 = v9;
  sub_3E80();
  v13 = swift_allocObject();
  v13[2] = v7;
  v13[3] = v6;
  v13[4] = v11;
  v13[5] = v12;
  sub_2C80();

  v14 = v11;
  v15 = v12;
  sub_3E30();
  return (*(v3 + 8))(v5, v2);
}

id sub_3108@<X0>(void *a1@<X8>)
{
  v2 = [objc_allocWithZone(CKSettingsMessagesController) init];
  result = [objc_allocWithZone(PSListControllerCellHighlightingSelectionInvocationRelay) init];
  *a1 = 0xD000000000000013;
  a1[1] = 0x80000000000043C0;
  a1[2] = v2;
  a1[3] = result;
  return result;
}

uint64_t sub_3180(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_2D30(*a1);
  v5 = v4;
  if (v3 == sub_2D30(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_3F20();
  }

  return v8 & 1;
}

Swift::Int sub_3208()
{
  v1 = *v0;
  sub_3F30();
  sub_2D30(v1);
  sub_3EA0();

  return sub_3F40();
}

uint64_t sub_326C(uint64_t a1)
{
  sub_2D30(*v1);
  sub_3EA0();
}

Swift::Int sub_32C0(uint64_t a1)
{
  v2 = *v1;
  sub_3F30();
  sub_2D30(v2);
  sub_3EA0();

  return sub_3F40();
}

unint64_t sub_3320@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_35B4(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_3350@<X0>(unint64_t *a1@<X8>)
{
  result = sub_2D30(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

char *sub_337C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_339C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_339C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1B90(&qword_C2F0, &qword_4928);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = _swiftEmptyArrayStorage;
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

char *sub_34A8(char *result, int64_t a2, char a3, char *a4)
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
    sub_1B90(&qword_C2F0, &qword_4928);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = _swiftEmptyArrayStorage;
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

unint64_t sub_35B4(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_83D0;
  v6._object = a2;
  v4 = sub_3F10(v3, v6);

  if (v4 >= 0xD)
  {
    return 13;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_3604()
{
  result = qword_C1F8;
  if (!qword_C1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C1F8);
  }

  return result;
}

unint64_t sub_3678()
{
  result = qword_C200;
  if (!qword_C200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C200);
  }

  return result;
}

__n128 sub_36F0(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_36FC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_3744(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for EligibleMessagesSpecifiers(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 12;
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

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for EligibleMessagesSpecifiers(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_3908()
{
  sub_2CE4(&qword_C1E0, &qword_4760);
  sub_2C80();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_396C()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_39B4(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_3A7C;

  return sub_1D30(a1, a2, v6, v7, v9, v8);
}

uint64_t sub_3A7C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_3B70()
{
  result = qword_C2B0;
  if (!qword_C2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C2B0);
  }

  return result;
}

uint64_t sub_3C18(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_3C60(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1B90(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_3CC4(uint64_t a1, unint64_t *a2, void *a3)
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