uint64_t sub_1ABE8BD20(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_1ABE8BD74(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = sub_1ABA93E20((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    v7 = a3;

    return sub_1ABE8BDF8(v6, v7);
  }

  else
  {
    v9 = *v5;

    return sub_1ABE8BE64(v9, v4);
  }
}

uint64_t sub_1ABE8BDF8(uint64_t a1, uint64_t a2)
{
  sub_1ABAD219C(&qword_1EB4D1AD0, &qword_1ABF33C70);
  v4 = swift_allocError();
  *v5 = a2;

  return MEMORY[0x1EEE6DEE8](a1, v4);
}

id sub_1ABE8BEA8(uint64_t a1, uint64_t a2)
{
  v3 = sub_1ABF23BD4();
  v4 = [v2 experimentIdentifiersWithNamespaceName_];

  return v4;
}

id sub_1ABE8BF4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1ABF23BD4();
  v13[4] = a4;
  v13[5] = a5;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = sub_1ABE8C034;
  v13[3] = &unk_1F20748C8;
  v10 = _Block_copy(v13);

  v11 = [v5 addUpdateHandlerForNamespaceName:v9 queue:a3 usingBlock:v10];

  _Block_release(v10);

  return v11;
}

uint64_t sub_1ABE8C034(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

unint64_t TrialNamespace.rawValue.getter()
{
  result = 0x4E4F435F4452454ELL;
  switch(*v0)
  {
    case 1:
      result = 0xD00000000000001FLL;
      break;
    case 2:
      sub_1ABAA1DC0();
      result = v4 + 9;
      break;
    case 3:
      sub_1ABAA1DC0();
      result = v3 + 1;
      break;
    case 4:
      sub_1ABAA1DC0();
      result = v6 - 3;
      break;
    case 5:
      sub_1ABAA1DC0();
      result = v7 + 15;
      break;
    case 6:
      sub_1ABAA1DC0();
      result = v5 - 2;
      break;
    case 7:
      result = 0xD00000000000001FLL;
      break;
    case 8:
      return result;
    default:
      sub_1ABAA1DC0();
      result = v2 + 3;
      break;
  }

  return result;
}

unint64_t sub_1ABE8C250@<X0>(unint64_t *a1@<X8>)
{
  result = TrialNamespace.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t TrialAssetManager.RefreshPolicy.AutoRefreshForAllRequestedNamespacesInfo.AutoRefreshContent.__deallocating_deinit()
{

  sub_1ABA7D544();

  return swift_deallocClassInstance();
}

uint64_t TrialAssetManager.RefreshPolicy.AutoRefreshForAllRequestedNamespacesInfo.updateHandlers.getter()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(*(v1 + 16) + 16);

  os_unfair_lock_unlock((v1 + 24));
  return v2;
}

uint64_t sub_1ABE8C3F8()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock(v1 + 6);
  sub_1ABE90344(&v1[4]);
  os_unfair_lock_unlock(v1 + 6);
}

uint64_t sub_1ABE8C458(uint64_t a1, uint64_t a2)
{
  *(*a1 + 16) = a2;
}

uint64_t TrialAssetManager.RefreshPolicy.AutoRefreshForAllRequestedNamespacesInfo.__deallocating_deinit()
{

  sub_1ABA7D544();

  return swift_deallocClassInstance();
}

id sub_1ABE8C4F4()
{
  v1 = v0;
  v2 = sub_1ABF246D4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1ABF246C4();
  MEMORY[0x1EEE9AC00](v6);
  v7 = sub_1ABF238C4();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = *(v0 + 56);
  if (v8)
  {
    v9 = *(v0 + 56);
  }

  else
  {
    v10 = sub_1ABAFF390(0, &qword_1EB4CF7B0, 0x1E69E9610);
    v15[1] = "v20@?0B8@NSError12";
    v15[2] = v10;
    sub_1ABF23894();
    v15[3] = MEMORY[0x1E69E7CC0];
    v15[0] = sub_1ABE90488();
    sub_1ABAD219C(&qword_1EB4D5BB8, &unk_1ABF4D7C0);
    sub_1ABAB47C4(&qword_1EB4CE700, &qword_1EB4D5BB8, &unk_1ABF4D7C0, MEMORY[0x1E69E6328]);
    sub_1ABF24964();
    (*(v3 + 104))(v5, *MEMORY[0x1E69E8090], v2);
    v11 = sub_1ABF246F4();
    v12 = *(v0 + 56);
    *(v1 + 56) = v11;
    v9 = v11;

    v8 = 0;
  }

  v13 = v8;
  return v9;
}

id sub_1ABE8C764()
{
  v1 = v0;
  v2 = sub_1ABF246D4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1ABF246C4();
  MEMORY[0x1EEE9AC00](v6);
  v7 = sub_1ABF238C4();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = *(v0 + 64);
  if (v8)
  {
    v9 = *(v0 + 64);
  }

  else
  {
    v10 = sub_1ABAFF390(0, &qword_1EB4CF7B0, 0x1E69E9610);
    v15[1] = "setManager.downloadLevelsQueue";
    v15[2] = v10;
    sub_1ABF23894();
    v15[3] = MEMORY[0x1E69E7CC0];
    v15[0] = sub_1ABE90488();
    sub_1ABAD219C(&qword_1EB4D5BB8, &unk_1ABF4D7C0);
    sub_1ABAB47C4(&qword_1EB4CE700, &qword_1EB4D5BB8, &unk_1ABF4D7C0, MEMORY[0x1E69E6328]);
    sub_1ABF24964();
    (*(v3 + 104))(v5, *MEMORY[0x1E69E8090], v2);
    v11 = sub_1ABF246F4();
    v12 = *(v0 + 64);
    *(v1 + 64) = v11;
    v9 = v11;

    v8 = 0;
  }

  v13 = v8;
  return v9;
}

uint64_t sub_1ABE8C9D4()
{
  sub_1ABA84B54((v0 + 16));

  return v0;
}

uint64_t sub_1ABE8CA04()
{
  sub_1ABE8C9D4();

  return swift_deallocClassInstance();
}

void sub_1ABE8CA34(uint64_t a1@<X8>)
{
  v3 = *(v1 + 24);
  os_unfair_lock_lock((v3 + 24));
  sub_1ABA93E64(*(v3 + 16) + 16, a1);

  os_unfair_lock_unlock((v3 + 24));
}

void sub_1ABE8CAE4(void *a1@<X0>, uint64_t *a2@<X8>)
{
  if (a1)
  {
    v3 = a1;
    v4 = [v3 experimentId];
    v5 = sub_1ABF23C04();
    v7 = v6;

    v8 = [v3 deploymentId];
    v9 = [v3 treatmentId];
    v10 = sub_1ABF23C04();
    v12 = v11;

    v13 = v8;
  }

  else
  {
    v5 = 0;
    v7 = 0;
    v13 = 0;
    v10 = 0;
    v12 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
  a2[2] = v13;
  a2[3] = v10;
  a2[4] = v12;
}

uint64_t static TrialAssetManager.ExperimentIdentifiers.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 4);
  v3 = a1[3];
  v4 = a1[4];
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  if (*a1 == *a2 && a1[1] == *(a2 + 8))
  {
    if (v2 != v5)
    {
      return 0;
    }
  }

  else
  {
    v9 = sub_1ABF25054();
    result = 0;
    if ((v9 & 1) == 0 || v2 != v5)
    {
      return result;
    }
  }

  if (v3 == v6 && v4 == v7)
  {
    return 1;
  }

  sub_1ABA7D000();

  return sub_1ABF25054();
}

uint64_t sub_1ABE8CC90(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D697265707865 && a2 == 0xEC0000006449746ELL;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656D796F6C706564 && a2 == 0xEC0000006449746ELL;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6E656D7461657274 && a2 == 0xEB00000000644974)
    {

      return 2;
    }

    else
    {
      v8 = sub_1ABF25054();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1ABE8CDB0(char a1)
{
  if (!a1)
  {
    return 0x656D697265707865;
  }

  if (a1 == 1)
  {
    return 0x656D796F6C706564;
  }

  return 0x6E656D7461657274;
}

uint64_t sub_1ABE8CE1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABE8CC90(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABE8CE44(uint64_t a1)
{
  v2 = sub_1ABE8F65C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABE8CE80(uint64_t a1)
{
  v2 = sub_1ABE8F65C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void TrialAssetManager.ExperimentIdentifiers.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_1ABA7BCA8();
  v36 = v24;
  v26 = v25;
  v27 = sub_1ABAD219C(&qword_1EB4DBB18, &qword_1ABF710D0);
  sub_1ABA7BB64();
  v29 = v28;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v30);
  v32 = v35 - v31;
  v33 = *(v23 + 24);
  v35[1] = *(v23 + 32);
  v35[2] = v33;
  sub_1ABA93E20(v26, v26[3]);
  sub_1ABE8F65C();
  sub_1ABF252E4();
  v34 = v36;
  sub_1ABF24F34();
  if (!v34)
  {
    sub_1ABA7BF34();
    sub_1ABF24F94();
    sub_1ABA7BF34();
    sub_1ABF24F34();
  }

  (*(v29 + 8))(v32, v27);
  sub_1ABA7BC90();
}

void TrialAssetManager.ExperimentIdentifiers.init(from:)()
{
  sub_1ABA7BCA8();
  v2 = v1;
  v4 = v3;
  v5 = sub_1ABAD219C(&qword_1EB4DBB28, &qword_1ABF710D8);
  sub_1ABA7BB64();
  v7 = v6;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v18 - v9;
  sub_1ABA93E20(v2, v2[3]);
  sub_1ABE8F65C();
  sub_1ABF252C4();
  if (v0)
  {
    sub_1ABA84B54(v2);
  }

  else
  {
    sub_1ABA97E20();
    v11 = sub_1ABF24E14();
    v13 = v12;
    sub_1ABA97E20();
    v20 = sub_1ABF24E74();
    sub_1ABA97E20();
    v14 = sub_1ABF24E14();
    v16 = v15;
    v17 = *(v7 + 8);
    v19 = v14;
    v17(v10, v5);
    *v4 = v11;
    *(v4 + 8) = v13;
    *(v4 + 16) = v20;
    *(v4 + 24) = v19;
    *(v4 + 32) = v16;

    sub_1ABA84B54(v2);
  }

  sub_1ABA7BC90();
}

uint64_t sub_1ABE8D260(uint64_t a1, uint64_t a2)
{
  type metadata accessor for TrialAssetManager.InfoToMakeSendable();
  v5 = swift_allocObject();
  v5[5] = sub_1ABAFF390(0, qword_1ED8665E0, 0x1E69DB518);
  v5[6] = &off_1F2076550;
  v5[2] = a1;
  v5[7] = 0;
  v5[8] = 0;
  sub_1ABAD219C(&qword_1EB4DBBE8, &qword_1ABF71B98);
  v6 = swift_allocObject();
  *(v6 + 24) = 0;
  *(v6 + 16) = v5;
  *(v2 + 16) = a2;
  *(v2 + 24) = v6;
  return v2;
}

Swift::Void __swiftcall TrialAssetManager.refresh()()
{
  sub_1ABE8CA34(v3);
  v0 = v3[4];
  sub_1ABA93E20(v3, v3[3]);
  v1 = sub_1ABA7D1BC();
  v2(v1, v0);
  sub_1ABA84B54(v3);
}

uint64_t TrialAssetManager.experimentIdentifiers(for:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  sub_1ABE8CA34(v17);
  v4 = v18;
  v5 = v19;
  sub_1ABA93E20(v17, v18);
  v6 = 0xEB00000000474946;
  v7 = 0x4E4F435F4452454ELL;
  switch(v3)
  {
    case 1:
      v7 = 0xD00000000000001FLL;
      v10 = "BEHAVIORAL_UNDERSTANDING_ANCHOR";
      goto LABEL_10;
    case 2:
      sub_1ABA7C880();
      v7 = v11 + 9;
      break;
    case 3:
      sub_1ABA7C880();
      v7 = v9 + 1;
      break;
    case 4:
      sub_1ABA7C880();
      v7 = v13 - 3;
      break;
    case 5:
      sub_1ABA7C880();
      v7 = v14 + 15;
      break;
    case 6:
      sub_1ABA7C880();
      v7 = v12 - 2;
      break;
    case 7:
      v7 = 0xD00000000000001FLL;
      v10 = "KNOWLEDGE_CONSTRUCTION_LOCATION";
LABEL_10:
      v6 = (v10 - 32) | 0x8000000000000000;
      break;
    case 8:
      break;
    default:
      sub_1ABA7C880();
      v7 = v8 + 3;
      break;
  }

  v15 = (*(v5 + 24))(v7, v6, v4, v5);

  sub_1ABE8CAE4(v15, a2);
  return sub_1ABA84B54(v17);
}

uint64_t TrialAssetManager.AssetType.rawValue.getter()
{
  if (*v0)
  {
    return 0x726F746365726964;
  }

  else
  {
    return 1701603686;
  }
}

uint64_t sub_1ABE8D580@<X0>(uint64_t *a1@<X8>)
{
  result = TrialAssetManager.AssetType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1ABE8D664(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v6 = *a3;
  sub_1ABE8CA34(v21);
  v7 = v22;
  v8 = v23;
  sub_1ABA93E20(v21, v22);
  v9 = 0xEB00000000474946;
  v10 = 0x4E4F435F4452454ELL;
  switch(v6)
  {
    case 1:
      v10 = 0xD00000000000001FLL;
      v11 = "BEHAVIORAL_UNDERSTANDING_ANCHOR";
      goto LABEL_10;
    case 2:
      v9 = 0x80000001ABF7EC70;
      v10 = 0xD000000000000028;
      break;
    case 3:
      v9 = 0x80000001ABF7ECA0;
      v10 = 0xD000000000000020;
      break;
    case 4:
      v9 = 0x80000001ABF7ECD0;
      v10 = 0xD00000000000001CLL;
      break;
    case 5:
      v9 = 0x80000001ABF7ECF0;
      v10 = 0xD00000000000002ELL;
      break;
    case 6:
      v9 = 0x80000001ABF7ED20;
      v10 = 0xD00000000000001DLL;
      break;
    case 7:
      v10 = 0xD00000000000001FLL;
      v11 = "KNOWLEDGE_CONSTRUCTION_LOCATION";
LABEL_10:
      v9 = (v11 - 32) | 0x8000000000000000;
      break;
    case 8:
      break;
    default:
      v9 = 0x80000001ABF7EC20;
      v10 = 0xD000000000000022;
      break;
  }

  v12 = (*(v8 + 8))(a1, a2, v10, v9, v7, v8);

  sub_1ABA84B54(v21);
  if (v12)
  {
    v13 = *(v3 + 16);
    if (v13)
    {
      v14 = *(v13 + 16);

      os_unfair_lock_lock((v14 + 24));
      v15 = *(*(v14 + 16) + 16);

      os_unfair_lock_unlock((v14 + 24));
      v16 = sub_1ABAD5260(v6, v15);

      if (v16)
      {
      }

      else
      {
        v21[0] = v6;
        v17 = swift_allocObject();
        swift_weakInit();

        TrialAssetManager.addUpdateHandler(for:using:)(v21, sub_1ABE90588, v17);

        v18 = *(v13 + 16);
        os_unfair_lock_lock((v18 + 24));
        v19 = *(*(v18 + 16) + 16);

        os_unfair_lock_unlock((v18 + 24));
        swift_isUniquelyReferenced_nonNull_native();
        *v21 = v19;
        sub_1ABAFAFA0();
        sub_1ABE8C3F8();
      }
    }
  }

  return v12;
}

uint64_t sub_1ABE8D954(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    TrialAssetManager.refresh()();
  }

  return result;
}

uint64_t TrialAssetManager.addUpdateHandler(for:using:)(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  sub_1ABE8CA34(v24);
  v7 = v25;
  v8 = v26;
  sub_1ABA93E20(v24, v25);
  v9 = 0xEB00000000474946;
  v10 = 0x4E4F435F4452454ELL;
  switch(v6)
  {
    case 1:
      v10 = 0xD00000000000001FLL;
      v13 = "BEHAVIORAL_UNDERSTANDING_ANCHOR";
      goto LABEL_10;
    case 2:
      sub_1ABA812A4();
      v10 = v14 + 9;
      break;
    case 3:
      sub_1ABA812A4();
      v10 = v12 + 1;
      break;
    case 4:
      sub_1ABA812A4();
      v10 = v16 - 3;
      break;
    case 5:
      sub_1ABA812A4();
      v10 = v17 + 15;
      break;
    case 6:
      sub_1ABA812A4();
      v10 = v15 - 2;
      break;
    case 7:
      v10 = 0xD00000000000001FLL;
      v13 = "KNOWLEDGE_CONSTRUCTION_LOCATION";
LABEL_10:
      v9 = (v13 - 32) | 0x8000000000000000;
      break;
    case 8:
      break;
    default:
      sub_1ABA812A4();
      v10 = v11 + 3;
      break;
  }

  v18 = *(v3 + 24);
  os_unfair_lock_lock(v18 + 6);
  v19 = sub_1ABE8C764();
  os_unfair_lock_unlock(v18 + 6);
  v20 = swift_allocObject();
  *(v20 + 16) = a2;
  *(v20 + 24) = a3;
  v21 = *(v8 + 40);

  v22 = v21(v10, v9, v19, sub_1ABE8F6B0, v20, v7, v8);

  sub_1ABA84B54(v24);
  type metadata accessor for TrialAssetManager.NamespaceUpdateNotificationToken();
  sub_1ABA7D028();
  result = swift_allocObject();
  *(result + 16) = v22;
  return result;
}

uint64_t sub_1ABE8DBD4@<X0>(char *a3@<X8>)
{
  v4 = sub_1ABF24D84();

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

uint64_t TrialAssetManager.DownloadOptions.DiscretionaryNetworkBehavior.rawValue.getter()
{
  if (*v0)
  {
    return 0x6974657263736964;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_1ABE8DC8C@<X0>(uint64_t *a1@<X8>)
{
  result = TrialAssetManager.DownloadOptions.DiscretionaryNetworkBehavior.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

IntelligencePlatform::TrialAssetManager::DownloadOptions __swiftcall TrialAssetManager.DownloadOptions.init(allowsCellularAccess:discretionaryBehavior:)(Swift::Bool allowsCellularAccess, IntelligencePlatform::TrialAssetManager::DownloadOptions::DiscretionaryNetworkBehavior discretionaryBehavior)
{
  v3 = *discretionaryBehavior;
  *v2 = allowsCellularAccess;
  v2[1] = v3;
  result.allowsCellularAccess = allowsCellularAccess;
  return result;
}

uint64_t static TrialAssetManager.DownloadOptions.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 == *a2)
  {
    return sub_1ABAD094C(a1[1], a2[1]);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1ABE8DDBC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000014 && 0x80000001ABF94E80 == a2;
  if (v3 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001ABF94EA0 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_1ABF25054();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

unint64_t sub_1ABE8DE90(char a1)
{
  if (a1)
  {
    return 0xD000000000000015;
  }

  else
  {
    return 0xD000000000000014;
  }
}

uint64_t sub_1ABE8DECC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABE8DDBC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABE8DEF4(uint64_t a1)
{
  v2 = sub_1ABE8F6B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABE8DF30(uint64_t a1)
{
  v2 = sub_1ABE8F6B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void TrialAssetManager.DownloadOptions.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_1ABA7BCA8();
  a23 = v26;
  a24 = v27;
  v29 = v28;
  v30 = sub_1ABAD219C(&qword_1EB4DBB30, &qword_1ABF710E0);
  sub_1ABA7BB64();
  v32 = v31;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v33);
  v35 = &a9 - v34;
  a10 = *(v24 + 1);
  sub_1ABA93E20(v29, v29[3]);
  sub_1ABE8F6B8();
  sub_1ABF252E4();
  a14 = 0;
  sub_1ABA7BF34();
  sub_1ABF24F44();
  if (!v25)
  {
    a13 = a10;
    a12 = 1;
    sub_1ABE8F70C();
    sub_1ABA7BF34();
    sub_1ABF24F84();
  }

  (*(v32 + 8))(v35, v30);
  sub_1ABA7BC90();
}

uint64_t TrialAssetManager.DownloadOptions.hash(into:)(uint64_t a1)
{
  sub_1ABF25254();
  sub_1ABA829A0();
  sub_1ABF23D34();
}

uint64_t TrialAssetManager.DownloadOptions.hashValue.getter()
{
  sub_1ABF25234();
  sub_1ABF25254();
  sub_1ABA829A0();
  sub_1ABF23D34();

  return sub_1ABF25294();
}

void TrialAssetManager.DownloadOptions.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_1ABA7BCA8();
  v26 = v25;
  v28 = v27;
  sub_1ABAD219C(&qword_1EB4DBB48, &unk_1ABF710E8);
  sub_1ABA7BB64();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v29);
  sub_1ABA93E20(v26, v26[3]);
  sub_1ABE8F6B8();
  sub_1ABF252C4();
  if (!v24)
  {
    v30 = sub_1ABF24E24();
    sub_1ABE8F760();
    sub_1ABF24E64();
    v31 = sub_1ABA7BFF0();
    v32(v31);
    *v28 = v30 & 1;
    v28[1] = a13;
  }

  sub_1ABA84B54(v26);
  sub_1ABA7BC90();
}

uint64_t sub_1ABE8E3C8(uint64_t a1)
{
  sub_1ABF25234();
  sub_1ABF25254();
  sub_1ABF23D34();

  return sub_1ABF25294();
}

uint64_t TrialAssetManager.downloadOnDemandAsset(for:in:downloadOptions:)(uint64_t a1, uint64_t a2, _BYTE *a3, _WORD *a4)
{
  *(v5 + 72) = a2;
  *(v5 + 80) = v4;
  *(v5 + 64) = a1;
  *(v5 + 117) = *a3;
  *(v5 + 112) = *a4;
  return sub_1ABA8C014();
}

uint64_t sub_1ABE8E59C()
{
  sub_1ABA7BBF8();
  sub_1ABA7BC10();
  sub_1ABA7D4E0();
  *v3 = v2;
  v4 = *v1;
  sub_1ABA7BBC0();
  *v5 = v4;
  *(v6 + 104) = v0;

  if (!v0)
  {
    sub_1ABA7BBE0();

    __asm { BRAA            X1, X16 }
  }

  sub_1ABA814B0();

  return MEMORY[0x1EEE6DFA0]();
}

unint64_t sub_1ABE8E6F4()
{
  result = qword_1EB4DBAF0;
  if (!qword_1EB4DBAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBAF0);
  }

  return result;
}

uint64_t sub_1ABE8E748(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TrialAssetManager.Asset(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t TrialAssetManager.downloadOnDemandAssets(for:in:downloadOptions:)(uint64_t a1, _BYTE *a2, _WORD *a3)
{
  *(v4 + 56) = a1;
  *(v4 + 64) = v3;
  *(v4 + 130) = *a2;
  *(v4 + 128) = *a3;
  return sub_1ABA8C014();
}

void sub_1ABE8E7D0()
{
  v1 = *(v0 + 130);
  sub_1ABE8CA34(v0 + 16);
  v2 = *(v0 + 48);
  sub_1ABA93E20((v0 + 16), *(v0 + 40));

  *(v0 + 72) = sub_1ABB4558C(v3);
  v4 = 0xEB00000000474946;
  switch(v1)
  {
    case 1:
      v5 = "BEHAVIORAL_UNDERSTANDING_ANCHOR";
      goto LABEL_5;
    case 7:
      v5 = "KNOWLEDGE_CONSTRUCTION_LOCATION";
LABEL_5:
      v4 = (v5 - 32) | 0x8000000000000000;
      break;
    case 8:
      break;
    default:
      sub_1ABA93A68();
      break;
  }

  *(v0 + 80) = v4;
  v6 = *(v0 + 128);
  v7 = *(*(v0 + 64) + 24);
  os_unfair_lock_lock(v7 + 6);
  *(v0 + 88) = sub_1ABE8C4F4();
  os_unfair_lock_unlock(v7 + 6);
  if (v6 == 2)
  {
    v8 = 0;
  }

  else
  {
    v8 = [objc_allocWithZone(MEMORY[0x1E69DB528]) initWithAllowsCellular:*(v0 + 128) & 1 discretionaryBehavior:(*(v0 + 128) >> 7) & 2];
  }

  *(v0 + 96) = v8;
  v9 = *(v0 + 56);
  sub_1ABA7D028();
  v10 = swift_allocObject();
  *(v0 + 104) = v10;
  *(v10 + 16) = v9;
  v11 = *(v2 + 16);

  v13 = v11 + *v11;
  v12 = swift_task_alloc();
  *(v0 + 112) = v12;
  *v12 = v0;
  v12[1] = sub_1ABE8EAE4;

  __asm { BRAA            X8, X16 }
}

uint64_t sub_1ABE8EAE4()
{
  v2 = *v1;
  sub_1ABA7D4E0();
  *v4 = v3;
  v5 = *(v2 + 96);
  *v4 = *v1;
  *(v3 + 120) = v0;

  v6 = *(v2 + 88);

  if (v0)
  {
  }

  else
  {
  }

  sub_1ABA814B0();

  return MEMORY[0x1EEE6DFA0]();
}

uint64_t sub_1ABE8ECA8()
{
  sub_1ABA7BBF8();
  sub_1ABA84B54((v0 + 16));
  TrialAssetManager.refresh()();
  sub_1ABA7BBE0();

  return v1();
}

uint64_t sub_1ABE8ED0C()
{
  sub_1ABA7BBF8();
  sub_1ABA84B54((v0 + 16));
  sub_1ABA7BBE0();

  return v1();
}

void sub_1ABE8ED68(uint64_t a1, uint64_t a2)
{
  if (qword_1ED871B38 != -1)
  {
    swift_once();
  }

  v3 = sub_1ABF237F4();
  sub_1ABA7AA24(v3, qword_1ED871B40);

  oslog = sub_1ABF237D4();
  v4 = sub_1ABF24644();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315394;
    v7 = sub_1ABF243A4();
    v9 = sub_1ABADD6D8(v7, v8, &v11);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2048;
    *(v5 + 14) = a1;
    _os_log_impl(&dword_1ABA78000, oslog, v4, "Downloading asset for %s: %ld", v5, 0x16u);
    sub_1ABA84B54(v6);
    MEMORY[0x1AC5AB8B0](v6, -1, -1);
    MEMORY[0x1AC5AB8B0](v5, -1, -1);
  }
}

uint64_t TrialAssetManager.Asset.url.getter()
{
  sub_1ABF21CF4();
  sub_1ABA7BBB0();
  v0 = sub_1ABA7D000();

  return v1(v0);
}

uint64_t TrialAssetManager.Asset.metadata.getter()
{
  type metadata accessor for TrialAssetManager.Asset(0);
}

uint64_t TrialAssetManager.Asset.experimentIdentifiers.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for TrialAssetManager.Asset(0) + 24));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;

  return sub_1ABAFC95C(v4, v5);
}

uint64_t TrialAssetManager.NamespaceUpdateNotificationToken.__deallocating_deinit()
{
  swift_unknownObjectRelease();
  sub_1ABA7D544();

  return swift_deallocClassInstance();
}

void sub_1ABE8F038(void *a1@<X0>, void *a2@<X8>)
{
  v4 = [a1 namespaceName];
  v5 = sub_1ABF23C04();
  v7 = v6;

  v8._countAndFlagsBits = v5;
  v8._object = v7;
  TrialNamespace.init(rawValue:)(v8);
  v9 = v23;
  if (v23 == 9)
  {
    if (qword_1ED871B38 != -1)
    {
      sub_1ABA7DE3C();
      swift_once();
    }

    v10 = sub_1ABF237F4();
    sub_1ABA7AA24(v10, qword_1ED871B40);
    swift_unknownObjectRetain();
    v11 = sub_1ABF237D4();
    v12 = sub_1ABF24674();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v22 = v14;
      *v13 = 136315138;
      v15 = [a1 namespaceName];
      v16 = sub_1ABF23C04();
      v18 = v17;

      v19 = sub_1ABADD6D8(v16, v18, &v22);

      *(v13 + 4) = v19;
      _os_log_impl(&dword_1ABA78000, v11, v12, "TrialAssetmanager: NamespaceUpdateInfo: init: unknown namespaceName %s", v13, 0xCu);
      sub_1ABA84B54(v14);
      MEMORY[0x1AC5AB8B0](v14, -1, -1);
      MEMORY[0x1AC5AB8B0](v13, -1, -1);
    }

    swift_unknownObjectRelease();

    *a2 = 0;
    a2[1] = 0;
  }

  else
  {
    v20 = [a1 token];
    swift_unknownObjectRelease();
    type metadata accessor for TrialAssetManager.NamespaceUpdateNotificationToken();
    sub_1ABA7D028();
    v21 = swift_allocObject();
    *(v21 + 16) = v20;
    *a2 = v9;
    a2[1] = v21;
  }
}

void sub_1ABE8F244(uint64_t a1, void (*a2)(void *))
{
  v3 = swift_unknownObjectRetain();
  sub_1ABE8F038(v3, v8);
  if (v8[1])
  {
    a2(v8);
  }

  else
  {
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v4 = sub_1ABF237F4();
    sub_1ABA7AA24(v4, qword_1ED871B40);
    oslog = sub_1ABF237D4();
    v5 = sub_1ABF24664();
    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1ABA78000, oslog, v5, "TrialAssetmanager: addUpdateHandler: cannot construct triNamespaceUpdate", v6, 2u);
      MEMORY[0x1AC5AB8B0](v6, -1, -1);
    }
  }
}

