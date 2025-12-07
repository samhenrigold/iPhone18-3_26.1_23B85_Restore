uint64_t sub_25ADF0974(uint64_t a1)
{
  v2 = sub_25ADF36D0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25ADF09B0(uint64_t a1)
{
  v2 = sub_25ADF3628();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25ADF09EC(uint64_t a1)
{
  v2 = sub_25ADF3628();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NDOAction.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12CF0, &qword_25AE14320);
  v51 = *(v3 - 8);
  v52 = v3;
  MEMORY[0x28223BE20](v3);
  v49 = &v33 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12CF8, &qword_25AE14328);
  v53 = *(v5 - 8);
  v54 = v5;
  MEMORY[0x28223BE20](v5);
  v50 = &v33 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12D00, &qword_25AE14330);
  v47 = *(v7 - 8);
  v48 = v7;
  MEMORY[0x28223BE20](v7);
  v46 = &v33 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12D08, &qword_25AE14338);
  v44 = *(v9 - 8);
  v45 = v9;
  MEMORY[0x28223BE20](v9);
  v43 = &v33 - v10;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12D10, &qword_25AE14340);
  v41 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v40 = &v33 - v11;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12D18, &qword_25AE14348);
  v38 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v37 = &v33 - v12;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12D20, &qword_25AE14350);
  v35 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v14 = &v33 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12D28, &qword_25AE14358);
  v34 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v33 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12D30, &qword_25AE14360);
  v59 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v19 = v1[1];
  v55 = *v1;
  v56 = v19;
  v20 = v1[3];
  v57 = v1[2];
  v58 = v20;
  v21 = *(v1 + 32);
  v22 = a1[3];
  v23 = a1;
  v25 = &v33 - v24;
  __swift_project_boxed_opaque_existential_1(v23, v22);
  sub_25ADF3580();
  sub_25AE10E8C();
  if (v21 > 3)
  {
    if (v21 > 5)
    {
      if (v21 != 6)
      {
        LOBYTE(v60) = 7;
        sub_25ADF35D4();
        v32 = v49;
        sub_25AE10D9C();
        (*(v51 + 8))(v32, v52);
        return (*(v59 + 8))(v25, v18);
      }

      LOBYTE(v60) = 6;
      sub_25ADF3628();
      v26 = v50;
      sub_25AE10D9C();
      v60 = v55;
      v61 = v56;
      v62 = v57;
      v63 = v58;
      sub_25ADF367C();
      v27 = v54;
      sub_25AE10DFC();
      v28 = v53;
    }

    else if (v21 == 4)
    {
      LOBYTE(v60) = 4;
      sub_25ADF3724();
      v26 = v43;
      sub_25AE10D9C();
      v60 = v55;
      v61 = v56;
      v62 = v57;
      v63 = v58;
      sub_25ADF367C();
      v27 = v45;
      sub_25AE10DFC();
      v28 = v44;
    }

    else
    {
      LOBYTE(v60) = 5;
      sub_25ADF36D0();
      v26 = v46;
      sub_25AE10D9C();
      v60 = v55;
      v61 = v56;
      v62 = v57;
      v63 = v58;
      sub_25ADF367C();
      v27 = v48;
      sub_25AE10DFC();
      v28 = v47;
    }
  }

  else
  {
    if (v21 <= 1)
    {
      if (v21)
      {
        LOBYTE(v60) = 1;
        sub_25ADF3820();
        sub_25AE10D9C();
        v60 = v55;
        v61 = v56;
        v62 = v57;
        v63 = v58;
        sub_25ADF367C();
        v30 = v36;
        sub_25AE10DFC();
        (*(v35 + 8))(v14, v30);
      }

      else
      {
        LOBYTE(v60) = 0;
        sub_25ADF3874();
        sub_25AE10D9C();
        v60 = v55;
        v61 = v56;
        v62 = v57;
        v63 = v58;
        sub_25ADF367C();
        sub_25AE10DFC();
        (*(v34 + 8))(v17, v15);
      }

      return (*(v59 + 8))(v25, v18);
    }

    if (v21 == 2)
    {
      LOBYTE(v60) = 2;
      sub_25ADF37CC();
      v26 = v37;
      sub_25AE10D9C();
      v60 = v55;
      v61 = v56;
      v62 = v57;
      v63 = v58;
      sub_25ADF367C();
      v27 = v39;
      sub_25AE10DFC();
      v29 = &v64;
    }

    else
    {
      LOBYTE(v60) = 3;
      sub_25ADF3778();
      v26 = v40;
      sub_25AE10D9C();
      v60 = v55;
      v61 = v56;
      v62 = v57;
      v63 = v58;
      sub_25ADF367C();
      v27 = v42;
      sub_25AE10DFC();
      v29 = &v65;
    }

    v28 = *(v29 - 32);
  }

  (*(v28 + 8))(v26, v27);
  return (*(v59 + 8))(v25, v18);
}

uint64_t NDOAction.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 8);
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = *(v1 + 32);
  if (v6 > 3)
  {
    if (*(v1 + 32) > 5u)
    {
      if (v6 != 6)
      {
        return MEMORY[0x25F8577E0](7);
      }

      v7 = 6;
    }

    else if (v6 == 4)
    {
      v7 = 4;
    }

    else
    {
      v7 = 5;
    }
  }

  else if (*(v1 + 32) > 1u)
  {
    if (v6 == 2)
    {
      v7 = 2;
    }

    else
    {
      v7 = 3;
    }
  }

  else
  {
    v7 = v6 != 0;
  }

  MEMORY[0x25F8577E0](v7);
  sub_25AE10E5C();
  if (v3)
  {
    sub_25AE10B2C();
  }

  sub_25ADF2CA0(a1, v5);

  return sub_25ADF2CA0(a1, v4);
}

uint64_t NDOAction.hashValue.getter()
{
  v1 = *(v0 + 32);
  v2 = v0[1];
  v5 = *v0;
  v6 = v2;
  v7 = v1;
  sub_25AE10E3C();
  NDOAction.hash(into:)(v4);
  return sub_25AE10E6C();
}

uint64_t NDOAction.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v85 = a2;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12D88, &qword_25AE14368);
  v75 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v84 = &v57[-v3];
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12D90, &qword_25AE14370);
  v78 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v83 = &v57[-v4];
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12D98, &qword_25AE14378);
  v74 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v82 = &v57[-v5];
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12DA0, &qword_25AE14380);
  v72 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v81 = &v57[-v6];
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12DA8, &qword_25AE14388);
  v70 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v79 = &v57[-v7];
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12DB0, &qword_25AE14390);
  v68 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v80 = &v57[-v8];
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12DB8, &qword_25AE14398);
  v65 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v10 = &v57[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12DC0, &qword_25AE143A0);
  v64 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v57[-v12];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12DC8, &unk_25AE143A8);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v57[-v16];
  v18 = a1[3];
  v93 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_25ADF3580();
  v19 = v86;
  sub_25AE10E7C();
  if (!v19)
  {
    v60 = v13;
    v59 = v11;
    v61 = v10;
    v21 = v80;
    v20 = v81;
    v22 = v82;
    v62 = 0;
    v24 = v83;
    v23 = v84;
    v63 = v15;
    v25 = v85;
    v86 = v17;
    v26 = sub_25AE10D8C();
    v27 = (2 * *(v26 + 16)) | 1;
    v89 = v26;
    v90 = v26 + 32;
    v91 = 0;
    v92 = v27;
    v28 = sub_25ADEA77C();
    if (v28 == 8 || v91 != v92 >> 1)
    {
      v33 = sub_25AE10CDC();
      swift_allocError();
      v35 = v34;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12B08, &qword_25AE12AA0);
      *v35 = &type metadata for NDOAction;
      v36 = v86;
      sub_25AE10D1C();
      sub_25AE10CCC();
      (*(*(v33 - 8) + 104))(v35, *MEMORY[0x277D84160], v33);
      swift_willThrow();
      (*(v63 + 8))(v36, v14);
LABEL_28:
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_1(v93);
    }

    v58 = v28;
    if (v28 <= 3u)
    {
      v29 = v62;
      if (v28 <= 1u)
      {
        if (!v28)
        {
          LOBYTE(v87) = 0;
          sub_25ADF3874();
          v30 = v60;
          v31 = v86;
          sub_25AE10D0C();
          if (!v29)
          {
            sub_25ADF38C8();
            v32 = v59;
            sub_25AE10D7C();
            (*(v64 + 8))(v30, v32);
            (*(v63 + 8))(v31, v14);
            swift_unknownObjectRelease();
LABEL_36:
            v54 = v87;
            v55 = v88;
            goto LABEL_37;
          }

          goto LABEL_25;
        }

        LOBYTE(v87) = 1;
        sub_25ADF3820();
        v45 = v61;
        v46 = v86;
        sub_25AE10D0C();
        if (v29)
        {
          (*(v63 + 8))(v46, v14);
          goto LABEL_28;
        }

        sub_25ADF38C8();
        v51 = v66;
        sub_25AE10D7C();
        (*(v65 + 8))(v45, v51);
        (*(v63 + 8))(v86, v14);
LABEL_35:
        swift_unknownObjectRelease();
        goto LABEL_36;
      }

      if (v28 == 2)
      {
        LOBYTE(v87) = 2;
        sub_25ADF37CC();
        v40 = v21;
        v31 = v86;
        sub_25AE10D0C();
        if (!v29)
        {
          sub_25ADF38C8();
          v41 = v69;
          sub_25AE10D7C();
          (*(v68 + 8))(v40, v41);
          (*(v63 + 8))(v31, v14);
          goto LABEL_35;
        }
      }

      else
      {
        LOBYTE(v87) = 3;
        sub_25ADF3778();
        v48 = v79;
        v31 = v86;
        sub_25AE10D0C();
        if (!v29)
        {
          sub_25ADF38C8();
          v52 = v71;
          sub_25AE10D7C();
          v53 = v63;
          (*(v70 + 8))(v48, v52);
          (*(v53 + 8))(v31, v14);
          goto LABEL_35;
        }
      }

LABEL_25:
      (*(v63 + 8))(v31, v14);
      goto LABEL_28;
    }

    v37 = v86;
    if (v28 > 5u)
    {
      if (v28 != 6)
      {
        LOBYTE(v87) = 7;
        sub_25ADF35D4();
        v49 = v62;
        sub_25AE10D0C();
        if (!v49)
        {
          (*(v75 + 8))(v23, v77);
          (*(v63 + 8))(v37, v14);
          swift_unknownObjectRelease();
          v54 = 0uLL;
          v55 = 0uLL;
LABEL_37:
          *v25 = v54;
          *(v25 + 16) = v55;
          *(v25 + 32) = v58;
          return __swift_destroy_boxed_opaque_existential_1(v93);
        }

        goto LABEL_27;
      }

      LOBYTE(v87) = 6;
      sub_25ADF3628();
      v42 = v24;
      v43 = v62;
      sub_25AE10D0C();
      if (v43)
      {
LABEL_27:
        (*(v63 + 8))(v37, v14);
        goto LABEL_28;
      }

      sub_25ADF38C8();
      v44 = v76;
      sub_25AE10D7C();
      v56 = v78;
    }

    else
    {
      if (v28 == 4)
      {
        LOBYTE(v87) = 4;
        sub_25ADF3724();
        v38 = v62;
        sub_25AE10D0C();
        if (!v38)
        {
          sub_25ADF38C8();
          v39 = v73;
          sub_25AE10D7C();
          (*(v72 + 8))(v20, v39);
LABEL_34:
          (*(v63 + 8))(v37, v14);
          goto LABEL_35;
        }

        goto LABEL_27;
      }

      LOBYTE(v87) = 5;
      sub_25ADF36D0();
      v42 = v22;
      v47 = v62;
      sub_25AE10D0C();
      if (v47)
      {
        goto LABEL_27;
      }

      sub_25ADF38C8();
      v44 = v67;
      sub_25AE10D7C();
      v56 = v74;
    }

    (*(v56 + 8))(v42, v44);
    goto LABEL_34;
  }

  return __swift_destroy_boxed_opaque_existential_1(v93);
}

uint64_t sub_25ADF22A0()
{
  v1 = *(v0 + 32);
  v2 = v0[1];
  v5 = *v0;
  v6 = v2;
  v7 = v1;
  sub_25AE10E3C();
  NDOAction.hash(into:)(v4);
  return sub_25AE10E6C();
}

uint64_t sub_25ADF22F8(uint64_t a1)
{
  v2 = *(v1 + 32);
  v3 = v1[1];
  v6 = *v1;
  v7 = v3;
  v8 = v2;
  sub_25AE10E3C();
  NDOAction.hash(into:)(v5);
  return sub_25AE10E6C();
}

uint64_t NDOActionData.url.getter()
{
  v1 = *v0;

  return v1;
}

NDOUI::NDOActionData __swiftcall NDOActionData.init(url:additionalHeaders:bodyPayLoad:)(Swift::String_optional url, Swift::OpaquePointer additionalHeaders, Swift::OpaquePointer bodyPayLoad)
{
  *v3 = url;
  *(v3 + 16) = additionalHeaders;
  *(v3 + 24) = bodyPayLoad;
  result.url = url;
  result.bodyPayLoad = bodyPayLoad;
  result.additionalHeaders = additionalHeaders;
  return result;
}

unint64_t sub_25ADF23C8()
{
  v1 = 0xD000000000000011;
  if (*v0 != 1)
  {
    v1 = 0x4C79615079646F62;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 7107189;
  }
}

uint64_t sub_25ADF2428@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_25ADF4A84(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_25ADF245C(uint64_t a1)
{
  v2 = sub_25ADF391C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25ADF2498(uint64_t a1)
{
  v2 = sub_25ADF391C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NDOActionData.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12DD8, &qword_25AE143B8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - v5;
  v7 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25ADF391C();
  sub_25AE10E8C();
  LOBYTE(v15) = 0;
  v8 = v13;
  sub_25AE10DAC();
  if (!v8)
  {
    v9 = v11;
    v15 = v12;
    v14 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12DE8, &qword_25AE143C0);
    sub_25ADF3970(&qword_27FA12DF0, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
    sub_25AE10DFC();
    v15 = v9;
    v14 = 2;
    sub_25AE10DFC();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t NDOActionData.hash(into:)(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  if (v1[1])
  {
    sub_25AE10E5C();
    sub_25AE10B2C();
  }

  else
  {
    sub_25AE10E5C();
  }

  sub_25ADF2CA0(a1, v3);

  return sub_25ADF2CA0(a1, v4);
}

uint64_t NDOActionData.hashValue.getter()
{
  v1 = v0[1];
  v3 = v0[2];
  v2 = v0[3];
  sub_25AE10E3C();
  sub_25AE10E5C();
  if (v1)
  {
    sub_25AE10B2C();
  }

  sub_25ADF2CA0(v5, v3);
  sub_25ADF2CA0(v5, v2);
  return sub_25AE10E6C();
}

uint64_t NDOActionData.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12DF8, &qword_25AE143C8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25ADF391C();
  sub_25AE10E7C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v20) = 0;
  v17 = sub_25AE10D2C();
  v18 = v9;
  v16 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12DE8, &qword_25AE143C0);
  v19 = 1;
  sub_25ADF3970(&qword_27FA12E00, MEMORY[0x277D83808], MEMORY[0x277D83528]);
  sub_25AE10D7C();
  v15 = v20;
  v19 = 2;
  sub_25AE10D7C();
  (*(v6 + 8))(v8, v5);
  v10 = v20;
  v11 = v16;
  v12 = v18;
  *v16 = v17;
  v11[1] = v12;
  v11[2] = v15;
  v11[3] = v10;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_25ADF2AB8()
{
  v1 = v0[1];
  v3 = v0[2];
  v2 = v0[3];
  sub_25AE10E3C();
  sub_25AE10E5C();
  if (v1)
  {
    sub_25AE10B2C();
  }

  sub_25ADF2CA0(v5, v3);
  sub_25ADF2CA0(v5, v2);
  return sub_25AE10E6C();
}

uint64_t sub_25ADF2B4C(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  if (v1[1])
  {
    sub_25AE10E5C();
    sub_25AE10B2C();
  }

  else
  {
    sub_25AE10E5C();
  }

  sub_25ADF2CA0(a1, v3);

  return sub_25ADF2CA0(a1, v4);
}

uint64_t sub_25ADF2BDC(uint64_t a1)
{
  v2 = v1[1];
  v4 = v1[2];
  v3 = v1[3];
  sub_25AE10E3C();
  sub_25AE10E5C();
  if (v2)
  {
    sub_25AE10B2C();
  }

  sub_25ADF2CA0(v6, v4);
  sub_25ADF2CA0(v6, v3);
  return sub_25AE10E6C();
}

uint64_t sub_25ADF2CA0(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 64;
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return MEMORY[0x25F8577E0](v8);
    }

    v5 = *(v2 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      do
      {
LABEL_9:
        v5 &= v5 - 1;

        sub_25AE10B2C();

        sub_25AE10B2C();

        result = sub_25AE10E6C();
        v8 ^= result;
      }

      while (v5);
      continue;
    }
  }

  __break(1u);
  return result;
}

