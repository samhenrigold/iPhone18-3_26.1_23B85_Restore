uint64_t sub_26C0FAC90(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8)
{
  v61 = a8;
  v65 = a7;
  v66 = a4;
  v67 = a5;
  v68 = a1;
  v10 = type metadata accessor for ImportedPSK(0);
  v60 = *(v10 - 8);
  MEMORY[0x28223BE20](v10 - 8);
  v59 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for RawEPSK(0);
  MEMORY[0x28223BE20](v62);
  v63 = (&v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A890, &qword_26C14A5C0);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v64 = &v56 - v17;
  v18 = type metadata accessor for EPSK(0);
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v69 = (&v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047ABF8, &unk_26C14CDE0);
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v70 = &v56 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v25 = &v56 - v24;
  v26 = swift_projectBox();
  if (qword_28047A750 != -1)
  {
    swift_once();
  }

  v27 = sub_26C148A9C();
  __swift_project_value_buffer(v27, qword_28047ABB0);
  sub_26C0CF314(a2, v25, &qword_28047ABF8, &unk_26C14CDE0);
  sub_26C0FEDE4(a3, &v72);
  v28 = sub_26C148A7C();
  v29 = sub_26C148FFC();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v58 = v26;
    v31 = v30;
    *v30 = 67109376;
    v32 = (*(v19 + 48))(v25, 1, v18);
    v57 = a2;
    v33 = v16;
    v34 = v32 == 1;
    sub_26C0CF5C4(v25, &qword_28047ABF8, &unk_26C14CDE0);
    v31[1] = v34;
    v16 = v33;
    a2 = v57;
    *(v31 + 4) = 1024;
    *(v31 + 10) = *(a3 + 208) & 1;
    sub_26C0FEDB4(a3);
    _os_log_impl(&dword_26C0B5000, v28, v29, "in server handshake state machine completion block... epsk == nil? %{BOOL}d usingRawEPSKs: %{BOOL}d", v31, 0xEu);
    v35 = v31;
    v26 = v58;
    MEMORY[0x26D69C3A0](v35, -1, -1);
  }

  else
  {
    sub_26C0CF5C4(v25, &qword_28047ABF8, &unk_26C14CDE0);
    sub_26C0FEDB4(a3);
  }

  v36 = v70;
  sub_26C0CF314(a2, v70, &qword_28047ABF8, &unk_26C14CDE0);
  if ((*(v19 + 48))(v36, 1, v18) == 1)
  {
    return sub_26C0CF5C4(v36, &qword_28047ABF8, &unk_26C14CDE0);
  }

  v38 = v18;
  v39 = v69;
  result = sub_26C0FEF5C(v36, v69, type metadata accessor for EPSK);
  if ((v68 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (*(v67 + 16) <= v68)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v40 = *(v67 + 2 * v68 + 32);
  v41 = v66;
  swift_beginAccess();
  *(v41 + 16) = v40;
  *(v41 + 18) = 0;
  if (*(a3 + 208))
  {
    v42 = *v39;
    v43 = v39[1];
    v44 = v39[2];
    v45 = *(v38 + 20);
    v46 = *(v62 + 20);
    v47 = sub_26C148BDC();
    v48 = v63;
    (*(*(v47 - 8) + 16))(v63 + v46, v39 + v45, v47);
    sub_26C0BBAA4(v42, v43);
    sub_26C0FEEA0(v39, type metadata accessor for EPSK);
    *v48 = v42;
    v48[1] = v43;
    v48[2] = v44;
    v49 = v64;
    sub_26C0FEF5C(v48, v64, type metadata accessor for RawEPSK);
    type metadata accessor for PSK(0);
    swift_storeEnumTagMultiPayload();
    v50 = type metadata accessor for GeneralEPSK(0);
    (*(*(v50 - 8) + 56))(v49, 0, 1, v50);
    swift_beginAccess();
    v51 = v49;
    return sub_26C0FF20C(v51, v26, &qword_28047A890, &qword_26C14A5C0);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A878, &qword_26C14A5A8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26C14A550;
  *(inited + 32) = v65;
  *(inited + 40) = v61;
  v53 = sub_26C0C24AC(inited, &v71);
  result = swift_setDeallocating();
  if (*(v53 + 16))
  {
    v54 = v59;
    sub_26C0FEE38(v53 + ((*(v60 + 80) + 32) & ~*(v60 + 80)), v59, type metadata accessor for ImportedPSK);

    sub_26C0FEEA0(v39, type metadata accessor for EPSK);
    sub_26C0FEF5C(v54, v16, type metadata accessor for ImportedPSK);
    type metadata accessor for PSK(0);
    swift_storeEnumTagMultiPayload();
    v55 = type metadata accessor for GeneralEPSK(0);
    (*(*(v55 - 8) + 56))(v16, 0, 1, v55);
    swift_beginAccess();
    v51 = v16;
    return sub_26C0FF20C(v51, v26, &qword_28047A890, &qword_26C14A5C0);
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_26C0FB43C(uint64_t a1)
{
  v3 = *(v1 + 24);
  if (v3)
  {
    result = sub_26C10C218(1027, v3);
    if (result)
    {
      return result;
    }

    if (qword_28047A750 != -1)
    {
      swift_once();
    }

    v5 = sub_26C148A9C();
    __swift_project_value_buffer(v5, qword_28047ABB0);
    v6 = sub_26C148A7C();
    v7 = sub_26C14900C();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_26C0B5000, v6, v7, "TLS 1.3 Client Hello missing TLS 1.3 version in supported_versions extension", v8, 2u);
      MEMORY[0x26D69C3A0](v8, -1, -1);
    }

    v9 = xmmword_26C14A8F0;
  }

  else
  {
    if (qword_28047A750 != -1)
    {
      swift_once();
    }

    v10 = sub_26C148A9C();
    __swift_project_value_buffer(v10, qword_28047ABB0);
    v11 = sub_26C148A7C();
    v12 = sub_26C14900C();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_26C0B5000, v11, v12, "Client Hello without supported_versions extension received", v13, 2u);
      MEMORY[0x26D69C3A0](v13, -1, -1);
    }

    v9 = xmmword_26C14CC30;
  }

  *a1 = v9;
  *(a1 + 16) = 2;
  sub_26C0BBAF8();
  return swift_willThrowTypedImpl();
}

uint64_t sub_26C0FB634(uint64_t result)
{
  if (!(*(v1 + 16) | *(v1 + 160)))
  {
    v2 = result;
    if (qword_28047A750 != -1)
    {
      swift_once();
    }

    v3 = sub_26C148A9C();
    __swift_project_value_buffer(v3, qword_28047ABB0);
    v4 = sub_26C148A7C();
    v5 = sub_26C14900C();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_26C0B5000, v4, v5, "client hello missing required supported_groups extension", v6, 2u);
      MEMORY[0x26D69C3A0](v6, -1, -1);
    }

    *v2 = xmmword_26C14CC40;
    *(v2 + 16) = 2;
    sub_26C0BBAF8();
    return swift_willThrowTypedImpl();
  }

  return result;
}

uint64_t sub_26C0FB760(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = *(v1 + 184);
  if (v3)
  {
    v5 = *(v3 + 16);
    if (v5)
    {
      v6 = 0;
      v7 = v3 + 32;
      v8 = (v4 + 32);
      v9 = *(v4 + 16);
      do
      {
        v10 = *(v7 + v6++);
        v11 = v9;
        v12 = v8;
        while (v11)
        {
          v13 = *v12++;
          --v11;
          if (v13 == v10)
          {
            return v10;
          }
        }
      }

      while (v6 != v5);
    }

    v2 = a1;
    if (qword_28047A750 == -1)
    {
      goto LABEL_10;
    }
  }

  else
  {
    if (*(v4 + 16))
    {
      return *(v4 + 32);
    }

    __break(1u);
  }

  swift_once();
LABEL_10:
  v14 = sub_26C148A9C();
  __swift_project_value_buffer(v14, qword_28047ABB0);
  v15 = sub_26C148A7C();
  v16 = sub_26C14900C();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_26C0B5000, v15, v16, "client requested unsupported server certificate type", v17, 2u);
    MEMORY[0x26D69C3A0](v17, -1, -1);
  }

  *v2 = xmmword_26C14CC50;
  *(v2 + 16) = 2;
  sub_26C0BBAF8();
  swift_willThrowTypedImpl();
  return 0;
}

uint64_t sub_26C0FB8EC(uint64_t result, uint64_t a2)
{
  if (*(v2 + 16))
  {
    v3 = 0;
  }

  else
  {
    v3 = result == 0;
  }

  if (v3)
  {
    if (qword_28047A750 != -1)
    {
      swift_once();
    }

    v5 = sub_26C148A9C();
    __swift_project_value_buffer(v5, qword_28047ABB0);
    v6 = sub_26C148A7C();
    v7 = sub_26C14900C();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_26C0B5000, v6, v7, "client hello missing required signature_algorithms extension", v8, 2u);
      MEMORY[0x26D69C3A0](v8, -1, -1);
    }

    *a2 = xmmword_26C14CC40;
    *(a2 + 16) = 2;
    sub_26C0BBAF8();
    return swift_willThrowTypedImpl();
  }

  return result;
}

uint64_t sub_26C0FBA1C(uint64_t result)
{
  if (!*(v1 + 160))
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      if (*(v2 + 16))
      {
        return result;
      }

      v3 = result;
      if (qword_28047A750 != -1)
      {
        swift_once();
      }

      v4 = sub_26C148A9C();
      __swift_project_value_buffer(v4, qword_28047ABB0);
      v5 = sub_26C148A7C();
      v6 = sub_26C14900C();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        *v7 = 0;
        _os_log_impl(&dword_26C0B5000, v5, v6, "no client key shares", v7, 2u);
        MEMORY[0x26D69C3A0](v7, -1, -1);
      }

      v8 = xmmword_26C14CC60;
    }

    else
    {
      v3 = result;
      if (qword_28047A750 != -1)
      {
        swift_once();
      }

      v9 = sub_26C148A9C();
      __swift_project_value_buffer(v9, qword_28047ABB0);
      v10 = sub_26C148A7C();
      v11 = sub_26C14900C();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&dword_26C0B5000, v10, v11, "client hello missing required key_shares extension", v12, 2u);
        MEMORY[0x26D69C3A0](v12, -1, -1);
      }

      v8 = xmmword_26C14CC40;
    }

    *v3 = v8;
    *(v3 + 16) = 2;
    sub_26C0BBAF8();
    return swift_willThrowTypedImpl();
  }

  return result;
}

uint64_t sub_26C0FBC14(uint64_t result)
{
  if (*(v1 + 160))
  {
    v2 = *(v1 + 232) == 0;
  }

  else
  {
    v2 = 0;
  }

  if (v2)
  {
    v3 = result;
    if (qword_28047A750 != -1)
    {
      swift_once();
    }

    v4 = sub_26C148A9C();
    __swift_project_value_buffer(v4, qword_28047ABB0);
    v5 = sub_26C148A7C();
    v6 = sub_26C14900C();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_26C0B5000, v5, v6, "server was not configured with PAKE support", v7, 2u);
      MEMORY[0x26D69C3A0](v7, -1, -1);
    }

    *v3 = xmmword_26C14CC60;
    *(v3 + 16) = 2;
    sub_26C0BBAF8();
    return swift_willThrowTypedImpl();
  }

  return result;
}

uint64_t sub_26C0FBD44(uint64_t a1)
{
  v3 = v1[20];
  if (v3)
  {
    v4 = 0;
    return v4 | ((v3 != 0) << 16);
  }

  v6 = v1[4];
  v7 = v1[22];
  if (v6)
  {
    v8 = *(v6 + 16);
    if (v8)
    {
      v9 = 0;
      v10 = v6 + 32;
      v11 = (v7 + 32);
      v12 = *(v7 + 16);
      do
      {
        v4 = *(v10 + 2 * v9++);
        v13 = v12;
        v14 = v11;
        while (v13)
        {
          v15 = *v14++;
          --v13;
          if (v15 == v4)
          {
            return v4 | ((v3 != 0) << 16);
          }
        }
      }

      while (v9 != v8);
    }

    v2 = a1;
    if (qword_28047A750 == -1)
    {
      goto LABEL_13;
    }
  }

  else
  {
    if (*(v7 + 16))
    {
      v4 = *(v7 + 32);
      return v4 | ((v3 != 0) << 16);
    }

    __break(1u);
  }

  swift_once();
LABEL_13:
  v16 = sub_26C148A9C();
  __swift_project_value_buffer(v16, qword_28047ABB0);
  v17 = sub_26C148A7C();
  v18 = sub_26C14900C();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_26C0B5000, v17, v18, "signature algorithm negotiation failed", v19, 2u);
    MEMORY[0x26D69C3A0](v19, -1, -1);
  }

  *v2 = xmmword_26C14A8E0;
  *(v2 + 16) = 2;
  sub_26C0BBAF8();
  return swift_willThrowTypedImpl();
}

uint64_t sub_26C0FBEE4@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (v2[20])
  {
    *a2 = 0;
    *(a2 + 2) = 1;
  }

  else
  {
    v3 = v2[2];
    if (v3)
    {
      v4 = *(v3 + 16);
      if (v4)
      {
        v5 = 0;
        v6 = v2[21];
        v7 = v3 + 32;
        v8 = (v6 + 32);
        v9 = *(v6 + 16);
        do
        {
          v10 = *(v7 + 2 * v5++);
          v11 = v9;
          v12 = v8;
          while (v11)
          {
            v13 = *v12++;
            --v11;
            if (v13 == v10)
            {
              *a2 = v10;
              *(a2 + 2) = 0;
              return result;
            }
          }
        }

        while (v5 != v4);
      }

      v14 = result;
      if (qword_28047A750 != -1)
      {
        swift_once();
      }

      v15 = sub_26C148A9C();
      __swift_project_value_buffer(v15, qword_28047ABB0);
      v16 = sub_26C148A7C();
      v17 = sub_26C14900C();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&dword_26C0B5000, v16, v17, "key exchange group negotiation failed", v18, 2u);
        MEMORY[0x26D69C3A0](v18, -1, -1);
      }

      *v14 = xmmword_26C14A8E0;
      *(v14 + 16) = 2;
      sub_26C0BBAF8();
      return swift_willThrowTypedImpl();
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

unsigned __int16 *sub_26C0FC07C@<X0>(unsigned __int16 *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(v3 + 8);
  if (v4)
  {
    v5 = a2;
    v6 = *(v4 + 16);
    if (v6)
    {
      v7 = 0;
      v8 = 0;
      v9 = 0;
      v10 = *result;
      v11 = (v4 + 56);
      v12 = 0xF000000000000000;
      do
      {
        if (*(v11 - 12) == v10)
        {
          v13 = *(v11 - 1);
          v21 = *v11;
          v14 = *(v11 - 2);
          sub_26C0BBAA4(v14, v13);
          result = sub_26C0FEE1C(v7, v8, v12);
          v7 = v10;
          v8 = v14;
          v12 = v13;
          v9 = v21;
        }

        v11 += 4;
        --v6;
      }

      while (v6);
      if (v12 >> 60 != 15)
      {
        *a3 = v7;
        *(a3 + 8) = v8;
        *(a3 + 16) = v12;
        *(a3 + 24) = v9;
        return result;
      }

      v5 = a2;
    }

    else
    {
      v7 = 0;
      v8 = 0;
      v12 = 0xF000000000000000;
    }

    if (qword_28047A750 != -1)
    {
      swift_once();
    }

    v15 = sub_26C148A9C();
    __swift_project_value_buffer(v15, qword_28047ABB0);
    v16 = sub_26C148A7C();
    v17 = sub_26C14900C();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_26C0B5000, v16, v17, "no client key share matching group received", v18, 2u);
      MEMORY[0x26D69C3A0](v18, -1, -1);
    }

    *v5 = xmmword_26C14CC60;
    *(v5 + 16) = 2;
    sub_26C0BBAF8();
    swift_willThrowTypedImpl();
    return sub_26C0FEE1C(v7, v8, v12);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_26C0FC28C(uint64_t a1)
{
  v4 = *(v1 + 48);
  v5 = *(v1 + 248);
  v6 = *(v1 + 16);
  v47 = *v1;
  v48 = v6;
  v49 = *(v1 + 32);
  v50 = v4;
  v51 = *(v1 + 56);
  v7 = *(v1 + 80);
  v52 = *(v1 + 72);
  v53 = v7;
  v54 = *(v1 + 88);
  v55 = *(v1 + 104);
  v56 = *(v1 + 120);
  v8 = *(v1 + 184);
  v9 = *(v1 + 192);
  v59 = *(v1 + 168);
  v58 = *(v1 + 152);
  v57 = *(v1 + 136);
  v60 = v8;
  v61 = v9;
  v10 = *(v1 + 200);
  v11 = *(v1 + 216);
  v64 = *(v1 + 232);
  v63 = v11;
  v62 = v10;
  v65 = v5;
  result = sub_26C0FB43C(&v45);
  if (v2)
  {
    v40 = v46;
    *a1 = v45;
    *(a1 + 16) = v40;
  }

  else
  {
    v13 = *(v1 + 16);
    v47 = *v1;
    v48 = v13;
    v49 = *(v1 + 32);
    v50 = v4;
    v51 = *(v1 + 56);
    v52 = *(v1 + 72);
    v53 = v7;
    v54 = *(v1 + 88);
    v55 = *(v1 + 104);
    v56 = *(v1 + 120);
    v14 = *(v1 + 184);
    v59 = *(v1 + 168);
    v58 = *(v1 + 152);
    v57 = *(v1 + 136);
    v60 = v14;
    v61 = v9;
    v15 = *(v1 + 200);
    v16 = *(v1 + 216);
    v64 = *(v1 + 232);
    v63 = v16;
    v62 = v15;
    v65 = v5;
    sub_26C0FB634(&v45);
    v17 = *(v1 + 16);
    v47 = *v1;
    v48 = v17;
    v49 = *(v1 + 32);
    v50 = v4;
    v51 = *(v1 + 56);
    v52 = *(v1 + 72);
    v53 = v7;
    v54 = *(v1 + 88);
    v55 = *(v1 + 104);
    v56 = *(v1 + 120);
    v18 = *(v1 + 184);
    v59 = *(v1 + 168);
    v58 = *(v1 + 152);
    v57 = *(v1 + 136);
    v60 = v18;
    v61 = v9;
    v19 = *(v1 + 200);
    v20 = *(v1 + 216);
    v64 = *(v1 + 232);
    v63 = v20;
    v62 = v19;
    v65 = v5;
    v21 = sub_26C0FB760(&v45);
    v22 = *(v1 + 16);
    v47 = *v1;
    v48 = v22;
    v49 = *(v1 + 32);
    v50 = v4;
    v51 = *(v1 + 56);
    v52 = *(v1 + 72);
    v53 = v7;
    v54 = *(v1 + 88);
    v55 = *(v1 + 104);
    v56 = *(v1 + 120);
    v23 = *(v1 + 184);
    v59 = *(v1 + 168);
    v58 = *(v1 + 152);
    v57 = *(v1 + 136);
    v60 = v23;
    v61 = v9;
    v24 = *(v1 + 200);
    v25 = *(v1 + 216);
    v64 = *(v1 + 232);
    v63 = v25;
    v62 = v24;
    v65 = v5;
    sub_26C0FB8EC(v21, &v45);
    v26 = *(v1 + 16);
    v47 = *v1;
    v48 = v26;
    v49 = *(v1 + 32);
    v50 = v4;
    v51 = *(v1 + 56);
    v52 = *(v1 + 72);
    v53 = v7;
    v54 = *(v1 + 88);
    v55 = *(v1 + 104);
    v56 = *(v1 + 120);
    v27 = *(v1 + 184);
    v59 = *(v1 + 168);
    v58 = *(v1 + 152);
    v57 = *(v1 + 136);
    v60 = v27;
    v61 = v9;
    v28 = *(v1 + 200);
    v29 = *(v1 + 216);
    v64 = *(v1 + 232);
    v63 = v29;
    v62 = v28;
    v65 = v5;
    sub_26C0FBA1C(&v45);
    if (v4)
    {
      v30 = *(v4 + 16);
      if (v30)
      {
        v31 = 0;
        do
        {
          v32 = *(v4 + 32 + v31++);
          v33 = *(v9 + 16);
          v34 = (v9 + 32);
          do
          {
            if (!v33)
            {
              break;
            }

            v35 = *v34++;
            --v33;
          }

          while (v35 != v32);
        }

        while (v31 != v30);
      }
    }

    v36 = *(v1 + 16);
    v47 = *v1;
    v48 = v36;
    v49 = *(v1 + 32);
    v50 = v4;
    v51 = *(v1 + 56);
    v52 = *(v1 + 72);
    v53 = v7;
    v54 = *(v1 + 88);
    v55 = *(v1 + 104);
    v56 = *(v1 + 120);
    v37 = *(v1 + 184);
    v59 = *(v1 + 168);
    v58 = *(v1 + 152);
    v57 = *(v1 + 136);
    v60 = v37;
    v61 = v9;
    v38 = *(v1 + 200);
    v39 = *(v1 + 216);
    v64 = *(v1 + 232);
    v63 = v39;
    v62 = v38;
    v65 = v5;
    result = sub_26C0FBC14(&v45);
    if ((v5 & 1) != 0 && !v7)
    {
      if (qword_28047A750 != -1)
      {
        swift_once();
      }

      v41 = sub_26C148A9C();
      __swift_project_value_buffer(v41, qword_28047ABB0);
      v42 = sub_26C148A7C();
      v43 = sub_26C14900C();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        *v44 = 0;
        _os_log_impl(&dword_26C0B5000, v42, v43, "no alpn negotiated when required by QUIC", v44, 2u);
        MEMORY[0x26D69C3A0](v44, -1, -1);
      }

      *a1 = xmmword_26C14CC70;
      *(a1 + 16) = 2;
      v47 = xmmword_26C14CC70;
      LOBYTE(v48) = 2;
      sub_26C0BBAF8();
      return swift_willThrowTypedImpl();
    }
  }

  return result;
}

void sub_26C0FC76C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 80);
  v6 = *(v2 + 248);
  if (qword_28047A750 != -1)
  {
    swift_once();
  }

  v7 = sub_26C148A9C();
  __swift_project_value_buffer(v7, qword_28047ABB0);
  v8 = sub_26C148A7C();
  v9 = sub_26C148FFC();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_26C0B5000, v8, v9, "server selecting ALPN protocol", v10, 2u);
    MEMORY[0x26D69C3A0](v10, -1, -1);
  }

  if (!v5 || !a1)
  {
    if (!v6)
    {
      return;
    }

    v23 = sub_26C148A7C();
    v24 = sub_26C14900C();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      v26 = "quic requires alpn";
      goto LABEL_21;
    }

LABEL_22:

    *a2 = xmmword_26C14CC70;
    *(a2 + 16) = 2;
    sub_26C0BBAF8();
    swift_willThrowTypedImpl();
    return;
  }

  v28 = *(v5 + 16);
  if (!v28)
  {
LABEL_16:
    v23 = sub_26C148A7C();
    v24 = sub_26C14900C();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      v26 = "alpn negotiation failed";
LABEL_21:
      _os_log_impl(&dword_26C0B5000, v23, v24, v26, v25, 2u);
      MEMORY[0x26D69C3A0](v25, -1, -1);
      goto LABEL_22;
    }

    goto LABEL_22;
  }

  v11 = 0;
  v12 = v5 + 32;
  v13 = (a1 + 40);
  v27 = a2;
  while (v11 < *(v5 + 16))
  {
    v14 = (v12 + 16 * v11);
    v15 = *v14;
    v16 = v14[1];
    v17 = v11 + 1;
    v18 = *(a1 + 16) + 1;
    v19 = v13;
    while (--v18)
    {
      v20 = v19 + 2;
      v21 = sub_26C0FCA28(v15, v16, *(v19 - 1), *v19);
      v19 = v20;
      if (v21)
      {

        return;
      }
    }

    ++v11;
    v22 = v17 == v28;
    v12 = v5 + 32;
    a2 = v27;
    v13 = (a1 + 40);
    if (v22)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
}

unint64_t sub_26C0FCA28(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v5 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v5 = a3 & 0xFFFFFFFFFFFFLL;
  }

  v34 = v5;
  v6 = 4 * v5;
  v7 = (a3 >> 59) & 1;
  if ((a4 & 0x1000000000000000) == 0)
  {
    LOBYTE(v7) = 1;
  }

  v37 = 4 << v7;
  v29 = a4 & 0xFFFFFFFFFFFFFFLL;
  v28 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v8 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v32 = v8;
  v9 = 4 * v8;
  v10 = (a1 >> 59) & 1;
  if ((a2 & 0x1000000000000000) == 0)
  {
    LOBYTE(v10) = 1;
  }

  v11 = 4 << v10;
  v26 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v27 = a2 & 0xFFFFFFFFFFFFFFLL;
  v12 = 15;
  v13 = 15;
  v36 = v6;
  v31 = 4 << v10;
  while (1)
  {
    v14 = v13 >> 14;
    if (v13 >> 14 == v6)
    {
      v15 = 0;
      goto LABEL_29;
    }

    result = v13;
    if ((v13 & 0xC) == v37)
    {
      result = sub_26C0CEF7C(v13, a3, a4);
      v11 = v31;
    }

    v17 = result >> 16;
    v18 = a4;
    if (result >> 16 >= v34)
    {
      break;
    }

    if ((a4 & 0x1000000000000000) != 0)
    {
      result = sub_26C148F9C();
      v18 = a4;
      v11 = v31;
      v15 = result;
    }

    else if ((a4 & 0x2000000000000000) != 0)
    {
      v38 = a3;
      v39 = v29;
      v15 = *(&v38 + v17);
    }

    else
    {
      result = v28;
      if ((a3 & 0x1000000000000000) == 0)
      {
        result = sub_26C1490AC();
        v18 = a4;
        v11 = v31;
      }

      v15 = *(result + v17);
    }

    if ((v13 & 0xC) == v37)
    {
      result = sub_26C0CEF7C(v13, a3, v18);
      v11 = v31;
      v13 = result;
      if ((a4 & 0x1000000000000000) != 0)
      {
LABEL_26:
        if (v34 <= v13 >> 16)
        {
          goto LABEL_55;
        }

        v19 = sub_26C148F7C();
        v11 = v31;
        v13 = v19;
        goto LABEL_28;
      }
    }

    else if ((v18 & 0x1000000000000000) != 0)
    {
      goto LABEL_26;
    }

    v13 = (v13 & 0xFFFFFFFFFFFF0000) + 65540;
LABEL_28:
    v6 = v36;
LABEL_29:
    v20 = v12 >> 14;
    v21 = v12 >> 14 == v9;
    if (v12 >> 14 == v9)
    {
      v22 = 0;
      if (v14 == v6)
      {
        return v21;
      }

      goto LABEL_47;
    }

    v23 = v12 & 0xC;
    result = v12;
    if (v23 == v11)
    {
      result = sub_26C0CEF7C(v12, a1, a2);
      v11 = v31;
      v6 = v36;
    }

    v24 = result >> 16;
    if (result >> 16 >= v32)
    {
      goto LABEL_54;
    }

    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_26C148F9C();
      v11 = v31;
      v6 = v36;
      v22 = result;
      if (v23 != v31)
      {
        goto LABEL_45;
      }
    }

    else if ((a2 & 0x2000000000000000) != 0)
    {
      v38 = a1;
      v39 = v27;
      v22 = *(&v38 + v24);
      if (v23 != v11)
      {
        goto LABEL_45;
      }
    }

    else
    {
      result = v26;
      if ((a1 & 0x1000000000000000) == 0)
      {
        result = sub_26C1490AC();
        v11 = v31;
        v6 = v36;
      }

      v22 = *(result + v24);
      if (v23 != v11)
      {
LABEL_45:
        if ((a2 & 0x1000000000000000) == 0)
        {
LABEL_46:
          v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
          if (v14 == v6)
          {
            return v21;
          }

          goto LABEL_47;
        }

        goto LABEL_41;
      }
    }

    result = sub_26C0CEF7C(v12, a1, a2);
    v11 = v31;
    v6 = v36;
    v12 = result;
    if ((a2 & 0x1000000000000000) == 0)
    {
      goto LABEL_46;
    }

LABEL_41:
    if (v32 <= v12 >> 16)
    {
      goto LABEL_56;
    }

    v25 = sub_26C148F7C();
    v11 = v31;
    v6 = v36;
    v12 = v25;
    if (v14 == v36)
    {
      return v21;
    }

LABEL_47:
    v21 = 0;
    if (v20 == v9 || v15 != v22)
    {
      return v21;
    }
  }

  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
  return result;
}

uint64_t sub_26C0FCD7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = 0;
    v6 = a1 + 32;
    do
    {
      result = *(v6 + 2 * v5++);
      v8 = *(a2 + 16);
      v9 = (a2 + 32);
      while (v8)
      {
        v10 = *v9++;
        --v8;
        if (v10 == result)
        {
          return result;
        }
      }
    }

    while (v5 != v4);
  }

  if (qword_28047A750 != -1)
  {
    swift_once();
  }

  v11 = sub_26C148A9C();
  __swift_project_value_buffer(v11, qword_28047ABB0);
  v12 = sub_26C148A7C();
  v13 = sub_26C14900C();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_26C0B5000, v12, v13, "no common ciphersuites", v14, 2u);
    MEMORY[0x26D69C3A0](v14, -1, -1);
  }

  *a3 = xmmword_26C14A8E0;
  *(a3 + 16) = 2;
  sub_26C0BBAF8();
  return swift_willThrowTypedImpl();
}

uint64_t sub_26C0FCEE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A888, &qword_26C14A5B8);
  MEMORY[0x28223BE20](v6 - 8);
  v40 = &v39 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A890, &qword_26C14A5C0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v39 - v9;
  v11 = type metadata accessor for ServerHandshakeState.ServerHelloState(0);
  v12 = a3 + v11[6];
  sub_26C0FEE38(a1, a3, type metadata accessor for ServerHandshakeStateMachine.Configuration);
  sub_26C0CF55C(a2, a3 + v11[5], &qword_28047ABC8, &unk_26C14CCA0);
  v13 = type metadata accessor for ServerHandshakeState.ClientHelloState(0);
  v14 = (a1 + v13[8]);
  v15 = *v14;
  LOBYTE(v14) = *(v14 + 2);
  *v12 = v15;
  *(v12 + 2) = v14;
  v16 = (a1 + v13[15]);
  v17 = *v16;
  v18 = v16[1];
  v19 = v16[2];
  v20 = (a3 + v11[7]);
  *v20 = v17;
  v20[1] = v18;
  v20[2] = v19;
  v21 = (a1 + v13[16]);
  v22 = *v21;
  v23 = v21[1];
  v24 = (a3 + v11[8]);
  *v24 = v22;
  v24[1] = v23;
  *(a3 + v11[9]) = *(a1 + v13[6]);
  sub_26C0CF314(a1 + v13[18], v10, &qword_28047A890, &qword_26C14A5C0);
  v25 = type metadata accessor for GeneralEPSK(0);
  v26 = (*(*(v25 - 8) + 48))(v10, 1, v25) != 1;
  sub_26C0BB37C(v17, v18);

  sub_26C0CF5C4(v10, &qword_28047A890, &qword_26C14A5C0);
  *(a3 + v11[10]) = v26;
  v27 = v40;
  *(a3 + v11[11]) = *(a1 + v13[20]);
  v28 = v13[21];
  sub_26C0CF314(a1 + v28, v27, &qword_28047A888, &qword_26C14A5B8);
  v29 = type metadata accessor for PAKEServerState(0);
  v30 = (*(*(v29 - 8) + 48))(v27, 1, v29);
  if (v30 == 1)
  {
    sub_26C0CF5C4(v27, &qword_28047A888, &qword_26C14A5B8);
    v31 = 0;
  }

  else
  {
    v31 = *(v27 + *(v29 + 32));
    sub_26C0FEEA0(v27, type metadata accessor for PAKEServerState);
  }

  v32 = a3 + v11[12];
  *v32 = v31;
  *(v32 + 2) = v30 == 1;
  v33 = a1 + v13[7];
  LOWORD(v32) = *v33;
  LOBYTE(v33) = *(v33 + 2);
  v34 = a3 + v11[13];
  *v34 = v32;
  *(v34 + 2) = v33;
  *(a3 + v11[15]) = *(a1 + v13[17]);
  v35 = (a1 + v13[9]);
  LOBYTE(v32) = *v35;
  LOBYTE(v35) = v35[1];
  v36 = (a3 + v11[14]);
  *v36 = v32;
  v36[1] = v35;
  sub_26C0CF314(a1 + v28, a3 + v11[16], &qword_28047A888, &qword_26C14A5B8);
  v37 = *(a1 + v13[23]);
  result = sub_26C0FEEA0(a1, type metadata accessor for ServerHandshakeState.ClientHelloState);
  *(a3 + v11[17]) = v37;
  return result;
}

