uint64_t ImportExport.ExportOptions.attachmentDownloadDirectoryURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ImportExport.ExportOptions(0) + 28);
  v4 = sub_1A84E558C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ImportExport.ExportOptions.attachmentDownloadDirectoryURL.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ImportExport.ExportOptions(0) + 28);
  v4 = sub_1A84E558C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

unint64_t sub_1A84D1810()
{
  v1 = 0x7A69536863746162;
  v2 = 0xD00000000000001ELL;
  if (*v0 == 2)
  {
    v2 = 0xD000000000000019;
  }

  if (!*v0)
  {
    v1 = 0xD00000000000001ALL;
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

uint64_t sub_1A84D1890@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A84D2334(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A84D18B8(uint64_t a1)
{
  v2 = sub_1A84D1B58();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A84D18F4(uint64_t a1)
{
  v2 = sub_1A84D1B58();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ImportExport.ExportOptions.encode(to:)(void *a1)
{
  v3 = sub_1A83EA2FC(&qword_1EB2E8ED8, &qword_1A850B5B8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  sub_1A82471E0(a1, a1[3]);
  sub_1A84D1B58();
  sub_1A84E68AC();
  v8[15] = 0;
  sub_1A84E66DC();
  if (!v1)
  {
    v8[14] = 1;
    sub_1A84E670C();
    v8[13] = 2;
    sub_1A84E66EC();
    type metadata accessor for ImportExport.ExportOptions(0);
    v8[12] = 3;
    sub_1A84E558C();
    sub_1A84D2118(&qword_1EB2E7200, MEMORY[0x1E6968FB8]);
    sub_1A84E672C();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1A84D1B58()
{
  result = qword_1EB2E8EE0;
  if (!qword_1EB2E8EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8EE0);
  }

  return result;
}

uint64_t ImportExport.ExportOptions.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v3 = sub_1A84E558C();
  v23 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A83EA2FC(&qword_1EB2E8EE8, &qword_1A850B5C0);
  v25 = *(v6 - 8);
  v26 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v22 - v7;
  v9 = type metadata accessor for ImportExport.ExportOptions(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A82471E0(a1, a1[3]);
  sub_1A84D1B58();
  v12 = v27;
  sub_1A84E689C();
  if (!v12)
  {
    v13 = v11;
    v27 = v9;
    v14 = v5;
    v31 = 0;
    v15 = v25;
    *v13 = sub_1A84E661C() & 1;
    v30 = 1;
    v16 = v15;
    *(v13 + 1) = sub_1A84E664C();
    v29 = 2;
    sub_1A84E662C();
    v18 = v13;
    *(v13 + 2) = v19;
    v28 = 3;
    sub_1A84D2118(&qword_1EB2E7218, MEMORY[0x1E6968FD0]);
    v20 = v14;
    v21 = v26;
    sub_1A84E666C();
    (*(v16 + 8))(v8, v21);
    (*(v23 + 32))(v18 + *(v27 + 28), v20, v3);
    sub_1A84B70B0(v18, v24);
  }

  return sub_1A8244788(a1);
}

uint64_t ImportExport.ExportOptions.description.getter()
{
  sub_1A84E646C();
  MEMORY[0x1AC56A990](0x704F74726F707845, 0xED0000736E6F6974);
  MEMORY[0x1AC56A990](0xD00000000000001ELL, 0x80000001A85349F0);
  if (*v0)
  {
    v1 = 1702195828;
  }

  else
  {
    v1 = 0x65736C6166;
  }

  if (*v0)
  {
    v2 = 0xE400000000000000;
  }

  else
  {
    v2 = 0xE500000000000000;
  }

  MEMORY[0x1AC56A990](v1, v2);

  MEMORY[0x1AC56A990](0x536863746162202CLL, 0xED0000203A657A69);
  v3 = sub_1A84E676C();
  MEMORY[0x1AC56A990](v3);

  MEMORY[0x1AC56A990](0xD00000000000001DLL, 0x80000001A8534A10);
  sub_1A84E60EC();
  MEMORY[0x1AC56A990](0xD000000000000022, 0x80000001A8534A30);
  type metadata accessor for ImportExport.ExportOptions(0);
  sub_1A84E558C();
  sub_1A84D2118(&qword_1EB2E8D08, MEMORY[0x1E6968FE0]);
  v4 = sub_1A84E676C();
  MEMORY[0x1AC56A990](v4);

  return 0;
}

uint64_t sub_1A84D2118(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1A84E558C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A84D2188(uint64_t a1)
{
  result = sub_1A84E558C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1A84D2230()
{
  result = qword_1EB2E8EF0;
  if (!qword_1EB2E8EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8EF0);
  }

  return result;
}

unint64_t sub_1A84D2288()
{
  result = qword_1EB2E8EF8;
  if (!qword_1EB2E8EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8EF8);
  }

  return result;
}

unint64_t sub_1A84D22E0()
{
  result = qword_1EB2E8F00;
  if (!qword_1EB2E8F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8F00);
  }

  return result;
}

uint64_t sub_1A84D2334(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD00000000000001ALL && 0x80000001A8534A60 == a2;
  if (v4 || (sub_1A84E67AC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7A69536863746162 && a2 == 0xE900000000000065 || (sub_1A84E67AC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001A8534A80 == a2 || (sub_1A84E67AC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001ELL && 0x80000001A8534AA0 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_1A84E67AC();

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

__n128 ImportExport.ImportedMessageBatch.init(withMessageBatch:importCounts:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a2 + 32);
  sub_1A84D24FC(a1, a3);
  v6 = a3 + *(type metadata accessor for ImportExport.ImportedMessageBatch(0) + 20);
  result = *a2;
  v8 = *(a2 + 16);
  *v6 = *a2;
  *(v6 + 16) = v8;
  *(v6 + 32) = v5;
  return result;
}

uint64_t sub_1A84D24FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImportExport.MessageBatch(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for ImportExport.ImportedMessageBatch(uint64_t a1)
{
  result = qword_1EB2E8F20;
  if (!qword_1EB2E8F20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 ImportExport.ImportedMessageBatch.importCounts.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ImportExport.ImportedMessageBatch(0) + 20);
  v4 = *(v3 + 32);
  result = *v3;
  v6 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v6;
  *(a1 + 32) = v4;
  return result;
}

uint64_t sub_1A84D2620()
{
  if (*v0)
  {
    return 0x6F4374726F706D69;
  }

  else
  {
    return 0x426567617373656DLL;
  }
}

uint64_t sub_1A84D266C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x426567617373656DLL && a2 == 0xEC00000068637461;
  if (v6 || (sub_1A84E67AC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6F4374726F706D69 && a2 == 0xEC00000073746E75)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A84E67AC();

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

uint64_t sub_1A84D2750(uint64_t a1)
{
  v2 = sub_1A84D2990();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A84D278C(uint64_t a1)
{
  v2 = sub_1A84D2990();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ImportExport.ImportedMessageBatch.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1A83EA2FC(&qword_1EB2E8F08, &qword_1A850B780);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13[-v7];
  sub_1A82471E0(a1, a1[3]);
  sub_1A84D2990();
  sub_1A84E68AC();
  LOBYTE(v14) = 0;
  type metadata accessor for ImportExport.MessageBatch(0);
  sub_1A84D2CE8(&qword_1EB2E8650, &protocol conformance descriptor for ImportExport.MessageBatch);
  sub_1A84E672C();
  if (!v2)
  {
    v9 = (v3 + *(type metadata accessor for ImportExport.ImportedMessageBatch(0) + 20));
    v10 = *(v9 + 4);
    v11 = v9[1];
    v14 = *v9;
    v15 = v11;
    v16 = v10;
    v13[15] = 1;
    sub_1A847E61C();
    sub_1A84E672C();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1A84D2990()
{
  result = qword_1EB2E8F10;
  if (!qword_1EB2E8F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8F10);
  }

  return result;
}

uint64_t ImportExport.ImportedMessageBatch.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v4 = type metadata accessor for ImportExport.MessageBatch(0);
  MEMORY[0x1EEE9AC00](v4);
  v22 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A83EA2FC(&qword_1EB2E8F18, &qword_1A850B788);
  v20 = *(v6 - 8);
  v21 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v19 - v7;
  v9 = type metadata accessor for ImportExport.ImportedMessageBatch(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A82471E0(a1, a1[3]);
  sub_1A84D2990();
  sub_1A84E689C();
  if (v2)
  {
    return sub_1A8244788(a1);
  }

  v12 = v20;
  v13 = v11;
  LOBYTE(v23) = 0;
  sub_1A84D2CE8(&qword_1EB2E7E88, &protocol conformance descriptor for ImportExport.MessageBatch);
  v14 = v21;
  sub_1A84E666C();
  sub_1A84D24FC(v22, v13);
  v26 = 1;
  sub_1A847EC5C();
  sub_1A84E666C();
  (*(v12 + 8))(v8, v14);
  v15 = v25;
  v16 = v13 + *(v9 + 20);
  v17 = v24;
  *v16 = v23;
  *(v16 + 16) = v17;
  *(v16 + 32) = v15;
  sub_1A8483510(v13, v19, type metadata accessor for ImportExport.ImportedMessageBatch);
  sub_1A8244788(a1);
  return sub_1A8483578(v13, type metadata accessor for ImportExport.ImportedMessageBatch);
}

uint64_t sub_1A84D2CE8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ImportExport.MessageBatch(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t ImportExport.ImportedMessageBatch.description.getter()
{
  sub_1A84E646C();

  v0 = ImportExport.MessageBatch.description.getter();
  MEMORY[0x1AC56A990](v0);

  MEMORY[0x1AC56A990](0xD000000000000010, 0x80000001A8534AE0);
  type metadata accessor for ImportExport.ImportedMessageBatch(0);
  sub_1A84E646C();

  strcpy(v3, "RecordCounts: ");
  HIBYTE(v3[1]) = -18;
  v1 = ImportExport.RecordCounts.displayDescription.getter();
  MEMORY[0x1AC56A990](v1);

  MEMORY[0x1AC56A990](v3[0], v3[1]);

  return 0xD000000000000016;
}

uint64_t sub_1A84D2ECC(uint64_t a1)
{
  result = type metadata accessor for ImportExport.MessageBatch(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1A84D2F54()
{
  result = qword_1EB2E8F30;
  if (!qword_1EB2E8F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8F30);
  }

  return result;
}

unint64_t sub_1A84D2FAC()
{
  result = qword_1EB2E8F38;
  if (!qword_1EB2E8F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8F38);
  }

  return result;
}

unint64_t sub_1A84D3004()
{
  result = qword_1EB2E8F40;
  if (!qword_1EB2E8F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8F40);
  }

  return result;
}

uint64_t sub_1A84D30C0()
{
  v0 = [objc_opt_self() sharedFeatureFlags];
  v1 = [v0 areDualSIMDevicesExceptionsDisabled];

  return v1 ^ 1;
}

uint64_t sub_1A84D311C()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 registeredSIMIDs];

  v2 = sub_1A84E5FFC();
  return v2;
}

uint64_t sub_1A84D319C()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 ctSubscriptionInfo];

  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = [v1 phoneNumbersOfActiveSubscriptions];

  v3 = sub_1A84E5FFC();
  return v3;
}

uint64_t sub_1A84D3244()
{
  sub_1A84E5B7C();
  _s25MadridServiceInfoProviderCMa();
  swift_initStaticObject();
  sub_1A84D3A08();
  result = sub_1A84E5B6C();
  qword_1EB2E8F48 = result;
  return result;
}

uint64_t sub_1A84D33EC(uint64_t a1)
{
  v1 = [objc_opt_self() sharedInstance];
  v2 = [v1 ctSubscriptionInfo];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1A84E5D8C();
  v4 = [v2 __im_subscriptionContextForForSimID_];

  if (!v4)
  {
    return 0;
  }

  v5 = [v4 phoneNumber];

  if (!v5)
  {
    return 0;
  }

  v6 = sub_1A84E5DBC();

  return v6;
}

void sub_1A84D34E4()
{
  v0 = [objc_opt_self() sharedInstance];
  if (!v0)
  {
    __break(1u);
    goto LABEL_51;
  }

  v1 = v0;
  v2 = [objc_opt_self() iMessageService];
  v3 = [v1 accountsForService_];

  if (!v3)
  {
LABEL_51:
    __break(1u);
    return;
  }

  sub_1A84D39BC();
  v4 = sub_1A84E5FFC();

  if (v4 >> 62)
  {
    goto LABEL_48;
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v30 = v4;
  while (v5)
  {
    v6 = 0;
    v7 = v4 & 0xC000000000000001;
    v8 = v4 & 0xFFFFFFFFFFFFFF8;
    v34 = v4 + 32;
    v9 = MEMORY[0x1E69E7CC0];
    v32 = v4 & 0xC000000000000001;
    v33 = v5;
    v31 = v4 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v7)
      {
        v10 = MEMORY[0x1AC56AF80](v6, v30);
      }

      else
      {
        if (v6 >= *(v8 + 16))
        {
          goto LABEL_43;
        }

        v10 = *(v34 + 8 * v6);
      }

      v11 = v10;
      v12 = __OFADD__(v6++, 1);
      if (v12)
      {
        break;
      }

      if ([v10 _isUsableForSending] && (v13 = objc_msgSend(v11, sel_aliases)) != 0)
      {
        v14 = v13;
        v15 = sub_1A84E5FFC();

        v16 = *(v15 + 16);
        if (v16)
        {
          v17 = v15 + 32;
          v18 = MEMORY[0x1E69E7CC0];
          do
          {
            sub_1A8244F40(v17, v38);
            sub_1A8243DDC(v38, &v35);
            if (swift_dynamicCast())
            {
              v20 = v37;
              if (v37)
              {
                v21 = v36;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v18 = sub_1A824A1FC(0, *(v18 + 2) + 1, 1, v18);
                }

                v23 = *(v18 + 2);
                v22 = *(v18 + 3);
                if (v23 >= v22 >> 1)
                {
                  v18 = sub_1A824A1FC((v22 > 1), v23 + 1, 1, v18);
                }

                *(v18 + 2) = v23 + 1;
                v19 = &v18[16 * v23];
                *(v19 + 4) = v21;
                *(v19 + 5) = v20;
              }
            }

            v17 += 32;
            --v16;
          }

          while (v16);

          v7 = v32;
          v5 = v33;
          v8 = v31;
        }

        else
        {

          v18 = MEMORY[0x1E69E7CC0];
        }
      }

      else
      {

        v18 = MEMORY[0x1E69E7CC0];
      }

      v24 = *(v18 + 2);
      v4 = *(v9 + 2);
      v25 = v4 + v24;
      if (__OFADD__(v4, v24))
      {
        goto LABEL_44;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v25 <= *(v9 + 3) >> 1)
      {
        if (*(v18 + 2))
        {
          goto LABEL_37;
        }
      }

      else
      {
        if (v4 <= v25)
        {
          v27 = v4 + v24;
        }

        else
        {
          v27 = v4;
        }

        v9 = sub_1A824A1FC(isUniquelyReferenced_nonNull_native, v27, 1, v9);
        if (*(v18 + 2))
        {
LABEL_37:
          if ((*(v9 + 3) >> 1) - *(v9 + 2) < v24)
          {
            goto LABEL_46;
          }

          swift_arrayInitWithCopy();

          if (v24)
          {
            v28 = *(v9 + 2);
            v12 = __OFADD__(v28, v24);
            v29 = v28 + v24;
            if (v12)
            {
              goto LABEL_47;
            }

            *(v9 + 2) = v29;
          }

          goto LABEL_7;
        }
      }

      if (v24)
      {
        goto LABEL_45;
      }

LABEL_7:
      if (v6 == v5)
      {
        goto LABEL_49;
      }
    }

    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    v5 = sub_1A84E654C();
    v30 = v4;
  }

LABEL_49:
}

uint64_t sub_1A84D38A8(uint64_t a1)
{
  v1 = objc_opt_self();
  v2 = [v1 sharedInstance];
  v3 = [v2 ctSubscriptionInfo];

  if (!v3)
  {
    return 0;
  }

  v4 = sub_1A84E5D8C();
  v5 = [v3 __im_subscriptionContextForPhoneNumber_];

  if (!v5)
  {
    return 0;
  }

  v6 = [v1 sharedInstance];
  v7 = [v6 copyIsoCountryCodeForSubscriptionContext_];

  v8 = sub_1A84E5DBC();
  return v8;
}

unint64_t sub_1A84D39BC()
{
  result = qword_1EB2E4708;
  if (!qword_1EB2E4708)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB2E4708);
  }

  return result;
}

unint64_t sub_1A84D3A08()
{
  result = qword_1EB2E8F50;
  if (!qword_1EB2E8F50)
  {
    _s25MadridServiceInfoProviderCMa();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8F50);
  }

  return result;
}

uint64_t sub_1A84D3A60()
{
  v0 = sub_1A84E5C9C();
  sub_1A82442B8(v0, qword_1EB2FF3F8);
  sub_1A824431C(v0, qword_1EB2FF3F8);
  sub_1A84E5C6C();
  return sub_1A84E5C8C();
}

Swift::Void __swiftcall IMChorosMonitor.launchStewieForMessaging(withAppForegrounded:)(Swift::Bool withAppForegrounded)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  if (withAppForegrounded)
  {
    v5 = ObjectType;
    [v2 setNeedsShowConnectionUI_];
    [v2 startMonitorIfNeededForReason_];
    if ([v2 isStewieActive])
    {
      if (qword_1EB2E5A20 != -1)
      {
        swift_once();
      }

      v6 = sub_1A84E5C9C();
      sub_1A824431C(v6, qword_1EB2FF3F8);
      oslog = sub_1A84E5C7C();
      v7 = sub_1A84E61BC();
      if (!os_log_type_enabled(oslog, v7))
      {
        goto LABEL_25;
      }

      v8 = swift_slowAlloc();
      *v8 = 0;
      v9 = "Stewie is active, no need to connect, return.";
LABEL_24:
      _os_log_impl(&dword_1A823F000, oslog, v7, v9, v8, 2u);
      MEMORY[0x1AC56D3F0](v8, -1, -1);
LABEL_25:

      return;
    }

    v14 = objc_opt_self();
    v15 = [v2 getState];
    LODWORD(v14) = [v14 isAnyMessagingServicesAvailableFor_];

    if (!v14)
    {
      if (qword_1EB2E5A20 != -1)
      {
        swift_once();
      }

      v25 = sub_1A84E5C9C();
      sub_1A824431C(v25, qword_1EB2FF3F8);
      oslog = sub_1A84E5C7C();
      v7 = sub_1A84E61BC();
      if (!os_log_type_enabled(oslog, v7))
      {
        goto LABEL_25;
      }

      v8 = swift_slowAlloc();
      *v8 = 0;
      v9 = "No stewie service is available for connecting, return.";
      goto LABEL_24;
    }

    v16 = [objc_allocWithZone(MEMORY[0x1E6965078]) init];
    [v16 setReason_];
    if (qword_1EB2E5A20 != -1)
    {
      swift_once();
    }

    v17 = sub_1A84E5C9C();
    sub_1A824431C(v17, qword_1EB2FF3F8);
    v18 = sub_1A84E5C7C();
    v19 = sub_1A84E61BC();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_1A823F000, v18, v19, "Requsting Stewie for messaging...", v20, 2u);
      MEMORY[0x1AC56D3F0](v20, -1, -1);
    }

    v21 = [v2 telephonyClient];
    v22 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v23 = swift_allocObject();
    *(v23 + 16) = v22;
    *(v23 + 24) = v5;
    aBlock[4] = sub_1A84D4AD8;
    aBlock[5] = v23;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A84D4A18;
    aBlock[3] = &unk_1F1B76A28;
    v24 = _Block_copy(aBlock);

    [v21 requestStewieWithContext:v16 completion:v24];
    _Block_release(v24);
  }

  else
  {
    if (qword_1EB2E5A20 != -1)
    {
      swift_once();
    }

    v10 = sub_1A84E5C9C();
    sub_1A824431C(v10, qword_1EB2FF3F8);
    v11 = sub_1A84E5C7C();
    v12 = sub_1A84E61BC();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 67109120;
      _os_log_impl(&dword_1A823F000, v11, v12, "Cannot launch connection UI due to appForegrounded: %{BOOL}d. return.", v13, 8u);
      MEMORY[0x1AC56D3F0](v13, -1, -1);
    }

    [v2 setNeedsShowConnectionUI_];
  }
}

void sub_1A84D3FD0(void *a1, uint64_t a2)
{
  v3 = sub_1A84E5CAC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A84E5CCC();
  v56 = *(v7 - 8);
  v57 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1A84E5CEC();
  v58 = *(v10 - 8);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v51 - v14;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v17 = Strong;
  if (a1)
  {
    v54 = v4;
    v55 = v3;
    swift_getErrorValue();
    v18 = aBlock[7];
    v19 = aBlock[8];
    v20 = a1;
    if (sub_1A84D47C4(v18, v19))
    {
      v21 = [v17 showConnectionUIRetryCount];
      if (!__OFADD__(v21, 1))
      {
        [v17 setShowConnectionUIRetryCount_];
        if ([v17 showConnectionUIRetryCount] <= 2)
        {
          if (qword_1EB2E5A20 != -1)
          {
            swift_once();
          }

          v22 = sub_1A84E5C9C();
          sub_1A824431C(v22, qword_1EB2FF3F8);
          v23 = a1;
          v24 = sub_1A84E5C7C();
          v25 = sub_1A84E619C();

          if (os_log_type_enabled(v24, v25))
          {
            v26 = swift_slowAlloc();
            v53 = v24;
            v27 = v26;
            v28 = swift_slowAlloc();
            *v27 = 138412290;
            v29 = a1;
            v30 = _swift_stdlib_bridgeErrorToNSError();
            *(v27 + 4) = v30;
            *v28 = v30;
            _os_log_impl(&dword_1A823F000, v53, v25, "Encountered xpc error, retry in a bit: %@.", v27, 0xCu);
            sub_1A845CDA8(v28);
            MEMORY[0x1AC56D3F0](v28, -1, -1);
            v31 = v27;
            v24 = v53;
            MEMORY[0x1AC56D3F0](v31, -1, -1);
          }

          sub_1A8460A58();
          v52 = sub_1A84E624C();
          sub_1A84E5CDC();
          sub_1A84E5D0C();
          v32 = *(v58 + 8);
          v58 += 8;
          v53 = v32;
          (v32)(v13, v10);
          v33 = swift_allocObject();
          swift_unknownObjectWeakInit();
          aBlock[4] = sub_1A84D4AE0;
          aBlock[5] = v33;
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 1107296256;
          aBlock[2] = sub_1A824B720;
          aBlock[3] = &unk_1F1B76A50;
          v34 = _Block_copy(aBlock);

          sub_1A84E5A8C();
          aBlock[0] = MEMORY[0x1E69E7CC0];
          sub_1A824B214();
          sub_1A83EA2FC(&unk_1EB2E6680, &qword_1A8500940);
          sub_1A824B26C();
          v35 = v55;
          sub_1A84E63CC();
          v36 = v52;
          MEMORY[0x1AC56AD20](v15, v9, v6, v34);
          _Block_release(v34);

          (*(v54 + 8))(v6, v35);
          (*(v56 + 8))(v9, v57);
          (v53)(v15, v10);
          return;
        }

        [v17 setShowConnectionUIRetryCount_];
        if (qword_1EB2E5A20 != -1)
        {
          swift_once();
        }

        v49 = sub_1A84E5C9C();
        sub_1A824431C(v49, qword_1EB2FF3F8);
        v43 = sub_1A84E5C7C();
        v50 = sub_1A84E619C();
        if (os_log_type_enabled(v43, v50))
        {
          v45 = swift_slowAlloc();
          *v45 = 0;
          _os_log_impl(&dword_1A823F000, v43, v50, "Have tried 3 times to request Stewie for messaging, but still failed for xpc connection. Stop.", v45, 2u);
          goto LABEL_23;
        }

        goto LABEL_24;
      }

      __break(1u);
    }

    else
    {
      [v17 setShowConnectionUIRetryCount_];
      if (qword_1EB2E5A20 == -1)
      {
        goto LABEL_17;
      }
    }

    swift_once();
LABEL_17:
    v41 = sub_1A84E5C9C();
    sub_1A824431C(v41, qword_1EB2FF3F8);
    v42 = a1;
    v43 = sub_1A84E5C7C();
    v44 = sub_1A84E619C();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      *v45 = 138412290;
      v47 = a1;
      v48 = _swift_stdlib_bridgeErrorToNSError();
      *(v45 + 4) = v48;
      *v46 = v48;
      _os_log_impl(&dword_1A823F000, v43, v44, "Error occurred when requesting Stewie for messaging: %@", v45, 0xCu);
      sub_1A845CDA8(v46);
      MEMORY[0x1AC56D3F0](v46, -1, -1);
LABEL_23:
      MEMORY[0x1AC56D3F0](v45, -1, -1);
    }

LABEL_24:

    return;
  }

  [Strong setShowConnectionUIRetryCount_];
  if (qword_1EB2E5A20 != -1)
  {
    swift_once();
  }

  v37 = sub_1A84E5C9C();
  sub_1A824431C(v37, qword_1EB2FF3F8);
  v38 = sub_1A84E5C7C();
  v39 = sub_1A84E61BC();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    *v40 = 0;
    _os_log_impl(&dword_1A823F000, v38, v39, "Stewie requested for messaging successfully.", v40, 2u);
    MEMORY[0x1AC56D3F0](v40, -1, -1);
  }
}