uint64_t _s5NDOUI13NDOActionDataV2eeoiySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  if (v3)
  {
    if (!v6)
    {
      return 0;
    }

    v9 = *a1 == *a2 && v3 == v6;
    if (!v9 && (sub_25AE10E2C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  if ((sub_25ADF50C4(v4, v7) & 1) == 0)
  {
    return 0;
  }

  return sub_25ADF50C4(v5, v8);
}

uint64_t _s5NDOUI9NDOActionO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v10 = *a2;
  v9 = *(a2 + 8);
  v12 = *(a2 + 16);
  v11 = *(a2 + 24);
  v13 = *(a2 + 32);
  v51[0] = v4;
  v51[1] = v5;
  v51[2] = v6;
  v51[3] = v7;
  v52 = v8;
  v53 = v10;
  v54 = v9;
  v55 = v12;
  v56 = v11;
  v57 = v13;
  if (v8 > 3)
  {
    if (v8 > 5)
    {
      if (v8 == 6)
      {
        if (v13 == 6)
        {
          v47 = v4;
          v48 = v5;
          v49 = v6;
          v50 = v7;
          v43 = v10;
          v44 = v9;
          v45 = v12;
          v46 = v11;
          v26 = v4;
          v27 = v5;
          v28 = v6;
          v29 = v7;
          sub_25ADE48D8(v10, v9, v12, v11, 6u);
          sub_25ADE48D8(v26, v27, v28, v29, 6u);
          sub_25ADE48D8(v26, v27, v28, v29, 6u);
          sub_25ADE48D8(v10, v9, v12, v11, 6u);
          LOBYTE(v13) = _s5NDOUI13NDOActionDataV2eeoiySbAC_ACtFZ_0(&v47, &v43);
          sub_25ADF4BA8(v51);
          sub_25ADE4930(v10, v9, v12, v11, 6u);
          sub_25ADE4930(v26, v27, v28, v29, 6u);
          return v13 & 1;
        }
      }

      else if (v13 == 7 && !(v9 | v10 | v12 | v11))
      {
        sub_25ADF4BA8(v51);
        LOBYTE(v13) = 1;
        return v13 & 1;
      }
    }

    else if (v8 == 4)
    {
      if (v13 == 4)
      {
        v47 = v4;
        v48 = v5;
        v49 = v6;
        v50 = v7;
        v43 = v10;
        v44 = v9;
        v45 = v12;
        v46 = v11;
        v18 = v4;
        v19 = v5;
        v20 = v6;
        v21 = v7;
        sub_25ADE48D8(v10, v9, v12, v11, 4u);
        sub_25ADE48D8(v18, v19, v20, v21, 4u);
        sub_25ADE48D8(v18, v19, v20, v21, 4u);
        sub_25ADE48D8(v10, v9, v12, v11, 4u);
        LOBYTE(v13) = _s5NDOUI13NDOActionDataV2eeoiySbAC_ACtFZ_0(&v47, &v43);
        sub_25ADF4BA8(v51);
        sub_25ADE4930(v10, v9, v12, v11, 4u);
        sub_25ADE4930(v18, v19, v20, v21, 4u);
        return v13 & 1;
      }
    }

    else if (v13 == 5)
    {
      v47 = v4;
      v48 = v5;
      v49 = v6;
      v50 = v7;
      v43 = v10;
      v44 = v9;
      v45 = v12;
      v46 = v11;
      v34 = v4;
      v35 = v5;
      v36 = v6;
      v37 = v7;
      sub_25ADE48D8(v10, v9, v12, v11, 5u);
      sub_25ADE48D8(v34, v35, v36, v37, 5u);
      sub_25ADE48D8(v34, v35, v36, v37, 5u);
      sub_25ADE48D8(v10, v9, v12, v11, 5u);
      LOBYTE(v13) = _s5NDOUI13NDOActionDataV2eeoiySbAC_ACtFZ_0(&v47, &v43);
      sub_25ADF4BA8(v51);
      sub_25ADE4930(v10, v9, v12, v11, 5u);
      sub_25ADE4930(v34, v35, v36, v37, 5u);
      return v13 & 1;
    }

LABEL_24:
    sub_25ADE48D8(v4, v5, v6, v7, v8);
    sub_25ADE48D8(v10, v9, v12, v11, v13);
    sub_25ADF4BA8(v51);
    LOBYTE(v13) = 0;
    return v13 & 1;
  }

  if (v8 > 1)
  {
    if (v8 == 2)
    {
      if (v13 == 2)
      {
        v47 = v4;
        v48 = v5;
        v49 = v6;
        v50 = v7;
        v43 = v10;
        v44 = v9;
        v45 = v12;
        v46 = v11;
        v22 = v4;
        v23 = v5;
        v24 = v6;
        v25 = v7;
        sub_25ADE48D8(v10, v9, v12, v11, 2u);
        sub_25ADE48D8(v22, v23, v24, v25, 2u);
        sub_25ADE48D8(v22, v23, v24, v25, 2u);
        sub_25ADE48D8(v10, v9, v12, v11, 2u);
        LOBYTE(v13) = _s5NDOUI13NDOActionDataV2eeoiySbAC_ACtFZ_0(&v47, &v43);
        sub_25ADF4BA8(v51);
        sub_25ADE4930(v10, v9, v12, v11, 2u);
        sub_25ADE4930(v22, v23, v24, v25, 2u);
        return v13 & 1;
      }
    }

    else if (v13 == 3)
    {
      v47 = v4;
      v48 = v5;
      v49 = v6;
      v50 = v7;
      v43 = v10;
      v44 = v9;
      v45 = v12;
      v46 = v11;
      v38 = v4;
      v39 = v5;
      v40 = v6;
      v41 = v7;
      sub_25ADE48D8(v10, v9, v12, v11, 3u);
      sub_25ADE48D8(v38, v39, v40, v41, 3u);
      sub_25ADE48D8(v38, v39, v40, v41, 3u);
      sub_25ADE48D8(v10, v9, v12, v11, 3u);
      LOBYTE(v13) = _s5NDOUI13NDOActionDataV2eeoiySbAC_ACtFZ_0(&v47, &v43);
      sub_25ADF4BA8(v51);
      sub_25ADE4930(v10, v9, v12, v11, 3u);
      sub_25ADE4930(v38, v39, v40, v41, 3u);
      return v13 & 1;
    }

    goto LABEL_24;
  }

  if (v8)
  {
    if (v13 == 1)
    {
      v47 = v4;
      v48 = v5;
      v49 = v6;
      v50 = v7;
      v43 = v10;
      v44 = v9;
      v45 = v12;
      v46 = v11;
      v30 = v4;
      v31 = v5;
      v32 = v6;
      v33 = v7;
      sub_25ADE48D8(v10, v9, v12, v11, 1u);
      sub_25ADE48D8(v30, v31, v32, v33, 1u);
      sub_25ADE48D8(v30, v31, v32, v33, 1u);
      sub_25ADE48D8(v10, v9, v12, v11, 1u);
      LOBYTE(v13) = _s5NDOUI13NDOActionDataV2eeoiySbAC_ACtFZ_0(&v47, &v43);
      sub_25ADF4BA8(v51);
      sub_25ADE4930(v10, v9, v12, v11, 1u);
      sub_25ADE4930(v30, v31, v32, v33, 1u);
      return v13 & 1;
    }

    goto LABEL_24;
  }

  if (v13)
  {
    goto LABEL_24;
  }

  v47 = v4;
  v48 = v5;
  v49 = v6;
  v50 = v7;
  v43 = v10;
  v44 = v9;
  v45 = v12;
  v46 = v11;
  v14 = v4;
  v15 = v5;
  v16 = v6;
  v17 = v7;
  sub_25ADE48D8(v10, v9, v12, v11, 0);
  sub_25ADE48D8(v14, v15, v16, v17, 0);
  sub_25ADE48D8(v14, v15, v16, v17, 0);
  sub_25ADE48D8(v10, v9, v12, v11, 0);
  v13 = _s5NDOUI13NDOActionDataV2eeoiySbAC_ACtFZ_0(&v47, &v43);
  sub_25ADF4BA8(v51);
  sub_25ADE4930(v10, v9, v12, v11, 0);
  sub_25ADE4930(v14, v15, v16, v17, 0);
  return v13 & 1;
}

unint64_t sub_25ADF3580()
{
  result = qword_27FA12D38;
  if (!qword_27FA12D38)
  {
    result = swift_getWitnessTable(aIdb, &type metadata for NDOAction.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FA12D38);
  }

  return result;
}

unint64_t sub_25ADF35D4()
{
  result = qword_27FA12D40;
  if (!qword_27FA12D40)
  {
    result = swift_getWitnessTable(byte_25AE15170, &type metadata for NDOAction.ExpandSectionCodingKeys, v0, v1);
    atomic_store(result, &qword_27FA12D40);
  }

  return result;
}

unint64_t sub_25ADF3628()
{
  result = qword_27FA12D48;
  if (!qword_27FA12D48)
  {
    result = swift_getWitnessTable(aEb, &type metadata for NDOAction.UserRejectCodingKeys, v0, v1);
    atomic_store(result, &qword_27FA12D48);
  }

  return result;
}

unint64_t sub_25ADF367C()
{
  result = qword_27FA12D50;
  if (!qword_27FA12D50)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NDOActionData, &type metadata for NDOActionData, v0, v1);
    atomic_store(result, &qword_27FA12D50);
  }

  return result;
}

unint64_t sub_25ADF36D0()
{
  result = qword_27FA12D58;
  if (!qword_27FA12D58)
  {
    result = swift_getWitnessTable(aYeb, &type metadata for NDOAction.UserDismissCodingKeys, v0, v1);
    atomic_store(result, &qword_27FA12D58);
  }

  return result;
}

unint64_t sub_25ADF3724()
{
  result = qword_27FA12D60;
  if (!qword_27FA12D60)
  {
    result = swift_getWitnessTable(byte_25AE15080, &type metadata for NDOAction.DismissCcPromoCodingKeys, v0, v1);
    atomic_store(result, &qword_27FA12D60);
  }

  return result;
}

unint64_t sub_25ADF3778()
{
  result = qword_27FA12D68;
  if (!qword_27FA12D68)
  {
    result = swift_getWitnessTable(byte_25AE15030, &type metadata for NDOAction.DeviceWarrantyCodingKeys, v0, v1);
    atomic_store(result, &qword_27FA12D68);
  }

  return result;
}

unint64_t sub_25ADF37CC()
{
  result = qword_27FA12D70;
  if (!qword_27FA12D70)
  {
    result = swift_getWitnessTable("IfB'\\q", &type metadata for NDOAction.OpenPathCodingKeys, v0, v1);
    atomic_store(result, &qword_27FA12D70);
  }

  return result;
}

unint64_t sub_25ADF3820()
{
  result = qword_27FA12D78;
  if (!qword_27FA12D78)
  {
    result = swift_getWitnessTable(byte_25AE14F90, &type metadata for NDOAction.StartAmsCodingKeys, v0, v1);
    atomic_store(result, &qword_27FA12D78);
  }

  return result;
}

unint64_t sub_25ADF3874()
{
  result = qword_27FA12D80;
  if (!qword_27FA12D80)
  {
    result = swift_getWitnessTable(byte_25AE14F40, &type metadata for NDOAction.StartWebCodingKeys, v0, v1);
    atomic_store(result, &qword_27FA12D80);
  }

  return result;
}

unint64_t sub_25ADF38C8()
{
  result = qword_27FA12DD0;
  if (!qword_27FA12DD0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NDOActionData, &type metadata for NDOActionData, v0, v1);
    atomic_store(result, &qword_27FA12DD0);
  }

  return result;
}

unint64_t sub_25ADF391C()
{
  result = qword_27FA12DE0;
  if (!qword_27FA12DE0)
  {
    result = swift_getWitnessTable(a9gb, &type metadata for NDOActionData.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FA12DE0);
  }

  return result;
}

uint64_t sub_25ADF3970(unint64_t *a1, uint64_t a2, const char *a3)
{
  result = *a1;
  if (!result)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA12DE8, &qword_25AE143C0);
    v8[0] = a2;
    v8[1] = a2;
    result = swift_getWitnessTable(a3, v7, v8);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_25ADF39E0()
{
  result = qword_27FA12E08;
  if (!qword_27FA12E08)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NDOAction, &type metadata for NDOAction, v0, v1);
    atomic_store(result, &qword_27FA12E08);
  }

  return result;
}

unint64_t sub_25ADF3A38()
{
  result = qword_27FA12E10;
  if (!qword_27FA12E10)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NDOActionData, &type metadata for NDOActionData, v0, v1);
    atomic_store(result, &qword_27FA12E10);
  }

  return result;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_25ADF3AA0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF9 && *(a1 + 33))
  {
    return (*a1 + 249);
  }

  v3 = *(a1 + 32);
  if (v3 <= 7)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_25ADF3AE8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF8)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 249;
    *(result + 8) = 0;
    if (a3 >= 0xF9)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF9)
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

