void RemoteBrowsingSource.queryActiveEnvironment()(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(*v3 + *MEMORY[0x1E69E6B68] + 16);
  v5 = (*(*v3 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v3 + v5));
  sub_1B4EE45BC(v3 + v4, a1);

  os_unfair_lock_unlock((v3 + v5));
}

uint64_t sub_1B4EE434C@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v5 = sub_1B4F66DD4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1B4F66694();
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4EEC018(a1, v13, MEMORY[0x1E69CC610]);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6578, &qword_1B4F79DE0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    return (*(v6 + 56))(a3, 1, 1, v5);
  }

  (*(v6 + 32))(v9, &v13[*(v14 + 48)], v5);
  swift_beginAccess();

  RemoteBrowsingEnvironment.applyingJournal(_:)(v16, a3);

  (*(v6 + 8))(v9, v5);
  (*(v6 + 56))(a3, 0, 1, v5);
  v17 = sub_1B4F65F84();
  return (*(*(v17 - 8) + 8))(v13, v17);
}

uint64_t RemoteBrowsingSource.remoteDeviceForSession()()
{
  v1 = *(v0 + 16);
  v2 = *(*v1 + *MEMORY[0x1E69E6B68] + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v3));
  sub_1B4EE4670(v1 + v2, &v5);
  os_unfair_lock_unlock((v1 + v3));
  return v5;
}

void sub_1B4EE4670(uint64_t a1@<X0>, char *a2@<X8>)
{
  v5 = sub_1B4F65F84();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v41[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v41[-v12];
  v14 = sub_1B4F66694();
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v17 = &v41[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1B4EEC018(a1, v17, MEMORY[0x1E69CC610]);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6578, &qword_1B4F79DE0);
  if ((*(*(v18 - 8) + 48))(v17, 1, v18) == 1)
  {
    if (qword_1EDB724A8 != -1)
    {
      swift_once();
    }

    v19 = sub_1B4F67C54();
    __swift_project_value_buffer(v19, qword_1EDB72490);
    v20 = sub_1B4F67C34();
    v21 = sub_1B4F685C4();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = a2;
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_1B4DC2000, v20, v21, "[RemoteBrowsingSource] Couldn't determine remote device while in anonymous state.", v23, 2u);
      v24 = v23;
      a2 = v22;
      MEMORY[0x1B8C831D0](v24, -1, -1);
    }

    *a2 = 3;
    return;
  }

  v47 = *(v18 + 48);
  (*(v6 + 32))(v13, v17, v5);
  v25 = sub_1B4F65F54();
  if (v25 != 4)
  {
    (*(v6 + 8))(v13, v5);
    if (v25 > 1)
    {
      if (v25 == 2)
      {
        v39 = 2;
      }

      else
      {
        v39 = 3;
      }
    }

    else
    {
      if (!v25)
      {
        *a2 = 0;
LABEL_22:
        v40 = sub_1B4F66DD4();
        (*(*(v40 - 8) + 8))(&v17[v47], v40);
        return;
      }

      v39 = 1;
    }

    *a2 = v39;
    goto LABEL_22;
  }

  v46 = v2;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v26 = sub_1B4F67C54();
  __swift_project_value_buffer(v26, qword_1EDB72490);
  (*(v6 + 16))(v9, v13, v5);
  v27 = sub_1B4F67C34();
  v28 = sub_1B4F685C4();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v43 = v29;
    v44 = swift_slowAlloc();
    v48 = v44;
    *v29 = 136315138;
    sub_1B4EEC148(&qword_1EB8F6638, MEMORY[0x1E69CBB90], MEMORY[0x1E69CBBB8]);
    v30 = sub_1B4F68D04();
    v45 = a2;
    v32 = v31;
    v42 = v28;
    v33 = *(v6 + 8);
    v33(v9, v5);
    v34 = sub_1B4DC4F88(v30, v32, &v48);
    a2 = v45;

    v35 = v43;
    *(v43 + 1) = v34;
    _os_log_impl(&dword_1B4DC2000, v27, v42, "[RemoteBrowsingSource] Couldn't determine remote device with null device on participant %s", v35, 0xCu);
    v36 = v44;
    __swift_destroy_boxed_opaque_existential_1Tm(v44);
    MEMORY[0x1B8C831D0](v36, -1, -1);
    MEMORY[0x1B8C831D0](v35, -1, -1);

    v33(v13, v5);
  }

  else
  {

    v37 = *(v6 + 8);
    v37(v9, v5);
    v37(v13, v5);
  }

  *a2 = 3;
  v38 = sub_1B4F66DD4();
  (*(*(v38 - 8) + 8))(&v17[v47], v38);
}

void sub_1B4EE4BE4(uint64_t a1@<X8>)
{
  v3 = sub_1B4F66694();
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(*v1 + 16);
  v8 = *(*v7 + *MEMORY[0x1E69E6B68] + 16);
  v9 = (*(*v7 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v7 + v9));
  sub_1B4EEC018(v7 + v8, v6, MEMORY[0x1E69CC610]);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6578, &qword_1B4F79DE0);
  if ((*(*(v10 - 8) + 48))(v6, 1, v10) == 1)
  {
    v11 = sub_1B4F65F84();
    (*(*(v11 - 8) + 56))(a1, 1, 1, v11);
  }

  else
  {
    v12 = *(v10 + 48);
    v13 = sub_1B4F65F84();
    v14 = *(v13 - 8);
    (*(v14 + 32))(a1, v6, v13);
    (*(v14 + 56))(a1, 0, 1, v13);
    v15 = sub_1B4F66DD4();
    (*(*(v15 - 8) + 8))(&v6[v12], v15);
  }

  os_unfair_lock_unlock((v7 + v9));
}

void sub_1B4EE4E40(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 16);
  v4 = *(*v3 + *MEMORY[0x1E69E6B68] + 16);
  v5 = (*(*v3 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v3 + v5));
  sub_1B4EEC190(v3 + v4, a1);

  os_unfair_lock_unlock((v3 + v5));
}

uint64_t RemoteBrowsingSource.applyActiveEnvironment<A>(to:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v21 = a4;
  v22 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6588, &qword_1B4F79DF0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v20 - v9;
  v11 = sub_1B4F66DD4();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v4 + 16);
  v17 = *(*v16 + *MEMORY[0x1E69E6B68] + 16);
  v18 = (*(*v16 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v16 + v18));
  sub_1B4EEC190(v16 + v17, v10);
  os_unfair_lock_unlock((v16 + v18));
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1B4DD2BC4(v10, &qword_1EB8F6588, &qword_1B4F79DF0);
    return (*(*(a2 - 8) + 16))(v21, v22, a2);
  }

  else
  {
    (*(v12 + 32))(v15, v10, v11);
    (*(a3 + 8))(v15, a2, a3);
    return (*(v12 + 8))(v15, v11);
  }
}

uint64_t sub_1B4EE5160()
{
  v1 = *(*v0 + 16);
  v2 = *(*v1 + *MEMORY[0x1E69E6B68] + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v3));
  sub_1B4EE4670(v1 + v2, &v5);
  os_unfair_lock_unlock((v1 + v3));
  return v5;
}

Swift::Void __swiftcall RemoteBrowsingSource.publishActiveIdentityUpdated()()
{
  v1 = *(v0 + 16);
  v2 = *(*v1 + *MEMORY[0x1E69E6B68] + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v3));
  sub_1B4EE53A8(v1 + v2);

  os_unfair_lock_unlock((v1 + v3));
}

uint64_t sub_1B4EE5298(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemoteBrowsingIdentityUpdated(0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a2 + 40);
  ObjectType = swift_getObjectType();
  sub_1B4EEC018(a1, v7, MEMORY[0x1E69CC610]);
  (*(v8 + 8))(v7, v4, &protocol witness table for RemoteBrowsingIdentityUpdated, ObjectType, v8);
  return sub_1B4EEC080(v7, type metadata accessor for RemoteBrowsingIdentityUpdated);
}

void RemoteBrowsingSource.updateActiveIdentity(_:)()
{
  v1 = *(v0 + 16);
  v2 = *(*v1 + *MEMORY[0x1E69E6B68] + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v3));
  sub_1B4EE56E0(v1 + v2);
  os_unfair_lock_unlock((v1 + v3));
}

uint64_t sub_1B4EE545C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for RemoteBrowsingIdentityUpdated(0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1B4F66694();
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4EEC018(a1, v13, MEMORY[0x1E69CC610]);
  v14 = MEMORY[0x1B8C7FF30](a2, v13);
  result = sub_1B4EEC080(v13, MEMORY[0x1E69CC610]);
  if ((v14 & 1) == 0)
  {
    sub_1B4EEC080(a1, MEMORY[0x1E69CC610]);
    if (qword_1EDB714D0 != -1)
    {
      swift_once();
    }

    v16 = sub_1B4F67C54();
    __swift_project_value_buffer(v16, qword_1EDB714D8);
    v17._countAndFlagsBits = 0xD000000000000028;
    v17._object = 0x80000001B4F83380;
    v18._object = 0x80000001B4F833D0;
    v18._countAndFlagsBits = 0xD000000000000018;
    Logger.trace(file:function:)(v17, v18);
    v19 = MEMORY[0x1E69CC610];
    sub_1B4EEC018(a2, a1, MEMORY[0x1E69CC610]);
    swift_beginAccess();
    a3[3] = MEMORY[0x1E69E7CC0];

    v20 = a3[5];
    ObjectType = swift_getObjectType();
    sub_1B4EEC018(a2, v9, v19);
    (*(v20 + 8))(v9, v6, &protocol witness table for RemoteBrowsingIdentityUpdated, ObjectType, v20);
    return sub_1B4EEC080(v9, type metadata accessor for RemoteBrowsingIdentityUpdated);
  }

  return result;
}

void RemoteBrowsingSource.updateActiveEnvironment(_:)()
{
  v1 = *(v0 + 16);
  v2 = *(*v1 + *MEMORY[0x1E69E6B68] + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v3));
  sub_1B4EE5D34(v1 + v2);
  os_unfair_lock_unlock((v1 + v3));
}

uint64_t sub_1B4EE5794(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v58 = a3;
  v6 = sub_1B4F66694();
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1B4F66DD4();
  v60 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v11);
  v57 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v56 = &v49 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v49 - v18;
  v20 = sub_1B4F65F84();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v22);
  v24 = &v49 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = a1;
  sub_1B4EEC018(a1, v9, MEMORY[0x1E69CC610]);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6578, &qword_1B4F79DE0);
  v54 = *(v25 - 8);
  if ((*(v54 + 48))(v9, 1, v25) == 1)
  {
    return sub_1B4EEC080(v9, MEMORY[0x1E69CC610]);
  }

  v59 = v3;
  v27 = *(v25 + 48);
  (*(v21 + 32))(v24, v9, v20);
  (*(v60 + 32))(v19, &v9[v27], v10);
  sub_1B4EEC148(&qword_1EB8F6590, MEMORY[0x1E69CCB10], MEMORY[0x1E69CCB18]);
  if (sub_1B4F67F54())
  {
    (*(v60 + 8))(v19, v10);
    return (*(v21 + 8))(v24, v20);
  }

  else
  {
    v52 = v10;
    v53 = v19;
    v28 = v60;
    v29 = v55;
    sub_1B4EEC080(v55, MEMORY[0x1E69CC610]);
    v30 = v58;
    v31 = swift_beginAccess();
    v49 = &v49;
    v32 = *(v30 + 24);
    MEMORY[0x1EEE9AC00](v31, v33);
    *(&v49 - 2) = a2;

    v34 = v32;
    v35 = v59;
    sub_1B4E6F21C(sub_1B4EE69AC, (&v49 - 4), v34);
    v59 = v35;
    *(v30 + 24) = v36;

    if (qword_1EDB714D0 != -1)
    {
      swift_once();
    }

    v37 = sub_1B4F67C54();
    __swift_project_value_buffer(v37, qword_1EDB714D8);
    v38._countAndFlagsBits = 0xD000000000000028;
    v38._object = 0x80000001B4F83380;
    v39._object = 0x80000001B4F833B0;
    v39._countAndFlagsBits = 0xD00000000000001BLL;
    Logger.trace(file:function:)(v38, v39);
    v40 = *(v25 + 48);
    v41 = *(v21 + 16);
    v50 = v20;
    v51 = v24;
    v41(v29, v24, v20);
    v42 = v52;
    (*(v28 + 16))(v29 + v40, a2, v52);
    (*(v54 + 56))(v29, 0, 1, v25);

    v44 = v56;
    v45 = v53;
    RemoteBrowsingEnvironment.applyingJournal(_:)(v43, v56);

    v47 = v57;
    RemoteBrowsingEnvironment.applyingJournal(_:)(v46, v57);

    sub_1B4EE0DF4(v44, v47);
    v48 = *(v28 + 8);
    v48(v47, v42);
    v48(v44, v42);
    v48(v45, v42);
    return (*(v21 + 8))(v51, v50);
  }
}

uint64_t sub_1B4EE5D50(uint64_t a1, uint64_t a2)
{
  v83 = a2;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6628, &qword_1B4F79F08);
  MEMORY[0x1EEE9AC00](v85, v3);
  v86 = &v80 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5618, &qword_1B4F79E80);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v84 = &v80 - v7;
  v8 = sub_1B4F666C4();
  v88 = *(v8 - 8);
  v89 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6630, &unk_1B4F79F10);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v82 = &v80 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v87 = &v80 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v91 = &v80 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v80 - v23;
  v25 = sub_1B4F649A4();
  v92 = *(v25 - 8);
  v93 = v25;
  MEMORY[0x1EEE9AC00](v25, v26);
  v81 = &v80 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28, v29);
  v90 = &v80 - v30;
  v31 = type metadata accessor for RemoteBrowsingJournalEntry(0);
  MEMORY[0x1EEE9AC00](v31 - 8, v32);
  v34 = &v80 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for RemoteBrowsingJournalProperty(0);
  MEMORY[0x1EEE9AC00](v35, v36);
  v38 = &v80 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39, v40);
  v42 = &v80 - v41;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4898, &qword_1B4F6E548);
  MEMORY[0x1EEE9AC00](v43 - 8, v44);
  v46 = &v80 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v47, v48);
  v50 = &v80 - v49;
  sub_1B4EEC018(a1, v34, type metadata accessor for RemoteBrowsingJournalEntry);
  sub_1B4EEC0E0(v34, v38, type metadata accessor for RemoteBrowsingJournalProperty);
  sub_1B4EEC0E0(v38, v42, type metadata accessor for RemoteBrowsingJournalProperty);
  if (swift_getEnumCaseMultiPayload() == 27)
  {
    sub_1B4E340C4(v42, v50);
    sub_1B4E21A90(v50, v46, &qword_1EB8F4898, &qword_1B4F6E548);
    v51 = sub_1B4F67074();
    v52 = *(v51 - 8);
    if ((*(v52 + 48))(v46, 1, v51) == 1)
    {
      sub_1B4DD2BC4(v50, &qword_1EB8F4898, &qword_1B4F6E548);
      sub_1B4DD2BC4(v46, &qword_1EB8F4898, &qword_1B4F6E548);
      (*(v92 + 56))(v24, 1, 1, v93);
LABEL_8:
      v56 = &qword_1EB8F6630;
      v57 = &unk_1B4F79F10;
      v58 = v24;
LABEL_9:
      sub_1B4DD2BC4(v58, v56, v57);
      v53 = 0;
      return v53 & 1;
    }

    sub_1B4F67054();
    (*(v52 + 8))(v46, v51);
    sub_1B4F666A4();
    (*(v88 + 8))(v11, v89);
    v55 = v92;
    v54 = v93;
    v89 = *(v92 + 48);
    if (v89(v24, 1, v93) == 1)
    {
      sub_1B4DD2BC4(v50, &qword_1EB8F4898, &qword_1B4F6E548);
      goto LABEL_8;
    }

    v60 = *(v55 + 32);
    v61 = v90;
    v88 = v55 + 32;
    v80 = v60;
    v60(v90, v24, v54);
    v62 = v91;
    (*(v55 + 16))(v91, v61, v54);
    v63 = *(v55 + 56);
    v63(v62, 0, 1, v54);
    v64 = v84;
    sub_1B4F66C24();
    v65 = sub_1B4F64ED4();
    v66 = *(v65 - 8);
    if ((*(v66 + 48))(v64, 1, v65) == 1)
    {
      sub_1B4DD2BC4(v64, &qword_1EB8F5618, &qword_1B4F79E80);
      v67 = 1;
      v68 = v87;
    }

    else
    {
      v68 = v87;
      sub_1B4F64E54();
      (*(v66 + 8))(v64, v65);
      v67 = 0;
    }

    v69 = v93;
    v63(v68, v67, 1, v93);
    v70 = v86;
    v71 = *(v85 + 48);
    v72 = v91;
    sub_1B4E21A90(v91, v86, &qword_1EB8F6630, &unk_1B4F79F10);
    sub_1B4E21A90(v68, v70 + v71, &qword_1EB8F6630, &unk_1B4F79F10);
    v73 = v89;
    if (v89(v70, 1, v69) == 1)
    {
      sub_1B4DD2BC4(v68, &qword_1EB8F6630, &unk_1B4F79F10);
      sub_1B4DD2BC4(v72, &qword_1EB8F6630, &unk_1B4F79F10);
      (*(v92 + 8))(v90, v69);
      sub_1B4DD2BC4(v50, &qword_1EB8F4898, &qword_1B4F6E548);
      if (v89((v70 + v71), 1, v69) == 1)
      {
        sub_1B4DD2BC4(v70, &qword_1EB8F6630, &unk_1B4F79F10);
        goto LABEL_5;
      }
    }

    else
    {
      v74 = v82;
      sub_1B4E21A90(v70, v82, &qword_1EB8F6630, &unk_1B4F79F10);
      if (v73(v70 + v71, 1, v69) != 1)
      {
        v77 = v81;
        v80(v81, v70 + v71, v69);
        sub_1B4EEC148(&qword_1EB8F4650, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
        v78 = v69;
        v53 = sub_1B4F67F54();
        v79 = *(v92 + 8);
        v79(v77, v78);
        sub_1B4DD2BC4(v87, &qword_1EB8F6630, &unk_1B4F79F10);
        sub_1B4DD2BC4(v91, &qword_1EB8F6630, &unk_1B4F79F10);
        v79(v90, v78);
        sub_1B4DD2BC4(v50, &qword_1EB8F4898, &qword_1B4F6E548);
        v79(v74, v78);
        sub_1B4DD2BC4(v70, &qword_1EB8F6630, &unk_1B4F79F10);
        return v53 & 1;
      }

      v75 = v69;
      sub_1B4DD2BC4(v87, &qword_1EB8F6630, &unk_1B4F79F10);
      sub_1B4DD2BC4(v91, &qword_1EB8F6630, &unk_1B4F79F10);
      v76 = *(v92 + 8);
      v76(v90, v75);
      sub_1B4DD2BC4(v50, &qword_1EB8F4898, &qword_1B4F6E548);
      v76(v74, v75);
    }

    v56 = &qword_1EB8F6628;
    v57 = &qword_1B4F79F08;
    v58 = v70;
    goto LABEL_9;
  }

  sub_1B4EEC080(v42, type metadata accessor for RemoteBrowsingJournalProperty);
LABEL_5:
  v53 = 1;
  return v53 & 1;
}

void sub_1B4EE6784()
{
  v1 = *(*v0 + 16);
  v2 = *(*v1 + *MEMORY[0x1E69E6B68] + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v3));
  sub_1B4EEC1D8(v1 + v2);
  os_unfair_lock_unlock((v1 + v3));
}

void sub_1B4EE6820()
{
  v1 = *(*v0 + 16);
  v2 = *(*v1 + *MEMORY[0x1E69E6B68] + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v3));
  sub_1B4EEC1C0(v1 + v2);
  os_unfair_lock_unlock((v1 + v3));
}

void sub_1B4EE68BC()
{
  v1 = *(*v0 + 16);
  v2 = *(*v1 + *MEMORY[0x1E69E6B68] + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v3));
  sub_1B4EEC1A8(v1 + v2);

  os_unfair_lock_unlock((v1 + v3));
}

unint64_t sub_1B4EE69CC()
{
  result = qword_1EB8F65B0;
  if (!qword_1EB8F65B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F65B0);
  }

  return result;
}