uint64_t TrialAssetManager.removeUpdateHandler(for:)(uint64_t a1)
{
  sub_1ABE8CA34(v5);
  v2 = v6;
  v3 = v7;
  sub_1ABA93E20(v5, v6);
  (*(v3 + 48))(*(a1 + 16), v2, v3);
  return sub_1ABA84B54(v5);
}

uint64_t TrialAssetManager.deinit()
{

  return v0;
}

uint64_t TrialAssetManager.__deallocating_deinit()
{
  TrialAssetManager.deinit();
  sub_1ABA8FE90();

  return swift_deallocClassInstance();
}

uint64_t sub_1ABE8F458(void *a1)
{
  v2 = [a1 path];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1ABF23C04();

  return v3;
}

uint64_t sub_1ABE8F4C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1ABAD219C(&qword_1EB4DBB00, &qword_1ABF34A00);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1ABE8F538(uint64_t a1, uint64_t a2)
{
  v4 = sub_1ABAD219C(&qword_1EB4DBB00, &qword_1ABF34A00);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1ABE8F5A8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1ABA7BBB0();
  v4 = sub_1ABA7D000();
  v5(v4);
  return a2;
}

uint64_t sub_1ABE8F604(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1ABA7BBB0();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_1ABE8F65C()
{
  result = qword_1EB4DBB20;
  if (!qword_1EB4DBB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBB20);
  }

  return result;
}

unint64_t sub_1ABE8F6B8()
{
  result = qword_1EB4DBB38;
  if (!qword_1EB4DBB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBB38);
  }

  return result;
}

unint64_t sub_1ABE8F70C()
{
  result = qword_1EB4DBB40;
  if (!qword_1EB4DBB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBB40);
  }

  return result;
}

unint64_t sub_1ABE8F760()
{
  result = qword_1EB4DBB50;
  if (!qword_1EB4DBB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBB50);
  }

  return result;
}

unint64_t sub_1ABE8F7C0()
{
  result = qword_1ED870320;
  if (!qword_1ED870320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED870320);
  }

  return result;
}

unint64_t sub_1ABE8F85C()
{
  result = qword_1EB4DBB68;
  if (!qword_1EB4DBB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBB68);
  }

  return result;
}

unint64_t sub_1ABE8F8B4()
{
  result = qword_1EB4DBB70;
  if (!qword_1EB4DBB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBB70);
  }

  return result;
}

unint64_t sub_1ABE8F90C()
{
  result = qword_1EB4DBB78;
  if (!qword_1EB4DBB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBB78);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TrialNamespace(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1ABE8FB14(uint64_t a1)
{
  v1 = type metadata accessor for TrialAssetManager.Asset(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t sub_1ABE8FB88(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xE && *(a1 + 17))
    {
      v2 = *a1 + 13;
    }

    else
    {
      v2 = ((*(a1 + 16) >> 2) & 0xC | (*(a1 + 16) >> 6)) ^ 0xF;
      if (v2 >= 0xD)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_1ABE8FBD4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xD)
  {
    *(result + 16) = 0;
    *result = a2 - 14;
    *(result + 8) = 0;
    if (a3 >= 0xE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 16 * (((-a2 >> 2) & 3) - 4 * a2);
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TrialAssetManager.DownloadOptions(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 65281 <= 0xFFFEFFFF)
    {
      v2 = 2;
    }

    else
    {
      v2 = 4;
    }

    if (a2 + 65281 < 0xFF0000)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = *(a1 + 2);
      if (!*(a1 + 2))
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 16)) - 65282;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for TrialAssetManager.DownloadOptions(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    switch(v5)
    {
      case 1:
        *(result + 2) = v6;
        break;
      case 2:
        *(result + 2) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 2) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 2) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

void sub_1ABE8FE0C(uint64_t a1)
{
  sub_1ABF21CF4();
  if (v1 <= 0x3F)
  {
    sub_1ABE8FEA8();
    if (v2 <= 0x3F)
    {
      sub_1ABE8FF04();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1ABE8FEA8()
{
  if (!qword_1EB4CF840[0])
  {
    v0 = sub_1ABF23A44();
    if (!v1)
    {
      atomic_store(v0, qword_1EB4CF840);
    }
  }
}

void sub_1ABE8FF04()
{
  if (!qword_1EB4CFE78)
  {
    v0 = sub_1ABF247E4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB4CFE78);
    }
  }
}

_BYTE *sub_1ABE8FF7C(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TrialAssetManager.ExperimentIdentifiers.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1ABE90138()
{
  result = qword_1EB4DBB80;
  if (!qword_1EB4DBB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBB80);
  }

  return result;
}

unint64_t sub_1ABE90190()
{
  result = qword_1EB4DBB88;
  if (!qword_1EB4DBB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBB88);
  }

  return result;
}

unint64_t sub_1ABE901E8()
{
  result = qword_1EB4DBB90;
  if (!qword_1EB4DBB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBB90);
  }

  return result;
}

unint64_t sub_1ABE90240()
{
  result = qword_1EB4DBB98;
  if (!qword_1EB4DBB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBB98);
  }

  return result;
}

unint64_t sub_1ABE90298()
{
  result = qword_1EB4DBBA0;
  if (!qword_1EB4DBBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBBA0);
  }

  return result;
}

unint64_t sub_1ABE902F0()
{
  result = qword_1EB4DBBA8;
  if (!qword_1EB4DBBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBBA8);
  }

  return result;
}

unint64_t sub_1ABE90360()
{
  result = qword_1EB4DBBB0;
  if (!qword_1EB4DBBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBBB0);
  }

  return result;
}

unint64_t sub_1ABE903B4()
{
  result = qword_1EB4DBBB8;
  if (!qword_1EB4DBBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBBB8);
  }

  return result;
}

unint64_t sub_1ABE90408()
{
  result = qword_1EB4DBBC0;
  if (!qword_1EB4DBBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBBC0);
  }

  return result;
}

unint64_t sub_1ABE90488()
{
  result = qword_1EB4CE680;
  if (!qword_1EB4CE680)
  {
    sub_1ABF246C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CE680);
  }

  return result;
}

unint64_t sub_1ABE904E0()
{
  result = qword_1EB4DBBE0;
  if (!qword_1EB4DBBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBBE0);
  }

  return result;
}

unint64_t sub_1ABE90534()
{
  result = qword_1EB4CF700;
  if (!qword_1EB4CF700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CF700);
  }

  return result;
}

uint64_t sub_1ABE9059C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 1;
  }

  v2 = (a1 + 32);
  while (1)
  {
    v4 = *v2++;
    v3 = v4;
    if (v4)
    {
      if (*(v3 + 16))
      {
        break;
      }
    }

    if (!--v1)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_1ABE905D0()
{
  v0 = sub_1ABC79FD0();
  memcpy(v2, (v0 + 16), sizeof(v2));
  *(v0 + 16) = 0x656C70697274;
  *(v0 + 24) = 0xE600000000000000;
  *(v0 + 32) = &unk_1F208E7D8;
  *(v0 + 40) = 115;
  *(v0 + 48) = 0xE100000000000000;
  *(v0 + 56) = 0;
  *(v0 + 64) = 0xD000000000000014;
  *(v0 + 72) = 0x80000001ABF94FE0;
  *(v0 + 80) = 0;
  *(v0 + 88) = 0xE000000000000000;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;

  sub_1ABAE4AA8(v2);

  return v0;
}

uint64_t sub_1ABE90684(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (((1 << *(a6 + 64)) & 0x1FA) == 0)
  {
    goto LABEL_30;
  }

  sub_1ABA7C6D8(a6 + 32, a2, a3, a4, a5, a6, a7, a8, v54[0], v54[1], v54[2], v54[3], v54[4], v54[5], v54[6], v54[7], v54[8], v54[9], v54[10], v54[11], v54[12], v54[13], *__src, *&__src[8], *&__src[16], *&__src[24], *&__src[32], *&__src[40], *&__src[48], *&__src[56], *&__src[64], *&__src[72], *&__src[80], *&__src[88], *&__src[96], *&__src[104], __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], v57, v58, v59, v60);
  if (*(a6 + 32))
  {
    v12 = sub_1ABAE305C();
    if (!v12)
    {
      swift_endAccess();
      goto LABEL_10;
    }

    swift_endAccess();
    swift_beginAccess();
    v13 = *(v12 + 16);

    if (*(v13 + 16))
    {
      v12 = sub_1ABE8AE5C(v13);
      goto LABEL_10;
    }
  }

  else
  {
    swift_endAccess();
  }

  v12 = 0;
LABEL_10:
  sub_1ABA7C6D8(a6 + 32, v14, v15, v16, v17, v18, v19, v20, v54[0], v54[1], v54[2], v54[3], v54[4], v54[5], v54[6], v54[7], v54[8], v54[9], v54[10], v54[11], v54[12], v54[13], *__src, *&__src[8], *&__src[16], *&__src[24], *&__src[32], *&__src[40], *&__src[48], *&__src[56], *&__src[64], *&__src[72], *&__src[80], *&__src[88], *&__src[96], *&__src[104], __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], v57, v58, v59, v60);
  if (!*(a6 + 32))
  {
    swift_endAccess();
LABEL_17:
    v21 = 0;
    goto LABEL_18;
  }

  v21 = sub_1ABAE305C();
  if (!v21)
  {
    swift_endAccess();
    goto LABEL_18;
  }

  swift_endAccess();
  swift_beginAccess();
  v22 = *(v21 + 16);

  if (!*(v22 + 16))
  {

    goto LABEL_17;
  }

  v21 = sub_1ABE8AE5C(v22);
LABEL_18:
  sub_1ABA7C6D8(a6 + 32, v23, v24, v25, v26, v27, v28, v29, v54[0], v54[1], v54[2], v54[3], v54[4], v54[5], v54[6], v54[7], v54[8], v54[9], v54[10], v54[11], v54[12], v54[13], *__src, *&__src[8], *&__src[16], *&__src[24], *&__src[32], *&__src[40], *&__src[48], *&__src[56], *&__src[64], *&__src[72], *&__src[80], *&__src[88], *&__src[96], *&__src[104], __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], v57, v58, v59, v60);
  if (!*(a6 + 32) || (v30 = sub_1ABAE305C()) == 0)
  {
    swift_endAccess();
LABEL_23:
    v33 = 0;
    goto LABEL_24;
  }

  v31 = v30;
  swift_endAccess();
  swift_beginAccess();
  v32 = *(v31 + 16);

  if (!*(v32 + 16))
  {

    goto LABEL_23;
  }

  v33 = sub_1ABE8AE5C(v32);
LABEL_24:
  sub_1ABAD219C(&qword_1EB4D63B8, &qword_1ABF673F0);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_1ABF3BFC0;
  *(v34 + 32) = v12;
  *(v34 + 40) = v21;
  *(v34 + 48) = v33;
  v35 = sub_1ABE9059C(v34);
  swift_setDeallocating();

  sub_1ABB4DB48();
  if ((v35 & 1) == 0)
  {
    v41 = a2 + *(type metadata accessor for QueryContext(0) + 32);
    v43 = *(v41 + 88);
    v44 = *(v41 + 104);
    v45 = 32;
    if (v43 >> 1 != 0xFFFFFFFF || (*(v41 + 104) & 0x1E) != 0)
    {
      v52 = *(v41 + 96);
      memcpy(__dst, v41, sizeof(__dst));
      v57 = v43;
      v58 = v52;
      LOBYTE(v59) = v44;
      *__src = 0;
      *&__src[8] = v12;
      *&__src[16] = 0;
      *&__src[24] = v21;
      *&__src[32] = 0;
      *&__src[40] = v33;
      *&__src[88] = 0;
      memset(&__src[48], 0, 32);
      __src[104] = 32;
      v71 = 1;
      sub_1ABE3A1C8();
      if (v8)
      {
        memcpy(v54, __src, 0x69uLL);
        sub_1ABAE4B6C(v54);
        return v40 & 1;
      }

      memcpy(v54, __src, 0x69uLL);
      sub_1ABAE4B6C(v54);
      v46 = v60;
      v12 = v61;
      v47 = v62;
      v21 = v63;
      v48 = v64;
      v33 = v65;
      v49 = v66;
      v50 = v67;
      v51 = v68;
      v42 = v69;
      v45 = v70;
    }

    else
    {
      v46 = 0;
      v47 = 0;
      v48 = 0;
      v49 = 0uLL;
      v50 = 0uLL;
      v51 = 0uLL;
    }

    *a1 = v46;
    *(a1 + 8) = v12;
    *(a1 + 16) = v47;
    *(a1 + 24) = v21;
    *(a1 + 32) = v48;
    *(a1 + 40) = v33;
    *(a1 + 48) = v49;
    *(a1 + 64) = v50;
    *(a1 + 80) = v51;
    *(a1 + 96) = v42;
    v40 = 1;
    *(a1 + 104) = v45;
    return v40 & 1;
  }

  if (qword_1ED86E458 != -1)
  {
    swift_once();
  }

  v36 = sub_1ABF237F4();
  sub_1ABA7AA24(v36, qword_1ED86E460);
  v37 = sub_1ABF237D4();
  v38 = sub_1ABF24664();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 0;
    _os_log_impl(&dword_1ABA78000, v37, v38, "Triple operator has all empty params", v39, 2u);
    MEMORY[0x1AC5AB8B0](v39, -1, -1);
  }

LABEL_30:
  v40 = 0;
  *(a1 + 80) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 88) = xmmword_1ABF34940;
  *(a1 + 104) = 0;
  return v40 & 1;
}

uint64_t sub_1ABE90B08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v35 = *(a3 + 16);
  if (v35)
  {
    v3 = 0;
    v34 = a3 + 32;
    v36 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      memcpy(__dst, (v34 + 88 * v3), 0x58uLL);
      v5 = __dst[3];
      v4 = __dst[4];
      if (__dst[7])
      {
        v6 = __dst[6];
      }

      else
      {
        v6 = 0;
      }

      if (__dst[7])
      {
        v7 = __dst[7];
      }

      else
      {
        v7 = 0xE000000000000000;
      }

      v8 = __dst[8];
      if (!__dst[9])
      {
        v8 = 0;
      }

      v37 = v8;
      v38 = v6;
      v9 = __dst[9] ? __dst[9] : 0xE000000000000000;
      sub_1ABB242A4(__dst, v42);

      v10 = sub_1ABE713BC();
      v11 = sub_1ABE713BC();
      v12 = sub_1ABE713BC();
      v39 = v12;
      if (!*(v10 + 16))
      {
        break;
      }

      v42[0] = v5;
      v42[1] = v4;
      MEMORY[0x1EEE9AC00](v12);
      sub_1ABA8FCB0();
      v13 = sub_1ABB2F764();

      if (v13)
      {
        goto LABEL_18;
      }

      sub_1ABB24250(__dst);
LABEL_44:
      if (++v3 == v35)
      {
        goto LABEL_47;
      }
    }