uint64_t sub_1A84D47C4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, v6, a1);
  v7 = sub_1A84E678C();
  if (v7)
  {
    v8 = v7;
    (*(v3 + 8))(v5, a1);
  }

  else
  {
    v8 = swift_allocError();
    (*(v3 + 32))(v9, v5, a1);
  }

  v10 = sub_1A84E547C();

  if ([v10 code] == 4097)
  {
    v11 = [v10 domain];
    v12 = sub_1A84E5DBC();
    v14 = v13;

    if (v12 == sub_1A84E5DBC() && v14 == v15)
    {
      v17 = 1;
    }

    else
    {
      v17 = sub_1A84E67AC();
    }
  }

  else
  {

    v17 = 0;
  }

  return v17 & 1;
}

void sub_1A84D49B8(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    [Strong launchStewieForMessagingWithAppForegrounded_];
  }
}

void sub_1A84D4A18(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

void sub_1A84D4AF0(char *a1@<X8>)
{
  sub_1A84D4C30(v10);
  if (v10[2])
  {
    sub_1A824B2D4(v10, &qword_1EB2E6F58, &qword_1A8501388);
    v3 = 2;
  }

  else
  {
    if ([v1 isReply])
    {
      v4 = [v1 threadOriginatorGUID];
      if (v4)
      {
        v5 = v4;
        sub_1A84E5DBC();

        v6 = [v1 threadOriginatorPart];
        if (v6)
        {
          v7 = v6;
          IMMessageThreadIdentifierGetOriginatorRange();
          IMMessageThreadIdentifierGetOriginatorMessagePart();

          v3 = 1;
          goto LABEL_13;
        }
      }
    }

    v8 = [v1 expressiveSendStyleID];
    if (v8)
    {

      v3 = 4;
    }

    else
    {
      v9 = [v1 balloonBundleID];
      if (v9)
      {

        v3 = 3;
      }

      else
      {
        v3 = 0;
      }
    }
  }

LABEL_13:
  *a1 = v3;
}

void sub_1A84D4C30(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_1A84681BC([v1 associatedMessageType], v39);
  v4 = v39[0];
  if (v39[0] == 18 || (v5 = [v2 associatedMessageGUID]) == 0)
  {
    *(a1 + 48) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
    return;
  }

  v6 = v5;
  v7 = sub_1A84E5DBC();
  v34 = v8;
  v35 = v7;

  if (qword_1EB2E5958 != -1)
  {
    swift_once();
  }

  v9 = word_1EB2E7440;
  v10 = HIBYTE(word_1EB2E7440);
  LODWORD(v11) = unk_1EB2E7444;
  v13 = *(&xmmword_1EB2E7448 + 1);
  v12 = xmmword_1EB2E7448;
  v14 = unk_1EB2E7458;
  v15 = dword_1EB2E745C;
  v16 = [v2 messageSummaryInfo];
  if (v16)
  {
    v32 = v10;
    v17 = v16;
    sub_1A84E5D3C();

    if (sub_1A843D0E4(v4, &unk_1F1B703F0) && sub_1A843D0E4(v4, &unk_1F1B70418))
    {
      v18 = objc_opt_self();
      v19 = sub_1A84E5D2C();

      [v18 geometryDescriptorFromUserInfoDictionary_];

      ImportExport.Message.LayoutDescriptor.init(withAssoociatedMessageGeometryDescriptor:)(v39, v36);
      if (LOBYTE(v36[0]) != 13)
      {
        v14 = v37;
        v15 = v38;
        v10 = v36[0] >> 8;
        v11 = HIDWORD(v36[0]);
        v9 = v36[0];
        v12 = v36[1];
        v13 = v36[2];
        goto LABEL_13;
      }
    }

    else
    {
    }

    LOBYTE(v10) = v32;
  }

LABEL_13:
  if (sub_1A843D0E4(v4, &unk_1F1B70418) || sub_1A843D0E4(v4, &unk_1F1B70440))
  {
    if (qword_1EB2E5950 != -1)
    {
      swift_once();
    }

    v9 = word_1EB2E7420;
    LOBYTE(v10) = HIBYTE(word_1EB2E7420);
    LODWORD(v11) = unk_1EB2E7424;
    v13 = *(&xmmword_1EB2E7428 + 1);
    v12 = xmmword_1EB2E7428;
    v14 = unk_1EB2E7438;
    v15 = dword_1EB2E743C;
  }

  [v2 associatedMessageRange];
  v21 = v20;
  v22 = [v2 associatedMessageEmoji];
  if (v22)
  {
    v33 = v21;
    v23 = v4;
    v24 = v15;
    v25 = v11;
    v26 = v9;
    v27 = v14;
    v28 = v10;
    v10 = v22;
    v29 = sub_1A84E5DBC();
    v31 = v30;

    LOBYTE(v10) = v28;
    v14 = v27;
    v9 = v26;
    LODWORD(v11) = v25;
    v15 = v24;
    v4 = v23;
    v21 = v33;
  }

  else
  {
    v29 = 0;
    v31 = 0;
  }

  *a1 = v4;
  *(a1 + 8) = v35;
  *(a1 + 16) = v34;
  *(a1 + 24) = v21;
  *(a1 + 32) = v29;
  *(a1 + 40) = v31;
  *(a1 + 48) = v9;
  *(a1 + 49) = v10;
  *(a1 + 52) = v11;
  *(a1 + 56) = v12;
  *(a1 + 64) = v13;
  *(a1 + 72) = v14;
  *(a1 + 76) = v15;
}

uint64_t IMDMessageRecordItemType.name.getter(uint64_t a1)
{
  if (a1 <= 3)
  {
    if (a1 <= 1)
    {
      if (!a1)
      {
        return 0x6567617373656DLL;
      }

      if (a1 == 1)
      {
        return 0xD000000000000011;
      }

      return 0x6E776F6E6B6E75;
    }

    if (a1 == 2)
    {
      return 0xD000000000000010;
    }

    else
    {
      return 0x74634170756F7267;
    }
  }

  else
  {
    if (a1 > 5)
    {
      switch(a1)
      {
        case 6:
          return 0x7265766E6F437574;
        case 7:
          return 0xD000000000000017;
        case 8:
          return 0xD000000000000018;
      }

      return 0x6E776F6E6B6E75;
    }

    if (a1 == 4)
    {
      return 0xD000000000000019;
    }

    else
    {
      return 0x416567617373656DLL;
    }
  }
}

void *sub_1A84D50F4(uint64_t a1, uint64_t a2)
{
  v6 = [v3 attachmentRecords];
  sub_1A8244B68(0, &qword_1EB2E85B0, 0x1E69A5D98);
  v7 = sub_1A84E5FFC();

  if (v7 >> 62)
  {
LABEL_24:
    v8 = sub_1A84E654C();
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
LABEL_3:
      v9 = 0;
      v27 = v7 & 0xFFFFFFFFFFFFFF8;
      v28 = v7 & 0xC000000000000001;
      v26 = v7;
      do
      {
        if (v28)
        {
          v10 = MEMORY[0x1AC56AF80](v9, v7);
          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
LABEL_19:
            __break(1u);
LABEL_20:

LABEL_21:

            return v2;
          }
        }

        else
        {
          if (v9 >= *(v27 + 16))
          {
            __break(1u);
            goto LABEL_24;
          }

          v10 = *(v7 + 8 * v9 + 32);
          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            goto LABEL_19;
          }
        }

        v29 = v11;
        v12 = v10;
        v13 = [v10 guid];
        v14 = a2;
        v15 = sub_1A84E5DBC();
        v17 = v16;

        v2 = v12;
        v18 = [v12 originalGUID];
        v19 = sub_1A84E5DBC();
        v21 = v20;

        if (v15 == a1 && v17 == v14)
        {
          goto LABEL_20;
        }

        a2 = v14;
        v23 = sub_1A84E67AC();

        if ((v23 & 1) != 0 || v19 == a1 && v21 == v14)
        {
          goto LABEL_21;
        }

        v24 = sub_1A84E67AC();

        if (v24)
        {

          return v2;
        }

        ++v9;
        v7 = v26;
      }

      while (v29 != v8);
    }
  }

  return 0;
}

void sub_1A84D5350(void *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v6 = swift_allocObject();
  v7 = MEMORY[0x1E69E7CC0];
  *(v6 + 16) = MEMORY[0x1E69E7CC0];
  v8 = [a1 attributedBodyText];
  if (v8)
  {
    v9 = v8;
    if ([v8 __im_countMessageParts] <= 0)
    {

      *a3 = v7;
    }

    else
    {
      v18 = a2;
      v16 = a3;
      v10 = swift_allocObject();
      *(v10 + 16) = 0;
      v11 = swift_allocObject();
      v11[2] = a1;
      v11[3] = v6;
      v11[4] = v10;
      aBlock[4] = sub_1A84D6B18;
      aBlock[5] = v11;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1A84D6300;
      aBlock[3] = &unk_1F1B76B88;
      v12 = _Block_copy(aBlock);
      v13 = a1;

      [v9 __im_visitMessageParts_];
      _Block_release(v12);
      swift_beginAccess();
      v14 = *(v10 + 16);
      if (v14)
      {
        swift_willThrow();
        v15 = v14;

        *v18 = v14;
      }

      else
      {

        swift_beginAccess();
        *v16 = *(v6 + 16);
      }
    }
  }

  else
  {

    *a3 = v7;
  }
}