uint64_t sub_1B4EE6A20(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = sub_1B4F66674();
  v8 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36, v9);
  v35 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x1E69E7CD0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5758, &unk_1B4F79F60);
  result = sub_1B4F68994();
  v11 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *a1;
  }

  v14 = 0;
  v15 = result + 56;
  v31 = (v8 + 32);
  v32 = v8 + 16;
  v30 = a4;
  while (v13)
  {
    v16 = __clz(__rbit64(v13));
    v33 = (v13 - 1) & v13;
LABEL_16:
    v19 = *(a4 + 48);
    v34 = *(v8 + 72);
    (*(v8 + 16))(v35, v19 + v34 * (v16 | (v14 << 6)), v36);
    sub_1B4EEC148(&qword_1EDB70088, MEMORY[0x1E69CC5E8], MEMORY[0x1E69CC5F8]);
    result = sub_1B4F67F14();
    v20 = -1 << *(v11 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v15 + 8 * (v21 >> 6))) == 0)
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
        v27 = *(v15 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v15 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v15 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    result = (*v31)(*(v11 + 48) + v23 * v34, v35, v36);
    ++*(v11 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v30;
    v13 = v33;
    if (!a3)
    {
LABEL_28:

      return v11;
    }
  }

  v17 = v14;
  while (1)
  {
    v14 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      goto LABEL_28;
    }

    v18 = a1[v14];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v33 = (v18 - 1) & v18;
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

uint64_t sub_1B4EE6D48(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = sub_1B4F670C4();
  v8 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36, v9);
  v35 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x1E69E7CD0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F57A0, &qword_1B4F73F50);
  result = sub_1B4F68994();
  v11 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *a1;
  }

  v14 = 0;
  v15 = result + 56;
  v31 = (v8 + 32);
  v32 = v8 + 16;
  v30 = a4;
  while (v13)
  {
    v16 = __clz(__rbit64(v13));
    v33 = (v13 - 1) & v13;
LABEL_16:
    v19 = *(a4 + 48);
    v34 = *(v8 + 72);
    (*(v8 + 16))(v35, v19 + v34 * (v16 | (v14 << 6)), v36);
    sub_1B4EEC148(&qword_1EB8F41A0, MEMORY[0x1E69CCDC8], MEMORY[0x1E69CCDD8]);
    result = sub_1B4F67F14();
    v20 = -1 << *(v11 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v15 + 8 * (v21 >> 6))) == 0)
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
        v27 = *(v15 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v15 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v15 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    result = (*v31)(*(v11 + 48) + v23 * v34, v35, v36);
    ++*(v11 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v30;
    v13 = v33;
    if (!a3)
    {
LABEL_28:

      return v11;
    }
  }

  v17 = v14;
  while (1)
  {
    v14 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      goto LABEL_28;
    }

    v18 = a1[v14];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v33 = (v18 - 1) & v18;
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

uint64_t sub_1B4EE7070(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = sub_1B4F660C4();
  v8 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36, v9);
  v35 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x1E69E7CD0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5780, &unk_1B4F79F50);
  result = sub_1B4F68994();
  v11 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *a1;
  }

  v14 = 0;
  v15 = result + 56;
  v31 = (v8 + 32);
  v32 = v8 + 16;
  v30 = a4;
  while (v13)
  {
    v16 = __clz(__rbit64(v13));
    v33 = (v13 - 1) & v13;
LABEL_16:
    v19 = *(a4 + 48);
    v34 = *(v8 + 72);
    (*(v8 + 16))(v35, v19 + v34 * (v16 | (v14 << 6)), v36);
    sub_1B4EEC148(&qword_1EB8F4198, MEMORY[0x1E69CBE40], MEMORY[0x1E69CBE50]);
    result = sub_1B4F67F14();
    v20 = -1 << *(v11 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v15 + 8 * (v21 >> 6))) == 0)
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
        v27 = *(v15 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v15 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v15 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    result = (*v31)(*(v11 + 48) + v23 * v34, v35, v36);
    ++*(v11 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v30;
    v13 = v33;
    if (!a3)
    {
LABEL_28:

      return v11;
    }
  }

  v17 = v14;
  while (1)
  {
    v14 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      goto LABEL_28;
    }

    v18 = a1[v14];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v33 = (v18 - 1) & v18;
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

uint64_t sub_1B4EE7398(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = sub_1B4F65DE4();
  v8 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36, v9);
  v35 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x1E69E7CD0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5768, &unk_1B4F79F40);
  result = sub_1B4F68994();
  v11 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *a1;
  }

  v14 = 0;
  v15 = result + 56;
  v31 = (v8 + 32);
  v32 = v8 + 16;
  v30 = a4;
  while (v13)
  {
    v16 = __clz(__rbit64(v13));
    v33 = (v13 - 1) & v13;
LABEL_16:
    v19 = *(a4 + 48);
    v34 = *(v8 + 72);
    (*(v8 + 16))(v35, v19 + v34 * (v16 | (v14 << 6)), v36);
    sub_1B4EEC148(&qword_1EB8F4188, MEMORY[0x1E69CB800], MEMORY[0x1E69CB810]);
    result = sub_1B4F67F14();
    v20 = -1 << *(v11 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v15 + 8 * (v21 >> 6))) == 0)
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
        v27 = *(v15 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v15 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v15 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    result = (*v31)(*(v11 + 48) + v23 * v34, v35, v36);
    ++*(v11 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v30;
    v13 = v33;
    if (!a3)
    {
LABEL_28:

      return v11;
    }
  }

  v17 = v14;
  while (1)
  {
    v14 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      goto LABEL_28;
    }

    v18 = a1[v14];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v33 = (v18 - 1) & v18;
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

uint64_t sub_1B4EE76C0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = sub_1B4F66BA4();
  v8 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36, v9);
  v35 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x1E69E7CD0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F57E0, &qword_1B4F73F60);
  result = sub_1B4F68994();
  v11 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *a1;
  }

  v14 = 0;
  v15 = result + 56;
  v31 = (v8 + 32);
  v32 = v8 + 16;
  v30 = a4;
  while (v13)
  {
    v16 = __clz(__rbit64(v13));
    v33 = (v13 - 1) & v13;
LABEL_16:
    v19 = *(a4 + 48);
    v34 = *(v8 + 72);
    (*(v8 + 16))(v35, v19 + v34 * (v16 | (v14 << 6)), v36);
    sub_1B4EEC148(&qword_1EB8F4DC0, MEMORY[0x1E69CCAC8], MEMORY[0x1E69CCAD8]);
    result = sub_1B4F67F14();
    v20 = -1 << *(v11 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v15 + 8 * (v21 >> 6))) == 0)
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
        v27 = *(v15 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v15 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v15 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    result = (*v31)(*(v11 + 48) + v23 * v34, v35, v36);
    ++*(v11 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v30;
    v13 = v33;
    if (!a3)
    {
LABEL_28:

      return v11;
    }
  }

  v17 = v14;
  while (1)
  {
    v14 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      goto LABEL_28;
    }

    v18 = a1[v14];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v33 = (v18 - 1) & v18;
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

uint64_t sub_1B4EE79E8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = sub_1B4F66A54();
  v8 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36, v9);
  v35 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x1E69E7CD0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F57C8, &unk_1B4F79F30);
  result = sub_1B4F68994();
  v11 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *a1;
  }

  v14 = 0;
  v15 = result + 56;
  v31 = (v8 + 32);
  v32 = v8 + 16;
  v30 = a4;
  while (v13)
  {
    v16 = __clz(__rbit64(v13));
    v33 = (v13 - 1) & v13;
LABEL_16:
    v19 = *(a4 + 48);
    v34 = *(v8 + 72);
    (*(v8 + 16))(v35, v19 + v34 * (v16 | (v14 << 6)), v36);
    sub_1B4EEC148(&qword_1EB8F4DF0, MEMORY[0x1E69CC938], MEMORY[0x1E69CC948]);
    result = sub_1B4F67F14();
    v20 = -1 << *(v11 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v15 + 8 * (v21 >> 6))) == 0)
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
        v27 = *(v15 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v15 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v15 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    result = (*v31)(*(v11 + 48) + v23 * v34, v35, v36);
    ++*(v11 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v30;
    v13 = v33;
    if (!a3)
    {
LABEL_28:

      return v11;
    }
  }

  v17 = v14;
  while (1)
  {
    v14 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      goto LABEL_28;
    }

    v18 = a1[v14];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v33 = (v18 - 1) & v18;
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

uint64_t sub_1B4EE7D10(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = sub_1B4F669F4();
  v8 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36, v9);
  v35 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x1E69E7CD0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F57B0, &qword_1B4F73F58);
  result = sub_1B4F68994();
  v11 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *a1;
  }

  v14 = 0;
  v15 = result + 56;
  v31 = (v8 + 32);
  v32 = v8 + 16;
  v30 = a4;
  while (v13)
  {
    v16 = __clz(__rbit64(v13));
    v33 = (v13 - 1) & v13;
LABEL_16:
    v19 = *(a4 + 48);
    v34 = *(v8 + 72);
    (*(v8 + 16))(v35, v19 + v34 * (v16 | (v14 << 6)), v36);
    sub_1B4EEC148(&qword_1EB8F4DF8, MEMORY[0x1E69CC830], MEMORY[0x1E69CC840]);
    result = sub_1B4F67F14();
    v20 = -1 << *(v11 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v15 + 8 * (v21 >> 6))) == 0)
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
        v27 = *(v15 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v15 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v15 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    result = (*v31)(*(v11 + 48) + v23 * v34, v35, v36);
    ++*(v11 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v30;
    v13 = v33;
    if (!a3)
    {
LABEL_28:

      return v11;
    }
  }

  v17 = v14;
  while (1)
  {
    v14 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      goto LABEL_28;
    }

    v18 = a1[v14];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v33 = (v18 - 1) & v18;
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

uint64_t sub_1B4EE8038(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = sub_1B4F658C4();
  v8 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36, v9);
  v35 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x1E69E7CD0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6640, &unk_1B4F79F20);
  result = sub_1B4F68994();
  v11 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *a1;
  }

  v14 = 0;
  v15 = result + 56;
  v31 = (v8 + 32);
  v32 = v8 + 16;
  v30 = a4;
  while (v13)
  {
    v16 = __clz(__rbit64(v13));
    v33 = (v13 - 1) & v13;
LABEL_16:
    v19 = *(a4 + 48);
    v34 = *(v8 + 72);
    (*(v8 + 16))(v35, v19 + v34 * (v16 | (v14 << 6)), v36);
    sub_1B4EEC148(&qword_1EB8F6608, MEMORY[0x1E69CB4A8], MEMORY[0x1E69CB4B0]);
    result = sub_1B4F67F14();
    v20 = -1 << *(v11 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v15 + 8 * (v21 >> 6))) == 0)
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
        v27 = *(v15 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v15 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v15 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    result = (*v31)(*(v11 + 48) + v23 * v34, v35, v36);
    ++*(v11 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v30;
    v13 = v33;
    if (!a3)
    {
LABEL_28:

      return v11;
    }
  }

  v17 = v14;
  while (1)
  {
    v14 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      goto LABEL_28;
    }

    v18 = a1[v14];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v33 = (v18 - 1) & v18;
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

uint64_t sub_1B4EE8360(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = sub_1B4F67124();
  v8 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36, v9);
  v35 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x1E69E7CD0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F56F0, &qword_1B4F73F00);
  result = sub_1B4F68994();
  v11 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *a1;
  }

  v14 = 0;
  v15 = result + 56;
  v31 = (v8 + 32);
  v32 = v8 + 16;
  v30 = a4;
  while (v13)
  {
    v16 = __clz(__rbit64(v13));
    v33 = (v13 - 1) & v13;
LABEL_16:
    v19 = *(a4 + 48);
    v34 = *(v8 + 72);
    (*(v8 + 16))(v35, v19 + v34 * (v16 | (v14 << 6)), v36);
    sub_1B4EEC148(&qword_1EDB70038, MEMORY[0x1E69CCE28], MEMORY[0x1E69CCE38]);
    result = sub_1B4F67F14();
    v20 = -1 << *(v11 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v15 + 8 * (v21 >> 6))) == 0)
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
        v27 = *(v15 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v15 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v15 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    result = (*v31)(*(v11 + 48) + v23 * v34, v35, v36);
    ++*(v11 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v30;
    v13 = v33;
    if (!a3)
    {
LABEL_28:

      return v11;
    }
  }

  v17 = v14;
  while (1)
  {
    v14 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      goto LABEL_28;
    }

    v18 = a1[v14];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v33 = (v18 - 1) & v18;
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

uint64_t sub_1B4EE8688(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = sub_1B4F679C4();
  v8 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36, v9);
  v35 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x1E69E7CD0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5700, &qword_1B4F73F08);
  result = sub_1B4F68994();
  v11 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *a1;
  }

  v14 = 0;
  v15 = result + 56;
  v31 = (v8 + 32);
  v32 = v8 + 16;
  v30 = a4;
  while (v13)
  {
    v16 = __clz(__rbit64(v13));
    v33 = (v13 - 1) & v13;
LABEL_16:
    v19 = *(a4 + 48);
    v34 = *(v8 + 72);
    (*(v8 + 16))(v35, v19 + v34 * (v16 | (v14 << 6)), v36);
    sub_1B4EEC148(&qword_1EDB70020, MEMORY[0x1E69CD2D8], MEMORY[0x1E69CD2E8]);
    result = sub_1B4F67F14();
    v20 = -1 << *(v11 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v15 + 8 * (v21 >> 6))) == 0)
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
        v27 = *(v15 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v15 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v15 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    result = (*v31)(*(v11 + 48) + v23 * v34, v35, v36);
    ++*(v11 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v30;
    v13 = v33;
    if (!a3)
    {
LABEL_28:

      return v11;
    }
  }

  v17 = v14;
  while (1)
  {
    v14 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      goto LABEL_28;
    }

    v18 = a1[v14];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v33 = (v18 - 1) & v18;
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

uint64_t sub_1B4EE89B0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = sub_1B4F65E04();
  v8 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36, v9);
  v35 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x1E69E7CD0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F57F0, &qword_1B4F73F68);
  result = sub_1B4F68994();
  v11 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *a1;
  }

  v14 = 0;
  v15 = result + 56;
  v31 = (v8 + 32);
  v32 = v8 + 16;
  v30 = a4;
  while (v13)
  {
    v16 = __clz(__rbit64(v13));
    v33 = (v13 - 1) & v13;
LABEL_16:
    v19 = *(a4 + 48);
    v34 = *(v8 + 72);
    (*(v8 + 16))(v35, v19 + v34 * (v16 | (v14 << 6)), v36);
    sub_1B4EEC148(&qword_1EB8F4190, MEMORY[0x1E69CB850], MEMORY[0x1E69CB860]);
    result = sub_1B4F67F14();
    v20 = -1 << *(v11 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v15 + 8 * (v21 >> 6))) == 0)
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
        v27 = *(v15 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v15 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v15 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    result = (*v31)(*(v11 + 48) + v23 * v34, v35, v36);
    ++*(v11 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v30;
    v13 = v33;
    if (!a3)
    {
LABEL_28:

      return v11;
    }
  }

  v17 = v14;
  while (1)
  {
    v14 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      goto LABEL_28;
    }

    v18 = a1[v14];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v33 = (v18 - 1) & v18;
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

uint64_t sub_1B4EE8CD8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = sub_1B4F67A94();
  v8 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36, v9);
  v35 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x1E69E7CD0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F56E0, &qword_1B4F73EF8);
  result = sub_1B4F68994();
  v11 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *a1;
  }

  v14 = 0;
  v15 = result + 56;
  v31 = (v8 + 32);
  v32 = v8 + 16;
  v30 = a4;
  while (v13)
  {
    v16 = __clz(__rbit64(v13));
    v33 = (v13 - 1) & v13;
LABEL_16:
    v19 = *(a4 + 48);
    v34 = *(v8 + 72);
    (*(v8 + 16))(v35, v19 + v34 * (v16 | (v14 << 6)), v36);
    sub_1B4EEC148(&qword_1EB8F4180, MEMORY[0x1E69CD370], MEMORY[0x1E69CD380]);
    result = sub_1B4F67F14();
    v20 = -1 << *(v11 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v15 + 8 * (v21 >> 6))) == 0)
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
        v27 = *(v15 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v15 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v15 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    result = (*v31)(*(v11 + 48) + v23 * v34, v35, v36);
    ++*(v11 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v30;
    v13 = v33;
    if (!a3)
    {
LABEL_28:

      return v11;
    }
  }

  v17 = v14;
  while (1)
  {
    v14 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      goto LABEL_28;
    }

    v18 = a1[v14];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v33 = (v18 - 1) & v18;
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

void sub_1B4EE9000(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void, double), void (*a5)(char *))
{
  v27 = a3;
  v28 = a5;
  v26 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v12 = v25 - v11;
  v13 = a4(0, v10);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = v25 - v16;
  if (*(*v5 + 16))
  {
    v18 = 1 << *(a1 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & *(a1 + 56);
    v21 = (v18 + 63) >> 6;
    v25[1] = v14 + 8;
    v25[2] = v14 + 16;

    v22 = 0;
    while (v20)
    {
      v23 = v22;
LABEL_10:
      v24 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
      (*(v14 + 16))(v17, *(a1 + 48) + *(v14 + 72) * (v24 | (v23 << 6)), v13);
      v28(v17);
      (*(v14 + 8))(v17, v13);
      sub_1B4DD2BC4(v12, v26, v27);
    }

    while (1)
    {
      v23 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v23 >= v21)
      {

        return;
      }

      v20 = *(a1 + 56 + 8 * v23);
      ++v22;
      if (v20)
      {
        v22 = v23;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1B4EE921C(uint64_t a1, uint64_t a2)
{
  v101 = *MEMORY[0x1E69E9840];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F57D0, &unk_1B4F79EF0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = (&v72 - v11);
  v13 = sub_1B4F67A94();
  MEMORY[0x1EEE9AC00](v13, v14);
  v92 = (&v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = (&v72 - v18);
  MEMORY[0x1EEE9AC00](v20, v21);
  v87 = (&v72 - v23);
  if (!*(a2 + 16))
  {

    return MEMORY[0x1E69E7CD0];
  }

  v73 = v12;
  v75 = v8;
  v25 = a1 + 56;
  v24 = *(a1 + 56);
  v26 = -1 << *(a1 + 32);
  v86 = ~v26;
  if (-v26 < 64)
  {
    v27 = ~(-1 << -v26);
  }

  else
  {
    v27 = -1;
  }

  v94 = (v27 & v24);
  v79 = (63 - v26) >> 6;
  v93 = v22 + 16;
  v84 = (v22 + 48);
  v85 = (v22 + 56);
  v83 = (v22 + 32);
  v89 = (a2 + 56);
  v74 = v22;
  v95 = (v22 + 8);

  v29 = 0;
  v76 = a1;
  for (i = a1 + 56; ; v25 = i)
  {
    v30 = v94;
    v31 = v29;
    if (v94)
    {
LABEL_14:
      v2 = (v30 - 1) & v30;
      v35 = v73;
      (*(v74 + 16))(v73, *(a1 + 48) + *(v74 + 72) * (__clz(__rbit64(v30)) | (v31 << 6)), v13);
      v36 = 0;
      v33 = v31;
    }

    else
    {
      v32 = v79 <= (v29 + 1) ? v29 + 1 : v79;
      v33 = v32 - 1;
      v34 = v29;
      while (1)
      {
        v31 = v34 + 1;
        if (__OFADD__(v34, 1))
        {
          goto LABEL_58;
        }

        if (v31 >= v79)
        {
          break;
        }

        v30 = *(v25 + 8 * v31);
        ++v34;
        if (v30)
        {
          goto LABEL_14;
        }
      }

      v2 = 0;
      v36 = 1;
      v35 = v73;
    }

    v81 = *v85;
    v81(v35, v36, 1, v13);
    v96 = a1;
    v97 = v25;
    v98 = v86;
    v99 = v33;
    v100 = v2;
    v80 = *v84;
    if (v80(v35, 1, v13) == 1)
    {
      sub_1B4DD2BC4(v35, &qword_1EB8F57D0, &unk_1B4F79EF0);
      v65 = a1;
      goto LABEL_53;
    }

    v78 = *v83;
    v78(v87, v35, v13);
    v77 = sub_1B4EEC148(&qword_1EB8F4180, MEMORY[0x1E69CD370], MEMORY[0x1E69CD380]);
    v37 = sub_1B4F67F14();
    v38 = -1 << *(a2 + 32);
    v29 = v37 & ~v38;
    v31 = v29 >> 6;
    v25 = 1 << v29;
    if (((1 << v29) & v89[v29 >> 6]) != 0)
    {
      break;
    }

    (*v95)(v87, v13);
LABEL_22:
    v29 = v33;
    v94 = v2;
  }

  v72 = v95 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v88 = ~v38;
  v39 = *(v74 + 72);
  v90 = *(v74 + 16);
  v91 = v39;
  while (1)
  {
    v90(v19, *(a2 + 48) + v91 * v29, v13);
    v40 = sub_1B4EEC148(&qword_1EB8F56D8, MEMORY[0x1E69CD370], MEMORY[0x1E69CD388]);
    v41 = sub_1B4F67F54();
    v94 = *v95;
    v94(v19, v13);
    if (v41)
    {
      break;
    }

    v29 = (v29 + 1) & v88;
    v31 = v29 >> 6;
    v25 = 1 << v29;
    if (((1 << v29) & v89[v29 >> 6]) == 0)
    {
      a1 = v76;
      v94(v87, v13);
      goto LABEL_22;
    }
  }

  v88 = v40;
  v42 = (v94)(v87, v13);
  v44 = *(a2 + 32);
  v72 = ((1 << v44) + 63) >> 6;
  v28 = 8 * v72;
  a1 = v76;
  if ((v44 & 0x3Fu) > 0xD)
  {
    goto LABEL_59;
  }

  while (2)
  {
    v73 = &v72;
    MEMORY[0x1EEE9AC00](v42, v43);
    v46 = &v72 - ((v45 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v46, v89, v45);
    v47 = *&v46[8 * v31] & ~v25;
    v48 = *(a2 + 16);
    v87 = v46;
    *&v46[8 * v31] = v47;
    v49 = v48 - 1;
    v29 = v75;
    v50 = i;
    v51 = v79;
LABEL_26:
    v74 = v49;
    while (v2)
    {
      v52 = v33;
LABEL_38:
      v55 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      v90(v29, *(a1 + 48) + (v55 | (v52 << 6)) * v91, v13);
      v56 = 0;
LABEL_39:
      v81(v29, v56, 1, v13);
      v96 = a1;
      v97 = v50;
      v98 = v86;
      v99 = v33;
      v100 = v2;
      if (v80(v29, 1, v13) == 1)
      {
        sub_1B4DD2BC4(v29, &qword_1EB8F57D0, &unk_1B4F79EF0);
        a2 = sub_1B4EE8CD8(v87, v72, v74, a2);
        goto LABEL_52;
      }

      v78(v92, v29, v13);
      v57 = sub_1B4F67F14();
      v58 = a2;
      v59 = -1 << *(a2 + 32);
      v60 = v57 & ~v59;
      v31 = v60 >> 6;
      v25 = 1 << v60;
      if (((1 << v60) & v89[v60 >> 6]) != 0)
      {
        v90(v19, *(v58 + 48) + v60 * v91, v13);
        v61 = sub_1B4F67F54();
        v94(v19, v13);
        if ((v61 & 1) == 0)
        {
          v62 = ~v59;
          do
          {
            v60 = (v60 + 1) & v62;
            v31 = v60 >> 6;
            v25 = 1 << v60;
            if (((1 << v60) & v89[v60 >> 6]) == 0)
            {
              goto LABEL_27;
            }

            v90(v19, *(v58 + 48) + v60 * v91, v13);
            v63 = sub_1B4F67F54();
            v94(v19, v13);
          }

          while ((v63 & 1) == 0);
        }

        v94(v92, v13);
        v64 = v87[v31];
        v87[v31] = v64 & ~v25;
        a2 = v58;
        a1 = v76;
        v29 = v75;
        v50 = i;
        v51 = v79;
        if ((v64 & v25) != 0)
        {
          v49 = v74 - 1;
          if (__OFSUB__(v74, 1))
          {
            __break(1u);
          }

          if (v74 == 1)
          {

            a2 = MEMORY[0x1E69E7CD0];
            goto LABEL_52;
          }

          goto LABEL_26;
        }
      }

      else
      {
LABEL_27:
        v94(v92, v13);
        a2 = v58;
        a1 = v76;
        v29 = v75;
        v50 = i;
        v51 = v79;
      }
    }

    if (v51 <= (v33 + 1))
    {
      v53 = v33 + 1;
    }

    else
    {
      v53 = v51;
    }

    v54 = v53 - 1;
    while (1)
    {
      v52 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        break;
      }

      if (v52 >= v51)
      {
        v2 = 0;
        v56 = 1;
        v33 = v54;
        goto LABEL_39;
      }

      v2 = *(v50 + 8 * v52);
      ++v33;
      if (v2)
      {
        v33 = v52;
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    v67 = v28;

    v87 = a2;
    v68 = v67;
    if (swift_stdlib_isStackAllocationSafe())
    {
      v69 = v87;

      a2 = v69;
      continue;
    }

    break;
  }

  v70 = swift_slowAlloc();
  memcpy(v70, v89, v68);
  sub_1B4EEB148(v70, v72, v87, v29, &v96);
  a2 = v71;

  MEMORY[0x1B8C831D0](v70, -1, -1);
LABEL_52:
  v65 = v96;
LABEL_53:
  sub_1B4E632A0(v65);
  return a2;
}

uint64_t sub_1B4EE9C80(uint64_t a1, uint64_t a2)
{
  v101 = *MEMORY[0x1E69E9840];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F65E8, &unk_1B4F79EE0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = (&v72 - v11);
  v13 = sub_1B4F67124();
  MEMORY[0x1EEE9AC00](v13, v14);
  v92 = (&v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = (&v72 - v18);
  MEMORY[0x1EEE9AC00](v20, v21);
  v87 = (&v72 - v23);
  if (!*(a2 + 16))
  {

    return MEMORY[0x1E69E7CD0];
  }

  v73 = v12;
  v75 = v8;
  v25 = a1 + 56;
  v24 = *(a1 + 56);
  v26 = -1 << *(a1 + 32);
  v86 = ~v26;
  if (-v26 < 64)
  {
    v27 = ~(-1 << -v26);
  }

  else
  {
    v27 = -1;
  }

  v94 = (v27 & v24);
  v79 = (63 - v26) >> 6;
  v93 = v22 + 16;
  v84 = (v22 + 48);
  v85 = (v22 + 56);
  v83 = (v22 + 32);
  v89 = (a2 + 56);
  v74 = v22;
  v95 = (v22 + 8);

  v29 = 0;
  v76 = a1;
  for (i = a1 + 56; ; v25 = i)
  {
    v30 = v94;
    v31 = v29;
    if (v94)
    {
LABEL_14:
      v2 = (v30 - 1) & v30;
      v35 = v73;
      (*(v74 + 16))(v73, *(a1 + 48) + *(v74 + 72) * (__clz(__rbit64(v30)) | (v31 << 6)), v13);
      v36 = 0;
      v33 = v31;
    }

    else
    {
      v32 = v79 <= (v29 + 1) ? v29 + 1 : v79;
      v33 = v32 - 1;
      v34 = v29;
      while (1)
      {
        v31 = v34 + 1;
        if (__OFADD__(v34, 1))
        {
          goto LABEL_58;
        }

        if (v31 >= v79)
        {
          break;
        }

        v30 = *(v25 + 8 * v31);
        ++v34;
        if (v30)
        {
          goto LABEL_14;
        }
      }

      v2 = 0;
      v36 = 1;
      v35 = v73;
    }

    v81 = *v85;
    v81(v35, v36, 1, v13);
    v96 = a1;
    v97 = v25;
    v98 = v86;
    v99 = v33;
    v100 = v2;
    v80 = *v84;
    if (v80(v35, 1, v13) == 1)
    {
      sub_1B4DD2BC4(v35, &qword_1EB8F65E8, &unk_1B4F79EE0);
      v65 = a1;
      goto LABEL_53;
    }

    v78 = *v83;
    v78(v87, v35, v13);
    v77 = sub_1B4EEC148(&qword_1EDB70038, MEMORY[0x1E69CCE28], MEMORY[0x1E69CCE38]);
    v37 = sub_1B4F67F14();
    v38 = -1 << *(a2 + 32);
    v29 = v37 & ~v38;
    v31 = v29 >> 6;
    v25 = 1 << v29;
    if (((1 << v29) & v89[v29 >> 6]) != 0)
    {
      break;
    }

    (*v95)(v87, v13);
LABEL_22:
    v29 = v33;
    v94 = v2;
  }

  v72 = v95 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v88 = ~v38;
  v39 = *(v74 + 72);
  v90 = *(v74 + 16);
  v91 = v39;
  while (1)
  {
    v90(v19, *(a2 + 48) + v91 * v29, v13);
    v40 = sub_1B4EEC148(&qword_1EB8F56E8, MEMORY[0x1E69CCE28], MEMORY[0x1E69CCE40]);
    v41 = sub_1B4F67F54();
    v94 = *v95;
    v94(v19, v13);
    if (v41)
    {
      break;
    }

    v29 = (v29 + 1) & v88;
    v31 = v29 >> 6;
    v25 = 1 << v29;
    if (((1 << v29) & v89[v29 >> 6]) == 0)
    {
      a1 = v76;
      v94(v87, v13);
      goto LABEL_22;
    }
  }

  v88 = v40;
  v42 = (v94)(v87, v13);
  v44 = *(a2 + 32);
  v72 = ((1 << v44) + 63) >> 6;
  v28 = 8 * v72;
  a1 = v76;
  if ((v44 & 0x3Fu) > 0xD)
  {
    goto LABEL_59;
  }

  while (2)
  {
    v73 = &v72;
    MEMORY[0x1EEE9AC00](v42, v43);
    v46 = &v72 - ((v45 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v46, v89, v45);
    v47 = *&v46[8 * v31] & ~v25;
    v48 = *(a2 + 16);
    v87 = v46;
    *&v46[8 * v31] = v47;
    v49 = v48 - 1;
    v29 = v75;
    v50 = i;
    v51 = v79;
LABEL_26:
    v74 = v49;
    while (v2)
    {
      v52 = v33;
LABEL_38:
      v55 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      v90(v29, *(a1 + 48) + (v55 | (v52 << 6)) * v91, v13);
      v56 = 0;
LABEL_39:
      v81(v29, v56, 1, v13);
      v96 = a1;
      v97 = v50;
      v98 = v86;
      v99 = v33;
      v100 = v2;
      if (v80(v29, 1, v13) == 1)
      {
        sub_1B4DD2BC4(v29, &qword_1EB8F65E8, &unk_1B4F79EE0);
        a2 = sub_1B4EE8360(v87, v72, v74, a2);
        goto LABEL_52;
      }

      v78(v92, v29, v13);
      v57 = sub_1B4F67F14();
      v58 = a2;
      v59 = -1 << *(a2 + 32);
      v60 = v57 & ~v59;
      v31 = v60 >> 6;
      v25 = 1 << v60;
      if (((1 << v60) & v89[v60 >> 6]) != 0)
      {
        v90(v19, *(v58 + 48) + v60 * v91, v13);
        v61 = sub_1B4F67F54();
        v94(v19, v13);
        if ((v61 & 1) == 0)
        {
          v62 = ~v59;
          do
          {
            v60 = (v60 + 1) & v62;
            v31 = v60 >> 6;
            v25 = 1 << v60;
            if (((1 << v60) & v89[v60 >> 6]) == 0)
            {
              goto LABEL_27;
            }

            v90(v19, *(v58 + 48) + v60 * v91, v13);
            v63 = sub_1B4F67F54();
            v94(v19, v13);
          }

          while ((v63 & 1) == 0);
        }

        v94(v92, v13);
        v64 = v87[v31];
        v87[v31] = v64 & ~v25;
        a2 = v58;
        a1 = v76;
        v29 = v75;
        v50 = i;
        v51 = v79;
        if ((v64 & v25) != 0)
        {
          v49 = v74 - 1;
          if (__OFSUB__(v74, 1))
          {
            __break(1u);
          }

          if (v74 == 1)
          {

            a2 = MEMORY[0x1E69E7CD0];
            goto LABEL_52;
          }

          goto LABEL_26;
        }
      }

      else
      {
LABEL_27:
        v94(v92, v13);
        a2 = v58;
        a1 = v76;
        v29 = v75;
        v50 = i;
        v51 = v79;
      }
    }

    if (v51 <= (v33 + 1))
    {
      v53 = v33 + 1;
    }

    else
    {
      v53 = v51;
    }

    v54 = v53 - 1;
    while (1)
    {
      v52 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        break;
      }

      if (v52 >= v51)
      {
        v2 = 0;
        v56 = 1;
        v33 = v54;
        goto LABEL_39;
      }

      v2 = *(v50 + 8 * v52);
      ++v33;
      if (v2)
      {
        v33 = v52;
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    v67 = v28;

    v87 = a2;
    v68 = v67;
    if (swift_stdlib_isStackAllocationSafe())
    {
      v69 = v87;

      a2 = v69;
      continue;
    }

    break;
  }

  v70 = swift_slowAlloc();
  memcpy(v70, v89, v68);
  sub_1B4EEB61C(v70, v72, v87, v29, &v96);
  a2 = v71;

  MEMORY[0x1B8C831D0](v70, -1, -1);
LABEL_52:
  v65 = v96;
LABEL_53:
  sub_1B4E632A0(v65);
  return a2;
}

uint64_t sub_1B4EEA6E4(uint64_t a1, uint64_t a2)
{
  v101 = *MEMORY[0x1E69E9840];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F65E0, &unk_1B4F79ED0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = (&v72 - v11);
  v13 = sub_1B4F679C4();
  MEMORY[0x1EEE9AC00](v13, v14);
  v92 = (&v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = (&v72 - v18);
  MEMORY[0x1EEE9AC00](v20, v21);
  v87 = (&v72 - v23);
  if (!*(a2 + 16))
  {

    return MEMORY[0x1E69E7CD0];
  }

  v73 = v12;
  v75 = v8;
  v25 = a1 + 56;
  v24 = *(a1 + 56);
  v26 = -1 << *(a1 + 32);
  v86 = ~v26;
  if (-v26 < 64)
  {
    v27 = ~(-1 << -v26);
  }

  else
  {
    v27 = -1;
  }

  v94 = (v27 & v24);
  v79 = (63 - v26) >> 6;
  v93 = v22 + 16;
  v84 = (v22 + 48);
  v85 = (v22 + 56);
  v83 = (v22 + 32);
  v89 = (a2 + 56);
  v74 = v22;
  v95 = (v22 + 8);

  v29 = 0;
  v76 = a1;
  for (i = a1 + 56; ; v25 = i)
  {
    v30 = v94;
    v31 = v29;
    if (v94)
    {
LABEL_14:
      v2 = (v30 - 1) & v30;
      v35 = v73;
      (*(v74 + 16))(v73, *(a1 + 48) + *(v74 + 72) * (__clz(__rbit64(v30)) | (v31 << 6)), v13);
      v36 = 0;
      v33 = v31;
    }

    else
    {
      v32 = v79 <= (v29 + 1) ? v29 + 1 : v79;
      v33 = v32 - 1;
      v34 = v29;
      while (1)
      {
        v31 = v34 + 1;
        if (__OFADD__(v34, 1))
        {
          goto LABEL_58;
        }

        if (v31 >= v79)
        {
          break;
        }

        v30 = *(v25 + 8 * v31);
        ++v34;
        if (v30)
        {
          goto LABEL_14;
        }
      }

      v2 = 0;
      v36 = 1;
      v35 = v73;
    }

    v81 = *v85;
    v81(v35, v36, 1, v13);
    v96 = a1;
    v97 = v25;
    v98 = v86;
    v99 = v33;
    v100 = v2;
    v80 = *v84;
    if (v80(v35, 1, v13) == 1)
    {
      sub_1B4DD2BC4(v35, &qword_1EB8F65E0, &unk_1B4F79ED0);
      v65 = a1;
      goto LABEL_53;
    }

    v78 = *v83;
    v78(v87, v35, v13);
    v77 = sub_1B4EEC148(&qword_1EDB70020, MEMORY[0x1E69CD2D8], MEMORY[0x1E69CD2E8]);
    v37 = sub_1B4F67F14();
    v38 = -1 << *(a2 + 32);
    v29 = v37 & ~v38;
    v31 = v29 >> 6;
    v25 = 1 << v29;
    if (((1 << v29) & v89[v29 >> 6]) != 0)
    {
      break;
    }

    (*v95)(v87, v13);
LABEL_22:
    v29 = v33;
    v94 = v2;
  }

  v72 = v95 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v88 = ~v38;
  v39 = *(v74 + 72);
  v90 = *(v74 + 16);
  v91 = v39;
  while (1)
  {
    v90(v19, *(a2 + 48) + v91 * v29, v13);
    v40 = sub_1B4EEC148(&qword_1EB8F56F8, MEMORY[0x1E69CD2D8], MEMORY[0x1E69CD2F0]);
    v41 = sub_1B4F67F54();
    v94 = *v95;
    v94(v19, v13);
    if (v41)
    {
      break;
    }

    v29 = (v29 + 1) & v88;
    v31 = v29 >> 6;
    v25 = 1 << v29;
    if (((1 << v29) & v89[v29 >> 6]) == 0)
    {
      a1 = v76;
      v94(v87, v13);
      goto LABEL_22;
    }
  }

  v88 = v40;
  v42 = (v94)(v87, v13);
  v44 = *(a2 + 32);
  v72 = ((1 << v44) + 63) >> 6;
  v28 = 8 * v72;
  a1 = v76;
  if ((v44 & 0x3Fu) > 0xD)
  {
    goto LABEL_59;
  }

  while (2)
  {
    v73 = &v72;
    MEMORY[0x1EEE9AC00](v42, v43);
    v46 = &v72 - ((v45 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v46, v89, v45);
    v47 = *&v46[8 * v31] & ~v25;
    v48 = *(a2 + 16);
    v87 = v46;
    *&v46[8 * v31] = v47;
    v49 = v48 - 1;
    v29 = v75;
    v50 = i;
    v51 = v79;
LABEL_26:
    v74 = v49;
    while (v2)
    {
      v52 = v33;
LABEL_38:
      v55 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      v90(v29, *(a1 + 48) + (v55 | (v52 << 6)) * v91, v13);
      v56 = 0;
LABEL_39:
      v81(v29, v56, 1, v13);
      v96 = a1;
      v97 = v50;
      v98 = v86;
      v99 = v33;
      v100 = v2;
      if (v80(v29, 1, v13) == 1)
      {
        sub_1B4DD2BC4(v29, &qword_1EB8F65E0, &unk_1B4F79ED0);
        a2 = sub_1B4EE8688(v87, v72, v74, a2);
        goto LABEL_52;
      }

      v78(v92, v29, v13);
      v57 = sub_1B4F67F14();
      v58 = a2;
      v59 = -1 << *(a2 + 32);
      v60 = v57 & ~v59;
      v31 = v60 >> 6;
      v25 = 1 << v60;
      if (((1 << v60) & v89[v60 >> 6]) != 0)
      {
        v90(v19, *(v58 + 48) + v60 * v91, v13);
        v61 = sub_1B4F67F54();
        v94(v19, v13);
        if ((v61 & 1) == 0)
        {
          v62 = ~v59;
          do
          {
            v60 = (v60 + 1) & v62;
            v31 = v60 >> 6;
            v25 = 1 << v60;
            if (((1 << v60) & v89[v60 >> 6]) == 0)
            {
              goto LABEL_27;
            }

            v90(v19, *(v58 + 48) + v60 * v91, v13);
            v63 = sub_1B4F67F54();
            v94(v19, v13);
          }

          while ((v63 & 1) == 0);
        }

        v94(v92, v13);
        v64 = v87[v31];
        v87[v31] = v64 & ~v25;
        a2 = v58;
        a1 = v76;
        v29 = v75;
        v50 = i;
        v51 = v79;
        if ((v64 & v25) != 0)
        {
          v49 = v74 - 1;
          if (__OFSUB__(v74, 1))
          {
            __break(1u);
          }

          if (v74 == 1)
          {

            a2 = MEMORY[0x1E69E7CD0];
            goto LABEL_52;
          }

          goto LABEL_26;
        }
      }

      else
      {
LABEL_27:
        v94(v92, v13);
        a2 = v58;
        a1 = v76;
        v29 = v75;
        v50 = i;
        v51 = v79;
      }
    }

    if (v51 <= (v33 + 1))
    {
      v53 = v33 + 1;
    }

    else
    {
      v53 = v51;
    }

    v54 = v53 - 1;
    while (1)
    {
      v52 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        break;
      }

      if (v52 >= v51)
      {
        v2 = 0;
        v56 = 1;
        v33 = v54;
        goto LABEL_39;
      }

      v2 = *(v50 + 8 * v52);
      ++v33;
      if (v2)
      {
        v33 = v52;
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    v67 = v28;

    v87 = a2;
    v68 = v67;
    if (swift_stdlib_isStackAllocationSafe())
    {
      v69 = v87;

      a2 = v69;
      continue;
    }

    break;
  }

  v70 = swift_slowAlloc();
  memcpy(v70, v89, v68);
  sub_1B4EEBAF0(v70, v72, v87, v29, &v96);
  a2 = v71;

  MEMORY[0x1B8C831D0](v70, -1, -1);
LABEL_52:
  v65 = v96;
LABEL_53:
  sub_1B4E632A0(v65);
  return a2;
}

void sub_1B4EEB148(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v50 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F57D0, &unk_1B4F79EF0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v49 - v11;
  v13 = sub_1B4F67A94();
  MEMORY[0x1EEE9AC00](v13, v14);
  v60 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18.n128_f64[0] = MEMORY[0x1EEE9AC00](v16, v17);
  v66 = &v49 - v19;
  v20 = *(a3 + 16);
  v21 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v22 = *(a1 + v21);
  v52 = a1;
  v53 = v12;
  *(a1 + v21) = v22 & ((-1 << a4) - 1);
  v23 = v20 - 1;
  v63 = v24 + 16;
  v64 = a3;
  v57 = (v24 + 48);
  v58 = (v24 + 56);
  v56 = (v24 + 32);
  v62 = a3 + 56;
  v59 = v24;
  v65 = (v24 + 8);
  v54 = a5;
  while (2)
  {
    v51 = v23;
    do
    {
      while (1)
      {
        v26 = *a5;
        v27 = a5[1];
        v29 = a5[2];
        v28 = a5[3];
        v30 = a5[4];
        if (!v30)
        {
          v32 = (v29 + 64) >> 6;
          if (v32 <= v28 + 1)
          {
            v33 = v28 + 1;
          }

          else
          {
            v33 = (v29 + 64) >> 6;
          }

          v34 = v33 - 1;
          while (1)
          {
            v31 = v28 + 1;
            if (__OFADD__(v28, 1))
            {
              break;
            }

            if (v31 >= v32)
            {
              v35 = 0;
              v36 = 1;
              goto LABEL_15;
            }

            v30 = *(v27 + 8 * v31);
            ++v28;
            if (v30)
            {
              goto LABEL_14;
            }
          }

          __break(1u);
          goto LABEL_29;
        }

        v31 = a5[3];
LABEL_14:
        v35 = (v30 - 1) & v30;
        (*(v59 + 16))(v12, *(v26 + 48) + *(v59 + 72) * (__clz(__rbit64(v30)) | (v31 << 6)), v13, v18);
        v36 = 0;
        v34 = v31;
LABEL_15:
        (*v58)(v12, v36, 1, v13);
        *a5 = v26;
        a5[1] = v27;
        a5[2] = v29;
        a5[3] = v34;
        a5[4] = v35;
        if ((*v57)(v12, 1, v13) == 1)
        {
          sub_1B4DD2BC4(v12, &qword_1EB8F57D0, &unk_1B4F79EF0);
          v48 = v64;

          sub_1B4EE8CD8(v52, v50, v51, v48);
          return;
        }

        (*v56)(v66, v12, v13);
        v37 = v64;
        sub_1B4EEC148(&qword_1EB8F4180, MEMORY[0x1E69CD370], MEMORY[0x1E69CD380]);
        v38 = sub_1B4F67F14();
        v39 = -1 << *(v37 + 32);
        v40 = v38 & ~v39;
        v41 = v40 >> 6;
        v42 = 1 << v40;
        if (((1 << v40) & *(v62 + 8 * (v40 >> 6))) != 0)
        {
          break;
        }

        v25 = *v65;
LABEL_4:
        v25(v66, v13);
      }

      v55 = v65 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v61 = ~v39;
      v43 = *(v59 + 72);
      v44 = *(v59 + 16);
      while (1)
      {
        v45 = v60;
        v44(v60, *(v64 + 48) + v43 * v40, v13);
        sub_1B4EEC148(&qword_1EB8F56D8, MEMORY[0x1E69CD370], MEMORY[0x1E69CD388]);
        v46 = sub_1B4F67F54();
        v25 = *v65;
        (*v65)(v45, v13);
        if (v46)
        {
          break;
        }

        v40 = (v40 + 1) & v61;
        v41 = v40 >> 6;
        v42 = 1 << v40;
        if (((1 << v40) & *(v62 + 8 * (v40 >> 6))) == 0)
        {
          v12 = v53;
          a5 = v54;
          goto LABEL_4;
        }
      }

      v25(v66, v13);
      v12 = v53;
      v47 = v52[v41];
      v52[v41] = v47 & ~v42;
      a5 = v54;
    }

    while ((v47 & v42) == 0);
    v23 = v51 - 1;
    if (__OFSUB__(v51, 1))
    {
LABEL_29:
      __break(1u);
      return;
    }

    if (v51 != 1)
    {
      continue;
    }

    break;
  }
}

void sub_1B4EEB61C(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v50 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F65E8, &unk_1B4F79EE0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v49 - v11;
  v13 = sub_1B4F67124();
  MEMORY[0x1EEE9AC00](v13, v14);
  v60 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18.n128_f64[0] = MEMORY[0x1EEE9AC00](v16, v17);
  v66 = &v49 - v19;
  v20 = *(a3 + 16);
  v21 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v22 = *(a1 + v21);
  v52 = a1;
  v53 = v12;
  *(a1 + v21) = v22 & ((-1 << a4) - 1);
  v23 = v20 - 1;
  v63 = v24 + 16;
  v64 = a3;
  v57 = (v24 + 48);
  v58 = (v24 + 56);
  v56 = (v24 + 32);
  v62 = a3 + 56;
  v59 = v24;
  v65 = (v24 + 8);
  v54 = a5;
  while (2)
  {
    v51 = v23;
    do
    {
      while (1)
      {
        v26 = *a5;
        v27 = a5[1];
        v29 = a5[2];
        v28 = a5[3];
        v30 = a5[4];
        if (!v30)
        {
          v32 = (v29 + 64) >> 6;
          if (v32 <= v28 + 1)
          {
            v33 = v28 + 1;
          }

          else
          {
            v33 = (v29 + 64) >> 6;
          }

          v34 = v33 - 1;
          while (1)
          {
            v31 = v28 + 1;
            if (__OFADD__(v28, 1))
            {
              break;
            }

            if (v31 >= v32)
            {
              v35 = 0;
              v36 = 1;
              goto LABEL_15;
            }

            v30 = *(v27 + 8 * v31);
            ++v28;
            if (v30)
            {
              goto LABEL_14;
            }
          }

          __break(1u);
          goto LABEL_29;
        }

        v31 = a5[3];
LABEL_14:
        v35 = (v30 - 1) & v30;
        (*(v59 + 16))(v12, *(v26 + 48) + *(v59 + 72) * (__clz(__rbit64(v30)) | (v31 << 6)), v13, v18);
        v36 = 0;
        v34 = v31;
LABEL_15:
        (*v58)(v12, v36, 1, v13);
        *a5 = v26;
        a5[1] = v27;
        a5[2] = v29;
        a5[3] = v34;
        a5[4] = v35;
        if ((*v57)(v12, 1, v13) == 1)
        {
          sub_1B4DD2BC4(v12, &qword_1EB8F65E8, &unk_1B4F79EE0);
          v48 = v64;

          sub_1B4EE8360(v52, v50, v51, v48);
          return;
        }

        (*v56)(v66, v12, v13);
        v37 = v64;
        sub_1B4EEC148(&qword_1EDB70038, MEMORY[0x1E69CCE28], MEMORY[0x1E69CCE38]);
        v38 = sub_1B4F67F14();
        v39 = -1 << *(v37 + 32);
        v40 = v38 & ~v39;
        v41 = v40 >> 6;
        v42 = 1 << v40;
        if (((1 << v40) & *(v62 + 8 * (v40 >> 6))) != 0)
        {
          break;
        }

        v25 = *v65;
LABEL_4:
        v25(v66, v13);
      }

      v55 = v65 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v61 = ~v39;
      v43 = *(v59 + 72);
      v44 = *(v59 + 16);
      while (1)
      {
        v45 = v60;
        v44(v60, *(v64 + 48) + v43 * v40, v13);
        sub_1B4EEC148(&qword_1EB8F56E8, MEMORY[0x1E69CCE28], MEMORY[0x1E69CCE40]);
        v46 = sub_1B4F67F54();
        v25 = *v65;
        (*v65)(v45, v13);
        if (v46)
        {
          break;
        }

        v40 = (v40 + 1) & v61;
        v41 = v40 >> 6;
        v42 = 1 << v40;
        if (((1 << v40) & *(v62 + 8 * (v40 >> 6))) == 0)
        {
          v12 = v53;
          a5 = v54;
          goto LABEL_4;
        }
      }

      v25(v66, v13);
      v12 = v53;
      v47 = v52[v41];
      v52[v41] = v47 & ~v42;
      a5 = v54;
    }

    while ((v47 & v42) == 0);
    v23 = v51 - 1;
    if (__OFSUB__(v51, 1))
    {
LABEL_29:
      __break(1u);
      return;
    }

    if (v51 != 1)
    {
      continue;
    }

    break;
  }
}

void sub_1B4EEBAF0(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v50 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F65E0, &unk_1B4F79ED0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v49 - v11;
  v13 = sub_1B4F679C4();
  MEMORY[0x1EEE9AC00](v13, v14);
  v60 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18.n128_f64[0] = MEMORY[0x1EEE9AC00](v16, v17);
  v66 = &v49 - v19;
  v20 = *(a3 + 16);
  v21 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v22 = *(a1 + v21);
  v52 = a1;
  v53 = v12;
  *(a1 + v21) = v22 & ((-1 << a4) - 1);
  v23 = v20 - 1;
  v63 = v24 + 16;
  v64 = a3;
  v57 = (v24 + 48);
  v58 = (v24 + 56);
  v56 = (v24 + 32);
  v62 = a3 + 56;
  v59 = v24;
  v65 = (v24 + 8);
  v54 = a5;
  while (2)
  {
    v51 = v23;
    do
    {
      while (1)
      {
        v26 = *a5;
        v27 = a5[1];
        v29 = a5[2];
        v28 = a5[3];
        v30 = a5[4];
        if (!v30)
        {
          v32 = (v29 + 64) >> 6;
          if (v32 <= v28 + 1)
          {
            v33 = v28 + 1;
          }

          else
          {
            v33 = (v29 + 64) >> 6;
          }

          v34 = v33 - 1;
          while (1)
          {
            v31 = v28 + 1;
            if (__OFADD__(v28, 1))
            {
              break;
            }

            if (v31 >= v32)
            {
              v35 = 0;
              v36 = 1;
              goto LABEL_15;
            }

            v30 = *(v27 + 8 * v31);
            ++v28;
            if (v30)
            {
              goto LABEL_14;
            }
          }

          __break(1u);
          goto LABEL_29;
        }

        v31 = a5[3];
LABEL_14:
        v35 = (v30 - 1) & v30;
        (*(v59 + 16))(v12, *(v26 + 48) + *(v59 + 72) * (__clz(__rbit64(v30)) | (v31 << 6)), v13, v18);
        v36 = 0;
        v34 = v31;
LABEL_15:
        (*v58)(v12, v36, 1, v13);
        *a5 = v26;
        a5[1] = v27;
        a5[2] = v29;
        a5[3] = v34;
        a5[4] = v35;
        if ((*v57)(v12, 1, v13) == 1)
        {
          sub_1B4DD2BC4(v12, &qword_1EB8F65E0, &unk_1B4F79ED0);
          v48 = v64;

          sub_1B4EE8688(v52, v50, v51, v48);
          return;
        }

        (*v56)(v66, v12, v13);
        v37 = v64;
        sub_1B4EEC148(&qword_1EDB70020, MEMORY[0x1E69CD2D8], MEMORY[0x1E69CD2E8]);
        v38 = sub_1B4F67F14();
        v39 = -1 << *(v37 + 32);
        v40 = v38 & ~v39;
        v41 = v40 >> 6;
        v42 = 1 << v40;
        if (((1 << v40) & *(v62 + 8 * (v40 >> 6))) != 0)
        {
          break;
        }

        v25 = *v65;
LABEL_4:
        v25(v66, v13);
      }

      v55 = v65 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v61 = ~v39;
      v43 = *(v59 + 72);
      v44 = *(v59 + 16);
      while (1)
      {
        v45 = v60;
        v44(v60, *(v64 + 48) + v43 * v40, v13);
        sub_1B4EEC148(&qword_1EB8F56F8, MEMORY[0x1E69CD2D8], MEMORY[0x1E69CD2F0]);
        v46 = sub_1B4F67F54();
        v25 = *v65;
        (*v65)(v45, v13);
        if (v46)
        {
          break;
        }

        v40 = (v40 + 1) & v61;
        v41 = v40 >> 6;
        v42 = 1 << v40;
        if (((1 << v40) & *(v62 + 8 * (v40 >> 6))) == 0)
        {
          v12 = v53;
          a5 = v54;
          goto LABEL_4;
        }
      }

      v25(v66, v13);
      v12 = v53;
      v47 = v52[v41];
      v52[v41] = v47 & ~v42;
      a5 = v54;
    }

    while ((v47 & v42) == 0);
    v23 = v51 - 1;
    if (__OFSUB__(v51, 1))
    {
LABEL_29:
      __break(1u);
      return;
    }

    if (v51 != 1)
    {
      continue;
    }

    break;
  }
}

unint64_t sub_1B4EEBFC4()
{
  result = qword_1EB8F6620;
  if (!qword_1EB8F6620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F6620);
  }

  return result;
}

uint64_t sub_1B4EEC018(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B4EEC080(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B4EEC0E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B4EEC148(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

Swift::Int __swiftcall CatalogProgram.indexOfWorkout(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v3 = sub_1B4F655A4();
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = 0;
    v6 = (v3 + 40);
    while (1)
    {
      v7 = *(v6 - 1) == countAndFlagsBits && *v6 == object;
      if (v7 || (sub_1B4F68D54() & 1) != 0)
      {
        break;
      }

      ++v5;
      v6 += 2;
      if (v4 == v5)
      {
        goto LABEL_9;
      }
    }

    sub_1B4F655A4();

    sub_1B4F655A4();

    result = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
    }
  }

  else
  {
LABEL_9:

    if (qword_1EDB724A8 != -1)
    {
      swift_once();
    }

    v8 = sub_1B4F67C54();
    __swift_project_value_buffer(v8, qword_1EDB72490);
    v9 = sub_1B4F67C34();
    v10 = sub_1B4F685C4();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1B4DC2000, v9, v10, "Next workout was not present in program workout list", v11, 2u);
      MEMORY[0x1B8C831D0](v11, -1, -1);
    }

    return 0;
  }

  return result;
}

void *WorkoutPlanClient.__allocating_init(eventHub:queue:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = objc_allocWithZone(MEMORY[0x1E696B0B8]);
  v7 = a3;
  v8 = sub_1B4F67F64();
  v9 = [v6 initWithMachServiceName:v8 options:0];

  type metadata accessor for XPCClient();
  swift_allocObject();
  v10 = sub_1B4DC42B8(v9, v7);

  v11 = *(v10 + 32);
  os_unfair_lock_lock(*(v11 + 16));
  if (*(v10 + 48) == 1)
  {
    *(v10 + 48) = 2;
    [*(v10 + 24) resume];
  }

  os_unfair_lock_unlock(*(v11 + 16));
  v12 = swift_allocObject();
  v13 = sub_1B4EF4D40(v10, a1, a2, v12);

  return v13;
}

uint64_t WorkoutPlanClient.deinit()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t WorkoutPlanClient.__deallocating_deinit()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t WorkoutPlanClient.createWorkoutPlan(modalityPreferences:name:planIdentifier:recommendationMetrics:schedule:startDate:variation:workoutPlanLength:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 88) = v18;
  *(v9 + 96) = v8;
  *(v9 + 226) = v17;
  *(v9 + 72) = a8;
  *(v9 + 80) = v16;
  *(v9 + 56) = a6;
  *(v9 + 64) = a7;
  *(v9 + 40) = a4;
  *(v9 + 48) = a5;
  *(v9 + 24) = a2;
  *(v9 + 32) = a3;
  *(v9 + 16) = a1;
  v10 = sub_1B4F64B44();
  *(v9 + 104) = v10;
  *(v9 + 112) = *(v10 - 8);
  *(v9 + 120) = swift_task_alloc();
  v11 = sub_1B4F66364();
  *(v9 + 128) = v11;
  *(v9 + 136) = *(v11 - 8);
  *(v9 + 144) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6648, &qword_1B4F79F78);
  *(v9 + 152) = swift_task_alloc();
  v12 = sub_1B4F649A4();
  *(v9 + 160) = v12;
  *(v9 + 168) = *(v12 - 8);
  *(v9 + 176) = swift_task_alloc();
  v13 = sub_1B4F660A4();
  *(v9 + 184) = v13;
  *(v9 + 192) = *(v13 - 8);
  *(v9 + 200) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4EEC768, 0, 0);
}

uint64_t sub_1B4EEC768()
{
  if (qword_1EDB714F8 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 168);
  v1 = *(v0 + 176);
  v20 = *(v0 + 160);
  v21 = *(v0 + 152);
  v3 = *(v0 + 136);
  v23 = *(v0 + 144);
  v24 = *(v0 + 128);
  v25 = *(v0 + 120);
  v4 = *(v0 + 112);
  v26 = *(v0 + 104);
  v27 = *(v0 + 96);
  v22 = *(v0 + 72);
  v5 = *(v0 + 56);
  v19 = *(v0 + 64);
  v6 = *(v0 + 48);
  v7 = sub_1B4F67C54();
  __swift_project_value_buffer(v7, qword_1EDB71500);
  v8._object = 0x80000001B4F83410;
  v9._countAndFlagsBits = 0xD000000000000080;
  v9._object = 0x80000001B4F83440;
  v8._countAndFlagsBits = 0xD000000000000025;
  Logger.trace(file:function:)(v8, v9);
  (*(v2 + 16))(v1, v6, v20);
  sub_1B4EF4F38(v5, v21);
  (*(v3 + 16))(v23, v19, v24);
  (*(v4 + 16))(v25, v22, v26);

  sub_1B4F66094();
  v10 = *(v27 + 24);
  ObjectType = swift_getObjectType();
  *(v0 + 224) = 315;
  v12 = swift_task_alloc();
  *(v0 + 208) = v12;
  v13 = sub_1B4F64ED4();
  *v12 = v0;
  v12[1] = sub_1B4EECA20;
  v14 = *(v0 + 200);
  v15 = *(v0 + 184);
  v16 = *(v0 + 16);
  v17 = MEMORY[0x1E69CBE10];

  return TransportClient.sendRequest<A, B>(_:payload:)(v16, (v0 + 224), v14, ObjectType, v15, v13, v10, v17);
}

uint64_t sub_1B4EECA20()
{
  *(*v1 + 216) = v0;

  if (v0)
  {
    v2 = sub_1B4EF5D78;
  }

  else
  {
    v2 = sub_1B4EF5D64;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t WorkoutPlanClient.replaceWorkoutPlan(modalityPreferences:name:planIdentifier:recommendationMetrics:schedule:startDate:variation:workoutPlanLength:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 88) = v18;
  *(v9 + 96) = v8;
  *(v9 + 226) = v17;
  *(v9 + 72) = a8;
  *(v9 + 80) = v16;
  *(v9 + 56) = a6;
  *(v9 + 64) = a7;
  *(v9 + 40) = a4;
  *(v9 + 48) = a5;
  *(v9 + 24) = a2;
  *(v9 + 32) = a3;
  *(v9 + 16) = a1;
  v10 = sub_1B4F64B44();
  *(v9 + 104) = v10;
  *(v9 + 112) = *(v10 - 8);
  *(v9 + 120) = swift_task_alloc();
  v11 = sub_1B4F66364();
  *(v9 + 128) = v11;
  *(v9 + 136) = *(v11 - 8);
  *(v9 + 144) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6648, &qword_1B4F79F78);
  *(v9 + 152) = swift_task_alloc();
  v12 = sub_1B4F649A4();
  *(v9 + 160) = v12;
  *(v9 + 168) = *(v12 - 8);
  *(v9 + 176) = swift_task_alloc();
  v13 = sub_1B4F660A4();
  *(v9 + 184) = v13;
  *(v9 + 192) = *(v13 - 8);
  *(v9 + 200) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4EECD68, 0, 0);
}

uint64_t sub_1B4EECD68()
{
  if (qword_1EDB714F8 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 168);
  v1 = *(v0 + 176);
  v20 = *(v0 + 160);
  v21 = *(v0 + 152);
  v3 = *(v0 + 136);
  v23 = *(v0 + 144);
  v24 = *(v0 + 128);
  v25 = *(v0 + 120);
  v4 = *(v0 + 112);
  v26 = *(v0 + 104);
  v27 = *(v0 + 96);
  v22 = *(v0 + 72);
  v5 = *(v0 + 56);
  v19 = *(v0 + 64);
  v6 = *(v0 + 48);
  v7 = sub_1B4F67C54();
  __swift_project_value_buffer(v7, qword_1EDB71500);
  v8._object = 0x80000001B4F83410;
  v9._countAndFlagsBits = 0xD000000000000081;
  v9._object = 0x80000001B4F834D0;
  v8._countAndFlagsBits = 0xD000000000000025;
  Logger.trace(file:function:)(v8, v9);
  (*(v2 + 16))(v1, v6, v20);
  sub_1B4EF4F38(v5, v21);
  (*(v3 + 16))(v23, v19, v24);
  (*(v4 + 16))(v25, v22, v26);

  sub_1B4F66094();
  v10 = *(v27 + 24);
  ObjectType = swift_getObjectType();
  *(v0 + 224) = 358;
  v12 = swift_task_alloc();
  *(v0 + 208) = v12;
  v13 = sub_1B4F64ED4();
  *v12 = v0;
  v12[1] = sub_1B4EECA20;
  v14 = *(v0 + 200);
  v15 = *(v0 + 184);
  v16 = *(v0 + 16);
  v17 = MEMORY[0x1E69CBE10];

  return TransportClient.sendRequest<A, B>(_:payload:)(v16, (v0 + 224), v14, ObjectType, v15, v13, v10, v17);
}

uint64_t WorkoutPlanClient.createUnsavedWorkoutPlan(modalityPreferences:name:planIdentifier:recommendationMetrics:schedule:startDate:variation:workoutPlanLength:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 88) = v18;
  *(v9 + 96) = v8;
  *(v9 + 226) = v17;
  *(v9 + 72) = a8;
  *(v9 + 80) = v16;
  *(v9 + 56) = a6;
  *(v9 + 64) = a7;
  *(v9 + 40) = a4;
  *(v9 + 48) = a5;
  *(v9 + 24) = a2;
  *(v9 + 32) = a3;
  *(v9 + 16) = a1;
  v10 = sub_1B4F64B44();
  *(v9 + 104) = v10;
  *(v9 + 112) = *(v10 - 8);
  *(v9 + 120) = swift_task_alloc();
  v11 = sub_1B4F66364();
  *(v9 + 128) = v11;
  *(v9 + 136) = *(v11 - 8);
  *(v9 + 144) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6648, &qword_1B4F79F78);
  *(v9 + 152) = swift_task_alloc();
  v12 = sub_1B4F649A4();
  *(v9 + 160) = v12;
  *(v9 + 168) = *(v12 - 8);
  *(v9 + 176) = swift_task_alloc();
  v13 = sub_1B4F660A4();
  *(v9 + 184) = v13;
  *(v9 + 192) = *(v13 - 8);
  *(v9 + 200) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4EED254, 0, 0);
}

uint64_t sub_1B4EED254()
{
  if (qword_1EDB714F8 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 168);
  v1 = *(v0 + 176);
  v20 = *(v0 + 160);
  v21 = *(v0 + 152);
  v3 = *(v0 + 136);
  v23 = *(v0 + 144);
  v24 = *(v0 + 128);
  v25 = *(v0 + 120);
  v4 = *(v0 + 112);
  v26 = *(v0 + 104);
  v27 = *(v0 + 96);
  v22 = *(v0 + 72);
  v5 = *(v0 + 56);
  v19 = *(v0 + 64);
  v6 = *(v0 + 48);
  v7 = sub_1B4F67C54();
  __swift_project_value_buffer(v7, qword_1EDB71500);
  v8._object = 0x80000001B4F83410;
  v9._countAndFlagsBits = 0xD000000000000087;
  v9._object = 0x80000001B4F83560;
  v8._countAndFlagsBits = 0xD000000000000025;
  Logger.trace(file:function:)(v8, v9);
  (*(v2 + 16))(v1, v6, v20);
  sub_1B4EF4F38(v5, v21);
  (*(v3 + 16))(v23, v19, v24);
  (*(v4 + 16))(v25, v22, v26);

  sub_1B4F66094();
  v10 = *(v27 + 24);
  ObjectType = swift_getObjectType();
  *(v0 + 224) = 348;
  v12 = swift_task_alloc();
  *(v0 + 208) = v12;
  v13 = sub_1B4F64ED4();
  *v12 = v0;
  v12[1] = sub_1B4EED50C;
  v14 = *(v0 + 200);
  v15 = *(v0 + 184);
  v16 = *(v0 + 16);
  v17 = MEMORY[0x1E69CBE10];

  return TransportClient.sendRequest<A, B>(_:payload:)(v16, (v0 + 224), v14, ObjectType, v15, v13, v10, v17);
}

uint64_t sub_1B4EED50C()
{
  *(*v1 + 216) = v0;

  if (v0)
  {
    v2 = sub_1B4EED6D8;
  }

  else
  {
    v2 = sub_1B4EED620;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B4EED620()
{
  (*(v0[24] + 8))(v0[25], v0[23]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1B4EED6D8()
{
  (*(v0[24] + 8))(v0[25], v0[23]);

  v1 = v0[1];

  return v1();
}

uint64_t WorkoutPlanClient.repeatWorkoutPlan(request:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B4EED7B4, 0, 0);
}

uint64_t sub_1B4EED7B4()
{
  if (qword_1EDB714F8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 32);
  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB71500);
  v3._countAndFlagsBits = 0xD000000000000025;
  v3._object = 0x80000001B4F83410;
  v4._object = 0x80000001B4F835F0;
  v4._countAndFlagsBits = 0xD00000000000001BLL;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  *(v0 + 56) = 325;
  v7 = swift_task_alloc();
  *(v0 + 40) = v7;
  v8 = sub_1B4F64A24();
  v9 = sub_1B4F64ED4();
  *v7 = v0;
  v7[1] = sub_1B4EED954;
  v10 = *(v0 + 16);
  v11 = *(v0 + 24);
  v12 = MEMORY[0x1E69CAE78];

  return TransportClient.sendRequest<A, B>(_:payload:)(v10, (v0 + 56), v11, ObjectType, v8, v9, v5, v12);
}

uint64_t sub_1B4EED954()
{
  v2 = *v1;
  *(v2 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B4EF5D70, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t WorkoutPlanClient.makeWorkoutPlanSchedule(request:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B4EEDAAC, 0, 0);
}

uint64_t sub_1B4EEDAAC()
{
  if (qword_1EDB714F8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 32);
  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB71500);
  v3._countAndFlagsBits = 0xD000000000000025;
  v3._object = 0x80000001B4F83410;
  v4._object = 0x80000001B4F83610;
  v4._countAndFlagsBits = 0xD000000000000021;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  *(v0 + 56) = 319;
  v7 = swift_task_alloc();
  *(v0 + 40) = v7;
  v8 = sub_1B4F66EF4();
  v9 = sub_1B4F66364();
  *v7 = v0;
  v7[1] = sub_1B4EED954;
  v10 = *(v0 + 16);
  v11 = *(v0 + 24);
  v12 = MEMORY[0x1E69CCC40];

  return TransportClient.sendRequest<A, B>(_:payload:)(v10, (v0 + 56), v11, ObjectType, v8, v9, v5, v12);
}

uint64_t WorkoutPlanClient.updateWorkoutPlan(_:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B4EEDC70, 0, 0);
}

uint64_t sub_1B4EEDC70()
{
  if (qword_1EDB714F8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 32);
  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB71500);
  v3._countAndFlagsBits = 0xD000000000000025;
  v3._object = 0x80000001B4F83410;
  v4._object = 0x80000001B4F83640;
  v4._countAndFlagsBits = 0xD000000000000015;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  *(v0 + 56) = 342;
  v7 = swift_task_alloc();
  *(v0 + 40) = v7;
  v8 = sub_1B4F64ED4();
  *v7 = v0;
  v7[1] = sub_1B4EED954;
  v9 = *(v0 + 16);
  v10 = *(v0 + 24);
  v11 = MEMORY[0x1E69CB0C8];

  return TransportClient.sendRequest<A, B>(_:payload:)(v9, (v0 + 56), v10, ObjectType, v8, v8, v5, v11);
}

uint64_t sub_1B4EEDDF0()
{
  v2 = *v1;
  *(v2 + 40) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B4EEDF24, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t WorkoutPlanClient.queryActiveWorkoutPlanProgressSnapshot()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B4EEDF5C, 0, 0);
}

uint64_t sub_1B4EEDF5C()
{
  if (qword_1EDB714F8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 24);
  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB71500);
  v3._object = 0x80000001B4F83410;
  v4._countAndFlagsBits = 0xD000000000000028;
  v4._object = 0x80000001B4F83680;
  v3._countAndFlagsBits = 0xD000000000000025;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  *(v0 + 48) = 355;
  v7 = swift_task_alloc();
  *(v0 + 32) = v7;
  v8 = sub_1B4F67044();
  *v7 = v0;
  v7[1] = sub_1B4EEE0CC;
  v9 = *(v0 + 16);
  v10 = MEMORY[0x1E69CCD50];
  v11 = MEMORY[0x1E69CCD58];

  return TransportClient.sendRequest<A>(_:)(v9, (v0 + 48), ObjectType, v8, v5, v10, v11);
}

uint64_t sub_1B4EEE0CC()
{
  v2 = *v1;
  *(v2 + 40) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B4EF5D74, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t WorkoutPlanClient.queryWorkoutPlanSummary(_:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B4EEE224, 0, 0);
}

uint64_t sub_1B4EEE224()
{
  if (qword_1EDB714F8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 32);
  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB71500);
  v3._countAndFlagsBits = 0xD000000000000025;
  v3._object = 0x80000001B4F83410;
  v4._object = 0x80000001B4F836B0;
  v4._countAndFlagsBits = 0xD00000000000001BLL;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  *(v0 + 56) = 324;
  v7 = swift_task_alloc();
  *(v0 + 40) = v7;
  v8 = sub_1B4F649A4();
  v9 = sub_1B4F660C4();
  *v7 = v0;
  v7[1] = sub_1B4EED954;
  v10 = *(v0 + 16);
  v11 = *(v0 + 24);
  v12 = MEMORY[0x1E69CAE60];

  return TransportClient.sendRequest<A, B>(_:payload:)(v10, (v0 + 56), v11, ObjectType, v8, v9, v5, v12);
}

uint64_t WorkoutPlanClient.queryPendingWorkoutPlanSummary()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B4EEE3E4, 0, 0);
}

