void sub_1B089E99C(void *a1)
{
  v62 = a1;
  v59 = 0;
  v78 = 0;
  v77 = 0;
  v76 = 0;
  v58 = 0;
  v60 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2600, &qword_1B0E9A080) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v61 = v22 - v60;
  v63 = sub_1B0E42E68();
  v64 = *(v63 - 8);
  v65 = v64;
  v66 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v62);
  v68 = (v66 + 15) & 0xFFFFFFFFFFFFFFF0;
  v67 = v22 - v68;
  v3 = MEMORY[0x1EEE9AC00](v2);
  v69 = v22 - v68;
  v78 = v22 - v68;
  v77 = v4;
  v76 = v1;
  v70 = [v4 URL];
  if (v70)
  {
    v56 = v70;
    v55 = v70;
    sub_1B0E42DE8();
    (*(v65 + 32))(v61, v67, v63);
    (*(v65 + 56))(v61, 0, 1, v63);
  }

  else
  {
    (*(v65 + 56))(v61, 1, 1, v63);
  }

  if ((*(v65 + 48))(v61, 1, v63) != 1)
  {
    v5 = v58;
    (*(v65 + 32))(v69, v61, v63);
    v48 = *(v57 + *(type metadata accessor for MailboxUpdateTree(0) + 48));
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v71[0] = v48;
    v49 = v22;
    MEMORY[0x1EEE9AC00](v22);
    v22[-2] = v69;
    v50 = v22;
    MEMORY[0x1EEE9AC00](v22);
    v51 = &v22[-4];
    v22[-2] = sub_1B08A4EF0;
    v22[-1] = v6;
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E28C0, &qword_1B0E9E130);
    sub_1B08A4DB4();
    v7 = sub_1B0E45028();
    v53 = v5;
    v54 = v7;
    if (!v5)
    {
      v47 = v54;
      sub_1B039E440(v71);
      if (v47)
      {
        v9 = v53;
        (*(v65 + 8))(v69, v63);
        v45 = v9;
        return;
      }

      v8 = v53;
      (*(v65 + 8))(v69, v63);
      v46 = v8;
      goto LABEL_13;
    }

    __break(1u);
LABEL_26:

    __break(1u);
    goto LABEL_27;
  }

  v10 = v58;
  sub_1B06E3800(v61);
  v38 = *(v57 + *(type metadata accessor for MailboxUpdateTree(0) + 48));
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v75 = v38;
  v11 = v62;
  v39 = v22;
  MEMORY[0x1EEE9AC00](v22);
  v22[-2] = v62;
  v40 = v22;
  MEMORY[0x1EEE9AC00](v22);
  v41 = &v22[-4];
  v22[-2] = sub_1B08A4D7C;
  v22[-1] = v12;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E28C0, &qword_1B0E9E130);
  sub_1B08A4DB4();
  v13 = sub_1B0E45028();
  v43 = v10;
  v44 = v13;
  if (v10)
  {
    goto LABEL_26;
  }

  v37 = v44;

  sub_1B039E440(&v75);
  if (v37)
  {
    v45 = v43;
    return;
  }

  v46 = v43;
LABEL_13:
  v14 = v46;
  updated = type metadata accessor for MailboxUpdateTree(0);
  v30 = *(v57 + *(updated + 40));
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v74 = v30;
  v15 = v62;
  v31 = v22;
  MEMORY[0x1EEE9AC00](v22);
  v33 = &v22[-4];
  v22[-2] = v16;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E28D0, &qword_1B0E9E138);
  v32 = v34;
  sub_1B08A4E68();
  v17 = sub_1B0E45028();
  v35 = v14;
  v36 = v17;
  if (v14)
  {
LABEL_27:

    __break(1u);
    return;
  }

  v28 = v36;

  sub_1B039E440(&v74);
  if (v28)
  {
    v45 = v35;
  }

  else
  {
    v18 = v62;
    v27 = [v62 children];
    if (v27)
    {
      v26 = v27;
      v23 = v27;
      v22[3] = sub_1B03EE50C();
      v24 = sub_1B0E451B8();

      v25 = v24;
    }

    else
    {
      v25 = 0;
    }

    v72 = v25;
    if (v25)
    {
      v73 = v72;
    }

    else
    {
      v22[1] = 0;
      v22[2] = sub_1B03EE50C();
      v73 = sub_1B0E46A48();
      if (v72)
      {
        sub_1B039E440(&v72);
      }
    }

    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
    v71[1] = v19;
    v71[2] = v20;
    sub_1B0E452E8();
    v21 = v35;
    *(v57 + *(updated + 52)) = 1;
    v45 = v21;
  }
}

uint64_t sub_1B089F2A0()
{
  v2 = *v0;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v2;
}

uint64_t sub_1B089F2F8(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v5 = BYTE4(a2);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *v2 = a1;
  *(v2 + 8) = v4;
  *(v2 + 12) = v5;
}

void *sub_1B089F374@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, void *a8@<X8>)
{
  __src[0] = a1;
  LODWORD(__src[1]) = a2;
  BYTE4(__src[1]) = BYTE4(a2);
  __src[2] = a3;
  __src[3] = a4;
  __src[4] = a5;
  __src[5] = a6;
  LOBYTE(__src[6]) = a7;
  return memcpy(a8, __src, 0x31uLL);
}

uint64_t sub_1B089F3E0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = *a1;
  RemoteMailbox.name.getter();
  v6 = Namespace.contains(_:)(v2, v3, v5);

  result = v6;
  *a2 = (v6 ^ 1) & 1;
  return result;
}

uint64_t sub_1B089F490(__int16 a1)
{
  v4 = 0;
  v3 = a1;
  RemoteMailbox.Attributes.allAttributes.getter(a1, v2);
  type metadata accessor for MailboxAttributes(0);
  sub_1B0694AF8();
  sub_1B0694390();
  sub_1B0E46FE8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E28D8, &qword_1B0E9E140);
  sub_1B08A4EF8();
  sub_1B0E44FD8();
  sub_1B08A4F80();
  return v2[3];
}

uint64_t sub_1B089F76C(uint64_t a1)
{
  v2 = *(a1 + 16);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v2;
}

uint64_t sub_1B089F7A4(void *a1)
{
  v8 = [a1 decodedName];
  if (v8)
  {
    v4 = sub_1B0E44AD8();
    v5 = v1;
    MEMORY[0x1E69E5920](v8);
    v6 = v4;
    v7 = v5;
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  if (v7)
  {
    return v6;
  }

  sub_1B0E465A8();
  __break(1u);
  return v3;
}

id sub_1B089F8E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5, char a6, char a7, uint64_t a8)
{
  v21 = 0;
  v29 = a1;
  v30 = a2;
  v27 = a3;
  v28 = a4;
  v26 = a5;
  v25 = a6;
  v24 = a7 & 1;
  v23 = a8;
  v22 = sub_1B089F490(a5);
  if (a7)
  {
    type metadata accessor for MailboxAttributes(0);
    sub_1B0694AF8();
    sub_1B0E46F48();
  }

  v21 = sub_1B0E46A48();
  if (a6 != 7)
  {
    sub_1B0E46A48();
    v17 = v8;
    *v8 = sub_1B089F5B0(a6);
    v17[1] = v9;
    sub_1B0394964();
    v21 = v10;
  }

  v13 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v15 = sub_1B0E44AC8();

  MEMORY[0x1E69E5928](a8);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v14 = sub_1B0E451A8();

  v16 = [v13 initWithName:v15 attributes:v22 forAccount:a8 extraAttributes:v14];
  MEMORY[0x1E69E5920](v14);
  MEMORY[0x1E69E5920](a8);
  MEMORY[0x1E69E5920](v15);
  if (v16)
  {
    v12 = v16;
  }

  else
  {
    sub_1B0E465A8();
    __break(1u);
  }

  MEMORY[0x1E69E5928](v12);
  v31 = v12;
  sub_1B039E440(&v21);
  MEMORY[0x1E69E5920](a8);

  MEMORY[0x1E69E5920](v31);
  return v12;
}

uint64_t sub_1B089FC28(uint64_t a1, uint64_t a2)
{
  v27 = a1;
  v26 = a2;
  v25 = v2;
  MEMORY[0x1E69E5928](a1);
  MEMORY[0x1E69E5928](a1);
  updated = type metadata accessor for MailboxUpdateTree(0);
  v19 = *(updated + 44);
  if (*(v2 + v19))
  {
    v13 = *(v16 + v19);
    MEMORY[0x1E69E5928](v13);
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  MEMORY[0x1E69E5928](v14);
  v23 = a1;
  v24 = v14;
  if (a1)
  {
    sub_1B06BD0C8(&v23, v22);
    if (v24)
    {
      v21 = v22[0];
      v20 = v24;
      sub_1B03EE50C();
      v11 = sub_1B0E45CD8();
      MEMORY[0x1E69E5920](v20);
      MEMORY[0x1E69E5920](v21);
      sub_1B06D4E94(&v23);
      v12 = v11;
      goto LABEL_9;
    }

    MEMORY[0x1E69E5920](v22[0]);
    goto LABEL_11;
  }

  if (v24)
  {
LABEL_11:
    sub_1B06D61B0(&v23);
    v12 = 0;
    goto LABEL_9;
  }

  sub_1B06D4E94(&v23);
  v12 = 1;
LABEL_9:
  MEMORY[0x1E69E5920](v14);
  result = MEMORY[0x1E69E5920](a1);
  if (v12)
  {
    if (*(v16 + *(updated + 44)))
    {
      MEMORY[0x1E69E5928](a2);
      v22[1] = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E34E0, &qword_1B0E9F580);
      return sub_1B0E452E8();
    }
  }

  else
  {
    sub_1B088D7A8();
    MEMORY[0x1E69E5928](a1);
    sub_1B08A09CC();
    sub_1B03EE50C();
    sub_1B0E46A48();
    v10 = v4;
    MEMORY[0x1E69E5928](a2);
    *v10 = a2;
    sub_1B0394964();
    sub_1B0E45238();

    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
    v6 = v5;
    v7 = (v16 + *(updated + 44));
    v8 = *v7;
    *v7 = v6;
    v7[1] = v9;
    return sub_1B08A4518(v8);
  }

  return result;
}

uint64_t sub_1B089FF5C(uint64_t a1)
{
  v35 = a1;
  v2 = v1;
  v43 = v2;
  v36 = sub_1B08A0B18;
  v65 = 0;
  v64 = 0;
  v61 = 0;
  v37 = 0;
  memset(&v51[6], 0, 0x2EuLL);
  v41 = 0;
  v38 = (*(*(_s6LoggerVMa_1(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v39 = &v15 - v38;
  v40 = (*(*(_s6LoggerVMa(v4) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v41);
  v46 = &v15 - v40;
  v42 = (*(*(_s18MailboxPersistenceVMa(v5) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v41);
  v48 = &v15 - v42;
  v65 = a1;
  v64 = v6;
  updated = type metadata accessor for MailboxUpdateTree(v7);
  sub_1B03F4D78(v43 + *(updated + 20), v48);
  RemoteMailbox.name.getter();
  v47 = v8;
  v45 = v9;
  sub_1B0394784(v43 + *(updated + 32), v46);
  sub_1B07C5844(v47, v45, v46, &v62);
  sub_1B039480C(v46);

  result = sub_1B03F4F08(v48);
  v49 = v62;
  if ((v63 & 1) == 0)
  {
    v34 = v49;
    v11 = v37;
    v30 = v49;
    v61 = v49;
    v31 = __dst;
    v32 = 42;
    memcpy(__dst, (v35 + 24), 0x2AuLL);
    memcpy(v52, __dst, sizeof(v52));
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E28E0, &qword_1B0E9E148);
    result = sub_1B03F1A20(v36, 0, v12, MEMORY[0x1E69E73E0], &unk_1F270C638, v33, &v53);
    if (v11)
    {
      __break(1u);
    }

    else
    {
      v25 = v53;
      v26 = v54;
      v27 = v55;
      v28 = v56;
      *&v29 = v57;
      *(&v29 + 1) = v58 | (v59 << 32);
      v51[6] = v53;
      v51[7] = v54;
      v51[8] = v55;
      v51[9] = v56;
      v51[10] = v57;
      LODWORD(v51[11]) = v58;
      BYTE4(v51[11]) = BYTE12(v29);
      BYTE5(v51[11]) = v60 & 1;
      if ((v60 & 1) == 0)
      {
        v18 = v25;
        v19 = v26;
        v20 = v27;
        v21 = v28;
        v22 = v29;
        v23 = v29 >> 32;
        v24 = (*(&v29 + 1) & 0xFFFFFFFFFFuLL) >> 32;
        LODWORD(v51[0]) = v25;
        BYTE4(v51[0]) = BYTE4(v25) & 1;
        v51[1] = v26;
        LOBYTE(v51[2]) = v27 & 1;
        v51[3] = v28;
        LOBYTE(v51[4]) = v29 & 1;
        *(&v51[4] + 4) = v23;
        BYTE4(v51[5]) = v24 & 1;
        v16 = v67;
        memcpy(v67, v51, 0x2DuLL);
        sub_1B03F4D78(v43 + *(updated + 20), v48);
        v17 = &v50;
        v50 = v30;
        sub_1B0394784(v43 + *(updated + 32), v46);
        RemoteMailbox.name.getter();
        v15 = v13;
        sub_1B07B91DC(v46, v13, v14, v39);
        sub_1B07C1A10(v16, v17, v39);
        sub_1B074B764(v39);
        return sub_1B03F4F08(v48);
      }
    }
  }

  return result;
}

uint64_t sub_1B08A041C(const void *a1, uint64_t a2, uint64_t a3)
{
  v24 = a1;
  v22 = a2;
  v18 = a3;
  v36 = 0;
  v35 = 0;
  v34 = 0;
  v30 = sub_1B0E42E68();
  v27 = *(v30 - 8);
  v28 = v30 - 8;
  v15 = (*(v27 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v30);
  v16 = &v9[-v15];
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3760, &unk_1B0E9AE90);
  v17 = (*(*(v23 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v23);
  v31 = &v9[-v17];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2600, &qword_1B0E9A080);
  v20 = *(*(v3 - 8) + 64);
  v19 = (v20 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3);
  v21 = &v9[-v19];
  v4 = MEMORY[0x1EEE9AC00](&v9[-v19]);
  v26 = &v9[-v5];
  v36 = v24;
  v35 = v22;
  v34 = v6;
  (*(v27 + 16))(v4);
  v7 = *(v27 + 56);
  v29 = 1;
  v7(v26, 0);
  v25 = *(v23 + 48);
  sub_1B071C180(v24, v31);
  sub_1B071C180(v26, &v31[v25]);
  v32 = *(v27 + 48);
  v33 = v27 + 48;
  if (v32(v31, v29, v30) == 1)
  {
    if (v32(&v31[v25], 1, v30) != 1)
    {
      goto LABEL_8;
    }

    sub_1B06E3800(v31);
    v14 = 1;
  }

  else
  {
    sub_1B071C180(v31, v21);
    if (v32(&v31[v25], 1, v30) == 1)
    {
      (*(v27 + 8))(v21, v30);
LABEL_8:
      sub_1B071C2A8(v31);
      v14 = 0;
      goto LABEL_7;
    }

    (*(v27 + 32))(v16, &v31[v25], v30);
    sub_1B071C3D4();
    v13 = sub_1B0E44A28();
    v12 = *(v27 + 8);
    v11 = v27 + 8;
    v12(v16, v30);
    v12(v21, v30);
    sub_1B06E3800(v31);
    v14 = v13;
  }

LABEL_7:
  v10 = v14 ^ 1;
  sub_1B06E3800(v26);
  return v10 & 1;
}

uint64_t sub_1B08A093C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  sub_1B08A67A0();
  MEMORY[0x1E69E5928](v3);
  v4 = sub_1B0E45CD8();
  MEMORY[0x1E69E5920](v3);
  return v4 & 1;
}

uint64_t sub_1B08A09CC()
{
  v4 = [v0 mutableCopyOfChildren];
  if (v4)
  {
    MEMORY[0x1E69E5928](v4);
    objc_opt_self();
    v2 = swift_dynamicCastObjCClassUnconditional();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E34E0, &qword_1B0E9F580);
    MEMORY[0x1E69E5928](v2);
    sub_1B08A4FB8();
    sub_1B0E46B48();
    MEMORY[0x1E69E5920](v2);
    MEMORY[0x1E69E5920](v2);
    MEMORY[0x1E69E5920](v4);
    return v5;
  }

  else
  {
    sub_1B03EE50C();
    return sub_1B0E46A48();
  }
}

void *sub_1B08A0B18@<X0>(void *__src@<X0>, void *a2@<X8>)
{
  memcpy(__dst, __src, 0x29uLL);
  sub_1B08A0B7C(__dst, v4);
  return memcpy(a2, v4, 0x2DuLL);
}

void *sub_1B08A0B7C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  memset(__b, 0, sizeof(__b));
  LODWORD(v5) = *(a1 + 12);
  BYTE4(v5) = 0;
  sub_1B0A42B34(v5, 0, 1, *(a1 + 32), *(a1 + 40) & 1, 0, 1, v7);
  return memcpy(a2, v7, 0x2DuLL);
}

uint64_t sub_1B08A0C34(uint64_t a1, uint64_t a2)
{
  v47 = v64;
  v68 = 0;
  v67 = 0;
  v48 = 0;
  v63 = 0;
  v62 = 0u;
  v61 = 0u;
  v60 = 0;
  v59 = 0;
  v54 = 0;
  v74 = a1;
  v75 = a2;
  v49 = a1;
  v71 = a1;
  v72 = a2;
  v73 = BYTE4(a2);
  v69 = a1;
  LODWORD(v70) = a2;
  BYTE4(v70) = BYTE4(a2);
  v50 = MailboxPath.pathSeparator.getter(a1, v70);
  v51 = v2;
  if (v2)
  {
    v45 = v50;
    v46 = v51;
    v40 = v51;
    v52 = sub_1B0E447F8();
    v41 = v52;
    v42 = HIBYTE(v52);

    v43 = v52;
    v44 = HIBYTE(v52);
  }

  else
  {
    v43 = 0;
    v44 = 1;
  }

  v39 = v43;
  if (v44)
  {
    v19 = 0;
    v20 = 0;
    v21 = v48;
  }

  else
  {
    v38 = v39;
    v3 = v48;
    v34 = v39;
    v68 = v39;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

    v47[12] = v49;
    v35 = v12;
    MEMORY[0x1EEE9AC00](v12);
    v36 = v11;
    v11[16] = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E28E8, &qword_1B0E9E150);
    sub_1B0E45208();
    v37 = v3;
    v5 = v47;
    v31 = *v47;
    v32 = *(v47 + 1);
    v6 = v32;
    v33 = v47[4];
    v7 = v33;
    v8 = v65;
    *(v47 + 3) = v31;
    *(v5 + 4) = v6;
    v5[10] = v7;
    v66 = v8;
    if (v8)
    {

      v19 = 0;
      v20 = 0;
      v21 = v37;
    }

    else
    {
      v28 = v31;
      v29 = v32;
      v30 = v33;
      v61 = v31;
      v62 = v32;
      v63 = v33;
      v59 = sub_1B0E44838();
      v60 = v9;
      v56 = sub_1B0E46D78();
      v57 = v56;
      v58 = BYTE4(v56);
      for (i = v37; ; i = v15)
      {
        v23 = i;
        v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E28F0, &qword_1B0E9E158);
        sub_1B08A5068();
        v55 = sub_1B0E46D68();
        v25 = v55;
        v26 = v55;
        if (BYTE4(v55) == 1)
        {
          break;
        }

        v22 = v25;
        v12[3] = v25;
        v15 = v23;
        v54 = v25;
        v13 = &v53;
        v14 = sub_1B0E44BF8();
        sub_1B0E44C58();
        v14(v13, 0);
      }

      if (v26)
      {
        sub_1B03B1198(&v59);

        v19 = 0;
        v20 = 0;
      }

      else
      {
        v17 = v59;
        v16 = v60;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v18 = v16;
        sub_1B03B1198(&v59);

        v19 = v17;
        v20 = v18;
      }

      v21 = v23;
    }
  }

  return v19;
}

uint64_t sub_1B08A10EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (a1)
  {
    if (a2)
    {
      v5 = a2 - a1;
    }

    else
    {
      __break(1u);
    }

    if (v5 < 0)
    {
      sub_1B0E466C8();
      __break(1u);
    }

    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2938, &qword_1B0E9EF50);
  sub_1B08A6608();
  sub_1B0E448D8();
  if (v18)
  {
    sub_1B08A6690();
    sub_1B0E45768();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2950, &unk_1B0E9EF58);
    sub_1B08A6718();
    result = sub_1B0E45798();
    *a4 = v13;
    *(a4 + 8) = v14;
    *(a4 + 16) = v15;
    *(a4 + 24) = v16;
    *(a4 + 32) = v17;
    *(a4 + 40) = 0;
  }

  else
  {
    result = sub_1B0E44A38();
    if (result < v6)
    {
      sub_1B08A6690();
      sub_1B0E45768();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2950, &unk_1B0E9EF58);
      sub_1B08A6718();
      result = sub_1B0E45798();
      *a4 = v8;
      *(a4 + 8) = v9;
      *(a4 + 16) = v10;
      *(a4 + 24) = v11;
      *(a4 + 32) = v12;
      *(a4 + 40) = 0;
    }

    else
    {
      *a4 = 0;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      *(a4 + 24) = 0;
      *(a4 + 32) = 0;
      *(a4 + 40) = 1;
    }
  }

  return result;
}

uint64_t sub_1B08A14C4(uint64_t a1, char *a2)
{
  result = sub_1B08A156C(*a2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for MailboxAttributes(0);
    sub_1B0694AF8();
    return sub_1B0E46F48();
  }

  return result;
}

uint64_t sub_1B08A156C(char a1)
{
  switch(a1)
  {
    case 0:
      return 2;
    case 1:
      return 4;
    case 2:
      return 8;
    case 3:
      return 2;
    case 4:
      return 1;
  }

  if (a1 != 5 && a1 != 6)
  {
    if (a1 == 7)
    {
      return 32;
    }

    else
    {
      return 64;
    }
  }

  return 0;
}

uint64_t sub_1B08A16C8(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v14 = a4;
  v13 = a1;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v11 = a2;
  v12 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2960, &unk_1B0E9EF68);
  v6 = sub_1B0E44F58();

  v10 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2830, &qword_1B0E9E0B0);
  sub_1B08A4110();
  v7 = sub_1B0E44FF8();
  sub_1B039E440(&v10);
  sub_1B039E440(&v11);
  return v7;
}

void sub_1B08A1838(const void *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, void *a4@<X8>)
{
  v17 = 0;
  v18 = 0;
  memcpy(__dst, a1, 0x42uLL);
  v26 = a1;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v24 = a2;
  v25 = a3;
  if (!a2)
  {
    goto LABEL_7;
  }

  v17 = a2;
  v18 = a3;
  v10 = __dst[0];
  v9 = __dst[1];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

  v11 = static MailboxName.== infix(_:_:)(v10, v9, a2, a3);

  if ((v11 & 1) == 0)
  {

LABEL_7:
    sub_1B03BB0B4(__dst, v21);
    v7 = __dst[0];
    v5 = __dst[1];
    v6 = BYTE4(__dst[1]);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v19 = v7;
    LODWORD(v20) = v5;
    BYTE4(v20) = v6;
    MailboxPath.displayStringComponents(omittingEmptySubsequences:)(0, v7, v20);
    v8 = v4;

    memcpy(v22, __dst, 0x42uLL);
    v22[9] = v8;
    memcpy(v23, v22, sizeof(v23));
    memcpy(a4, v23, 0x50uLL);
    goto LABEL_8;
  }

  memset(v16, 0, sizeof(v16));
  memcpy(a4, v16, 0x50uLL);

LABEL_8:
  sub_1B039E440(&v24);
}

BOOL sub_1B08A1A60(const void *a1, const void *a2)
{
  memcpy(__dst, a1, sizeof(__dst));
  v10 = a1;
  memcpy(v12, a2, sizeof(v12));
  v9 = a2;
  sub_1B08A6804(__dst, v8);
  v6 = sub_1B0E452A8();

  sub_1B08A6804(v12, v7);
  v5 = sub_1B0E452A8();

  return v6 < v5;
}

uint64_t sub_1B08A1B78@<X0>(void *__src@<X0>, void *a2@<X8>)
{
  memcpy(__dst, __src, sizeof(__dst));
  v6 = __src;
  sub_1B08A6804(__dst, v5);
  *a2 = __dst[9];
}

uint64_t sub_1B08A1BE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  memset(v49, 0, 13);
  v43 = 0;
  v57 = a1;
  v56 = a2;
  v53 = a3;
  v54 = a4;
  v55 = a5;
  v52 = a6 + 16;
  v51 = a7 + 16;
  result = sub_1B0E452A8();
  if (result > 1)
  {
    v25 = *a1;
    v23 = *(a1 + 8);
    v24 = *(a1 + 12);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v49[2] = v25;
    LODWORD(v50) = v23;
    BYTE4(v50) = v24;
    v27 = sub_1B08969A0(a3, a4, a5, v25, v50);
    v26 = v8;

    result = v27;
    if (v27)
    {

      v21 = v27;
      v22 = v26 | (BYTE4(v26) << 32);
    }

    else
    {
      v21 = 0;
      v22 = 0;
    }

    if (v21)
    {
      v18 = (v22 & 0xFFFFFFFFFFLL) >> 32;
      v49[0] = v21;
      LODWORD(v49[1]) = v22;
      BYTE4(v49[1]) = v18;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v47 = v21;
      v48 = v22;
      v9 = MailboxName.inbox.unsafeMutableAddressor();
      v19 = *v9;
      v20 = *(v9 + 2);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v45 = v19;
      v46 = v20;
      if ((v22 | (v22 << 32)) == (v20 | (v20 << 32)))
      {
        v17 = sub_1B04520BC(v47, v19);
      }

      else
      {
        v17 = 0;
      }

      sub_1B039E440(&v45);
      sub_1B039E440(&v47);
      if (v17)
      {
      }

      else
      {
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v44[4] = a2;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
        sub_1B03B11C4();
        sub_1B0E448B8();
        v44[0] = v44[5];
        v44[1] = v44[6];
        v44[2] = v44[7];
        v44[3] = v44[8];
        v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1FA8, &qword_1B0E9E160);
        v10 = sub_1B08A50F0();
        v16 = sub_1B039CA88(sub_1B08A227C, 0, v14, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], v10, MEMORY[0x1E69E7410], v15);
        sub_1B03FD360(v44);
        v43 = v16;
        swift_beginAccess();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        swift_endAccess();
        v42[10] = v16;
        sub_1B08A4220();
        v13 = sub_1B0E45528();

        if (v13)
        {
        }

        else
        {
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          sub_1B0E46A48();
          v12 = v11;
          *v11 = *RemoteMailbox.Attributes.hasChildren.unsafeMutableAddressor();
          v12[1] = *RemoteMailbox.Attributes.noSelect.unsafeMutableAddressor();
          sub_1B0394964();
          sub_1B08A5178();
          sub_1B0E46028();
          v59 = 0uLL;
          v60 = 0;
          v61 = 0;
          v62 = 0;
          v63 = 0;
          v64 = 1;
          v38 = v21;
          LODWORD(v39) = v22;
          BYTE4(v39) = v18;
          RemoteMailbox.init(path:attributes:specialUse:status:)(v21, v39, v40, 7, &v59, v58);
          memcpy(__dst, v58, sizeof(__dst));
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v37 = v16;
          swift_beginAccess();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2850, &qword_1B0E9E0E0);
          sub_1B0E454D8();
          swift_endAccess();

          sub_1B03BB0B4(v58, v36);
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          memcpy(v42, __dst, 0x42uLL);
          v42[9] = v16;
          memcpy(v35, v42, sizeof(v35));
          swift_beginAccess();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2830, &qword_1B0E9E0B0);
          sub_1B0E452E8();
          swift_endAccess();
          sub_1B08A1BE0(v58, v16, a3, a4, a5, a6, a7);
          sub_1B039E440(v58);
        }
      }
    }
  }

  return result;
}

void sub_1B08A227C(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v4 = a1[1];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *a2 = v2;
  a2[1] = v4;
}

uint64_t sub_1B08A22D4(const void *a1, const void *a2)
{
  memcpy(__dst, a1, sizeof(__dst));
  v15 = a1;
  memcpy(v17, a2, sizeof(v17));
  v14 = a2;
  sub_1B08A6804(__dst, v13);
  v9 = sub_1B0E452A8();

  sub_1B08A6804(v17, v12);
  v8 = sub_1B0E452A8();

  if (v9 >= v8)
  {
    sub_1B08A6804(__dst, v11);
    v4 = sub_1B0E452A8();

    sub_1B08A6804(v17, v10);
    v3 = sub_1B0E452A8();

    if (v4 == v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
      sub_1B06E3764();
      v5 = sub_1B0E45048();
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 1;
  }

  return v5 & 1;
}

uint64_t sub_1B08A24FC@<X0>(void *__src@<X0>, void *a2@<X8>)
{
  memcpy(__dst, __src, sizeof(__dst));
  v6 = __src;
  sub_1B08A6804(__dst, v5);
  memcpy(a2, __dst, 0x42uLL);
}

uint64_t sub_1B08A257C(uint64_t a1, uint64_t a2)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E18F0, qword_1B0E99F10);
  sub_1B0E454D8();
}

uint64_t sub_1B08A2618(uint64_t a1, void *a2)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3520, &unk_1B0E9E030);
  sub_1B0E454D8();
}