int *sub_26C0FD2A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A888, &qword_26C14A5B8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v28 - v7;
  result = type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState(0);
  v10 = result;
  v11 = *(a1 + result[10]);
  if (v11 & 1) == 0 && (*(a1 + result[12] + 2))
  {
    __break(1u);
  }

  else
  {
    sub_26C0FEE38(a1, a3, type metadata accessor for ServerHandshakeStateMachine.Configuration);
    v12 = type metadata accessor for ServerHandshakeState.ServerFinishedState(0);
    sub_26C0CF55C(a2, a3 + v12[5], &qword_28047ABC8, &unk_26C14CCA0);
    v13 = (a1 + v10[7]);
    v14 = v13[1];
    v29 = *v13;
    v15 = v13[2];
    v16 = (a3 + v12[6]);
    *v16 = v29;
    v16[1] = v14;
    v16[2] = v15;
    v17 = (a1 + v10[8]);
    v18 = *v17;
    v19 = v17[1];
    v20 = (a3 + v12[7]);
    *v20 = v18;
    v20[1] = v19;
    *(a3 + v12[8]) = *(a1 + v10[9]);
    *(a3 + v12[9]) = *(a1 + v10[11]);
    v21 = a1 + v10[12];
    LOWORD(v18) = *v21;
    LOBYTE(v21) = *(v21 + 2);
    v22 = a3 + v12[10];
    *v22 = v18;
    *(v22 + 2) = v21;
    v23 = a1 + v10[13];
    LOWORD(v18) = *v23;
    LOBYTE(v23) = *(v23 + 2);
    v24 = a3 + v12[11];
    *v24 = v18;
    *(v24 + 2) = v23;
    *(a3 + v12[12]) = v11;
    *(a3 + v12[13]) = *(a1 + v10[14]);
    v25 = v10[15];
    sub_26C0CF314(a1 + v25, a3 + v12[14], &qword_28047A888, &qword_26C14A5B8);
    sub_26C0CF314(a1 + v25, v8, &qword_28047A888, &qword_26C14A5B8);
    sub_26C0BB37C(v29, v14);

    sub_26C0FEEA0(a1, type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState);
    v26 = type metadata accessor for PAKEServerState(0);
    v27 = (*(*(v26 - 8) + 48))(v8, 1, v26) != 1;
    result = sub_26C0CF5C4(v8, &qword_28047A888, &qword_26C14A5B8);
    *(a3 + v12[15]) = v27;
  }

  return result;
}

uint64_t sub_26C0FD540@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v30 = a3;
  v29 = a2;
  v34 = a1;
  v31 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A9C8, &qword_26C14D2A0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v27 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A870, &qword_26C14A5A0);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v27 - v17;
  sub_26C0CF314(v5, &v27 - v17, &qword_28047A870, &qword_26C14A5A0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v20 = v34;
    v21 = v31;
    v28 = v5;
    if (EnumCaseMultiPayload)
    {
      sub_26C0CF55C(v18, v12, &qword_28047A9C8, &qword_26C14D2A0);
      v23 = v21;
      *v21 = xmmword_26C14A1B0;
      v21[2] = 0;
      sub_26C100BCC(v20, v29, v30);
      sub_26C0CF314(v12, v10, &qword_28047A9C8, &qword_26C14D2A0);
      v24 = *v21;
      v25 = v21[1];
      v26 = v23[2];
      sub_26C0BBAA4(v24, v25);
      sub_26C10A6EC(v10, v24, v25, v26, v16);
      sub_26C0CF5C4(v12, &qword_28047A9C8, &qword_26C14D2A0);
      swift_storeEnumTagMultiPayload();
      return sub_26C0FF20C(v16, v28, &qword_28047A870, &qword_26C14A5A0);
    }
  }

  else if ((EnumCaseMultiPayload - 2) >= 2)
  {
    goto LABEL_6;
  }

  sub_26C0CF5C4(v18, &qword_28047A870, &qword_26C14A5A0);
LABEL_6:
  *a4 = xmmword_26C14A570;
  *(a4 + 16) = 2;
  v32 = xmmword_26C14A570;
  v33 = 2;
  sub_26C0BBAF8();
  return swift_willThrowTypedImpl();
}

uint64_t sub_26C0FD7EC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, int64_t a3@<X2>, char *a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, unint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, char a11, _OWORD *a12)
{
  v150 = a8;
  v155 = a7;
  v154 = a6;
  LODWORD(v161) = a5;
  v171 = a4;
  v163 = a3;
  v168 = a1;
  v153 = a9;
  v13 = sub_26C148B6C();
  v164 = *(v13 - 8);
  v14 = MEMORY[0x28223BE20](v13);
  v152 = &v141 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v149 = &v141 - v17;
  MEMORY[0x28223BE20](v16);
  v173 = &v141 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AB18, &unk_26C14C110);
  v160 = *(v19 - 8);
  v20 = MEMORY[0x28223BE20](v19);
  v147 = &v141 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v170 = &v141 - v22;
  v145 = type metadata accessor for RawEPSK(0);
  MEMORY[0x28223BE20](v145);
  v146 = &v141 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = type metadata accessor for ImportedPSK(0);
  MEMORY[0x28223BE20](v143);
  v144 = &v141 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = type metadata accessor for PSK(0);
  MEMORY[0x28223BE20](v151);
  v26 = &v141 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A890, &qword_26C14A5C0);
  MEMORY[0x28223BE20](v27 - 8);
  v29 = &v141 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A930, qword_26C14C120);
  MEMORY[0x28223BE20](v30 - 8);
  v32 = &v141 - v31;
  v33 = sub_26C148BDC();
  v176 = *(v33 - 8);
  v34 = MEMORY[0x28223BE20](v33);
  v148 = &v141 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x28223BE20](v34);
  v172 = &v141 - v37;
  MEMORY[0x28223BE20](v36);
  v169 = &v141 - v38;
  v39 = sub_26C148E9C();
  v166 = *(v39 - 8);
  v40 = MEMORY[0x28223BE20](v39);
  v167 = &v141 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v43 = &v141 - v42;
  v44 = sub_26C0FF17C(&qword_281590328, MEMORY[0x277CC5550], MEMORY[0x277CC5548]);
  v179 = v43;
  v175 = v44;
  sub_26C148B3C();
  v45 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    v46 = 0;
    if (v45 == 2)
    {
      v46 = *(v168 + 24);
    }
  }

  else if (v45)
  {
    v46 = v168 >> 32;
  }

  else
  {
    v46 = BYTE6(a2);
  }

  if (v46 < v163)
  {
    __break(1u);
    goto LABEL_65;
  }

  v141 = a2 >> 62;
  v142 = a2;
  v47 = sub_26C14889C();
  v49 = v48;
  v50 = v174;
  sub_26C11E5B4(v47, v48, v179);
  v158 = v50;
  sub_26C0BB9B0(v47, v49);
  v174 = sub_26C0FF17C(&qword_28047AB38, MEMORY[0x277CC52C8], MEMORY[0x277CC52C0]);
  v51 = sub_26C148E7C();
  if (v51 < 0)
  {
LABEL_65:
    __break(1u);
LABEL_66:
    swift_once();
    goto LABEL_28;
  }

  v159 = v19;
  if (v51)
  {
    v52 = v51;
    v53 = sub_26C148FCC();
    *(v53 + 16) = v52;
    bzero((v53 + 32), v52);
  }

  else
  {
    v53 = MEMORY[0x277D84F90];
  }

  sub_26C0CF314(v171, v29, &qword_28047A890, &qword_26C14A5C0);
  v54 = type metadata accessor for GeneralEPSK(0);
  v55 = *(v54 - 8);
  v157 = *(v55 + 48);
  v156 = (v55 + 48);
  v56 = v157(v29, 1, v54);
  v165 = v33;
  v162 = v13;
  if (v56 == 1)
  {
    sub_26C0CF5C4(v29, &qword_28047A890, &qword_26C14A5C0);
    v57 = v176;
    (*(v176 + 56))(v32, 1, 1, v33);
    *&v177 = v53;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A840, &unk_26C14A530);
    sub_26C0FF1C4(&qword_28047ABE8, &qword_28047A840, &unk_26C14A530, MEMORY[0x277CC9C28]);
    sub_26C148BAC();
    v58 = (*(v57 + 48))(v32, 1, v33);
    v59 = v161;
    if (v58 != 1)
    {
      sub_26C0CF5C4(v32, &qword_28047A930, qword_26C14C120);
    }
  }

  else
  {
    sub_26C0FEE38(v29, v26, type metadata accessor for PSK);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v61 = (v176 + 16);
    if (EnumCaseMultiPayload == 1)
    {
      v62 = v146;
      sub_26C0FEF5C(v26, v146, type metadata accessor for RawEPSK);
      v63 = v165;
      (*v61)(v32, &v62[*(v145 + 20)], v165);
      v64 = type metadata accessor for RawEPSK;
    }

    else
    {
      v62 = v144;
      sub_26C0FEF5C(v26, v144, type metadata accessor for ImportedPSK);
      v63 = v165;
      (*v61)(v32, &v62[*(v143 + 20)], v165);
      v64 = type metadata accessor for ImportedPSK;
    }

    sub_26C0FEEA0(v62, v64);
    v59 = v161;
    sub_26C0FEEA0(v29, type metadata accessor for GeneralEPSK);
    v65 = v176;
    (*(v176 + 56))(v32, 0, 1, v63);
    (*(v65 + 32))(v169, v32, v63);
  }

  *&v177 = v53;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A840, &unk_26C14A530);
  sub_26C0FF1C4(&qword_28047A850, &qword_28047A840, &unk_26C14A530, MEMORY[0x277CC9C20]);
  sub_26C148CEC();

  if (v59)
  {
    v66 = 0x646E696220747865;
  }

  else
  {
    v66 = 0x646E696220706D69;
  }

  v67 = v167;
  sub_26C148B3C();
  v68 = v39;
  v69 = v173;
  sub_26C148B2C();
  v70 = v166 + 8;
  v71 = *(v166 + 8);
  v161 = v68;
  v71(v67, v68);
  v72 = v162;
  v73 = sub_26C148E7C();
  sub_26C1372CC(v66, 0xEA00000000007265, v73, v172);

  v75 = v164 + 8;
  v74 = *(v164 + 8);
  v74(v69, v72);
  if (v157(v171, 1, v54) == 1)
  {
    v156 = v74;
    v157 = v71;
    v171 = v70;
LABEL_24:
    v76 = v161;
    sub_26C148B2C();
    v77 = sub_26C148E7C();
    v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A948, &qword_26C14A7F0);
    v79 = *(v78 + 44);
    v80 = v78;
    v168 = v78;
    v81 = v153;
    v82 = v170;
    sub_26C1372CC(0x6661727420652063, 0xEB00000000636966, v77, v153 + v79);
    v83 = sub_26C148E7C();
    sub_26C1372CC(0x616D207078652065, 0xEC00000072657473, v83, v81 + *(v80 + 48));
    v84 = v72;
    v85 = v167;
    sub_26C148B3C();
    v86 = v152;
    sub_26C148B2C();
    (v157)(v85, v76);
    v87 = sub_26C148E7C();
    v88 = v168;
    v89 = v82;
    sub_26C1372CC(0x64657669726564, 0xE700000000000000, v87, v81 + *(v168 + 36));
    v90 = v156;
    v156(v86, v84);
    v90(v173, v84);
    (*(v160 + 8))(v89, v159);
    v91 = v176;
    v92 = v165;
    (*(v176 + 8))(v169, v165);
    (*(v166 + 32))(v81, v179, v76);
    return (*(v91 + 32))(v81 + *(v88 + 40), v172, v92);
  }

  v19 = v159;
  if (v155 >> 60 == 15 || (a11 & 1) != 0)
  {
    *a12 = 0xD00000000000002CLL;
    *(a12 + 1) = 0x800000026C15ACF0;
    *(a12 + 16) = 1;
    *&v177 = 0xD00000000000002CLL;
    *(&v177 + 1) = 0x800000026C15ACF0;
    v178 = 1;
    sub_26C0BBAF8();
    swift_willThrowTypedImpl();
    v102 = *(v176 + 8);
    v103 = v165;
    v102(v172, v165);
    (*(v160 + 8))(v170, v19);
    v102(v169, v103);
    return (v71)(v179, v161);
  }

  v146 = a12;
  v156 = v74;
  v157 = v71;
  v171 = v70;
  v164 = v75;
  sub_26C0BBAA4(v154, v155);
  v39 = v161;
  if (qword_28047A770 != -1)
  {
    goto LABEL_66;
  }

LABEL_28:
  v94 = sub_26C148A9C();
  v95 = __swift_project_value_buffer(v94, qword_28047AD78);
  v96 = sub_26C148A7C();
  v97 = sub_26C148FFC();
  v98 = os_log_type_enabled(v96, v97);
  v99 = v147;
  if (v98)
  {
    v100 = swift_slowAlloc();
    *v100 = 134217984;
    *(v100 + 4) = a10;
    _os_log_impl(&dword_26C0B5000, v96, v97, "bindersArrayLength: %ld", v100, 0xCu);
    MEMORY[0x26D69C3A0](v100, -1, -1);
  }

  if (v141 > 1)
  {
    if (v141 == 2)
    {
      v101 = *(v168 + 24);
    }

    else
    {
      v101 = 0;
    }
  }

  else if (v141)
  {
    v101 = v168 >> 32;
  }

  else
  {
    v101 = BYTE6(v142);
  }

  result = v163;
  if (v101 < v163)
  {
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
    return result;
  }

  v145 = v95;
  v104 = sub_26C14889C();
  sub_26C11CC58(a10 + 3, v104, v105, &v177);
  v106 = v19;
  v107 = v177;
  v108 = v167;
  sub_26C148B3C();
  sub_26C0BBAA4(v107, *(&v107 + 1));
  v109 = v158;
  sub_26C11E5B4(v107, *(&v107 + 1), v108);
  v168 = v109;
  v163 = *(&v107 + 1);
  v151 = v107;
  sub_26C0BB9B0(v107, *(&v107 + 1));
  sub_26C148B2C();
  (v157)(v108, v39);
  v110 = sub_26C148E7C();
  v111 = v148;
  v112 = sub_26C136F6C(0x64656873696E6966, 0xE800000000000000, MEMORY[0x277D84F90], v110, v148);
  MEMORY[0x28223BE20](v112);
  *(&v141 - 2) = v111;
  sub_26C0FF17C(&qword_28047A9D0, MEMORY[0x277CC52C8], MEMORY[0x277CC52B8]);
  v113 = v168;
  result = sub_26C14880C();
  v114 = v155;
  v115 = v155 >> 62;
  if ((v155 >> 62) > 1)
  {
    v116 = v150;
    v117 = v154;
    if (v115 == 2)
    {
      v118 = *(v154 + 24);
    }

    else
    {
      v118 = 0;
    }
  }

  else
  {
    v116 = v150;
    v117 = v154;
    if (v115)
    {
      v118 = v154 >> 32;
    }

    else
    {
      v118 = BYTE6(v155);
    }
  }

  if (v118 < v116)
  {
    goto LABEL_68;
  }

  v119 = v106;
  v120 = v117;
  *&v177 = sub_26C14889C();
  *(&v177 + 1) = v121;
  sub_26C0FF1C4(&qword_28047ABF0, &qword_28047AB18, &unk_26C14C110, MEMORY[0x277CC53C8]);
  sub_26C0BE710();
  v122 = v106;
  v123 = sub_26C148C1C();
  sub_26C0BB9B0(v177, *(&v177 + 1));
  if (v123)
  {
    v158 = v113;
    sub_26C0BB344(v120, v114);
    sub_26C0BB9B0(v151, v163);
    (*(v160 + 8))(v99, v119);
    v72 = v162;
    v156(v149, v162);
    (*(v176 + 8))(v148, v165);
    goto LABEL_24;
  }

  result = sub_26C148C0C();
  v124 = v122;
  if (v115 > 1)
  {
    v125 = v150;
    v126 = v162;
    if (v115 == 2)
    {
      v127 = *(v154 + 24);
    }

    else
    {
      v127 = 0;
    }
  }

  else
  {
    v125 = v150;
    v126 = v162;
    if (v115)
    {
      v127 = v154 >> 32;
    }

    else
    {
      v127 = BYTE6(v155);
    }
  }

  v128 = v161;
  v129 = __OFSUB__(v127, v125);
  v130 = v127 - v125;
  if (v129)
  {
    goto LABEL_69;
  }

  if (result != v130)
  {
    v131 = sub_26C148A7C();
    v132 = sub_26C14900C();
    if (os_log_type_enabled(v131, v132))
    {
      v133 = swift_slowAlloc();
      *v133 = 0;
      _os_log_impl(&dword_26C0B5000, v131, v132, "psk binder value not of expected length. likely epsk hash algorithm mismatch.", v133, 2u);
      MEMORY[0x26D69C3A0](v133, -1, -1);
    }
  }

  v134 = sub_26C148A7C();
  v135 = sub_26C14900C();
  if (os_log_type_enabled(v134, v135))
  {
    v136 = swift_slowAlloc();
    *v136 = 0;
    _os_log_impl(&dword_26C0B5000, v134, v135, "client binder value incorrect. aborting handshake.", v136, 2u);
    MEMORY[0x26D69C3A0](v136, -1, -1);
  }

  v137 = v146;
  *v146 = xmmword_26C14C1C0;
  v137[16] = 2;
  v177 = xmmword_26C14C1C0;
  v178 = 2;
  sub_26C0BBAF8();
  swift_willThrowTypedImpl();
  sub_26C0BB344(v154, v155);
  sub_26C0BB9B0(v151, v163);
  v138 = *(v160 + 8);
  v138(v99, v124);
  v156(v149, v126);
  v139 = *(v176 + 8);
  v140 = v165;
  v139(v172, v165);
  v138(v170, v124);
  v139(v169, v140);
  v139(v148, v140);
  return (v157)(v179, v128);
}

uint64_t sub_26C0FED74(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_26C0FEE1C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >> 60 != 15)
  {
    return sub_26C0BB9B0(a2, a3);
  }

  return result;
}

uint64_t sub_26C0FEE38(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_26C0FEEA0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_26C0FEF00(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a7)
  {
    sub_26C0BBAA4(result, a2);
    sub_26C0BBAA4(a4, a5);
  }

  return result;
}

uint64_t sub_26C0FEF5C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