uint64_t sub_1B4EEE3E4()
{
  if (qword_1EDB714F8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 24);
  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB71500);
  v3._countAndFlagsBits = 0xD000000000000025;
  v3._object = 0x80000001B4F83410;
  v4._object = 0x80000001B4F836D0;
  v4._countAndFlagsBits = 0xD000000000000020;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  *(v0 + 48) = 345;
  v7 = swift_task_alloc();
  *(v0 + 32) = v7;
  v8 = sub_1B4F660C4();
  *v7 = v0;
  v7[1] = sub_1B4EEE0CC;
  v9 = *(v0 + 16);
  v10 = MEMORY[0x1E69CBE28];
  v11 = MEMORY[0x1E69CBE30];

  return TransportClient.sendRequest<A>(_:)(v9, (v0 + 48), ObjectType, v8, v5, v10, v11);
}

uint64_t WorkoutPlanClient.queryWorkoutPlanSummaries(request:)(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B4EEE578, 0, 0);
}

uint64_t sub_1B4EEE578()
{
  if (qword_1EDB714F8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 32);
  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB71500);
  v3._countAndFlagsBits = 0xD000000000000025;
  v3._object = 0x80000001B4F83410;
  v4._object = 0x80000001B4F83700;
  v4._countAndFlagsBits = 0xD000000000000023;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  *(v0 + 56) = 356;
  v7 = swift_task_alloc();
  *(v0 + 40) = v7;
  v8 = sub_1B4F66994();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6650, &qword_1B4F79FD0);
  sub_1B4E2F2A0(&qword_1EB8F6658, &qword_1EB8F6650, &qword_1B4F79FD0);
  sub_1B4EF4FA8();
  *v7 = v0;
  v7[1] = sub_1B4EEE754;
  v10 = *(v0 + 24);
  v11 = MEMORY[0x1E69CC7F8];

  return TransportClient.sendRequest<A, B>(_:payload:)(v0 + 16, (v0 + 56), v10, ObjectType, v8, v9, v5, v11);
}