LABEL_18:
    if (*(v11 + 16))
    {
      v42[0] = v38;
      v42[1] = v7;
      MEMORY[0x1EEE9AC00](v14);
      sub_1ABA8FCB0();
      v15 = sub_1ABB2F764();

      if (!v15)
      {

        goto LABEL_42;
      }
    }

    else
    {
    }

    if (!*(v39 + 16))
    {

LABEL_34:

LABEL_35:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1ABAD8758();
        v36 = v29;
      }

      v27 = *(v36 + 16);
      if (v27 >= *(v36 + 24) >> 1)
      {
        sub_1ABAD8758();
        v36 = v30;
      }

      *(v36 + 16) = v27 + 1;
      memcpy((v36 + 88 * v27 + 32), __dst, 0x58uLL);
      goto LABEL_44;
    }

    v42[0] = v37;
    v42[1] = v9;
    MEMORY[0x1EEE9AC00](v16);
    sub_1ABA8FCB0();
    v17 = sub_1ABB2F764();

    if (v17)
    {
      goto LABEL_34;
    }

    v18 = __dst[10];
    v19 = *(__dst[10] + 16);
    if (v19)
    {
      v41 = MEMORY[0x1E69E7CC0];
      sub_1ABADDE1C(0, v19, 0);
      v20 = v41;
      v21 = (v18 + 32);
      for (i = v19 - 1; ; --i)
      {
        v23 = memcpy(v42, v21, sizeof(v42));
        if (v42[9])
        {
          v40[11] = v42[8];
          v40[12] = v42[9];
          MEMORY[0x1EEE9AC00](v23);
          sub_1ABB242A4(v42, v40);
          sub_1ABB2F764();
          sub_1ABB24250(v42);
        }

        v41 = v20;
        v25 = *(v20 + 16);
        v24 = *(v20 + 24);
        v26 = v25 + 1;
        if (v25 >= v24 >> 1)
        {
          sub_1ABADDE1C((v24 > 1), v25 + 1, 1);
          v20 = v41;
        }

        *(v20 + 16) = v26;
        if (!i)
        {
          break;
        }

        v21 += 88;
      }

      v28 = *(v20 + 16);

      if (v28)
      {
        goto LABEL_35;
      }

      goto LABEL_43;
    }

LABEL_42:

LABEL_43:
    sub_1ABB24250(__dst);
    goto LABEL_44;
  }

  v36 = MEMORY[0x1E69E7CC0];
LABEL_47:
  type metadata accessor for ResultGraph();
  v31 = swift_allocObject();
  v32 = MEMORY[0x1E69E7CC0];
  *(v31 + 16) = sub_1ABF239C4();
  *(v31 + 24) = v32;
  LOBYTE(__dst[0]) = 0;
  sub_1ABE489A8(v36, __dst);
  return v36;
}

uint64_t sub_1ABE91010(uint64_t *a1, uint64_t (*a2)(uint64_t (*)(), void *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *a1;
  v8[2] = a4;
  v8[3] = a5;
  v8[4] = a6;
  v8[6] = v6;
  return a2(sub_1ABE91BD0, v8);
}

uint64_t sub_1ABE9106C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1ABE91150(*a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1ABE910E8(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *, uint64_t, void *))
{
  v6 = a1;
  v7 = MEMORY[0x1E69E7CC0];
  v5[2] = &v7;
  a3(&v6, a2, v5);
  if (v3)
  {
  }

  return sub_1ABA80BE4();
}

uint64_t sub_1ABE91150(uint64_t a1)
{
  v3 = v1[1];
  v8 = *v1;
  v9 = v3;
  v10 = *(v1 + 4);
  v6 = a1;
  v7 = MEMORY[0x1E69E7CC0];
  v5[2] = &v7;
  ViewService.SportsSchedulesView.enumerateTriples(for:block:)(&v6, sub_1ABE91B88, v5);
  if (v2)
  {
  }

  return sub_1ABA80BE4();
}

uint64_t TripleEnumeratorProtocol<>.triples(for:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  swift_getAssociatedTypeWitness();
  v10 = sub_1ABF24154();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = &v10;
  v9 = v6;
  (*(a3 + 16))(&v9, sub_1ABE91A34, v8, a2, a3);
  if (v3)
  {
  }

  return sub_1ABA80BE4();
}

uint64_t sub_1ABE912A8()
{
  sub_1ABA7E0FC();
  v2 = sub_1ABE6E990();
  result = sub_1ABA7FA74(v2);
  if (!v1)
  {
    *v0 = result;
  }

  return result;
}

uint64_t TripleEnumeratorProtocol<>.triples<A>(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_getAssociatedTypeWitness();
  sub_1ABF241F4();
  swift_getTupleTypeMetadata2();
  v13 = sub_1ABF24154();
  v12[2] = a2;
  v12[3] = a3;
  v12[4] = a4;
  v12[5] = a5;
  v12[6] = &v13;
  (*(a4 + 24))(a1, sub_1ABE91A58, v12, a3, a5, a2, a4);
  if (v5)
  {
  }

  return sub_1ABA80BE4();
}

uint64_t sub_1ABE91404@<X0>(uint64_t *a1@<X8>)
{
  sub_1ABA8FCC8();
  result = sub_1ABE910E8(v3, v4, SubgraphView.enumerateTriples(for:block:));
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1ABE91498@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1ABE910E8(*a1, sub_1ABE91C20, SubgraphFilteredView.enumerateTriples(for:block:));
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1ABE9153C()
{
  sub_1ABA7E0FC();
  v5 = sub_1ABE91AD0(v2, v3, v4);
  result = sub_1ABA7FA74(v5);
  if (!v1)
  {
    *v0 = result;
  }

  return result;
}

uint64_t sub_1ABE91588(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = a4;
  v8[2] = a5;
  v8[3] = a6;
  v8[4] = a7;
  v8[5] = a1;
  v8[6] = a2;
  return (*(a7 + 16))(&v9, sub_1ABE91BF4, v8, a5, a7);
}

uint64_t sub_1ABE915F8(const void *a1, uint64_t *a2)
{
  sub_1ABB345D8(a1, &v7);
  sub_1ABB4DC50();
  v4 = *(*a2 + 16);
  sub_1ABB4E054(v4);
  v5 = *a2;
  *(v5 + 16) = v4 + 1;
  memcpy((v5 + 112 * v4 + 32), a1, 0x70uLL);
  return 1;
}

uint64_t sub_1ABE91678(const void *a1, uint64_t *a2)
{
  sub_1ABE57A98(a1, v7);
  sub_1ABB4DC80();
  v4 = *(*a2 + 16);
  sub_1ABB4E084(v4);
  v5 = *a2;
  *(v5 + 16) = v4 + 1;
  memcpy((v5 + 120 * v4 + 32), a1, 0x78uLL);
  return 1;
}

uint64_t sub_1ABE916F8(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  (*(v5 + 16))(&v7 - v4, a1, AssociatedTypeWitness, v3);
  sub_1ABF241F4();
  sub_1ABF241A4();
  return 1;
}

uint64_t sub_1ABE917F8(uint64_t *a1, void (*a2)(uint64_t (*)(), _BYTE *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = *a1;
  swift_getAssociatedTypeWitness();
  v24 = sub_1ABF24154();
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = &v24;
  a2(sub_1ABE91BA8, v16);
  if (v8)
  {
  }

  else
  {
    v22 = v14;
    v23 = v24;
    sub_1ABF241F4();
    swift_getTupleTypeMetadata2();
    sub_1ABF241F4();
    sub_1ABF241A4();
  }

  return 1;
}

uint64_t sub_1ABE91934(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  (*(v5 + 16))(&v7 - v4, a1, AssociatedTypeWitness, v3);
  sub_1ABF241F4();
  sub_1ABF241A4();
  return 1;
}

uint64_t sub_1ABE91AD0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t *TripleProviderProtocol.context()(uint64_t a1)
{
  sub_1ABA7BD7C();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  sub_1ABA7BC58();
  v8 = v7 - v6;
  v12[0] = v9;
  v12[1] = &type metadata for ObjectSynthesisDictionaryMapping;
  v12[2] = v10;
  v12[3] = &protocol witness table for ObjectSynthesisDictionaryMapping;
  type metadata accessor for GraphObjectContext(0, v12);
  (*(v4 + 16))(v8, v1, a1);
  return GraphObjectContext.__allocating_init<>(_:)(v8);
}

uint64_t *TripleProviderProtocol.context<A>(objectMapping:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_1ABA7BD7C();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  sub_1ABA7BC58();
  v13 = v12 - v11;
  sub_1ABA7BD7C();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  sub_1ABA7BC58();
  v19 = v18 - v17;
  v25[0] = v20;
  v25[1] = v21;
  v25[2] = v22;
  v25[3] = v23;
  type metadata accessor for GraphObjectContext(0, v25);
  (*(v15 + 16))(v19, v4, a2);
  (*(v9 + 16))(v13, a1, a3);
  return GraphObjectContext.__allocating_init(_:objectMapping:)(v19, v13);
}

uint64_t sub_1ABE91F04(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  v12 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v14 = &v17 - v13;
  v18 = *a1;
  v15 = (*(a3 + 72))(&v18, a2, a3, v12);
  if (!v5)
  {
    MEMORY[0x1EEE9AC00](v15);
    *(&v17 - 4) = a2;
    *(&v17 - 3) = a3;
    *(&v17 - 2) = a4;
    swift_getAssociatedConformanceWitness();
    sub_1ABF23F24();
    v4 = sub_1ABE8AC38();
    (*(v11 + 8))(v14, AssociatedTypeWitness);
  }

  return v4;
}

uint64_t sub_1ABE920D0@<X0>(uint64_t a3@<X8>)
{
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v5 = *(AssociatedConformanceWitness + 40);
  v6 = swift_checkMetadataState();
  v7 = v5(v6, AssociatedConformanceWitness);
  v9 = v8;
  if ((sub_1ABF23E64() & 1) == 0)
  {

    goto LABEL_5;
  }

  result = EntityIdentifier.init(_:)(v7, v9, &v13);
  if (v14 == 1)
  {
LABEL_5:
    v12 = 0;
    v11 = 1;
    goto LABEL_6;
  }

  v11 = 0;
  v12 = v13;
LABEL_6:
  *a3 = v12;
  *(a3 + 8) = v11;
  return result;
}

uint64_t sub_1ABE92240(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v27 - v15;
  v17 = *a1;
  (*(a3 + 48))(a2, a3, v14);
  if (!v5)
  {
    v29 = v10;
    v18 = (*(v10 + 16))(v12, v16, AssociatedTypeWitness);
    v28 = &v27;
    MEMORY[0x1EEE9AC00](v18);
    *(&v27 - 4) = a2;
    *(&v27 - 3) = a3;
    v19 = v30;
    *(&v27 - 2) = v30;
    *(&v27 - 1) = v17;
    MEMORY[0x1EEE9AC00](v20);
    *(&v27 - 6) = a2;
    *(&v27 - 5) = a3;
    *(&v27 - 4) = v19;
    *(&v27 - 3) = sub_1ABE92650;
    *(&v27 - 2) = v21;
    swift_getAssociatedConformanceWitness();
    v22 = sub_1ABF23F94();
    v28 = &v27;
    v31 = v22;
    MEMORY[0x1EEE9AC00](v22);
    *(&v27 - 4) = a2;
    *(&v27 - 3) = a3;
    *(&v27 - 2) = v19;
    swift_getAssociatedTypeWitness();
    swift_getTupleTypeMetadata2();
    v23 = sub_1ABF241F4();
    WitnessTable = swift_getWitnessTable();
    sub_1ABB66290(sub_1ABE92984, (&v27 - 6), v23, &type metadata for EntityIdentifier, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v25);

    v4 = sub_1ABE8AC38();
    (*(v29 + 8))(v16, AssociatedTypeWitness);
  }

  return v4;
}

uint64_t sub_1ABE92594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  return sub_1ABF23FE4() & 1;
}

uint64_t sub_1ABE9265C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v5 = *(AssociatedConformanceWitness + 40);
  v6 = swift_checkMetadataState();
  v7 = v5(v6, AssociatedConformanceWitness);
  v9 = v8;
  if (v7 == EntityIdentifier.stringValue.getter() && v9 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_1ABF25054();
  }

  return v12 & 1;
}

uint64_t sub_1ABE92778(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return a2(a1, a1 + *(TupleTypeMetadata2 + 48)) & 1;
}

uint64_t sub_1ABE92838@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v6 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v8 = &v12 - v7;
  (*(v9 + 16))(&v12 - v7, a1, TupleTypeMetadata2, v6);
  v10 = *(TupleTypeMetadata2 + 48);
  *a2 = *v8;
  return (*(*(AssociatedTypeWitness - 8) + 8))(&v8[v10], AssociatedTypeWitness);
}

uint64_t static TriplesQuery.Clause.matchStrings(subjectMatchType:subjects:predicateMatchType:predicates:objectMatchType:objects:relationshipIdMatchType:relationshipIds:relationshipPredicateMatchType:relationshipPredicates:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X3>, unsigned __int8 *a5@<X4>, uint64_t a6@<X5>, unsigned __int8 *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, unsigned __int8 *a10, uint64_t a11)
{
  v11 = *a3;
  v12 = *a5;
  v13 = *a7;
  v14 = *a10;
  *a9 = *a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = v11;
  *(a9 + 24) = a4;
  *(a9 + 32) = v12;
  *(a9 + 40) = a6;
  *(a9 + 48) = v13;
  *(a9 + 56) = a8;
  *(a9 + 64) = v14;
  *(a9 + 72) = a11;
  *(a9 + 88) = 0;
  *(a9 + 104) = 32;
}

uint64_t static TriplesQuery.Clause.aggregate(logicFunction:clauses:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = *a1;
  *(a3 + 8) = a2;
  *(a3 + 88) = 0;
  *(a3 + 104) = 0;
  return sub_1ABD3C1AC();
}

uint64_t static TriplesQuery.Clause.match(subjectMatchType:subjects:subjectClauses:predicateMatchType:predicates:objectMatchType:objects:relationshipIdMatchType:relationshipIds:relationshipPredicateMatchType:relationshipPredicates:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned __int8 *a4@<X3>, uint64_t a5@<X4>, unsigned __int8 *a6@<X5>, uint64_t a7@<X6>, unsigned __int8 *a8@<X7>, uint64_t a9@<X8>, uint64_t a10, unsigned __int8 *a11, uint64_t a12)
{
  v12 = *a4;
  v13 = *a6;
  v14 = *a8;
  v15 = *a11;
  *a9 = *a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = v12;
  *(a9 + 32) = a5;
  *(a9 + 40) = v13;
  *(a9 + 48) = a7;
  *(a9 + 56) = v14;
  *(a9 + 64) = a10;
  *(a9 + 72) = v15;
  *(a9 + 88) = 0;
  *(a9 + 96) = 0;
  *(a9 + 80) = a12;
  *(a9 + 104) = 65;
}

uint64_t static TriplesQuery.Clause.join(joinCondition:clauses:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = *a1;
  *(a3 + 8) = a2;
  *(a3 + 88) = 0;
  *(a3 + 104) = -96;
  return sub_1ABD3C1AC();
}

uint64_t TriplesQuery.Clause.impl.getter()
{
  sub_1ABA7F968();
  memcpy(v0, v1, v2);
  sub_1ABA7F968();
  memcpy(v3, v4, v5);
  return sub_1ABE971E8(v8, v7);
}

void *TriplesQuery.Clause.impl.setter(const void *a1)
{
  sub_1ABA7F968();
  memcpy(v3, v4, v5);
  sub_1ABE10E28(&v7);
  return memcpy(v1, a1, 0x69uLL);
}

uint64_t TriplesQuery.Clause.TableCodingKeys.init(stringValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6469776F72 && a2 == 0xE500000000000000;
  if (v6 || (sub_1ABA7C038(0x6469776F72, 0xE500000000000000) & 1) != 0)
  {

    v8 = 0;
  }

  else
  {
    v9 = a1 == 0x7463656A627573 && a2 == 0xE700000000000000;
    if (v9 || (sub_1ABA7C038(0x7463656A627573, 0xE700000000000000) & 1) != 0)
    {

      v8 = 1;
    }

    else
    {
      v10 = a1 == 0x7461636964657270 && a2 == 0xE900000000000065;
      if (v10 || (sub_1ABA7C038(0x7461636964657270, 0xE900000000000065) & 1) != 0)
      {

        v8 = 2;
      }

      else
      {
        v11 = sub_1ABA8C830();
        v13 = a1 == v11 && a2 == v12;
        if (v13 || (sub_1ABA7C038(v11, v12) & 1) != 0)
        {

          v8 = 3;
        }

        else
        {
          v14 = a1 == 0xD000000000000015 && 0x80000001ABF859E0 == a2;
          if (v14 || (sub_1ABA7C038(0xD000000000000015, 0x80000001ABF859E0) & 1) != 0)
          {

            v8 = 4;
          }

          else
          {
            v15 = a1 == 0x7463656A626FLL && a2 == 0xE600000000000000;
            if (v15 || (sub_1ABA7C038(0x7463656A626FLL, 0xE600000000000000) & 1) != 0)
            {

              v8 = 5;
            }

            else
            {
              v16 = a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070;
              if (v16 || (sub_1ABA7C038(0x6D617473656D6974, 0xE900000000000070) & 1) != 0)
              {

                v8 = 6;
              }

              else if (a1 == 0x73656372756F73 && a2 == 0xE700000000000000)
              {

                v8 = 7;
              }

              else
              {
                v18 = sub_1ABA7C038(0x73656372756F73, 0xE700000000000000);

                if (v18)
                {
                  v8 = 7;
                }

                else
                {
                  v8 = 8;
                }
              }
            }
          }
        }
      }
    }
  }

  *a3 = v8;
  return result;
}