char *sub_26C0FEFE0(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  result = sub_26C1487BC();
  v8 = result;
  if (result)
  {
    result = sub_26C1487EC();
    if (__OFSUB__(a1, result))
    {
LABEL_14:
      __break(1u);
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    v8 += a1 - result;
  }

  v9 = __OFSUB__(a2, a1);
  v10 = a2 - a1;
  if (v9)
  {
    __break(1u);
    goto LABEL_14;
  }

  result = sub_26C1487DC();
  if (result >= v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = result;
  }

  if (!a4)
  {
    goto LABEL_15;
  }

  if (!v8)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  if (v8 == a4)
  {
    return 1;
  }

  else
  {
    return (memcmp(a4, v8, v11) == 0);
  }
}

uint64_t sub_26C0FF10C(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

void sub_26C0FF158(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = (a3 >> 60) & 3;
  if (v3 == 1)
  {
    sub_26C0BBAA4(a2, a3 & 0xCFFFFFFFFFFFFFFFLL);
  }

  else if (!v3)
  {
  }
}

uint64_t sub_26C0FF17C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26C0FF1C4(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t sub_26C0FF20C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t get_enum_tag_for_layout_string_8SwiftTLS9ExtensionO4PAKEO15PAKEClientHelloVSg(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy249_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  v8 = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  result = a2[12];
  v12 = a2[13];
  v13 = a2[14];
  *(a1 + 233) = *(a2 + 233);
  *(a1 + 208) = v12;
  *(a1 + 224) = v13;
  *(a1 + 192) = result;
  return result;
}

uint64_t sub_26C0FF2D8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 249))
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

uint64_t sub_26C0FF320(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 248) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 249) = 1;
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

    *(result + 249) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26C0FF3D8(uint64_t a1)
{
  result = type metadata accessor for GeneralEPSK(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_26C0FF4D4(uint64_t a1)
{
  type metadata accessor for HandshakeState.ServerHelloState.SessionData(319);
  if (v1 <= 0x3F)
  {
    sub_26C0FF674(319);
    if (v2 <= 0x3F)
    {
      sub_26C1005FC(319, &qword_281591F30, &type metadata for CipherSuite, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_26C1005FC(319, &qword_281591F40, &type metadata for NamedGroup, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_26C1005FC(319, &qword_2815902F8, MEMORY[0x277D84C58], MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            sub_26C0FFE5C(319, qword_281591560, type metadata accessor for PAKEClientState, MEMORY[0x277D83D88]);
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

void sub_26C0FF674(uint64_t a1)
{
  if (!qword_2815907B8[0])
  {
    v2 = sub_26C148E9C();
    v3 = sub_26C0E6794(&qword_281590328, MEMORY[0x277CC5550], MEMORY[0x277CC5548]);
    v5 = type metadata accessor for ClientSessionKeyManager(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, qword_2815907B8);
    }
  }
}

uint64_t sub_26C0FF72C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_26C0FF774(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_26C0FF7F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = type metadata accessor for SessionTicket(319);
  if (v6 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_memcpy5_2(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t _s9EarlyDataVwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 5))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s9EarlyDataVwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 4) = 0;
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

  *(result + 5) = v3;
  return result;
}

uint64_t sub_26C0FF8C8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_26C0FF924(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

void sub_26C0FF9D0(uint64_t a1)
{
  sub_26C1005FC(319, qword_281592488, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_26C1005FC(319, &qword_281591F48, &type metadata for ByteBuffer, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for PeerCertificateBundle(319);
      if (v3 <= 0x3F)
      {
        sub_26C0FF674(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_26C0FFB4C(uint64_t a1)
{
  type metadata accessor for PeerCertificateBundle(319);
  if (v1 <= 0x3F)
  {
    sub_26C1005FC(319, qword_281592488, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_26C1005FC(319, &qword_281591F48, &type metadata for ByteBuffer, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_26C0FF674(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_26C0FFCC8(uint64_t a1)
{
  sub_26C0FFE5C(319, qword_281591A30, type metadata accessor for HandshakeState.EncryptedExtensionsState.SessionData, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_26C1005FC(319, qword_281592488, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_26C1005FC(319, &qword_281591F48, &type metadata for ByteBuffer, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_26C0FF674(319);
        if (v4 <= 0x3F)
        {
          sub_26C0FFE5C(319, qword_281591560, type metadata accessor for PAKEClientState, MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_26C0FFE5C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_26C0FFF08(uint64_t a1)
{
  sub_26C1005FC(319, &qword_281590320, &type metadata for CipherSuite, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_26C1005FC(319, &qword_281590308, &type metadata for CertificateType, MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      sub_26C0FFE5C(319, qword_281590500, type metadata accessor for GeneratedEphemeralPrivateKey, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_26C0FF674(319);
        if (v4 <= 0x3F)
        {
          sub_26C0FFE5C(319, qword_281592590, type metadata accessor for SessionTicket, MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            sub_26C0FFE5C(319, &qword_281590318, type metadata accessor for GeneralEPSK, MEMORY[0x277D83940]);
            if (v6 <= 0x3F)
            {
              sub_26C0FFE5C(319, qword_281591560, type metadata accessor for PAKEClientState, MEMORY[0x277D83D88]);
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

void sub_26C10016C(uint64_t a1)
{
  sub_26C0FFE5C(319, qword_281592590, type metadata accessor for SessionTicket, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_26C0FF674(319);
    if (v2 <= 0x3F)
    {
      sub_26C0FFE5C(319, &qword_281590318, type metadata accessor for GeneralEPSK, MEMORY[0x277D83940]);
      if (v3 <= 0x3F)
      {
        sub_26C0FFE5C(319, qword_281591560, type metadata accessor for PAKEClientState, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_26C1002E0(uint64_t a1)
{
  result = type metadata accessor for HandshakeState.IdleState(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for HandshakeState.ClientHelloState(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for HandshakeState.ServerHelloState(319);
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for HandshakeState.EncryptedExtensionsState(319);
        if (v5 <= 0x3F)
        {
          result = type metadata accessor for HandshakeState.ServerCertificateState(319);
          if (v6 <= 0x3F)
          {
            result = type metadata accessor for HandshakeState.ServerCertificateVerifyState(319);
            if (v7 <= 0x3F)
            {
              result = type metadata accessor for HandshakeState.ReadyState(319);
              if (v8 <= 0x3F)
              {
                swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                return 0;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_26C100400(uint64_t a1)
{
  sub_26C1005FC(319, &qword_281591F30, &type metadata for CipherSuite, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_26C1005FC(319, &qword_281591F40, &type metadata for NamedGroup, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_26C0FFE5C(319, &qword_2815909C8, type metadata accessor for PeerCertificateBundle, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_26C1005FC(319, qword_281592488, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_26C1005FC(319, &qword_281591F48, &type metadata for ByteBuffer, MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            sub_26C0FF674(319);
            if (v6 <= 0x3F)
            {
              sub_26C1005FC(319, &qword_281591F38, &type metadata for PAKEScheme, MEMORY[0x277D83D88]);
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

void sub_26C1005FC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_26C10064C(unsigned int a1, uint64_t a2)
{
  v11[5] = *MEMORY[0x277D85DE8];
  v3 = a2 + 2;
  if (__OFADD__(a2, 2))
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v2[2] > a2)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
  }

  v4 = *v2;
  v5 = v2[1];
  v6 = v5 >> 62;
  if ((v5 >> 62) > 1)
  {
    if (v6 == 2)
    {
      v8 = *(v4 + 24);
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v7 = BYTE6(v5);
    v8 = v4 >> 32;
    if (!v6)
    {
      v8 = v7;
    }
  }

  if (v8 < v3)
  {
    goto LABEL_15;
  }

  v10 = bswap32(a1) >> 16;
  if (v3 < a2)
  {
    goto LABEL_16;
  }

  v11[3] = MEMORY[0x277D838B0];
  v11[4] = MEMORY[0x277CC9C18];
  v11[0] = &v10;
  v11[1] = v11;
  __swift_project_boxed_opaque_existential_1(v11, MEMORY[0x277D838B0]);
  sub_26C14887C();
  __swift_destroy_boxed_opaque_existential_1(v11);
  return 2;
}

uint64_t sub_26C100778(char a1, uint64_t a2)
{
  v11[5] = *MEMORY[0x277D85DE8];
  v3 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v2[2] > a2)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
  }

  v4 = *v2;
  v5 = v2[1];
  v6 = v5 >> 62;
  if ((v5 >> 62) > 1)
  {
    if (v6 == 2)
    {
      v8 = *(v4 + 24);
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v7 = BYTE6(v5);
    v8 = v4 >> 32;
    if (!v6)
    {
      v8 = v7;
    }
  }

  if (v8 < v3)
  {
    goto LABEL_15;
  }

  v10 = a1;
  if (v3 < a2)
  {
    goto LABEL_16;
  }

  v11[3] = MEMORY[0x277D838B0];
  v11[4] = MEMORY[0x277CC9C18];
  v11[0] = &v10;
  v11[1] = v11;
  __swift_project_boxed_opaque_existential_1(v11, MEMORY[0x277D838B0]);
  sub_26C14887C();
  __swift_destroy_boxed_opaque_existential_1(v11);
  return 1;
}

uint64_t sub_26C10089C()
{
  v16 = *MEMORY[0x277D85DE8];
  LOBYTE(v11) = 2;
  v1 = MEMORY[0x277D838B0];
  v2 = MEMORY[0x277CC9C18];
  v14 = MEMORY[0x277D838B0];
  v15 = MEMORY[0x277CC9C18];
  v12 = &v11;
  v13 = (&v11 + 1);
  __swift_project_boxed_opaque_existential_1(&v12, MEMORY[0x277D838B0]);
  sub_26C14888C();
  __swift_destroy_boxed_opaque_existential_1(&v12);
  v3 = *v0;
  v4 = v0[1];
  v5 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    if (v5 == 2)
    {
      v6 = *(v3 + 24);
    }

    else
    {
      v6 = 0;
    }
  }

  else if (v5)
  {
    v6 = v3 >> 32;
  }

  else
  {
    v6 = BYTE6(v4);
  }

  LOBYTE(v11) = 0;
  v14 = v1;
  v15 = v2;
  v12 = &v11;
  v13 = (&v11 + 1);
  __swift_project_boxed_opaque_existential_1(&v12, v1);
  sub_26C14888C();
  __swift_destroy_boxed_opaque_existential_1(&v12);
  v11 = 0;
  v14 = v1;
  v15 = v2;
  v12 = &v11;
  v13 = &v12;
  __swift_project_boxed_opaque_existential_1(&v12, v1);
  sub_26C14888C();
  __swift_destroy_boxed_opaque_existential_1(&v12);
  v7 = sub_26C122174(v0);
  if (v7 > 0xFFFFFF)
  {
    __break(1u);
LABEL_12:
    __break(1u);
  }

  v8 = v7;
  v9 = sub_26C100778(SBYTE2(v7), v6);
  if (__OFADD__(v6, v9))
  {
    goto LABEL_12;
  }

  sub_26C10064C(v8, v6 + v9);
  return v8 + 4;
}

uint64_t sub_26C100A40(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  LOBYTE(v13) = 8;
  v3 = MEMORY[0x277D838B0];
  v4 = MEMORY[0x277CC9C18];
  v16 = MEMORY[0x277D838B0];
  v17 = MEMORY[0x277CC9C18];
  v14 = &v13;
  v15 = (&v13 + 1);
  __swift_project_boxed_opaque_existential_1(&v14, MEMORY[0x277D838B0]);
  sub_26C14888C();
  __swift_destroy_boxed_opaque_existential_1(&v14);
  v5 = *v1;
  v6 = v1[1];
  v7 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    if (v7 == 2)
    {
      v8 = *(v5 + 24);
    }

    else
    {
      v8 = 0;
    }
  }

  else if (v7)
  {
    v8 = v5 >> 32;
  }

  else
  {
    v8 = BYTE6(v6);
  }

  LOBYTE(v13) = 0;
  v16 = v3;
  v17 = v4;
  v14 = &v13;
  v15 = (&v13 + 1);
  __swift_project_boxed_opaque_existential_1(&v14, v3);
  sub_26C14888C();
  __swift_destroy_boxed_opaque_existential_1(&v14);
  v13 = 0;
  v16 = v3;
  v17 = v4;
  v14 = &v13;
  v15 = &v14;
  __swift_project_boxed_opaque_existential_1(&v14, v3);
  sub_26C14888C();
  __swift_destroy_boxed_opaque_existential_1(&v14);
  v9 = sub_26C123100(v1, a1);
  if (v9 > 0xFFFFFF)
  {
    __break(1u);
LABEL_12:
    __break(1u);
  }

  v10 = v9;
  v11 = sub_26C100778(SBYTE2(v9), v8);
  if (__OFADD__(v8, v11))
  {
    goto LABEL_12;
  }

  sub_26C10064C(v10, v8 + v11);
  return v10 + 4;
}

uint64_t sub_26C100BCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v19 = a1;
  v20 = a2;
  v21 = a3;
  LOBYTE(v14) = 20;
  v4 = MEMORY[0x277D838B0];
  v5 = MEMORY[0x277CC9C18];
  v17 = MEMORY[0x277D838B0];
  v18 = MEMORY[0x277CC9C18];
  v15 = &v14;
  v16 = (&v14 + 1);
  __swift_project_boxed_opaque_existential_1(&v15, MEMORY[0x277D838B0]);
  sub_26C14888C();
  __swift_destroy_boxed_opaque_existential_1(&v15);
  v6 = *v3;
  v7 = v3[1];
  v8 = v7 >> 62;
  if ((v7 >> 62) > 1)
  {
    if (v8 == 2)
    {
      v9 = *(v6 + 24);
    }

    else
    {
      v9 = 0;
    }
  }

  else if (v8)
  {
    v9 = v6 >> 32;
  }

  else
  {
    v9 = BYTE6(v7);
  }

  LOBYTE(v14) = 0;
  v17 = v4;
  v18 = v5;
  v15 = &v14;
  v16 = (&v14 + 1);
  __swift_project_boxed_opaque_existential_1(&v15, v4);
  sub_26C14888C();
  __swift_destroy_boxed_opaque_existential_1(&v15);
  v14 = 0;
  v17 = v4;
  v18 = v5;
  v15 = &v14;
  v16 = &v15;
  __swift_project_boxed_opaque_existential_1(&v15, v4);
  sub_26C14888C();
  __swift_destroy_boxed_opaque_existential_1(&v15);
  sub_26C122C3C();
  if (v10 > 0xFFFFFF)
  {
    __break(1u);
LABEL_12:
    __break(1u);
  }

  v11 = v10;
  v12 = sub_26C100778(SBYTE2(v10), v9);
  if (__OFADD__(v9, v12))
  {
    goto LABEL_12;
  }

  sub_26C10064C(v11, v9 + v12);
  return v11 + 4;
}

uint64_t sub_26C100D6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = *MEMORY[0x277D85DE8];
  v20 = a1;
  v21 = a2;
  v22 = a3;
  v23 = a4;
  LOBYTE(v15) = 11;
  v5 = MEMORY[0x277D838B0];
  v6 = MEMORY[0x277CC9C18];
  v18 = MEMORY[0x277D838B0];
  v19 = MEMORY[0x277CC9C18];
  v16 = &v15;
  v17 = (&v15 + 1);
  __swift_project_boxed_opaque_existential_1(&v16, MEMORY[0x277D838B0]);
  sub_26C14888C();
  __swift_destroy_boxed_opaque_existential_1(&v16);
  v7 = *v4;
  v8 = v4[1];
  v9 = v8 >> 62;
  if ((v8 >> 62) > 1)
  {
    if (v9 == 2)
    {
      v10 = *(v7 + 24);
    }

    else
    {
      v10 = 0;
    }
  }

  else if (v9)
  {
    v10 = v7 >> 32;
  }

  else
  {
    v10 = BYTE6(v8);
  }

  LOBYTE(v15) = 0;
  v18 = v5;
  v19 = v6;
  v16 = &v15;
  v17 = (&v15 + 1);
  __swift_project_boxed_opaque_existential_1(&v16, v5);
  sub_26C14888C();
  __swift_destroy_boxed_opaque_existential_1(&v16);
  v15 = 0;
  v18 = v5;
  v19 = v6;
  v16 = &v15;
  v17 = &v16;
  __swift_project_boxed_opaque_existential_1(&v16, v5);
  sub_26C14888C();
  __swift_destroy_boxed_opaque_existential_1(&v16);
  v11 = sub_26C0BFC70(v4);
  if (v11 > 0xFFFFFF)
  {
    __break(1u);
LABEL_12:
    __break(1u);
  }

  v12 = v11;
  v13 = sub_26C100778(SBYTE2(v11), v10);
  if (__OFADD__(v10, v13))
  {
    goto LABEL_12;
  }

  sub_26C10064C(v12, v10 + v13);
  return v12 + 4;
}

int64_t sub_26C100F0C(__int16 a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = *MEMORY[0x277D85DE8];
  v20 = a1;
  v21 = a2;
  v22 = a3;
  v23 = a4;
  LOBYTE(v15) = 15;
  v5 = MEMORY[0x277D838B0];
  v6 = MEMORY[0x277CC9C18];
  v18 = MEMORY[0x277D838B0];
  v19 = MEMORY[0x277CC9C18];
  v16 = &v15;
  v17 = (&v15 + 1);
  __swift_project_boxed_opaque_existential_1(&v16, MEMORY[0x277D838B0]);
  sub_26C14888C();
  __swift_destroy_boxed_opaque_existential_1(&v16);
  v7 = *v4;
  v8 = v4[1];
  v9 = v8 >> 62;
  if ((v8 >> 62) > 1)
  {
    if (v9 == 2)
    {
      v10 = *(v7 + 24);
    }

    else
    {
      v10 = 0;
    }
  }

  else if (v9)
  {
    v10 = v7 >> 32;
  }

  else
  {
    v10 = BYTE6(v8);
  }

  LOBYTE(v15) = 0;
  v18 = v5;
  v19 = v6;
  v16 = &v15;
  v17 = (&v15 + 1);
  __swift_project_boxed_opaque_existential_1(&v16, v5);
  sub_26C14888C();
  __swift_destroy_boxed_opaque_existential_1(&v16);
  v15 = 0;
  v18 = v5;
  v19 = v6;
  v16 = &v15;
  v17 = &v16;
  __swift_project_boxed_opaque_existential_1(&v16, v5);
  sub_26C14888C();
  __swift_destroy_boxed_opaque_existential_1(&v16);
  v11 = sub_26C0BB654(v4);
  if (v11 > 0xFFFFFF)
  {
    __break(1u);
LABEL_12:
    __break(1u);
  }

  v12 = v11;
  v13 = sub_26C100778(SBYTE2(v11), v10);
  if (__OFADD__(v10, v13))
  {
    goto LABEL_12;
  }

  sub_26C10064C(v12, v10 + v13);
  return v12 + 4;
}

uint64_t sub_26C1010B0()
{
  v16 = *MEMORY[0x277D85DE8];
  LOBYTE(v11) = 1;
  v1 = MEMORY[0x277D838B0];
  v2 = MEMORY[0x277CC9C18];
  v14 = MEMORY[0x277D838B0];
  v15 = MEMORY[0x277CC9C18];
  v12 = &v11;
  v13 = (&v11 + 1);
  __swift_project_boxed_opaque_existential_1(&v12, MEMORY[0x277D838B0]);
  sub_26C14888C();
  __swift_destroy_boxed_opaque_existential_1(&v12);
  v3 = *v0;
  v4 = v0[1];
  v5 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    if (v5 == 2)
    {
      v6 = *(v3 + 24);
    }

    else
    {
      v6 = 0;
    }
  }

  else if (v5)
  {
    v6 = v3 >> 32;
  }

  else
  {
    v6 = BYTE6(v4);
  }

  LOBYTE(v11) = 0;
  v14 = v1;
  v15 = v2;
  v12 = &v11;
  v13 = (&v11 + 1);
  __swift_project_boxed_opaque_existential_1(&v12, v1);
  sub_26C14888C();
  __swift_destroy_boxed_opaque_existential_1(&v12);
  v11 = 0;
  v14 = v1;
  v15 = v2;
  v12 = &v11;
  v13 = &v12;
  __swift_project_boxed_opaque_existential_1(&v12, v1);
  sub_26C14888C();
  __swift_destroy_boxed_opaque_existential_1(&v12);
  v7 = sub_26C120ED4(v0);
  if (v7 > 0xFFFFFF)
  {
    __break(1u);
LABEL_12:
    __break(1u);
  }

  v8 = v7;
  v9 = sub_26C100778(SBYTE2(v7), v6);
  if (__OFADD__(v6, v9))
  {
    goto LABEL_12;
  }

  sub_26C10064C(v8, v6 + v9);
  return v8 + 4;
}

uint64_t sub_26C101254()
{
  v0 = sub_26C148A9C();
  __swift_allocate_value_buffer(v0, qword_28047AC20);
  __swift_project_value_buffer(v0, qword_28047AC20);
  return sub_26C148A8C();
}

uint64_t sub_26C1012D8(uint64_t a1, uint64_t *a2, _OWORD *a3)
{
  v29 = a3;
  v30 = a1;
  v4 = v3;
  v6 = type metadata accessor for HandshakeState.ServerHelloState(0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - v10;
  v12 = type metadata accessor for HandshakeState(0);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v27 - v16;
  v19 = *a2;
  v18 = a2[1];
  v20 = a2[2];
  v28 = v4;
  sub_26C101588(v4, &v27 - v16, type metadata accessor for HandshakeState);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_26C102D04(v17, v11, type metadata accessor for HandshakeState.ServerHelloState);
    sub_26C101588(v11, v9, type metadata accessor for HandshakeState.ServerHelloState);
    v33[0] = v19;
    v33[1] = v18;
    v33[2] = v20;
    v21 = v30;

    sub_26C0BBAA4(v19, v18);
    v22 = v33[4];
    sub_26C1015F0(v9, v21, v33, &v31, v15);
    if (v22)
    {
      result = sub_26C102CA4(v11, type metadata accessor for HandshakeState.ServerHelloState);
      v24 = v32;
      v25 = v29;
      *v29 = v31;
      *(v25 + 16) = v24;
    }

    else
    {
      v26 = v28;
      sub_26C102CA4(v28, type metadata accessor for HandshakeState);
      sub_26C102CA4(v11, type metadata accessor for HandshakeState.ServerHelloState);
      swift_storeEnumTagMultiPayload();
      return sub_26C102D04(v15, v26, type metadata accessor for HandshakeState);
    }
  }

  else
  {
    result = sub_26C102CA4(v17, type metadata accessor for HandshakeState);
    __break(1u);
  }

  return result;
}

uint64_t sub_26C101588(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_26C1015F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X8>)
{
  v157 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AC40, &unk_26C14D320);
  MEMORY[0x28223BE20](v9 - 8);
  v144 = (&v141 - v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AC48, "~;");
  MEMORY[0x28223BE20](v11 - 8);
  v145 = (&v141 - v12);
  v154 = type metadata accessor for SessionTicket(0);
  v13 = MEMORY[0x28223BE20](v154);
  v15 = &v141 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v155 = &v141 - v16;
  v166 = type metadata accessor for HandshakeState.ServerHelloState.SessionData(0);
  v17 = MEMORY[0x28223BE20](v166);
  v164 = &v141 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v153 = (&v141 - v19);
  v20 = a3[1];
  v161 = *a3;
  v162 = v20;
  v151 = a3[2];
  v21 = type metadata accessor for HandshakeState.EncryptedExtensionsState(0);
  v22 = a5 + v21[5];
  v23 = type metadata accessor for HandshakeState.EncryptedExtensionsState.SessionData(0);
  v24 = *(v23 - 8);
  v25 = *(v24 + 56);
  v150 = v23;
  v149 = v25;
  v148 = v24 + 56;
  (v25)(v22, 1, 1);
  v26 = (a5 + v21[6]);
  *v26 = 0;
  v26[1] = 0;
  v156 = v26;
  v27 = a5 + v21[7];
  *v27 = xmmword_26C14A540;
  v169 = v27;
  *(v27 + 16) = 0;
  v163 = v21[8];
  *(a5 + v163) = 0;
  v28 = v21[12];
  v29 = type metadata accessor for PAKEClientState(0);
  v142 = *(v29 - 8);
  v30 = *(v142 + 56);
  v170 = a5;
  v143 = v29;
  v30(a5 + v28, 1, 1);
  if (qword_28047A758 != -1)
  {
LABEL_118:
    swift_once();
  }

  v31 = sub_26C148A9C();
  v167 = __swift_project_value_buffer(v31, qword_28047AC20);
  v32 = sub_26C148A7C();
  v33 = sub_26C148FFC();
  v34 = os_log_type_enabled(v32, v33);
  v172 = v15;
  if (v34)
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&dword_26C0B5000, v32, v33, "validating encrypted extensions", v35, 2u);
    v36 = v35;
    v15 = v172;
    MEMORY[0x26D69C3A0](v36, -1, -1);
  }

  v186 = MEMORY[0x277D84FA0];
  v37 = *(a2 + 16);
  v165 = v21;
  if (v37)
  {
    v146 = v22;
    v147 = v28;
    v168 = 0;
    v28 = 0;
    v158 = 0;
    v171 = v37 - 1;
    v22 = 32;
    v160 = 1;
    v159 = a1;
    while (1)
    {
      v38 = *(a2 + v22 + 48);
      v182 = *(a2 + v22 + 32);
      v183 = v38;
      v184 = *(a2 + v22 + 64);
      v185 = *(a2 + v22 + 80);
      v39 = *(a2 + v22 + 16);
      v180 = *(a2 + v22);
      v181 = v39;
      v40 = 42;
      switch(v185 >> 4)
      {
        case 1:

          v40 = 10;
          break;
        case 2:
          sub_26C0B8B24(v180, BYTE8(v180) & 1);
          v40 = 43;
          break;
        case 3:
          sub_26C0FF14C(v180, *(&v180 + 1), v181 & 1);
          v40 = 16;
          break;
        case 4:
          sub_26C0FF158(v180, *(&v180 + 1), v181);
          v40 = 51;
          break;
        case 5:
          break;
        case 6:

          v40 = 13;
          break;
        case 7:
          sub_26C0B8B24(v180, BYTE8(v180) & 1);
          v40 = 20;
          break;
        case 8:
          sub_26C0BBAA4(v180, *(&v180 + 1));
          v40 = 57;
          break;
        case 9:

          v40 = 45;
          break;
        case 0xA:
          sub_26C10B28C(v180, *(&v180 + 1), v181 & 1);
          v40 = 41;
          break;
        case 0xB:
          v40 = 58;
          break;
        case 0xC:
          sub_26C10B1D0(v180, *(&v180 + 1), v181, *(&v181 + 1), v182, *(&v182 + 1), v183, *(&v183 + 1), v184, *(&v184 + 1), v185 & 1);
          v40 = 35387;
          break;
        case 0xD:
          v41 = a2;
          v42 = v180;
          sub_26C0BBAA4(*(&v180 + 1), v181);
          v40 = v42;
          a2 = v41;
          break;
        default:
          sub_26C0BB37C(v180, *(&v180 + 1));
          v40 = 0;
          break;
      }

      if ((sub_26C11D960(&v175, v40) & 1) == 0)
      {

        sub_26C0BB9B0(v161, v162);

        sub_26C0BE40C(&v180, &v175);
        v59 = sub_26C148A7C();
        v60 = sub_26C14900C();
        sub_26C0BE468(&v180);
        if (os_log_type_enabled(v59, v60))
        {
          v61 = swift_slowAlloc();
          v62 = swift_slowAlloc();
          *&v175 = v62;
          *v61 = 136315138;
          v63 = v62;
          switch(v185 >> 4)
          {
            case 1:
              v136 = 10;
              goto LABEL_110;
            case 2:
              v136 = 43;
              goto LABEL_110;
            case 3:
              v136 = 16;
              goto LABEL_110;
            case 4:
              v136 = 51;
              goto LABEL_110;
            case 5:
              v136 = 42;
              goto LABEL_110;
            case 6:
              v136 = 13;
              goto LABEL_110;
            case 7:
              v136 = 20;
              goto LABEL_110;
            case 8:
              v136 = 57;
              goto LABEL_110;
            case 9:
              v136 = 45;
              goto LABEL_110;
            case 0xA:
              v136 = 41;
              goto LABEL_110;
            case 0xB:
              v136 = 58;
              goto LABEL_110;
            case 0xC:
              v136 = -30149;
LABEL_110:
              LOWORD(v173) = v136;
              break;
            case 0xD:
              LOWORD(v173) = v180;
              break;
            default:
              LOWORD(v173) = 0;
              break;
          }

          v137 = ExtensionType.description.getter();
          v139 = sub_26C0E5DE8(v137, v138, &v175);

          *(v61 + 4) = v139;
          _os_log_impl(&dword_26C0B5000, v59, v60, "server offered duplicate extension of type %s on encrypted extensions", v61, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v63);
          MEMORY[0x26D69C3A0](v63, -1, -1);
          MEMORY[0x26D69C3A0](v61, -1, -1);
        }

        v88 = xmmword_26C14A8F0;
        goto LABEL_113;
      }

      v187 = v28 + 1;
      v43 = a2;
      v44 = v180;
      v45 = BYTE8(v180);
      v46 = *(&v180 + 9) | ((*(&v180 + 13) | (HIBYTE(v180) << 16)) << 32);
      v47 = v181;
      v48 = v185 >> 4;
      if (v48 > 6)
      {
        break;
      }

      if (v48 == 3)
      {
        if (v181)
        {
          if (!*(a1 + 48))
          {

            sub_26C0BB9B0(v161, v162);

            v84 = sub_26C148A7C();
            v85 = sub_26C14900C();
            if (os_log_type_enabled(v84, v85))
            {
              v86 = swift_slowAlloc();
              *v86 = 0;
              v87 = "server unexpectedly offered alpn";
LABEL_70:
              _os_log_impl(&dword_26C0B5000, v84, v85, v87, v86, 2u);
              MEMORY[0x26D69C3A0](v86, -1, -1);
            }

LABEL_71:

            v88 = xmmword_26C14A8E0;
LABEL_113:
            v140 = v157;
            *v157 = v88;
            *(v140 + 16) = 2;
            v175 = v88;
            LOBYTE(v176) = 2;
            sub_26C0BBAF8();
            swift_willThrowTypedImpl();
            sub_26C0BE468(&v180);
LABEL_114:
            v131 = a1;
            goto LABEL_115;
          }

          v55 = v156;
          *v156 = v44;
          v55[1] = v45 | (v46 << 8);
          v168 = v45 | (v46 << 8);
          goto LABEL_41;
        }

LABEL_40:
        sub_26C0BE468(&v180);
        goto LABEL_41;
      }

      if (v48 != 5)
      {
        goto LABEL_40;
      }

      v49 = type metadata accessor for HandshakeState.ServerHelloState(0);
      if (*(a1 + v49[9]) & 1) == 0 && *(a1 + v49[10]) != 1 || (v50 = a1 + v49[11], (*(v50 + 2)) || *v50)
      {

        sub_26C0BB9B0(v161, v162);
        v84 = sub_26C148A7C();
        v85 = sub_26C14900C();
        if (os_log_type_enabled(v84, v85))
        {
          v86 = swift_slowAlloc();
          *v86 = 0;
          v87 = "server unexpectedly offered early data";
          goto LABEL_70;
        }

        goto LABEL_71;
      }

      v51 = v164;
      sub_26C101588(a1 + v49[5], v164, type metadata accessor for HandshakeState.ServerHelloState.SessionData);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v52 = v155;
        sub_26C102D04(v51, v155, type metadata accessor for SessionTicket);
        a2 = v43;
        if (!*(v52 + *(v154 + 40)))
        {

          sub_26C0BB9B0(v161, v162);

          v132 = sub_26C148A7C();
          v133 = sub_26C14900C();
          if (os_log_type_enabled(v132, v133))
          {
            v134 = swift_slowAlloc();
            *v134 = 0;
            _os_log_impl(&dword_26C0B5000, v132, v133, "server unexpectedly offered early data for session with max early data size 0", v134, 2u);
            MEMORY[0x26D69C3A0](v134, -1, -1);
          }

          v135 = v157;
          *v157 = xmmword_26C14A8E0;
          *(v135 + 16) = 2;
          v175 = xmmword_26C14A8E0;
          LOBYTE(v176) = 2;
          sub_26C0BBAF8();
          swift_willThrowTypedImpl();
          sub_26C0BE468(&v180);
          sub_26C102CA4(v52, type metadata accessor for SessionTicket);
          goto LABEL_114;
        }

        sub_26C102CA4(v52, type metadata accessor for SessionTicket);
      }

      else
      {
        sub_26C102CA4(v51, type metadata accessor for HandshakeState.ServerHelloState.SessionData);
        a2 = v43;
      }

      v56 = sub_26C148A7C();
      v57 = sub_26C148FEC();
      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        *v58 = 0;
        _os_log_impl(&dword_26C0B5000, v56, v57, "server accepted early data", v58, 2u);
        MEMORY[0x26D69C3A0](v58, -1, -1);

        sub_26C0BE468(&v180);
      }

      else
      {
      }

      v15 = v172;
      *(v170 + v163) = 1;
LABEL_42:
      if (v171 == v28)
      {

        v28 = v147;
        v22 = v146;
        goto LABEL_55;
      }

      v22 += 88;
      v28 = v187;
      if (v187 >= *(a2 + 16))
      {
        __break(1u);
        goto LABEL_118;
      }
    }

    if (v48 != 7)
    {
      if (v48 == 8)
      {
        if (*(a1 + 32) >> 60 == 15)
        {
          sub_26C0BBAA4(v180, *(&v180 + 1));

          sub_26C0BB9B0(v161, v162);

          v127 = sub_26C148A7C();
          v128 = sub_26C14900C();
          if (os_log_type_enabled(v127, v128))
          {
            v129 = swift_slowAlloc();
            *v129 = 0;
            _os_log_impl(&dword_26C0B5000, v127, v128, "server unexpectedly offered transport parameters", v129, 2u);
            MEMORY[0x26D69C3A0](v129, -1, -1);
          }

          v130 = v157;
          *v157 = xmmword_26C14A8E0;
          *(v130 + 16) = 2;
          v175 = xmmword_26C14A8E0;
          LOBYTE(v176) = 2;
          sub_26C0BBAF8();
          swift_willThrowTypedImpl();
          sub_26C0BE468(&v180);
          sub_26C0BE468(&v180);
          v131 = v159;
LABEL_115:
          sub_26C102CA4(v131, type metadata accessor for HandshakeState.ServerHelloState);
          v28 = v147;
          v22 = v146;
LABEL_116:
          sub_26C0CF5C4(v22, &qword_28047AC48, "~;");

          sub_26C0BB344(*v169, *(v169 + 8));
          return sub_26C0CF5C4(v170 + v28, &qword_28047AC40, &unk_26C14D320);
        }

        v53 = *(&v181 + 1) | ((*(&v181 + 5) | (BYTE7(v181) << 16)) << 32);
        v54 = v169;
        sub_26C0BB344(*v169, *(v169 + 8));
        *v54 = v44;
        *(v54 + 8) = v45;
        *(v54 + 15) = BYTE6(v46);
        *(v54 + 13) = WORD2(v46);
        *(v54 + 9) = v46;
        *(v54 + 16) = v47;
        *(v54 + 23) = BYTE6(v53);
        *(v54 + 21) = WORD2(v53);
        *(v54 + 17) = v53;
        v21 = v165;
        a1 = v159;
        goto LABEL_41;
      }

      goto LABEL_40;
    }

    if ((BYTE8(v180) & 1) == 0)
    {
      goto LABEL_40;
    }

    sub_26C0BE468(&v180);
    v160 = 0;
    v158 = v44;
LABEL_41:
    v15 = v172;
    a2 = v43;
    goto LABEL_42;
  }

  v158 = 0;
  v168 = 0;
  v160 = 1;
LABEL_55:

  v64 = type metadata accessor for HandshakeState.ServerHelloState(0);
  v65 = v153;
  sub_26C101588(a1 + v64[5], v153, type metadata accessor for HandshakeState.ServerHelloState.SessionData);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v73 = a1;
    v74 = v65;
    v75 = *v65;
    v76 = v74[1];
    v77 = *(v74 + 1);
    if (v160)
    {
      v78 = 0;
    }

    else
    {
      v78 = v158;
    }

    v79 = *(v77 + 16);
    v80 = (v77 + 32);
    while (v79)
    {
      v81 = *v80++;
      --v79;
      if (v81 == v78)
      {
        sub_26C0CF5C4(v22, &qword_28047AC48, "~;");

        *v22 = v75;
        *(v22 + 2) = v76;
        *(v22 + 4) = v78;
        *(v22 + 8) = 0;
        *(v22 + 16) = 0;
        v82 = v150;
        swift_storeEnumTagMultiPayload();
        v149(v22, 0, 1, v82);
        a1 = v73;
        goto LABEL_80;
      }
    }

    v89 = v22;
    sub_26C0BB9B0(v161, v162);

    v90 = sub_26C148A7C();
    v91 = sub_26C14900C();
    if (os_log_type_enabled(v90, v91))
    {
      v92 = swift_slowAlloc();
      v93 = swift_slowAlloc();
      v147 = v28;
      v94 = v93;
      *&v180 = v93;
      *v92 = 136315138;
      v95 = sub_26C0DA5DC(v78);
      v97 = sub_26C0E5DE8(v95, v96, &v180);

      *(v92 + 4) = v97;
      _os_log_impl(&dword_26C0B5000, v90, v91, "server chose non-offered certificate type %s", v92, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v94);
      v98 = v94;
      v28 = v147;
      MEMORY[0x26D69C3A0](v98, -1, -1);
      MEMORY[0x26D69C3A0](v92, -1, -1);
    }

    v22 = v89;
    v99 = v157;
    *v157 = xmmword_26C14A8E0;
    *(v99 + 16) = 2;
    v180 = xmmword_26C14A8E0;
    LOBYTE(v181) = 2;
    sub_26C0BBAF8();
    swift_willThrowTypedImpl();
    sub_26C102CA4(v73, type metadata accessor for HandshakeState.ServerHelloState);
    goto LABEL_116;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v67 = *v65;
    v68 = a1;
    v69 = a1 + v64[12];
    v70 = v144;
    sub_26C0CF314(v69, v144, &qword_28047AC40, &unk_26C14D320);
    v71 = (*(v142 + 48))(v70, 1, v143);
    if (v71 == 1)
    {
      sub_26C0CF5C4(v70, &qword_28047AC40, &unk_26C14D320);
      v72 = 0;
    }

    else
    {
      v100 = v70;
      v72 = *v70;
      sub_26C102CA4(v100, type metadata accessor for PAKEClientState);
    }

    v101 = v71 == 1;
    v102 = v145;
    *v145 = v67;
    v103 = v101;
    *(v102 + 2) = v72;
    *(v102 + 4) = v103;
    v104 = v150;
    swift_storeEnumTagMultiPayload();
    v149(v102, 0, 1, v104);
    sub_26C0FF20C(v102, v22, &qword_28047AC48, "~;");
    a1 = v68;
LABEL_80:
    v21 = v165;
  }

  else
  {
    sub_26C102D04(v65, v15, type metadata accessor for SessionTicket);
    if ((v160 & 1) == 0)
    {
      sub_26C0BB9B0(v161, v162);
      v122 = sub_26C148A7C();
      v123 = sub_26C14900C();
      if (os_log_type_enabled(v122, v123))
      {
        v124 = swift_slowAlloc();
        *v124 = 0;
        _os_log_impl(&dword_26C0B5000, v122, v123, "server provided server_certificate_type extension while resuming", v124, 2u);
        v125 = v124;
        v15 = v172;
        MEMORY[0x26D69C3A0](v125, -1, -1);
      }

      v126 = v157;
      *v157 = xmmword_26C14A8E0;
      *(v126 + 16) = 2;
      v180 = xmmword_26C14A8E0;
      LOBYTE(v181) = 2;
      sub_26C0BBAF8();
      swift_willThrowTypedImpl();
      sub_26C102CA4(v15, type metadata accessor for SessionTicket);
      sub_26C102CA4(a1, type metadata accessor for HandshakeState.ServerHelloState);
      goto LABEL_116;
    }

    sub_26C0CF5C4(v22, &qword_28047AC48, "~;");
    sub_26C102D04(v15, v22, type metadata accessor for SessionTicket);
    v83 = v150;
    swift_storeEnumTagMultiPayload();
    v149(v22, 0, 1, v83);
  }

  v105 = v170;
  sub_26C10B0B0(a1 + v64[12], v170 + v28);
  LOBYTE(v184) = *(a1 + 64);
  v106 = v184;
  v107 = *(a1 + 48);
  v182 = *(a1 + 32);
  v183 = v107;
  v108 = *(a1 + 16);
  v180 = *a1;
  v109 = v180;
  v181 = v108;
  *(v105 + 32) = v182;
  *(v105 + 48) = v107;
  *(v105 + 64) = v106;
  *v105 = v109;
  *(v105 + 16) = v108;
  sub_26C0CF314(a1 + v64[6], v105 + v21[9], &qword_28047AC38, &unk_26C14D110);
  *(v105 + v21[10]) = *(a1 + v64[9]);
  *(v105 + v21[11]) = *(a1 + v64[10]);
  *(v105 + v21[13]) = *(a1 + v64[13]);
  sub_26C10B120(&v180, &v175);
  v110 = v161;
  v111 = v162;
  v112 = v152;
  sub_26C108ABC(v161, v162, v151, &v173);
  if (v112)
  {
    sub_26C0BB9B0(v110, v111);
    sub_26C102CA4(a1, type metadata accessor for HandshakeState.ServerHelloState);
    v113 = v174;
    v114 = v157;
    *v157 = v173;
    *(v114 + 16) = v113;
    v115 = v170;
    v116 = *(v170 + 48);
    v177 = *(v170 + 32);
    v178 = v116;
    v179 = *(v170 + 64);
    v117 = *v170;
    v176 = *(v170 + 16);
    v175 = v117;
    sub_26C10B17C(&v175);
    sub_26C0CF5C4(v22, &qword_28047AC48, "~;");

    sub_26C0BB344(*v169, *(v169 + 8));
    sub_26C0CF5C4(v115 + v21[9], &qword_28047AC38, &unk_26C14D110);
    return sub_26C0CF5C4(v170 + v28, &qword_28047AC40, &unk_26C14D320);
  }

  sub_26C0BB9B0(v110, v111);
  v118 = sub_26C148A7C();
  v119 = sub_26C148FFC();
  if (os_log_type_enabled(v118, v119))
  {
    v120 = swift_slowAlloc();
    *v120 = 0;
    _os_log_impl(&dword_26C0B5000, v118, v119, "encrypted extensions valid", v120, 2u);
    MEMORY[0x26D69C3A0](v120, -1, -1);
  }

  return sub_26C102CA4(a1, type metadata accessor for HandshakeState.ServerHelloState);
}

uint64_t sub_26C102CA4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_26C102D04(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_26C102D6C(uint64_t *a1, uint64_t *a2, _OWORD *a3)
{
  v33 = a3;
  v4 = v3;
  v7 = type metadata accessor for HandshakeState.EncryptedExtensionsState(0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v35 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v31 - v10;
  v12 = type metadata accessor for HandshakeState(0);
  v13 = MEMORY[0x28223BE20](v12);
  v36 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v31 - v15;
  v17 = *a1;
  v18 = a1[1];
  v19 = a1[2];
  v20 = a1[3];
  v34 = v19;
  v21 = *a2;
  v22 = a2[1];
  v23 = a2[2];
  v32 = v4;
  sub_26C101588(v4, &v31 - v15, type metadata accessor for HandshakeState);
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    sub_26C102D04(v16, v11, type metadata accessor for HandshakeState.EncryptedExtensionsState);
    v24 = v35;
    sub_26C101588(v11, v35, type metadata accessor for HandshakeState.EncryptedExtensionsState);
    v40[0] = v17;
    v40[1] = v18;
    v40[2] = v34;
    v40[3] = v20;
    v39[0] = v21;
    v39[1] = v22;
    v39[2] = v23;
    sub_26C0BBAA4(v17, v18);

    sub_26C0BBAA4(v21, v22);
    v25 = v36;
    v26 = v40[5];
    sub_26C103054(v24, v40, v39, &v37, v36);
    if (v26)
    {
      result = sub_26C102CA4(v11, type metadata accessor for HandshakeState.EncryptedExtensionsState);
      v28 = v38;
      v29 = v33;
      *v33 = v37;
      *(v29 + 16) = v28;
    }

    else
    {
      v30 = v32;
      sub_26C102CA4(v32, type metadata accessor for HandshakeState);
      sub_26C102CA4(v11, type metadata accessor for HandshakeState.EncryptedExtensionsState);
      swift_storeEnumTagMultiPayload();
      return sub_26C102D04(v25, v30, type metadata accessor for HandshakeState);
    }
  }

  else
  {
    result = sub_26C102CA4(v16, type metadata accessor for HandshakeState);
    __break(1u);
  }

  return result;
}

void sub_26C103054(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X8>)
{
  v95 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AC40, &unk_26C14D320);
  MEMORY[0x28223BE20](v9 - 8);
  v90 = v82 - v10;
  v11 = type metadata accessor for PeerCertificateBundle(0);
  MEMORY[0x28223BE20](v11 - 8);
  v91 = v82 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AC48, "~;");
  MEMORY[0x28223BE20](v13 - 8);
  v94 = v82 - v14;
  v16 = *a2;
  v15 = a2[1];
  v17 = a2[2];
  v18 = a2[3];
  v109 = v17;
  v19 = a3[1];
  v96 = *a3;
  v89 = a3[2];
  *(a5 + 88) = xmmword_26C14A540;
  *(a5 + 104) = 0;
  if (qword_28047A758 != -1)
  {
    swift_once();
  }

  v20 = sub_26C148A9C();
  __swift_project_value_buffer(v20, qword_28047AC20);
  v21 = sub_26C148A7C();
  v22 = sub_26C148FFC();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v93 = v19;
    v24 = v18;
    v25 = a1;
    v26 = v23;
    *v23 = 0;
    _os_log_impl(&dword_26C0B5000, v21, v22, "validating certificate", v23, 2u);
    v27 = v26;
    a1 = v25;
    v18 = v24;
    v19 = v93;
    MEMORY[0x26D69C3A0](v27, -1, -1);
  }

  v28 = v15 >> 62;
  if ((v15 >> 62) > 1)
  {
    if (v28 == 2)
    {
      v29 = *(v16 + 24);
    }

    else
    {
      v29 = 0;
    }
  }

  else
  {
    v29 = BYTE6(v15);
    if (v28)
    {
      v29 = v16 >> 32;
    }
  }

  if (__OFSUB__(v29, v109))
  {
    __break(1u);
LABEL_44:
    __break(1u);
    return;
  }

  if (v29 != v109)
  {
    sub_26C0BB9B0(v96, v19);
    sub_26C0BBAA4(v16, v15);

    v32 = sub_26C148A7C();
    v33 = sub_26C14900C();
    if (!os_log_type_enabled(v32, v33))
    {
      sub_26C0BB9B0(v16, v15);

      sub_26C0BB9B0(v16, v15);

LABEL_35:
      v42 = xmmword_26C14A8F0;
LABEL_36:
      v67 = v95;
      *v95 = v42;
      *(v67 + 16) = 2;
      v104 = v42;
      LOBYTE(v105) = 2;
      sub_26C0BBAF8();
      swift_willThrowTypedImpl();
      sub_26C102CA4(a1, type metadata accessor for HandshakeState.EncryptedExtensionsState);
      v65 = *(a5 + 88);
      v66 = *(a5 + 96);
      goto LABEL_37;
    }

    v94 = a1;
    v35 = swift_slowAlloc();
    *v35 = 134217984;
    if (v28 > 1)
    {
      if (v28 == 2)
      {
        v36 = *(v16 + 24);
        sub_26C0BB9B0(v16, v15);
      }

      else
      {
        sub_26C0BB9B0(v16, v15);

        v36 = 0;
      }
    }

    else
    {
      sub_26C0BB9B0(v16, v15);

      if (v28)
      {
        v36 = v16 >> 32;
      }

      else
      {
        v36 = BYTE6(v15);
      }
    }

    if (!__OFSUB__(v36, v109))
    {
      *(v35 + 4) = v36 - v109;
      sub_26C0BB9B0(v16, v15);

      _os_log_impl(&dword_26C0B5000, v32, v33, "received unexpected context: %ld", v35, 0xCu);
      MEMORY[0x26D69C3A0](v35, -1, -1);

      a1 = v94;
      goto LABEL_35;
    }

    goto LABEL_44;
  }

  v88 = type metadata accessor for HandshakeState.EncryptedExtensionsState(0);
  v30 = v94;
  sub_26C0CF314(a1 + *(v88 + 20), v94, &qword_28047AC48, "~;");
  v31 = type metadata accessor for HandshakeState.EncryptedExtensionsState.SessionData(0);
  if ((*(*(v31 - 8) + 48))(v30, 1, v31) == 1)
  {
    sub_26C0BB9B0(v96, v19);
    sub_26C0BB9B0(v16, v15);

    sub_26C0CF5C4(v30, &qword_28047AC48, "~;");
LABEL_23:
    v37 = sub_26C148A7C();
    v38 = sub_26C14900C();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = a1;
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_26C0B5000, v37, v38, "received server certificate message while resuming session", v40, 2u);
      v41 = v40;
      a1 = v39;
      MEMORY[0x26D69C3A0](v41, -1, -1);
    }

    v42 = xmmword_26C14A560;
    goto LABEL_36;
  }

  if (swift_getEnumCaseMultiPayload())
  {
    sub_26C0BB9B0(v96, v19);
    sub_26C0BB9B0(v16, v15);

    sub_26C102CA4(v30, type metadata accessor for HandshakeState.EncryptedExtensionsState.SessionData);
    goto LABEL_23;
  }

  v93 = v19;
  v43 = *v30;
  v86 = *(v30 + 16);
  v45 = *(a1 + 48);
  v106 = *(a1 + 32);
  v44 = v106;
  v107 = v45;
  v108 = *(a1 + 64);
  v46 = *(a1 + 16);
  v104 = *a1;
  v47 = v104;
  v105 = v46;
  *(a5 + 64) = v108;
  *(a5 + 32) = v44;
  *(a5 + 48) = v45;
  *a5 = v47;
  *(a5 + 16) = v46;
  v85 = *(v30 + 4);
  *(a5 + 66) = v43;
  v48 = v88;
  v49 = (a1 + *(v88 + 24));
  v50 = v49[1];
  *(a5 + 72) = *v49;
  *(a5 + 80) = v50;
  v51 = (a1 + *(v48 + 28));
  v52 = v51[1];
  v87 = *v51;
  v53 = v51[2];
  v94 = a1;
  v54 = *(a5 + 88);
  v84 = *(a5 + 96);
  v83 = *(a5 + 104);
  sub_26C10B120(&v104, &v99);
  v82[1] = v50;
  v55 = v87;

  sub_26C0BB37C(v55, v52);
  v56 = v54;
  v57 = v94;
  sub_26C0BB344(v56, v84);
  *(a5 + 88) = v55;
  *(a5 + 96) = v52;
  v58 = v88;
  v84 = v52;
  v83 = v53;
  *(a5 + 104) = v53;
  *(a5 + 112) = *(v57 + v58[8]);
  *&v99 = v16;
  *(&v99 + 1) = v15;
  *&v100 = v109;
  *(&v100 + 1) = v18;
  v59 = v91;
  v60 = v92;
  sub_26C0D0028(v85, &v99, &v97, v91);
  if (v60)
  {
    sub_26C0BB9B0(v96, v93);

    sub_26C102CA4(v57, type metadata accessor for HandshakeState.EncryptedExtensionsState);
    v61 = v98;
    v62 = v95;
    *v95 = v97;
    *(v62 + 16) = v61;
    v63 = *(a5 + 48);
    v101 = *(a5 + 32);
    v102 = v63;
    v103 = *(a5 + 64);
    v64 = *(a5 + 16);
    v99 = *a5;
    v100 = v64;
    sub_26C10B17C(&v99);

    v65 = v87;
    v66 = v84;
LABEL_37:
    sub_26C0BB344(v65, v66);
    return;
  }

  v109 = 0;

  v68 = type metadata accessor for HandshakeState.ServerCertificateState(0);
  sub_26C102D04(v59, a5 + v68[10], type metadata accessor for PeerCertificateBundle);
  sub_26C0CF314(v57 + v58[9], a5 + v68[11], &qword_28047AC38, &unk_26C14D110);
  *(a5 + v68[12]) = *(v57 + v58[13]);
  v69 = v90;
  sub_26C0CF314(v57 + v58[12], v90, &qword_28047AC40, &unk_26C14D320);
  v70 = type metadata accessor for PAKEClientState(0);
  v71 = (*(*(v70 - 8) + 48))(v69, 1, v70) != 1;
  sub_26C0CF5C4(v69, &qword_28047AC40, &unk_26C14D320);
  *(a5 + v68[13]) = v71;
  v72 = v96;
  v73 = v93;
  v74 = v109;
  sub_26C108ABC(v96, v93, v89, &v99);
  if (v74)
  {
    sub_26C0BB9B0(v72, v73);
    sub_26C102CA4(v57, type metadata accessor for HandshakeState.EncryptedExtensionsState);
    v75 = v100;
    v76 = v95;
    *v95 = v99;
    *(v76 + 16) = v75;
    v77 = *(a5 + 48);
    v101 = *(a5 + 32);
    v102 = v77;
    v103 = *(a5 + 64);
    v78 = *(a5 + 16);
    v99 = *a5;
    v100 = v78;
    sub_26C10B17C(&v99);

    sub_26C0BB344(*(a5 + 88), *(a5 + 96));
    sub_26C102CA4(a5 + v68[10], type metadata accessor for PeerCertificateBundle);
    sub_26C0CF5C4(a5 + v68[11], &qword_28047AC38, &unk_26C14D110);
  }

  else
  {
    sub_26C0BB9B0(v72, v73);
    v79 = sub_26C148A7C();
    v80 = sub_26C148FFC();
    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      *v81 = 0;
      _os_log_impl(&dword_26C0B5000, v79, v80, "certificate valid", v81, 2u);
      MEMORY[0x26D69C3A0](v81, -1, -1);
    }

    sub_26C102CA4(v94, type metadata accessor for HandshakeState.EncryptedExtensionsState);
  }
}

uint64_t sub_26C103B24(void *a1, uint64_t *a2, uint64_t *a3)
{
  v65 = a3;
  v4 = v3;
  v7 = type metadata accessor for HandshakeState.ServerCertificateState(0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v57 - v11;
  v13 = type metadata accessor for HandshakeState(0);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v57 - v17;
  LODWORD(v68) = *a1;
  v19 = a1[2];
  v70 = a1[1];
  v71 = v19;
  v67 = a1[3];
  v20 = a2[1];
  v80 = *a2;
  v62 = a2[2];
  v61 = v4;
  sub_26C101588(v4, &v57 - v17, type metadata accessor for HandshakeState);
  v60 = v13;
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    sub_26C102D04(v18, v12, type metadata accessor for HandshakeState.ServerCertificateState);
    v66 = v12;
    sub_26C101588(v12, v10, type metadata accessor for HandshakeState.ServerCertificateState);
    v63 = type metadata accessor for HandshakeState.ServerCertificateVerifyState(0);
    v21 = *(v63 + 36);
    v64 = v16;
    v22 = &v16[v21];
    *v22 = xmmword_26C14A540;
    v22[2] = 0;
    LOWORD(v75) = v68;
    *(&v75 + 1) = v70;
    *&v76 = v71;
    *(&v76 + 1) = v67;
    v23 = *(v10 + 2);
    v24 = *(v7 + 40);
    v25 = *(v7 + 44);
    sub_26C0BBAA4(v70, v71);
    sub_26C0BBAA4(v80, v20);
    v26 = v69;
    v27 = sub_26C0D07CC(&v75, v23, &v10[v25], &v73);
    v28 = v10;
    if (v26)
    {
      sub_26C0BB9B0(v80, v20);
      sub_26C102CA4(v10, type metadata accessor for HandshakeState.ServerCertificateState);
      sub_26C0BB9B0(v70, v71);
      v29 = *(&v73 + 1);
      v30 = v73;
      v31 = v74;
    }

    else
    {
      v32 = v27;
      sub_26C0BB9B0(v70, v71);
      if (v32)
      {
        v70 = v7;
        v71 = v20;
        v33 = v63;
        v34 = v64;
        v35 = &v64[*(v63 + 32)];
        v36 = *(v28 + 48);
        v77 = *(v28 + 32);
        v78 = v36;
        v79 = *(v28 + 64);
        v37 = v79;
        v38 = *(v28 + 16);
        v75 = *v28;
        v39 = v75;
        v76 = v38;
        *(v64 + 2) = v77;
        *(v34 + 48) = v36;
        *(v34 + 64) = v37;
        *v34 = v39;
        *(v34 + 16) = v38;
        *(v34 + 66) = *(v28 + 66);
        *(v34 + 68) = *(v28 + 68);
        v40 = v28 + v24;
        v41 = v34;
        v58 = v33[7];
        sub_26C101588(v40, v34 + v58, type metadata accessor for PeerCertificateBundle);
        v42 = *(v28 + 80);
        *v35 = *(v28 + 72);
        *(v35 + 1) = v42;
        v43 = *(v28 + 88);
        v59 = *(v28 + 96);
        v44 = *(v28 + 104);
        v45 = v22[1];
        v69 = *v22;
        v68 = v45;
        v67 = v22[2];
        sub_26C10B120(&v75, &v73);
        v57 = v42;

        v46 = v59;
        sub_26C0BB37C(v43, v59);
        sub_26C0BB344(v69, v68);
        *v22 = v43;
        v22[1] = v46;
        v22[2] = v44;
        *(v41 + v33[10]) = *(v28 + 112);
        sub_26C0CF314(v28 + v25, v41 + v33[11], &qword_28047AC38, &unk_26C14D110);
        v47 = v70;
        *(v41 + v33[12]) = *(v28 + *(v70 + 48));
        v48 = v71;
        *(v41 + v33[13]) = *(v28 + *(v47 + 52));
        v49 = v80;
        sub_26C108ABC(v80, v48, v62, &v72);
        sub_26C0BB9B0(v49, v48);
        sub_26C102CA4(v28, type metadata accessor for HandshakeState.ServerCertificateState);
        v55 = v61;
        sub_26C102CA4(v61, type metadata accessor for HandshakeState);
        sub_26C102CA4(v66, type metadata accessor for HandshakeState.ServerCertificateState);
        swift_storeEnumTagMultiPayload();
        return sub_26C102D04(v41, v55, type metadata accessor for HandshakeState);
      }

      sub_26C0BB9B0(v80, v20);
      if (qword_28047A758 != -1)
      {
        swift_once();
      }

      v50 = sub_26C148A9C();
      __swift_project_value_buffer(v50, qword_28047AC20);
      v51 = sub_26C148A7C();
      v52 = sub_26C14900C();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        *v53 = 0;
        _os_log_impl(&dword_26C0B5000, v51, v52, "verification failed", v53, 2u);
        MEMORY[0x26D69C3A0](v53, -1, -1);
      }

      v75 = xmmword_26C14D0E0;
      v31 = 2;
      LOBYTE(v76) = 2;
      sub_26C0BBAF8();
      swift_willThrowTypedImpl();
      sub_26C102CA4(v28, type metadata accessor for HandshakeState.ServerCertificateState);
      v29 = 0;
      v30 = 12;
    }

    sub_26C0BB344(*v22, v22[1]);
    result = sub_26C102CA4(v66, type metadata accessor for HandshakeState.ServerCertificateState);
    v54 = v65;
    *v65 = v30;
    v54[1] = v29;
    *(v54 + 16) = v31;
  }

  else
  {
    result = sub_26C102CA4(v18, type metadata accessor for HandshakeState);
    __break(1u);
  }

  return result;
}

uint64_t sub_26C1042A8@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, _BYTE *a3@<X3>, void *a4@<X8>)
{
  v202 = a3;
  v189 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AC40, &unk_26C14D320);
  MEMORY[0x28223BE20](v6 - 8);
  v183 = &v170 - v7;
  v195 = type metadata accessor for HandshakeState.EncryptedExtensionsState(0);
  v8 = MEMORY[0x28223BE20](v195);
  v184 = &v170 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v170 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A930, qword_26C14C120);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v178 = &v170 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v182 = &v170 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  *&v186 = &v170 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v185 = (&v170 - v20);
  v21 = MEMORY[0x28223BE20](v19);
  v173 = (&v170 - v22);
  MEMORY[0x28223BE20](v21);
  v172 = (&v170 - v23);
  v194 = sub_26C148BDC();
  v198 = *(v194 - 8);
  v24 = MEMORY[0x28223BE20](v194);
  v180 = &v170 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v179 = &v170 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v192 = &v170 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v193 = &v170 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v176 = &v170 - v33;
  MEMORY[0x28223BE20](v32);
  v175 = &v170 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AC58, &qword_26C14D288);
  MEMORY[0x28223BE20](v35 - 8);
  v174 = &v170 - v36;
  v187 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AB18, &unk_26C14C110);
  v191 = *(v187 - 8);
  v37 = MEMORY[0x28223BE20](v187);
  v177 = &v170 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v40 = &v170 - v39;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AC38, &unk_26C14D110);
  MEMORY[0x28223BE20](v41 - 8);
  v201 = &v170 - v42;
  ready = type metadata accessor for HandshakeState.ReadyState(0);
  v43 = MEMORY[0x28223BE20](ready);
  v181 = (&v170 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0));
  v45 = MEMORY[0x28223BE20](v43);
  v47 = &v170 - v46;
  MEMORY[0x28223BE20](v45);
  v171 = &v170 - v48;
  v196 = type metadata accessor for HandshakeState.ServerCertificateVerifyState(0);
  MEMORY[0x28223BE20](v196);
  v197 = &v170 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for HandshakeState(0);
  MEMORY[0x28223BE20](v50);
  v52 = &v170 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = *a1;
  v54 = a1[1];
  v55 = a1[2];
  v56 = a2[1];
  *&v199 = *a2;
  *(&v199 + 1) = v56;
  v200 = a2[2];
  sub_26C101588(v218, v52, type metadata accessor for HandshakeState);
  v188 = v50;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v58 = type metadata accessor for HandshakeState;
  if (EnumCaseMultiPayload == 3)
  {
    sub_26C101588(v52, v11, type metadata accessor for HandshakeState.EncryptedExtensionsState);
    v68 = v195;
    v69 = v198;
    if ((v11[*(v195 + 40)] & 1) != 0 || v11[*(v195 + 44)] == 1)
    {
      v204 = v53;
      v205 = v54;
      v206 = v55;
      v214 = v199;
      v215 = v200;
      v70 = v203;
      sub_26C106264(v47, &v207, v11, &v204, &v214, v67, &v212);
      if (v70)
      {
        v71 = v11;
LABEL_19:
        sub_26C102CA4(v71, type metadata accessor for HandshakeState.EncryptedExtensionsState);
        v97 = v213;
        v98 = v202;
        *v202 = v212;
        v98[16] = v97;
        return sub_26C102CA4(v52, type metadata accessor for HandshakeState.EncryptedExtensionsState);
      }

      v203 = 0;
      v201 = *(&v207 + 1);
      v202 = v207;
      v200 = v208;
      v50 = v185;
      sub_26C105C04(v185);
      v74 = *(v69 + 48);
      v75 = v194;
      if (v74(v50, 1, v194) == 1)
      {
        *&v186 = v50;
      }

      else
      {
        v76 = *(v69 + 32);
        v69 += 32;
        v77 = v50;
        v50 = v76;
        (v76)(v193, v77, v75);
        v78 = v186;
        sub_26C105F34(v186);
        v75 = v194;
        if (v74(v78, 1, v194) != 1)
        {
          v79 = v218;
          sub_26C102CA4(v218, type metadata accessor for HandshakeState);
          *(&v199 + 1) = type metadata accessor for HandshakeState.EncryptedExtensionsState;
          sub_26C102CA4(v11, type metadata accessor for HandshakeState.EncryptedExtensionsState);
          (v50)(v192, v78, v75);
          v80 = v50;
          *&v199 = v50;
          sub_26C102D04(v47, v79, type metadata accessor for HandshakeState.ReadyState);
          swift_storeEnumTagMultiPayload();
          v81 = type metadata accessor for PartialHandshakeResult(0);
          v82 = v81[5];
          v83 = v75;
          v84 = v189;
          v80(v189 + v82, v193, v83);
          v85 = type metadata accessor for EncryptionLevel(0);
          swift_storeEnumTagMultiPayload();
          v86 = *(*(v85 - 8) + 56);
          v86(&v84[v82], 0, 1, v85);
          v87 = v81[6];
          (v199)(&v84[v87], v192, v83);
          swift_storeEnumTagMultiPayload();
          v86(&v84[v87], 0, 1, v85);
          v88 = v201;
          *v84 = v202;
          *(v84 + 1) = v88;
          *(v84 + 2) = v200;
          *&v84[v81[7]] = xmmword_26C14A540;
          v89 = v52;
          v90 = &v217;
          return sub_26C102CA4(v89, *(v90 - 32));
        }

        (*(v198 + 8))(v193, v75);
      }

      sub_26C0CF5C4(v186, &qword_28047A930, qword_26C14C120);
      __break(1u);
    }

    else
    {
      v91 = v198;
      sub_26C102CA4(v11, type metadata accessor for HandshakeState.EncryptedExtensionsState);
      v69 = v184;
      sub_26C101588(v52, v184, type metadata accessor for HandshakeState.EncryptedExtensionsState);
      v92 = v69 + *(v68 + 48);
      v75 = v183;
      sub_26C0CF314(v92, v183, &qword_28047AC40, &unk_26C14D320);
      v93 = type metadata accessor for PAKEClientState(0);
      if ((*(*(v93 - 8) + 48))(v75, 1, v93) != 1)
      {
        sub_26C0CF5C4(v75, &qword_28047AC40, &unk_26C14D320);
        v204 = v53;
        v205 = v54;
        v206 = v55;
        v214 = v199;
        v215 = v200;
        v50 = v181;
        v94 = v203;
        sub_26C106264(v181, &v207, v69, &v204, &v214, v95, &v212);
        v96 = v182;
        if (v94)
        {
          v71 = v69;
          goto LABEL_19;
        }

        v203 = 0;
        v200 = *(&v207 + 1);
        v201 = v207;
        *(&v199 + 1) = v208;
        sub_26C105C04(v182);
        v114 = *(v91 + 48);
        v115 = v194;
        v116 = v114(v96, 1, v194);
        v117 = v96;
        if (v116 == 1)
        {
LABEL_50:
          v178 = v117;
LABEL_52:
          sub_26C0CF5C4(v178, &qword_28047A930, qword_26C14C120);
          __break(1u);
          goto LABEL_53;
        }

        v202 = *(v91 + 32);
        (v202)(v179, v96, v115);
        v118 = v178;
        sub_26C105F34(v178);
        v119 = v194;
        if (v114(v118, 1, v194) == 1)
        {
          (*(v91 + 8))(v179, v119);
          goto LABEL_52;
        }

        v120 = v218;
        sub_26C102CA4(v218, type metadata accessor for HandshakeState);
        *&v199 = type metadata accessor for HandshakeState.EncryptedExtensionsState;
        sub_26C102CA4(v69, type metadata accessor for HandshakeState.EncryptedExtensionsState);
        v121 = v118;
        v122 = v202;
        (v202)(v180, v121, v119);
        sub_26C102D04(v50, v120, type metadata accessor for HandshakeState.ReadyState);
        swift_storeEnumTagMultiPayload();
        v123 = v119;
        v124 = type metadata accessor for PartialHandshakeResult(0);
        v125 = v124[5];
        v126 = v189;
        v122(v189 + v125, v179, v123);
        v127 = type metadata accessor for EncryptionLevel(0);
        swift_storeEnumTagMultiPayload();
        v128 = *(*(v127 - 8) + 56);
        v128(&v126[v125], 0, 1, v127);
        v129 = v124[6];
        (v202)(&v126[v129], v180, v123);
        swift_storeEnumTagMultiPayload();
        v128(&v126[v129], 0, 1, v127);
        v130 = v200;
        *v126 = v201;
        *(v126 + 1) = v130;
        *(v126 + 2) = *(&v199 + 1);
        *&v126[v124[7]] = xmmword_26C14A540;
        v89 = v52;
        v90 = &v216;
        return sub_26C102CA4(v89, *(v90 - 32));
      }
    }

    sub_26C102CA4(v69, type metadata accessor for HandshakeState.EncryptedExtensionsState);
    sub_26C0CF5C4(v75, &qword_28047AC40, &unk_26C14D320);
    v58 = type metadata accessor for HandshakeState.EncryptedExtensionsState;
    goto LABEL_49;
  }

  if (EnumCaseMultiPayload != 5)
  {
LABEL_49:
    sub_26C102CA4(v52, v58);
    __break(1u);
    goto LABEL_50;
  }

  v59 = v197;
  sub_26C102D04(v52, v197, type metadata accessor for HandshakeState.ServerCertificateVerifyState);
  v60 = v201;
  sub_26C0CF314(v59 + *(v196 + 44), v201, &qword_28047AC38, &unk_26C14D110);
  v61 = v203;
  sub_26C108ECC(&v207, v40);
  if (v61)
  {
    sub_26C0CF5C4(v60, &qword_28047AC38, &unk_26C14D110);
    v63 = *(&v207 + 1);
    v62 = v207;
    v64 = v208;
    v65 = v202;
LABEL_5:
    result = sub_26C102CA4(v59, type metadata accessor for HandshakeState.ServerCertificateVerifyState);
    *v65 = v62;
    *(v65 + 1) = v63;
    v65[16] = v64;
    return result;
  }

  v72 = v54 >> 62;
  if ((v54 >> 62) > 1)
  {
    if (v72 == 2)
    {
      v73 = *(v53 + 24);
    }

    else
    {
      v73 = 0;
    }
  }

  else if (v72)
  {
    v73 = v53 >> 32;
  }

  else
  {
    v73 = BYTE6(v54);
  }

  if (v73 < v55)
  {
    __break(1u);
    goto LABEL_44;
  }

  *&v207 = sub_26C14889C();
  *(&v207 + 1) = v99;
  sub_26C0FF1C4(&qword_28047ABF0, &qword_28047AB18, &unk_26C14C110, MEMORY[0x277CC53C8]);
  sub_26C0BE710();
  v100 = v187;
  v101 = sub_26C148C1C();
  sub_26C0BB9B0(v207, *(&v207 + 1));
  v102 = *(v191 + 8);
  v102(v40, v100);
  if ((v101 & 1) == 0)
  {
    if (qword_28047A758 == -1)
    {
LABEL_30:
      v109 = sub_26C148A9C();
      __swift_project_value_buffer(v109, qword_28047AC20);
      v110 = sub_26C148A7C();
      v111 = sub_26C14900C();
      v112 = os_log_type_enabled(v110, v111);
      v65 = v202;
      if (v112)
      {
        v113 = swift_slowAlloc();
        *v113 = 0;
        _os_log_impl(&dword_26C0B5000, v110, v111, "invalid server finished payload", v113, 2u);
        MEMORY[0x26D69C3A0](v113, -1, -1);
      }

      v207 = xmmword_26C14A8E0;
      v64 = 2;
      LOBYTE(v208) = 2;
      sub_26C0BBAF8();
      swift_willThrowTypedImpl();
      sub_26C0CF5C4(v201, &qword_28047AC38, &unk_26C14D110);
      v63 = 0;
      v62 = 6;
      goto LABEL_5;
    }

LABEL_44:
    swift_once();
    goto LABEL_30;
  }

  sub_26C109E94(v199, *(&v199 + 1), v200, &v207);
  v103 = v177;
  sub_26C1094C4(&v207, v177);
  *(&v208 + 1) = v100;
  *&v209 = sub_26C0FF1C4(&qword_28047AB40, &qword_28047AB18, &unk_26C14C110, MEMORY[0x277CC53C0]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v207);
  (*(v191 + 16))(boxed_opaque_existential_1, v103, v100);
  __swift_project_boxed_opaque_existential_1(&v207, *(&v208 + 1));
  sub_26C14880C();
  v102(v103, v100);
  v105 = v204;
  v106 = v205;
  __swift_destroy_boxed_opaque_existential_1(&v207);
  v107 = 0;
  v214 = xmmword_26C14A1B0;
  v215 = 0;
  v108 = v106 >> 62;
  if ((v106 >> 62) > 1)
  {
    if (v108 != 2)
    {
      goto LABEL_40;
    }

    v107 = *(v105 + 16);
  }

  else
  {
    if (!v108)
    {
      goto LABEL_40;
    }

    v107 = v105;
  }

LABEL_40:
  sub_26C100BCC(v105, v106, v107);
  sub_26C0BB9B0(v105, v106);
  v131 = v201;
  sub_26C109AA4(v214, *(&v214 + 1), v215, &v212);
  v203 = 0;
  sub_26C0BB9B0(v105, v106);
  v132 = *(v59 + 48);
  v209 = *(v59 + 32);
  v210 = v132;
  v211 = *(v59 + 64);
  v133 = *(v59 + 16);
  v207 = *v59;
  v208 = v133;
  LODWORD(v200) = *(v59 + 66);
  LODWORD(v202) = *(v59 + 68);
  v134 = v196;
  v135 = v174;
  sub_26C101588(v59 + *(v196 + 28), v174, type metadata accessor for PeerCertificateBundle);
  v136 = type metadata accessor for PeerCertificateBundle(0);
  v137 = *(*(v136 - 8) + 56);
  v137(v135, 0, 1, v136);
  v138 = v134[9];
  v139 = (v59 + v134[8]);
  v140 = v139[1];
  v195 = *v139;
  v141 = v59 + v138;
  v143 = *(v59 + v138);
  v142 = *(v59 + v138 + 8);
  v193 = v143;
  v192 = v142;
  v191 = *(v141 + 16);
  LODWORD(v199) = *(v59 + v134[10]);
  v144 = ready;
  *(&v199 + 1) = *(ready + 44);
  v145 = v171;
  sub_26C0CF55C(v131, &v171[*(&v199 + 1)], &qword_28047AC38, &unk_26C14D110);
  v146 = v134[13];
  LODWORD(v196) = *(v59 + v134[12]);
  LODWORD(v201) = *(v59 + v146);
  *(v145 + 70) = 0;
  *(v145 + 72) = 1;
  v187 = v144[7];
  v137(v145 + v187, 1, 1, v136);
  v147 = (v145 + v144[8]);
  v148 = (v145 + v144[9]);
  v186 = xmmword_26C14A540;
  *v148 = xmmword_26C14A540;
  v148[2] = 0;
  v149 = v145 + v144[12];
  *v149 = 0;
  *(v149 + 2) = 1;
  v150 = v210;
  *(v145 + 32) = v209;
  *(v145 + 48) = v150;
  *(v145 + 64) = v211;
  v151 = v208;
  *v145 = v207;
  *(v145 + 16) = v151;
  *(v145 + 66) = v200;
  *(v145 + 68) = 0;
  *(v145 + 70) = v202;
  *(v145 + 72) = 0;
  sub_26C10B120(&v207, &v204);
  v152 = v140;

  v153 = v193;
  v154 = v192;
  v155 = v191;
  sub_26C0BB37C(v193, v192);
  sub_26C0FF20C(v174, v145 + v187, &qword_28047AC58, &qword_26C14D288);
  *v147 = v195;
  v147[1] = v152;
  sub_26C0BB344(*v148, v148[1]);
  *v148 = v153;
  v148[1] = v154;
  v148[2] = v155;
  *(v145 + v144[10]) = v199;
  *v149 = 0;
  *(v149 + 2) = 1;
  *(v145 + v144[13]) = 0;
  *(v145 + v144[14]) = v196;
  *(v145 + v144[15]) = v201;
  v201 = *(&v214 + 1);
  v202 = v214;
  v200 = v215;
  v50 = v172;
  sub_26C105C04(v172);
  v156 = v198;
  v157 = *(v198 + 48);
  v158 = v194;
  if (v157(v50, 1, v194) == 1)
  {
LABEL_53:
    v173 = v50;
    goto LABEL_55;
  }

  v159 = *(v156 + 32);
  v159(v175, v50, v158);
  v160 = v173;
  sub_26C105F34(v173);
  v161 = v194;
  if (v157(v160, 1, v194) != 1)
  {
    v162 = v218;
    sub_26C102CA4(v218, type metadata accessor for HandshakeState);
    sub_26C102CA4(v197, type metadata accessor for HandshakeState.ServerCertificateVerifyState);
    v159(v176, v160, v161);
    sub_26C102D04(v145, v162, type metadata accessor for HandshakeState.ReadyState);
    swift_storeEnumTagMultiPayload();
    v163 = type metadata accessor for PartialHandshakeResult(0);
    v164 = v163[5];
    v165 = v189;
    v159(v189 + v164, v175, v161);
    v166 = type metadata accessor for EncryptionLevel(0);
    swift_storeEnumTagMultiPayload();
    v167 = *(*(v166 - 8) + 56);
    v167(&v165[v164], 0, 1, v166);
    v168 = v163[6];
    v159(&v165[v168], v176, v161);
    swift_storeEnumTagMultiPayload();
    result = (v167)(&v165[v168], 0, 1, v166);
    v169 = v201;
    *v165 = v202;
    *(v165 + 1) = v169;
    *(v165 + 2) = v200;
    *&v165[v163[7]] = v186;
    return result;
  }

  (*(v156 + 8))(v175, v161);
LABEL_55:
  result = sub_26C0CF5C4(v173, &qword_28047A930, qword_26C14C120);
  __break(1u);
  return result;
}

uint64_t sub_26C105C04@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A968, &unk_26C14A810);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v21 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A970, "DG");
  MEMORY[0x28223BE20](v7);
  v9 = &v21 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A870, &qword_26C14A5A0);
  MEMORY[0x28223BE20](v10);
  v12 = &v21 - v11;
  sub_26C0CF314(v2, &v21 - v11, &qword_28047A870, &qword_26C14A5A0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      sub_26C0CF55C(v12, v6, &qword_28047A968, &unk_26C14A810);
      v14 = sub_26C148BDC();
      v15 = *(v14 - 8);
      (*(v15 + 16))(a1, v6, v14);
      sub_26C0CF5C4(v6, &qword_28047A968, &unk_26C14A810);
      return (*(v15 + 56))(a1, 0, 1, v14);
    }

    goto LABEL_6;
  }

  if (EnumCaseMultiPayload < 2)
  {
    sub_26C0CF5C4(v12, &qword_28047A870, &qword_26C14A5A0);
LABEL_6:
    v17 = sub_26C148BDC();
    return (*(*(v17 - 8) + 56))(a1, 1, 1, v17);
  }

  sub_26C0CF55C(v12, v9, &qword_28047A970, "DG");
  v18 = *(v7 + 48);
  v19 = sub_26C148BDC();
  v20 = *(v19 - 8);
  (*(v20 + 16))(a1, &v9[v18], v19);
  sub_26C0CF5C4(v9, &qword_28047A970, "DG");
  return (*(v20 + 56))(a1, 0, 1, v19);
}

uint64_t sub_26C105F34@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A968, &unk_26C14A810);
  MEMORY[0x28223BE20](v4);
  v6 = &v22 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A970, "DG");
  MEMORY[0x28223BE20](v7);
  v9 = &v22 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A870, &qword_26C14A5A0);
  MEMORY[0x28223BE20](v10);
  v12 = &v22 - v11;
  sub_26C0CF314(v2, &v22 - v11, &qword_28047A870, &qword_26C14A5A0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      sub_26C0CF55C(v12, v6, &qword_28047A968, &unk_26C14A810);
      v14 = *(v4 + 36);
      v15 = sub_26C148BDC();
      v16 = *(v15 - 8);
      (*(v16 + 16))(a1, &v6[v14], v15);
      sub_26C0CF5C4(v6, &qword_28047A968, &unk_26C14A810);
      return (*(v16 + 56))(a1, 0, 1, v15);
    }

    goto LABEL_6;
  }

  if (EnumCaseMultiPayload < 2)
  {
    sub_26C0CF5C4(v12, &qword_28047A870, &qword_26C14A5A0);
LABEL_6:
    v18 = sub_26C148BDC();
    return (*(*(v18 - 8) + 56))(a1, 1, 1, v18);
  }

  sub_26C0CF55C(v12, v9, &qword_28047A970, "DG");
  v19 = *(v7 + 52);
  v20 = sub_26C148BDC();
  v21 = *(v20 - 8);
  (*(v21 + 16))(a1, &v9[v19], v20);
  sub_26C0CF5C4(v9, &qword_28047A970, "DG");
  return (*(v21 + 56))(a1, 0, 1, v20);
}

double sub_26C106264(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t a6, __int128 *a7)
{
  v163 = a7;
  v165 = a3;
  v141 = a2;
  v140 = a1;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AB18, &unk_26C14C110);
  v153 = *(v154 - 8);
  v9 = MEMORY[0x28223BE20](v154);
  v144 = &v139 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v161 = &v139 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AC38, &unk_26C14D110);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v143 = &v139 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v162 = &v139 - v15;
  v16 = type metadata accessor for HandshakeState.EncryptedExtensionsState.SessionData(0);
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v149 = &v139 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v158 = &v139 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v24 = (&v139 - v23);
  MEMORY[0x28223BE20](v22);
  v159 = &v139 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AC48, "~;");
  v27 = MEMORY[0x28223BE20](v26 - 8);
  v29 = &v139 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v31 = &v139 - v30;
  v157 = type metadata accessor for SessionTicket(0);
  v32 = MEMORY[0x28223BE20](v157);
  v148 = &v139 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v35 = &v139 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AC58, &qword_26C14D288);
  v37 = MEMORY[0x28223BE20](v36 - 8);
  v142 = &v139 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v176 = &v139 - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AC40, &unk_26C14D320);
  v41 = MEMORY[0x28223BE20](v40 - 8);
  v139 = &v139 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v44 = &v139 - v43;
  v45 = a4[1];
  v152 = *a4;
  v151 = v45;
  v150 = a4[2];
  v46 = v165;
  v47 = a5[1];
  v147 = *a5;
  v146 = v47;
  v145 = a5[2];
  v48 = type metadata accessor for HandshakeState.EncryptedExtensionsState(0);
  v49 = v48;
  v50 = *(v46 + v48[11]);
  v164 = v48;
  if ((v50 & 1) != 0 || (*(v46 + v48[10]) & 1) != 0 || (sub_26C0CF314(v46 + v48[12], v44, &qword_28047AC40, &unk_26C14D320), v51 = type metadata accessor for PAKEClientState(0), v52 = (*(*(v51 - 8) + 48))(v44, 1, v51), v49 = v164, sub_26C0CF5C4(v44, &qword_28047AC40, &unk_26C14D320), v53 = v52 == 1, v46 = v165, !v53))
  {
    v60 = type metadata accessor for PeerCertificateBundle(0);
    v61 = *(*(v60 - 8) + 56);
    v156 = v60;
    v155 = v61;
    (v61)(v176, 1, 1);
    v62 = v46;
    v63 = v49[5];
    sub_26C0CF314(v62 + v63, v31, &qword_28047AC48, "~;");
    v64 = *(v17 + 48);
    if (v64(v31, 1, v16) == 1)
    {
      sub_26C0CF5C4(v31, &qword_28047AC48, "~;");
    }

    else
    {
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v65 = v176;
        sub_26C0CF5C4(v176, &qword_28047AC58, &qword_26C14D288);
        sub_26C102D04(v31, v35, type metadata accessor for SessionTicket);
        v66 = *&v35[v157[11]];
        v67 = *&v35[v157[12]];
        sub_26C101588(&v35[v157[14]], v65, type metadata accessor for PeerCertificateBundle);
        v68 = v35;
        v69 = v67;
        sub_26C102CA4(v68, type metadata accessor for SessionTicket);
        LODWORD(v159) = 1;
        v155(v65, 0, 1, v156);
        v70 = 0;
        v71 = 0;
        LODWORD(v158) = 0;
        v72 = v162;
        v73 = v165;
LABEL_17:
        v77 = v161;
        goto LABEL_33;
      }

      sub_26C102CA4(v31, type metadata accessor for HandshakeState.EncryptedExtensionsState.SessionData);
    }

    v74 = v165 + v63;
    v73 = v165;
    sub_26C0CF314(v74, v29, &qword_28047AC48, "~;");
    v75 = v64(v29, 1, v16);
    v76 = v159;
    if (v75 == 1)
    {
      sub_26C0CF5C4(v29, &qword_28047AC48, "~;");
      v66 = 0;
      v71 = 0;
      v69 = 0;
      v70 = 1;
      LODWORD(v159) = 1;
      LODWORD(v158) = 1;
      v72 = v162;
      goto LABEL_17;
    }

    sub_26C0CF5C4(v176, &qword_28047AC58, &qword_26C14D288);
    sub_26C102D04(v29, v76, type metadata accessor for HandshakeState.EncryptedExtensionsState.SessionData);
    sub_26C101588(v76, v24, type metadata accessor for HandshakeState.EncryptedExtensionsState.SessionData);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v72 = v162;
    if (EnumCaseMultiPayload)
    {
      v79 = v149;
      if (EnumCaseMultiPayload == 1)
      {
        v66 = *v24;
      }

      else
      {
        v80 = v24;
        v81 = v148;
        sub_26C102D04(v80, v148, type metadata accessor for SessionTicket);
        v66 = *(v81 + v157[11]);
        sub_26C102CA4(v81, type metadata accessor for SessionTicket);
      }
    }

    else
    {
      v66 = *v24;

      v79 = v149;
    }

    sub_26C101588(v76, v158, type metadata accessor for HandshakeState.EncryptedExtensionsState.SessionData);
    v82 = swift_getEnumCaseMultiPayload();
    v77 = v161;
    if (v82)
    {
      if (v82 == 1)
      {
        v69 = 0;
        LODWORD(v158) = 1;
LABEL_29:
        sub_26C102D04(v76, v79, type metadata accessor for HandshakeState.EncryptedExtensionsState.SessionData);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v71 = *(v79 + 2);
          v84 = *(v79 + 4);
        }

        else
        {
          sub_26C102CA4(v79, type metadata accessor for HandshakeState.EncryptedExtensionsState.SessionData);
          v71 = 0;
          v84 = 1;
        }

        LODWORD(v159) = v84;
        v155(v176, 1, 1, v156);
        v70 = 0;
LABEL_33:
        sub_26C0CF314(v73 + v164[9], v72, &qword_28047AC38, &unk_26C14D110);
        v85 = v160;
        sub_26C108ECC(&v167, v77);
        if (v85)
        {
          sub_26C0CF5C4(v72, &qword_28047AC38, &unk_26C14D110);
          sub_26C0CF5C4(v176, &qword_28047AC58, &qword_26C14D288);
          v86 = v168;
          v59 = v167;
LABEL_35:
          v87 = v163;
          *v163 = v59;
          *(v87 + 16) = v86;
          return *&v59;
        }

        v88 = v151 >> 62;
        if ((v151 >> 62) > 1)
        {
          v89 = v150;
          if (v88 == 2)
          {
            v90 = *(v152 + 24);
          }

          else
          {
            v90 = 0;
          }
        }

        else
        {
          v89 = v150;
          if (v88)
          {
            v90 = v152 >> 32;
          }

          else
          {
            v90 = BYTE6(v151);
          }
        }

        if (v90 < v89)
        {
          __break(1u);
        }

        else
        {
          LODWORD(v161) = v71;
          v91 = v69;
          LODWORD(v162) = v66;
          *&v167 = sub_26C14889C();
          *(&v167 + 1) = v92;
          sub_26C0FF1C4(&qword_28047ABF0, &qword_28047AB18, &unk_26C14C110, MEMORY[0x277CC53C8]);
          sub_26C0BE710();
          v93 = v154;
          v94 = sub_26C148C1C();
          sub_26C0BB9B0(v167, *(&v167 + 1));
          v95 = *(v153 + 8);
          v95(v77, v93);
          if (v94)
          {
            sub_26C109E94(v147, v146, v145, &v167);
            v96 = v144;
            sub_26C1094C4(&v167, v144);
            v97 = v96;
            v98 = v154;
            *(&v168 + 1) = v154;
            v160 = 0;
            *&v169 = sub_26C0FF1C4(&qword_28047AB40, &qword_28047AB18, &unk_26C14C110, MEMORY[0x277CC53C0]);
            boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v167);
            (*(v153 + 16))(boxed_opaque_existential_1, v97, v98);
            __swift_project_boxed_opaque_existential_1(&v167, *(&v168 + 1));
            v100 = v160;
            sub_26C14880C();
            v160 = v100;
            v95(v144, v98);
            v101 = v166[0];
            v102 = v166[1];
            __swift_destroy_boxed_opaque_existential_1(&v167);
            v103 = 0;
            v174 = xmmword_26C14A1B0;
            v175 = 0;
            v104 = v102 >> 62;
            if ((v102 >> 62) > 1)
            {
              v105 = v91;
              if (v104 == 2)
              {
                v103 = *(v101 + 16);

                goto LABEL_54;
              }
            }

            else
            {
              v105 = v91;
              if (v104)
              {
                v103 = v101;
LABEL_54:
              }
            }

            sub_26C100BCC(v101, v102, v103);
            sub_26C0BB9B0(v101, v102);
            v111 = v174;
            v112 = v160;
            sub_26C109AA4(v174, *(&v174 + 1), v175, &v172);
            if (!v112)
            {
              v163 = 0;
              sub_26C0BB9B0(v101, v102);
              v113 = v165;
              v114 = *(v165 + 48);
              v169 = *(v165 + 32);
              v170 = v114;
              v171 = *(v165 + 64);
              v115 = *(v165 + 16);
              v167 = *v165;
              v168 = v115;
              sub_26C0CF55C(v176, v142, &qword_28047AC58, &qword_26C14D288);
              v116 = v164;
              v117 = v164[7];
              v118 = (v113 + v164[6]);
              v119 = v118[1];
              v157 = *v118;
              v152 = v119;
              LODWORD(v154) = v105;
              v121 = *(v113 + v117 + 8);
              v153 = *(v113 + v117);
              v120 = v153;
              v122 = *(v113 + v117 + 16);
              LODWORD(v160) = *(v113 + v164[8]);
              sub_26C0CF55C(v72, v143, &qword_28047AC38, &unk_26C14D110);
              LODWORD(v176) = *(v113 + v116[10]);
              v123 = v116[12];
              LODWORD(v164) = *(v113 + v116[13]);
              v124 = v113 + v123;
              v125 = v139;
              sub_26C0CF314(v124, v139, &qword_28047AC40, &unk_26C14D320);
              v126 = type metadata accessor for PAKEClientState(0);
              LODWORD(v165) = (*(*(v126 - 8) + 48))(v125, 1, v126) != 1;
              sub_26C10B120(&v167, v166);

              sub_26C0BB37C(v120, v121);
              sub_26C0CF5C4(v125, &qword_28047AC40, &unk_26C14D320);
              v127 = v140;
              *(v140 + 70) = 0;
              *(v127 + 72) = 1;
              ready = type metadata accessor for HandshakeState.ReadyState(0);
              v129 = ready[7];
              v155(v127 + v129, 1, 1, v156);
              v130 = (v127 + ready[8]);
              v131 = (v127 + ready[9]);
              *v131 = xmmword_26C14A540;
              v131[2] = 0;
              v132 = v127 + ready[12];
              *v132 = 0;
              *(v132 + 2) = 1;
              v133 = v170;
              *(v127 + 32) = v169;
              *(v127 + 48) = v133;
              *(v127 + 64) = v171;
              v134 = v168;
              *v127 = v167;
              *(v127 + 16) = v134;
              *(v127 + 66) = v162;
              *(v127 + 68) = v70;
              *(v127 + 70) = v154;
              *(v127 + 72) = v158;
              sub_26C0FF20C(v142, v127 + v129, &qword_28047AC58, &qword_26C14D288);
              v135 = v152;
              *v130 = v157;
              v130[1] = v135;
              sub_26C0BB344(*v131, v131[1]);
              *v131 = v153;
              v131[1] = v121;
              v131[2] = v122;
              *(v127 + ready[10]) = v160;
              sub_26C0CF55C(v143, v127 + ready[11], &qword_28047AC38, &unk_26C14D110);
              *v132 = v161;
              *(v132 + 2) = v159;
              *(v127 + ready[13]) = v176;
              *(v127 + ready[14]) = v164;
              *(v127 + ready[15]) = v165;
              v136 = v175;
              *&v59 = v174;
              v137 = v141;
              *v141 = v174;
              *(v137 + 2) = v136;
              return *&v59;
            }

            sub_26C0BB9B0(v101, v102);
            sub_26C0CF5C4(v72, &qword_28047AC38, &unk_26C14D110);
            sub_26C0CF5C4(v176, &qword_28047AC58, &qword_26C14D288);
            sub_26C0BB9B0(v111, *(&v111 + 1));
            v86 = v173;
            v59 = v172;
            goto LABEL_35;
          }

          if (qword_28047A758 == -1)
          {
            goto LABEL_49;
          }
        }

        swift_once();
LABEL_49:
        v106 = sub_26C148A9C();
        __swift_project_value_buffer(v106, qword_28047AC20);
        v107 = sub_26C148A7C();
        v108 = sub_26C14900C();
        if (os_log_type_enabled(v107, v108))
        {
          v109 = swift_slowAlloc();
          *v109 = 0;
          _os_log_impl(&dword_26C0B5000, v107, v108, "invalid server finished payload", v109, 2u);
          MEMORY[0x26D69C3A0](v109, -1, -1);
        }

        v110 = v163;
        *v163 = xmmword_26C14A8E0;
        *(v110 + 16) = 2;
        v167 = xmmword_26C14A8E0;
        LOBYTE(v168) = 2;
        sub_26C0BBAF8();
        swift_willThrowTypedImpl();
        sub_26C0CF5C4(v72, &qword_28047AC38, &unk_26C14D110);
        sub_26C0CF5C4(v176, &qword_28047AC58, &qword_26C14D288);
        return *&v59;
      }

      v83 = v148;
      sub_26C102D04(v158, v148, type metadata accessor for SessionTicket);
      v69 = *(v83 + v157[12]);
      sub_26C102CA4(v83, type metadata accessor for SessionTicket);
    }

    else
    {
      v69 = *(v158 + 2);
    }

    LODWORD(v158) = 0;
    goto LABEL_29;
  }

  if (qword_28047A758 != -1)
  {
    swift_once();
  }

  v54 = sub_26C148A9C();
  __swift_project_value_buffer(v54, qword_28047AC20);
  v55 = sub_26C148A7C();
  v56 = sub_26C14900C();
  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    *v57 = 0;
    _os_log_impl(&dword_26C0B5000, v55, v56, "received server finished message while not resuming session or using an external pre shared key", v57, 2u);
    MEMORY[0x26D69C3A0](v57, -1, -1);
  }

  v58 = v163;
  *v163 = xmmword_26C14A560;
  *(v58 + 16) = 2;
  v167 = xmmword_26C14A560;
  LOBYTE(v168) = 2;
  sub_26C0BBAF8();
  swift_willThrowTypedImpl();
  return *&v59;
}

uint64_t sub_26C1075F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = v4;
  v36 = a4;
  v10 = type metadata accessor for SessionTicket(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  ready = type metadata accessor for HandshakeState.ReadyState(0);
  MEMORY[0x28223BE20](ready - 8);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for HandshakeState(0);
  MEMORY[0x28223BE20](v16);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26C101588(v7, v18, type metadata accessor for HandshakeState);
  if (swift_getEnumCaseMultiPayload() < 6)
  {
    result = sub_26C102CA4(v18, type metadata accessor for HandshakeState);
    __break(1u);
  }

  else
  {
    sub_26C102D04(v18, v15, type metadata accessor for HandshakeState.ReadyState);
    sub_26C107984(a1, a2, &v34, v12);
    if (v5)
    {
      result = sub_26C102CA4(v15, type metadata accessor for HandshakeState.ReadyState);
      v20 = v35;
      *a3 = v34;
      *(a3 + 16) = v20;
    }

    else
    {
      if (qword_28047A758 != -1)
      {
        swift_once();
      }

      v21 = sub_26C148A9C();
      __swift_project_value_buffer(v21, qword_28047AC20);
      v22 = sub_26C148A7C();
      v23 = sub_26C14901C();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&dword_26C0B5000, v22, v23, "generated new session ticket", v24, 2u);
        MEMORY[0x26D69C3A0](v24, -1, -1);
      }

      v25 = type metadata accessor for PartialHandshakeResult(0);
      v26 = v25[5];
      v27 = type metadata accessor for EncryptionLevel(0);
      v28 = *(*(v27 - 8) + 56);
      v29 = v36;
      v28(v36 + v26, 1, 1, v27);
      v28(v29 + v25[6], 1, 1, v27);
      v30 = sub_26C11F5FC();
      v32 = v31;
      sub_26C102CA4(v12, type metadata accessor for SessionTicket);
      result = sub_26C102CA4(v15, type metadata accessor for HandshakeState.ReadyState);
      *v29 = xmmword_26C14A540;
      *(v29 + 16) = 0;
      v33 = (v29 + v25[7]);
      *v33 = v30;
      v33[1] = v32;
    }
  }

  return result;
}

double sub_26C107984@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, char *a4@<X8>)
{
  v136 = a3;
  v123 = a2;
  v129 = a4;
  v126 = sub_26C14896C();
  v125 = *(v126 - 8);
  MEMORY[0x28223BE20](v126);
  v124 = &v113 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AC58, &qword_26C14D288);
  MEMORY[0x28223BE20](v6 - 8);
  v134 = &v113 - v7;
  v133 = type metadata accessor for PeerCertificateBundle(0);
  isa = v133[-1].isa;
  v8 = MEMORY[0x28223BE20](v133);
  v130 = &v113 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v131 = &v113 - v10;
  v11 = sub_26C148BDC();
  v135 = *(v11 - 8);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v113 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v113 - v15;
  v17 = *(a1 + 4);
  LODWORD(v120) = *a1;
  LODWORD(v122) = v17;
  v19 = *(a1 + 8);
  v18 = *(a1 + 16);
  v20 = *(a1 + 24);
  v127 = *(a1 + 32);
  v21 = *(a1 + 48);
  v128 = *(a1 + 40);
  v121 = v21;
  v22 = *(a1 + 56);
  ready = type metadata accessor for HandshakeState.ReadyState(0);
  v24 = v137;
  sub_26C10A294(v19, v18, v20, &v141, v16);
  if (v24)
  {
    v25 = v142;
    result = *&v141;
    v27 = v136;
    *v136 = v141;
    *(v27 + 16) = v25;
    return result;
  }

  v116 = v18;
  v118 = v22;
  v117 = v14;
  v119 = v16;
  v137 = v11;
  v28 = v148;
  v29 = v134;
  sub_26C0CF314(v148 + *(ready + 28), v134, &qword_28047AC58, &qword_26C14D288);
  if ((*(isa + 6))(v29, 1, v133) == 1)
  {
    sub_26C0CF5C4(v29, &qword_28047AC58, &qword_26C14D288);
    v30 = v136;
    *v136 = xmmword_26C14D100;
    *(v30 + 16) = 2;
    v141 = xmmword_26C14D100;
    LOBYTE(v142) = 2;
    sub_26C0BBAF8();
    swift_willThrowTypedImpl();
    (*(v135 + 8))(v119, v137);
    return result;
  }

  v133 = 0;
  v31 = v131;
  sub_26C102D04(v29, v131, type metadata accessor for PeerCertificateBundle);
  v32 = v119;
  if (*(v28 + 68) & 1) != 0 || (*(v28 + 72))
  {
    v33 = v136;
    *v136 = xmmword_26C14D0F0;
    *(v33 + 16) = 2;
    v141 = xmmword_26C14D0F0;
    LOBYTE(v142) = 2;
    sub_26C0BBAF8();
    swift_willThrowTypedImpl();
    sub_26C102CA4(v31, type metadata accessor for PeerCertificateBundle);
    (*(v135 + 8))(v32, v137);
    return result;
  }

  v115 = *(v28 + 66);
  LODWORD(isa) = *(v28 + 70);
  v114 = *(v135 + 16);
  v34 = v117;
  v114(v117, v119, v137);
  v35 = (v28 + *(ready + 32));
  v37 = *v35;
  v36 = v35[1];
  v148 = v37;
  v134 = v36;
  v113 = type metadata accessor for PeerCertificateBundle;
  sub_26C101588(v31, v130, type metadata accessor for PeerCertificateBundle);
  v38 = *(v125 + 16);
  v39 = v124;
  v40 = v126;
  v38(v124, v123, v126);
  v41 = v129;
  v38(v129, v39, v40);
  v42 = v134;
  if (v120 >= 0x93A80)
  {
    v43 = 604800;
  }

  else
  {
    v43 = v120;
  }

  v44 = type metadata accessor for SessionTicket(0);
  v45 = v44[13];
  *&v41[v44[5]] = v43;
  *&v41[v44[6]] = v122;
  v46 = &v41[v45];
  v47 = &v41[v44[8]];
  v48 = v128;
  *v47 = v127;
  *(v47 + 1) = v48;
  v120 = v47;
  *(v47 + 2) = v121;
  v49 = &v41[v44[7]];
  v50 = v116;
  *v49 = v19;
  v49[1] = v50;
  v122 = v49;
  v49[2] = v20;
  v51 = v137;
  v123 = v44[9];
  v114(&v41[v123], v34, v137);
  *&v41[v44[11]] = v115;
  *&v41[v44[12]] = isa;
  *v46 = v148;
  *(v46 + 1) = v42;
  isa = v44;
  v52 = v44[14];
  v53 = &v41[v52];
  v54 = v130;
  sub_26C101588(v130, v53, v113);
  v147 = MEMORY[0x277D84FA0];
  v55 = v118;
  v56 = *(v118 + 16);
  if (v56)
  {
    v121 = v52;

    sub_26C0BBAA4(v127, v128);
    sub_26C0BBAA4(v19, v116);

    v19 = &v141;
    if (*(v55 + 16))
    {
      v57 = v55;
      v58 = 0;
      v51 = 0;
      v59 = v56 - 1;
      LODWORD(v148) = 1;
      v54 = 32;
      while (1)
      {
        v60 = *(v57 + v54 + 16);
        v141 = *(v57 + v54);
        v142 = v60;
        v61 = *(v57 + v54 + 32);
        v62 = *(v57 + v54 + 48);
        v63 = *(v57 + v54 + 64);
        v146 = *(v57 + v54 + 80);
        v144 = v62;
        v145 = v63;
        v143 = v61;
        v64 = v51 + 1;
        v65 = 42;
        switch(v146 >> 4)
        {
          case 1:

            v65 = 10;
            break;
          case 2:
            sub_26C0B8B24(v141, BYTE8(v141) & 1);
            v65 = 43;
            break;
          case 3:
            sub_26C0FF14C(v141, *(&v141 + 1), v142 & 1);
            v65 = 16;
            break;
          case 4:
            sub_26C0FF158(v141, *(&v141 + 1), v142);
            v65 = 51;
            break;
          case 5:
            break;
          case 6:

            v65 = 13;
            break;
          case 7:
            sub_26C0B8B24(v141, BYTE8(v141) & 1);
            v65 = 20;
            break;
          case 8:
            sub_26C0BBAA4(v141, *(&v141 + 1));
            v65 = 57;
            break;
          case 9:

            v65 = 45;
            break;
          case 0xA:
            sub_26C10B28C(v141, *(&v141 + 1), v142 & 1);
            v65 = 41;
            break;
          case 0xB:
            v65 = 58;
            break;
          case 0xC:
            sub_26C10B1D0(v141, *(&v141 + 1), v142, *(&v142 + 1), v143, *(&v143 + 1), v144, *(&v144 + 1), v145, *(&v145 + 1), v146 & 1);
            v65 = 35387;
            break;
          case 0xD:
            v66 = v141;
            sub_26C0BBAA4(*(&v141 + 1), v142);
            v65 = v66;
            break;
          default:
            sub_26C0BB37C(v141, *(&v141 + 1));
            v65 = 0;
            break;
        }

        if ((sub_26C11D960(&v139, v65) & 1) == 0)
        {

          if (qword_28047A768 != -1)
          {
            swift_once();
          }

          v72 = sub_26C148A9C();
          __swift_project_value_buffer(v72, qword_28047AD38);
          sub_26C0BE40C(&v141, &v139);
          v73 = sub_26C148A7C();
          v74 = sub_26C14900C();
          sub_26C0BE468(&v141);
          v75 = os_log_type_enabled(v73, v74);
          v76 = v137;
          v77 = v117;
          if (v75)
          {
            v78 = swift_slowAlloc();
            v79 = swift_slowAlloc();
            *&v139 = v79;
            *v78 = 136315138;
            v80 = v79;
            switch(v146 >> 4)
            {
              case 1:
                v108 = 10;
                goto LABEL_73;
              case 2:
                v108 = 43;
                goto LABEL_73;
              case 3:
                v108 = 16;
                goto LABEL_73;
              case 4:
                v108 = 51;
                goto LABEL_73;
              case 5:
                v108 = 42;
                goto LABEL_73;
              case 6:
                v108 = 13;
                goto LABEL_73;
              case 7:
                v108 = 20;
                goto LABEL_73;
              case 8:
                v108 = 57;
                goto LABEL_73;
              case 9:
                v108 = 45;
                goto LABEL_73;
              case 0xA:
                v108 = 41;
                goto LABEL_73;
              case 0xB:
                v108 = 58;
                goto LABEL_73;
              case 0xC:
                v108 = -30149;
LABEL_73:
                LOWORD(v138) = v108;
                break;
              case 0xD:
                LOWORD(v138) = v141;
                break;
              default:
                LOWORD(v138) = 0;
                break;
            }

            v109 = ExtensionType.description.getter();
            v111 = sub_26C0E5DE8(v109, v110, &v139);

            *(v78 + 4) = v111;
            _os_log_impl(&dword_26C0B5000, v73, v74, "server offered duplicate extension of type %s on new session ticket", v78, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v80);
            MEMORY[0x26D69C3A0](v80, -1, -1);
            MEMORY[0x26D69C3A0](v78, -1, -1);

            v81 = v129;
            v82 = v136;
            v77 = v117;
          }

          else
          {

            v81 = v129;
            v82 = v136;
          }

          v139 = xmmword_26C14A8F0;
          v140 = 2;
          sub_26C0BBAF8();
          swift_willThrowTypedImpl();
          sub_26C0BE468(&v141);
          v105 = *(v125 + 8);
          v102 = v126;
          v105(v124, v126);
          sub_26C102CA4(v130, type metadata accessor for PeerCertificateBundle);
          v106 = *(v135 + 8);
          v112 = v77;
          v107 = v76;
          v106(v112, v76);
          goto LABEL_76;
        }

        if ((v146 & 0xF0) == 0x50)
        {
          v67 = v58;
          v68 = v141;
          v69 = BYTE4(v141);
          if (v148 & 1) == 0 || (BYTE4(v141))
          {

            if (qword_28047A768 != -1)
            {
              swift_once();
            }

            v83 = sub_26C148A9C();
            __swift_project_value_buffer(v83, qword_28047AD38);
            v84 = sub_26C148A7C();
            v85 = sub_26C14900C();
            v86 = os_log_type_enabled(v84, v85);
            v81 = v129;
            v82 = v136;
            if (v86)
            {
              LODWORD(isa) = v85;
              v133 = v84;
              v87 = v148;
              v88 = v148 | v69;
              v89 = 7104878;
              v90 = swift_slowAlloc();
              v91 = swift_slowAlloc();
              *&v139 = v91;
              *v90 = 136315394;
              if (v87)
              {
                v92 = v91;
                v93 = 0xE300000000000000;
                v94 = 7104878;
              }

              else
              {
                v92 = v91;
                v138 = v67;
                sub_26C10B2E8();
                v94 = sub_26C14904C();
                v93 = v95;
              }

              v96 = sub_26C0E5DE8(v94, v93, &v139);

              *(v90 + 4) = v96;
              *(v90 + 12) = 2080;
              if (v88)
              {
                v97 = 0xE300000000000000;
              }

              else
              {
                v138 = v68;
                sub_26C10B2E8();
                v89 = sub_26C14904C();
                v97 = v98;
              }

              v81 = v129;
              v82 = v136;
              v99 = sub_26C0E5DE8(v89, v97, &v139);

              *(v90 + 14) = v99;
              v100 = v133;
              _os_log_impl(&dword_26C0B5000, v133, isa, "invalid early data extension: old value %s new value %s", v90, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x26D69C3A0](v92, -1, -1);
              MEMORY[0x26D69C3A0](v90, -1, -1);
            }

            else
            {
            }

            v101 = v135;
            v102 = v126;
            v103 = v125;
            v104 = v124;
            v139 = xmmword_26C14A8F0;
            v140 = 2;
            sub_26C0BBAF8();
            swift_willThrowTypedImpl();
            v105 = *(v103 + 8);
            v105(v104, v102);
            sub_26C102CA4(v130, type metadata accessor for PeerCertificateBundle);
            v106 = *(v101 + 8);
            v107 = v137;
            v106(v117, v137);
LABEL_76:
            v105(v81, v102);
            sub_26C0BB9B0(*v122, v122[1]);
            sub_26C0BB9B0(*v120, v120[1]);
            v106(&v81[v123], v107);

            sub_26C102CA4(&v81[v121], type metadata accessor for PeerCertificateBundle);
            sub_26C102CA4(v131, type metadata accessor for PeerCertificateBundle);
            v106(v119, v107);
            *&result = 5;
            *v82 = xmmword_26C14A8F0;
            *(v82 + 16) = 2;
            return result;
          }

          LODWORD(v148) = 0;
          v58 = v141;
          v57 = v118;
        }

        else
        {
          sub_26C0BE468(&v141);
        }

        if (v59 == v51)
        {
          break;
        }

        v54 += 88;
        ++v51;
        if (v64 >= *(v57 + 16))
        {
          goto LABEL_36;
        }
      }

      (*(v125 + 8))(v124, v126);
      sub_26C102CA4(v130, type metadata accessor for PeerCertificateBundle);
      v70 = *(v135 + 8);
      v51 = v137;
      v70(v117, v137);

      if (v148)
      {
        v71 = 0;
      }

      else
      {
        v71 = v58;
      }

      goto LABEL_46;
    }

LABEL_36:
    __break(1u);
  }

  sub_26C0BBAA4(v127, v128);
  sub_26C0BBAA4(v19, v116);
  (*(v125 + 8))(v124, v126);
  sub_26C102CA4(v54, type metadata accessor for PeerCertificateBundle);
  v70 = *(v135 + 8);
  v70(v117, v51);
  v71 = 0;
LABEL_46:
  *&v129[*(isa + 10)] = v71;
  sub_26C102CA4(v131, type metadata accessor for PeerCertificateBundle);
  v70(v119, v51);
  return result;
}