uint64_t sub_1B4EEE754()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_1B4EF5D70;
  }

  else
  {
    v2 = sub_1B4EF5D80;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B4EEE888()
{
  if (qword_1EDB714F8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 24);
  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB71500);
  v3._countAndFlagsBits = 0xD000000000000025;
  v3._object = 0x80000001B4F83410;
  v4._object = 0x80000001B4F83730;
  v4._countAndFlagsBits = 0xD000000000000021;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  *(v0 + 48) = 346;
  v7 = swift_task_alloc();
  *(v0 + 32) = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6670, &qword_1B4F79FE0);
  v9 = sub_1B4EF505C();
  v10 = sub_1B4EF50E0();
  *v7 = v0;
  v7[1] = sub_1B4EEEA14;

  return TransportClient.sendRequest<A>(_:)(v0 + 16, (v0 + 48), ObjectType, v8, v5, v9, v10);
}

uint64_t sub_1B4EEEA14()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_1B4EF5D74;
  }

  else
  {
    v2 = sub_1B4EF5D80;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t WorkoutPlanClient.insertCompletedWorkoutPlanSummary(_:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B4EEEB48, 0, 0);
}

uint64_t sub_1B4EEEB48()
{
  if (qword_1EDB714F8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 24);
  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB71500);
  v3._object = 0x80000001B4F83410;
  v4._object = 0x80000001B4F83760;
  v3._countAndFlagsBits = 0xD000000000000025;
  v4._countAndFlagsBits = 0xD000000000000025;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  *(v0 + 48) = 317;
  v7 = swift_task_alloc();
  *(v0 + 32) = v7;
  v8 = sub_1B4F66AF4();
  *v7 = v0;
  v7[1] = sub_1B4EEE0CC;
  v9 = *(v0 + 16);
  v10 = MEMORY[0x1E69CC9E8];
  v11 = MEMORY[0x1E69CC9F0];

  return TransportClient.sendRequest<A>(_:payload:)((v0 + 48), v9, ObjectType, v8, v5, v10, v11);
}

uint64_t WorkoutPlanClient.requestWorkoutPlans(state:)(uint64_t a1, char a2)
{
  *(v3 + 25) = a2;
  *(v3 + 56) = a1;
  *(v3 + 64) = v2;
  return MEMORY[0x1EEE6DFA0](sub_1B4EEECD8, 0, 0);
}

uint64_t sub_1B4EEECD8()
{
  if (qword_1EDB714F8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 25);
  v3 = *(v0 + 56);
  v2 = *(v0 + 64);
  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB71500);
  v5._countAndFlagsBits = 0xD000000000000025;
  v5._object = 0x80000001B4F83410;
  v6._object = 0x80000001B4F83790;
  v6._countAndFlagsBits = 0xD00000000000001BLL;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  *(v0 + 26) = 326;
  *(v0 + 16) = v3;
  *(v0 + 24) = v1 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6690, &qword_1B4F79FF8);
  sub_1B4F65024();
  *(v0 + 48) = *(v0 + 40);
  v9 = swift_task_alloc();
  *(v0 + 72) = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6698, &qword_1B4F7A000);
  sub_1B4EF5194();
  sub_1B4EF5218();
  *v9 = v0;
  v9[1] = sub_1B4EEEEC4;
  v11 = MEMORY[0x1E69E6530];
  v12 = MEMORY[0x1E69CD4A0];

  return TransportClient.sendRequest<A, B>(_:payload:)(v0 + 32, (v0 + 26), v0 + 48, ObjectType, v11, v10, v7, v12);
}

uint64_t sub_1B4EEEEC4()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_1B4EEEFF4;
  }

  else
  {
    v2 = sub_1B4EEEFD8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t WorkoutPlanClient.queryDailyNotificationSchedule(for:)(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B4EEF02C, 0, 0);
}

uint64_t sub_1B4EEF02C()
{
  if (qword_1EDB714F8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 32);
  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB71500);
  v3._countAndFlagsBits = 0xD000000000000025;
  v3._object = 0x80000001B4F83410;
  v4._object = 0x80000001B4F837B0;
  v4._countAndFlagsBits = 0xD000000000000024;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  *(v0 + 56) = 323;
  v7 = swift_task_alloc();
  *(v0 + 40) = v7;
  v8 = sub_1B4F64964();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F66B8, &qword_1B4F7A010);
  sub_1B4E2F2A0(&qword_1EDB6DBB0, &qword_1EB8F66B8, &qword_1B4F7A010);
  sub_1B4EF52CC();
  *v7 = v0;
  v7[1] = sub_1B4EEE754;
  v10 = *(v0 + 24);
  v11 = MEMORY[0x1E69CAE50];

  return TransportClient.sendRequest<A, B>(_:payload:)(v0 + 16, (v0 + 56), v10, ObjectType, v8, v9, v5, v11);
}

uint64_t WorkoutPlanClient.queryNextIncompleteWorkoutReference(after:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B4EEF22C, 0, 0);
}

uint64_t sub_1B4EEF22C()
{
  if (qword_1EDB714F8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 32);
  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB71500);
  v3._object = 0x80000001B4F83410;
  v4._countAndFlagsBits = 0xD00000000000002BLL;
  v4._object = 0x80000001B4F837E0;
  v3._countAndFlagsBits = 0xD000000000000025;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  *(v0 + 56) = 340;
  v7 = swift_task_alloc();
  *(v0 + 40) = v7;
  v8 = sub_1B4F64964();
  v9 = sub_1B4F66484();
  *v7 = v0;
  v7[1] = sub_1B4E409B8;
  v10 = *(v0 + 16);
  v11 = *(v0 + 24);
  v12 = MEMORY[0x1E69CAE50];

  return TransportClient.sendRequest<A, B>(_:payload:)(v10, (v0 + 56), v11, ObjectType, v8, v9, v5, v12);
}

uint64_t WorkoutPlanClient.queryIncompleteMatchingWorkoutReferences(plan:workout:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  v5 = sub_1B4F649A4();
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();
  v6 = sub_1B4F67544();
  v4[10] = v6;
  v4[11] = *(v6 - 8);
  v4[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4EEF4EC, 0, 0);
}

uint64_t sub_1B4EEF4EC()
{
  v1 = *(v0 + 48);
  (*(*(v0 + 64) + 16))(*(v0 + 72), *(v0 + 24), *(v0 + 56));

  sub_1B4F67534();
  v2 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  *(v0 + 120) = 351;
  v4 = swift_task_alloc();
  *(v0 + 104) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F66C0, &qword_1B4F7A028);
  sub_1B4EF5380();
  sub_1B4EF5404();
  *v4 = v0;
  v4[1] = sub_1B4EEF654;
  v6 = *(v0 + 96);
  v7 = *(v0 + 80);
  v8 = MEMORY[0x1E69CD1D8];

  return TransportClient.sendRequest<A, B>(_:payload:)(v0 + 16, (v0 + 120), v6, ObjectType, v7, v5, v2, v8);
}

uint64_t sub_1B4EEF654()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_1B4EEF800;
  }

  else
  {
    v2 = sub_1B4EEF768;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B4EEF768()
{
  (*(v0[11] + 8))(v0[12], v0[10]);
  v1 = v0[2];

  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_1B4EEF800()
{
  (*(v0[11] + 8))(v0[12], v0[10]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1B4EEF8A8()
{
  if (qword_1EDB714F8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB71500);
  v3._object = 0x80000001B4F83410;
  v4._object = 0x80000001B4F83810;
  v3._countAndFlagsBits = 0xD000000000000025;
  v4._countAndFlagsBits = 0xD000000000000025;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  *(v0 + 40) = 347;
  v7 = swift_task_alloc();
  *(v0 + 24) = v7;
  *v7 = v0;
  v7[1] = sub_1B4EEF9E8;

  return TransportClient.sendRequest(_:)((v0 + 40), ObjectType, v5);
}

uint64_t sub_1B4EEF9E8()
{
  v2 = *v1;
  *(v2 + 32) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B4EEFB1C, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1B4EEFB54()
{
  if (qword_1EDB714F8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 24);
  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB71500);
  v3._countAndFlagsBits = 0xD000000000000025;
  v3._object = 0x80000001B4F83410;
  v4._object = 0x80000001B4F83840;
  v4._countAndFlagsBits = 0xD000000000000023;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  *(v0 + 48) = 321;
  v7 = swift_task_alloc();
  *(v0 + 32) = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F66E0, &qword_1B4F7A040);
  v9 = sub_1B4EF54B8();
  v10 = sub_1B4EF553C();
  *v7 = v0;
  v7[1] = sub_1B4EEFCE0;

  return TransportClient.sendRequest<A>(_:)(v0 + 16, (v0 + 48), ObjectType, v8, v5, v9, v10);
}

uint64_t sub_1B4EEFCE0()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_1B4EEDF24;
  }

  else
  {
    v2 = sub_1B4EEFDF4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t WorkoutPlanClient.queryWorkoutPlanItemMetrics(planIdentifier:)(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B4EEFE30, 0, 0);
}

uint64_t sub_1B4EEFE30()
{
  if (qword_1EDB714F8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 32);
  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB71500);
  v3._object = 0x80000001B4F83410;
  v4._countAndFlagsBits = 0xD00000000000002CLL;
  v4._object = 0x80000001B4F83870;
  v3._countAndFlagsBits = 0xD000000000000025;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  *(v0 + 56) = 350;
  v7 = swift_task_alloc();
  *(v0 + 40) = v7;
  v8 = sub_1B4F649A4();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F66E0, &qword_1B4F7A040);
  sub_1B4EF54B8();
  sub_1B4EF553C();
  *v7 = v0;
  v7[1] = sub_1B4EEFFE4;
  v10 = *(v0 + 24);
  v11 = MEMORY[0x1E69CAE60];

  return TransportClient.sendRequest<A, B>(_:payload:)(v0 + 16, (v0 + 56), v10, ObjectType, v8, v9, v5, v11);
}

uint64_t sub_1B4EEFFE4()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_1B4E40AEC;
  }

  else
  {
    v2 = sub_1B4EF5D80;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t WorkoutPlanClient.requestWorkoutPlanAlternatives(workoutIdentifier:workoutPlan:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = sub_1B4F64ED4();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  v7 = sub_1B4F672A4();
  v5[10] = v7;
  v5[11] = *(v7 - 8);
  v5[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6700, &qword_1B4F7A058);
  v5[13] = swift_task_alloc();
  v8 = sub_1B4F66384();
  v5[14] = v8;
  v5[15] = *(v8 - 8);
  v5[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4EF02B0, 0, 0);
}

uint64_t sub_1B4EF02B0()
{
  if (qword_1EDB714F8 != -1)
  {
    swift_once();
  }

  v1 = sub_1B4F67C54();
  __swift_project_value_buffer(v1, qword_1EDB71500);
  v2._object = 0x80000001B4F83410;
  v3._countAndFlagsBits = 0xD00000000000003ELL;
  v3._object = 0x80000001B4F838A0;
  v2._countAndFlagsBits = 0xD000000000000025;
  Logger.trace(file:function:)(v2, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6708, &qword_1B4F7A060);
  v4 = sub_1B4F649A4();
  v5 = *(v4 - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1B4F6CF50;
  sub_1B4F64E84();
  v8 = sub_1B4E2C118(v7);
  *(v0 + 136) = v8;
  swift_setDeallocating();
  (*(v5 + 8))(v7 + v6, v4);
  swift_deallocClassInstance();
  v9 = swift_task_alloc();
  *(v0 + 144) = v9;
  *v9 = v0;
  v9[1] = sub_1B4EF04B8;

  return WorkoutPlanClient.queryWorkoutPlanTemplates(identifiers:)(v8);
}

uint64_t sub_1B4EF04B8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 152) = v1;

  if (v1)
  {
    v5 = sub_1B4EF0AAC;
  }

  else
  {

    *(v4 + 160) = a1;
    v5 = sub_1B4EF05E8;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1B4EF05E8()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);
  v3 = *(v0 + 104);
  sub_1B4E24518(*(v0 + 160), v3);

  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1B4EF55F0(*(v0 + 104));
    v4 = sub_1B4F65E24();
    sub_1B4EF5C70(&qword_1EB8F6710, MEMORY[0x1E69CB928], MEMORY[0x1E69CB930]);
    swift_allocError();
    (*(*(v4 - 8) + 104))(v5, *MEMORY[0x1E69CB8F0], v4);
    swift_willThrow();

    v6 = *(v0 + 8);

    return v6();
  }

  else
  {
    v9 = *(v0 + 64);
    v8 = *(v0 + 72);
    v11 = *(v0 + 48);
    v10 = *(v0 + 56);
    v12 = *(v0 + 40);
    (*(*(v0 + 120) + 32))(*(v0 + 128), *(v0 + 104), *(v0 + 112));
    (*(v9 + 16))(v8, v12, v10);

    sub_1B4F66374();
    sub_1B4F67294();
    v13 = *(v11 + 24);
    ObjectType = swift_getObjectType();
    *(v0 + 184) = 328;
    v15 = swift_task_alloc();
    *(v0 + 168) = v15;
    v16 = sub_1B4F66974();
    *v15 = v0;
    v15[1] = sub_1B4EF08D0;
    v17 = *(v0 + 96);
    v18 = *(v0 + 80);
    v19 = *(v0 + 16);
    v20 = MEMORY[0x1E69CCF90];

    return TransportClient.sendRequest<A, B>(_:payload:)(v19, (v0 + 184), v17, ObjectType, v18, v16, v13, v20);
  }
}

uint64_t sub_1B4EF08D0()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_1B4EF0B40;
  }

  else
  {
    v2 = sub_1B4EF09E4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B4EF09E4()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[14];
  (*(v0[11] + 8))(v0[12], v0[10]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1B4EF0AAC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B4EF0B40()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[14];
  (*(v0[11] + 8))(v0[12], v0[10]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t WorkoutPlanClient.queryWorkoutPlanTemplates(identifiers:)(uint64_t a1)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B4EF0C24, 0, 0);
}

uint64_t sub_1B4EF0C24()
{
  if (qword_1EDB714F8 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = sub_1B4F67C54();
  __swift_project_value_buffer(v3, qword_1EDB71500);
  v4._object = 0x80000001B4F83410;
  v5._countAndFlagsBits = 0xD000000000000027;
  v5._object = 0x80000001B4F838E0;
  v4._countAndFlagsBits = 0xD000000000000025;
  Logger.trace(file:function:)(v4, v5);
  v13 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  *(v0 + 64) = 335;
  *(v0 + 24) = v2;
  v6 = swift_task_alloc();
  *(v0 + 48) = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6718, &qword_1B4F7A070);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6720, &qword_1B4F7A078);
  v9 = sub_1B4EF5658();
  sub_1B4EF56DC();
  sub_1B4EF5790();
  sub_1B4EF5814();
  *v6 = v0;
  v6[1] = sub_1B4EF0DFC;

  return TransportClient.sendRequest<A, B>(_:payload:)(v0 + 16, (v0 + 64), v0 + 24, ObjectType, v7, v8, v13, v9);
}

uint64_t sub_1B4EF0DFC()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_1B4EF5D60;
  }

  else
  {
    v2 = sub_1B4EF5D80;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t WorkoutPlanClient.updateWorkoutPlanAlternatives(planIdentifier:reference:workoutIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = sub_1B4F66484();
  v6[8] = v7;
  v6[9] = *(v7 - 8);
  v6[10] = swift_task_alloc();
  v8 = sub_1B4F649A4();
  v6[11] = v8;
  v6[12] = *(v8 - 8);
  v6[13] = swift_task_alloc();
  v9 = sub_1B4F67224();
  v6[14] = v9;
  v6[15] = *(v9 - 8);
  v6[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4EF1090, 0, 0);
}

uint64_t sub_1B4EF1090()
{
  if (qword_1EDB714F8 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 96);
  v1 = *(v0 + 104);
  v3 = *(v0 + 80);
  v4 = *(v0 + 72);
  v20 = *(v0 + 88);
  v21 = *(v0 + 64);
  v5 = *(v0 + 56);
  v6 = *(v0 + 32);
  v7 = *(v0 + 24);
  v8 = sub_1B4F67C54();
  __swift_project_value_buffer(v8, qword_1EDB71500);
  v9._object = 0x80000001B4F83410;
  v10._countAndFlagsBits = 0xD00000000000004ALL;
  v10._object = 0x80000001B4F83910;
  v9._countAndFlagsBits = 0xD000000000000025;
  Logger.trace(file:function:)(v9, v10);
  (*(v2 + 16))(v1, v7, v20);
  (*(v4 + 16))(v3, v6, v21);

  sub_1B4F67214();
  v11 = *(v5 + 24);
  ObjectType = swift_getObjectType();
  *(v0 + 152) = 330;
  v13 = swift_task_alloc();
  *(v0 + 136) = v13;
  v14 = sub_1B4F64ED4();
  *v13 = v0;
  v13[1] = sub_1B4EF12B4;
  v15 = *(v0 + 128);
  v16 = *(v0 + 112);
  v17 = *(v0 + 16);
  v18 = MEMORY[0x1E69CCF18];

  return TransportClient.sendRequest<A, B>(_:payload:)(v17, (v0 + 152), v15, ObjectType, v16, v14, v11, v18);
}

uint64_t sub_1B4EF12B4()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_1B4EF1464;
  }

  else
  {
    v2 = sub_1B4EF13C8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B4EF13C8()
{
  (*(v0[15] + 8))(v0[16], v0[14]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1B4EF1464()
{
  (*(v0[15] + 8))(v0[16], v0[14]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1B4EF1520()
{
  if (qword_1EDB714F8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB71500);
  v3._countAndFlagsBits = 0xD000000000000025;
  v3._object = 0x80000001B4F83410;
  v4._object = 0x80000001B4F83960;
  v4._countAndFlagsBits = 0xD00000000000001DLL;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  *(v0 + 40) = 354;
  v7 = swift_task_alloc();
  *(v0 + 24) = v7;
  *v7 = v0;
  v7[1] = sub_1B4EF1664;

  return TransportClient.sendRequest(_:)((v0 + 40), ObjectType, v5);
}

uint64_t sub_1B4EF1664()
{
  v2 = *v1;
  *(v2 + 32) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B4EF5D7C, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t WorkoutPlanClient.deleteWorkoutPlan(_:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B4EF17B8, 0, 0);
}

uint64_t sub_1B4EF17B8()
{
  if (qword_1EDB714F8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 24);
  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB71500);
  v3._countAndFlagsBits = 0xD000000000000025;
  v3._object = 0x80000001B4F83410;
  v4._object = 0x80000001B4F83980;
  v4._countAndFlagsBits = 0xD000000000000015;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  *(v0 + 48) = 316;
  v7 = swift_task_alloc();
  *(v0 + 32) = v7;
  v8 = sub_1B4F649A4();
  *v7 = v0;
  v7[1] = sub_1B4EEE0CC;
  v9 = *(v0 + 16);
  v10 = MEMORY[0x1E69CAE60];
  v11 = MEMORY[0x1E69CAE68];

  return TransportClient.sendRequest<A>(_:payload:)((v0 + 48), v9, ObjectType, v8, v5, v10, v11);
}

uint64_t WorkoutPlanClient.insertWorkoutPlan(_:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B4EF1948, 0, 0);
}

uint64_t sub_1B4EF1948()
{
  if (qword_1EDB714F8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 24);
  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB71500);
  v3._countAndFlagsBits = 0xD000000000000025;
  v3._object = 0x80000001B4F83410;
  v4._object = 0x80000001B4F839A0;
  v4._countAndFlagsBits = 0xD000000000000015;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  *(v0 + 48) = 318;
  v7 = swift_task_alloc();
  *(v0 + 32) = v7;
  v8 = sub_1B4F64ED4();
  *v7 = v0;
  v7[1] = sub_1B4EEE0CC;
  v9 = *(v0 + 16);
  v10 = MEMORY[0x1E69CB0C8];
  v11 = MEMORY[0x1E69CB0D0];

  return TransportClient.sendRequest<A>(_:payload:)((v0 + 48), v9, ObjectType, v8, v5, v10, v11);
}

uint64_t WorkoutPlanClient.insertWorkoutPlanTemplate(_:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B4EF1AD8, 0, 0);
}

uint64_t sub_1B4EF1AD8()
{
  if (qword_1EDB714F8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 24);
  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB71500);
  v3._countAndFlagsBits = 0xD000000000000025;
  v3._object = 0x80000001B4F83410;
  v4._object = 0x80000001B4F839C0;
  v4._countAndFlagsBits = 0xD00000000000001DLL;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  *(v0 + 48) = 344;
  v7 = swift_task_alloc();
  *(v0 + 32) = v7;
  v8 = sub_1B4F66384();
  *v7 = v0;
  v7[1] = sub_1B4EEE0CC;
  v9 = *(v0 + 16);
  v10 = MEMORY[0x1E69CC070];
  v11 = MEMORY[0x1E69CC078];

  return TransportClient.sendRequest<A>(_:payload:)((v0 + 48), v9, ObjectType, v8, v5, v10, v11);
}

uint64_t WorkoutPlanClient.requestWorkoutPlan(_:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B4EF1C6C, 0, 0);
}