void sub_1A84D5594(void *a1, uint64_t a2, _BYTE *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v135 = a6;
  v136 = a3;
  v128 = a5;
  v8 = sub_1A84E5C9C();
  v129 = *(v8 - 8);
  v130 = v8;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v123 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v127 = &v123 - v12;
  v13 = type metadata accessor for ImportExport.Attachment(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v126 = &v123 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v134 = (&v123 - v17);
  v18 = sub_1A83EA2FC(&qword_1EB2E6F50, &unk_1A8502920);
  v19 = MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v123 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v123 - v22;
  v24 = sub_1A83EA2FC(&qword_1EB2E8F58, &unk_1A850BB38);
  v25 = MEMORY[0x1EEE9AC00](v24 - 8);
  v131 = &v123 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v123 - v27;
  v29 = type metadata accessor for ImportExport.MessagePart(0);
  v30 = *(v29 - 8);
  v132 = v29;
  v133 = v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v33 = &v123 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x1EEE9AC00](v31);
  v124 = &v123 - v35;
  v36 = MEMORY[0x1EEE9AC00](v34);
  v125 = &v123 - v37;
  MEMORY[0x1EEE9AC00](v36);
  v39 = &v123 - v38;
  v40 = [a1 transferGUID];
  if (v40)
  {
    v41 = v14;
    v42 = v40;
    v43 = sub_1A84E5DBC();
    v45 = v44;

    v46 = sub_1A84D50F4(v43, v45);

    if (!v46)
    {
      return;
    }

    v123 = a4;
    v47 = v46;
    v48 = v134;
    sub_1A8492848(v47, v134);
    sub_1A8467450(v48, v21, type metadata accessor for ImportExport.Attachment);
    (*(v41 + 56))(v21, 0, 1, v13);
    v49 = v123;
    v50 = a1;
    v51 = v131;
    sub_1A83F4684(v49, v50, 0, 0xE000000000000000, 0, v21, v131);
    v76 = v133;
    if ((*(v133 + 48))(v51, 1, v132) == 1)
    {
      sub_1A824B2D4(v51, &qword_1EB2E8F58, &unk_1A850BB38);
      strcpy(v137, "ImportExport.");
      HIWORD(v137[1]) = -4864;
      sub_1A8244B68(0, &qword_1EB2E8198, 0x1E69A5DC8);
      v77 = sub_1A84E69AC();
      MEMORY[0x1AC56A990](v77);

      v78 = v127;
      sub_1A84E5C8C();
      v79 = v126;
      sub_1A8467450(v134, v126, type metadata accessor for ImportExport.Attachment);
      v80 = v49;
      v81 = v50;
      v82 = sub_1A84E5C7C();
      v83 = sub_1A84E619C();

      v84 = &selRef_isGroupTypingMessage;
      v85 = &selRef_generateUnusedChatIdentifierForGroupChatWithServiceName_chatWithChatIdentifierExists_;
      if (os_log_type_enabled(v82, v83))
      {
        v86 = swift_slowAlloc();
        v133 = swift_slowAlloc();
        v137[0] = v133;
        *v86 = 134218498;
        *(v86 + 4) = [v81 messagePartIndex];

        *(v86 + 12) = 2080;
        v87 = [v80 guid];
        v88 = sub_1A84E5DBC();
        v89 = v81;
        v90 = v79;
        v92 = v91;

        v93 = sub_1A82446BC(v88, v92, v137);

        *(v86 + 14) = v93;
        *(v86 + 22) = 2080;
        v94 = ImportExport.Attachment.description.getter();
        v96 = v95;
        v97 = v90;
        v81 = v89;
        v84 = &selRef_isGroupTypingMessage;
        sub_1A8467380(v97, type metadata accessor for ImportExport.Attachment);
        v98 = sub_1A82446BC(v94, v96, v137);

        *(v86 + 24) = v98;
        v85 = &selRef_generateUnusedChatIdentifierForGroupChatWithServiceName_chatWithChatIdentifierExists_;
        _os_log_impl(&dword_1A823F000, v82, v83, "Failed to create message part for message part %ld in message %s with attachment: %s", v86, 0x20u);
        v99 = v133;
        swift_arrayDestroy();
        MEMORY[0x1AC56D3F0](v99, -1, -1);
        MEMORY[0x1AC56D3F0](v86, -1, -1);

        (*(v129 + 8))(v127, v130);
      }

      else
      {

        sub_1A8467380(v79, type metadata accessor for ImportExport.Attachment);
        (*(v129 + 8))(v78, v130);
      }

      v115 = [v80 v85[43]];
      v116 = sub_1A84E5DBC();
      v118 = v117;

      v119 = [v81 v84[391]];
      sub_1A84D6AC4();
      v106 = swift_allocError();
      *v120 = v116;
      *(v120 + 8) = v118;
      *(v120 + 16) = v119;
      *(v120 + 24) = 0;
      *(v120 + 32) = 1;
      swift_willThrow();

      sub_1A8467380(v134, type metadata accessor for ImportExport.Attachment);
LABEL_28:
      v121 = v135;
      swift_beginAccess();
      v122 = *(v121 + 16);
      *(v121 + 16) = v106;

      *v136 = 1;
      return;
    }

    v108 = v125;
    sub_1A84926EC(v51, v125);
    if (sub_1A83F54E0())
    {
      v109 = v124;
      sub_1A8467450(v108, v124, type metadata accessor for ImportExport.MessagePart);
      v110 = v128;
      swift_beginAccess();
      v111 = *(v110 + 16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v110 + 16) = v111;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v111 = sub_1A83EF140(0, v111[2] + 1, 1, v111);
        *(v110 + 16) = v111;
      }

      v114 = v111[2];
      v113 = v111[3];
      if (v114 >= v113 >> 1)
      {
        v111 = sub_1A83EF140((v113 > 1), v114 + 1, 1, v111);
      }

      v111[2] = v114 + 1;
      sub_1A84926EC(v109, v111 + ((*(v76 + 80) + 32) & ~*(v76 + 80)) + *(v76 + 72) * v114);
      *(v110 + 16) = v111;
      swift_endAccess();
    }

    sub_1A8467380(v108, type metadata accessor for ImportExport.MessagePart);
    sub_1A8467380(v134, type metadata accessor for ImportExport.Attachment);
  }

  else
  {
    v126 = v33;
    v127 = v39;
    v131 = v11;
    v52 = [a1 messagePartBody];
    v134 = a4;
    v53 = a1;
    v54 = [v52 string];
    v55 = sub_1A84E5DBC();
    v57 = v56;

    v58 = [v53 links];
    sub_1A84E558C();
    v59 = sub_1A84E5FFC();

    v60 = v134;
    (*(v14 + 56))(v23, 1, 1, v13);
    sub_1A83F4684(v60, v53, v55, v57, v59, v23, v28);
    v61 = v52;
    v62 = v133;
    if ((*(v133 + 48))(v28, 1, v132) == 1)
    {
      sub_1A824B2D4(v28, &qword_1EB2E8F58, &unk_1A850BB38);
      strcpy(v137, "ImportExport.");
      HIWORD(v137[1]) = -4864;
      sub_1A8244B68(0, &qword_1EB2E8198, 0x1E69A5DC8);
      v63 = sub_1A84E69AC();
      MEMORY[0x1AC56A990](v63);

      v64 = v131;
      sub_1A84E5C8C();
      v65 = v53;
      v66 = sub_1A84E5C7C();
      v67 = sub_1A84E619C();
      if (os_log_type_enabled(v66, v67))
      {
        v68 = swift_slowAlloc();
        *v68 = 134217984;
        *(v68 + 4) = [v65 messagePartIndex];

        _os_log_impl(&dword_1A823F000, v66, v67, "Failed to create message part for message part %ld", v68, 0xCu);
        MEMORY[0x1AC56D3F0](v68, -1, -1);
      }

      else
      {

        v66 = v65;
      }

      v100 = v61;

      (*(v129 + 8))(v64, v130);
      v101 = [v60 guid];
      v102 = sub_1A84E5DBC();
      v104 = v103;

      v105 = [v65 messagePartIndex];
      sub_1A84D6AC4();
      v106 = swift_allocError();
      *v107 = v102;
      *(v107 + 8) = v104;
      *(v107 + 16) = v105;
      *(v107 + 24) = 0;
      *(v107 + 32) = 1;
      swift_willThrow();

      goto LABEL_28;
    }

    v69 = v127;
    sub_1A84926EC(v28, v127);
    if (sub_1A83F54E0())
    {
      v70 = v126;
      sub_1A8467450(v69, v126, type metadata accessor for ImportExport.MessagePart);
      v71 = v128;
      swift_beginAccess();
      v72 = *(v71 + 16);
      v73 = swift_isUniquelyReferenced_nonNull_native();
      *(v71 + 16) = v72;
      if ((v73 & 1) == 0)
      {
        v72 = sub_1A83EF140(0, v72[2] + 1, 1, v72);
        *(v71 + 16) = v72;
      }

      v75 = v72[2];
      v74 = v72[3];
      if (v75 >= v74 >> 1)
      {
        v72 = sub_1A83EF140((v74 > 1), v75 + 1, 1, v72);
      }

      v72[2] = v75 + 1;
      sub_1A84926EC(v70, v72 + ((*(v62 + 80) + 32) & ~*(v62 + 80)) + *(v62 + 72) * v75);
      *(v71 + 16) = v72;
      swift_endAccess();

      sub_1A8467380(v69, type metadata accessor for ImportExport.MessagePart);
    }

    else
    {
      sub_1A8467380(v69, type metadata accessor for ImportExport.MessagePart);
    }
  }
}

void sub_1A84D6300(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_1A84D6384(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = sub_1A84E5C9C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1A83EA2FC(&qword_1EB2E6F50, &unk_1A8502920);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v57 - v12;
  v14 = sub_1A83EA2FC(&qword_1EB2E8F58, &unk_1A850BB38);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v57 - v15;
  v17 = type metadata accessor for ImportExport.MessagePart(0);
  v18 = *(v17 - 8);
  v65 = v17;
  v66 = v18;
  MEMORY[0x1EEE9AC00](v17);
  v63 = &v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = [a1 text];
  if (v20)
  {
    v59 = a3;
    v60 = v8;
    v61 = v7;
    v62 = v10;
    v64 = a2;
    v21 = v20;
    v22 = sub_1A84E5DBC();
    v68 = v23;
    v24 = [objc_allocWithZone(MEMORY[0x1E696AAB0]) initWithString_];

    v25 = v24;
    v26 = [objc_allocWithZone(MEMORY[0x1E69A8140]) initWithMessagePartBody:v25 messagePartIndex:0 messagePartRange:{0, sub_1A84E5E7C()}];

    v27 = a1;
    v28 = v26;
    v29 = [v28 links];
    sub_1A84E558C();
    v30 = sub_1A84E5FFC();

    v31 = v28;
    v32 = v27;
    v33 = type metadata accessor for ImportExport.Attachment(0);
    (*(*(v33 - 8) + 56))(v13, 1, 1, v33);
    sub_1A83F4684(v27, v31, v22, v68, v30, v13, v16);
    v34 = v3;
    if (v3)
    {
LABEL_11:

      *v64 = v34;
      return;
    }

    v58 = v31;
    v68 = v25;
    v35 = v66;
    if ((*(v66 + 48))(v16, 1, v65) == 1)
    {
      sub_1A824B2D4(v16, &qword_1EB2E8F58, &unk_1A850BB38);
      strcpy(v67, "ImportExport.");
      HIWORD(v67[1]) = -4864;
      sub_1A8244B68(0, &qword_1EB2E8198, 0x1E69A5DC8);
      v36 = sub_1A84E69AC();
      MEMORY[0x1AC56A990](v36);

      v37 = v62;
      sub_1A84E5C8C();
      v38 = v32;
      v39 = sub_1A84E5C7C();
      v40 = sub_1A84E619C();

      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v67[0] = v42;
        *v41 = 136315138;
        v43 = [v38 guid];
        v44 = sub_1A84E5DBC();
        v46 = v45;

        v47 = sub_1A82446BC(v44, v46, v67);

        *(v41 + 4) = v47;
        _os_log_impl(&dword_1A823F000, v39, v40, "Failed to create message part for message text for message guid: %s", v41, 0xCu);
        sub_1A8244788(v42);
        MEMORY[0x1AC56D3F0](v42, -1, -1);
        MEMORY[0x1AC56D3F0](v41, -1, -1);

        (*(v60 + 8))(v62, v61);
      }

      else
      {

        (*(v60 + 8))(v37, v61);
      }

      v51 = v68;
      v52 = [v38 guid];
      v53 = sub_1A84E5DBC();
      v55 = v54;

      sub_1A84D6AC4();
      v34 = swift_allocError();
      *v56 = v53;
      *(v56 + 8) = v55;
      *(v56 + 16) = 0;
      *(v56 + 24) = 0;
      *(v56 + 32) = 1;
      swift_willThrow();
      v31 = v51;
      v25 = v58;
      goto LABEL_11;
    }

    v49 = v63;
    sub_1A84926EC(v16, v63);
    if (sub_1A83F54E0())
    {
      sub_1A83EA2FC(&qword_1EB2E6EB8, &qword_1A8500CA0);
      v50 = (*(v35 + 80) + 32) & ~*(v35 + 80);
      v48 = swift_allocObject();
      *(v48 + 16) = xmmword_1A85013E0;
      sub_1A84926EC(v49, v48 + v50);
    }

    else
    {

      sub_1A8467380(v49, type metadata accessor for ImportExport.MessagePart);
      v48 = MEMORY[0x1E69E7CC0];
    }

    a3 = v59;
  }

  else
  {
    v48 = MEMORY[0x1E69E7CC0];
  }

  *a3 = v48;
}

uint64_t sub_1A84D6A1C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 33))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 32);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1A84D6A64(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

unint64_t sub_1A84D6AC4()
{
  result = qword_1EB2E8F60;
  if (!qword_1EB2E8F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8F60);
  }

  return result;
}