uint64_t sub_26C108ABC(uint64_t a1, unint64_t a2, uint64_t a3, _OWORD *a4)
{
  v32 = a4;
  v31 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A9C8, &qword_26C14D2A0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v30 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A870, &qword_26C14A5A0);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v30 - v14;
  v35 = v4;
  sub_26C0CF314(v4, &v30 - v14, &qword_28047A870, &qword_26C14A5A0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if ((EnumCaseMultiPayload - 2) >= 2)
    {
LABEL_6:
      if (qword_28047A770 != -1)
      {
        swift_once();
      }

      v18 = sub_26C148A9C();
      __swift_project_value_buffer(v18, qword_28047AD78);
      sub_26C0CF314(v35, v13, &qword_28047A870, &qword_26C14A5A0);
      v19 = swift_getEnumCaseMultiPayload();
      if (v19 <= 1)
      {
        if (v19)
        {
          v21 = 0x6B616873646E6168;
        }

        else
        {
          v21 = 0x636553796C726165;
        }

        if (v19)
        {
          v20 = 0xEF74657263655365;
        }

        else
        {
          v20 = 0xEB00000000746572;
        }
      }

      else if (v19 == 2)
      {
        v20 = 0xEC00000074657263;
        v21 = 0x655372657473616DLL;
      }

      else
      {
        if (v19 != 3)
        {
          v20 = 0xE400000000000000;
          v21 = 1701602409;
          goto LABEL_23;
        }

        v20 = 0xEA00000000007374;
        v21 = 0x65726365536C6C61;
      }

      sub_26C0CF5C4(v13, &qword_28047A870, &qword_26C14A5A0);
LABEL_23:
      sub_26C125B0C(v21, v20, 0xD000000000000012, 0x800000026C15AD50);

      v25 = v32;
      *v32 = xmmword_26C14A570;
      *(v25 + 16) = 2;
      v33 = xmmword_26C14A570;
      v34 = 2;
      sub_26C0BBAF8();
      return swift_willThrowTypedImpl();
    }

LABEL_5:
    sub_26C0CF5C4(v15, &qword_28047A870, &qword_26C14A5A0);
    goto LABEL_6;
  }

  v17 = v31;
  if (!EnumCaseMultiPayload)
  {
    goto LABEL_5;
  }

  sub_26C0CF55C(v15, v9, &qword_28047A9C8, &qword_26C14D2A0);
  v22 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    result = v17;
    if (v22 == 2)
    {
      v24 = *(a1 + 24);
    }

    else
    {
      v24 = 0;
    }
  }

  else
  {
    result = v17;
    if (v22)
    {
      v24 = a1 >> 32;
    }

    else
    {
      v24 = BYTE6(a2);
    }
  }

  if (v24 < result)
  {
    __break(1u);
  }

  else
  {
    v26 = sub_26C14889C();
    v28 = v27;
    sub_26C11E5B4(v26, v27, v9);
    sub_26C0BB9B0(v26, v28);
    v29 = v35;
    sub_26C0CF5C4(v35, &qword_28047A870, &qword_26C14A5A0);
    sub_26C0CF55C(v9, v29, &qword_28047A9C8, &qword_26C14D2A0);
    return swift_storeEnumTagMultiPayload();
  }

  return result;
}