void sub_1B08A2968()
{
  v12 = v0[2];
  v7 = v0[3];
  v8 = (*(*(v12 - 8) + 80) + 40) & ~*(*(v12 - 8) + 80);
  v6 = v8 + *(*(v12 - 8) + 64);
  v1 = _s18MailboxPersistenceVMa(0);
  v9 = (v6 + *(*(v1 - 8) + 80)) & ~*(*(v1 - 8) + 80);
  v10 = (v9 + *(*(v1 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 39) & 0xFFFFFFFFFFFFFFF8;
  v2 = _s6LoggerVMa(0);
  v3 = (v11 + 24 + *(*(v2 - 8) + 80)) & ~*(*(v2 - 8) + 80);
  v4 = (v3 + *(*(v2 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  sub_1B0879FCC(v0[4], v0 + v8, v0 + v9, *(v0 + v10), *(v0 + v10 + 8), *(v0 + v10 + 16), *(v0 + v10 + 24), *(v0 + v11), *(v0 + v11 + 8), *(v0 + v11 + 16), v0 + v3, *(v0 + v4), *(v0 + v5), *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), v12, v7);
}

uint64_t sub_1B08A2BE8()
{
  v1 = _s18MailboxPersistenceVMa(0);
  v7 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v6 = (v7 + *(*(v1 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v2 = _s6LoggerVMa(0);
  v3 = (((v6 + 31) & 0xFFFFFFFFFFFFFFF8) + 8 + *(*(v2 - 8) + 80)) & ~*(*(v2 - 8) + 80);
  v4 = (v3 + *(*(v2 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1B087C840(*(v0 + 16), *(v0 + 24), v0 + v7, *(v0 + v6), *(v0 + v6 + 8), *(v0 + v6 + 16), *(v0 + ((v6 + 31) & 0xFFFFFFFFFFFFFFF8)), v0 + v3, *(v0 + v4), *(v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((((v4 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((((v4 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t block_copy_helper_109(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

unint64_t sub_1B08A2E10()
{
  v2 = qword_1EB6DAFE0;
  if (!qword_1EB6DAFE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E27B8, &qword_1B0EA2020);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DAFE0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B08A2E98()
{
  v1 = _s18MailboxPersistenceVMa(0);
  v7 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v6 = (v7 + *(*(v1 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v2 = _s6LoggerVMa(0);
  v3 = (((v6 + 31) & 0xFFFFFFFFFFFFFFF8) + 8 + *(*(v2 - 8) + 80)) & ~*(*(v2 - 8) + 80);
  v4 = (v3 + *(*(v2 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1B0880A00(*(v0 + 16), *(v0 + 24), v0 + v7, *(v0 + v6), *(v0 + v6 + 8), *(v0 + v6 + 16), *(v0 + ((v6 + 31) & 0xFFFFFFFFFFFFFFF8)), v0 + v3, *(v0 + v4), *(v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((((v4 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((((v4 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t block_copy_helper_310(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

unint64_t sub_1B08A30BC()
{
  v2 = qword_1EB6DB848;
  if (!qword_1EB6DB848)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E27C0, &qword_1B0E9E040);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB848);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B08A3144()
{
  v2 = qword_1EB6DB858;
  if (!qword_1EB6DB858)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E27C8, &qword_1B0E9E048);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB858);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B08A31CC()
{
  v2 = qword_1EB6DB850;
  if (!qword_1EB6DB850)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E27D0, &qword_1B0E9E050);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB850);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B08A3280()
{
  v2 = qword_1EB6E27F0;
  if (!qword_1EB6E27F0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E27F0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B08A32FC()
{
  v2 = qword_1EB6E27F8;
  if (!qword_1EB6E27F8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E27F8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B08A3474()
{
  v2 = qword_1EB6DAFE8;
  if (!qword_1EB6DAFE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2800, &qword_1B0E9E080);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DAFE8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B08A34FC()
{
  v2 = qword_1EB6DE978;
  if (!qword_1EB6DE978)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DE978);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B08A3574()
{
  v2 = qword_1EB6DAB78;
  if (!qword_1EB6DAB78)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB6DAB78);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t type metadata accessor for MailboxUpdateTree(uint64_t a1)
{
  v2 = qword_1EB6DBF38;
  if (!qword_1EB6DBF38)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

__n128 sub_1B08A364C(void *a1, void *a2)
{
  *a2 = *a1;
  updated = type metadata accessor for MailboxUpdateTree(0);
  v9 = updated[5];
  v2 = sub_1B0E42E68();
  (*(*(v2 - 8) + 32))();
  v3 = _s18MailboxPersistenceVMa(0);
  *(a2 + v9 + *(v3 + 20)) = *(a1 + v9 + *(v3 + 20));
  memcpy(a2 + v9 + *(v3 + 24), a1 + v9 + *(v3 + 24), 0x28uLL);
  v4 = updated[6];
  v5 = a2 + v4;
  *v5 = *(a1 + v4);
  *(v5 + 2) = *(a1 + v4 + 16);
  *(a2 + updated[7]) = *(a1 + updated[7]);
  v10 = updated[8];
  v6 = sub_1B0E439A8();
  (*(*(v6 - 8) + 32))();
  v7 = _s6LoggerVMa(0);
  *(a2 + v10 + *(v7 + 20)) = *(a1 + v10 + *(v7 + 20));
  *(a2 + updated[9]) = *(a1 + updated[9]);
  *(a2 + updated[10]) = *(a1 + updated[10]);
  result = *(a1 + updated[11]);
  *(a2 + updated[11]) = result;
  *(a2 + updated[12]) = *(a1 + updated[12]);
  *(a2 + updated[13]) = *(a1 + updated[13]);
  return result;
}

unint64_t sub_1B08A38A4()
{
  v2 = qword_1EB6DB3E8;
  if (!qword_1EB6DB3E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2810, &qword_1B0E9E090);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB3E8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B08A3934()
{
  v2 = qword_1EB6DB3E0;
  if (!qword_1EB6DB3E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2810, &qword_1B0E9E090);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB3E0);
    return WitnessTable;
  }

  return v2;
}

void *sub_1B08A39BC(void *a1, void *a2)
{
  v25 = *a1;
  MEMORY[0x1E69E5928](*a1);
  *a2 = v25;
  updated = type metadata accessor for MailboxUpdateTree(0);
  v26 = updated[5];
  v2 = sub_1B0E42E68();
  v30 = a2 + v26;
  (*(*(v2 - 8) + 16))();
  v31 = _s18MailboxPersistenceVMa(0);
  v28 = *(v31 + 20);
  v29 = *(a1 + v26 + v28);
  MEMORY[0x1E69E5928](v29);
  *&v30[v28] = v29;
  v3 = *(v31 + 24);
  v35 = (a1 + v26 + v3);
  v37 = (a2 + v26 + v3);
  *&v30[v3] = *v35;
  v32 = v35[1];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v37[1] = v32;
  v33 = v35[2];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v37[2] = v33;
  v34 = v35[3];

  v37[3] = v34;
  v38 = v35[4];

  v37[4] = v38;
  v40 = updated[6];
  if (*(a1 + v40))
  {
    v22 = *(a1 + v40);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v23 = (a2 + v40);
    *v23 = v22;
    v23[1] = *(a1 + v40 + 8);
    v24 = *(a1 + v40 + 16);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v23[2] = v24;
  }

  else
  {
    v4 = a2 + v40;
    *v4 = *(a1 + v40);
    *(v4 + 2) = *(a1 + v40 + 16);
  }

  v12 = updated[7];
  v13 = *(a1 + v12);

  *(a2 + v12) = v13;
  v15 = a2 + updated[8];
  v14 = a1 + updated[8];
  v5 = sub_1B0E439A8();
  (*(*(v5 - 8) + 16))(v15, v14);
  v6 = _s6LoggerVMa(0);
  *&v15[*(v6 + 20)] = *&v14[*(v6 + 20)];
  v16 = updated[9];
  v17 = *(a1 + v16);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(a2 + v16) = v17;
  v18 = updated[10];
  v19 = *(a1 + v18);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(a2 + v18) = v19;
  v20 = (a2 + updated[11]);
  v21 = (a1 + updated[11]);
  if (*v21)
  {
    v10 = *v21;
    MEMORY[0x1E69E5928](*v21);
    *v20 = v10;
    v11 = v21[1];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v20[1] = v11;
  }

  else
  {
    *v20 = *v21;
  }

  v8 = updated[12];
  v9 = *(a1 + v8);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  result = a2;
  *(a2 + v8) = v9;
  *(a2 + updated[13]) = *(a1 + updated[13]);
  return result;
}

void *sub_1B08A3DE8(void *a1)
{
  MEMORY[0x1E69E5920](*a1);
  updated = type metadata accessor for MailboxUpdateTree(0);
  v6 = updated[5];
  v1 = sub_1B0E42E68();
  (*(*(v1 - 8) + 8))();
  v7 = _s18MailboxPersistenceVMa(0);
  MEMORY[0x1E69E5920](*(a1 + v6 + *(v7 + 20)));

  if (*(a1 + updated[6]))
  {
  }

  v4 = a1 + updated[8];
  v2 = sub_1B0E439A8();
  (*(*(v2 - 8) + 8))(v4);

  v5 = (a1 + updated[11]);
  if (*v5)
  {
    MEMORY[0x1E69E5920](*v5);
  }

  return a1;
}

unint64_t sub_1B08A4004()
{
  v2 = qword_1EB6DB7F8;
  if (!qword_1EB6DB7F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2820, &qword_1B0E9E0A0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB7F8);
    return WitnessTable;
  }

  return v2;
}

void *sub_1B08A40BC(void *a1)
{
  if (*a1)
  {
    MEMORY[0x1E69E5920](*a1);
  }

  return a1;
}

unint64_t sub_1B08A4110()
{
  v2 = qword_1EB6DB3D8;
  if (!qword_1EB6DB3D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2830, &qword_1B0E9E0B0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB3D8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B08A4198()
{
  v2 = qword_1EB6DA528;
  if (!qword_1EB6DA528)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2838, &unk_1B0E9E0B8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA528);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B08A4220()
{
  v2 = qword_1EB6DB078;
  if (!qword_1EB6DB078)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB078);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B08A42B4()
{
  v2 = qword_1EB6DA498;
  if (!qword_1EB6DA498)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2840, &qword_1B0E9E0C8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA498);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B08A433C()
{
  v2 = qword_1EB6DB3D0;
  if (!qword_1EB6DB3D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2830, &qword_1B0E9E0B0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB3D0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B08A43C4()
{
  v2 = qword_1EB6DADE8;
  if (!qword_1EB6DADE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E21D0, &unk_1B0EA2E70);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DADE8);
    return WitnessTable;
  }

  return v2;
}

void sub_1B08A444C()
{
}

double sub_1B08A44D0(uint64_t a1)
{
  if (a1)
  {
    MEMORY[0x1E69E5928](a1);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  }

  return result;
}

uint64_t sub_1B08A4518(uint64_t result)
{
  if (result)
  {
    MEMORY[0x1E69E5920](result);
  }

  return result;
}

unint64_t sub_1B08A4560()
{
  v2 = qword_1EB6DB698;
  if (!qword_1EB6DB698)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB6E34B0, &unk_1B0E9E0F0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB698);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B08A45E8()
{
  v2 = qword_1EB6E2860;
  if (!qword_1EB6E2860)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E2860);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B08A4664()
{
  v2 = qword_1EB6E2868;
  if (!qword_1EB6E2868)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E2868);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B08A4714()
{
  v2 = qword_1EB6DB250;
  if (!qword_1EB6DB250)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2870, &qword_1B0E9E100);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB250);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B08A479C()
{
  v2 = qword_1EB6E2878;
  if (!qword_1EB6E2878)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E2878);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B08A4818()
{
  v2 = qword_1EB6E2880;
  if (!qword_1EB6E2880)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E2880);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B08A4894()
{
  v2 = qword_1EB6DB248;
  if (!qword_1EB6DB248)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2870, &qword_1B0E9E100);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB248);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B08A491C()
{
  v2 = qword_1EB6E2898;
  if (!qword_1EB6E2898)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E2898);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B08A49DC()
{
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  v1 = sub_1B08A4A30();

  return sub_1B03F7B1C(v4, v3, &type metadata for OpaqueMailboxID, v1);
}

unint64_t sub_1B08A4A30()
{
  v2 = qword_1EB6DCBF8;
  if (!qword_1EB6DCBF8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DCBF8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B08A4AE0()
{
  v2 = qword_1EB6DADF8;
  if (!qword_1EB6DADF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E21D0, &unk_1B0EA2E70);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DADF8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B08A4B68()
{
  v2 = qword_1EB6E28B0;
  if (!qword_1EB6E28B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E28A8, &unk_1B0E9E120);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E28B0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B08A4BF0()
{
  v2 = qword_1EB6E28B8;
  if (!qword_1EB6E28B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E28A8, &unk_1B0E9E120);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E28B8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B08A4CCC(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *a2 = v3;
  *(a2 + 8) = *(a1 + 2);
  *(a2 + 12) = *(a1 + 12);
  *(a2 + 16) = a1[2];
  v4 = a1[3];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(a2 + 24) = v4;
  *(a2 + 32) = a1[4];
  v6 = a1[5];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  result = a2;
  *(a2 + 40) = v6;
  *(a2 + 48) = *(a1 + 48);
  return result;
}

unint64_t sub_1B08A4DB4()
{
  v2 = qword_1EB6E28C8;
  if (!qword_1EB6E28C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E28C0, &qword_1B0E9E130);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E28C8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B08A4E68()
{
  v2 = qword_1EB6DB258;
  if (!qword_1EB6DB258)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E28D0, &qword_1B0E9E138);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB258);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B08A4EF8()
{
  v2 = qword_1EB6DA3E8;
  if (!qword_1EB6DA3E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E28D8, &qword_1B0E9E140);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA3E8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B08A4FB8()
{
  v2 = qword_1EB6DB010;
  if (!qword_1EB6DB010)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB6E34E0, &qword_1B0E9F580);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB010);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B08A5068()
{
  v2 = qword_1EB6E28F8;
  if (!qword_1EB6E28F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E28F0, &qword_1B0E9E158);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E28F8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B08A50F0()
{
  v2 = qword_1EB6E2900;
  if (!qword_1EB6E2900)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E1FA8, &qword_1B0E9E160);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E2900);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B08A5178()
{
  v2 = qword_1EB6E2908;
  if (!qword_1EB6E2908)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E2908);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B08A51F0()
{
  v2 = qword_1EB6E2910;
  if (!qword_1EB6E2910)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E2910);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B08A530C(uint64_t a1)
{
  v11 = sub_1B07BC130();
  if (v1 <= 0x3F)
  {
    v11 = _s18MailboxPersistenceVMa(319);
    if (v2 <= 0x3F)
    {
      v11 = sub_1B08A5558(319);
      if (v3 <= 0x3F)
      {
        v11 = type metadata accessor for Cache();
        if (v4 <= 0x3F)
        {
          v11 = _s6LoggerVMa(319);
          if (v5 <= 0x3F)
          {
            v11 = sub_1B08A55EC(319);
            if (v6 <= 0x3F)
            {
              v11 = sub_1B08A5694(319);
              if (v7 <= 0x3F)
              {
                v11 = sub_1B08A572C(319);
                if (v8 <= 0x3F)
                {
                  v11 = sub_1B08A57C4(319);
                  if (v9 <= 0x3F)
                  {
                    swift_cvw_initStructMetadataWithLayoutString();
                    return 0;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return v11;
}

unint64_t sub_1B08A5558(uint64_t a1)
{
  v5 = qword_1EB6DD0B0;
  if (!qword_1EB6DD0B0)
  {
    v4 = sub_1B0E45D88();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &qword_1EB6DD0B0);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_1B08A55EC(uint64_t a1)
{
  v5 = qword_1EB6DB7D0;
  if (!qword_1EB6DB7D0)
  {
    sub_1B0451F2C();
    v4 = sub_1B0E44708();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &qword_1EB6DB7D0);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_1B08A5694(uint64_t a1)
{
  v5 = qword_1EB6DB260;
  if (!qword_1EB6DB260)
  {
    v4 = sub_1B0E45358();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &qword_1EB6DB260);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_1B08A572C(uint64_t a1)
{
  v5 = qword_1EB6DBF48;
  if (!qword_1EB6DBF48)
  {
    v4 = sub_1B0E45D88();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &qword_1EB6DBF48);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_1B08A57C4(uint64_t a1)
{
  v5 = qword_1EB6DB680;
  if (!qword_1EB6DB680)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2828, &qword_1B0E9E0A8);
    v4 = sub_1B0E45358();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &qword_1EB6DB680);
      return v2;
    }
  }

  return v5;
}

__n128 __swift_memcpy21_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *a1 = *a2;
  *(a1 + 13) = *(a2 + 13);
  return result;
}

uint64_t sub_1B08A58A4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 21))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (!HIDWORD(*a1))
      {
        v3 = *a1;
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1B08A59BC(uint64_t result, int a2, int a3)
{
  v3 = (result + 21);
  if (a2 < 0)
  {
    *(result + 20) = 0;
    *(result + 16) = 0;
    *(result + 8) = 0;
    *result = a2 + 0x80000000;
    if (a3 < 0)
    {
      *v3 = 1;
    }
  }

  else
  {
    if (a3 < 0)
    {
      *v3 = 0;
    }

    if (a2)
    {
      *result = (a2 - 1);
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_7Message17MailboxUpdateTree33_9756C92D0D431C9DA10B9422B1759BA4LLV10FindResultO(uint64_t a1)
{
  if (((*(a1 + 72) >> 6) & 3) == 3)
  {
    return *a1 + 3;
  }

  else
  {
    return (*(a1 + 72) >> 6) & 3;
  }
}

uint64_t sub_1B08A5BD8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7D && *(a1 + 73))
    {
      v4 = *a1 + 124;
    }

    else
    {
      v2 = ~((*(a1 + 72) >> 6) & 0xFFFFFE03 | (4 * (*(a1 + 72) >> 1))) & 0x7F;
      if (v2 >= 0x7C)
      {
        v2 = -1;
      }

      v4 = v2;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1B08A5CE0(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = (result + 73);
  if (a2 > 0x7C)
  {
    *(result + 56) = 0;
    *(result + 48) = 0;
    *(result + 40) = 0;
    *(result + 32) = 0;
    *(result + 24) = 0;
    *(result + 16) = 0;
    *(result + 8) = 0;
    *result = a2 - 125;
    *(result + 64) = 0;
    *(result + 72) = 0;
    if (a3 >= 0x7D)
    {
      *v3 = 1;
    }
  }

  else
  {
    if (a3 >= 0x7D)
    {
      *v3 = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 24) = 0;
      *(result + 32) = 0;
      *(result + 40) = 0;
      *(result + 48) = 0;
      *(result + 56) = 0;
      *(result + 64) = 0;
      *(result + 72) = ((-a2 & 0x7C) >> 1) - (a2 << 6);
    }
  }

  return result;
}

uint64_t sub_1B08A5EF0(uint64_t result)
{
  v1 = *(result + 8);
  v2 = *(result + 16);
  v3 = *(result + 24);
  v4 = *(result + 32);
  v5 = *(result + 40);
  v6 = *(result + 48);
  v7 = *(result + 56);
  v8 = *(result + 64);
  v9 = *(result + 72) & 0x3F;
  *result = *result;
  *(result + 8) = v1;
  *(result + 16) = v2;
  *(result + 24) = v3;
  *(result + 32) = v4;
  *(result + 40) = v5;
  *(result + 48) = v6;
  *(result + 56) = v7;
  *(result + 64) = v8;
  *(result + 72) = v9;
  return result;
}

uint64_t *sub_1B08A5F48(uint64_t *result, unsigned int a2)
{
  v11 = result;
  if (a2 < 3)
  {
    result = *result;
    v2 = v11[1];
    v3 = v11[2];
    v4 = v11[3];
    v5 = v11[4];
    v6 = v11[5];
    v7 = v11[6];
    v8 = v11[7];
    v9 = v11[8];
    v10 = ((a2 & 3) << 6) | v11[9] & 1;
    *v11 = *v11;
    v11[1] = v2;
    v11[2] = v3;
    v11[3] = v4;
    v11[4] = v5;
    v11[5] = v6;
    v11[6] = v7;
    v11[7] = v8;
    v11[8] = v9;
    *(v11 + 72) = v10;
  }

  else
  {
    *result = a2 - 3;
    result[1] = 0;
    result[2] = 0;
    result[3] = 0;
    result[4] = 0;
    result[5] = 0;
    result[6] = 0;
    result[7] = 0;
    result[8] = 0;
    *(result + 72) = -64;
  }

  return result;
}

uint64_t sub_1B08A605C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 49))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (!HIDWORD(*a1))
      {
        v3 = *a1;
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1B08A6174(uint64_t result, int a2, int a3)
{
  v3 = (result + 49);
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 32) = 0;
    *(result + 24) = 0;
    *(result + 16) = 0;
    *(result + 8) = 0;
    *result = a2 + 0x80000000;
    *(result + 48) = 0;
    if (a3 < 0)
    {
      *v3 = 1;
    }
  }

  else
  {
    if (a3 < 0)
    {
      *v3 = 0;
    }

    if (a2)
    {
      *result = (a2 - 1);
    }
  }

  return result;
}

unint64_t sub_1B08A63E8()
{
  v2 = qword_1EB6E2918;
  if (!qword_1EB6E2918)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E2918);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B08A647C()
{
  v2 = qword_1EB6E2920;
  if (!qword_1EB6E2920)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E2920);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B08A6510()
{
  v2 = qword_1EB6E2928;
  if (!qword_1EB6E2928)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E2928);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B08A658C()
{
  v2 = qword_1EB6E2930;
  if (!qword_1EB6E2930)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E2930);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B08A6608()
{
  v2 = qword_1EB6E2940;
  if (!qword_1EB6E2940)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2938, &qword_1B0E9EF50);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E2940);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B08A6690()
{
  v2 = qword_1EB6E2948;
  if (!qword_1EB6E2948)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2938, &qword_1B0E9EF50);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E2948);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B08A6718()
{
  v2 = qword_1EB6E2958;
  if (!qword_1EB6E2958)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2950, &unk_1B0E9EF58);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E2958);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B08A67A0()
{
  v2 = qword_1EB6DA5A0;
  if (!qword_1EB6DA5A0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB6DA5A0);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_1B08A6804(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *a2 = v3;
  *(a2 + 8) = *(a1 + 2);
  *(a2 + 12) = *(a1 + 12);
  *(a2 + 14) = *(a1 + 7);
  *(a2 + 16) = *(a1 + 16);
  memcpy((a2 + 24), a1 + 3, 0x2AuLL);
  v6 = a1[9];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  result = a2;
  *(a2 + 72) = v6;
  return result;
}

unint64_t sub_1B08A6950()
{
  v2 = qword_1EB6E2970;
  if (!qword_1EB6E2970)
  {
    type metadata accessor for EDMailboxActionType(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E2970);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B08A69D0(uint64_t a1, uint64_t a2)
{
  result = a2;
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  return result;
}

uint64_t block_copy_helper_1770(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t sub_1B08A6A60(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  result = a2;
  *a2 = v4;
  *(a2 + 8) = *(a1 + 2);
  return result;
}

uint64_t block_copy_helper_1776(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_1782(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t sub_1B08A6BE0(uint64_t a1, unint64_t a2, void *a3)
{
  v71 = a1;
  v72 = a2;
  v78 = a3;
  v57 = 0;
  v51 = sub_1B08A94E4;
  v52 = sub_1B08A94FC;
  v53 = sub_1B070B324;
  v54 = sub_1B0398F5C;
  v55 = sub_1B0398F5C;
  v56 = sub_1B070B4B4;
  ObjectType = swift_getObjectType();
  v94 = 0;
  v95 = 0;
  v93 = 0;
  v92 = 0;
  v59 = 0;
  v65 = 0;
  v60 = sub_1B0E44238();
  v61 = *(v60 - 8);
  v62 = v60 - 8;
  v63 = (*(v61 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v64 = &v26 - v63;
  v66 = sub_1B0E44288();
  v67 = *(v66 - 8);
  v68 = v66 - 8;
  v69 = (*(v67 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v65);
  v70 = &v26 - v69;
  v73 = sub_1B0E439A8();
  v74 = *(v73 - 8);
  v75 = v73 - 8;
  v76 = (*(v74 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v78);
  v77 = &v26 - v76;
  v94 = v4;
  v95 = v5;
  v93 = v6;
  v92 = v3;
  MEMORY[0x1E69E5928](v6);
  v79 = [v78 isServerSearchResult];
  MEMORY[0x1E69E5920](v78);
  if (v79)
  {
    sub_1B08A6B88();
    MEMORY[0x1E69E5928](v78);
    v39 = 7;
    v40 = swift_allocObject();
    *(v40 + 16) = v78;
    v48 = sub_1B0E43988();
    v49 = sub_1B0E45908();
    v37 = 17;
    v42 = swift_allocObject();
    *(v42 + 16) = 64;
    v43 = swift_allocObject();
    *(v43 + 16) = 8;
    v38 = 32;
    v7 = swift_allocObject();
    v8 = v40;
    v41 = v7;
    *(v7 + 16) = v52;
    *(v7 + 24) = v8;
    v9 = swift_allocObject();
    v10 = v41;
    v45 = v9;
    *(v9 + 16) = v53;
    *(v9 + 24) = v10;
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v44 = sub_1B0E46A48();
    v46 = v11;

    v12 = v42;
    v13 = v46;
    *v46 = v54;
    v13[1] = v12;

    v14 = v43;
    v15 = v46;
    v46[2] = v55;
    v15[3] = v14;

    v16 = v45;
    v17 = v46;
    v46[4] = v56;
    v17[5] = v16;
    sub_1B0394964();

    if (os_log_type_enabled(v48, v49))
    {
      v18 = v59;
      v30 = sub_1B0E45D78();
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v31 = sub_1B03949A8(1, v29, v29);
      v32 = sub_1B03949A8(0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v33 = &v84;
      v84 = v30;
      v34 = &v83;
      v83 = v31;
      v35 = &v82;
      v82 = v32;
      sub_1B0394A48(2, &v84);
      sub_1B0394A48(1, v33);
      v80 = v54;
      v81 = v42;
      sub_1B03949FC(&v80, v33, v34, v35);
      v36 = v18;
      if (v18)
      {

        __break(1u);
      }

      else
      {
        v80 = v55;
        v81 = v43;
        sub_1B03949FC(&v80, &v84, &v83, &v82);
        v28 = 0;
        v80 = v56;
        v81 = v45;
        sub_1B03949FC(&v80, &v84, &v83, &v82);
        _os_log_impl(&dword_1B0389000, v48, v49, "Not indexing %@ because it's a server-side search result", v30, 0xCu);
        sub_1B03998A8(v31, 1, v29);
        sub_1B03998A8(v32, 0, MEMORY[0x1E69E7CA0] + 8);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v48);
    return (*(v74 + 8))(v77, v73);
  }

  else
  {
    v27 = [v50 indexingQueue];
    sub_1B03B2000(v71, v72);
    MEMORY[0x1E69E5928](v78);
    MEMORY[0x1E69E5928](v50);
    v20 = swift_allocObject();
    v21 = v72;
    v22 = v78;
    v23 = v50;
    v24 = ObjectType;
    v25 = v51;
    v20[2] = v71;
    v20[3] = v21;
    v20[4] = v22;
    v20[5] = v23;
    v20[6] = v24;
    v90 = v25;
    v91 = v20;
    aBlock = MEMORY[0x1E69E9820];
    v86 = 1107296256;
    v87 = 0;
    v88 = sub_1B038C908;
    v89 = &block_descriptor_8;
    v26 = _Block_copy(&aBlock);
    sub_1B039B81C();
    sub_1B039B77C();
    MEMORY[0x1B2727B00](0, v70, v64, v26);
    (*(v61 + 8))(v64, v60);
    (*(v67 + 8))(v70, v66);
    _Block_release(v26);

    return MEMORY[0x1E69E5920](v27);
  }
}

id sub_1B08A75F4(void *a1)
{
  v1 = [a1 persistedMessageID];

  return v1;
}

uint64_t sub_1B08A7628(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v225 = a1;
  v226 = a2;
  v217 = a3;
  v218 = a4;
  v174 = a5;
  v175 = sub_1B08A94FC;
  v176 = sub_1B070B324;
  v177 = sub_1B08A9978;
  v178 = sub_1B03B0DF8;
  v179 = sub_1B0398F5C;
  v180 = sub_1B0398F5C;
  v181 = sub_1B070B4B4;
  v182 = sub_1B0398F5C;
  v183 = sub_1B0398F5C;
  v184 = sub_1B0399260;
  v185 = sub_1B08A94FC;
  v186 = sub_1B070B324;
  v187 = sub_1B08A9978;
  v188 = sub_1B03B0DF8;
  v189 = sub_1B08AA104;
  v190 = sub_1B03B0DF8;
  v191 = sub_1B0398F5C;
  v192 = sub_1B0398F5C;
  v193 = sub_1B070B4B4;
  v194 = sub_1B0398F5C;
  v195 = sub_1B0398F5C;
  v196 = sub_1B0399260;
  v197 = sub_1B0398F5C;
  v198 = sub_1B0398F5C;
  v199 = sub_1B0399260;
  v250 = 0;
  v249 = 0;
  v247 = 0;
  v248 = 0;
  v246 = 0;
  v245 = 0;
  v200 = 0;
  v239 = 0;
  v227 = 0;
  v201 = sub_1B0E439A8();
  v202 = *(v201 - 8);
  v203 = v201 - 8;
  v204 = (*(v202 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v205 = v92 - v204;
  v206 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v207 = v92 - v206;
  v208 = sub_1B0E43428();
  v209 = *(v208 - 8);
  v210 = v208 - 8;
  v211 = (*(v209 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v227);
  v212 = v92 - v211;
  v213 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v214 = v92 - v213;
  v250 = v92 - v213;
  v10 = type metadata accessor for Message(v9);
  v215 = (*(*(v10 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10);
  v229 = (v92 - v215);
  v216 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2980, &qword_1B0EDF380) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v227);
  v232 = v92 - v216;
  v233 = type metadata accessor for IndexableMessageInfo(v11);
  v230 = *(v233 - 8);
  v231 = v233 - 8;
  v219 = v230;
  v220 = *(v230 + 64);
  v221 = (v220 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v225);
  v222 = v92 - v221;
  v223 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v13);
  v224 = v92 - v223;
  v249 = v92 - v223;
  v247 = v14;
  v248 = v15;
  v246 = v16;
  v245 = v17;
  sub_1B03B2000(v14, v15);
  Message.init(_:)(v225, v226, v229);
  type metadata accessor for Cache();
  Cache.__allocating_init()();
  v228 = v18;
  v19 = sub_1B08A951C();
  IndexableMessageInfo.init(message:maximumTextCount:cache:)(v229, v19, v228, v232);
  if ((*(v230 + 48))(v232, 1, v233) == 1)
  {
    sub_1B08A972C(v232);
    sub_1B08A6B88();
    MEMORY[0x1E69E5928](v217);
    v107 = 7;
    v64 = swift_allocObject();
    v65 = v226;
    v66 = v64;
    v67 = v225;
    v102 = v66;
    *(v66 + 16) = v217;
    sub_1B03B2000(v67, v65);
    v106 = 32;
    v68 = swift_allocObject();
    v69 = v226;
    v108 = v68;
    *(v68 + 16) = v225;
    *(v68 + 24) = v69;
    sub_1B07575C4();

    v119 = sub_1B0E43988();
    v120 = sub_1B0E458E8();
    v104 = 17;
    v110 = swift_allocObject();
    *(v110 + 16) = 64;
    v111 = swift_allocObject();
    v105 = 8;
    *(v111 + 16) = 8;
    v70 = swift_allocObject();
    v71 = v102;
    v103 = v70;
    *(v70 + 16) = v175;
    *(v70 + 24) = v71;
    v72 = swift_allocObject();
    v73 = v103;
    v112 = v72;
    *(v72 + 16) = v176;
    *(v72 + 24) = v73;
    v113 = swift_allocObject();
    *(v113 + 16) = 0;
    v114 = swift_allocObject();
    *(v114 + 16) = v105;
    v74 = swift_allocObject();
    v75 = v108;
    v109 = v74;
    *(v74 + 16) = v177;
    *(v74 + 24) = v75;
    v76 = swift_allocObject();
    v77 = v109;
    v116 = v76;
    *(v76 + 16) = v178;
    *(v76 + 24) = v77;
    v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v115 = sub_1B0E46A48();
    v117 = v78;

    v79 = v110;
    v80 = v117;
    *v117 = v179;
    v80[1] = v79;

    v81 = v111;
    v82 = v117;
    v117[2] = v180;
    v82[3] = v81;

    v83 = v112;
    v84 = v117;
    v117[4] = v181;
    v84[5] = v83;

    v85 = v113;
    v86 = v117;
    v117[6] = v182;
    v86[7] = v85;

    v87 = v114;
    v88 = v117;
    v117[8] = v183;
    v88[9] = v87;

    v89 = v116;
    v90 = v117;
    v117[10] = v184;
    v90[11] = v89;
    sub_1B0394964();

    if (os_log_type_enabled(v119, v120))
    {
      v91 = v200;
      v94 = sub_1B0E45D78();
      v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v95 = sub_1B03949A8(1, v93, v93);
      v96 = sub_1B03949A8(0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v98 = &v244;
      v244 = v94;
      v99 = &v243;
      v243 = v95;
      v100 = &v242;
      v242 = v96;
      v97 = 2;
      sub_1B0394A48(2, &v244);
      sub_1B0394A48(v97, v98);
      v240 = v179;
      v241 = v110;
      sub_1B03949FC(&v240, v98, v99, v100);
      v101 = v91;
      if (v91)
      {

        __break(1u);
      }

      else
      {
        v240 = v180;
        v241 = v111;
        sub_1B03949FC(&v240, &v244, &v243, &v242);
        v92[4] = 0;
        v240 = v181;
        v241 = v112;
        sub_1B03949FC(&v240, &v244, &v243, &v242);
        v92[3] = 0;
        v240 = v182;
        v241 = v113;
        sub_1B03949FC(&v240, &v244, &v243, &v242);
        v92[2] = 0;
        v240 = v183;
        v241 = v114;
        sub_1B03949FC(&v240, &v244, &v243, &v242);
        v92[1] = 0;
        v240 = v184;
        v241 = v116;
        sub_1B03949FC(&v240, &v244, &v243, &v242);
        _os_log_impl(&dword_1B0389000, v119, v120, "Could not parse data for message %@, data: %{iec-bytes}ld", v94, 0x16u);
        sub_1B03998A8(v95, 1, v93);
        sub_1B03998A8(v96, 0, MEMORY[0x1E69E7CA0] + 8);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v119);
    return (*(v202 + 8))(v205, v201);
  }

  else
  {
    *&v20 = sub_1B08A9984(v232, v224).n128_u64[0];
    v147 = [v218 searchableIndex];
    v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E37E0, &unk_1B0E9EF88);
    v143 = sub_1B0E46A48();
    v142 = v21;
    MEMORY[0x1E69E5928](v217);
    *v142 = v217;
    sub_1B0394964();
    v145 = v22;
    v146 = sub_1B0E451A8();

    [v147 recordDataNeedsToBeDonatedForMessages_];
    MEMORY[0x1E69E5920](v146);
    MEMORY[0x1E69E5920](v147);
    sub_1B08A9C20(v224, v222);
    MEMORY[0x1E69E5928](v217);
    sub_1B0A24F1C(v222, v217, v214);
    sub_1B0E43458();
    MEMORY[0x1E69E5928](v217);
    (*(v209 + 16))(v212, v214, v208);
    MEMORY[0x1B2725070](v225, v226);
    v148 = sub_1B0E43448();
    v239 = v148;
    sub_1B08A6B88();
    MEMORY[0x1E69E5928](v217);
    v157 = 7;
    v23 = swift_allocObject();
    v24 = v226;
    v25 = v23;
    v26 = v225;
    v150 = v25;
    *(v25 + 16) = v217;
    sub_1B03B2000(v26, v24);
    v156 = 32;
    v27 = swift_allocObject();
    v28 = v226;
    v152 = v27;
    *(v27 + 16) = v225;
    *(v27 + 24) = v28;
    sub_1B07575C4();

    sub_1B08A9C20(v224, v222);
    v149 = (*(v219 + 80) + 16) & ~*(v219 + 80);
    v158 = swift_allocObject();
    sub_1B08A9984(v222, (v158 + v149));
    sub_1B07575C4();

    v172 = sub_1B0E43988();
    v173 = sub_1B0E45908();
    v154 = 17;
    v160 = swift_allocObject();
    *(v160 + 16) = 64;
    v161 = swift_allocObject();
    v155 = 8;
    *(v161 + 16) = 8;
    v29 = swift_allocObject();
    v30 = v150;
    v151 = v29;
    *(v29 + 16) = v185;
    *(v29 + 24) = v30;
    v31 = swift_allocObject();
    v32 = v151;
    v162 = v31;
    *(v31 + 16) = v186;
    *(v31 + 24) = v32;
    v163 = swift_allocObject();
    *(v163 + 16) = 0;
    v164 = swift_allocObject();
    *(v164 + 16) = v155;
    v33 = swift_allocObject();
    v34 = v152;
    v153 = v33;
    *(v33 + 16) = v187;
    *(v33 + 24) = v34;
    v35 = swift_allocObject();
    v36 = v153;
    v165 = v35;
    *(v35 + 16) = v188;
    *(v35 + 24) = v36;
    v166 = swift_allocObject();
    *(v166 + 16) = 0;
    v167 = swift_allocObject();
    *(v167 + 16) = v155;
    v37 = swift_allocObject();
    v38 = v158;
    v159 = v37;
    *(v37 + 16) = v189;
    *(v37 + 24) = v38;
    v39 = swift_allocObject();
    v40 = v159;
    v169 = v39;
    *(v39 + 16) = v190;
    *(v39 + 24) = v40;
    v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v168 = sub_1B0E46A48();
    v170 = v41;

    v42 = v160;
    v43 = v170;
    *v170 = v191;
    v43[1] = v42;

    v44 = v161;
    v45 = v170;
    v170[2] = v192;
    v45[3] = v44;

    v46 = v162;
    v47 = v170;
    v170[4] = v193;
    v47[5] = v46;

    v48 = v163;
    v49 = v170;
    v170[6] = v194;
    v49[7] = v48;

    v50 = v164;
    v51 = v170;
    v170[8] = v195;
    v51[9] = v50;

    v52 = v165;
    v53 = v170;
    v170[10] = v196;
    v53[11] = v52;

    v54 = v166;
    v55 = v170;
    v170[12] = v197;
    v55[13] = v54;

    v56 = v167;
    v57 = v170;
    v170[14] = v198;
    v57[15] = v56;

    v58 = v169;
    v59 = v170;
    v170[16] = v199;
    v59[17] = v58;
    sub_1B0394964();

    if (os_log_type_enabled(v172, v173))
    {
      v60 = v200;
      v135 = sub_1B0E45D78();
      v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v136 = sub_1B03949A8(1, v134, v134);
      v137 = sub_1B03949A8(0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v138 = &v238;
      v238 = v135;
      v139 = &v237;
      v237 = v136;
      v140 = &v236;
      v236 = v137;
      sub_1B0394A48(2, &v238);
      sub_1B0394A48(3, v138);
      v234 = v191;
      v235 = v160;
      sub_1B03949FC(&v234, v138, v139, v140);
      v141 = v60;
      if (v60)
      {

        __break(1u);
      }

      else
      {
        v234 = v192;
        v235 = v161;
        sub_1B03949FC(&v234, &v238, &v237, &v236);
        v133 = 0;
        v234 = v193;
        v235 = v162;
        sub_1B03949FC(&v234, &v238, &v237, &v236);
        v132 = 0;
        v234 = v194;
        v235 = v163;
        sub_1B03949FC(&v234, &v238, &v237, &v236);
        v131 = 0;
        v234 = v195;
        v235 = v164;
        sub_1B03949FC(&v234, &v238, &v237, &v236);
        v130 = 0;
        v234 = v196;
        v235 = v165;
        sub_1B03949FC(&v234, &v238, &v237, &v236);
        v129 = 0;
        v234 = v197;
        v235 = v166;
        sub_1B03949FC(&v234, &v238, &v237, &v236);
        v128 = 0;
        v234 = v198;
        v235 = v167;
        sub_1B03949FC(&v234, &v238, &v237, &v236);
        v127 = 0;
        v234 = v199;
        v235 = v169;
        sub_1B03949FC(&v234, &v238, &v237, &v236);
        _os_log_impl(&dword_1B0389000, v172, v173, "Indexing message %@ data: %{iec-bytes}ld, content: %{iec-bytes}ld", v135, 0x20u);
        sub_1B03998A8(v136, 1, v134);
        sub_1B03998A8(v137, 0, MEMORY[0x1E69E7CA0] + 8);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v172);
    (*(v202 + 8))(v207, v201);
    v126 = [v218 searchableIndex];
    v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E29A0, &qword_1B0E9EF98);
    v122 = sub_1B0E46A48();
    v121 = v61;
    MEMORY[0x1E69E5928](v148);
    *v121 = v148;
    sub_1B0394964();
    v124 = v62;
    v125 = sub_1B0E451A8();

    [v126 indexItems:v125 immediately:1];
    MEMORY[0x1E69E5920](v125);
    MEMORY[0x1E69E5920](v126);
    MEMORY[0x1E69E5920](v148);
    (*(v209 + 8))(v214, v208);
    return sub_1B08AA168(v224);
  }
}

unint64_t sub_1B08A952C(uint64_t a1)
{
  v1 = a1 + *(type metadata accessor for IndexableMessageInfo(0) + 60);
  v7 = *v1;
  v8 = *(v1 + 8);
  v9 = *(v1 + 16);
  sub_1B08AA33C(*v1, v8, v9);
  if (v9 == 255)
  {
    v5 = 0;
    v6 = 1;
  }

  else
  {
    v4 = IndexableMessageInfo.Content.byteCount.getter(v7, v8);
    sub_1B08A9938();
    v5 = v4;
    v6 = 0;
  }

  if (v6)
  {
    return 0;
  }

  else
  {
    return v5;
  }
}

uint64_t sub_1B08A972C(uint64_t a1)
{
  v6 = type metadata accessor for IndexableMessageInfo(0);
  if (!(*(*(v6 - 1) + 48))(a1, 1))
  {

    v2 = a1 + v6[6];
    v3 = sub_1B0E43108();
    v4 = *(v3 - 8);
    if (!(*(v4 + 48))(v2, 1))
    {
      (*(v4 + 8))(v2, v3);
    }

    if (*(a1 + v6[7] + 24))
    {
    }

    if (*(a1 + v6[15] + 16) != 255)
    {
      sub_1B08A9938();
    }
  }

  return a1;
}

__n128 sub_1B08A9984(char *a1, char *a2)
{
  *a2 = *a1;
  *(a2 + 1) = *(a1 + 1);
  v7 = type metadata accessor for IndexableMessageInfo(0);
  v8 = v7[6];
  v10 = sub_1B0E43108();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(&a1[v8], 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2990, &qword_1B0E9B060);
    memcpy(&a2[v8], &a1[v8], *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v11 + 32))();
    (*(v11 + 56))(&a2[v8], 0, 1, v10);
  }

  memcpy(&a2[v7[7]], &a1[v7[7]], 0x60uLL);
  *&a2[v7[8]] = *&a1[v7[8]];
  *&a2[v7[9]] = *&a1[v7[9]];
  *&a2[v7[10]] = *&a1[v7[10]];
  *&a2[v7[11]] = *&a1[v7[11]];
  a2[v7[12]] = a1[v7[12]];
  a2[v7[13]] = a1[v7[13]];
  a2[v7[14]] = a1[v7[14]];
  v3 = &a2[v7[15]];
  v4 = v7[15];
  result = *&a1[v4];
  *v3 = result;
  v3[1].n128_u8[0] = a1[v4 + 16];
  *&a2[v7[16]] = *&a1[v7[16]];
  return result;
}

char *sub_1B08A9C20(char *a1, char *a2)
{
  v25 = *a1;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *a2 = v25;
  v27 = *(a1 + 1);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(a2 + 1) = v27;
  v28 = type metadata accessor for IndexableMessageInfo(0);
  v29 = v28[6];
  v31 = sub_1B0E43108();
  v32 = *(v31 - 8);
  if ((*(v32 + 48))(&a1[v29], 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2990, &qword_1B0E9B060);
    memcpy(&a2[v29], &a1[v29], *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v32 + 16))();
    (*(v32 + 56))(&a2[v29], 0, 1, v31);
  }

  v23 = &a2[v28[7]];
  v24 = &a1[v28[7]];
  if (*(v24 + 3))
  {
    *v23 = *v24;
    v19 = *(v24 + 1);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    *(v23 + 1) = v19;
    *(v23 + 2) = *(v24 + 2);
    v20 = *(v24 + 3);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    *(v23 + 3) = v20;
    *(v23 + 4) = *(v24 + 4);
    *(v23 + 5) = *(v24 + 5);
    *(v23 + 6) = *(v24 + 6);
    v21 = *(v24 + 7);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    *(v23 + 7) = v21;
    *(v23 + 8) = *(v24 + 8);
    *(v23 + 9) = *(v24 + 9);
    *(v23 + 10) = *(v24 + 10);
    v22 = *(v24 + 11);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    *(v23 + 11) = v22;
  }

  else
  {
    memcpy(v23, v24, 0x60uLL);
  }

  v3 = v28[8];
  v11 = &a2[v3];
  *&a2[v3] = *&a1[v3];
  v12 = *&a1[v3 + 8];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(v11 + 1) = v12;
  v4 = v28[9];
  v13 = &a2[v4];
  *&a2[v4] = *&a1[v4];
  v14 = *&a1[v4 + 8];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(v13 + 1) = v14;
  v15 = v28[10];
  v16 = *&a1[v15];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *&a2[v15] = v16;
  *&a2[v28[11]] = *&a1[v28[11]];
  a2[v28[12]] = a1[v28[12]];
  a2[v28[13]] = a1[v28[13]];
  a2[v28[14]] = a1[v28[14]];
  v17 = &a2[v28[15]];
  v18 = &a1[v28[15]];
  if (v18[16] == 255)
  {
    *v17 = *v18;
    v17[16] = v18[16];
  }

  else
  {
    v8 = *v18;
    v9 = *(v18 + 1);
    v10 = v18[16];
    sub_1B08AA0C4();
    *v17 = v8;
    *(v17 + 1) = v9;
    v17[16] = v10 & 1;
  }

  v6 = v28[16];
  v7 = *&a1[v6];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  result = a2;
  *&a2[v6] = v7;
  return result;
}

unint64_t sub_1B08AA104()
{
  v1 = *(type metadata accessor for IndexableMessageInfo(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1B08A952C(v2);
}

uint64_t sub_1B08AA168(uint64_t a1)
{

  v2 = type metadata accessor for IndexableMessageInfo(0);
  v3 = v2[6];
  v5 = sub_1B0E43108();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(a1 + v3, 1))
  {
    (*(v6 + 8))(a1 + v3, v5);
  }

  if (*(a1 + v2[7] + 24))
  {
  }

  if (*(a1 + v2[15] + 16) != 255)
  {
    sub_1B08A9938();
  }

  return a1;
}

double sub_1B08AA33C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 255)
  {
    return sub_1B08AA0C4();
  }

  return result;
}

uint64_t sub_1B08AA3AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  memset(__b, 0, 0x29uLL);
  result = a1;
  *a4 = "Mail";
  *(a4 + 8) = 4;
  *(a4 + 16) = 2;
  *(a4 + 24) = a1;
  *(a4 + 32) = a2;
  *(a4 + 40) = a3;
  return result;
}

uint64_t sub_1B08AA460()
{
  v3[5] = 0;
  v3[3] = &unk_1F26D8A58;
  v3[4] = sub_1B08AA500();
  v3[0] = swift_allocObject();
  memcpy((v3[0] + 16), __src, 0x29uLL);
  v2 = sub_1B0E434A8();
  __swift_destroy_boxed_opaque_existential_0(v3);
  return v2 & 1;
}

unint64_t sub_1B08AA500()
{
  v2 = qword_1EB6DC088;
  if (!qword_1EB6DC088)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DC088);
    return WitnessTable;
  }

  return v2;
}

void *sub_1B08AA5D4()
{
  if (qword_1EB6DC098 != -1)
  {
    swift_once();
  }

  return &unk_1EB737A78;
}

void *sub_1B08AA634@<X0>(uint64_t a1@<X8>)
{
  result = sub_1B08AA5D4();
  v2 = result[1];
  v3 = *(result + 16);
  v4 = result[3];
  v5 = result[4];
  v6 = *(result + 40);
  *a1 = *result;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;
  return result;
}

uint64_t sub_1B08AA70C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (*(a1 + 41))
    {
      v3 = *a1;
    }

    else
    {
      v3 = -1;
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_1B08AA7EC(uint64_t result, int a2, int a3)
{
  v3 = (result + 41);
  if (a2)
  {
    *(result + 24) = 0;
    *(result + 16) = 0;
    *(result + 8) = 0;
    *result = (a2 - 1);
    *(result + 32) = 0;
    *(result + 40) = 0;
    if (a3)
    {
      *v3 = 1;
    }
  }

  else if (a3)
  {
    *v3 = 0;
  }

  return result;
}

id sub_1B08AA9A8(int *a1, uint64_t a2)
{
  v61 = a1;
  v58 = a2;
  v35 = sub_1B08ABD78;
  v36 = sub_1B08ABDFC;
  v80 = 0;
  v79 = 0;
  v77 = 0;
  v76 = 0;
  v73 = 0;
  v37 = 0;
  v65 = 0;
  v60 = 0;
  v38 = sub_1B0E43108();
  v39 = *(v38 - 8);
  v40 = v38 - 8;
  v41 = (*(v39 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v38);
  v42 = &v17 - v41;
  v80 = &v17 - v41;
  v43 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3);
  v44 = &v17 - v43;
  v45 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2990, &qword_1B0E9B060) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v60);
  v46 = &v17 - v45;
  v47 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v48 = &v17 - v47;
  v79 = &v17 - v47;
  v52 = type metadata accessor for MessageMetadata(v6);
  v50 = (*(*(v52 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v49);
  v62 = &v17 - v50;
  v77 = v7;
  v76 = v8;
  v55 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  type metadata accessor for MFMessageFlags(v60);
  v51 = sub_1B0E46A48();
  sub_1B0692B00();
  sub_1B0E46028();
  v56 = v75;
  v57 = *(v61 + *(v52 + 36));
  v9 = *v61;
  v54 = v74;
  v74[0] = v9;
  v53 = sub_1B07467B8();
  v10 = sub_1B041C1E8();
  BinaryInteger.init<A>(_:)(v54, MEMORY[0x1E69E7668], &type metadata for UID, v53, v10);
  v59 = [v55 initWithFlags:v56 size:v57 uid:v74[1]];
  MEMORY[0x1E69E5928](v59);
  v78 = v59;
  MEMORY[0x1E69E5928](v58);
  [v59 setMessageStore_];
  MEMORY[0x1E69E5920](v58);
  MEMORY[0x1E69E5920](v59);
  sub_1B08AB360();
  sub_1B087363C(v61, v62);
  v63 = sub_1B08AB97C(v62);
  if (!v63)
  {
    MEMORY[0x1E69E5920](v58);
    sub_1B0873950(v61);
    MEMORY[0x1E69E5920](v78);
    return 0;
  }

  v34 = v63;
  v30 = v63;
  v73 = v63;
  v29 = v78;
  MEMORY[0x1E69E5928](v63);
  [v29 setHeaders_];
  MEMORY[0x1E69E5920](v30);
  v31 = *MEMORY[0x1E699B0D8];
  MEMORY[0x1E69E5928](v31);
  v32 = [v30 firstHeaderForKey_];
  MEMORY[0x1E69E5920](v31);
  if (v32)
  {
    v28 = v32;
    v27 = v32;
    v26 = &v64;
    sub_1B0E45FE8();
    sub_1B0392800(v26, v71);
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v71, 0, sizeof(v71));
  }

  v11 = v37;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E29B0, &qword_1B0E9F008);
  result = sub_1B039A570(v35, 0, v12, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6158], v24, v72);
  v25 = v11;
  if (!v11)
  {
    sub_1B041C0EC(v71);
    v70[0] = v72[0];
    v70[1] = v72[1];
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3850, &qword_1B0E9B600);
    sub_1B039A570(v36, 0, v14, MEMORY[0x1E69E73E0], v38, v24, v48);
    v15 = v44;
    sub_1B03B1198(v70);
    v68 = *(v61 + 2);
    v69 = *(v61 + 24);
    v66 = v68;
    v67 = v69;
    v65 = sub_1B074D188(v68, v69);
    [v78 setMessageFlagsWithoutCommitting_];
    v23 = v78;
    MEMORY[0x1E69E5928](v78);
    ServerMessageDate.date.getter(*(v61 + 1), v15);
    sub_1B0E430B8();
    v22 = v16;
    v20 = *(v39 + 8);
    v21 = v39 + 8;
    v20(v44, v38);
    [v23 setDateReceivedAsTimeIntervalSince1970_];
    MEMORY[0x1E69E5920](v23);
    sub_1B06BC2F4(v48, v46);
    if ((*(v39 + 48))(v46, 1, v38) == 1)
    {
      sub_1B06B97A8(v46);
    }

    else
    {
      (*(v39 + 32))(v42, v46, v38);
      v19 = v78;
      MEMORY[0x1E69E5928](v78);
      sub_1B0E430B8();
      [v19 setDateSentAsTimeIntervalSince1970_];
      MEMORY[0x1E69E5920](v19);
      v20(v42, v38);
    }

    [v78 loadCachedHeaderValuesFromHeaders_];
    sub_1B06B97A8(v48);
    MEMORY[0x1E69E5920](v30);
    v18 = v78;
    MEMORY[0x1E69E5928](v78);
    MEMORY[0x1E69E5920](v58);
    sub_1B0873950(v61);
    MEMORY[0x1E69E5920](v78);
    return v18;
  }

  __break(1u);
  __break(1u);
  return result;
}

unint64_t sub_1B08AB360()
{
  v2 = qword_1EB6DAB30;
  if (!qword_1EB6DAB30)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB6DAB30);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_1B08AB3C4(uint64_t a1, void *a2)
{
  v24.rawValue._countAndFlagsBits = a1;
  v24.rawValue._object = a2;
  v49 = 0;
  v50 = 0;
  v45 = 0u;
  v46 = 0u;
  v47 = a1;
  v48 = a2;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  String.init(_:)(v24);
  v25 = sub_1B0E44DA8();

  if (v25)
  {
    v8 = sub_1B0E44838();
    v9 = v6;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v49 = v8;
    v50 = v9;
    v12 = v8;
    goto LABEL_26;
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v44 = String.init(_:)(v24);
  sub_1B03F5BE0();
  sub_1B0E45778();

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v42 = v45;
  v43 = v46;
  sub_1B08AC330();
  sub_1B0E45728();

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v22 = sub_1B0E44838();
  v23 = v2;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v38[0] = v40;
  v38[1] = v41;
  *&v39 = v22;
  *(&v39 + 1) = v23;
  if (v41)
  {
    sub_1B070B280(v38, &v28);
    if (*(&v39 + 1))
    {
      v27 = v28;
      v26 = v39;
      v20 = MEMORY[0x1B2726940](v28, *(&v28 + 1), v39, *(&v39 + 1));
      sub_1B03B1198(&v26);
      sub_1B03B1198(&v27);
      sub_1B03B1198(v38);
      v21 = v20;
      goto LABEL_8;
    }

    sub_1B03B1198(&v28);
    goto LABEL_10;
  }

  if (*(&v39 + 1))
  {
LABEL_10:
    sub_1B06FF6F0(v38);
    v21 = 0;
    goto LABEL_8;
  }

  sub_1B03B1198(v38);
  v21 = 1;
LABEL_8:

  if (v21)
  {
    sub_1B08AC420();
    sub_1B0E457C8();
  }

  v15 = v45;
  v3 = v46;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v36 = v15;
  v37 = v3;
  sub_1B08AC3A8();
  sub_1B0E44888();
  v17 = v34;
  v18 = v35;

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v16 = sub_1B0E44838();
  v19 = v4;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v32[0] = v17;
  v32[1] = v18;
  *&v33 = v16;
  *(&v33 + 1) = v19;
  if (!v18)
  {
    if (!*(&v33 + 1))
    {
      sub_1B03B1198(v32);
      v14 = 1;
      goto LABEL_19;
    }

    goto LABEL_21;
  }

  sub_1B070B280(v32, &v31);
  if (!*(&v33 + 1))
  {
    sub_1B03B1198(&v31);
LABEL_21:
    sub_1B06FF6F0(v32);
    v14 = 0;
    goto LABEL_19;
  }

  v30 = v31;
  v29 = v33;
  v13 = MEMORY[0x1B2726940](v31, *(&v31 + 1), v33, *(&v33 + 1));
  sub_1B03B1198(&v29);
  sub_1B03B1198(&v30);
  sub_1B03B1198(v32);
  v14 = v13;
LABEL_19:

  if (v14)
  {
    sub_1B08AC420();
    sub_1B0E45858();
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v11 = sub_1B0E44EC8();
  v10 = v5;

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v49 = v11;
  v50 = v10;
  sub_1B03F5C58(&v45);
  v12 = v11;
LABEL_26:

  sub_1B03B1198(&v49);
  return v12;
}

id sub_1B08AB97C(uint64_t a1)
{
  v31 = a1;
  v27 = 0;
  v39 = 0;
  v37 = 0;
  v36 = 0;
  v35 = 0;
  sub_1B0E443C8();
  MEMORY[0x1EEE9AC00](0);
  v20 = &v11 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for Message(v2);
  v22 = *(v21 - 8);
  v23 = v22;
  MEMORY[0x1EEE9AC00](v21 - 8);
  v24 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E26A0, &qword_1B0EA2DF0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v27);
  v34 = &v11 - v25;
  v26 = &v11 - v25;
  v33 = type metadata accessor for MessageMetadata.UnparsedHeader(v4);
  v28 = *(v33 - 8);
  v32 = v28;
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v11 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = v30;
  v37 = v5;
  v7 = type metadata accessor for MessageMetadata(v6);
  sub_1B08768B8((v31 + *(v7 + 32)), v34);
  if ((*(v32 + 48))(v34, 1, v33) == 1)
  {
    sub_1B08769E8(v26);
LABEL_6:
    sub_1B0873950(v31);
    return 0;
  }

  sub_1B075CC98(v26, v30);
  v35 = sub_1B0E42FE8();
  v36 = v8;
  MessageMetadata.UnparsedHeader.underlying.getter(v20);
  Message.init(_:)(v20, v24);
  v13 = &v11;
  MEMORY[0x1EEE9AC00](&v11);
  *(&v11 - 2) = &v35;
  Message.streamWithConvertedLineEndings(input:output:ensureTrailingNewline:_:)(3u, 2u, 1, sub_1B08AC498, (&v11 - 4));
  (*(v23 + 8))(v24, v21);
  v16 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v15 = v35;
  v14 = v36;
  sub_1B03B2000(v35, v36);
  v17 = sub_1B0E42F18();
  sub_1B0391D50(v15, v14);
  v19 = [v16 initWithHeaderData:v17 encoding:0xFFFFFFFFLL];
  v18 = v19;

  if (!v19)
  {

    sub_1B075D3E8(&v35);
    sub_1B075CD68(v30);
    goto LABEL_6;
  }

  v9 = v18;
  v38 = v18;
  sub_1B075D3E8(&v35);
  sub_1B075CD68(v30);
  v11 = v18;
  sub_1B0873950(v31);

  return v11;
}

uint64_t sub_1B08ABD78@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = a1;
  sub_1B039AEC8(a1, v4);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    *a2 = 0;
    a2[1] = 0;
  }

  return result;
}

uint64_t sub_1B08ABE40@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v5._countAndFlagsBits = a1;
  v5._object = a2;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v3 = InternetMessageDate.init(_:)(v5);
  InternetMessageDate.parse()(v3.value._countAndFlagsBits, v3.value._object, a3);
}

uint64_t sub_1B08ABEA8()
{
  v34 = 0;
  v33 = 0;
  v28 = 0;
  v29 = 0;
  v20 = 0;
  v21 = (*(*(type metadata accessor for MessageMetadata(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v23 = &v3 - v21;
  v34 = v0;
  sub_1B08AB360();
  sub_1B087363C(v22, v23);
  v24 = sub_1B08AB97C(v23);
  if (!v24)
  {
    return 0;
  }

  v19 = v24;
  v16 = v24;
  v33 = v24;
  v17 = *MEMORY[0x1E699B130];
  MEMORY[0x1E69E5928](v17);
  v18 = [v16 firstHeaderForKey_];
  MEMORY[0x1E69E5920](v17);
  if (v18)
  {
    v15 = v18;
    v14 = v18;
    v13 = &v25;
    sub_1B0E45FE8();
    sub_1B0392800(v13, &v30);
    swift_unknownObjectRelease();
  }

  else
  {
    v30 = 0uLL;
    v31 = 0uLL;
  }

  v32[0] = v30;
  v32[1] = v31;
  if (*(&v31 + 1))
  {
    if (swift_dynamicCast())
    {
      v11 = v26;
      v12 = v27;
    }

    else
    {
      v11 = 0;
      v12 = 0;
    }

    v9 = v11;
    v10 = v12;
  }

  else
  {
    sub_1B041C0EC(v32);
    v9 = 0;
    v10 = 0;
  }

  v7 = v10;
  v8 = v9;
  if (!v10)
  {
    MEMORY[0x1E69E5920](v16);
    return 0;
  }

  v5 = v8;
  v6 = v7;
  v1._countAndFlagsBits = v8;
  v1._object = v7;
  v28 = v8;
  v29 = v7;
  v3 = MessageID.init(_:)(v1);
  MEMORY[0x1E69E5920](v16);
  return v3.rawValue._countAndFlagsBits;
}

id sub_1B08AC254(uint64_t a1, void *a2)
{
  v5 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v2.rawValue._countAndFlagsBits = a1;
  v2.rawValue._object = a2;
  String.init(_:)(v2);
  v6 = sub_1B0E44AC8();

  v8 = [v5 initWithAngleBracketID_];
  MEMORY[0x1E69E5920](v6);
  MEMORY[0x1E69E5928](v8);

  MEMORY[0x1E69E5920](v8);
  return v8;
}

unint64_t sub_1B08AC330()
{
  v2 = qword_1EB6E29B8;
  if (!qword_1EB6E29B8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E29B8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B08AC3A8()
{
  v2 = qword_1EB6E29C0;
  if (!qword_1EB6E29C0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E29C0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B08AC420()
{
  v2 = qword_1EB6E29C8;
  if (!qword_1EB6E29C8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E29C8);
    return WitnessTable;
  }

  return v2;
}

BOOL sub_1B08AC4D4(unsigned int a1, uint64_t a2, int a3, unsigned int a4, uint64_t a5, int a6)
{
  sub_1B0714E4C();
  if (sub_1B0E45ED8())
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v8 = static MailboxName.== infix(_:_:)(a2, a3, a5, a6);

    return (v8 & 1) != 0;
  }

  else
  {
    return 0;
  }
}

void sub_1B08AC5EC(uint64_t a1, unsigned int a2, uint64_t a3, int a4)
{
  v12 = a1;
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v8 = a2;
  sub_1B043CF70();
  sub_1B0E46C48();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v6 = a3;
  v7 = a4;
  sub_1B0451F2C();
  sub_1B0E46C48();
  sub_1B039E440(&v6);
}

unint64_t sub_1B08AC714()
{
  v2 = qword_1EB6DBCD8;
  if (!qword_1EB6DBCD8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DBCD8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B08AC814()
{
  swift_beginAccess();
  v2 = *(v0 + 16);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  swift_endAccess();
  return v2;
}

uint64_t sub_1B08AC864(uint64_t a1)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  swift_beginAccess();
  *(v1 + 16) = a1;

  swift_endAccess();
}

uint64_t sub_1B08AC8C4()
{
  swift_beginAccess();
  v2 = *(v0 + 24);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  swift_endAccess();
  return v2;
}

uint64_t sub_1B08AC914(uint64_t a1)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  swift_beginAccess();
  *(v1 + 24) = a1;

  swift_endAccess();
}

uint64_t *sub_1B08AC974(uint64_t a1, int a2, unsigned int a3, __int128 *a4, uint64_t a5, int a6, uint64_t a7)
{
  v90 = v101;
  v91 = a5;
  v92 = a4;
  v93 = a3;
  v94 = a2;
  v95 = a1;
  v96 = a6;
  v97 = 0;
  v113 = 0;
  v107 = 0;
  v106 = 0;
  v105 = 0;
  v100 = 0;
  v119 = a1;
  v120 = a2;
  v118 = a3;
  v117 = a4;
  v116 = a5;
  v115 = a6;
  v114 = a7;
  v7 = *a4;
  v8 = a4[1];
  v9 = a4[2];
  v121[3] = a4[3];
  v121[2] = v9;
  v121[1] = v8;
  v121[0] = v7;
  v10 = a4[4];
  v11 = a4[5];
  v12 = a4[6];
  v121[7] = a4[7];
  v121[6] = v12;
  v121[5] = v11;
  v121[4] = v10;
  v13 = a4[8];
  v14 = a4[9];
  v15 = a4[10];
  v122 = *(a4 + 176);
  v121[10] = v15;
  v121[9] = v14;
  v121[8] = v13;
  if (sub_1B075FACC(v121) == 1)
  {
    sub_1B075FEBC(v109);
    v47 = v90;
    v48 = v109[0];
    v49 = v109[1];
    v50 = v109[2];
    *(v90 + 63) = v109[3];
    *(v47 + 62) = v50;
    *(v47 + 61) = v49;
    *(v47 + 60) = v48;
    v51 = v109[4];
    v52 = v109[5];
    v53 = v109[6];
    *(v47 + 67) = v109[7];
    *(v47 + 66) = v53;
    *(v47 + 65) = v52;
    *(v47 + 64) = v51;
    v54 = v109[8];
    v55 = v109[9];
    v112 = v110;
    *(v47 + 70) = v109[10];
    *(v47 + 69) = v55;
    *(v47 + 68) = v54;
  }

  else
  {
    v16 = v90;
    v17 = *(v90 + 76);
    v18 = *(v90 + 77);
    v19 = *(v90 + 78);
    *(v90 + 3) = *(v90 + 79);
    *(v16 + 2) = v19;
    *(v16 + 1) = v18;
    *v16 = v17;
    v20 = *(v16 + 80);
    v21 = *(v16 + 81);
    v22 = *(v16 + 82);
    *(v16 + 7) = *(v16 + 83);
    *(v16 + 6) = v22;
    *(v16 + 5) = v21;
    *(v16 + 4) = v20;
    v23 = *(v16 + 84);
    v24 = *(v16 + 85);
    v25 = *(v16 + 86);
    v102 = v122;
    *(v16 + 10) = v25;
    *(v16 + 9) = v24;
    *(v16 + 8) = v23;
    v100 = v121;
    v89 = v101;
    sub_1B07169CC(v101, &v99);
    sub_1B07169CC(v101, &v98);
    v26 = v90;
    v27 = *v90;
    v28 = *(v90 + 1);
    v29 = *(v90 + 2);
    *(v90 + 15) = *(v90 + 3);
    *(v26 + 14) = v29;
    *(v26 + 13) = v28;
    *(v26 + 12) = v27;
    v30 = *(v26 + 4);
    v31 = *(v26 + 5);
    v32 = *(v26 + 6);
    *(v26 + 19) = *(v26 + 7);
    *(v26 + 18) = v32;
    *(v26 + 17) = v31;
    *(v26 + 16) = v30;
    v33 = *(v26 + 8);
    v34 = *(v26 + 9);
    v35 = *(v26 + 10);
    v103 = v102;
    *(v26 + 22) = v35;
    *(v26 + 21) = v34;
    *(v26 + 20) = v33;
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
    v36 = v90;
    v37 = v89;
    v38 = *(v90 + 12);
    v39 = *(v90 + 13);
    v40 = *(v90 + 14);
    *(v90 + 63) = *(v90 + 15);
    *(v36 + 62) = v40;
    *(v36 + 61) = v39;
    *(v36 + 60) = v38;
    v41 = *(v36 + 16);
    v42 = *(v36 + 17);
    v43 = *(v36 + 18);
    *(v36 + 67) = *(v36 + 19);
    *(v36 + 66) = v43;
    *(v36 + 65) = v42;
    *(v36 + 64) = v41;
    v44 = *(v36 + 20);
    v45 = *(v36 + 21);
    v46 = *(v36 + 22);
    v112 = v103;
    *(v36 + 70) = v46;
    *(v36 + 69) = v45;
    *(v36 + 68) = v44;
    sub_1B075E648(v37);
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
  v56 = v90;
  v85 = v57;
  v88 = v58;
  v84 = v59;
  LODWORD(v105) = v57;
  v106 = v58;
  v107 = v59;
  v60 = *(v90 + 60);
  v61 = *(v90 + 61);
  v62 = *(v90 + 62);
  *(v90 + 91) = *(v90 + 63);
  *(v56 + 90) = v62;
  *(v56 + 89) = v61;
  *(v56 + 88) = v60;
  v63 = *(v56 + 64);
  v64 = *(v56 + 65);
  v65 = *(v56 + 66);
  *(v56 + 95) = *(v56 + 67);
  *(v56 + 94) = v65;
  *(v56 + 93) = v64;
  *(v56 + 92) = v63;
  v66 = *(v56 + 68);
  v67 = *(v56 + 69);
  v68 = *(v56 + 70);
  v123[176] = v112;
  *(v56 + 98) = v68;
  *(v56 + 97) = v67;
  *(v56 + 96) = v66;
  v69 = *(v56 + 60);
  v70 = *(v56 + 61);
  v71 = *(v56 + 62);
  *(v56 + 40) = *(v56 + 63);
  *(v56 + 39) = v71;
  *(v56 + 38) = v70;
  *(v56 + 37) = v69;
  v72 = *(v56 + 64);
  v73 = *(v56 + 65);
  v74 = *(v56 + 66);
  *(v56 + 44) = *(v56 + 67);
  *(v56 + 43) = v74;
  *(v56 + 42) = v73;
  *(v56 + 41) = v72;
  v75 = *(v56 + 68);
  v76 = *(v56 + 69);
  v77 = *(v56 + 70);
  v108 = v112;
  *(v56 + 47) = v77;
  *(v56 + 46) = v76;
  *(v56 + 45) = v75;
  v87 = v123;
  sub_1B075DC38(v123, v104);
  v86 = &v84;
  MEMORY[0x1EEE9AC00](v85);
  v83[2] = v87;
  v83[3] = v91;
  sub_1B08ACEE8(v79, v80, v81, v78 & 1, sub_1B08ACEDC, v83);
  sub_1B075E728(v87);

  return sub_1B075E728(v111);
}

uint64_t *sub_1B08ACE28(uint64_t a1, unsigned __int8 *a2, char *a3)
{
  __dst[23] = a1;
  sub_1B075DC38(a2, v6);
  memcpy(__dst, a2, 0xB1uLL);

  memcpy(v8, __dst, 0xB1uLL);
  sub_1B077FC8C(v8, a3);

  return sub_1B075E728(__dst);
}

uint64_t sub_1B08ACEE8(int a1, uint64_t a2, int a3, char a4, void (*a5)(void), uint64_t a6)
{
  v22 = 0;
  v30 = a1;
  v31 = a2;
  v32 = a3;
  v29 = a4 & 1;
  v27 = a5;
  v28 = a6;
  v26 = v6;
  swift_beginAccess();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  swift_endAccess();
  v23 = a1;
  v24 = a2;
  v25 = a3;
  type metadata accessor for InProgressMessageDownload(0);
  sub_1B08AC714();
  v18 = sub_1B0E44638();
  v19 = v7;
  v20 = v8;

  if (v20 == 255)
  {
    v22 = sub_1B075FC90(a1, a4 & 1);
    a5(&v22);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E29D0, &qword_1B0E9F010);
    sub_1B0E44788();
    swift_endAccess();
  }

  else
  {
    if (a4)
    {
      sub_1B08AD370(v18, v19, v20 & 1);
      swift_beginAccess();
      sub_1B0E446B8();
      sub_1B0E44678();
      swift_endAccess();
      swift_beginAccess();
      *(v21 + 20) = 1;
      swift_endAccess();

      sub_1B07AC53C(v18, v19, v20 & 1);
    }

    sub_1B08AD370(v18, v19, v20 & 1);
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E29D0, &qword_1B0E9F010);
    v12 = sub_1B0E446A8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E29D8, &qword_1B0E9F018);
    v11 = sub_1B0E44668();
    a5(v9);
    v11();
    v12();
    swift_endAccess();
    sub_1B07AC53C(v18, v19, v20 & 1);
    return sub_1B07AC53C(v18, v19, v20 & 1);
  }
}

double sub_1B08AD370(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  }

  return result;
}

uint64_t sub_1B08AD3A4()
{
  sub_1B039E440((v0 + 16));
  sub_1B039E440((v0 + 24));
  return v2;
}

uint64_t sub_1B08AD460()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A28, &qword_1B0E9F348);
  sub_1B0E46A48();
  type metadata accessor for InProgressMessageDownload(0);
  sub_1B08AC714();
  *(v0 + 16) = sub_1B0E445D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A30, &unk_1B0E9F350);
  sub_1B0E46A48();
  type metadata accessor for MessagesBeingDownloaded.MessageHeader(0);
  v1 = sub_1B0E445D8();
  result = v3;
  *(v3 + 24) = v1;
  return result;
}

uint64_t sub_1B08AD540(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v22 = a1;
  v23 = a2;
  v24 = a3;
  v25 = a4;
  v26 = a5;
  v31 = a6;
  v27 = a7;
  v30 = sub_1B08AD9A0;
  v51 = 0;
  v49 = 0;
  v50 = 0;
  v47 = 0;
  v48 = 0;
  v46 = 0;
  v45 = 0;
  v44 = 0;
  v41 = 0;
  v42 = 0;
  v29 = 0;
  v43 = 0;
  v19 = (*(*(type metadata accessor for MessageSectionData(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v22);
  v20 = &v18 - v19;
  v51 = v8;
  v49 = v9;
  v50 = v10;
  v47 = v11;
  v48 = v12;
  v46 = v13;
  v45 = v14;
  v44 = v7;
  sub_1B07AD790(v8, (&v18 - v19));
  v21 = sub_1B08AD714(v20);
  v32 = v15;
  v28 = v16;
  LODWORD(v41) = v21;
  v42 = v15;
  v43 = v16;

  v34 = v22;
  v35 = v23;
  v36 = v24;
  v37 = v25;
  v38 = v26;
  v39 = v31;
  v40 = v27;
  sub_1B08ACEE8(v21, v32, v28, v29 & 1, v30, v33);
}

uint64_t sub_1B08AD714(uint64_t a1)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
  v8 = v1;
  v6 = v2;
  v7 = v3;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  LODWORD(v9) = v8;
  v10 = v6;
  v11 = v7;
  sub_1B07AB910(a1);
  sub_1B03B1198(&v9);
  return v8;
}

uint64_t sub_1B08AD7CC(uint64_t a1, void *a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t, void), uint64_t a6, void *a7, uint64_t a8)
{
  v20 = a1;
  v26 = a2;
  v27 = a3;
  v28 = a4;
  v29 = a5;
  v30 = a6;
  v31 = a7;
  v22 = a8;
  v41 = 0;
  v40 = 0;
  v38 = 0;
  v39 = 0;
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v34 = 0;
  v18 = 0;
  v19 = (*(*(_s6LoggerVMa(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v23 = &v18 - v19;
  v21 = (*(*(_s6LoggerVMa_1(v8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v20);
  v32 = &v18 - v21;
  v41 = v9;
  v40 = v10;
  v38 = v11;
  v39 = v12;
  v36 = v13;
  v37 = v14;
  v35 = v15;
  v34 = v16;
  v33 = *v9;

  sub_1B0394784(v22, v23);
  v24 = *v26;
  v25 = *(v26 + 2);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B07B91DC(v23, v24, v25, v32);
  sub_1B0784064(v26, v27, v28, v29, v30, v31, v32);
  sub_1B074B764(v32);
}

uint64_t sub_1B08AD9C0()
{
  v2 = *v0;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v2;
}

uint64_t sub_1B08ADA38(uint64_t a1)
{
  v8 = a1;
  v6 = 0;
  v5 = (*(*(type metadata accessor for MessageHeader(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v7 = &v5 - v5;
  sub_1B075CC34(v2, &v5 - v5);
  v3 = type metadata accessor for MessagesBeingDownloaded.MessageHeader(v6);
  sub_1B08ADAE0(v7, v1 + *(v3 + 24));
  return sub_1B075CD68(v8);
}

uint64_t sub_1B08ADAE0(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B0E443C8();
  (*(*(v2 - 8) + 40))(a2, a1);
  return a2;
}

uint64_t sub_1B08ADB44@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 12) = a3;
  v5 = type metadata accessor for MessagesBeingDownloaded.MessageHeader(0);
  return sub_1B075CC98(a4, a5 + *(v5 + 24));
}

uint64_t sub_1B08ADB94(uint64_t *a1, uint64_t a2)
{
  v34 = a1;
  v33 = a2;
  v70 = 0;
  v69 = 0;
  v68 = 0;
  v65 = 0;
  v66 = 0;
  v67 = 0;
  v54 = 0;
  v55 = 0;
  v56 = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E29E0, &qword_1B0E9F020);
  v25 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3);
  v26 = v14 - v25;
  v44 = 0;
  v27 = (*(*(_s6LoggerVMa(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v44);
  v28 = v14 - v27;
  v29 = (*(*(_s6LoggerVMa_1(v4) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v44);
  v30 = v14 - v29;
  v31 = (*(*(type metadata accessor for MessageHeader(v5) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v44);
  v32 = v14 - v31;
  v35 = type metadata accessor for MessagesBeingDownloaded.MessageHeader(v6);
  v36 = *(v35 - 8);
  v37 = v35 - 8;
  v38 = (*(v36 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v34);
  v39 = v14 - v38;
  v70 = v7;
  v69 = v8;
  v68 = v2;
  sub_1B08AE288(v7, v14 - v38);
  v41 = sub_1B08AE348(v39);
  v42 = v9;
  v43 = v10;
  LODWORD(v65) = v41;
  v66 = v9;
  v67 = v10;
  v40 = v64;
  swift_beginAccess();
  v48 = *(v2 + 16);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  swift_endAccess();
  v46 = &v61;
  v61 = v41;
  v62 = v42;
  v63 = v43;
  v45 = type metadata accessor for InProgressMessageDownload(v44);
  v47 = sub_1B08AC714();
  v49 = sub_1B0E44638();
  v50 = v11;
  v51 = v12;

  if (v51 == 255)
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B08AE288(v34, v26);
    (*(v36 + 56))(v26, 0, 1, v35);
    v14[1] = &v58;
    v58 = v41;
    v59 = v42;
    v60 = v43;
    v14[2] = v57;
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E29E8, &qword_1B0E9F028);
    sub_1B0E44788();
    swift_endAccess();
  }

  else
  {
    v22 = v49;
    v23 = v50;
    v24 = v51;
    v21 = v51;
    v20 = v50;
    v19 = v49;
    v54 = v49;
    v55 = v50;
    v56 = v51 & 1;
    sub_1B08AD370(v49, v50, v51 & 1);
    v14[4] = v53;
    swift_beginAccess();
    v14[3] = &unk_1F26DB2D8;
    v18 = sub_1B0E446B8();
    sub_1B0E44678();
    v17 = v52;
    swift_endAccess();
    sub_1B075CC34(v34 + *(v35 + 24), v32);
    sub_1B0394784(v33, v28);
    v15 = *v34;
    v16 = *(v34 + 2);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B07B91DC(v28, v15, v16, v30);
    sub_1B077FF34(v32, v30);
    sub_1B074B764(v30);
    sub_1B075CD68(v32);

    sub_1B07AC53C(v19, v20, v21 & 1);
    sub_1B07AC53C(v19, v20, v21 & 1);
  }
}

uint64_t sub_1B08AE288(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *a2 = v4;
  *(a2 + 8) = *(a1 + 2);
  *(a2 + 12) = *(a1 + 3);
  v5 = *(type metadata accessor for MessagesBeingDownloaded.MessageHeader(0) + 24);
  v2 = sub_1B0E443C8();
  (*(*(v2 - 8) + 16))(a2 + v5, a1 + v5);
  return a2;
}

uint64_t sub_1B08AE348(uint64_t a1)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
  v8 = v1;
  v6 = v2;
  v7 = v3;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  LODWORD(v9) = v8;
  v10 = v6;
  v11 = v7;
  sub_1B08AE400(a1);
  sub_1B03B1198(&v9);
  return v8;
}

uint64_t sub_1B08AE400(uint64_t a1)
{

  v3 = *(type metadata accessor for MessagesBeingDownloaded.MessageHeader(0) + 24);
  v1 = sub_1B0E443C8();
  (*(*(v1 - 8) + 8))(a1 + v3);
  return a1;
}

uint64_t sub_1B08AE484(unsigned int a1, uint64_t a2, int a3, uint64_t a4)
{
  v440 = a1;
  v441 = a2;
  v442 = a3;
  v431 = a4;
  v443 = 0;
  v352 = sub_1B074E050;
  v353 = sub_1B03F7AE0;
  v354 = sub_1B0394C30;
  v355 = sub_1B0394C24;
  v356 = sub_1B074DFFC;
  v357 = sub_1B039BA88;
  v358 = sub_1B039BB94;
  v359 = sub_1B0394C24;
  v360 = sub_1B039BBA0;
  v361 = sub_1B039BC08;
  v362 = 0x786F626C69616DLL;
  v363 = sub_1B06BA324;
  v364 = sub_1B074E0E4;
  v365 = sub_1B039BCF8;
  v366 = sub_1B07AB020;
  v367 = sub_1B039BC08;
  v368 = sub_1B0398F5C;
  v369 = sub_1B0398F5C;
  v370 = sub_1B0399178;
  v371 = sub_1B0398F5C;
  v372 = sub_1B0398F5C;
  v373 = sub_1B039BA94;
  v374 = sub_1B0398F5C;
  v375 = sub_1B0398F5C;
  v376 = sub_1B0399178;
  v377 = sub_1B0398F5C;
  v378 = sub_1B0398F5C;
  v379 = sub_1B03991EC;
  v380 = sub_1B0398F5C;
  v381 = sub_1B0398F5C;
  v382 = sub_1B03993BC;
  v383 = sub_1B0398F5C;
  v384 = sub_1B0398F5C;
  v385 = sub_1B039BCEC;
  v386 = sub_1B0398F5C;
  v387 = sub_1B0398F5C;
  v388 = sub_1B03991EC;
  v389 = sub_1B074E050;
  v390 = sub_1B03F7AE0;
  v391 = sub_1B0394C24;
  v392 = sub_1B074DFFC;
  v393 = sub_1B039BA88;
  v394 = sub_1B0394C24;
  v395 = sub_1B039BBA0;
  v396 = sub_1B039BC08;
  v397 = sub_1B06BA324;
  v398 = sub_1B074E0E4;
  v399 = sub_1B039BCF8;
  v400 = sub_1B07AB020;
  v401 = sub_1B039BC08;
  v402 = sub_1B0398F5C;
  v403 = sub_1B0398F5C;
  v404 = sub_1B0399178;
  v405 = sub_1B0398F5C;
  v406 = sub_1B0398F5C;
  v407 = sub_1B039BA94;
  v408 = sub_1B0398F5C;
  v409 = sub_1B0398F5C;
  v410 = sub_1B0399178;
  v411 = sub_1B0398F5C;
  v412 = sub_1B0398F5C;
  v413 = sub_1B03991EC;
  v414 = sub_1B0398F5C;
  v415 = sub_1B0398F5C;
  v416 = sub_1B03993BC;
  v417 = sub_1B0398F5C;
  v418 = sub_1B0398F5C;
  v419 = sub_1B039BCEC;
  v420 = sub_1B0398F5C;
  v421 = sub_1B0398F5C;
  v422 = sub_1B03991EC;
  v488 = 0;
  v486 = 0;
  v487 = 0;
  v485 = 0;
  v484 = 0;
  v481 = 0;
  v482 = 0;
  v483 = 0;
  v423 = 0;
  v469 = 0;
  v470 = 0;
  v471 = 0;
  v460 = 0;
  v461 = 0;
  v448 = 0;
  v424 = _s6LoggerVMa_1(0);
  v425 = (*(*(v424 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v426 = v195 - v425;
  v427 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v428 = v195 - v427;
  v429 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v430 = v195 - v429;
  v432 = sub_1B0E439A8();
  v433 = *(v432 - 8);
  v434 = v432 - 8;
  v436 = *(v433 + 64);
  v435 = (v436 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v441);
  v437 = v195 - v435;
  v438 = (v436 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v9);
  v439 = v195 - v438;
  v488 = v10;
  v486 = v11;
  v487 = v12;
  v485 = v13;
  v484 = v4;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
  v445 = v14;
  v446 = v15;
  v447 = v16;
  LODWORD(v481) = v14;
  v482 = v15;
  v483 = v16;
  v444 = &v480;
  swift_beginAccess();
  v452 = *(v4 + 16);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  swift_endAccess();
  v450 = &v477;
  v477 = v445;
  v478 = v446;
  v479 = v447;
  v449 = type metadata accessor for InProgressMessageDownload(v448);
  v451 = sub_1B08AC714();
  v453 = sub_1B0E44638();
  v454 = v17;
  v455 = v18;

  if (v455 == 255)
  {
    (*(v433 + 16))(v437, v431, v432);
    sub_1B074B69C(v431, v430);
    sub_1B074B69C(v430, v428);
    sub_1B074E41C(v430, v426);
    v107 = (v428 + *(v424 + 20));
    v206 = *v107;
    v207 = *(v107 + 1);
    v208 = *(v107 + 1);
    v209 = *(v107 + 4);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B074B764(v428);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v205 = 36;
    v225 = 7;
    v108 = swift_allocObject();
    v109 = v207;
    v110 = v208;
    v111 = v209;
    v212 = v108;
    *(v108 + 16) = v206;
    *(v108 + 20) = v109;
    *(v108 + 24) = v110;
    *(v108 + 32) = v111;
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v112 = swift_allocObject();
    v113 = v207;
    v114 = v208;
    v115 = v209;
    v204 = v112;
    *(v112 + 16) = v206;
    *(v112 + 20) = v113;
    *(v112 + 24) = v114;
    *(v112 + 32) = v115;

    v224 = 32;
    v116 = swift_allocObject();
    v117 = v204;
    v216 = v116;
    *(v116 + 16) = v389;
    *(v116 + 24) = v117;
    sub_1B0394868();
    sub_1B0394868();

    v118 = swift_allocObject();
    v119 = v207;
    v120 = v208;
    v121 = v209;
    v122 = v118;
    v123 = v426;
    v220 = v122;
    *(v122 + 16) = v206;
    *(v122 + 20) = v119;
    *(v122 + 24) = v120;
    *(v122 + 32) = v121;
    sub_1B074B764(v123);
    v210 = swift_allocObject();
    *(v210 + 16) = v440;

    v124 = swift_allocObject();
    v125 = v210;
    v226 = v124;
    *(v124 + 16) = v390;
    *(v124 + 24) = v125;

    v252 = sub_1B0E43988();
    v253 = sub_1B0E458E8();
    v222 = 17;
    v228 = swift_allocObject();
    v214 = 16;
    *(v228 + 16) = 16;
    v229 = swift_allocObject();
    v223 = 4;
    *(v229 + 16) = 4;
    v126 = swift_allocObject();
    v211 = v126;
    *(v126 + 16) = v354;
    *(v126 + 24) = 0;
    v127 = swift_allocObject();
    v128 = v211;
    v230 = v127;
    *(v127 + 16) = v391;
    *(v127 + 24) = v128;
    v231 = swift_allocObject();
    *(v231 + 16) = 0;
    v232 = swift_allocObject();
    *(v232 + 16) = 1;
    v129 = swift_allocObject();
    v130 = v212;
    v213 = v129;
    *(v129 + 16) = v392;
    *(v129 + 24) = v130;
    v131 = swift_allocObject();
    v132 = v213;
    v233 = v131;
    *(v131 + 16) = v393;
    *(v131 + 24) = v132;
    v234 = swift_allocObject();
    *(v234 + 16) = v214;
    v235 = swift_allocObject();
    *(v235 + 16) = v223;
    v133 = swift_allocObject();
    v215 = v133;
    *(v133 + 16) = v358;
    *(v133 + 24) = 0;
    v134 = swift_allocObject();
    v135 = v215;
    v236 = v134;
    *(v134 + 16) = v394;
    *(v134 + 24) = v135;
    v237 = swift_allocObject();
    *(v237 + 16) = 0;
    v238 = swift_allocObject();
    *(v238 + 16) = v223;
    v136 = swift_allocObject();
    v137 = v216;
    v217 = v136;
    *(v136 + 16) = v395;
    *(v136 + 24) = v137;
    v138 = swift_allocObject();
    v139 = v217;
    v239 = v138;
    *(v138 + 16) = v396;
    *(v138 + 24) = v139;
    v240 = swift_allocObject();
    *(v240 + 16) = 112;
    v241 = swift_allocObject();
    v219 = 8;
    *(v241 + 16) = 8;
    v218 = swift_allocObject();
    *(v218 + 16) = v362;
    v140 = swift_allocObject();
    v141 = v218;
    v242 = v140;
    *(v140 + 16) = v397;
    *(v140 + 24) = v141;
    v243 = swift_allocObject();
    *(v243 + 16) = 37;
    v244 = swift_allocObject();
    *(v244 + 16) = v219;
    v142 = swift_allocObject();
    v143 = v220;
    v221 = v142;
    *(v142 + 16) = v398;
    *(v142 + 24) = v143;
    v144 = swift_allocObject();
    v145 = v221;
    v245 = v144;
    *(v144 + 16) = v399;
    *(v144 + 24) = v145;
    v246 = swift_allocObject();
    *(v246 + 16) = 0;
    v247 = swift_allocObject();
    *(v247 + 16) = v223;
    v146 = swift_allocObject();
    v147 = v226;
    v227 = v146;
    *(v146 + 16) = v400;
    *(v146 + 24) = v147;
    v148 = swift_allocObject();
    v149 = v227;
    v249 = v148;
    *(v148 + 16) = v401;
    *(v148 + 24) = v149;
    v251 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v248 = sub_1B0E46A48();
    v250 = v150;

    v151 = v228;
    v152 = v250;
    *v250 = v402;
    v152[1] = v151;

    v153 = v229;
    v154 = v250;
    v250[2] = v403;
    v154[3] = v153;

    v155 = v230;
    v156 = v250;
    v250[4] = v404;
    v156[5] = v155;

    v157 = v231;
    v158 = v250;
    v250[6] = v405;
    v158[7] = v157;

    v159 = v232;
    v160 = v250;
    v250[8] = v406;
    v160[9] = v159;

    v161 = v233;
    v162 = v250;
    v250[10] = v407;
    v162[11] = v161;

    v163 = v234;
    v164 = v250;
    v250[12] = v408;
    v164[13] = v163;

    v165 = v235;
    v166 = v250;
    v250[14] = v409;
    v166[15] = v165;

    v167 = v236;
    v168 = v250;
    v250[16] = v410;
    v168[17] = v167;

    v169 = v237;
    v170 = v250;
    v250[18] = v411;
    v170[19] = v169;

    v171 = v238;
    v172 = v250;
    v250[20] = v412;
    v172[21] = v171;

    v173 = v239;
    v174 = v250;
    v250[22] = v413;
    v174[23] = v173;

    v175 = v240;
    v176 = v250;
    v250[24] = v414;
    v176[25] = v175;

    v177 = v241;
    v178 = v250;
    v250[26] = v415;
    v178[27] = v177;

    v179 = v242;
    v180 = v250;
    v250[28] = v416;
    v180[29] = v179;

    v181 = v243;
    v182 = v250;
    v250[30] = v417;
    v182[31] = v181;

    v183 = v244;
    v184 = v250;
    v250[32] = v418;
    v184[33] = v183;

    v185 = v245;
    v186 = v250;
    v250[34] = v419;
    v186[35] = v185;

    v187 = v246;
    v188 = v250;
    v250[36] = v420;
    v188[37] = v187;

    v189 = v247;
    v190 = v250;
    v250[38] = v421;
    v190[39] = v189;

    v191 = v249;
    v192 = v250;
    v250[40] = v422;
    v192[41] = v191;
    sub_1B0394964();

    if (os_log_type_enabled(v252, v253))
    {
      v193 = v423;
      v197 = sub_1B0E45D78();
      v196 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v198 = sub_1B03949A8(0, v196, v196);
      v199 = sub_1B03949A8(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v200 = &v476;
      v476 = v197;
      v201 = &v475;
      v475 = v198;
      v202 = &v474;
      v474 = v199;
      sub_1B0394A48(3, &v476);
      sub_1B0394A48(7, v200);
      v472 = v402;
      v473 = v228;
      sub_1B03949FC(&v472, v200, v201, v202);
      v203 = v193;
      if (v193)
      {

        __break(1u);
      }

      else
      {
        v472 = v403;
        v473 = v229;
        sub_1B03949FC(&v472, &v476, &v475, &v474);
        v195[19] = 0;
        v472 = v404;
        v473 = v230;
        sub_1B03949FC(&v472, &v476, &v475, &v474);
        v195[18] = 0;
        v472 = v405;
        v473 = v231;
        sub_1B03949FC(&v472, &v476, &v475, &v474);
        v195[17] = 0;
        v472 = v406;
        v473 = v232;
        sub_1B03949FC(&v472, &v476, &v475, &v474);
        v195[16] = 0;
        v472 = v407;
        v473 = v233;
        sub_1B03949FC(&v472, &v476, &v475, &v474);
        v195[15] = 0;
        v472 = v408;
        v473 = v234;
        sub_1B03949FC(&v472, &v476, &v475, &v474);
        v195[14] = 0;
        v472 = v409;
        v473 = v235;
        sub_1B03949FC(&v472, &v476, &v475, &v474);
        v195[13] = 0;
        v472 = v410;
        v473 = v236;
        sub_1B03949FC(&v472, &v476, &v475, &v474);
        v195[12] = 0;
        v472 = v411;
        v473 = v237;
        sub_1B03949FC(&v472, &v476, &v475, &v474);
        v195[11] = 0;
        v472 = v412;
        v473 = v238;
        sub_1B03949FC(&v472, &v476, &v475, &v474);
        v195[10] = 0;
        v472 = v413;
        v473 = v239;
        sub_1B03949FC(&v472, &v476, &v475, &v474);
        v195[9] = 0;
        v472 = v414;
        v473 = v240;
        sub_1B03949FC(&v472, &v476, &v475, &v474);
        v195[8] = 0;
        v472 = v415;
        v473 = v241;
        sub_1B03949FC(&v472, &v476, &v475, &v474);
        v195[7] = 0;
        v472 = v416;
        v473 = v242;
        sub_1B03949FC(&v472, &v476, &v475, &v474);
        v195[6] = 0;
        v472 = v417;
        v473 = v243;
        sub_1B03949FC(&v472, &v476, &v475, &v474);
        v195[5] = 0;
        v472 = v418;
        v473 = v244;
        sub_1B03949FC(&v472, &v476, &v475, &v474);
        v195[4] = 0;
        v472 = v419;
        v473 = v245;
        sub_1B03949FC(&v472, &v476, &v475, &v474);
        v195[3] = 0;
        v472 = v420;
        v473 = v246;
        sub_1B03949FC(&v472, &v476, &v475, &v474);
        v195[2] = 0;
        v472 = v421;
        v473 = v247;
        sub_1B03949FC(&v472, &v476, &v475, &v474);
        v195[1] = 0;
        v472 = v422;
        v473 = v249;
        sub_1B03949FC(&v472, &v476, &v475, &v474);
        _os_log_impl(&dword_1B0389000, v252, v253, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] No in-progress download for UID %u.", v197, 0x31u);
        sub_1B03998A8(v198, 0, v196);
        sub_1B03998A8(v199, 1, MEMORY[0x1E69E7CA0] + 8);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v252);
    (*(v433 + 8))(v437, v432);

    v335 = 0;
    v336 = 0xF000000000000000;
  }

  else
  {
    v348 = v453;
    v349 = v454;
    v350 = v455;
    v346 = v455;
    v345 = v454;
    v344 = v453;
    v469 = v453;
    v470 = v454;
    v471 = v455 & 1;
    v339 = &v468;
    swift_beginAccess();
    v340 = *(v351 + 16);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    swift_endAccess();
    sub_1B08AD370(v344, v345, v346 & 1);
    sub_1B0E44798();
    v343 = v467;
    v341 = v466[1];

    v342 = sub_1B07678B8(v431);
    v347 = v19;

    sub_1B07AC53C(v344, v345, v346 & 1);
    if ((v347 & 0xF000000000000000) == 0xF000000000000000)
    {
      (*(v433 + 16))(v439, v431, v432);
      sub_1B074B69C(v431, v430);
      sub_1B074B69C(v430, v428);
      sub_1B074E41C(v430, v426);
      v20 = (v428 + *(v424 + 20));
      v283 = *v20;
      v284 = *(v20 + 1);
      v285 = *(v20 + 1);
      v286 = *(v20 + 4);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B074B764(v428);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v282 = 36;
      v302 = 7;
      v21 = swift_allocObject();
      v22 = v284;
      v23 = v285;
      v24 = v286;
      v289 = v21;
      *(v21 + 16) = v283;
      *(v21 + 20) = v22;
      *(v21 + 24) = v23;
      *(v21 + 32) = v24;
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v25 = swift_allocObject();
      v26 = v284;
      v27 = v285;
      v28 = v286;
      v281 = v25;
      *(v25 + 16) = v283;
      *(v25 + 20) = v26;
      *(v25 + 24) = v27;
      *(v25 + 32) = v28;

      v301 = 32;
      v29 = swift_allocObject();
      v30 = v281;
      v293 = v29;
      *(v29 + 16) = v352;
      *(v29 + 24) = v30;
      sub_1B0394868();
      sub_1B0394868();

      v31 = swift_allocObject();
      v32 = v284;
      v33 = v285;
      v34 = v286;
      v35 = v31;
      v36 = v426;
      v297 = v35;
      *(v35 + 16) = v283;
      *(v35 + 20) = v32;
      *(v35 + 24) = v33;
      *(v35 + 32) = v34;
      sub_1B074B764(v36);
      v287 = swift_allocObject();
      *(v287 + 16) = v440;

      v37 = swift_allocObject();
      v38 = v287;
      v303 = v37;
      *(v37 + 16) = v353;
      *(v37 + 24) = v38;

      v329 = sub_1B0E43988();
      v330 = sub_1B0E45908();
      v299 = 17;
      v305 = swift_allocObject();
      v291 = 16;
      *(v305 + 16) = 16;
      v306 = swift_allocObject();
      v300 = 4;
      *(v306 + 16) = 4;
      v39 = swift_allocObject();
      v288 = v39;
      *(v39 + 16) = v354;
      *(v39 + 24) = 0;
      v40 = swift_allocObject();
      v41 = v288;
      v307 = v40;
      *(v40 + 16) = v355;
      *(v40 + 24) = v41;
      v308 = swift_allocObject();
      *(v308 + 16) = 0;
      v309 = swift_allocObject();
      *(v309 + 16) = 1;
      v42 = swift_allocObject();
      v43 = v289;
      v290 = v42;
      *(v42 + 16) = v356;
      *(v42 + 24) = v43;
      v44 = swift_allocObject();
      v45 = v290;
      v310 = v44;
      *(v44 + 16) = v357;
      *(v44 + 24) = v45;
      v311 = swift_allocObject();
      *(v311 + 16) = v291;
      v312 = swift_allocObject();
      *(v312 + 16) = v300;
      v46 = swift_allocObject();
      v292 = v46;
      *(v46 + 16) = v358;
      *(v46 + 24) = 0;
      v47 = swift_allocObject();
      v48 = v292;
      v313 = v47;
      *(v47 + 16) = v359;
      *(v47 + 24) = v48;
      v314 = swift_allocObject();
      *(v314 + 16) = 0;
      v315 = swift_allocObject();
      *(v315 + 16) = v300;
      v49 = swift_allocObject();
      v50 = v293;
      v294 = v49;
      *(v49 + 16) = v360;
      *(v49 + 24) = v50;
      v51 = swift_allocObject();
      v52 = v294;
      v316 = v51;
      *(v51 + 16) = v361;
      *(v51 + 24) = v52;
      v317 = swift_allocObject();
      *(v317 + 16) = 112;
      v318 = swift_allocObject();
      v296 = 8;
      *(v318 + 16) = 8;
      v295 = swift_allocObject();
      *(v295 + 16) = v362;
      v53 = swift_allocObject();
      v54 = v295;
      v319 = v53;
      *(v53 + 16) = v363;
      *(v53 + 24) = v54;
      v320 = swift_allocObject();
      *(v320 + 16) = 37;
      v321 = swift_allocObject();
      *(v321 + 16) = v296;
      v55 = swift_allocObject();
      v56 = v297;
      v298 = v55;
      *(v55 + 16) = v364;
      *(v55 + 24) = v56;
      v57 = swift_allocObject();
      v58 = v298;
      v322 = v57;
      *(v57 + 16) = v365;
      *(v57 + 24) = v58;
      v323 = swift_allocObject();
      *(v323 + 16) = 0;
      v324 = swift_allocObject();
      *(v324 + 16) = v300;
      v59 = swift_allocObject();
      v60 = v303;
      v304 = v59;
      *(v59 + 16) = v366;
      *(v59 + 24) = v60;
      v61 = swift_allocObject();
      v62 = v304;
      v326 = v61;
      *(v61 + 16) = v367;
      *(v61 + 24) = v62;
      v328 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
      v325 = sub_1B0E46A48();
      v327 = v63;

      v64 = v305;
      v65 = v327;
      *v327 = v368;
      v65[1] = v64;

      v66 = v306;
      v67 = v327;
      v327[2] = v369;
      v67[3] = v66;

      v68 = v307;
      v69 = v327;
      v327[4] = v370;
      v69[5] = v68;

      v70 = v308;
      v71 = v327;
      v327[6] = v371;
      v71[7] = v70;

      v72 = v309;
      v73 = v327;
      v327[8] = v372;
      v73[9] = v72;

      v74 = v310;
      v75 = v327;
      v327[10] = v373;
      v75[11] = v74;

      v76 = v311;
      v77 = v327;
      v327[12] = v374;
      v77[13] = v76;

      v78 = v312;
      v79 = v327;
      v327[14] = v375;
      v79[15] = v78;

      v80 = v313;
      v81 = v327;
      v327[16] = v376;
      v81[17] = v80;

      v82 = v314;
      v83 = v327;
      v327[18] = v377;
      v83[19] = v82;

      v84 = v315;
      v85 = v327;
      v327[20] = v378;
      v85[21] = v84;

      v86 = v316;
      v87 = v327;
      v327[22] = v379;
      v87[23] = v86;

      v88 = v317;
      v89 = v327;
      v327[24] = v380;
      v89[25] = v88;

      v90 = v318;
      v91 = v327;
      v327[26] = v381;
      v91[27] = v90;

      v92 = v319;
      v93 = v327;
      v327[28] = v382;
      v93[29] = v92;

      v94 = v320;
      v95 = v327;
      v327[30] = v383;
      v95[31] = v94;

      v96 = v321;
      v97 = v327;
      v327[32] = v384;
      v97[33] = v96;

      v98 = v322;
      v99 = v327;
      v327[34] = v385;
      v99[35] = v98;

      v100 = v323;
      v101 = v327;
      v327[36] = v386;
      v101[37] = v100;

      v102 = v324;
      v103 = v327;
      v327[38] = v387;
      v103[39] = v102;

      v104 = v326;
      v105 = v327;
      v327[40] = v388;
      v105[41] = v104;
      sub_1B0394964();

      if (os_log_type_enabled(v329, v330))
      {
        v106 = v423;
        v274 = sub_1B0E45D78();
        v273 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
        v275 = sub_1B03949A8(0, v273, v273);
        v276 = sub_1B03949A8(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
        v277 = v466;
        v466[0] = v274;
        v278 = &v465;
        v465 = v275;
        v279 = &v464;
        v464 = v276;
        sub_1B0394A48(3, v466);
        sub_1B0394A48(7, v277);
        v462 = v368;
        v463 = v305;
        sub_1B03949FC(&v462, v277, v278, v279);
        v280 = v106;
        if (v106)
        {

          __break(1u);
        }

        else
        {
          v462 = v369;
          v463 = v306;
          sub_1B03949FC(&v462, v466, &v465, &v464);
          v272 = 0;
          v462 = v370;
          v463 = v307;
          sub_1B03949FC(&v462, v466, &v465, &v464);
          v271 = 0;
          v462 = v371;
          v463 = v308;
          sub_1B03949FC(&v462, v466, &v465, &v464);
          v270 = 0;
          v462 = v372;
          v463 = v309;
          sub_1B03949FC(&v462, v466, &v465, &v464);
          v269 = 0;
          v462 = v373;
          v463 = v310;
          sub_1B03949FC(&v462, v466, &v465, &v464);
          v268 = 0;
          v462 = v374;
          v463 = v311;
          sub_1B03949FC(&v462, v466, &v465, &v464);
          v267 = 0;
          v462 = v375;
          v463 = v312;
          sub_1B03949FC(&v462, v466, &v465, &v464);
          v266 = 0;
          v462 = v376;
          v463 = v313;
          sub_1B03949FC(&v462, v466, &v465, &v464);
          v265 = 0;
          v462 = v377;
          v463 = v314;
          sub_1B03949FC(&v462, v466, &v465, &v464);
          v264 = 0;
          v462 = v378;
          v463 = v315;
          sub_1B03949FC(&v462, v466, &v465, &v464);
          v263 = 0;
          v462 = v379;
          v463 = v316;
          sub_1B03949FC(&v462, v466, &v465, &v464);
          v262 = 0;
          v462 = v380;
          v463 = v317;
          sub_1B03949FC(&v462, v466, &v465, &v464);
          v261 = 0;
          v462 = v381;
          v463 = v318;
          sub_1B03949FC(&v462, v466, &v465, &v464);
          v260 = 0;
          v462 = v382;
          v463 = v319;
          sub_1B03949FC(&v462, v466, &v465, &v464);
          v259 = 0;
          v462 = v383;
          v463 = v320;
          sub_1B03949FC(&v462, v466, &v465, &v464);
          v258 = 0;
          v462 = v384;
          v463 = v321;
          sub_1B03949FC(&v462, v466, &v465, &v464);
          v257 = 0;
          v462 = v385;
          v463 = v322;
          sub_1B03949FC(&v462, v466, &v465, &v464);
          v256 = 0;
          v462 = v386;
          v463 = v323;
          sub_1B03949FC(&v462, v466, &v465, &v464);
          v255 = 0;
          v462 = v387;
          v463 = v324;
          sub_1B03949FC(&v462, v466, &v465, &v464);
          v254 = 0;
          v462 = v388;
          v463 = v326;
          sub_1B03949FC(&v462, v466, &v465, &v464);
          _os_log_impl(&dword_1B0389000, v329, v330, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] In-progress message UID %u did download all segments, but did not have all data", v274, 0x31u);
          sub_1B03998A8(v275, 0, v273);
          sub_1B03998A8(v276, 1, MEMORY[0x1E69E7CA0] + 8);
          sub_1B0E45D58();
        }
      }

      else
      {
      }

      MEMORY[0x1E69E5920](v329);
      (*(v433 + 8))(v439, v432);
      sub_1B07AC53C(v344, v345, v346 & 1);

      v335 = 0;
      v336 = 0xF000000000000000;
    }

    else
    {
      v337 = v342;
      v338 = v347;
      v334 = v347;
      v333 = v342;
      v460 = v342;
      v461 = v347;
      v331 = &v457;
      v457 = v445;
      v458 = v446;
      v459 = v447;
      v332 = &v456;
      swift_beginAccess();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E29D0, &qword_1B0E9F010);
      sub_1B0E445B8();
      swift_endAccess();

      sub_1B07AC53C(v344, v345, v346 & 1);

      v335 = v333;
      v336 = v334;
    }
  }

  return v335;
}

uint64_t sub_1B08B12BC@<X0>(uint64_t a1@<X0>, int a2@<W1>, unsigned int a3@<W2>, int a4@<W3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _DWORD *a9@<X8>, uint64_t a10)
{
  v386 = a9;
  v494 = a1;
  v495 = a2;
  v493 = a3;
  v482 = a4;
  v483 = a5;
  v484 = a6;
  v485 = a7;
  v486 = a8;
  v487 = a10;
  v496 = 0;
  v388 = sub_1B074E050;
  v389 = sub_1B03F7AE0;
  v390 = sub_1B07AC984;
  v391 = sub_1B0394C30;
  v392 = sub_1B0394C24;
  v393 = sub_1B074DFFC;
  v394 = sub_1B039BA88;
  v395 = sub_1B039BB94;
  v396 = sub_1B0394C24;
  v397 = sub_1B039BBA0;
  v398 = sub_1B039BC08;
  v399 = 0x786F626C69616DLL;
  v400 = sub_1B06BA324;
  v401 = sub_1B074E0E4;
  v402 = sub_1B039BCF8;
  v403 = sub_1B07AB020;
  v404 = sub_1B039BC08;
  v405 = sub_1B03FB220;
  v406 = sub_1B039BCF8;
  v407 = sub_1B0398F5C;
  v408 = sub_1B0398F5C;
  v409 = sub_1B0399178;
  v410 = sub_1B0398F5C;
  v411 = sub_1B0398F5C;
  v412 = sub_1B039BA94;
  v413 = sub_1B0398F5C;
  v414 = sub_1B0398F5C;
  v415 = sub_1B0399178;
  v416 = sub_1B0398F5C;
  v417 = sub_1B0398F5C;
  v418 = sub_1B03991EC;
  v419 = sub_1B0398F5C;
  v420 = sub_1B0398F5C;
  v421 = sub_1B03993BC;
  v422 = sub_1B0398F5C;
  v423 = sub_1B0398F5C;
  v424 = sub_1B039BCEC;
  v425 = sub_1B0398F5C;
  v426 = sub_1B0398F5C;
  v427 = sub_1B03991EC;
  v428 = sub_1B0398F5C;
  v429 = sub_1B0398F5C;
  v430 = sub_1B039BCEC;
  v431 = sub_1B074E050;
  v432 = sub_1B03F7AE0;
  v433 = sub_1B0394C24;
  v434 = sub_1B074DFFC;
  v435 = sub_1B039BA88;
  v436 = sub_1B0394C24;
  v437 = sub_1B039BBA0;
  v438 = sub_1B039BC08;
  v439 = sub_1B06BA324;
  v440 = sub_1B074E0E4;
  v441 = sub_1B039BCF8;
  v442 = sub_1B07AB020;
  v443 = sub_1B039BC08;
  v444 = sub_1B0398F5C;
  v445 = sub_1B0398F5C;
  v446 = sub_1B0399178;
  v447 = sub_1B0398F5C;
  v448 = sub_1B0398F5C;
  v449 = sub_1B039BA94;
  v450 = sub_1B0398F5C;
  v451 = sub_1B0398F5C;
  v452 = sub_1B0399178;
  v453 = sub_1B0398F5C;
  v454 = sub_1B0398F5C;
  v455 = sub_1B03991EC;
  v456 = sub_1B0398F5C;
  v457 = sub_1B0398F5C;
  v458 = sub_1B03993BC;
  v459 = sub_1B0398F5C;
  v460 = sub_1B0398F5C;
  v461 = sub_1B039BCEC;
  v462 = sub_1B0398F5C;
  v463 = sub_1B0398F5C;
  v464 = sub_1B03991EC;
  v545 = 0;
  v543 = 0;
  v544 = 0;
  v542 = 0;
  v541 = 0;
  v540 = 0;
  v538 = 0;
  v539 = 0;
  v537 = 0;
  v536 = 0;
  v535 = 0;
  v532 = 0;
  v533 = 0;
  v534 = 0;
  v465 = 0;
  v520 = 0;
  v521 = 0;
  v522 = 0;
  v501 = 0;
  v466 = _s6LoggerVMa_1(0);
  v467 = (*(*(v466 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v468 = v219 - v467;
  v469 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v470 = v219 - v469;
  v471 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v14);
  v472 = v219 - v471;
  v473 = sub_1B0E439A8();
  v474 = *(v473 - 8);
  v475 = v473 - 8;
  v476 = (*(v474 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v473);
  v477 = v219 - v476;
  v478 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v219 - v476);
  v479 = v219 - v478;
  v480 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E29F0, &unk_1B0E9F030) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v501);
  v481 = (v219 - v480);
  v488 = type metadata accessor for InProgressMessageDownload.Completed(v16);
  v489 = *(v488 - 8);
  v490 = v488 - 8;
  v491 = (*(v489 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v494);
  v492 = (v219 - v491);
  v545 = v219 - v491;
  v543 = v17;
  v544 = v18;
  v542 = v19;
  v541 = v20 & 1;
  v540 = v21;
  v538 = v22;
  v539 = v23;
  v537 = v24;
  v536 = v25;
  v535 = v10;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
  v498 = v26;
  v499 = v27;
  v500 = v28;
  LODWORD(v532) = v26;
  v533 = v27;
  v534 = v28;
  v497 = &v531;
  swift_beginAccess();
  v505 = *(v10 + 16);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  swift_endAccess();
  v503 = &v528;
  v528 = v498;
  v529 = v499;
  v530 = v500;
  v502 = type metadata accessor for InProgressMessageDownload(v501);
  v504 = sub_1B08AC714();
  v506 = sub_1B0E44638();
  v507 = v29;
  v508 = v30;

  if (v508 == 255)
  {
    (*(v474 + 16))(v477, v487, v473);
    sub_1B074B69C(v487, v472);
    sub_1B074B69C(v472, v470);
    sub_1B074E41C(v472, v468);
    v132 = (v470 + *(v466 + 20));
    v230 = *v132;
    v231 = *(v132 + 1);
    v232 = *(v132 + 1);
    v233 = *(v132 + 4);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B074B764(v470);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v229 = 36;
    v249 = 7;
    v133 = swift_allocObject();
    v134 = v231;
    v135 = v232;
    v136 = v233;
    v236 = v133;
    *(v133 + 16) = v230;
    *(v133 + 20) = v134;
    *(v133 + 24) = v135;
    *(v133 + 32) = v136;
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v137 = swift_allocObject();
    v138 = v231;
    v139 = v232;
    v140 = v233;
    v228 = v137;
    *(v137 + 16) = v230;
    *(v137 + 20) = v138;
    *(v137 + 24) = v139;
    *(v137 + 32) = v140;

    v248 = 32;
    v141 = swift_allocObject();
    v142 = v228;
    v240 = v141;
    *(v141 + 16) = v431;
    *(v141 + 24) = v142;
    sub_1B0394868();
    sub_1B0394868();

    v143 = swift_allocObject();
    v144 = v231;
    v145 = v232;
    v146 = v233;
    v147 = v143;
    v148 = v468;
    v244 = v147;
    *(v147 + 16) = v230;
    *(v147 + 20) = v144;
    *(v147 + 24) = v145;
    *(v147 + 32) = v146;
    sub_1B074B764(v148);
    v234 = swift_allocObject();
    *(v234 + 16) = v493;

    v149 = swift_allocObject();
    v150 = v234;
    v250 = v149;
    *(v149 + 16) = v432;
    *(v149 + 24) = v150;

    v276 = sub_1B0E43988();
    v277 = sub_1B0E458E8();
    v246 = 17;
    v252 = swift_allocObject();
    v238 = 16;
    *(v252 + 16) = 16;
    v253 = swift_allocObject();
    v247 = 4;
    *(v253 + 16) = 4;
    v151 = swift_allocObject();
    v235 = v151;
    *(v151 + 16) = v391;
    *(v151 + 24) = 0;
    v152 = swift_allocObject();
    v153 = v235;
    v254 = v152;
    *(v152 + 16) = v433;
    *(v152 + 24) = v153;
    v255 = swift_allocObject();
    *(v255 + 16) = 0;
    v256 = swift_allocObject();
    *(v256 + 16) = 1;
    v154 = swift_allocObject();
    v155 = v236;
    v237 = v154;
    *(v154 + 16) = v434;
    *(v154 + 24) = v155;
    v156 = swift_allocObject();
    v157 = v237;
    v257 = v156;
    *(v156 + 16) = v435;
    *(v156 + 24) = v157;
    v258 = swift_allocObject();
    *(v258 + 16) = v238;
    v259 = swift_allocObject();
    *(v259 + 16) = v247;
    v158 = swift_allocObject();
    v239 = v158;
    *(v158 + 16) = v395;
    *(v158 + 24) = 0;
    v159 = swift_allocObject();
    v160 = v239;
    v260 = v159;
    *(v159 + 16) = v436;
    *(v159 + 24) = v160;
    v261 = swift_allocObject();
    *(v261 + 16) = 0;
    v262 = swift_allocObject();
    *(v262 + 16) = v247;
    v161 = swift_allocObject();
    v162 = v240;
    v241 = v161;
    *(v161 + 16) = v437;
    *(v161 + 24) = v162;
    v163 = swift_allocObject();
    v164 = v241;
    v263 = v163;
    *(v163 + 16) = v438;
    *(v163 + 24) = v164;
    v264 = swift_allocObject();
    *(v264 + 16) = 112;
    v265 = swift_allocObject();
    v243 = 8;
    *(v265 + 16) = 8;
    v242 = swift_allocObject();
    *(v242 + 16) = v399;
    v165 = swift_allocObject();
    v166 = v242;
    v266 = v165;
    *(v165 + 16) = v439;
    *(v165 + 24) = v166;
    v267 = swift_allocObject();
    *(v267 + 16) = 37;
    v268 = swift_allocObject();
    *(v268 + 16) = v243;
    v167 = swift_allocObject();
    v168 = v244;
    v245 = v167;
    *(v167 + 16) = v440;
    *(v167 + 24) = v168;
    v169 = swift_allocObject();
    v170 = v245;
    v269 = v169;
    *(v169 + 16) = v441;
    *(v169 + 24) = v170;
    v270 = swift_allocObject();
    *(v270 + 16) = 0;
    v271 = swift_allocObject();
    *(v271 + 16) = v247;
    v171 = swift_allocObject();
    v172 = v250;
    v251 = v171;
    *(v171 + 16) = v442;
    *(v171 + 24) = v172;
    v173 = swift_allocObject();
    v174 = v251;
    v273 = v173;
    *(v173 + 16) = v443;
    *(v173 + 24) = v174;
    v275 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v272 = sub_1B0E46A48();
    v274 = v175;

    v176 = v252;
    v177 = v274;
    *v274 = v444;
    v177[1] = v176;

    v178 = v253;
    v179 = v274;
    v274[2] = v445;
    v179[3] = v178;

    v180 = v254;
    v181 = v274;
    v274[4] = v446;
    v181[5] = v180;

    v182 = v255;
    v183 = v274;
    v274[6] = v447;
    v183[7] = v182;

    v184 = v256;
    v185 = v274;
    v274[8] = v448;
    v185[9] = v184;

    v186 = v257;
    v187 = v274;
    v274[10] = v449;
    v187[11] = v186;

    v188 = v258;
    v189 = v274;
    v274[12] = v450;
    v189[13] = v188;

    v190 = v259;
    v191 = v274;
    v274[14] = v451;
    v191[15] = v190;

    v192 = v260;
    v193 = v274;
    v274[16] = v452;
    v193[17] = v192;

    v194 = v261;
    v195 = v274;
    v274[18] = v453;
    v195[19] = v194;

    v196 = v262;
    v197 = v274;
    v274[20] = v454;
    v197[21] = v196;

    v198 = v263;
    v199 = v274;
    v274[22] = v455;
    v199[23] = v198;

    v200 = v264;
    v201 = v274;
    v274[24] = v456;
    v201[25] = v200;

    v202 = v265;
    v203 = v274;
    v274[26] = v457;
    v203[27] = v202;

    v204 = v266;
    v205 = v274;
    v274[28] = v458;
    v205[29] = v204;

    v206 = v267;
    v207 = v274;
    v274[30] = v459;
    v207[31] = v206;

    v208 = v268;
    v209 = v274;
    v274[32] = v460;
    v209[33] = v208;

    v210 = v269;
    v211 = v274;
    v274[34] = v461;
    v211[35] = v210;

    v212 = v270;
    v213 = v274;
    v274[36] = v462;
    v213[37] = v212;

    v214 = v271;
    v215 = v274;
    v274[38] = v463;
    v215[39] = v214;

    v216 = v273;
    v217 = v274;
    v274[40] = v464;
    v217[41] = v216;
    sub_1B0394964();

    if (os_log_type_enabled(v276, v277))
    {
      v218 = v465;
      v221 = sub_1B0E45D78();
      v220 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v222 = sub_1B03949A8(0, v220, v220);
      v223 = sub_1B03949A8(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v224 = &v527;
      v527 = v221;
      v225 = &v526;
      v526 = v222;
      v226 = &v525;
      v525 = v223;
      sub_1B0394A48(3, &v527);
      sub_1B0394A48(7, v224);
      v523 = v444;
      v524 = v252;
      sub_1B03949FC(&v523, v224, v225, v226);
      v227 = v218;
      if (v218)
      {

        __break(1u);
      }

      else
      {
        v523 = v445;
        v524 = v253;
        sub_1B03949FC(&v523, &v527, &v526, &v525);
        v219[19] = 0;
        v523 = v446;
        v524 = v254;
        sub_1B03949FC(&v523, &v527, &v526, &v525);
        v219[18] = 0;
        v523 = v447;
        v524 = v255;
        sub_1B03949FC(&v523, &v527, &v526, &v525);
        v219[17] = 0;
        v523 = v448;
        v524 = v256;
        sub_1B03949FC(&v523, &v527, &v526, &v525);
        v219[16] = 0;
        v523 = v449;
        v524 = v257;
        sub_1B03949FC(&v523, &v527, &v526, &v525);
        v219[15] = 0;
        v523 = v450;
        v524 = v258;
        sub_1B03949FC(&v523, &v527, &v526, &v525);
        v219[14] = 0;
        v523 = v451;
        v524 = v259;
        sub_1B03949FC(&v523, &v527, &v526, &v525);
        v219[13] = 0;
        v523 = v452;
        v524 = v260;
        sub_1B03949FC(&v523, &v527, &v526, &v525);
        v219[12] = 0;
        v523 = v453;
        v524 = v261;
        sub_1B03949FC(&v523, &v527, &v526, &v525);
        v219[11] = 0;
        v523 = v454;
        v524 = v262;
        sub_1B03949FC(&v523, &v527, &v526, &v525);
        v219[10] = 0;
        v523 = v455;
        v524 = v263;
        sub_1B03949FC(&v523, &v527, &v526, &v525);
        v219[9] = 0;
        v523 = v456;
        v524 = v264;
        sub_1B03949FC(&v523, &v527, &v526, &v525);
        v219[8] = 0;
        v523 = v457;
        v524 = v265;
        sub_1B03949FC(&v523, &v527, &v526, &v525);
        v219[7] = 0;
        v523 = v458;
        v524 = v266;
        sub_1B03949FC(&v523, &v527, &v526, &v525);
        v219[6] = 0;
        v523 = v459;
        v524 = v267;
        sub_1B03949FC(&v523, &v527, &v526, &v525);
        v219[5] = 0;
        v523 = v460;
        v524 = v268;
        sub_1B03949FC(&v523, &v527, &v526, &v525);
        v219[4] = 0;
        v523 = v461;
        v524 = v269;
        sub_1B03949FC(&v523, &v527, &v526, &v525);
        v219[3] = 0;
        v523 = v462;
        v524 = v270;
        sub_1B03949FC(&v523, &v527, &v526, &v525);
        v219[2] = 0;
        v523 = v463;
        v524 = v271;
        sub_1B03949FC(&v523, &v527, &v526, &v525);
        v219[1] = 0;
        v523 = v464;
        v524 = v273;
        sub_1B03949FC(&v523, &v527, &v526, &v525);
        _os_log_impl(&dword_1B0389000, v276, v277, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] No in-progress download for UID %u.", v221, 0x31u);
        sub_1B03998A8(v222, 0, v220);
        sub_1B03998A8(v223, 1, MEMORY[0x1E69E7CA0] + 8);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v276);
    (*(v474 + 8))(v477, v473);
    (*(v489 + 56))(v386, 1, 2, v488);
  }

  else
  {
    v383 = v506;
    v384 = v507;
    v385 = v508;
    v381 = v508;
    v380 = v507;
    v379 = v506;
    v520 = v506;
    v521 = v507;
    v382 = 1;
    v522 = v508 & 1;
    v368 = &v519;
    v372 = 32;
    v373 = 0;
    swift_beginAccess();
    v369 = *(v387 + 16);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    swift_endAccess();
    sub_1B08AD370(v379, v380, v381 & 1);
    v375 = &unk_1F26DB2D8;
    sub_1B0E44798();
    v371 = v518[5];
    v370 = v518[3];

    sub_1B07735E0(v482 & 1, v483, v487);

    sub_1B07AC53C(v379, v380, v381 & 1);
    v374 = v518;
    swift_beginAccess();
    v376 = *(v387 + 16);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    swift_endAccess();
    sub_1B08AD370(v379, v380, v381 & 1);
    sub_1B0E44798();
    v378 = v517[3];
    v377 = v517[1];

    sub_1B0394868();
    sub_1B076CC6C(v484);

    sub_1B07AC53C(v379, v380, v381 & 1);
    if ((*(v489 + 48))(v481, v382, v488) == 1)
    {
      v32 = v479;
      sub_1B08BE984(v481);
      (*(v474 + 16))(v32, v487, v473);
      sub_1B074B69C(v487, v472);
      sub_1B074B69C(v472, v470);
      sub_1B074E41C(v472, v468);
      v33 = (v470 + *(v466 + 20));
      v310 = *v33;
      v311 = *(v33 + 1);
      v312 = *(v33 + 1);
      v313 = *(v33 + 4);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B074B764(v470);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v309 = 36;
      v333 = 7;
      v34 = swift_allocObject();
      v35 = v311;
      v36 = v312;
      v37 = v313;
      v318 = v34;
      *(v34 + 16) = v310;
      *(v34 + 20) = v35;
      *(v34 + 24) = v36;
      *(v34 + 32) = v37;
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v38 = swift_allocObject();
      v39 = v311;
      v40 = v312;
      v41 = v313;
      v308 = v38;
      *(v38 + 16) = v310;
      *(v38 + 20) = v39;
      *(v38 + 24) = v40;
      *(v38 + 32) = v41;

      v332 = 32;
      v42 = swift_allocObject();
      v43 = v308;
      v322 = v42;
      *(v42 + 16) = v388;
      *(v42 + 24) = v43;
      sub_1B0394868();
      sub_1B0394868();

      v44 = swift_allocObject();
      v45 = v311;
      v46 = v312;
      v47 = v313;
      v48 = v44;
      v49 = v468;
      v325 = v48;
      *(v48 + 16) = v310;
      *(v48 + 20) = v45;
      *(v48 + 24) = v46;
      *(v48 + 32) = v47;
      sub_1B074B764(v49);
      v315 = 20;
      v314 = swift_allocObject();
      *(v314 + 16) = v493;

      v50 = swift_allocObject();
      v51 = v314;
      v328 = v50;
      *(v50 + 16) = v389;
      *(v50 + 24) = v51;

      v316 = swift_allocObject();
      *(v316 + 16) = v483;

      v52 = swift_allocObject();
      v53 = v316;
      v334 = v52;
      *(v52 + 16) = v390;
      *(v52 + 24) = v53;

      v364 = sub_1B0E43988();
      v365 = sub_1B0E45908();
      v330 = 17;
      v337 = swift_allocObject();
      v320 = 16;
      *(v337 + 16) = 16;
      v338 = swift_allocObject();
      v327 = 4;
      *(v338 + 16) = 4;
      v54 = swift_allocObject();
      v317 = v54;
      *(v54 + 16) = v391;
      *(v54 + 24) = 0;
      v55 = swift_allocObject();
      v56 = v317;
      v339 = v55;
      *(v55 + 16) = v392;
      *(v55 + 24) = v56;
      v340 = swift_allocObject();
      *(v340 + 16) = 0;
      v341 = swift_allocObject();
      *(v341 + 16) = 1;
      v57 = swift_allocObject();
      v58 = v318;
      v319 = v57;
      *(v57 + 16) = v393;
      *(v57 + 24) = v58;
      v59 = swift_allocObject();
      v60 = v319;
      v342 = v59;
      *(v59 + 16) = v394;
      *(v59 + 24) = v60;
      v343 = swift_allocObject();
      *(v343 + 16) = v320;
      v344 = swift_allocObject();
      *(v344 + 16) = v327;
      v61 = swift_allocObject();
      v321 = v61;
      *(v61 + 16) = v395;
      *(v61 + 24) = 0;
      v62 = swift_allocObject();
      v63 = v321;
      v345 = v62;
      *(v62 + 16) = v396;
      *(v62 + 24) = v63;
      v346 = swift_allocObject();
      *(v346 + 16) = 0;
      v347 = swift_allocObject();
      *(v347 + 16) = v327;
      v64 = swift_allocObject();
      v65 = v322;
      v323 = v64;
      *(v64 + 16) = v397;
      *(v64 + 24) = v65;
      v66 = swift_allocObject();
      v67 = v323;
      v348 = v66;
      *(v66 + 16) = v398;
      *(v66 + 24) = v67;
      v349 = swift_allocObject();
      *(v349 + 16) = 112;
      v350 = swift_allocObject();
      v331 = 8;
      *(v350 + 16) = 8;
      v336 = 24;
      v324 = swift_allocObject();
      *(v324 + 16) = v399;
      v68 = swift_allocObject();
      v69 = v324;
      v351 = v68;
      *(v68 + 16) = v400;
      *(v68 + 24) = v69;
      v352 = swift_allocObject();
      *(v352 + 16) = 37;
      v353 = swift_allocObject();
      *(v353 + 16) = v331;
      v70 = swift_allocObject();
      v71 = v325;
      v326 = v70;
      *(v70 + 16) = v401;
      *(v70 + 24) = v71;
      v72 = swift_allocObject();
      v73 = v326;
      v354 = v72;
      *(v72 + 16) = v402;
      *(v72 + 24) = v73;
      v355 = swift_allocObject();
      *(v355 + 16) = 0;
      v356 = swift_allocObject();
      *(v356 + 16) = v327;
      v74 = swift_allocObject();
      v75 = v328;
      v329 = v74;
      *(v74 + 16) = v403;
      *(v74 + 24) = v75;
      v76 = swift_allocObject();
      v77 = v329;
      v357 = v76;
      *(v76 + 16) = v404;
      *(v76 + 24) = v77;
      v358 = swift_allocObject();
      *(v358 + 16) = 32;
      v359 = swift_allocObject();
      *(v359 + 16) = v331;
      v78 = swift_allocObject();
      v79 = v334;
      v335 = v78;
      *(v78 + 16) = v405;
      *(v78 + 24) = v79;
      v80 = swift_allocObject();
      v81 = v335;
      v361 = v80;
      *(v80 + 16) = v406;
      *(v80 + 24) = v81;
      v363 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
      v360 = sub_1B0E46A48();
      v362 = v82;

      v83 = v337;
      v84 = v362;
      *v362 = v407;
      v84[1] = v83;

      v85 = v338;
      v86 = v362;
      v362[2] = v408;
      v86[3] = v85;

      v87 = v339;
      v88 = v362;
      v362[4] = v409;
      v88[5] = v87;

      v89 = v340;
      v90 = v362;
      v362[6] = v410;
      v90[7] = v89;

      v91 = v341;
      v92 = v362;
      v362[8] = v411;
      v92[9] = v91;

      v93 = v342;
      v94 = v362;
      v362[10] = v412;
      v94[11] = v93;

      v95 = v343;
      v96 = v362;
      v362[12] = v413;
      v96[13] = v95;

      v97 = v344;
      v98 = v362;
      v362[14] = v414;
      v98[15] = v97;

      v99 = v345;
      v100 = v362;
      v362[16] = v415;
      v100[17] = v99;

      v101 = v346;
      v102 = v362;
      v362[18] = v416;
      v102[19] = v101;

      v103 = v347;
      v104 = v362;
      v362[20] = v417;
      v104[21] = v103;

      v105 = v348;
      v106 = v362;
      v362[22] = v418;
      v106[23] = v105;

      v107 = v349;
      v108 = v362;
      v362[24] = v419;
      v108[25] = v107;

      v109 = v350;
      v110 = v362;
      v362[26] = v420;
      v110[27] = v109;

      v111 = v351;
      v112 = v362;
      v362[28] = v421;
      v112[29] = v111;

      v113 = v352;
      v114 = v362;
      v362[30] = v422;
      v114[31] = v113;

      v115 = v353;
      v116 = v362;
      v362[32] = v423;
      v116[33] = v115;

      v117 = v354;
      v118 = v362;
      v362[34] = v424;
      v118[35] = v117;

      v119 = v355;
      v120 = v362;
      v362[36] = v425;
      v120[37] = v119;

      v121 = v356;
      v122 = v362;
      v362[38] = v426;
      v122[39] = v121;

      v123 = v357;
      v124 = v362;
      v362[40] = v427;
      v124[41] = v123;

      v125 = v358;
      v126 = v362;
      v362[42] = v428;
      v126[43] = v125;

      v127 = v359;
      v128 = v362;
      v362[44] = v429;
      v128[45] = v127;

      v129 = v361;
      v130 = v362;
      v362[46] = v430;
      v130[47] = v129;
      sub_1B0394964();

      if (os_log_type_enabled(v364, v365))
      {
        v131 = v465;
        v301 = sub_1B0E45D78();
        v300 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
        v302 = sub_1B03949A8(0, v300, v300);
        v303 = sub_1B03949A8(2, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
        v304 = v517;
        v517[0] = v301;
        v305 = &v516;
        v516 = v302;
        v306 = &v515;
        v515 = v303;
        sub_1B0394A48(3, v517);
        sub_1B0394A48(8, v304);
        v513 = v407;
        v514 = v337;
        sub_1B03949FC(&v513, v304, v305, v306);
        v307 = v131;
        if (v131)
        {

          __break(1u);
        }

        else
        {
          v513 = v408;
          v514 = v338;
          sub_1B03949FC(&v513, v517, &v516, &v515);
          v299 = 0;
          v513 = v409;
          v514 = v339;
          sub_1B03949FC(&v513, v517, &v516, &v515);
          v298 = 0;
          v513 = v410;
          v514 = v340;
          sub_1B03949FC(&v513, v517, &v516, &v515);
          v297 = 0;
          v513 = v411;
          v514 = v341;
          sub_1B03949FC(&v513, v517, &v516, &v515);
          v296 = 0;
          v513 = v412;
          v514 = v342;
          sub_1B03949FC(&v513, v517, &v516, &v515);
          v295 = 0;
          v513 = v413;
          v514 = v343;
          sub_1B03949FC(&v513, v517, &v516, &v515);
          v294 = 0;
          v513 = v414;
          v514 = v344;
          sub_1B03949FC(&v513, v517, &v516, &v515);
          v293 = 0;
          v513 = v415;
          v514 = v345;
          sub_1B03949FC(&v513, v517, &v516, &v515);
          v292 = 0;
          v513 = v416;
          v514 = v346;
          sub_1B03949FC(&v513, v517, &v516, &v515);
          v291 = 0;
          v513 = v417;
          v514 = v347;
          sub_1B03949FC(&v513, v517, &v516, &v515);
          v290 = 0;
          v513 = v418;
          v514 = v348;
          sub_1B03949FC(&v513, v517, &v516, &v515);
          v289 = 0;
          v513 = v419;
          v514 = v349;
          sub_1B03949FC(&v513, v517, &v516, &v515);
          v288 = 0;
          v513 = v420;
          v514 = v350;
          sub_1B03949FC(&v513, v517, &v516, &v515);
          v287 = 0;
          v513 = v421;
          v514 = v351;
          sub_1B03949FC(&v513, v517, &v516, &v515);
          v286 = 0;
          v513 = v422;
          v514 = v352;
          sub_1B03949FC(&v513, v517, &v516, &v515);
          v285 = 0;
          v513 = v423;
          v514 = v353;
          sub_1B03949FC(&v513, v517, &v516, &v515);
          v284 = 0;
          v513 = v424;
          v514 = v354;
          sub_1B03949FC(&v513, v517, &v516, &v515);
          v283 = 0;
          v513 = v425;
          v514 = v355;
          sub_1B03949FC(&v513, v517, &v516, &v515);
          v282 = 0;
          v513 = v426;
          v514 = v356;
          sub_1B03949FC(&v513, v517, &v516, &v515);
          v281 = 0;
          v513 = v427;
          v514 = v357;
          sub_1B03949FC(&v513, v517, &v516, &v515);
          v280 = 0;
          v513 = v428;
          v514 = v358;
          sub_1B03949FC(&v513, v517, &v516, &v515);
          v279 = 0;
          v513 = v429;
          v514 = v359;
          sub_1B03949FC(&v513, v517, &v516, &v515);
          v278 = 0;
          v513 = v430;
          v514 = v361;
          sub_1B03949FC(&v513, v517, &v516, &v515);
          _os_log_impl(&dword_1B0389000, v364, v365, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] In-progress message UID %u did download all segments, but still waiting for async writes (%s).", v301, 0x3Bu);
          sub_1B03998A8(v302, 0, v300);
          sub_1B03998A8(v303, 2, MEMORY[0x1E69E7CA0] + 8);
          sub_1B0E45D58();
        }
      }

      else
      {
      }

      MEMORY[0x1E69E5920](v364);
      (*(v474 + 8))(v479, v473);
      (*(v489 + 56))(v386, 2, 2, v488);
      sub_1B07AC53C(v379, v380, v381 & 1);
    }

    else
    {
      sub_1B07B02D8(v481, v492);
      v366 = &v510;
      v510 = v498;
      v511 = v499;
      v512 = v500;
      v367 = &v509;
      swift_beginAccess();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E29D0, &qword_1B0E9F010);
      sub_1B0E445B8();
      swift_endAccess();

      sub_1B07AFC78(v492, v386);
      (*(v489 + 56))(v386, 0, 2, v488);
      sub_1B08BED00(v492);
      sub_1B07AC53C(v379, v380, v381 & 1);
    }
  }
}

uint64_t sub_1B08B4670(uint64_t a1, int a2, unsigned int a3, uint64_t a4)
{
  v288 = a1;
  v289 = a2;
  v287 = a3;
  v281 = a4;
  v290 = 0;
  v237 = sub_1B074E050;
  v238 = sub_1B03F7AE0;
  v239 = sub_1B0394C30;
  v240 = sub_1B0394C24;
  v241 = sub_1B074DFFC;
  v242 = sub_1B039BA88;
  v243 = sub_1B039BB94;
  v244 = sub_1B0394C24;
  v245 = sub_1B039BBA0;
  v246 = sub_1B039BC08;
  v247 = sub_1B06BA324;
  v248 = sub_1B074E0E4;
  v249 = sub_1B039BCF8;
  v250 = sub_1B07AB020;
  v251 = sub_1B039BC08;
  v252 = sub_1B0398F5C;
  v253 = sub_1B0398F5C;
  v254 = sub_1B0399178;
  v255 = sub_1B0398F5C;
  v256 = sub_1B0398F5C;
  v257 = sub_1B039BA94;
  v258 = sub_1B0398F5C;
  v259 = sub_1B0398F5C;
  v260 = sub_1B0399178;
  v261 = sub_1B0398F5C;
  v262 = sub_1B0398F5C;
  v263 = sub_1B03991EC;
  v264 = sub_1B0398F5C;
  v265 = sub_1B0398F5C;
  v266 = sub_1B03993BC;
  v267 = sub_1B0398F5C;
  v268 = sub_1B0398F5C;
  v269 = sub_1B039BCEC;
  v270 = sub_1B0398F5C;
  v271 = sub_1B0398F5C;
  v272 = sub_1B03991EC;
  v346 = 0;
  v347 = 0;
  v345 = 0;
  v344 = 0;
  v343 = 0;
  v340 = 0;
  v341 = 0;
  v342 = 0;
  v273 = 0;
  v328 = 0;
  v329 = 0;
  v330 = 0;
  v322 = 0;
  v311 = 0;
  v295 = 0;
  v274 = _s6LoggerVMa_1(0);
  v275 = (*(*(v274 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v276 = v110 - v275;
  v277 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v278 = v110 - v277;
  v279 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v280 = v110 - v279;
  v282 = sub_1B0E439A8();
  v283 = *(v282 - 8);
  v284 = v282 - 8;
  v285 = (*(v283 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v288);
  v286 = v110 - v285;
  v346 = v9;
  v347 = v10;
  v345 = v11;
  v344 = v12;
  v343 = v4;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
  v292 = v13;
  v293 = v14;
  v294 = v15;
  LODWORD(v340) = v13;
  v341 = v14;
  v342 = v15;
  v291 = &v339;
  swift_beginAccess();
  v299 = *(v4 + 16);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  swift_endAccess();
  v297 = &v336;
  v336 = v292;
  v337 = v293;
  v338 = v294;
  v296 = type metadata accessor for InProgressMessageDownload(v295);
  v298 = sub_1B08AC714();
  v300 = sub_1B0E44638();
  v301 = v16;
  v302 = v17;

  if (v302 != 255)
  {
    v233 = v300;
    v234 = v301;
    v235 = v302;
    v231 = v302;
    v230 = v301;
    v229 = v300;
    v328 = v300;
    v329 = v301;
    v330 = v302 & 1;
    v222 = &v327;
    v224 = 32;
    v225 = 0;
    swift_beginAccess();
    v223 = *(v236 + 16);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    swift_endAccess();
    sub_1B08AD370(v229, v230, v231 & 1);
    sub_1B0E44798();
    v228 = v326[5];
    v227 = v326[3];

    v226 = v326;
    swift_beginAccess();
    v232 = *(v227 + 20);
    swift_endAccess();

    sub_1B07AC53C(v229, v230, v231 & 1);
    if (v232)
    {
      v217 = &v305;
      swift_beginAccess();
      v218 = *(v236 + 16);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      swift_endAccess();
      sub_1B08AD370(v229, v230, v231 & 1);
      sub_1B0E44798();
      v219 = v304;
      v220 = v303;

      sub_1B07AC53C(v229, v230, v231 & 1);
      sub_1B07AC53C(v229, v230, v231 & 1);

      return v220;
    }

    v197 = &v325;
    v199 = 32;
    v200 = 0;
    swift_beginAccess();
    v198 = *(v236 + 16);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    swift_endAccess();
    sub_1B08AD370(v229, v230, v231 & 1);
    sub_1B0E44798();
    v211 = v324[5];
    v203 = v324[3];

    v201 = (v203 + OBJC_IVAR____TtC7Message25InProgressMessageDownload_sections);
    v202 = v324;
    swift_beginAccess();
    v205 = *v201;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    swift_endAccess();

    v214 = 0;
    v204 = type metadata accessor for InProgressMessageDownload.Section(0);
    v209 = sub_1B07167A8();
    v207 = &type metadata for SectionSpecifier.Part;
    v206 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

    v210 = &v323;
    v323 = v206;
    v208 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E29F8, &qword_1B0E9F048);
    sub_1B08BF03C();
    v212 = sub_1B0E45598();

    sub_1B07AC53C(v229, v230, v231 & 1);
    v322 = v212;
    v321 = v212;
    v213 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1A20, &unk_1B0E9B5B0);
    sub_1B07F37E8();
    sub_1B0E45728();
    v216 = v320;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0E46A48();
    SectionSpecifier.Part.init(arrayLiteral:)();
    v215 = v18;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v318 = v216;
    v319 = v215;
    if (v216)
    {
      sub_1B074E7A8(&v318, v308);
      if (v319)
      {
        v194 = &v307;
        v307 = v308[0];
        v193 = &v306;
        v306 = v319;
        v195 = static SectionSpecifier.Part.__derived_struct_equals(_:_:)(v308[0], v319);
        sub_1B039E440(v193);
        sub_1B039E440(v194);
        sub_1B039E440(&v318);
        v196 = v195;
        goto LABEL_10;
      }

      sub_1B039E440(v308);
    }

    else if (!v319)
    {
      sub_1B039E440(&v318);
      v196 = 1;
LABEL_10:
      v192 = v196;

      if (v192)
      {
        v188 = v309;
        swift_beginAccess();
        v189 = *(v236 + 16);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        swift_endAccess();
        sub_1B08AD370(v229, v230, v231 & 1);
        sub_1B0E44798();
        v190 = v308[3];
        v191 = v308[1];

        sub_1B07AC53C(v229, v230, v231 & 1);

        sub_1B07AC53C(v229, v230, v231 & 1);

        return v191;
      }

      else
      {
        v177 = &v315;
        v181 = 32;
        v182 = 0;
        swift_beginAccess();
        v178 = *(v236 + 16);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        swift_endAccess();
        sub_1B08AD370(v229, v230, v231 & 1);
        sub_1B0E44798();
        v179 = v314[5];
        v180 = v314[3];

        v183 = (v180 + 24);
        v184 = v314;
        swift_beginAccess();
        v185 = v316;
        v186 = 177;
        memcpy(v316, v183, 0xB1uLL);
        sub_1B075DC38(v316, v313);
        swift_endAccess();
        v187 = v317;
        memcpy(v317, v185, v186);
        v19 = sub_1B075FACC(v187);
        if (v19 == 1)
        {

          sub_1B07AC53C(v229, v230, v231 & 1);

          sub_1B07AC53C(v229, v230, v231 & 1);

          return v295;
        }

        else
        {
          memcpy(__dst, v317, sizeof(__dst));

          sub_1B07AC53C(v229, v230, v231 & 1);
          v20 = BodyStructure.partsForWatch()();
          v174 = v312;
          v312[0] = v20;
          v312[1] = v21;
          v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26E0, &qword_1B0E9C688);
          sub_1B07F22F8();
          v175 = &type metadata for SectionSpecifier.Part;
          v176 = sub_1B0E45598();
          v311 = v176;
          if (sub_1B0E45538())
          {
            v169 = &v310;
            swift_beginAccess();
            v170 = *(v236 + 16);
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            swift_endAccess();
            sub_1B08AD370(v229, v230, v231 & 1);
            sub_1B0E44798();
            v171 = v309[5];
            v172 = v309[3];

            sub_1B07AC53C(v229, v230, v231 & 1);

            sub_1B075E648(v317);

            sub_1B07AC53C(v229, v230, v231 & 1);

            return v172;
          }

          else
          {

            sub_1B075E648(v317);

            sub_1B07AC53C(v229, v230, v231 & 1);

            return v295;
          }
        }
      }
    }

    sub_1B07F22C0();
    v196 = 0;
    goto LABEL_10;
  }

  (*(v283 + 16))(v286, v281, v282);
  sub_1B074B69C(v281, v280);
  sub_1B074B69C(v280, v278);
  sub_1B074E41C(v280, v276);
  v22 = (v278 + *(v274 + 20));
  v121 = *v22;
  v122 = *(v22 + 1);
  v123 = *(v22 + 1);
  v124 = *(v22 + 4);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B074B764(v278);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v120 = 36;
  v140 = 7;
  v23 = swift_allocObject();
  v24 = v122;
  v25 = v123;
  v26 = v124;
  v127 = v23;
  *(v23 + 16) = v121;
  *(v23 + 20) = v24;
  *(v23 + 24) = v25;
  *(v23 + 32) = v26;
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v27 = swift_allocObject();
  v28 = v122;
  v29 = v123;
  v30 = v124;
  v119 = v27;
  *(v27 + 16) = v121;
  *(v27 + 20) = v28;
  *(v27 + 24) = v29;
  *(v27 + 32) = v30;

  v139 = 32;
  v31 = swift_allocObject();
  v32 = v119;
  v131 = v31;
  *(v31 + 16) = v237;
  *(v31 + 24) = v32;
  sub_1B0394868();
  sub_1B0394868();

  v33 = swift_allocObject();
  v34 = v122;
  v35 = v123;
  v36 = v124;
  v37 = v33;
  v38 = v276;
  v135 = v37;
  *(v37 + 16) = v121;
  *(v37 + 20) = v34;
  *(v37 + 24) = v35;
  *(v37 + 32) = v36;
  sub_1B074B764(v38);
  v125 = swift_allocObject();
  *(v125 + 16) = v287;

  v39 = swift_allocObject();
  v40 = v125;
  v141 = v39;
  *(v39 + 16) = v238;
  *(v39 + 24) = v40;

  v167 = sub_1B0E43988();
  v168 = sub_1B0E458E8();
  v137 = 17;
  v143 = swift_allocObject();
  v129 = 16;
  *(v143 + 16) = 16;
  v144 = swift_allocObject();
  v138 = 4;
  *(v144 + 16) = 4;
  v41 = swift_allocObject();
  v126 = v41;
  *(v41 + 16) = v239;
  *(v41 + 24) = 0;
  v42 = swift_allocObject();
  v43 = v126;
  v145 = v42;
  *(v42 + 16) = v240;
  *(v42 + 24) = v43;
  v146 = swift_allocObject();
  *(v146 + 16) = 0;
  v147 = swift_allocObject();
  *(v147 + 16) = 1;
  v44 = swift_allocObject();
  v45 = v127;
  v128 = v44;
  *(v44 + 16) = v241;
  *(v44 + 24) = v45;
  v46 = swift_allocObject();
  v47 = v128;
  v148 = v46;
  *(v46 + 16) = v242;
  *(v46 + 24) = v47;
  v149 = swift_allocObject();
  *(v149 + 16) = v129;
  v150 = swift_allocObject();
  *(v150 + 16) = v138;
  v48 = swift_allocObject();
  v130 = v48;
  *(v48 + 16) = v243;
  *(v48 + 24) = 0;
  v49 = swift_allocObject();
  v50 = v130;
  v151 = v49;
  *(v49 + 16) = v244;
  *(v49 + 24) = v50;
  v152 = swift_allocObject();
  *(v152 + 16) = 0;
  v153 = swift_allocObject();
  *(v153 + 16) = v138;
  v51 = swift_allocObject();
  v52 = v131;
  v132 = v51;
  *(v51 + 16) = v245;
  *(v51 + 24) = v52;
  v53 = swift_allocObject();
  v54 = v132;
  v154 = v53;
  *(v53 + 16) = v246;
  *(v53 + 24) = v54;
  v155 = swift_allocObject();
  *(v155 + 16) = 112;
  v156 = swift_allocObject();
  v134 = 8;
  *(v156 + 16) = 8;
  v133 = swift_allocObject();
  *(v133 + 16) = 0x786F626C69616DLL;
  v55 = swift_allocObject();
  v56 = v133;
  v157 = v55;
  *(v55 + 16) = v247;
  *(v55 + 24) = v56;
  v158 = swift_allocObject();
  *(v158 + 16) = 37;
  v159 = swift_allocObject();
  *(v159 + 16) = v134;
  v57 = swift_allocObject();
  v58 = v135;
  v136 = v57;
  *(v57 + 16) = v248;
  *(v57 + 24) = v58;
  v59 = swift_allocObject();
  v60 = v136;
  v160 = v59;
  *(v59 + 16) = v249;
  *(v59 + 24) = v60;
  v161 = swift_allocObject();
  *(v161 + 16) = 0;
  v162 = swift_allocObject();
  *(v162 + 16) = v138;
  v61 = swift_allocObject();
  v62 = v141;
  v142 = v61;
  *(v61 + 16) = v250;
  *(v61 + 24) = v62;
  v63 = swift_allocObject();
  v64 = v142;
  v164 = v63;
  *(v63 + 16) = v251;
  *(v63 + 24) = v64;
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
  v163 = sub_1B0E46A48();
  v165 = v65;

  v66 = v143;
  v67 = v165;
  *v165 = v252;
  v67[1] = v66;

  v68 = v144;
  v69 = v165;
  v165[2] = v253;
  v69[3] = v68;

  v70 = v145;
  v71 = v165;
  v165[4] = v254;
  v71[5] = v70;

  v72 = v146;
  v73 = v165;
  v165[6] = v255;
  v73[7] = v72;

  v74 = v147;
  v75 = v165;
  v165[8] = v256;
  v75[9] = v74;

  v76 = v148;
  v77 = v165;
  v165[10] = v257;
  v77[11] = v76;

  v78 = v149;
  v79 = v165;
  v165[12] = v258;
  v79[13] = v78;

  v80 = v150;
  v81 = v165;
  v165[14] = v259;
  v81[15] = v80;

  v82 = v151;
  v83 = v165;
  v165[16] = v260;
  v83[17] = v82;

  v84 = v152;
  v85 = v165;
  v165[18] = v261;
  v85[19] = v84;

  v86 = v153;
  v87 = v165;
  v165[20] = v262;
  v87[21] = v86;

  v88 = v154;
  v89 = v165;
  v165[22] = v263;
  v89[23] = v88;

  v90 = v155;
  v91 = v165;
  v165[24] = v264;
  v91[25] = v90;

  v92 = v156;
  v93 = v165;
  v165[26] = v265;
  v93[27] = v92;

  v94 = v157;
  v95 = v165;
  v165[28] = v266;
  v95[29] = v94;

  v96 = v158;
  v97 = v165;
  v165[30] = v267;
  v97[31] = v96;

  v98 = v159;
  v99 = v165;
  v165[32] = v268;
  v99[33] = v98;

  v100 = v160;
  v101 = v165;
  v165[34] = v269;
  v101[35] = v100;

  v102 = v161;
  v103 = v165;
  v165[36] = v270;
  v103[37] = v102;

  v104 = v162;
  v105 = v165;
  v165[38] = v271;
  v105[39] = v104;

  v106 = v164;
  v107 = v165;
  v165[40] = v272;
  v107[41] = v106;
  sub_1B0394964();

  if (os_log_type_enabled(v167, v168))
  {
    v108 = v273;
    v112 = sub_1B0E45D78();
    v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
    v113 = sub_1B03949A8(0, v111, v111);
    v114 = sub_1B03949A8(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v115 = &v335;
    v335 = v112;
    v116 = &v334;
    v334 = v113;
    v117 = &v333;
    v333 = v114;
    sub_1B0394A48(3, &v335);
    sub_1B0394A48(7, v115);
    v331 = v252;
    v332 = v143;
    sub_1B03949FC(&v331, v115, v116, v117);
    v118 = v108;
    if (v108)
    {

      __break(1u);
    }

    else
    {
      v331 = v253;
      v332 = v144;
      sub_1B03949FC(&v331, &v335, &v334, &v333);
      v110[18] = 0;
      v331 = v254;
      v332 = v145;
      sub_1B03949FC(&v331, &v335, &v334, &v333);
      v110[17] = 0;
      v331 = v255;
      v332 = v146;
      sub_1B03949FC(&v331, &v335, &v334, &v333);
      v110[16] = 0;
      v331 = v256;
      v332 = v147;
      sub_1B03949FC(&v331, &v335, &v334, &v333);
      v110[15] = 0;
      v331 = v257;
      v332 = v148;
      sub_1B03949FC(&v331, &v335, &v334, &v333);
      v110[14] = 0;
      v331 = v258;
      v332 = v149;
      sub_1B03949FC(&v331, &v335, &v334, &v333);
      v110[13] = 0;
      v331 = v259;
      v332 = v150;
      sub_1B03949FC(&v331, &v335, &v334, &v333);
      v110[12] = 0;
      v331 = v260;
      v332 = v151;
      sub_1B03949FC(&v331, &v335, &v334, &v333);
      v110[11] = 0;
      v331 = v261;
      v332 = v152;
      sub_1B03949FC(&v331, &v335, &v334, &v333);
      v110[10] = 0;
      v331 = v262;
      v332 = v153;
      sub_1B03949FC(&v331, &v335, &v334, &v333);
      v110[9] = 0;
      v331 = v263;
      v332 = v154;
      sub_1B03949FC(&v331, &v335, &v334, &v333);
      v110[8] = 0;
      v331 = v264;
      v332 = v155;
      sub_1B03949FC(&v331, &v335, &v334, &v333);
      v110[7] = 0;
      v331 = v265;
      v332 = v156;
      sub_1B03949FC(&v331, &v335, &v334, &v333);
      v110[6] = 0;
      v331 = v266;
      v332 = v157;
      sub_1B03949FC(&v331, &v335, &v334, &v333);
      v110[5] = 0;
      v331 = v267;
      v332 = v158;
      sub_1B03949FC(&v331, &v335, &v334, &v333);
      v110[4] = 0;
      v331 = v268;
      v332 = v159;
      sub_1B03949FC(&v331, &v335, &v334, &v333);
      v110[3] = 0;
      v331 = v269;
      v332 = v160;
      sub_1B03949FC(&v331, &v335, &v334, &v333);
      v110[2] = 0;
      v331 = v270;
      v332 = v161;
      sub_1B03949FC(&v331, &v335, &v334, &v333);
      v110[1] = 0;
      v331 = v271;
      v332 = v162;
      sub_1B03949FC(&v331, &v335, &v334, &v333);
      v110[0] = 0;
      v331 = v272;
      v332 = v164;
      sub_1B03949FC(&v331, &v335, &v334, &v333);
      _os_log_impl(&dword_1B0389000, v167, v168, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] No in-progress download for UID %u.", v112, 0x31u);
      sub_1B03998A8(v113, 0, v111);
      sub_1B03998A8(v114, 1, MEMORY[0x1E69E7CA0] + 8);
      sub_1B0E45D58();
    }
  }

  else
  {
  }

  MEMORY[0x1E69E5920](v167);
  (*(v283 + 8))(v286, v282);

  return v295;
}

uint64_t sub_1B08B6774@<X0>(uint64_t a1@<X0>, int a2@<W1>, unsigned int a3@<W2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _DWORD *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v419 = a9;
  v534 = a1;
  v535 = a2;
  v533 = a3;
  v521 = a4;
  v522 = a5;
  v523 = a6;
  v524 = a7;
  v525 = a8;
  v530 = a10;
  v531 = a11;
  v526 = a12;
  v536 = 0;
  v421 = sub_1B074E050;
  v422 = sub_1B03F7AE0;
  v423 = sub_1B07AC984;
  v424 = sub_1B0394C30;
  v425 = sub_1B0394C24;
  v426 = sub_1B074DFFC;
  v427 = sub_1B039BA88;
  v428 = sub_1B039BB94;
  v429 = sub_1B0394C24;
  v430 = sub_1B039BBA0;
  v431 = sub_1B039BC08;
  v432 = 0x786F626C69616DLL;
  v433 = sub_1B06BA324;
  v434 = sub_1B074E0E4;
  v435 = sub_1B039BCF8;
  v436 = sub_1B07AB020;
  v437 = sub_1B039BC08;
  v438 = sub_1B03FB220;
  v439 = sub_1B039BCF8;
  v440 = sub_1B0398F5C;
  v441 = sub_1B0398F5C;
  v442 = sub_1B0399178;
  v443 = sub_1B0398F5C;
  v444 = sub_1B0398F5C;
  v445 = sub_1B039BA94;
  v446 = sub_1B0398F5C;
  v447 = sub_1B0398F5C;
  v448 = sub_1B0399178;
  v449 = sub_1B0398F5C;
  v450 = sub_1B0398F5C;
  v451 = sub_1B03991EC;
  v452 = sub_1B0398F5C;
  v453 = sub_1B0398F5C;
  v454 = sub_1B03993BC;
  v455 = sub_1B0398F5C;
  v456 = sub_1B0398F5C;
  v457 = sub_1B039BCEC;
  v458 = sub_1B0398F5C;
  v459 = sub_1B0398F5C;
  v460 = sub_1B03991EC;
  v461 = sub_1B0398F5C;
  v462 = sub_1B0398F5C;
  v463 = sub_1B039BCEC;
  v464 = sub_1B074E050;
  v465 = sub_1B03F7AE0;
  v466 = sub_1B07AD09C;
  v467 = sub_1B0394C24;
  v468 = sub_1B074DFFC;
  v469 = sub_1B039BA88;
  v470 = sub_1B0394C24;
  v471 = sub_1B039BBA0;
  v472 = sub_1B039BC08;
  v473 = sub_1B06BA324;
  v474 = sub_1B074E0E4;
  v475 = sub_1B039BCF8;
  v476 = sub_1B07AB020;
  v477 = sub_1B039BC08;
  v478 = sub_1B07AD0A4;
  v479 = sub_1B039BCF8;
  v480 = sub_1B0398F5C;
  v481 = sub_1B0398F5C;
  v482 = sub_1B0399178;
  v483 = sub_1B0398F5C;
  v484 = sub_1B0398F5C;
  v485 = sub_1B039BA94;
  v486 = sub_1B0398F5C;
  v487 = sub_1B0398F5C;
  v488 = sub_1B0399178;
  v489 = sub_1B0398F5C;
  v490 = sub_1B0398F5C;
  v491 = sub_1B03991EC;
  v492 = sub_1B0398F5C;
  v493 = sub_1B0398F5C;
  v494 = sub_1B03993BC;
  v495 = sub_1B0398F5C;
  v496 = sub_1B0398F5C;
  v497 = sub_1B039BCEC;
  v498 = sub_1B0398F5C;
  v499 = sub_1B0398F5C;
  v500 = sub_1B03991EC;
  v501 = sub_1B0398F5C;
  v502 = sub_1B0398F5C;
  v503 = sub_1B039BCEC;
  v591 = 0;
  v589 = 0;
  v590 = 0;
  v588 = 0;
  v587 = 0;
  v586 = 0;
  v584 = 0;
  v585 = 0;
  v582 = 0;
  v583 = 0;
  v581 = 0;
  v580 = 0;
  v579 = 0;
  v576 = 0;
  v577 = 0;
  v578 = 0;
  v504 = 0;
  v564 = 0;
  v565 = 0;
  v566 = 0;
  v558 = 0;
  v541 = 0;
  v505 = _s6LoggerVMa_1(0);
  v506 = (*(*(v505 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v507 = v233 - v506;
  v508 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v14);
  v509 = v233 - v508;
  v510 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v16);
  v511 = v233 - v510;
  v512 = sub_1B0E439A8();
  v513 = *(v512 - 8);
  v514 = v512 - 8;
  v515 = (*(v513 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v512);
  v516 = v233 - v515;
  v517 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v233 - v515);
  v518 = v233 - v517;
  v519 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E29F0, &unk_1B0E9F030) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v541);
  v520 = (v233 - v519);
  v527 = type metadata accessor for InProgressMessageDownload.Completed(v18);
  v528 = *(v527 - 8);
  v529 = v527 - 8;
  MEMORY[0x1EEE9AC00](v534);
  v532 = (v233 - v19);
  v591 = v233 - v19;
  v589 = v20;
  v590 = v21;
  v588 = v22;
  v587 = v23;
  v586 = v24 & 1;
  v584 = v25;
  v585 = v26;
  v582 = v27;
  v583 = v530;
  v581 = v531;
  v580 = v28;
  v579 = v12;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
  v538 = v29;
  v539 = v30;
  v540 = v31;
  LODWORD(v576) = v29;
  v577 = v30;
  v578 = v31;
  v537 = &v575;
  swift_beginAccess();
  v545 = *(v12 + 16);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  swift_endAccess();
  v543 = &v572;
  v572 = v538;
  v573 = v539;
  v574 = v540;
  v542 = type metadata accessor for InProgressMessageDownload(v541);
  v544 = sub_1B08AC714();
  v546 = sub_1B0E44638();
  v547 = v32;
  v548 = v33;

  if (v548 == 255)
  {
    (*(v513 + 16))(v516, v526, v512);
    sub_1B074B69C(v526, v511);
    sub_1B074B69C(v511, v509);
    sub_1B074E41C(v511, v507);
    v134 = (v509 + *(v505 + 20));
    v244 = *v134;
    v245 = *(v134 + 1);
    v246 = *(v134 + 1);
    v247 = *(v134 + 4);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B074B764(v509);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v243 = 36;
    v266 = 7;
    v135 = swift_allocObject();
    v136 = v245;
    v137 = v246;
    v138 = v247;
    v251 = v135;
    *(v135 + 16) = v244;
    *(v135 + 20) = v136;
    *(v135 + 24) = v137;
    *(v135 + 32) = v138;
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v139 = swift_allocObject();
    v140 = v245;
    v141 = v246;
    v142 = v247;
    v242 = v139;
    *(v139 + 16) = v244;
    *(v139 + 20) = v140;
    *(v139 + 24) = v141;
    *(v139 + 32) = v142;

    v265 = 32;
    v143 = swift_allocObject();
    v144 = v242;
    v255 = v143;
    *(v143 + 16) = v464;
    *(v143 + 24) = v144;
    sub_1B0394868();
    sub_1B0394868();

    v145 = swift_allocObject();
    v146 = v245;
    v147 = v246;
    v148 = v247;
    v149 = v145;
    v150 = v507;
    v258 = v149;
    *(v149 + 16) = v244;
    *(v149 + 20) = v146;
    *(v149 + 24) = v147;
    *(v149 + 32) = v148;
    sub_1B074B764(v150);
    v248 = swift_allocObject();
    *(v248 + 16) = v533;

    v151 = swift_allocObject();
    v152 = v248;
    v261 = v151;
    *(v151 + 16) = v465;
    *(v151 + 24) = v152;

    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v269 = 24;
    v249 = swift_allocObject();
    *(v249 + 16) = v521;

    v153 = swift_allocObject();
    v154 = v249;
    v267 = v153;
    *(v153 + 16) = v466;
    *(v153 + 24) = v154;

    v297 = sub_1B0E43988();
    v298 = sub_1B0E458E8();
    v263 = 17;
    v270 = swift_allocObject();
    v253 = 16;
    *(v270 + 16) = 16;
    v271 = swift_allocObject();
    v260 = 4;
    *(v271 + 16) = 4;
    v155 = swift_allocObject();
    v250 = v155;
    *(v155 + 16) = v424;
    *(v155 + 24) = 0;
    v156 = swift_allocObject();
    v157 = v250;
    v272 = v156;
    *(v156 + 16) = v467;
    *(v156 + 24) = v157;
    v273 = swift_allocObject();
    *(v273 + 16) = 0;
    v274 = swift_allocObject();
    *(v274 + 16) = 1;
    v158 = swift_allocObject();
    v159 = v251;
    v252 = v158;
    *(v158 + 16) = v468;
    *(v158 + 24) = v159;
    v160 = swift_allocObject();
    v161 = v252;
    v275 = v160;
    *(v160 + 16) = v469;
    *(v160 + 24) = v161;
    v276 = swift_allocObject();
    *(v276 + 16) = v253;
    v277 = swift_allocObject();
    *(v277 + 16) = v260;
    v162 = swift_allocObject();
    v254 = v162;
    *(v162 + 16) = v428;
    *(v162 + 24) = 0;
    v163 = swift_allocObject();
    v164 = v254;
    v278 = v163;
    *(v163 + 16) = v470;
    *(v163 + 24) = v164;
    v279 = swift_allocObject();
    *(v279 + 16) = 0;
    v280 = swift_allocObject();
    *(v280 + 16) = v260;
    v165 = swift_allocObject();
    v166 = v255;
    v256 = v165;
    *(v165 + 16) = v471;
    *(v165 + 24) = v166;
    v167 = swift_allocObject();
    v168 = v256;
    v281 = v167;
    *(v167 + 16) = v472;
    *(v167 + 24) = v168;
    v282 = swift_allocObject();
    *(v282 + 16) = 112;
    v283 = swift_allocObject();
    v264 = 8;
    *(v283 + 16) = 8;
    v257 = swift_allocObject();
    *(v257 + 16) = v432;
    v169 = swift_allocObject();
    v170 = v257;
    v284 = v169;
    *(v169 + 16) = v473;
    *(v169 + 24) = v170;
    v285 = swift_allocObject();
    *(v285 + 16) = 37;
    v286 = swift_allocObject();
    *(v286 + 16) = v264;
    v171 = swift_allocObject();
    v172 = v258;
    v259 = v171;
    *(v171 + 16) = v474;
    *(v171 + 24) = v172;
    v173 = swift_allocObject();
    v174 = v259;
    v287 = v173;
    *(v173 + 16) = v475;
    *(v173 + 24) = v174;
    v288 = swift_allocObject();
    *(v288 + 16) = 0;
    v289 = swift_allocObject();
    *(v289 + 16) = v260;
    v175 = swift_allocObject();
    v176 = v261;
    v262 = v175;
    *(v175 + 16) = v476;
    *(v175 + 24) = v176;
    v177 = swift_allocObject();
    v178 = v262;
    v290 = v177;
    *(v177 + 16) = v477;
    *(v177 + 24) = v178;
    v291 = swift_allocObject();
    *(v291 + 16) = 34;
    v292 = swift_allocObject();
    *(v292 + 16) = v264;
    v179 = swift_allocObject();
    v180 = v267;
    v268 = v179;
    *(v179 + 16) = v478;
    *(v179 + 24) = v180;
    v181 = swift_allocObject();
    v182 = v268;
    v294 = v181;
    *(v181 + 16) = v479;
    *(v181 + 24) = v182;
    v296 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v293 = sub_1B0E46A48();
    v295 = v183;

    v184 = v270;
    v185 = v295;
    *v295 = v480;
    v185[1] = v184;

    v186 = v271;
    v187 = v295;
    v295[2] = v481;
    v187[3] = v186;

    v188 = v272;
    v189 = v295;
    v295[4] = v482;
    v189[5] = v188;

    v190 = v273;
    v191 = v295;
    v295[6] = v483;
    v191[7] = v190;

    v192 = v274;
    v193 = v295;
    v295[8] = v484;
    v193[9] = v192;

    v194 = v275;
    v195 = v295;
    v295[10] = v485;
    v195[11] = v194;

    v196 = v276;
    v197 = v295;
    v295[12] = v486;
    v197[13] = v196;

    v198 = v277;
    v199 = v295;
    v295[14] = v487;
    v199[15] = v198;

    v200 = v278;
    v201 = v295;
    v295[16] = v488;
    v201[17] = v200;

    v202 = v279;
    v203 = v295;
    v295[18] = v489;
    v203[19] = v202;

    v204 = v280;
    v205 = v295;
    v295[20] = v490;
    v205[21] = v204;

    v206 = v281;
    v207 = v295;
    v295[22] = v491;
    v207[23] = v206;

    v208 = v282;
    v209 = v295;
    v295[24] = v492;
    v209[25] = v208;

    v210 = v283;
    v211 = v295;
    v295[26] = v493;
    v211[27] = v210;

    v212 = v284;
    v213 = v295;
    v295[28] = v494;
    v213[29] = v212;

    v214 = v285;
    v215 = v295;
    v295[30] = v495;
    v215[31] = v214;

    v216 = v286;
    v217 = v295;
    v295[32] = v496;
    v217[33] = v216;

    v218 = v287;
    v219 = v295;
    v295[34] = v497;
    v219[35] = v218;

    v220 = v288;
    v221 = v295;
    v295[36] = v498;
    v221[37] = v220;

    v222 = v289;
    v223 = v295;
    v295[38] = v499;
    v223[39] = v222;

    v224 = v290;
    v225 = v295;
    v295[40] = v500;
    v225[41] = v224;

    v226 = v291;
    v227 = v295;
    v295[42] = v501;
    v227[43] = v226;

    v228 = v292;
    v229 = v295;
    v295[44] = v502;
    v229[45] = v228;

    v230 = v294;
    v231 = v295;
    v295[46] = v503;
    v231[47] = v230;
    sub_1B0394964();

    if (os_log_type_enabled(v297, v298))
    {
      v232 = v504;
      v235 = sub_1B0E45D78();
      v234 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v236 = sub_1B03949A8(0, v234, v234);
      v237 = sub_1B03949A8(2, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v238 = &v571;
      v571 = v235;
      v239 = &v570;
      v570 = v236;
      v240 = &v569;
      v569 = v237;
      sub_1B0394A48(3, &v571);
      sub_1B0394A48(8, v238);
      v567 = v480;
      v568 = v270;
      sub_1B03949FC(&v567, v238, v239, v240);
      v241 = v232;
      if (v232)
      {

        __break(1u);
      }

      else
      {
        v567 = v481;
        v568 = v271;
        sub_1B03949FC(&v567, &v571, &v570, &v569);
        v233[21] = 0;
        v567 = v482;
        v568 = v272;
        sub_1B03949FC(&v567, &v571, &v570, &v569);
        v233[20] = 0;
        v567 = v483;
        v568 = v273;
        sub_1B03949FC(&v567, &v571, &v570, &v569);
        v233[19] = 0;
        v567 = v484;
        v568 = v274;
        sub_1B03949FC(&v567, &v571, &v570, &v569);
        v233[18] = 0;
        v567 = v485;
        v568 = v275;
        sub_1B03949FC(&v567, &v571, &v570, &v569);
        v233[17] = 0;
        v567 = v486;
        v568 = v276;
        sub_1B03949FC(&v567, &v571, &v570, &v569);
        v233[16] = 0;
        v567 = v487;
        v568 = v277;
        sub_1B03949FC(&v567, &v571, &v570, &v569);
        v233[15] = 0;
        v567 = v488;
        v568 = v278;
        sub_1B03949FC(&v567, &v571, &v570, &v569);
        v233[14] = 0;
        v567 = v489;
        v568 = v279;
        sub_1B03949FC(&v567, &v571, &v570, &v569);
        v233[13] = 0;
        v567 = v490;
        v568 = v280;
        sub_1B03949FC(&v567, &v571, &v570, &v569);
        v233[12] = 0;
        v567 = v491;
        v568 = v281;
        sub_1B03949FC(&v567, &v571, &v570, &v569);
        v233[11] = 0;
        v567 = v492;
        v568 = v282;
        sub_1B03949FC(&v567, &v571, &v570, &v569);
        v233[10] = 0;
        v567 = v493;
        v568 = v283;
        sub_1B03949FC(&v567, &v571, &v570, &v569);
        v233[9] = 0;
        v567 = v494;
        v568 = v284;
        sub_1B03949FC(&v567, &v571, &v570, &v569);
        v233[8] = 0;
        v567 = v495;
        v568 = v285;
        sub_1B03949FC(&v567, &v571, &v570, &v569);
        v233[7] = 0;
        v567 = v496;
        v568 = v286;
        sub_1B03949FC(&v567, &v571, &v570, &v569);
        v233[6] = 0;
        v567 = v497;
        v568 = v287;
        sub_1B03949FC(&v567, &v571, &v570, &v569);
        v233[5] = 0;
        v567 = v498;
        v568 = v288;
        sub_1B03949FC(&v567, &v571, &v570, &v569);
        v233[4] = 0;
        v567 = v499;
        v568 = v289;
        sub_1B03949FC(&v567, &v571, &v570, &v569);
        v233[3] = 0;
        v567 = v500;
        v568 = v290;
        sub_1B03949FC(&v567, &v571, &v570, &v569);
        v233[2] = 0;
        v567 = v501;
        v568 = v291;
        sub_1B03949FC(&v567, &v571, &v570, &v569);
        v233[1] = 0;
        v567 = v502;
        v568 = v292;
        sub_1B03949FC(&v567, &v571, &v570, &v569);
        v233[0] = 0;
        v567 = v503;
        v568 = v294;
        sub_1B03949FC(&v567, &v571, &v570, &v569);
        _os_log_impl(&dword_1B0389000, v297, v298, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] No in-progress download for completed attachment download UID %u, part [[%{public}s]].", v235, 0x3Bu);
        sub_1B03998A8(v236, 0, v234);
        sub_1B03998A8(v237, 2, MEMORY[0x1E69E7CA0] + 8);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v297);
    (*(v513 + 8))(v516, v512);
    (*(v528 + 56))(v419, 1, 1, v527);
  }

  else
  {
    v416 = v546;
    v417 = v547;
    v418 = v548;
    v414 = v548;
    v413 = v547;
    v412 = v546;
    v564 = v546;
    v565 = v547;
    v415 = 1;
    v566 = v548 & 1;
    v401 = &v563;
    v405 = 32;
    v406 = 0;
    swift_beginAccess();
    v402 = *(v420 + 16);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    swift_endAccess();
    sub_1B08AD370(v412, v413, v414 & 1);
    v408 = &unk_1F26DB2D8;
    sub_1B0E44798();
    v404 = v562[5];
    v403 = v562[3];

    sub_1B079217C(v533);

    sub_1B07AC53C(v412, v413, v414 & 1);
    v407 = v562;
    swift_beginAccess();
    v409 = *(v420 + 16);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    swift_endAccess();
    sub_1B08AD370(v412, v413, v414 & 1);
    sub_1B0E44798();
    v411 = v561[5];
    v410 = v561[3];

    sub_1B0394868();
    sub_1B076CC6C(v523);

    sub_1B07AC53C(v412, v413, v414 & 1);
    if ((*(v528 + 48))(v520, v415, v527) == 1)
    {
      sub_1B08BE984(v520);
      v392 = v561;
      v396 = 32;
      v397 = 0;
      swift_beginAccess();
      v393 = *(v420 + 16);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      swift_endAccess();
      sub_1B08AD370(v412, v413, v414 & 1);
      sub_1B0E44798();
      v394 = v560;
      v395 = v559;

      v398 = v395 + OBJC_IVAR____TtC7Message25InProgressMessageDownload_passAndActionID;
      swift_beginAccess();
      if (*v398 == 2)
      {
        swift_endAccess();

        sub_1B07AC53C(v412, v413, v414 & 1);
        v391 = 0x100000000;
      }

      else
      {
        v390 = *(v398 + 4);
        swift_endAccess();

        sub_1B07AC53C(v412, v413, v414 & 1);
        v391 = v390;
      }

      v389 = v391;
      if ((v391 & 0x100000000) == 0)
      {
        v388 = v389;
        v337 = v389;
        v558 = v389;
        (*(v513 + 16))(v518, v526, v512);
        sub_1B074B69C(v526, v511);
        sub_1B074B69C(v511, v509);
        sub_1B074E41C(v511, v507);
        v35 = (v509 + *(v505 + 20));
        v331 = *v35;
        v332 = *(v35 + 1);
        v333 = *(v35 + 1);
        v334 = *(v35 + 4);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B074B764(v509);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v330 = 36;
        v355 = 7;
        v36 = swift_allocObject();
        v37 = v332;
        v38 = v333;
        v39 = v334;
        v340 = v36;
        *(v36 + 16) = v331;
        *(v36 + 20) = v37;
        *(v36 + 24) = v38;
        *(v36 + 32) = v39;
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v40 = swift_allocObject();
        v41 = v332;
        v42 = v333;
        v43 = v334;
        v329 = v40;
        *(v40 + 16) = v331;
        *(v40 + 20) = v41;
        *(v40 + 24) = v42;
        *(v40 + 32) = v43;

        v354 = 32;
        v44 = swift_allocObject();
        v45 = v329;
        v344 = v44;
        *(v44 + 16) = v421;
        *(v44 + 24) = v45;
        sub_1B0394868();
        sub_1B0394868();

        v46 = swift_allocObject();
        v47 = v332;
        v48 = v333;
        v49 = v334;
        v50 = v46;
        v51 = v507;
        v347 = v50;
        *(v50 + 16) = v331;
        *(v50 + 20) = v47;
        *(v50 + 24) = v48;
        *(v50 + 32) = v49;
        sub_1B074B764(v51);
        v336 = 20;
        v335 = swift_allocObject();
        *(v335 + 16) = v533;

        v52 = swift_allocObject();
        v53 = v335;
        v350 = v52;
        *(v52 + 16) = v422;
        *(v52 + 24) = v53;

        v338 = swift_allocObject();
        *(v338 + 16) = v337;

        v54 = swift_allocObject();
        v55 = v338;
        v356 = v54;
        *(v54 + 16) = v423;
        *(v54 + 24) = v55;

        v386 = sub_1B0E43988();
        v387 = sub_1B0E45908();
        v352 = 17;
        v359 = swift_allocObject();
        v342 = 16;
        *(v359 + 16) = 16;
        v360 = swift_allocObject();
        v349 = 4;
        *(v360 + 16) = 4;
        v56 = swift_allocObject();
        v339 = v56;
        *(v56 + 16) = v424;
        *(v56 + 24) = 0;
        v57 = swift_allocObject();
        v58 = v339;
        v361 = v57;
        *(v57 + 16) = v425;
        *(v57 + 24) = v58;
        v362 = swift_allocObject();
        *(v362 + 16) = 0;
        v363 = swift_allocObject();
        *(v363 + 16) = 1;
        v59 = swift_allocObject();
        v60 = v340;
        v341 = v59;
        *(v59 + 16) = v426;
        *(v59 + 24) = v60;
        v61 = swift_allocObject();
        v62 = v341;
        v364 = v61;
        *(v61 + 16) = v427;
        *(v61 + 24) = v62;
        v365 = swift_allocObject();
        *(v365 + 16) = v342;
        v366 = swift_allocObject();
        *(v366 + 16) = v349;
        v63 = swift_allocObject();
        v343 = v63;
        *(v63 + 16) = v428;
        *(v63 + 24) = 0;
        v64 = swift_allocObject();
        v65 = v343;
        v367 = v64;
        *(v64 + 16) = v429;
        *(v64 + 24) = v65;
        v368 = swift_allocObject();
        *(v368 + 16) = 0;
        v369 = swift_allocObject();
        *(v369 + 16) = v349;
        v66 = swift_allocObject();
        v67 = v344;
        v345 = v66;
        *(v66 + 16) = v430;
        *(v66 + 24) = v67;
        v68 = swift_allocObject();
        v69 = v345;
        v370 = v68;
        *(v68 + 16) = v431;
        *(v68 + 24) = v69;
        v371 = swift_allocObject();
        *(v371 + 16) = 112;
        v372 = swift_allocObject();
        v353 = 8;
        *(v372 + 16) = 8;
        v358 = 24;
        v346 = swift_allocObject();
        *(v346 + 16) = v432;
        v70 = swift_allocObject();
        v71 = v346;
        v373 = v70;
        *(v70 + 16) = v433;
        *(v70 + 24) = v71;
        v374 = swift_allocObject();
        *(v374 + 16) = 37;
        v375 = swift_allocObject();
        *(v375 + 16) = v353;
        v72 = swift_allocObject();
        v73 = v347;
        v348 = v72;
        *(v72 + 16) = v434;
        *(v72 + 24) = v73;
        v74 = swift_allocObject();
        v75 = v348;
        v376 = v74;
        *(v74 + 16) = v435;
        *(v74 + 24) = v75;
        v377 = swift_allocObject();
        *(v377 + 16) = 0;
        v378 = swift_allocObject();
        *(v378 + 16) = v349;
        v76 = swift_allocObject();
        v77 = v350;
        v351 = v76;
        *(v76 + 16) = v436;
        *(v76 + 24) = v77;
        v78 = swift_allocObject();
        v79 = v351;
        v379 = v78;
        *(v78 + 16) = v437;
        *(v78 + 24) = v79;
        v380 = swift_allocObject();
        *(v380 + 16) = 32;
        v381 = swift_allocObject();
        *(v381 + 16) = v353;
        v80 = swift_allocObject();
        v81 = v356;
        v357 = v80;
        *(v80 + 16) = v438;
        *(v80 + 24) = v81;
        v82 = swift_allocObject();
        v83 = v357;
        v383 = v82;
        *(v82 + 16) = v439;
        *(v82 + 24) = v83;
        v385 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
        v382 = sub_1B0E46A48();
        v384 = v84;

        v85 = v359;
        v86 = v384;
        *v384 = v440;
        v86[1] = v85;

        v87 = v360;
        v88 = v384;
        v384[2] = v441;
        v88[3] = v87;

        v89 = v361;
        v90 = v384;
        v384[4] = v442;
        v90[5] = v89;

        v91 = v362;
        v92 = v384;
        v384[6] = v443;
        v92[7] = v91;

        v93 = v363;
        v94 = v384;
        v384[8] = v444;
        v94[9] = v93;

        v95 = v364;
        v96 = v384;
        v384[10] = v445;
        v96[11] = v95;

        v97 = v365;
        v98 = v384;
        v384[12] = v446;
        v98[13] = v97;

        v99 = v366;
        v100 = v384;
        v384[14] = v447;
        v100[15] = v99;

        v101 = v367;
        v102 = v384;
        v384[16] = v448;
        v102[17] = v101;

        v103 = v368;
        v104 = v384;
        v384[18] = v449;
        v104[19] = v103;

        v105 = v369;
        v106 = v384;
        v384[20] = v450;
        v106[21] = v105;

        v107 = v370;
        v108 = v384;
        v384[22] = v451;
        v108[23] = v107;

        v109 = v371;
        v110 = v384;
        v384[24] = v452;
        v110[25] = v109;

        v111 = v372;
        v112 = v384;
        v384[26] = v453;
        v112[27] = v111;

        v113 = v373;
        v114 = v384;
        v384[28] = v454;
        v114[29] = v113;

        v115 = v374;
        v116 = v384;
        v384[30] = v455;
        v116[31] = v115;

        v117 = v375;
        v118 = v384;
        v384[32] = v456;
        v118[33] = v117;

        v119 = v376;
        v120 = v384;
        v384[34] = v457;
        v120[35] = v119;

        v121 = v377;
        v122 = v384;
        v384[36] = v458;
        v122[37] = v121;

        v123 = v378;
        v124 = v384;
        v384[38] = v459;
        v124[39] = v123;

        v125 = v379;
        v126 = v384;
        v384[40] = v460;
        v126[41] = v125;

        v127 = v380;
        v128 = v384;
        v384[42] = v461;
        v128[43] = v127;

        v129 = v381;
        v130 = v384;
        v384[44] = v462;
        v130[45] = v129;

        v131 = v383;
        v132 = v384;
        v384[46] = v463;
        v132[47] = v131;
        sub_1B0394964();

        if (os_log_type_enabled(v386, v387))
        {
          v133 = v504;
          v322 = sub_1B0E45D78();
          v321 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
          v323 = sub_1B03949A8(0, v321, v321);
          v324 = sub_1B03949A8(2, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
          v325 = &v557;
          v557 = v322;
          v326 = &v556;
          v556 = v323;
          v327 = &v555;
          v555 = v324;
          sub_1B0394A48(3, &v557);
          sub_1B0394A48(8, v325);
          v553 = v440;
          v554 = v359;
          sub_1B03949FC(&v553, v325, v326, v327);
          v328 = v133;
          if (v133)
          {

            __break(1u);
          }

          else
          {
            v553 = v441;
            v554 = v360;
            sub_1B03949FC(&v553, &v557, &v556, &v555);
            v320 = 0;
            v553 = v442;
            v554 = v361;
            sub_1B03949FC(&v553, &v557, &v556, &v555);
            v319 = 0;
            v553 = v443;
            v554 = v362;
            sub_1B03949FC(&v553, &v557, &v556, &v555);
            v318 = 0;
            v553 = v444;
            v554 = v363;
            sub_1B03949FC(&v553, &v557, &v556, &v555);
            v317 = 0;
            v553 = v445;
            v554 = v364;
            sub_1B03949FC(&v553, &v557, &v556, &v555);
            v316 = 0;
            v553 = v446;
            v554 = v365;
            sub_1B03949FC(&v553, &v557, &v556, &v555);
            v315 = 0;
            v553 = v447;
            v554 = v366;
            sub_1B03949FC(&v553, &v557, &v556, &v555);
            v314 = 0;
            v553 = v448;
            v554 = v367;
            sub_1B03949FC(&v553, &v557, &v556, &v555);
            v313 = 0;
            v553 = v449;
            v554 = v368;
            sub_1B03949FC(&v553, &v557, &v556, &v555);
            v312 = 0;
            v553 = v450;
            v554 = v369;
            sub_1B03949FC(&v553, &v557, &v556, &v555);
            v311 = 0;
            v553 = v451;
            v554 = v370;
            sub_1B03949FC(&v553, &v557, &v556, &v555);
            v310 = 0;
            v553 = v452;
            v554 = v371;
            sub_1B03949FC(&v553, &v557, &v556, &v555);
            v309 = 0;
            v553 = v453;
            v554 = v372;
            sub_1B03949FC(&v553, &v557, &v556, &v555);
            v308 = 0;
            v553 = v454;
            v554 = v373;
            sub_1B03949FC(&v553, &v557, &v556, &v555);
            v307 = 0;
            v553 = v455;
            v554 = v374;
            sub_1B03949FC(&v553, &v557, &v556, &v555);
            v306 = 0;
            v553 = v456;
            v554 = v375;
            sub_1B03949FC(&v553, &v557, &v556, &v555);
            v305 = 0;
            v553 = v457;
            v554 = v376;
            sub_1B03949FC(&v553, &v557, &v556, &v555);
            v304 = 0;
            v553 = v458;
            v554 = v377;
            sub_1B03949FC(&v553, &v557, &v556, &v555);
            v303 = 0;
            v553 = v459;
            v554 = v378;
            sub_1B03949FC(&v553, &v557, &v556, &v555);
            v302 = 0;
            v553 = v460;
            v554 = v379;
            sub_1B03949FC(&v553, &v557, &v556, &v555);
            v301 = 0;
            v553 = v461;
            v554 = v380;
            sub_1B03949FC(&v553, &v557, &v556, &v555);
            v300 = 0;
            v553 = v462;
            v554 = v381;
            sub_1B03949FC(&v553, &v557, &v556, &v555);
            v299 = 0;
            v553 = v463;
            v554 = v383;
            sub_1B03949FC(&v553, &v557, &v556, &v555);
            _os_log_impl(&dword_1B0389000, v386, v387, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] In-progress message UID %u is still waiting for async writes (%s).", v322, 0x3Bu);
            sub_1B03998A8(v323, 0, v321);
            sub_1B03998A8(v324, 2, MEMORY[0x1E69E7CA0] + 8);
            sub_1B0E45D58();
          }
        }

        else
        {
        }

        MEMORY[0x1E69E5920](v386);
        (*(v513 + 8))(v518, v512);
      }

      (*(v528 + 56))(v419, 1, 1, v527);
      sub_1B07AC53C(v412, v413, v414 & 1);
    }

    else
    {
      sub_1B07B02D8(v520, v532);
      v399 = &v550;
      v550 = v538;
      v551 = v539;
      v552 = v540;
      v400 = &v549;
      swift_beginAccess();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E29D0, &qword_1B0E9F010);
      sub_1B0E445B8();
      swift_endAccess();

      sub_1B07AFC78(v532, v419);
      (*(v528 + 56))(v419, 0, 1, v527);
      sub_1B08BED00(v532);
      sub_1B07AC53C(v412, v413, v414 & 1);
    }
  }
}

uint64_t sub_1B08B9FE0(uint64_t a1, uint64_t a2)
{
  v21 = a2;
  v20 = a1;
  v19 = 0;
  v36 = 0;
  v38 = a1;
  v37 = a2;
  v18 = v35;
  swift_beginAccess();
  v22 = *(v2 + 16);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  swift_endAccess();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v30 = v20;
  v31 = v21;
  v27 = sub_1B08BF0C4;
  v28 = &v29;
  v23 = type metadata accessor for InProgressMessageDownload(0);
  v24 = sub_1B08AC714();
  v25 = 0;
  v26 = sub_1B0E44688();
  v9[2] = v26;

  v9[3] = v34;
  v10 = 0;
  swift_beginAccess();
  *(v17 + 16) = v26;

  swift_endAccess();
  v12 = 32;
  v9[4] = v33;
  swift_beginAccess();
  v14 = *(v17 + 24);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  swift_endAccess();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v11 = v9;
  MEMORY[0x1EEE9AC00](v10);
  v8[2] = v20;
  v13 = v8;
  MEMORY[0x1EEE9AC00](v3);
  v15 = v7;
  v7[2] = sub_1B08BF100;
  v7[3] = v4;
  type metadata accessor for MessagesBeingDownloaded.MessageHeader(v5);
  v16 = sub_1B0E44688();
  v9[0] = v16;

  v9[1] = &v32;
  swift_beginAccess();
  *(v17 + 24) = v9[0];

  return swift_endAccess();
}

uint64_t sub_1B08BA3A0(unsigned int a1, uint64_t a2, int a3, uint64_t a4)
{
  v11 = a1;
  v12 = a2;
  v13 = a3;
  v10 = a4;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v8 = a2;
  v9 = a3;
  sub_1B0451F2C();
  v7 = sub_1B0E45528();
  sub_1B039E440(&v8);
  return v7 & 1;
}

uint64_t sub_1B08BA444(unsigned int a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v412 = a1;
  v411 = a2;
  v409 = a3;
  v407 = a4;
  v410 = a5;
  v408 = a6;
  v325 = sub_1B039BBE8;
  v326 = sub_1B08BFC40;
  v327 = sub_1B08BFC50;
  v328 = sub_1B0394C30;
  v329 = sub_1B0394C24;
  v330 = sub_1B039BA2C;
  v331 = sub_1B039BA88;
  v332 = sub_1B039BB94;
  v333 = sub_1B0394C24;
  v334 = sub_1B039BBA0;
  v335 = sub_1B039BC08;
  v336 = 0x786F626C69616DLL;
  v337 = sub_1B06BA324;
  v338 = sub_1B06E395C;
  v339 = sub_1B039BCF8;
  v340 = sub_1B07AB020;
  v341 = sub_1B039BC08;
  v342 = sub_1B0398F5C;
  v343 = sub_1B0398F5C;
  v344 = sub_1B0399178;
  v345 = sub_1B0398F5C;
  v346 = sub_1B0398F5C;
  v347 = sub_1B039BA94;
  v348 = sub_1B0398F5C;
  v349 = sub_1B0398F5C;
  v350 = sub_1B0399178;
  v351 = sub_1B0398F5C;
  v352 = sub_1B0398F5C;
  v353 = sub_1B03991EC;
  v354 = sub_1B0398F5C;
  v355 = sub_1B0398F5C;
  v356 = sub_1B03993BC;
  v357 = sub_1B0398F5C;
  v358 = sub_1B0398F5C;
  v359 = sub_1B039BCEC;
  v360 = sub_1B0398F5C;
  v361 = sub_1B0398F5C;
  v362 = sub_1B03991EC;
  v363 = sub_1B039BBE8;
  v364 = sub_1B08BFC40;
  v365 = sub_1B08BFC50;
  v366 = sub_1B0394C24;
  v367 = sub_1B039BA2C;
  v368 = sub_1B039BA88;
  v369 = sub_1B0394C24;
  v370 = sub_1B039BBA0;
  v371 = sub_1B039BC08;
  v372 = sub_1B06BA324;
  v373 = sub_1B06E395C;
  v374 = sub_1B039BCF8;
  v375 = sub_1B07AB020;
  v376 = sub_1B039BC08;
  v377 = sub_1B0398F5C;
  v378 = sub_1B0398F5C;
  v379 = sub_1B0399178;
  v380 = sub_1B0398F5C;
  v381 = sub_1B0398F5C;
  v382 = sub_1B039BA94;
  v383 = sub_1B0398F5C;
  v384 = sub_1B0398F5C;
  v385 = sub_1B0399178;
  v386 = sub_1B0398F5C;
  v387 = sub_1B0398F5C;
  v388 = sub_1B03991EC;
  v389 = sub_1B0398F5C;
  v390 = sub_1B0398F5C;
  v391 = sub_1B03993BC;
  v392 = sub_1B0398F5C;
  v393 = sub_1B0398F5C;
  v394 = sub_1B039BCEC;
  v395 = sub_1B0398F5C;
  v396 = sub_1B0398F5C;
  v397 = sub_1B03991EC;
  v434 = 0;
  v435 = 0;
  v436 = 0;
  v433 = 0;
  v432 = 0;
  v431 = 0;
  v398 = 0;
  v399 = 0;
  v400 = _s6LoggerVMa(0);
  v401 = (*(*(v400 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v402 = v188 - v401;
  v403 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v7);
  v404 = v188 - v403;
  v405 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v9);
  v406 = v188 - v405;
  v413 = sub_1B0E439A8();
  v414 = *(v413 - 8);
  v415 = v413 - 8;
  v417 = *(v414 + 64);
  v416 = (v417 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v412);
  v418 = v188 - v416;
  v419 = (v417 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10);
  v420 = v188 - v419;
  LODWORD(v434) = v11;
  v435 = v12;
  v436 = v13;
  v433 = v14;
  v432 = v15;
  v431 = v16;
  if (sub_1B08BA3A0(v11, v12, v13, v15))
  {
    if (sub_1B0760F34(v408))
    {
      (*(v414 + 16))(v418, v408, v413);
      sub_1B0394784(v408, v406);
      sub_1B0394784(v406, v404);
      sub_1B03F4FD0(v406, v402);
      v102 = (v404 + *(v400 + 20));
      v197 = *v102;
      v198 = *(v102 + 1);
      sub_1B039480C(v404);
      v210 = 24;
      v218 = 7;
      v103 = swift_allocObject();
      v104 = v198;
      v204 = v103;
      *(v103 + 16) = v197;
      *(v103 + 20) = v104;
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v105 = swift_allocObject();
      v106 = v198;
      v199 = v105;
      *(v105 + 16) = v197;
      *(v105 + 20) = v106;

      v217 = 32;
      v107 = swift_allocObject();
      v108 = v199;
      v208 = v107;
      *(v107 + 16) = v363;
      *(v107 + 24) = v108;
      sub_1B0394868();
      sub_1B0394868();

      sub_1B039480C(v402);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v201 = 36;
      v109 = swift_allocObject();
      v110 = v411;
      v111 = v409;
      v200 = v109;
      *(v109 + 16) = v412;
      *(v109 + 24) = v110;
      *(v109 + 32) = v111;

      v112 = swift_allocObject();
      v113 = v200;
      v213 = v112;
      *(v112 + 16) = v364;
      *(v112 + 24) = v113;

      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v114 = swift_allocObject();
      v115 = v411;
      v116 = v409;
      v202 = v114;
      *(v114 + 16) = v412;
      *(v114 + 24) = v115;
      *(v114 + 32) = v116;

      v117 = swift_allocObject();
      v118 = v202;
      v219 = v117;
      *(v117 + 16) = v365;
      *(v117 + 24) = v118;

      v245 = sub_1B0E43988();
      v246 = sub_1B0E45908();
      v215 = 17;
      v221 = swift_allocObject();
      v206 = 16;
      *(v221 + 16) = 16;
      v222 = swift_allocObject();
      v216 = 4;
      *(v222 + 16) = 4;
      v119 = swift_allocObject();
      v203 = v119;
      *(v119 + 16) = v328;
      *(v119 + 24) = 0;
      v120 = swift_allocObject();
      v121 = v203;
      v223 = v120;
      *(v120 + 16) = v366;
      *(v120 + 24) = v121;
      v224 = swift_allocObject();
      *(v224 + 16) = 0;
      v225 = swift_allocObject();
      *(v225 + 16) = 1;
      v122 = swift_allocObject();
      v123 = v204;
      v205 = v122;
      *(v122 + 16) = v367;
      *(v122 + 24) = v123;
      v124 = swift_allocObject();
      v125 = v205;
      v226 = v124;
      *(v124 + 16) = v368;
      *(v124 + 24) = v125;
      v227 = swift_allocObject();
      *(v227 + 16) = v206;
      v228 = swift_allocObject();
      *(v228 + 16) = v216;
      v126 = swift_allocObject();
      v207 = v126;
      *(v126 + 16) = v332;
      *(v126 + 24) = 0;
      v127 = swift_allocObject();
      v128 = v207;
      v229 = v127;
      *(v127 + 16) = v369;
      *(v127 + 24) = v128;
      v230 = swift_allocObject();
      *(v230 + 16) = 0;
      v231 = swift_allocObject();
      *(v231 + 16) = v216;
      v129 = swift_allocObject();
      v130 = v208;
      v209 = v129;
      *(v129 + 16) = v370;
      *(v129 + 24) = v130;
      v131 = swift_allocObject();
      v132 = v209;
      v232 = v131;
      *(v131 + 16) = v371;
      *(v131 + 24) = v132;
      v233 = swift_allocObject();
      *(v233 + 16) = 112;
      v234 = swift_allocObject();
      v212 = 8;
      *(v234 + 16) = 8;
      v211 = swift_allocObject();
      *(v211 + 16) = v336;
      v133 = swift_allocObject();
      v134 = v211;
      v235 = v133;
      *(v133 + 16) = v372;
      *(v133 + 24) = v134;
      v236 = swift_allocObject();
      *(v236 + 16) = 37;
      v237 = swift_allocObject();
      *(v237 + 16) = v212;
      v135 = swift_allocObject();
      v136 = v213;
      v214 = v135;
      *(v135 + 16) = v373;
      *(v135 + 24) = v136;
      v137 = swift_allocObject();
      v138 = v214;
      v238 = v137;
      *(v137 + 16) = v374;
      *(v137 + 24) = v138;
      v239 = swift_allocObject();
      *(v239 + 16) = 0;
      v240 = swift_allocObject();
      *(v240 + 16) = v216;
      v139 = swift_allocObject();
      v140 = v219;
      v220 = v139;
      *(v139 + 16) = v375;
      *(v139 + 24) = v140;
      v141 = swift_allocObject();
      v142 = v220;
      v242 = v141;
      *(v141 + 16) = v376;
      *(v141 + 24) = v142;
      v244 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
      v241 = sub_1B0E46A48();
      v243 = v143;

      v144 = v221;
      v145 = v243;
      *v243 = v377;
      v145[1] = v144;

      v146 = v222;
      v147 = v243;
      v243[2] = v378;
      v147[3] = v146;

      v148 = v223;
      v149 = v243;
      v243[4] = v379;
      v149[5] = v148;

      v150 = v224;
      v151 = v243;
      v243[6] = v380;
      v151[7] = v150;

      v152 = v225;
      v153 = v243;
      v243[8] = v381;
      v153[9] = v152;

      v154 = v226;
      v155 = v243;
      v243[10] = v382;
      v155[11] = v154;

      v156 = v227;
      v157 = v243;
      v243[12] = v383;
      v157[13] = v156;

      v158 = v228;
      v159 = v243;
      v243[14] = v384;
      v159[15] = v158;

      v160 = v229;
      v161 = v243;
      v243[16] = v385;
      v161[17] = v160;

      v162 = v230;
      v163 = v243;
      v243[18] = v386;
      v163[19] = v162;

      v164 = v231;
      v165 = v243;
      v243[20] = v387;
      v165[21] = v164;

      v166 = v232;
      v167 = v243;
      v243[22] = v388;
      v167[23] = v166;

      v168 = v233;
      v169 = v243;
      v243[24] = v389;
      v169[25] = v168;

      v170 = v234;
      v171 = v243;
      v243[26] = v390;
      v171[27] = v170;

      v172 = v235;
      v173 = v243;
      v243[28] = v391;
      v173[29] = v172;

      v174 = v236;
      v175 = v243;
      v243[30] = v392;
      v175[31] = v174;

      v176 = v237;
      v177 = v243;
      v243[32] = v393;
      v177[33] = v176;

      v178 = v238;
      v179 = v243;
      v243[34] = v394;
      v179[35] = v178;

      v180 = v239;
      v181 = v243;
      v243[36] = v395;
      v181[37] = v180;

      v182 = v240;
      v183 = v243;
      v243[38] = v396;
      v183[39] = v182;

      v184 = v242;
      v185 = v243;
      v243[40] = v397;
      v185[41] = v184;
      sub_1B0394964();

      if (os_log_type_enabled(v245, v246))
      {
        v186 = v398;
        v190 = sub_1B0E45D78();
        v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
        v191 = sub_1B03949A8(0, v189, v189);
        v192 = sub_1B03949A8(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
        v193 = &v430;
        v430 = v190;
        v194 = &v429;
        v429 = v191;
        v195 = &v428;
        v428 = v192;
        sub_1B0394A48(3, &v430);
        sub_1B0394A48(7, v193);
        v426 = v377;
        v427 = v221;
        sub_1B03949FC(&v426, v193, v194, v195);
        v196 = v186;
        if (v186)
        {

          __break(1u);
        }

        else
        {
          v426 = v378;
          v427 = v222;
          sub_1B03949FC(&v426, &v430, &v429, &v428);
          v188[19] = 0;
          v426 = v379;
          v427 = v223;
          sub_1B03949FC(&v426, &v430, &v429, &v428);
          v188[18] = 0;
          v426 = v380;
          v427 = v224;
          sub_1B03949FC(&v426, &v430, &v429, &v428);
          v188[17] = 0;
          v426 = v381;
          v427 = v225;
          sub_1B03949FC(&v426, &v430, &v429, &v428);
          v188[16] = 0;
          v426 = v382;
          v427 = v226;
          sub_1B03949FC(&v426, &v430, &v429, &v428);
          v188[15] = 0;
          v426 = v383;
          v427 = v227;
          sub_1B03949FC(&v426, &v430, &v429, &v428);
          v188[14] = 0;
          v426 = v384;
          v427 = v228;
          sub_1B03949FC(&v426, &v430, &v429, &v428);
          v188[13] = 0;
          v426 = v385;
          v427 = v229;
          sub_1B03949FC(&v426, &v430, &v429, &v428);
          v188[12] = 0;
          v426 = v386;
          v427 = v230;
          sub_1B03949FC(&v426, &v430, &v429, &v428);
          v188[11] = 0;
          v426 = v387;
          v427 = v231;
          sub_1B03949FC(&v426, &v430, &v429, &v428);
          v188[10] = 0;
          v426 = v388;
          v427 = v232;
          sub_1B03949FC(&v426, &v430, &v429, &v428);
          v188[9] = 0;
          v426 = v389;
          v427 = v233;
          sub_1B03949FC(&v426, &v430, &v429, &v428);
          v188[8] = 0;
          v426 = v390;
          v427 = v234;
          sub_1B03949FC(&v426, &v430, &v429, &v428);
          v188[7] = 0;
          v426 = v391;
          v427 = v235;
          sub_1B03949FC(&v426, &v430, &v429, &v428);
          v188[6] = 0;
          v426 = v392;
          v427 = v236;
          sub_1B03949FC(&v426, &v430, &v429, &v428);
          v188[5] = 0;
          v426 = v393;
          v427 = v237;
          sub_1B03949FC(&v426, &v430, &v429, &v428);
          v188[4] = 0;
          v426 = v394;
          v427 = v238;
          sub_1B03949FC(&v426, &v430, &v429, &v428);
          v188[3] = 0;
          v426 = v395;
          v427 = v239;
          sub_1B03949FC(&v426, &v430, &v429, &v428);
          v188[2] = 0;
          v426 = v396;
          v427 = v240;
          sub_1B03949FC(&v426, &v430, &v429, &v428);
          v188[1] = 0;
          v426 = v397;
          v427 = v242;
          sub_1B03949FC(&v426, &v430, &v429, &v428);
          _os_log_impl(&dword_1B0389000, v245, v246, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] Clearing state for in-progress download of message %u", v190, 0x31u);
          sub_1B03998A8(v191, 0, v189);
          sub_1B03998A8(v192, 1, MEMORY[0x1E69E7CA0] + 8);
          sub_1B0E45D58();
        }
      }

      else
      {
      }

      MEMORY[0x1E69E5920](v245);
      (*(v414 + 8))(v418, v413);
      v247 = 0;
    }

    else
    {
      (*(v414 + 16))(v420, v408, v413);
      sub_1B0394784(v408, v406);
      sub_1B0394784(v406, v404);
      sub_1B03F4FD0(v406, v402);
      v17 = (v404 + *(v400 + 20));
      v275 = *v17;
      v276 = *(v17 + 1);
      sub_1B039480C(v404);
      v288 = 24;
      v296 = 7;
      v18 = swift_allocObject();
      v19 = v276;
      v282 = v18;
      *(v18 + 16) = v275;
      *(v18 + 20) = v19;
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v20 = swift_allocObject();
      v21 = v276;
      v277 = v20;
      *(v20 + 16) = v275;
      *(v20 + 20) = v21;

      v295 = 32;
      v22 = swift_allocObject();
      v23 = v277;
      v286 = v22;
      *(v22 + 16) = v325;
      *(v22 + 24) = v23;
      sub_1B0394868();
      sub_1B0394868();

      sub_1B039480C(v402);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v279 = 36;
      v24 = swift_allocObject();
      v25 = v411;
      v26 = v409;
      v278 = v24;
      *(v24 + 16) = v412;
      *(v24 + 24) = v25;
      *(v24 + 32) = v26;

      v27 = swift_allocObject();
      v28 = v278;
      v291 = v27;
      *(v27 + 16) = v326;
      *(v27 + 24) = v28;

      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v29 = swift_allocObject();
      v30 = v411;
      v31 = v409;
      v280 = v29;
      *(v29 + 16) = v412;
      *(v29 + 24) = v30;
      *(v29 + 32) = v31;

      v32 = swift_allocObject();
      v33 = v280;
      v297 = v32;
      *(v32 + 16) = v327;
      *(v32 + 24) = v33;

      v323 = sub_1B0E43988();
      v324 = sub_1B0E45908();
      v293 = 17;
      v299 = swift_allocObject();
      v284 = 16;
      *(v299 + 16) = 16;
      v300 = swift_allocObject();
      v294 = 4;
      *(v300 + 16) = 4;
      v34 = swift_allocObject();
      v281 = v34;
      *(v34 + 16) = v328;
      *(v34 + 24) = 0;
      v35 = swift_allocObject();
      v36 = v281;
      v301 = v35;
      *(v35 + 16) = v329;
      *(v35 + 24) = v36;
      v302 = swift_allocObject();
      *(v302 + 16) = 0;
      v303 = swift_allocObject();
      *(v303 + 16) = 1;
      v37 = swift_allocObject();
      v38 = v282;
      v283 = v37;
      *(v37 + 16) = v330;
      *(v37 + 24) = v38;
      v39 = swift_allocObject();
      v40 = v283;
      v304 = v39;
      *(v39 + 16) = v331;
      *(v39 + 24) = v40;
      v305 = swift_allocObject();
      *(v305 + 16) = v284;
      v306 = swift_allocObject();
      *(v306 + 16) = v294;
      v41 = swift_allocObject();
      v285 = v41;
      *(v41 + 16) = v332;
      *(v41 + 24) = 0;
      v42 = swift_allocObject();
      v43 = v285;
      v307 = v42;
      *(v42 + 16) = v333;
      *(v42 + 24) = v43;
      v308 = swift_allocObject();
      *(v308 + 16) = 0;
      v309 = swift_allocObject();
      *(v309 + 16) = v294;
      v44 = swift_allocObject();
      v45 = v286;
      v287 = v44;
      *(v44 + 16) = v334;
      *(v44 + 24) = v45;
      v46 = swift_allocObject();
      v47 = v287;
      v310 = v46;
      *(v46 + 16) = v335;
      *(v46 + 24) = v47;
      v311 = swift_allocObject();
      *(v311 + 16) = 112;
      v312 = swift_allocObject();
      v290 = 8;
      *(v312 + 16) = 8;
      v289 = swift_allocObject();
      *(v289 + 16) = v336;
      v48 = swift_allocObject();
      v49 = v289;
      v313 = v48;
      *(v48 + 16) = v337;
      *(v48 + 24) = v49;
      v314 = swift_allocObject();
      *(v314 + 16) = 37;
      v315 = swift_allocObject();
      *(v315 + 16) = v290;
      v50 = swift_allocObject();
      v51 = v291;
      v292 = v50;
      *(v50 + 16) = v338;
      *(v50 + 24) = v51;
      v52 = swift_allocObject();
      v53 = v292;
      v316 = v52;
      *(v52 + 16) = v339;
      *(v52 + 24) = v53;
      v317 = swift_allocObject();
      *(v317 + 16) = 0;
      v318 = swift_allocObject();
      *(v318 + 16) = v294;
      v54 = swift_allocObject();
      v55 = v297;
      v298 = v54;
      *(v54 + 16) = v340;
      *(v54 + 24) = v55;
      v56 = swift_allocObject();
      v57 = v298;
      v320 = v56;
      *(v56 + 16) = v341;
      *(v56 + 24) = v57;
      v322 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
      v319 = sub_1B0E46A48();
      v321 = v58;

      v59 = v299;
      v60 = v321;
      *v321 = v342;
      v60[1] = v59;

      v61 = v300;
      v62 = v321;
      v321[2] = v343;
      v62[3] = v61;

      v63 = v301;
      v64 = v321;
      v321[4] = v344;
      v64[5] = v63;

      v65 = v302;
      v66 = v321;
      v321[6] = v345;
      v66[7] = v65;

      v67 = v303;
      v68 = v321;
      v321[8] = v346;
      v68[9] = v67;

      v69 = v304;
      v70 = v321;
      v321[10] = v347;
      v70[11] = v69;

      v71 = v305;
      v72 = v321;
      v321[12] = v348;
      v72[13] = v71;

      v73 = v306;
      v74 = v321;
      v321[14] = v349;
      v74[15] = v73;

      v75 = v307;
      v76 = v321;
      v321[16] = v350;
      v76[17] = v75;

      v77 = v308;
      v78 = v321;
      v321[18] = v351;
      v78[19] = v77;

      v79 = v309;
      v80 = v321;
      v321[20] = v352;
      v80[21] = v79;

      v81 = v310;
      v82 = v321;
      v321[22] = v353;
      v82[23] = v81;

      v83 = v311;
      v84 = v321;
      v321[24] = v354;
      v84[25] = v83;

      v85 = v312;
      v86 = v321;
      v321[26] = v355;
      v86[27] = v85;

      v87 = v313;
      v88 = v321;
      v321[28] = v356;
      v88[29] = v87;

      v89 = v314;
      v90 = v321;
      v321[30] = v357;
      v90[31] = v89;

      v91 = v315;
      v92 = v321;
      v321[32] = v358;
      v92[33] = v91;

      v93 = v316;
      v94 = v321;
      v321[34] = v359;
      v94[35] = v93;

      v95 = v317;
      v96 = v321;
      v321[36] = v360;
      v96[37] = v95;

      v97 = v318;
      v98 = v321;
      v321[38] = v361;
      v98[39] = v97;

      v99 = v320;
      v100 = v321;
      v321[40] = v362;
      v100[41] = v99;
      sub_1B0394964();

      if (os_log_type_enabled(v323, v324))
      {
        v101 = v398;
        v268 = sub_1B0E45D78();
        v267 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
        v269 = sub_1B03949A8(0, v267, v267);
        v270 = sub_1B03949A8(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
        v271 = &v425;
        v425 = v268;
        v272 = &v424;
        v424 = v269;
        v273 = &v423;
        v423 = v270;
        sub_1B0394A48(3, &v425);
        sub_1B0394A48(7, v271);
        v421 = v342;
        v422 = v299;
        sub_1B03949FC(&v421, v271, v272, v273);
        v274 = v101;
        if (v101)
        {

          __break(1u);
        }

        else
        {
          v421 = v343;
          v422 = v300;
          sub_1B03949FC(&v421, &v425, &v424, &v423);
          v266 = 0;
          v421 = v344;
          v422 = v301;
          sub_1B03949FC(&v421, &v425, &v424, &v423);
          v265 = 0;
          v421 = v345;
          v422 = v302;
          sub_1B03949FC(&v421, &v425, &v424, &v423);
          v264 = 0;
          v421 = v346;
          v422 = v303;
          sub_1B03949FC(&v421, &v425, &v424, &v423);
          v263 = 0;
          v421 = v347;
          v422 = v304;
          sub_1B03949FC(&v421, &v425, &v424, &v423);
          v262 = 0;
          v421 = v348;
          v422 = v305;
          sub_1B03949FC(&v421, &v425, &v424, &v423);
          v261 = 0;
          v421 = v349;
          v422 = v306;
          sub_1B03949FC(&v421, &v425, &v424, &v423);
          v260 = 0;
          v421 = v350;
          v422 = v307;
          sub_1B03949FC(&v421, &v425, &v424, &v423);
          v259 = 0;
          v421 = v351;
          v422 = v308;
          sub_1B03949FC(&v421, &v425, &v424, &v423);
          v258 = 0;
          v421 = v352;
          v422 = v309;
          sub_1B03949FC(&v421, &v425, &v424, &v423);
          v257 = 0;
          v421 = v353;
          v422 = v310;
          sub_1B03949FC(&v421, &v425, &v424, &v423);
          v256 = 0;
          v421 = v354;
          v422 = v311;
          sub_1B03949FC(&v421, &v425, &v424, &v423);
          v255 = 0;
          v421 = v355;
          v422 = v312;
          sub_1B03949FC(&v421, &v425, &v424, &v423);
          v254 = 0;
          v421 = v356;
          v422 = v313;
          sub_1B03949FC(&v421, &v425, &v424, &v423);
          v253 = 0;
          v421 = v357;
          v422 = v314;
          sub_1B03949FC(&v421, &v425, &v424, &v423);
          v252 = 0;
          v421 = v358;
          v422 = v315;
          sub_1B03949FC(&v421, &v425, &v424, &v423);
          v251 = 0;
          v421 = v359;
          v422 = v316;
          sub_1B03949FC(&v421, &v425, &v424, &v423);
          v250 = 0;
          v421 = v360;
          v422 = v317;
          sub_1B03949FC(&v421, &v425, &v424, &v423);
          v249 = 0;
          v421 = v361;
          v422 = v318;
          sub_1B03949FC(&v421, &v425, &v424, &v423);
          v248 = 0;
          v421 = v362;
          v422 = v320;
          sub_1B03949FC(&v421, &v425, &v424, &v423);
          _os_log_impl(&dword_1B0389000, v323, v324, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] Keeping state for in-progress download of message %u -- active file writer(s)", v268, 0x31u);
          sub_1B03998A8(v269, 0, v267);
          sub_1B03998A8(v270, 1, MEMORY[0x1E69E7CA0] + 8);
          sub_1B0E45D58();
        }
      }

      else
      {
      }

      MEMORY[0x1E69E5920](v323);
      (*(v414 + 8))(v420, v413);
      v247 = 1;
    }
  }

  else
  {
    v247 = 1;
  }

  return v247 & 1;
}