void *sub_1A84D6B24(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_1A84D832C(*(a1 + 16), 0);
  v4 = sub_1A84D86E8(&v6, v3 + 4, v2, a1);
  sub_1A8267334(v6);
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

id sub_1A84D6C74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = OBJC_IVAR___IMMergedDomainIdentifiers_mergedDomainIdentifiers;
  *&v3[v7] = sub_1A83EC7A4(MEMORY[0x1E69E7CC0]);
  if (a1 && a3)
  {
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *&v3[v7];
    *&v3[v7] = 0x8000000000000000;
    sub_1A848E25C(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *&v3[v7] = v10;
    swift_endAccess();
  }

  else
  {
  }

  v11.receiver = v3;
  v11.super_class = IMMergedDomainIdentifiers;
  return objc_msgSendSuper2(&v11, sel_init, v10);
}

uint64_t sub_1A84D6F54(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v5 = OBJC_IVAR___IMMergedDomainIdentifiers_mergedDomainIdentifiers;
  swift_beginAccess();
  v6 = *(v2 + v5);
  if (*(v6 + 16) && (v7 = sub_1A824B390(a1, a2), (v8 & 1) != 0))
  {
    v9 = *(*(v6 + 56) + 8 * v7);
  }

  else
  {
    v9 = 0;
  }

  swift_endAccess();
  return v9;
}

uint64_t sub_1A84D70BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2 || !a4)
  {
    return 0;
  }

  v9 = OBJC_IVAR___IMMergedDomainIdentifiers_mergedDomainIdentifiers;
  swift_beginAccess();
  v10 = *(v4 + v9);
  if (!*(v10 + 16) || (v11 = sub_1A824B390(a1, a2), (v12 & 1) == 0))
  {
    swift_endAccess();
    return 0;
  }

  v13 = *(*(v10 + 56) + 8 * v11);
  if (*(v13 + 16))
  {

    v14 = sub_1A824B390(a3, a4);
    if (v15)
    {
      v16 = *(*(v13 + 56) + 8 * v14);
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  swift_endAccess();
  return v16;
}

void *sub_1A84D7290(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v3 = OBJC_IVAR___IMMergedDomainIdentifiers_mergedDomainIdentifiers;
  swift_beginAccess();
  v4 = *(v2 + v3);
  v17 = MEMORY[0x1E69E7CC0];
  v5 = 1 << *(v4 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v4 + 64);
  v8 = (v5 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  v10 = 0;
  if (v7)
  {
    goto LABEL_10;
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
      goto LABEL_18;
    }

    if (v11 >= v8)
    {
      break;
    }

    v7 = *(v4 + 64 + 8 * v11);
    ++v10;
    if (v7)
    {
      v10 = v11;
      do
      {
LABEL_10:
        v7 &= v7 - 1;

        result = sub_1A83EE818(v12);
      }

      while (v7);
      continue;
    }
  }

  v13 = sub_1A8249338(v17);

  v14 = *(v13 + 16);
  if (!v14)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v15 = sub_1A84D832C(*(v13 + 16), 0);
  v16 = sub_1A84D8438(&v17, v15 + 4, v14, v13);
  result = sub_1A8267334(v17);
  if (v16 == v14)
  {
    return v15;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t IMMergedDomainIdentifiers.description.getter()
{
  swift_beginAccess();

  sub_1A83EA2FC(&qword_1EB2E88E8, &qword_1A8509AD8);
  v0 = sub_1A84E5D4C();

  return v0;
}

unint64_t sub_1A84D7710(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1A83EC698(MEMORY[0x1E69E7CC0]);
  if (a2)
  {
    v7 = OBJC_IVAR___IMMergedDomainIdentifiers_mergedDomainIdentifiers;
    swift_beginAccess();
    if (*(*(v2 + v7) + 16) && (sub_1A824B390(a1, a2), (v8 & 1) != 0))
    {
      v9 = v6;
      swift_endAccess();
    }

    else
    {
      v9 = v6;
      swift_endAccess();
      v10 = sub_1A83EC698(MEMORY[0x1E69E7CC0]);
    }

    v11 = 0;
    v12 = v10 + 64;
    v13 = 1 << *(v10 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v10 + 64);
    v16 = (v13 + 63) >> 6;
    if (v15)
    {
      while (1)
      {
LABEL_9:
        while (1)
        {
          v17 = __clz(__rbit64(v15));
          v15 &= v15 - 1;
          v18 = v17 | (v11 << 6);
          v19 = *(*(v10 + 56) + 8 * v18);
          if (*(v19 + 16))
          {
            break;
          }

          if (!v15)
          {
            goto LABEL_11;
          }
        }

        v94 = a2;
        v96 = a1;
        v104 = v10;
        v21 = (*(v10 + 48) + 16 * v18);
        v23 = *v21;
        v22 = v21[1];

        v24 = v9;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v110 = v24;
        v106 = v23;
        v108 = v22;
        v26 = sub_1A824B390(v23, v22);
        v28 = v24[2];
        v29 = (v27 & 1) == 0;
        v30 = __OFADD__(v28, v29);
        v31 = v28 + v29;
        if (v30)
        {
          goto LABEL_93;
        }

        v32 = v27;
        if (v24[3] >= v31)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v38 = v26;
            sub_1A848F89C();
            v26 = v38;
          }

          a1 = v96;
          if (v32)
          {
            goto LABEL_24;
          }
        }

        else
        {
          sub_1A848CA14(v31, isUniquelyReferenced_nonNull_native);
          v26 = sub_1A824B390(v23, v108);
          if ((v32 & 1) != (v33 & 1))
          {
            goto LABEL_95;
          }

          a1 = v96;
          if (v32)
          {
LABEL_24:
            v37 = v26;

            v9 = v110;
            *(v110[7] + 8 * v37) = v19;

            goto LABEL_25;
          }
        }

        v24[(v26 >> 6) + 8] |= 1 << v26;
        v34 = (v24[6] + 16 * v26);
        *v34 = v106;
        v34[1] = v108;
        *(v24[7] + 8 * v26) = v19;
        v35 = v24[2];
        v30 = __OFADD__(v35, 1);
        v36 = v35 + 1;
        if (v30)
        {
          goto LABEL_94;
        }

        v9 = v24;
        v24[2] = v36;
LABEL_25:
        v10 = v104;
        a2 = v94;
        if (!v15)
        {
          goto LABEL_11;
        }
      }
    }

    while (1)
    {
LABEL_11:
      v20 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_85;
      }

      if (v20 >= v16)
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v11;
      if (v15)
      {
        v11 = v20;
        goto LABEL_9;
      }
    }

    v6 = v9;
  }

  v39 = OBJC_IVAR___IMMergedDomainIdentifiers_mergedDomainIdentifiers;
  swift_beginAccess();
  v40 = *(v3 + v39);
  v41 = v40 + 64;
  v42 = 1 << *(v40 + 32);
  if (v42 < 64)
  {
    v43 = ~(-1 << v42);
  }

  else
  {
    v43 = -1;
  }

  v44 = v43 & *(v40 + 64);
  v45 = (v42 + 63) >> 6;

  v46 = 0;
LABEL_32:
  while (v44)
  {
LABEL_37:
    v48 = __clz(__rbit64(v44));
    v44 &= v44 - 1;
    v49 = v48 | (v46 << 6);
    v50 = *(*(v40 + 56) + 8 * v49);
    if (a2)
    {
      v51 = (*(v40 + 48) + 16 * v49);
      v52 = *v51 == a1 && v51[1] == a2;
      if (v52 || (sub_1A84E67AC() & 1) != 0)
      {
        continue;
      }
    }

    v95 = a2;
    v97 = a1;
    v101 = v50 + 64;
    v53 = 1 << *(v50 + 32);
    if (v53 < 64)
    {
      v54 = ~(-1 << v53);
    }

    else
    {
      v54 = -1;
    }

    v55 = v54 & *(v50 + 64);
    v100 = (v53 + 63) >> 6;

    v56 = 0;
    v98 = v40;
    v99 = v50;
    while (1)
    {
      if (!v55)
      {
        while (1)
        {
          v59 = v56 + 1;
          if (__OFADD__(v56, 1))
          {
            goto LABEL_86;
          }

          if (v59 >= v100)
          {

            a2 = v95;
            a1 = v97;
            goto LABEL_32;
          }

          v55 = *(v101 + 8 * v59);
          ++v56;
          if (v55)
          {
            v58 = v6;
            goto LABEL_55;
          }
        }
      }

      v58 = v6;
      v59 = v56;
LABEL_55:
      v60 = __clz(__rbit64(v55)) | (v59 << 6);
      v61 = (*(v50 + 48) + 16 * v60);
      v62 = *v61;
      v63 = v61[1];
      v109 = *(*(v50 + 56) + 8 * v60);
      v64 = v58;
      v65 = *(v58 + 16);

      v105 = v63;
      v107 = v62;
      if (v65)
      {
        v66 = v109;

        v67 = sub_1A824B390(v62, v63);
        v68 = MEMORY[0x1E69E7CC0];
        if ((v69 & 1) == 0)
        {
          goto LABEL_60;
        }

        v70 = *(v64[7] + 8 * v67);
      }

      else
      {
        v66 = v109;
        v70 = MEMORY[0x1E69E7CC0];
      }

      v68 = v70;
LABEL_60:
      v102 = v64;
      v71 = *(v66 + 16);
      v72 = *(v68 + 16);
      v73 = v72 + v71;
      if (__OFADD__(v72, v71))
      {
        goto LABEL_87;
      }

      v74 = v68;
      v75 = swift_isUniquelyReferenced_nonNull_native();
      v76 = v74;
      if (!v75 || v73 > *(v74 + 24) >> 1)
      {
        if (v72 <= v73)
        {
          v77 = v72 + v71;
        }

        else
        {
          v77 = v72;
        }

        v76 = sub_1A824A1FC(v75, v77, 1, v74);
      }

      v78 = v107;
      v50 = v99;
      v103 = v76;
      if (*(v109 + 16))
      {
        if ((*(v76 + 3) >> 1) - *(v76 + 2) < v71)
        {
          goto LABEL_90;
        }

        swift_arrayInitWithCopy();
        v78 = v107;

        if (v71)
        {
          v79 = *(v103 + 2);
          v30 = __OFADD__(v79, v71);
          v80 = v79 + v71;
          if (v30)
          {
            goto LABEL_92;
          }

          *(v103 + 2) = v80;
        }
      }

      else
      {

        if (v71)
        {
          goto LABEL_88;
        }
      }

      v81 = swift_isUniquelyReferenced_nonNull_native();
      v82 = sub_1A824B390(v78, v105);
      v84 = v102[2];
      v85 = (v83 & 1) == 0;
      v30 = __OFADD__(v84, v85);
      v86 = v84 + v85;
      if (v30)
      {
        goto LABEL_89;
      }

      v87 = v83;
      if (v102[3] >= v86)
      {
        if ((v81 & 1) == 0)
        {
          v92 = v82;
          sub_1A848F89C();
          v82 = v92;
        }
      }

      else
      {
        sub_1A848CA14(v86, v81);
        v82 = sub_1A824B390(v107, v105);
        if ((v87 & 1) != (v88 & 1))
        {
          goto LABEL_95;
        }
      }

      v55 &= v55 - 1;
      if (v87)
      {
        v57 = v82;

        v6 = v102;
        *(v102[7] + 8 * v57) = v103;
      }

      else
      {
        v6 = v102;
        v102[(v82 >> 6) + 8] |= 1 << v82;
        v89 = (v102[6] + 16 * v82);
        *v89 = v107;
        v89[1] = v105;
        *(v102[7] + 8 * v82) = v103;
        v90 = v102[2];
        v30 = __OFADD__(v90, 1);
        v91 = v90 + 1;
        if (v30)
        {
          goto LABEL_91;
        }

        v102[2] = v91;
      }

      v56 = v59;
      v40 = v98;
    }
  }

  while (1)
  {
    v47 = v46 + 1;
    if (__OFADD__(v46, 1))
    {
      break;
    }

    if (v47 >= v45)
    {

      return v6;
    }

    v44 = *(v41 + 8 * v47);
    ++v46;
    if (v44)
    {
      v46 = v47;
      goto LABEL_37;
    }
  }

  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
LABEL_92:
  __break(1u);
LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  result = sub_1A84E67EC();
  __break(1u);
  return result;
}

uint64_t sub_1A84D7F98()
{
  v1 = OBJC_IVAR___IMMergedDomainIdentifiers_mergedDomainIdentifiers;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v33 = MEMORY[0x1E69E7CC0];
  v3 = v2 + 64;
  v4 = 1 << *(v2 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(v2 + 64);
  v7 = (v4 + 63) >> 6;
  v30 = v2;
  result = swift_bridgeObjectRetain_n();
  v9 = 0;
  v28 = v7;
  v29 = v3;
LABEL_6:
  if (v6)
  {
    v10 = v9;
LABEL_11:
    v11 = *(*(v30 + 56) + ((v10 << 9) | (8 * __clz(__rbit64(v6)))));
    v31 = (v6 - 1) & v6;
    v32 = v11;
    v12 = v11 + 64;
    v13 = 1 << *(v11 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v11 + 64);
    v16 = (v13 + 63) >> 6;
    result = swift_bridgeObjectRetain_n();
    v17 = 0;
    v18 = MEMORY[0x1E69E7CC0];
    while (v15)
    {
LABEL_21:
      v20 = *(*(v32 + 56) + ((v17 << 9) | (8 * __clz(__rbit64(v15)))));
      v21 = *(v20 + 16);
      v22 = *(v18 + 16);
      v23 = v22 + v21;
      if (__OFADD__(v22, v21))
      {
        goto LABEL_36;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0 || v23 > *(v18 + 24) >> 1)
      {
        if (v22 <= v23)
        {
          v24 = v22 + v21;
        }

        else
        {
          v24 = v22;
        }

        result = sub_1A824A1FC(result, v24, 1, v18);
        v18 = result;
      }

      v15 &= v15 - 1;
      if (*(v20 + 16))
      {
        if ((*(v18 + 24) >> 1) - *(v18 + 16) < v21)
        {
          goto LABEL_38;
        }

        swift_arrayInitWithCopy();

        if (v21)
        {
          v25 = *(v18 + 16);
          v26 = __OFADD__(v25, v21);
          v27 = v25 + v21;
          if (v26)
          {
            goto LABEL_39;
          }

          *(v18 + 16) = v27;
        }
      }

      else
      {

        if (v21)
        {
          goto LABEL_37;
        }
      }
    }

    while (1)
    {
      v19 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v19 >= v16)
      {

        result = sub_1A83EE724(v18);
        v9 = v10;
        v7 = v28;
        v3 = v29;
        v6 = v31;
        goto LABEL_6;
      }

      v15 = *(v12 + 8 * v19);
      ++v17;
      if (v15)
      {
        v17 = v19;
        goto LABEL_21;
      }
    }

    __break(1u);
  }

  else
  {
    while (1)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v10 >= v7)
      {

        return v33;
      }

      v6 = *(v3 + 8 * v10);
      ++v9;
      if (v6)
      {
        goto LABEL_11;
      }
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
  return result;
}

void __swiftcall IMMergedDomainIdentifiers.init()(IMMergedDomainIdentifiers *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

unint64_t type metadata accessor for IMMergedDomainIdentifiers()
{
  result = qword_1EB2E8F70;
  if (!qword_1EB2E8F70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB2E8F70);
  }

  return result;
}