uint64_t sub_26C108ECC@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a1;
  v3 = v2;
  v33 = a2;
  v35 = sub_26C148B6C();
  v34 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v30 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_26C148BDC();
  v31 = *(v5 - 8);
  v32 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A9C8, &qword_26C14D2A0);
  MEMORY[0x28223BE20](v8);
  v10 = &v30 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A870, &qword_26C14A5A0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v30 - v15;
  v36 = v3;
  sub_26C0CF314(v3, &v30 - v15, &qword_28047A870, &qword_26C14A5A0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v18 = v35;
    if (EnumCaseMultiPayload)
    {
      sub_26C0CF55C(v16, v10, &qword_28047A9C8, &qword_26C14D2A0);
      v23 = MEMORY[0x277CC52C8];
      sub_26C0E6794(&qword_28047AB38, MEMORY[0x277CC52C8], MEMORY[0x277CC52C0]);
      v24 = sub_26C148E7C();
      v25 = v7;
      sub_26C136F6C(0x64656873696E6966, 0xE800000000000000, MEMORY[0x277D84F90], v24, v7);
      sub_26C148E9C();
      sub_26C0E6794(&qword_281590328, MEMORY[0x277CC5550], MEMORY[0x277CC5548]);
      v26 = v30;
      v27 = sub_26C148B2C();
      MEMORY[0x28223BE20](v27);
      *(&v30 - 2) = v25;
      sub_26C0E6794(&qword_28047A9D0, v23, MEMORY[0x277CC52B8]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AB18, &unk_26C14C110);
      sub_26C14880C();
      (*(v34 + 8))(v26, v18);
      sub_26C0CF5C4(v10, &qword_28047A9C8, &qword_26C14D2A0);
      return (*(v31 + 8))(v25, v32);
    }

    goto LABEL_5;
  }

  if ((EnumCaseMultiPayload - 2) < 2)
  {
LABEL_5:
    sub_26C0CF5C4(v16, &qword_28047A870, &qword_26C14A5A0);
  }

  if (qword_28047A770 != -1)
  {
    swift_once();
  }

  v19 = sub_26C148A9C();
  __swift_project_value_buffer(v19, qword_28047AD78);
  sub_26C0CF314(v36, v14, &qword_28047A870, &qword_26C14A5A0);
  v20 = swift_getEnumCaseMultiPayload();
  if (v20 <= 1)
  {
    if (v20)
    {
      v21 = 0xEF74657263655365;
      v22 = 0x6B616873646E6168;
    }

    else
    {
      v21 = 0xEB00000000746572;
      v22 = 0x636553796C726165;
    }

    goto LABEL_18;
  }

  if (v20 == 2)
  {
    v21 = 0xEC00000074657263;
    v22 = 0x655372657473616DLL;
    goto LABEL_18;
  }

  if (v20 == 3)
  {
    v21 = 0xEA00000000007374;
    v22 = 0x65726365536C6C61;
LABEL_18:
    sub_26C0CF5C4(v14, &qword_28047A870, &qword_26C14A5A0);
    goto LABEL_19;
  }

  v21 = 0xE400000000000000;
  v22 = 1701602409;