uint64_t TriplesQuery.Clause.TableCodingKeys.stringValue.getter()
{
  result = 0x6469776F72;
  switch(*v0)
  {
    case 1:
      result = 0x7463656A627573;
      break;
    case 2:
      result = 0x7461636964657270;
      break;
    case 3:
      result = sub_1ABA8C830();
      break;
    case 4:
      result = 0xD000000000000015;
      break;
    case 5:
      result = 0x7463656A626FLL;
      break;
    case 6:
      result = 0x6D617473656D6974;
      break;
    case 7:
      result = 0x73656372756F73;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1ABE92F60(uint64_t a1)
{
  v2 = sub_1ABE9EC74();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABE92F9C(uint64_t a1)
{
  v2 = sub_1ABE9EC74();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABE92FF0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7105633 && a2 == 0xE300000000000000;
  if (v3 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 7958113 && a2 == 0xE300000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1ABF25054();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1ABE930C0(char a1)
{
  if (a1)
  {
    return 7958113;
  }

  else
  {
    return 7105633;
  }
}

uint64_t sub_1ABE930E0(uint64_t a1)
{
  v2 = sub_1ABE972C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABE9311C(uint64_t a1)
{
  v2 = sub_1ABE972C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABE93158(uint64_t a1)
{
  v2 = sub_1ABE97274();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABE93194(uint64_t a1)
{
  v2 = sub_1ABE97274();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABE931F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABE92FF0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABE93218(uint64_t a1)
{
  v2 = sub_1ABE97220();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABE93254(uint64_t a1)
{
  v2 = sub_1ABE97220();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void TriplesQuery.Clause.AggregateLogicFunction.encode(to:)()
{
  sub_1ABA7BCA8();
  v3 = v2;
  sub_1ABAD219C(&qword_1EB4DBBF0, &qword_1ABF71C90);
  sub_1ABA7BB64();
  v23 = v5;
  v24 = v4;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v6);
  sub_1ABA7FBE0();
  v22 = v7;
  sub_1ABAD219C(&qword_1EB4DBBF8, &qword_1ABF71C98);
  sub_1ABA7BB64();
  v20 = v9;
  v21 = v8;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v20 - v11;
  v13 = sub_1ABAD219C(&qword_1EB4DBC00, &qword_1ABF71CA0);
  sub_1ABA7BB64();
  v15 = v14;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v16);
  sub_1ABA8176C();
  v17 = *v0;
  sub_1ABA88DCC(v3, v3[3]);
  sub_1ABE97220();
  sub_1ABF252E4();
  v18 = (v15 + 8);
  if (v17)
  {
    sub_1ABA8B6EC();
    sub_1ABE97274();
    v19 = v22;
    sub_1ABA827AC();
    sub_1ABF24EC4();
    (*(v23 + 8))(v19, v24);
  }

  else
  {
    sub_1ABE972C8();
    sub_1ABA827AC();
    sub_1ABF24EC4();
    (*(v20 + 8))(v12, v21);
  }

  (*v18)(v1, v13);
  sub_1ABA7BC90();
}

uint64_t TriplesQuery.Clause.AggregateLogicFunction.hashValue.getter()
{
  v1 = *v0;
  sub_1ABA7AB5C();
  MEMORY[0x1AC5AA8A0](v1);
  return sub_1ABF25294();
}

void TriplesQuery.Clause.AggregateLogicFunction.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_1ABA7BCA8();
  a22 = v26;
  a23 = v27;
  v72 = v24;
  v29 = v28;
  v69 = v30;
  v71 = sub_1ABAD219C(&qword_1EB4DBC10, &qword_1ABF71CA8);
  sub_1ABA7BB64();
  v68 = v31;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v32);
  sub_1ABA7E5C0();
  v33 = sub_1ABAD219C(&qword_1EB4DBC18, &qword_1ABF71CB0);
  sub_1ABA7BB64();
  v67 = v34;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v35);
  sub_1ABA7BCE0();
  v36 = sub_1ABAD219C(&qword_1EB4DBC20, &unk_1ABF71CB8);
  sub_1ABA7BB64();
  v70 = v37;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v38);
  v40 = v64 - v39;
  sub_1ABA88DCC(v29, v29[3]);
  sub_1ABE97220();
  v41 = v72;
  sub_1ABF252C4();
  if (v41)
  {
    goto LABEL_10;
  }

  v65 = v33;
  v66 = v25;
  v72 = v29;
  v42 = v71;
  sub_1ABF24EA4();
  v43 = sub_1ABAD4EA4();
  if (v45 == v44 >> 1)
  {
    v71 = v43;
LABEL_9:
    v59 = sub_1ABF24B44();
    swift_allocError();
    v61 = v60;
    sub_1ABAD219C(&qword_1EB4D0768, &qword_1ABF31050);
    *v61 = &type metadata for TriplesQuery.Clause.AggregateLogicFunction;
    v62 = sub_1ABF24DA4();
    sub_1ABA835CC(v62);
    (*(*(v59 - 8) + 104))(v61, *MEMORY[0x1E69E6AF8], v59);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v70 + 8))(v40, v36);
    v29 = v72;
LABEL_10:
    sub_1ABA84B54(v29);
LABEL_11:
    sub_1ABA7BC90();
    return;
  }

  sub_1ABAB69AC();
  v64[1] = 0;
  if (v49 < (v48 >> 1))
  {
    v50 = *(v47 + v46);
    v51 = sub_1ABAD4E90();
    v53 = v52;
    v55 = v54;
    swift_unknownObjectRelease();
    if (v53 == v55 >> 1)
    {
      if (v50)
      {
        sub_1ABA8B6EC();
        sub_1ABE97274();
        v56 = v23;
        sub_1ABA7E518(&_s6ClauseV22AggregateLogicFunctionO13AnyCodingKeysON, &a13);
        v57 = v69;
        v58 = v70;
        swift_unknownObjectRelease();
        (*(v68 + 8))(v56, v42);
      }

      else
      {
        a12 = 0;
        sub_1ABE972C8();
        v63 = v66;
        sub_1ABA7E518(&_s6ClauseV22AggregateLogicFunctionO13AllCodingKeysON, &a12);
        v57 = v69;
        v58 = v70;
        swift_unknownObjectRelease();
        (*(v67 + 8))(v63, v65);
      }

      (*(v58 + 8))(v40, v53);
      *v57 = v50;
      sub_1ABA84B54(v72);
      goto LABEL_11;
    }

    v71 = v51;
    goto LABEL_9;
  }

  __break(1u);
}

uint64_t sub_1ABE93980(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6469776F72 && a2 == 0xE500000000000000;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7463656A627573 && a2 == 0xE700000000000000;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7463656A626FLL && a2 == 0xE600000000000000;
      if (v7 || (sub_1ABF25054() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x7461636964657270 && a2 == 0xE900000000000065;
        if (v8 || (sub_1ABF25054() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x6E6F6974616C6572 && a2 == 0xEE00644970696873)
        {

          return 4;
        }

        else
        {
          v10 = sub_1ABF25054();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

uint64_t sub_1ABE93B28(char a1)
{
  result = 0x6469776F72;
  switch(a1)
  {
    case 1:
      result = 0x7463656A627573;
      break;
    case 2:
      result = 0x7463656A626FLL;
      break;
    case 3:
      result = 0x7461636964657270;
      break;
    case 4:
      result = 0x6E6F6974616C6572;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1ABE93C28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABE93980(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABE93C50(uint64_t a1)
{
  v2 = sub_1ABE9B280();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABE93C8C(uint64_t a1)
{
  v2 = sub_1ABE9B280();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABE93CC8(uint64_t a1)
{
  v2 = sub_1ABE9B37C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABE93D04(uint64_t a1)
{
  v2 = sub_1ABE9B37C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABE93D40(uint64_t a1)
{
  v2 = sub_1ABE9B328();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABE93D7C(uint64_t a1)
{
  v2 = sub_1ABE9B328();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABE93DB8(uint64_t a1)
{
  v2 = sub_1ABE9B2D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABE93DF4(uint64_t a1)
{
  v2 = sub_1ABE9B2D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABE93E30(uint64_t a1)
{
  v2 = sub_1ABE9B424();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABE93E6C(uint64_t a1)
{
  v2 = sub_1ABE9B424();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABE93EA8(uint64_t a1)
{
  v2 = sub_1ABE9B3D0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABE93EE4(uint64_t a1)
{
  v2 = sub_1ABE9B3D0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void TriplesQuery.Clause.JoinCondition.encode(to:)()
{
  sub_1ABA7BCA8();
  v3 = v2;
  sub_1ABAD219C(&qword_1EB4DBC28, &qword_1ABF71CC8);
  sub_1ABA7BB64();
  v47 = v5;
  v48 = v4;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v6);
  sub_1ABA7FBE0();
  v46 = v7;
  sub_1ABAD219C(&qword_1EB4DBC30, &qword_1ABF71CD0);
  sub_1ABA7BB64();
  v44 = v9;
  v45 = v8;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v10);
  sub_1ABA7FBE0();
  v43 = v11;
  sub_1ABAD219C(&qword_1EB4DBC38, &qword_1ABF71CD8);
  sub_1ABA7BB64();
  v41 = v13;
  v42 = v12;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v14);
  sub_1ABA7FBE0();
  v40 = v15;
  sub_1ABAD219C(&qword_1EB4DBC40, &qword_1ABF71CE0);
  sub_1ABA7BB64();
  v38 = v17;
  v39 = v16;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v18);
  sub_1ABA7FBE0();
  v37 = v19;
  sub_1ABAD219C(&qword_1EB4DBC48, &qword_1ABF71CE8);
  sub_1ABA7BB64();
  v35 = v21;
  v36 = v20;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v34 - v23;
  v25 = sub_1ABAD219C(&qword_1EB4DBC50, &qword_1ABF71CF0);
  sub_1ABA7BB64();
  v27 = v26;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v28);
  sub_1ABA8176C();
  v29 = *v0;
  sub_1ABA88DCC(v3, v3[3]);
  sub_1ABE9B280();
  sub_1ABF252E4();
  v30 = (v27 + 8);
  switch(v29)
  {
    case 1:
      sub_1ABE9B3D0();
      v31 = v37;
      sub_1ABA827AC();
      sub_1ABF24EC4();
      v33 = v38;
      v32 = v39;
      goto LABEL_7;
    case 2:
      sub_1ABE9B37C();
      v31 = v40;
      sub_1ABA827AC();
      sub_1ABF24EC4();
      v33 = v41;
      v32 = v42;
      goto LABEL_7;
    case 3:
      sub_1ABE9B328();
      v31 = v43;
      sub_1ABA827AC();
      sub_1ABF24EC4();
      v33 = v44;
      v32 = v45;
      goto LABEL_7;
    case 4:
      sub_1ABA8B908();
      sub_1ABE9B2D4();
      v31 = v46;
      sub_1ABA827AC();
      sub_1ABF24EC4();
      v33 = v47;
      v32 = v48;
LABEL_7:
      (*(v33 + 8))(v31, v32);
      break;
    default:
      sub_1ABE9B424();
      sub_1ABA827AC();
      sub_1ABF24EC4();
      (*(v35 + 8))(v24, v36);
      break;
  }

  (*v30)(v1, v25);
  sub_1ABA7BC90();
}

void TriplesQuery.Clause.JoinCondition.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int16 a10, char a11, char a12, char a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_1ABA7BCA8();
  a25 = v30;
  a26 = v31;
  v33 = v32;
  v89 = v34;
  sub_1ABAD219C(&qword_1EB4DBC78, &qword_1ABF71CF8);
  sub_1ABA7BB64();
  v86 = v35;
  v87 = v36;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v37);
  sub_1ABA7FBE0();
  v92 = v38;
  sub_1ABAD219C(&qword_1EB4DBC80, &qword_1ABF71D00);
  sub_1ABA7BB64();
  v84 = v39;
  v85 = v40;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v41);
  sub_1ABA7FBE0();
  v91 = v42;
  sub_1ABAD219C(&qword_1EB4DBC88, &qword_1ABF71D08);
  sub_1ABA7BB64();
  v82 = v44;
  v83 = v43;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v45);
  sub_1ABA7FBE0();
  v88 = v46;
  sub_1ABAD219C(&qword_1EB4DBC90, &qword_1ABF71D10);
  sub_1ABA7BB64();
  v80 = v48;
  v81 = v47;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v49);
  sub_1ABA8176C();
  v50 = sub_1ABAD219C(&qword_1EB4DBC98, &qword_1ABF71D18);
  sub_1ABA7BB64();
  v79 = v51;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v52);
  sub_1ABA7E338();
  v53 = sub_1ABAD219C(&qword_1EB4DBCA0, &unk_1ABF71D20);
  sub_1ABA7BB64();
  v90 = v54;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v55);
  sub_1ABA7E5C0();
  sub_1ABA88DCC(v33, v33[3]);
  sub_1ABE9B280();
  sub_1ABF252C4();
  if (v27)
  {
    goto LABEL_10;
  }

  v78 = v50;
  v56 = v91;
  v57 = v26;
  sub_1ABF24EA4();
  sub_1ABAD4EA4();
  if (v59 == v58 >> 1)
  {
    v60 = v90;
LABEL_9:
    v69 = sub_1ABF24B44();
    swift_allocError();
    v71 = v70;
    sub_1ABAD219C(&qword_1EB4D0768, &qword_1ABF31050);
    *v71 = &type metadata for TriplesQuery.Clause.JoinCondition;
    v72 = sub_1ABF24DA4();
    sub_1ABA835CC(v72);
    (*(*(v69 - 8) + 104))(v71, *MEMORY[0x1E69E6AF8], v69);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v60 + 8))(v57, v53);
LABEL_10:
    sub_1ABA84B54(v33);
LABEL_11:
    sub_1ABA8869C();
    sub_1ABA7BC90();
    return;
  }

  sub_1ABAB69AC();
  if (v64 < (v63 >> 1))
  {
    v77 = *(v62 + v61);
    sub_1ABAD4E90();
    v66 = v65;
    v68 = v67;
    swift_unknownObjectRelease();
    if (v66 == v68 >> 1)
    {
      switch(v77)
      {
        case 1:
          a13 = 1;
          sub_1ABE9B3D0();
          v56 = v29;
          sub_1ABA9070C(&_s6ClauseV13JoinConditionO17SubjectCodingKeysON, &a13);
          swift_unknownObjectRelease();
          v74 = v80;
          v73 = v81;
          goto LABEL_16;
        case 2:
          a14 = 2;
          sub_1ABE9B37C();
          v56 = v88;
          sub_1ABA9070C(&_s6ClauseV13JoinConditionO16ObjectCodingKeysON, &a14);
          swift_unknownObjectRelease();
          v74 = v82;
          v73 = v83;
          goto LABEL_16;
        case 3:
          a15 = 3;
          sub_1ABE9B328();
          sub_1ABA9070C(&_s6ClauseV13JoinConditionO19PredicateCodingKeysON, &a15);
          swift_unknownObjectRelease();
          v73 = v84;
          v74 = v85;
LABEL_16:
          (*(v74 + 8))(v56, v73);
          break;
        case 4:
          sub_1ABA8B908();
          sub_1ABE9B2D4();
          sub_1ABF24D94();
          swift_unknownObjectRelease();
          (*(v87 + 8))(v92, v86);
          break;
        default:
          a12 = 0;
          sub_1ABE9B424();
          sub_1ABA9070C(&_s6ClauseV13JoinConditionO15RowidCodingKeysON, &a12);
          swift_unknownObjectRelease();
          (*(v79 + 8))(v28, v78);
          break;
      }

      v75 = sub_1ABAA0224();
      v76(v75, v53);
      *v89 = v77;
      sub_1ABA84B54(v33);
      goto LABEL_11;
    }

    v60 = v90;
    v57 = v26;
    goto LABEL_9;
  }

  __break(1u);
}

uint64_t TriplesQuery.Clause.AggregateClause.description.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1ABA8B290();
  sub_1ABF24AB4();
  v3 = MEMORY[0x1AC5A9410](0xD000000000000014, 0x80000001ABF95000);
  sub_1ABA8B378(v3, v4, &type metadata for TriplesQuery.Clause.AggregateLogicFunction, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6, v7, v9, *v10, *&v10[4], v10[6], v1, v11);
  sub_1ABAB2C04();
  MEMORY[0x1AC5A9750](v2, &type metadata for TriplesQuery.Clause);
  sub_1ABA9F244();

  sub_1ABA7FD6C();
  return v12;
}

unint64_t TriplesQuery.Clause.ContainsClause.description.getter()
{
  v1 = v0[3];
  v2 = v0[5];
  v3 = v0[7];
  v4 = v0[9];
  if (!v0[1])
  {
    v10 = MEMORY[0x1E69E7CC0];
    if (!v1)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v43 = v0[5];
  v5 = v0[7];
  sub_1ABAA36A4();
  v6 = MEMORY[0x1AC5A9410](14963, 0xE200000000000000);
  sub_1ABA8BB60(v6, v7, &type metadata for TriplesQuery.MatchType, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078]);
  v8 = sub_1ABF243A4();
  MEMORY[0x1AC5A9410](v8);

  sub_1ABAAA4F4();
  v10 = v9;
  if (*(v9 + 16) >= *(v9 + 24) >> 1)
  {
    sub_1ABA8EDD0();
    v10 = v34;
  }

  sub_1ABA90E38();
  *(v11 + 32) = v44;
  *(v11 + 40) = v45;
  v3 = v5;
  v2 = v43;
  if (v1)
  {
LABEL_7:
    sub_1ABAA36A4();
    v12 = MEMORY[0x1AC5A9410](14960, 0xE200000000000000);
    sub_1ABA8BB60(v12, v13, &type metadata for TriplesQuery.MatchType, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078]);
    v14 = sub_1ABF243A4();
    MEMORY[0x1AC5A9410](v14);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1ABA904BC();
      v10 = v35;
    }

    sub_1ABAA55BC();
    if (v15)
    {
      sub_1ABA8EDD0();
      v10 = v36;
    }

    sub_1ABA90E38();
    *(v16 + 32) = v44;
    *(v16 + 40) = v45;
  }

LABEL_12:
  if (v2)
  {
    sub_1ABAA36A4();
    v17 = MEMORY[0x1AC5A9410](14959, 0xE200000000000000);
    sub_1ABA8BB60(v17, v18, &type metadata for TriplesQuery.MatchType, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078]);
    v19 = sub_1ABF243A4();
    MEMORY[0x1AC5A9410](v19);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1ABA904BC();
      v10 = v37;
    }

    sub_1ABAA55BC();
    if (v15)
    {
      sub_1ABA8EDD0();
      v10 = v38;
    }

    sub_1ABA90E38();
    *(v20 + 32) = v44;
    *(v20 + 40) = v45;
  }

  if (v3)
  {
    sub_1ABAA36A4();
    v21 = MEMORY[0x1AC5A9410](14962, 0xE200000000000000);
    sub_1ABA8BB60(v21, v22, &type metadata for TriplesQuery.MatchType, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078]);
    v23 = sub_1ABF243A4();
    MEMORY[0x1AC5A9410](v23);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1ABA904BC();
      v10 = v39;
    }

    sub_1ABAA55BC();
    if (v15)
    {
      sub_1ABA8EDD0();
      v10 = v40;
    }

    sub_1ABA90E38();
    *(v24 + 32) = v44;
    *(v24 + 40) = v45;
  }

  if (v4)
  {
    sub_1ABAA36A4();
    v25 = MEMORY[0x1AC5A9410](3829874, 0xE300000000000000);
    sub_1ABA8BB60(v25, v26, &type metadata for TriplesQuery.MatchType, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078]);
    v27 = sub_1ABF243A4();
    MEMORY[0x1AC5A9410](v27);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1ABA904BC();
      v10 = v41;
    }

    v28 = *(v10 + 16);
    if (v28 >= *(v10 + 24) >> 1)
    {
      sub_1ABA8EDD0();
      v10 = v42;
    }

    *(v10 + 16) = v28 + 1;
    v29 = v10 + 16 * v28;
    *(v29 + 32) = v44;
    *(v29 + 40) = v45;
  }

  sub_1ABAA36A4();
  sub_1ABF24AB4();

  sub_1ABAD219C(&unk_1EB4D33D0, &unk_1ABF3A8C0);
  sub_1ABAAA5C0();
  v30 = sub_1ABF23B54();
  v32 = v31;

  MEMORY[0x1AC5A9410](v30, v32);

  MEMORY[0x1AC5A9410](62, 0xE100000000000000);
  return 0xD000000000000010;
}

uint64_t TriplesQuery.Clause.MatchClause.description.getter()
{
  v1 = v0[2];
  v2 = v0[4];
  v3 = v0[6];
  v4 = v0[8];
  v5 = v0[10];
  if (!v0[1])
  {
    v14 = MEMORY[0x1E69E7CC0];
    if (!v1)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v60 = v0[4];
  v61 = v0[6];
  v6 = v0[8];
  v7 = v0[10];
  sub_1ABAA50C8();
  v8 = MEMORY[0x1AC5A9410](14963, 0xE200000000000000);
  sub_1ABAA0978(v8, v9, &type metadata for TriplesQuery.MatchType, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078]);
  sub_1ABB668FC();
  v10 = sub_1ABF243A4();
  MEMORY[0x1AC5A9410](v10);

  v11 = v62[0];
  v12 = v62[1];
  sub_1ABAAA4F4();
  v14 = v13;
  v15 = *(v13 + 16);
  if (v15 >= *(v13 + 24) >> 1)
  {
    sub_1ABA8EDD0();
    v14 = v49;
  }

  *(v14 + 16) = v15 + 1;
  v16 = v14 + 16 * v15;
  *(v16 + 32) = v11;
  *(v16 + 40) = v12;
  v5 = v7;
  v4 = v6;
  v2 = v60;
  v3 = v61;
  if (v1)
  {
LABEL_7:
    sub_1ABAA50C8();
    v17 = MEMORY[0x1AC5A9410](14963, 0xE200000000000000);
    sub_1ABAA0978(v17, v18, &type metadata for TriplesQuery.MatchType, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078]);
    v19 = MEMORY[0x1AC5A9750](v1, &type metadata for TriplesQuery.Clause);
    MEMORY[0x1AC5A9410](v19);

    v20 = v62[1];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1ABA904BC();
      v14 = v50;
    }

    sub_1ABAA55BC();
    if (v21)
    {
      sub_1ABA8EDD0();
      v14 = v51;
    }

    sub_1ABA90E38();
    *(v22 + 32) = v62[0];
    *(v22 + 40) = v20;
  }

LABEL_12:
  if (v2)
  {
    sub_1ABAA50C8();
    v23 = MEMORY[0x1AC5A9410](14960, 0xE200000000000000);
    sub_1ABAA0978(v23, v24, &type metadata for TriplesQuery.MatchType, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078]);
    sub_1ABAE4254();
    v25 = sub_1ABF243A4();
    MEMORY[0x1AC5A9410](v25);

    v26 = v62[1];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1ABA904BC();
      v14 = v52;
    }

    sub_1ABAA55BC();
    if (v21)
    {
      sub_1ABA8EDD0();
      v14 = v53;
    }

    sub_1ABA90E38();
    *(v27 + 32) = v62[0];
    *(v27 + 40) = v26;
  }

  if (v3)
  {
    sub_1ABAA50C8();
    v28 = MEMORY[0x1AC5A9410](14959, 0xE200000000000000);
    sub_1ABAA0978(v28, v29, &type metadata for TriplesQuery.MatchType, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078]);
    v30 = sub_1ABF243A4();
    MEMORY[0x1AC5A9410](v30);

    v31 = v62[1];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1ABA904BC();
      v14 = v54;
    }

    sub_1ABAA55BC();
    if (v21)
    {
      sub_1ABA8EDD0();
      v14 = v55;
    }

    sub_1ABA90E38();
    *(v32 + 32) = v62[0];
    *(v32 + 40) = v31;
  }

  if (v4)
  {
    sub_1ABAA50C8();
    v33 = MEMORY[0x1AC5A9410](14962, 0xE200000000000000);
    sub_1ABAA0978(v33, v34, &type metadata for TriplesQuery.MatchType, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078]);
    sub_1ABAAC184();
    v35 = sub_1ABF243A4();
    MEMORY[0x1AC5A9410](v35);

    v36 = v62[1];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1ABA904BC();
      v14 = v56;
    }

    sub_1ABAA55BC();
    if (v21)
    {
      sub_1ABA8EDD0();
      v14 = v57;
    }

    sub_1ABA90E38();
    *(v37 + 32) = v62[0];
    *(v37 + 40) = v36;
  }

  if (v5)
  {
    sub_1ABAA50C8();
    v38 = MEMORY[0x1AC5A9410](3829874, 0xE300000000000000);
    sub_1ABAA0978(v38, v39, &type metadata for TriplesQuery.MatchType, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078]);
    sub_1ABAE4254();
    v40 = sub_1ABF243A4();
    MEMORY[0x1AC5A9410](v40);

    v41 = v62[0];
    v42 = v62[1];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1ABA904BC();
      v14 = v58;
    }

    v43 = *(v14 + 16);
    if (v43 >= *(v14 + 24) >> 1)
    {
      sub_1ABA8EDD0();
      v14 = v59;
    }

    *(v14 + 16) = v43 + 1;
    v44 = v14 + 16 * v43;
    *(v44 + 32) = v41;
    *(v44 + 40) = v42;
  }

  sub_1ABAA50C8();
  sub_1ABF24AB4();

  strcpy(v62, "<MatchClause ");
  sub_1ABAD219C(&unk_1EB4D33D0, &unk_1ABF3A8C0);
  sub_1ABAAA5C0();
  v45 = sub_1ABF23B54();
  v47 = v46;

  MEMORY[0x1AC5A9410](v45, v47);

  MEMORY[0x1AC5A9410](62, 0xE100000000000000);
  return v62[0];
}

uint64_t TriplesQuery.Clause.FullTextSearchClause.description.getter()
{
  v1 = *(v0 + 8);
  sub_1ABA8B290();
  sub_1ABF24AB4();
  MEMORY[0x1AC5A9410](0xD000000000000019, 0x80000001ABF95040);
  sub_1ABF243A4();
  sub_1ABA9F244();

  v2 = MEMORY[0x1AC5A9410](980709152, 0xE400000000000000);
  sub_1ABA8B378(v2, v3, &type metadata for TriplesQuery.FullTextSearchType, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v4, v5, v6, v8, *v9, *&v9[4], v9[6], v1, v10);
  sub_1ABA7FD6C();
  return v11;
}

unint64_t TriplesQuery.Clause.ComparisonClause.description.getter()
{
  sub_1ABA8B290();
  sub_1ABF24AB4();

  sub_1ABF24314();
  sub_1ABA9F244();

  MEMORY[0x1AC5A9410](540699936, 0xE400000000000000);
  sub_1ABF23C74();
  sub_1ABA9F244();

  MEMORY[0x1AC5A9410](540697376, 0xE400000000000000);
  sub_1ABE9B478();
  sub_1ABF24FF4();
  sub_1ABA9F244();

  sub_1ABA7FD6C();
  return 0xD000000000000015;
}

uint64_t TriplesQuery.Clause.JoinClause.description.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1ABA8B290();
  sub_1ABF24AB4();
  v3 = MEMORY[0x1AC5A9410](0x616C436E696F4A3CLL, 0xEF3A63203A657375);
  sub_1ABA8B378(v3, v4, &type metadata for TriplesQuery.Clause.JoinCondition, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6, v7, v9, *v10, *&v10[4], v10[6], v1, v11);
  sub_1ABAB2C04();
  MEMORY[0x1AC5A9750](v2, &type metadata for TriplesQuery.Clause);
  sub_1ABA9F244();

  sub_1ABA7FD6C();
  return v12;
}