uint64_t sub_1B4EF1C6C()
{
  if (qword_1EDB714F8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 32);
  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB71500);
  v3._countAndFlagsBits = 0xD000000000000025;
  v3._object = 0x80000001B4F83410;
  v4._object = 0x80000001B4F839E0;
  v4._countAndFlagsBits = 0xD000000000000016;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  *(v0 + 56) = 327;
  v7 = swift_task_alloc();
  *(v0 + 40) = v7;
  v8 = sub_1B4F649A4();
  v9 = sub_1B4F64ED4();
  *v7 = v0;
  v7[1] = sub_1B4EED954;
  v10 = *(v0 + 16);
  v11 = *(v0 + 24);
  v12 = MEMORY[0x1E69CAE60];

  return TransportClient.sendRequest<A, B>(_:payload:)(v10, (v0 + 56), v11, ObjectType, v8, v9, v5, v12);
}

uint64_t WorkoutPlanClient.validateSchedule(request:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B4EF1E2C, 0, 0);
}

uint64_t sub_1B4EF1E2C()
{
  if (qword_1EDB714F8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 24);
  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB71500);
  v3._countAndFlagsBits = 0xD000000000000025;
  v3._object = 0x80000001B4F83410;
  v4._object = 0x80000001B4F83A00;
  v4._countAndFlagsBits = 0xD00000000000001ALL;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  *(v0 + 48) = 331;
  v7 = swift_task_alloc();
  *(v0 + 32) = v7;
  v8 = sub_1B4F66EF4();
  *v7 = v0;
  v7[1] = sub_1B4EEE0CC;
  v9 = *(v0 + 16);
  v10 = MEMORY[0x1E69CCC40];
  v11 = MEMORY[0x1E69CCC48];

  return TransportClient.sendRequest<A>(_:payload:)((v0 + 48), v9, ObjectType, v8, v5, v10, v11);
}

uint64_t sub_1B4EF1FBC()
{
  if (qword_1EDB714F8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 24);
  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB71500);
  v3._object = 0x80000001B4F83410;
  v4._countAndFlagsBits = 0xD000000000000027;
  v4._object = 0x80000001B4F83A20;
  v3._countAndFlagsBits = 0xD000000000000025;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  *(v0 + 48) = 334;
  v7 = swift_task_alloc();
  *(v0 + 32) = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6758, &qword_1B4F7A0C0);
  v9 = sub_1B4EF58C8();
  v10 = sub_1B4EF594C();
  *v7 = v0;
  v7[1] = sub_1B4EEEA14;

  return TransportClient.sendRequest<A>(_:)(v0 + 16, (v0 + 48), ObjectType, v8, v5, v9, v10);
}

uint64_t sub_1B4EF2168()
{
  if (qword_1EDB714F8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 24);
  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB71500);
  v3._countAndFlagsBits = 0xD000000000000025;
  v3._object = 0x80000001B4F83410;
  v4._object = 0x80000001B4F83A50;
  v4._countAndFlagsBits = 0xD000000000000023;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  *(v0 + 48) = 353;
  v7 = swift_task_alloc();
  *(v0 + 32) = v7;
  *v7 = v0;
  v7[1] = sub_1B4EEEA14;
  v8 = MEMORY[0x1E69E6530];
  v9 = MEMORY[0x1E69CD4A0];
  v10 = MEMORY[0x1E69CD4A8];

  return TransportClient.sendRequest<A>(_:)(v0 + 16, (v0 + 48), ObjectType, v8, v5, v9, v10);
}

uint64_t WorkoutPlanClient.queryWorkoutPlanTemplateMetadata(identifiers:)(uint64_t a1)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B4EF22EC, 0, 0);
}

uint64_t sub_1B4EF22EC()
{
  if (qword_1EDB714F8 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = sub_1B4F67C54();
  __swift_project_value_buffer(v3, qword_1EDB71500);
  v4._object = 0x80000001B4F83410;
  v5._countAndFlagsBits = 0xD00000000000002ELL;
  v5._object = 0x80000001B4F83A80;
  v4._countAndFlagsBits = 0xD000000000000025;
  Logger.trace(file:function:)(v4, v5);
  v13 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  *(v0 + 64) = 337;
  *(v0 + 24) = v2;
  v6 = swift_task_alloc();
  *(v0 + 48) = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6718, &qword_1B4F7A070);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6778, &qword_1B4F7A0D8);
  v9 = sub_1B4EF5658();
  sub_1B4EF56DC();
  sub_1B4EF5A00();
  sub_1B4EF5A84();
  *v6 = v0;
  v6[1] = sub_1B4EF24C4;

  return TransportClient.sendRequest<A, B>(_:payload:)(v0 + 16, (v0 + 64), v0 + 24, ObjectType, v7, v8, v13, v9);
}

uint64_t sub_1B4EF24C4()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_1B4EF25D8;
  }

  else
  {
    v2 = sub_1B4EF5D80;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t WorkoutPlanClient.queryAllWorkoutPlans(forTemplateIdentifier:)(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B4EF2610, 0, 0);
}

uint64_t sub_1B4EF2610()
{
  if (qword_1EDB714F8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 32);
  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB71500);
  v3._object = 0x80000001B4F83410;
  v4._countAndFlagsBits = 0xD00000000000002CLL;
  v4._object = 0x80000001B4F83AB0;
  v3._countAndFlagsBits = 0xD000000000000025;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  *(v0 + 56) = 336;
  v7 = swift_task_alloc();
  *(v0 + 40) = v7;
  v8 = sub_1B4F649A4();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6698, &qword_1B4F7A000);
  sub_1B4EF5194();
  sub_1B4EF5218();
  *v7 = v0;
  v7[1] = sub_1B4EEE754;
  v10 = *(v0 + 24);
  v11 = MEMORY[0x1E69CAE60];

  return TransportClient.sendRequest<A, B>(_:payload:)(v0 + 16, (v0 + 56), v10, ObjectType, v8, v9, v5, v11);
}

uint64_t WorkoutPlanClient.deleteWorkoutPlanTemplate(_:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B4EF27E4, 0, 0);
}

uint64_t sub_1B4EF27E4()
{
  if (qword_1EDB714F8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 24);
  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB71500);
  v3._countAndFlagsBits = 0xD000000000000025;
  v3._object = 0x80000001B4F83410;
  v4._object = 0x80000001B4F83AE0;
  v4._countAndFlagsBits = 0xD00000000000001DLL;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  *(v0 + 48) = 343;
  v7 = swift_task_alloc();
  *(v0 + 32) = v7;
  v8 = sub_1B4F649A4();
  *v7 = v0;
  v7[1] = sub_1B4EEE0CC;
  v9 = *(v0 + 16);
  v10 = MEMORY[0x1E69CAE60];
  v11 = MEMORY[0x1E69CAE68];

  return TransportClient.sendRequest<A>(_:payload:)((v0 + 48), v9, ObjectType, v8, v5, v10, v11);
}

uint64_t WorkoutPlanClient.updateWorkoutPlanTemplateName(identifier:name:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_1B4F649A4();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v6 = sub_1B4F673F4();
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4EF2A74, 0, 0);
}

uint64_t sub_1B4EF2A74()
{
  if (qword_1EDB714F8 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v4 = *(v0 + 40);
  v3 = *(v0 + 48);
  v5 = *(v0 + 16);
  v6 = sub_1B4F67C54();
  __swift_project_value_buffer(v6, qword_1EDB71500);
  v7._object = 0x80000001B4F83410;
  v8._countAndFlagsBits = 0xD00000000000002FLL;
  v8._object = 0x80000001B4F83B00;
  v7._countAndFlagsBits = 0xD000000000000025;
  Logger.trace(file:function:)(v7, v8);
  (*(v2 + 16))(v1, v5, v3);

  sub_1B4F673E4();
  v9 = *(v4 + 24);
  ObjectType = swift_getObjectType();
  *(v0 + 112) = 338;
  v11 = swift_task_alloc();
  *(v0 + 96) = v11;
  *v11 = v0;
  v11[1] = sub_1B4EF2C34;
  v12 = *(v0 + 88);
  v13 = *(v0 + 72);
  v14 = MEMORY[0x1E69CD0A8];
  v15 = MEMORY[0x1E69CD0B0];

  return TransportClient.sendRequest<A>(_:payload:)((v0 + 112), v12, ObjectType, v13, v9, v14, v15);
}

uint64_t sub_1B4EF2C34()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_1B4EF2DD0;
  }

  else
  {
    v2 = sub_1B4EF2D48;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B4EF2D48()
{
  (*(v0[10] + 8))(v0[11], v0[9]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1B4EF2DD0()
{
  (*(v0[10] + 8))(v0[11], v0[9]);

  v1 = v0[1];

  return v1();
}

uint64_t WorkoutPlanClient.endWorkoutPlan(identifier:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B4EF2E78, 0, 0);
}

uint64_t sub_1B4EF2E78()
{
  if (qword_1EDB714F8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 24);
  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB71500);
  v3._countAndFlagsBits = 0xD000000000000025;
  v3._object = 0x80000001B4F83410;
  v4._object = 0x80000001B4F83B30;
  v4._countAndFlagsBits = 0xD00000000000001BLL;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  *(v0 + 48) = 339;
  v7 = swift_task_alloc();
  *(v0 + 32) = v7;
  v8 = sub_1B4F649A4();
  *v7 = v0;
  v7[1] = sub_1B4EEE0CC;
  v9 = *(v0 + 16);
  v10 = MEMORY[0x1E69CAE60];
  v11 = MEMORY[0x1E69CAE68];

  return TransportClient.sendRequest<A>(_:payload:)((v0 + 48), v9, ObjectType, v8, v5, v10, v11);
}

uint64_t sub_1B4EF3008()
{
  if (qword_1EDB714F8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 24);
  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB71500);
  v3._countAndFlagsBits = 0xD000000000000025;
  v3._object = 0x80000001B4F83410;
  v4._object = 0x80000001B4F83B50;
  v4._countAndFlagsBits = 0xD00000000000001ELL;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  *(v0 + 48) = 333;
  v7 = swift_task_alloc();
  *(v0 + 32) = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6798, &qword_1B4F7A108);
  v9 = sub_1B4EF5B38();
  v10 = sub_1B4EF5BBC();
  *v7 = v0;
  v7[1] = sub_1B4EEEA14;

  return TransportClient.sendRequest<A>(_:)(v0 + 16, (v0 + 48), ObjectType, v8, v5, v9, v10);
}

uint64_t WorkoutPlanClient.insertArchivedPlanSession(session:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B4EF31B4, 0, 0);
}

uint64_t sub_1B4EF31B4()
{
  if (qword_1EDB714F8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 24);
  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB71500);
  v3._countAndFlagsBits = 0xD000000000000025;
  v3._object = 0x80000001B4F83410;
  v4._object = 0x80000001B4F83B70;
  v4._countAndFlagsBits = 0xD000000000000023;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  *(v0 + 48) = 332;
  v7 = swift_task_alloc();
  *(v0 + 32) = v7;
  v8 = sub_1B4F66E44();
  *v7 = v0;
  v7[1] = sub_1B4EEE0CC;
  v9 = *(v0 + 16);
  v10 = MEMORY[0x1E69CCB50];
  v11 = MEMORY[0x1E69CCB58];

  return TransportClient.sendRequest<A>(_:payload:)((v0 + 48), v9, ObjectType, v8, v5, v10, v11);
}

uint64_t WorkoutPlanClient.filterCatalog(request:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B4EF3348, 0, 0);
}

uint64_t sub_1B4EF3348()
{
  if (qword_1EDB714F8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 32);
  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB71500);
  v3._countAndFlagsBits = 0xD000000000000025;
  v3._object = 0x80000001B4F83410;
  v4._object = 0x80000001B4F83BA0;
  v4._countAndFlagsBits = 0xD000000000000017;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  *(v0 + 56) = 352;
  v7 = swift_task_alloc();
  *(v0 + 40) = v7;
  v8 = sub_1B4F67584();
  v9 = sub_1B4F66144();
  *v7 = v0;
  v7[1] = sub_1B4EED954;
  v10 = *(v0 + 16);
  v11 = *(v0 + 24);
  v12 = MEMORY[0x1E69CD230];

  return TransportClient.sendRequest<A, B>(_:payload:)(v10, (v0 + 56), v11, ObjectType, v8, v9, v5, v12);
}

uint64_t sub_1B4EF34E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = swift_task_alloc();
  *(v8 + 16) = v14;
  *v14 = v8;
  v14[1] = sub_1B4DE0D94;

  return WorkoutPlanClient.createWorkoutPlan(modalityPreferences:name:planIdentifier:recommendationMetrics:schedule:startDate:variation:workoutPlanLength:)(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_1B4EF35F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = swift_task_alloc();
  *(v8 + 16) = v14;
  *v14 = v8;
  v14[1] = sub_1B4DE0D94;

  return WorkoutPlanClient.replaceWorkoutPlan(modalityPreferences:name:planIdentifier:recommendationMetrics:schedule:startDate:variation:workoutPlanLength:)(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_1B4EF3700(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = swift_task_alloc();
  *(v8 + 16) = v14;
  *v14 = v8;
  v14[1] = sub_1B4DE0D94;

  return WorkoutPlanClient.createUnsavedWorkoutPlan(modalityPreferences:name:planIdentifier:recommendationMetrics:schedule:startDate:variation:workoutPlanLength:)(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_1B4EF380C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B4DE0D94;

  return WorkoutPlanClient.repeatWorkoutPlan(request:)(a1, a2);
}

uint64_t sub_1B4EF38B8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B4DE0D94;

  return WorkoutPlanClient.validateSchedule(request:)(a1);
}

uint64_t sub_1B4EF3950(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B4DE0D94;

  return WorkoutPlanClient.makeWorkoutPlanSchedule(request:)(a1, a2);
}

uint64_t sub_1B4EF39FC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B4DE0D94;

  return WorkoutPlanClient.updateWorkoutPlan(_:)(a1, a2);
}

uint64_t sub_1B4EF3AA8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B4DE0D94;

  return WorkoutPlanClient.queryActiveWorkoutPlanProgressSnapshot()(a1);
}

uint64_t sub_1B4EF3B44(uint64_t a1, char a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B4DDECC4;

  return WorkoutPlanClient.requestWorkoutPlans(state:)(a1, a2 & 1);
}

uint64_t sub_1B4EF3BEC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B4DDECC4;

  return WorkoutPlanClient.queryDailyNotificationSchedule(for:)(a1);
}

uint64_t sub_1B4EF3C84(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B4DE0D94;

  return WorkoutPlanClient.queryNextIncompleteWorkoutReference(after:)(a1, a2);
}

uint64_t sub_1B4EF3D30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1B4DDECC4;

  return WorkoutPlanClient.queryIncompleteMatchingWorkoutReferences(plan:workout:)(a1, a2, a3);
}

uint64_t sub_1B4EF3DE0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1B4DDECC4;

  return WorkoutPlanClient.queryAllWorkoutPlanTemplateReferences()();
}

uint64_t sub_1B4EF3E70()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1B4DDECC4;

  return WorkoutPlanClient.queryAllWorkoutPlanTemplatesCount()();
}

uint64_t sub_1B4EF3F00(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B4DDECC4;

  return WorkoutPlanClient.queryWorkoutPlanTemplateMetadata(identifiers:)(a1);
}

uint64_t sub_1B4EF3F98(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B4DDECC4;

  return WorkoutPlanClient.queryWorkoutPlanTemplates(identifiers:)(a1);
}

uint64_t sub_1B4EF4030(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B4DDECC4;

  return WorkoutPlanClient.queryAllWorkoutPlans(forTemplateIdentifier:)(a1);
}

uint64_t sub_1B4EF40C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1B4DE0D94;

  return WorkoutPlanClient.requestWorkoutPlanAlternatives(workoutIdentifier:workoutPlan:)(a1, a2, a3, a4);
}

uint64_t sub_1B4EF418C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1B4DE0D94;

  return WorkoutPlanClient.updateWorkoutPlanAlternatives(planIdentifier:reference:workoutIdentifier:)(a1, a2, a3, a4, a5);
}

uint64_t sub_1B4EF4258()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1B4DE0D94;

  return WorkoutPlanClient.deleteAllActiveWorkoutPlans()();
}

uint64_t sub_1B4EF42E8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B4DE0D94;

  return WorkoutPlanClient.deleteWorkoutPlan(_:)(a1);
}

uint64_t sub_1B4EF4380(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B4DE0D94;

  return WorkoutPlanClient.insertWorkoutPlan(_:)(a1);
}

uint64_t sub_1B4EF4418(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B4DE0D94;

  return WorkoutPlanClient.insertWorkoutPlanTemplate(_:)(a1);
}

uint64_t sub_1B4EF44B0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B4DE0D94;

  return WorkoutPlanClient.deleteWorkoutPlanTemplate(_:)(a1);
}

uint64_t sub_1B4EF4548(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B4DE0D94;

  return WorkoutPlanClient.requestWorkoutPlan(_:)(a1, a2);
}

uint64_t sub_1B4EF45F4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B4DE0D94;

  return WorkoutPlanClient.queryWorkoutPlanSummary(_:)(a1, a2);
}

uint64_t sub_1B4EF46A0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B4DDECC4;

  return WorkoutPlanClient.queryWorkoutPlanSummaries(request:)(a1);
}

uint64_t sub_1B4EF4738(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B4DE0D94;

  return WorkoutPlanClient.queryPendingWorkoutPlanSummary()(a1);
}

uint64_t sub_1B4EF47D4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1B4DDECC4;

  return WorkoutPlanClient.queryWorkoutPlanSummariesViewed()();
}

uint64_t sub_1B4EF4864(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B4DE0D94;

  return WorkoutPlanClient.insertCompletedWorkoutPlanSummary(_:)(a1);
}

uint64_t sub_1B4EF48FC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B4DE0D94;

  return WorkoutPlanClient.insertArchivedPlanSession(session:)(a1);
}

uint64_t sub_1B4EF4994()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1B4DE0D94;

  return WorkoutPlanClient.evaluateActiveWorkoutPlanCompletion()();
}

uint64_t sub_1B4EF4A24()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1B4DDED70;

  return WorkoutPlanClient.queryActiveWorkoutPlanItemMetrics()();
}

uint64_t sub_1B4EF4AB4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B4DDECC4;

  return WorkoutPlanClient.queryWorkoutPlanItemMetrics(planIdentifier:)(a1);
}

uint64_t sub_1B4EF4B4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1B4DE0D94;

  return WorkoutPlanClient.updateWorkoutPlanTemplateName(identifier:name:)(a1, a2, a3);
}

uint64_t sub_1B4EF4BFC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B4DE0D94;

  return WorkoutPlanClient.endWorkoutPlan(identifier:)(a1);
}

uint64_t sub_1B4EF4C94(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B4DE0D94;

  return WorkoutPlanClient.filterCatalog(request:)(a1, a2);
}

void *sub_1B4EF4D40(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[2] = a1;
  a4[3] = &protocol witness table for XPCClient;
  a4[4] = &protocol witness table for XPCClient;
  a4[5] = a2;
  a4[6] = a3;
  ObjectType = swift_getObjectType();
  v11 = a1;
  v10 = 50;
  v7 = swift_allocObject();
  swift_weakInit();

  swift_unknownObjectRetain();

  TransportDispatching.register(event:handler:)(&v10, sub_1B4EF5D68, v7, ObjectType, &protocol witness table for XPCClient);

  v11 = a1;
  v10 = 51;
  v8 = swift_allocObject();
  swift_weakInit();

  TransportDispatching.register(event:handler:)(&v10, sub_1B4EF5D6C, v8, ObjectType, &protocol witness table for XPCClient);

  swift_unknownObjectRelease();
  return a4;
}

void *sub_1B4EF4EB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = swift_allocObject();

  return sub_1B4DC84B4(a1, a2, a3, v13, a5, a6, a7);
}

uint64_t sub_1B4EF4F38(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6648, &qword_1B4F79F78);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B4EF4FA8()
{
  result = qword_1EB8F6660;
  if (!qword_1EB8F6660)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F6650, &qword_1B4F79FD0);
    sub_1B4EF5C70(&qword_1EB8F6668, MEMORY[0x1E69CBE40], MEMORY[0x1E69CBE38]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F6660);
  }

  return result;
}

unint64_t sub_1B4EF505C()
{
  result = qword_1EB8F6678;
  if (!qword_1EB8F6678)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F6670, &qword_1B4F79FE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F6678);
  }

  return result;
}

unint64_t sub_1B4EF50E0()
{
  result = qword_1EB8F6680;
  if (!qword_1EB8F6680)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F6670, &qword_1B4F79FE0);
    sub_1B4EF5C70(&qword_1EB8F6688, MEMORY[0x1E69CCA00], MEMORY[0x1E69CC9F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F6680);
  }

  return result;
}

unint64_t sub_1B4EF5194()
{
  result = qword_1EB8F66A0;
  if (!qword_1EB8F66A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F6698, &qword_1B4F7A000);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F66A0);
  }

  return result;
}

unint64_t sub_1B4EF5218()
{
  result = qword_1EB8F66A8;
  if (!qword_1EB8F66A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F6698, &qword_1B4F7A000);
    sub_1B4EF5C70(&qword_1EB8F66B0, MEMORY[0x1E69CB0E0], MEMORY[0x1E69CB0D8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F66A8);
  }

  return result;
}

unint64_t sub_1B4EF52CC()
{
  result = qword_1EDB6DBA8;
  if (!qword_1EDB6DBA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F66B8, &qword_1B4F7A010);
    sub_1B4EF5C70(&qword_1EDB70048, MEMORY[0x1E69CCD48], MEMORY[0x1E69CCD40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB6DBA8);
  }

  return result;
}

unint64_t sub_1B4EF5380()
{
  result = qword_1EB8F66C8;
  if (!qword_1EB8F66C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F66C0, &qword_1B4F7A028);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F66C8);
  }

  return result;
}

unint64_t sub_1B4EF5404()
{
  result = qword_1EB8F66D0;
  if (!qword_1EB8F66D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F66C0, &qword_1B4F7A028);
    sub_1B4EF5C70(&qword_1EB8F66D8, MEMORY[0x1E69CC278], MEMORY[0x1E69CC270]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F66D0);
  }

  return result;
}

unint64_t sub_1B4EF54B8()
{
  result = qword_1EB8F66E8;
  if (!qword_1EB8F66E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F66E0, &qword_1B4F7A040);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F66E8);
  }

  return result;
}

unint64_t sub_1B4EF553C()
{
  result = qword_1EB8F66F0;
  if (!qword_1EB8F66F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F66E0, &qword_1B4F7A040);
    sub_1B4EF5C70(&qword_1EB8F66F8, MEMORY[0x1E69CCD78], MEMORY[0x1E69CCD70]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F66F0);
  }

  return result;
}

uint64_t sub_1B4EF55F0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6700, &qword_1B4F7A058);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1B4EF5658()
{
  result = qword_1EB8F6728;
  if (!qword_1EB8F6728)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F6718, &qword_1B4F7A070);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F6728);
  }

  return result;
}

unint64_t sub_1B4EF56DC()
{
  result = qword_1EB8F6730;
  if (!qword_1EB8F6730)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F6718, &qword_1B4F7A070);
    sub_1B4EF5C70(&qword_1EB8F6738, MEMORY[0x1E69695A8], MEMORY[0x1E69CAE70]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F6730);
  }

  return result;
}

unint64_t sub_1B4EF5790()
{
  result = qword_1EB8F6740;
  if (!qword_1EB8F6740)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F6720, &qword_1B4F7A078);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F6740);
  }

  return result;
}

unint64_t sub_1B4EF5814()
{
  result = qword_1EB8F6748;
  if (!qword_1EB8F6748)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F6720, &qword_1B4F7A078);
    sub_1B4EF5C70(&qword_1EB8F6750, MEMORY[0x1E69CC088], MEMORY[0x1E69CC080]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F6748);
  }

  return result;
}

unint64_t sub_1B4EF58C8()
{
  result = qword_1EB8F6760;
  if (!qword_1EB8F6760)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F6758, &qword_1B4F7A0C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F6760);
  }

  return result;
}

unint64_t sub_1B4EF594C()
{
  result = qword_1EB8F6768;
  if (!qword_1EB8F6768)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F6758, &qword_1B4F7A0C0);
    sub_1B4EF5C70(&qword_1EB8F6770, MEMORY[0x1E69CCEA0], MEMORY[0x1E69CCE98]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F6768);
  }

  return result;
}

unint64_t sub_1B4EF5A00()
{
  result = qword_1EB8F6780;
  if (!qword_1EB8F6780)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F6778, &qword_1B4F7A0D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F6780);
  }

  return result;
}

unint64_t sub_1B4EF5A84()
{
  result = qword_1EB8F6788;
  if (!qword_1EB8F6788)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F6778, &qword_1B4F7A0D8);
    sub_1B4EF5C70(&qword_1EB8F6790, MEMORY[0x1E69CCDC8], MEMORY[0x1E69CCDB8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F6788);
  }

  return result;
}

unint64_t sub_1B4EF5B38()
{
  result = qword_1EB8F67A0;
  if (!qword_1EB8F67A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F6798, &qword_1B4F7A108);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F67A0);
  }

  return result;
}

unint64_t sub_1B4EF5BBC()
{
  result = qword_1EB8F67A8;
  if (!qword_1EB8F67A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F6798, &qword_1B4F7A108);
    sub_1B4EF5C70(&unk_1EB8F67B0, MEMORY[0x1E69CCB68], MEMORY[0x1E69CCB60]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F67A8);
  }

  return result;
}

uint64_t sub_1B4EF5C70(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_1B4EF5DB4()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1B4EF5EC8(_BYTE *a1, uint64_t a2, char a3, void *a4, void (*a5)(void))
{
  a1[*a4] = a3;
  v6 = a1;
  a5();
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1B4EF75A0();

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

unint64_t sub_1B4EF5F6C()
{
  result = qword_1EB8F6858;
  if (!qword_1EB8F6858)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB8F6858);
  }

  return result;
}

uint64_t BadgingCountsUpdated.init(appBadgeCount:seymourTabBadges:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

id NetworkMonitor.__allocating_init(queue:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_1B4DC9CD0(a1);

  return v4;
}

id NetworkMonitor.cellularDataRestrictedState.getter@<X0>(_BYTE *a1@<X8>)
{
  v4 = sub_1B4F67DA4();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x1EEE9AC00](v4, v6);
  v9 = (&v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v2 + OBJC_IVAR____TtC13SeymourClient14NetworkMonitor_queue);
  *v9 = v10;
  (*(v5 + 104))(v9, *MEMORY[0x1E69E8020], v4, v7);
  v11 = v10;
  LOBYTE(v10) = sub_1B4F67DC4();
  result = (*(v5 + 8))(v9, v4);
  if (v10)
  {
    return sub_1B4DDCE08(a1);
  }

  __break(1u);
  return result;
}

id NetworkMonitor.init(queue:)(void *a1)
{
  v2 = sub_1B4DC9CD0(a1);

  return v2;
}

id NetworkMonitor.isAirplaneModeEnabled.getter(double a1)
{
  v2 = sub_1B4F67DA4();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x1EEE9AC00](v2, v4);
  v7 = (&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v1 + OBJC_IVAR____TtC13SeymourClient14NetworkMonitor_queue);
  *v7 = v8;
  (*(v3 + 104))(v7, *MEMORY[0x1E69E8020], v2, v5);
  v9 = v8;
  LOBYTE(v8) = sub_1B4F67DC4();
  result = (*(v3 + 8))(v7, v2);
  if (v8)
  {
    return [*(v1 + OBJC_IVAR____TtC13SeymourClient14NetworkMonitor_airplaneModeObserver) enabled];
  }

  __break(1u);
  return result;
}

id sub_1B4EF62E0(void *a1)
{
  v2 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5130, &qword_1B4F71530);
  if (swift_dynamicCast())
  {
    sub_1B4EF77D0();
    swift_allocError();
    *v3 = v5;
    return swift_willThrow();
  }

  else
  {
    swift_willThrow();
    return a1;
  }
}