LABEL_19:
  sub_26C125B0C(v22, v21, 0xD000000000000015, 0x800000026C15ADD0);

  v29 = v39;
  *v39 = xmmword_26C14A570;
  *(v29 + 16) = 2;
  v37 = xmmword_26C14A570;
  v38 = 2;
  sub_26C0BBAF8();
  return swift_willThrowTypedImpl();
}

uint64_t sub_26C1094C4@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a1;
  v32 = a2;
  v34 = sub_26C148B6C();
  v33 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v29 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_26C148BDC();
  v30 = *(v4 - 8);
  v31 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A970, "DG");
  MEMORY[0x28223BE20](v7);
  v9 = &v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A870, &qword_26C14A5A0);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v28 - v14;
  sub_26C0CF314(v2, &v28 - v14, &qword_28047A870, &qword_26C14A5A0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload != 3)
    {
      goto LABEL_6;
    }
  }

  else if (EnumCaseMultiPayload >= 2)
  {
    sub_26C0CF55C(v15, v9, &qword_28047A970, "DG");
    v17 = MEMORY[0x277CC52C8];
    sub_26C0E6794(&qword_28047AB38, MEMORY[0x277CC52C8], MEMORY[0x277CC52C0]);
    v18 = v34;
    v19 = sub_26C148E7C();
    sub_26C136F6C(0x64656873696E6966, 0xE800000000000000, MEMORY[0x277D84F90], v19, v6);
    sub_26C148E9C();
    sub_26C0E6794(&qword_281590328, MEMORY[0x277CC5550], MEMORY[0x277CC5548]);
    v20 = v29;
    v21 = sub_26C148B2C();
    MEMORY[0x28223BE20](v21);
    *(&v28 - 2) = v6;
    sub_26C0E6794(&qword_28047A9D0, v17, MEMORY[0x277CC52B8]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AB18, &unk_26C14C110);
    sub_26C14880C();
    (*(v33 + 8))(v20, v18);
    sub_26C0CF5C4(v9, &qword_28047A970, "DG");
    return (*(v30 + 8))(v6, v31);
  }

  sub_26C0CF5C4(v15, &qword_28047A870, &qword_26C14A5A0);
LABEL_6:
  if (qword_28047A770 != -1)
  {
    swift_once();
  }

  v23 = sub_26C148A9C();
  __swift_project_value_buffer(v23, qword_28047AD78);
  sub_26C0CF314(v2, v13, &qword_28047A870, &qword_26C14A5A0);
  v24 = swift_getEnumCaseMultiPayload();
  if (v24 <= 1)
  {
    if (v24)
    {
      v25 = 0xEF74657263655365;
      v26 = 0x6B616873646E6168;
    }

    else
    {
      v25 = 0xEB00000000746572;
      v26 = 0x636553796C726165;
    }

    goto LABEL_17;
  }

  if (v24 == 2)
  {
    v25 = 0xEC00000074657263;
    v26 = 0x655372657473616DLL;
    goto LABEL_17;
  }

  if (v24 == 3)
  {
    v25 = 0xEA00000000007374;
    v26 = 0x65726365536C6C61;
LABEL_17:
    sub_26C0CF5C4(v13, &qword_28047A870, &qword_26C14A5A0);
    goto LABEL_18;
  }

  v25 = 0xE400000000000000;
  v26 = 1701602409;
LABEL_18:
  sub_26C125B0C(v26, v25, 0xD000000000000015, 0x800000026C15AD90);

  v27 = v37;
  *v37 = xmmword_26C14A570;
  *(v27 + 16) = 2;
  v35 = xmmword_26C14A570;
  v36 = 2;
  sub_26C0BBAF8();
  return swift_willThrowTypedImpl();
}

uint64_t sub_26C109AA4(uint64_t a1, unint64_t a2, uint64_t a3, _OWORD *a4)
{
  v34 = a4;
  v31 = a3;
  v29 = a1;
  v30 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A970, "DG");
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v29 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A870, &qword_26C14A5A0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v29 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v29 - v18;
  sub_26C0CF314(v4, &v29 - v18, &qword_28047A870, &qword_26C14A5A0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload != 3)
    {
      goto LABEL_6;
    }
  }

  else if (EnumCaseMultiPayload >= 2)
  {
    sub_26C0CF55C(v19, v10, &qword_28047A970, "DG");
    sub_26C0CF314(v10, v8, &qword_28047A970, "DG");
    v22 = v29;
    v21 = v30;
    sub_26C0BBAA4(v29, v30);
    sub_26C10ACD4(v8, v22, v21, v31, v17);
    sub_26C0CF5C4(v10, &qword_28047A970, "DG");
    swift_storeEnumTagMultiPayload();
    return sub_26C0FF20C(v17, v4, &qword_28047A870, &qword_26C14A5A0);
  }

  sub_26C0CF5C4(v19, &qword_28047A870, &qword_26C14A5A0);
LABEL_6:
  if (qword_28047A770 != -1)
  {
    swift_once();
  }

  v24 = sub_26C148A9C();
  __swift_project_value_buffer(v24, qword_28047AD78);
  sub_26C0CF314(v4, v14, &qword_28047A870, &qword_26C14A5A0);
  v25 = swift_getEnumCaseMultiPayload();
  if (v25 <= 1)
  {
    if (v25)
    {
      v27 = 0x6B616873646E6168;
    }

    else
    {
      v27 = 0x636553796C726165;
    }

    if (v25)
    {
      v26 = 0xEF74657263655365;
    }

    else
    {
      v26 = 0xEB00000000746572;
    }
  }

  else if (v25 == 2)
  {
    v26 = 0xEC00000074657263;
    v27 = 0x655372657473616DLL;
  }

  else
  {
    if (v25 != 3)
    {
      v26 = 0xE400000000000000;
      v27 = 1701602409;
      goto LABEL_20;
    }

    v26 = 0xEA00000000007374;
    v27 = 0x65726365536C6C61;
  }

  sub_26C0CF5C4(v14, &qword_28047A870, &qword_26C14A5A0);
LABEL_20:
  sub_26C125B0C(v27, v26, 0xD000000000000013, 0x800000026C15AD70);

  v28 = v34;
  *v34 = xmmword_26C14A570;
  *(v28 + 16) = 2;
  v32 = xmmword_26C14A570;
  v33 = 2;
  sub_26C0BBAF8();
  return swift_willThrowTypedImpl();
}

uint64_t sub_26C109E94(uint64_t a1, unint64_t a2, uint64_t a3, _OWORD *a4)
{
  v34 = a4;
  v29 = a3;
  v30 = a1;
  v31 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A9C8, &qword_26C14D2A0);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v29 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A870, &qword_26C14A5A0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v29 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v29 - v18;
  sub_26C0CF314(v4, &v29 - v18, &qword_28047A870, &qword_26C14A5A0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v22 = v30;
    v21 = v31;
    if (EnumCaseMultiPayload)
    {
      sub_26C0CF55C(v19, v10, &qword_28047A9C8, &qword_26C14D2A0);
      sub_26C0CF314(v10, v8, &qword_28047A9C8, &qword_26C14D2A0);
      sub_26C0BBAA4(v22, v21);
      sub_26C10A6EC(v8, v22, v21, v29, v17);
      sub_26C0CF5C4(v10, &qword_28047A9C8, &qword_26C14D2A0);
      swift_storeEnumTagMultiPayload();
      return sub_26C0FF20C(v17, v4, &qword_28047A870, &qword_26C14A5A0);
    }

    goto LABEL_5;
  }

  if ((EnumCaseMultiPayload - 2) < 2)
  {
LABEL_5:
    sub_26C0CF5C4(v19, &qword_28047A870, &qword_26C14A5A0);
  }

  if (qword_28047A770 != -1)
  {
    swift_once();
  }

  v23 = sub_26C148A9C();
  __swift_project_value_buffer(v23, qword_28047AD78);
  sub_26C0CF314(v4, v14, &qword_28047A870, &qword_26C14A5A0);
  v24 = swift_getEnumCaseMultiPayload();
  if (v24 <= 1)
  {
    if (v24)
    {
      v25 = 0xEF74657263655365;
      v26 = 0x6B616873646E6168;
    }

    else
    {
      v25 = 0xEB00000000746572;
      v26 = 0x636553796C726165;
    }

    goto LABEL_18;
  }

  if (v24 == 2)
  {
    v25 = 0xEC00000074657263;
    v26 = 0x655372657473616DLL;
    goto LABEL_18;
  }

  if (v24 == 3)
  {
    v25 = 0xEA00000000007374;
    v26 = 0x65726365536C6C61;
LABEL_18:
    sub_26C0CF5C4(v14, &qword_28047A870, &qword_26C14A5A0);
    goto LABEL_19;
  }

  v25 = 0xE400000000000000;
  v26 = 1701602409;
LABEL_19:
  sub_26C125B0C(v26, v25, 0xD000000000000012, 0x800000026C15ADB0);

  v28 = v34;
  *v34 = xmmword_26C14A570;
  *(v28 + 16) = 2;
  v32 = xmmword_26C14A570;
  v33 = 2;
  sub_26C0BBAF8();
  return swift_willThrowTypedImpl();
}

uint64_t sub_26C10A294@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X8>)
{
  v45 = a4;
  v40 = a1;
  v6 = v5;
  v41 = a2;
  v42 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A968, &unk_26C14A810);
  MEMORY[0x28223BE20](v8);
  v10 = &v39 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A870, &qword_26C14A5A0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v39 - v15;
  sub_26C0CF314(v6, &v39 - v15, &qword_28047A870, &qword_26C14A5A0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload < 3)
  {
    sub_26C0CF5C4(v16, &qword_28047A870, &qword_26C14A5A0);
    goto LABEL_7;
  }

  v18 = v40;
  v19 = v10;
  v20 = v41;
  v21 = v42;
  if (EnumCaseMultiPayload != 3)
  {
LABEL_7:
    if (qword_28047A770 != -1)
    {
      swift_once();
    }

    v29 = sub_26C148A9C();
    __swift_project_value_buffer(v29, qword_28047AD78);
    sub_26C0CF314(v6, v14, &qword_28047A870, &qword_26C14A5A0);
    v30 = swift_getEnumCaseMultiPayload();
    if (v30 <= 1)
    {
      if (v30)
      {
        v33 = 0x6B616873646E6168;
      }

      else
      {
        v33 = 0x636553796C726165;
      }

      if (v30)
      {
        v32 = 0xEF74657263655365;
      }

      else
      {
        v32 = 0xEB00000000746572;
      }

      v31 = v45;
    }

    else
    {
      v31 = v45;
      if (v30 == 2)
      {
        v32 = 0xEC00000074657263;
        v33 = 0x655372657473616DLL;
      }

      else
      {
        if (v30 != 3)
        {
          v32 = 0xE400000000000000;
          v33 = 1701602409;
          goto LABEL_22;
        }

        v32 = 0xEA00000000007374;
        v33 = 0x65726365536C6C61;
      }
    }

    sub_26C0CF5C4(v14, &qword_28047A870, &qword_26C14A5A0);
LABEL_22:
    sub_26C125B0C(v33, v32, 0xD000000000000018, 0x800000026C15ADF0);

    *v31 = xmmword_26C14A570;
    *(v31 + 16) = 2;
    v43 = xmmword_26C14A570;
    v44 = 2;
    sub_26C0BBAF8();
    return swift_willThrowTypedImpl();
  }

  v22 = v16;
  v23 = v19;
  result = sub_26C0CF55C(v22, v19, &qword_28047A968, &unk_26C14A810);
  v25 = BYTE6(v20);
  v26 = v20 >> 62;
  if ((v20 >> 62) > 1)
  {
    v27 = a5;
    if (v26 == 2)
    {
      v28 = *(v18 + 24);
    }

    else
    {
      v28 = 0;
    }
  }

  else
  {
    v27 = a5;
    if (v26)
    {
      v28 = v18 >> 32;
    }

    else
    {
      v28 = v25;
    }
  }

  if (v28 < v21)
  {
    __break(1u);
  }

  else
  {
    v34 = *(v8 + 44);
    v35 = sub_26C14889C();
    v37 = v36;
    sub_26C148B6C();
    sub_26C0E6794(&qword_28047AB38, MEMORY[0x277CC52C8], MEMORY[0x277CC52C0]);
    v38 = sub_26C148E7C();
    sub_26C1379CC(v23 + v34, 0x6974706D75736572, 0xEA00000000006E6FLL, v35, v37, v38, v27);
    sub_26C0BB9B0(v35, v37);
    return sub_26C0CF5C4(v23, &qword_28047A968, &unk_26C14A810);
  }

  return result;
}

uint64_t sub_26C10A6EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v48 = a4;
  v49 = a2;
  v50 = a3;
  v7 = sub_26C148B6C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AB18, &unk_26C14C110);
  MEMORY[0x28223BE20](v11);
  v12 = sub_26C148BDC();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v47 = sub_26C0E6794(&qword_28047AB38, MEMORY[0x277CC52C8], MEMORY[0x277CC52C0]);
  result = sub_26C148E7C();
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v44 = v10;
    v45 = v8;
    v43 = v7;
    v51 = v12;
    if (result)
    {
      v15 = result;
      v16 = sub_26C148FCC();
      *(v16 + 16) = v15;
      bzero((v16 + 32), v15);
    }

    else
    {
      v16 = MEMORY[0x277D84F90];
    }

    v52 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A840, &unk_26C14A530);
    sub_26C0FF1C4(&qword_28047ABE8, &qword_28047A840, &unk_26C14A530, MEMORY[0x277CC9C28]);
    sub_26C148BAC();
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A9C8, &qword_26C14D2A0);
    MEMORY[0x28223BE20](v17);
    v42 = v18;
    v41[-2] = v18;
    sub_26C148B8C();
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A970, "DG");
    v20 = v19[9];
    sub_26C0FF1C4(&qword_28047AB40, &qword_28047AB18, &unk_26C14C110, MEMORY[0x277CC53C0]);
    v41[1] = v20;
    sub_26C148BAC();
    v21 = sub_26C148E9C();
    v22 = *(*(v21 - 8) + 16);
    v46 = a1;
    v22(a5, a1, v21);
    v23 = v50;
    v24 = v50 >> 62;
    if ((v50 >> 62) > 1)
    {
      v26 = 0;
      result = v48;
      v25 = v49;
      if (v24 == 2)
      {
        v26 = *(v49 + 24);
      }
    }

    else
    {
      result = v48;
      v25 = v49;
      if (v24)
      {
        v26 = v49 >> 32;
      }

      else
      {
        v26 = BYTE6(v50);
      }
    }

    if (v26 >= result)
    {
      v27 = sub_26C14889C();
      v29 = v28;
      sub_26C0BB9B0(v25, v23);
      sub_26C0BBAA4(v27, v29);
      sub_26C11E5B4(v27, v29, a5);
      sub_26C0BB9B0(v27, v29);
      sub_26C0BB9B0(v27, v29);
      sub_26C0E6794(&qword_281590328, MEMORY[0x277CC5550], MEMORY[0x277CC5548]);
      v30 = v44;
      sub_26C148B2C();
      v31 = *(v13 + 16);
      v32 = v46;
      v33 = v51;
      v31(a5 + v19[10], v46 + *(v17 + 40), v51);
      v31(a5 + v19[11], v32 + *(v17 + 44), v33);
      v34 = v19[12];
      v35 = v43;
      v36 = sub_26C148E7C();
      sub_26C137650(0x6172742070612063, 0xEC00000063696666, v36, a5 + v34);
      v37 = v19[13];
      v38 = sub_26C148E7C();
      sub_26C137650(0x6172742070612073, 0xEC00000063696666, v38, a5 + v37);
      v39 = v19[14];
      v40 = sub_26C148E7C();
      sub_26C137650(0x7473616D20707865, 0xEA00000000007265, v40, a5 + v39);
      sub_26C0CF5C4(v32, &qword_28047A9C8, &qword_26C14D2A0);
      (*(v45 + 8))(v30, v35);
      return (*(v13 + 8))(v42, v51);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_26C10ACD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v41 = a3;
  v42 = a4;
  v43 = a2;
  v7 = sub_26C148B6C();
  v38 = *(v7 - 8);
  v39 = v7;
  MEMORY[0x28223BE20](v7);
  v36 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_26C148E9C();
  v40 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A970, "DG");
  v13 = v12[12];
  v14 = sub_26C148BDC();
  v15 = *(*(v14 - 8) + 16);
  v15(a5, a1 + v13, v14);
  v16 = v12[13];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A968, &unk_26C14A810);
  v15(a5 + v17[9], a1 + v16, v14);
  v18 = v12[14];
  v19 = v17[10];
  v37 = a5;
  v20 = a5 + v19;
  v21 = v9;
  v22 = v41;
  v15(v20, a1 + v18, v14);
  v23 = v40;
  (*(v40 + 16))(v11, a1, v21);
  v24 = v22 >> 62;
  if ((v22 >> 62) > 1)
  {
    v25 = 0;
    result = v42;
    v27 = v43;
    if (v24 == 2)
    {
      v25 = *(v43 + 24);
    }
  }

  else if (v24)
  {
    result = v42;
    v27 = v43;
    v25 = v43 >> 32;
  }

  else
  {
    v25 = BYTE6(v22);
    result = v42;
    v27 = v43;
  }

  if (v25 < result)
  {
    __break(1u);
  }

  else
  {
    v28 = sub_26C14889C();
    v30 = v29;
    sub_26C0BB9B0(v27, v22);
    sub_26C0BBAA4(v28, v30);
    sub_26C11E5B4(v28, v30, v11);
    sub_26C0BB9B0(v28, v30);
    sub_26C0BB9B0(v28, v30);
    sub_26C0E6794(&qword_281590328, MEMORY[0x277CC5550], MEMORY[0x277CC5548]);
    v31 = v36;
    sub_26C148B2C();
    v32 = v17[11];
    sub_26C0E6794(&qword_28047AB38, MEMORY[0x277CC52C8], MEMORY[0x277CC52C0]);
    v33 = v39;
    v34 = sub_26C148E7C();
    sub_26C137650(0x7473616D20736572, 0xEA00000000007265, v34, v37 + v32);
    sub_26C0CF5C4(a1, &qword_28047A970, "DG");
    (*(v38 + 8))(v31, v33);
    return (*(v23 + 8))(v11, v21);
  }

  return result;
}

uint64_t sub_26C10B0B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AC40, &unk_26C14D320);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_26C10B1D0(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, uint64_t a10, char a11)
{
  if (a11)
  {
    sub_26C0BBAA4(a2, a3);
    sub_26C0BB37C(a5, a6);

    sub_26C0BB37C(a8, a9);
  }

  else
  {
    sub_26C0BBAA4(a1, a2);
    sub_26C0BBAA4(a4, a5);
  }
}

uint64_t sub_26C10B28C(uint64_t result, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return v4;
}

unint64_t sub_26C10B2E8()
{
  result = qword_28047AC60;
  if (!qword_28047AC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28047AC60);
  }

  return result;
}

uint64_t ServerHandshakeStateMachine.Configuration.serverName.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ServerHandshakeStateMachine.Configuration.serverName.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ServerHandshakeStateMachine.Configuration.signingKey.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ServerHandshakeStateMachine.Configuration(0) + 20);

  return sub_26C10B478(v3, a1);
}

uint64_t type metadata accessor for ServerHandshakeStateMachine.Configuration(uint64_t a1)
{
  result = qword_281590680;
  if (!qword_281590680)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26C10B478(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AC08, &qword_26C14CDF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t ServerHandshakeStateMachine.Configuration.signingKey.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for ServerHandshakeStateMachine.Configuration(0) + 20);

  return sub_26C10B52C(a1, v3);
}

uint64_t sub_26C10B52C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AC08, &qword_26C14CDF0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void ServerHandshakeStateMachine.Configuration.quicTransportParameters.getter(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ServerHandshakeStateMachine.Configuration(0) + 24));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;

  sub_26C0BB37C(v4, v5);
}

__n128 ServerHandshakeStateMachine.Configuration.quicTransportParameters.setter(__n128 *a1)
{
  v5 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = (v1 + *(type metadata accessor for ServerHandshakeStateMachine.Configuration(0) + 24));
  sub_26C0BB344(*v3, v3[1]);
  result = v5;
  *v3 = v5;
  v3[2] = v2;
  return result;
}

uint64_t ServerHandshakeStateMachine.Configuration.alpn.getter()
{
  type metadata accessor for ServerHandshakeStateMachine.Configuration(0);
}

uint64_t ServerHandshakeStateMachine.Configuration.alpn.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ServerHandshakeStateMachine.Configuration(0) + 28);

  *(v1 + v3) = a1;
  return result;
}

uint64_t ServerHandshakeStateMachine.Configuration.enableEarlyData.setter(char a1)
{
  result = type metadata accessor for ServerHandshakeStateMachine.Configuration(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t ServerHandshakeStateMachine.Configuration.transportIsQUIC.setter(char a1)
{
  result = type metadata accessor for ServerHandshakeStateMachine.Configuration(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t ServerHandshakeStateMachine.Configuration.useRawEPSKs.setter(char a1)
{
  result = type metadata accessor for ServerHandshakeStateMachine.Configuration(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

__n128 ServerHandshakeStateMachine.Configuration.init(serverName:signingKey:quicTransportParameters:alpn:enableEarlyData:transportIsQUIC:useRawEPSKs:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __n128 *a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, char a7@<W6>, char a8@<W7>, char *a9@<X8>)
{
  v21 = *a4;
  v14 = a4[1].n128_u64[0];
  v15 = type metadata accessor for ServerHandshakeStateMachine.Configuration(0);
  v16 = v15[5];
  v17 = sub_26C148D8C();
  (*(*(v17 - 8) + 56))(&a9[v16], 1, 1, v17);
  v18 = &a9[v15[6]];
  *v18 = xmmword_26C14A540;
  *(v18 + 2) = 0;
  v19 = v15[7];
  *a9 = a1;
  *(a9 + 1) = a2;
  sub_26C10B52C(a3, &a9[v16]);
  sub_26C0BB344(*v18, *(v18 + 1));
  result = v21;
  *v18 = v21;
  *(v18 + 2) = v14;
  *&a9[v19] = a5;
  a9[v15[8]] = a6;
  a9[v15[9]] = a7;
  a9[v15[10]] = a8;
  return result;
}

void sub_26C10BAB0(uint64_t a1)
{
  sub_26C0CFD5C(319, qword_281592488, MEMORY[0x277D837D0]);
  if (v1 <= 0x3F)
  {
    sub_26C10BB90(319);
    if (v2 <= 0x3F)
    {
      sub_26C0CFD5C(319, &qword_281591F48, &type metadata for ByteBuffer);
      if (v3 <= 0x3F)
      {
        sub_26C10BBE8(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_26C10BB90(uint64_t a1)
{
  if (!qword_281590330)
  {
    sub_26C148D8C();
    v1 = sub_26C14902C();
    if (!v2)
    {
      atomic_store(v1, &qword_281590330);
    }
  }
}

void sub_26C10BBE8(uint64_t a1)
{
  if (!qword_281590300)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28047AC68, ";");
    v1 = sub_26C14902C();
    if (!v2)
    {
      atomic_store(v1, &qword_281590300);
    }
  }
}

uint64_t sub_26C10BC4C(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_26C10BCF8(uint64_t a1, unint64_t a2)
{
  v45 = *MEMORY[0x277D85DE8];
  v39[0] = a1;
  v39[1] = a2;
  *&v42 = a1;
  *(&v42 + 1) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A9D8, &qword_26C14A9A8);
  if (swift_dynamicCast())
  {
    sub_26C0D3CB0(__src, &v43);
    __swift_project_boxed_opaque_existential_1(&v43, v44);
    sub_26C14880C();
    __src[0] = v42;
    __swift_destroy_boxed_opaque_existential_1(&v43);
    goto LABEL_63;
  }

  v41 = 0;
  memset(__src, 0, sizeof(__src));
  sub_26C0CF5C4(__src, &qword_28047A9E0, &qword_26C14A9B0);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_67;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
    *&__src[0] = a1;
    *(&__src[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = __src;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = sub_26C1490AC();
  }

  sub_26C11E1C8(&v43, v4, v5);
  v6 = *(&v43 + 1);
  v7 = v43;
  if (*(&v43 + 1) >> 60 != 15)
  {
    __src[0] = v43;
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&__src[0] = sub_26C11F250(v8);
  *(&__src[0] + 1) = v9;
  MEMORY[0x28223BE20](*&__src[0]);
  v34[2] = v39;
  v10 = sub_26C0D2B5C(sub_26C11F168, v34);
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = *(&__src[0] + 1) >> 62;
  if ((*(&__src[0] + 1) >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(*&__src[0] + 16);
      v18 = *(*&__src[0] + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (v20)
      {
        goto LABEL_70;
      }

      if (v13 != v21)
      {
        goto LABEL_23;
      }
    }

    else if (v13)
    {
      v22 = 0;
      goto LABEL_60;
    }
  }

  else if (v17)
  {
    if (__OFSUB__(DWORD1(__src[0]), __src[0]))
    {
      goto LABEL_71;
    }

    if (v13 != DWORD1(__src[0]) - LODWORD(__src[0]))
    {
LABEL_23:
      if (v17 == 2)
      {
        v22 = *(*&__src[0] + 24);
      }

      else if (v17 == 1)
      {
        v22 = *&__src[0] >> 32;
      }

      else
      {
        v22 = BYTE14(__src[0]);
      }

LABEL_60:
      if (v22 >= v13)
      {
        sub_26C14887C();
LABEL_62:

        goto LABEL_63;
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }
  }

  else if (v13 != BYTE14(__src[0]))
  {
    goto LABEL_23;
  }

  v36 = v7;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v23 = v10 & 0xFFFFFFFFFFFFLL;
  }

  *(&v42 + 7) = 0;
  *&v42 = 0;
  if (4 * v23 == v12 >> 14)
  {
    goto LABEL_57;
  }

  v35 = v6;
  LOBYTE(v24) = 0;
  v25 = (v10 >> 59) & 1;
  if ((v11 & 0x1000000000000000) == 0)
  {
    LOBYTE(v25) = 1;
  }

  v26 = 4 << v25;
  v37 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v38 = v11 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v27 = v16 & 0xC;
    v28 = v16;
    if (v27 == v26)
    {
      v28 = sub_26C0CEF7C(v16, v14, v15);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v23)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v8 = sub_26C148F6C();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v31 = sub_26C148F9C();
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v43 = v14;
      *(&v43 + 1) = v38;
      v31 = *(&v43 + v29);
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v30 = v37;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = sub_26C1490AC();
      }

      v31 = *(v30 + v29);
      if (v27 != v26)
      {
LABEL_46:
        if ((v15 & 0x1000000000000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_50;
      }
    }

    v16 = sub_26C0CEF7C(v16, v14, v15);
    if ((v15 & 0x1000000000000000) == 0)
    {
LABEL_47:
      v16 = (v16 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_52;
    }

LABEL_50:
    if (v23 <= v16 >> 16)
    {
      goto LABEL_66;
    }

    v16 = sub_26C148F7C();
LABEL_52:
    *(&v42 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_65;
    }

    if (v24 == 14)
    {
      *&v43 = v42;
      *(&v43 + 6) = *(&v42 + 6);
      sub_26C14888C();
      LOBYTE(v24) = 0;
    }
  }

  while (4 * v23 != v16 >> 14);
  v6 = v35;
  if (v24)
  {
    *&v43 = v42;
    *(&v43 + 6) = *(&v42 + 6);
    sub_26C14888C();
    sub_26C0BB344(v36, v6);
    goto LABEL_62;
  }

LABEL_57:

  sub_26C0BB344(v36, v6);
LABEL_63:
  v32 = __src[0];
  sub_26C0BBAA4(*&__src[0], *(&__src[0] + 1));

  sub_26C0BB9B0(v32, *(&v32 + 1));
  return v32;
}

BOOL sub_26C10C218(__int16 a1, uint64_t a2)
{
  v2 = (a2 + 33);
  v3 = *(a2 + 16) + 1;
  do
  {
    if (!--v3)
    {
      break;
    }

    v4 = *v2;
    v5 = *(v2 - 1);
    v2 += 2;
  }

  while (v5 != a1 || v4 != HIBYTE(a1));
  return v3 != 0;
}

BOOL sub_26C10C258(unsigned __int8 a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != a1);
  return v4 != 0;
}

BOOL sub_26C10C288(unsigned __int16 a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != a1);
  return v4 != 0;
}

uint64_t sub_26C10C2B8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A948, &qword_26C14A7F0);
  MEMORY[0x28223BE20](v4);
  v6 = &v16 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A870, &qword_26C14A5A0);
  MEMORY[0x28223BE20](v7);
  v9 = &v16 - v8;
  sub_26C0CF314(v2, &v16 - v8, &qword_28047A870, &qword_26C14A5A0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if ((EnumCaseMultiPayload - 1) >= 3)
  {
    if (!EnumCaseMultiPayload)
    {
      sub_26C0CF55C(v9, v6, &qword_28047A948, &qword_26C14A7F0);
      v11 = *(v4 + 44);
      v12 = sub_26C148BDC();
      v13 = *(v12 - 8);
      (*(v13 + 16))(a1, &v6[v11], v12);
      sub_26C0CF5C4(v6, &qword_28047A948, &qword_26C14A7F0);
      return (*(v13 + 56))(a1, 0, 1, v12);
    }
  }

  else
  {
    sub_26C0CF5C4(v9, &qword_28047A870, &qword_26C14A5A0);
  }

  v15 = sub_26C148BDC();
  return (*(*(v15 - 8) + 56))(a1, 1, 1, v15);
}

void sub_26C10C4E4(int64x2_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, __int128 *a6@<X5>, uint64_t a7@<X8>)
{
  v412 = a6;
  v8 = v7;
  v371 = a5;
  *&v415 = a2;
  v449 = a1;
  v372 = a7;
  v388 = type metadata accessor for HandshakeState.ServerHelloState.SessionData(0);
  MEMORY[0x28223BE20](v388);
  v366 = (&v338 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v409 = type metadata accessor for SessionTicket(0);
  v411 = *(v409 - 8);
  v12 = MEMORY[0x28223BE20](v409);
  v363 = &v338 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v367 = (&v338 - v15);
  MEMORY[0x28223BE20](v14);
  v365 = &v338 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A960, "L6");
  MEMORY[0x28223BE20](v17 - 8);
  v381 = &v338 - v18;
  v19 = type metadata accessor for GeneratedEphemeralPrivateKey(0);
  v379 = *(v19 - 8);
  v380 = v19;
  MEMORY[0x28223BE20](v19);
  v393 = &v338 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A948, &qword_26C14A7F0);
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v369 = &v338 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v370 = &v338 - v24;
  v384 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A870, &qword_26C14A5A0);
  v25 = MEMORY[0x28223BE20](v384);
  v389 = &v338 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v368 = &v338 - v28;
  MEMORY[0x28223BE20](v27);
  v383 = &v338 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A930, qword_26C14C120);
  MEMORY[0x28223BE20](v30 - 8);
  v396 = &v338 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AC40, &unk_26C14D320);
  v33 = MEMORY[0x28223BE20](v32 - 8);
  v403 = &v338 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x28223BE20](v33);
  v377 = &v338 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v387 = &v338 - v38;
  MEMORY[0x28223BE20](v37);
  v400 = &v338 - v39;
  v40 = type metadata accessor for PAKEClientState(0);
  v41 = *(v40 - 8);
  v42 = MEMORY[0x28223BE20](v40);
  v406 = (&v338 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v42);
  v399 = &v338 - v44;
  v45 = sub_26C148BDC();
  v46 = *(v45 - 8);
  v47 = MEMORY[0x28223BE20](v45);
  v375 = &v338 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = MEMORY[0x28223BE20](v47);
  v382 = &v338 - v50;
  v51 = MEMORY[0x28223BE20](v49);
  v395 = &v338 - v52;
  MEMORY[0x28223BE20](v51);
  v397 = &v338 - v53;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A890, &qword_26C14A5C0);
  v55 = MEMORY[0x28223BE20](v54 - 8);
  v391 = &v338 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = MEMORY[0x28223BE20](v55);
  v386 = &v338 - v58;
  MEMORY[0x28223BE20](v57);
  v408 = (&v338 - v59);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AC50, "N;");
  v61 = MEMORY[0x28223BE20](v60 - 8);
  v394 = &v338 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = MEMORY[0x28223BE20](v61);
  v374 = &v338 - v64;
  v65 = MEMORY[0x28223BE20](v63);
  v376 = &v338 - v66;
  v67 = MEMORY[0x28223BE20](v65);
  v385 = &v338 - v68;
  MEMORY[0x28223BE20](v67);
  v407 = (&v338 - v69);
  v70 = type metadata accessor for HandshakeState.ServerHelloState(0);
  v71 = MEMORY[0x28223BE20](v70);
  v73 = &v338 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = &v73[v71[8]];
  *v74 = 0;
  v373 = v74;
  v74[2] = 1;
  v390 = v71[9];
  v73[v390] = 0;
  v364 = v71[10];
  v73[v364] = 0;
  v75 = &v73[v71[11]];
  *v75 = 0;
  v392 = v75;
  v75[2] = 1;
  v404 = v71;
  v76 = v71[12];
  v405 = v41;
  v77 = *(v41 + 56);
  v414 = v73;
  v413 = v76;
  v410 = v40;
  v402 = v41 + 56;
  v401 = v77;
  v77(&v73[v76], 1, 1, v40);
  if (qword_28047A758 != -1)
  {
    swift_once();
  }

  v378 = sub_26C148A9C();
  v78 = __swift_project_value_buffer(v378, qword_28047AC20);
  v79 = sub_26C148A7C();
  v80 = sub_26C148FFC();
  if (os_log_type_enabled(v79, v80))
  {
    v81 = swift_slowAlloc();
    *&v398 = v78;
    v82 = a3;
    v83 = a4;
    v84 = v81;
    *v81 = 0;
    _os_log_impl(&dword_26C0B5000, v79, v80, "validating server hello", v81, 2u);
    v85 = v84;
    a4 = v83;
    a3 = v82;
    v8 = v7;
    v78 = v398;
    MEMORY[0x26D69C3A0](v85, -1, -1);
  }

  v86 = v415;
  v87 = *(v415 + 24);
  v88 = *(v415 + 8);
  if (qword_28047A728 != -1)
  {
    v398 = *(v415 + 8);
    v362 = v87;
    swift_once();
    v87 = v362;
    v88 = v398;
  }

  v89 = v449;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(v88, unk_280480350), vceqq_s64(v87, *(&xmmword_280480358 + 8))))) & 1) != 0 || v86[2].i64[1] != v449[4].i64[1] || (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(v86[3], v449[5]), vceqq_s64(v86[4], v449[6])))) & 1) == 0 || v86->i8[0] != 3 || v86->i8[1] != 3 || v86[5].i8[2] || (v98 = sub_26C121E5C(), v86 = v415, (v98 & 0x1FFFF) != 0x403))
  {
    sub_26C0BB9B0(a3, a4);
    sub_26C0CF37C(v86);
    v90 = sub_26C148A7C();
    v91 = sub_26C14900C();
    if (os_log_type_enabled(v90, v91))
    {
      v92 = swift_slowAlloc();
      *v92 = 0;
      _os_log_impl(&dword_26C0B5000, v90, v91, "server hello invalid for QUIC", v92, 2u);
      v93 = v92;
      v89 = v449;
      MEMORY[0x26D69C3A0](v93, -1, -1);
    }

    v94 = xmmword_26C14A8F0;
LABEL_13:
    v95 = v412;
    *v412 = v94;
    *(v95 + 16) = 2;
    v433 = v94;
    LOBYTE(v434) = 2;
    sub_26C0BBAF8();
    swift_willThrowTypedImpl();
LABEL_14:
    v96 = type metadata accessor for HandshakeState.ClientHelloState;
    v97 = v89;
    goto LABEL_15;
  }

  v99 = v89[7].i64[0];
  v100 = *(v415 + 80);
  v101 = *(v99 + 16);
  v102 = (v99 + 32);
  v103 = v409;
  v104 = v411;
  do
  {
    if (!v101)
    {
      goto LABEL_80;
    }

    v105 = *v102++;
    --v101;
  }

  while (v105 != v100);
  v106 = &v414[v404[7]];
  v343 = *(v415 + 80);
  *v106 = v100;
  v106[2] = 0;
  v444 = 0;
  v445 = 0;
  v446 = xmmword_26C14C1D0;
  v341 = *(v104 + 56);
  v342 = v104 + 56;
  v341(v407, 1, 1, v103);
  v107 = type metadata accessor for GeneralEPSK(0);
  v346 = *(v107 - 8);
  v347 = v107;
  v344 = *(v346 + 56);
  v345 = v346 + 56;
  v344(v408, 1, 1);
  v443 = MEMORY[0x277D84FA0];
  v108 = v86[5].i64[1];
  v361 = *(v108 + 16);
  if (!v361)
  {
    *&v359[8] = v8;
    v348 = 0;
    goto LABEL_91;
  }

  v362.i64[0] = v108;
  sub_26C11EFF4(v86, &v433);
  if (!*(v362.i64[0] + 16))
  {
LABEL_79:
    __break(1u);
LABEL_80:
    v154 = v100;
    sub_26C0BB9B0(a3, a4);
    v155 = v86;
    v156 = sub_26C148A7C();
    v157 = sub_26C14900C();
    sub_26C0CF37C(v155);
    if (os_log_type_enabled(v156, v157))
    {
      v158 = swift_slowAlloc();
      v159 = swift_slowAlloc();
      *&v433 = v159;
      *v158 = 136315138;
      v160 = sub_26C0D7760(v154);
      v162 = sub_26C0E5DE8(v160, v161, &v433);

      *(v158 + 4) = v162;
      _os_log_impl(&dword_26C0B5000, v156, v157, "server hello chose a cipher suite we didn't offer (%s)", v158, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v159);
      MEMORY[0x26D69C3A0](v159, -1, -1);
      v163 = v158;
      v89 = v449;
      MEMORY[0x26D69C3A0](v163, -1, -1);
    }

    v94 = xmmword_26C14A8E0;
    goto LABEL_13;
  }

  v109 = 0;
  v352 = (v405 + 48);
  v340 = (v411 + 48);
  v348 = 0;
  v349 = v362.i64[0] + 32;
  v351 = 0xCFFFFFFFFFFFFF00;
  v360 = a4;