void *sub_1A84D832C(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  sub_1A83EA2FC(&unk_1EB2E8DC0, &qword_1A8500C50);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void *sub_1A84D83B0(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  sub_1A83EA2FC(&qword_1EB2E9060, &qword_1A850A730);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void *sub_1A84D8438(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_1A84D8590(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(*(a4 + 56) + ((v12 << 9) | (8 * v17)));
      *v11 = v18;
      if (v14 == v10)
      {
        v22 = v18;
        goto LABEL_24;
      }

      ++v11;
      v19 = v18;
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v21 = v12 + 1;
    }

    else
    {
      v21 = (63 - v7) >> 6;
    }

    v12 = v21 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_1A84D86E8(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t ImportExport.AttachmentDownloadError.description.getter()
{
  v1 = v0;
  sub_1A84E646C();
  MEMORY[0x1AC56A990](0xD000000000000024, 0x80000001A8534CA0);
  sub_1A84E652C();
  MEMORY[0x1AC56A990](0xD000000000000015, 0x80000001A8534CD0);
  MEMORY[0x1AC56A990](v1[1], v1[2]);
  MEMORY[0x1AC56A990](0xD00000000000001CLL, 0x80000001A8534CF0);
  MEMORY[0x1AC56A990](v1[4], v1[5]);
  MEMORY[0x1AC56A990](10272, 0xE200000000000000);
  v2 = sub_1A84E676C();
  MEMORY[0x1AC56A990](v2);

  MEMORY[0x1AC56A990](0xD000000000000019, 0x80000001A8534D10);
  type metadata accessor for ImportExport.AttachmentDownloadError(0);
  ImportExport.Attachment.MissingFileReasons.description.getter();
  MEMORY[0x1AC56A990]();

  return 0;
}

uint64_t type metadata accessor for ImportExport.AttachmentDownloadError(uint64_t a1)
{
  result = qword_1EB2E8FF8;
  if (!qword_1EB2E8FF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ImportExport.AttachmentDownloadError.init(withErrorKind:errorDescription:downloadURL:fileTransferErrorReason:fileTransferErrorReasonDescription:missingFileReasons:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, unint64_t a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>)
{
  v14 = *a8;
  *a9 = *a1;
  v15 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v15 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (!v15)
  {

    a2 = a6;
    a3 = a7;
  }

  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a5;
  *(a9 + 32) = a6;
  *(a9 + 40) = a7;
  v16 = type metadata accessor for ImportExport.AttachmentDownloadError(0);
  result = sub_1A83FB148(a4, a9 + *(v16 + 32));
  *(a9 + *(v16 + 36)) = v14;
  return result;
}

uint64_t sub_1A84D8B0C()
{
  v0 = type metadata accessor for ImportExport.AttachmentDownloadError(0);
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v13 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1A83EA2FC(&qword_1EB2E7068, &unk_1A8501EB0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v13 - v4;
  sub_1A82442B8(v0, qword_1EB2E8F90);
  v6 = sub_1A824431C(v0, qword_1EB2E8F90);
  v7 = sub_1A84E558C();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  *v2 = 2;
  v8 = 0xD000000000000012;
  if (("rReasonDescription" & 0xF00000000000000) != 0)
  {
    v9 = 0xD000000000000012;
  }

  else
  {
    v9 = 0;
  }

  if (("rReasonDescription" & 0xF00000000000000) != 0)
  {
    v10 = 0x80000001A8534DA0;
  }

  else
  {
    v10 = 0xE000000000000000;
  }

  if (("rReasonDescription" & 0x2000000000000000) != 0)
  {
    v8 = v9;
    v11 = v10;
  }

  else
  {
    v11 = 0x80000001A8534DA0;
  }

  *(v2 + 1) = v8;
  *(v2 + 2) = v11;
  *(v2 + 3) = 0;
  *(v2 + 4) = 0;
  *(v2 + 5) = 0xE000000000000000;
  sub_1A83FB148(v5, &v2[*(v0 + 32)]);
  *&v2[*(v0 + 36)] = 0;
  return sub_1A84DA9B0(v2, v6);
}

uint64_t sub_1A84D8CF4(uint64_t a1, uint64_t *a2, char a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for ImportExport.AttachmentDownloadError(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1A83EA2FC(&qword_1EB2E7068, &unk_1A8501EB0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v18 - v13;
  sub_1A82442B8(v9, a2);
  v15 = sub_1A824431C(v9, a2);
  v16 = sub_1A84E558C();
  (*(*(v16 - 8) + 56))(v14, 1, 1, v16);
  *v11 = a3;
  *(v11 + 1) = a4;
  *(v11 + 2) = a5;
  *(v11 + 3) = 0;
  *(v11 + 4) = 0;
  *(v11 + 5) = 0xE000000000000000;
  sub_1A83FB148(v14, &v11[*(v9 + 32)]);
  *&v11[*(v9 + 36)] = 0;
  return sub_1A84DA9B0(v11, v15);
}

uint64_t sub_1A84D8E8C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for ImportExport.AttachmentDownloadError(0);
  v7 = sub_1A824431C(v6, a2);

  return sub_1A83EFFDC(v7, a4);
}

uint64_t ImportExport.AttachmentDownloadError.errorDescription.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t ImportExport.AttachmentDownloadError.fileTransferErrorReasonDescription.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t ImportExport.AttachmentDownloadError.downloadURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ImportExport.AttachmentDownloadError(0) + 32);

  return sub_1A84580FC(v3, a1);
}

uint64_t ImportExport.AttachmentDownloadError.missingFileReasons.getter@<X0>(void *a1@<X8>)
{
  result = type metadata accessor for ImportExport.AttachmentDownloadError(0);
  *a1 = *(v1 + *(result + 36));
  return result;
}

unint64_t sub_1A84D8FD8()
{
  v1 = *v0;
  v2 = 0x6E694B726F727265;
  v3 = 0xD000000000000012;
  if (v1 == 4)
  {
    v3 = 0x64616F6C6E776F64;
  }

  if (v1 == 3)
  {
    v3 = 0xD000000000000022;
  }

  v4 = 0xD000000000000010;
  if (v1 != 1)
  {
    v4 = 0xD000000000000017;
  }

  if (*v0)
  {
    v2 = v4;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1A84D90AC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A84DA750(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A84D90D4(uint64_t a1)
{
  v2 = sub_1A84D9408();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A84D9110(uint64_t a1)
{
  v2 = sub_1A84D9408();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ImportExport.AttachmentDownloadError.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1A83EA2FC(&qword_1EB2E8FC0, &qword_1A850BB48);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11[-v7];
  sub_1A82471E0(a1, a1[3]);
  sub_1A84D9408();
  sub_1A84E68AC();
  v18 = *v3;
  v17 = 0;
  sub_1A84D945C();
  sub_1A84E672C();
  if (!v2)
  {
    v16 = 1;
    sub_1A84E66CC();
    v15 = 2;
    sub_1A84E670C();
    v14 = 3;
    sub_1A84E66CC();
    v9 = type metadata accessor for ImportExport.AttachmentDownloadError(0);
    v13 = 4;
    sub_1A84E558C();
    sub_1A84DA478(&qword_1EB2E7200, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FB8]);
    sub_1A84E66BC();
    v12 = *&v3[*(v9 + 36)];
    v11[15] = 5;
    sub_1A841252C();
    sub_1A84E672C();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1A84D9408()
{
  result = qword_1EB2E8FC8;
  if (!qword_1EB2E8FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8FC8);
  }

  return result;
}

unint64_t sub_1A84D945C()
{
  result = qword_1EB2E8FD0;
  if (!qword_1EB2E8FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8FD0);
  }

  return result;
}

uint64_t ImportExport.AttachmentDownloadError.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v4 = sub_1A83EA2FC(&qword_1EB2E7068, &unk_1A8501EB0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v22 - v5;
  v25 = sub_1A83EA2FC(&qword_1EB2E8FD8, &qword_1A850BB50);
  v7 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v9 = &v22 - v8;
  v10 = type metadata accessor for ImportExport.AttachmentDownloadError(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v26 = a1;
  sub_1A82471E0(a1, v13);
  sub_1A84D9408();
  sub_1A84E689C();
  if (v2)
  {
    return sub_1A8244788(v26);
  }

  v22 = v10;
  v23 = v6;
  v33 = 0;
  sub_1A84D9910();
  v14 = v25;
  sub_1A84E666C();
  v15 = v12;
  *v12 = v34;
  v32 = 1;
  v16 = v7;
  *(v12 + 1) = sub_1A84E660C();
  *(v12 + 2) = v17;
  v31 = 2;
  *(v12 + 3) = sub_1A84E664C();
  v30 = 3;
  *(v12 + 4) = sub_1A84E660C();
  *(v12 + 5) = v18;
  sub_1A84E558C();
  v29 = 4;
  sub_1A84DA478(&qword_1EB2E7218, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FD0]);
  v19 = v23;
  sub_1A84E65FC();
  v20 = v22;
  sub_1A83FB148(v19, v15 + *(v22 + 32));
  v28 = 5;
  sub_1A84125E8();
  sub_1A84E666C();
  (*(v16 + 8))(v9, v14);
  *(v15 + *(v20 + 36)) = v27;
  sub_1A83EFFDC(v15, v24);
  sub_1A8244788(v26);
  return sub_1A83F0040(v15);
}

unint64_t sub_1A84D9910()
{
  result = qword_1EB2E8FE0;
  if (!qword_1EB2E8FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8FE0);
  }

  return result;
}

uint64_t ImportExport.AttachmentDownloadError.ErrorKind.init(rawValue:)@<X0>(char *a3@<X8>)
{
  v4 = sub_1A84E65AC();

  v6 = 4;
  if (v4 < 4)
  {
    v6 = v4;
  }

  *a3 = v6;
  return result;
}

unint64_t ImportExport.AttachmentDownloadError.ErrorKind.rawValue.getter()
{
  v1 = 0x6E776F6E6B6E75;
  v2 = 0x74754F64656D6974;
  if (*v0 != 2)
  {
    v2 = 0x46676E697373696DLL;
  }

  if (*v0)
  {
    v1 = 0xD000000000000012;
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

uint64_t sub_1A84D9A84()
{
  sub_1A84E684C();
  sub_1A84E5E5C();

  return sub_1A84E687C();
}

uint64_t sub_1A84D9B54(uint64_t a1)
{
  sub_1A84E5E5C();
}

uint64_t sub_1A84D9C10(uint64_t a1)
{
  sub_1A84E684C();
  sub_1A84E5E5C();

  return sub_1A84E687C();
}

void sub_1A84D9D98(unint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x6E776F6E6B6E75;
  v4 = 0xE800000000000000;
  v5 = 0x74754F64656D6974;
  if (*v1 != 2)
  {
    v5 = 0x46676E697373696DLL;
    v4 = 0xEB00000000656C69;
  }

  if (*v1)
  {
    v3 = 0xD000000000000012;
    v2 = 0x80000001A852EE70;
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

uint64_t ImportExport.AttachmentDownloadError.hash(into:)(uint64_t a1)
{
  sub_1A84E5E5C();

  MEMORY[0x1AC56B350](*(v1 + 24));
  sub_1A84E5E5C();

  return sub_1A84E5E5C();
}

uint64_t ImportExport.AttachmentDownloadError.hashValue.getter()
{
  sub_1A84E684C();
  sub_1A84E5E5C();

  MEMORY[0x1AC56B350](*(v0 + 24));
  sub_1A84E5E5C();
  sub_1A84E5E5C();
  return sub_1A84E687C();
}

uint64_t sub_1A84DA010(uint64_t a1)
{
  sub_1A84E5E5C();

  MEMORY[0x1AC56B350](*(v1 + 24));
  sub_1A84E5E5C();

  return sub_1A84E5E5C();
}

uint64_t sub_1A84DA0FC(uint64_t a1)
{
  sub_1A84E684C();
  sub_1A84E5E5C();

  MEMORY[0x1AC56B350](*(v1 + 24));
  sub_1A84E5E5C();
  sub_1A84E5E5C();
  return sub_1A84E687C();
}

uint64_t static ImportExport.AttachmentDownloadError.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v3 = 0x6E776F6E6B6E75;
  v4 = *a1;
  v5 = 0xE700000000000000;
  v6 = 0x74754F64656D6974;
  if (v4 == 2)
  {
    v7 = 0xE800000000000000;
  }

  else
  {
    v6 = 0x46676E697373696DLL;
    v7 = 0xEB00000000656C69;
  }

  v8 = 0xD000000000000012;
  v9 = 0x80000001A852EE70;
  if (*a1)
  {
    v5 = 0x80000001A852EE70;
  }

  else
  {
    v8 = 0x6E776F6E6B6E75;
  }

  if (*a1 <= 1u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v6;
  }

  if (v4 <= 1)
  {
    v11 = v5;
  }

  else
  {
    v11 = v7;
  }

  v12 = 0xE800000000000000;
  v13 = 0x74754F64656D6974;
  if (*a2 != 2)
  {
    v13 = 0x46676E697373696DLL;
    v12 = 0xEB00000000656C69;
  }

  if (*a2)
  {
    v3 = 0xD000000000000012;
  }

  else
  {
    v9 = 0xE700000000000000;
  }

  if (*a2 <= 1u)
  {
    v14 = v3;
  }

  else
  {
    v14 = v13;
  }

  if (*a2 <= 1u)
  {
    v15 = v9;
  }

  else
  {
    v15 = v12;
  }

  if (v10 == v14 && v11 == v15)
  {
  }

  else
  {
    v17 = sub_1A84E67AC();

    if ((v17 & 1) == 0)
    {
      return 0;
    }
  }

  if (*(a1 + 3) != *(a2 + 3) || (*(a1 + 4) != *(a2 + 4) || *(a1 + 5) != *(a2 + 5)) && (sub_1A84E67AC() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + 1) == *(a2 + 1) && *(a1 + 2) == *(a2 + 2))
  {
    return 1;
  }

  return sub_1A84E67AC();
}

unint64_t sub_1A84DA3DC()
{
  result = qword_1EB2E8FE8;
  if (!qword_1EB2E8FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8FE8);
  }

  return result;
}

uint64_t sub_1A84DA478(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1A84DA4C0(uint64_t a1, uint64_t a2)
{
  if ((sub_1A84366B0(*a1, *a2) & 1) == 0 || *(a1 + 24) != *(a2 + 24))
  {
    return 0;
  }

  v4 = *(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40);
  if (!v4 && (sub_1A84E67AC() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16))
  {
    return 1;
  }

  return sub_1A84E67AC();
}

void sub_1A84DA590(uint64_t a1)
{
  sub_1A845B27C(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_1A84DA64C()
{
  result = qword_1EB2E9008;
  if (!qword_1EB2E9008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E9008);
  }

  return result;
}

unint64_t sub_1A84DA6A4()
{
  result = qword_1EB2E9010;
  if (!qword_1EB2E9010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E9010);
  }

  return result;
}

unint64_t sub_1A84DA6FC()
{
  result = qword_1EB2E9018;
  if (!qword_1EB2E9018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E9018);
  }

  return result;
}

uint64_t sub_1A84DA750(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E694B726F727265 && a2 == 0xE900000000000064;
  if (v4 || (sub_1A84E67AC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001A8534D30 == a2 || (sub_1A84E67AC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001A8534D50 == a2 || (sub_1A84E67AC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000022 && 0x80000001A8534D70 == a2 || (sub_1A84E67AC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x64616F6C6E776F64 && a2 == 0xEB000000004C5255 || (sub_1A84E67AC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001A85303A0 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_1A84E67AC();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

unint64_t sub_1A84DA95C()
{
  result = qword_1EB2E9020;
  if (!qword_1EB2E9020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E9020);
  }

  return result;
}

uint64_t sub_1A84DA9B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImportExport.AttachmentDownloadError(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_1A84DAA14()
{
  type metadata accessor for ImportExport.ContactManager();
  v0 = swift_allocObject();
  _s14ContactManagerC18AuthorizationStateCMa();
  v1 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v1 + 112) = 0;
  *(v1 + 120) = 0;
  *(v1 + 128) = -1;
  *(v0 + 16) = v1;
  result = [objc_allocWithZone(MEMORY[0x1E695CE18]) init];
  *(v0 + 24) = result;
  qword_1EB2E9030 = v0;
  return result;
}

uint64_t ImportExport.ContactManager.__allocating_init()()
{
  v0 = swift_allocObject();
  _s14ContactManagerC18AuthorizationStateCMa();
  v1 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v1 + 112) = 0;
  *(v1 + 120) = 0;
  *(v1 + 128) = -1;
  *(v0 + 16) = v1;
  *(v0 + 24) = [objc_allocWithZone(MEMORY[0x1E695CE18]) init];
  return v0;
}

uint64_t static ImportExport.ContactManager.shared.getter()
{
  if (qword_1EB2E5A40 != -1)
  {
    swift_once();
  }
}

uint64_t ImportExport.ContactManager.init()()
{
  _s14ContactManagerC18AuthorizationStateCMa();
  v1 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v1 + 112) = 0;
  *(v1 + 120) = 0;
  *(v1 + 128) = -1;
  *(v0 + 16) = v1;
  *(v0 + 24) = [objc_allocWithZone(MEMORY[0x1E695CE18]) init];
  return v0;
}

uint64_t ImportExport.ContactManager.requestAuthorization()()
{
  v1[3] = v0;
  v1[4] = *v0;
  sub_1A83EA2FC(&qword_1EB2E6600, &qword_1A8507BA0);
  v1[5] = swift_task_alloc();
  v2 = sub_1A84E5C9C();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A84DAD58, 0, 0);
}

uint64_t sub_1A84DAD58()
{
  if ([objc_opt_self() authorizationStatusForEntityType_] == 3)
  {

    v1 = v0[1];

    return v1(1);
  }

  else
  {
    v3 = *(v0[3] + 16);
    v0[9] = v3;

    return MEMORY[0x1EEE6DFA0](sub_1A84DAE30, v3, 0);
  }
}

uint64_t sub_1A84DAE30()
{
  v1 = *(v0 + 72);
  v2 = *(v1 + 120);
  *(v0 + 80) = v2;
  v3 = *(v1 + 128);
  *(v0 + 113) = v3;
  sub_1A84DD0BC(v2, v3);

  return MEMORY[0x1EEE6DFA0](sub_1A84DAEA8, 0, 0);
}

uint64_t sub_1A84DAEA8()
{
  v1 = *(v0 + 113);
  if (v1 == 255)
  {
    sub_1A84E5C8C();
    v5 = sub_1A84E5C7C();
    v6 = sub_1A84E617C();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1A823F000, v5, v6, "Requesting CNContactStore authorization...", v7, 2u);
      MEMORY[0x1AC56D3F0](v7, -1, -1);
    }

    v9 = *(v0 + 64);
    v8 = *(v0 + 72);
    v10 = *(v0 + 48);
    v11 = *(v0 + 56);

    (*(v11 + 8))(v9, v10);

    return MEMORY[0x1EEE6DFA0](sub_1A84DB0A0, v8, 0);
  }

  else
  {
    v2 = *(v0 + 80);
    if (v1)
    {
      *(v0 + 16) = v2;
      sub_1A83EA2FC(&unk_1EB2E9050, &unk_1A8501EA0);
      swift_willThrowTypedImpl();

      v3 = *(v0 + 8);
      v4 = 0;
    }

    else
    {

      v3 = *(v0 + 8);
      v4 = v2 & 1;
    }

    return v3(v4);
  }
}

uint64_t sub_1A84DB0A0()
{
  v1 = v0[9];
  if (*(v1 + 112))
  {
    v2 = *(v1 + 112);
  }

  else
  {
    v3 = v0[5];
    v2 = sub_1A84DB474(v0[3], v0[4]);
    *(v1 + 112) = v2;

    v4 = sub_1A84E60BC();
    (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
    v5 = sub_1A84DD0E0();
    v6 = swift_allocObject();
    v6[2] = v1;
    v6[3] = v5;
    v6[4] = v1;
    v6[5] = v2;
    swift_retain_n();

    sub_1A84DCA5C(0, 0, v3, &unk_1A850BF08, v6);
  }

  v0[11] = v2;

  v7 = swift_task_alloc();
  v0[12] = v7;
  v8 = sub_1A83EA2FC(&unk_1EB2E9050, &unk_1A8501EA0);
  *v7 = v0;
  v7[1] = sub_1A84DB264;
  v9 = MEMORY[0x1E69E6370];
  v10 = MEMORY[0x1E69E7288];

  return MEMORY[0x1EEE6DA10](v0 + 14, v2, v9, v8, v10);
}

uint64_t sub_1A84DB264()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_1A84DB3F8;
  }

  else
  {
    v2 = sub_1A84DB378;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A84DB378()
{

  v1 = *(v0 + 112);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1A84DB3F8()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_1A84DB474(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A83EA2FC(&qword_1EB2E6600, &qword_1A8507BA0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - v5;
  v7 = sub_1A84E60BC();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = a1;
  v8[5] = a2;

  return sub_1A84DBD68(0, 0, v6, &unk_1A850BFE8, v8);
}

uint64_t sub_1A84DB580(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1A84DB5A4, 0, 0);
}

uint64_t sub_1A84DB5A4()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *(v1 + 16) = *(v0 + 24);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_1A84DB694;
  v3 = *(v0 + 16);
  v4 = MEMORY[0x1E69E6370];

  return MEMORY[0x1EEE6DE38](v3, 0, 0, 0xD000000000000016, 0x80000001A8534EB0, sub_1A84DD3E4, v1, v4);
}

uint64_t sub_1A84DB694()
{
  v2 = *v1;
  *(v2 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1A84DB7D0, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1A84DB7D0()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1A84DB834(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A83EA2FC(&qword_1EB2E9068, &unk_1A850BFF0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = aBlock - v9;
  v11 = *(a2 + 24);
  (*(v7 + 16))(aBlock - v9, a1, v6);
  v12 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v13 = swift_allocObject();
  (*(v7 + 32))(v13 + v12, v10, v6);
  *(v13 + ((v8 + v12 + 7) & 0xFFFFFFFFFFFFFFF8)) = a3;
  aBlock[4] = sub_1A84DD3EC;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A84DBCF0;
  aBlock[3] = &unk_1F1B76DA0;
  v14 = _Block_copy(aBlock);

  [v11 requestAccessForEntityType:0 completionHandler:v14];
  _Block_release(v14);
}

uint64_t sub_1A84DBA00(char a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1A84E5C9C();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v26 - v12;
  if (a2)
  {
    v14 = a2;
    sub_1A84A1368(a4);
    v15 = a2;
    v16 = sub_1A84E5C7C();
    v17 = sub_1A84E619C();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138412290;
      v20 = a2;
      v21 = _swift_stdlib_bridgeErrorToNSError();
      *(v18 + 4) = v21;
      *v19 = v21;
      _os_log_impl(&dword_1A823F000, v16, v17, "CNContactStore authorization failed with error: %@", v18, 0xCu);
      sub_1A824B2D4(v19, &unk_1EB2E9070, &unk_1A8501A90);
      MEMORY[0x1AC56D3F0](v19, -1, -1);
      MEMORY[0x1AC56D3F0](v18, -1, -1);
    }

    (*(v8 + 8))(v11, v7);
    v26 = a2;
    sub_1A83EA2FC(&qword_1EB2E9068, &unk_1A850BFF0);
    return sub_1A84E606C();
  }

  else
  {
    sub_1A84A1368(a4);
    v23 = sub_1A84E5C7C();
    v24 = sub_1A84E617C();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_1A823F000, v23, v24, "CNContactStore authorization granted", v25, 2u);
      MEMORY[0x1AC56D3F0](v25, -1, -1);
    }

    (*(v8 + 8))(v13, v7);
    v27 = a1 & 1;
    sub_1A83EA2FC(&qword_1EB2E9068, &unk_1A850BFF0);
    return sub_1A84E607C();
  }
}

void sub_1A84DBCF0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_1A84DBD68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1A83EA2FC(&qword_1EB2E6600, &qword_1A8507BA0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v22 - v9;
  sub_1A84D0904(a3, v22 - v9);
  v11 = sub_1A84E60BC();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_1A824B2D4(v10, &qword_1EB2E6600, &qword_1A8507BA0);
  }

  else
  {
    sub_1A84E60AC();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1A84E605C();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_1A84E5E1C() + 32;

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

      sub_1A824B2D4(a3, &qword_1EB2E6600, &qword_1A8507BA0);

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

  sub_1A824B2D4(a3, &qword_1EB2E6600, &qword_1A8507BA0);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

double static ImportExport.ContactManager.defaultKeys.getter()
{
  if (qword_1EB2E5A48 != -1)
  {
    swift_once();
  }

  return result;
}

uint64_t ImportExport.ContactManager.fetchContact(for:keysToFetch:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  v5 = swift_task_alloc();
  v4[7] = v5;
  *v5 = v4;
  v5[1] = sub_1A84DC118;

  return ImportExport.ContactManager.requestAuthorization()();
}

uint64_t sub_1A84DC118(char a1)
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
    *(v4 + 64) = a1 & 1;

    return MEMORY[0x1EEE6DFA0](sub_1A84DC2A4, 0, 0);
  }
}

uint64_t sub_1A84DC2A4()
{
  if (*(v0 + 64) != 1)
  {
    v6 = 0;
    goto LABEL_5;
  }

  v1 = *(*(v0 + 48) + 24);
  v2 = sub_1A84E5D8C();
  sub_1A83EA2FC(&qword_1EB2E6E30, &qword_1A8500C28);
  v3 = sub_1A84E5FEC();
  *(v0 + 16) = 0;
  v4 = [v1 unifiedContactWithIdentifier:v2 keysToFetch:v3 error:v0 + 16];

  v5 = *(v0 + 16);
  if (v4)
  {
    v6 = v4;
LABEL_5:
    v7 = *(v0 + 8);

    return v7(v6);
  }

  v9 = v5;
  sub_1A84E548C();

  swift_willThrow();
  v10 = *(v0 + 8);

  return v10();
}

uint64_t ImportExport.ContactManager.deinit()
{

  return v0;
}

uint64_t ImportExport.ContactManager.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1A84DC4A0()
{
  sub_1A83EA2FC(&qword_1EB2E9060, &qword_1A850A730);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1A850BEE0;
  v1 = objc_opt_self();
  *(v0 + 32) = [v1 descriptorForRequiredKeysForStyle_];
  *(v0 + 40) = [v1 descriptorForRequiredKeysForStyle_];
  *(v0 + 48) = [v1 descriptorForRequiredKeysForDelimiter];
  *(v0 + 56) = [v1 descriptorForRequiredKeysForNameOrder];
  sub_1A84E5DBC();
  sub_1A84E5DBC();
  sub_1A84E5DBC();
  sub_1A84E5DBC();
  sub_1A84E5DBC();
  sub_1A84E5DBC();
  sub_1A84E5DBC();
  sub_1A84E5DBC();
  sub_1A84E5DBC();
  sub_1A84E5DBC();
  sub_1A84E5DBC();
  sub_1A84E5DBC();
  sub_1A84E5DBC();
  sub_1A84E5DBC();
  v4 = MEMORY[0x1E69E7CC0];
  sub_1A84E64FC();
  for (i = 0; i != 224; i += 16)
  {

    sub_1A84E5D8C();

    sub_1A84E64DC();
    sub_1A84E650C();
    sub_1A84E651C();
    sub_1A84E64EC();
  }

  swift_arrayDestroy();
  result = sub_1A83EEAD4(v4);
  qword_1EB2E9038 = v0;
  return result;
}

uint64_t sub_1A84DC75C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  v7 = swift_task_alloc();
  *(v5 + 24) = v7;
  v8 = sub_1A83EA2FC(&unk_1EB2E9050, &unk_1A8501EA0);
  *v7 = v5;
  v7[1] = sub_1A84DC828;
  v9 = MEMORY[0x1E69E6370];
  v10 = MEMORY[0x1E69E7288];

  return MEMORY[0x1EEE6DA10](v5 + 40, a5, v9, v8, v10);
}

uint64_t sub_1A84DC828()
{
  v2 = *(*v1 + 16);
  *(*v1 + 32) = v0;

  if (v0)
  {
    v3 = sub_1A84DC9D4;
  }

  else
  {
    v3 = sub_1A84DC950;
  }

  return MEMORY[0x1EEE6DFA0](v3, v2, 0);
}

uint64_t sub_1A84DC950()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 120);
  *(v1 + 120) = *(v0 + 40);
  v3 = *(v1 + 128);
  *(v1 + 128) = 0;
  sub_1A84DD248(v2, v3);
  *(*(v0 + 16) + 112) = 0;

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1A84DC9D4()
{
  v1 = v0[2];
  v2 = *(v1 + 120);
  *(v1 + 120) = v0[4];
  v3 = *(v1 + 128);
  *(v1 + 128) = 1;
  sub_1A84DD248(v2, v3);
  *(v0[2] + 112) = 0;

  v4 = v0[1];

  return v4();
}

uint64_t sub_1A84DCA5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1A83EA2FC(&qword_1EB2E6600, &qword_1A8507BA0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_1A84D0904(a3, v25 - v10);
  v12 = sub_1A84E60BC();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1A824B2D4(v11, &qword_1EB2E6600, &qword_1A8507BA0);
  }

  else
  {
    sub_1A84E60AC();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1A84E605C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1A84E5E1C() + 32;
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

      sub_1A824B2D4(a3, &qword_1EB2E6600, &qword_1A8507BA0);

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

  sub_1A824B2D4(a3, &qword_1EB2E6600, &qword_1A8507BA0);
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

uint64_t sub_1A84DCD4C()
{

  sub_1A84DD248(*(v0 + 120), *(v0 + 128));
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t ImportExportParticipantAddress.fetchContactIfAvailable(keysToFetch:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1A84DCDC0, 0, 0);
}

uint64_t sub_1A84DCDC0()
{
  v1 = (*(v0[4] + 72))(v0[3]);
  v0[6] = v2;
  if (v2)
  {
    v3 = v1;
    v4 = v2;
    if (qword_1EB2E5A40 != -1)
    {
      swift_once();
    }

    v5 = swift_task_alloc();
    v0[7] = v5;
    *v5 = v0;
    v5[1] = sub_1A84DCF00;
    v6 = v0[2];

    return ImportExport.ContactManager.fetchContact(for:keysToFetch:)(v3, v4, v6);
  }

  else
  {
    v8 = v0[1];

    return v8(0);
  }
}

uint64_t sub_1A84DCF00(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1A84DD058, 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t sub_1A84DD058()
{

  v1 = *(v0 + 8);

  return v1();
}

id sub_1A84DD0BC(id result, char a2)
{
  if (a2 != -1)
  {
    return sub_1A84DD0D4(result, a2 & 1);
  }

  return result;
}

id sub_1A84DD0D4(id result, char a2)
{
  if (a2)
  {
    return result;
  }

  return result;
}

unint64_t sub_1A84DD0E0()
{
  result = qword_1EB2E9048;
  if (!qword_1EB2E9048)
  {
    _s14ContactManagerC18AuthorizationStateCMa();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E9048);
  }

  return result;
}

uint64_t sub_1A84DD138(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1A82505F4;

  return sub_1A84DC75C(a1, v4, v5, v7, v6);
}

void sub_1A84DD248(void *result, char a2)
{
  if (a2 != -1)
  {
    sub_1A84DD260(result, a2 & 1);
  }
}

void sub_1A84DD260(id a1, char a2)
{
  if (a2)
  {
  }
}

uint64_t sub_1A84DD26C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A824FBE0;

  return sub_1A8248560(a1, v4);
}

uint64_t sub_1A84DD324(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1A82505F4;

  return sub_1A84DB580(a1, v4, v5, v7, v6);
}

uint64_t sub_1A84DD3EC(char a1, void *a2)
{
  v5 = *(sub_1A83EA2FC(&qword_1EB2E9068, &unk_1A850BFF0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1A84DBA00(a1, a2, v2 + v6, v7);
}

void *sub_1A84DD4C4(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v13 = sub_1A84E5DBC();
  v15 = v14;
  v16 = sub_1A84E5D3C();
  if (a8)
  {
    v17 = sub_1A84E5DBC();
    a8 = v18;
  }

  else
  {
    v17 = 0;
  }

  v19 = a3;
  v20 = a1;
  v21 = sub_1A84DD5D8(v13, v15, a5, a6, v16, v17, a8);

  return v21;
}

uint64_t sub_1A84DD5D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v9 = sub_1A84E5D2C();
  v10 = [v7 adjustMessageSummaryInfoForSending_];

  sub_1A84E5D3C();
  v11 = sub_1A84E5D2C();
  v28 = sub_1A8442C90;
  v29 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v25 = 1107296256;
  v26 = sub_1A8442D50;
  v27 = &unk_1F1B76DC8;
  v12 = _Block_copy(&aBlock);

  v28 = sub_1A8442D4C;
  v29 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v25 = 1107296256;
  v26 = sub_1A8442D50;
  v27 = &unk_1F1B76DF0;
  v13 = _Block_copy(&aBlock);

  v14 = [v7 backwardCompatibilityStringWithMessageSummaryInfo:v11 isAdaptiveImageGlyphProvider:v12 isCommSafetySensitiveProvider:v13];
  _Block_release(v12);

  _Block_release(v13);
  result = swift_isEscapingClosureAtFileLocation();
  if (result)
  {
    __break(1u);
    goto LABEL_9;
  }

  result = swift_isEscapingClosureAtFileLocation();
  if (result)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v16 = IMCreateSuperFormatStringFromPlainTextString();

  v17 = sub_1A84E5D8C();
  v18 = [v7 associatedMessageType];
  v19 = [v7 associatedMessageEmoji];
  if (!v19)
  {
    sub_1A84E5DBC();
    v19 = sub_1A84E5D8C();
  }

  v20 = sub_1A84E5D2C();

  if (a7)
  {
    a7 = sub_1A84E5D8C();
  }

  v21 = [objc_opt_self() instantMessageWithAssociatedMessageContent:v16 associatedMessageGUID:v17 associatedMessageType:v18 associatedMessageRange:a3 associatedMessageEmoji:a4 messageSummaryInfo:v19 threadIdentifier:{v20, a7}];

  return v21;
}

id IMCoreHelloWorldClass.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id IMCoreHelloWorldClass.init()()
{
  v1 = OBJC_IVAR___IMCoreHelloWorldClass_Impl_sharedUtilitiesHelloWorld;
  *&v0[v1] = [objc_allocWithZone(sub_1A84E58FC()) init];
  v2 = OBJC_IVAR___IMCoreHelloWorldClass_Impl_persistenceHelloWorld;
  *&v0[v2] = [objc_allocWithZone(sub_1A84E57CC()) init];
  v4.receiver = v0;
  v4.super_class = type metadata accessor for IMCoreHelloWorldClass();
  return objc_msgSendSuper2(&v4, sel_init);
}

id IMCoreHelloWorldClass.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IMCoreHelloWorldClass();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t IMCoreHelloWorld.init()()
{
  sub_1A84E579C();
  type metadata accessor for IMCoreHelloWorld(0);
  return sub_1A84E579C();
}

uint64_t type metadata accessor for IMCoreHelloWorld(uint64_t a1)
{
  result = qword_1EB2E9090;
  if (!qword_1EB2E9090)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

Swift::Void __swiftcall IMCoreHelloWorld.printGreeting()()
{
  sub_1A84E578C();
  type metadata accessor for IMCoreHelloWorld(0);
  sub_1A84E578C();
}

uint64_t sub_1A84DDD58(uint64_t a1)
{
  result = sub_1A84E58DC();
  if (v2 <= 0x3F)
  {
    result = sub_1A84E57AC();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

BOOL ImportExportStatistics.hasStarted.getter(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A83EA2FC(&qword_1EB2E6F48, &unk_1A8501F00);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v12 - v5;
  v7 = (*(a2 + 32))(a1, a2);
  v8 = OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_startTime;
  swift_beginAccess();
  sub_1A843ED60(v7 + v8, v6);

  v9 = sub_1A84E56DC();
  v10 = (*(*(v9 - 8) + 48))(v6, 1, v9) != 1;
  sub_1A8471100(v6);
  return v10;
}

BOOL ImportExportStatistics.isRunning.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 32))(a1);
  v2 = ImportExport.Timer.isTiming.getter();

  return v2;
}

BOOL ImportExportStatistics.hasFinished.getter(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A83EA2FC(&qword_1EB2E6F48, &unk_1A8501F00);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v17[-v8];
  v10 = (*(a2 + 32))(a1, a2);
  v11 = OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_startTime;
  swift_beginAccess();
  sub_1A843ED60(v10 + v11, v9);
  v12 = sub_1A84E56DC();
  v13 = *(*(v12 - 8) + 48);
  if (v13(v9, 1, v12) == 1)
  {

    v14 = 0;
  }

  else
  {
    sub_1A8471100(v9);
    v15 = OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_endTime;
    swift_beginAccess();
    sub_1A843ED60(v10 + v15, v7);

    v14 = v13(v7, 1, v12) != 1;
    v9 = v7;
  }

  sub_1A8471100(v9);
  return v14;
}

id sub_1A84DE2B0()
{
  swift_getObjectType();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v14 = [v0 totalMessageCount];
  v13 = [v0 syncedMessageCount];
  v1 = [v0 unresolvedMessageCount];
  v2 = [v0 totalChatCount];
  v3 = [v0 syncedChatCount];
  v4 = [v0 unresolvedChatCount];
  v5 = [v0 totalAttachmentCount];
  v6 = [v0 syncedAttachmentCount];
  v7 = [v0 unresolvedAttachmentCount];
  v8 = MEMORY[0x1E69E7CC0];
  sub_1A83EC354(MEMORY[0x1E69E7CC0]);
  v9 = sub_1A84E5D2C();

  sub_1A83EC8B4(v8);
  sub_1A8244B68(0, &qword_1EB2E6F68, 0x1E696AD98);
  v10 = sub_1A84E5D2C();

  v11 = [ObjCClassFromMetadata _createSyncStatisticsDictionary_messageSyncCount_messageUnresolvedCount_chatCount_chatSyncCount_chatUnresolvedCount_attachmentCount_attachmentSyncCount_attachmentUnresolvedCount_serverRecordCounts_syncStoreCounts_];

  return v11;
}

uint64_t sub_1A84DE4D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_1A83EA2FC(&qword_1EB2E90A0, &qword_1A850C080);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1A850C070;
  v16 = sub_1A84E5DBC();
  v17 = MEMORY[0x1E69E6158];
  *(v15 + 32) = v16;
  *(v15 + 40) = v18;
  v19 = MEMORY[0x1E69E7360];
  *(v15 + 88) = MEMORY[0x1E69E7360];
  *(v15 + 56) = v17;
  *(v15 + 64) = a1;
  *(v15 + 96) = sub_1A84E5DBC();
  *(v15 + 104) = v20;
  *(v15 + 152) = v19;
  *(v15 + 120) = v17;
  *(v15 + 128) = a2;
  *(v15 + 160) = sub_1A84E5DBC();
  *(v15 + 168) = v21;
  *(v15 + 216) = v19;
  *(v15 + 184) = v17;
  *(v15 + 192) = a3;
  *(v15 + 224) = sub_1A84E5DBC();
  *(v15 + 232) = v22;
  *(v15 + 280) = v19;
  *(v15 + 248) = v17;
  *(v15 + 256) = a4;
  *(v15 + 288) = sub_1A84E5DBC();
  *(v15 + 296) = v23;
  *(v15 + 344) = v19;
  *(v15 + 312) = v17;
  *(v15 + 320) = a5;
  *(v15 + 352) = sub_1A84E5DBC();
  *(v15 + 360) = v24;
  *(v15 + 408) = v19;
  *(v15 + 376) = v17;
  *(v15 + 384) = a6;
  result = sub_1A84E5DBC();
  *(v15 + 440) = v17;
  *(v15 + 416) = result;
  *(v15 + 424) = v26;
  v27 = a4 + a2;
  if (__OFADD__(a4, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v28 = __OFADD__(v27, a6);
  v29 = v27 + a6;
  if (v28)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  *(v15 + 472) = v19;
  *(v15 + 448) = v29;
  result = sub_1A84E5DBC();
  *(v15 + 504) = v17;
  *(v15 + 480) = result;
  *(v15 + 488) = v30;
  v31 = a3 + a1;
  if (__OFADD__(a3, a1))
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v28 = __OFADD__(v31, a5);
  v32 = v31 + a5;
  if (!v28)
  {
    *(v15 + 536) = v19;
    *(v15 + 512) = v32;
    *(v15 + 568) = v17;
    strcpy((v15 + 544), "serverCounts");
    *(v15 + 557) = 0;
    *(v15 + 558) = -5120;
    *(v15 + 600) = sub_1A83EA2FC(&unk_1EB2E8780, &qword_1A8502930);
    *(v15 + 576) = a7;
    *(v15 + 632) = v17;
    *(v15 + 608) = 0x726F7453636E7973;
    *(v15 + 616) = 0xEF73746E756F4365;
    *(v15 + 664) = sub_1A83EA2FC(&qword_1EB2E90A8, &qword_1A850C088);
    *(v15 + 640) = a8;
    sub_1A8244B68(0, &unk_1EB2E90B0, 0x1E695DF90);

    return sub_1A84E615C();
  }

LABEL_9:
  __break(1u);
  return result;
}

id sub_1A84DE754(uint64_t a1, double a2, double a3, double a4)
{
  result = swift_getObjCClassFromMetadata();
  v9 = result;
  if (a1 == 2)
  {
    if (a3 > -9.22337204e18)
    {
      if (a3 < 9.22337204e18)
      {
        if (a2 > -9.22337204e18)
        {
          if (a2 < 9.22337204e18)
          {
            if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*&a4 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*&a3 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
            {
              if (a4 > -9.22337204e18)
              {
                if (a4 < 9.22337204e18)
                {
                  v17 = MEMORY[0x1E69E7CC0];
                  sub_1A83EC354(MEMORY[0x1E69E7CC0]);
                  v11 = sub_1A84E5D2C();

                  sub_1A83EC8B4(v17);
                  sub_1A8244B68(0, &qword_1EB2E6F68, 0x1E696AD98);
                  v12 = sub_1A84E5D2C();

                  v18 = [v9 _createSyncStatisticsDictionary_messageSyncCount_messageUnresolvedCount_chatCount_chatSyncCount_chatUnresolvedCount_attachmentCount_attachmentSyncCount_attachmentUnresolvedCount_serverRecordCounts_syncStoreCounts_];
LABEL_34:
                  v20 = v18;

                  return v20;
                }

                goto LABEL_54;
              }

              goto LABEL_51;
            }

            goto LABEL_48;
          }

          goto LABEL_45;
        }

        goto LABEL_42;
      }

      goto LABEL_39;
    }

LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (a1 == 3)
  {
    if (a3 > -9.22337204e18)
    {
      if (a3 < 9.22337204e18)
      {
        if (a2 > -9.22337204e18)
        {
          if (a2 < 9.22337204e18)
          {
            if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*&a4 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*&a3 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
            {
              if (a4 > -9.22337204e18)
              {
                if (a4 < 9.22337204e18)
                {
                  v10 = MEMORY[0x1E69E7CC0];
                  sub_1A83EC354(MEMORY[0x1E69E7CC0]);
                  v11 = sub_1A84E5D2C();

                  sub_1A83EC8B4(v10);
                  sub_1A8244B68(0, &qword_1EB2E6F68, 0x1E696AD98);
                  v12 = sub_1A84E5D2C();

                  v24 = v11;
                  v25 = v12;
                  v22 = a2;
                  v23 = a4;
                  v21 = a3;
                  v13 = v9;
                  v14 = 0;
                  v15 = 0;
                  v16 = 0;
LABEL_33:
                  v18 = [v13 _createSyncStatisticsDictionary_messageSyncCount_messageUnresolvedCount_chatCount_chatSyncCount_chatUnresolvedCount_attachmentCount_attachmentSyncCount_attachmentUnresolvedCount_serverRecordCounts_syncStoreCounts_];
                  goto LABEL_34;
                }

                goto LABEL_53;
              }

              goto LABEL_50;
            }

            goto LABEL_47;
          }

          goto LABEL_44;
        }

        goto LABEL_41;
      }

      goto LABEL_38;
    }

    __break(1u);
    goto LABEL_36;
  }

  if (a3 <= -9.22337204e18)
  {
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (a3 >= 9.22337204e18)
  {
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if (a2 <= -9.22337204e18)
  {
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  if (a2 >= 9.22337204e18)
  {
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&a4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&a3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_49;
  }

  if (a4 <= -9.22337204e18)
  {
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  if (a4 < 9.22337204e18)
  {
    v19 = MEMORY[0x1E69E7CC0];
    sub_1A83EC354(MEMORY[0x1E69E7CC0]);
    v11 = sub_1A84E5D2C();

    sub_1A83EC8B4(v19);
    sub_1A8244B68(0, &qword_1EB2E6F68, 0x1E696AD98);
    v12 = sub_1A84E5D2C();

    v21 = 0;
    v22 = 0;
    v24 = v11;
    v25 = v12;
    v23 = 0;
    v13 = v9;
    v14 = a3;
    v15 = a2;
    v16 = a4;
    goto LABEL_33;
  }

LABEL_55:
  __break(1u);
  return result;
}

void sub_1A84DECDC(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1A823F000, a2, OS_LOG_TYPE_ERROR, "migratedPinConfig is nil, but localPinConfig was not. localPinConfig: %@", &v2, 0xCu);
}

void sub_1A84DEE7C(uint64_t a1, NSObject *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = [*(a1 + 32) account];
  v4 = [v3 service];
  v5 = [v4 internalName];
  v6 = 138412290;
  v7 = v5;
  _os_log_fault_impl(&dword_1A823F000, a2, OS_LOG_TYPE_FAULT, "Assuming hybrid groups are eligible for unexpected service %@", &v6, 0xCu);
}

void sub_1A84DEF40(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_1A823F000, log, OS_LOG_TYPE_ERROR, "IMService ******* This is unexpected. atSign > [email length]. Email %@ doman %@", &v3, 0x16u);
}

void sub_1A84DEFC8(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1A823F000, a2, OS_LOG_TYPE_ERROR, "Failed to find conversation with requested UUID %@", &v2, 0xCu);
}

void sub_1A84DF0AC(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *WebPrivacyLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"IMWebPrivacyUtilities.m" lineNumber:32 description:{@"%s", *a1}];

  __break(1u);
}

void sub_1A84DF1E0(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a1];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_1A823F000, a2, OS_LOG_TYPE_ERROR, "unrecognized KT status received: %@", &v4, 0xCu);
}

void sub_1A84DF284(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1A823F000, a2, OS_LOG_TYPE_ERROR, "ASSERTION FAILED: %@", &v2, 0xCu);
}

void sub_1A84DF360()
{
  sub_1A829A4F8();
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:v3 object:v2 file:@"IMAccount.m" lineNumber:2166 description:{@"%@ Unmatched endCoalescedChanges", v2}];

  *v0 = *v1;
}

void sub_1A84DF3DC()
{
  sub_1A829A4F8();
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:v3 object:v2 file:@"IMAccount.m" lineNumber:2194 description:@"imbalanced update: called a resume without calling a holdBuddyUpdate!"];

  *v0 = *v1;
}

void sub_1A84DF460(uint64_t a1, void *a2, NSObject *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = [a2 vettedAliases];
  v6 = 138412546;
  v7 = a1;
  v8 = 2112;
  v9 = v5;
  _os_log_error_impl(&dword_1A823F000, a3, OS_LOG_TYPE_ERROR, " Attempted to change display name to %@, but it wasn't in vetted set (%@)", &v6, 0x16u);
}

void sub_1A84DF55C(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = [a1 error];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_1A823F000, a2, OS_LOG_TYPE_ERROR, "Got error fetching sync statistics: %@", &v4, 0xCu);
}

void sub_1A84DF5F4(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = [a1 description];
  v4 = 138412290;
  v5 = v3;
  _os_log_debug_impl(&dword_1A823F000, a2, OS_LOG_TYPE_DEBUG, "fetched sync state statistics: %@", &v4, 0xCu);
}

void sub_1A84DF6D0(os_log_t log, double a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 134217984;
  v3 = a2;
  _os_log_debug_impl(&dword_1A823F000, log, OS_LOG_TYPE_DEBUG, "Deferring send progress to event listeners for %f sec", &v2, 0xCu);
}

void sub_1A84DF82C(os_log_t log)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = 136315138;
  v2 = "[IMNicknameController createSharedProfileStateOracleForHandles:]";
  _os_log_error_impl(&dword_1A823F000, log, OS_LOG_TYPE_ERROR, "No recipients provided for %s", &v1, 0xCu);
}

void sub_1A84DF8B0(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1A823F000, a2, OS_LOG_TYPE_ERROR, "Cache miss lookup failed with error: %@", &v2, 0xCu);
}

void sub_1A84DF9A8()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getPXPhotoKitMomentShareStatusClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"IMMomentSharePresentationCache.m" lineNumber:26 description:{@"Unable to find class %s", "PXPhotoKitMomentShareStatus"}];

  __break(1u);
}

void sub_1A84DFA24(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *PhotosUICoreLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"IMMomentSharePresentationCache.m" lineNumber:25 description:{@"%s", *a1}];

  __break(1u);
}

void sub_1A84DFAA4()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getPXMomentShareStatusPresentationClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"IMMomentSharePresentationCache.m" lineNumber:27 description:{@"Unable to find class %s", "PXMomentShareStatusPresentation"}];

  __break(1u);
}