id NetworkMonitor.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id NetworkMonitor.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall NetworkMonitor.cellularDataRestrictedStateChanged(_:)(SeymourClient::CellularDataRestrictedState a1)
{
  v2 = sub_1B4F67DA4();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x1EEE9AC00](v2, v4);
  v7 = (&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v1 + OBJC_IVAR____TtC13SeymourClient14NetworkMonitor_queue);
  *v7 = v8;
  (*(v3 + 104))(v7, *MEMORY[0x1E69E8020], v2, v5);
  v9 = v8;
  LOBYTE(v8) = sub_1B4F67DC4();
  (*(v3 + 8))(v7, v2);
  if (v8)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_1B4DD5BFC();
      swift_unknownObjectRelease();
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1B4EF6644(void *a1, void *a2)
{
  v5 = sub_1B4F67DA4();
  v6 = *(v5 - 8);
  v8 = MEMORY[0x1EEE9AC00](v5, v7);
  v10 = (&v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(v2 + OBJC_IVAR____TtC13SeymourClient14NetworkMonitor_queue);
  *v10 = v11;
  (*(v6 + 104))(v10, *MEMORY[0x1E69E8020], v5, v8);
  v12 = v11;
  LOBYTE(v11) = sub_1B4F67DC4();
  result = (*(v6 + 8))(v10, v5);
  if (v11)
  {
    return *(*(v2 + *a1) + *a2);
  }

  __break(1u);
  return result;
}

id sub_1B4EF6774@<X0>(_BYTE *a1@<X8>)
{
  v3 = sub_1B4F67DA4();
  v4 = *(v3 - 8);
  v6 = MEMORY[0x1EEE9AC00](v3, v5);
  v8 = (&v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(*v1 + OBJC_IVAR____TtC13SeymourClient14NetworkMonitor_queue);
  *v8 = v9;
  (*(v4 + 104))(v8, *MEMORY[0x1E69E8020], v3, v6);
  v10 = v9;
  LOBYTE(v9) = sub_1B4F67DC4();
  result = (*(v4 + 8))(v8, v3);
  if (v9)
  {
    return sub_1B4DDCE08(a1);
  }

  __break(1u);
  return result;
}

id sub_1B4EF68A0()
{
  v1 = sub_1B4F67DA4();
  v2 = *(v1 - 8);
  v4 = MEMORY[0x1EEE9AC00](v1, v3);
  v6 = (&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *v0;
  v8 = *(*v0 + OBJC_IVAR____TtC13SeymourClient14NetworkMonitor_queue);
  *v6 = v8;
  (*(v2 + 104))(v6, *MEMORY[0x1E69E8020], v1, v4);
  v9 = v8;
  LOBYTE(v8) = sub_1B4F67DC4();
  result = (*(v2 + 8))(v6, v1);
  if (v8)
  {
    return [*(v7 + OBJC_IVAR____TtC13SeymourClient14NetworkMonitor_airplaneModeObserver) enabled];
  }

  __break(1u);
  return result;
}

uint64_t sub_1B4EF6A08(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = sub_1B4F67DA4();
  v8 = *(v7 - 8);
  v10 = MEMORY[0x1EEE9AC00](v7, v9);
  v12 = (&v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *v4;
  v14 = *(*v4 + OBJC_IVAR____TtC13SeymourClient14NetworkMonitor_queue);
  *v12 = v14;
  (*(v8 + 104))(v12, *MEMORY[0x1E69E8020], v7, v10);
  v15 = v14;
  LOBYTE(v14) = sub_1B4F67DC4();
  result = (*(v8 + 8))(v12, v7);
  if (v14)
  {
    return *(*(v13 + *a3) + *a4);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B4EF6BB0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = swift_allocObject();
  v9[2] = a2;
  v9[3] = a3;
  v9[4] = a1;

  v10 = a1;

  return sub_1B4F675F4();
}

void sub_1B4EF6C48(void (*a1)(void **), uint64_t a2, void (*a3)(void **__return_ptr, uint64_t), uint64_t a4, uint64_t a5)
{
  a3(&v8, a5);
  v9 = 0;
  a1(&v8);
  v6 = v8;
  v7 = v9;

  sub_1B4DDC730(v6, v7);
}

void sub_1B4EF6CD4(void (*a1)(void **), uint64_t a2, void (*a3)(void **__return_ptr, uint64_t), uint64_t a4, uint64_t a5)
{
  a3(&v7, a5);
  v6 = v7;
  v8 = 0;
  a1(&v7);

  sub_1B4DDC730(v6, 0);
}

void sub_1B4EF6E00(void *a1, char a2, void (*a3)(id *, double), uint64_t a4, void (*a5)(void *, double))
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F44F0, &qword_1B4F6CD98);
  v11 = *(v10 - 8);
  v13 = MEMORY[0x1EEE9AC00](v10, v12);
  v15 = &v18 - v14;
  if (a2)
  {
    a5(a1, v13);
    v16 = sub_1B4F67654();
    v17 = swift_allocObject();
    *(v17 + 16) = a3;
    *(v17 + 24) = a4;

    v16(sub_1B4E56960, v17);

    (*(v11 + 8))(v15, v10);
  }

  else
  {
    v18 = a1;
    v19 = 0;
    a3(&v18, v13);
    sub_1B4DDC730(v18, v19);
  }
}

void sub_1B4EF6F98(void *a1, char a2, void (*a3)(id *, double), uint64_t a4, void (*a5)(void *, double))
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F68B0, &qword_1B4F6CDA0);
  v11 = *(v10 - 8);
  v13 = MEMORY[0x1EEE9AC00](v10, v12);
  v15 = &v18 - v14;
  if (a2)
  {
    a5(a1, v13);
    v16 = sub_1B4F67654();
    v17 = swift_allocObject();
    *(v17 + 16) = a3;
    *(v17 + 24) = a4;

    v16(sub_1B4DDA420, v17);

    (*(v11 + 8))(v15, v10);
  }

  else
  {
    v18 = a1;
    v19 = 0;
    a3(&v18, v13);
    sub_1B4DDC730(v18, v19);
  }
}

uint64_t sub_1B4EF7130(uint64_t a1, char a2, uint64_t (*a3)(uint64_t *, double), uint64_t a4, void (*a5)(uint64_t, double))
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6930, &unk_1B4F6CC10);
  v11 = *(v10 - 8);
  v13 = MEMORY[0x1EEE9AC00](v10, v12);
  v15 = &v19 - v14;
  if (a2)
  {
    a5(a1, v13);
    v16 = sub_1B4F67654();
    v17 = swift_allocObject();
    *(v17 + 16) = a3;
    *(v17 + 24) = a4;

    v16(sub_1B4E56960, v17);

    return (*(v11 + 8))(v15, v10);
  }

  else
  {
    v19 = a1;
    v20 = 0;
    return a3(&v19, v13);
  }
}

void sub_1B4EF72BC(void *a1, unint64_t a2, char a3, void (*a4)(id *), uint64_t a5, void (*a6)(void *, double))
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4500, &qword_1B4F6CDB0);
  v13 = *(v12 - 8);
  v15 = MEMORY[0x1EEE9AC00](v12, v14);
  v17 = &v20 - v16;
  if (a3)
  {
    a6(a1, v15);
    v18 = sub_1B4F67654();
    v19 = swift_allocObject();
    *(v19 + 16) = a4;
    *(v19 + 24) = a5;

    v18(sub_1B4EF7738, v19);

    (*(v13 + 8))(v17, v12);
  }

  else
  {
    v21 = a1;
    v22 = a2;
    v23 = 0;
    sub_1B4DD3014(a1, a2);
    a4(&v21);
    sub_1B4E21804(v21, v22, v23);
  }
}

__int128 *sub_1B4EF7464(__int128 *result, uint64_t (*a2)(__int128 *))
{
  v2 = *(result + 16);
  v3 = *result;
  v4 = v2;
  if (a2)
  {
    return a2(&v3);
  }

  return result;
}

uint64_t sub_1B4EF7510(char *a1, double a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v6[0] = *a1;
  v6[1] = v2;
  v6[2] = v3;
  v6[3] = v4;
  return sub_1B4DDBC7C(v6, a2);
}

uint64_t sub_1B4EF75B8(void (*a1)(void))
{
  v3 = sub_1B4F67DA4();
  v4 = *(v3 - 8);
  v6 = MEMORY[0x1EEE9AC00](v3, v5);
  v8 = (&v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v1 + OBJC_IVAR____TtC13SeymourClient14NetworkMonitor_queue);
  *v8 = v9;
  (*(v4 + 104))(v8, *MEMORY[0x1E69E8020], v3, v6);
  v10 = v9;
  LOBYTE(v9) = sub_1B4F67DC4();
  result = (*(v4 + 8))(v8, v3);
  if (v9)
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      a1();
      return swift_unknownObjectRelease();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

__int128 *sub_1B4EF7738(__int128 *result)
{
  v2 = *(v1 + 16);
  v3 = *(result + 16);
  v4 = *result;
  v5 = v3;
  if (v2)
  {
    return v2(&v4);
  }

  return result;
}

unint64_t sub_1B4EF77D0()
{
  result = qword_1EB8F6940;
  if (!qword_1EB8F6940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F6940);
  }

  return result;
}