uint64_t sub_25ADF3B30(uint64_t result, unsigned int a2)
{
  if (a2 >= 7)
  {
    *result = a2 - 7;
    *(result + 8) = 0;
    LOBYTE(a2) = 7;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

uint64_t sub_25ADF3B5C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25ADF3BA4(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for NDOActionData.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for NDOActionData.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_25ADF3DD8()
{
  result = qword_27FA12E18;
  if (!qword_27FA12E18)
  {
    result = swift_getWitnessTable(byte_25AE14908, &type metadata for NDOAction.UserRejectCodingKeys, v0, v1);
    atomic_store(result, &qword_27FA12E18);
  }

  return result;
}

unint64_t sub_25ADF3E30()
{
  result = qword_27FA12E20;
  if (!qword_27FA12E20)
  {
    result = swift_getWitnessTable(aWb, &type metadata for NDOAction.UserDismissCodingKeys, v0, v1);
    atomic_store(result, &qword_27FA12E20);
  }

  return result;
}

unint64_t sub_25ADF3E88()
{
  result = qword_27FA12E28;
  if (!qword_27FA12E28)
  {
    result = swift_getWitnessTable(aQvb, &type metadata for NDOAction.DismissCcPromoCodingKeys, v0, v1);
    atomic_store(result, &qword_27FA12E28);
  }

  return result;
}

unint64_t sub_25ADF3EE0()
{
  result = qword_27FA12E30;
  if (!qword_27FA12E30)
  {
    result = swift_getWitnessTable(byte_25AE14B30, &type metadata for NDOAction.DeviceWarrantyCodingKeys, v0, v1);
    atomic_store(result, &qword_27FA12E30);
  }

  return result;
}

unint64_t sub_25ADF3F38()
{
  result = qword_27FA12E38;
  if (!qword_27FA12E38)
  {
    result = swift_getWitnessTable(byte_25AE14BE8, &type metadata for NDOAction.OpenPathCodingKeys, v0, v1);
    atomic_store(result, &qword_27FA12E38);
  }

  return result;
}

unint64_t sub_25ADF3F90()
{
  result = qword_27FA12E40;
  if (!qword_27FA12E40)
  {
    result = swift_getWitnessTable(")TB'xt", &type metadata for NDOAction.StartAmsCodingKeys, v0, v1);
    atomic_store(result, &qword_27FA12E40);
  }

  return result;
}

unint64_t sub_25ADF3FE8()
{
  result = qword_27FA12E48;
  if (!qword_27FA12E48)
  {
    result = swift_getWitnessTable(aQsb, &type metadata for NDOAction.StartWebCodingKeys, v0, v1);
    atomic_store(result, &qword_27FA12E48);
  }

  return result;
}

unint64_t sub_25ADF4040()
{
  result = qword_27FA12E50;
  if (!qword_27FA12E50)
  {
    result = swift_getWitnessTable(byte_25AE14E10, &type metadata for NDOAction.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FA12E50);
  }

  return result;
}

unint64_t sub_25ADF4098()
{
  result = qword_27FA12E58;
  if (!qword_27FA12E58)
  {
    result = swift_getWitnessTable(byte_25AE14EC8, &type metadata for NDOActionData.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FA12E58);
  }

  return result;
}

unint64_t sub_25ADF40F0()
{
  result = qword_27FA12E60;
  if (!qword_27FA12E60)
  {
    result = swift_getWitnessTable("iaB'tr", &type metadata for NDOActionData.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FA12E60);
  }

  return result;
}

unint64_t sub_25ADF4148()
{
  result = qword_27FA12E68;
  if (!qword_27FA12E68)
  {
    result = swift_getWitnessTable("y]B'Lr", &type metadata for NDOActionData.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FA12E68);
  }

  return result;
}

unint64_t sub_25ADF41A0()
{
  result = qword_27FA12E70;
  if (!qword_27FA12E70)
  {
    result = swift_getWitnessTable(byte_25AE14CC8, &type metadata for NDOAction.StartWebCodingKeys, v0, v1);
    atomic_store(result, &qword_27FA12E70);
  }

  return result;
}

unint64_t sub_25ADF41F8()
{
  result = qword_27FA12E78;
  if (!qword_27FA12E78)
  {
    result = swift_getWitnessTable(byte_25AE14CF0, &type metadata for NDOAction.StartWebCodingKeys, v0, v1);
    atomic_store(result, &qword_27FA12E78);
  }

  return result;
}

unint64_t sub_25ADF4250()
{
  result = qword_27FA12E80;
  if (!qword_27FA12E80)
  {
    result = swift_getWitnessTable(byte_25AE14C10, &type metadata for NDOAction.StartAmsCodingKeys, v0, v1);
    atomic_store(result, &qword_27FA12E80);
  }

  return result;
}

unint64_t sub_25ADF42A8()
{
  result = qword_27FA12E88;
  if (!qword_27FA12E88)
  {
    result = swift_getWitnessTable(byte_25AE14C38, &type metadata for NDOAction.StartAmsCodingKeys, v0, v1);
    atomic_store(result, &qword_27FA12E88);
  }

  return result;
}

unint64_t sub_25ADF4300()
{
  result = qword_27FA12E90;
  if (!qword_27FA12E90)
  {
    result = swift_getWitnessTable(aIdb_0, &type metadata for NDOAction.OpenPathCodingKeys, v0, v1);
    atomic_store(result, &qword_27FA12E90);
  }

  return result;
}

unint64_t sub_25ADF4358()
{
  result = qword_27FA12E98;
  if (!qword_27FA12E98)
  {
    result = swift_getWitnessTable(aYB_0, &type metadata for NDOAction.OpenPathCodingKeys, v0, v1);
    atomic_store(result, &qword_27FA12E98);
  }

  return result;
}

unint64_t sub_25ADF43B0()
{
  result = qword_27FA12EA0;
  if (!qword_27FA12EA0)
  {
    result = swift_getWitnessTable(byte_25AE14AA0, &type metadata for NDOAction.DeviceWarrantyCodingKeys, v0, v1);
    atomic_store(result, &qword_27FA12EA0);
  }

  return result;
}

unint64_t sub_25ADF4408()
{
  result = qword_27FA12EA8;
  if (!qword_27FA12EA8)
  {
    result = swift_getWitnessTable(byte_25AE14AC8, &type metadata for NDOAction.DeviceWarrantyCodingKeys, v0, v1);
    atomic_store(result, &qword_27FA12EA8);
  }

  return result;
}

unint64_t sub_25ADF4460()
{
  result = qword_27FA12EB0;
  if (!qword_27FA12EB0)
  {
    result = swift_getWitnessTable(byte_25AE149E8, &type metadata for NDOAction.DismissCcPromoCodingKeys, v0, v1);
    atomic_store(result, &qword_27FA12EB0);
  }

  return result;
}

unint64_t sub_25ADF44B8()
{
  result = qword_27FA12EB8;
  if (!qword_27FA12EB8)
  {
    result = swift_getWitnessTable(byte_25AE14A10, &type metadata for NDOAction.DismissCcPromoCodingKeys, v0, v1);
    atomic_store(result, &qword_27FA12EB8);
  }

  return result;
}

unint64_t sub_25ADF4510()
{
  result = qword_27FA12EC0;
  if (!qword_27FA12EC0)
  {
    result = swift_getWitnessTable("qfB'xx", &type metadata for NDOAction.UserDismissCodingKeys, v0, v1);
    atomic_store(result, &qword_27FA12EC0);
  }

  return result;
}

unint64_t sub_25ADF4568()
{
  result = qword_27FA12EC8;
  if (!qword_27FA12EC8)
  {
    result = swift_getWitnessTable(byte_25AE14958, &type metadata for NDOAction.UserDismissCodingKeys, v0, v1);
    atomic_store(result, &qword_27FA12EC8);
  }

  return result;
}

unint64_t sub_25ADF45C0()
{
  result = qword_27FA12ED0;
  if (!qword_27FA12ED0)
  {
    result = swift_getWitnessTable(")gB'Ty", &type metadata for NDOAction.UserRejectCodingKeys, v0, v1);
    atomic_store(result, &qword_27FA12ED0);
  }

  return result;
}

unint64_t sub_25ADF4618()
{
  result = qword_27FA12ED8;
  if (!qword_27FA12ED8)
  {
    result = swift_getWitnessTable("9cB',y", &type metadata for NDOAction.UserRejectCodingKeys, v0, v1);
    atomic_store(result, &qword_27FA12ED8);
  }

  return result;
}

unint64_t sub_25ADF4670()
{
  result = qword_27FA12EE0;
  if (!qword_27FA12EE0)
  {
    result = swift_getWitnessTable(aYgb, &type metadata for NDOAction.ExpandSectionCodingKeys, v0, v1);
    atomic_store(result, &qword_27FA12EE0);
  }

  return result;
}

unint64_t sub_25ADF46C8()
{
  result = qword_27FA12EE8;
  if (!qword_27FA12EE8)
  {
    result = swift_getWitnessTable(byte_25AE14850, &type metadata for NDOAction.ExpandSectionCodingKeys, v0, v1);
    atomic_store(result, &qword_27FA12EE8);
  }

  return result;
}

unint64_t sub_25ADF4720()
{
  result = qword_27FA12EF0;
  if (!qword_27FA12EF0)
  {
    result = swift_getWitnessTable("!bB'Ps", &type metadata for NDOAction.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FA12EF0);
  }

  return result;
}

unint64_t sub_25ADF4778()
{
  result = qword_27FA12EF8;
  if (!qword_27FA12EF8)
  {
    result = swift_getWitnessTable("1^B'(s", &type metadata for NDOAction.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FA12EF8);
  }

  return result;
}

uint64_t sub_25ADF47CC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6265577472617473 && a2 == 0xE800000000000000;
  if (v4 || (sub_25AE10E2C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x736D417472617473 && a2 == 0xE800000000000000 || (sub_25AE10E2C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x687461506E65706FLL && a2 == 0xE800000000000000 || (sub_25AE10E2C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6157656369766564 && a2 == 0xEE0079746E617272 || (sub_25AE10E2C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x437373696D736964 && a2 == 0xEE006F6D6F725063 || (sub_25AE10E2C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6D73694472657375 && a2 == 0xEB00000000737369 || (sub_25AE10E2C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x656A655272657375 && a2 == 0xEA00000000007463 || (sub_25AE10E2C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6553646E61707865 && a2 == 0xED00006E6F697463)
  {

    return 7;
  }

  else
  {
    v6 = sub_25AE10E2C();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_25ADF4A84(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7107189 && a2 == 0xE300000000000000;
  if (v3 || (sub_25AE10E2C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x800000025AE1EB50 == a2 || (sub_25AE10E2C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4C79615079646F62 && a2 == 0xEB0000000064616FLL)
  {

    return 2;
  }

  else
  {
    v6 = sub_25AE10E2C();

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

uint64_t sub_25ADF4BA8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12F00, &unk_25AE15210);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25ADF4C24(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12F08, &unk_25AE15220);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25ADF4CB0(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12F08, &unk_25AE15220);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t type metadata accessor for NDOWarrantyPropertiesLoadingState(uint64_t a1)
{
  result = qword_27FA12F10;
  if (!qword_27FA12F10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25ADF4D8C(uint64_t a1)
{
  sub_25ADF4DE4();
  v2 = v1;
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

void sub_25ADF4DE4()
{
  if (!qword_27FA12F20)
  {
    v0 = type metadata accessor for NDOWarrantyProperties(0);
    if (!v1)
    {
      atomic_store(v0, &qword_27FA12F20);
    }
  }
}

uint64_t dispatch thunk of NDODeviceWarrantyProvider.localDeviceWarranty(forSerialNumber:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 16) + **(a4 + 16));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_25ADEBFBC;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of NDODeviceWarrantyProvider.remoteDeviceWarranty(forSerialNumber:withAdditionalHeaders:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 32) + **(a5 + 32));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_25ADEC200;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t sub_25ADF50C4(uint64_t result, uint64_t a2)
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
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v26 = (v7 - 1) & v7;
LABEL_14:
    v12 = 16 * (v9 | (v3 << 6));
    v13 = result;
    v14 = (*(result + 48) + v12);
    v15 = *v14;
    v16 = v14[1];
    v17 = (*(result + 56) + v12);
    v19 = *v17;
    v18 = v17[1];

    v20 = sub_25ADF6A70(v15, v16);
    v22 = v21;

    if ((v22 & 1) == 0)
    {

      return 0;
    }

    v23 = (*(a2 + 56) + 16 * v20);
    if (*v23 == v19 && v23[1] == v18)
    {

      result = v13;
      v7 = v26;
    }

    else
    {
      v25 = sub_25AE10E2C();

      result = v13;
      v7 = v26;
      if ((v25 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v26 = (v11 - 1) & v11;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t NDOSettingsCoverageSectionOfferProperties.singularFooter.getter()
{
  v1 = *(v0 + *(type metadata accessor for NDOSettingsCoverageSectionOfferProperties(0) + 20));

  return v1;
}

uint64_t sub_25ADF531C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t NDOSettingsCoverageSectionOfferProperties.pluralFooter.getter()
{
  v1 = *(v0 + *(type metadata accessor for NDOSettingsCoverageSectionOfferProperties(0) + 24));

  return v1;
}

uint64_t NDOSettingsCoverageSectionOfferProperties.expiration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for NDOSettingsCoverageSectionOfferProperties(0) + 28);

  return sub_25ADDE9D0(v3, a1);
}

uint64_t sub_25ADF53E0()
{
  v1 = 1802398060;
  v2 = 0x6F466C6172756C70;
  if (*v0 != 2)
  {
    v2 = 0x6974617269707865;
  }

  if (*v0)
  {
    v1 = 0x72616C75676E6973;
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

uint64_t sub_25ADF546C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_25ADF7B10(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_25ADF5494(uint64_t a1)
{
  v2 = sub_25ADF7078();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25ADF54D0(uint64_t a1)
{
  v2 = sub_25ADF7078();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NDOSettingsCoverageSectionOfferProperties.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12F28, &qword_25AE152B8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25ADF7078();
  sub_25AE10E8C();
  v8[15] = 0;
  type metadata accessor for NDOSettingsCoverageSectionOfferProperties.Link(0);
  sub_25ADF70CC(&qword_27FA12F38, type metadata accessor for NDOSettingsCoverageSectionOfferProperties.Link, protocol conformance descriptor for NDOSettingsCoverageSectionOfferProperties.Link);
  sub_25AE10DFC();
  if (!v1)
  {
    type metadata accessor for NDOSettingsCoverageSectionOfferProperties(0);
    v8[14] = 1;
    sub_25AE10DAC();
    v8[13] = 2;
    sub_25AE10DAC();
    v8[12] = 3;
    sub_25AE1024C();
    sub_25ADF70CC(&qword_27FA126F0, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
    sub_25AE10DBC();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t NDOSettingsCoverageSectionOfferProperties.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA126C0, &qword_25AE11BB0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v26 - v4;
  v6 = type metadata accessor for NDOSettingsCoverageSectionOfferProperties.Link(0);
  MEMORY[0x28223BE20](v6);
  v29 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12F40, &qword_25AE152C0);
  v26 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v9 = &v26 - v8;
  v10 = type metadata accessor for NDOSettingsCoverageSectionOfferProperties(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25ADF7078();
  v28 = v9;
  v13 = v31;
  sub_25AE10E7C();
  if (v13)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v31 = v5;
  v14 = v12;
  v15 = v26;
  v16 = v27;
  v35 = 0;
  sub_25ADF70CC(&qword_27FA12F48, type metadata accessor for NDOSettingsCoverageSectionOfferProperties.Link, protocol conformance descriptor for NDOSettingsCoverageSectionOfferProperties.Link);
  sub_25AE10D7C();
  sub_25ADF7114(v29, v14);
  v34 = 1;
  v17 = sub_25AE10D2C();
  v18 = (v14 + v10[5]);
  *v18 = v17;
  v18[1] = v19;
  v33 = 2;
  v20 = sub_25AE10D2C();
  v21 = a1;
  v22 = (v14 + v10[6]);
  *v22 = v20;
  v22[1] = v23;
  sub_25AE1024C();
  v32 = 3;
  sub_25ADF70CC(&qword_27FA12710, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
  v24 = v31;
  sub_25AE10D3C();
  (*(v15 + 8))(v28, v30);
  sub_25ADDEA8C(v24, v14 + v10[7]);
  sub_25ADF7178(v14, v16, type metadata accessor for NDOSettingsCoverageSectionOfferProperties);
  __swift_destroy_boxed_opaque_existential_1(v21);
  return sub_25ADF71E0(v14, type metadata accessor for NDOSettingsCoverageSectionOfferProperties);
}

uint64_t NDOSettingsCoverageSectionOfferProperties.Link.label.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t NDOSettingsCoverageSectionOfferProperties.Link.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NDOSettingsCoverageSectionOfferProperties.Link(0) + 20);
  v4 = sub_25AE101BC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t NDOSettingsCoverageSectionOfferProperties.Link.additionalHeaders.getter()
{
  type metadata accessor for NDOSettingsCoverageSectionOfferProperties.Link(0);
}

uint64_t NDOSettingsCoverageSectionOfferProperties.Link.bodyPayload.getter()
{
  type metadata accessor for NDOSettingsCoverageSectionOfferProperties.Link(0);
}

unint64_t sub_25ADF5D40()
{
  v1 = 0x6C6562616CLL;
  v2 = 0xD000000000000011;
  if (*v0 != 2)
  {
    v2 = 0x6C79615079646F62;
  }

  if (*v0)
  {
    v1 = 7107189;
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

uint64_t sub_25ADF5DBC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_25ADF7C88(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_25ADF5DE4(uint64_t a1)
{
  v2 = sub_25ADF7240();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25ADF5E20(uint64_t a1)
{
  v2 = sub_25ADF7240();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NDOSettingsCoverageSectionOfferProperties.Link.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12F50, &unk_25AE152C8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25ADF7240();
  sub_25AE10E8C();
  LOBYTE(v13) = 0;
  sub_25AE10DCC();
  if (!v2)
  {
    v9 = type metadata accessor for NDOSettingsCoverageSectionOfferProperties.Link(0);
    LOBYTE(v13) = 1;
    sub_25AE101BC();
    sub_25ADF70CC(&qword_27FA12F60, MEMORY[0x277CC9260], MEMORY[0x277CC9268]);
    sub_25AE10DFC();
    v13 = *(v3 + *(v9 + 24));
    v12 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12DE8, &qword_25AE143C0);
    sub_25ADF3970(&qword_27FA12DF0, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
    sub_25AE10DFC();
    v13 = *(v3 + *(v9 + 28));
    v12 = 3;
    sub_25AE10DFC();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t NDOSettingsCoverageSectionOfferProperties.Link.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v3 = sub_25AE101BC();
  v20 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12F68, &qword_25AE152D8);
  v19 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v7 = v17 - v6;
  v8 = type metadata accessor for NDOSettingsCoverageSectionOfferProperties.Link(0);
  MEMORY[0x28223BE20](v8);
  v10 = (v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25ADF7240();
  v21 = v7;
  v11 = v23;
  sub_25AE10E7C();
  if (v11)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v23 = a1;
  v13 = v19;
  v12 = v20;
  LOBYTE(v25) = 0;
  *v10 = sub_25AE10D4C();
  v10[1] = v14;
  v17[2] = v14;
  LOBYTE(v25) = 1;
  sub_25ADF70CC(&qword_27FA12F70, MEMORY[0x277CC9260], MEMORY[0x277CC9280]);
  sub_25AE10D7C();
  (*(v12 + 32))(v10 + v8[5], v5, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12DE8, &qword_25AE143C0);
  v24 = 2;
  v17[0] = sub_25ADF3970(&qword_27FA12E00, MEMORY[0x277D83808], MEMORY[0x277D83528]);
  v17[1] = 0;
  sub_25AE10D7C();
  v15 = v23;
  *(v10 + v8[6]) = v25;
  v24 = 3;
  sub_25AE10D7C();
  (*(v13 + 8))(v21, v22);
  *(v10 + v8[7]) = v25;
  sub_25ADF7178(v10, v18, type metadata accessor for NDOSettingsCoverageSectionOfferProperties.Link);
  __swift_destroy_boxed_opaque_existential_1(v15);
  return sub_25ADF71E0(v10, type metadata accessor for NDOSettingsCoverageSectionOfferProperties.Link);
}

BOOL NDOSettingsCoverageSectionOfferProperties.isValid.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA126C0, &qword_25AE11BB0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v12 - v2;
  v4 = sub_25AE1024C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for NDOSettingsCoverageSectionOfferProperties(0);
  sub_25ADDE9D0(v0 + *(v8 + 28), v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_25ADDE8CC(v3, &qword_27FA126C0, &qword_25AE11BB0);
    return 1;
  }

  else
  {
    (*(v5 + 32))(v7, v3, v4);
    sub_25AE1022C();
    v11 = v10;
    (*(v5 + 8))(v7, v4);
    return v11 > 0.0;
  }
}

void NDOSettingsCoverageSectionOfferProperties.footer.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA126C0, &qword_25AE11BB0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v21 - v3;
  v5 = sub_25AE1024C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for NDOSettingsCoverageSectionOfferProperties(0);
  sub_25ADDE9D0(v1 + *(v9 + 28), v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_25ADDE8CC(v4, &qword_27FA126C0, &qword_25AE11BB0);
LABEL_12:

    return;
  }

  (*(v6 + 32))(v8, v4, v5);
  sub_25AE1022C();
  v11 = ceil(v10 / 86400.0);
  if ((*&v11 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v11 <= -9.22337204e18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v11 >= 9.22337204e18)
  {
LABEL_16:
    __break(1u);
    return;
  }

  v12 = v11;
  if (v11 < 0)
  {
    goto LABEL_10;
  }

  if (v12 <= 1 || (v13 = (v1 + *(v9 + 24)), (v14 = v13[1]) == 0))
  {
    (*(v6 + 8))(v8, v5);
    goto LABEL_12;
  }

  v22 = *v13;
  v23 = v14;
  v21[0] = 16421;
  v21[1] = 0xE200000000000000;
  sub_25ADDE53C();
  v15 = MEMORY[0x277D837D0];
  v16 = *(sub_25AE10C9C() + 16);

  if (v16 > 2)
  {
LABEL_10:
    (*(v6 + 8))(v8, v5);
    return;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12F78, &qword_25AE152E0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_25AE152A0;
  v22 = v12;
  v18 = sub_25AE10E1C();
  v20 = v19;
  *(v17 + 56) = v15;
  *(v17 + 64) = sub_25ADF7294();
  *(v17 + 32) = v18;
  *(v17 + 40) = v20;
  sub_25AE10AEC();
  (*(v6 + 8))(v8, v5);
}

unint64_t sub_25ADF6A70(uint64_t a1, uint64_t a2)
{
  sub_25AE10E3C();
  sub_25AE10B2C();
  v4 = sub_25AE10E6C();

  return sub_25ADF6AE8(a1, a2, v4);
}

unint64_t sub_25ADF6AE8(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_25AE10E2C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t _s5NDOUI41NDOSettingsCoverageSectionOfferPropertiesV4LinkV2eeoiySbAE_AEtFZ_0(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_25AE10E2C() & 1) == 0)
  {
    return 0;
  }

  v5 = type metadata accessor for NDOSettingsCoverageSectionOfferProperties.Link(0);
  if ((sub_25AE1019C() & 1) == 0 || (sub_25ADF50C4(*(a1 + *(v5 + 24)), *(a2 + *(v5 + 24))) & 1) == 0)
  {
    return 0;
  }

  v6 = *(v5 + 28);
  v7 = *(a1 + v6);
  v8 = *(a2 + v6);

  return sub_25ADF50C4(v7, v8);
}

BOOL _s5NDOUI41NDOSettingsCoverageSectionOfferPropertiesV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = sub_25AE1024C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA126C0, &qword_25AE11BB0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v36 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12FE8, &unk_25AE15670);
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;
  if (*a1 != *a2 && (sub_25AE10E2C() & 1) == 0)
  {
    return 0;
  }

  v14 = type metadata accessor for NDOSettingsCoverageSectionOfferProperties.Link(0);
  if ((sub_25AE1019C() & 1) == 0 || (sub_25ADF50C4(*(a1 + *(v14 + 24)), *(a2 + *(v14 + 24))) & 1) == 0 || (sub_25ADF50C4(*(a1 + *(v14 + 28)), *(a2 + *(v14 + 28))) & 1) == 0)
  {
    return 0;
  }

  v15 = type metadata accessor for NDOSettingsCoverageSectionOfferProperties(0);
  v16 = v15[5];
  v17 = (a1 + v16);
  v18 = *(a1 + v16 + 8);
  v19 = (a2 + v16);
  v20 = v19[1];
  if (v18)
  {
    if (!v20)
    {
      return 0;
    }

    if (*v17 != *v19 || v18 != v20)
    {
      v21 = v15;
      v22 = sub_25AE10E2C();
      v15 = v21;
      if ((v22 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v20)
  {
    return 0;
  }

  v23 = v15[6];
  v24 = (a1 + v23);
  v25 = *(a1 + v23 + 8);
  v26 = (a2 + v23);
  v27 = v26[1];
  if (v25)
  {
    if (!v27)
    {
      return 0;
    }

    if (*v24 != *v26 || v25 != v27)
    {
      v28 = v15;
      v29 = sub_25AE10E2C();
      v15 = v28;
      if ((v29 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v27)
  {
    return 0;
  }

  v30 = v15[7];
  v31 = *(v11 + 48);
  sub_25ADDE9D0(a1 + v30, v13);
  sub_25ADDE9D0(a2 + v30, &v13[v31]);
  v32 = *(v5 + 48);
  if (v32(v13, 1, v4) != 1)
  {
    sub_25ADDE9D0(v13, v10);
    if (v32(&v13[v31], 1, v4) == 1)
    {
      (*(v5 + 8))(v10, v4);
      goto LABEL_25;
    }

    (*(v5 + 32))(v7, &v13[v31], v4);
    sub_25ADF70CC(&qword_27FA12FF0, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
    v34 = sub_25AE10A6C();
    v35 = *(v5 + 8);
    v35(v7, v4);
    v35(v10, v4);
    sub_25ADDE8CC(v13, &qword_27FA126C0, &qword_25AE11BB0);
    return (v34 & 1) != 0;
  }

  if (v32(&v13[v31], 1, v4) != 1)
  {
LABEL_25:
    sub_25ADDE8CC(v13, &qword_27FA12FE8, &unk_25AE15670);
    return 0;
  }

  sub_25ADDE8CC(v13, &qword_27FA126C0, &qword_25AE11BB0);
  return 1;
}

unint64_t sub_25ADF7078()
{
  result = qword_27FA12F30;
  if (!qword_27FA12F30)
  {
    result = swift_getWitnessTable(aB_3, &type metadata for NDOSettingsCoverageSectionOfferProperties.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FA12F30);
  }

  return result;
}

uint64_t sub_25ADF70CC(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25ADF7114(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NDOSettingsCoverageSectionOfferProperties.Link(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25ADF7178(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25ADF71E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_25ADF7240()
{
  result = qword_27FA12F58;
  if (!qword_27FA12F58)
  {
    result = swift_getWitnessTable(aB_4, &type metadata for NDOSettingsCoverageSectionOfferProperties.Link.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FA12F58);
  }

  return result;
}

unint64_t sub_25ADF7294()
{
  result = qword_27FA12F80;
  if (!qword_27FA12F80)
  {
    result = swift_getWitnessTable(MEMORY[0x277CC9C00], MEMORY[0x277D837D0], v0, v1);
    atomic_store(result, &qword_27FA12F80);
  }

  return result;
}

uint64_t sub_25ADF72FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for NDOSettingsCoverageSectionOfferProperties.Link(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 2147483646)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA126C0, &qword_25AE11BB0);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 28);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_25ADF7450(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for NDOSettingsCoverageSectionOfferProperties.Link(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA126C0, &qword_25AE11BB0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_25ADF7584(uint64_t a1)
{
  type metadata accessor for NDOSettingsCoverageSectionOfferProperties.Link(319);
  if (v1 <= 0x3F)
  {
    sub_25ADF7620();
    if (v2 <= 0x3F)
    {
      sub_25ADDF7DC(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_25ADF7620()
{
  if (!qword_27FA12F98)
  {
    v0 = sub_25AE10C7C();
    if (!v1)
    {
      atomic_store(v0, &qword_27FA12F98);
    }
  }
}

uint64_t sub_25ADF7684(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_25AE101BC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_25ADF7744(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_25AE101BC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_25ADF77E8(uint64_t a1)
{
  sub_25AE101BC();
  if (v1 <= 0x3F)
  {
    sub_25ADF787C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_25ADF787C()
{
  if (!qword_27FA12FB0)
  {
    v0 = sub_25AE10A4C();
    if (!v1)
    {
      atomic_store(v0, &qword_27FA12FB0);
    }
  }
}

unint64_t sub_25ADF7904()
{
  result = qword_27FA12FB8;
  if (!qword_27FA12FB8)
  {
    result = swift_getWitnessTable(byte_25AE154EC, &type metadata for NDOSettingsCoverageSectionOfferProperties.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FA12FB8);
  }

  return result;
}

unint64_t sub_25ADF795C()
{
  result = qword_27FA12FC0;
  if (!qword_27FA12FC0)
  {
    result = swift_getWitnessTable("%KB' m", &type metadata for NDOSettingsCoverageSectionOfferProperties.Link.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FA12FC0);
  }

  return result;
}

unint64_t sub_25ADF79B4()
{
  result = qword_27FA12FC8;
  if (!qword_27FA12FC8)
  {
    result = swift_getWitnessTable(byte_25AE15514, &type metadata for NDOSettingsCoverageSectionOfferProperties.Link.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FA12FC8);
  }

  return result;
}

unint64_t sub_25ADF7A0C()
{
  result = qword_27FA12FD0;
  if (!qword_27FA12FD0)
  {
    result = swift_getWitnessTable(byte_25AE1553C, &type metadata for NDOSettingsCoverageSectionOfferProperties.Link.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FA12FD0);
  }

  return result;
}

unint64_t sub_25ADF7A64()
{
  result = qword_27FA12FD8;
  if (!qword_27FA12FD8)
  {
    result = swift_getWitnessTable(aEB, &type metadata for NDOSettingsCoverageSectionOfferProperties.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FA12FD8);
  }

  return result;
}

unint64_t sub_25ADF7ABC()
{
  result = qword_27FA12FE0;
  if (!qword_27FA12FE0)
  {
    result = swift_getWitnessTable("UWB'dn", &type metadata for NDOSettingsCoverageSectionOfferProperties.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FA12FE0);
  }

  return result;
}

uint64_t sub_25ADF7B10(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1802398060 && a2 == 0xE400000000000000;
  if (v3 || (sub_25AE10E2C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x72616C75676E6973 && a2 == 0xEE007265746F6F46 || (sub_25AE10E2C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F466C6172756C70 && a2 == 0xEC0000007265746FLL || (sub_25AE10E2C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6974617269707865 && a2 == 0xEA00000000006E6FLL)
  {

    return 3;
  }

  else
  {
    v6 = sub_25AE10E2C();

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

uint64_t sub_25ADF7C88(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C6562616CLL && a2 == 0xE500000000000000;
  if (v4 || (sub_25AE10E2C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000 || (sub_25AE10E2C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x800000025AE1EB50 == a2 || (sub_25AE10E2C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C79615079646F62 && a2 == 0xEB0000000064616FLL)
  {

    return 3;
  }

  else
  {
    v6 = sub_25AE10E2C();

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

uint64_t NDOWarrantyProperties.serialNumber.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t NDOWarrantyProperties.coverageLabel.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t NDOWarrantyProperties.coverageExpirationLabel.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t NDOWarrantyProperties.settingsCoverageSectionOfferProperties.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for NDOWarrantyProperties(0) + 32);

  return sub_25ADF7F28(v3, a1);
}

uint64_t type metadata accessor for NDOWarrantyProperties(uint64_t a1)
{
  result = qword_27FA13028;
  if (!qword_27FA13028)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25ADF7F28(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12FF8, &qword_25AE15680);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25ADF7F9C()
{
  v1 = *v0;
  v2 = 0x754E6C6169726573;
  v3 = 0x6567617265766F63;
  v4 = 0xD000000000000017;
  if (v1 != 3)
  {
    v4 = 0xD000000000000026;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x7466656854736168;
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

uint64_t sub_25ADF805C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_25ADF8FDC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_25ADF8084(uint64_t a1)
{
  v2 = sub_25ADF8AC8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25ADF80C0(uint64_t a1)
{
  v2 = sub_25ADF8AC8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NDOWarrantyProperties.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA13000, &qword_25AE15688);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25ADF8AC8();
  sub_25AE10E8C();
  v8[15] = 0;
  sub_25AE10DCC();
  if (!v1)
  {
    v8[14] = 1;
    sub_25AE10DDC();
    v8[13] = 2;
    sub_25AE10DCC();
    v8[12] = 3;
    sub_25AE10DAC();
    type metadata accessor for NDOWarrantyProperties(0);
    v8[11] = 4;
    type metadata accessor for NDOSettingsCoverageSectionOfferProperties(0);
    sub_25ADF8B1C(&qword_27FA13010, protocol conformance descriptor for NDOSettingsCoverageSectionOfferProperties);
    sub_25AE10DBC();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t NDOWarrantyProperties.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12FF8, &qword_25AE15680);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v20 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA13018, &qword_25AE15690);
  v23 = *(v7 - 8);
  v24 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = v20 - v8;
  v10 = type metadata accessor for NDOWarrantyProperties(0);
  MEMORY[0x28223BE20](v10);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25ADF8AC8();
  sub_25AE10E7C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v21 = a1;
  v13 = v6;
  v15 = v23;
  v14 = v24;
  v29 = 0;
  *v12 = sub_25AE10D4C();
  *(v12 + 1) = v16;
  v20[1] = v16;
  v28 = 1;
  v12[16] = sub_25AE10D5C() & 1;
  v27 = 2;
  *(v12 + 3) = sub_25AE10D4C();
  *(v12 + 4) = v17;
  v26 = 3;
  *(v12 + 5) = sub_25AE10D2C();
  *(v12 + 6) = v18;
  type metadata accessor for NDOSettingsCoverageSectionOfferProperties(0);
  v25 = 4;
  sub_25ADF8B1C(&qword_27FA13020, protocol conformance descriptor for NDOSettingsCoverageSectionOfferProperties);
  sub_25AE10D3C();
  (*(v15 + 8))(v9, v14);
  sub_25ADF8B60(v13, &v12[*(v10 + 32)]);
  sub_25ADF8BD0(v12, v22);
  __swift_destroy_boxed_opaque_existential_1(v21);
  return sub_25ADF91AC(v12, type metadata accessor for NDOWarrantyProperties);
}

BOOL _s5NDOUI21NDOWarrantyPropertiesV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NDOSettingsCoverageSectionOfferProperties(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12FF8, &qword_25AE15680);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = (&v21 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA13058, &qword_25AE15860);
  MEMORY[0x28223BE20](v11);
  v13 = &v21 - v12;
  if (*a1 != *a2 && (sub_25AE10E2C() & 1) == 0 || *(a1 + 16) != *(a2 + 16) || (*(a1 + 24) != *(a2 + 24) || *(a1 + 32) != *(a2 + 32)) && (sub_25AE10E2C() & 1) == 0)
  {
    return 0;
  }

  v15 = *(a1 + 48);
  v16 = *(a2 + 48);
  if (v15)
  {
    if (!v16 || (*(a1 + 40) != *(a2 + 40) || v15 != v16) && (sub_25AE10E2C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v16)
  {
    return 0;
  }

  v17 = *(type metadata accessor for NDOWarrantyProperties(0) + 32);
  v18 = *(v11 + 48);
  sub_25ADF7F28(a1 + v17, v13);
  sub_25ADF7F28(a2 + v17, &v13[v18]);
  v19 = *(v5 + 48);
  if (v19(v13, 1, v4) != 1)
  {
    sub_25ADF7F28(v13, v10);
    if (v19(&v13[v18], 1, v4) == 1)
    {
      sub_25ADF91AC(v10, type metadata accessor for NDOSettingsCoverageSectionOfferProperties);
      goto LABEL_20;
    }

    sub_25ADF920C(&v13[v18], v7);
    v20 = _s5NDOUI41NDOSettingsCoverageSectionOfferPropertiesV2eeoiySbAC_ACtFZ_0(v10, v7);
    sub_25ADF91AC(v7, type metadata accessor for NDOSettingsCoverageSectionOfferProperties);
    sub_25ADF91AC(v10, type metadata accessor for NDOSettingsCoverageSectionOfferProperties);
    sub_25ADDE8CC(v13, &qword_27FA12FF8, &qword_25AE15680);
    return v20;
  }

  if (v19(&v13[v18], 1, v4) != 1)
  {
LABEL_20:
    sub_25ADDE8CC(v13, &qword_27FA13058, &qword_25AE15860);
    return 0;
  }

  sub_25ADDE8CC(v13, &qword_27FA12FF8, &qword_25AE15680);
  return 1;
}

unint64_t sub_25ADF8AC8()
{
  result = qword_27FA13008;
  if (!qword_27FA13008)
  {
    result = swift_getWitnessTable(byte_25AE1580C, &type metadata for NDOWarrantyProperties.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FA13008);
  }

  return result;
}

uint64_t sub_25ADF8B1C(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = type metadata accessor for NDOSettingsCoverageSectionOfferProperties(255);
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25ADF8B60(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12FF8, &qword_25AE15680);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25ADF8BD0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NDOWarrantyProperties(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25ADF8C48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12FF8, &qword_25AE15680);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_25ADF8D18(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12FF8, &qword_25AE15680);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_25ADF8DC8(uint64_t a1)
{
  sub_25ADF7620();
  if (v1 <= 0x3F)
  {
    sub_25ADF8E6C(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_25ADF8E6C(uint64_t a1)
{
  if (!qword_27FA13038)
  {
    type metadata accessor for NDOSettingsCoverageSectionOfferProperties(255);
    v1 = sub_25AE10C7C();
    if (!v2)
    {
      atomic_store(v1, &qword_27FA13038);
    }
  }
}

unint64_t sub_25ADF8ED8()
{
  result = qword_27FA13040;
  if (!qword_27FA13040)
  {
    result = swift_getWitnessTable(byte_25AE157E4, &type metadata for NDOWarrantyProperties.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FA13040);
  }

  return result;
}

unint64_t sub_25ADF8F30()
{
  result = qword_27FA13048;
  if (!qword_27FA13048)
  {
    result = swift_getWitnessTable(aMxb, &type metadata for NDOWarrantyProperties.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FA13048);
  }

  return result;
}

unint64_t sub_25ADF8F88()
{
  result = qword_27FA13050;
  if (!qword_27FA13050)
  {
    result = swift_getWitnessTable(aTb, &type metadata for NDOWarrantyProperties.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FA13050);
  }

  return result;
}

uint64_t sub_25ADF8FDC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x754E6C6169726573 && a2 == 0xEC0000007265626DLL;
  if (v4 || (sub_25AE10E2C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7466656854736168 && a2 == 0xEF73736F4C646E41 || (sub_25AE10E2C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6567617265766F63 && a2 == 0xED00006C6562614CLL || (sub_25AE10E2C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000017 && 0x800000025AE1EA50 == a2 || (sub_25AE10E2C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000026 && 0x800000025AE1EB70 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_25AE10E2C();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_25ADF91AC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_25ADF920C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NDOSettingsCoverageSectionOfferProperties(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

__n128 NDODWFooterView.init(model:action:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = *a1;
  result = *(a1 + 8);
  *(a4 + 8) = result;
  *(a4 + 24) = a2;
  *(a4 + 32) = a3;
  return result;
}

uint64_t sub_25ADF9288()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (v2)
  {
    v26 = MEMORY[0x277D84F90];
    result = sub_25ADFFF80(0, v2, 0);
    v4 = 0;
    v20 = v1;
    v21 = *(v1 + 16);
    v5 = v26;
    v6 = (v1 + 80);
    v19 = v2;
    while (v21 != v4)
    {
      if (v4 >= *(v1 + 16))
      {
        goto LABEL_10;
      }

      v22 = v5;
      v8 = *(v6 - 6);
      v7 = *(v6 - 5);
      v9 = *(v6 - 4);
      v10 = *(v6 - 3);
      v12 = *(v6 - 2);
      v11 = *(v6 - 1);
      v13 = *v6;

      sub_25ADE48D8(v9, v10, v12, v11, v13);

      sub_25ADE48D8(v9, v10, v12, v11, v13);

      sub_25ADE4930(v9, v10, v12, v11, v13);
      *&v23 = 91;
      *(&v23 + 1) = 0xE100000000000000;
      MEMORY[0x25F8574D0](v8, v7);
      MEMORY[0x25F8574D0](10333, 0xE200000000000000);
      v14 = sub_25AE10E1C();
      MEMORY[0x25F8574D0](v14);

      MEMORY[0x25F8574D0](41, 0xE100000000000000);
      v15 = v23;
      v24 = MEMORY[0x277D837D0];
      v25 = sub_25ADF7294();
      v5 = v22;

      sub_25ADE4930(v9, v10, v12, v11, v13);
      v23 = v15;
      v26 = v22;
      v17 = *(v22 + 16);
      v16 = *(v22 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_25ADFFF80((v16 > 1), v17 + 1, 1);
        v5 = v26;
      }

      ++v4;
      *(v5 + 16) = v17 + 1;
      result = sub_25ADFA8A8(&v23, v5 + 40 * v17 + 32);
      v6 += 56;
      v1 = v20;
      if (v19 == v4)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
LABEL_8:
    v18 = sub_25AE10ADC();

    return v18;
  }

  return result;
}

uint64_t NDODWFooterView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v19 = *v1;
  v20 = v3;
  v21 = *(v1 + 4);
  v4 = v1[1];
  v17[0] = *v1;
  v17[1] = v4;
  v18 = *(v1 + 4);
  sub_25ADF9288();
  sub_25AE1051C();
  v5 = sub_25AE1081C();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  KeyPath = swift_getKeyPath();
  v13 = swift_allocObject();
  v14 = v20;
  *(v13 + 16) = v19;
  *(v13 + 32) = v14;
  *(v13 + 48) = v21;
  v15 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA13060, &qword_25AE15898) + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA13068, &qword_25AE158A0);
  sub_25ADF978C(&v19, v17);
  result = sub_25AE1034C();
  *v15 = KeyPath;
  *a1 = v5;
  *(a1 + 8) = v7;
  *(a1 + 16) = v9 & 1;
  *(a1 + 24) = v11;
  return result;
}

uint64_t sub_25ADF9680(uint64_t a1)
{
  v2 = sub_25AE1035C();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_25AE1040C();
}

unint64_t sub_25ADF97E0()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  result = sub_25AE1017C();
  v5 = HIBYTE(v4) & 0xF;
  v6 = result & 0xFFFFFFFFFFFFLL;
  if ((v4 & 0x2000000000000000) != 0)
  {
    v7 = HIBYTE(v4) & 0xF;
  }

  else
  {
    v7 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v7)
  {

    return sub_25AE1032C();
  }

  if ((v4 & 0x1000000000000000) != 0)
  {
    v41 = 0;
    v9 = sub_25ADF9EA8(result, v4, 10);
    v34 = v33;

    if ((v34 & 1) == 0)
    {
      goto LABEL_63;
    }

    return sub_25AE1032C();
  }

  if ((v4 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (v4 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = sub_25AE10CEC();
      v6 = v35;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v6 >= 1)
      {
        if (--v6)
        {
          v9 = 0;
          if (result)
          {
            v16 = (result + 1);
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                goto LABEL_61;
              }

              v18 = 10 * v9;
              if ((v9 * 10) >> 64 != (10 * v9) >> 63)
              {
                goto LABEL_61;
              }

              v9 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                goto LABEL_61;
              }

              ++v16;
              if (!--v6)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

        goto LABEL_61;
      }

      goto LABEL_72;
    }

    if (v8 != 45)
    {
      if (v6)
      {
        v9 = 0;
        if (result)
        {
          while (1)
          {
            v22 = *result - 48;
            if (v22 > 9)
            {
              goto LABEL_61;
            }

            v23 = 10 * v9;
            if ((v9 * 10) >> 64 != (10 * v9) >> 63)
            {
              goto LABEL_61;
            }

            v9 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              goto LABEL_61;
            }

            ++result;
            if (!--v6)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_60;
      }

LABEL_61:
      v9 = 0;
      LOBYTE(v6) = 1;
LABEL_62:
      v41 = v6;
      v27 = v6;

      if ((v27 & 1) == 0)
      {
LABEL_63:
        if ((v9 & 0x8000000000000000) == 0 && v9 < *(v2 + 16))
        {
          v28 = v2 + 56 * v9;
          v29 = *(v28 + 56);
          v30 = *(v28 + 64);
          v31 = *(v28 + 72);
          v32 = *(v28 + 80);
          v36 = *(v28 + 48);
          v37 = v29;
          v38 = v30;
          v39 = v31;
          v40 = v32;
          sub_25ADE48D8(v36, v29, v30, v31, v32);
          v1(&v36);
          sub_25ADE4930(v36, v37, v38, v39, v40);
          return sub_25AE1033C();
        }
      }

      return sub_25AE1032C();
    }

    if (v6 >= 1)
    {
      if (--v6)
      {
        v9 = 0;
        if (result)
        {
          v10 = (result + 1);
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              goto LABEL_61;
            }

            v12 = 10 * v9;
            if ((v9 * 10) >> 64 != (10 * v9) >> 63)
            {
              goto LABEL_61;
            }

            v9 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              goto LABEL_61;
            }

            ++v10;
            if (!--v6)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_60:
        LOBYTE(v6) = 0;
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v36 = result;
  v37 = v4 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result != 45)
    {
      if (v5)
      {
        v9 = 0;
        v24 = &v36;
        while (1)
        {
          v25 = *v24 - 48;
          if (v25 > 9)
          {
            break;
          }

          v26 = 10 * v9;
          if ((v9 * 10) >> 64 != (10 * v9) >> 63)
          {
            break;
          }

          v9 = v26 + v25;
          if (__OFADD__(v26, v25))
          {
            break;
          }

          v24 = (v24 + 1);
          if (!--v5)
          {
            goto LABEL_60;
          }
        }
      }

      goto LABEL_61;
    }

    if (v5)
    {
      v6 = v5 - 1;
      if (v5 != 1)
      {
        v9 = 0;
        v13 = &v36 + 1;
        while (1)
        {
          v14 = *v13 - 48;
          if (v14 > 9)
          {
            break;
          }

          v15 = 10 * v9;
          if ((v9 * 10) >> 64 != (10 * v9) >> 63)
          {
            break;
          }

          v9 = v15 - v14;
          if (__OFSUB__(v15, v14))
          {
            break;
          }

          ++v13;
          if (!--v6)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_71;
  }

  if (v5)
  {
    v6 = v5 - 1;
    if (v5 != 1)
    {
      v9 = 0;
      v19 = &v36 + 1;
      while (1)
      {
        v20 = *v19 - 48;
        if (v20 > 9)
        {
          break;
        }

        v21 = 10 * v9;
        if ((v9 * 10) >> 64 != (10 * v9) >> 63)
        {
          break;
        }

        v9 = v21 + v20;
        if (__OFADD__(v21, v20))
        {
          break;
        }

        ++v19;
        if (!--v6)
        {
          goto LABEL_62;
        }
      }
    }

    goto LABEL_61;
  }

LABEL_73:
  __break(1u);
  return result;
}

uint64_t sub_25ADF9B64@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v19 = *v1;
  v20 = v3;
  v21 = *(v1 + 4);
  v4 = v1[1];
  v17[0] = *v1;
  v17[1] = v4;
  v18 = *(v1 + 4);
  sub_25ADF9288();
  sub_25AE1051C();
  v5 = sub_25AE1081C();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  KeyPath = swift_getKeyPath();
  v13 = swift_allocObject();
  v14 = v20;
  *(v13 + 16) = v19;
  *(v13 + 32) = v14;
  *(v13 + 48) = v21;
  v15 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA13060, &qword_25AE15898) + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA13068, &qword_25AE158A0);
  sub_25ADF978C(&v19, v17);
  result = sub_25AE1034C();
  *v15 = KeyPath;
  *a1 = v5;
  *(a1 + 8) = v7;
  *(a1 + 16) = v9 & 1;
  *(a1 + 24) = v11;
  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_25ADF9CCC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_25ADF9D14(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_25ADF9D70()
{
  result = qword_27FA13070;
  if (!qword_27FA13070)
  {
    v5[4] = v0;
    v5[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA13060, &qword_25AE15898);
    v4 = sub_25ADF9DFC();
    v5[0] = MEMORY[0x277CE0BC8];
    v5[1] = v4;
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v5);
    atomic_store(result, &qword_27FA13070);
  }

  return result;
}

unint64_t sub_25ADF9DFC()
{
  result = qword_27FA13078;
  if (!qword_27FA13078)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA13068, &qword_25AE158A0);
    result = swift_getWitnessTable(MEMORY[0x277CE0868], v3, v0, v1);
    atomic_store(result, &qword_27FA13078);
  }

  return result;
}

uint64_t objectdestroyTm()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

unsigned __int8 *sub_25ADF9EA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_25AE10BAC();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_25ADFA434(result, v5);
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_25AE10CEC();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_25ADFA434(uint64_t a1, unint64_t a2)
{
  v2 = sub_25AE10BBC();
  v6 = sub_25ADFA4B4(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_25ADFA4B4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_25AE10C8C();
    if (!v9 || (v10 = v9, v11 = sub_25ADDDED4(v9, 0), v12 = sub_25ADFA60C(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_25AE10B1C();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_25AE10B1C();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_25AE10CEC();
LABEL_4:

  return sub_25AE10B1C();
}

unint64_t sub_25ADFA60C(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_25ADFA82C(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_25AE10B7C();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_25AE10CEC();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_25ADFA82C(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_25AE10B5C();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

unint64_t sub_25ADFA82C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_25AE10B8C();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x25F857500](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_25ADFA8A8(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void NDOItem.action.getter(uint64_t a1@<X8>)
{
  v3 = *(v1 + 112);
  v15[6] = *(v1 + 96);
  v15[7] = v3;
  v15[8] = *(v1 + 128);
  v16 = *(v1 + 144);
  v4 = *(v1 + 48);
  v15[2] = *(v1 + 32);
  v15[3] = v4;
  v5 = *(v1 + 80);
  v15[4] = *(v1 + 64);
  v15[5] = v5;
  v6 = *(v1 + 16);
  v15[0] = *v1;
  v15[1] = v6;
  v7 = sub_25ADFA998(v15);
  v8 = sub_25ADFA9A4(v15);
  v9 = qword_25AE167F0[v7];
  v10 = *(v8 + qword_25AE16770[v7]);
  v11 = *(v8 + qword_25AE16790[v7]);
  v12 = *(v8 + qword_25AE167B0[v7]);
  v13 = *(v8 + qword_25AE167D0[v7]);
  *a1 = v10;
  *(a1 + 8) = v11;
  *(a1 + 16) = v12;
  *(a1 + 24) = v13;
  v14 = *(v8 + v9);
  *(a1 + 32) = v14;
  sub_25ADE48D8(v10, v11, v12, v13, v14);
}

uint64_t sub_25ADFA9B8()
{
  v1 = 0x656369766564;
  v2 = 0x64726163616C70;
  if (*v0 != 2)
  {
    v2 = 0x6F6D6F7270;
  }

  if (*v0)
  {
    v1 = 1802398060;
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

uint64_t sub_25ADFAA24@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_25ADFCF40(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_25ADFAA4C(uint64_t a1)
{
  v2 = sub_25ADFC458();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25ADFAA88(uint64_t a1)
{
  v2 = sub_25ADFC458();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25ADFAAC4(uint64_t a1)
{
  v2 = sub_25ADFC650();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25ADFAB00(uint64_t a1)
{
  v2 = sub_25ADFC650();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25ADFAB3C(uint64_t a1)
{
  v2 = sub_25ADFC5FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25ADFAB78(uint64_t a1)
{
  v2 = sub_25ADFC5FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25ADFABB4(uint64_t a1)
{
  v2 = sub_25ADFC554();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25ADFABF0(uint64_t a1)
{
  v2 = sub_25ADFC554();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25ADFAC2C(uint64_t a1)
{
  v2 = sub_25ADFC4AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25ADFAC68(uint64_t a1)
{
  v2 = sub_25ADFC4AC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NDOItem.encode(to:)(void *a1)
{
  v2 = v1;
  *&v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA13080, "|>");
  *&v58 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v57 = &v50 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA13088, &qword_25AE15958);
  v55 = *(v5 - 8);
  v56 = v5;
  MEMORY[0x28223BE20](v5);
  v54 = &v50 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA13090, &qword_25AE15960);
  v52 = *(v7 - 8);
  v53 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v50 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA13098, &qword_25AE15968);
  v51 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v50 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA130A0, &qword_25AE15970);
  v60 = *(v13 - 8);
  v61 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v50 - v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25ADFC458();
  sub_25AE10E8C();
  v16 = *(v2 + 112);
  v72[6] = *(v2 + 96);
  v72[7] = v16;
  v72[8] = *(v2 + 128);
  v73 = *(v2 + 144);
  v17 = *(v2 + 48);
  v72[2] = *(v2 + 32);
  v72[3] = v17;
  v18 = *(v2 + 80);
  v72[4] = *(v2 + 64);
  v72[5] = v18;
  v19 = *(v2 + 16);
  v72[0] = *v2;
  v72[1] = v19;
  v20 = sub_25ADFA998(v72);
  v21 = sub_25ADFA9A4(v72);
  v22 = v21;
  if (v20 > 1)
  {
    if (v20 == 2)
    {
      LOBYTE(v62) = 2;
      sub_25ADFC554();
      v12 = v54;
      v23 = v61;
      sub_25AE10D9C();
      v31 = *v22;
      v32 = *(v22 + 32);
      v63 = *(v22 + 16);
      v64 = v32;
      v62 = v31;
      v33 = *(v22 + 48);
      v34 = *(v22 + 64);
      v35 = *(v22 + 80);
      LOBYTE(v68) = *(v22 + 96);
      v66 = v34;
      v67 = v35;
      v65 = v33;
      sub_25ADFC5A8();
      v10 = v56;
      sub_25AE10DFC();
      v30 = v55;
    }

    else
    {
      LOBYTE(v62) = 3;
      sub_25ADFC4AC();
      v12 = v57;
      v23 = v61;
      sub_25AE10D9C();
      v43 = *(v22 + 16);
      v62 = *v22;
      v63 = v43;
      v44 = *(v22 + 32);
      v45 = *(v22 + 48);
      v46 = *(v22 + 80);
      v66 = *(v22 + 64);
      v67 = v46;
      v64 = v44;
      v65 = v45;
      v47 = *(v22 + 96);
      v48 = *(v22 + 112);
      v49 = *(v22 + 128);
      v71 = *(v22 + 144);
      v69 = v48;
      v70 = v49;
      v68 = v47;
      sub_25ADFC500();
      v10 = v59;
      sub_25AE10DFC();
      v30 = v58;
    }
  }

  else
  {
    if (v20)
    {
      v36 = *v21;
      v37 = *(v21 + 8);
      v38 = *(v21 + 48);
      LOBYTE(v62) = 1;
      sub_25ADFC5FC();
      v39 = *(v22 + 16);
      v58 = *(v22 + 32);
      v59 = v39;
      v40 = v61;
      sub_25AE10D9C();
      *&v62 = v36;
      *(&v62 + 1) = v37;
      v63 = v59;
      v64 = v58;
      LOBYTE(v65) = v38;
      sub_25ADEAEDC();
      v41 = v53;
      sub_25AE10DFC();
      (*(v52 + 8))(v9, v41);
      return (*(v60 + 8))(v15, v40);
    }

    LOBYTE(v62) = 0;
    sub_25ADFC650();
    v23 = v61;
    sub_25AE10D9C();
    v24 = *v22;
    v25 = *(v22 + 16);
    v26 = *(v22 + 48);
    v64 = *(v22 + 32);
    v65 = v26;
    v62 = v24;
    v63 = v25;
    v27 = *(v22 + 64);
    v28 = *(v22 + 80);
    v29 = *(v22 + 96);
    LOBYTE(v69) = *(v22 + 112);
    v67 = v28;
    v68 = v29;
    v66 = v27;
    sub_25ADFC6A4();
    sub_25AE10DFC();
    v30 = v51;
  }

  (*(v30 + 8))(v12, v10);
  return (*(v60 + 8))(v15, v23);
}

uint64_t NDOItem.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 112);
  v9[6] = *(v1 + 96);
  v9[7] = v3;
  v9[8] = *(v1 + 128);
  v10 = *(v1 + 144);
  v4 = *(v1 + 48);
  v9[2] = *(v1 + 32);
  v9[3] = v4;
  v5 = *(v1 + 80);
  v9[4] = *(v1 + 64);
  v9[5] = v5;
  v6 = *(v1 + 16);
  v9[0] = *v1;
  v9[1] = v6;
  v7 = sub_25ADFA998(v9);
  sub_25ADFA9A4(v9);
  if (v7 <= 1)
  {
    if (!v7)
    {
      MEMORY[0x25F8577E0](0);
      return sub_25AE10B2C();
    }

    MEMORY[0x25F8577E0](1);
    sub_25AE10B2C();
    return NDOAction.hash(into:)(a1);
  }

  if (v7 == 2)
  {
    MEMORY[0x25F8577E0](2);
    sub_25AE10B2C();
    sub_25AE10B2C();
    sub_25AE10B2C();
    sub_25AE10B2C();
    return NDOAction.hash(into:)(a1);
  }

  MEMORY[0x25F8577E0](3);
  return NDOPromoModel.hash(into:)(a1);
}

uint64_t NDOItem.hashValue.getter()
{
  sub_25AE10E3C();
  NDOItem.hash(into:)(v1);
  return sub_25AE10E6C();
}

uint64_t NDOItem.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA130E8, &qword_25AE15978);
  v48 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v52 = &v40 - v3;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA130F0, &qword_25AE15980);
  v45 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v51 = &v40 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA130F8, &qword_25AE15988);
  v43 = *(v5 - 8);
  v44 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v40 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA13100, &qword_25AE15990);
  v42 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v40 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA13108, &unk_25AE15998);
  v50 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v40 - v12;
  v14 = a1[3];
  v88 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_25ADFC458();
  v15 = v53;
  sub_25AE10E7C();
  if (!v15)
  {
    v40 = v8;
    v41 = v10;
    v53 = v7;
    v17 = v51;
    v16 = v52;
    v18 = v50;
    v19 = sub_25AE10D8C();
    v20 = (2 * *(v19 + 16)) | 1;
    v84 = v19;
    v85 = v19 + 32;
    v86 = 0;
    v87 = v20;
    v21 = sub_25ADEA7B0();
    if (v21 != 4 && v86 == v87 >> 1)
    {
      if (v21 > 1u)
      {
        if (v21 != 2)
        {
          LOBYTE(v64) = 3;
          sub_25ADFC4AC();
          sub_25AE10D0C();
          sub_25ADFC6F8();
          v32 = v46;
          sub_25AE10D7C();
          (*(v48 + 8))(v16, v32);
          (*(v18 + 8))(v13, v11);
          swift_unknownObjectRelease();
          v60 = v70;
          v61 = v71;
          v62 = v72;
          v63 = v73;
          v56 = v66;
          v57 = v67;
          v58 = v68;
          v59 = v69;
          v54 = v64;
          v55 = v65;
          sub_25ADFC74C(&v54);
          v80 = v60;
          v81 = v61;
          v82 = v62;
          v83 = v63;
          v76 = v56;
          v77 = v57;
          v78 = v58;
          v79 = v59;
          v34 = v54;
          v35 = v55;
LABEL_14:
          v74 = v34;
          v75 = v35;
          v33 = v49;
          goto LABEL_15;
        }

        LOBYTE(v64) = 2;
        sub_25ADFC554();
        sub_25AE10D0C();
        sub_25ADFC75C();
        v29 = v47;
        sub_25AE10D7C();
        (*(v45 + 8))(v17, v29);
        (*(v18 + 8))(v13, v11);
        swift_unknownObjectRelease();
        v68 = v58;
        v69 = v59;
        LOBYTE(v70) = v60;
        v64 = v54;
        v65 = v55;
        v66 = v56;
        v67 = v57;
        sub_25ADFC7B0(&v64);
      }

      else
      {
        if (!v21)
        {
          LOBYTE(v64) = 0;
          sub_25ADFC650();
          v22 = v41;
          sub_25AE10D0C();
          sub_25ADFC7D0();
          v23 = v40;
          sub_25AE10D7C();
          (*(v42 + 8))(v22, v23);
          (*(v18 + 8))(v13, v11);
          swift_unknownObjectRelease();
          v68 = v58;
          v69 = v59;
          v70 = v60;
          LOBYTE(v71) = v61;
          v64 = v54;
          v65 = v55;
          v66 = v56;
          v67 = v57;
          sub_25ADFC824(&v64);
          v80 = v70;
          v81 = v71;
          v82 = v72;
          v83 = v73;
          v76 = v66;
          v77 = v67;
          v78 = v68;
          v79 = v69;
          v74 = v64;
          v75 = v65;
          v33 = v49;
LABEL_15:
          v36 = v81;
          *(v33 + 96) = v80;
          *(v33 + 112) = v36;
          *(v33 + 128) = v82;
          *(v33 + 144) = v83;
          v37 = v77;
          *(v33 + 32) = v76;
          *(v33 + 48) = v37;
          v38 = v79;
          *(v33 + 64) = v78;
          *(v33 + 80) = v38;
          v39 = v75;
          *v33 = v74;
          *(v33 + 16) = v39;
          return __swift_destroy_boxed_opaque_existential_1(v88);
        }

        LOBYTE(v64) = 1;
        sub_25ADFC5FC();
        v30 = v53;
        sub_25AE10D0C();
        sub_25ADEB128();
        v31 = v44;
        sub_25AE10D7C();
        (*(v43 + 8))(v30, v31);
        (*(v18 + 8))(v13, v11);
        swift_unknownObjectRelease();
        v64 = v54;
        v65 = v55;
        v66 = v56;
        LOBYTE(v67) = v57;
        sub_25ADFC7C0(&v64);
      }

      v80 = v70;
      v81 = v71;
      v82 = v72;
      v83 = v73;
      v76 = v66;
      v77 = v67;
      v78 = v68;
      v79 = v69;
      v34 = v64;
      v35 = v65;
      goto LABEL_14;
    }

    v24 = v13;
    v25 = sub_25AE10CDC();
    swift_allocError();
    v27 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12B08, &qword_25AE12AA0);
    *v27 = &type metadata for NDOItem;
    sub_25AE10D1C();
    sub_25AE10CCC();
    (*(*(v25 - 8) + 104))(v27, *MEMORY[0x277D84160], v25);
    swift_willThrow();
    (*(v18 + 8))(v24, v11);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v88);
}

uint64_t sub_25ADFBE48()
{
  sub_25AE10E3C();
  NDOItem.hash(into:)(v1);
  return sub_25AE10E6C();
}

uint64_t sub_25ADFBE8C(uint64_t a1)
{
  sub_25AE10E3C();
  NDOItem.hash(into:)(v2);
  return sub_25AE10E6C();
}

uint64_t _s5NDOUI7NDOItemO2eeoiySbAC_ACtFZ_0(uint64_t a1, __int128 *a2)
{
  v2 = *(a1 + 112);
  v3 = *(a1 + 80);
  v90 = *(a1 + 96);
  v91 = v2;
  v4 = *(a1 + 112);
  v92 = *(a1 + 128);
  v5 = *(a1 + 48);
  v6 = *(a1 + 16);
  v86 = *(a1 + 32);
  v87 = v5;
  v7 = *(a1 + 48);
  v8 = *(a1 + 80);
  v88 = *(a1 + 64);
  v89 = v8;
  v9 = *(a1 + 16);
  v85[0] = *a1;
  v85[1] = v9;
  v10 = a2[7];
  v11 = a2[5];
  v100 = a2[6];
  v101 = v10;
  v12 = a2[7];
  v102 = a2[8];
  v13 = a2[3];
  v14 = a2[1];
  v96 = a2[2];
  v97 = v13;
  v15 = a2[3];
  v16 = a2[5];
  v98 = a2[4];
  v99 = v16;
  v17 = a2[1];
  v94 = *a2;
  v95 = v17;
  v18 = *(a1 + 112);
  v104[6] = *(a1 + 96);
  v104[7] = v18;
  v104[8] = *(a1 + 128);
  v19 = *(a1 + 32);
  v104[3] = *(a1 + 48);
  v20 = *(a1 + 80);
  v104[4] = *(a1 + 64);
  v104[5] = v20;
  v21 = *(a1 + 16);
  v104[0] = *a1;
  v104[1] = v21;
  v104[2] = v19;
  v22 = a2[8];
  v113 = v12;
  v114 = v22;
  v112 = v100;
  v108 = v96;
  v109 = v15;
  v110 = v98;
  v111 = v11;
  v106 = v94;
  v107 = v14;
  v116[6] = v90;
  v116[7] = v4;
  v116[8] = *(a1 + 128);
  v116[2] = v86;
  v116[3] = v7;
  v116[4] = v88;
  v116[5] = v3;
  v93 = *(a1 + 144);
  v103 = *(a2 + 18);
  v23 = *(a2 + 18);
  v105 = *(a1 + 144);
  v115 = v23;
  v117 = *(a1 + 144);
  v116[0] = v85[0];
  v116[1] = v6;
  v24 = sub_25ADFA998(v116);
  if (v24 > 1)
  {
    if (v24 == 2)
    {
      v31 = sub_25ADFA9A4(v116);
      v81 = v100;
      v82 = v101;
      v83 = v102;
      v84 = v103;
      v77 = v96;
      v78 = v97;
      v79 = v98;
      v80 = v99;
      v75 = v94;
      v76 = v95;
      if (sub_25ADFA998(&v75) == 2)
      {
        v32 = sub_25ADFA9A4(&v75);
        v33 = *(v31 + 80);
        v67 = *(v31 + 64);
        v68 = v33;
        LOBYTE(v69) = *(v31 + 96);
        v34 = *(v31 + 16);
        v63 = *v31;
        v64 = v34;
        v35 = *(v31 + 48);
        v65 = *(v31 + 32);
        v66 = v35;
        v58 = *(v32 + 48);
        v59 = *(v32 + 64);
        v60 = *(v32 + 80);
        LOBYTE(v61) = *(v32 + 96);
        v55 = *v32;
        v56 = *(v32 + 16);
        v57 = *(v32 + 32);
        sub_25ADFD09C(&v94, v73);
        sub_25ADFD09C(v85, v73);
        sub_25ADFD09C(v85, v73);
        sub_25ADFD09C(&v94, v73);
        v30 = _s5NDOUI15NDOPlacardModelV2eeoiySbAC_ACtFZ_0(&v63, &v55);
        goto LABEL_12;
      }
    }

    else
    {
      v45 = sub_25ADFA9A4(v116);
      v81 = v100;
      v82 = v101;
      v83 = v102;
      v84 = v103;
      v77 = v96;
      v78 = v97;
      v79 = v98;
      v80 = v99;
      v75 = v94;
      v76 = v95;
      if (sub_25ADFA998(&v75) == 3)
      {
        v46 = sub_25ADFA9A4(&v75);
        v73[6] = *(v45 + 96);
        v73[7] = *(v45 + 112);
        v73[8] = *(v45 + 128);
        v74 = *(v45 + 144);
        v73[2] = *(v45 + 32);
        v73[3] = *(v45 + 48);
        v73[4] = *(v45 + 64);
        v73[5] = *(v45 + 80);
        v73[0] = *v45;
        v73[1] = *(v45 + 16);
        v47 = *(v46 + 112);
        v69 = *(v46 + 96);
        v70 = v47;
        v71 = *(v46 + 128);
        v72 = *(v46 + 144);
        v48 = *(v46 + 48);
        v65 = *(v46 + 32);
        v66 = v48;
        v49 = *(v46 + 80);
        v67 = *(v46 + 64);
        v68 = v49;
        v50 = *(v46 + 16);
        v63 = *v46;
        v64 = v50;
        sub_25ADFD09C(&v94, &v55);
        sub_25ADFD09C(v85, &v55);
        sub_25ADFD09C(v85, &v55);
        sub_25ADFD09C(&v94, &v55);
        v30 = _s5NDOUI13NDOPromoModelV2eeoiySbAC_ACtFZ_0(v73, &v63);
        goto LABEL_12;
      }
    }

LABEL_13:
    sub_25ADFD09C(v85, &v75);
    sub_25ADFD09C(&v94, &v75);
    sub_25ADFD0D4(v104);
    v51 = 0;
    return v51 & 1;
  }

  if (v24)
  {
    v36 = sub_25ADFA9A4(v116);
    v37 = *v36;
    v38 = *(v36 + 8);
    v53 = *(v36 + 32);
    v54 = *(v36 + 16);
    v39 = *(v36 + 48);
    v75 = v94;
    v76 = v95;
    v79 = v98;
    v80 = v99;
    v77 = v96;
    v78 = v97;
    v84 = v103;
    v82 = v101;
    v83 = v102;
    v81 = v100;
    if (sub_25ADFA998(&v75) == 1)
    {
      v40 = sub_25ADFA9A4(&v75);
      v41 = *v40;
      v42 = *(v40 + 8);
      v43 = *(v40 + 48);
      *&v63 = v37;
      *(&v63 + 1) = v38;
      v64 = v54;
      v65 = v53;
      LOBYTE(v66) = v39;
      *&v55 = v41;
      *(&v55 + 1) = v42;
      v44 = *(v40 + 32);
      v56 = *(v40 + 16);
      v57 = v44;
      LOBYTE(v58) = v43;
      sub_25ADFD09C(&v94, v73);
      sub_25ADFD09C(v85, v73);
      sub_25ADFD09C(v85, v73);
      sub_25ADFD09C(&v94, v73);
      v30 = _s5NDOUI16NDODWFooterModelV4LinkV2eeoiySbAE_AEtFZ_0(&v63, &v55);
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  v25 = sub_25ADFA9A4(v116);
  v81 = v100;
  v82 = v101;
  v83 = v102;
  v84 = v103;
  v77 = v96;
  v78 = v97;
  v79 = v98;
  v80 = v99;
  v75 = v94;
  v76 = v95;
  if (sub_25ADFA998(&v75))
  {
    goto LABEL_13;
  }

  v26 = sub_25ADFA9A4(&v75);
  v27 = *(v25 + 80);
  v67 = *(v25 + 64);
  v68 = v27;
  v69 = *(v25 + 96);
  LOBYTE(v70) = *(v25 + 112);
  v28 = *(v25 + 16);
  v63 = *v25;
  v64 = v28;
  v29 = *(v25 + 48);
  v65 = *(v25 + 32);
  v66 = v29;
  v59 = *(v26 + 64);
  v60 = *(v26 + 80);
  v61 = *(v26 + 96);
  v62 = *(v26 + 112);
  v55 = *v26;
  v56 = *(v26 + 16);
  v57 = *(v26 + 32);
  v58 = *(v26 + 48);
  sub_25ADFD09C(&v94, v73);
  sub_25ADFD09C(v85, v73);
  sub_25ADFD09C(v85, v73);
  sub_25ADFD09C(&v94, v73);
  v30 = _s5NDOUI14NDODeviceModelV2eeoiySbAC_ACtFZ_0(&v63, &v55);
LABEL_12:
  v51 = v30;
  sub_25ADFD0D4(v104);
  sub_25ADFD13C(&v94);
  sub_25ADFD13C(v85);
  return v51 & 1;
}

unint64_t sub_25ADFC458()
{
  result = qword_27FA130A8;
  if (!qword_27FA130A8)
  {
    result = swift_getWitnessTable(byte_25AE1670C, &type metadata for NDOItem.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FA130A8);
  }

  return result;
}

unint64_t sub_25ADFC4AC()
{
  result = qword_27FA130B0;
  if (!qword_27FA130B0)
  {
    result = swift_getWitnessTable(aMob, &type metadata for NDOItem.PromoCodingKeys, v0, v1);
    atomic_store(result, &qword_27FA130B0);
  }

  return result;
}

unint64_t sub_25ADFC500()
{
  result = qword_27FA130B8;
  if (!qword_27FA130B8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NDOPromoModel, &type metadata for NDOPromoModel, v0, v1);
    atomic_store(result, &qword_27FA130B8);
  }

  return result;
}

unint64_t sub_25ADFC554()
{
  result = qword_27FA130C0;
  if (!qword_27FA130C0)
  {
    result = swift_getWitnessTable(byte_25AE1666C, &type metadata for NDOItem.PlacardCodingKeys, v0, v1);
    atomic_store(result, &qword_27FA130C0);
  }

  return result;
}

unint64_t sub_25ADFC5A8()
{
  result = qword_27FA130C8;
  if (!qword_27FA130C8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NDOPlacardModel, &type metadata for NDOPlacardModel, v0, v1);
    atomic_store(result, &qword_27FA130C8);
  }

  return result;
}

unint64_t sub_25ADFC5FC()
{
  result = qword_27FA130D0;
  if (!qword_27FA130D0)
  {
    result = swift_getWitnessTable(aPb, &type metadata for NDOItem.LinkCodingKeys, v0, v1);
    atomic_store(result, &qword_27FA130D0);
  }

  return result;
}

unint64_t sub_25ADFC650()
{
  result = qword_27FA130D8;
  if (!qword_27FA130D8)
  {
    result = swift_getWitnessTable(aPb_0, &type metadata for NDOItem.DeviceCodingKeys, v0, v1);
    atomic_store(result, &qword_27FA130D8);
  }

  return result;
}

unint64_t sub_25ADFC6A4()
{
  result = qword_27FA130E0;
  if (!qword_27FA130E0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NDODeviceModel, &type metadata for NDODeviceModel, v0, v1);
    atomic_store(result, &qword_27FA130E0);
  }

  return result;
}

unint64_t sub_25ADFC6F8()
{
  result = qword_27FA13110;
  if (!qword_27FA13110)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NDOPromoModel, &type metadata for NDOPromoModel, v0, v1);
    atomic_store(result, &qword_27FA13110);
  }

  return result;
}

unint64_t sub_25ADFC75C()
{
  result = qword_27FA13118;
  if (!qword_27FA13118)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NDOPlacardModel, &type metadata for NDOPlacardModel, v0, v1);
    atomic_store(result, &qword_27FA13118);
  }

  return result;
}

unint64_t sub_25ADFC7D0()
{
  result = qword_27FA13120;
  if (!qword_27FA13120)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NDODeviceModel, &type metadata for NDODeviceModel, v0, v1);
    atomic_store(result, &qword_27FA13120);
  }

  return result;
}

unint64_t sub_25ADFC834()
{
  result = qword_27FA13128;
  if (!qword_27FA13128)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NDOItem, &type metadata for NDOItem, v0, v1);
    atomic_store(result, &qword_27FA13128);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_5NDOUI9NDOActionOSg(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 > 7)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy152_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_25ADFC8DC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 152))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 137);
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_25ADFC928(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 136) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 152) = 1;
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
      result = 0.0;
      *(a1 + 96) = 0u;
      *(a1 + 112) = 0u;
      *(a1 + 64) = 0u;
      *(a1 + 80) = 0u;
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0u;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 128) = 0;
      *(a1 + 136) = -a2 << 8;
      *(a1 + 144) = 0;
      return result;
    }

    *(a1 + 152) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_25ADFCA1C()
{
  result = qword_27FA13130;
  if (!qword_27FA13130)
  {
    result = swift_getWitnessTable(byte_25AE162C4, &type metadata for NDOItem.PromoCodingKeys, v0, v1);
    atomic_store(result, &qword_27FA13130);
  }

  return result;
}

unint64_t sub_25ADFCA74()
{
  result = qword_27FA13138;
  if (!qword_27FA13138)
  {
    result = swift_getWitnessTable(aMB, &type metadata for NDOItem.PlacardCodingKeys, v0, v1);
    atomic_store(result, &qword_27FA13138);
  }

  return result;
}

unint64_t sub_25ADFCACC()
{
  result = qword_27FA13140;
  if (!qword_27FA13140)
  {
    result = swift_getWitnessTable(byte_25AE16434, &type metadata for NDOItem.LinkCodingKeys, v0, v1);
    atomic_store(result, &qword_27FA13140);
  }

  return result;
}

unint64_t sub_25ADFCB24()
{
  result = qword_27FA13148;
  if (!qword_27FA13148)
  {
    result = swift_getWitnessTable(byte_25AE164EC, &type metadata for NDOItem.DeviceCodingKeys, v0, v1);
    atomic_store(result, &qword_27FA13148);
  }

  return result;
}

unint64_t sub_25ADFCB7C()
{
  result = qword_27FA13150;
  if (!qword_27FA13150)
  {
    result = swift_getWitnessTable(aB_1, &type metadata for NDOItem.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FA13150);
  }

  return result;
}

unint64_t sub_25ADFCBD4()
{
  result = qword_27FA13158;
  if (!qword_27FA13158)
  {
    result = swift_getWitnessTable(aEkb, &type metadata for NDOItem.DeviceCodingKeys, v0, v1);
    atomic_store(result, &qword_27FA13158);
  }

  return result;
}

unint64_t sub_25ADFCC2C()
{
  result = qword_27FA13160;
  if (!qword_27FA13160)
  {
    result = swift_getWitnessTable("UGB'X_", &type metadata for NDOItem.DeviceCodingKeys, v0, v1);
    atomic_store(result, &qword_27FA13160);
  }

  return result;
}

unint64_t sub_25ADFCC84()
{
  result = qword_27FA13168;
  if (!qword_27FA13168)
  {
    result = swift_getWitnessTable(byte_25AE163A4, &type metadata for NDOItem.LinkCodingKeys, v0, v1);
    atomic_store(result, &qword_27FA13168);
  }

  return result;
}

unint64_t sub_25ADFCCDC()
{
  result = qword_27FA13170;
  if (!qword_27FA13170)
  {
    atomic_store(result, &qword_27FA13170);
  }

  return result;
}

unint64_t sub_25ADFCD34()
{
  result = qword_27FA13178;
  if (!qword_27FA13178)
  {
    result = swift_getWitnessTable(byte_25AE162EC, &type metadata for NDOItem.PlacardCodingKeys, v0, v1);
    atomic_store(result, &qword_27FA13178);
  }

  return result;
}

unint64_t sub_25ADFCD8C()
{
  result = qword_27FA13180;
  if (!qword_27FA13180)
  {
    result = swift_getWitnessTable(byte_25AE16314, &type metadata for NDOItem.PlacardCodingKeys, v0, v1);
    atomic_store(result, &qword_27FA13180);
  }

  return result;
}

unint64_t sub_25ADFCDE4()
{
  result = qword_27FA13188;
  if (!qword_27FA13188)
  {
    result = swift_getWitnessTable(aMmb, &type metadata for NDOItem.PromoCodingKeys, v0, v1);
    atomic_store(result, &qword_27FA13188);
  }

  return result;
}

unint64_t sub_25ADFCE3C()
{
  result = qword_27FA13190;
  if (!qword_27FA13190)
  {
    result = swift_getWitnessTable(aIb, &type metadata for NDOItem.PromoCodingKeys, v0, v1);
    atomic_store(result, &qword_27FA13190);
  }

  return result;
}

unint64_t sub_25ADFCE94()
{
  result = qword_27FA13198;
  if (!qword_27FA13198)
  {
    result = swift_getWitnessTable(byte_25AE16514, &type metadata for NDOItem.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FA13198);
  }

  return result;
}

unint64_t sub_25ADFCEEC()
{
  result = qword_27FA131A0;
  if (!qword_27FA131A0)
  {
    result = swift_getWitnessTable(byte_25AE1653C, &type metadata for NDOItem.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FA131A0);
  }

  return result;
}

uint64_t sub_25ADFCF40(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656369766564 && a2 == 0xE600000000000000;
  if (v4 || (sub_25AE10E2C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1802398060 && a2 == 0xE400000000000000 || (sub_25AE10E2C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x64726163616C70 && a2 == 0xE700000000000000 || (sub_25AE10E2C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F6D6F7270 && a2 == 0xE500000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_25AE10E2C();

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

uint64_t sub_25ADFD0D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA131A8, &unk_25AE16760);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t NDOLinkModel.title.getter()
{
  v1 = *v0;

  return v1;
}

void NDOLinkModel.action.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  v6 = *(v1 + 48);
  *(a1 + 32) = v6;
  sub_25ADE48D8(v2, v3, v4, v5, v6);
}

__n128 NDOLinkModel.init(title:action:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(a3 + 32);
  *a4 = a1;
  *(a4 + 8) = a2;
  result = *a3;
  v6 = *(a3 + 16);
  *(a4 + 16) = *a3;
  *(a4 + 32) = v6;
  *(a4 + 48) = v4;
  return result;
}

uint64_t sub_25ADFD1D8()
{
  if (*v0)
  {
    return 0x6E6F69746361;
  }

  else
  {
    return 0x656C746974;
  }
}

uint64_t sub_25ADFD20C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v6 || (sub_25AE10E2C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E6F69746361 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_25AE10E2C();

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

uint64_t sub_25ADFD2E0(uint64_t a1)
{
  v2 = sub_25ADFD860();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25ADFD31C(uint64_t a1)
{
  v2 = sub_25ADFD860();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NDOLinkModel.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA131B0, &qword_25AE16810);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - v5;
  v7 = *(v1 + 16);
  v13 = *(v1 + 24);
  v14 = v7;
  v8 = *(v1 + 32);
  v11 = *(v1 + 40);
  v12 = v8;
  v21 = *(v1 + 48);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25ADFD860();
  sub_25AE10E8C();
  LOBYTE(v16) = 0;
  v9 = v15;
  sub_25AE10DCC();
  if (!v9)
  {
    v16 = v14;
    v17 = v13;
    v18 = v12;
    v19 = v11;
    v20 = v21;
    v22 = 1;
    sub_25ADE48D8(v14, v13, v12, v11, v21);
    sub_25ADECFA8();
    sub_25AE10DFC();
    sub_25ADE4930(v16, v17, v18, v19, v20);
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t NDOLinkModel.hashValue.getter()
{
  sub_25AE10E3C();
  sub_25AE10B2C();
  NDOAction.hash(into:)(v1);
  return sub_25AE10E6C();
}

void NDOLinkModel.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA131C0, &qword_25AE16818);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25ADFD860();
  sub_25AE10E7C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    LOBYTE(v18) = 0;
    v9 = sub_25AE10D4C();
    v11 = v10;
    v17 = v9;
    v23 = 1;
    sub_25ADECFFC();
    sub_25AE10D7C();
    (*(v6 + 8))(v8, v5);
    v12 = v18;
    v13 = v19;
    v14 = v20;
    v15 = v21;
    v16 = v22;
    *a2 = v17;
    *(a2 + 8) = v11;
    *(a2 + 16) = v12;
    *(a2 + 24) = v13;
    *(a2 + 32) = v14;
    *(a2 + 40) = v15;
    *(a2 + 48) = v16;

    sub_25ADE48D8(v12, v13, v14, v15, v16);
    __swift_destroy_boxed_opaque_existential_1(a1);

    sub_25ADE4930(v12, v13, v14, v15, v16);
  }
}

unint64_t sub_25ADFD860()
{
  result = qword_27FA131B8;
  if (!qword_27FA131B8)
  {
    result = swift_getWitnessTable("\tKB'hY", &type metadata for NDOLinkModel.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FA131B8);
  }

  return result;
}

unint64_t sub_25ADFD8B8()
{
  result = qword_27FA131C8;
  if (!qword_27FA131C8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NDOLinkModel, &type metadata for NDOLinkModel, v0, v1);
    atomic_store(result, &qword_27FA131C8);
  }

  return result;
}

unint64_t sub_25ADFD930()
{
  result = qword_27FA131D0;
  if (!qword_27FA131D0)
  {
    result = swift_getWitnessTable(byte_25AE16AF8, &type metadata for NDOLinkModel.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FA131D0);
  }

  return result;
}

unint64_t sub_25ADFD988()
{
  result = qword_27FA131D8;
  if (!qword_27FA131D8)
  {
    result = swift_getWitnessTable("9EB' Z", &type metadata for NDOLinkModel.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FA131D8);
  }

  return result;
}

unint64_t sub_25ADFD9E0()
{
  result = qword_27FA131E0;
  if (!qword_27FA131E0)
  {
    result = swift_getWitnessTable(aIab, &type metadata for NDOLinkModel.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FA131E0);
  }

  return result;
}

uint64_t NDODWSection.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t NDODWSection.header.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t NDODWSection.footer.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

void NDODWSection.footerModels.getter()
{
  v1 = 0;
  v2 = *(v0 + 48);
  v3 = *(v2 + 16);
  v4 = MEMORY[0x277D84F90];
LABEL_2:
  v5 = v2 - 88 + 120 * v1;
  while (v3 != v1)
  {
    if (v1 >= *(v2 + 16))
    {
      __break(1u);
      return;
    }

    ++v1;
    v6 = (v5 + 120);
    v7 = *(v5 + 232);
    v5 += 120;
    if (v7 == 1)
    {
      v9 = *v6;
      v8 = v6[1];
      v10 = v6[2];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_25ADFFC34(0, *(v4 + 2) + 1, 1, v4);
      }

      v12 = *(v4 + 2);
      v11 = *(v4 + 3);
      if (v12 >= v11 >> 1)
      {
        v4 = sub_25ADFFC34((v11 > 1), v12 + 1, 1, v4);
      }

      *(v4 + 2) = v12 + 1;
      v13 = &v4[24 * v12];
      *(v13 + 4) = v9;
      *(v13 + 5) = v8;
      *(v13 + 6) = v10;
      goto LABEL_2;
    }
  }
}

void NDODWSection.nonFooterItems.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = MEMORY[0x277D84F90];
    do
    {
      v5 = *(v1 + 16);
      v6 = v1 + 32 + 120 * v3;
      for (i = v3; ; ++i)
      {
        if (i >= v5)
        {
          __break(1u);
          return;
        }

        v8 = *v6;
        v9 = *(v6 + 16);
        v10 = *(v6 + 48);
        v27 = *(v6 + 32);
        v28 = v10;
        v26 = v9;
        v25 = v8;
        v11 = *(v6 + 64);
        v12 = *(v6 + 80);
        v13 = *(v6 + 96);
        v32 = *(v6 + 112);
        v30 = v12;
        v31 = v13;
        v29 = v11;
        v3 = i + 1;
        if (v32 != 1)
        {
          break;
        }

        v6 += 120;
        if (v2 == v3)
        {
          return;
        }
      }

      sub_25ADEBD1C(&v25, v24);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v33 = v4;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_25ADFFFA0(0, *(v4 + 16) + 1, 1);
        v4 = v33;
      }

      v16 = *(v4 + 16);
      v15 = *(v4 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_25ADFFFA0((v15 > 1), v16 + 1, 1);
        v4 = v33;
      }

      *(v4 + 16) = v16 + 1;
      v17 = v4 + 120 * v16;
      v18 = v25;
      v19 = v26;
      v20 = v28;
      *(v17 + 64) = v27;
      *(v17 + 80) = v20;
      *(v17 + 32) = v18;
      *(v17 + 48) = v19;
      v21 = v29;
      v22 = v30;
      v23 = v31;
      *(v17 + 144) = v32;
      *(v17 + 112) = v22;
      *(v17 + 128) = v23;
      *(v17 + 96) = v21;
    }

    while (v2 - 1 != i);
  }
}

BOOL NDODWSection.isCoverageSection.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v1 + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = *(v1 + 144);
  return v2 == 1 && v3 == 0;
}

void __swiftcall NDODWSection.init(header:items:footer:)(NDOUI::NDODWSection *__return_ptr retstr, Swift::String_optional header, Swift::OpaquePointer items, Swift::String_optional footer)
{
  object = footer.value._object;
  v165 = retstr;
  countAndFlagsBits = footer.value._countAndFlagsBits;
  v6 = header.value._object;
  v7 = header.value._countAndFlagsBits;
  v8 = sub_25AE1027C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v161 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  rawValue = items._rawValue;
  if (v6)
  {

    v13 = v7;
    v14 = v6;
    goto LABEL_204;
  }

  v162 = v7;
  v163 = 0;
  v164 = object;
  v15 = *(items._rawValue + 2);
  if (!v15)
  {
    v156 = v10;
    sub_25AE1026C();
    v13 = sub_25AE1025C();
    v14 = v157;
    (*(v9 + 8))(v12, v156);
    object = v164;
    goto LABEL_203;
  }

  v212 = MEMORY[0x277D84F90];

  sub_25ADFFFC0(0, v15, 0);
  if (!*(items._rawValue + 2))
  {
LABEL_219:
    __break(1u);
LABEL_220:

    __break(1u);
    return;
  }

  v16 = 0;
  v161 = 0;
  v17 = v212;
  v167 = v15;
  v168 = items._rawValue + 32;
  v18 = 1;
  while (1)
  {
    v19 = &v168[120 * v16];
    v20 = *(v19 + 4);
    v21 = *(v19 + 5);
    v170 = v18;
    v208 = v20;
    v209[0] = v21;
    v209[1] = *(v19 + 6);
    v210 = v19[112];
    v22 = *(v19 + 1);
    v204 = *v19;
    v205 = v22;
    v23 = *(v19 + 3);
    v206 = *(v19 + 2);
    v207 = v23;
    sub_25AE10E3C();
    v24 = v204;
    v25 = v205;
    v26 = v206;
    v27 = v208;
    v28 = v209[0];
    v211[0] = *(v209 + 1);
    *(v211 + 15) = v209[1];
    v171 = v17;
    if (v210 <= 1u)
    {
      if (v210)
      {
        MEMORY[0x25F8577E0](1);

        sub_25AE10B2C();
        MEMORY[0x25F8577E0](*(v25 + 16));
        v173 = *(v25 + 16);
        if (v173)
        {
          v37 = 0;
          v172 = v25 + 32;
          while (1)
          {
            v41 = v172 + 56 * v37;
            v42 = *(v41 + 8);
            v12 = *(v41 + 16);
            v39 = *(v41 + 24);
            v43 = *(v41 + 32);
            v38 = *(v41 + 40);
            v40 = *(v41 + 48);

            v179 = v43;
            sub_25ADE48D8(v12, v39, v43, v38, v40);
            sub_25AE10B2C();
            *(&v178 + 1) = v38;
            if (v40 <= 3)
            {
              v177 = v12;
              *&v178 = v37;
              v175 = v40;
              v176 = v39;
              v174 = v42;
              if (v40 > 1)
              {
                if (v40 != 2)
                {
                  MEMORY[0x25F8577E0](3);
                  sub_25AE10E5C();
                  if (v39)
                  {
                    sub_25AE10B2C();
                  }

                  v136 = v179 + 64;
                  v137 = 1 << *(v179 + 32);
                  if (v137 < 64)
                  {
                    v138 = ~(-1 << v137);
                  }

                  else
                  {
                    v138 = -1;
                  }

                  v139 = v138 & *(v179 + 64);
                  v140 = (v137 + 63) >> 6;

                  v141 = 0;
                  for (i = 0; v139; v141 ^= sub_25AE10E6C())
                  {
                    v143 = i;
LABEL_182:
                    v12 = *(*(v179 + 48) + ((v143 << 10) | (16 * __clz(__rbit64(v139)))) + 8);
                    v139 &= v139 - 1;
                    v193 = v201;
                    v194 = v202;
                    *&v195 = v203;
                    v191 = v199;
                    v192 = v200;

                    sub_25AE10B2C();

                    sub_25AE10B2C();
                  }

                  while (1)
                  {
                    v143 = i + 1;
                    if (__OFADD__(i, 1))
                    {
                      goto LABEL_211;
                    }

                    if (v143 >= v140)
                    {

                      MEMORY[0x25F8577E0](v141);
                      v144 = *(&v178 + 1) + 64;
                      v145 = 1 << *(*(&v178 + 1) + 32);
                      if (v145 < 64)
                      {
                        v146 = ~(-1 << v145);
                      }

                      else
                      {
                        v146 = -1;
                      }

                      v147 = v146 & *(*(&v178 + 1) + 64);
                      v148 = (v145 + 63) >> 6;

                      v44 = 0;
                      for (j = 0; v147; v44 ^= sub_25AE10E6C())
                      {
                        v150 = j;
LABEL_193:
                        v12 = *(*(*(&v178 + 1) + 48) + ((v150 << 10) | (16 * __clz(__rbit64(v147)))) + 8);
                        v147 &= v147 - 1;
                        v193 = v201;
                        v194 = v202;
                        *&v195 = v203;
                        v191 = v199;
                        v192 = v200;

                        sub_25AE10B2C();

                        sub_25AE10B2C();
                      }

                      while (1)
                      {
                        v150 = j + 1;
                        if (__OFADD__(j, 1))
                        {
                          goto LABEL_217;
                        }

                        if (v150 >= v148)
                        {
                          goto LABEL_17;
                        }

                        v147 = *(v144 + 8 * v150);
                        ++j;
                        if (v147)
                        {
                          j = v150;
                          goto LABEL_193;
                        }
                      }
                    }

                    v139 = *(v136 + 8 * v143);
                    ++i;
                    if (v139)
                    {
                      i = v143;
                      goto LABEL_182;
                    }
                  }
                }

                MEMORY[0x25F8577E0](2);
                sub_25AE10E5C();
                if (v39)
                {
                  sub_25AE10B2C();
                }

                v76 = v179 + 64;
                v77 = 1 << *(v179 + 32);
                if (v77 < 64)
                {
                  v78 = ~(-1 << v77);
                }

                else
                {
                  v78 = -1;
                }

                v79 = v78 & *(v179 + 64);
                v80 = (v77 + 63) >> 6;

                v81 = 0;
                for (k = 0; v79; v81 ^= sub_25AE10E6C())
                {
                  v83 = k;
LABEL_94:
                  v12 = *(*(v179 + 48) + ((v83 << 10) | (16 * __clz(__rbit64(v79)))) + 8);
                  v79 &= v79 - 1;
                  v193 = v201;
                  v194 = v202;
                  *&v195 = v203;
                  v191 = v199;
                  v192 = v200;

                  sub_25AE10B2C();

                  sub_25AE10B2C();
                }

                while (1)
                {
                  v83 = k + 1;
                  if (__OFADD__(k, 1))
                  {
                    break;
                  }

                  if (v83 >= v80)
                  {

                    MEMORY[0x25F8577E0](v81);
                    v84 = *(&v178 + 1) + 64;
                    v85 = 1 << *(*(&v178 + 1) + 32);
                    if (v85 < 64)
                    {
                      v86 = ~(-1 << v85);
                    }

                    else
                    {
                      v86 = -1;
                    }

                    v87 = v86 & *(*(&v178 + 1) + 64);
                    v88 = (v85 + 63) >> 6;

                    v44 = 0;
                    for (m = 0; v87; v44 ^= sub_25AE10E6C())
                    {
                      v90 = m;
LABEL_105:
                      v12 = *(*(*(&v178 + 1) + 48) + ((v90 << 10) | (16 * __clz(__rbit64(v87)))) + 8);
                      v87 &= v87 - 1;
                      v193 = v201;
                      v194 = v202;
                      *&v195 = v203;
                      v191 = v199;
                      v192 = v200;

                      sub_25AE10B2C();

                      sub_25AE10B2C();
                    }

                    while (1)
                    {
                      v90 = m + 1;
                      if (__OFADD__(m, 1))
                      {
                        goto LABEL_216;
                      }

                      if (v90 >= v88)
                      {
                        goto LABEL_17;
                      }

                      v87 = *(v84 + 8 * v90);
                      ++m;
                      if (v87)
                      {
                        m = v90;
                        goto LABEL_105;
                      }
                    }
                  }

                  v79 = *(v76 + 8 * v83);
                  ++k;
                  if (v79)
                  {
                    k = v83;
                    goto LABEL_94;
                  }
                }
              }

              else
              {
                if (!v40)
                {
                  MEMORY[0x25F8577E0](0);
                  sub_25AE10E5C();
                  if (v39)
                  {
                    sub_25AE10B2C();
                  }

                  v45 = v179 + 64;
                  v46 = 1 << *(v179 + 32);
                  if (v46 < 64)
                  {
                    v47 = ~(-1 << v46);
                  }

                  else
                  {
                    v47 = -1;
                  }

                  v48 = v47 & *(v179 + 64);
                  v49 = (v46 + 63) >> 6;

                  v50 = 0;
                  for (n = 0; v48; v50 ^= sub_25AE10E6C())
                  {
                    v52 = n;
LABEL_50:
                    v53 = (v52 << 10) | (16 * __clz(__rbit64(v48)));
                    v48 &= v48 - 1;
                    v12 = *(*(v179 + 56) + v53);
                    v193 = v201;
                    v194 = v202;
                    *&v195 = v203;
                    v191 = v199;
                    v192 = v200;

                    sub_25AE10B2C();

                    sub_25AE10B2C();
                  }

                  while (1)
                  {
                    v52 = n + 1;
                    if (__OFADD__(n, 1))
                    {
                      goto LABEL_209;
                    }

                    if (v52 >= v49)
                    {

                      MEMORY[0x25F8577E0](v50);
                      v54 = *(&v178 + 1) + 64;
                      v55 = 1 << *(*(&v178 + 1) + 32);
                      if (v55 < 64)
                      {
                        v56 = ~(-1 << v55);
                      }

                      else
                      {
                        v56 = -1;
                      }

                      v57 = v56 & *(*(&v178 + 1) + 64);
                      v58 = (v55 + 63) >> 6;

                      v44 = 0;
                      for (ii = 0; v57; v44 ^= sub_25AE10E6C())
                      {
                        v60 = ii;
LABEL_61:
                        v12 = *(*(*(&v178 + 1) + 48) + ((v60 << 10) | (16 * __clz(__rbit64(v57)))) + 8);
                        v57 &= v57 - 1;
                        v193 = v201;
                        v194 = v202;
                        *&v195 = v203;
                        v191 = v199;
                        v192 = v200;

                        sub_25AE10B2C();

                        sub_25AE10B2C();
                      }

                      while (1)
                      {
                        v60 = ii + 1;
                        if (__OFADD__(ii, 1))
                        {
                          goto LABEL_213;
                        }

                        if (v60 >= v58)
                        {
                          goto LABEL_17;
                        }

                        v57 = *(v54 + 8 * v60);
                        ++ii;
                        if (v57)
                        {
                          ii = v60;
                          goto LABEL_61;
                        }
                      }
                    }

                    v48 = *(v45 + 8 * v52);
                    ++n;
                    if (v48)
                    {
                      n = v52;
                      goto LABEL_50;
                    }
                  }
                }

                MEMORY[0x25F8577E0](1);
                sub_25AE10E5C();
                if (v39)
                {
                  sub_25AE10B2C();
                }

                v106 = v179 + 64;
                v107 = 1 << *(v179 + 32);
                if (v107 < 64)
                {
                  v108 = ~(-1 << v107);
                }

                else
                {
                  v108 = -1;
                }

                v109 = v108 & *(v179 + 64);
                v110 = (v107 + 63) >> 6;

                v111 = 0;
                for (jj = 0; v109; v111 ^= sub_25AE10E6C())
                {
                  v113 = jj;
LABEL_138:
                  v12 = *(*(v179 + 48) + ((v113 << 10) | (16 * __clz(__rbit64(v109)))) + 8);
                  v109 &= v109 - 1;
                  v193 = v201;
                  v194 = v202;
                  *&v195 = v203;
                  v191 = v199;
                  v192 = v200;

                  sub_25AE10B2C();

                  sub_25AE10B2C();
                }

                while (1)
                {
                  v113 = jj + 1;
                  if (__OFADD__(jj, 1))
                  {
                    break;
                  }

                  if (v113 >= v110)
                  {

                    MEMORY[0x25F8577E0](v111);
                    v114 = *(&v178 + 1) + 64;
                    v115 = 1 << *(*(&v178 + 1) + 32);
                    if (v115 < 64)
                    {
                      v116 = ~(-1 << v115);
                    }

                    else
                    {
                      v116 = -1;
                    }

                    v117 = v116 & *(*(&v178 + 1) + 64);
                    v118 = (v115 + 63) >> 6;

                    v44 = 0;
                    for (kk = 0; v117; v44 ^= sub_25AE10E6C())
                    {
                      v120 = kk;
LABEL_149:
                      v12 = *(*(*(&v178 + 1) + 48) + ((v120 << 10) | (16 * __clz(__rbit64(v117)))) + 8);
                      v117 &= v117 - 1;
                      v193 = v201;
                      v194 = v202;
                      *&v195 = v203;
                      v191 = v199;
                      v192 = v200;

                      sub_25AE10B2C();

                      sub_25AE10B2C();
                    }

                    while (1)
                    {
                      v120 = kk + 1;
                      if (__OFADD__(kk, 1))
                      {
                        goto LABEL_214;
                      }

                      if (v120 >= v118)
                      {
                        goto LABEL_17;
                      }

                      v117 = *(v114 + 8 * v120);
                      ++kk;
                      if (v117)
                      {
                        kk = v120;
                        goto LABEL_149;
                      }
                    }
                  }

                  v109 = *(v106 + 8 * v113);
                  ++jj;
                  if (v109)
                  {
                    jj = v113;
                    goto LABEL_138;
                  }
                }

LABEL_206:
                __break(1u);
              }

              __break(1u);
              goto LABEL_208;
            }

            if (v40 <= 5)
            {
              break;
            }

            if (v40 == 6)
            {
              MEMORY[0x25F8577E0](6);
              v177 = v12;
              *&v178 = v37;
              v175 = v40;
              v176 = v39;
              v174 = v42;
              sub_25AE10E5C();
              if (v39)
              {
                sub_25AE10B2C();
              }

              v91 = v179 + 64;
              v92 = 1 << *(v179 + 32);
              if (v92 < 64)
              {
                v93 = ~(-1 << v92);
              }

              else
              {
                v93 = -1;
              }

              v94 = v93 & *(v179 + 64);
              v95 = (v92 + 63) >> 6;

              v96 = 0;
              for (mm = 0; v94; v96 ^= sub_25AE10E6C())
              {
                v98 = mm;
LABEL_116:
                v12 = *(*(v179 + 48) + ((v98 << 10) | (16 * __clz(__rbit64(v94)))) + 8);
                v94 &= v94 - 1;
                v193 = v201;
                v194 = v202;
                *&v195 = v203;
                v191 = v199;
                v192 = v200;

                sub_25AE10B2C();

                sub_25AE10B2C();
              }

              while (1)
              {
                v98 = mm + 1;
                if (__OFADD__(mm, 1))
                {
                  break;
                }

                if (v98 >= v95)
                {

                  MEMORY[0x25F8577E0](v96);
                  v99 = *(&v178 + 1) + 64;
                  v100 = 1 << *(*(&v178 + 1) + 32);
                  if (v100 < 64)
                  {
                    v101 = ~(-1 << v100);
                  }

                  else
                  {
                    v101 = -1;
                  }

                  v102 = v101 & *(*(&v178 + 1) + 64);
                  v103 = (v100 + 63) >> 6;

                  v44 = 0;
                  for (nn = 0; v102; v44 ^= sub_25AE10E6C())
                  {
                    v105 = nn;
LABEL_127:
                    v12 = *(*(*(&v178 + 1) + 48) + ((v105 << 10) | (16 * __clz(__rbit64(v102)))) + 8);
                    v102 &= v102 - 1;
                    v193 = v201;
                    v194 = v202;
                    *&v195 = v203;
                    v191 = v199;
                    v192 = v200;

                    sub_25AE10B2C();

                    sub_25AE10B2C();
                  }

                  while (1)
                  {
                    v105 = nn + 1;
                    if (__OFADD__(nn, 1))
                    {
                      goto LABEL_218;
                    }

                    if (v105 >= v103)
                    {
LABEL_17:
                      v38 = *(&v178 + 1);

                      v12 = v177;
                      v37 = v178;
                      LOBYTE(v40) = v175;
                      v39 = v176;
                      goto LABEL_18;
                    }

                    v102 = *(v99 + 8 * v105);
                    ++nn;
                    if (v102)
                    {
                      nn = v105;
                      goto LABEL_127;
                    }
                  }
                }

                v94 = *(v91 + 8 * v98);
                ++mm;
                if (v94)
                {
                  mm = v98;
                  goto LABEL_116;
                }
              }

LABEL_208:
              __break(1u);
LABEL_209:
              __break(1u);
LABEL_210:
              __break(1u);
LABEL_211:
              __break(1u);
LABEL_212:
              __break(1u);
LABEL_213:
              __break(1u);
LABEL_214:
              __break(1u);
              goto LABEL_215;
            }

            v44 = v40;
LABEL_18:
            MEMORY[0x25F8577E0](v44);

            sub_25ADE4930(v12, v39, v179, v38, v40);
            if (++v37 == v173)
            {
              goto LABEL_195;
            }
          }

          v177 = v12;
          *&v178 = v37;
          v175 = v40;
          v176 = v39;
          v174 = v42;
          if (v40 == 4)
          {
            MEMORY[0x25F8577E0](4);
            sub_25AE10E5C();
            if (v39)
            {
              sub_25AE10B2C();
            }

            v61 = v179 + 64;
            v62 = 1 << *(v179 + 32);
            if (v62 < 64)
            {
              v63 = ~(-1 << v62);
            }

            else
            {
              v63 = -1;
            }

            v64 = v63 & *(v179 + 64);
            v65 = (v62 + 63) >> 6;

            v66 = 0;
            for (i1 = 0; v64; v66 ^= sub_25AE10E6C())
            {
              v68 = i1;
LABEL_72:
              v12 = *(*(v179 + 48) + ((v68 << 10) | (16 * __clz(__rbit64(v64)))) + 8);
              v64 &= v64 - 1;
              v193 = v201;
              v194 = v202;
              *&v195 = v203;
              v191 = v199;
              v192 = v200;

              sub_25AE10B2C();

              sub_25AE10B2C();
            }

            while (1)
            {
              v68 = i1 + 1;
              if (__OFADD__(i1, 1))
              {
                goto LABEL_210;
              }

              if (v68 >= v65)
              {

                MEMORY[0x25F8577E0](v66);
                v69 = *(&v178 + 1) + 64;
                v70 = 1 << *(*(&v178 + 1) + 32);
                if (v70 < 64)
                {
                  v71 = ~(-1 << v70);
                }

                else
                {
                  v71 = -1;
                }

                v72 = v71 & *(*(&v178 + 1) + 64);
                v73 = (v70 + 63) >> 6;

                v44 = 0;
                for (i2 = 0; v72; v44 ^= sub_25AE10E6C())
                {
                  v75 = i2;
LABEL_83:
                  v12 = *(*(*(&v178 + 1) + 48) + ((v75 << 10) | (16 * __clz(__rbit64(v72)))) + 8);
                  v72 &= v72 - 1;
                  v193 = v201;
                  v194 = v202;
                  *&v195 = v203;
                  v191 = v199;
                  v192 = v200;

                  sub_25AE10B2C();

                  sub_25AE10B2C();
                }

                while (1)
                {
                  v75 = i2 + 1;
                  if (__OFADD__(i2, 1))
                  {
                    goto LABEL_212;
                  }

                  if (v75 >= v73)
                  {
                    goto LABEL_17;
                  }

                  v72 = *(v69 + 8 * v75);
                  ++i2;
                  if (v72)
                  {
                    i2 = v75;
                    goto LABEL_83;
                  }
                }
              }

              v64 = *(v61 + 8 * v68);
              ++i1;
              if (v64)
              {
                i1 = v68;
                goto LABEL_72;
              }
            }
          }

          MEMORY[0x25F8577E0](5);
          sub_25AE10E5C();
          if (v39)
          {
            sub_25AE10B2C();
          }

          v121 = v179 + 64;
          v122 = 1 << *(v179 + 32);
          if (v122 < 64)
          {
            v123 = ~(-1 << v122);
          }

          else
          {
            v123 = -1;
          }

          v124 = v123 & *(v179 + 64);
          v125 = (v122 + 63) >> 6;

          v126 = 0;
          v127 = 0;
          if (v124)
          {
            while (1)
            {
              v128 = v127;
LABEL_160:
              v12 = *(*(v179 + 48) + ((v128 << 10) | (16 * __clz(__rbit64(v124)))) + 8);
              v124 &= v124 - 1;
              v193 = v201;
              v194 = v202;
              *&v195 = v203;
              v191 = v199;
              v192 = v200;

              sub_25AE10B2C();

              sub_25AE10B2C();

              v126 ^= sub_25AE10E6C();
              if (!v124)
              {
                goto LABEL_156;
              }
            }
          }

          while (1)
          {
LABEL_156:
            v128 = v127 + 1;
            if (__OFADD__(v127, 1))
            {
              __break(1u);
              goto LABEL_206;
            }

            if (v128 >= v125)
            {
              break;
            }

            v124 = *(v121 + 8 * v128);
            ++v127;
            if (v124)
            {
              v127 = v128;
              goto LABEL_160;
            }
          }

          MEMORY[0x25F8577E0](v126);
          v129 = *(&v178 + 1) + 64;
          v130 = 1 << *(*(&v178 + 1) + 32);
          if (v130 < 64)
          {
            v131 = ~(-1 << v130);
          }

          else
          {
            v131 = -1;
          }

          v132 = v131 & *(*(&v178 + 1) + 64);
          v133 = (v130 + 63) >> 6;

          v44 = 0;
          for (i3 = 0; v132; v44 ^= sub_25AE10E6C())
          {
            v135 = i3;
LABEL_171:
            v12 = *(*(*(&v178 + 1) + 48) + ((v135 << 10) | (16 * __clz(__rbit64(v132)))) + 8);
            v132 &= v132 - 1;
            v193 = v201;
            v194 = v202;
            *&v195 = v203;
            v191 = v199;
            v192 = v200;

            sub_25AE10B2C();

            sub_25AE10B2C();
          }

          while (1)
          {
            v135 = i3 + 1;
            if (__OFADD__(i3, 1))
            {
              break;
            }

            if (v135 >= v133)
            {
              goto LABEL_17;
            }

            v132 = *(v129 + 8 * v135);
            ++i3;
            if (v132)
            {
              i3 = v135;
              goto LABEL_171;
            }
          }

LABEL_215:
          __break(1u);
LABEL_216:
          __break(1u);
LABEL_217:
          __break(1u);
LABEL_218:
          __break(1u);
          goto LABEL_219;
        }
      }

      else
      {
        *(&v178 + 1) = *(&v208 + 1);
        v179 = v207;
        v30 = *(&v206 + 1);
        LODWORD(v178) = LOBYTE(v209[0]);
        v31 = *(&v205 + 1);
        v32 = *(&v207 + 1);
        MEMORY[0x25F8577E0](0);
        v180[7] = v24;
        v181 = v25;
        v182 = v31;
        v183 = v26;
        v184 = v30;
        v185 = v179;
        v186 = v32;
        v187 = v27;
        v188 = *(&v178 + 1);
        v189 = v178;
        *v190 = v211[0];
        *&v190[15] = *(v211 + 15);
        v193 = v206;
        v194 = v207;
        v191 = v204;
        v192 = v205;
        v198 = v210;
        v196 = v209[0];
        v197 = v209[1];
        v195 = v208;
        sub_25ADE35E0(&v191, v180);
        NDODWCoverageModel.hash(into:)(&v199);
      }
    }

    else
    {
      if (v210 == 2)
      {
        v179 = v207;
        v178 = v206;
        v33 = *(&v205 + 1);
        MEMORY[0x25F8577E0](2);
        v34 = v205;
        v35 = v206;
        v36 = v207;

        sub_25ADE48D8(v34, *(&v34 + 1), v35, *(&v35 + 1), v36);
        sub_25AE10B2C();
        v191 = __PAIR128__(v33, v25);
        v192 = v178;
        LOBYTE(v193) = v179;
        goto LABEL_13;
      }

      if (v210 == 3)
      {
        v179 = v207;
        v178 = v208;
        v29 = *(&v207 + 1);
        MEMORY[0x25F8577E0](3);
        v172 = *(&v206 + 1);
        v176 = *(&v207 + 1);
        v177 = v207;
        v174 = *(&v208 + 1);
        v175 = v208;
        LODWORD(v173) = LOBYTE(v209[0]);

        sub_25ADE48D8(v177, v176, v175, v174, v173);
        sub_25AE10B2C();
        sub_25AE10B2C();
        sub_25AE10B2C();
        *&v191 = v179;
        *(&v191 + 1) = v29;
        v192 = v178;
        LOBYTE(v193) = v28;
LABEL_13:
        NDOAction.hash(into:)(&v199);
        goto LABEL_195;
      }

      MEMORY[0x25F8577E0](4);
    }

LABEL_195:
    *&v191 = sub_25AE10E6C();
    v12 = sub_25AE10E1C();
    v152 = v151;
    sub_25ADEBE18(&v204);
    v17 = v171;
    v212 = v171;
    v154 = *(v171 + 16);
    v153 = *(v171 + 24);
    if (v154 >= v153 >> 1)
    {
      sub_25ADFFFC0((v153 > 1), v154 + 1, 1);
      v17 = v212;
    }

    *(v17 + 16) = v154 + 1;
    v155 = v17 + 16 * v154;
    *(v155 + 32) = v12;
    *(v155 + 40) = v152;
    v16 = v170;
    if (v170 == v167)
    {
      break;
    }

    v18 = v170 + 1;
    if (v170 >= rawValue[2])
    {
      goto LABEL_219;
    }
  }

  *&v191 = v17;

  v12 = v161;
  sub_25AE0049C(&v191);
  object = v164;
  if (v12)
  {
    goto LABEL_220;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12760, &qword_25AE11D88);
  sub_25AE00F74();
  v13 = sub_25AE10A5C();
  v14 = v158;

LABEL_203:
  v7 = v162;
  v6 = v163;
LABEL_204:
  v160 = v165;
  v159 = countAndFlagsBits;
  v165->id._countAndFlagsBits = v13;
  v160->id._object = v14;
  v160->header.value._countAndFlagsBits = v7;
  v160->header.value._object = v6;
  v160->footer.value._countAndFlagsBits = v159;
  v160->footer.value._object = object;
  v160->items._rawValue = rawValue;
}

uint64_t sub_25ADFF544()
{
  v1 = 25705;
  v2 = 0x7265746F6F66;
  if (*v0 != 2)
  {
    v2 = 0x736D657469;
  }

  if (*v0)
  {
    v1 = 0x726564616568;
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

uint64_t sub_25ADFF5A8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_25AE01294(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_25ADFF5D0(uint64_t a1)
{
  v2 = sub_25AE00FD8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25ADFF60C(uint64_t a1)
{
  v2 = sub_25AE00FD8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NDODWSection.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA131F0, &qword_25AE16B70);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - v5;
  v7 = v1[2];
  v16 = v1[3];
  v17 = v7;
  v8 = v1[4];
  v14 = v1[5];
  v15 = v8;
  v13 = v1[6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25AE00FD8();
  sub_25AE10E8C();
  v23 = 0;
  v9 = v18;
  sub_25AE10DCC();
  if (!v9)
  {
    v10 = v13;
    v22 = 1;
    sub_25AE10DAC();
    v21 = 2;
    sub_25AE10DAC();
    v19 = v10;
    v20 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA13200, &qword_25AE16B78);
    sub_25AE01080(&qword_27FA13208, sub_25AE0102C, MEMORY[0x277D83948]);
    sub_25AE10DFC();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t NDODWSection.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA13218, &qword_25AE16B80);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25AE00FD8();
  sub_25AE10E7C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v29 = 0;
  v9 = sub_25AE10D4C();
  v24 = v10;
  v28 = 1;
  v11 = sub_25AE10D2C();
  v23 = v12;
  v21 = v11;
  v27 = 2;
  v20 = sub_25AE10D2C();
  v22 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA13200, &qword_25AE16B78);
  v26 = 3;
  sub_25AE01080(&qword_27FA13220, sub_25AE010F8, MEMORY[0x277D83978]);
  sub_25AE10D7C();
  (*(v6 + 8))(v8, v5);
  v16 = v24;
  v15 = v25;
  *a2 = v9;
  a2[1] = v16;
  v17 = v20;
  v19 = v22;
  v18 = v23;
  a2[2] = v21;
  a2[3] = v18;
  a2[4] = v17;
  a2[5] = v19;
  a2[6] = v15;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_25ADFFBF8@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

char *sub_25ADFFC34(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA13268, &qword_25AE16DA8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_25ADFFD54(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA13250, &qword_25AE16D90);
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

char *sub_25ADFFE58(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA13248, &qword_25AE16D88);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 152);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[152 * v8])
    {
      memmove(v12, v13, 152 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_25ADFFF80(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25AE00000(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_25ADFFFA0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25AE00148(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_25ADFFFC0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25AE00268(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_25ADFFFE0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25AE00374(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_25AE00000(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12F78, &qword_25AE152E0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA13270, &unk_25AE16DB0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_25AE00148(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA13260, &qword_25AE16DA0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 120);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[120 * v8])
    {
      memmove(v12, v13, 120 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_25AE00268(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA13258, &qword_25AE16D98);
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

char *sub_25AE00374(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA13248, &qword_25AE16D88);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 152);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[152 * v8])
    {
      memmove(v12, v13, 152 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_25AE0049C(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_25AE01280(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_25AE00508(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_25AE00508(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_25AE10E0C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = sub_25AE10BCC();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_25AE006D0(v7, v8, a1, v4);
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
    return sub_25AE00600(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_25AE00600(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_25AE10E2C(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_25AE006D0(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_25AE00F60(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_25AE00CAC((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_25AE10E2C();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_25AE10E2C();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_25ADFFD54(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_25ADFFD54((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
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
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
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
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_25AE00CAC((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_25AE00F60(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_25AE00ED4(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = v9 + a4;
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = sub_25AE10E2C(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}

uint64_t sub_25AE00CAC(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_25AE10E2C() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_25AE10E2C() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_25AE00ED4(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_25AE00F60(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

unint64_t sub_25AE00F74()
{
  result = qword_27FA131E8;
  if (!qword_27FA131E8)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA12760, &qword_25AE11D88);
    result = swift_getWitnessTable(MEMORY[0x277D83958], v3, v0, v1);
    atomic_store(result, &qword_27FA131E8);
  }

  return result;
}

unint64_t sub_25AE00FD8()
{
  result = qword_27FA131F8;
  if (!qword_27FA131F8)
  {
    result = swift_getWitnessTable(byte_25AE16D38, &type metadata for NDODWSection.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FA131F8);
  }

  return result;
}

unint64_t sub_25AE0102C()
{
  result = qword_27FA13210;
  if (!qword_27FA13210)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NDODWItem, &type metadata for NDODWItem, v0, v1);
    atomic_store(result, &qword_27FA13210);
  }

  return result;
}

uint64_t sub_25AE01080(unint64_t *a1, uint64_t (*a2)(void), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA13200, &qword_25AE16B78);
    v8 = a2();
    result = swift_getWitnessTable(a3, v7, &v8);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_25AE010F8()
{
  result = qword_27FA13228;
  if (!qword_27FA13228)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NDODWItem, &type metadata for NDODWItem, v0, v1);
    atomic_store(result, &qword_27FA13228);
  }

  return result;
}

unint64_t sub_25AE0117C()
{
  result = qword_27FA13230;
  if (!qword_27FA13230)
  {
    result = swift_getWitnessTable(byte_25AE16D10, &type metadata for NDODWSection.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FA13230);
  }

  return result;
}

unint64_t sub_25AE011D4()
{
  result = qword_27FA13238;
  if (!qword_27FA13238)
  {
    result = swift_getWitnessTable("!CB'HX", &type metadata for NDODWSection.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FA13238);
  }

  return result;
}

unint64_t sub_25AE0122C()
{
  result = qword_27FA13240;
  if (!qword_27FA13240)
  {
    result = swift_getWitnessTable("1?B' X", &type metadata for NDODWSection.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FA13240);
  }

  return result;
}

uint64_t sub_25AE01294(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_25AE10E2C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726564616568 && a2 == 0xE600000000000000 || (sub_25AE10E2C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7265746F6F66 && a2 == 0xE600000000000000 || (sub_25AE10E2C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x736D657469 && a2 == 0xE500000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_25AE10E2C();

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

uint64_t NDOUIFailureReason.hashValue.getter()
{
  v1 = *v0;
  sub_25AE10E3C();
  MEMORY[0x25F8577E0](v1);
  return sub_25AE10E6C();
}

unint64_t sub_25AE01474()
{
  result = qword_27FA13278;
  if (!qword_27FA13278)
  {
    result = swift_getWitnessTable("\t3B'$W", &type metadata for NDOUIFailureReason, v0, v1);
    atomic_store(result, &qword_27FA13278);
  }

  return result;
}

uint64_t sub_25AE014D8()
{
  v0 = sub_25AE102DC();
  __swift_allocate_value_buffer(v0, qword_27FA1CFB0);
  __swift_project_value_buffer(v0, qword_27FA1CFB0);
  return sub_25AE102CC();
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

__n128 NDOPromoView.init(model:deleteActionDisabled:action:deleteAction:)@<Q0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v7 = *(a1 + 112);
  *(a7 + 96) = *(a1 + 96);
  *(a7 + 112) = v7;
  *(a7 + 128) = *(a1 + 128);
  v8 = *(a1 + 144);
  v9 = *(a1 + 48);
  *(a7 + 32) = *(a1 + 32);
  *(a7 + 48) = v9;
  v10 = *(a1 + 80);
  *(a7 + 64) = *(a1 + 64);
  *(a7 + 80) = v10;
  result = *a1;
  v12 = *(a1 + 16);
  *a7 = *a1;
  *(a7 + 16) = v12;
  *(a7 + 144) = v8;
  *(a7 + 152) = a3;
  *(a7 + 160) = a4;
  *(a7 + 168) = a5;
  *(a7 + 176) = a6;
  *(a7 + 184) = a2;
  return result;
}

uint64_t NDOPromoView.body.getter@<X0>(uint64_t a9@<X8>)
{
  v11 = v9[9];
  v18[8] = v9[8];
  v18[9] = v11;
  v19[0] = v9[10];
  *(v19 + 9) = *(v9 + 169);
  v12 = v9[5];
  v18[4] = v9[4];
  v18[5] = v12;
  v13 = v9[7];
  v18[6] = v9[6];
  v18[7] = v13;
  v14 = v9[1];
  v18[0] = *v9;
  v18[1] = v14;
  v15 = v9[3];
  v18[2] = v9[2];
  v18[3] = v15;
  *a9 = sub_25AE104AC();
  *(a9 + 8) = 0x4028000000000000;
  *(a9 + 16) = 0;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA13280, &qword_25AE16E60);
  return sub_25AE01680(v18, a9 + *(v16 + 44));
}

uint64_t sub_25AE01680@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA13298, &qword_25AE171E8);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v19 - v8;
  v10 = a1[1];
  v22 = *a1;

  sub_25AE10A0C();
  sub_25AE1031C();
  v11 = v23;
  v12 = v25;
  v20 = v28;
  v21 = v27;
  v30 = v24;
  v29 = v26;
  *v9 = sub_25AE1053C();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA132A0, &qword_25AE171F0);
  sub_25AE01880(a1, &v9[*(v13 + 44)]);
  LOBYTE(a1) = v30;
  v14 = v29;
  sub_25ADE82E0(v9, v7, &qword_27FA13298, &qword_25AE171E8);
  v15 = v21;
  *a2 = v22;
  *(a2 + 8) = v10;
  *(a2 + 16) = v11;
  *(a2 + 24) = a1;
  *(a2 + 32) = v12;
  *(a2 + 40) = v14;
  v16 = v20;
  *(a2 + 48) = v15;
  *(a2 + 56) = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA132A8, &qword_25AE171F8);
  sub_25ADE82E0(v7, a2 + *(v17 + 48), &qword_27FA13298, &qword_25AE171E8);

  sub_25ADDE8CC(v9, &qword_27FA13298, &qword_25AE171E8);
  sub_25ADDE8CC(v7, &qword_27FA13298, &qword_25AE171E8);
}

uint64_t sub_25AE01880@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a2;
  v59 = sub_25AE1063C();
  v60 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v4 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA132B0, &qword_25AE176C0);
  v55 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v49 - v6;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA132B8, &qword_25AE17200);
  v57 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v9 = &v49 - v8;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA132C0, &qword_25AE17208);
  v64 = *(v58 - 8);
  v10 = MEMORY[0x28223BE20](v58);
  v56 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v49 - v12;
  v49 = &v49 - v12;
  v54 = sub_25AE109DC();
  v51 = *(v54 - 8);
  v14 = v51;
  v15 = MEMORY[0x28223BE20](v54);
  v63 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v49 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA132C8, &qword_25AE17210);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v62 = &v49 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v49 - v22;
  *v23 = sub_25AE104AC();
  *(v23 + 1) = 0;
  v23[16] = 1;
  v24 = &v23[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA132D0, &qword_25AE17218) + 44)];
  v52 = v23;
  sub_25AE0200C(a1, v24);
  v50 = v18;
  sub_25AE109CC();
  v66 = a1[3];
  v67 = v66;
  v25 = swift_allocObject();
  v26 = a1[9];
  v25[9] = a1[8];
  v25[10] = v26;
  v25[11] = a1[10];
  *(v25 + 185) = *(a1 + 169);
  v27 = a1[5];
  v25[5] = a1[4];
  v25[6] = v27;
  v28 = a1[7];
  v25[7] = a1[6];
  v25[8] = v28;
  v29 = a1[1];
  v25[1] = *a1;
  v25[2] = v29;
  v30 = a1[3];
  v25[3] = a1[2];
  v25[4] = v30;
  sub_25AE02C9C(&v67, v65);
  sub_25AE02CF8(a1, v65);
  sub_25ADDE53C();
  sub_25AE109BC();
  sub_25AE107AC();
  v31 = sub_25ADE8250(&qword_27FA132D8, &qword_27FA132B0, &qword_25AE176C0, MEMORY[0x277CDF028]);
  sub_25AE1086C();
  (*(v55 + 8))(v7, v5);
  sub_25AE1062C();
  v65[0] = v5;
  v65[1] = v31;
  swift_getOpaqueTypeConformance2();
  sub_25AE02D30();
  v32 = v53;
  v33 = v59;
  sub_25AE1088C();
  (*(v60 + 8))(v4, v33);
  (*(v57 + 8))(v9, v32);
  v34 = v62;
  sub_25ADE82E0(v23, v62, &qword_27FA132C8, &qword_25AE17210);
  v35 = *(v14 + 16);
  v36 = v63;
  v37 = v18;
  v38 = v54;
  v35(v63, v37, v54);
  v39 = *(v64 + 16);
  v40 = v56;
  v41 = v13;
  v42 = v58;
  v39(v56, v41, v58);
  v43 = v34;
  v44 = v61;
  sub_25ADE82E0(v43, v61, &qword_27FA132C8, &qword_25AE17210);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA132E8, &qword_25AE17220);
  v35((v44 + *(v45 + 48)), v36, v38);
  v39((v44 + *(v45 + 64)), v40, v42);
  v46 = *(v64 + 8);
  v46(v49, v42);
  v47 = *(v51 + 8);
  v47(v50, v38);
  sub_25ADDE8CC(v52, &qword_27FA132C8, &qword_25AE17210);
  v46(v40, v42);
  v47(v63, v38);
  return sub_25ADDE8CC(v62, &qword_27FA132C8, &qword_25AE17210);
}