void sub_1A84DFB20(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"IMChatContext.m" lineNumber:45 description:{@"Invalid parameter not satisfying: %@", @"[cls isSubclassOfClass:[IMChatContext class]]"}];
}

void sub_1A84DFBE0(void *a1)
{

  objc_end_catch();
}

void sub_1A84DFC14()
{
  sub_1A82E4060();
  sub_1A82E4054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1A84DFC50()
{
  sub_1A82E4060();
  sub_1A82E4054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1A84DFC8C()
{
  sub_1A82E4060();
  sub_1A82E4054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1A84DFCC8()
{
  sub_1A82E4060();
  sub_1A82E4054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1A84DFD04()
{
  sub_1A82E4060();
  sub_1A82E4054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1A84DFD7C()
{
  sub_1A82E406C();
  sub_1A82E4054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1A84DFE0C()
{
  sub_1A82E406C();
  sub_1A82E4054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1A84DFE9C(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = [a1 guid];
  v4 = 138412290;
  v5 = v3;
  _os_log_fault_impl(&dword_1A823F000, a2, OS_LOG_TYPE_FAULT, "transferGUID is nil. ChatItem's GUID is %@", &v4, 0xCu);
}

void sub_1A84DFF34(void *a1, NSObject *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = objc_opt_class();
  v5 = v4;
  v6 = [a1 guid];
  v7 = 138412546;
  v8 = v4;
  v9 = 2112;
  v10 = v6;
  _os_log_fault_impl(&dword_1A823F000, a2, OS_LOG_TYPE_FAULT, "%@ transferGUIDs is nil. ChatItem's GUID is %@", &v7, 0x16u);
}

void sub_1A84E0070(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = [a1 localizedDescription];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_1A823F000, a2, OS_LOG_TYPE_ERROR, "Request Satellite error: %@", &v4, 0xCu);
}

void sub_1A84E0174(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1A823F000, a2, OS_LOG_TYPE_ERROR, "Error sharing off grid mode with handle: %@", &v2, 0xCu);
}

void sub_1A84E01EC(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1A823F000, a2, OS_LOG_TYPE_ERROR, "Error sharing availbaility with handle: %@", &v2, 0xCu);
}

void sub_1A84E02A8(uint64_t a1, uint64_t a2, _DWORD *a3, _DWORD *a4)
{
  v8 = [MEMORY[0x1E696AAA8] currentHandler];
  [v8 handleFailureInMethod:a1 object:a2 file:@"IMHandle.m" lineNumber:3401 description:{@"%@ unmatched notification queue release", a2}];

  *a4 = *a3;
}

void sub_1A84E0420(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1A823F000, a2, OS_LOG_TYPE_ERROR, "Error prewarming the opening of sharedPhotoLibrary: %@", &v2, 0xCu);
}

void sub_1A84E04D0()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getPHAssetClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"IMPhotoLibraryPersistenceManager.m" lineNumber:24 description:{@"Unable to find class %s", "PHAsset"}];

  __break(1u);
}

void sub_1A84E054C(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *PhotosLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"IMPhotoLibraryPersistenceManager.m" lineNumber:23 description:{@"%s", *a1}];

  __break(1u);
}