LABEL_27:
  v89 = (v349 + 88 * v109);
  v110 = v109 + 1;
  while (1)
  {
    *&v398 = v110;
    v111 = *v89;
    *v441 = v89[1];
    v440 = v111;
    v112 = v89[2];
    v113 = v89[3];
    v114 = v89[4];
    v442 = v89[5].u8[0];
    *&v441[48] = v114;
    *&v441[32] = v113;
    *&v441[16] = v112;
    v115 = 42;
    switch(v442 >> 4)
    {
      case 1:

        v115 = 10;
        break;
      case 2:
        sub_26C0B8B24(v440, BYTE8(v440) & 1);
        v115 = 43;
        break;
      case 3:
        sub_26C0FF14C(v440, *(&v440 + 1), v441[0] & 1);
        v115 = 16;
        break;
      case 4:
        sub_26C0FF158(v440, *(&v440 + 1), *v441);
        v115 = 51;
        break;
      case 5:
        break;
      case 6:

        v115 = 13;
        break;
      case 7:
        sub_26C0B8B24(v440, BYTE8(v440) & 1);
        v115 = 20;
        break;
      case 8:
        sub_26C0BBAA4(v440, *(&v440 + 1));
        v115 = 57;
        break;
      case 9:

        v115 = 45;
        break;
      case 0xA:
        sub_26C10B28C(v440, *(&v440 + 1), v441[0] & 1);
        v115 = 41;
        break;
      case 0xB:
        v115 = 58;
        break;
      case 0xC:
        v435 = *&v441[16];
        v436 = *&v441[32];
        v437[0] = *&v441[48];
        v433 = v440;
        v434 = *v441;
        LOBYTE(v437[1]) = v442 & 0xF;
        sub_26C0FF0B0(&v433, &v430);
        v115 = 35387;
        break;
      case 0xD:
        v116 = v440;
        sub_26C0BBAA4(*(&v440 + 1), *v441);
        v115 = v116;
        break;
      default:
        sub_26C0BB37C(v440, *(&v440 + 1));
        v115 = 0;
        break;
    }

    if ((sub_26C11D97C(&v433, v115, &qword_28047AD28, &qword_26C14D3B0, &type metadata for ExtensionType) & 1) == 0)
    {

      sub_26C0BB9B0(a3, a4);
      v164 = v415;
      sub_26C0CF37C(v415);
      sub_26C0CF37C(v164);
      sub_26C0BE40C(&v440, &v433);
      v165 = sub_26C148A7C();
      v166 = sub_26C14900C();
      sub_26C0BE468(&v440);
      if (os_log_type_enabled(v165, v166))
      {
        v167 = swift_slowAlloc();
        v168 = swift_slowAlloc();
        *&v430 = v168;
        *v167 = 136315138;
        v435 = *&v441[16];
        v436 = *&v441[32];
        v437[0] = *&v441[48];
        LOBYTE(v437[1]) = v442;
        v433 = v440;
        v434 = *v441;
        sub_26C1288BC(&v423);
        v169 = ExtensionType.description.getter();
        v171 = sub_26C0E5DE8(v169, v170, &v430);

        *(v167 + 4) = v171;
        _os_log_impl(&dword_26C0B5000, v165, v166, "server offered duplicate extension of type %s on server hello", v167, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v168);
        MEMORY[0x26D69C3A0](v168, -1, -1);
        MEMORY[0x26D69C3A0](v167, -1, -1);
      }

      v172 = xmmword_26C14A8F0;
      goto LABEL_87;
    }

    v117 = *&v441[1] | ((*&v441[5] | (v441[7] << 16)) << 32);
    v118 = v442 >> 4;
    v86 = v415;
    if (v118 == 4)
    {
      if ((v117 & 0x30000000000000) == 0x10000000000000)
      {
        *v359 = v351 & (v117 << 8) | v441[0];
        v134 = v440;
        *&v359[8] = *&v441[8];
        v135 = *(&v440 + 1);
        sub_26C0FEE1C(v444, v445, v446);
        v444 = v134;
        v445 = v135;
        v446 = *v359;
        v86 = v415;
        goto LABEL_61;
      }

      goto LABEL_60;
    }

    if (v118 == 10)
    {
      if (v441[0])
      {
        *v359 = v440;
        v136 = type metadata accessor for HandshakeState.ClientHelloState(0);
        v137 = v449;
        v138 = v394;
        sub_26C0CF314(v449->i64 + *(v136 + 40), v394, &qword_28047AC50, "N;");
        v139 = (*v340)(v138, 1, v409);
        if (v139 == 1)
        {
          sub_26C0CF5C4(v138, &qword_28047AC50, "N;");
          v140 = *(v137->i64 + *(v136 + 44));
          if (*(v140 + 16))
          {
            if (!*v359)
            {
              v141 = sub_26C148A7C();
              v142 = sub_26C148FFC();
              if (os_log_type_enabled(v141, v142))
              {
                v143 = swift_slowAlloc();
                *&v359[8] = v141;
                v144 = v143;
                *v143 = 0;
                _os_log_impl(&dword_26C0B5000, *&v359[8], v142, "external psk accepted by server", v143, 2u);
                v145 = v144;
                v141 = *&v359[8];
                MEMORY[0x26D69C3A0](v145, -1, -1);
              }

              if (!*(v140 + 16))
              {
                __break(1u);
                goto LABEL_201;
              }

              v146 = v140 + ((*(v346 + 80) + 32) & ~*(v346 + 80));
              v147 = v391;
              sub_26C11F050(v146, v391, type metadata accessor for GeneralEPSK);
              sub_26C0BE468(&v440);
              v86 = v408;
              v89 = &qword_28047A890;
              sub_26C0CF5C4(v408, &qword_28047A890, &qword_26C14A5C0);
              (v344)(v147, 0, 1, v347);
              sub_26C0CF55C(v147, v86, &qword_28047A890, &qword_26C14A5C0);
              v414[v390] = 1;
              v148 = v392;
              *v392 = 0;
              v148[2] = 0;
              v109 = v398;
              if (v361 == v398)
              {
                *&v359[8] = v8;
                v86 = v415;
                sub_26C0CF37C(v415);
                HIDWORD(v348) = 1;
                goto LABEL_90;
              }

              v149 = *(v362.i64[0] + 16);
              HIDWORD(v348) = 1;
              a4 = v360;
              if (v398 < v149)
              {
                goto LABEL_27;
              }

              goto LABEL_79;
            }

            sub_26C0BB9B0(a3, v360);
            v319 = v415;
            sub_26C0CF37C(v415);
            sub_26C0CF37C(v319);
            v315 = sub_26C148A7C();
            v316 = sub_26C14900C();
            if (!os_log_type_enabled(v315, v316))
            {
              goto LABEL_189;
            }

            v317 = swift_slowAlloc();
            *v317 = 0;
            v318 = "server hello is trying to use a psk at an index we didn't offer";
          }

          else
          {

            sub_26C0BB9B0(a3, v360);
            v314 = v415;
            sub_26C0CF37C(v415);
            sub_26C0CF37C(v314);
            v315 = sub_26C148A7C();
            v316 = sub_26C14900C();
            if (!os_log_type_enabled(v315, v316))
            {
LABEL_189:

              v172 = xmmword_26C14A8E0;
LABEL_87:
              v173 = v412;
              *v412 = v172;
              *(v173 + 16) = 2;
              v433 = v172;
              LOBYTE(v434) = 2;
              sub_26C0BBAF8();
              swift_willThrowTypedImpl();
LABEL_88:
              sub_26C0BE468(&v440);
              goto LABEL_137;
            }

            v317 = swift_slowAlloc();
            *v317 = 0;
            v318 = "server hello sent a pre_shared_key extension when we didn't offer psks";
          }

          _os_log_impl(&dword_26C0B5000, v315, v316, v318, v317, 2u);
          MEMORY[0x26D69C3A0](v317, -1, -1);
          goto LABEL_189;
        }

        *&v359[8] = v8;
        sub_26C11D8DC(v138, v367, type metadata accessor for SessionTicket);
        if (*v359)
        {

          sub_26C0BB9B0(a3, v360);
          v320 = v415;
          sub_26C0CF37C(v415);
          sub_26C0CF37C(v320);
          v321 = sub_26C148A7C();
          v322 = sub_26C14900C();
          if (!os_log_type_enabled(v321, v322))
          {
LABEL_196:

LABEL_199:
            v337 = v412;
            *v412 = xmmword_26C14A8E0;
            *(v337 + 16) = 2;
            v433 = xmmword_26C14A8E0;
            LOBYTE(v434) = 2;
            sub_26C0BBAF8();
            swift_willThrowTypedImpl();
            sub_26C0BE468(&v440);
            v231 = type metadata accessor for SessionTicket;
            v232 = v367;
            goto LABEL_136;
          }

          v323 = swift_slowAlloc();
          *v323 = 0;
          _os_log_impl(&dword_26C0B5000, v321, v322, "server hello is trying to resume a session we didnt offer", v323, 2u);
          v324 = v323;
        }

        else
        {
          if (v343 == *(v367 + *(v409 + 44)))
          {
            v150 = sub_26C148A7C();
            v89 = sub_26C148FFC();
            if (os_log_type_enabled(v150, v89))
            {
              v151 = swift_slowAlloc();
              *v151 = 0;
              _os_log_impl(&dword_26C0B5000, v150, v89, "resuming session", v151, 2u);
              MEMORY[0x26D69C3A0](v151, -1, -1);
            }

            sub_26C0BE468(&v440);
            v86 = v407;
            sub_26C0CF5C4(v407, &qword_28047AC50, "N;");
            sub_26C11D8DC(v367, v86, type metadata accessor for SessionTicket);
            v341(v86, 0, 1, v409);
            v414[v364] = 1;
            v152 = v392;
            *v392 = 0;
            v152[2] = 0;
            if (v361 == v398)
            {
              v86 = v415;
              sub_26C0CF37C(v415);
              LODWORD(v348) = 1;
              goto LABEL_90;
            }

            v153 = *(v362.i64[0] + 16);
            LODWORD(v348) = 1;
            v109 = v398;
            a4 = v360;
            v8 = *&v359[8];
            if (v398 < v153)
            {
              goto LABEL_27;
            }

            goto LABEL_79;
          }

          sub_26C0BB9B0(a3, v360);
          v325 = v415;
          sub_26C0CF37C(v415);
          sub_26C0CF37C(v325);
          sub_26C11F050(v367, v363, type metadata accessor for SessionTicket);
          v321 = sub_26C148A7C();
          v326 = sub_26C14900C();
          if (!os_log_type_enabled(v321, v326))
          {

            sub_26C11F1F0(v363, type metadata accessor for SessionTicket);
            goto LABEL_199;
          }

          v327 = swift_slowAlloc();
          v328 = swift_slowAlloc();
          *&v433 = v328;
          *v327 = 136315394;
          v329 = sub_26C0D7760(v343);
          v331 = sub_26C0E5DE8(v329, v330, &v433);

          *(v327 + 4) = v331;
          *(v327 + 12) = 2080;
          v332 = v363;
          v333 = sub_26C0D7760(*(v363 + *(v409 + 44)));
          v335 = v334;
          sub_26C11F1F0(v332, type metadata accessor for SessionTicket);
          v336 = sub_26C0E5DE8(v333, v335, &v433);

          *(v327 + 14) = v336;
          _os_log_impl(&dword_26C0B5000, v321, v326, "server negotiated cipher suite %s, expected %s", v327, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x26D69C3A0](v328, -1, -1);
          v324 = v327;
        }

        MEMORY[0x26D69C3A0](v324, -1, -1);
        goto LABEL_196;
      }

LABEL_60:
      sub_26C0BE468(&v440);
      goto LABEL_61;
    }

    if (v118 != 12 || (v442 & 1) == 0)
    {
      goto LABEL_60;
    }

    v356 = v441[0];
    v357 = *(&v440 + 1);
    *v359 = v440;
    *&v359[8] = *&v441[8];
    v354 = *&v441[40];
    v355 = *&v441[24];
    v353 = *&v441[56];
    v438[2] = *&v441[16];
    v438[3] = *&v441[32];
    v438[4] = *&v441[48];
    v438[0] = v440;
    v438[1] = *v441;
    v439 = v442 & 0xF;
    sub_26C0FF0B0(v438, &v433);
    v119 = sub_26C148A7C();
    v350 = sub_26C148FEC();
    v358 = v119;
    if (os_log_type_enabled(v119, v350))
    {
      v120 = swift_slowAlloc();
      *v120 = 0;
      _os_log_impl(&dword_26C0B5000, v358, v350, "Received PAKEServerHello", v120, 2u);
      MEMORY[0x26D69C3A0](v120, -1, -1);
    }

    v121 = type metadata accessor for HandshakeState.ClientHelloState(0);
    v122 = v403;
    sub_26C0CF314(v449->i64 + *(v121 + 48), v403, &qword_28047AC40, &unk_26C14D320);
    if ((*v352)(v122, 1, v410) == 1)
    {

      sub_26C0BB9B0(a3, v360);
      v216 = v122;
      v217 = v415;
      sub_26C0CF37C(v415);
      sub_26C0CF37C(v217);
      sub_26C0CF5C4(v216, &qword_28047AC40, &unk_26C14D320);
      v218 = sub_26C148A7C();
      v219 = sub_26C14900C();
      if (os_log_type_enabled(v218, v219))
      {
        v220 = swift_slowAlloc();
        *v220 = 0;
        _os_log_impl(&dword_26C0B5000, v218, v219, "server hello sent a pake extension when we did not offer a pake", v220, 2u);
        MEMORY[0x26D69C3A0](v220, -1, -1);
      }

      v221 = v412;
      *v412 = xmmword_26C14A8E0;
      *(v221 + 16) = 2;
      v433 = xmmword_26C14A8E0;
      LOBYTE(v434) = 2;
      sub_26C0BBAF8();
      swift_willThrowTypedImpl();
      sub_26C0BE468(&v440);
      goto LABEL_88;
    }

    v123 = v122;
    v124 = v406;
    sub_26C11D8DC(v123, v406, type metadata accessor for PAKEClientState);
    v125 = v124;
    v126 = *v124;
    v127 = v415;
    if (v126 != *v359)
    {
      break;
    }

    *(&v437[2] + 9) = *(v125 + 105);
    v128 = v125[5];
    v437[0] = v125[4];
    v437[1] = v128;
    v437[2] = v125[6];
    v129 = v125[1];
    v433 = *v125;
    v434 = v129;
    v130 = v125[3];
    v435 = v125[2];
    v436 = v130;
    v447[0] = *(v437 + 8);
    v447[1] = *(&v437[1] + 8);
    v447[2] = *(&v437[2] + 8);
    v448 = BYTE8(v437[3]);
    sub_26C0ECD38(&v433, &v430);
    if (qword_28047A730 != -1)
    {
      swift_once();
    }

    v131 = sub_26C0D8220(v447);
    sub_26C0E6E80(&v433);
    if (!v131)
    {

      sub_26C0BB9B0(a3, v360);
      v226 = v415;
      sub_26C0CF37C(v415);
      sub_26C0CF37C(v226);
      v227 = sub_26C148A7C();
      v228 = sub_26C14900C();
      if (os_log_type_enabled(v227, v228))
      {
        v229 = swift_slowAlloc();
        *v229 = 0;
        _os_log_impl(&dword_26C0B5000, v227, v228, "selected PAKE credential has no attempts remaining", v229, 2u);
        MEMORY[0x26D69C3A0](v229, -1, -1);
      }

      v230 = v412;
      *v412 = xmmword_26C14C1B0;
      *(v230 + 16) = 2;
      v430 = xmmword_26C14C1B0;
      LOBYTE(v431[0]) = 2;
      sub_26C0BBAF8();
      goto LABEL_132;
    }

    LOWORD(v430) = *v359;
    WORD3(v430) = *&v359[6];
    *(&v430 + 2) = *v359 >> 16;
    *(&v430 + 1) = v357;
    LOBYTE(v431[0]) = v356;
    *(v431 + 1) = v117;
    BYTE7(v431[0]) = BYTE6(v117);
    *(v431 + 5) = WORD2(v117);
    *(v431 + 8) = *&v359[8];
    *(&v431[1] + 8) = v355;
    *(&v431[2] + 8) = v354;
    *(&v431[3] + 1) = v353;
    v132 = v406;
    sub_26C0EA90C(&v430, &v423);
    if (v8)
    {

      sub_26C0BB9B0(a3, v360);
      v233 = v415;
      sub_26C0CF37C(v415);
      sub_26C0CF37C(v233);
      v234 = v423;
      v235 = v424;
      sub_26C0CF018(v423, *(&v423 + 1), v424);
      v236 = sub_26C148A7C();
      v237 = sub_26C14900C();
      sub_26C0CF030(v234, *(&v234 + 1), v235);
      if (os_log_type_enabled(v236, v237))
      {
        v238 = swift_slowAlloc();
        v239 = swift_slowAlloc();
        *v238 = 138412290;
        sub_26C0BBAF8();
        swift_allocError();
        *v240 = v234;
        *(v240 + 16) = v235;
        sub_26C0CF018(v234, *(&v234 + 1), v235);
        v241 = _swift_stdlib_bridgeErrorToNSError();
        *(v238 + 4) = v241;
        *v239 = v241;
        _os_log_impl(&dword_26C0B5000, v236, v237, "failed to process Server Hello pake share %@", v238, 0xCu);
        sub_26C0CF5C4(v239, &qword_28047A880, &qword_26C14A5B0);
        MEMORY[0x26D69C3A0](v239, -1, -1);
        MEMORY[0x26D69C3A0](v238, -1, -1);
      }

      v242 = v406;
      v243 = v406[5];
      v244 = v406[3];
      v427 = v406[4];
      v428 = v243;
      v245 = v406[5];
      v429[0] = v406[6];
      *(v429 + 9) = *(v406 + 105);
      v246 = v406[1];
      v423 = *v406;
      v424 = v246;
      v247 = v406[3];
      v249 = *v406;
      v248 = v406[1];
      v425 = v406[2];
      v426 = v247;
      v420 = v427;
      v421 = v245;
      v422[0] = v406[6];
      *(v422 + 9) = *(v406 + 105);
      v416 = v249;
      v417 = v248;
      v418 = v425;
      v419 = v244;
      sub_26C0ECD38(&v423, &v430);
      sub_26C0E6EB0();
      v431[3] = v420;
      v431[4] = v421;
      v432[0] = v422[0];
      *(v432 + 9) = *(v422 + 9);
      v430 = v416;
      v431[0] = v417;
      v431[1] = v418;
      v431[2] = v419;
      sub_26C0E6E80(&v430);
      v250 = v412;
      *v412 = v234;
      *(v250 + 16) = v235;
      v416 = v234;
      LOBYTE(v417) = v235;
      sub_26C0BBAF8();
      swift_willThrowTypedImpl();
      sub_26C0BE468(&v440);
      sub_26C0BE468(&v440);
      v231 = type metadata accessor for PAKEClientState;
      v232 = v242;
      goto LABEL_136;
    }

    v8 = 0;
    sub_26C0BE468(&v440);
    sub_26C0BE468(&v440);
    v133 = v413;
    sub_26C0CF5C4(&v414[v413], &qword_28047AC40, &unk_26C14D320);
    sub_26C11D8DC(v132, &v414[v133], type metadata accessor for PAKEClientState);
    v401(&v414[v133], 0, 1, v410);
    v86 = v415;
LABEL_61:
    if (v361 == v398)
    {
      *&v359[8] = v8;
      sub_26C0CF37C(v86);
LABEL_90:
      v89 = v449;
      a4 = v360;
LABEL_91:
      v174 = v400;
      sub_26C0CF314(&v414[v413], v400, &qword_28047AC40, &unk_26C14D320);
      v175 = *(v405 + 48);
      v405 += 48;
      v406 = v175;
      if ((v175)(v174, 1, v410) == 1)
      {
        sub_26C0CF5C4(v174, &qword_28047AC40, &unk_26C14D320);
        v176 = v446;
        if (v446 >> 60 == 15)
        {

          sub_26C0BB9B0(a3, a4);
LABEL_110:
          sub_26C0CF37C(v86);
          v193 = sub_26C148A7C();
          v194 = sub_26C14900C();
          if (os_log_type_enabled(v193, v194))
          {
            v195 = swift_slowAlloc();
            v196 = swift_slowAlloc();
            *&v423 = v196;
            *v195 = 136315138;
            swift_beginAccess();
            if (v446 >> 60 == 15)
            {
              v197 = 0xE300000000000000;
              v198 = 7104878;
            }

            else
            {
              LOWORD(v433) = v444;
              *(&v433 + 1) = v445;
              v434 = v446;
              v198 = sub_26C14075C();
              v197 = v205;
            }

            v206 = sub_26C0E5DE8(v198, v197, &v423);

            *(v195 + 4) = v206;
            _os_log_impl(&dword_26C0B5000, v193, v194, "unsupported server key share, expected secp384 or x25519 or x25519-MLKEM768 got %s", v195, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v196);
            MEMORY[0x26D69C3A0](v196, -1, -1);
            MEMORY[0x26D69C3A0](v195, -1, -1);
          }

          v207 = v449;
          v208 = v412;
          *v412 = xmmword_26C14A8E0;
          *(v208 + 16) = 2;
          v433 = xmmword_26C14A8E0;
          LOBYTE(v434) = 2;
          sub_26C0BBAF8();
          swift_willThrowTypedImpl();
          sub_26C0CF5C4(v408, &qword_28047A890, &qword_26C14A5C0);
          sub_26C0CF5C4(v407, &qword_28047AC50, "N;");
          sub_26C0FEE1C(v444, v445, v446);
          v96 = type metadata accessor for HandshakeState.ClientHelloState;
          v97 = v207;
          goto LABEL_15;
        }

        *&v398 = v78;
        v182 = v444;
        v183 = v449;
        if ((v449[3].i8[14] & 1) != 0 || v449[3].u16[6] != v444)
        {
          v192 = v445;
          sub_26C0BBAA4(v445, v446);

          sub_26C0BB9B0(a3, a4);
          sub_26C0FEE1C(v182, v192, v176);
          v86 = v415;
          goto LABEL_110;
        }

        LODWORD(v399) = v449[3].u16[6];
        v403 = v445;
        v400 = v444;
        v401 = *(&v446 + 1);
        v184 = type metadata accessor for HandshakeState.ClientHelloState(0);
        v185 = v381;
        sub_26C0CF314(v183->i64 + *(v184 + 32), v381, &qword_28047A960, "L6");
        if ((*(v379 + 48))(v185, 1, v380) == 1)
        {
          sub_26C0BBAA4(v403, v176);

          sub_26C0BB9B0(a3, a4);
          sub_26C0CF37C(v415);
          sub_26C0CF5C4(v185, &qword_28047A960, "L6");
          v186 = sub_26C148A7C();
          v187 = sub_26C14900C();
          if (os_log_type_enabled(v186, v187))
          {
            v188 = swift_slowAlloc();
            *v188 = 0;
            _os_log_impl(&dword_26C0B5000, v186, v187, "missing key share", v188, 2u);
            MEMORY[0x26D69C3A0](v188, -1, -1);
          }

          v189 = v412;
          *v412 = xmmword_26C14A8E0;
          *(v189 + 16) = 2;
          v433 = xmmword_26C14A8E0;
          LOBYTE(v434) = 2;
          sub_26C0BBAF8();
          swift_willThrowTypedImpl();
          sub_26C0FEE1C(v400, v403, v176);
          goto LABEL_137;
        }

        v402 = a3;
        v360 = a4;
        sub_26C11D8DC(v185, v393, type metadata accessor for GeneratedEphemeralPrivateKey);
        sub_26C0BBAA4(v403, v176);
        v270 = sub_26C148A7C();
        v271 = sub_26C148FFC();
        if (os_log_type_enabled(v270, v271))
        {
          v272 = swift_slowAlloc();
          *v272 = 0;
          _os_log_impl(&dword_26C0B5000, v270, v271, "valid TLS1.3 server hello, constructing shared secret.", v272, 2u);
          MEMORY[0x26D69C3A0](v272, -1, -1);
        }

        v273 = v176 >> 62;
        if ((v176 >> 62) > 1)
        {
          if (v273 == 2)
          {
            v274 = *(v403 + 24);
          }

          else
          {
            v274 = 0;
          }
        }

        else if (v273)
        {
          v274 = v403 >> 32;
        }

        else
        {
          v274 = BYTE6(v176);
        }

        if (v274 < v401)
        {
          __break(1u);
        }

        else
        {
          v301 = sub_26C14889C();
          v303 = v302;
          v304 = v375;
          v305 = *&v359[8];
          sub_26C0DCAFC(v301, v302, &v433, v375);
          *&v359[8] = v305;
          if (v305)
          {
            sub_26C0BB9B0(v301, v303);
            sub_26C0FEE1C(v400, v403, v176);
            sub_26C0CF37C(v415);
            sub_26C0BB9B0(v402, v360);
            sub_26C11F1F0(v393, type metadata accessor for GeneratedEphemeralPrivateKey);
            sub_26C0CF5C4(v408, &qword_28047A890, &qword_26C14A5C0);
            sub_26C0CF5C4(v407, &qword_28047AC50, "N;");

            sub_26C0FEE1C(v444, v445, v446);
            v306 = v434;
            v307 = v412;
            *v412 = v433;
            *(v307 + 16) = v306;
            goto LABEL_138;
          }

          sub_26C0BB9B0(v301, v303);
          (*(v46 + 32))(v397, v304, v45);
          v308 = v373;
          v309 = v374;
          *v373 = v399;
          v308[2] = 0;
          sub_26C0CF314(v407, v309, &qword_28047AC50, "N;");
          if ((*(v411 + 48))(v309, 1, v409) != 1)
          {
            sub_26C11F1F0(v393, type metadata accessor for GeneratedEphemeralPrivateKey);
            sub_26C0FEE1C(v400, v403, v176);
            sub_26C0CF37C(v415);

            v313 = v365;
            sub_26C11D8DC(v374, v365, type metadata accessor for SessionTicket);
            sub_26C11D8DC(v313, &v414[v404[5]], type metadata accessor for SessionTicket);
            swift_storeEnumTagMultiPayload();
            v78 = v398;
LABEL_121:
            v209 = v385;
            sub_26C0CF314(v407, v385, &qword_28047AC50, "N;");
            v210 = *(v411 + 48);
            v211 = v409;
            v212 = v210(v209, 1, v409);
            sub_26C0CF5C4(v209, &qword_28047AC50, "N;");
            v339 = v45;
            if (v212 == 1)
            {
              v213 = type metadata accessor for HandshakeState.ClientHelloState(0);
              v214 = v449;
              v215 = v376;
              sub_26C0CF314(v449->i64 + *(v213 + 40), v376, &qword_28047AC50, "N;");
              LODWORD(v411) = v210(v215, 1, v211) != 1;
              sub_26C0CF5C4(v215, &qword_28047AC50, "N;");
            }

            else
            {
              LODWORD(v411) = 0;
              v214 = v449;
            }

            *&v415 = type metadata accessor for HandshakeState.ClientHelloState(0);
            v251 = *(v214->i64 + *(v415 + 44));
            v414[v404[13]] = *(v251 + 16) != 0;
            v252 = v386;
            sub_26C0CF314(v408, v386, &qword_28047A890, &qword_26C14A5C0);
            v253 = (*(v346 + 48))(v252, 1, v347);
            sub_26C0CF5C4(v252, &qword_28047A890, &qword_26C14A5C0);
            LODWORD(v409) = v253 == 1 && *(v251 + 16) != 0;
            v254 = v406;
            v255 = v387;
            sub_26C0CF314(&v414[v413], v387, &qword_28047AC40, &unk_26C14D320);
            v256 = v410;
            v257 = (v254)(v255, 1, v410);
            sub_26C0CF5C4(v255, &qword_28047AC40, &unk_26C14D320);
            v258 = v257 == 1;
            v259 = v449;
            v260 = v415;
            if (v258)
            {
              v261 = v377;
              sub_26C0CF314(v449->i64 + *(v415 + 48), v377, &qword_28047AC40, &unk_26C14D320);
              if ((v254)(v261, 1, v256) != 1)
              {
                sub_26C0BB9B0(v402, v360);
                sub_26C0CF5C4(v261, &qword_28047AC40, &unk_26C14D320);
                v289 = sub_26C148A7C();
                v290 = sub_26C14900C();
                if (os_log_type_enabled(v289, v290))
                {
                  v291 = swift_slowAlloc();
                  *v291 = 0;
                  _os_log_impl(&dword_26C0B5000, v289, v290, "pake expected in ServerHello but not present", v291, 2u);
                  MEMORY[0x26D69C3A0](v291, -1, -1);
                }

                v292 = v412;
                *v412 = xmmword_26C14A8E0;
                *(v292 + 16) = 2;
                v433 = xmmword_26C14A8E0;
                LOBYTE(v434) = 2;
                sub_26C0BBAF8();
                swift_willThrowTypedImpl();
                (*(v46 + 8))(v397, v339);
                sub_26C0CF5C4(v408, &qword_28047A890, &qword_26C14A5C0);
                sub_26C0CF5C4(v407, &qword_28047AC50, "N;");
                sub_26C0FEE1C(v444, v445, v446);
                sub_26C11F1F0(v449, type metadata accessor for HandshakeState.ClientHelloState);
                v96 = type metadata accessor for HandshakeState.ServerHelloState.SessionData;
                v97 = &v414[v404[5]];
                goto LABEL_15;
              }

              sub_26C0CF5C4(v261, &qword_28047AC40, &unk_26C14D320);
            }

            *&v398 = v78;
            LOBYTE(v437[0]) = v259[4].i8[0];
            v263 = v259[2];
            v436 = v259[3];
            v262 = v436;
            v435 = v263;
            v265 = *v259;
            v434 = v259[1];
            v264 = v434;
            v433 = v265;
            v266 = v414;
            v414[64] = v437[0];
            v266[2] = v263;
            v266[3] = v262;
            *v266 = v265;
            v266[1] = v264;
            v8 = v404[6];
            sub_26C0CF314(v259->i64 + *(v260 + 36), v266 + v8, &qword_28047AC38, &unk_26C14D110);
            v267 = *(v46 + 16);
            v267(v382, v397, v339);
            sub_26C10B120(&v433, &v430);
            sub_26C11F2F0(&qword_28047AC00, MEMORY[0x277CC5330], MEMORY[0x277CC5318]);
            sub_26C148BAC();
            v268 = v383;
            sub_26C0CF314(v266 + v8, v383, &qword_28047A870, &qword_26C14A5A0);
            EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
            if ((EnumCaseMultiPayload - 1) >= 3)
            {
              if (!EnumCaseMultiPayload)
              {
                LODWORD(v415) = v411 | v409;
                v275 = v370;
                sub_26C0CF55C(v383, v370, &qword_28047A948, &qword_26C14A7F0);
                v276 = v369;
                sub_26C0CF314(v275, v369, &qword_28047A948, &qword_26C14A7F0);
                v277 = v382;
                v278 = v46;
                v279 = v339;
                v267(v382, v395, v339);
                v280 = v368;
                sub_26C11C240(v276, v277, v402, v360, v371, v415 & 1, v368);
                sub_26C0CF5C4(v275, &qword_28047A948, &qword_26C14A7F0);
                v281 = *(v278 + 8);
                v281(v395, v279);
                swift_storeEnumTagMultiPayload();
                sub_26C0FF20C(v280, &v414[v8], &qword_28047A870, &qword_26C14A5A0);
                v282 = sub_26C148A7C();
                v283 = sub_26C148FFC();
                if (os_log_type_enabled(v282, v283))
                {
                  v284 = swift_slowAlloc();
                  *v284 = 0;
                  _os_log_impl(&dword_26C0B5000, v282, v283, "server hello valid", v284, 2u);
                  MEMORY[0x26D69C3A0](v284, -1, -1);
                }

                v281(v397, v339);
                sub_26C0CF5C4(v408, &qword_28047A890, &qword_26C14A5C0);
                sub_26C0CF5C4(v407, &qword_28047AC50, "N;");
                sub_26C0FEE1C(v444, v445, v446);
                v285 = v414;
                sub_26C11F050(v414, v372, type metadata accessor for HandshakeState.ServerHelloState);
                sub_26C11F1F0(v449, type metadata accessor for HandshakeState.ClientHelloState);
                sub_26C11F1F0(v285, type metadata accessor for HandshakeState.ServerHelloState);
                return;
              }
            }

            else
            {
              sub_26C0CF5C4(v268, &qword_28047A870, &qword_26C14A5A0);
            }

            if (qword_28047A770 == -1)
            {
LABEL_159:
              __swift_project_value_buffer(v378, qword_28047AD78);
              sub_26C0CF314(&v414[v8], v389, &qword_28047A870, &qword_26C14A5A0);
              v286 = swift_getEnumCaseMultiPayload();
              if (v286 <= 1)
              {
                if (v286)
                {
                  v287 = 0xEF74657263655365;
                  v288 = 0x6B616873646E6168;
                }

                else
                {
                  v287 = 0xEB00000000746572;
                  v288 = 0x636553796C726165;
                }
              }

              else if (v286 == 2)
              {
                v287 = 0xEC00000074657263;
                v288 = 0x655372657473616DLL;
              }

              else
              {
                if (v286 != 3)
                {
                  v287 = 0xE400000000000000;
                  v288 = 1701602409;
LABEL_174:
                  v293 = v402;
                  v294 = v339;
                  sub_26C125B0C(v288, v287, 0x7672655374736F70, 0xEF6F6C6C65487265);

                  v415 = xmmword_26C14A570;
                  v430 = xmmword_26C14A570;
                  LOBYTE(v431[0]) = 2;
                  sub_26C0BBAF8();
                  swift_willThrowTypedImpl();
                  sub_26C0BB9B0(v293, v360);
                  v295 = *(v46 + 8);
                  v295(v395, v294);
                  v295(v397, v294);
                  sub_26C0CF5C4(v408, &qword_28047A890, &qword_26C14A5C0);
                  sub_26C0CF5C4(v407, &qword_28047AC50, "N;");
                  sub_26C0FEE1C(v444, v445, v446);
                  v296 = v412;
                  *v412 = v415;
                  *(v296 + 16) = 2;
                  sub_26C11F1F0(v449, type metadata accessor for HandshakeState.ClientHelloState);
                  v297 = v414;
                  v298 = *(v414 + 3);
                  v431[1] = *(v414 + 2);
                  v431[2] = v298;
                  LOBYTE(v431[3]) = v414[64];
                  v299 = *(v414 + 1);
                  v430 = *v414;
                  v431[0] = v299;
                  sub_26C10B17C(&v430);
                  v300 = v404;
                  sub_26C11F1F0(v297 + v404[5], type metadata accessor for HandshakeState.ServerHelloState.SessionData);
                  sub_26C0CF5C4(v297 + v300[6], &qword_28047AC38, &unk_26C14D110);
                  goto LABEL_16;
                }

                v287 = 0xEA00000000007374;
                v288 = 0x65726365536C6C61;
              }

              sub_26C0CF5C4(v389, &qword_28047A870, &qword_26C14A5A0);
              goto LABEL_174;
            }

LABEL_201:
            swift_once();
            goto LABEL_159;
          }

          sub_26C0CF5C4(v374, &qword_28047AC50, "N;");
          if ((v373[2] & 1) == 0)
          {
            v310 = *v373;
            sub_26C11F1F0(v393, type metadata accessor for GeneratedEphemeralPrivateKey);
            sub_26C0FEE1C(v400, v403, v176);
            sub_26C0CF37C(v415);

            v311 = v449[7].i64[1];
            v312 = v366;
            *v366 = v343;
            *(v312 + 2) = v310;
            *(v312 + 8) = v311;
            swift_storeEnumTagMultiPayload();
            sub_26C11D8DC(v312, &v414[v404[5]], type metadata accessor for HandshakeState.ServerHelloState.SessionData);

            v78 = v398;
            goto LABEL_121;
          }
        }

        __break(1u);
        return;
      }

      sub_26C0CF37C(v86);
      v177 = v399;
      sub_26C11D8DC(v174, v399, type metadata accessor for PAKEClientState);
      if (v446 >> 60 == 15)
      {
        if (((HIDWORD(v348) | v348) & 1) == 0)
        {
          v199 = v396;
          sub_26C0CF314(v177 + *(v410 + 20), v396, &qword_28047A930, qword_26C14C120);
          if ((*(v46 + 48))(v199, 1, v45) != 1)
          {
            v402 = a3;
            v360 = a4;
            sub_26C11F1F0(v177, type metadata accessor for PAKEClientState);
            (*(v46 + 32))(v397, v199, v45);
            *&v414[v404[5]] = v343;
            swift_storeEnumTagMultiPayload();
            goto LABEL_121;
          }

          sub_26C0BB9B0(a3, a4);
          sub_26C0CF5C4(v199, &qword_28047A930, qword_26C14C120);
          v200 = sub_26C148A7C();
          v201 = sub_26C14900C();
          if (os_log_type_enabled(v200, v201))
          {
            v202 = swift_slowAlloc();
            *v202 = 0;
            _os_log_impl(&dword_26C0B5000, v200, v201, "missing derivedSharedKey", v202, 2u);
            v203 = v202;
            v89 = v449;
            MEMORY[0x26D69C3A0](v203, -1, -1);
          }

          v204 = v412;
          *v412 = 0xD00000000000001ELL;
          *(v204 + 1) = 0x800000026C15AE10;
          *(v204 + 16) = 1;
          *&v433 = 0xD00000000000001ELL;
          *(&v433 + 1) = 0x800000026C15AE10;
          LOBYTE(v434) = 1;
          goto LABEL_108;
        }

        sub_26C0BB9B0(a3, a4);
        v178 = sub_26C148A7C();
        v179 = sub_26C14900C();
        if (os_log_type_enabled(v178, v179))
        {
          v180 = swift_slowAlloc();
          *v180 = 0;
          v181 = "server sent PAKE and PSK extensions, which is not allowed";
LABEL_106:
          _os_log_impl(&dword_26C0B5000, v178, v179, v181, v180, 2u);
          v190 = v180;
          v89 = v449;
          MEMORY[0x26D69C3A0](v190, -1, -1);
        }
      }

      else
      {
        sub_26C0BB9B0(a3, a4);
        v178 = sub_26C148A7C();
        v179 = sub_26C14900C();
        if (os_log_type_enabled(v178, v179))
        {
          v180 = swift_slowAlloc();
          *v180 = 0;
          v181 = "server sent PAKE and key share extensions, which is not allowed";
          goto LABEL_106;
        }
      }

      v191 = v412;
      *v412 = xmmword_26C14A8E0;
      *(v191 + 16) = 2;
      v433 = xmmword_26C14A8E0;
      LOBYTE(v434) = 2;
LABEL_108:
      sub_26C0BBAF8();
      swift_willThrowTypedImpl();
      sub_26C11F1F0(v399, type metadata accessor for PAKEClientState);
      sub_26C0CF5C4(v408, &qword_28047A890, &qword_26C14A5C0);
      sub_26C0CF5C4(v407, &qword_28047AC50, "N;");
      sub_26C0FEE1C(v444, v445, v446);
      goto LABEL_14;
    }

    v89 = (v89 + 88);
    v110 = v398 + 1;
    a4 = v360;
    if (v398 >= *(v362.i64[0] + 16))
    {
      goto LABEL_79;
    }
  }

  sub_26C0BB9B0(a3, v360);
  sub_26C0CF37C(v127);
  sub_26C0CF37C(v127);
  v222 = sub_26C148A7C();
  v223 = sub_26C14900C();
  if (os_log_type_enabled(v222, v223))
  {
    v224 = swift_slowAlloc();
    *v224 = 0;
    _os_log_impl(&dword_26C0B5000, v222, v223, "server hello sent a pake scheme that we did not offer", v224, 2u);
    MEMORY[0x26D69C3A0](v224, -1, -1);
  }

  v225 = v412;
  *v412 = xmmword_26C14A8E0;
  *(v225 + 16) = 2;
  v433 = xmmword_26C14A8E0;
  LOBYTE(v434) = 2;
  sub_26C0BBAF8();