uint64_t objectdestroy_40Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for EventDeliveryStyle(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for EventDeliveryStyle(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_1B4EF8208(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B4EF8300()
{
  v0 = sub_1B4F66754();
  __swift_allocate_value_buffer(v0, qword_1EDB70070);
  __swift_project_value_buffer(v0, qword_1EDB70070);
  sub_1B4F684B4();
  return sub_1B4F66724();
}

uint64_t _s11SeymourCore23AudioLanguagePreferenceV0A6ClientE7defaultACyFZ_0@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDB70068 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F66754();
  v3 = __swift_project_value_buffer(v2, qword_1EDB70070);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t XPCServerClientConnected.processName.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t XPCServerClientConnected.bundleIdentifier.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t CommentaryEventEnded.commentaryEvent.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B4F65A44();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t CommentaryEventEnded.init(commentaryEvent:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B4F65A44();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t type metadata accessor for CommentaryEventEnded(uint64_t a1)
{
  result = qword_1EB8F6CF0;
  if (!qword_1EB8F6CF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PublishRecord.init(lastDelivery:queuedEvent:timer:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, double *a4@<X8>, double a5@<D0>, uint64_t a6@<X3>)
{
  *a4 = a5;
  v9 = type metadata accessor for PublishRecord(0, a3, a3, a6);
  v10 = *(v9 + 28);
  v11 = sub_1B4F687D4();
  result = (*(*(v11 - 8) + 32))(a4 + v10, a1, v11);
  *(a4 + *(v9 + 32)) = a2;
  return result;
}

void sub_1B4EF86A4(uint64_t a1)
{
  sub_1B4F687D4();
  if (v1 <= 0x3F)
  {
    sub_1B4EF8B50(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1B4EF873C(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = v4;
  v6 = *(v4 + 84);
  if (v6)
  {
    v7 = v6 - 1;
  }

  else
  {
    v7 = 0;
  }

  if (v7 <= 0x7FFFFFFE)
  {
    v8 = 2147483646;
  }

  else
  {
    v8 = v7;
  }

  v9 = *(v4 + 80);
  v10 = *(*(*(a3 + 16) - 8) + 64);
  if (!v6)
  {
    ++v10;
  }

  if (!a2)
  {
    return 0;
  }

  v11 = v10 + 7;
  if (v8 >= a2)
  {
    goto LABEL_33;
  }

  v12 = ((v11 + ((v9 + 8) & ~v9)) & 0xFFFFFFFFFFFFFFF8) + 8;
  v13 = a2 - v8;
  v14 = v12 & 0xFFFFFFF8;
  if ((v12 & 0xFFFFFFF8) != 0)
  {
    v15 = 2;
  }

  else
  {
    v15 = v13 + 1;
  }

  if (v15 >= 0x10000)
  {
    v16 = 4;
  }

  else
  {
    v16 = 2;
  }

  if (v15 < 0x100)
  {
    v16 = 1;
  }

  if (v15 >= 2)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if (v17 > 1)
  {
    if (v17 == 2)
    {
      v18 = *(a1 + v12);
      if (!v18)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v18 = *(a1 + v12);
      if (!v18)
      {
        goto LABEL_33;
      }
    }
  }

  else if (!v17 || (v18 = *(a1 + v12)) == 0)
  {
LABEL_33:
    v21 = (a1 + v9 + 8) & ~v9;
    if (v7 < 0x7FFFFFFE)
    {
      v23 = *((v11 + v21) & 0xFFFFFFFFFFFFFFF8);
      if (v23 >= 0xFFFFFFFF)
      {
        LODWORD(v23) = -1;
      }

      if ((v23 + 1) >= 2)
      {
        return v23;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v22 = (*(v5 + 48))(v21);
      if (v22 >= 2)
      {
        return v22 - 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v20 = v18 - 1;
  if (v14)
  {
    v20 = 0;
    LODWORD(v14) = *a1;
  }

  return v8 + (v14 | v20) + 1;
}

void sub_1B4EF88D0(unsigned int *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (!v7)
  {
    v8 = 0;
  }

  if (v8 <= 0x7FFFFFFE)
  {
    v9 = 2147483646;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(v6 + 80);
  v11 = *(*(*(a4 + 16) - 8) + 64);
  if (!v7)
  {
    ++v11;
  }

  v12 = ((v11 + 7 + ((v10 + 8) & ~v10)) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v9 < a3)
  {
    v13 = a3 - v9;
    if (((v11 + 7 + ((v10 + 8) & ~v10)) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v14 = v13 + 1;
    }

    else
    {
      v14 = 2;
    }

    if (v14 >= 0x10000)
    {
      v15 = 4;
    }

    else
    {
      v15 = 2;
    }

    if (v14 < 0x100)
    {
      v15 = 1;
    }

    if (v14 >= 2)
    {
      v5 = v15;
    }

    else
    {
      v5 = 0;
    }
  }

  if (a2 > v9)
  {
    if (((v11 + 7 + ((v10 + 8) & ~v10)) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v16 = a2 - v9;
    }

    else
    {
      v16 = 1;
    }

    if (((v11 + 7 + ((v10 + 8) & ~v10)) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v17 = ~v9 + a2;
      v18 = a1;
      bzero(a1, v12);
      a1 = v18;
      *v18 = v17;
    }

    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(a1 + v12) = v16;
      }

      else
      {
        *(a1 + v12) = v16;
      }
    }

    else if (v5)
    {
      *(a1 + v12) = v16;
    }

    return;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(a1 + v12) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_38;
    }

    *(a1 + v12) = 0;
LABEL_37:
    if (!a2)
    {
      return;
    }

    goto LABEL_38;
  }

  if (!v5)
  {
    goto LABEL_37;
  }

  *(a1 + v12) = 0;
  if (!a2)
  {
    return;
  }

LABEL_38:
  v19 = (a1 + v10 + 8) & ~v10;
  if (v8 < 0x7FFFFFFE)
  {
    v23 = ((v11 + 7 + v19) & 0xFFFFFFFFFFFFFFF8);
    if (a2 > 0x7FFFFFFE)
    {
      *v23 = 0;
      *v23 = a2 - 0x7FFFFFFF;
    }

    else
    {
      *v23 = a2;
    }
  }

  else if (v8 >= a2)
  {
    v24 = *(v6 + 56);
    v25 = a2 + 1;
    v26 = (a1 + v10 + 8) & ~v10;

    v24(v26, v25);
  }

  else
  {
    if (v11 <= 3)
    {
      v20 = ~(-1 << (8 * v11));
    }

    else
    {
      v20 = -1;
    }

    if (v11)
    {
      v21 = v20 & (~v8 + a2);
      if (v11 <= 3)
      {
        v22 = v11;
      }

      else
      {
        v22 = 4;
      }

      bzero(((a1 + v10 + 8) & ~v10), v11);
      if (v22 > 2)
      {
        if (v22 == 3)
        {
          *v19 = v21;
          *(v19 + 2) = BYTE2(v21);
        }

        else
        {
          *v19 = v21;
        }
      }

      else if (v22 == 1)
      {
        *v19 = v21;
      }

      else
      {
        *v19 = v21;
      }
    }
  }
}

void sub_1B4EF8B50(uint64_t a1)
{
  if (!qword_1EB8F6D80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F6D88, qword_1B4F7A900);
    v1 = sub_1B4F687D4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB8F6D80);
    }
  }
}

uint64_t sub_1B4EF8BB4@<X0>(double a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, double *a6@<X8>)
{
  v32 = a6;
  v30 = a5;
  v11 = *(a5 + 16);
  v12 = sub_1B4F687D4();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19.n128_f64[0] = MEMORY[0x1EEE9AC00](v17, v18);
  v21 = &v30 - v20;
  v33 = a4;
  v31 = v6;
  if (a2)
  {
    v22 = *v6;
  }

  else
  {
    v22 = a1;
  }

  v23 = *(v13 + 16);
  v23(v16, a3, v12, v19);
  v24 = *(v11 - 8);
  v25 = *(v24 + 48);
  if (v25(v16, 1, v11) == 1)
  {
    v26 = v31;
    (v23)(v21, v31 + *(v30 + 28), v12);
    if (v25(v16, 1, v11) != 1)
    {
      (*(v13 + 8))(v16, v12);
    }
  }

  else
  {
    (*(v24 + 32))(v21, v16, v11);
    (*(v24 + 56))(v21, 0, 1, v11);
    v26 = v31;
  }

  v28 = v33;
  if (!v33)
  {
    v28 = *(v26 + *(v30 + 32));
    swift_unknownObjectRetain();
  }

  PublishRecord.init(lastDelivery:queuedEvent:timer:)(v21, v28, v11, v32, v22, v27);
  return swift_unknownObjectRetain();
}

void *sub_1B4EF8E20(void (*a1)(char *, char *), uint64_t a2, unsigned int (*a3)(char *, uint64_t, uint64_t), void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v54 = a8;
  v9 = v8;
  v69 = a2;
  v70 = a4;
  v68 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v63 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v14);
  v52 = &v51 - v15;
  v55 = a5;
  v53 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v16, v17);
  v65 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v66 = &v51 - v21;
  v22 = sub_1B4F687D4();
  v56 = *(v22 - 8);
  v57 = v22;
  MEMORY[0x1EEE9AC00](v22, v23);
  v59 = &v51 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v51 - v27;
  MEMORY[0x1EEE9AC00](v29, v30);
  v58 = &v51 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32, v33);
  v64 = *(a3 - 1);
  MEMORY[0x1EEE9AC00](v34, v35);
  v37 = &v51 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = a6;
  v71 = swift_getAssociatedTypeWitness();
  v60 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71, v38);
  v40 = &v51 - v39;
  v41 = sub_1B4F680D4();
  v72 = sub_1B4F68AB4();
  v67 = sub_1B4F68AC4();
  sub_1B4F68A64();
  (*(v64 + 2))(v37, v61, a3);
  v70 = v40;
  v64 = a3;
  result = sub_1B4F680C4();
  if (v41 < 0)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v41)
  {
    v43 = (v63 + 48);
    v44 = (v63 + 8);
    swift_getAssociatedConformanceWitness();
    while (1)
    {
      sub_1B4F68834();
      result = (*v43)(v28, 1, AssociatedTypeWitness);
      if (result == 1)
      {
        goto LABEL_17;
      }

      v68(v28, v66);
      if (v9)
      {
        (*(v60 + 8))(v70, v71);

        (*(v53 + 32))(v54, v66, v55);
        return (*v44)(v28, AssociatedTypeWitness);
      }

      v9 = 0;
      (*v44)(v28, AssociatedTypeWitness);
      sub_1B4F68AA4();
      if (!--v41)
      {
        goto LABEL_9;
      }
    }
  }

  swift_getAssociatedConformanceWitness();
LABEL_9:
  v45 = v59;
  sub_1B4F68834();
  v46 = v45;
  v47 = v63;
  v48 = *(v63 + 48);
  v66 = (v63 + 48);
  v64 = v48;
  if (v48(v45, 1, AssociatedTypeWitness) == 1)
  {
LABEL_13:
    (*(v60 + 8))(v70, v71);
    (*(v56 + 8))(v46, v57);
    return v72;
  }

  else
  {
    v63 = *(v47 + 32);
    v49 = (v47 + 8);
    v50 = v52;
    while (1)
    {
      (v63)(v50, v46, AssociatedTypeWitness);
      v68(v50, v65);
      if (v9)
      {
        break;
      }

      v9 = 0;
      (*v49)(v50, AssociatedTypeWitness);
      sub_1B4F68AA4();
      sub_1B4F68834();
      if (v64(v46, 1, AssociatedTypeWitness) == 1)
      {
        goto LABEL_13;
      }
    }

    (*v49)(v50, AssociatedTypeWitness);
    (*(v60 + 8))(v70, v71);

    return (*(v53 + 32))(v54, v65, v55);
  }
}

uint64_t Digest.hexString.getter(unsigned int (*a1)(char *, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_1B4EF8E20(sub_1B4EF95D4, 0, a1, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], *(a2 + 32), MEMORY[0x1E69E7410], a8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F52A8, &qword_1B4F72730);
  sub_1B4E5D5B8();
  v8 = sub_1B4F67F34();

  return v8;
}

uint64_t sub_1B4EF95D4@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5498, qword_1B4F730E0);
  v4 = swift_allocObject();
  v5 = MEMORY[0x1E69E7508];
  *(v4 + 16) = xmmword_1B4F6CF50;
  v6 = MEMORY[0x1E69E7558];
  *(v4 + 56) = v5;
  *(v4 + 64) = v6;
  *(v4 + 32) = v3;
  result = sub_1B4F67F84();
  *a2 = result;
  a2[1] = v8;
  return result;
}

uint64_t HashAlgorithm.hash(into:)()
{
  v1 = *v0;
  MEMORY[0x1B8C82740](0);
  return MEMORY[0x1B8C82740](v1);
}

uint64_t HashAlgorithm.hashValue.getter()
{
  v1 = *v0;
  sub_1B4F68E84();
  MEMORY[0x1B8C82740](0);
  MEMORY[0x1B8C82740](v1);
  return sub_1B4F68EC4();
}

uint64_t sub_1B4EF970C()
{
  v1 = *v0;
  sub_1B4F68E84();
  MEMORY[0x1B8C82740](0);
  MEMORY[0x1B8C82740](v1);
  return sub_1B4F68EC4();
}

uint64_t sub_1B4EF9760()
{
  v1 = *v0;
  MEMORY[0x1B8C82740](0);
  return MEMORY[0x1B8C82740](v1);
}

uint64_t sub_1B4EF97A0(uint64_t a1)
{
  v2 = *v1;
  sub_1B4F68E84();
  MEMORY[0x1B8C82740](0);
  MEMORY[0x1B8C82740](v2);
  return sub_1B4F68EC4();
}

unint64_t sub_1B4EF97F4()
{
  result = qword_1EB8F6D90;
  if (!qword_1EB8F6D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F6D90);
  }

  return result;
}

uint64_t sub_1B4EF9908@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v42 = a2;
  v43 = a4;
  v49 = sub_1B4F64854();
  v39 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49, v13);
  v15 = v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1B4F67E04();
  v44 = a1;
  if (!a1)
  {
    v23 = v19;
    sub_1B4F67DE4();
    return (*(v40 + 8))(v23, a5);
  }

  v45 = v19;
  v46 = a6;
  v21 = a3 >> 62;
  v38[1] = a7;
  v38[2] = v7;
  v47 = a5;
  if ((a3 >> 62) > 1)
  {
    if (v21 == 2)
    {
      v25 = *(v42 + 16);
      v24 = *(v42 + 24);
      v22 = v24 - v25;
      if (__OFSUB__(v24, v25))
      {
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      if (v22 < 1)
      {
        goto LABEL_23;
      }

LABEL_13:
      v27 = 0;
      LODWORD(v42) = *MEMORY[0x1E6969010];
      v41 = (v39 + 104);
      v28 = (v39 + 8);
      while (!__OFSUB__(v22, v27))
      {
        if (v22 - v27 >= v43)
        {
          v29 = v43;
        }

        else
        {
          v29 = v22 - v27;
        }

        (*v41)(v15, v42, v49);
        sub_1B4F64844();
        if (v29)
        {
          sub_1B4F64784();
          swift_allocObject();

          v30 = sub_1B4F64734();
          v31 = sub_1B4F64774();
          *v32 |= 0x8000000000000000;
          v31(v48, 0);
          v33 = sub_1B4EF9DA8(v30, v29);
          v35 = v34;
        }

        else
        {
          v36 = sub_1B4F64844();
          v36(v44 + v27, 0);

          v33 = 0;
          v35 = 0xC000000000000000;
        }

        (*v28)(v15, v49);
        v48[0] = v33;
        v48[1] = v35;
        sub_1B4EF9E8C();
        sub_1B4F67DF4();
        result = sub_1B4DD2B70(v33, v35);
        v37 = __OFADD__(v27, v29);
        v27 += v29;
        if (v37)
        {
          goto LABEL_26;
        }

        if (v27 >= v22)
        {
          goto LABEL_23;
        }
      }

      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

LABEL_23:
    v23 = v45;
    a5 = v47;
    sub_1B4F67DE4();
    return (*(v40 + 8))(v23, a5);
  }

  if (!v21)
  {
    v22 = BYTE6(a3);
    if (!BYTE6(a3))
    {
      goto LABEL_23;
    }

    goto LABEL_13;
  }

  v26 = HIDWORD(v42) - v42;
  if (!__OFSUB__(HIDWORD(v42), v42))
  {
    v22 = v26;
    if (v26 >= 1)
    {
      goto LABEL_13;
    }

    goto LABEL_23;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_1B4EF9CF0(_BYTE *__src, _BYTE *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_1B4EF9DA8(uint64_t result, uint64_t a2)
{
  if (!a2)
  {

    return 0;
  }

  if (a2 > 14)
  {
    if (a2 < 0x7FFFFFFF)
    {
      return a2 << 32;
    }

    sub_1B4F64864();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = a2;
    return result;
  }

  if (a2 < 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  v3 = sub_1B4F64744();
  if (v3)
  {
    result = sub_1B4F64764();
    if (!__OFSUB__(0, result))
    {
      v3 -= result;
      goto LABEL_10;
    }

LABEL_19:
    __break(1u);
    return result;
  }

LABEL_10:
  v4 = sub_1B4F64754();
  if (v4 >= a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = v4;
  }

  v6 = &v3[v5];
  if (v3)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = sub_1B4EF9CF0(v3, v7);

  return v8;
}

unint64_t sub_1B4EF9E8C()
{
  result = qword_1EB8F6D98;
  if (!qword_1EB8F6D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F6D98);
  }

  return result;
}

uint64_t TransportDataSerializable.hash(_:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B4F67E24();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v12 = sub_1B4F66E04();
  if (!v4)
  {
    v14 = v12;
    v15 = v13;
    sub_1B4DD3014(v12, v13);
    sub_1B4E5D3A0(v14, v15, v14, v15, v11, v10);
    v17[1] = sub_1B4E5C9F8(v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F52A8, &qword_1B4F72730);
    sub_1B4E5D5B8();
    v3 = sub_1B4F67F34();
    sub_1B4DD2B70(v14, v15);
    (*(v7 + 8))(v10, v6);
  }

  return v3;
}

void *Array<A>.hash(_:)(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1B4F67E24();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  v21 = a2;
  sub_1B4F68254();
  v20[1] = a4;
  swift_getWitnessTable();
  v14 = &v21;
  v15 = sub_1B4F671D4();
  if (!v4)
  {
    v17 = v15;
    v18 = v16;
    sub_1B4DD3014(v15, v16);
    sub_1B4E5D3A0(v17, v18, v17, v18, v13, v12);
    v21 = sub_1B4E5C9F8(v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F52A8, &qword_1B4F72730);
    sub_1B4E5D5B8();
    v14 = sub_1B4F67F34();
    sub_1B4DD2B70(v17, v18);
    (*(v9 + 8))(v12, v8);
  }

  return v14;
}

uint64_t Data.hash(_:)(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_1B4F67E24();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  sub_1B4DD3014(a2, a3);
  sub_1B4E5D3A0(a2, a3, a2, a3, v11, v10);
  v14 = sub_1B4E5C9F8(v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F52A8, &qword_1B4F72730);
  sub_1B4E5D5B8();
  v12 = sub_1B4F67F34();
  (*(v7 + 8))(v10, v6);

  return v12;
}

uint64_t MusicTrackStarted.musicTrack.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B4F64AD4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t MusicTrackStarted.init(musicTrack:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B4F64AD4();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t type metadata accessor for MusicTrackStarted(uint64_t a1)
{
  result = qword_1EB8F6DA0;
  if (!qword_1EB8F6DA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *SessionClient.__allocating_init(eventHub:queue:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = objc_allocWithZone(MEMORY[0x1E696B0B8]);
  v7 = a3;
  v8 = sub_1B4F67F64();
  v9 = [v6 initWithMachServiceName:v8 options:0];

  type metadata accessor for XPCClient();
  swift_allocObject();
  v10 = sub_1B4DC42B8(v9, v7);

  v11 = *(v10 + 32);
  os_unfair_lock_lock(*(v11 + 16));
  if (*(v10 + 48) == 1)
  {
    *(v10 + 48) = 2;
    [*(v10 + 24) resume];
  }

  os_unfair_lock_unlock(*(v11 + 16));
  v12 = swift_allocObject();
  v13 = sub_1B4F024D4(v10, a1, a2, v12);

  return v13;
}

uint64_t sub_1B4EFA808(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = *(result + 48);
    swift_unknownObjectRetain();

    ObjectType = swift_getObjectType();
    (*(v2 + 8))(ObjectType, &type metadata for DistributedSessionCancelled, &protocol witness table for DistributedSessionCancelled, ObjectType, v2);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1B4EFA8AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5, uint64_t (*a6)(void))
{
  v10 = a3(0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v18 - v12;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v15 = *(result + 48);
    swift_unknownObjectRetain();

    ObjectType = swift_getObjectType();
    v17 = a4(0);
    (*(*(v17 - 8) + 16))(v13, a1, v17);
    (*(v15 + 8))(v13, v10, a5, ObjectType, v15);
    swift_unknownObjectRelease();
    return sub_1B4F02C84(v13, a6);
  }

  return result;
}

uint64_t SessionClient.deinit()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t SessionClient.queryActiveSession()()
{
  if (qword_1EDB6DEF8 != -1)
  {
    swift_once();
  }

  v1 = sub_1B4F67C54();
  __swift_project_value_buffer(v1, qword_1EDB6DF00);
  v2._countAndFlagsBits = 0xD000000000000021;
  v2._object = 0x80000001B4F83EE0;
  v3._object = 0x80000001B4F83F10;
  v3._countAndFlagsBits = 0xD000000000000014;
  Logger.trace(file:function:)(v2, v3);
  v4 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  v9 = 241;
  v6 = *(v4 + 24);
  v7 = sub_1B4F678C4();
  return v6(&v9, v7, MEMORY[0x1E69CD260], MEMORY[0x1E69CD268], ObjectType, v4);
}

uint64_t SessionClient.createSession(token:catalogWorkout:supportedMetrics:workoutActivityType:startTime:queueIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v201 = a5;
  v207 = a4;
  v206 = a3;
  v190 = a2;
  v232 = a6;
  v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6930, &unk_1B4F6CC10);
  v208 = *(v198 - 8);
  MEMORY[0x1EEE9AC00](v198, v8);
  v210 = v187 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = v187 - v12;
  v209 = v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v212 = v187 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4060, &unk_1B4F788D0);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v205 = v187 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4068, &qword_1B4F6A5C0);
  MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v204 = v187 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4070, &unk_1B4F788E0);
  MEMORY[0x1EEE9AC00](v24 - 8, v25);
  v203 = v187 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4078, &qword_1B4F6A5C8);
  MEMORY[0x1EEE9AC00](v27 - 8, v28);
  v202 = v187 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4080, &unk_1B4F788F0);
  MEMORY[0x1EEE9AC00](v30 - 8, v31);
  v199 = v187 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4088, &qword_1B4F6A5D0);
  MEMORY[0x1EEE9AC00](v33 - 8, v34);
  v197 = v187 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4090, &qword_1B4F6A5D8);
  MEMORY[0x1EEE9AC00](v36 - 8, v37);
  v196 = v187 - v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4098, &unk_1B4F78910);
  MEMORY[0x1EEE9AC00](v39 - 8, v40);
  v195 = v187 - v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40A0, &qword_1B4F6A5E0);
  MEMORY[0x1EEE9AC00](v42 - 8, v43);
  v231 = v187 - v44;
  v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4160, &qword_1B4F6A660);
  MEMORY[0x1EEE9AC00](v191, v45);
  v192 = v187 - v46;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40B0, &unk_1B4F78920);
  MEMORY[0x1EEE9AC00](v47 - 8, v48);
  v194 = v187 - v49;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40B8, &qword_1B4F6A5F0);
  MEMORY[0x1EEE9AC00](v50 - 8, v51);
  v230 = v187 - v52;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40C0, &unk_1B4F78930);
  MEMORY[0x1EEE9AC00](v53 - 8, v54);
  v229 = v187 - v55;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40C8, &qword_1B4F6A5F8);
  MEMORY[0x1EEE9AC00](v56 - 8, v57);
  v228 = v187 - v58;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40D0, &unk_1B4F78940);
  MEMORY[0x1EEE9AC00](v59 - 8, v60);
  v227 = v187 - v61;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40D8, &qword_1B4F6A600);
  MEMORY[0x1EEE9AC00](v62 - 8, v63);
  v226 = v187 - v64;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40E0, &unk_1B4F78950);
  MEMORY[0x1EEE9AC00](v65 - 8, v66);
  v225 = v187 - v67;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40E8, &qword_1B4F6A608);
  MEMORY[0x1EEE9AC00](v68 - 8, v69);
  v223 = v187 - v70;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40F0, &unk_1B4F78960);
  MEMORY[0x1EEE9AC00](v71 - 8, v72);
  v222 = v187 - v73;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F72D0, &qword_1B4F6A610);
  MEMORY[0x1EEE9AC00](v74 - 8, v75);
  v221 = v187 - v76;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40F8, &unk_1B4F78970);
  MEMORY[0x1EEE9AC00](v77 - 8, v78);
  v218 = v187 - v79;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4118, &qword_1B4F6A630);
  MEMORY[0x1EEE9AC00](v80 - 8, v81);
  v217 = v187 - v82;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4120, &unk_1B4F78980);
  MEMORY[0x1EEE9AC00](v83 - 8, v84);
  v216 = v187 - v85;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4128, &qword_1B4F6A638);
  MEMORY[0x1EEE9AC00](v86 - 8, v87);
  v215 = v187 - v88;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4130, &unk_1B4F78990);
  MEMORY[0x1EEE9AC00](v89 - 8, v90);
  v214 = v187 - v91;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4138, &qword_1B4F6A640);
  MEMORY[0x1EEE9AC00](v92 - 8, v93);
  v213 = v187 - v94;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4140, qword_1B4F789A0);
  MEMORY[0x1EEE9AC00](v95 - 8, v96);
  v98 = v187 - v97;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7050, &qword_1B4F71500);
  MEMORY[0x1EEE9AC00](v99 - 8, v100);
  v102 = v187 - v101;
  v103 = sub_1B4F65804();
  v104 = *(v103 - 8);
  MEMORY[0x1EEE9AC00](v103, v105);
  v107 = v187 - ((v106 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_1B4F678C4();
  v224 = *(v108 - 8);
  MEMORY[0x1EEE9AC00](v108, v109);
  v219 = v110;
  v220 = v187 - ((v110 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v111, v112);
  v233 = v187 - v113;
  v114 = a1;
  v115 = *(a1 + 32);
  os_unfair_lock_lock((v115 + 20));
  v116 = *(v115 + 16);
  os_unfair_lock_unlock((v115 + 20));
  if (v116 == 1)
  {
    v193 = v108;
    v200 = v13;
    if (qword_1EDB6DEF8 != -1)
    {
      swift_once();
    }

    v117 = sub_1B4F67C54();
    __swift_project_value_buffer(v117, qword_1EDB6DF00);
    v118._countAndFlagsBits = 0xD000000000000021;
    v118._object = 0x80000001B4F83EE0;
    v119._countAndFlagsBits = 0xD000000000000063;
    v119._object = 0x80000001B4F83F30;
    Logger.trace(file:function:)(v118, v119);
    v120 = [objc_opt_self() mainBundle];
    v121 = [v120 bundleIdentifier];

    if (v121)
    {
      v188 = sub_1B4F67F74();
      v189 = v122;
    }

    else
    {
      v189 = 0x80000001B4F83FA0;
      v188 = 0xD000000000000017;
    }

    v187[5] = v114;
    v127 = *(v114 + 24);
    v187[4] = *(v114 + 16);
    v187[0] = v127;
    v128 = *(v104 + 16);
    v187[3] = v107;
    v128(v107, v190, v103);
    v129 = sub_1B4F65184();
    v130 = *(*(v129 - 8) + 56);
    v187[2] = v102;
    v130(v102, 1, 1, v129);
    v131 = sub_1B4F663B4();
    v132 = *(*(v131 - 8) + 56);
    v187[1] = v98;
    v132(v98, 1, 1, v131);
    v133 = sub_1B4F66754();
    (*(*(v133 - 8) + 56))(v213, 1, 1, v133);
    v134 = sub_1B4F65274();
    (*(*(v134 - 8) + 56))(v214, 1, 1, v134);
    v135 = sub_1B4F67AF4();
    (*(*(v135 - 8) + 56))(v215, 1, 1, v135);
    v136 = sub_1B4F65AD4();
    (*(*(v136 - 8) + 56))(v216, 1, 1, v136);
    v137 = sub_1B4F66014();
    (*(*(v137 - 8) + 56))(v217, 1, 1, v137);
    v138 = sub_1B4F65854();
    (*(*(v138 - 8) + 56))(v218, 1, 1, v138);
    v139 = sub_1B4F64FD4();
    (*(*(v139 - 8) + 56))(v221, 1, 1, v139);
    v140 = sub_1B4F65D04();
    (*(*(v140 - 8) + 56))(v222, 1, 1, v140);
    v141 = sub_1B4F66B74();
    (*(*(v141 - 8) + 56))(v223, 1, 1, v141);
    v142 = sub_1B4F65B84();
    (*(*(v142 - 8) + 56))(v225, 1, 1, v142);
    v143 = sub_1B4F64AA4();
    (*(*(v143 - 8) + 56))(v226, 1, 1, v143);
    v144 = sub_1B4F66454();
    (*(*(v144 - 8) + 56))(v227, 1, 1, v144);
    v145 = sub_1B4F65DB4();
    (*(*(v145 - 8) + 56))(v228, 1, 1, v145);
    v146 = sub_1B4F66E84();
    (*(*(v146 - 8) + 56))(v229, 1, 1, v146);
    v147 = sub_1B4F64B04();
    (*(*(v147 - 8) + 56))(v230, 1, 1, v147);

    sub_1B4F684B4();
    v148 = *MEMORY[0x1E69CD330];
    v149 = sub_1B4F67A14();
    (*(*(v149 - 8) + 104))(v192, v148, v149);
    swift_storeEnumTagMultiPayload();
    v234 = 1;
    v150 = v194;
    sub_1B4F679F4();
    v151 = sub_1B4F67A34();
    (*(*(v151 - 8) + 56))(v150, 0, 1, v151);
    v152 = sub_1B4F65894();
    (*(*(v152 - 8) + 56))(v231, 1, 1, v152);
    sub_1B4E21A90(v201, v195, &qword_1EB8F4098, &unk_1B4F78910);
    v153 = sub_1B4F66914();
    (*(*(v153 - 8) + 56))(v196, 1, 1, v153);
    v154 = sub_1B4F64E44();
    (*(*(v154 - 8) + 56))(v197, 1, 1, v154);
    v155 = sub_1B4F65C34();
    (*(*(v155 - 8) + 56))(v199, 1, 1, v155);
    v156 = sub_1B4F66084();
    (*(*(v156 - 8) + 56))(v202, 1, 1, v156);
    v157 = sub_1B4F66AC4();
    (*(*(v157 - 8) + 56))(v203, 1, 1, v157);
    v158 = sub_1B4F679A4();
    (*(*(v158 - 8) + 56))(v204, 1, 1, v158);
    v159 = sub_1B4F66964();
    (*(*(v159 - 8) + 56))(v205, 1, 1, v159);

    v160 = v233;
    sub_1B4F676A4();

    v161 = v200;
    sub_1B4F67604();
    v162 = v224;
    v163 = *(v224 + 16);
    v230 = (v224 + 16);
    v231 = v163;
    v164 = v220;
    v165 = v193;
    (v163)(v220, v160, v193);
    v166 = *(v162 + 80);
    v167 = swift_allocObject();
    *(v167 + 16) = v211;
    v228 = *(v162 + 32);
    v229 = (v162 + 32);
    (v228)(v167 + ((v166 + 24) & ~v166), v164, v165);
    v168 = swift_allocObject();
    *(v168 + 16) = sub_1B4F02824;
    *(v168 + 24) = v167;
    v169 = v208;
    v170 = *(v208 + 16);
    v226 = (v208 + 16);
    v227 = v170;
    v171 = v210;
    v172 = v198;
    (v170)(v210, v161, v198);
    v173 = *(v169 + 80);
    v225 = v173;
    v174 = (v173 + 16) & ~v173;
    v223 = v174;
    v175 = (v209 + v174 + 7) & 0xFFFFFFFFFFFFFFF8;
    v218 = v175;
    v176 = swift_allocObject();
    v222 = *(v169 + 32);
    (v222)(v176 + v174, v171, v172);
    v177 = (v176 + v175);
    *v177 = sub_1B4DD9224;
    v177[1] = v168;

    v178 = v212;
    sub_1B4F675F4();
    v221 = *(v169 + 8);
    v179 = v200;
    (v221)(v200, v172);
    v180 = v220;
    v181 = v193;
    (v231)(v220, v233, v193);
    v182 = swift_allocObject();
    (v228)(v182 + ((v166 + 16) & ~v166), v180, v181);
    v183 = swift_allocObject();
    *(v183 + 16) = sub_1B4F02898;
    *(v183 + 24) = v182;
    (v227)(v179, v178, v172);
    v184 = v218;
    v185 = swift_allocObject();
    (v222)(&v223[v185], v179, v172);
    v186 = &v184[v185];
    *v186 = sub_1B4DD91FC;
    v186[1] = v183;
    sub_1B4F675F4();
    (v221)(v178, v172);
    return (*(v224 + 8))(v233, v181);
  }

  else
  {
    v123 = sub_1B4F65114();
    sub_1B4F029CC(&qword_1EB8F6DB0, MEMORY[0x1E69CB200], MEMORY[0x1E69CB208]);
    v124 = swift_allocError();
    (*(*(v123 - 8) + 104))(v125, *MEMORY[0x1E69CB1F0], v123);
    *(swift_allocObject() + 16) = v124;

    return sub_1B4F67604();
  }
}

void sub_1B4EFC578(uint64_t a1)
{
  v1 = *(a1 + 32);
  os_unfair_lock_lock((v1 + 20));
  if (*(v1 + 16) == 1)
  {
    *(v1 + 16) = 0;
  }

  else
  {
    v2 = sub_1B4F65114();
    sub_1B4F029CC(&qword_1EB8F6DB0, MEMORY[0x1E69CB200], MEMORY[0x1E69CB208]);
    swift_allocError();
    (*(*(v2 - 8) + 104))(v3, *MEMORY[0x1E69CB1F0], v2);
    swift_willThrow();
  }

  os_unfair_lock_unlock((v1 + 20));
}

uint64_t sub_1B4EFC674(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  ObjectType = swift_getObjectType();
  v8 = 240;
  v5 = *(v3 + 16);
  v6 = sub_1B4F678C4();
  return v5(&v8, a2, v6, MEMORY[0x1E69CD260], MEMORY[0x1E69CD268], ObjectType, v3);
}

uint64_t sub_1B4EFC718(uint64_t a1)
{
  v2 = sub_1B4F678C4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v6 = MEMORY[0x1EEE9AC00](v2, v5);
  (*(v3 + 16))(&v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2, v6);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v2);
  return sub_1B4F67604();
}

Swift::Void __swiftcall SessionClient.detachRemoteDisplay()()
{
  if (qword_1EDB6DEF8 != -1)
  {
    swift_once();
  }

  v1 = sub_1B4F67C54();
  __swift_project_value_buffer(v1, qword_1EDB6DF00);
  v2._countAndFlagsBits = 0xD000000000000021;
  v2._object = 0x80000001B4F83EE0;
  v3._object = 0x80000001B4F83FC0;
  v3._countAndFlagsBits = 0xD000000000000015;
  Logger.trace(file:function:)(v2, v3);
  v4 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  v6 = 30;
  (*(v4 + 40))(&v6, ObjectType, v4);
}

uint64_t SessionClient.requestDistributedSessionWithParticipant(havingRole:)(char a1)
{
  if (qword_1EDB6DEF8 != -1)
  {
    swift_once();
  }

  v3 = sub_1B4F67C54();
  __swift_project_value_buffer(v3, qword_1EDB6DF00);
  v4._object = 0x80000001B4F83EE0;
  v5._countAndFlagsBits = 0xD000000000000035;
  v5._object = 0x80000001B4F83FE0;
  v4._countAndFlagsBits = 0xD000000000000021;
  Logger.trace(file:function:)(v4, v5);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v10 = 246;
  v9 = a1;
  return (*(v6 + 16))(&v10, &v9, MEMORY[0x1E69CC378], MEMORY[0x1E69CC368], MEMORY[0x1E69CC370], ObjectType, v6);
}

uint64_t SessionClient.requestDistributedSessionWithParticipant(_:)(uint64_t a1)
{
  if (qword_1EDB6DEF8 != -1)
  {
    swift_once();
  }

  v3 = sub_1B4F67C54();
  __swift_project_value_buffer(v3, qword_1EDB6DF00);
  v4._object = 0x80000001B4F83EE0;
  v5._countAndFlagsBits = 0xD00000000000002CLL;
  v5._object = 0x80000001B4F84020;
  v4._countAndFlagsBits = 0xD000000000000021;
  Logger.trace(file:function:)(v4, v5);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v11 = 245;
  v8 = *(v6 + 16);
  v9 = sub_1B4F65F84();
  return v8(&v11, a1, v9, MEMORY[0x1E69CBB80], MEMORY[0x1E69CBB88], ObjectType, v6);
}

uint64_t SessionClient.activateDistributedSession(identifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v157 = a2;
  v156 = a1;
  v159 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4068, &qword_1B4F6A5C0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v155 = v142 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4070, &unk_1B4F788E0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v154 = v142 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4060, &unk_1B4F788D0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v153 = v142 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4078, &qword_1B4F6A5C8);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v152 = v142 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4080, &unk_1B4F788F0);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v151 = v142 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4088, &qword_1B4F6A5D0);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v150 = v142 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F51D8, &unk_1B4F78900);
  MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v149 = v142 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4090, &qword_1B4F6A5D8);
  MEMORY[0x1EEE9AC00](v24 - 8, v25);
  v148 = v142 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40B0, &unk_1B4F78920);
  MEMORY[0x1EEE9AC00](v27 - 8, v28);
  v147 = v142 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40A0, &qword_1B4F6A5E0);
  MEMORY[0x1EEE9AC00](v30 - 8, v31);
  v168 = v142 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40B8, &qword_1B4F6A5F0);
  MEMORY[0x1EEE9AC00](v33 - 8, v34);
  v167 = v142 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40C0, &unk_1B4F78930);
  MEMORY[0x1EEE9AC00](v36 - 8, v37);
  v166 = v142 - v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40C8, &qword_1B4F6A5F8);
  MEMORY[0x1EEE9AC00](v39 - 8, v40);
  v165 = v142 - v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40D0, &unk_1B4F78940);
  MEMORY[0x1EEE9AC00](v42 - 8, v43);
  v164 = v142 - v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40D8, &qword_1B4F6A600);
  MEMORY[0x1EEE9AC00](v45 - 8, v46);
  v163 = v142 - v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40E0, &unk_1B4F78950);
  MEMORY[0x1EEE9AC00](v48 - 8, v49);
  v162 = v142 - v50;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40E8, &qword_1B4F6A608);
  MEMORY[0x1EEE9AC00](v51 - 8, v52);
  v161 = v142 - v53;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40F0, &unk_1B4F78960);
  MEMORY[0x1EEE9AC00](v54 - 8, v55);
  v160 = v142 - v56;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F72D0, &qword_1B4F6A610);
  MEMORY[0x1EEE9AC00](v57 - 8, v58);
  v60 = v142 - v59;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40F8, &unk_1B4F78970);
  MEMORY[0x1EEE9AC00](v61 - 8, v62);
  v64 = v142 - v63;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4118, &qword_1B4F6A630);
  MEMORY[0x1EEE9AC00](v65 - 8, v66);
  v68 = v142 - v67;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4128, &qword_1B4F6A638);
  MEMORY[0x1EEE9AC00](v69 - 8, v70);
  v72 = v142 - v71;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4120, &unk_1B4F78980);
  MEMORY[0x1EEE9AC00](v73 - 8, v74);
  v76 = v142 - v75;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4130, &unk_1B4F78990);
  MEMORY[0x1EEE9AC00](v77 - 8, v78);
  v80 = v142 - v79;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4138, &qword_1B4F6A640);
  MEMORY[0x1EEE9AC00](v81 - 8, v82);
  v84 = v142 - v83;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4140, qword_1B4F789A0);
  MEMORY[0x1EEE9AC00](v85 - 8, v86);
  v88 = v142 - v87;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7050, &qword_1B4F71500);
  MEMORY[0x1EEE9AC00](v89 - 8, v90);
  v92 = v142 - v91;
  v146 = sub_1B4F65504();
  v145 = *(v146 - 8);
  MEMORY[0x1EEE9AC00](v146, v93);
  v144 = v142 - ((v94 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDB6DEF8 != -1)
  {
    swift_once();
  }

  v95 = sub_1B4F67C54();
  __swift_project_value_buffer(v95, qword_1EDB6DF00);
  v96._object = 0x80000001B4F83EE0;
  v97._countAndFlagsBits = 0xD000000000000027;
  v97._object = 0x80000001B4F84050;
  v96._countAndFlagsBits = 0xD000000000000021;
  Logger.trace(file:function:)(v96, v97);
  v143 = sub_1B4F68F24();
  v98 = sub_1B4F65184();
  v99 = *(*(v98 - 8) + 56);
  v142[9] = v92;
  v99(v92, 1, 1, v98);
  v100 = sub_1B4F663B4();
  v101 = *(*(v100 - 8) + 56);
  v142[8] = v88;
  v101(v88, 1, 1, v100);
  v102 = sub_1B4F66754();
  v103 = *(*(v102 - 8) + 56);
  v142[7] = v84;
  v103(v84, 1, 1, v102);
  v104 = sub_1B4F65274();
  v105 = *(*(v104 - 8) + 56);
  v142[6] = v80;
  v105(v80, 1, 1, v104);
  v106 = sub_1B4F65AD4();
  v107 = *(*(v106 - 8) + 56);
  v142[5] = v76;
  v107(v76, 1, 1, v106);
  v108 = sub_1B4F67AF4();
  v109 = *(*(v108 - 8) + 56);
  v142[4] = v72;
  v109(v72, 1, 1, v108);
  v110 = sub_1B4F66014();
  v111 = *(*(v110 - 8) + 56);
  v142[3] = v68;
  v111(v68, 1, 1, v110);
  v112 = sub_1B4F65854();
  v113 = *(*(v112 - 8) + 56);
  v142[2] = v64;
  v113(v64, 1, 1, v112);
  v114 = sub_1B4F64FD4();
  v115 = *(*(v114 - 8) + 56);
  v142[1] = v60;
  v115(v60, 1, 1, v114);
  v116 = sub_1B4F65D04();
  (*(*(v116 - 8) + 56))(v160, 1, 1, v116);
  v117 = sub_1B4F66B74();
  (*(*(v117 - 8) + 56))(v161, 1, 1, v117);
  v118 = sub_1B4F65B84();
  (*(*(v118 - 8) + 56))(v162, 1, 1, v118);
  v119 = sub_1B4F64AA4();
  (*(*(v119 - 8) + 56))(v163, 1, 1, v119);
  v120 = sub_1B4F66454();
  (*(*(v120 - 8) + 56))(v164, 1, 1, v120);
  v121 = sub_1B4F65DB4();
  (*(*(v121 - 8) + 56))(v165, 1, 1, v121);
  v122 = sub_1B4F66E84();
  (*(*(v122 - 8) + 56))(v166, 1, 1, v122);
  v123 = sub_1B4F64B04();
  (*(*(v123 - 8) + 56))(v167, 1, 1, v123);
  v124 = sub_1B4F65894();
  (*(*(v124 - 8) + 56))(v168, 1, 1, v124);
  v125 = sub_1B4F67A34();
  (*(*(v125 - 8) + 56))(v147, 1, 1, v125);
  v126 = sub_1B4F66914();
  (*(*(v126 - 8) + 56))(v148, 1, 1, v126);
  v127 = sub_1B4F64E14();
  (*(*(v127 - 8) + 56))(v149, 1, 1, v127);
  v128 = sub_1B4F64E44();
  (*(*(v128 - 8) + 56))(v150, 1, 1, v128);
  v129 = sub_1B4F65C34();
  (*(*(v129 - 8) + 56))(v151, 1, 1, v129);
  v130 = sub_1B4F66084();
  (*(*(v130 - 8) + 56))(v152, 1, 1, v130);
  v131 = sub_1B4F66964();
  (*(*(v131 - 8) + 56))(v153, 1, 1, v131);
  v132 = sub_1B4F66AC4();
  (*(*(v132 - 8) + 56))(v154, 1, 1, v132);
  v133 = sub_1B4F679A4();
  (*(*(v133 - 8) + 56))(v155, 1, 1, v133);

  sub_1B4F684B4();
  v134 = v144;
  sub_1B4F65424();
  v135 = *(v158 + 24);
  ObjectType = swift_getObjectType();
  v169 = 238;
  v137 = *(v135 + 32);
  v138 = sub_1B4F678C4();
  v141 = ObjectType;
  v139 = v146;
  v137(&v169, v134, v146, v138, MEMORY[0x1E69CB390], MEMORY[0x1E69CB398], MEMORY[0x1E69CD260], MEMORY[0x1E69CD268], v141, v135);
  return (*(v145 + 8))(v134, v139);
}

uint64_t SessionClient.cancelDistributedSessionWithParticipant(_:)(uint64_t a1)
{
  if (qword_1EDB6DEF8 != -1)
  {
    swift_once();
  }

  v3 = sub_1B4F67C54();
  __swift_project_value_buffer(v3, qword_1EDB6DF00);
  v4._object = 0x80000001B4F83EE0;
  v5._countAndFlagsBits = 0xD00000000000002BLL;
  v5._object = 0x80000001B4F84080;
  v4._countAndFlagsBits = 0xD000000000000021;
  Logger.trace(file:function:)(v4, v5);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v11 = 239;
  v8 = *(v6 + 16);
  v9 = sub_1B4F65F84();
  return v8(&v11, a1, v9, MEMORY[0x1E69CBB80], MEMORY[0x1E69CBB88], ObjectType, v6);
}

uint64_t SessionClient.reportAppRequirementCompleted()()
{
  if (qword_1EDB6DEF8 != -1)
  {
    swift_once();
  }

  v1 = sub_1B4F67C54();
  __swift_project_value_buffer(v1, qword_1EDB6DF00);
  v2._countAndFlagsBits = 0xD000000000000021;
  v2._object = 0x80000001B4F83EE0;
  v3._object = 0x80000001B4F840B0;
  v3._countAndFlagsBits = 0xD00000000000001FLL;
  Logger.trace(file:function:)(v2, v3);
  v4 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  v7 = 251;
  return (*(v4 + 8))(&v7, ObjectType, v4);
}

uint64_t SessionClient.reportAppRequirementFailed()()
{
  if (qword_1EDB6DEF8 != -1)
  {
    swift_once();
  }

  v1 = sub_1B4F67C54();
  __swift_project_value_buffer(v1, qword_1EDB6DF00);
  v2._countAndFlagsBits = 0xD000000000000021;
  v2._object = 0x80000001B4F83EE0;
  v3._object = 0x80000001B4F840D0;
  v3._countAndFlagsBits = 0xD00000000000001CLL;
  Logger.trace(file:function:)(v2, v3);
  v4 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  v7 = 252;
  return (*(v4 + 8))(&v7, ObjectType, v4);
}