void sub_1A84E05CC()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getPHPhotoLibraryClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"IMPhotoLibraryPersistenceManager.m" lineNumber:25 description:{@"Unable to find class %s", "PHPhotoLibrary"}];

  __break(1u);
}

void sub_1A84E065C(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = [MEMORY[0x1E696AAA8] currentHandler];
  [v8 handleFailureInMethod:a1 object:a2 file:@"IMPeople.m" lineNumber:129 description:@"Unbalanced calls to beginCoalescedChanges and endCoalescedChanges"];

  *a4 = *a3;
}

void sub_1A84E0774()
{
  v2 = *MEMORY[0x1E69E9840];
  sub_1A8307ED0();
  _os_log_error_impl(&dword_1A823F000, v0, OS_LOG_TYPE_ERROR, "Failed to find a sending handle. Dropping notice %@ to %@", v1, 0x16u);
}

void sub_1A84E07EC()
{
  v2 = *MEMORY[0x1E69E9840];
  sub_1A8307ED0();
  _os_log_error_impl(&dword_1A823F000, v0, OS_LOG_TYPE_ERROR, "Failed to find a sending handle. Dropping clear notice %@ to %@", v1, 0x16u);
}

void sub_1A84E0864(uint64_t a1, NSObject *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"startMonitor is called, which should not happen, but take it."];
  v5 = IMFileLocationTrimFileName();
  v6 = *(a1 + 32);
  v7 = [MEMORY[0x1E696AF00] callStackSymbols];
  v8 = [v7 componentsJoinedByString:@"\n"];
  v9 = 138413314;
  v10 = v4;
  v11 = 2080;
  v12 = "[IMChorosMonitor startMonitor]";
  v13 = 2080;
  v14 = v5;
  v15 = 1024;
  v16 = v6;
  v17 = 2112;
  v18 = v8;
  _os_log_error_impl(&dword_1A823F000, a2, OS_LOG_TYPE_ERROR, "%@\n%s %s:%d\n%@", &v9, 0x30u);
}

void sub_1A84E09FC(void *a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = [a1 localizedDescription];
  sub_1A83098A4();
  _os_log_error_impl(&dword_1A823F000, a2, OS_LOG_TYPE_ERROR, "Request Stewie error: %@", v4, 0xCu);
}

void sub_1A84E0CDC(const char *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = NSStringFromSelector(a1);
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_1A823F000, a2, OS_LOG_TYPE_ERROR, "Skipping invocation, selector not implemented: %@", &v4, 0xCu);
}