LABEL_132:
  swift_willThrowTypedImpl();
  sub_26C0BE468(&v440);
  sub_26C0BE468(&v440);
  v231 = type metadata accessor for PAKEClientState;
  v232 = v406;
LABEL_136:
  sub_26C11F1F0(v232, v231);
LABEL_137:
  sub_26C0CF5C4(v408, &qword_28047A890, &qword_26C14A5C0);
  sub_26C0CF5C4(v407, &qword_28047AC50, "N;");
  sub_26C0FEE1C(v444, v445, v446);
LABEL_138:
  v96 = type metadata accessor for HandshakeState.ClientHelloState;
  v97 = v449;
LABEL_15:
  sub_26C11F1F0(v97, v96);
LABEL_16:
  sub_26C0CF5C4(&v414[v413], &qword_28047AC40, &unk_26C14D320);
}

uint64_t sub_26C10FB04@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A970, "DG");
  MEMORY[0x28223BE20](v4);
  v6 = &v22 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A9C8, &qword_26C14D2A0);
  MEMORY[0x28223BE20](v7);
  v9 = &v22 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A870, &qword_26C14A5A0);
  MEMORY[0x28223BE20](v10);
  v12 = &v22 - v11;
  sub_26C0CF314(v2, &v22 - v11, &qword_28047A870, &qword_26C14A5A0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
LABEL_6:
      sub_26C0CF5C4(v12, &qword_28047A870, &qword_26C14A5A0);
LABEL_7:
      v14 = sub_26C148BDC();
      return (*(*(v14 - 8) + 56))(a1, 1, 1, v14);
    }

    sub_26C0CF55C(v12, v9, &qword_28047A9C8, &qword_26C14D2A0);
    v19 = *(v7 + 40);
    v20 = sub_26C148BDC();
    v21 = *(v20 - 8);
    (*(v21 + 16))(a1, &v9[v19], v20);
    sub_26C0CF5C4(v9, &qword_28047A9C8, &qword_26C14D2A0);
    return (*(v21 + 56))(a1, 0, 1, v20);
  }

  else
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload != 3)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    sub_26C0CF55C(v12, v6, &qword_28047A970, "DG");
    v16 = *(v4 + 40);
    v17 = sub_26C148BDC();
    v18 = *(v17 - 8);
    (*(v18 + 16))(a1, &v6[v16], v17);
    sub_26C0CF5C4(v6, &qword_28047A970, "DG");
    return (*(v18 + 56))(a1, 0, 1, v17);
  }
}

uint64_t sub_26C10FE3C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A970, "DG");
  MEMORY[0x28223BE20](v4);
  v6 = &v22 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A9C8, &qword_26C14D2A0);
  MEMORY[0x28223BE20](v7);
  v9 = &v22 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A870, &qword_26C14A5A0);
  MEMORY[0x28223BE20](v10);
  v12 = &v22 - v11;
  sub_26C0CF314(v2, &v22 - v11, &qword_28047A870, &qword_26C14A5A0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
LABEL_6:
      sub_26C0CF5C4(v12, &qword_28047A870, &qword_26C14A5A0);
LABEL_7:
      v14 = sub_26C148BDC();
      return (*(*(v14 - 8) + 56))(a1, 1, 1, v14);
    }

    sub_26C0CF55C(v12, v9, &qword_28047A9C8, &qword_26C14D2A0);
    v19 = *(v7 + 44);
    v20 = sub_26C148BDC();
    v21 = *(v20 - 8);
    (*(v21 + 16))(a1, &v9[v19], v20);
    sub_26C0CF5C4(v9, &qword_28047A9C8, &qword_26C14D2A0);
    return (*(v21 + 56))(a1, 0, 1, v20);
  }

  else
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload != 3)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    sub_26C0CF55C(v12, v6, &qword_28047A970, "DG");
    v16 = *(v4 + 44);
    v17 = sub_26C148BDC();
    v18 = *(v17 - 8);
    (*(v18 + 16))(a1, &v6[v16], v17);
    sub_26C0CF5C4(v6, &qword_28047A970, "DG");
    return (*(v18 + 56))(a1, 0, 1, v17);
  }
}

uint64_t sub_26C110174()
{
  v0 = sub_26C148A9C();
  __swift_allocate_value_buffer(v0, qword_28047AC70);
  __swift_project_value_buffer(v0, qword_28047AC70);
  return sub_26C148A8C();
}

void HandshakeStateMachine.init(configuration:)(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AC40, &unk_26C14D320);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v37[-1] - v5;
  v36 = &v37[-1] - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AC50, "N;");
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v37[-1] - v8;
  v10 = a1[3];
  v40 = a1[2];
  v41 = v10;
  v42 = *(a1 + 64);
  v11 = a1[1];
  v38 = *a1;
  v39 = v11;
  *a2 = xmmword_26C14A540;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  v12 = type metadata accessor for HandshakeStateMachine(0);
  v13 = a2 + v12[7];
  *(v13 + 24) = &type metadata for SwiftTLSDefaultClock;
  *(v13 + 32) = &off_287CCAB28;
  v37[0] = 0;
  MEMORY[0x26D69C3B0](v37, 8);
  v14 = v37[0];
  v37[0] = 0;
  MEMORY[0x26D69C3B0](v37, 8);
  v15 = v37[0];
  v37[0] = 0;
  MEMORY[0x26D69C3B0](v37, 8);
  v16 = v37[0];
  v37[0] = 0;
  MEMORY[0x26D69C3B0](v37, 8);
  v17 = v37[0];
  v18 = (a2 + v12[8]);
  *v18 = v14;
  v18[1] = v15;
  v18[2] = v16;
  v18[3] = v17;
  v19 = a2 + v12[9];
  v20 = v41;
  *(v19 + 32) = v40;
  *(v19 + 48) = v20;
  *(v19 + 64) = v42;
  v21 = v39;
  *v19 = v38;
  *(v19 + 16) = v21;
  v22 = a2 + v12[6];
  v23 = type metadata accessor for SessionTicket(0);
  v24 = *(*(v23 - 8) + 56);
  v24(v9, 1, 1, v23);
  v25 = type metadata accessor for PAKEClientState(0);
  v26 = *(*(v25 - 8) + 56);
  v26(v6, 1, 1, v25);
  v27 = type metadata accessor for HandshakeState.IdleState(0);
  v28 = v27[5];
  v24((v22 + v28), 1, 1, v23);
  v29 = v27[8];
  v26((v22 + v29), 1, 1, v25);
  v30 = v41;
  *(v22 + 32) = v40;
  *(v22 + 48) = v30;
  *(v22 + 64) = v42;
  v31 = v39;
  *v22 = v38;
  *(v22 + 16) = v31;
  sub_26C10B120(&v38, v37);
  sub_26C0FF20C(v9, v22 + v28, &qword_28047AC50, "N;");
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A870, &qword_26C14A5A0);
  swift_storeEnumTagMultiPayload();
  *(v22 + v27[7]) = MEMORY[0x277D84F90];
  sub_26C0FF20C(v36, v22 + v29, &qword_28047AC40, &unk_26C14D320);
  type metadata accessor for HandshakeState(0);
  swift_storeEnumTagMultiPayload();
  if (qword_28047A760 != -1)
  {
    swift_once();
  }

  v32 = sub_26C148A9C();
  __swift_project_value_buffer(v32, qword_28047AC70);
  v33 = sub_26C148A7C();
  v34 = sub_26C148FEC();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&dword_26C0B5000, v33, v34, "client state machine initialized", v35, 2u);
    MEMORY[0x26D69C3A0](v35, -1, -1);
  }
}

uint64_t _s8SwiftTLS21HandshakeStateMachineV13sessionTicket13configurationAC10Foundation4DataV_AC13ConfigurationVtAA8TLSErrorOYKcfC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AC40, &unk_26C14D320);
  MEMORY[0x28223BE20](v10 - 8);
  v67 = &v58 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AC50, "N;");
  MEMORY[0x28223BE20](v12 - 8);
  v66 = &v58 - v13;
  v65 = type metadata accessor for SessionTicket(0);
  v64 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v15 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for HandshakeStateMachine(0);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v58 - v20;
  v22 = a3[3];
  v73 = a3[2];
  v74 = v22;
  v75 = *(a3 + 64);
  v23 = a3[1];
  v71 = *a3;
  v72 = v23;
  *a5 = xmmword_26C14A540;
  *(a5 + 16) = 0;
  *(a5 + 24) = 0;
  v70[3] = &type metadata for SwiftTLSDefaultClock;
  v70[4] = &off_287CCAB28;
  *v19 = xmmword_26C14A540;
  *(v19 + 2) = 0;
  v19[24] = 0;
  sub_26C0BBAA4(a1, a2);
  v24 = v76;
  sub_26C11F9F4(a1, a2, v68, v15);
  if (v24)
  {
    __swift_destroy_boxed_opaque_existential_1(v70);
    sub_26C10B17C(&v71);
    sub_26C0BB9B0(a1, a2);
    v25 = v68[0];
    v26 = v68[1];
    v27 = v69;
    sub_26C0BB344(0, 0xF000000000000000);
    *a4 = v25;
    *(a4 + 8) = v26;
    *(a4 + 16) = v27;
    return sub_26C0BB344(0, 0xF000000000000000);
  }

  else
  {
    v59 = v21;
    v61 = a1;
    v62 = a2;
    v63 = a5;
    v76 = 0;
    sub_26C11D848(v70, &v19[v16[7]]);
    v68[0] = 0;
    MEMORY[0x26D69C3B0](v68, 8);
    v29 = v68[0];
    v68[0] = 0;
    MEMORY[0x26D69C3B0](v68, 8);
    v30 = v15;
    v31 = v68[0];
    v68[0] = 0;
    MEMORY[0x26D69C3B0](v68, 8);
    v32 = v68[0];
    v68[0] = 0;
    MEMORY[0x26D69C3B0](v68, 8);
    v33 = v68[0];
    v34 = &v19[v16[8]];
    *v34 = v29;
    *(v34 + 1) = v31;
    *(v34 + 2) = v32;
    *(v34 + 3) = v33;
    v35 = &v19[v16[9]];
    v36 = v74;
    *(v35 + 2) = v73;
    *(v35 + 3) = v36;
    v35[64] = v75;
    v37 = v72;
    *v35 = v71;
    *(v35 + 1) = v37;
    v38 = &v19[v16[6]];
    v60 = v30;
    v39 = v30;
    v40 = v66;
    sub_26C11F050(v39, v66, type metadata accessor for SessionTicket);
    v41 = *(v64 + 56);
    v42 = v65;
    v41(v40, 0, 1, v65);
    v43 = type metadata accessor for PAKEClientState(0);
    v44 = *(*(v43 - 8) + 56);
    v44(v67, 1, 1, v43);
    v45 = type metadata accessor for HandshakeState.IdleState(0);
    v64 = v45[5];
    v41(&v38[v64], 1, 1, v42);
    v46 = v45[8];
    v44(&v38[v46], 1, 1, v43);
    v47 = v74;
    *(v38 + 2) = v73;
    *(v38 + 3) = v47;
    v38[64] = v75;
    v48 = v72;
    *v38 = v71;
    *(v38 + 1) = v48;
    sub_26C10B120(&v71, v68);
    sub_26C0FF20C(v66, &v38[v64], &qword_28047AC50, "N;");
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A870, &qword_26C14A5A0);
    swift_storeEnumTagMultiPayload();
    *&v38[v45[7]] = MEMORY[0x277D84F90];
    sub_26C0FF20C(v67, &v38[v46], &qword_28047AC40, &unk_26C14D320);
    type metadata accessor for HandshakeState(0);
    swift_storeEnumTagMultiPayload();
    if (qword_28047A760 != -1)
    {
      swift_once();
    }

    v49 = sub_26C148A9C();
    __swift_project_value_buffer(v49, qword_28047AC70);
    v50 = sub_26C148A7C();
    v51 = sub_26C148FEC();
    v52 = os_log_type_enabled(v50, v51);
    v53 = v63;
    v54 = v62;
    v55 = v61;
    v56 = v59;
    if (v52)
    {
      v57 = swift_slowAlloc();
      *v57 = 0;
      _os_log_impl(&dword_26C0B5000, v50, v51, "client state machine initialized with session ticket", v57, 2u);
      MEMORY[0x26D69C3A0](v57, -1, -1);
    }

    sub_26C0BB9B0(v55, v54);
    __swift_destroy_boxed_opaque_existential_1(v70);
    sub_26C11F1F0(v60, type metadata accessor for SessionTicket);
    sub_26C11D8DC(v19, v56, type metadata accessor for HandshakeStateMachine);
    sub_26C0BB344(*v53, *(v53 + 8));
    return sub_26C11D8DC(v56, v53, type metadata accessor for HandshakeStateMachine);
  }
}

uint64_t _s8SwiftTLS21HandshakeStateMachineV4epsk13configurationAcA4EPSKV_AC13ConfigurationVtAA8TLSErrorOYKcfC@<X0>(uint64_t *a1@<X0>, __int128 *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v84 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AC40, &unk_26C14D320);
  MEMORY[0x28223BE20](v8 - 8);
  v86 = &v79 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AC50, "N;");
  MEMORY[0x28223BE20](v10 - 8);
  v85 = &v79 - v11;
  v12 = type metadata accessor for ImportedPSK(0);
  v80 = *(v12 - 8);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for RawEPSK(0);
  MEMORY[0x28223BE20](v15);
  v17 = (&v79 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = type metadata accessor for GeneralEPSK(0);
  v82 = *(v18 - 8);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v21 = &v79 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v79 - v22;
  v93 = *(a2 + 64);
  v24 = a2[3];
  v91 = a2[2];
  v92 = v24;
  v25 = a2[1];
  v89 = *a2;
  v90 = v25;
  *a4 = xmmword_26C14A540;
  *(a4 + 16) = 0;
  v83 = a4;
  *(a4 + 24) = 0;
  v26 = MEMORY[0x277D84F90];
  v94 = MEMORY[0x277D84F90];
  if (v93 == 1)
  {
    v81 = v4;
    v27 = *a1;
    v28 = a1[1];
    v29 = a1[2];
    v30 = type metadata accessor for EPSK(0);
    v84 = a1;
    v31 = *(v30 + 20);
    v32 = *(v15 + 20);
    v33 = sub_26C148BDC();
    (*(*(v33 - 8) + 16))(v17 + v32, v84 + v31, v33);
    *v17 = v27;
    v17[1] = v28;
    v17[2] = v29;
    sub_26C11D8DC(v17, v23, type metadata accessor for RawEPSK);
    type metadata accessor for PSK(0);
    swift_storeEnumTagMultiPayload();
    sub_26C0BBAA4(v27, v28);
    v34 = sub_26C0CDBC8(0, 1, 1, MEMORY[0x277D84F90]);
    v36 = v34[2];
    v35 = v34[3];
    if (v36 >= v35 >> 1)
    {
      v34 = sub_26C0CDBC8((v35 > 1), v36 + 1, 1, v34);
    }

    v34[2] = v36 + 1;
    sub_26C11D8DC(v23, v34 + ((*(v82 + 80) + 32) & ~*(v82 + 80)) + *(v82 + 72) * v36, type metadata accessor for GeneralEPSK);
    v94 = v34;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A878, &qword_26C14A5A8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_26C14A550;
    if (qword_28047A630 != -1)
    {
      swift_once();
    }

    v38 = qword_280480308;
    *(inited + 32) = word_280480300;
    *(inited + 40) = v38;
    v39 = sub_26C0C24AC(inited, &v87);
    if (v4)
    {
      sub_26C11F1F0(a1, type metadata accessor for EPSK);
      swift_setDeallocating();
      sub_26C10B17C(&v89);
      v40 = v88;
      v41 = v84;
      *v84 = v87;
      *(v41 + 16) = v40;
      return sub_26C0BB344(0, 0xF000000000000000);
    }

    v43 = v39;
    v84 = a1;
    v81 = 0;
    swift_setDeallocating();
    v44 = *(v43 + 16);
    if (v44)
    {
      *&v87 = v26;
      sub_26C0CEB2C(0, v44, 0);
      v45 = v87;
      v46 = (*(v80 + 80) + 32) & ~*(v80 + 80);
      v79 = v43;
      v47 = v43 + v46;
      v48 = *(v80 + 72);
      v49 = v82;
      do
      {
        sub_26C11F050(v47, v14, type metadata accessor for ImportedPSK);
        sub_26C11D8DC(v14, v21, type metadata accessor for ImportedPSK);
        type metadata accessor for PSK(0);
        swift_storeEnumTagMultiPayload();
        *&v87 = v45;
        v51 = *(v45 + 16);
        v50 = *(v45 + 24);
        if (v51 >= v50 >> 1)
        {
          sub_26C0CEB2C((v50 > 1), v51 + 1, 1);
          v49 = v82;
          v45 = v87;
        }

        *(v45 + 16) = v51 + 1;
        sub_26C11D8DC(v21, v45 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v51, type metadata accessor for GeneralEPSK);
        v47 += v48;
        --v44;
      }

      while (v44);
    }

    else
    {

      v45 = MEMORY[0x277D84F90];
    }

    sub_26C0C6150(v45);
  }

  v52 = type metadata accessor for HandshakeStateMachine(0);
  v53 = v83;
  v54 = v83 + v52[7];
  *(v54 + 24) = &type metadata for SwiftTLSDefaultClock;
  *(v54 + 32) = &off_287CCAB28;
  *&v87 = 0;
  MEMORY[0x26D69C3B0](&v87, 8);
  v55 = v87;
  *&v87 = 0;
  MEMORY[0x26D69C3B0](&v87, 8);
  v56 = v87;
  *&v87 = 0;
  MEMORY[0x26D69C3B0](&v87, 8);
  v57 = v87;
  *&v87 = 0;
  MEMORY[0x26D69C3B0](&v87, 8);
  v58 = v87;
  v59 = (v53 + v52[8]);
  *v59 = v55;
  v59[1] = v56;
  v59[2] = v57;
  v59[3] = v58;
  v60 = v53 + v52[9];
  v61 = v92;
  *(v60 + 32) = v91;
  *(v60 + 48) = v61;
  *(v60 + 64) = v93;
  v62 = v90;
  *v60 = v89;
  *(v60 + 16) = v62;
  v63 = v53 + v52[6];
  v64 = type metadata accessor for SessionTicket(0);
  v65 = *(*(v64 - 8) + 56);
  v65(v85, 1, 1, v64);
  v83 = v94;
  v66 = type metadata accessor for PAKEClientState(0);
  v67 = *(*(v66 - 8) + 56);
  v67(v86, 1, 1, v66);
  v68 = type metadata accessor for HandshakeState.IdleState(0);
  v69 = v68[5];
  v65(v63 + v69, 1, 1, v64);
  v70 = v68[8];
  v67(v63 + v70, 1, 1, v66);
  v71 = v92;
  *(v63 + 32) = v91;
  *(v63 + 48) = v71;
  *(v63 + 64) = v93;
  v72 = v90;
  *v63 = v89;
  *(v63 + 16) = v72;
  sub_26C10B120(&v89, &v87);
  sub_26C0FF20C(v85, v63 + v69, &qword_28047AC50, "N;");
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A870, &qword_26C14A5A0);
  swift_storeEnumTagMultiPayload();
  *(v63 + v68[7]) = v83;
  sub_26C0FF20C(v86, v63 + v70, &qword_28047AC40, &unk_26C14D320);
  type metadata accessor for HandshakeState(0);
  swift_storeEnumTagMultiPayload();
  if (qword_28047A760 != -1)
  {
    swift_once();
  }

  v73 = sub_26C148A9C();
  __swift_project_value_buffer(v73, qword_28047AC70);
  v74 = sub_26C148A7C();
  v75 = sub_26C148FEC();
  v76 = os_log_type_enabled(v74, v75);
  v77 = v84;
  if (v76)
  {
    v78 = swift_slowAlloc();
    *v78 = 0;
    _os_log_impl(&dword_26C0B5000, v74, v75, "client state machine initialized with epsk", v78, 2u);
    MEMORY[0x26D69C3A0](v78, -1, -1);
  }

  return sub_26C11F1F0(v77, type metadata accessor for EPSK);
}