uint64_t sub_1ABE956C8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7461676572676761 && a2 == 0xE900000000000065;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x727453686374616DLL && a2 == 0xEC00000073676E69;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x686374616DLL && a2 == 0xE500000000000000;
      if (v7 || (sub_1ABF25054() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x747865546C6C7566 && a2 == 0xEE00686372616553;
        if (v8 || (sub_1ABF25054() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x73697261706D6F63 && a2 == 0xEA00000000006E6FLL;
          if (v9 || (sub_1ABF25054() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 1852403562 && a2 == 0xE400000000000000;
            if (v10 || (sub_1ABF25054() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 7105633 && a2 == 0xE300000000000000)
            {

              return 6;
            }

            else
            {
              v12 = sub_1ABF25054();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1ABE95910(char a1)
{
  result = 0x7461676572676761;
  switch(a1)
  {
    case 1:
      result = 0x727453686374616DLL;
      break;
    case 2:
      result = 0x686374616DLL;
      break;
    case 3:
      result = 0x747865546C6C7566;
      break;
    case 4:
      result = 0x73697261706D6F63;
      break;
    case 5:
      result = 1852403562;
      break;
    case 6:
      result = 7105633;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1ABE959E4(uint64_t a1)
{
  v2 = sub_1ABE9B910();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABE95A20(uint64_t a1)
{
  v2 = sub_1ABE9B910();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABE95A5C(uint64_t a1)
{
  v2 = sub_1ABE9B520();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABE95A98(uint64_t a1)
{
  v2 = sub_1ABE9B520();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABE95ADC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABE956C8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABE95B04(uint64_t a1)
{
  v2 = sub_1ABE9B4CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABE95B40(uint64_t a1)
{
  v2 = sub_1ABE9B4CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABE95B7C(uint64_t a1)
{
  v2 = sub_1ABE9B670();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABE95BB8(uint64_t a1)
{
  v2 = sub_1ABE9B670();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABE95BF4(uint64_t a1)
{
  v2 = sub_1ABE9B718();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABE95C30(uint64_t a1)
{
  v2 = sub_1ABE9B718();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABE95C6C(uint64_t a1)
{
  v2 = sub_1ABE9B5C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABE95CA8(uint64_t a1)
{
  v2 = sub_1ABE9B5C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABE95CE4(uint64_t a1)
{
  v2 = sub_1ABE9B7C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABE95D20(uint64_t a1)
{
  v2 = sub_1ABE9B7C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABE95D5C(uint64_t a1)
{
  v2 = sub_1ABE9B868();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABE95D98(uint64_t a1)
{
  v2 = sub_1ABE9B868();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void TriplesQuery.Clause.Impl.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1ABA7BCA8();
  v23 = v22;
  v76 = sub_1ABAD219C(&qword_1EB4DBCA8, &qword_1ABF71D30);
  sub_1ABA7BB64();
  v75 = v24;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v25);
  sub_1ABA7FBE0();
  sub_1ABA8147C(v26);
  v74 = sub_1ABAD219C(&qword_1EB4DBCB0, &qword_1ABF71D38);
  sub_1ABA7BB64();
  v73 = v27;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v28);
  sub_1ABA7FBE0();
  sub_1ABA8147C(v29);
  v72 = sub_1ABAD219C(&qword_1EB4DBCB8, &qword_1ABF71D40);
  sub_1ABA7BB64();
  v71 = v30;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v31);
  sub_1ABA7FBE0();
  sub_1ABA8147C(v32);
  v70 = sub_1ABAD219C(&qword_1EB4DBCC0, &qword_1ABF71D48);
  sub_1ABA7BB64();
  v69 = v33;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v34);
  sub_1ABA7FBE0();
  sub_1ABA8147C(v35);
  v68 = sub_1ABAD219C(&qword_1EB4DBCC8, &qword_1ABF71D50);
  sub_1ABA7BB64();
  v67 = v36;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v37);
  sub_1ABA7FBE0();
  sub_1ABA8147C(v38);
  v66 = sub_1ABAD219C(&qword_1EB4DBCD0, &qword_1ABF71D58);
  sub_1ABA7BB64();
  v65 = v39;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v40);
  sub_1ABA7FBE0();
  sub_1ABA8147C(v41);
  v42 = sub_1ABAD219C(&qword_1EB4DBCD8, &qword_1ABF71D60);
  sub_1ABA7BB64();
  v64 = v43;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v44);
  sub_1ABA7BCE0();
  sub_1ABAD219C(&qword_1EB4DBCE0, &qword_1ABF71D68);
  sub_1ABA7BB64();
  v88 = v45;
  v89 = v46;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v47);
  v49 = &v61 - v48;
  v86 = *v20;
  v85 = v20[1];
  v50 = *(v20 + 2) | (*(v20 + 3) << 32);
  v51 = *(v20 + 2);
  v87 = *(v20 + 1);
  v52 = *(v20 + 4);
  v83 = *(v20 + 3);
  v84 = v51;
  v82 = v52;
  v53 = *(v20 + 6);
  v81 = *(v20 + 5);
  v80 = v53;
  v54 = *(v20 + 8);
  v79 = *(v20 + 7);
  v78 = v54;
  v55 = *(v20 + 10);
  v77 = *(v20 + 9);
  v63 = v55;
  v56 = *(v20 + 12);
  v62 = *(v20 + 11);
  v61 = v56;
  v57 = v20[104];
  v59 = v23[3];
  v58 = v23[4];
  sub_1ABA88DCC(v23, v59);
  sub_1ABE9B4CC();
  sub_1ABF252E4();
  switch(v57 >> 5)
  {
    case 1u:
      LOBYTE(v90) = 1;
      sub_1ABE9B868();
      sub_1ABA7EC3C(&_s6ClauseV4ImplO22MatchStringsCodingKeysON, &v90);
      sub_1ABAA32E4();
      sub_1ABE9B8BC();
      sub_1ABA7AE84();
      break;
    case 2u:
      v42 = v57 & 0x1F;
      LOBYTE(v90) = 2;
      sub_1ABE9B7C0();
      sub_1ABA7EC3C(&_s6ClauseV4ImplO15MatchCodingKeysON, &v90);
      sub_1ABAA32E4();
      v92 = v63;
      v93 = v62;
      v94 = v61;
      v95 = v57 & 0x1F;
      sub_1ABE9B814();
      sub_1ABA7AE84();
      break;
    case 3u:
      v42 = v86 | (v85 << 8) | (v50 << 16);
      LOBYTE(v90) = 3;
      sub_1ABE9B718();
      sub_1ABA7EC3C(&_s6ClauseV4ImplO24FullTextSearchCodingKeysON, &v90);
      v90 = v42;
      LOBYTE(v91) = v87;
      sub_1ABE9B76C();
      sub_1ABA7AE84();
      break;
    case 4u:
      LOBYTE(v90) = 4;
      sub_1ABE9B670();
      sub_1ABA7EC3C(&_s6ClauseV4ImplO20ComparisonCodingKeysON, &v90);
      LOBYTE(v90) = v86 & 1;
      BYTE1(v90) = v85;
      v91 = v87;
      sub_1ABE9B6C4();
      sub_1ABA7AE84();
      break;
    case 5u:
      LOBYTE(v90) = 5;
      sub_1ABE9B5C8();
      sub_1ABA7EC3C(&_s6ClauseV4ImplO14JoinCodingKeysON, &v90);
      LOBYTE(v90) = v86;
      v91 = v87;
      sub_1ABE9B61C();
      sub_1ABA7AE84();
      break;
    case 6u:
      LOBYTE(v90) = 6;
      sub_1ABE9B520();
      sub_1ABA7EC3C(&_s6ClauseV4ImplO13AllCodingKeysON, &v90);
      sub_1ABE9B574();
      v42 = v76;
      sub_1ABA97974();
      sub_1ABF24F84();
      break;
    default:
      LOBYTE(v90) = 0;
      sub_1ABE9B910();
      v58 = v88;
      v59 = v49;
      sub_1ABF24EC4();
      LOBYTE(v90) = v86 & 1;
      v91 = v87;
      sub_1ABE9B964();
      sub_1ABA97974();
      sub_1ABF24F84();
      break;
  }

  sub_1ABA9364C();
  v60(v21, v42);
  (*(v89 + 8))(v59, v58);
  sub_1ABA7BC90();
}

void TriplesQuery.Clause.Impl.init(from:)()
{
  sub_1ABA7BCA8();
  v3 = v2;
  v101 = v4;
  v99 = sub_1ABAD219C(&qword_1EB4DBD18, &qword_1ABF71D70);
  sub_1ABA7BB64();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v5);
  sub_1ABA7FBE0();
  v103 = v6;
  v100 = sub_1ABAD219C(&qword_1EB4DBD20, &qword_1ABF71D78);
  sub_1ABA7BB64();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v7);
  sub_1ABA7FBE0();
  v102 = v8;
  sub_1ABAD219C(&qword_1EB4DBD28, &qword_1ABF71D80);
  sub_1ABA7BB64();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v9);
  sub_1ABA7FBE0();
  sub_1ABAD219C(&qword_1EB4DBD30, &qword_1ABF71D88);
  sub_1ABA7BB64();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v10);
  sub_1ABA7FBE0();
  sub_1ABAD219C(&qword_1EB4DBD38, &qword_1ABF71D90);
  sub_1ABA7BB64();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v11);
  sub_1ABA7FBE0();
  sub_1ABAD219C(&qword_1EB4DBD40, &qword_1ABF71D98);
  sub_1ABA7BB64();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v12);
  sub_1ABA7E5C0();
  sub_1ABAD219C(&qword_1EB4DBD48, &qword_1ABF71DA0);
  sub_1ABA7BB64();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v13);
  sub_1ABA7E338();
  v14 = sub_1ABAD219C(&qword_1EB4DBD50, &unk_1ABF71DA8);
  sub_1ABA7BB64();
  v16 = v15;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v17);
  sub_1ABA8176C();
  v104 = v3;
  sub_1ABA88DCC(v3, v3[3]);
  sub_1ABE9B4CC();
  sub_1ABF252C4();
  if (v0)
  {
    goto LABEL_10;
  }

  v114 = v16;
  sub_1ABF24EA4();
  sub_1ABAD4EA4();
  if (v19 == v18 >> 1)
  {
    v20 = v16;
LABEL_9:
    v35 = sub_1ABF24B44();
    swift_allocError();
    v37 = v36;
    sub_1ABAD219C(&qword_1EB4D0768, &qword_1ABF31050);
    *v37 = &type metadata for TriplesQuery.Clause.Impl;
    v38 = sub_1ABF24DA4();
    sub_1ABA835CC(v38);
    (*(*(v35 - 8) + 104))(v37, *MEMORY[0x1E69E6AF8], v35);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v20 + 8))(v1, v14);
LABEL_10:
    v39 = v104;
LABEL_11:
    sub_1ABA84B54(v39);
    sub_1ABA7BC90();
    return;
  }

  sub_1ABAB69AC();
  if (v24 < (v23 >> 1))
  {
    v25 = v1;
    v26 = *(v22 + v21);
    sub_1ABAD4E90();
    v28 = v27;
    v30 = v29;
    swift_unknownObjectRelease();
    if (v28 == v30 >> 1)
    {
      switch(v26)
      {
        case 1:
          LOBYTE(v105) = 1;
          sub_1ABE9B868();
          sub_1ABAA42C0(&_s6ClauseV4ImplO22MatchStringsCodingKeysON, &v105);
          v52 = sub_1ABE9BB5C();
          sub_1ABAA471C(&type metadata for TriplesQuery.Clause.ContainsClause, v53, v54, v55, v52);
          sub_1ABE9ED08();
          swift_unknownObjectRelease();
          v89 = sub_1ABAA623C();
          v90(v89);
          v91 = sub_1ABA7FA9C();
          v92(v91);
          v85 = 0;
          v87 = v105;
          v88 = v106;
          v81 = v107;
          v82 = v108;
          v83 = v109;
          v86 = 32;
          *&v84 = v110;
          break;
        case 2:
          LOBYTE(v105) = 2;
          sub_1ABE9B7C0();
          sub_1ABAA42C0(&_s6ClauseV4ImplO15MatchCodingKeysON, &v105);
          v44 = sub_1ABE9BB08();
          sub_1ABAA471C(&type metadata for TriplesQuery.Clause.MatchClause, v45, v46, v47, v44);
          sub_1ABE9ED08();
          swift_unknownObjectRelease();
          v68 = sub_1ABAA623C();
          v69(v68);
          v70 = sub_1ABA7FA9C();
          v71(v70);
          v87 = v105;
          v88 = v106;
          v81 = v107;
          v82 = v108;
          v83 = v109;
          v84 = v110;
          v80 = v112;
          v85 = v111 & 1;
          v86 = v113 & 1 | 0x40;
          break;
        case 3:
          LOBYTE(v105) = 3;
          sub_1ABE9B718();
          sub_1ABAA42C0(&_s6ClauseV4ImplO24FullTextSearchCodingKeysON, &v105);
          v48 = sub_1ABE9BAB4();
          sub_1ABAA471C(&type metadata for TriplesQuery.Clause.FullTextSearchClause, v49, v50, v51, v48);
          sub_1ABE9ED08();
          swift_unknownObjectRelease();
          v72 = sub_1ABAA623C();
          v73(v72);
          v74 = sub_1ABA7FA9C();
          v75(v74);
          v85 = 0;
          v87 = v105;
          *&v88 = v106;
          v86 = 96;
          break;
        case 4:
          LOBYTE(v105) = 4;
          sub_1ABE9B670();
          sub_1ABAA42C0(&_s6ClauseV4ImplO20ComparisonCodingKeysON, &v105);
          v40 = sub_1ABE9BA60();
          sub_1ABAA471C(&type metadata for TriplesQuery.Clause.ComparisonClause, v41, v42, v43, v40);
          sub_1ABE9ED08();
          swift_unknownObjectRelease();
          v64 = sub_1ABAA623C();
          v65(v64);
          v66 = sub_1ABA7FA9C();
          v67(v66);
          v85 = 0;
          *&v88 = v106;
          v87 = v105 | (BYTE1(v105) << 8);
          v86 = 0x80;
          break;
        case 5:
          LOBYTE(v105) = 5;
          sub_1ABE9B5C8();
          sub_1ABAA3E30(&_s6ClauseV4ImplO14JoinCodingKeysON, &v105);
          v56 = sub_1ABE9BA0C();
          sub_1ABA8B55C(&type metadata for TriplesQuery.Clause.JoinClause, v57, v58, v59, v56);
          sub_1ABE9ED08();
          swift_unknownObjectRelease();
          sub_1ABA9364C();
          v93(v102, v100);
          v94 = sub_1ABA7FA9C();
          v95(v94);
          v85 = 0;
          v87 = v105;
          *&v88 = v106;
          v86 = -96;
          break;
        case 6:
          LOBYTE(v105) = 6;
          sub_1ABE9B520();
          sub_1ABAA3E30(&_s6ClauseV4ImplO13AllCodingKeysON, &v105);
          v60 = sub_1ABE9B9B8();
          sub_1ABA8B55C(&type metadata for TriplesQuery.Clause.AllClause, v61, v62, v63, v60);
          sub_1ABE9ED08();
          swift_unknownObjectRelease();
          sub_1ABA9364C();
          v96(v103, v99);
          v97 = sub_1ABA7FA9C();
          v98(v97);
          v85 = 0;
          v86 = -64;
          break;
        default:
          LOBYTE(v105) = 0;
          sub_1ABE9B910();
          sub_1ABAA42C0(&_s6ClauseV4ImplO19AggregateCodingKeysON, &v105);
          v31 = sub_1ABE9BBB0();
          sub_1ABAA471C(&type metadata for TriplesQuery.Clause.AggregateClause, v32, v33, v34, v31);
          sub_1ABE9ED08();
          swift_unknownObjectRelease();
          v76 = sub_1ABAA623C();
          v77(v76);
          v78 = sub_1ABA7FA9C();
          v79(v78);
          v85 = 0;
          v86 = 0;
          v87 = v105;
          *&v88 = v106;
          break;
      }

      v39 = v104;
      *v101 = v87;
      *(v101 + 8) = v88;
      *(v101 + 24) = v81;
      *(v101 + 40) = v82;
      *(v101 + 56) = v83;
      *(v101 + 72) = v84;
      *(v101 + 88) = v85;
      *(v101 + 96) = v80;
      *(v101 + 104) = v86;
      goto LABEL_11;
    }

    v20 = v114;
    v1 = v25;
    goto LABEL_9;
  }

  __break(1u);
}

uint64_t sub_1ABE97074@<X0>(void *__src@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  memcpy(__dst, __src, 0x69uLL);
  sub_1ABA7F968();
  memcpy(v6, v7, v8);
  sub_1ABAD219C(&qword_1EB4D10F8, &qword_1ABF33280);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1ABF34060;
  memcpy((v9 + 32), __src, 0x69uLL);
  sub_1ABA7F968();
  memcpy(v10, v11, v12);
  *a3 = a2;
  *(a3 + 8) = v9;
  *(a3 + 88) = 0;
  *(a3 + 104) = 0;
  sub_1ABE10DCC(__dst, v14);
  return sub_1ABE10DCC(v16, v14);
}

_BYTE *TriplesQuery.Clause.ContainsClause.init(subjectMatchType:subjects:predicateMatchType:predicates:objectMatchType:objects:relationshipIdMatchType:relationshipIds:relationshipPredicateMatchType:relationshipPredicates:)@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, char *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char *a10, uint64_t a11)
{
  v11 = *a3;
  v12 = *a5;
  v13 = *a7;
  v14 = *a10;
  *a9 = *result;
  *(a9 + 8) = a2;
  *(a9 + 16) = v11;
  *(a9 + 24) = a4;
  *(a9 + 32) = v12;
  *(a9 + 40) = a6;
  *(a9 + 48) = v13;
  *(a9 + 56) = a8;
  *(a9 + 64) = v14;
  *(a9 + 72) = a11;
  return result;
}

void TriplesQuery.Clause.MatchClause.init(subjectMatchType:subjects:subjectClauses:predicateMatchType:predicates:objectMatchType:objects:relationshipIdMatchType:relationshipIds:relationshipPredicateMatchType:relationshipPredicates:sourceMatchType:sources:)(uint64_t a1@<X8>, char *a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>, char *a5@<X3>, uint64_t a6@<X4>, char *a7@<X5>, uint64_t a8@<X6>, char *a9@<X7>, uint64_t a10, char *a11, uint64_t a12, char *a13, uint64_t a14)
{
  v14 = *a2;
  v15 = *a5;
  v16 = *a7;
  v17 = *a9;
  v18 = *a11;
  v19 = *a13;
  *a1 = v14;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  *(a1 + 24) = v15;
  *(a1 + 32) = a6;
  *(a1 + 40) = v16;
  *(a1 + 48) = a8;
  *(a1 + 56) = v17;
  *(a1 + 64) = a10;
  *(a1 + 72) = v18;
  *(a1 + 80) = a12;
  *(a1 + 88) = v19;
  *(a1 + 96) = a14;
  sub_1ABAA0634(a1);
}

unint64_t sub_1ABE97220()
{
  result = qword_1EB4CF510;
  if (!qword_1EB4CF510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CF510);
  }

  return result;
}

unint64_t sub_1ABE97274()
{
  result = qword_1EB4DBC08;
  if (!qword_1EB4DBC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBC08);
  }

  return result;
}

unint64_t sub_1ABE972C8()
{
  result = qword_1EB4CF4F8;
  if (!qword_1EB4CF4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CF4F8);
  }

  return result;
}

uint64_t static TriplesQuery.Clause.fullTextSearch(objects:objectSearchType:)@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = a1;
  *(a3 + 8) = v3;
  *(a3 + 88) = 0;
  *(a3 + 104) = 96;
}

uint64_t TriplesQuery.Clause.FullTextSearchClause.init(objects:objectSearchType:)@<X0>(uint64_t result@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = result;
  *(a3 + 8) = v3;
  return result;
}

void static TriplesQuery.Clause.comparison(column:matchType:value:)(uint64_t a1@<X8>, unsigned __int8 *a2@<X0>, unsigned __int8 *a3@<X1>, double a4@<D0>)
{
  *a1 = *a2 | (*a3 << 8);
  *(a1 + 8) = a4;
  *(a1 + 88) = 0;
  sub_1ABAA0634(a1);
}

_BYTE *TriplesQuery.Clause.ComparisonClause.init(column:matchType:value:)@<X0>(_BYTE *result@<X0>, char *a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v4 = *a2;
  *a3 = *result;
  *(a3 + 1) = v4;
  *(a3 + 8) = a4;
  return result;
}

uint64_t TriplesQuery.Clause.description.getter()
{
  v3 = 0;
  v4 = 0xE000000000000000;
  MEMORY[0x1AC5A9410](60, 0xE100000000000000);
  memcpy(v2, v0, sizeof(v2));
  sub_1ABF24C54();
  MEMORY[0x1AC5A9410](62, 0xE100000000000000);
  return v3;
}

uint64_t sub_1ABE97410(uint64_t a1)
{
  v2 = sub_1ABE9BC04();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABE9744C(uint64_t a1)
{
  v2 = sub_1ABE9BC04();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void TriplesQuery.Clause.encode(to:)()
{
  sub_1ABA7BCA8();
  v1 = v0;
  v2 = sub_1ABAD219C(&qword_1EB4DBD90, &qword_1ABF71DB8);
  sub_1ABA7BB64();
  v4 = v3;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v12[-v6 - 8];
  sub_1ABA7F968();
  memcpy(v8, v9, v10);
  sub_1ABA88DCC(v1, v1[3]);
  sub_1ABE971E8(v14, v13);
  sub_1ABE9BC04();
  sub_1ABF252E4();
  memcpy(v13, v14, 0x69uLL);
  sub_1ABE9BC58();
  sub_1ABF24F84();
  memcpy(v12, v13, 0x69uLL);
  sub_1ABE4C0EC(v12);
  (*(v4 + 8))(v7, v2);
  sub_1ABA7BC90();
}

void TriplesQuery.Clause.init(from:)()
{
  sub_1ABA7BCA8();
  sub_1ABA95324();
  sub_1ABAD219C(&qword_1EB4DBD98, &qword_1ABF71DC0);
  sub_1ABA7BB64();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v3);
  sub_1ABA7BCE0();
  sub_1ABA9474C();
  v4 = sub_1ABE9BC04();
  sub_1ABA8387C(&_s6ClauseV10CodingKeysON, v5, v4);
  if (!v1)
  {
    sub_1ABE9BCAC();
    sub_1ABA827AC();
    sub_1ABA88658();
    sub_1ABF24E64();
    v6 = sub_1ABA7BFF0();
    v7(v6);
    memcpy(v2, v8, 0x69uLL);
  }

  sub_1ABA84B54(v0);
  sub_1ABA8869C();
  sub_1ABA7BC90();
}

uint64_t sub_1ABE97778(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E75466369676F6CLL && a2 == 0xED00006E6F697463;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x73657375616C63 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1ABF25054();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1ABE97848(char a1)
{
  if (a1)
  {
    return 0x73657375616C63;
  }

  else
  {
    return 0x6E75466369676F6CLL;
  }
}

uint64_t sub_1ABE97894@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABE97778(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABE978BC(uint64_t a1)
{
  v2 = sub_1ABE9BD00();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABE978F8(uint64_t a1)
{
  v2 = sub_1ABE9BD00();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void TriplesQuery.Clause.AggregateClause.encode(to:)()
{
  sub_1ABA7BCA8();
  v2 = v1;
  sub_1ABAD219C(&qword_1EB4DBDA8, &qword_1ABF71DC8);
  sub_1ABA7BB64();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v3);
  sub_1ABA7E338();
  sub_1ABA88DCC(v2, v2[3]);
  v4 = sub_1ABE9BD00();
  sub_1ABA8D27C(&_s6ClauseV15AggregateClauseV10CodingKeysON, v5, v4);
  sub_1ABE9BD54();
  sub_1ABA7BF34();
  sub_1ABF24F84();
  if (!v0)
  {
    sub_1ABAA0378();
    sub_1ABAD219C(&qword_1EB4DBDB0, &qword_1ABF71DD0);
    sub_1ABE9BDA8();
    sub_1ABA7BF34();
    sub_1ABF24F84();
  }

  v6 = sub_1ABA7D0EC();
  v7(v6);
  sub_1ABA7FC10();
  sub_1ABA7BC90();
}

void TriplesQuery.Clause.AggregateClause.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  sub_1ABA7BCA8();
  sub_1ABA95324();
  sub_1ABAD219C(&qword_1EB4DBDB8, &qword_1ABF71DD8);
  sub_1ABA7BB64();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v16);
  sub_1ABA7BCE0();
  sub_1ABA9474C();
  v17 = sub_1ABE9BD00();
  sub_1ABA8387C(&_s6ClauseV15AggregateClauseV10CodingKeysON, v18, v17);
  if (!v14)
  {
    sub_1ABE9BE80();
    sub_1ABA827AC();
    sub_1ABA88658();
    sub_1ABF24E64();
    sub_1ABAD219C(&qword_1EB4DBDB0, &qword_1ABF71DD0);
    sub_1ABE9BED4();
    sub_1ABAB53EC();
    sub_1ABF24E64();
    v19 = sub_1ABA7BFF0();
    v20(v19);
    *v15 = a13;
    *(v15 + 8) = v21;
  }

  sub_1ABA84B54(v13);
  sub_1ABA8869C();
  sub_1ABA7BC90();
}

uint64_t TriplesQuery.Clause.JoinClause.clauses.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t TriplesQuery.Clause.JoinClause.shortDescription.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = MEMORY[0x1AC5A9410](3826492, 0xE300000000000000);
  sub_1ABA8B378(v3, v4, &type metadata for TriplesQuery.Clause.JoinCondition, MEMORY[0x1E69E7068], MEMORY[0x1E69E7078], v5, v6, v7, v9, *v10, *&v10[4], v10[6], v1, 0);
  sub_1ABAB2C04();
  MEMORY[0x1AC5A9750](v2, &type metadata for TriplesQuery.Clause);
  sub_1ABA9F244();

  sub_1ABA7FD6C();
  return v11;
}

uint64_t sub_1ABE97D4C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x646E6F436E696F6ALL && a2 == 0xED00006E6F697469;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x73657375616C63 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1ABF25054();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1ABE97E1C(char a1)
{
  if (a1)
  {
    return 0x73657375616C63;
  }

  else
  {
    return 0x646E6F436E696F6ALL;
  }
}

uint64_t sub_1ABE97E68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABE97D4C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABE97E90(uint64_t a1)
{
  v2 = sub_1ABE9BFAC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABE97ECC(uint64_t a1)
{
  v2 = sub_1ABE9BFAC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void TriplesQuery.Clause.JoinClause.encode(to:)()
{
  sub_1ABA7BCA8();
  v2 = v1;
  sub_1ABAD219C(&qword_1EB4DBDD8, &qword_1ABF71DE0);
  sub_1ABA7BB64();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v3);
  sub_1ABA7E338();
  sub_1ABA88DCC(v2, v2[3]);
  v4 = sub_1ABE9BFAC();
  sub_1ABA8D27C(&_s6ClauseV10JoinClauseV10CodingKeysON, v5, v4);
  sub_1ABE9C000();
  sub_1ABA7BF34();
  sub_1ABF24F84();
  if (!v0)
  {
    sub_1ABAA0378();
    sub_1ABAD219C(&qword_1EB4DBDB0, &qword_1ABF71DD0);
    sub_1ABE9BDA8();
    sub_1ABA7BF34();
    sub_1ABF24F84();
  }

  v6 = sub_1ABA7D0EC();
  v7(v6);
  sub_1ABA7FC10();
  sub_1ABA7BC90();
}

void TriplesQuery.Clause.JoinClause.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  sub_1ABA7BCA8();
  sub_1ABA95324();
  sub_1ABAD219C(&qword_1EB4DBDE0, &qword_1ABF71DE8);
  sub_1ABA7BB64();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v16);
  sub_1ABA7BCE0();
  sub_1ABA9474C();
  v17 = sub_1ABE9BFAC();
  sub_1ABA8387C(&_s6ClauseV10JoinClauseV10CodingKeysON, v18, v17);
  if (!v14)
  {
    sub_1ABE9C054();
    sub_1ABA827AC();
    sub_1ABA88658();
    sub_1ABF24E64();
    sub_1ABAD219C(&qword_1EB4DBDB0, &qword_1ABF71DD0);
    sub_1ABE9BED4();
    sub_1ABAB53EC();
    sub_1ABF24E64();
    v19 = sub_1ABA7BFF0();
    v20(v19);
    *v15 = a13;
    *(v15 + 8) = v21;
  }

  sub_1ABA84B54(v13);
  sub_1ABA8869C();
  sub_1ABA7BC90();
}

uint64_t TriplesQuery.Clause.ContainsClause.subjects.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t TriplesQuery.Clause.ContainsClause.predicates.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

uint64_t TriplesQuery.Clause.ContainsClause.objects.setter(uint64_t a1)
{

  *(v1 + 40) = a1;
  return result;
}

uint64_t TriplesQuery.Clause.ContainsClause.relationshipIds.setter(uint64_t a1)
{

  *(v1 + 56) = a1;
  return result;
}

uint64_t TriplesQuery.Clause.ContainsClause.relationshipPredicates.setter(uint64_t a1)
{

  *(v1 + 72) = a1;
  return result;
}

uint64_t sub_1ABE984A4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x80000001ABF95080 == a2;
  if (v3 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x737463656A627573 && a2 == 0xE800000000000000;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000012 && 0x80000001ABF950A0 == a2;
      if (v7 || (sub_1ABF25054() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x7461636964657270 && a2 == 0xEA00000000007365;
        if (v8 || (sub_1ABF25054() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x614D7463656A626FLL && a2 == 0xEF65707954686374;
          if (v9 || (sub_1ABF25054() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x737463656A626FLL && a2 == 0xE700000000000000;
            if (v10 || (sub_1ABF25054() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000017 && 0x80000001ABF950C0 == a2;
              if (v11 || (sub_1ABF25054() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x6E6F6974616C6572 && a2 == 0xEF73644970696873;
                if (v12 || (sub_1ABF25054() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD00000000000001ELL && 0x80000001ABF950E0 == a2;
                  if (v13 || (sub_1ABF25054() & 1) != 0)
                  {

                    return 8;
                  }

                  else if (a1 == 0xD000000000000016 && 0x80000001ABF95100 == a2)
                  {

                    return 9;
                  }

                  else
                  {
                    v15 = sub_1ABF25054();

                    if (v15)
                    {
                      return 9;
                    }

                    else
                    {
                      return 10;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1ABE987C4(char a1)
{
  result = 0x737463656A627573;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0xD000000000000012;
      break;
    case 3:
      result = 0x7461636964657270;
      break;
    case 4:
      result = 0x614D7463656A626FLL;
      break;
    case 5:
      result = 0x737463656A626FLL;
      break;
    case 6:
      result = 0xD000000000000017;
      break;
    case 7:
      result = 0x6E6F6974616C6572;
      break;
    case 8:
      result = 0xD00000000000001ELL;
      break;
    case 9:
      result = 0xD000000000000016;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

uint64_t sub_1ABE98920@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABE984A4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABE98948(uint64_t a1)
{
  v2 = sub_1ABE9C0A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABE98984(uint64_t a1)
{
  v2 = sub_1ABE9C0A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void TriplesQuery.Clause.ContainsClause.encode(to:)()
{
  sub_1ABA7BCA8();
  v50 = v1;
  v3 = v2;
  v4 = sub_1ABAD219C(&qword_1EB4DBDF0, &unk_1ABF71DF0);
  sub_1ABA7BB64();
  v6 = v5;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v42 - v8;
  v10 = *v0;
  v11 = *(v0 + 1);
  v52 = v0[16];
  v48 = *(v0 + 3);
  v49 = v11;
  v47 = v0[32];
  v46 = *(v0 + 5);
  v45 = v0[48];
  v44 = *(v0 + 7);
  v43 = v0[64];
  v12 = *(v0 + 9);
  sub_1ABA88DCC(v3, v3[3]);
  sub_1ABE9C0A8();
  sub_1ABF252E4();
  LOBYTE(v51) = v10;
  sub_1ABE9C0FC();
  sub_1ABA976D8();
  v13 = v50;
  sub_1ABF24F84();
  if (v13)
  {
    (*(v6 + 8))(v9, v4);
  }

  else
  {
    v14 = v48;
    v50 = v12;
    v51 = v49;
    sub_1ABA8B6EC();
    sub_1ABAD219C(&unk_1EB4D2E60, &qword_1ABF4D8A0);
    sub_1ABA997A8(&qword_1EB4CF7F8, MEMORY[0x1E69E6160]);
    v15 = sub_1ABA976D8();
    sub_1ABAB51C8(v15, v16, v4);
    LOBYTE(v51) = v52;
    v17 = sub_1ABA976D8();
    v49 = v4;
    sub_1ABAA009C(v17, v18, v4);
    v51 = v14;
    v19 = sub_1ABA94DCC();
    sub_1ABAB51C8(v19, v20, v21);
    LOBYTE(v51) = v47;
    sub_1ABA8B908();
    v22 = sub_1ABA94DCC();
    sub_1ABAA009C(v22, v23, v24);
    v51 = v46;
    v25 = sub_1ABA94DCC();
    sub_1ABAB51C8(v25, v26, v27);
    LOBYTE(v51) = v45;
    v28 = sub_1ABA94DCC();
    sub_1ABAA009C(v28, v29, v30);
    v51 = v44;
    v31 = sub_1ABA94DCC();
    sub_1ABAB51C8(v31, v32, v33);
    LOBYTE(v51) = v43;
    v34 = sub_1ABA94DCC();
    sub_1ABAA009C(v34, v35, v36);
    v38 = v49;
    v51 = v50;
    v39 = sub_1ABA976D8();
    sub_1ABAB51C8(v39, v40, v38);
    v41 = sub_1ABAA0224();
    v37(v41, v38);
  }

  sub_1ABA7BC90();
}

void TriplesQuery.Clause.ContainsClause.init(from:)()
{
  sub_1ABA7BCA8();
  v2 = v1;
  v4 = v3;
  sub_1ABAD219C(&qword_1EB4DBDF8, &qword_1ABF71E00);
  sub_1ABA7BB64();
  v6 = v5;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v7);
  v8 = v2[3];
  v9 = v2[4];
  sub_1ABA88DCC(v2, v8);
  sub_1ABE9C0A8();
  sub_1ABF252C4();
  if (v0)
  {
    sub_1ABA93A7C();
    sub_1ABAB6840();
    sub_1ABA84B54(v2);
    LOBYTE(v27) = 0;
    *(&v27 + 1) = *v45;
    HIDWORD(v27) = *&v45[3];
    v28 = 0;
    v29 = v4;
    *v30 = *v44;
    *&v30[3] = *&v44[3];
    v31 = v8;
    v32 = v6;
    *v33 = *v43;
    *&v33[3] = *&v43[3];
    v34 = v9;
    v35 = v0;
    *&v36[3] = *&v42[3];
    *v36 = *v42;
    v37 = v2;
    v38 = v22;
    *&v39[3] = *&v41[3];
    *v39 = *v41;
    v40 = 0;
  }

  else
  {
    LOBYTE(v24[0]) = 0;
    sub_1ABE9C150();
    sub_1ABA7C894();
    sub_1ABF24E64();
    v21 = v27;
    sub_1ABAD219C(&unk_1EB4D2E60, &qword_1ABF4D8A0);
    sub_1ABA955CC(1);
    sub_1ABA84440(&unk_1ED86B980, MEMORY[0x1E69E6190]);
    sub_1ABA8E538();
    sub_1ABF24DF4();
    v20 = v27;
    sub_1ABA955CC(2);
    sub_1ABA7C894();
    sub_1ABF24E64();
    v19 = v4;
    sub_1ABA955CC(3);
    sub_1ABA8E538();
    sub_1ABF24DF4();
    sub_1ABA955CC(4);
    sub_1ABA7C894();
    sub_1ABF24E64();
    v18 = v27;
    sub_1ABA955CC(5);
    sub_1ABA8E538();
    sub_1ABF24DF4();
    v17 = v27;
    v10 = v27;
    sub_1ABA955CC(6);
    sub_1ABA7C894();
    sub_1ABF24E64();
    v16 = v27;
    v11 = v27;
    sub_1ABA955CC(7);
    sub_1ABA8E538();
    sub_1ABF24DF4();
    v15 = v27;
    sub_1ABA955CC(8);
    sub_1ABA7C894();
    sub_1ABF24E64();
    v23 = v27;
    v25 = 9;
    sub_1ABF24DF4();
    v12 = sub_1ABA805B4();
    v13(v12);
    v14 = v26;
    LOBYTE(v24[0]) = v21;
    v24[1] = v20;
    LOBYTE(v24[2]) = v18;
    v24[3] = v17;
    LOBYTE(v24[4]) = v16;
    v24[5] = v10;
    LOBYTE(v24[6]) = v11;
    v24[7] = v15;
    LOBYTE(v24[8]) = v23;
    v24[9] = v26;
    memcpy(v19, v24, 0x50uLL);
    sub_1ABE9C1A4(v24, &v27);
    sub_1ABA84B54(v2);
    LOBYTE(v27) = v21;
    v28 = v20;
    v29 = v18;
    v31 = v17;
    v32 = v16;
    v34 = v10;
    v35 = v11;
    v37 = v15;
    v38 = v23;
    v40 = v14;
  }

  sub_1ABB420A4(&v27);
  sub_1ABA7BC90();
}

uint64_t sub_1ABE99340(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x80000001ABF95080 == a2;
  if (v3 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x737463656A627573 && a2 == 0xE800000000000000;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x437463656A627573 && a2 == 0xEE0073657375616CLL;
      if (v7 || (sub_1ABF25054() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000012 && 0x80000001ABF950A0 == a2;
        if (v8 || (sub_1ABF25054() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x7461636964657270 && a2 == 0xEA00000000007365;
          if (v9 || (sub_1ABF25054() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x614D7463656A626FLL && a2 == 0xEF65707954686374;
            if (v10 || (sub_1ABF25054() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x737463656A626FLL && a2 == 0xE700000000000000;
              if (v11 || (sub_1ABF25054() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000017 && 0x80000001ABF950C0 == a2;
                if (v12 || (sub_1ABF25054() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x6E6F6974616C6572 && a2 == 0xEF73644970696873;
                  if (v13 || (sub_1ABF25054() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD00000000000001ELL && 0x80000001ABF950E0 == a2;
                    if (v14 || (sub_1ABF25054() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0xD000000000000016 && 0x80000001ABF95100 == a2;
                      if (v15 || (sub_1ABF25054() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x614D656372756F73 && a2 == 0xEF65707954686374;
                        if (v16 || (sub_1ABF25054() & 1) != 0)
                        {

                          return 11;
                        }

                        else if (a1 == 0x73656372756F73 && a2 == 0xE700000000000000)
                        {

                          return 12;
                        }

                        else
                        {
                          v18 = sub_1ABF25054();

                          if (v18)
                          {
                            return 12;
                          }

                          else
                          {
                            return 13;
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1ABE99740(char a1)
{
  result = 0x737463656A627573;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x437463656A627573;
      break;
    case 3:
      result = 0xD000000000000012;
      break;
    case 4:
      result = 0x7461636964657270;
      break;
    case 5:
      v3 = 0x7463656A626FLL;
      goto LABEL_11;
    case 6:
      result = 0x737463656A626FLL;
      break;
    case 7:
      result = 0xD000000000000017;
      break;
    case 8:
      result = 0x6E6F6974616C6572;
      break;
    case 9:
      result = 0xD00000000000001ELL;
      break;
    case 10:
      result = 0xD000000000000016;
      break;
    case 11:
      v3 = 0x656372756F73;
LABEL_11:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x614D000000000000;
      break;
    case 12:
      result = 0x73656372756F73;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

uint64_t sub_1ABE998E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABE99340(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABE99910(uint64_t a1)
{
  v2 = sub_1ABE9C1DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABE9994C(uint64_t a1)
{
  v2 = sub_1ABE9C1DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void TriplesQuery.Clause.MatchClause.encode(to:)()
{
  sub_1ABA7BCA8();
  v3 = v2;
  v4 = sub_1ABAD219C(&qword_1EB4DBE08, &qword_1ABF71E08);
  sub_1ABA7BB64();
  v6 = v5;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v7);
  sub_1ABA7E338();
  sub_1ABA88DCC(v3, v3[3]);
  sub_1ABE9C1DC();
  sub_1ABF252E4();
  sub_1ABE9C0FC();
  sub_1ABA976D8();
  sub_1ABF24F84();
  if (!v0)
  {
    sub_1ABA8B6EC();
    sub_1ABAD219C(&unk_1EB4DB8E0, &unk_1ABF50A20);
    sub_1ABE9C230();
    sub_1ABA976D8();
    sub_1ABA82FCC();
    sub_1ABF24F14();
    sub_1ABAD219C(&qword_1EB4DBDB0, &qword_1ABF71DD0);
    sub_1ABE9BDA8();
    sub_1ABA976D8();
    sub_1ABA82FCC();
    sub_1ABF24F14();
    sub_1ABA976D8();
    sub_1ABA82FCC();
    sub_1ABF24F84();
    sub_1ABA8B908();
    sub_1ABAD219C(&qword_1EB4DA310, &qword_1ABF656F0);
    sub_1ABE9C2B4();
    sub_1ABA976D8();
    sub_1ABA82FCC();
    sub_1ABF24F14();
    sub_1ABA94DCC();
    sub_1ABA82FCC();
    sub_1ABF24F84();
    sub_1ABAD219C(&unk_1EB4D2E60, &qword_1ABF4D8A0);
    sub_1ABA997A8(&qword_1EB4CF7F8, MEMORY[0x1E69E6160]);
    sub_1ABA94DCC();
    sub_1ABA82FCC();
    sub_1ABF24F14();
    sub_1ABA94DCC();
    sub_1ABA82FCC();
    sub_1ABF24F84();
    sub_1ABAD219C(&qword_1EB4DBE20, &qword_1ABF71E10);
    sub_1ABE9C338();
    sub_1ABA94DCC();
    sub_1ABA82FCC();
    sub_1ABF24F14();
    sub_1ABA94DCC();
    sub_1ABA82FCC();
    sub_1ABF24F84();
    sub_1ABA976D8();
    sub_1ABA82FCC();
    sub_1ABF24F14();
    sub_1ABA94DCC();
    sub_1ABF24F84();
    sub_1ABF24F24();
  }

  (*(v6 + 8))(v1, v4);
  sub_1ABA7BC90();
}

void TriplesQuery.Clause.MatchClause.init(from:)()
{
  sub_1ABA7BCA8();
  v3 = v2;
  v5 = v4;
  sub_1ABAD219C(&qword_1EB4DBE30, &qword_1ABF71E18);
  sub_1ABA7BB64();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v6);
  sub_1ABA7BCE0();
  v38 = 1;
  v7 = v3[4];
  v23 = v3;
  sub_1ABA88DCC(v3, v3[3]);
  sub_1ABE9C1DC();
  sub_1ABF252C4();
  if (v0)
  {
    sub_1ABA7E118();
    sub_1ABAB55B4();
    sub_1ABA84B54(v3);
    LOBYTE(v30) = 0;
    sub_1ABE9ED14();
    v31 = 0;
    v32 = 0;
    sub_1ABA9706C();
    v33 = v7;
    sub_1ABAB66A4();
    v34 = v5;
    v35 = v1;
    sub_1ABAA2A78();
    v36 = 0;
    v16 = v38;
  }

  else
  {
    sub_1ABE9C150();
    sub_1ABAB5E28();
    sub_1ABF24E64();
    v22 = v30;
    sub_1ABAD219C(&unk_1EB4DB8E0, &unk_1ABF50A20);
    sub_1ABE9C3BC();
    sub_1ABA81D60();
    sub_1ABF24DF4();
    v21 = v30;
    sub_1ABAD219C(&qword_1EB4DBDB0, &qword_1ABF71DD0);
    sub_1ABE9BED4();
    sub_1ABA81D60();
    sub_1ABF24DF4();
    v20 = v30;
    sub_1ABA8C484();
    sub_1ABF24E64();
    v19 = v30;
    sub_1ABAD219C(&qword_1EB4DA310, &qword_1ABF656F0);
    sub_1ABE9C440();
    sub_1ABAB5E28();
    sub_1ABAB53EC();
    sub_1ABF24DF4();
    sub_1ABA8C484();
    sub_1ABF24E64();
    v18 = v30;
    v8 = v30;
    sub_1ABAD219C(&unk_1EB4D2E60, &qword_1ABF4D8A0);
    sub_1ABA84440(&unk_1ED86B980, MEMORY[0x1E69E6190]);
    sub_1ABA81D60();
    sub_1ABF24DF4();
    v9 = v5;
    v10 = v30;
    sub_1ABA8C484();
    sub_1ABF24E64();
    v17 = v30;
    sub_1ABAD219C(&qword_1EB4DBE20, &qword_1ABF71E10);
    sub_1ABE9C4C4();
    sub_1ABA81D60();
    sub_1ABF24DF4();
    v25 = v30;
    sub_1ABA8C484();
    sub_1ABF24E64();
    v24 = v30;
    sub_1ABAB5E28();
    sub_1ABA97974();
    sub_1ABF24DF4();
    v27 = v30;
    v28[0] = 11;
    sub_1ABAB5E28();
    sub_1ABA97974();
    sub_1ABF24E64();
    v26 = v30;
    v29 = 12;
    sub_1ABA97974();
    v11 = sub_1ABF24E04();
    v13 = v12;
    v14 = sub_1ABAA2084();
    v15(v14);
    v38 = v13 & 1;
    v28[0] = v22;
    *&v28[8] = v21;
    *&v28[16] = v20;
    v28[24] = v19;
    *&v28[32] = v18;
    v28[40] = v8;
    *&v28[48] = v10;
    v28[56] = v17;
    *&v28[64] = v25;
    v28[72] = v24;
    *&v28[80] = v27;
    v28[88] = v26;
    *&v28[96] = v11;
    v28[104] = v13 & 1;
    memcpy(v9, v28, 0x69uLL);
    sub_1ABE9C548(v28, &v30);
    sub_1ABA84B54(v23);
    LOBYTE(v30) = v22;
    sub_1ABE9ED14();
    v31 = v21;
    v32 = v20;
    sub_1ABA9706C();
    v33 = v18;
    sub_1ABAB66A4();
    v34 = v10;
    v35 = v17;
    sub_1ABAA2A78();
    v36 = v11;
    v16 = v13 & 1;
  }

  v37 = v16;
  sub_1ABE47224(&v30);
  sub_1ABA7BC90();
}

uint64_t sub_1ABE9A53C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x737463656A626FLL && a2 == 0xE700000000000000;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001ABF95120 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_1ABF25054();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1ABE9A60C(char a1)
{
  if (a1)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x737463656A626FLL;
  }
}

uint64_t sub_1ABE9A648(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1ABF25234();
  a4(v8, v6);
  return sub_1ABF25294();
}

uint64_t sub_1ABE9A69C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABE9A53C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABE9A6C4(uint64_t a1)
{
  v2 = sub_1ABE9C580();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABE9A700(uint64_t a1)
{
  v2 = sub_1ABE9C580();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void TriplesQuery.Clause.FullTextSearchClause.encode(to:)()
{
  sub_1ABA7BCA8();
  v1 = v0;
  sub_1ABAD219C(&qword_1EB4DBE48, &qword_1ABF71E20);
  sub_1ABA7BB64();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v2);
  sub_1ABA7E338();
  sub_1ABA88DCC(v1, v1[3]);
  v3 = sub_1ABE9C580();

  sub_1ABF252E4();
  sub_1ABAD219C(&unk_1EB4D2E60, &qword_1ABF4D8A0);
  sub_1ABA997A8(&qword_1EB4CF7F8, MEMORY[0x1E69E6160]);
  sub_1ABA7BF34();
  sub_1ABF24F84();

  if (!v3)
  {
    sub_1ABE9C5D4();
    sub_1ABA7BF34();
    sub_1ABF24F84();
  }

  v4 = sub_1ABA7D0EC();
  v5(v4);
  sub_1ABA7FC10();
  sub_1ABA7BC90();
}

void TriplesQuery.Clause.FullTextSearchClause.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1ABA7BCA8();
  v12 = v11;
  v14 = v13;
  sub_1ABAD219C(&qword_1EB4DBE50, &qword_1ABF71E28);
  sub_1ABA7BB64();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v15);
  sub_1ABA7BCE0();
  sub_1ABA9474C();
  sub_1ABE9C580();
  sub_1ABF252C4();
  if (v10)
  {
    sub_1ABA84B54(v12);
  }

  else
  {
    sub_1ABAD219C(&unk_1EB4D2E60, &qword_1ABF4D8A0);
    sub_1ABA84440(&unk_1ED86B980, MEMORY[0x1E69E6190]);
    sub_1ABAB53EC();
    sub_1ABF24E64();
    sub_1ABE9C628();
    sub_1ABF24E64();
    v16 = sub_1ABA8E0A8();
    v17(v16);
    *v14 = a10;
    *(v14 + 8) = v18;

    sub_1ABA84B54(v12);
  }

  sub_1ABA7FC10();
  sub_1ABA7BC90();
}

uint64_t sub_1ABE9AA9C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6D756C6F63 && a2 == 0xE600000000000000;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x707954686374616DLL && a2 == 0xE900000000000065;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_1ABF25054();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1ABE9ABAC(char a1)
{
  if (!a1)
  {
    return 0x6E6D756C6F63;
  }

  if (a1 == 1)
  {
    return 0x707954686374616DLL;
  }

  return 0x65756C6176;
}

uint64_t sub_1ABE9AC34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1ABF25234();
  a4(v8, v6);
  return sub_1ABF25294();
}

uint64_t sub_1ABE9AC88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABE9AA9C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABE9ACB0(uint64_t a1)
{
  v2 = sub_1ABE9C67C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABE9ACEC(uint64_t a1)
{
  v2 = sub_1ABE9C67C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void TriplesQuery.Clause.ComparisonClause.encode(to:)(void *a1)
{
  sub_1ABAD219C(&qword_1EB4DBE60, &qword_1ABF71E30);
  sub_1ABA7BB64();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v3);
  sub_1ABA7E338();
  sub_1ABA88DCC(a1, a1[3]);
  v4 = sub_1ABE9C67C();
  sub_1ABA8D27C(&_s6ClauseV16ComparisonClauseV10CodingKeysON, v5, v4);
  sub_1ABE9C6D0();
  sub_1ABA7BF34();
  sub_1ABF24F84();
  if (!v1)
  {
    sub_1ABE9C724();
    sub_1ABA7BF34();
    sub_1ABF24F84();
    sub_1ABA7BF34();
    sub_1ABF24F54();
  }

  v6 = sub_1ABA7D0EC();
  v7(v6);
  sub_1ABA7FC10();
}

void TriplesQuery.Clause.ComparisonClause.init(from:)()
{
  sub_1ABA95324();
  sub_1ABAD219C(&qword_1EB4DBE80, &qword_1ABF71E38);
  sub_1ABA7BB64();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v3);
  sub_1ABA7BCE0();
  sub_1ABA9474C();
  v4 = sub_1ABE9C67C();
  sub_1ABA8387C(&_s6ClauseV16ComparisonClauseV10CodingKeysON, v5, v4);
  if (!v1)
  {
    sub_1ABE9C778();
    sub_1ABA827AC();
    sub_1ABA88658();
    sub_1ABF24E64();
    sub_1ABE9C7CC();
    sub_1ABA827AC();
    sub_1ABA88658();
    sub_1ABF24E64();
    sub_1ABA88658();
    sub_1ABF24E34();
    v7 = v6;
    v8 = sub_1ABA7BFF0();
    v9(v8);
    *v2 = v11;
    *(v2 + 1) = v10;
    *(v2 + 8) = v7;
  }

  sub_1ABA84B54(v0);
  sub_1ABA8869C();
}

uint64_t sub_1ABE9B090(uint64_t a1)
{
  v2 = sub_1ABE9C820();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABE9B0CC(uint64_t a1)
{
  v2 = sub_1ABE9C820();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TriplesQuery.Clause.AllClause.encode(to:)(void *a1)
{
  v2 = sub_1ABAD219C(&qword_1EB4DBE98, &qword_1ABF71E40);
  sub_1ABA7BB64();
  v4 = v3;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v9 - v6;
  sub_1ABA88DCC(a1, a1[3]);
  sub_1ABE9C820();
  sub_1ABF252E4();
  return (*(v4 + 8))(v7, v2);
}

unint64_t sub_1ABE9B280()
{
  result = qword_1EB4CF588;
  if (!qword_1EB4CF588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CF588);
  }

  return result;
}

unint64_t sub_1ABE9B2D4()
{
  result = qword_1EB4CF530;
  if (!qword_1EB4CF530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CF530);
  }

  return result;
}

unint64_t sub_1ABE9B328()
{
  result = qword_1EB4DBC58;
  if (!qword_1EB4DBC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBC58);
  }

  return result;
}

unint64_t sub_1ABE9B37C()
{
  result = qword_1EB4DBC60;
  if (!qword_1EB4DBC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBC60);
  }

  return result;
}

unint64_t sub_1ABE9B3D0()
{
  result = qword_1EB4DBC68;
  if (!qword_1EB4DBC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBC68);
  }

  return result;
}

unint64_t sub_1ABE9B424()
{
  result = qword_1EB4DBC70;
  if (!qword_1EB4DBC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBC70);
  }

  return result;
}

unint64_t sub_1ABE9B478()
{
  result = qword_1ED86B0A0;
  if (!qword_1ED86B0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED86B0A0);
  }

  return result;
}

unint64_t sub_1ABE9B4CC()
{
  result = qword_1EB4D0090;
  if (!qword_1EB4D0090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0090);
  }

  return result;
}

unint64_t sub_1ABE9B520()
{
  result = qword_1EB4DBCE8;
  if (!qword_1EB4DBCE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBCE8);
  }

  return result;
}

unint64_t sub_1ABE9B574()
{
  result = qword_1EB4DBCF0;
  if (!qword_1EB4DBCF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBCF0);
  }

  return result;
}

unint64_t sub_1ABE9B5C8()
{
  result = qword_1EB4CF4C8;
  if (!qword_1EB4CF4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CF4C8);
  }

  return result;
}

unint64_t sub_1ABE9B61C()
{
  result = qword_1EB4CF5D0;
  if (!qword_1EB4CF5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CF5D0);
  }

  return result;
}

unint64_t sub_1ABE9B670()
{
  result = qword_1EB4DBCF8;
  if (!qword_1EB4DBCF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBCF8);
  }

  return result;
}

unint64_t sub_1ABE9B6C4()
{
  result = qword_1EB4DBD00;
  if (!qword_1EB4DBD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBD00);
  }

  return result;
}

unint64_t sub_1ABE9B718()
{
  result = qword_1EB4CF4B0;
  if (!qword_1EB4CF4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CF4B0);
  }

  return result;
}

unint64_t sub_1ABE9B76C()
{
  result = qword_1EB4CF5F0;
  if (!qword_1EB4CF5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CF5F0);
  }

  return result;
}

unint64_t sub_1ABE9B7C0()
{
  result = qword_1EB4DBD08;
  if (!qword_1EB4DBD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBD08);
  }

  return result;
}

unint64_t sub_1ABE9B814()
{
  result = qword_1EB4DBD10;
  if (!qword_1EB4DBD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBD10);
  }

  return result;
}

unint64_t sub_1ABE9B868()
{
  result = qword_1EB4CF4B8;
  if (!qword_1EB4CF4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CF4B8);
  }

  return result;
}

unint64_t sub_1ABE9B8BC()
{
  result = qword_1EB4CF5B0;
  if (!qword_1EB4CF5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CF5B0);
  }

  return result;
}

unint64_t sub_1ABE9B910()
{
  result = qword_1EB4CF4C0;
  if (!qword_1EB4CF4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CF4C0);
  }

  return result;
}

unint64_t sub_1ABE9B964()
{
  result = qword_1EB4CF590;
  if (!qword_1EB4CF590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CF590);
  }

  return result;
}

unint64_t sub_1ABE9B9B8()
{
  result = qword_1EB4DBD58;
  if (!qword_1EB4DBD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBD58);
  }

  return result;
}

unint64_t sub_1ABE9BA0C()
{
  result = qword_1EB4DBD60;
  if (!qword_1EB4DBD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBD60);
  }

  return result;
}

unint64_t sub_1ABE9BA60()
{
  result = qword_1EB4DBD68;
  if (!qword_1EB4DBD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBD68);
  }

  return result;
}

unint64_t sub_1ABE9BAB4()
{
  result = qword_1EB4DBD70;
  if (!qword_1EB4DBD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBD70);
  }

  return result;
}

unint64_t sub_1ABE9BB08()
{
  result = qword_1EB4DBD78;
  if (!qword_1EB4DBD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBD78);
  }

  return result;
}

unint64_t sub_1ABE9BB5C()
{
  result = qword_1EB4DBD80;
  if (!qword_1EB4DBD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBD80);
  }

  return result;
}

unint64_t sub_1ABE9BBB0()
{
  result = qword_1EB4DBD88;
  if (!qword_1EB4DBD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBD88);
  }

  return result;
}

unint64_t sub_1ABE9BC04()
{
  result = qword_1EB4D00A8;
  if (!qword_1EB4D00A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D00A8);
  }

  return result;
}

unint64_t sub_1ABE9BC58()
{
  result = qword_1EB4D0008;
  if (!qword_1EB4D0008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0008);
  }

  return result;
}

unint64_t sub_1ABE9BCAC()
{
  result = qword_1EB4DBDA0;
  if (!qword_1EB4DBDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBDA0);
  }

  return result;
}

unint64_t sub_1ABE9BD00()
{
  result = qword_1EB4CF5A8;
  if (!qword_1EB4CF5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CF5A8);
  }

  return result;
}

unint64_t sub_1ABE9BD54()
{
  result = qword_1EB4CF4D0;
  if (!qword_1EB4CF4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CF4D0);
  }

  return result;
}

unint64_t sub_1ABE9BDA8()
{
  result = qword_1EB4CE748;
  if (!qword_1EB4CE748)
  {
    sub_1ABAE2850(&qword_1EB4DBDB0, &qword_1ABF71DD0);
    sub_1ABE9BE2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CE748);
  }

  return result;
}

unint64_t sub_1ABE9BE2C()
{
  result = qword_1EB4D0000;
  if (!qword_1EB4D0000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0000);
  }

  return result;
}

unint64_t sub_1ABE9BE80()
{
  result = qword_1EB4DBDC0;
  if (!qword_1EB4DBDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBDC0);
  }

  return result;
}

unint64_t sub_1ABE9BED4()
{
  result = qword_1EB4DBDC8;
  if (!qword_1EB4DBDC8)
  {
    sub_1ABAE2850(&qword_1EB4DBDB0, &qword_1ABF71DD0);
    sub_1ABE9BF58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBDC8);
  }

  return result;
}

unint64_t sub_1ABE9BF58()
{
  result = qword_1EB4DBDD0;
  if (!qword_1EB4DBDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBDD0);
  }

  return result;
}

unint64_t sub_1ABE9BFAC()
{
  result = qword_1EB4CF5E8;
  if (!qword_1EB4CF5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CF5E8);
  }

  return result;
}

unint64_t sub_1ABE9C000()
{
  result = qword_1EB4CF518;
  if (!qword_1EB4CF518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CF518);
  }

  return result;
}

unint64_t sub_1ABE9C054()
{
  result = qword_1EB4DBDE8;
  if (!qword_1EB4DBDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBDE8);
  }

  return result;
}