void SessionClient.sendCountdownIntent(_:token:)(uint64_t a1, uint64_t a2)
{
  v171 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4068, &qword_1B4F6A5C0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v157 = v146 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4070, &unk_1B4F788E0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = v146 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4060, &unk_1B4F788D0);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = v146 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4078, &qword_1B4F6A5C8);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v17 = v146 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4080, &unk_1B4F788F0);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v162 = v146 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4088, &qword_1B4F6A5D0);
  MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v161 = v146 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F51D8, &unk_1B4F78900);
  MEMORY[0x1EEE9AC00](v24 - 8, v25);
  v160 = v146 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4090, &qword_1B4F6A5D8);
  MEMORY[0x1EEE9AC00](v27 - 8, v28);
  v159 = v146 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40B0, &unk_1B4F78920);
  MEMORY[0x1EEE9AC00](v30 - 8, v31);
  v158 = v146 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40A0, &qword_1B4F6A5E0);
  MEMORY[0x1EEE9AC00](v33 - 8, v34);
  v36 = v146 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40B8, &qword_1B4F6A5F0);
  MEMORY[0x1EEE9AC00](v37 - 8, v38);
  v181 = (v146 - v39);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40C0, &unk_1B4F78930);
  MEMORY[0x1EEE9AC00](v40 - 8, v41);
  v180 = v146 - v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40C8, &qword_1B4F6A5F8);
  MEMORY[0x1EEE9AC00](v43 - 8, v44);
  v46 = v146 - v45;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40D0, &unk_1B4F78940);
  MEMORY[0x1EEE9AC00](v47 - 8, v48);
  v179 = v146 - v49;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40D8, &qword_1B4F6A600);
  MEMORY[0x1EEE9AC00](v50 - 8, v51);
  v178 = v146 - v52;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40E0, &unk_1B4F78950);
  MEMORY[0x1EEE9AC00](v53 - 8, v54);
  v177 = v146 - v55;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40E8, &qword_1B4F6A608);
  MEMORY[0x1EEE9AC00](v56 - 8, v57);
  v176 = v146 - v58;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40F0, &unk_1B4F78960);
  MEMORY[0x1EEE9AC00](v59 - 8, v60);
  v175 = v146 - v61;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F72D0, &qword_1B4F6A610);
  MEMORY[0x1EEE9AC00](v62 - 8, v63);
  v174 = v146 - v64;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40F8, &unk_1B4F78970);
  MEMORY[0x1EEE9AC00](v65 - 8, v66);
  v173 = v146 - v67;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4118, &qword_1B4F6A630);
  MEMORY[0x1EEE9AC00](v68 - 8, v69);
  v172 = v146 - v70;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4128, &qword_1B4F6A638);
  MEMORY[0x1EEE9AC00](v71 - 8, v72);
  v170 = v146 - v73;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4120, &unk_1B4F78980);
  MEMORY[0x1EEE9AC00](v74 - 8, v75);
  v169 = v146 - v76;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4130, &unk_1B4F78990);
  MEMORY[0x1EEE9AC00](v77 - 8, v78);
  v168 = v146 - v79;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4138, &qword_1B4F6A640);
  MEMORY[0x1EEE9AC00](v80 - 8, v81);
  v167 = v146 - v82;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4140, qword_1B4F789A0);
  MEMORY[0x1EEE9AC00](v83 - 8, v84);
  v166 = v146 - v85;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7050, &qword_1B4F71500);
  MEMORY[0x1EEE9AC00](v86 - 8, v87);
  v165 = v146 - v88;
  v156 = sub_1B4F65504();
  v155 = *(v156 - 8);
  MEMORY[0x1EEE9AC00](v156, v89);
  v154 = v146 - ((v90 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_1B4F65AD4();
  v92 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91, v93);
  v95 = v146 - ((v94 + 15) & 0xFFFFFFFFFFFFFFF0);
  v164 = a2;
  v96 = *(a2 + 32);
  os_unfair_lock_lock((v96 + 20));
  v97 = *(v96 + 16);
  os_unfair_lock_unlock((v96 + 20));
  if (v97)
  {
    if (qword_1EDB6DEF8 != -1)
    {
      swift_once();
    }

    v98 = sub_1B4F67C54();
    __swift_project_value_buffer(v98, qword_1EDB6DF00);
    v181 = sub_1B4F67C34();
    v99 = sub_1B4F685C4();
    if (os_log_type_enabled(v181, v99))
    {
      v100 = swift_slowAlloc();
      *v100 = 0;
      _os_log_impl(&dword_1B4DC2000, v181, v99, "Send countdown intent failed with inactive token", v100, 2u);
      MEMORY[0x1B8C831D0](v100, -1, -1);
    }

    v101 = v181;
  }

  else
  {
    v151 = v17;
    v152 = v13;
    v153 = v9;
    if (qword_1EDB724A8 != -1)
    {
      swift_once();
    }

    v102 = sub_1B4F67C54();
    __swift_project_value_buffer(v102, qword_1EDB72490);
    v103 = *(v92 + 16);
    v148 = v92 + 16;
    v147 = v103;
    v103(v95, v171, v91);
    v104 = v164;

    v105 = sub_1B4F67C34();
    v106 = sub_1B4F685E4();

    if (os_log_type_enabled(v105, v106))
    {
      v107 = swift_slowAlloc();
      v150 = swift_slowAlloc();
      v182 = v150;
      *v107 = 136446466;
      sub_1B4F029CC(&qword_1EB8F6DB8, MEMORY[0x1E69CB588], MEMORY[0x1E69CB598]);
      v108 = sub_1B4F68D04();
      v109 = v46;
      v111 = v110;
      (*(v92 + 8))(v95, v91);
      v112 = sub_1B4DC4F88(v108, v111, &v182);
      v46 = v109;
      v104 = v164;

      *(v107 + 4) = v112;
      *(v107 + 12) = 2082;
      *(v107 + 14) = sub_1B4DC4F88(*(v104 + 16), *(v104 + 24), &v182);
      _os_log_impl(&dword_1B4DC2000, v105, v106, "Sending countdown intent %{public}s for session: %{public}s", v107, 0x16u);
      v113 = v150;
      swift_arrayDestroy();
      MEMORY[0x1B8C831D0](v113, -1, -1);
      MEMORY[0x1B8C831D0](v107, -1, -1);
    }

    else
    {

      (*(v92 + 8))(v95, v91);
    }

    v146[0] = v36;
    v146[1] = v46;
    LODWORD(v150) = sub_1B4F68F24();
    v114 = *(v104 + 24);
    v164 = *(v104 + 16);
    v149 = v114;
    v115 = sub_1B4F65184();
    (*(*(v115 - 8) + 56))(v165, 1, 1, v115);
    v116 = sub_1B4F663B4();
    (*(*(v116 - 8) + 56))(v166, 1, 1, v116);
    v117 = sub_1B4F66754();
    (*(*(v117 - 8) + 56))(v167, 1, 1, v117);
    v118 = sub_1B4F65274();
    (*(*(v118 - 8) + 56))(v168, 1, 1, v118);
    v119 = v169;
    v147(v169, v171, v91);
    (*(v92 + 56))(v119, 0, 1, v91);
    v120 = sub_1B4F67AF4();
    (*(*(v120 - 8) + 56))(v170, 1, 1, v120);
    v121 = sub_1B4F66014();
    (*(*(v121 - 8) + 56))(v172, 1, 1, v121);
    v122 = sub_1B4F65854();
    (*(*(v122 - 8) + 56))(v173, 1, 1, v122);
    v123 = sub_1B4F64FD4();
    (*(*(v123 - 8) + 56))(v174, 1, 1, v123);
    v124 = sub_1B4F65D04();
    (*(*(v124 - 8) + 56))(v175, 1, 1, v124);
    v125 = sub_1B4F66B74();
    (*(*(v125 - 8) + 56))(v176, 1, 1, v125);
    v126 = sub_1B4F65B84();
    (*(*(v126 - 8) + 56))(v177, 1, 1, v126);
    v127 = sub_1B4F64AA4();
    (*(*(v127 - 8) + 56))(v178, 1, 1, v127);
    v128 = sub_1B4F66454();
    (*(*(v128 - 8) + 56))(v179, 1, 1, v128);
    v129 = sub_1B4F65DB4();
    (*(*(v129 - 8) + 56))(v46, 1, 1, v129);
    v130 = sub_1B4F66E84();
    (*(*(v130 - 8) + 56))(v180, 1, 1, v130);
    v131 = sub_1B4F64B04();
    (*(*(v131 - 8) + 56))(v181, 1, 1, v131);
    v132 = sub_1B4F65894();
    (*(*(v132 - 8) + 56))(v36, 1, 1, v132);
    v133 = sub_1B4F67A34();
    (*(*(v133 - 8) + 56))(v158, 1, 1, v133);
    v134 = sub_1B4F66914();
    (*(*(v134 - 8) + 56))(v159, 1, 1, v134);
    v135 = sub_1B4F64E14();
    (*(*(v135 - 8) + 56))(v160, 1, 1, v135);
    v136 = sub_1B4F64E44();
    (*(*(v136 - 8) + 56))(v161, 1, 1, v136);
    v137 = sub_1B4F65C34();
    (*(*(v137 - 8) + 56))(v162, 1, 1, v137);
    v138 = sub_1B4F66084();
    (*(*(v138 - 8) + 56))(v151, 1, 1, v138);
    v139 = sub_1B4F66964();
    (*(*(v139 - 8) + 56))(v152, 1, 1, v139);
    v140 = sub_1B4F66AC4();
    (*(*(v140 - 8) + 56))(v153, 1, 1, v140);
    v141 = sub_1B4F679A4();
    (*(*(v141 - 8) + 56))(v157, 1, 1, v141);

    sub_1B4F684B4();
    v142 = v154;
    sub_1B4F65424();
    v143 = *(v163 + 24);
    ObjectType = swift_getObjectType();
    v183 = 33;
    v145 = v156;
    (*(v143 + 48))(&v183, v142, v156, MEMORY[0x1E69CB390], MEMORY[0x1E69CB398], ObjectType, v143);
    (*(v155 + 8))(v142, v145);
  }
}

void SessionClient.startCountdown(_:token:)(uint64_t a1, void *a2)
{
  v145 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4068, &qword_1B4F6A5C0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v154 = v139 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4070, &unk_1B4F788E0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v153 = v139 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4060, &unk_1B4F788D0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v152 = v139 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4078, &qword_1B4F6A5C8);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v151 = v139 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4080, &unk_1B4F788F0);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v150 = v139 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4088, &qword_1B4F6A5D0);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v149 = v139 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F51D8, &unk_1B4F78900);
  MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v148 = v139 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4090, &qword_1B4F6A5D8);
  MEMORY[0x1EEE9AC00](v24 - 8, v25);
  v147 = v139 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40B0, &unk_1B4F78920);
  MEMORY[0x1EEE9AC00](v27 - 8, v28);
  v146 = v139 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40A0, &qword_1B4F6A5E0);
  MEMORY[0x1EEE9AC00](v30 - 8, v31);
  v166 = (v139 - v32);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40B8, &qword_1B4F6A5F0);
  MEMORY[0x1EEE9AC00](v33 - 8, v34);
  v165 = v139 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40C0, &unk_1B4F78930);
  MEMORY[0x1EEE9AC00](v36 - 8, v37);
  v164 = v139 - v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40C8, &qword_1B4F6A5F8);
  MEMORY[0x1EEE9AC00](v39 - 8, v40);
  v163 = v139 - v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40D0, &unk_1B4F78940);
  MEMORY[0x1EEE9AC00](v42 - 8, v43);
  v162 = v139 - v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40D8, &qword_1B4F6A600);
  MEMORY[0x1EEE9AC00](v45 - 8, v46);
  v161 = v139 - v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40E0, &unk_1B4F78950);
  MEMORY[0x1EEE9AC00](v48 - 8, v49);
  v160 = v139 - v50;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40E8, &qword_1B4F6A608);
  MEMORY[0x1EEE9AC00](v51 - 8, v52);
  v159 = v139 - v53;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40F0, &unk_1B4F78960);
  MEMORY[0x1EEE9AC00](v54 - 8, v55);
  v158 = v139 - v56;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F72D0, &qword_1B4F6A610);
  MEMORY[0x1EEE9AC00](v57 - 8, v58);
  v157 = v139 - v59;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40F8, &unk_1B4F78970);
  MEMORY[0x1EEE9AC00](v60 - 8, v61);
  v156 = v139 - v62;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4118, &qword_1B4F6A630);
  MEMORY[0x1EEE9AC00](v63 - 8, v64);
  v66 = v139 - v65;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4128, &qword_1B4F6A638);
  MEMORY[0x1EEE9AC00](v67 - 8, v68);
  v70 = v139 - v69;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4120, &unk_1B4F78980);
  MEMORY[0x1EEE9AC00](v71 - 8, v72);
  v74 = v139 - v73;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4130, &unk_1B4F78990);
  MEMORY[0x1EEE9AC00](v75 - 8, v76);
  v78 = v139 - v77;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4138, &qword_1B4F6A640);
  MEMORY[0x1EEE9AC00](v79 - 8, v80);
  v82 = v139 - v81;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4140, qword_1B4F789A0);
  MEMORY[0x1EEE9AC00](v83 - 8, v84);
  v86 = v139 - v85;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7050, &qword_1B4F71500);
  MEMORY[0x1EEE9AC00](v87 - 8, v88);
  v90 = v139 - v89;
  v144 = sub_1B4F65504();
  v143 = *(v144 - 8);
  MEMORY[0x1EEE9AC00](v144, v91);
  v142 = v139 - ((v92 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = a2[4];
  os_unfair_lock_lock((v93 + 20));
  v94 = *(v93 + 16);
  os_unfair_lock_unlock((v93 + 20));
  if (v94)
  {
    if (qword_1EDB6DEF8 != -1)
    {
      swift_once();
    }

    v95 = sub_1B4F67C54();
    __swift_project_value_buffer(v95, qword_1EDB6DF00);
    v166 = sub_1B4F67C34();
    v96 = sub_1B4F685C4();
    if (os_log_type_enabled(v166, v96))
    {
      v97 = swift_slowAlloc();
      *v97 = 0;
      _os_log_impl(&dword_1B4DC2000, v166, v96, "Start countdown failed with inactive token", v97, 2u);
      MEMORY[0x1B8C831D0](v97, -1, -1);
    }

    v98 = v166;
  }

  else
  {
    v140 = sub_1B4F68F24();
    v99 = a2[3];
    v141 = a2[2];
    v139[6] = v99;
    v100 = sub_1B4F65184();
    v101 = *(*(v100 - 8) + 56);
    v139[8] = v90;
    v101(v90, 1, 1, v100);
    v102 = sub_1B4F663B4();
    v103 = *(*(v102 - 8) + 56);
    v139[7] = v86;
    v103(v86, 1, 1, v102);
    v104 = sub_1B4F66754();
    v105 = *(*(v104 - 8) + 56);
    v139[5] = v82;
    v105(v82, 1, 1, v104);
    v106 = sub_1B4F65274();
    v107 = *(*(v106 - 8) + 56);
    v139[4] = v78;
    v107(v78, 1, 1, v106);
    v108 = sub_1B4F65AD4();
    v109 = *(*(v108 - 8) + 56);
    v139[3] = v74;
    v109(v74, 1, 1, v108);
    v110 = sub_1B4F67AF4();
    v111 = *(v110 - 8);
    v112 = *(v111 + 16);
    v139[2] = v70;
    v112(v70, v145, v110);
    (*(v111 + 56))(v70, 0, 1, v110);
    v113 = sub_1B4F66014();
    v114 = *(*(v113 - 8) + 56);
    v139[1] = v66;
    v114(v66, 1, 1, v113);
    v115 = sub_1B4F65854();
    (*(*(v115 - 8) + 56))(v156, 1, 1, v115);
    v116 = sub_1B4F64FD4();
    (*(*(v116 - 8) + 56))(v157, 1, 1, v116);
    v117 = sub_1B4F65D04();
    (*(*(v117 - 8) + 56))(v158, 1, 1, v117);
    v118 = sub_1B4F66B74();
    (*(*(v118 - 8) + 56))(v159, 1, 1, v118);
    v119 = sub_1B4F65B84();
    (*(*(v119 - 8) + 56))(v160, 1, 1, v119);
    v120 = sub_1B4F64AA4();
    (*(*(v120 - 8) + 56))(v161, 1, 1, v120);
    v121 = sub_1B4F66454();
    (*(*(v121 - 8) + 56))(v162, 1, 1, v121);
    v122 = sub_1B4F65DB4();
    (*(*(v122 - 8) + 56))(v163, 1, 1, v122);
    v123 = sub_1B4F66E84();
    (*(*(v123 - 8) + 56))(v164, 1, 1, v123);
    v124 = sub_1B4F64B04();
    (*(*(v124 - 8) + 56))(v165, 1, 1, v124);
    v125 = sub_1B4F65894();
    (*(*(v125 - 8) + 56))(v166, 1, 1, v125);
    v126 = sub_1B4F67A34();
    (*(*(v126 - 8) + 56))(v146, 1, 1, v126);
    v127 = sub_1B4F66914();
    (*(*(v127 - 8) + 56))(v147, 1, 1, v127);
    v128 = sub_1B4F64E14();
    (*(*(v128 - 8) + 56))(v148, 1, 1, v128);
    v129 = sub_1B4F64E44();
    (*(*(v129 - 8) + 56))(v149, 1, 1, v129);
    v130 = sub_1B4F65C34();
    (*(*(v130 - 8) + 56))(v150, 1, 1, v130);
    v131 = sub_1B4F66084();
    (*(*(v131 - 8) + 56))(v151, 1, 1, v131);
    v132 = sub_1B4F66964();
    (*(*(v132 - 8) + 56))(v152, 1, 1, v132);
    v133 = sub_1B4F66AC4();
    (*(*(v133 - 8) + 56))(v153, 1, 1, v133);
    v134 = sub_1B4F679A4();
    (*(*(v134 - 8) + 56))(v154, 1, 1, v134);

    sub_1B4F684B4();
    v135 = v142;
    sub_1B4F65424();
    v136 = *(v155 + 24);
    ObjectType = swift_getObjectType();
    v167 = 33;
    v138 = v144;
    (*(v136 + 48))(&v167, v135, v144, MEMORY[0x1E69CB390], MEMORY[0x1E69CB398], ObjectType, v136);
    (*(v143 + 8))(v135, v138);
  }
}

void SessionClient.applySessionUpdate(token:activityRings:audioFocusPreference:audioLanguagePreference:cadenceMetric:displayPreferences:distanceMetric:energyMetric:gymKitConnection:heartRateDeviceConnection:heartRateMetric:meditation:mindfulMinutesMetric:multiUserSession:multiUserSessionIdentities:paceMetric:playbackIntent:playback:remoteDisplayConnection:scoreMetric:termination:unitPreferences:userMassMetric:workoutDeviceConnection:watchConnectionRejection:workout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  v171 = a8;
  v169 = a7;
  v167 = a6;
  v165 = a5;
  v164 = a4;
  v162 = a3;
  v161 = a2;
  v188 = a25;
  v189 = a26;
  v185 = a23;
  v186 = a24;
  v183 = a22;
  v182 = a21;
  v181 = a20;
  v180 = a19;
  v179 = a18;
  v178 = a17;
  v177 = a16;
  v176 = a15;
  v175 = a14;
  v174 = a13;
  v173 = a12;
  v172 = a11;
  v170 = a10;
  v168 = a9;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4068, &qword_1B4F6A5C0);
  MEMORY[0x1EEE9AC00](v27 - 8, v28);
  v187 = v148 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4070, &unk_1B4F788E0);
  MEMORY[0x1EEE9AC00](v30 - 8, v31);
  v184 = v148 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4060, &unk_1B4F788D0);
  MEMORY[0x1EEE9AC00](v33 - 8, v34);
  v166 = v148 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4078, &qword_1B4F6A5C8);
  MEMORY[0x1EEE9AC00](v36 - 8, v37);
  v163 = v148 - v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4080, &unk_1B4F788F0);
  MEMORY[0x1EEE9AC00](v39 - 8, v40);
  v160 = v148 - v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4088, &qword_1B4F6A5D0);
  MEMORY[0x1EEE9AC00](v42 - 8, v43);
  v159 = v148 - v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F51D8, &unk_1B4F78900);
  MEMORY[0x1EEE9AC00](v45 - 8, v46);
  v158 = v148 - v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4090, &qword_1B4F6A5D8);
  MEMORY[0x1EEE9AC00](v48 - 8, v49);
  v157 = v148 - v50;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40B0, &unk_1B4F78920);
  MEMORY[0x1EEE9AC00](v51 - 8, v52);
  v156 = v148 - v53;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40A0, &qword_1B4F6A5E0);
  MEMORY[0x1EEE9AC00](v54 - 8, v55);
  v201 = (v148 - v56);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40B8, &qword_1B4F6A5F0);
  MEMORY[0x1EEE9AC00](v57 - 8, v58);
  v200 = v148 - v59;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40C0, &unk_1B4F78930);
  MEMORY[0x1EEE9AC00](v60 - 8, v61);
  v199 = v148 - v62;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40C8, &qword_1B4F6A5F8);
  MEMORY[0x1EEE9AC00](v63 - 8, v64);
  v198 = v148 - v65;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40D0, &unk_1B4F78940);
  MEMORY[0x1EEE9AC00](v66 - 8, v67);
  v197 = v148 - v68;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40D8, &qword_1B4F6A600);
  MEMORY[0x1EEE9AC00](v69 - 8, v70);
  v196 = v148 - v71;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40E0, &unk_1B4F78950);
  MEMORY[0x1EEE9AC00](v72 - 8, v73);
  v195 = v148 - v74;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40E8, &qword_1B4F6A608);
  MEMORY[0x1EEE9AC00](v75 - 8, v76);
  v194 = v148 - v77;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40F0, &unk_1B4F78960);
  MEMORY[0x1EEE9AC00](v78 - 8, v79);
  v193 = v148 - v80;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F72D0, &qword_1B4F6A610);
  MEMORY[0x1EEE9AC00](v81 - 8, v82);
  v192 = v148 - v83;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40F8, &unk_1B4F78970);
  MEMORY[0x1EEE9AC00](v84 - 8, v85);
  v191 = v148 - v86;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4118, &qword_1B4F6A630);
  MEMORY[0x1EEE9AC00](v87 - 8, v88);
  v90 = v148 - v89;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4128, &qword_1B4F6A638);
  MEMORY[0x1EEE9AC00](v91 - 8, v92);
  v94 = v148 - v93;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4120, &unk_1B4F78980);
  MEMORY[0x1EEE9AC00](v95 - 8, v96);
  v98 = v148 - v97;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4130, &unk_1B4F78990);
  MEMORY[0x1EEE9AC00](v99 - 8, v100);
  v102 = v148 - v101;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4138, &qword_1B4F6A640);
  MEMORY[0x1EEE9AC00](v103 - 8, v104);
  v106 = v148 - v105;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4140, qword_1B4F789A0);
  MEMORY[0x1EEE9AC00](v107 - 8, v108);
  v110 = v148 - v109;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7050, &qword_1B4F71500);
  MEMORY[0x1EEE9AC00](v111 - 8, v112);
  v114 = v148 - v113;
  v155 = sub_1B4F65504();
  v154 = *(v155 - 8);
  MEMORY[0x1EEE9AC00](v155, v115);
  v153 = v148 - ((v116 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v117, v118);
  v152 = v148 - v119;
  v120 = a1;
  v121 = *(a1 + 32);
  os_unfair_lock_lock((v121 + 20));
  LOBYTE(a1) = *(v121 + 16);
  os_unfair_lock_unlock((v121 + 20));
  if (a1)
  {
    if (qword_1EDB6DEF8 != -1)
    {
      swift_once();
    }

    v122 = sub_1B4F67C54();
    __swift_project_value_buffer(v122, qword_1EDB6DF00);
    v201 = sub_1B4F67C34();
    v123 = sub_1B4F685C4();
    if (os_log_type_enabled(v201, v123))
    {
      v124 = swift_slowAlloc();
      *v124 = 0;
      _os_log_impl(&dword_1B4DC2000, v201, v123, "Apply session update failed with inactive token", v124, 2u);
      MEMORY[0x1B8C831D0](v124, -1, -1);
    }

    v125 = v201;
  }

  else
  {
    v149 = sub_1B4F68F24();
    v126 = *(v120 + 24);
    v151 = *(v120 + 16);
    v148[4] = v126;
    v150 = v114;
    sub_1B4E21A90(v161, v114, &qword_1EB8F7050, &qword_1B4F71500);
    v148[7] = v110;
    sub_1B4E21A90(v162, v110, &qword_1EB8F4140, qword_1B4F789A0);
    v148[6] = v106;
    sub_1B4E21A90(v164, v106, &qword_1EB8F4138, &qword_1B4F6A640);
    v148[5] = v102;
    sub_1B4E21A90(v165, v102, &qword_1EB8F4130, &unk_1B4F78990);
    v127 = sub_1B4F65AD4();
    v128 = *(*(v127 - 8) + 56);
    v148[3] = v98;
    v128(v98, 1, 1, v127);
    v129 = sub_1B4F67AF4();
    v130 = *(*(v129 - 8) + 56);
    v148[2] = v94;
    v130(v94, 1, 1, v129);
    v148[1] = v90;
    sub_1B4E21A90(v167, v90, &qword_1EB8F4118, &qword_1B4F6A630);
    sub_1B4E21A90(v169, v191, &qword_1EB8F40F8, &unk_1B4F78970);
    sub_1B4E21A90(v171, v192, &qword_1EB8F72D0, &qword_1B4F6A610);
    sub_1B4E21A90(v168, v193, &qword_1EB8F40F0, &unk_1B4F78960);
    sub_1B4E21A90(v170, v194, &qword_1EB8F40E8, &qword_1B4F6A608);
    sub_1B4E21A90(v172, v195, &qword_1EB8F40E0, &unk_1B4F78950);
    sub_1B4E21A90(v173, v196, &qword_1EB8F40D8, &qword_1B4F6A600);
    sub_1B4E21A90(v174, v197, &qword_1EB8F40D0, &unk_1B4F78940);
    sub_1B4E21A90(v175, v198, &qword_1EB8F40C8, &qword_1B4F6A5F8);
    sub_1B4E21A90(v176, v199, &qword_1EB8F40C0, &unk_1B4F78930);
    sub_1B4E21A90(v177, v200, &qword_1EB8F40B8, &qword_1B4F6A5F0);
    sub_1B4E21A90(v178, v201, &qword_1EB8F40A0, &qword_1B4F6A5E0);
    sub_1B4E21A90(v179, v156, &qword_1EB8F40B0, &unk_1B4F78920);
    sub_1B4E21A90(v180, v157, &qword_1EB8F4090, &qword_1B4F6A5D8);
    sub_1B4E21A90(v181, v158, &qword_1EB8F51D8, &unk_1B4F78900);
    sub_1B4E21A90(v182, v159, &qword_1EB8F4088, &qword_1B4F6A5D0);
    sub_1B4E21A90(v183, v160, &qword_1EB8F4080, &unk_1B4F788F0);
    sub_1B4E21A90(v185, v163, &qword_1EB8F4078, &qword_1B4F6A5C8);
    sub_1B4E21A90(v186, v166, &qword_1EB8F4060, &unk_1B4F788D0);
    sub_1B4E21A90(v188, v184, &qword_1EB8F4070, &unk_1B4F788E0);
    sub_1B4E21A90(v189, v187, &qword_1EB8F4068, &qword_1B4F6A5C0);

    sub_1B4F684B4();
    v131 = v152;
    sub_1B4F65424();
    if (qword_1EDB6DEF8 != -1)
    {
      swift_once();
    }

    v132 = sub_1B4F67C54();
    __swift_project_value_buffer(v132, qword_1EDB6DF00);
    v133 = v154;
    v134 = v153;
    v135 = v155;
    (*(v154 + 16))(v153, v131, v155);
    v136 = sub_1B4F67C34();
    v137 = sub_1B4F685E4();
    if (os_log_type_enabled(v136, v137))
    {
      v138 = swift_slowAlloc();
      v139 = swift_slowAlloc();
      v202 = v139;
      *v138 = 136315138;
      sub_1B4F029CC(&qword_1EB8F6DC0, MEMORY[0x1E69CB3A0], MEMORY[0x1E69CB3A8]);
      v140 = sub_1B4F68D04();
      v141 = v134;
      v143 = v142;
      v144 = *(v133 + 8);
      v144(v141, v135);
      v145 = sub_1B4DC4F88(v140, v143, &v202);

      *(v138 + 4) = v145;
      _os_log_impl(&dword_1B4DC2000, v136, v137, "Updating session: %s", v138, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v139);
      MEMORY[0x1B8C831D0](v139, -1, -1);
      MEMORY[0x1B8C831D0](v138, -1, -1);
    }

    else
    {

      v144 = *(v133 + 8);
      v144(v134, v135);
    }

    v146 = *(v190 + 24);
    ObjectType = swift_getObjectType();
    v203 = 33;
    (*(v146 + 48))(&v203, v131, v135, MEMORY[0x1E69CB390], MEMORY[0x1E69CB398], ObjectType, v146);
    v144(v131, v135);
  }
}

uint64_t sub_1B4F01C58()
{
  v1 = *v0;
  if (qword_1EDB6DEF8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB6DF00);
  v3._countAndFlagsBits = 0xD000000000000021;
  v3._object = 0x80000001B4F83EE0;
  v4._object = 0x80000001B4F83F10;
  v4._countAndFlagsBits = 0xD000000000000014;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v10 = 241;
  v7 = *(v5 + 24);
  v8 = sub_1B4F678C4();
  return v7(&v10, v8, MEMORY[0x1E69CD260], MEMORY[0x1E69CD268], ObjectType, v5);
}

uint64_t sub_1B4F01D90()
{
  v1 = *v0;
  if (qword_1EDB6DEF8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB6DF00);
  v3._countAndFlagsBits = 0xD000000000000021;
  v3._object = 0x80000001B4F83EE0;
  v4._object = 0x80000001B4F83FC0;
  v4._countAndFlagsBits = 0xD000000000000015;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v8 = 30;
  return (*(v5 + 40))(&v8, ObjectType, v5);
}

uint64_t sub_1B4F01E6C(char a1)
{
  v3 = *v1;
  if (qword_1EDB6DEF8 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB6DF00);
  v5._object = 0x80000001B4F83EE0;
  v6._countAndFlagsBits = 0xD000000000000035;
  v6._object = 0x80000001B4F83FE0;
  v5._countAndFlagsBits = 0xD000000000000021;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  v11 = 246;
  v10 = a1;
  return (*(v7 + 16))(&v11, &v10, MEMORY[0x1E69CC378], MEMORY[0x1E69CC368], MEMORY[0x1E69CC370], ObjectType, v7);
}