void sub_1A84E0D74()
{
  v5 = 138412546;
  sub_1A830E2C0();
  sub_1A830E2D0(&dword_1A823F000, MEMORY[0x1E69E9C10], v0, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", v1, v2, v3, v4, v5);
}

void sub_1A84E0DFC()
{
  v5 = 138412546;
  sub_1A830E2C0();
  sub_1A830E2D0(&dword_1A823F000, MEMORY[0x1E69E9C10], v0, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", v1, v2, v3, v4, v5);
}

void sub_1A84E0E84()
{
  v5 = 138412546;
  sub_1A830E2C0();
  sub_1A830E2D0(&dword_1A823F000, MEMORY[0x1E69E9C10], v0, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", v1, v2, v3, v4, v5);
}

void sub_1A84E116C()
{
  sub_1A82E4060();
  sub_1A82E4054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1A84E11D0()
{
  sub_1A82E4060();
  sub_1A82E4054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1A84E1220()
{
  sub_1A83098A4();
  sub_1A82E4054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1A84E1290()
{
  sub_1A82E4060();
  sub_1A82E4054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1A84E12CC()
{
  sub_1A83098A4();
  sub_1A82E4054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1A84E133C()
{
  sub_1A83098A4();
  sub_1A82E4054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1A84E13D4()
{
  sub_1A82E4060();
  sub_1A82E4054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1A84E1410(void *a1)
{
  v1 = [a1 guid];
  sub_1A83098A4();
  sub_1A8342F10(&dword_1A823F000, v2, v3, "**Bailing**, Tried to Edit the schedule time of a non-scheduled message with guid %@ ", v4, v5, v6, v7);
}

void sub_1A84E1494()
{
  sub_1A83098A4();
  sub_1A82E4054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1A84E1504()
{
  sub_1A82E4060();
  sub_1A82E4054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1A84E1554()
{
  sub_1A83098A4();
  sub_1A82E4054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1A84E15EC()
{
  sub_1A82E4060();
  sub_1A82E4054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1A84E1628()
{
  sub_1A82E4060();
  sub_1A82E4054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1A84E1664()
{
  sub_1A82E4060();
  sub_1A82E4054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1A84E16A0()
{
  sub_1A82E4060();
  sub_1A82E4054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1A84E1704()
{
  v8 = *MEMORY[0x1E69E9840];
  sub_1A8342EFC();
  v5 = v0;
  v6 = v1;
  v7 = v2;
  _os_log_error_impl(&dword_1A823F000, v3, OS_LOG_TYPE_ERROR, "Query failed for fetchMessageHistoryForDateInterval: %@ chatGUIDs: %@, error: %@", v4, 0x20u);
}

void sub_1A84E178C()
{
  v4 = *MEMORY[0x1E69E9840];
  sub_1A8342EFC();
  v3 = v0;
  _os_log_error_impl(&dword_1A823F000, v1, OS_LOG_TYPE_ERROR, "Query failed for fetchOldestMessageDate chatGUID: %@, error: %@", v2, 0x16u);
}

uint64_t sub_1A84E180C(void *a1, char a2, uint64_t *a3)
{
  if ([a1 receivedResponseForChat])
  {
    v6 = 1;
  }

  else
  {
    v7 = [a1 lastAddressedHandleID];
    v8 = v7;
    if (!v7 || ![v7 length])
    {
      v9 = [a1 account];
      v10 = [v9 strippedLogin];

      v8 = v10;
    }

    v11 = [a1 recipient];
    v12 = [v11 ID];

    LODWORD(v11) = [MEMORY[0x1E69A82A0] shouldShowSMSWarningForSender:v8 forRecipient:v12 withConversationHistory:0];
    v6 = 1;
    if (v11)
    {
      v6 = 2;
    }
  }

  *a3 = v6;
  if (a2)
  {
    return 1;
  }

  result = 0;
  a1[55] = v6;
  return result;
}

void sub_1A84E190C(void *a1)
{
  v1 = [a1 guid];
  sub_1A83098A4();
  sub_1A8342F10(&dword_1A823F000, v2, v3, "Chat %@ is ending holds on updates for all keys", v4, v5, v6, v7);
}

void sub_1A84E19B8(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_1A823F000, log, OS_LOG_TYPE_ERROR, "chatItemAssociatedWithMessageGUID included exactly 1 IMAggregateAttachmentMessagePartChatItem, but we found an item in toDeleteChatItems that was not associated with the stack", buf, 2u);
}

void sub_1A84E1A0C(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"IMMessage.m" lineNumber:258 description:{@"Invalid parameter not satisfying: %@", @"imHandle != nil"}];
}

void sub_1A84E1D60()
{
  v0 = [0 guid];
  sub_1A8353DCC();
  sub_1A830E2D0(&dword_1A823F000, MEMORY[0x1E69E9C10], v1, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", v2, v3, v4, v5);
}

void sub_1A84E1E70()
{
  sub_1A8342EFC();
  sub_1A835979C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

void sub_1A84E1EF0()
{
  sub_1A8342EFC();
  sub_1A835979C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1A84E202C(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = [a1 parents];
  v4 = 138412290;
  v5 = v3;
  _os_log_debug_impl(&dword_1A823F000, a2, OS_LOG_TYPE_DEBUG, "Finding addresses for parents: %@", &v4, 0xCu);
}

void sub_1A84E20C4(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 32);
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = v3;
  _os_log_debug_impl(&dword_1A823F000, log, OS_LOG_TYPE_DEBUG, "Found handles: %@ for family member: %@", &v4, 0x16u);
}

void sub_1A84E2150(uint64_t a1, NSObject *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = 138412546;
  v5 = v2;
  v6 = 2112;
  v7 = v3;
  _os_log_debug_impl(&dword_1A823F000, a2, OS_LOG_TYPE_DEBUG, "Found addresses: %@ for family members: %@", &v4, 0x16u);
}

void sub_1A84E2294(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = [a2 localizedDescription];
  *a1 = 138412290;
  *a3 = v7;
  _os_log_error_impl(&dword_1A823F000, a4, OS_LOG_TYPE_ERROR, "momentShareForURLString error: %@", a1, 0xCu);
}

void sub_1A84E230C()
{
  sub_1A839249C(*MEMORY[0x1E69E9840]);
  sub_1A8307ED0();
  sub_1A83924B4(&dword_1A823F000, v0, v1, "Edited status items to replace: %@ did not match indexes: %@");
}

void sub_1A84E2374()
{
  sub_1A839249C(*MEMORY[0x1E69E9840]);
  sub_1A8307ED0();
  sub_1A83924B4(&dword_1A823F000, v0, v1, "Edited status items to insert: %@ did not match indexes: %@");
}

void sub_1A84E23DC()
{
  sub_1A839249C(*MEMORY[0x1E69E9840]);
  sub_1A8307ED0();
  sub_1A83924B4(&dword_1A823F000, v0, v1, "Add choice status items to replace: %@ did not match indexes: %@");
}

void sub_1A84E2444()
{
  sub_1A839249C(*MEMORY[0x1E69E9840]);
  sub_1A8307ED0();
  sub_1A83924B4(&dword_1A823F000, v0, v1, "Add choice status items to insert: %@ did not match indexes: %@");
}

void sub_1A84E24C0(NSObject *a1)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_INFO))
  {
    *v2 = 0;
    _os_log_impl(&dword_1A823F000, a1, OS_LOG_TYPE_INFO, "INTERNAL CHAT ITEM POISON PILL TEST DETECTED - Crashing", v2, 2u);
  }
}

void sub_1A84E25D0(int a1, NSObject *a2)
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_1A823F000, a2, OS_LOG_TYPE_ERROR, "failed to add the device salt to the keychain with error: %d", v2, 8u);
}

void sub_1A84E2680(uint64_t a1, uint64_t *a2, os_log_t log)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *(*(*a1 + 8) + 40);
  v4 = *a2;
  v5 = 138412546;
  v6 = v3;
  v7 = 2112;
  v8 = v4;
  _os_log_error_impl(&dword_1A823F000, log, OS_LOG_TYPE_ERROR, "Something wrong when creating stringDigest: %@ for: %@", &v5, 0x16u);
}

void sub_1A84E2764(uint64_t a1, void *a2, NSObject *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = [a2 groupID];
  v6 = 138412546;
  v7 = a1;
  v8 = 2112;
  v9 = v5;
  _os_log_error_impl(&dword_1A823F000, a3, OS_LOG_TYPE_ERROR, "Group ID mismatch - Looking up for: %@ but found chat with groupID: %@", &v6, 0x16u);
}

void sub_1A84E2868()
{
  sub_1A82E4060();
  sub_1A82E4054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1A84E28A4()
{
  sub_1A82E4060();
  sub_1A82E4054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1A84E28E0()
{
  sub_1A82E4060();
  sub_1A82E4054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1A84E295C(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_1A823F000, a2, OS_LOG_TYPE_DEBUG, "strict-decoding 017 exception/error after _enableStrictSecureDecodingMode: [%@]", &v2, 0xCu);
}

void sub_1A84E2E50()
{
  sub_1A83098A4();
  sub_1A82E4054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1A84E2EC0()
{
  sub_1A83098A4();
  sub_1A82E4054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1A84E2F8C()
{
  sub_1A83B36E0();
  sub_1A835979C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1A84E3008()
{
  sub_1A83B36E0();
  sub_1A835979C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1A84E3120()
{
  sub_1A83098A4();
  sub_1A82E4054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1A84E3190()
{
  sub_1A83098A4();
  sub_1A82E4054();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1A84E3200()
{
  sub_1A83098A4();
  sub_1A83B36E0();
  sub_1A835979C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1A84E32A8()
{
  sub_1A83098A4();
  sub_1A835979C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

id sub_1A84E342C(void *a1, void *a2, void *a3, int a4, _BYTE *a5, void *a6)
{
  v64 = *MEMORY[0x1E69E9840];
  v10 = a2;
  v11 = a3;
  if (!a1)
  {
    v15 = 0;
    goto LABEL_21;
  }

  v12 = [a1 _participantsForChatDictionary:v10];
  if ([v12 count] < 2)
  {
    v13 = 0;
  }

  else
  {
    v13 = [a1 _sortedParticipantIDHashForParticipants:v12];
  }

  v14 = [a1 _cachedChatForChatDictionary:v10 participants:v12 participantHash:v13];
  if (v14)
  {
    v15 = v14;
    v56 = v13;
    v16 = [v10 objectForKeyedSubscript:@"isFiltered"];
    v17 = [v10 objectForKeyedSubscript:*MEMORY[0x1E69A6C48]];
    v18 = [v10 objectForKeyedSubscript:@"hasHadSuccessfulQuery"];
    if (v16)
    {
      [v15 setIsFiltered:{objc_msgSend(v16, "integerValue")}];
    }

    if ([v17 count])
    {
      v19 = [MEMORY[0x1E695DFD8] setWithArray:v17];
      [v15 setMergedPinningIdentifiers:v19];
    }

    if (v18)
    {
      [v15 setHasHadSuccessfulQuery:{objc_msgSend(v18, "BOOLValue")}];
    }

    [v15 _setJoinState:{objc_msgSend(a1, "_winningJoinStateForExistingChat:incomingDictionary:", v15, v10)}];
    [v15 _mergeItems:v11];
    v20 = [v15 displayName];
    if (![v20 length])
    {
      v55 = a6;
      v40 = *MEMORY[0x1E69A6B48];
      v41 = [v10 objectForKey:*MEMORY[0x1E69A6B48]];
      if (!v41)
      {

        goto LABEL_14;
      }

      v42 = v41;
      [v15 account];
      v43 = v52 = v11;
      [v43 serviceName];
      v44 = v54 = v12;
      v50 = [v44 isEqualToString:*MEMORY[0x1E69A7AF0]];

      v12 = v54;
      v11 = v52;

      a6 = v55;
      if (v50)
      {
LABEL_14:
        if (a5)
        {
          *a5 = 0;
        }

        goto LABEL_17;
      }

      v20 = [v10 objectForKey:v40];
      v45 = IMChatRegistryLogHandle(v20);
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        v46 = [v15 chatIdentifier];
        *buf = 138412546;
        v59 = v46;
        v60 = 2112;
        v61 = v20;
        _os_log_impl(&dword_1A823F000, v45, OS_LOG_TYPE_DEFAULT, "Updating chat %@ empty display name to %@", buf, 0x16u);

        v12 = v54;
      }

      [v15 _updateDisplayName:v20];
    }

    goto LABEL_14;
  }

  if (!a4)
  {
    v15 = 0;
    if (a5)
    {
      *a5 = 0;
    }

    goto LABEL_18;
  }

  v56 = v13;
  v23 = +[IMAccountController sharedInstance];
  v24 = [v10 objectForKeyedSubscript:@"accountID"];
  v16 = [v23 accountForUniqueID:v24];

  v25 = [v10 objectForKeyedSubscript:@"style"];
  LOBYTE(v24) = [v25 intValue];

  v17 = [v10 objectForKeyedSubscript:@"groupID"];
  v15 = [[IMChat alloc] _initWithDictionaryRepresentation:v10 items:v11 participantsHint:v12 accountHint:v16];
  if (v24 == 43)
  {
    if (v17 || (v17 = v56, [v15 setGroupID:v17], v17))
    {
      v26 = [a1 groupIDToChatMap];
      [v26 setObject:v15 forKeyedSubscript:v17];
    }

    [a1 _addChat:v15 participantSet:v56];
    v27 = [v15 personCentricID];

    if (v27)
    {
      v53 = v12;
      v28 = [a1 chatPersonIDToChatMap];
      v29 = [v15 personCentricID];
      v30 = [v28 objectForKeyedSubscript:v29];

      if (v30)
      {
        v32 = IMChatRegistryLogHandle(v31);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          v47 = [v15 personCentricID];
          v33 = [v15 guid];
          v49 = [a1 chatPersonIDToChatMap];
          v48 = [v15 personCentricID];
          v34 = [v49 objectForKeyedSubscript:v48];
          [v34 guid];
          v35 = v51 = v11;
          *buf = 138412802;
          v59 = v47;
          v60 = 2112;
          v61 = v33;
          v62 = 2112;
          v63 = v35;
          _os_log_impl(&dword_1A823F000, v32, OS_LOG_TYPE_DEFAULT, "Person centric (%@) collision for chats %@ and %@", buf, 0x20u);

          v11 = v51;
        }
      }

      v36 = [a1 chatPersonIDToChatMap];
      v37 = [v15 personCentricID];
      [v36 setObject:v15 forKeyedSubscript:v37];

      v12 = v53;
    }

    v38 = IMAdditionalChatRegistryLoggingEnabled();
    if (v38)
    {
      v39 = IMChatRegistryLogHandle(v38);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v59 = v56;
        _os_log_impl(&dword_1A823F000, v39, OS_LOG_TYPE_DEFAULT, "Did not find an existing chat so creating a new one with participatIDHash %@", buf, 0xCu);
      }
    }
  }

  if (a5)
  {
    *a5 = 1;
  }

LABEL_17:

  v13 = v56;
LABEL_18:
  v21 = [v10 objectForKeyedSubscript:@"guid"];
  if (a6)
  {
    v21 = v21;
    *a6 = v21;
  }

LABEL_21:

  return v15;
}

void sub_1A84E3B04(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_1A823F000, log, OS_LOG_TYPE_ERROR, "Failed to find cached chat for guid: %@. Properties were not updated: %@", &v3, 0x16u);
}

void sub_1A84E3B8C(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = [a1 guid];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_1A823F000, a2, OS_LOG_TYPE_ERROR, "Attempting to update domain identifiers for chat guid: %@ with nil groupID", &v4, 0xCu);
}

void sub_1A84E3C24(void *a1, void *a2, void *a3)
{
  if ([a1 count])
  {
    v6 = [a1 objectForKey:@"accountID"];
    v7 = [a1 objectForKey:@"account"];
    v8 = [a1 objectForKey:@"serviceName"];
    if (v6)
    {
      if (v7)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v6 = [a2 objectForKey:@"accountID"];
      if (v7)
      {
LABEL_4:
        if (v8)
        {
          goto LABEL_10;
        }

        goto LABEL_9;
      }
    }

    v7 = [a2 objectForKey:@"account"];
    if (v8)
    {
      goto LABEL_10;
    }

LABEL_9:
    v8 = [a2 objectForKey:@"serviceName"];
    if (!v8)
    {
      v10 = 0;
      goto LABEL_11;
    }

LABEL_10:
    v10 = [IMServiceImpl serviceWithInternalName:v8];

LABEL_11:
    v11 = +[IMAccountController sharedInstance];
    v12 = [v11 bestAccountForService:v10 login:v7 guid:v6];

    IMMessageFromIMMessageItemDictionary = _CreateIMMessageFromIMMessageItemDictionary(a1, v12, 1);
    goto LABEL_12;
  }

  IMMessageFromIMMessageItemDictionary = 0;
LABEL_12:
  *a3 = IMMessageFromIMMessageItemDictionary;
}

void sub_1A84E3DF0(void *a1, void *a2, void **a3)
{
  v6 = [a1 objectForKey:@"accountID"];
  v7 = [a1 objectForKey:@"account"];
  v8 = [a1 objectForKey:@"serviceName"];
  if (v6)
  {
    if (v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v6 = [a2 objectForKey:@"accountID"];
    if (v7)
    {
LABEL_3:
      if (v8)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

  v7 = [a2 objectForKey:@"account"];
  if (v8)
  {
    goto LABEL_8;
  }

LABEL_7:
  v8 = [a2 objectForKey:@"serviceName"];
  if (!v8)
  {
    v9 = 0;
    goto LABEL_9;
  }

LABEL_8:
  v9 = [IMServiceImpl serviceWithInternalName:v8];
LABEL_9:
  v10 = +[IMAccountController sharedInstance];
  v11 = [v10 bestAccountForService:v9 login:v7 guid:v6];

  *a3 = _CreateIMMessageFromIMMessageItemDictionary(a1, v11, 1);
}

uint64_t sub_1A84E3F50(uint64_t a1)
{
  v2 = +[IMChatRegistry sharedRegistry];
  if ([v2 currentMessageFilterMode] <= 0)
  {

    LOBYTE(v6) = 1;
  }

  else
  {
    v3 = MEMORY[0x1E69A8210];
    v4 = +[IMChatRegistry sharedRegistry];
    v5 = [v3 isFilterMode:a1 subsetOf:{objc_msgSend(v4, "currentMessageFilterMode")}];

    v6 = v5 << 31 >> 31;
  }

  return v6 & 1;
}

void sub_1A84E3FE4(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1A823F000, a2, OS_LOG_TYPE_ERROR, "Failed to find chat for chatIdentifier: %@", &v2, 0xCu);
}

void sub_1A84E4084(uint64_t a1, void *a2, NSObject *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = [a2 lastObject];
  v6 = 136315650;
  v7 = "void _IMReplaceChatItemsInRange(NSMutableArray<IMChatItem *> *__strong, __strong id<IMChatItemRules>, NSRange, IMItem *__strong)";
  v8 = 2112;
  v9 = a1;
  v10 = 2112;
  v11 = v5;
  _os_log_error_impl(&dword_1A823F000, a3, OS_LOG_TYPE_ERROR, "%s Failed to generate chatItems for newItem: %@ with prevItem: %@", &v6, 0x20u);
}

void sub_1A84E415C(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = [*(a1 + 32) handleString];
  v6 = 138412546;
  v7 = v5;
  v8 = 2112;
  v9 = a2;
  _os_log_error_impl(&dword_1A823F000, a3, OS_LOG_TYPE_ERROR, "Error fetching subscription service for handle: %@ Error: %@", &v6, 0x16u);
}

void sub_1A84E4214(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1A823F000, a2, OS_LOG_TYPE_ERROR, "Availability could not be decoded for handle %@, returning unknown availability", &v2, 0xCu);
}

void sub_1A84E428C()
{
  v8 = *MEMORY[0x1E69E9840];
  sub_1A8342EFC();
  v5 = v0;
  v6 = v1;
  v7 = v2;
  _os_log_error_impl(&dword_1A823F000, v3, OS_LOG_TYPE_ERROR, "Error retaining transient subscription assertion for subscription: %@ and handle: %@. Error: %@", v4, 0x20u);
}

void sub_1A84E4314()
{
  v4 = *MEMORY[0x1E69E9840];
  sub_1A8342EFC();
  v3 = v0;
  _os_log_error_impl(&dword_1A823F000, v1, OS_LOG_TYPE_ERROR, "Error releasing transient subscription assertion for handle %@. Error: %@", v2, 0x16u);
}

void sub_1A84E4394(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1A823F000, a2, OS_LOG_TYPE_ERROR, "No normalizedID available for handle, falling back to regular ID. Handle: %@", &v2, 0xCu);
}

void sub_1A84E4484(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1A823F000, a2, OS_LOG_TYPE_ERROR, "Failed to decode translated message parts with error: %@", &v2, 0xCu);
}

void sub_1A84E4770(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_1A823F000, log, OS_LOG_TYPE_ERROR, "Unable to access group photo file for groupID: '%@', sandboxedFileURL: '%@'", &v3, 0x16u);
}

void sub_1A84E47F8(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = [a1 description];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_1A823F000, a2, OS_LOG_TYPE_ERROR, "Failed to load groupPhotoData with error: '%@'", &v4, 0xCu);
}

void sub_1A84E4AFC(void *a1, uint64_t a2, uint8_t *buf, os_log_t log)
{
  *buf = 138543618;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_debug_impl(&dword_1A823F000, log, OS_LOG_TYPE_DEBUG, "Returning cached moment share: %{public}@, for URL: %@", buf, 0x16u);
}

void sub_1A84E4BCC(void *a1)
{
  v1 = [a1 uuid];
  sub_1A83E359C();
  sub_1A83E35CC(&dword_1A823F000, v2, v3, "Returning fetched moment share: %{public}@, for URL: %@", v4, v5, v6, v7);
}

void sub_1A84E4C64()
{
  v4 = *MEMORY[0x1E69E9840];
  sub_1A83E359C();
  v3 = v0;
  _os_log_error_impl(&dword_1A823F000, v1, OS_LOG_TYPE_ERROR, "Failed to fetch moment share for URL: %@, error: %@", v2, 0x16u);
}

void sub_1A84E4CE0()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"BOOL SOFT_LINKED_PXIsMomentShareErrorPermanent(NSError *__strong)"];
  [v0 handleFailureInFunction:v1 file:@"IMMomentShareCache.m" lineNumber:31 description:{@"%s", dlerror()}];

  __break(1u);
}

void sub_1A84E4D9C(void *a1)
{
  v1 = [a1 uuid];
  sub_1A83E359C();
  sub_1A83E35CC(&dword_1A823F000, v2, v3, "Moment share was changed: %{public}@, URL: %@", v4, v5, v6, v7);
}

void sub_1A84E4E30()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getPHPhotoLibraryClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"IMMomentShareCache.m" lineNumber:24 description:{@"Unable to find class %s", "PHPhotoLibrary"}];

  __break(1u);
}

void sub_1A84E4EAC(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *PhotosLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"IMMomentShareCache.m" lineNumber:23 description:{@"%s", *a1}];

  __break(1u);
}

void sub_1A84E4F2C()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getPHMomentShareClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"IMMomentShareCache.m" lineNumber:25 description:{@"Unable to find class %s", "PHMomentShare"}];

  __break(1u);
}

void sub_1A84E4FA8(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *PhotosUICoreLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"IMMomentShareCache.m" lineNumber:29 description:{@"%s", *a1}];

  __break(1u);
}

void sub_1A84E5028()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getPXTwoTupleClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"IMMomentShareCache.m" lineNumber:30 description:{@"Unable to find class %s", "PXTwoTuple"}];

  __break(1u);
}

void sub_1A84E5108(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_1A823F000, a2, OS_LOG_TYPE_DEBUG, "updateCloudKitState was updated by the daemon with %@", &v2, 0xCu);
}

void sub_1A84E5180(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_1A823F000, a2, OS_LOG_TYPE_DEBUG, "updateCloudKitProgress was updated by the daemon with %@", &v2, 0xCu);
}

NSRange NSUnionRange(NSRange range1, NSRange range2)
{
  v2 = MEMORY[0x1EEDC7160](range1.location, range1.length, range2.location, range2.length);
  result.length = v3;
  result.location = v2;
  return result;
}

uint64_t sub_1A84E89FC(double a1)
{
  if (!atomic_load(dword_1EB2E46D0))
  {
    sub_1A84E8AC0(a1);
  }

  return MEMORY[0x1EEDBE9F0]();
}

uint64_t sub_1A84E8A28(double a1)
{
  if (!atomic_load(dword_1EB2E46D0))
  {
    sub_1A84E8AC0(a1);
  }

  return MEMORY[0x1EEDBE9F8]();
}

double sub_1A84E8A54(double result)
{
  if (!atomic_load(dword_1EB2E46D0))
  {
    return sub_1A84E8AC0(result);
  }

  return result;
}

double sub_1A84E8A78(double result)
{
  if (!atomic_load(dword_1EB2E46D0))
  {
    return sub_1A84E8AC0(result);
  }

  return result;
}

double sub_1A84E8A9C(double result)
{
  if (!atomic_load(dword_1EB2E46D0))
  {
    return sub_1A84E8AC0(result);
  }

  return result;
}

double sub_1A84E8AC0(double a1)
{
  dlopen("/System/Library/Frameworks/CoreServices.framework/CoreServices", 0);
  atomic_store(1u, dword_1EB2E46D0);
  return a1;
}