unint64_t sub_1ABE9C0A8()
{
  result = qword_1EB4CF5C8;
  if (!qword_1EB4CF5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CF5C8);
  }

  return result;
}

unint64_t sub_1ABE9C0FC()
{
  result = qword_1EB4CF468;
  if (!qword_1EB4CF468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CF468);
  }

  return result;
}

unint64_t sub_1ABE9C150()
{
  result = qword_1EB4DBE00;
  if (!qword_1EB4DBE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBE00);
  }

  return result;
}

unint64_t sub_1ABE9C1DC()
{
  result = qword_1EB4DBE10;
  if (!qword_1EB4DBE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBE10);
  }

  return result;
}

unint64_t sub_1ABE9C230()
{
  result = qword_1EB4DBE18;
  if (!qword_1EB4DBE18)
  {
    sub_1ABAE2850(&unk_1EB4DB8E0, &unk_1ABF50A20);
    sub_1ABAE8BC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBE18);
  }

  return result;
}

unint64_t sub_1ABE9C2B4()
{
  result = qword_1EB4DA348;
  if (!qword_1EB4DA348)
  {
    sub_1ABAE2850(&qword_1EB4DA310, &qword_1ABF656F0);
    sub_1ABAA68CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DA348);
  }

  return result;
}

unint64_t sub_1ABE9C338()
{
  result = qword_1EB4DBE28;
  if (!qword_1EB4DBE28)
  {
    sub_1ABAE2850(&qword_1EB4DBE20, &qword_1ABF71E10);
    sub_1ABC3C8F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBE28);
  }

  return result;
}

unint64_t sub_1ABE9C3BC()
{
  result = qword_1EB4DBE38;
  if (!qword_1EB4DBE38)
  {
    sub_1ABAE2850(&unk_1EB4DB8E0, &unk_1ABF50A20);
    sub_1ABAE8B74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBE38);
  }

  return result;
}

unint64_t sub_1ABE9C440()
{
  result = qword_1EB4DA378;
  if (!qword_1EB4DA378)
  {
    sub_1ABAE2850(&qword_1EB4DA310, &qword_1ABF656F0);
    sub_1ABAA6FE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DA378);
  }

  return result;
}

unint64_t sub_1ABE9C4C4()
{
  result = qword_1EB4DBE40;
  if (!qword_1EB4DBE40)
  {
    sub_1ABAE2850(&qword_1EB4DBE20, &qword_1ABF71E10);
    sub_1ABC3CD80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBE40);
  }

  return result;
}

unint64_t sub_1ABE9C580()
{
  result = qword_1EB4CF608;
  if (!qword_1EB4CF608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CF608);
  }

  return result;
}

unint64_t sub_1ABE9C5D4()
{
  result = qword_1EB4CF618;
  if (!qword_1EB4CF618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CF618);
  }

  return result;
}

unint64_t sub_1ABE9C628()
{
  result = qword_1EB4DBE58;
  if (!qword_1EB4DBE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBE58);
  }

  return result;
}

unint64_t sub_1ABE9C67C()
{
  result = qword_1EB4DBE68;
  if (!qword_1EB4DBE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBE68);
  }

  return result;
}

unint64_t sub_1ABE9C6D0()
{
  result = qword_1EB4DBE70;
  if (!qword_1EB4DBE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBE70);
  }

  return result;
}

unint64_t sub_1ABE9C724()
{
  result = qword_1EB4DBE78;
  if (!qword_1EB4DBE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBE78);
  }

  return result;
}

unint64_t sub_1ABE9C778()
{
  result = qword_1EB4DBE88;
  if (!qword_1EB4DBE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBE88);
  }

  return result;
}

unint64_t sub_1ABE9C7CC()
{
  result = qword_1EB4DBE90;
  if (!qword_1EB4DBE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBE90);
  }

  return result;
}

unint64_t sub_1ABE9C820()
{
  result = qword_1EB4DBEA0;
  if (!qword_1EB4DBEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBEA0);
  }

  return result;
}

unint64_t sub_1ABE9C878()
{
  result = qword_1EB4DBEA8;
  if (!qword_1EB4DBEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBEA8);
  }

  return result;
}

unint64_t sub_1ABE9C8D0()
{
  result = qword_1ED870360;
  if (!qword_1ED870360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED870360);
  }

  return result;
}

unint64_t sub_1ABE9C928()
{
  result = qword_1ED870368;
  if (!qword_1ED870368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED870368);
  }

  return result;
}

unint64_t sub_1ABE9C980()
{
  result = qword_1EB4DBEB0;
  if (!qword_1EB4DBEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBEB0);
  }

  return result;
}

unint64_t sub_1ABE9C9D8()
{
  result = qword_1EB4DBEB8;
  if (!qword_1EB4DBEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBEB8);
  }

  return result;
}

_BYTE *_s6ClauseV15TableCodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1ABE9CB28(uint64_t a1, int a2)
{
  if (!a2)
  {
    return sub_1ABA8C590(-1);
  }

  if ((a2 & 0x80000000) == 0 || !*(a1 + 105))
  {
    v2 = *(a1 + 88) >> 1;
    if (v2 > 0x80000000)
    {
      return sub_1ABA8C590(~v2);
    }

    return sub_1ABA8C590(-1);
  }

  return sub_1ABA8C590(*a1 + 0x7FFFFFFF);
}

uint64_t sub_1ABE9CB7C(uint64_t result, char a2)
{
  v2 = *(result + 104) & 1 | (32 * a2);
  *(result + 88) &= 1uLL;
  *(result + 104) = v2;
  return result;
}

uint64_t sub_1ABE9CBC8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 80))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1ABE9CC1C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1ABE9CC90(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 105))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1ABE9CCE4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 105) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 105) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1ABE9CD60(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 9))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1ABE9CDA0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t _s6ClauseV16ComparisonClauseVwet(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && a1[16])
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *a1;
      v4 = v3 >= 2;
      v2 = v3 - 2;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t _s6ClauseV16ComparisonClauseVwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

_BYTE *_s6ClauseV16ComparisonClauseV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

_BYTE *_s6ClauseV11MatchClauseV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xF4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF3)
  {
    v6 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 12;
        }

        break;
    }
  }

  return result;
}

_BYTE *_s6ClauseV14ContainsClauseV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 9;
        }

        break;
    }
  }

  return result;
}

_BYTE *_s6ClauseV4ImplO10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1ABE9D2A0(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

_BYTE *sub_1ABE9D34C(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = sub_1ABA8BE70(result, a2 + 4);
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1ABE9D474(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = sub_1ABA8BE70(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1ABE9D570()
{
  result = qword_1EB4DBEC0;
  if (!qword_1EB4DBEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBEC0);
  }

  return result;
}

unint64_t sub_1ABE9D5C8()
{
  result = qword_1EB4DBEC8;
  if (!qword_1EB4DBEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBEC8);
  }

  return result;
}

unint64_t sub_1ABE9D620()
{
  result = qword_1EB4DBED0;
  if (!qword_1EB4DBED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBED0);
  }

  return result;
}

unint64_t sub_1ABE9D678()
{
  result = qword_1EB4DBED8;
  if (!qword_1EB4DBED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBED8);
  }

  return result;
}

unint64_t sub_1ABE9D6D0()
{
  result = qword_1EB4DBEE0;
  if (!qword_1EB4DBEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBEE0);
  }

  return result;
}

unint64_t sub_1ABE9D728()
{
  result = qword_1EB4DBEE8;
  if (!qword_1EB4DBEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBEE8);
  }

  return result;
}

unint64_t sub_1ABE9D780()
{
  result = qword_1EB4DBEF0;
  if (!qword_1EB4DBEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBEF0);
  }

  return result;
}

unint64_t sub_1ABE9D7D8()
{
  result = qword_1EB4DBEF8;
  if (!qword_1EB4DBEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBEF8);
  }

  return result;
}

unint64_t sub_1ABE9D830()
{
  result = qword_1EB4DBF00;
  if (!qword_1EB4DBF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBF00);
  }

  return result;
}

unint64_t sub_1ABE9D888()
{
  result = qword_1EB4DBF08;
  if (!qword_1EB4DBF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBF08);
  }

  return result;
}

unint64_t sub_1ABE9D8E0()
{
  result = qword_1EB4DBF10;
  if (!qword_1EB4DBF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBF10);
  }

  return result;
}

unint64_t sub_1ABE9D938()
{
  result = qword_1EB4DBF18;
  if (!qword_1EB4DBF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBF18);
  }

  return result;
}

unint64_t sub_1ABE9D990()
{
  result = qword_1EB4DBF20;
  if (!qword_1EB4DBF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBF20);
  }

  return result;
}

unint64_t sub_1ABE9D9E8()
{
  result = qword_1EB4DBF28;
  if (!qword_1EB4DBF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBF28);
  }

  return result;
}

unint64_t sub_1ABE9DA40()
{
  result = qword_1EB4DBF30;
  if (!qword_1EB4DBF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBF30);
  }

  return result;
}

unint64_t sub_1ABE9DA98()
{
  result = qword_1EB4DBF38;
  if (!qword_1EB4DBF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBF38);
  }

  return result;
}

unint64_t sub_1ABE9DAF0()
{
  result = qword_1EB4DBF40;
  if (!qword_1EB4DBF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBF40);
  }

  return result;
}

unint64_t sub_1ABE9DB48()
{
  result = qword_1EB4DBF48;
  if (!qword_1EB4DBF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBF48);
  }

  return result;
}

unint64_t sub_1ABE9DBA0()
{
  result = qword_1EB4DBF50;
  if (!qword_1EB4DBF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBF50);
  }

  return result;
}

unint64_t sub_1ABE9DBF8()
{
  result = qword_1EB4DBF58;
  if (!qword_1EB4DBF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBF58);
  }

  return result;
}

unint64_t sub_1ABE9DC50()
{
  result = qword_1EB4DBF60;
  if (!qword_1EB4DBF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBF60);
  }

  return result;
}

unint64_t sub_1ABE9DCA8()
{
  result = qword_1EB4CF5F8;
  if (!qword_1EB4CF5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CF5F8);
  }

  return result;
}

unint64_t sub_1ABE9DD00()
{
  result = qword_1EB4CF600;
  if (!qword_1EB4CF600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CF600);
  }

  return result;
}

unint64_t sub_1ABE9DD58()
{
  result = qword_1EB4DBF68;
  if (!qword_1EB4DBF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBF68);
  }

  return result;
}

unint64_t sub_1ABE9DDB0()
{
  result = qword_1EB4DBF70;
  if (!qword_1EB4DBF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBF70);
  }

  return result;
}

unint64_t sub_1ABE9DE08()
{
  result = qword_1EB4CF5B8;
  if (!qword_1EB4CF5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CF5B8);
  }

  return result;
}

unint64_t sub_1ABE9DE60()
{
  result = qword_1EB4CF5C0;
  if (!qword_1EB4CF5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CF5C0);
  }

  return result;
}

unint64_t sub_1ABE9DEB8()
{
  result = qword_1EB4CF5D8;
  if (!qword_1EB4CF5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CF5D8);
  }

  return result;
}

unint64_t sub_1ABE9DF10()
{
  result = qword_1EB4CF5E0;
  if (!qword_1EB4CF5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CF5E0);
  }

  return result;
}

unint64_t sub_1ABE9DF68()
{
  result = qword_1EB4CF598;
  if (!qword_1EB4CF598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CF598);
  }

  return result;
}

unint64_t sub_1ABE9DFC0()
{
  result = qword_1EB4CF5A0;
  if (!qword_1EB4CF5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CF5A0);
  }

  return result;
}

unint64_t sub_1ABE9E018()
{
  result = qword_1EB4D0098;
  if (!qword_1EB4D0098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0098);
  }

  return result;
}

unint64_t sub_1ABE9E070()
{
  result = qword_1EB4D00A0;
  if (!qword_1EB4D00A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D00A0);
  }

  return result;
}

unint64_t sub_1ABE9E0C8()
{
  result = qword_1EB4D0040;
  if (!qword_1EB4D0040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0040);
  }

  return result;
}

unint64_t sub_1ABE9E120()
{
  result = qword_1EB4D0048;
  if (!qword_1EB4D0048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0048);
  }

  return result;
}

unint64_t sub_1ABE9E178()
{
  result = qword_1EB4D0020;
  if (!qword_1EB4D0020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0020);
  }

  return result;
}

unint64_t sub_1ABE9E1D0()
{
  result = qword_1EB4D0028;
  if (!qword_1EB4D0028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0028);
  }

  return result;
}

unint64_t sub_1ABE9E228()
{
  result = qword_1EB4D0050;
  if (!qword_1EB4D0050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0050);
  }

  return result;
}

unint64_t sub_1ABE9E280()
{
  result = qword_1EB4D0058;
  if (!qword_1EB4D0058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0058);
  }

  return result;
}

unint64_t sub_1ABE9E2D8()
{
  result = qword_1EB4D0010;
  if (!qword_1EB4D0010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0010);
  }

  return result;
}

unint64_t sub_1ABE9E330()
{
  result = qword_1EB4D0018;
  if (!qword_1EB4D0018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0018);
  }

  return result;
}

unint64_t sub_1ABE9E388()
{
  result = qword_1EB4D0030;
  if (!qword_1EB4D0030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0030);
  }

  return result;
}

unint64_t sub_1ABE9E3E0()
{
  result = qword_1EB4D0038;
  if (!qword_1EB4D0038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0038);
  }

  return result;
}

unint64_t sub_1ABE9E438()
{
  result = qword_1EB4D0060;
  if (!qword_1EB4D0060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0060);
  }

  return result;
}

unint64_t sub_1ABE9E490()
{
  result = qword_1EB4D0068;
  if (!qword_1EB4D0068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0068);
  }

  return result;
}

unint64_t sub_1ABE9E4E8()
{
  result = qword_1EB4D0070;
  if (!qword_1EB4D0070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0070);
  }

  return result;
}

unint64_t sub_1ABE9E540()
{
  result = qword_1EB4D0078;
  if (!qword_1EB4D0078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0078);
  }

  return result;
}

unint64_t sub_1ABE9E598()
{
  result = qword_1EB4D0080;
  if (!qword_1EB4D0080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0080);
  }

  return result;
}

unint64_t sub_1ABE9E5F0()
{
  result = qword_1EB4D0088;
  if (!qword_1EB4D0088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0088);
  }

  return result;
}

unint64_t sub_1ABE9E648()
{
  result = qword_1EB4CF568;
  if (!qword_1EB4CF568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CF568);
  }

  return result;
}

unint64_t sub_1ABE9E6A0()
{
  result = qword_1EB4CF570;
  if (!qword_1EB4CF570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CF570);
  }

  return result;
}

unint64_t sub_1ABE9E6F8()
{
  result = qword_1EB4CF548;
  if (!qword_1EB4CF548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CF548);
  }

  return result;
}

unint64_t sub_1ABE9E750()
{
  result = qword_1EB4CF550;
  if (!qword_1EB4CF550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CF550);
  }

  return result;
}

unint64_t sub_1ABE9E7A8()
{
  result = qword_1EB4CF558;
  if (!qword_1EB4CF558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CF558);
  }

  return result;
}

unint64_t sub_1ABE9E800()
{
  result = qword_1EB4CF560;
  if (!qword_1EB4CF560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CF560);
  }

  return result;
}

unint64_t sub_1ABE9E858()
{
  result = qword_1EB4CF538;
  if (!qword_1EB4CF538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CF538);
  }

  return result;
}

unint64_t sub_1ABE9E8B0()
{
  result = qword_1EB4CF540;
  if (!qword_1EB4CF540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CF540);
  }

  return result;
}

unint64_t sub_1ABE9E908()
{
  result = qword_1EB4CF520;
  if (!qword_1EB4CF520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CF520);
  }

  return result;
}

unint64_t sub_1ABE9E960()
{
  result = qword_1EB4CF528;
  if (!qword_1EB4CF528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CF528);
  }

  return result;
}

unint64_t sub_1ABE9E9B8()
{
  result = qword_1EB4CF578;
  if (!qword_1EB4CF578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CF578);
  }

  return result;
}

unint64_t sub_1ABE9EA10()
{
  result = qword_1EB4CF580;
  if (!qword_1EB4CF580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CF580);
  }

  return result;
}

unint64_t sub_1ABE9EA68()
{
  result = qword_1EB4CF4E8;
  if (!qword_1EB4CF4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CF4E8);
  }

  return result;
}

unint64_t sub_1ABE9EAC0()
{
  result = qword_1EB4CF4F0;
  if (!qword_1EB4CF4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CF4F0);
  }

  return result;
}

unint64_t sub_1ABE9EB18()
{
  result = qword_1EB4CF4D8;
  if (!qword_1EB4CF4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CF4D8);
  }

  return result;
}

unint64_t sub_1ABE9EB70()
{
  result = qword_1EB4CF4E0;
  if (!qword_1EB4CF4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CF4E0);
  }

  return result;
}

unint64_t sub_1ABE9EBC8()
{
  result = qword_1EB4CF500;
  if (!qword_1EB4CF500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CF500);
  }

  return result;
}

unint64_t sub_1ABE9EC20()
{
  result = qword_1EB4CF508;
  if (!qword_1EB4CF508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CF508);
  }

  return result;
}

unint64_t sub_1ABE9EC74()
{
  result = qword_1ED870370[0];
  if (!qword_1ED870370[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED870370);
  }

  return result;
}

uint64_t sub_1ABE9ED2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v38 = a2;
  v39 = a4;
  v11 = sub_1ABAD219C(&qword_1EB4DB820, &qword_1ABF500A0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v31 - v12;
  v14 = sub_1ABF22424();
  MEMORY[0x1EEE9AC00](v14);
  v37 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v31 = &v31 - v17;
  v32 = v18;
  v19 = *(a1 + 16);
  v20 = (a1 + 32);
  v36 = (v18 + 32);
  v43 = MEMORY[0x1E69E7CC0];
  v34 = a3;
  v35 = a5;
  v33 = a6;
  if (v19)
  {
    while (1)
    {
      memcpy(__dst, v20, 0x69uLL);
      memcpy(v41, v20, 0x69uLL);
      sub_1ABE10DCC(__dst, v40);
      sub_1ABEA34EC(v41, v38, a3, v39, a5, a6, v13);
      if (v6)
      {
        break;
      }

      memcpy(v40, v41, 0x69uLL);
      sub_1ABE10E28(v40);
      if (sub_1ABA7E1E0(v13, 1, v14) == 1)
      {
        sub_1ABA925A4(v13, &qword_1EB4DB820, &qword_1ABF500A0);
      }

      else
      {
        v21 = *v36;
        v22 = v31;
        (*v36)(v31, v13, v14);
        v21(v37, v22, v14);
        v23 = v43;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1ABADC9D0();
          v23 = v27;
        }

        v25 = *(v23 + 16);
        v24 = *(v23 + 24);
        v43 = v23;
        if (v25 >= v24 >> 1)
        {
          sub_1ABADC9D0();
          v43 = v28;
        }

        v26 = v43;
        *(v43 + 16) = v25 + 1;
        v21((v26 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v25), v37, v14);
        a3 = v34;
        a5 = v35;
        a6 = v33;
      }

      v20 += 112;
      if (!--v19)
      {
        goto LABEL_11;
      }
    }

    memcpy(v40, v41, 0x69uLL);
    sub_1ABE10E28(v40);

    v29 = v43;
  }

  else
  {
LABEL_11:

    return v43;
  }

  return v29;
}

void (*sub_1ABE9F078(void (*result)(__int128 *), uint64_t a2, uint64_t a3))(__int128 *)
{
  v4 = result;
  v5 = *(a3 + 16);
  v6 = (a3 + 32);
  if (v5)
  {
    while (1)
    {
      v7 = *v6;
      swift_unknownObjectRetain();
      v4(&v7);
      if (v3)
      {
        break;
      }

      result = swift_unknownObjectRelease();
      ++v6;
      if (!--v5)
      {
        return result;
      }
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1ABE9F110(void (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  if (v9)
  {
    while (1)
    {
      v13 = v12;
LABEL_8:
      v14 = (*(a3 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v9)))));
      v15 = v14[1];
      v16[0] = *v14;
      v16[1] = v15;

      a1(v16);
      if (v3)
      {
        break;
      }

      v9 &= v9 - 1;

      v12 = v13;
      if (!v9)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v13 >= v10)
      {
      }

      v9 = *(v6 + 8 * v13);
      ++v12;
      if (v9)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

IntelligencePlatform::TriplesQuerySQLConfig __swiftcall TriplesQuerySQLConfig.init(tableName:ftsTableName:)(Swift::String tableName, Swift::String_optional ftsTableName)
{
  v2->value = tableName;
  v2[1] = ftsTableName;
  result.ftsTableName = ftsTableName;
  result.tableName = tableName;
  return result;
}

uint64_t sub_1ABE9F284(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  sub_1ABAB55C4(a1, a2, a3, a4, a5, a6, a7, a8, v13, v14[0], v14[1], v14[2], v14[3]);
  sub_1ABEA592C();
  sub_1ABE10DCC(v10, v11);
  v8(v14);
  memcpy(__dst, v9, 0x69uLL);
  return sub_1ABE4C0EC(__dst);
}

uint64_t sub_1ABE9F31C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  sub_1ABAB55C4(a1, a2, a3, a4, a5, a6, a7, a8, v13, v14[0], v14[1], v14[2], v14[3]);
  sub_1ABEA592C();
  sub_1ABE971E8(v10, v11);
  v8(v14);
  memcpy(__dst, v9, 0x69uLL);
  return sub_1ABE4C0EC(__dst);
}

void sub_1ABE9F3DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void))
{
  v7 = sub_1ABF22C24();
  sub_1ABA7BB64();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  sub_1ABA7BC58();
  v13 = v12 - v11;
  v14 = a1[3];
  switch(*(v3 + 104) >> 5)
  {
    case 1:
      a3();
      break;
    case 2:
      TriplesQuery.Clause.MatchClause.sqlExpression(config:)();
      break;
    case 3:
      sub_1ABA96B88(v14);
      TriplesQuery.Clause.FullTextSearchClause.sqlExpression(config:)();
      break;
    case 4:
      TriplesQuery.Clause.ComparisonClause.sqlExpression(config:)();
      break;
    case 5:
      sub_1ABA96B88(v14);
      TriplesQuery.Clause.JoinClause.graphIdentifierSQLExpression(config:)();
      break;
    case 6:
      MEMORY[0x1AC5A8250](49, 0xE100000000000000, *(v3 + 32), *(v3 + 40), *(v3 + 48), *(v3 + 56), *(v3 + 64), *(v3 + 72));
      sub_1ABF22BE4();
      (*(v9 + 8))(v13, v7);
      break;
    default:
      v15 = sub_1ABA96B88(v14);
      a2(v15);
      break;
  }
}

void TriplesQuery.Clause.AggregateClause.sqlExpression(config:)()
{
  sub_1ABA8AAB0();
  v2 = v1;
  v52 = sub_1ABF22C24();
  sub_1ABA7BB64();
  v63 = v3;
  MEMORY[0x1EEE9AC00](v4);
  sub_1ABA7C21C();
  v51 = v5;
  sub_1ABA8409C();
  v54 = sub_1ABF22414();
  sub_1ABA7BB64();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  sub_1ABA7C21C();
  v53 = v9;
  sub_1ABA8409C();
  v58 = sub_1ABF22D14();
  sub_1ABA7BB64();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  sub_1ABA7C068();
  v57 = v13;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v14);
  sub_1ABA88E50();
  v48 = v15;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v16);
  sub_1ABA972D4();
  v47 = v17;
  sub_1ABA8409C();
  v18 = sub_1ABF22424();
  sub_1ABA7BB64();
  v20 = v19;
  MEMORY[0x1EEE9AC00](v21);
  sub_1ABA7C21C();
  v64 = v22;
  v23 = *v0;
  v24 = *(v0 + 1);
  v25 = *(v24 + 16);
  v26 = MEMORY[0x1E69E7CC0];
  if (v25)
  {
    v46 = *v0;
    v61 = v2[1];
    v62 = *v2;
    v59 = v2[3];
    v60 = v2[2];
    v80 = MEMORY[0x1E69E7CC0];
    sub_1ABADEC6C(0, v25, 0);
    v27 = (v24 + 32);
    v26 = v80;
    v49 = (v7 + 8);
    v56 = (v11 + 8);
    v28 = v7;
    v50 = v7;
    v55 = v18;
    do
    {
      memcpy(v79, v27, 0x69uLL);
      v29 = BYTE1(v79[0]);
      v30 = *(v79 + 2) | (WORD3(v79[0]) << 32);
      v31 = *(&v79[0] + 1);
      switch(BYTE8(v79[6]) >> 5)
      {
        case 1:
          LOWORD(v65) = v79[0];
          *(&v65 + 2) = *(v79 + 2);
          HIWORD(v65) = WORD2(v30);
          v66 = *(&v79[0] + 1);
          v67 = v79[1];
          v68 = v79[2];
          v69 = v79[3];
          v70 = v79[4];
          TriplesQuery.Clause.ContainsClause.sqlExpression(config:)();
          break;
        case 2:
          LOWORD(v65) = v79[0];
          *(&v65 + 2) = *(v79 + 2);
          HIWORD(v65) = WORD2(v30);
          v66 = *(&v79[0] + 1);
          v67 = v79[1];
          v68 = v79[2];
          v69 = v79[3];
          v70 = v79[4];
          v71 = v79[5];
          v72 = *&v79[6];
          v73 = BYTE8(v79[6]) & 0x1F;
          v74 = v62;
          v75 = v61;
          v76 = v60;
          v77 = v59;
          TriplesQuery.Clause.MatchClause.sqlExpression(config:)();
          break;
        case 3:
          v74 = LOBYTE(v79[0]) | (BYTE1(v79[0]) << 8) | (v30 << 16);
          LOBYTE(v75) = BYTE8(v79[0]);
          sub_1ABA96174();
          TriplesQuery.Clause.FullTextSearchClause.sqlExpression(config:)();
          break;
        case 4:
          if ((v79[0] & 1) == 0)
          {
            LOBYTE(v74) = BYTE1(v79[0]);
            *(&v67 + 1) = &type metadata for TriplesQuery.ComparableColumn;
            *&v68 = sub_1ABEA5750();
            LOBYTE(v65) = 0;
            sub_1ABF22D34();
            TriplesQuery.ComparisonType.compare(text:_:)();
            (*v56)(v47, v58);
            goto LABEL_15;
          }

          *(&v67 + 1) = &type metadata for TriplesQuery.ComparableColumn;
          *&v68 = sub_1ABEA5750();
          LOBYTE(v65) = 1;
          sub_1ABF22D34();
          switch(v29)
          {
            case 1:
              *(&v67 + 1) = v58;
              sub_1ABA8B184(MEMORY[0x1E69A0050]);
              sub_1ABA959AC();
              v37();
              v78 = MEMORY[0x1E69A0160];
              sub_1ABAA4740(MEMORY[0x1E69E63B0]);
              sub_1ABF22AE4();
              break;
            case 2:
              *(&v67 + 1) = v58;
              sub_1ABA8B184(MEMORY[0x1E69A0050]);
              sub_1ABA959AC();
              v35();
              v78 = MEMORY[0x1E69A0160];
              sub_1ABAA4740(MEMORY[0x1E69E63B0]);
              sub_1ABF228C4();
              break;
            case 3:
              *(&v67 + 1) = v58;
              sub_1ABA8B184(MEMORY[0x1E69A0050]);
              sub_1ABA959AC();
              v36();
              v78 = MEMORY[0x1E69A0160];
              sub_1ABAA4740(MEMORY[0x1E69E63B0]);
              sub_1ABF22AF4();
              break;
            default:
              *(&v67 + 1) = v58;
              sub_1ABA8B184(MEMORY[0x1E69A0050]);
              sub_1ABA959AC();
              v32();
              v78 = MEMORY[0x1E69A0160];
              sub_1ABAA4740(MEMORY[0x1E69E63B0]);
              sub_1ABF228B4();
              break;
          }

          sub_1ABA84B54(&v74);
          sub_1ABA84B54(&v65);
          (*v56)(v48, v58);
          sub_1ABE10E28(v79);
          goto LABEL_26;
        case 5:
          switch(LOBYTE(v79[0]))
          {
            case 1:
              *(&v67 + 1) = &type metadata for TriplesQuery.Clause.TableCodingKeys;
              *&v68 = sub_1ABE9EC74();
              v33 = 1;
              goto LABEL_20;
            case 2:
              *(&v67 + 1) = &type metadata for TriplesQuery.Clause.TableCodingKeys;
              *&v68 = sub_1ABE9EC74();
              v33 = 5;
              goto LABEL_20;
            case 3:
              *(&v67 + 1) = &type metadata for TriplesQuery.Clause.TableCodingKeys;
              *&v68 = sub_1ABE9EC74();
              v33 = 2;
              goto LABEL_20;
            case 4:
              *(&v67 + 1) = &type metadata for TriplesQuery.Clause.TableCodingKeys;
              *&v68 = sub_1ABE9EC74();
              v33 = 3;
LABEL_20:
              LOBYTE(v65) = v33;
              sub_1ABF22D34();
              break;
            default:
              sub_1ABAA1DD4();
              sub_1ABF22D24();
              break;
          }

          v65 = sub_1ABE9ED2C(v31, v62, v61, v60, v59, v57);
          sub_1ABF22404();
          sub_1ABAD219C(&qword_1EB4DBF78, &unk_1ABF74130);
          sub_1ABA7D918();
          sub_1ABAB47C4(&qword_1ED870670, &qword_1EB4DBF78, &unk_1ABF74130, v34);
          sub_1ABF23EF4();
          (*v49)(v53, v54);

          (*v56)(v57, v58);
          v28 = v50;
LABEL_26:
          v18 = v55;
          break;
        case 6:
          sub_1ABEA5944();
          sub_1ABF22BE4();
          (*(v63 + 8))(v51, v52);
LABEL_15:
          sub_1ABE10E28(v79);
          break;
        default:
          LOBYTE(v74) = v79[0] & 1;
          v75 = *(&v79[0] + 1);
          sub_1ABA96174();
          TriplesQuery.Clause.AggregateClause.sqlExpression(config:)();
          break;
      }

      v80 = v26;
      v39 = *(v26 + 16);
      v38 = *(v26 + 24);
      if (v39 >= v38 >> 1)
      {
        sub_1ABADEC6C(v38 > 1, v39 + 1, 1);
        v26 = v80;
      }

      *(v26 + 16) = v39 + 1;
      (*(v20 + 32))(v26 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v39, v64, v18);
      v27 += 112;
      --v25;
    }

    while (v25);
    v23 = v46;
  }

  else
  {
    v28 = v7;
  }

  *&v79[0] = v26;
  if (v23)
  {
    sub_1ABF223F4();
  }

  else
  {
    sub_1ABF22404();
  }

  v40 = sub_1ABA8CD18();
  sub_1ABAD219C(v40, v41);
  sub_1ABA7D918();
  sub_1ABA7FD88(v42, v43, v44, v45);
  sub_1ABF23EF4();
  (*(v28 + 8))(v53, v54);

  sub_1ABA8B438();
}