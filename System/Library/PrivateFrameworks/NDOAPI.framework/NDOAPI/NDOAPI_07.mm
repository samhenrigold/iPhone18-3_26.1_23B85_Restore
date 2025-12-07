uint64_t sub_22DEA1FF0()
{
  v0 = sub_22DEC4B14();
  __swift_allocate_value_buffer(v0, qword_28145CAC0);
  __swift_project_value_buffer(v0, qword_28145CAC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F60, &qword_22DEC8190);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F68, &qword_22DECB000) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22DEC7C40;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "DW_PROMO";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22DEC4AE4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "DW_COVERAGE";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "DW_LINK";
  *(v12 + 1) = 7;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "DW_SUPPORT";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v15 = "DW_FOOTER";
  *(v15 + 8) = 9;
  *(v15 + 16) = 2;
  v9();
  return sub_22DEC4AF4();
}

uint64_t sub_22DEA22E8()
{
  v0 = sub_22DEC4B14();
  __swift_allocate_value_buffer(v0, qword_28145CD50);
  __swift_project_value_buffer(v0, qword_28145CD50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F60, &qword_22DEC8190);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F68, &qword_22DECB000) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22DEC77C0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "meta";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22DEC4AE4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "common";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "data";
  *(v11 + 8) = 4;
  *(v11 + 16) = 2;
  v9();
  return sub_22DEC4AF4();
}

uint64_t sub_22DEA2520()
{
  type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWRequest._StorageClass(0);
  v0 = swift_allocObject();
  v1 = OBJC_IVAR____TtCV6NDOAPI37Com_Apple_Sse_Ocean_Ndo_Api_DWRequestP33_D45865C3EDEF219685F54D805EFB545613_StorageClass__meta;
  v2 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtCV6NDOAPI37Com_Apple_Sse_Ocean_Ndo_Api_DWRequestP33_D45865C3EDEF219685F54D805EFB545613_StorageClass__common;
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody(0);
  (*(*(v4 - 8) + 56))(v0 + v3, 1, 1, v4);
  v5 = OBJC_IVAR____TtCV6NDOAPI37Com_Apple_Sse_Ocean_Ndo_Api_DWRequestP33_D45865C3EDEF219685F54D805EFB545613_StorageClass__data;
  v6 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceWarrantyRequest(0);
  result = (*(*(v6 - 8) + 56))(v0 + v5, 1, 1, v6);
  qword_28145CE98 = v0;
  return result;
}

uint64_t sub_22DEA2634(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38E00, &unk_22DECE2A8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v22[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37A40, &unk_22DEC7330);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v22[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37A38, &unk_22DEC6570);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v22[-v10];
  v12 = OBJC_IVAR____TtCV6NDOAPI37Com_Apple_Sse_Ocean_Ndo_Api_DWRequestP33_D45865C3EDEF219685F54D805EFB545613_StorageClass__meta;
  v13 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta(0);
  (*(*(v13 - 8) + 56))(v1 + v12, 1, 1, v13);
  v14 = OBJC_IVAR____TtCV6NDOAPI37Com_Apple_Sse_Ocean_Ndo_Api_DWRequestP33_D45865C3EDEF219685F54D805EFB545613_StorageClass__common;
  v15 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody(0);
  (*(*(v15 - 8) + 56))(v1 + v14, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV6NDOAPI37Com_Apple_Sse_Ocean_Ndo_Api_DWRequestP33_D45865C3EDEF219685F54D805EFB545613_StorageClass__data;
  v17 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceWarrantyRequest(0);
  (*(*(v17 - 8) + 56))(v1 + v16, 1, 1, v17);
  v18 = OBJC_IVAR____TtCV6NDOAPI37Com_Apple_Sse_Ocean_Ndo_Api_DWRequestP33_D45865C3EDEF219685F54D805EFB545613_StorageClass__meta;
  swift_beginAccess();
  sub_22DDF0028(a1 + v18, v11, &qword_27DA37A38, &unk_22DEC6570);
  swift_beginAccess();
  sub_22DDF0208(v11, v1 + v12, &qword_27DA37A38, &unk_22DEC6570);
  swift_endAccess();
  v19 = OBJC_IVAR____TtCV6NDOAPI37Com_Apple_Sse_Ocean_Ndo_Api_DWRequestP33_D45865C3EDEF219685F54D805EFB545613_StorageClass__common;
  swift_beginAccess();
  sub_22DDF0028(a1 + v19, v8, &qword_27DA37A40, &unk_22DEC7330);
  swift_beginAccess();
  sub_22DDF0208(v8, v1 + v14, &qword_27DA37A40, &unk_22DEC7330);
  swift_endAccess();
  v20 = OBJC_IVAR____TtCV6NDOAPI37Com_Apple_Sse_Ocean_Ndo_Api_DWRequestP33_D45865C3EDEF219685F54D805EFB545613_StorageClass__data;
  swift_beginAccess();
  sub_22DDF0028(a1 + v20, v5, &qword_27DA38E00, &unk_22DECE2A8);

  swift_beginAccess();
  sub_22DDF0208(v5, v1 + v16, &qword_27DA38E00, &unk_22DECE2A8);
  swift_endAccess();
  return v1;
}

uint64_t sub_22DEA298C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22DEA29F4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22DEA2A74()
{
  sub_22DDEF284(v0 + OBJC_IVAR____TtCV6NDOAPI37Com_Apple_Sse_Ocean_Ndo_Api_DWRequestP33_D45865C3EDEF219685F54D805EFB545613_StorageClass__meta, &qword_27DA37A38, &unk_22DEC6570);
  sub_22DDEF284(v0 + OBJC_IVAR____TtCV6NDOAPI37Com_Apple_Sse_Ocean_Ndo_Api_DWRequestP33_D45865C3EDEF219685F54D805EFB545613_StorageClass__common, &qword_27DA37A40, &unk_22DEC7330);
  sub_22DDEF284(v0 + OBJC_IVAR____TtCV6NDOAPI37Com_Apple_Sse_Ocean_Ndo_Api_DWRequestP33_D45865C3EDEF219685F54D805EFB545613_StorageClass__data, &qword_27DA38E00, &unk_22DECE2A8);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_22DEA2B90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = sub_22DEC4954();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        sub_22DEA2E00(a2, a1, a3, a4);
        break;
      case 2:
        sub_22DEA2D24(a2, a1, a3, a4);
        break;
      case 1:
        sub_22DEA2C48(a2, a1, a3, a4);
        break;
    }
  }

  return result;
}

uint64_t sub_22DEA2C48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta(0);
  sub_22DDF25F4(&qword_28145C748, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta);
  sub_22DEC49E4();
  return swift_endAccess();
}

uint64_t sub_22DEA2D24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody(0);
  sub_22DDF25F4(&qword_28145B690, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody, "I 5T؉");
  sub_22DEC49E4();
  return swift_endAccess();
}

uint64_t sub_22DEA2E00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceWarrantyRequest(0);
  sub_22DDF25F4(&qword_28145B238, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceWarrantyRequest, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceWarrantyRequest);
  sub_22DEC49E4();
  return swift_endAccess();
}

uint64_t sub_22DEA2F1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_22DEA2F84(a1, a2, a3, a4);
  if (!v4)
  {
    sub_22DEA31AC(a1, a2, a3, a4);
    return sub_22DEA33D4(a1, a2, a3, a4);
  }

  return result;
}

uint64_t sub_22DEA2F84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37A38, &unk_22DEC6570);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV6NDOAPI37Com_Apple_Sse_Ocean_Ndo_Api_DWRequestP33_D45865C3EDEF219685F54D805EFB545613_StorageClass__meta;
  swift_beginAccess();
  sub_22DDF0028(a1 + v12, v7, &qword_27DA37A38, &unk_22DEC6570);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_22DDEF284(v7, &qword_27DA37A38, &unk_22DEC6570);
  }

  sub_22DDF1788(v7, v11, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta);
  sub_22DDF25F4(&qword_28145C748, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta);
  sub_22DEC4AD4();
  return sub_22DEA29F4(v11, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta);
}

uint64_t sub_22DEA31AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37A40, &unk_22DEC7330);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV6NDOAPI37Com_Apple_Sse_Ocean_Ndo_Api_DWRequestP33_D45865C3EDEF219685F54D805EFB545613_StorageClass__common;
  swift_beginAccess();
  sub_22DDF0028(a1 + v12, v7, &qword_27DA37A40, &unk_22DEC7330);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_22DDEF284(v7, &qword_27DA37A40, &unk_22DEC7330);
  }

  sub_22DDF1788(v7, v11, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody);
  sub_22DDF25F4(&qword_28145B690, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody, "I 5T؉");
  sub_22DEC4AD4();
  return sub_22DEA29F4(v11, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody);
}

uint64_t sub_22DEA33D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38E00, &unk_22DECE2A8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceWarrantyRequest(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV6NDOAPI37Com_Apple_Sse_Ocean_Ndo_Api_DWRequestP33_D45865C3EDEF219685F54D805EFB545613_StorageClass__data;
  swift_beginAccess();
  sub_22DDF0028(a1 + v12, v7, &qword_27DA38E00, &unk_22DECE2A8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_22DDEF284(v7, &qword_27DA38E00, &unk_22DECE2A8);
  }

  sub_22DDF1788(v7, v11, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceWarrantyRequest);
  sub_22DDF25F4(&qword_28145B238, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceWarrantyRequest, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceWarrantyRequest);
  sub_22DEC4AD4();
  return sub_22DEA29F4(v11, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceWarrantyRequest);
}

BOOL sub_22DEA3640(uint64_t a1, uint64_t a2)
{
  v83 = a2;
  v73 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceWarrantyRequest(0);
  v71 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v67 = (&v67 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA39018, &unk_22DECFFF0);
  MEMORY[0x28223BE20](v70);
  v72 = &v67 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38E00, &unk_22DECE2A8);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v68 = (&v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v81 = &v67 - v8;
  v79 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody(0);
  v78 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v69 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38360, &unk_22DECCF70);
  MEMORY[0x28223BE20](v76);
  v80 = &v67 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37A40, &unk_22DEC7330);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v74 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v77 = &v67 - v14;
  v15 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta(0);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v75 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38368, &qword_22DECA2B0);
  v19 = v18 - 8;
  MEMORY[0x28223BE20](v18);
  v21 = &v67 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37A38, &unk_22DEC6570);
  v23 = MEMORY[0x28223BE20](v22 - 8);
  v82 = &v67 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v26 = &v67 - v25;
  v27 = OBJC_IVAR____TtCV6NDOAPI37Com_Apple_Sse_Ocean_Ndo_Api_DWRequestP33_D45865C3EDEF219685F54D805EFB545613_StorageClass__meta;
  swift_beginAccess();
  sub_22DDF0028(a1 + v27, v26, &qword_27DA37A38, &unk_22DEC6570);
  v28 = OBJC_IVAR____TtCV6NDOAPI37Com_Apple_Sse_Ocean_Ndo_Api_DWRequestP33_D45865C3EDEF219685F54D805EFB545613_StorageClass__meta;
  v29 = v83;
  swift_beginAccess();
  v30 = *(v19 + 56);
  sub_22DDF0028(v26, v21, &qword_27DA37A38, &unk_22DEC6570);
  sub_22DDF0028(v29 + v28, &v21[v30], &qword_27DA37A38, &unk_22DEC6570);
  v31 = *(v16 + 48);
  if (v31(v21, 1, v15) == 1)
  {

    sub_22DDEF284(v26, &qword_27DA37A38, &unk_22DEC6570);
    v32 = a1;
    if (v31(&v21[v30], 1, v15) == 1)
    {
      sub_22DDEF284(v21, &qword_27DA37A38, &unk_22DEC6570);
      goto LABEL_8;
    }

LABEL_6:
    v34 = &qword_27DA38368;
    v35 = &qword_22DECA2B0;
    v36 = v21;
LABEL_14:
    sub_22DDEF284(v36, v34, v35);
    goto LABEL_15;
  }

  v32 = a1;
  v33 = v82;
  sub_22DDF0028(v21, v82, &qword_27DA37A38, &unk_22DEC6570);
  if (v31(&v21[v30], 1, v15) == 1)
  {

    sub_22DDEF284(v26, &qword_27DA37A38, &unk_22DEC6570);
    sub_22DEA29F4(v33, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta);
    goto LABEL_6;
  }

  v37 = v75;
  sub_22DDF1788(&v21[v30], v75, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta);

  v38 = static Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta.== infix(_:_:)(v33, v37);
  sub_22DEA29F4(v37, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta);
  sub_22DDEF284(v26, &qword_27DA37A38, &unk_22DEC6570);
  sub_22DEA29F4(v33, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta);
  sub_22DDEF284(v21, &qword_27DA37A38, &unk_22DEC6570);
  if ((v38 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_8:
  v39 = OBJC_IVAR____TtCV6NDOAPI37Com_Apple_Sse_Ocean_Ndo_Api_DWRequestP33_D45865C3EDEF219685F54D805EFB545613_StorageClass__common;
  swift_beginAccess();
  v40 = v77;
  sub_22DDF0028(v32 + v39, v77, &qword_27DA37A40, &unk_22DEC7330);
  v41 = OBJC_IVAR____TtCV6NDOAPI37Com_Apple_Sse_Ocean_Ndo_Api_DWRequestP33_D45865C3EDEF219685F54D805EFB545613_StorageClass__common;
  swift_beginAccess();
  v42 = *(v76 + 48);
  v43 = v80;
  sub_22DDF0028(v40, v80, &qword_27DA37A40, &unk_22DEC7330);
  sub_22DDF0028(v29 + v41, v43 + v42, &qword_27DA37A40, &unk_22DEC7330);
  v44 = *(v78 + 48);
  v45 = v79;
  if (v44(v43, 1, v79) != 1)
  {
    v48 = v74;
    sub_22DDF0028(v43, v74, &qword_27DA37A40, &unk_22DEC7330);
    v49 = v44(v43 + v42, 1, v45);
    v47 = v81;
    if (v49 == 1)
    {
      sub_22DDEF284(v40, &qword_27DA37A40, &unk_22DEC7330);
      sub_22DEA29F4(v48, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody);
      goto LABEL_13;
    }

    v51 = v43 + v42;
    v52 = v69;
    sub_22DDF1788(v51, v69, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody);
    v53 = static Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody.== infix(_:_:)(v48, v52);
    sub_22DEA29F4(v52, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody);
    sub_22DDEF284(v40, &qword_27DA37A40, &unk_22DEC7330);
    sub_22DEA29F4(v48, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody);
    sub_22DDEF284(v43, &qword_27DA37A40, &unk_22DEC7330);
    if (v53)
    {
      goto LABEL_19;
    }

LABEL_15:

    return 0;
  }

  sub_22DDEF284(v40, &qword_27DA37A40, &unk_22DEC7330);
  v46 = v44(v43 + v42, 1, v45);
  v47 = v81;
  if (v46 != 1)
  {
LABEL_13:
    v34 = &qword_27DA38360;
    v35 = &unk_22DECCF70;
    v36 = v43;
    goto LABEL_14;
  }

  sub_22DDEF284(v43, &qword_27DA37A40, &unk_22DEC7330);
LABEL_19:
  v54 = OBJC_IVAR____TtCV6NDOAPI37Com_Apple_Sse_Ocean_Ndo_Api_DWRequestP33_D45865C3EDEF219685F54D805EFB545613_StorageClass__data;
  swift_beginAccess();
  sub_22DDF0028(v32 + v54, v47, &qword_27DA38E00, &unk_22DECE2A8);
  v55 = OBJC_IVAR____TtCV6NDOAPI37Com_Apple_Sse_Ocean_Ndo_Api_DWRequestP33_D45865C3EDEF219685F54D805EFB545613_StorageClass__data;
  swift_beginAccess();
  v56 = *(v70 + 48);
  v57 = v72;
  sub_22DDF0028(v47, v72, &qword_27DA38E00, &unk_22DECE2A8);
  sub_22DDF0028(v29 + v55, v57 + v56, &qword_27DA38E00, &unk_22DECE2A8);
  v58 = *(v71 + 48);
  v59 = v73;
  if (v58(v57, 1, v73) == 1)
  {

    sub_22DDEF284(v47, &qword_27DA38E00, &unk_22DECE2A8);
    if (v58(v57 + v56, 1, v59) == 1)
    {
      sub_22DDEF284(v57, &qword_27DA38E00, &unk_22DECE2A8);
      return 1;
    }

    goto LABEL_25;
  }

  v60 = v59;
  v61 = v68;
  sub_22DDF0028(v57, v68, &qword_27DA38E00, &unk_22DECE2A8);
  if (v58(v57 + v56, 1, v60) == 1)
  {

    sub_22DDEF284(v47, &qword_27DA38E00, &unk_22DECE2A8);
    sub_22DEA29F4(v61, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceWarrantyRequest);
LABEL_25:
    v62 = &qword_27DA39018;
    v63 = &unk_22DECFFF0;
    v64 = v57;
LABEL_31:
    sub_22DDEF284(v64, v62, v63);
    return 0;
  }

  v65 = v67;
  sub_22DDF1788(v57 + v56, v67, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceWarrantyRequest);
  if ((sub_22DE2F604(*v61, *v65) & 1) == 0 || (sub_22DEAFB4C(v61[1], v65[1]) & 1) == 0)
  {

    sub_22DDEF284(v47, &qword_27DA38E00, &unk_22DECE2A8);
    sub_22DEA29F4(v65, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceWarrantyRequest);
    sub_22DEA29F4(v61, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceWarrantyRequest);
    v64 = v57;
    v62 = &qword_27DA38E00;
    v63 = &unk_22DECE2A8;
    goto LABEL_31;
  }

  sub_22DEC48B4();
  sub_22DDF25F4(&qword_27DA37B30, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v66 = sub_22DEC4BF4();

  sub_22DDEF284(v47, &qword_27DA38E00, &unk_22DECE2A8);
  sub_22DEA29F4(v65, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceWarrantyRequest);
  sub_22DEA29F4(v61, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceWarrantyRequest);
  sub_22DDEF284(v57, &qword_27DA38E00, &unk_22DECE2A8);
  return (v66 & 1) != 0;
}

uint64_t sub_22DEA439C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22DDF25F4(&qword_27DA38FD8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWRequest, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_DWRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22DEA443C(uint64_t a1)
{
  v2 = sub_22DDF25F4(&qword_27DA38EB0, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWRequest, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_DWRequest);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22DEA44A8(uint64_t a1, uint64_t a2)
{
  sub_22DDF25F4(&qword_27DA38EB0, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWRequest, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_DWRequest);

  return sub_22DEC4A44();
}

uint64_t sub_22DEA4584()
{
  v0 = sub_22DEC4B14();
  __swift_allocate_value_buffer(v0, qword_28145B248);
  __swift_project_value_buffer(v0, qword_28145B248);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F60, &qword_22DEC8190);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F68, &qword_22DECB000) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22DEC81D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "interested_serials";
  *(v6 + 8) = 18;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_22DEC4AE4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "additional_payload";
  *(v10 + 1) = 18;
  v10[16] = 2;
  v9();
  return sub_22DEC4AF4();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_DeviceWarrantyRequest.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_22DEC4954();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        sub_22DEC49B4();
      }

      else if (result == 2)
      {
        sub_22DEC4884();
        sub_22DEC4944();
      }

      result = sub_22DEC4954();
    }
  }

  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_DeviceWarrantyRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (result = sub_22DEC4AA4(), !v4))
  {
    if (!*(v3[1] + 16) || (sub_22DEC4884(), result = sub_22DEC4A54(), !v4))
    {
      type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceWarrantyRequest(0);
      return sub_22DEC4894();
    }
  }

  return result;
}

uint64_t static Com_Apple_Sse_Ocean_Ndo_Api_DeviceWarrantyRequest.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  if ((sub_22DE2F604(*a1, *a2) & 1) == 0 || (sub_22DEAFB4C(a1[1], a2[1]) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceWarrantyRequest(0);
  sub_22DEC48B4();
  sub_22DDF25F4(&qword_27DA37B30, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_22DEC4BF4() & 1;
}

uint64_t sub_22DEA4A24@<X0>(void *a1@<X8>)
{
  v1 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  a1[1] = sub_22DE0501C(v1);
  return _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
}

uint64_t sub_22DEA4AB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22DDF25F4(&qword_27DA38FD0, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceWarrantyRequest, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceWarrantyRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22DEA4B54(uint64_t a1)
{
  v2 = sub_22DDF25F4(&qword_28145B238, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceWarrantyRequest, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceWarrantyRequest);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22DEA4BC0(uint64_t a1, uint64_t a2)
{
  sub_22DDF25F4(&qword_28145B238, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceWarrantyRequest, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceWarrantyRequest);

  return sub_22DEC4A44();
}

uint64_t sub_22DEA4C3C(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if ((sub_22DE2F604(*a1, *a2) & 1) == 0 || (sub_22DEAFB4C(a1[1], a2[1]) & 1) == 0)
  {
    return 0;
  }

  sub_22DEC48B4();
  sub_22DDF25F4(&qword_27DA37B30, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_22DEC4BF4() & 1;
}

uint64_t sub_22DEA4D10()
{
  v0 = sub_22DEC4B14();
  __swift_allocate_value_buffer(v0, qword_28145CA78);
  __swift_project_value_buffer(v0, qword_28145CA78);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F60, &qword_22DEC8190);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F68, &qword_22DECB000) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22DEC81D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "meta";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22DEC4AE4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "data";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  return sub_22DEC4AF4();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_DWResponse.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_22DEC4954();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_22DEA4F90(a1, v5, a2, a3);
    }

    else if (result == 2)
    {
      sub_22DEA5044(a1, v5, a2, a3);
    }
  }

  return result;
}

uint64_t sub_22DEA4F90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWResponse(0);
  type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta(0);
  sub_22DDF25F4(&qword_28145C498, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta);
  return sub_22DEC49E4();
}

uint64_t sub_22DEA5044(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWResponse(0);
  type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceWarrantyResponse(0);
  sub_22DDF25F4(&qword_28145B0C0, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceWarrantyResponse, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceWarrantyResponse);
  return sub_22DEC49E4();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_DWResponse.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_22DEA5168(v3, a1, a2, a3);
  if (!v4)
  {
    sub_22DEA5384(v3, a1, a2, a3);
    return sub_22DEC4894();
  }

  return result;
}

uint64_t sub_22DEA5168(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38088, &unk_22DEC8220);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWResponse(0);
  sub_22DDF0028(a1 + *(v12 + 20), v7, &qword_27DA38088, &unk_22DEC8220);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_22DDEF284(v7, &qword_27DA38088, &unk_22DEC8220);
  }

  sub_22DDF1788(v7, v11, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta);
  sub_22DDF25F4(&qword_28145C498, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta);
  sub_22DEC4AD4();
  return sub_22DEA29F4(v11, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta);
}

uint64_t sub_22DEA5384(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37DC0, &qword_22DECE2A0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceWarrantyResponse(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWResponse(0);
  sub_22DDF0028(a1 + *(v12 + 24), v7, &qword_27DA37DC0, &qword_22DECE2A0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_22DDEF284(v7, &qword_27DA37DC0, &qword_22DECE2A0);
  }

  sub_22DDF1788(v7, v11, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceWarrantyResponse);
  sub_22DDF25F4(&qword_28145B0C0, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceWarrantyResponse, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceWarrantyResponse);
  sub_22DEC4AD4();
  return sub_22DEA29F4(v11, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceWarrantyResponse);
}

uint64_t sub_22DEA55EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v4 = *(a1 + 20);
  v5 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = *(a1 + 24);
  v7 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceWarrantyResponse(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a2 + v6, 1, 1, v7);
}

uint64_t sub_22DEA56FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_22DDF25F4(&qword_27DA38FC8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWResponse, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_DWResponse);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22DEA579C(uint64_t a1)
{
  v2 = sub_22DDF25F4(&qword_28145CA68, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWResponse, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_DWResponse);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22DEA5808(uint64_t a1, uint64_t a2)
{
  sub_22DDF25F4(&qword_28145CA68, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWResponse, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_DWResponse);

  return sub_22DEC4A44();
}

uint64_t sub_22DEA58A4()
{
  v0 = sub_22DEC4B14();
  __swift_allocate_value_buffer(v0, qword_28145B0D0);
  __swift_project_value_buffer(v0, qword_28145B0D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F60, &qword_22DEC8190);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F68, &qword_22DECB000) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_22DEC5F50;
  v4 = v3 + v2 + v1[14];
  *(v3 + v2) = 2;
  *v4 = "warranties";
  *(v4 + 8) = 10;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_22DEC4AE4();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  return sub_22DEC4AF4();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_DeviceWarrantyResponse.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_22DEC4954();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 2)
      {
        type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData(0);
        sub_22DDF25F4(&qword_28145C208, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData);
        sub_22DEC49D4();
      }

      result = sub_22DEC4954();
    }
  }

  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_DeviceWarrantyResponse.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData(0), sub_22DDF25F4(&qword_28145C208, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData), result = sub_22DEC4AC4(), !v4))
  {
    type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceWarrantyResponse(0);
    return sub_22DEC4894();
  }

  return result;
}

uint64_t static Com_Apple_Sse_Ocean_Ndo_Api_DeviceWarrantyResponse.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  if ((sub_22DE308A4(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceWarrantyResponse(0);
  sub_22DEC48B4();
  sub_22DDF25F4(&qword_27DA37B30, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_22DEC4BF4() & 1;
}

uint64_t sub_22DEA5D34(uint64_t a1, uint64_t a2)
{
  v4 = sub_22DDF25F4(&qword_27DA38FC0, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceWarrantyResponse, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceWarrantyResponse);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22DEA5DD4(uint64_t a1)
{
  v2 = sub_22DDF25F4(&qword_28145B0C0, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceWarrantyResponse, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceWarrantyResponse);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22DEA5E40(uint64_t a1, uint64_t a2)
{
  sub_22DDF25F4(&qword_28145B0C0, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceWarrantyResponse, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceWarrantyResponse);

  return sub_22DEC4A44();
}

uint64_t sub_22DEA5EBC(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if ((sub_22DE308A4(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  sub_22DEC48B4();
  sub_22DDF25F4(&qword_27DA37B30, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_22DEC4BF4() & 1;
}

uint64_t sub_22DEA5F80()
{
  v0 = sub_22DEC4B14();
  __swift_allocate_value_buffer(v0, qword_28145C218);
  __swift_project_value_buffer(v0, qword_28145C218);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F60, &qword_22DEC8190);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F68, &qword_22DECB000) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22DEC81E0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "serial_number";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_22DEC4AE4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "coverage_label";
  *(v10 + 8) = 14;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "has_theft_and_loss_benefit";
  *(v12 + 1) = 26;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "settings_coverage_section";
  *(v14 + 1) = 25;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "foreground_cache_ttl";
  *(v16 + 1) = 20;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "coverage_hash";
  *(v18 + 1) = 13;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "sections";
  *(v20 + 1) = 8;
  v20[16] = 2;
  v9();
  return sub_22DEC4AF4();
}

uint64_t sub_22DEA62B4()
{
  type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData._StorageClass(0);
  v0 = swift_allocObject();
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 2;
  v1 = OBJC_IVAR____TtCV6NDOAPI40Com_Apple_Sse_Ocean_Ndo_Api_WarrantyDataP33_D45865C3EDEF219685F54D805EFB545613_StorageClass__settingsCoverageSection;
  v2 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_SettingsCoverageSection(0);
  result = (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v4 = v0 + OBJC_IVAR____TtCV6NDOAPI40Com_Apple_Sse_Ocean_Ndo_Api_WarrantyDataP33_D45865C3EDEF219685F54D805EFB545613_StorageClass__foregroundCacheTtl;
  *v4 = 0;
  *(v4 + 8) = 1;
  v5 = (v0 + OBJC_IVAR____TtCV6NDOAPI40Com_Apple_Sse_Ocean_Ndo_Api_WarrantyDataP33_D45865C3EDEF219685F54D805EFB545613_StorageClass__coverageHash);
  *v5 = 0;
  v5[1] = 0;
  *(v0 + OBJC_IVAR____TtCV6NDOAPI40Com_Apple_Sse_Ocean_Ndo_Api_WarrantyDataP33_D45865C3EDEF219685F54D805EFB545613_StorageClass__sections) = MEMORY[0x277D84F90];
  qword_28145C3E0 = v0;
  return result;
}

uint64_t sub_22DEA638C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWSection(0);
  sub_22DDF25F4(&qword_28145CC88, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWSection, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_DWSection);
  sub_22DEC49D4();
  return swift_endAccess();
}

uint64_t sub_22DEA64A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void, uint64_t, uint64_t, uint64_t))
{
  v11 = a4(0);
  result = a5(*(v5 + *(v11 + 20)), a1, a2, a3);
  if (!v6)
  {
    return sub_22DEC4894();
  }

  return result;
}

uint64_t sub_22DEA6528(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_22DE51FF4(a1, a2, a3, a4);
  if (!v4)
  {
    sub_22DE52090(a1, a2, a3, a4);
    sub_22DEA6698(a1, a2, a3, a4);
    sub_22DEA6720(a1, a2, a3, a4);
    sub_22DEA6948(a1, a2, a3, a4);
    sub_22DEA69D4(a1, a2, a3, a4);
    v10 = OBJC_IVAR____TtCV6NDOAPI40Com_Apple_Sse_Ocean_Ndo_Api_WarrantyDataP33_D45865C3EDEF219685F54D805EFB545613_StorageClass__sections;
    result = swift_beginAccess();
    if (*(*(a1 + v10) + 16))
    {
      type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWSection(0);
      sub_22DDF25F4(&qword_28145CC88, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWSection, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_DWSection);

      sub_22DEC4AC4();
    }
  }

  return result;
}

uint64_t sub_22DEA6698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if (*(a1 + 48) != 2)
  {
    return sub_22DEC4A64();
  }

  return result;
}

uint64_t sub_22DEA6720(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38E08, &qword_22DECE2B8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_SettingsCoverageSection(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV6NDOAPI40Com_Apple_Sse_Ocean_Ndo_Api_WarrantyDataP33_D45865C3EDEF219685F54D805EFB545613_StorageClass__settingsCoverageSection;
  swift_beginAccess();
  sub_22DDF0028(a1 + v12, v7, &qword_27DA38E08, &qword_22DECE2B8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_22DDEF284(v7, &qword_27DA38E08, &qword_22DECE2B8);
  }

  sub_22DDF1788(v7, v11, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_SettingsCoverageSection);
  sub_22DDF25F4(&qword_28145AFF8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_SettingsCoverageSection, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_SettingsCoverageSection);
  sub_22DEC4AD4();
  return sub_22DEA29F4(v11, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_SettingsCoverageSection);
}

uint64_t sub_22DEA6948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1 + OBJC_IVAR____TtCV6NDOAPI40Com_Apple_Sse_Ocean_Ndo_Api_WarrantyDataP33_D45865C3EDEF219685F54D805EFB545613_StorageClass__foregroundCacheTtl;
  result = swift_beginAccess();
  if ((*(v4 + 8) & 1) == 0)
  {
    return sub_22DEC4A94();
  }

  return result;
}

uint64_t sub_22DEA69D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1 + OBJC_IVAR____TtCV6NDOAPI40Com_Apple_Sse_Ocean_Ndo_Api_WarrantyDataP33_D45865C3EDEF219685F54D805EFB545613_StorageClass__coverageHash;
  result = swift_beginAccess();
  if (*(v4 + 8))
  {

    sub_22DEC4AB4();
  }

  return result;
}

uint64_t sub_22DEA6ABC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_SettingsCoverageSection(0);
  v50 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA39008, &qword_22DECFFD8);
  MEMORY[0x28223BE20](v7);
  v51 = &v49 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38E08, &qword_22DECE2B8);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v49 - v13;
  swift_beginAccess();
  v16 = *(a1 + 16);
  v15 = *(a1 + 24);
  swift_beginAccess();
  v17 = *(a2 + 24);
  if (v15)
  {
    if (!v17 || (v16 != *(a2 + 16) || v15 != v17) && (sub_22DEC50E4() & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  else if (v17)
  {
    goto LABEL_28;
  }

  swift_beginAccess();
  v18 = *(a1 + 32);
  v19 = *(a1 + 40);
  swift_beginAccess();
  v20 = *(a2 + 40);
  if (v19)
  {
    if (!v20 || (v18 != *(a2 + 32) || v19 != v20) && (sub_22DEC50E4() & 1) == 0)
    {
      goto LABEL_28;
    }

LABEL_15:
    swift_beginAccess();
    v21 = *(a1 + 48);
    swift_beginAccess();
    v22 = *(a2 + 48);
    if (v21 == 2)
    {
      if (v22 != 2)
      {
        goto LABEL_28;
      }
    }

    else if (v22 == 2 || ((v21 ^ v22) & 1) != 0)
    {
      goto LABEL_28;
    }

    v23 = OBJC_IVAR____TtCV6NDOAPI40Com_Apple_Sse_Ocean_Ndo_Api_WarrantyDataP33_D45865C3EDEF219685F54D805EFB545613_StorageClass__settingsCoverageSection;
    swift_beginAccess();
    sub_22DDF0028(a1 + v23, v14, &qword_27DA38E08, &qword_22DECE2B8);
    v24 = OBJC_IVAR____TtCV6NDOAPI40Com_Apple_Sse_Ocean_Ndo_Api_WarrantyDataP33_D45865C3EDEF219685F54D805EFB545613_StorageClass__settingsCoverageSection;
    swift_beginAccess();
    v25 = *(v7 + 48);
    v26 = v51;
    sub_22DDF0028(v14, v51, &qword_27DA38E08, &qword_22DECE2B8);
    v49 = v25;
    sub_22DDF0028(a2 + v24, v26 + v25, &qword_27DA38E08, &qword_22DECE2B8);
    v27 = *(v50 + 48);
    if (v27(v26, 1, v4) == 1)
    {

      sub_22DDEF284(v14, &qword_27DA38E08, &qword_22DECE2B8);
      v28 = v51;
      v29 = v27(v51 + v49, 1, v4) == 1;
      v30 = v28;
      if (!v29)
      {
        goto LABEL_26;
      }

      sub_22DDEF284(v28, &qword_27DA38E08, &qword_22DECE2B8);
    }

    else
    {
      v31 = v51;
      sub_22DDF0028(v51, v12, &qword_27DA38E08, &qword_22DECE2B8);
      if (v27(v31 + v49, 1, v4) == 1)
      {

        sub_22DDEF284(v14, &qword_27DA38E08, &qword_22DECE2B8);
        sub_22DEA29F4(v12, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_SettingsCoverageSection);
        v30 = v51;
LABEL_26:
        sub_22DDEF284(v30, &qword_27DA39008, &qword_22DECFFD8);
LABEL_27:

        goto LABEL_28;
      }

      v34 = v51;
      sub_22DDF1788(v51 + v49, v6, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_SettingsCoverageSection);

      v35 = _s6NDOAPI51Com_Apple_Sse_Ocean_Ndo_Api_SettingsCoverageSectionV2eeoiySbAC_ACtFZ_0(v12, v6);
      sub_22DEA29F4(v6, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_SettingsCoverageSection);
      sub_22DDEF284(v14, &qword_27DA38E08, &qword_22DECE2B8);
      sub_22DEA29F4(v12, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_SettingsCoverageSection);
      sub_22DDEF284(v34, &qword_27DA38E08, &qword_22DECE2B8);
      if ((v35 & 1) == 0)
      {
        goto LABEL_27;
      }
    }

    v36 = (a1 + OBJC_IVAR____TtCV6NDOAPI40Com_Apple_Sse_Ocean_Ndo_Api_WarrantyDataP33_D45865C3EDEF219685F54D805EFB545613_StorageClass__foregroundCacheTtl);
    swift_beginAccess();
    v37 = *v36;
    v38 = *(v36 + 8);
    v39 = a2 + OBJC_IVAR____TtCV6NDOAPI40Com_Apple_Sse_Ocean_Ndo_Api_WarrantyDataP33_D45865C3EDEF219685F54D805EFB545613_StorageClass__foregroundCacheTtl;
    swift_beginAccess();
    if (v38)
    {
      if ((*(v39 + 8) & 1) == 0)
      {
        goto LABEL_27;
      }
    }

    else if ((*(v39 + 8) & 1) != 0 || v37 != *v39)
    {
      goto LABEL_27;
    }

    v40 = (a1 + OBJC_IVAR____TtCV6NDOAPI40Com_Apple_Sse_Ocean_Ndo_Api_WarrantyDataP33_D45865C3EDEF219685F54D805EFB545613_StorageClass__coverageHash);
    swift_beginAccess();
    v41 = *v40;
    v42 = v40[1];
    v43 = (a2 + OBJC_IVAR____TtCV6NDOAPI40Com_Apple_Sse_Ocean_Ndo_Api_WarrantyDataP33_D45865C3EDEF219685F54D805EFB545613_StorageClass__coverageHash);
    swift_beginAccess();
    v44 = v43[1];
    if (v42)
    {
      if (!v44 || (v41 != *v43 || v42 != v44) && (sub_22DEC50E4() & 1) == 0)
      {
        goto LABEL_27;
      }
    }

    else if (v44)
    {
      goto LABEL_27;
    }

    v45 = OBJC_IVAR____TtCV6NDOAPI40Com_Apple_Sse_Ocean_Ndo_Api_WarrantyDataP33_D45865C3EDEF219685F54D805EFB545613_StorageClass__sections;
    swift_beginAccess();
    v46 = *(a1 + v45);
    v47 = OBJC_IVAR____TtCV6NDOAPI40Com_Apple_Sse_Ocean_Ndo_Api_WarrantyDataP33_D45865C3EDEF219685F54D805EFB545613_StorageClass__sections;
    swift_beginAccess();
    v48 = *(a2 + v47);

    v32 = sub_22DE329F4(v46, v48);

    return v32 & 1;
  }

  if (!v20)
  {
    goto LABEL_15;
  }

LABEL_28:
  v32 = 0;
  return v32 & 1;
}

uint64_t sub_22DEA71D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22DDF25F4(&qword_27DA38FB8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22DEA7250(uint64_t a1)
{
  v2 = sub_22DDF25F4(&qword_28145C208, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22DEA72BC(uint64_t a1, uint64_t a2)
{
  sub_22DDF25F4(&qword_28145C208, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData);

  return sub_22DEC4A44();
}

uint64_t sub_22DEA7398()
{
  v0 = sub_22DEC4B14();
  __swift_allocate_value_buffer(v0, qword_28145B008);
  __swift_project_value_buffer(v0, qword_28145B008);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F60, &qword_22DEC8190);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F68, &qword_22DECB000) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22DEC81D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 4;
  *v6 = "coverage_expiration_label";
  *(v6 + 8) = 25;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_22DEC4AE4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 5;
  *v10 = "offer";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return sub_22DEC4AF4();
}

uint64_t sub_22DEA758C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_SettingsCoverageSection(0);
  type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_SettingsCoverageSectionOffer(0);
  sub_22DDF25F4(&qword_28145AF28, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_SettingsCoverageSectionOffer, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_SettingsCoverageSectionOffer);
  return sub_22DEC49E4();
}

uint64_t sub_22DEA7684(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38E10, &qword_22DECE2C0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_SettingsCoverageSectionOffer(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_SettingsCoverageSection(0);
  sub_22DDF0028(a1 + *(v12 + 24), v7, &qword_27DA38E10, &qword_22DECE2C0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_22DDEF284(v7, &qword_27DA38E10, &qword_22DECE2C0);
  }

  sub_22DDF1788(v7, v11, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_SettingsCoverageSectionOffer);
  sub_22DDF25F4(&qword_28145AF28, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_SettingsCoverageSectionOffer, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_SettingsCoverageSectionOffer);
  sub_22DEC4AD4();
  return sub_22DEA29F4(v11, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_SettingsCoverageSectionOffer);
}

uint64_t sub_22DEA7920(uint64_t a1, uint64_t a2)
{
  v4 = sub_22DDF25F4(&qword_27DA38FB0, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_SettingsCoverageSection, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_SettingsCoverageSection);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22DEA799C(uint64_t a1)
{
  v2 = sub_22DDF25F4(&qword_28145AFF8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_SettingsCoverageSection, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_SettingsCoverageSection);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22DEA7A08(uint64_t a1, uint64_t a2)
{
  sub_22DDF25F4(&qword_28145AFF8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_SettingsCoverageSection, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_SettingsCoverageSection);

  return sub_22DEC4A44();
}

uint64_t sub_22DEA7AA4()
{
  v0 = sub_22DEC4B14();
  __swift_allocate_value_buffer(v0, qword_28145AF38);
  __swift_project_value_buffer(v0, qword_28145AF38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F60, &qword_22DEC8190);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F68, &qword_22DECB000) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22DEC7570;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "link";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22DEC4AE4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "singular_footer";
  *(v10 + 8) = 15;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "plural_footer";
  *(v12 + 1) = 13;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "expiration";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v9();
  return sub_22DEC4AF4();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_SettingsCoverageSectionOffer.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_22DEC4954();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    if (result > 2)
    {
      if (result == 3)
      {
        goto LABEL_12;
      }

      if (result == 4)
      {
        type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_SettingsCoverageSectionOffer(0);
        sub_22DEC49A4();
      }
    }

    else if (result == 1)
    {
      sub_22DEA7E2C(a1, v5, a2, a3);
    }

    else if (result == 2)
    {
LABEL_12:
      type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_SettingsCoverageSectionOffer(0);
      sub_22DEC49C4();
    }
  }
}

uint64_t sub_22DEA7E2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_SettingsCoverageSectionOffer(0);
  type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink(0);
  sub_22DDF25F4(&qword_28145D7E0, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
  return sub_22DEC49E4();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_SettingsCoverageSectionOffer.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_22DEA7FB0(v3, a1, a2, a3);
  if (!v4)
  {
    sub_22DEA89CC(v3, a1, a2, a3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_SettingsCoverageSectionOffer, 2);
    sub_22DEA8A50(v3, a1, a2, a3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_SettingsCoverageSectionOffer, 3);
    sub_22DEA81CC(v3, a1, a2, a3);
    return sub_22DEC4894();
  }

  return result;
}

uint64_t sub_22DEA7FB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37D88, &unk_22DEC8210);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_SettingsCoverageSectionOffer(0);
  sub_22DDF0028(a1 + *(v12 + 20), v7, &qword_27DA37D88, &unk_22DEC8210);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_22DDEF284(v7, &qword_27DA37D88, &unk_22DEC8210);
  }

  sub_22DDF1788(v7, v11, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
  sub_22DDF25F4(&qword_28145D7E0, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
  sub_22DEC4AD4();
  return sub_22DEA29F4(v11, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
}

uint64_t sub_22DEA81CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_SettingsCoverageSectionOffer(0);
  if ((*(a1 + *(result + 32) + 8) & 1) == 0)
  {
    return sub_22DEC4A94();
  }

  return result;
}

uint64_t sub_22DEA8290@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v4 = a1[5];
  v5 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink(0);
  result = (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v7 = a1[7];
  v8 = (a2 + a1[6]);
  *v8 = 0;
  v8[1] = 0;
  v9 = (a2 + v7);
  *v9 = 0;
  v9[1] = 0;
  v10 = a2 + a1[8];
  *v10 = 0;
  *(v10 + 8) = 1;
  return result;
}

uint64_t sub_22DEA8378(uint64_t a1, uint64_t a2)
{
  v4 = sub_22DDF25F4(&qword_27DA38FA8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_SettingsCoverageSectionOffer, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_SettingsCoverageSectionOffer);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22DEA8418(uint64_t a1)
{
  v2 = sub_22DDF25F4(&qword_28145AF28, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_SettingsCoverageSectionOffer, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_SettingsCoverageSectionOffer);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22DEA8484(uint64_t a1, uint64_t a2)
{
  sub_22DDF25F4(&qword_28145AF28, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_SettingsCoverageSectionOffer, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_SettingsCoverageSectionOffer);

  return sub_22DEC4A44();
}

uint64_t sub_22DEA8520()
{
  v0 = sub_22DEC4B14();
  __swift_allocate_value_buffer(v0, qword_28145CC98);
  __swift_project_value_buffer(v0, qword_28145CC98);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F60, &qword_22DEC8190);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F68, &qword_22DECB000) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22DEC77C0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "header";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22DEC4AE4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "items";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "footer";
  *(v11 + 8) = 6;
  *(v11 + 16) = 2;
  v9();
  return sub_22DEC4AF4();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_DWSection.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_22DEC4954();
  if (!v3)
  {
    while (1)
    {
      if (v5)
      {
        return result;
      }

      switch(result)
      {
        case 3:
          goto LABEL_10;
        case 2:
          type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem(0);
          sub_22DDF25F4(&qword_28145D660, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem);
          sub_22DEC49D4();
          break;
        case 1:
LABEL_10:
          type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWSection(0);
          sub_22DEC49C4();
          break;
      }

      result = sub_22DEC4954();
    }
  }

  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_DWSection.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_22DEA89CC(v3, a1, a2, a3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWSection, 1);
  if (!v4)
  {
    if (*(*v3 + 16))
    {
      type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem(0);
      sub_22DDF25F4(&qword_28145D660, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem);
      sub_22DEC4AC4();
    }

    sub_22DEA8A50(v3, a1, a2, a3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWSection, 3);
    type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWSection(0);
    return sub_22DEC4894();
  }

  return result;
}

uint64_t sub_22DEA89CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6)
{
  result = a5(0);
  if (*(a1 + *(result + 24) + 8))
  {
    return sub_22DEC4AB4();
  }

  return result;
}

uint64_t sub_22DEA8A50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6)
{
  result = a5(0);
  if (*(a1 + *(result + 28) + 8))
  {
    return sub_22DEC4AB4();
  }

  return result;
}

uint64_t sub_22DEA8BAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_22DDF25F4(&qword_27DA38FA0, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWSection, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_DWSection);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22DEA8C4C(uint64_t a1)
{
  v2 = sub_22DDF25F4(&qword_28145CC88, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWSection, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_DWSection);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22DEA8CB8(uint64_t a1, uint64_t a2)
{
  sub_22DDF25F4(&qword_28145CC88, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWSection, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_DWSection);

  return sub_22DEC4A44();
}

uint64_t sub_22DEA8D94()
{
  v0 = sub_22DEC4B14();
  __swift_allocate_value_buffer(v0, qword_28145D670);
  __swift_project_value_buffer(v0, qword_28145D670);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F60, &qword_22DEC8190);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F68, &qword_22DECB000) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22DECB020;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "type";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22DEC4AE4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "dw_promo_data";
  *(v10 + 8) = 13;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "dw_coverage_data";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "link_data";
  *(v14 + 1) = 9;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "dw_support_app_data";
  *(v16 + 1) = 19;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "dw_footer_data";
  *(v18 + 1) = 14;
  v18[16] = 2;
  v9();
  return sub_22DEC4AF4();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_DWItem.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_22DEC4954();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result > 3)
    {
      switch(result)
      {
        case 4:
          sub_22DEA9D9C(v5, a1, a2, a3);
          break;
        case 5:
          sub_22DEAA358(v5, a1, a2, a3);
          break;
        case 6:
          sub_22DEAA914(v5, a1, a2, a3);
          break;
      }
    }

    else
    {
      switch(result)
      {
        case 1:
          sub_22DEA91BC(a1, v5, a2, a3);
          break;
        case 2:
          sub_22DEA9230(v5, a1, a2, a3);
          break;
        case 3:
          sub_22DEA97E0(v5, a1, a2, a3);
          break;
      }
    }
  }

  return result;
}

uint64_t sub_22DEA91BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem(0);
  sub_22DEB59C0();
  return sub_22DEC4984();
}

uint64_t sub_22DEA9230(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWPromoData(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v40 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v39 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F18, &unk_22DEC8140);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem.OneOf_Data(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38FE0, &qword_22DECFFA8);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_22DDF0028(a1, v12, &qword_27DA37F18, &unk_22DEC8140);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_22DDEF284(v12, &qword_27DA37F18, &unk_22DEC8140);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_22DDF1788(v12, v19, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem.OneOf_Data);
    sub_22DDF1788(v19, v17, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem.OneOf_Data);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload())
    {
      sub_22DEA29F4(v17, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem.OneOf_Data);
      v29 = v44;
    }

    else
    {
      sub_22DDEF284(v24, &qword_27DA38FE0, &qword_22DECFFA8);
      v31 = v39;
      sub_22DDF1788(v17, v39, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWPromoData);
      sub_22DDF1788(v31, v24, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWPromoData);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }
  }

  v32 = v42;
  sub_22DDF25F4(&qword_27DA38F08, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWPromoData, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_DWPromoData);
  v33 = v43;
  sub_22DEC49E4();
  if (v33)
  {
    return sub_22DDEF284(v24, &qword_27DA38FE0, &qword_22DECFFA8);
  }

  sub_22DDF0028(v24, v32, &qword_27DA38FE0, &qword_22DECFFA8);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_22DDEF284(v24, &qword_27DA38FE0, &qword_22DECFFA8);
    return sub_22DDEF284(v32, &qword_27DA38FE0, &qword_22DECFFA8);
  }

  else
  {
    v35 = v40;
    sub_22DDF1788(v32, v40, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWPromoData);
    if (v28 != 1)
    {
      sub_22DEC4964();
    }

    sub_22DDEF284(v24, &qword_27DA38FE0, &qword_22DECFFA8);
    v36 = v38;
    sub_22DDEF284(v38, &qword_27DA37F18, &unk_22DEC8140);
    sub_22DDF1788(v35, v36, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWPromoData);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_22DEA97E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageData(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F18, &unk_22DEC8140);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem.OneOf_Data(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38FE8, &qword_22DECFFB0);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_22DDF0028(a1, v12, &qword_27DA37F18, &unk_22DEC8140);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_22DDEF284(v12, &qword_27DA37F18, &unk_22DEC8140);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_22DDF1788(v12, v19, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem.OneOf_Data);
    sub_22DDF1788(v19, v17, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem.OneOf_Data);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_22DDEF284(v24, &qword_27DA38FE8, &qword_22DECFFB0);
      v31 = v40;
      sub_22DDF1788(v17, v40, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageData);
      sub_22DDF1788(v31, v24, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageData);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_22DEA29F4(v17, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem.OneOf_Data);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_22DDF25F4(&qword_28145BF38, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageData, "A\b5TDt");
  v33 = v43;
  sub_22DEC49E4();
  if (v33)
  {
    return sub_22DDEF284(v24, &qword_27DA38FE8, &qword_22DECFFB0);
  }

  sub_22DDF0028(v24, v32, &qword_27DA38FE8, &qword_22DECFFB0);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_22DDEF284(v24, &qword_27DA38FE8, &qword_22DECFFB0);
    return sub_22DDEF284(v32, &qword_27DA38FE8, &qword_22DECFFB0);
  }

  else
  {
    v35 = v39;
    sub_22DDF1788(v32, v39, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageData);
    if (v28 != 1)
    {
      sub_22DEC4964();
    }

    sub_22DDEF284(v24, &qword_27DA38FE8, &qword_22DECFFB0);
    v36 = v38;
    sub_22DDEF284(v38, &qword_27DA37F18, &unk_22DEC8140);
    sub_22DDF1788(v35, v36, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageData);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_22DEA9D9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F18, &unk_22DEC8140);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem.OneOf_Data(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37D88, &unk_22DEC8210);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_22DDF0028(a1, v12, &qword_27DA37F18, &unk_22DEC8140);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_22DDEF284(v12, &qword_27DA37F18, &unk_22DEC8140);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_22DDF1788(v12, v19, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem.OneOf_Data);
    sub_22DDF1788(v19, v17, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem.OneOf_Data);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_22DDEF284(v24, &qword_27DA37D88, &unk_22DEC8210);
      v31 = v40;
      sub_22DDF1788(v17, v40, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
      sub_22DDF1788(v31, v24, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_22DEA29F4(v17, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem.OneOf_Data);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_22DDF25F4(&qword_28145D7E0, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
  v33 = v43;
  sub_22DEC49E4();
  if (v33)
  {
    return sub_22DDEF284(v24, &qword_27DA37D88, &unk_22DEC8210);
  }

  sub_22DDF0028(v24, v32, &qword_27DA37D88, &unk_22DEC8210);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_22DDEF284(v24, &qword_27DA37D88, &unk_22DEC8210);
    return sub_22DDEF284(v32, &qword_27DA37D88, &unk_22DEC8210);
  }

  else
  {
    v35 = v39;
    sub_22DDF1788(v32, v39, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
    if (v28 != 1)
    {
      sub_22DEC4964();
    }

    sub_22DDEF284(v24, &qword_27DA37D88, &unk_22DEC8210);
    v36 = v38;
    sub_22DDEF284(v38, &qword_27DA37F18, &unk_22DEC8140);
    sub_22DDF1788(v35, v36, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_22DEAA358(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppData(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F18, &unk_22DEC8140);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem.OneOf_Data(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38FF0, &qword_22DECFFB8);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_22DDF0028(a1, v12, &qword_27DA37F18, &unk_22DEC8140);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_22DDEF284(v12, &qword_27DA37F18, &unk_22DEC8140);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_22DDF1788(v12, v19, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem.OneOf_Data);
    sub_22DDF1788(v19, v17, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem.OneOf_Data);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_22DDEF284(v24, &qword_27DA38FF0, &qword_22DECFFB8);
      v31 = v40;
      sub_22DDF1788(v17, v40, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppData);
      sub_22DDF1788(v31, v24, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppData);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_22DEA29F4(v17, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem.OneOf_Data);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_22DDF25F4(&qword_27DA38F48, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppData, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppData);
  v33 = v43;
  sub_22DEC49E4();
  if (v33)
  {
    return sub_22DDEF284(v24, &qword_27DA38FF0, &qword_22DECFFB8);
  }

  sub_22DDF0028(v24, v32, &qword_27DA38FF0, &qword_22DECFFB8);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_22DDEF284(v24, &qword_27DA38FF0, &qword_22DECFFB8);
    return sub_22DDEF284(v32, &qword_27DA38FF0, &qword_22DECFFB8);
  }

  else
  {
    v35 = v39;
    sub_22DDF1788(v32, v39, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppData);
    if (v28 != 1)
    {
      sub_22DEC4964();
    }

    sub_22DDEF284(v24, &qword_27DA38FF0, &qword_22DECFFB8);
    v36 = v38;
    sub_22DDEF284(v38, &qword_27DA37F18, &unk_22DEC8140);
    sub_22DDF1788(v35, v36, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppData);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_22DEAA914(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWFooter(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F18, &unk_22DEC8140);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem.OneOf_Data(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38FF8, &unk_22DECFFC0);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_22DDF0028(a1, v12, &qword_27DA37F18, &unk_22DEC8140);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_22DDEF284(v12, &qword_27DA37F18, &unk_22DEC8140);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_22DDF1788(v12, v19, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem.OneOf_Data);
    sub_22DDF1788(v19, v17, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem.OneOf_Data);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_22DDEF284(v24, &qword_27DA38FF8, &unk_22DECFFC0);
      v31 = v40;
      sub_22DDF1788(v17, v40, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWFooter);
      sub_22DDF1788(v31, v24, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWFooter);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_22DEA29F4(v17, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem.OneOf_Data);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_22DDF25F4(&qword_28145D340, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWFooter, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_DWFooter);
  v33 = v43;
  sub_22DEC49E4();
  if (v33)
  {
    return sub_22DDEF284(v24, &qword_27DA38FF8, &unk_22DECFFC0);
  }

  sub_22DDF0028(v24, v32, &qword_27DA38FF8, &unk_22DECFFC0);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_22DDEF284(v24, &qword_27DA38FF8, &unk_22DECFFC0);
    return sub_22DDEF284(v32, &qword_27DA38FF8, &unk_22DECFFC0);
  }

  else
  {
    v35 = v39;
    sub_22DDF1788(v32, v39, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWFooter);
    if (v28 != 1)
    {
      sub_22DEC4964();
    }

    sub_22DDEF284(v24, &qword_27DA38FF8, &unk_22DECFFC0);
    v36 = v38;
    sub_22DDEF284(v38, &qword_27DA37F18, &unk_22DEC8140);
    sub_22DDF1788(v35, v36, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWFooter);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_DWItem.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F18, &unk_22DEC8140);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v14 - v9;
  result = sub_22DEAB0E8(v3, a1, a2, a3);
  if (!v4)
  {
    sub_22DDF0028(v3, v10, &qword_27DA37F18, &unk_22DEC8140);
    v12 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem.OneOf_Data(0);
    if ((*(*(v12 - 8) + 48))(v10, 1, v12) != 1)
    {
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 1)
      {
        if (EnumCaseMultiPayload)
        {
          sub_22DEAB3A8(v3, a1, a2, a3);
        }

        else
        {
          sub_22DEAB174(v3, a1, a2, a3);
        }
      }

      else if (EnumCaseMultiPayload == 2)
      {
        sub_22DEAB5E0(v3, a1, a2, a3);
      }

      else if (EnumCaseMultiPayload == 3)
      {
        sub_22DEAB818(v3, a1, a2, a3);
      }

      else
      {
        sub_22DEABA50(v3, a1, a2, a3);
      }

      sub_22DEA29F4(v10, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem.OneOf_Data);
    }

    type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem(0);
    return sub_22DEC4894();
  }

  return result;
}

uint64_t sub_22DEAB0E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem(0);
  if (*(a1 + *(result + 24)) != 5)
  {
    sub_22DEB59C0();
    return sub_22DEC4A74();
  }

  return result;
}

uint64_t sub_22DEAB174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F18, &unk_22DEC8140);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWPromoData(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22DDF0028(a1, v7, &qword_27DA37F18, &unk_22DEC8140);
  v11 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem.OneOf_Data(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_22DDEF284(v7, &qword_27DA37F18, &unk_22DEC8140);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_22DDF1788(v7, v10, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWPromoData);
    sub_22DDF25F4(&qword_27DA38F08, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWPromoData, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_DWPromoData);
    sub_22DEC4AD4();
    return sub_22DEA29F4(v10, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWPromoData);
  }

  result = sub_22DEA29F4(v7, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem.OneOf_Data);
  __break(1u);
  return result;
}

uint64_t sub_22DEAB3A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F18, &unk_22DEC8140);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageData(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22DDF0028(a1, v7, &qword_27DA37F18, &unk_22DEC8140);
  v11 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem.OneOf_Data(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_22DDEF284(v7, &qword_27DA37F18, &unk_22DEC8140);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_22DDF1788(v7, v10, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageData);
    sub_22DDF25F4(&qword_28145BF38, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageData, "A\b5TDt");
    sub_22DEC4AD4();
    return sub_22DEA29F4(v10, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageData);
  }

  result = sub_22DEA29F4(v7, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem.OneOf_Data);
  __break(1u);
  return result;
}

uint64_t sub_22DEAB5E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F18, &unk_22DEC8140);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22DDF0028(a1, v7, &qword_27DA37F18, &unk_22DEC8140);
  v11 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem.OneOf_Data(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_22DDEF284(v7, &qword_27DA37F18, &unk_22DEC8140);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_22DDF1788(v7, v10, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
    sub_22DDF25F4(&qword_28145D7E0, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
    sub_22DEC4AD4();
    return sub_22DEA29F4(v10, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
  }

  result = sub_22DEA29F4(v7, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem.OneOf_Data);
  __break(1u);
  return result;
}

uint64_t sub_22DEAB818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F18, &unk_22DEC8140);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppData(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22DDF0028(a1, v7, &qword_27DA37F18, &unk_22DEC8140);
  v11 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem.OneOf_Data(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_22DDEF284(v7, &qword_27DA37F18, &unk_22DEC8140);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    sub_22DDF1788(v7, v10, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppData);
    sub_22DDF25F4(&qword_27DA38F48, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppData, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppData);
    sub_22DEC4AD4();
    return sub_22DEA29F4(v10, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppData);
  }

  result = sub_22DEA29F4(v7, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem.OneOf_Data);
  __break(1u);
  return result;
}

uint64_t sub_22DEABA50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F18, &unk_22DEC8140);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWFooter(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22DDF0028(a1, v7, &qword_27DA37F18, &unk_22DEC8140);
  v11 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem.OneOf_Data(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_22DDEF284(v7, &qword_27DA37F18, &unk_22DEC8140);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 4)
  {
    sub_22DDF1788(v7, v10, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWFooter);
    sub_22DDF25F4(&qword_28145D340, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWFooter, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_DWFooter);
    sub_22DEC4AD4();
    return sub_22DEA29F4(v10, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWFooter);
  }

  result = sub_22DEA29F4(v7, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem.OneOf_Data);
  __break(1u);
  return result;
}

uint64_t sub_22DEABCD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem.OneOf_Data(0);
  (*(*(v4 - 8) + 56))(a2, 1, 1, v4);
  result = _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  *(a2 + *(a1 + 24)) = 5;
  return result;
}

uint64_t sub_22DEABD9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22DDF25F4(&qword_27DA38F98, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem, "i\b5T$v");

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22DEABE3C(uint64_t a1)
{
  v2 = sub_22DDF25F4(&qword_28145D660, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22DEABEA8(uint64_t a1, uint64_t a2)
{
  sub_22DDF25F4(&qword_28145D660, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem);

  return sub_22DEC4A44();
}

uint64_t sub_22DEABF44()
{
  v0 = sub_22DEC4B14();
  __swift_allocate_value_buffer(v0, qword_27DA38DB8);
  __swift_project_value_buffer(v0, qword_27DA38DB8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F60, &qword_22DEC8190);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F68, &qword_22DECB000) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22DEC7570;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "title";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22DEC4AE4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "sub_title";
  *(v10 + 8) = 9;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "button_title";
  *(v12 + 1) = 12;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "action";
  *(v14 + 1) = 6;
  v14[16] = 2;
  v9();
  return sub_22DEC4AF4();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_DWPromoData.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_22DEC4954();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    if (result > 2)
    {
      if (result == 3)
      {
        goto LABEL_2;
      }

      if (result == 4)
      {
        sub_22DEAC2B8(a1, v5, a2, a3);
      }
    }

    else if (result == 1 || result == 2)
    {
LABEL_2:
      type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWPromoData(0);
      sub_22DEC49C4();
    }
  }
}

uint64_t sub_22DEAC2B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWPromoData(0);
  type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction(0);
  sub_22DDF25F4(&qword_28145D410, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
  return sub_22DEC49E4();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_DWPromoData.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_22DEAC454(v3, a1, a2, a3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWPromoData, 1);
  if (!v4)
  {
    sub_22DEA89CC(v3, a1, a2, a3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWPromoData, 2);
    sub_22DEA8A50(v3, a1, a2, a3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWPromoData, 3);
    sub_22DEAC4D8(v3, a1, a2, a3);
    return sub_22DEC4894();
  }

  return result;
}

uint64_t sub_22DEAC454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6)
{
  result = a5(0);
  if (*(a1 + *(result + 20) + 8))
  {
    return sub_22DEC4AB4();
  }

  return result;
}

uint64_t sub_22DEAC4D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37D80, &unk_22DEC7960);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWPromoData(0);
  sub_22DDF0028(a1 + *(v12 + 32), v7, &qword_27DA37D80, &unk_22DEC7960);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_22DDEF284(v7, &qword_27DA37D80, &unk_22DEC7960);
  }

  sub_22DDF1788(v7, v11, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
  sub_22DDF25F4(&qword_28145D410, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
  sub_22DEC4AD4();
  return sub_22DEA29F4(v11, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
}

uint64_t sub_22DEAC73C@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v4 = a1[6];
  v5 = (a2 + a1[5]);
  *v5 = 0;
  v5[1] = 0;
  v6 = (a2 + v4);
  *v6 = 0;
  v6[1] = 0;
  v7 = a1[7];
  v8 = a1[8];
  v9 = (a2 + v7);
  *v9 = 0;
  v9[1] = 0;
  v10 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction(0);
  v11 = *(*(v10 - 8) + 56);

  return v11(a2 + v8, 1, 1, v10);
}

uint64_t sub_22DEAC81C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22DDF25F4(&qword_27DA38F90, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWPromoData, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_DWPromoData);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22DEAC8BC(uint64_t a1)
{
  v2 = sub_22DDF25F4(&qword_27DA38F08, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWPromoData, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_DWPromoData);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22DEAC928(uint64_t a1, uint64_t a2)
{
  sub_22DDF25F4(&qword_27DA38F08, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWPromoData, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_DWPromoData);

  return sub_22DEC4A44();
}

uint64_t sub_22DEAC9C4()
{
  v0 = sub_22DEC4B14();
  __swift_allocate_value_buffer(v0, qword_28145BF48);
  __swift_project_value_buffer(v0, qword_28145BF48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F60, &qword_22DEC8190);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F68, &qword_22DECB000) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_22DECE290;
  v4 = v28 + v3;
  v5 = v28 + v3 + v1[14];
  *(v28 + v3) = 1;
  *v5 = "has_ac_plus";
  *(v5 + 8) = 11;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21888];
  v7 = sub_22DEC4AE4();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 3;
  *v9 = "apple_logo_url";
  *(v9 + 8) = 14;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 4;
  *v11 = "coverage_label";
  *(v11 + 1) = 14;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 5;
  *v13 = "coverage_expiration_label";
  *(v13 + 1) = 25;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 6;
  *v15 = "coverage_expiration_label_format2";
  *(v15 + 1) = 33;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 7;
  *v17 = "product_name";
  *(v17 + 1) = 12;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 8;
  *v19 = "serial_number_label";
  *(v19 + 1) = 19;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 9;
  *v21 = "agreement_number";
  *(v21 + 1) = 16;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 10;
  *v22 = "warranty_title";
  *(v22 + 8) = 14;
  *(v22 + 16) = 2;
  v8();
  v23 = (v4 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 11;
  *v24 = "warranty_overview";
  *(v24 + 1) = 17;
  v24[16] = 2;
  v8();
  v25 = (v4 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 12;
  *v26 = "links";
  *(v26 + 1) = 5;
  v26[16] = 2;
  v8();
  return sub_22DEC4AF4();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageData.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_22DEC4954();
  if (!v3)
  {
    while (1)
    {
      if (v5)
      {
        return result;
      }

      if (result <= 6)
      {
        if (result > 3)
        {
          goto LABEL_4;
        }

        if (result == 1)
        {
          type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageData(0);
          sub_22DEC4974();
        }

        else if (result == 3)
        {
LABEL_4:
          v6 = v3;
          type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageData(0);
LABEL_5:
          v3 = v6;
          sub_22DEC49C4();
        }
      }

      else
      {
        if (result <= 9)
        {
          goto LABEL_4;
        }

        v6 = v3;
        switch(result)
        {
          case 10:
            type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageData(0);
            goto LABEL_5;
          case 11:
            sub_22DEC49B4();
            break;
          case 12:
            type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWLearnMoreLink(0);
            sub_22DDF25F4(&qword_28145BCD8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWLearnMoreLink, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_DWLearnMoreLink);
            sub_22DEC49D4();
            break;
        }
      }

      result = sub_22DEC4954();
    }
  }

  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageData.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_22DEAD240(v3, a1, a2, a3);
  if (!v4)
  {
    sub_22DEAE69C(v3, a1, a2, a3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageData, 3);
    sub_22DEAD2B8(v3, a1, a2, a3);
    sub_22DEAD330(v3, a1, a2, a3);
    sub_22DEAD3A8(v3, a1, a2, a3);
    sub_22DEAD420(v3, a1, a2, a3);
    sub_22DEAD498(v3, a1, a2, a3);
    sub_22DEAD510(v3, a1, a2, a3);
    sub_22DEAD588(v3, a1, a2, a3);
    if (*(*v3 + 16))
    {
      sub_22DEC4AA4();
    }

    if (*(v3[1] + 16))
    {
      type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWLearnMoreLink(0);
      sub_22DDF25F4(&qword_28145BCD8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWLearnMoreLink, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_DWLearnMoreLink);
      sub_22DEC4AC4();
    }

    type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageData(0);
    return sub_22DEC4894();
  }

  return result;
}

uint64_t sub_22DEAD240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageData(0);
  if (*(a1 + *(result + 28)) != 2)
  {
    return sub_22DEC4A64();
  }

  return result;
}

uint64_t sub_22DEAD2B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageData(0);
  if (*(a1 + *(result + 36) + 8))
  {
    return sub_22DEC4AB4();
  }

  return result;
}

uint64_t sub_22DEAD330(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageData(0);
  if (*(a1 + *(result + 40) + 8))
  {
    return sub_22DEC4AB4();
  }

  return result;
}

uint64_t sub_22DEAD3A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageData(0);
  if (*(a1 + *(result + 44) + 8))
  {
    return sub_22DEC4AB4();
  }

  return result;
}

uint64_t sub_22DEAD420(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageData(0);
  if (*(a1 + *(result + 48) + 8))
  {
    return sub_22DEC4AB4();
  }

  return result;
}

uint64_t sub_22DEAD498(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageData(0);
  if (*(a1 + *(result + 52) + 8))
  {
    return sub_22DEC4AB4();
  }

  return result;
}

uint64_t sub_22DEAD510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageData(0);
  if (*(a1 + *(result + 56) + 8))
  {
    return sub_22DEC4AB4();
  }

  return result;
}

uint64_t sub_22DEAD588(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageData(0);
  if (*(a1 + *(result + 60) + 8))
  {
    return sub_22DEC4AB4();
  }

  return result;
}

uint64_t sub_22DEAD648@<X0>(int *a1@<X0>, void *a2@<X8>)
{
  v4 = MEMORY[0x277D84F90];
  *a2 = MEMORY[0x277D84F90];
  a2[1] = v4;
  result = _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v6 = a1[8];
  *(a2 + a1[7]) = 2;
  v7 = (a2 + v6);
  *v7 = 0;
  v7[1] = 0;
  v8 = a1[10];
  v9 = (a2 + a1[9]);
  *v9 = 0;
  v9[1] = 0;
  v10 = (a2 + v8);
  *v10 = 0;
  v10[1] = 0;
  v11 = a1[12];
  v12 = (a2 + a1[11]);
  *v12 = 0;
  v12[1] = 0;
  v13 = (a2 + v11);
  *v13 = 0;
  v13[1] = 0;
  v14 = a1[14];
  v15 = (a2 + a1[13]);
  *v15 = 0;
  v15[1] = 0;
  v16 = (a2 + v14);
  *v16 = 0;
  v16[1] = 0;
  v17 = (a2 + a1[15]);
  *v17 = 0;
  v17[1] = 0;
  return result;
}

uint64_t sub_22DEAD72C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22DDF25F4(&qword_27DA38F88, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageData, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageData);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22DEAD7CC(uint64_t a1)
{
  v2 = sub_22DDF25F4(&qword_28145BF38, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageData, "A\b5TDt");

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22DEAD838(uint64_t a1, uint64_t a2)
{
  sub_22DDF25F4(&qword_28145BF38, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageData, "A\b5TDt");

  return sub_22DEC4A44();
}

uint64_t sub_22DEAD8D4()
{
  v0 = sub_22DEC4B14();
  __swift_allocate_value_buffer(v0, qword_28145BCE8);
  __swift_project_value_buffer(v0, qword_28145BCE8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F60, &qword_22DEC8190);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F68, &qword_22DECB000) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22DEC81D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "label";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22DEC4AE4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "sheet_data";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  return sub_22DEC4AF4();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_DWLearnMoreLink.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_22DEC4954();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWLearnMoreLink(0);
      sub_22DEC49C4();
    }

    else if (result == 2)
    {
      sub_22DEADB74(a1, v5, a2, a3);
    }
  }

  return result;
}

uint64_t sub_22DEADB74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWLearnMoreLink(0);
  type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWLearnMoreSheetData(0);
  sub_22DDF25F4(&qword_28145B310, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWLearnMoreSheetData, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_DWLearnMoreSheetData);
  return sub_22DEC49E4();
}

uint64_t sub_22DEADC6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5, void (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  result = sub_22DEAC454(v6, a1, a2, a3, a4, a5);
  if (!v7)
  {
    a6(v6, a1, a2, a3);
    return sub_22DEC4894();
  }

  return result;
}

uint64_t sub_22DEADCEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F38, &qword_22DEC8160);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWLearnMoreSheetData(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWLearnMoreLink(0);
  sub_22DDF0028(a1 + *(v12 + 24), v7, &qword_27DA37F38, &qword_22DEC8160);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_22DDEF284(v7, &qword_27DA37F38, &qword_22DEC8160);
  }

  sub_22DDF1788(v7, v11, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWLearnMoreSheetData);
  sub_22DDF25F4(&qword_28145B310, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWLearnMoreSheetData, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_DWLearnMoreSheetData);
  sub_22DEC4AD4();
  return sub_22DEA29F4(v11, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWLearnMoreSheetData);
}

uint64_t sub_22DEADFB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_22DDF25F4(&qword_27DA38F80, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWLearnMoreLink, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_DWLearnMoreLink);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22DEAE058(uint64_t a1)
{
  v2 = sub_22DDF25F4(&qword_28145BCD8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWLearnMoreLink, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_DWLearnMoreLink);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22DEAE0C4(uint64_t a1, uint64_t a2)
{
  sub_22DDF25F4(&qword_28145BCD8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWLearnMoreLink, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_DWLearnMoreLink);

  return sub_22DEC4A44();
}

uint64_t sub_22DEAE160()
{
  v0 = sub_22DEC4B14();
  __swift_allocate_value_buffer(v0, qword_28145B320);
  __swift_project_value_buffer(v0, qword_28145B320);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F60, &qword_22DEC8190);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F68, &qword_22DECB000) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22DEC7570;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "title";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22DEC4AE4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "sub_title";
  *(v10 + 8) = 9;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "benefits";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "footer";
  *(v14 + 1) = 6;
  v14[16] = 2;
  v9();
  return sub_22DEC4AF4();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_DWLearnMoreSheetData.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_22DEC4954();
  if (!v3)
  {
    while (1)
    {
      if (v5)
      {
        return result;
      }

      if (result > 2)
      {
        if (result == 3)
        {
          type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWBenefit(0);
          sub_22DDF25F4(&qword_27DA38E78, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWBenefit, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_DWBenefit);
          sub_22DEC49D4();
        }

        else if (result == 4)
        {
          goto LABEL_4;
        }
      }

      else if (result == 1 || result == 2)
      {
LABEL_4:
        type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWLearnMoreSheetData(0);
        sub_22DEC49C4();
      }

      result = sub_22DEC4954();
    }
  }

  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_DWLearnMoreSheetData.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_22DEA89CC(v3, a1, a2, a3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWLearnMoreSheetData, 1);
  if (!v4)
  {
    sub_22DEA8A50(v3, a1, a2, a3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWLearnMoreSheetData, 2);
    if (*(*v3 + 16))
    {
      type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWBenefit(0);
      sub_22DDF25F4(&qword_27DA38E78, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWBenefit, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_DWBenefit);
      sub_22DEC4AC4();
    }

    sub_22DEAE69C(v3, a1, a2, a3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWLearnMoreSheetData, 4);
    type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWLearnMoreSheetData(0);
    return sub_22DEC4894();
  }

  return result;
}

uint64_t sub_22DEAE69C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6)
{
  result = a5(0);
  if (*(a1 + *(result + 32) + 8))
  {
    return sub_22DEC4AB4();
  }

  return result;
}

uint64_t sub_22DEAE76C@<X0>(int *a1@<X0>, void *a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  result = _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v5 = a1[7];
  v6 = (a2 + a1[6]);
  *v6 = 0;
  v6[1] = 0;
  v7 = (a2 + v5);
  *v7 = 0;
  v7[1] = 0;
  v8 = (a2 + a1[8]);
  *v8 = 0;
  v8[1] = 0;
  return result;
}

uint64_t sub_22DEAE814(uint64_t a1, uint64_t a2)
{
  v4 = sub_22DDF25F4(&qword_27DA38F78, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWLearnMoreSheetData, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_DWLearnMoreSheetData);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22DEAE8B4(uint64_t a1)
{
  v2 = sub_22DDF25F4(&qword_28145B310, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWLearnMoreSheetData, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_DWLearnMoreSheetData);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22DEAE920(uint64_t a1, uint64_t a2)
{
  sub_22DDF25F4(&qword_28145B310, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWLearnMoreSheetData, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_DWLearnMoreSheetData);

  return sub_22DEC4A44();
}

uint64_t sub_22DEAE9BC()
{
  v0 = sub_22DEC4B14();
  __swift_allocate_value_buffer(v0, qword_27DA38DD0);
  __swift_project_value_buffer(v0, qword_27DA38DD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F60, &qword_22DEC8190);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F68, &qword_22DECB000) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22DEC77C0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "title";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22DEC4AE4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "content";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "image_url";
  *(v11 + 8) = 9;
  *(v11 + 16) = 2;
  v9();
  return sub_22DEC4AF4();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_DWBenefit.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_22DEC4954();
    if (v3 || (v5 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 3:
        goto LABEL_8;
      case 2:
        sub_22DEC49B4();
        break;
      case 1:
LABEL_8:
        type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWBenefit(0);
        sub_22DEC49C4();
        break;
    }
  }
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_DWBenefit.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_22DEA89CC(v3, a1, a2, a3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWBenefit, 1);
  if (!v4)
  {
    if (*(*v3 + 16))
    {
      sub_22DEC4AA4();
    }

    sub_22DEA8A50(v3, a1, a2, a3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWBenefit, 3);
    type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWBenefit(0);
    return sub_22DEC4894();
  }

  return result;
}

uint64_t sub_22DEAEE38@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  result = _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v5 = *(a1 + 28);
  v6 = (a2 + *(a1 + 24));
  *v6 = 0;
  v6[1] = 0;
  v7 = (a2 + v5);
  *v7 = 0;
  v7[1] = 0;
  return result;
}

uint64_t sub_22DEAEED4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22DDF25F4(&qword_27DA38F70, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWBenefit, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_DWBenefit);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22DEAEF74(uint64_t a1)
{
  v2 = sub_22DDF25F4(&qword_27DA38E78, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWBenefit, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_DWBenefit);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22DEAEFE0(uint64_t a1, uint64_t a2)
{
  sub_22DDF25F4(&qword_27DA38E78, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWBenefit, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_DWBenefit);

  return sub_22DEC4A44();
}

uint64_t sub_22DEAF0BC()
{
  v0 = sub_22DEC4B14();
  __swift_allocate_value_buffer(v0, qword_27DA38DE8);
  __swift_project_value_buffer(v0, qword_27DA38DE8);
  return sub_22DEC4B04();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppData.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  do
  {
    result = sub_22DEC4954();
  }

  while (!v3 && (v5 & 1) == 0);
  return result;
}

uint64_t sub_22DEAF220(uint64_t a1, uint64_t a2)
{
  v4 = sub_22DDF25F4(&qword_27DA38F68, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppData, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppData);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22DEAF2C0(uint64_t a1)
{
  v2 = sub_22DDF25F4(&qword_27DA38F48, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppData, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppData);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22DEAF32C(uint64_t a1, uint64_t a2)
{
  sub_22DDF25F4(&qword_27DA38F48, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppData, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppData);

  return sub_22DEC4A44();
}

uint64_t sub_22DEAF3A8(uint64_t a1, uint64_t a2)
{
  sub_22DEC48B4();
  sub_22DDF25F4(&qword_27DA37B30, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_22DEC4BF4() & 1;
}

uint64_t sub_22DEAF44C()
{
  v0 = sub_22DEC4B14();
  __swift_allocate_value_buffer(v0, qword_28145D350);
  __swift_project_value_buffer(v0, qword_28145D350);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F60, &qword_22DEC8190);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F68, &qword_22DECB000) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22DEC81D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "content";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22DEC4AE4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "links";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return sub_22DEC4AF4();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_DWFooter.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_22DEC4954();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWFooter(0);
        sub_22DEC49C4();
      }

      else if (result == 2)
      {
        type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink(0);
        sub_22DDF25F4(&qword_28145D7E0, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
        sub_22DEC49D4();
      }

      result = sub_22DEC4954();
    }
  }

  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_DWFooter.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_22DEA89CC(v3, a1, a2, a3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWFooter, 1);
  if (!v4)
  {
    if (*(*v3 + 16))
    {
      type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink(0);
      sub_22DDF25F4(&qword_28145D7E0, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
      sub_22DEC4AC4();
    }

    type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWFooter(0);
    return sub_22DEC4894();
  }

  return result;
}

uint64_t sub_22DEAF8A4(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  sub_22DEC5184();
  a1(0);
  sub_22DDF25F4(a2, a3, a4);
  sub_22DEC4BE4();
  return sub_22DEC51A4();
}

uint64_t sub_22DEAF92C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  result = _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v5 = (a2 + *(a1 + 24));
  *v5 = 0;
  v5[1] = 0;
  return result;
}

uint64_t sub_22DEAF9C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22DDF25F4(&qword_27DA38F60, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWFooter, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_DWFooter);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22DEAFA60(uint64_t a1)
{
  v2 = sub_22DDF25F4(&qword_28145D340, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWFooter, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_DWFooter);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22DEAFACC(uint64_t a1, uint64_t a2)
{
  sub_22DDF25F4(&qword_28145D340, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWFooter, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_DWFooter);

  return sub_22DEC4A44();
}

uint64_t sub_22DEAFB4C(uint64_t result, uint64_t a2)
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

    v20 = sub_22DE100E4(v15, v16);
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
      v25 = sub_22DEC50E4();

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

uint64_t sub_22DEAFCF0(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
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
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = *(*(v3 + 56) + v12);

    v17 = sub_22DE100E4(v14, v15);
    v19 = v18;

    if ((v19 & 1) == 0 || v16 != *(*(a2 + 56) + v17))
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22DEAFE24(uint64_t a1, uint64_t a2)
{
  __s1[2] = *MEMORY[0x277D85DE8];
  if (a1 == a2)
  {
    return 1;
  }

  v2 = a2;
  v3 = a1;
  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = a1 + 64;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  v9 = (v6 + 63) >> 6;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        if (v8)
        {
          v10 = __clz(__rbit64(v8));
          v11 = (v8 - 1) & v8;
          goto LABEL_13;
        }

        v12 = v4;
        do
        {
          v4 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            __break(1u);
            goto LABEL_156;
          }

          if (v4 >= v9)
          {
            return 1;
          }

          v13 = *(v5 + 8 * v4);
          ++v12;
        }

        while (!v13);
        v10 = __clz(__rbit64(v13));
        v11 = (v13 - 1) & v13;
LABEL_13:
        v14 = 16 * (v10 | (v4 << 6));
        v15 = (*(v3 + 48) + v14);
        v16 = *v15;
        v17 = v15[1];
        v18 = (*(v3 + 56) + v14);
        v20 = *v18;
        v19 = v18[1];

        sub_22DDEEEE8(v20, v19);
        result = v17 == 0;
        if (!v17)
        {
          return result;
        }

        v90 = v11;
        v22 = sub_22DE100E4(v16, v17);
        v24 = v23;

        if ((v24 & 1) == 0)
        {
          goto LABEL_152;
        }

        v25 = (*(v2 + 56) + 16 * v22);
        v26 = *v25;
        v27 = v25[1];
        v28 = v27 >> 62;
        v29 = v19 >> 62;
        if (v27 >> 62 == 3)
        {
          if (v26)
          {
            v30 = 0;
          }

          else
          {
            v30 = v27 == 0xC000000000000000;
          }

          v31 = 0;
          v32 = v30 && v19 >> 62 == 3;
          if (v32 && !v20 && v19 == 0xC000000000000000)
          {
            v33 = 0;
            v34 = 0xC000000000000000;
            goto LABEL_55;
          }

LABEL_36:
          if (v29 <= 1)
          {
LABEL_37:
            if (!v29)
            {
              v38 = BYTE6(v19);
              goto LABEL_43;
            }

            LODWORD(v38) = HIDWORD(v20) - v20;
            if (!__OFSUB__(HIDWORD(v20), v20))
            {
              v38 = v38;
              goto LABEL_43;
            }

LABEL_156:
            __break(1u);
LABEL_157:
            __break(1u);
LABEL_158:
            __break(1u);
LABEL_159:
            __break(1u);
LABEL_160:
            __break(1u);
LABEL_161:
            __break(1u);
LABEL_162:
            __break(1u);
LABEL_163:
            __break(1u);
LABEL_164:
            __break(1u);
LABEL_165:
            __break(1u);
LABEL_166:
            __break(1u);
LABEL_167:
            __break(1u);
LABEL_168:
            __break(1u);
LABEL_169:
            __break(1u);
LABEL_170:
            __break(1u);
LABEL_171:
            __break(1u);
LABEL_172:
            __break(1u);
LABEL_173:
            __break(1u);
LABEL_174:
            __break(1u);
LABEL_175:
            __break(1u);
LABEL_176:
            __break(1u);
LABEL_177:
            __break(1u);
LABEL_178:
            __break(1u);
          }
        }

        else if (v28 > 1)
        {
          if (v28 == 2)
          {
            v40 = *(v26 + 16);
            v39 = *(v26 + 24);
            v37 = __OFSUB__(v39, v40);
            v31 = v39 - v40;
            if (!v37)
            {
              goto LABEL_36;
            }

            goto LABEL_158;
          }

          v31 = 0;
          if (v29 <= 1)
          {
            goto LABEL_37;
          }
        }

        else if (v28)
        {
          LODWORD(v31) = HIDWORD(v26) - v26;
          if (__OFSUB__(HIDWORD(v26), v26))
          {
            goto LABEL_159;
          }

          v31 = v31;
          if (v29 <= 1)
          {
            goto LABEL_37;
          }
        }

        else
        {
          v31 = BYTE6(v27);
          if (v29 <= 1)
          {
            goto LABEL_37;
          }
        }

        if (v29 != 2)
        {
          if (v31)
          {
            goto LABEL_152;
          }

          goto LABEL_54;
        }

        v36 = *(v20 + 16);
        v35 = *(v20 + 24);
        v37 = __OFSUB__(v35, v36);
        v38 = v35 - v36;
        if (v37)
        {
          goto LABEL_157;
        }

LABEL_43:
        if (v31 != v38)
        {
LABEL_152:
          sub_22DDEEF50(v20, v19);
          return 0;
        }

        if (v31 >= 1)
        {
          break;
        }

LABEL_54:
        v33 = v20;
        v34 = v19;
LABEL_55:
        sub_22DDEEF50(v33, v34);
        v8 = v90;
      }

      if (v28 > 1)
      {
        break;
      }

      if (!v28)
      {
        __s1[0] = v26;
        LOWORD(__s1[1]) = v27;
        BYTE2(__s1[1]) = BYTE2(v27);
        BYTE3(__s1[1]) = BYTE3(v27);
        BYTE4(__s1[1]) = BYTE4(v27);
        BYTE5(__s1[1]) = BYTE5(v27);
        if (v29)
        {
          v88 = v26;
          if (v29 == 1)
          {
            v80 = ((v20 >> 32) - v20);
            if (v20 >> 32 < v20)
            {
              goto LABEL_164;
            }

            sub_22DDEEEE8(v26, v27);
            v41 = sub_22DEC46A4();
            if (!v41)
            {
              goto LABEL_183;
            }

            v42 = v41;
            v43 = sub_22DEC46C4();
            if (__OFSUB__(v20, v43))
            {
              goto LABEL_168;
            }

            v44 = (v20 - v43 + v42);
            result = sub_22DEC46B4();
            v8 = v90;
            if (!v44)
            {
              goto LABEL_190;
            }

            goto LABEL_75;
          }

          v67 = *(v20 + 16);
          v84 = *(v20 + 24);
          sub_22DDEEEE8(v26, v27);
          v64 = sub_22DEC46A4();
          v87 = v2;
          if (v64)
          {
            v68 = sub_22DEC46C4();
            if (__OFSUB__(v67, v68))
            {
              goto LABEL_174;
            }

            v64 += v67 - v68;
          }

          v66 = v84 - v67;
          if (__OFSUB__(v84, v67))
          {
            goto LABEL_166;
          }

          result = sub_22DEC46B4();
          v8 = v90;
          if (!v64)
          {
            goto LABEL_184;
          }

          goto LABEL_117;
        }

        goto LABEL_79;
      }

      v86 = v2;
      v49 = v26;
      if (v26 > v26 >> 32)
      {
        goto LABEL_160;
      }

      v88 = v26;
      sub_22DDEEEE8(v26, v27);
      v50 = sub_22DEC46A4();
      if (v50)
      {
        v51 = v50;
        v52 = sub_22DEC46C4();
        if (__OFSUB__(v49, v52))
        {
          goto LABEL_162;
        }

        v82 = (v49 - v52 + v51);
      }

      else
      {
        v82 = 0;
      }

      sub_22DEC46B4();
      v3 = a1;
      if (v29 == 2)
      {
        v76 = *(v20 + 16);
        v75 = *(v20 + 24);
        v44 = sub_22DEC46A4();
        if (v44)
        {
          v77 = sub_22DEC46C4();
          if (__OFSUB__(v76, v77))
          {
            goto LABEL_176;
          }

          v44 += v76 - v77;
        }

        v37 = __OFSUB__(v75, v76);
        v78 = v75 - v76;
        if (v37)
        {
          goto LABEL_172;
        }

        v79 = sub_22DEC46B4();
        if (v79 >= v78)
        {
          v60 = v78;
        }

        else
        {
          v60 = v79;
        }

        v8 = v90;
        result = v82;
        if (!v82)
        {
          goto LABEL_194;
        }

        v2 = v86;
        if (!v44)
        {
          goto LABEL_193;
        }
      }

      else
      {
        if (v29 != 1)
        {
          result = v82;
          v2 = v86;
          __s1[0] = v20;
          LOWORD(__s1[1]) = v19;
          BYTE2(__s1[1]) = BYTE2(v19);
          BYTE3(__s1[1]) = BYTE3(v19);
          BYTE4(__s1[1]) = BYTE4(v19);
          BYTE5(__s1[1]) = BYTE5(v19);
          v8 = v90;
          if (!v82)
          {
            goto LABEL_191;
          }

          goto LABEL_148;
        }

        if (v20 >> 32 < v20)
        {
          goto LABEL_171;
        }

        v44 = sub_22DEC46A4();
        if (v44)
        {
          v61 = sub_22DEC46C4();
          if (__OFSUB__(v20, v61))
          {
            goto LABEL_178;
          }

          v44 += v20 - v61;
        }

        v2 = v86;
        v62 = sub_22DEC46B4();
        if (v62 >= (v20 >> 32) - v20)
        {
          v60 = (v20 >> 32) - v20;
        }

        else
        {
          v60 = v62;
        }

        result = v82;
        if (!v82)
        {
          goto LABEL_182;
        }

        v8 = v90;
        if (!v44)
        {
          goto LABEL_181;
        }
      }

LABEL_142:
      if (result != v44)
      {
        v56 = v60;
        goto LABEL_145;
      }

      sub_22DDEEF50(v88, v27);
      sub_22DDEEF50(v20, v19);
      v3 = a1;
    }

    if (v28 == 2)
    {
      v85 = v2;
      v88 = v26;
      v45 = *(v26 + 16);
      sub_22DDEEEE8(v26, v27);
      v46 = sub_22DEC46A4();
      if (v46)
      {
        v47 = v46;
        v48 = sub_22DEC46C4();
        if (__OFSUB__(v45, v48))
        {
          goto LABEL_161;
        }

        v81 = (v45 - v48 + v47);
      }

      else
      {
        v81 = 0;
      }

      sub_22DEC46B4();
      v3 = a1;
      if (v29 == 2)
      {
        v71 = *(v20 + 16);
        v70 = *(v20 + 24);
        v44 = sub_22DEC46A4();
        if (v44)
        {
          v72 = sub_22DEC46C4();
          if (__OFSUB__(v71, v72))
          {
            goto LABEL_175;
          }

          v44 += v71 - v72;
        }

        v37 = __OFSUB__(v70, v71);
        v73 = v70 - v71;
        if (v37)
        {
          goto LABEL_170;
        }

        v74 = sub_22DEC46B4();
        if (v74 >= v73)
        {
          v60 = v73;
        }

        else
        {
          v60 = v74;
        }

        v8 = v90;
        result = v81;
        if (!v81)
        {
          goto LABEL_187;
        }

        v2 = v85;
        if (!v44)
        {
          goto LABEL_186;
        }
      }

      else
      {
        if (v29 != 1)
        {
          result = v81;
          v2 = v85;
          __s1[0] = v20;
          LOWORD(__s1[1]) = v19;
          BYTE2(__s1[1]) = BYTE2(v19);
          BYTE3(__s1[1]) = BYTE3(v19);
          BYTE4(__s1[1]) = BYTE4(v19);
          BYTE5(__s1[1]) = BYTE5(v19);
          v8 = v90;
          if (!v81)
          {
            goto LABEL_185;
          }

LABEL_148:
          v57 = memcmp(result, __s1, BYTE6(v19));
          sub_22DDEEF50(v88, v27);
          sub_22DDEEF50(v20, v19);
          goto LABEL_149;
        }

        if (v20 >> 32 < v20)
        {
          goto LABEL_167;
        }

        v44 = sub_22DEC46A4();
        if (v44)
        {
          v58 = sub_22DEC46C4();
          if (__OFSUB__(v20, v58))
          {
            goto LABEL_177;
          }

          v44 += v20 - v58;
        }

        v2 = v85;
        v59 = sub_22DEC46B4();
        if (v59 >= (v20 >> 32) - v20)
        {
          v60 = (v20 >> 32) - v20;
        }

        else
        {
          v60 = v59;
        }

        result = v81;
        if (!v81)
        {
          goto LABEL_189;
        }

        v8 = v90;
        if (!v44)
        {
          goto LABEL_188;
        }
      }

      goto LABEL_142;
    }

    memset(__s1, 0, 14);
    if (v29 == 2)
    {
      v63 = *(v20 + 16);
      v83 = *(v20 + 24);
      v88 = v26;
      sub_22DDEEEE8(v26, v27);
      v64 = sub_22DEC46A4();
      v87 = v2;
      if (v64)
      {
        v65 = sub_22DEC46C4();
        if (__OFSUB__(v63, v65))
        {
          goto LABEL_173;
        }

        v64 += v63 - v65;
      }

      v66 = v83 - v63;
      if (__OFSUB__(v83, v63))
      {
        goto LABEL_165;
      }

      result = sub_22DEC46B4();
      v8 = v90;
      if (!v64)
      {
        goto LABEL_192;
      }

LABEL_117:
      if (result >= v66)
      {
        v69 = v66;
      }

      else
      {
        v69 = result;
      }

      v57 = memcmp(__s1, v64, v69);
      sub_22DDEEF50(v88, v27);
      sub_22DDEEF50(v20, v19);
      v2 = v87;
      goto LABEL_146;
    }

    if (v29 == 1)
    {
      break;
    }

LABEL_79:
    __s2 = v20;
    v92 = v19;
    v93 = BYTE2(v19);
    v94 = BYTE3(v19);
    v95 = BYTE4(v19);
    v96 = BYTE5(v19);
    v57 = memcmp(__s1, &__s2, BYTE6(v19));
    sub_22DDEEF50(v20, v19);
    v8 = v90;
LABEL_149:
    result = 0;
    if (v57)
    {
      return result;
    }
  }

  v80 = ((v20 >> 32) - v20);
  if (v20 >> 32 < v20)
  {
    goto LABEL_163;
  }

  v88 = v26;
  sub_22DDEEEE8(v26, v27);
  v53 = sub_22DEC46A4();
  if (v53)
  {
    v54 = v53;
    v55 = sub_22DEC46C4();
    if (__OFSUB__(v20, v55))
    {
      goto LABEL_169;
    }

    v44 = (v20 - v55 + v54);
    result = sub_22DEC46B4();
    v8 = v90;
    if (!v44)
    {
      goto LABEL_180;
    }

LABEL_75:
    if (result >= v80)
    {
      v56 = v80;
    }

    else
    {
      v56 = result;
    }

    result = __s1;
LABEL_145:
    v57 = memcmp(result, v44, v56);
    sub_22DDEEF50(v88, v27);
    sub_22DDEEF50(v20, v19);
LABEL_146:
    v3 = a1;
    goto LABEL_149;
  }

  sub_22DEC46B4();
LABEL_180:
  __break(1u);
LABEL_181:
  __break(1u);
LABEL_182:
  __break(1u);
LABEL_183:
  result = sub_22DEC46B4();
  __break(1u);
LABEL_184:
  __break(1u);
LABEL_185:
  __break(1u);
LABEL_186:
  __break(1u);
LABEL_187:
  __break(1u);
LABEL_188:
  __break(1u);
LABEL_189:
  __break(1u);
LABEL_190:
  __break(1u);
LABEL_191:
  __break(1u);
LABEL_192:
  __break(1u);
LABEL_193:
  __break(1u);
LABEL_194:
  __break(1u);
  return result;
}

uint64_t _s6NDOAPI48Com_Apple_Sse_Ocean_Ndo_Api_DWLearnMoreSheetDataV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWLearnMoreSheetData(0);
  v5 = v4[6];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v8[1];
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }

    v10 = *v6 == *v8 && v7 == v9;
    if (!v10 && (sub_22DEC50E4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  v11 = v4[7];
  v12 = (a1 + v11);
  v13 = *(a1 + v11 + 8);
  v14 = (a2 + v11);
  v15 = v14[1];
  if (v13)
  {
    if (!v15)
    {
      return 0;
    }

    v16 = *v12 == *v14 && v13 == v15;
    if (!v16 && (sub_22DEC50E4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v15)
  {
    return 0;
  }

  if (sub_22DE2FE04(*a1, *a2))
  {
    v17 = v4[8];
    v18 = (a1 + v17);
    v19 = *(a1 + v17 + 8);
    v20 = (a2 + v17);
    v21 = v20[1];
    if (v19)
    {
      if (v21)
      {
        v22 = *v18 == *v20 && v19 == v21;
        if (v22 || (sub_22DEC50E4() & 1) != 0)
        {
          goto LABEL_27;
        }
      }
    }

    else if (!v21)
    {
LABEL_27:
      sub_22DEC48B4();
      sub_22DDF25F4(&qword_27DA37B30, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      return sub_22DEC4BF4() & 1;
    }
  }

  return 0;
}

uint64_t _s6NDOAPI43Com_Apple_Sse_Ocean_Ndo_Api_DWLearnMoreLinkV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWLearnMoreSheetData(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F38, &qword_22DEC8160);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = (v31 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F40, &qword_22DEC8168);
  MEMORY[0x28223BE20](v11);
  v13 = v31 - v12;
  v14 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWLearnMoreLink(0);
  v15 = *(v14 + 20);
  v16 = (a1 + v15);
  v17 = *(a1 + v15 + 8);
  v18 = (a2 + v15);
  v19 = v18[1];
  if (v17)
  {
    if (!v19)
    {
      goto LABEL_16;
    }

    if (*v16 != *v18 || v17 != v19)
    {
      v21 = v14;
      v22 = sub_22DEC50E4();
      v14 = v21;
      if ((v22 & 1) == 0)
      {
        goto LABEL_16;
      }
    }
  }

  else if (v19)
  {
    goto LABEL_16;
  }

  v23 = a1;
  v24 = a2;
  v25 = *(v14 + 24);
  v26 = *(v11 + 48);
  v31[1] = v23;
  sub_22DDF0028(v23 + v25, v13, &qword_27DA37F38, &qword_22DEC8160);
  sub_22DDF0028(v24 + v25, &v13[v26], &qword_27DA37F38, &qword_22DEC8160);
  v27 = *(v5 + 48);
  if (v27(v13, 1, v4) == 1)
  {
    if (v27(&v13[v26], 1, v4) == 1)
    {
      sub_22DDEF284(v13, &qword_27DA37F38, &qword_22DEC8160);
LABEL_19:
      sub_22DEC48B4();
      sub_22DDF25F4(&qword_27DA37B30, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v28 = sub_22DEC4BF4();
      return v28 & 1;
    }

    goto LABEL_15;
  }

  sub_22DDF0028(v13, v10, &qword_27DA37F38, &qword_22DEC8160);
  if (v27(&v13[v26], 1, v4) == 1)
  {
    sub_22DEA29F4(v10, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWLearnMoreSheetData);
LABEL_15:
    sub_22DDEF284(v13, &qword_27DA37F40, &qword_22DEC8168);
    goto LABEL_16;
  }

  sub_22DDF1788(&v13[v26], v7, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWLearnMoreSheetData);
  v30 = _s6NDOAPI48Com_Apple_Sse_Ocean_Ndo_Api_DWLearnMoreSheetDataV2eeoiySbAC_ACtFZ_0(v10, v7);
  sub_22DEA29F4(v7, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWLearnMoreSheetData);
  sub_22DEA29F4(v10, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWLearnMoreSheetData);
  sub_22DDEF284(v13, &qword_27DA37F38, &qword_22DEC8160);
  if (v30)
  {
    goto LABEL_19;
  }

LABEL_16:
  v28 = 0;
  return v28 & 1;
}

uint64_t _s6NDOAPI42Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageDataV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageData(0);
  v5 = v4[7];
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);
  if (v6 == 2)
  {
    if (v7 != 2)
    {
      return 0;
    }
  }

  else if (v7 == 2 || ((v6 ^ v7) & 1) != 0)
  {
    return 0;
  }

  v8 = v4[8];
  v9 = (a1 + v8);
  v10 = *(a1 + v8 + 8);
  v11 = (a2 + v8);
  v12 = v11[1];
  if (v10)
  {
    if (!v12)
    {
      return 0;
    }

    if (*v9 != *v11 || v10 != v12)
    {
      v14 = v4;
      v15 = sub_22DEC50E4();
      v4 = v14;
      if ((v15 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v12)
  {
    return 0;
  }

  v16 = v4[9];
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
      v22 = v4;
      v23 = sub_22DEC50E4();
      v4 = v22;
      if ((v23 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v20)
  {
    return 0;
  }

  v24 = v4[10];
  v25 = (a1 + v24);
  v26 = *(a1 + v24 + 8);
  v27 = (a2 + v24);
  v28 = v27[1];
  if (v26)
  {
    if (!v28)
    {
      return 0;
    }

    if (*v25 != *v27 || v26 != v28)
    {
      v30 = v4;
      v31 = sub_22DEC50E4();
      v4 = v30;
      if ((v31 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v28)
  {
    return 0;
  }

  v32 = v4[11];
  v33 = (a1 + v32);
  v34 = *(a1 + v32 + 8);
  v35 = (a2 + v32);
  v36 = v35[1];
  if (v34)
  {
    if (!v36)
    {
      return 0;
    }

    if (*v33 != *v35 || v34 != v36)
    {
      v37 = v4;
      v38 = sub_22DEC50E4();
      v4 = v37;
      if ((v38 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v36)
  {
    return 0;
  }

  v39 = v4[12];
  v40 = (a1 + v39);
  v41 = *(a1 + v39 + 8);
  v42 = (a2 + v39);
  v43 = v42[1];
  if (v41)
  {
    if (!v43)
    {
      return 0;
    }

    if (*v40 != *v42 || v41 != v43)
    {
      v44 = v4;
      v45 = sub_22DEC50E4();
      v4 = v44;
      if ((v45 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v43)
  {
    return 0;
  }

  v46 = v4[13];
  v47 = (a1 + v46);
  v48 = *(a1 + v46 + 8);
  v49 = (a2 + v46);
  v50 = v49[1];
  if (v48)
  {
    if (!v50)
    {
      return 0;
    }

    if (*v47 != *v49 || v48 != v50)
    {
      v51 = v4;
      v52 = sub_22DEC50E4();
      v4 = v51;
      if ((v52 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v50)
  {
    return 0;
  }

  v53 = v4[14];
  v54 = (a1 + v53);
  v55 = *(a1 + v53 + 8);
  v56 = (a2 + v53);
  v57 = v56[1];
  if (v55)
  {
    if (!v57)
    {
      return 0;
    }

    if (*v54 != *v56 || v55 != v57)
    {
      v58 = v4;
      v59 = sub_22DEC50E4();
      v4 = v58;
      if ((v59 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v57)
  {
    return 0;
  }

  v60 = v4[15];
  v61 = (a1 + v60);
  v62 = *(a1 + v60 + 8);
  v63 = (a2 + v60);
  v64 = v63[1];
  if (v62)
  {
    if (!v64 || (*v61 != *v63 || v62 != v64) && (sub_22DEC50E4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v64)
  {
    return 0;
  }

  if (sub_22DE2F604(*a1, *a2) & 1) != 0 && (sub_22DE30144(a1[1], a2[1]))
  {
    sub_22DEC48B4();
    sub_22DDF25F4(&qword_27DA37B30, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    return sub_22DEC4BF4() & 1;
  }

  return 0;
}

uint64_t _s6NDOAPI56Com_Apple_Sse_Ocean_Ndo_Api_SettingsCoverageSectionOfferV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v41 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37D88, &unk_22DEC8210);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v40 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38310, &unk_22DECA250);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v40 - v12;
  v42 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_SettingsCoverageSectionOffer(0);
  v43 = a1;
  v14 = *(v42 + 20);
  v15 = *(v11 + 56);
  sub_22DDF0028(a1 + v14, v13, &qword_27DA37D88, &unk_22DEC8210);
  v16 = a2 + v14;
  v17 = a2;
  sub_22DDF0028(v16, &v13[v15], &qword_27DA37D88, &unk_22DEC8210);
  v18 = *(v5 + 48);
  if (v18(v13, 1, v4) != 1)
  {
    sub_22DDF0028(v13, v9, &qword_27DA37D88, &unk_22DEC8210);
    if (v18(&v13[v15], 1, v4) != 1)
    {
      v21 = v41;
      sub_22DDF1788(&v13[v15], v41, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
      v22 = static Com_Apple_Sse_Ocean_Ndo_Api_CTLink.== infix(_:_:)(v9, v21);
      sub_22DEA29F4(v21, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
      sub_22DEA29F4(v9, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
      sub_22DDEF284(v13, &qword_27DA37D88, &unk_22DEC8210);
      if ((v22 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_10;
    }

    sub_22DEA29F4(v9, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
LABEL_6:
    sub_22DDEF284(v13, &qword_27DA38310, &unk_22DECA250);
    goto LABEL_7;
  }

  if (v18(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_22DDEF284(v13, &qword_27DA37D88, &unk_22DEC8210);
LABEL_10:
  v24 = v42;
  v23 = v43;
  v25 = *(v42 + 24);
  v26 = (v43 + v25);
  v27 = *(v43 + v25 + 8);
  v28 = (v17 + v25);
  v29 = v28[1];
  if (v27)
  {
    if (!v29 || (*v26 != *v28 || v27 != v29) && (sub_22DEC50E4() & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if (v29)
  {
    goto LABEL_7;
  }

  v30 = *(v24 + 28);
  v31 = (v23 + v30);
  v32 = *(v23 + v30 + 8);
  v33 = (v17 + v30);
  v34 = v33[1];
  if (v32)
  {
    if (!v34 || (*v31 != *v33 || v32 != v34) && (sub_22DEC50E4() & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if (v34)
  {
    goto LABEL_7;
  }

  v35 = *(v24 + 32);
  v36 = (v23 + v35);
  v37 = *(v23 + v35 + 8);
  v38 = (v17 + v35);
  v39 = *(v17 + v35 + 8);
  if (v37)
  {
    if (v39)
    {
LABEL_30:
      sub_22DEC48B4();
      sub_22DDF25F4(&qword_27DA37B30, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v19 = sub_22DEC4BF4();
      return v19 & 1;
    }
  }

  else
  {
    if (*v36 != *v38)
    {
      LOBYTE(v39) = 1;
    }

    if ((v39 & 1) == 0)
    {
      goto LABEL_30;
    }
  }

LABEL_7:
  v19 = 0;
  return v19 & 1;
}

uint64_t _s6NDOAPI51Com_Apple_Sse_Ocean_Ndo_Api_SettingsCoverageSectionV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_SettingsCoverageSectionOffer(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38E10, &qword_22DECE2C0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v31 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA39000, &qword_22DECFFD0);
  MEMORY[0x28223BE20](v11);
  v13 = v31 - v12;
  v14 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_SettingsCoverageSection(0);
  v15 = *(v14 + 20);
  v16 = (a1 + v15);
  v17 = *(a1 + v15 + 8);
  v18 = (a2 + v15);
  v19 = v18[1];
  if (v17)
  {
    if (!v19)
    {
      goto LABEL_16;
    }

    if (*v16 != *v18 || v17 != v19)
    {
      v21 = v14;
      v22 = sub_22DEC50E4();
      v14 = v21;
      if ((v22 & 1) == 0)
      {
        goto LABEL_16;
      }
    }
  }

  else if (v19)
  {
    goto LABEL_16;
  }

  v23 = a1;
  v24 = a2;
  v25 = *(v14 + 24);
  v26 = *(v11 + 48);
  v31[1] = v23;
  sub_22DDF0028(v23 + v25, v13, &qword_27DA38E10, &qword_22DECE2C0);
  sub_22DDF0028(v24 + v25, &v13[v26], &qword_27DA38E10, &qword_22DECE2C0);
  v27 = *(v5 + 48);
  if (v27(v13, 1, v4) == 1)
  {
    if (v27(&v13[v26], 1, v4) == 1)
    {
      sub_22DDEF284(v13, &qword_27DA38E10, &qword_22DECE2C0);
LABEL_19:
      sub_22DEC48B4();
      sub_22DDF25F4(&qword_27DA37B30, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v28 = sub_22DEC4BF4();
      return v28 & 1;
    }

    goto LABEL_15;
  }

  sub_22DDF0028(v13, v10, &qword_27DA38E10, &qword_22DECE2C0);
  if (v27(&v13[v26], 1, v4) == 1)
  {
    sub_22DEA29F4(v10, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_SettingsCoverageSectionOffer);
LABEL_15:
    sub_22DDEF284(v13, &qword_27DA39000, &qword_22DECFFD0);
    goto LABEL_16;
  }

  sub_22DDF1788(&v13[v26], v7, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_SettingsCoverageSectionOffer);
  v30 = _s6NDOAPI56Com_Apple_Sse_Ocean_Ndo_Api_SettingsCoverageSectionOfferV2eeoiySbAC_ACtFZ_0(v10, v7);
  sub_22DEA29F4(v7, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_SettingsCoverageSectionOffer);
  sub_22DEA29F4(v10, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_SettingsCoverageSectionOffer);
  sub_22DDEF284(v13, &qword_27DA38E10, &qword_22DECE2C0);
  if (v30)
  {
    goto LABEL_19;
  }

LABEL_16:
  v28 = 0;
  return v28 & 1;
}

uint64_t _s6NDOAPI38Com_Apple_Sse_Ocean_Ndo_Api_DWResponseV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v46 = a2;
  v3 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceWarrantyResponse(0);
  v42 = *(v3 - 8);
  v43 = v3;
  MEMORY[0x28223BE20](v3);
  v38 = (&v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37DC0, &qword_22DECE2A0);
  MEMORY[0x28223BE20](v5 - 8);
  v39 = (&v37 - v6);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA39010, &unk_22DECFFE0);
  MEMORY[0x28223BE20](v41);
  v44 = &v37 - v7;
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38088, &unk_22DEC8220);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v37 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38350, &unk_22DED04F0);
  v16 = v15 - 8;
  MEMORY[0x28223BE20](v15);
  v18 = &v37 - v17;
  v40 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWResponse(0);
  v19 = *(v40 + 20);
  v20 = *(v16 + 56);
  v45 = a1;
  sub_22DDF0028(a1 + v19, v18, &qword_27DA38088, &unk_22DEC8220);
  sub_22DDF0028(v46 + v19, &v18[v20], &qword_27DA38088, &unk_22DEC8220);
  v21 = *(v9 + 48);
  if (v21(v18, 1, v8) == 1)
  {
    if (v21(&v18[v20], 1, v8) == 1)
    {
      sub_22DDEF284(v18, &qword_27DA38088, &unk_22DEC8220);
      goto LABEL_8;
    }

LABEL_6:
    v22 = &qword_27DA38350;
    v23 = &unk_22DED04F0;
    v24 = v18;
LABEL_16:
    sub_22DDEF284(v24, v22, v23);
    goto LABEL_17;
  }

  sub_22DDF0028(v18, v14, &qword_27DA38088, &unk_22DEC8220);
  if (v21(&v18[v20], 1, v8) == 1)
  {
    sub_22DEA29F4(v14, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta);
    goto LABEL_6;
  }

  sub_22DDF1788(&v18[v20], v11, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta);
  v25 = static Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta.== infix(_:_:)(v14, v11);
  sub_22DEA29F4(v11, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta);
  sub_22DEA29F4(v14, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta);
  sub_22DDEF284(v18, &qword_27DA38088, &unk_22DEC8220);
  if ((v25 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_8:
  v26 = *(v40 + 24);
  v27 = *(v41 + 48);
  v28 = v44;
  sub_22DDF0028(v45 + v26, v44, &qword_27DA37DC0, &qword_22DECE2A0);
  sub_22DDF0028(v46 + v26, v28 + v27, &qword_27DA37DC0, &qword_22DECE2A0);
  v29 = v43;
  v30 = *(v42 + 48);
  if (v30(v28, 1, v43) != 1)
  {
    v32 = v39;
    sub_22DDF0028(v28, v39, &qword_27DA37DC0, &qword_22DECE2A0);
    if (v30(v28 + v27, 1, v29) == 1)
    {
      sub_22DEA29F4(v32, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceWarrantyResponse);
      goto LABEL_14;
    }

    v34 = v28 + v27;
    v35 = v38;
    sub_22DDF1788(v34, v38, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceWarrantyResponse);
    if ((sub_22DE308A4(*v32, *v35) & 1) == 0)
    {
      sub_22DEA29F4(v35, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceWarrantyResponse);
      sub_22DEA29F4(v32, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceWarrantyResponse);
      v22 = &qword_27DA37DC0;
      v23 = &qword_22DECE2A0;
      goto LABEL_15;
    }

    sub_22DEC48B4();
    sub_22DDF25F4(&qword_27DA37B30, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v36 = sub_22DEC4BF4();
    sub_22DEA29F4(v35, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceWarrantyResponse);
    sub_22DEA29F4(v32, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceWarrantyResponse);
    sub_22DDEF284(v28, &qword_27DA37DC0, &qword_22DECE2A0);
    if (v36)
    {
      goto LABEL_11;
    }

LABEL_17:
    v31 = 0;
    return v31 & 1;
  }

  if (v30(v28 + v27, 1, v29) != 1)
  {
LABEL_14:
    v22 = &qword_27DA39010;
    v23 = &unk_22DECFFE0;
LABEL_15:
    v24 = v28;
    goto LABEL_16;
  }

  sub_22DDEF284(v28, &qword_27DA37DC0, &qword_22DECE2A0);
LABEL_11:
  sub_22DEC48B4();
  sub_22DDF25F4(&qword_27DA37B30, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v31 = sub_22DEC4BF4();
  return v31 & 1;
}

uint64_t sub_22DEB1F50(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t))
{
  v7 = *(a3(0) + 20);
  v8 = *(a1 + v7);
  v9 = *(a2 + v7);
  if (v8 != v9)
  {

    v10 = a4(v8, v9);

    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  sub_22DEC48B4();
  sub_22DDF25F4(&qword_27DA37B30, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_22DEC4BF4() & 1;
}

uint64_t sub_22DEB2044(void *a1, void *a2, uint64_t (*a3)(void), uint64_t (*a4)(void, void))
{
  v7 = a3(0);
  v8 = *(v7 + 24);
  v9 = (a1 + v8);
  v10 = *(a1 + v8 + 8);
  v11 = (a2 + v8);
  v12 = v11[1];
  if (v10)
  {
    if (!v12)
    {
      return 0;
    }

    v13 = *v9 == *v11 && v10 == v12;
    if (!v13 && (sub_22DEC50E4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v12)
  {
    return 0;
  }

  if (a4(*a1, *a2))
  {
    v14 = *(v7 + 28);
    v15 = (a1 + v14);
    v16 = *(a1 + v14 + 8);
    v17 = (a2 + v14);
    v18 = v17[1];
    if (v16)
    {
      if (v18)
      {
        v19 = *v15 == *v17 && v16 == v18;
        if (v19 || (sub_22DEC50E4() & 1) != 0)
        {
          goto LABEL_18;
        }
      }
    }

    else if (!v18)
    {
LABEL_18:
      sub_22DEC48B4();
      sub_22DDF25F4(&qword_27DA37B30, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      return sub_22DEC4BF4() & 1;
    }
  }

  return 0;
}

uint64_t _s6NDOAPI36Com_Apple_Sse_Ocean_Ndo_Api_DWFooterV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWFooter(0) + 24);
  v5 = (a1 + v4);
  v6 = *(a1 + v4 + 8);
  v7 = (a2 + v4);
  v8 = v7[1];
  if (v6)
  {
    if (!v8)
    {
      return 0;
    }

    v9 = *v5 == *v7 && v6 == v8;
    if (!v9 && (sub_22DEC50E4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  if (sub_22DE31ED0(*a1, *a2))
  {
    sub_22DEC48B4();
    sub_22DDF25F4(&qword_27DA37B30, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    return sub_22DEC4BF4() & 1;
  }

  return 0;
}

uint64_t _s6NDOAPI34Com_Apple_Sse_Ocean_Ndo_Api_DWItemV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem.OneOf_Data(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F18, &unk_22DEC8140);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v23 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F20, &qword_22DECFFA0);
  MEMORY[0x28223BE20](v11);
  v13 = v23 - v12;
  v14 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem(0);
  v15 = *(v14 + 24);
  v16 = *(a1 + v15);
  v17 = *(a2 + v15);
  if (v16 == 5)
  {
    if (v17 != 5)
    {
      goto LABEL_11;
    }
  }

  else if (v16 != v17)
  {
    goto LABEL_11;
  }

  v23[1] = v14;
  v18 = *(v11 + 48);
  sub_22DDF0028(a1, v13, &qword_27DA37F18, &unk_22DEC8140);
  sub_22DDF0028(a2, &v13[v18], &qword_27DA37F18, &unk_22DEC8140);
  v19 = *(v5 + 48);
  if (v19(v13, 1, v4) == 1)
  {
    if (v19(&v13[v18], 1, v4) == 1)
    {
      sub_22DDEF284(v13, &qword_27DA37F18, &unk_22DEC8140);
LABEL_14:
      sub_22DEC48B4();
      sub_22DDF25F4(&qword_27DA37B30, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v20 = sub_22DEC4BF4();
      return v20 & 1;
    }

    goto LABEL_10;
  }

  sub_22DDF0028(v13, v10, &qword_27DA37F18, &unk_22DEC8140);
  if (v19(&v13[v18], 1, v4) == 1)
  {
    sub_22DEA29F4(v10, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem.OneOf_Data);
LABEL_10:
    sub_22DDEF284(v13, &qword_27DA37F20, &qword_22DECFFA0);
    goto LABEL_11;
  }

  sub_22DDF1788(&v13[v18], v7, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem.OneOf_Data);
  v22 = _s6NDOAPI34Com_Apple_Sse_Ocean_Ndo_Api_DWItemV10OneOf_DataO2eeoiySbAE_AEtFZ_0(v10, v7);
  sub_22DEA29F4(v7, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem.OneOf_Data);
  sub_22DEA29F4(v10, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem.OneOf_Data);
  sub_22DDEF284(v13, &qword_27DA37F18, &unk_22DEC8140);
  if (v22)
  {
    goto LABEL_14;
  }

LABEL_11:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s6NDOAPI39Com_Apple_Sse_Ocean_Ndo_Api_DWPromoDataV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37D80, &unk_22DEC7960);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v46 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F30, &unk_22DECCF30);
  MEMORY[0x28223BE20](v11);
  v13 = &v46 - v12;
  v14 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWPromoData(0);
  v15 = v14[5];
  v16 = (a1 + v15);
  v17 = *(a1 + v15 + 8);
  v18 = (a2 + v15);
  v19 = v18[1];
  if (v17)
  {
    if (!v19)
    {
      goto LABEL_32;
    }

    if (*v16 != *v18 || v17 != v19)
    {
      v21 = v14;
      v22 = sub_22DEC50E4();
      v14 = v21;
      if ((v22 & 1) == 0)
      {
        goto LABEL_32;
      }
    }
  }

  else if (v19)
  {
    goto LABEL_32;
  }

  v23 = v14[6];
  v24 = (a1 + v23);
  v25 = *(a1 + v23 + 8);
  v26 = (a2 + v23);
  v27 = v26[1];
  if (v25)
  {
    if (!v27)
    {
      goto LABEL_32;
    }

    if (*v24 != *v26 || v25 != v27)
    {
      v29 = v14;
      v30 = sub_22DEC50E4();
      v14 = v29;
      if ((v30 & 1) == 0)
      {
        goto LABEL_32;
      }
    }
  }

  else if (v27)
  {
    goto LABEL_32;
  }

  v31 = v14[7];
  v32 = (a1 + v31);
  v33 = *(a1 + v31 + 8);
  v34 = (a2 + v31);
  v35 = v34[1];
  if (v33)
  {
    if (!v35)
    {
      goto LABEL_32;
    }

    if (*v32 != *v34 || v33 != v35)
    {
      v36 = v14;
      v37 = sub_22DEC50E4();
      v14 = v36;
      if ((v37 & 1) == 0)
      {
        goto LABEL_32;
      }
    }
  }

  else if (v35)
  {
    goto LABEL_32;
  }

  v38 = v14[8];
  v39 = *(v11 + 48);
  sub_22DDF0028(a1 + v38, v13, &qword_27DA37D80, &unk_22DEC7960);
  v40 = a2 + v38;
  v41 = v39;
  sub_22DDF0028(v40, &v13[v39], &qword_27DA37D80, &unk_22DEC7960);
  v42 = *(v5 + 48);
  if (v42(v13, 1, v4) == 1)
  {
    if (v42(&v13[v41], 1, v4) == 1)
    {
      sub_22DDEF284(v13, &qword_27DA37D80, &unk_22DEC7960);
LABEL_35:
      sub_22DEC48B4();
      sub_22DDF25F4(&qword_27DA37B30, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v43 = sub_22DEC4BF4();
      return v43 & 1;
    }

    goto LABEL_31;
  }

  sub_22DDF0028(v13, v10, &qword_27DA37D80, &unk_22DEC7960);
  if (v42(&v13[v41], 1, v4) == 1)
  {
    sub_22DEA29F4(v10, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
LABEL_31:
    sub_22DDEF284(v13, &qword_27DA37F30, &unk_22DECCF30);
    goto LABEL_32;
  }

  sub_22DDF1788(&v13[v41], v7, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
  v45 = static Com_Apple_Sse_Ocean_Ndo_Api_CTAction.== infix(_:_:)(v10, v7);
  sub_22DEA29F4(v7, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
  sub_22DEA29F4(v10, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction);
  sub_22DDEF284(v13, &qword_27DA37D80, &unk_22DEC7960);
  if (v45)
  {
    goto LABEL_35;
  }

LABEL_32:
  v43 = 0;
  return v43 & 1;
}

uint64_t _s6NDOAPI34Com_Apple_Sse_Ocean_Ndo_Api_DWItemV10OneOf_DataO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v51 = a1;
  v52 = a2;
  v2 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWFooter(0);
  MEMORY[0x28223BE20](v2 - 8);
  v48 = (&v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppData(0);
  MEMORY[0x28223BE20](v4 - 8);
  v49 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink(0);
  MEMORY[0x28223BE20](v6 - 8);
  v47 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageData(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = (&v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWPromoData(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem.OneOf_Data(0);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = (&v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = MEMORY[0x28223BE20](v15);
  v50 = &v47 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v47 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v25 = (&v47 - v24);
  MEMORY[0x28223BE20](v23);
  v27 = &v47 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA39020, &qword_22DED0000);
  v29 = MEMORY[0x28223BE20](v28 - 8);
  v31 = &v47 - v30;
  v32 = *(v29 + 56);
  sub_22DEA298C(v51, &v47 - v30, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem.OneOf_Data);
  sub_22DEA298C(v52, &v31[v32], type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem.OneOf_Data);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      sub_22DEA298C(v31, v27, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem.OneOf_Data);
      if (!swift_getEnumCaseMultiPayload())
      {
        sub_22DDF1788(&v31[v32], v13, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWPromoData);
        v35 = _s6NDOAPI39Com_Apple_Sse_Ocean_Ndo_Api_DWPromoDataV2eeoiySbAC_ACtFZ_0(v27, v13);
        v36 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWPromoData;
        v37 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWPromoData;
        v38 = v13;
        goto LABEL_22;
      }

      v39 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWPromoData;
      goto LABEL_17;
    }

    sub_22DEA298C(v31, v25, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem.OneOf_Data);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v44 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageData;
      v45 = v25;
      goto LABEL_20;
    }

    sub_22DDF1788(&v31[v32], v10, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageData);
    v35 = _s6NDOAPI42Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageDataV2eeoiySbAC_ACtFZ_0(v25, v10);
    v37 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageData;
    sub_22DEA29F4(v10, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageData);
    v41 = v25;
LABEL_23:
    v42 = v37;
    goto LABEL_24;
  }

  if (EnumCaseMultiPayload != 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v27 = v50;
      sub_22DEA298C(v31, v50, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem.OneOf_Data);
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v34 = v49;
        sub_22DDF1788(&v31[v32], v49, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppData);
        sub_22DEC48B4();
        sub_22DDF25F4(&qword_27DA37B30, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        v35 = sub_22DEC4BF4();
        v36 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppData;
        v37 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppData;
        v38 = v34;
LABEL_22:
        sub_22DEA29F4(v38, v36);
        v41 = v27;
        goto LABEL_23;
      }

      v39 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppData;
LABEL_17:
      v44 = v39;
      v45 = v27;
      goto LABEL_20;
    }

    sub_22DEA298C(v31, v17, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem.OneOf_Data);
    if (swift_getEnumCaseMultiPayload() != 4)
    {
      v44 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWFooter;
      v45 = v17;
      goto LABEL_20;
    }

    v43 = v48;
    sub_22DDF1788(&v31[v32], v48, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWFooter);
    v35 = _s6NDOAPI36Com_Apple_Sse_Ocean_Ndo_Api_DWFooterV2eeoiySbAC_ACtFZ_0(v17, v43);
    v37 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWFooter;
    sub_22DEA29F4(v43, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWFooter);
    v41 = v17;
    goto LABEL_23;
  }

  sub_22DEA298C(v31, v22, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem.OneOf_Data);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v40 = v47;
    sub_22DDF1788(&v31[v32], v47, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
    v35 = static Com_Apple_Sse_Ocean_Ndo_Api_CTLink.== infix(_:_:)(v22, v40);
    sub_22DEA29F4(v40, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink);
    v41 = v22;
    v42 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink;
LABEL_24:
    sub_22DEA29F4(v41, v42);
    sub_22DEA29F4(v31, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem.OneOf_Data);
    return v35 & 1;
  }

  v44 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink;
  v45 = v22;
LABEL_20:
  sub_22DEA29F4(v45, v44);
  sub_22DDEF284(v31, &qword_27DA39020, &qword_22DED0000);
  v35 = 0;
  return v35 & 1;
}

unint64_t sub_22DEB3290()
{
  result = qword_28145CAA0;
  if (!qword_28145CAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28145CAA0);
  }

  return result;
}

unint64_t sub_22DEB32E8()
{
  result = qword_28145CAA8;
  if (!qword_28145CAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28145CAA8);
  }

  return result;
}

unint64_t sub_22DEB3340()
{
  result = qword_28145CA98;
  if (!qword_28145CA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28145CA98);
  }

  return result;
}

unint64_t sub_22DEB3398()
{
  result = qword_27DA38EA0;
  if (!qword_27DA38EA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DA38EA8, &qword_22DECE378);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA38EA0);
  }

  return result;
}

void sub_22DEB4674(uint64_t a1)
{
  sub_22DE94424(319, &qword_28145AD38, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_22DE624D8();
    if (v2 <= 0x3F)
    {
      sub_22DEC48B4();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_22DEB475C(uint64_t a1)
{
  sub_22DEC48B4();
  if (v1 <= 0x3F)
  {
    sub_22DEB4858(319, qword_28145C448, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_22DEB4858(319, qword_28145B078, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceWarrantyResponse, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_22DEB4858(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_22DEB48E4(uint64_t a1)
{
  sub_22DEB4858(319, &qword_28145AD58, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_22DEC48B4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_22DEB49D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = sub_22DEC48B4();
  if (v6 <= 0x3F)
  {
    result = a4(319);
    if (v7 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_22DEB4A84(uint64_t a1)
{
  sub_22DEC48B4();
  if (v1 <= 0x3F)
  {
    sub_22DEB4858(319, qword_28145D790, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_22DE94424(319, &qword_28145AD88, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_22DE94424(319, &qword_28145AD00, MEMORY[0x277D84A28], MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_22DEB4C20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  a7(319, a4, a5, a6);
  if (v7 <= 0x3F)
  {
    sub_22DEC48B4();
    if (v8 <= 0x3F)
    {
      sub_22DE94424(319, &qword_28145AD88, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
      if (v9 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_22DEB4D18(uint64_t a1)
{
  sub_22DEB4858(319, qword_28145D6F8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWItem.OneOf_Data, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_22DEC48B4();
    if (v2 <= 0x3F)
    {
      sub_22DE94424(319, &qword_28145CA90, &type metadata for Com_Apple_Sse_Ocean_Ndo_Api_DWItemType, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_22DEB4E08(uint64_t a1)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWPromoData(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWCoverageData(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink(319);
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppData(319);
        if (v5 <= 0x3F)
        {
          result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWFooter(319);
          if (v6 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return result;
}

void sub_22DEB4EE0(uint64_t a1)
{
  sub_22DEC48B4();
  if (v1 <= 0x3F)
  {
    sub_22DE94424(319, &qword_28145AD88, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_22DEB4858(319, qword_28145D3C0, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTAction, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_120Tm(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_22DEC48B4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *__swift_store_extra_inhabitant_index_121Tm(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_22DEC48B4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_22DEB5150(uint64_t a1)
{
  sub_22DE94424(319, &qword_28145AD38, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_22DEB4858(319, &qword_28145AD50, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWLearnMoreLink, MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      sub_22DEC48B4();
      if (v3 <= 0x3F)
      {
        sub_22DE94424(319, &qword_28145AD28, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_22DE94424(319, &qword_28145AD88, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_22DEB5310(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  sub_22DEC48B4();
  if (v7 <= 0x3F)
  {
    sub_22DE94424(319, &qword_28145AD88, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v8 <= 0x3F)
    {
      sub_22DEB4858(319, a4, a5, MEMORY[0x277D83D88]);
      if (v9 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_22DEB5424(uint64_t a1)
{
  sub_22DEB4858(319, &qword_28145AD68, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWBenefit, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_22DEC48B4();
    if (v2 <= 0x3F)
    {
      sub_22DE94424(319, &qword_28145AD88, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_22DEB55A8(uint64_t a1)
{
  result = sub_22DEC48B4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_22DEB563C(uint64_t a1)
{
  sub_22DEB4858(319, &qword_28145AD78, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTLink, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_22DEC48B4();
    if (v2 <= 0x3F)
    {
      sub_22DE94424(319, &qword_28145AD88, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_22DEB5734(uint64_t a1)
{
  sub_22DEB4858(319, qword_28145C6F8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_22DEB4858(319, qword_28145B628, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_22DEB4858(319, qword_28145B1E8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceWarrantyRequest, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_22DEB58D0(uint64_t a1)
{
  sub_22DEB4858(319, qword_28145AFA8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_SettingsCoverageSection, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

unint64_t sub_22DEB59C0()
{
  result = qword_28145CAB0;
  if (!qword_28145CAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28145CAB0);
  }

  return result;
}

NDOAPI::Com_Apple_Sse_Ocean_Ndo_Api_ErrorType_optional __swiftcall Com_Apple_Sse_Ocean_Ndo_Api_ErrorType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 0x40302010005uLL >> (8 * rawValue);
  if (rawValue >= 6)
  {
    LOBYTE(v2) = 5;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_22DEB5AD0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22DEB8EF0();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_ErrorResponse.errorToken.getter()
{
  v1 = (v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ErrorResponse(0) + 20));
  if (v1[1])
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_22DEB5BAC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ErrorResponse(0) + 20));
  v4 = v3[1];
  if (v4)
  {
    v5 = *v3;
    v6 = v4;
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  *a2 = v5;
  a2[1] = v6;
}

uint64_t sub_22DEB5C10(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (a2 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ErrorResponse(0) + 20));

  *v4 = v3;
  v4[1] = v2;
  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_ErrorResponse.errorToken.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ErrorResponse(0) + 20));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_ErrorResponse.errorToken.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ErrorResponse(0) + 20);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_22DE2D1BC;
}

Swift::Void __swiftcall Com_Apple_Sse_Ocean_Ndo_Api_ErrorResponse.clearErrorToken()()
{
  v1 = (v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ErrorResponse(0) + 20));

  *v1 = 0;
  v1[1] = 0;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_ErrorResponse.eventToken.getter()
{
  v1 = (v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ErrorResponse(0) + 24));
  if (v1[1])
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_22DEB5E18@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ErrorResponse(0) + 24));
  v4 = v3[1];
  if (v4)
  {
    v5 = *v3;
    v6 = v4;
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  *a2 = v5;
  a2[1] = v6;
}

uint64_t sub_22DEB5E7C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (a2 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ErrorResponse(0) + 24));

  *v4 = v3;
  v4[1] = v2;
  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_ErrorResponse.eventToken.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ErrorResponse(0) + 24));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_ErrorResponse.eventToken.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ErrorResponse(0) + 24);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_22DE33C88;
}

Swift::Void __swiftcall Com_Apple_Sse_Ocean_Ndo_Api_ErrorResponse.clearEventToken()()
{
  v1 = (v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ErrorResponse(0) + 24));

  *v1 = 0;
  v1[1] = 0;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_ErrorResponse.errorType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ErrorResponse(0);
  v4 = *(v1 + *(result + 28));
  if (v4 == 5)
  {
    LOBYTE(v4) = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_ErrorResponse.errorType.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ErrorResponse(0);
  *(v1 + *(result + 28)) = v2;
  return result;
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_ErrorResponse.errorType.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ErrorResponse(0) + 28);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 5)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return sub_22DE2CCE4;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_ErrorResponse.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_22DEC48B4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_ErrorResponse.unknownFields.setter(uint64_t a1)
{
  v3 = sub_22DEC48B4();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

int *Com_Apple_Sse_Ocean_Ndo_Api_ErrorResponse.init()@<X0>(uint64_t a2@<X8>)
{
  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ErrorResponse(0);
  v4 = (a2 + result[5]);
  *v4 = 0;
  v4[1] = 0;
  v5 = (a2 + result[6]);
  *v5 = 0;
  v5[1] = 0;
  *(a2 + result[7]) = 5;
  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_ErrorResponseBody.meta.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38088, &unk_22DEC8220);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - v4;
  v6 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ErrorResponseBody(0);
  sub_22DEB640C(v1 + *(v6 + 24), v5);
  v7 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta(0);
  v8 = *(*(v7 - 1) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_22DEB647C(v5, a1);
  }

  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v9 = (a1 + v7[5]);
  *v9 = 0;
  v9[1] = 0;
  v10 = (a1 + v7[6]);
  *v10 = 0;
  v10[1] = 0;
  v11 = a1 + v7[7];
  *v11 = 0;
  *(v11 + 8) = 1;
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_22DDEF284(v5, &qword_27DA38088, &unk_22DEC8220);
  }

  return result;
}

uint64_t sub_22DEB640C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38088, &unk_22DEC8220);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22DEB647C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22DEB64E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38088, &unk_22DEC8220);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  v7 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ErrorResponseBody(0);
  sub_22DEB640C(a1 + *(v7 + 24), v6);
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_22DEB647C(v6, a2);
  }

  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v10 = (a2 + v8[5]);
  *v10 = 0;
  v10[1] = 0;
  v11 = (a2 + v8[6]);
  *v11 = 0;
  v11[1] = 0;
  v12 = a2 + v8[7];
  *v12 = 0;
  *(v12 + 8) = 1;
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_22DDEF284(v6, &qword_27DA38088, &unk_22DEC8220);
  }

  return result;
}

uint64_t sub_22DEB6640(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22DEB6B1C(a1, v7);
  v8 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ErrorResponseBody(0) + 24);
  sub_22DDEF284(a2 + v8, &qword_27DA38088, &unk_22DEC8220);
  sub_22DEB647C(v7, a2 + v8);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_ErrorResponseBody.meta.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ErrorResponseBody(0) + 24);
  sub_22DDEF284(v1 + v3, &qword_27DA38088, &unk_22DEC8220);
  sub_22DEB647C(a1, v1 + v3);
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Com_Apple_Sse_Ocean_Ndo_Api_ErrorResponseBody.meta.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38088, &unk_22DEC8220) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta(0);
  v5[2] = v9;
  v10 = *(v9 - 1);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ErrorResponseBody(0) + 24);
  *(v5 + 12) = v15;
  sub_22DEB640C(v1 + v15, v8);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
    v17 = (v14 + v9[5]);
    *v17 = 0;
    v17[1] = 0;
    v18 = (v14 + v9[6]);
    *v18 = 0;
    v18[1] = 0;
    v19 = v14 + v9[7];
    *v19 = 0;
    *(v19 + 8) = 1;
    if (v16(v8, 1, v9) != 1)
    {
      sub_22DDEF284(v8, &qword_27DA38088, &unk_22DEC8220);
    }
  }

  else
  {
    sub_22DEB647C(v8, v14);
  }

  return sub_22DEB6A04;
}

void sub_22DEB6A04(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    sub_22DEB6B1C((*a1)[5], v4);
    sub_22DDEF284(v9 + v3, &qword_27DA38088, &unk_22DEC8220);
    sub_22DEB647C(v4, v9 + v3);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_22DEB6B80(v5);
  }

  else
  {
    sub_22DDEF284(v9 + v3, &qword_27DA38088, &unk_22DEC8220);
    sub_22DEB647C(v5, v9 + v3);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

uint64_t sub_22DEB6B1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22DEB6B80(uint64_t a1)
{
  v2 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL Com_Apple_Sse_Ocean_Ndo_Api_ErrorResponseBody.hasMeta.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38088, &unk_22DEC8220);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ErrorResponseBody(0);
  sub_22DEB640C(v0 + *(v4 + 24), v3);
  v5 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta(0);
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5) != 1;
  sub_22DDEF284(v3, &qword_27DA38088, &unk_22DEC8220);
  return v6;
}

Swift::Void __swiftcall Com_Apple_Sse_Ocean_Ndo_Api_ErrorResponseBody.clearMeta()()
{
  v1 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ErrorResponseBody(0) + 24);
  sub_22DDEF284(v0 + v1, &qword_27DA38088, &unk_22DEC8220);
  v2 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_ErrorResponseBody.errors.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_ErrorResponseBody.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ErrorResponseBody(0) + 20);
  v4 = sub_22DEC48B4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_ErrorResponseBody.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ErrorResponseBody(0) + 20);
  v4 = sub_22DEC48B4();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_ErrorResponseBody.init()@<X0>(char *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  v2 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ErrorResponseBody(0);
  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v3 = *(v2 + 24);
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(&a1[v3], 1, 1, v4);
}

uint64_t sub_22DEB6F7C()
{
  v0 = sub_22DEC4B14();
  __swift_allocate_value_buffer(v0, qword_27DA39028);
  __swift_project_value_buffer(v0, qword_27DA39028);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F60, &qword_22DEC8190);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F68, &qword_22DECB000) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_22DEC7C40;
  v4 = v16 + v3;
  v5 = v16 + v3 + v1[14];
  *(v16 + v3) = 1;
  *v5 = "UNKNOWN";
  *(v5 + 8) = 7;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_22DEC4AE4();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "INTERNAL";
  *(v9 + 8) = 8;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "EXTERNAL";
  *(v11 + 1) = 8;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "INVALID_REQ";
  *(v13 + 1) = 11;
  v13[16] = 2;
  v8();
  v14 = v4 + 4 * v2 + v1[14];
  *(v4 + 4 * v2) = 5;
  *v14 = "INVALID_CONFIG";
  *(v14 + 8) = 14;
  *(v14 + 16) = 2;
  v8();
  return sub_22DEC4AF4();
}

uint64_t sub_22DEB726C()
{
  v0 = sub_22DEC4B14();
  __swift_allocate_value_buffer(v0, qword_27DA39040);
  __swift_project_value_buffer(v0, qword_27DA39040);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F60, &qword_22DEC8190);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F68, &qword_22DECB000) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22DEC77C0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "error_token";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_22DEC4AE4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "event_token";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "error_type";
  *(v11 + 8) = 10;
  *(v11 + 16) = 2;
  v9();
  return sub_22DEC4AF4();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_ErrorResponse.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_22DEC4954();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 3)
    {
      sub_22DEB756C(a1, v5, a2, a3);
    }

    else if (result == 2 || result == 1)
    {
      type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ErrorResponse(0);
      sub_22DEC49C4();
    }
  }

  return result;
}

uint64_t sub_22DEB756C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ErrorResponse(0);
  sub_22DEB8EF0();
  return sub_22DEC4984();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_ErrorResponse.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_22DEB7668(v3, a1, a2, a3);
  if (!v4)
  {
    sub_22DEB76E0(v3, a1, a2, a3);
    sub_22DEB7758(v3, a1, a2, a3);
    return sub_22DEC4894();
  }

  return result;
}

uint64_t sub_22DEB7668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ErrorResponse(0);
  if (*(a1 + *(result + 20) + 8))
  {
    return sub_22DEC4AB4();
  }

  return result;
}

uint64_t sub_22DEB76E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ErrorResponse(0);
  if (*(a1 + *(result + 24) + 8))
  {
    return sub_22DEC4AB4();
  }

  return result;
}

uint64_t sub_22DEB7758(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ErrorResponse(0);
  if (*(a1 + *(result + 28)) != 5)
  {
    sub_22DEB8EF0();
    return sub_22DEC4A74();
  }

  return result;
}

uint64_t sub_22DEB7830@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v5 = a1[6];
  v6 = (a2 + a1[5]);
  *v6 = 0;
  v6[1] = 0;
  v7 = (a2 + v5);
  *v7 = 0;
  v7[1] = 0;
  *(a2 + a1[7]) = 5;
  return result;
}

uint64_t sub_22DEB78C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22DEB887C(&qword_27DA39110, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ErrorResponse, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_ErrorResponse);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22DEB7964(uint64_t a1)
{
  v2 = sub_22DEB887C(&qword_27DA39078, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ErrorResponse, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_ErrorResponse);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22DEB79D0(uint64_t a1, uint64_t a2)
{
  sub_22DEB887C(&qword_27DA39078, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ErrorResponse, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_ErrorResponse);

  return sub_22DEC4A44();
}

uint64_t sub_22DEB7A6C()
{
  v0 = sub_22DEC4B14();
  __swift_allocate_value_buffer(v0, qword_27DA39058);
  __swift_project_value_buffer(v0, qword_27DA39058);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F60, &qword_22DEC8190);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F68, &qword_22DECB000) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22DEC81D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "meta";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22DEC4AE4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "errors";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_22DEC4AF4();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_ErrorResponseBody.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_22DEC4954();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result == 1)
      {
        sub_22DEB7D58(a1, v5, a2, a3);
      }

      else if (result == 2)
      {
        type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ErrorResponse(0);
        sub_22DEB887C(&qword_27DA39078, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ErrorResponse, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_ErrorResponse);
        sub_22DEC49D4();
      }

      result = sub_22DEC4954();
    }
  }

  return result;
}

uint64_t sub_22DEB7D58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ErrorResponseBody(0);
  type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta(0);
  sub_22DEB887C(&qword_28145C498, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta);
  return sub_22DEC49E4();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_ErrorResponseBody.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_22DEB7F08(v3, a1, a2, a3);
  if (!v4)
  {
    if (*(*v3 + 16))
    {
      type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ErrorResponse(0);
      sub_22DEB887C(&qword_27DA39078, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ErrorResponse, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_ErrorResponse);
      sub_22DEC4AC4();
    }

    type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ErrorResponseBody(0);
    return sub_22DEC4894();
  }

  return result;
}

uint64_t sub_22DEB7F08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38088, &unk_22DEC8220);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ErrorResponseBody(0);
  sub_22DEB640C(a1 + *(v12 + 24), v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_22DDEF284(v7, &qword_27DA38088, &unk_22DEC8220);
  }

  sub_22DEB647C(v7, v11);
  sub_22DEB887C(&qword_28145C498, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta);
  sub_22DEC4AD4();
  return sub_22DEB6B80(v11);
}

uint64_t sub_22DEB8134(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  sub_22DEC5184();
  a1(0);
  sub_22DEB887C(a2, a3, a4);
  sub_22DEC4BE4();
  return sub_22DEC51A4();
}

uint64_t sub_22DEB81BC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v4 = *(a1 + 24);
  v5 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(&a2[v4], 1, 1, v5);
}

uint64_t sub_22DEB8294(uint64_t a1, uint64_t a2)
{
  v4 = sub_22DEB887C(&qword_27DA39108, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ErrorResponseBody, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_ErrorResponseBody);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22DEB8334(uint64_t a1)
{
  v2 = sub_22DEB887C(&qword_27DA390C8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ErrorResponseBody, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_ErrorResponseBody);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22DEB83A0(uint64_t a1, uint64_t a2)
{
  sub_22DEB887C(&qword_27DA390C8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ErrorResponseBody, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_ErrorResponseBody);

  return sub_22DEC4A44();
}

uint64_t _s6NDOAPI45Com_Apple_Sse_Ocean_Ndo_Api_ErrorResponseBodyV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38088, &unk_22DEC8220);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38350, &unk_22DED04F0);
  v12 = v11 - 8;
  MEMORY[0x28223BE20](v11);
  v14 = &v21 - v13;
  v15 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ErrorResponseBody(0) + 24);
  v16 = *(v12 + 56);
  sub_22DEB640C(a1 + v15, v14);
  sub_22DEB640C(a2 + v15, &v14[v16]);
  v17 = *(v5 + 48);
  if (v17(v14, 1, v4) == 1)
  {
    if (v17(&v14[v16], 1, v4) == 1)
    {
      sub_22DDEF284(v14, &qword_27DA38088, &unk_22DEC8220);
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  sub_22DEB640C(v14, v10);
  if (v17(&v14[v16], 1, v4) == 1)
  {
    sub_22DEB6B80(v10);
LABEL_6:
    sub_22DDEF284(v14, &qword_27DA38350, &unk_22DED04F0);
LABEL_10:
    v19 = 0;
    return v19 & 1;
  }

  sub_22DEB647C(&v14[v16], v7);
  v18 = static Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta.== infix(_:_:)(v10, v7);
  sub_22DEB6B80(v7);
  sub_22DEB6B80(v10);
  sub_22DDEF284(v14, &qword_27DA38088, &unk_22DEC8220);
  if ((v18 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_8:
  if ((sub_22DE2F694(*a1, *a2) & 1) == 0)
  {
    goto LABEL_10;
  }

  sub_22DEC48B4();
  sub_22DEB887C(&qword_27DA37B30, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v19 = sub_22DEC4BF4();
  return v19 & 1;
}

uint64_t _s6NDOAPI41Com_Apple_Sse_Ocean_Ndo_Api_ErrorResponseV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ErrorResponse(0);
  v5 = v4[5];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v8[1];
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }

    if (*v6 != *v8 || v7 != v9)
    {
      v11 = v4;
      v12 = sub_22DEC50E4();
      v4 = v11;
      if ((v12 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v9)
  {
    return 0;
  }

  v13 = v4[6];
  v14 = (a1 + v13);
  v15 = *(a1 + v13 + 8);
  v16 = (a2 + v13);
  v17 = v16[1];
  if (!v15)
  {
    if (!v17)
    {
      goto LABEL_19;
    }

    return 0;
  }

  if (!v17)
  {
    return 0;
  }

  if (*v14 != *v16 || v15 != v17)
  {
    v19 = v4;
    v20 = sub_22DEC50E4();
    v4 = v19;
    if ((v20 & 1) == 0)
    {
      return 0;
    }
  }

LABEL_19:
  v21 = v4[7];
  v22 = *(a1 + v21);
  v23 = *(a2 + v21);
  if (v22 == 5)
  {
    if (v23 != 5)
    {
      return 0;
    }
  }

  else if (v22 != v23)
  {
    return 0;
  }

  sub_22DEC48B4();
  sub_22DEB887C(&qword_27DA37B30, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_22DEC4BF4() & 1;
}

uint64_t sub_22DEB887C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_22DEB88C8()
{
  result = qword_27DA39088;
  if (!qword_27DA39088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA39088);
  }

  return result;
}

unint64_t sub_22DEB8920()
{
  result = qword_27DA39090;
  if (!qword_27DA39090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA39090);
  }

  return result;
}

unint64_t sub_22DEB8978()
{
  result = qword_27DA39098;
  if (!qword_27DA39098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA39098);
  }

  return result;
}

unint64_t sub_22DEB89D0()
{
  result = qword_27DA390A0;
  if (!qword_27DA390A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DA390A8, &qword_22DED00B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA390A0);
  }

  return result;
}

void sub_22DEB8CAC(uint64_t a1)
{
  sub_22DEC48B4();
  if (v1 <= 0x3F)
  {
    sub_22DE33AAC(319, &qword_28145AD88);
    if (v2 <= 0x3F)
    {
      sub_22DE33AAC(319, &qword_27DA390E8);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_22DEB8D90(uint64_t a1)
{
  sub_22DEB8E8C(319, &qword_27DA39100, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ErrorResponse, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_22DEC48B4();
    if (v2 <= 0x3F)
    {
      sub_22DEB8E8C(319, qword_28145C448, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_22DEB8E8C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_22DEB8EF0()
{
  result = qword_27DA39118;
  if (!qword_27DA39118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA39118);
  }

  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse.validUntil.getter()
{
  v1 = (v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse(0) + 44));
  if (v1[8])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

NDOAPI::Com_Apple_Sse_Ocean_Ndo_Api_Environment_optional __swiftcall Com_Apple_Sse_Ocean_Ndo_Api_Environment.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 0x40302010005uLL >> (8 * rawValue);
  if (rawValue >= 6)
  {
    LOBYTE(v2) = 5;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_22DEB905C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22DEC0570();

  return MEMORY[0x28217E238](a1, a2, v4);
}

NDOAPI::Com_Apple_Sse_Ocean_Ndo_Api_ApiUrlTypes_optional __swiftcall Com_Apple_Sse_Ocean_Ndo_Api_ApiUrlTypes.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 0x605040302010007uLL >> (8 * rawValue);
  if (rawValue >= 8)
  {
    LOBYTE(v2) = 7;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_22DEB9110(uint64_t a1, uint64_t a2)
{
  v4 = sub_22DEC051C();

  return MEMORY[0x28217E238](a1, a2, v4);
}

NDOAPI::Com_Apple_Sse_Ocean_Ndo_Api_FeatureFlags_optional __swiftcall Com_Apple_Sse_Ocean_Ndo_Api_FeatureFlags.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (rawValue == 1)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_FeatureFlags.rawValue.getter()
{
  if (*v0)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_22DEB91BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_22DEC04C8();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_AppDefaults.http500RetryDelay.getter()
{
  v1 = (v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AppDefaults(0) + 20));
  if (v1[4])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_AppDefaults.http500RetryDelay.setter(int a1)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AppDefaults(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_AppDefaults.http500RetryDelay.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AppDefaults(0) + 20);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return sub_22DE5DDF0;
}

Swift::Void __swiftcall Com_Apple_Sse_Ocean_Ndo_Api_AppDefaults.clearHTTP500RetryDelay()()
{
  v1 = v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AppDefaults(0) + 20);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_AppDefaults.init()@<X0>(uint64_t a2@<X8>)
{
  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AppDefaults(0);
  v4 = a2 + *(result + 20);
  *v4 = 0;
  *(v4 + 4) = 1;
  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_ConfigRequest.meta.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37A38, &unk_22DEC6570);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v14 - v4;
  v6 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigRequest(0);
  sub_22DDF0028(v1 + *(v6 + 20), v5, &qword_27DA37A38, &unk_22DEC6570);
  v7 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta(0);
  v8 = *(*(v7 - 1) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_22DEBA0A8(v5, a1, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta);
  }

  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v9 = (a1 + v7[5]);
  *v9 = 0;
  v9[1] = 0;
  v10 = a1 + v7[6];
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = v7[7];
  v12 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Locale(0);
  (*(*(v12 - 8) + 56))(a1 + v11, 1, 1, v12);
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_22DDEF284(v5, &qword_27DA37A38, &unk_22DEC6570);
  }

  return result;
}

uint64_t sub_22DEB95AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37A38, &unk_22DEC6570);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - v5;
  v7 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigRequest(0);
  sub_22DDF0028(a1 + *(v7 + 20), v6, &qword_27DA37A38, &unk_22DEC6570);
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_22DEBA0A8(v6, a2, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta);
  }

  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v10 = (a2 + v8[5]);
  *v10 = 0;
  v10[1] = 0;
  v11 = a2 + v8[6];
  *v11 = 0;
  *(v11 + 8) = 1;
  v12 = v8[7];
  v13 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Locale(0);
  (*(*(v13 - 8) + 56))(a2 + v12, 1, 1, v13);
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_22DDEF284(v6, &qword_27DA37A38, &unk_22DEC6570);
  }

  return result;
}

uint64_t sub_22DEB9768(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22DEBA6D4(a1, v7, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta);
  v8 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigRequest(0) + 20);
  sub_22DDEF284(a2 + v8, &qword_27DA37A38, &unk_22DEC6570);
  sub_22DEBA0A8(v7, a2 + v8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_ConfigRequest.meta.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigRequest(0) + 20);
  sub_22DDEF284(v1 + v3, &qword_27DA37A38, &unk_22DEC6570);
  sub_22DEBA0A8(a1, v1 + v3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta);
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Com_Apple_Sse_Ocean_Ndo_Api_ConfigRequest.meta.modify(void *a1))(uint64_t **a1, uint64_t a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37A38, &unk_22DEC6570) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta(0);
  v5[2] = v9;
  v10 = *(v9 - 1);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigRequest(0) + 20);
  *(v5 + 12) = v15;
  sub_22DDF0028(v1 + v15, v8, &qword_27DA37A38, &unk_22DEC6570);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
    v17 = (v14 + v9[5]);
    *v17 = 0;
    v17[1] = 0;
    v18 = v14 + v9[6];
    *v18 = 0;
    *(v18 + 8) = 1;
    v19 = v9[7];
    v20 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Locale(0);
    (*(*(v20 - 8) + 56))(v14 + v19, 1, 1, v20);
    if (v16(v8, 1, v9) != 1)
    {
      sub_22DDEF284(v8, &qword_27DA37A38, &unk_22DEC6570);
    }
  }

  else
  {
    sub_22DEBA0A8(v8, v14, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta);
  }

  return sub_22DEB9BB8;
}

BOOL Com_Apple_Sse_Ocean_Ndo_Api_ConfigRequest.hasMeta.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37A38, &unk_22DEC6570);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigRequest(0);
  sub_22DDF0028(v0 + *(v4 + 20), v3, &qword_27DA37A38, &unk_22DEC6570);
  v5 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta(0);
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5) != 1;
  sub_22DDEF284(v3, &qword_27DA37A38, &unk_22DEC6570);
  return v6;
}

Swift::Void __swiftcall Com_Apple_Sse_Ocean_Ndo_Api_ConfigRequest.clearMeta()()
{
  v1 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigRequest(0) + 20);
  sub_22DDEF284(v0 + v1, &qword_27DA37A38, &unk_22DEC6570);
  v2 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_ConfigRequest.env.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigRequest(0);
  v4 = *(v1 + *(result + 24));
  if (v4 == 5)
  {
    LOBYTE(v4) = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_ConfigRequest.env.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigRequest(0);
  *(v1 + *(result + 24)) = v2;
  return result;
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_ConfigRequest.env.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigRequest(0) + 24);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 5)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return sub_22DE2CCE4;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_ConfigRequest.init()@<X0>(uint64_t a2@<X8>)
{
  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v3 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigRequest(0);
  v4 = *(v3 + 20);
  v5 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta(0);
  result = (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  *(a2 + *(v3 + 24)) = 5;
  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse.meta.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38088, &unk_22DEC8220);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - v4;
  v6 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse(0);
  sub_22DDF0028(v1 + *(v6 + 36), v5, &qword_27DA38088, &unk_22DEC8220);
  v7 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta(0);
  v8 = *(*(v7 - 1) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_22DEBA0A8(v5, a1, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta);
  }

  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v9 = (a1 + v7[5]);
  *v9 = 0;
  v9[1] = 0;
  v10 = (a1 + v7[6]);
  *v10 = 0;
  v10[1] = 0;
  v11 = a1 + v7[7];
  *v11 = 0;
  *(v11 + 8) = 1;
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_22DDEF284(v5, &qword_27DA38088, &unk_22DEC8220);
  }

  return result;
}

uint64_t sub_22DEBA0A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22DEBA110@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38088, &unk_22DEC8220);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  v7 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse(0);
  sub_22DDF0028(a1 + *(v7 + 36), v6, &qword_27DA38088, &unk_22DEC8220);
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_22DEBA0A8(v6, a2, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta);
  }

  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v10 = (a2 + v8[5]);
  *v10 = 0;
  v10[1] = 0;
  v11 = (a2 + v8[6]);
  *v11 = 0;
  v11[1] = 0;
  v12 = a2 + v8[7];
  *v12 = 0;
  *(v12 + 8) = 1;
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_22DDEF284(v6, &qword_27DA38088, &unk_22DEC8220);
  }

  return result;
}

uint64_t sub_22DEBA294(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22DEBA6D4(a1, v7, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta);
  v8 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse(0) + 36);
  sub_22DDEF284(a2 + v8, &qword_27DA38088, &unk_22DEC8220);
  sub_22DEBA0A8(v7, a2 + v8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse.meta.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse(0) + 36);
  sub_22DDEF284(v1 + v3, &qword_27DA38088, &unk_22DEC8220);
  sub_22DEBA0A8(a1, v1 + v3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta);
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse.meta.modify(void *a1))(uint64_t **a1, uint64_t a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38088, &unk_22DEC8220) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta(0);
  v5[2] = v9;
  v10 = *(v9 - 1);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse(0) + 36);
  *(v5 + 12) = v15;
  sub_22DDF0028(v1 + v15, v8, &qword_27DA38088, &unk_22DEC8220);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
    v17 = (v14 + v9[5]);
    *v17 = 0;
    v17[1] = 0;
    v18 = (v14 + v9[6]);
    *v18 = 0;
    v18[1] = 0;
    v19 = v14 + v9[7];
    *v19 = 0;
    *(v19 + 8) = 1;
    if (v16(v8, 1, v9) != 1)
    {
      sub_22DDEF284(v8, &qword_27DA38088, &unk_22DEC8220);
    }
  }

  else
  {
    sub_22DEBA0A8(v8, v14, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta);
  }

  return sub_22DEBA6AC;
}

uint64_t sub_22DEBA6D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22DEBA73C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

BOOL Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse.hasMeta.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38088, &unk_22DEC8220);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse(0);
  sub_22DDF0028(v0 + *(v4 + 36), v3, &qword_27DA38088, &unk_22DEC8220);
  v5 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta(0);
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5) != 1;
  sub_22DDEF284(v3, &qword_27DA38088, &unk_22DEC8220);
  return v6;
}

Swift::Void __swiftcall Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse.clearMeta()()
{
  v1 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse(0) + 36);
  sub_22DDEF284(v0 + v1, &qword_27DA38088, &unk_22DEC8220);
  v2 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse.configID.getter()
{
  v1 = (v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse(0) + 40));
  if (v1[1])
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_22DEBA970@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse(0) + 40));
  v4 = v3[1];
  if (v4)
  {
    v5 = *v3;
    v6 = v4;
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  *a2 = v5;
  a2[1] = v6;
}

uint64_t sub_22DEBA9D4(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (a2 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse(0) + 40));

  *v4 = v3;
  v4[1] = v2;
  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse.configID.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse(0) + 40));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse.configID.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse(0) + 40);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_22DE33C88;
}

Swift::Void __swiftcall Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse.clearConfigID()()
{
  v1 = (v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse(0) + 40));

  *v1 = 0;
  v1[1] = 0;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse.validUntil.setter(uint64_t a1)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse(0);
  v4 = v1 + *(result + 44);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse.validUntil.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse(0) + 44);
  *(a1 + 16) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 8))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *a1 = v5;
  return sub_22DE39A60;
}

Swift::Void __swiftcall Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse.clearValidUntil()()
{
  v1 = v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse(0) + 44);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse.apiUrls.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse.webUrls.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse.featureFlags.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse.universalLinkSheetCodes.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse.appDefaults.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA39180, &qword_22DED0500);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - v4;
  v6 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse(0);
  sub_22DDF0028(v1 + *(v6 + 48), v5, &qword_27DA39180, &qword_22DED0500);
  v7 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AppDefaults(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_22DEBA0A8(v5, a1, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AppDefaults);
  }

  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v9 = a1 + *(v7 + 20);
  *v9 = 0;
  *(v9 + 4) = 1;
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_22DDEF284(v5, &qword_27DA39180, &qword_22DED0500);
  }

  return result;
}

uint64_t sub_22DEBAF40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA39180, &qword_22DED0500);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse(0);
  sub_22DDF0028(a1 + *(v7 + 48), v6, &qword_27DA39180, &qword_22DED0500);
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AppDefaults(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_22DEBA0A8(v6, a2, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AppDefaults);
  }

  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v10 = a2 + *(v8 + 20);
  *v10 = 0;
  *(v10 + 4) = 1;
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_22DDEF284(v6, &qword_27DA39180, &qword_22DED0500);
  }

  return result;
}

uint64_t sub_22DEBB0AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AppDefaults(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22DEBA6D4(a1, v7, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AppDefaults);
  v8 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse(0) + 48);
  sub_22DDEF284(a2 + v8, &qword_27DA39180, &qword_22DED0500);
  sub_22DEBA0A8(v7, a2 + v8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AppDefaults);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse.appDefaults.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse(0) + 48);
  sub_22DDEF284(v1 + v3, &qword_27DA39180, &qword_22DED0500);
  sub_22DEBA0A8(a1, v1 + v3, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AppDefaults);
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AppDefaults(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse.appDefaults.modify(void *a1))(uint64_t **a1, uint64_t a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA39180, &qword_22DED0500) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AppDefaults(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse(0) + 48);
  *(v5 + 12) = v15;
  sub_22DDF0028(v1 + v15, v8, &qword_27DA39180, &qword_22DED0500);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
    v17 = v14 + *(v9 + 20);
    *v17 = 0;
    *(v17 + 4) = 1;
    if (v16(v8, 1, v9) != 1)
    {
      sub_22DDEF284(v8, &qword_27DA39180, &qword_22DED0500);
    }
  }

  else
  {
    sub_22DEBA0A8(v8, v14, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AppDefaults);
  }

  return sub_22DEBB4AC;
}

void sub_22DEBB4D4(uint64_t **a1, char a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  v8 = *a1;
  v9 = *(*a1 + 12);
  v10 = (*a1)[4];
  v11 = (*a1)[5];
  v12 = (*a1)[2];
  v13 = (*a1)[3];
  v14 = **a1;
  v15 = (*a1)[1];
  if (a2)
  {
    sub_22DEBA6D4(v11, v10, a5);
    sub_22DDEF284(v14 + v9, a3, a4);
    sub_22DEBA0A8(v10, v14 + v9, a5);
    (*(v13 + 56))(v14 + v9, 0, 1, v12);
    sub_22DEBA73C(v11, a5);
  }

  else
  {
    sub_22DDEF284(v14 + v9, a3, a4);
    sub_22DEBA0A8(v11, v14 + v9, a5);
    (*(v13 + 56))(v14 + v9, 0, 1, v12);
  }

  free(v11);
  free(v10);
  free(v15);

  free(v8);
}

BOOL Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse.hasAppDefaults.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA39180, &qword_22DED0500);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse(0);
  sub_22DDF0028(v0 + *(v4 + 48), v3, &qword_27DA39180, &qword_22DED0500);
  v5 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AppDefaults(0);
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5) != 1;
  sub_22DDEF284(v3, &qword_27DA39180, &qword_22DED0500);
  return v6;
}

Swift::Void __swiftcall Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse.clearAppDefaults()()
{
  v1 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse(0) + 48);
  sub_22DDEF284(v0 + v1, &qword_27DA39180, &qword_22DED0500);
  v2 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AppDefaults(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse.coverageCentralAmsURL.getter()
{
  v1 = (v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse(0) + 52));
  if (v1[1])
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_22DEBB7E0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse(0) + 52));
  v4 = v3[1];
  if (v4)
  {
    v5 = *v3;
    v6 = v4;
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  *a2 = v5;
  a2[1] = v6;
}

uint64_t sub_22DEBB844(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (a2 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse(0) + 52));

  *v4 = v3;
  v4[1] = v2;
  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse.coverageCentralAmsURL.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse(0) + 52));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse.coverageCentralAmsURL.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse(0) + 52);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_22DE2D1BC;
}

Swift::Void __swiftcall Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse.clearCoverageCentralAmsURL()()
{
  v1 = (v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse(0) + 52));

  *v1 = 0;
  v1[1] = 0;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse.coverageDetailsAmsURL.getter()
{
  v1 = (v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse(0) + 56));
  if (v1[1])
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_22DEBBA1C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse(0) + 56));
  v4 = v3[1];
  if (v4)
  {
    v5 = *v3;
    v6 = v4;
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  *a2 = v5;
  a2[1] = v6;
}

uint64_t sub_22DEBBA80(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (a2 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse(0) + 56));

  *v4 = v3;
  v4[1] = v2;
  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse.coverageDetailsAmsURL.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse(0) + 56));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse.coverageDetailsAmsURL.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse(0) + 56);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_22DE33C88;
}

Swift::Void __swiftcall Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse.clearCoverageDetailsAmsURL()()
{
  v1 = (v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse(0) + 56));

  *v1 = 0;
  v1[1] = 0;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse.universalLinkSheetAmsURL.getter()
{
  v1 = (v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse(0) + 60));
  if (v1[1])
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_22DEBBC58@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse(0) + 60));
  v4 = v3[1];
  if (v4)
  {
    v5 = *v3;
    v6 = v4;
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  *a2 = v5;
  a2[1] = v6;
}

uint64_t sub_22DEBBCBC(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (a2 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse(0) + 60));

  *v4 = v3;
  v4[1] = v2;
  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse.universalLinkSheetAmsURL.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse(0) + 60));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse.universalLinkSheetAmsURL.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse(0) + 60);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_22DE33C88;
}

Swift::Void __swiftcall Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse.clearUniversalLinkSheetAmsURL()()
{
  v1 = (v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse(0) + 60));

  *v1 = 0;
  v1[1] = 0;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse(0) + 32);
  v4 = sub_22DEC48B4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse(0) + 32);
  v4 = sub_22DEC48B4();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse.init()@<X0>(char *a1@<X8>)
{
  v2 = MEMORY[0x277D84F90];
  *a1 = sub_22DE0501C(MEMORY[0x277D84F90]);
  *(a1 + 1) = sub_22DE0501C(v2);
  *(a1 + 2) = sub_22DE05DA0(v2);
  *(a1 + 3) = v2;
  v3 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse(0);
  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v4 = v3[9];
  v5 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta(0);
  (*(*(v5 - 8) + 56))(&a1[v4], 1, 1, v5);
  v6 = &a1[v3[10]];
  *v6 = 0;
  *(v6 + 1) = 0;
  v7 = &a1[v3[11]];
  *v7 = 0;
  v7[8] = 1;
  v8 = v3[12];
  v9 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AppDefaults(0);
  result = (*(*(v9 - 8) + 56))(&a1[v8], 1, 1, v9);
  v11 = &a1[v3[13]];
  *v11 = 0;
  *(v11 + 1) = 0;
  v12 = &a1[v3[14]];
  *v12 = 0;
  *(v12 + 1) = 0;
  v13 = &a1[v3[15]];
  *v13 = 0;
  *(v13 + 1) = 0;
  return result;
}

uint64_t sub_22DEBC0B8()
{
  v0 = sub_22DEC4B14();
  __swift_allocate_value_buffer(v0, qword_27DA39120);
  __swift_project_value_buffer(v0, qword_27DA39120);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F60, &qword_22DEC8190);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F68, &qword_22DECB000) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_22DEC7C40;
  v4 = v16 + v3;
  v5 = v16 + v3 + v1[14];
  *(v16 + v3) = 1;
  *v5 = "PROD";
  *(v5 + 8) = 4;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_22DEC4AE4();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "PILOT";
  *(v9 + 8) = 5;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "UAT";
  *(v11 + 1) = 3;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "IT";
  *(v13 + 1) = 2;
  v13[16] = 2;
  v8();
  v14 = v4 + 4 * v2 + v1[14];
  *(v4 + 4 * v2) = 5;
  *v14 = "DEV";
  *(v14 + 8) = 3;
  *(v14 + 16) = 2;
  v8();
  return sub_22DEC4AF4();
}

uint64_t sub_22DEBC384()
{
  v0 = sub_22DEC4B14();
  __swift_allocate_value_buffer(v0, qword_27DA39138);
  __swift_project_value_buffer(v0, qword_27DA39138);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F60, &qword_22DEC8190);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F68, &qword_22DECB000) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22DEC81E0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "LOGGING";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22DEC4AE4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "CONFIG";
  *(v10 + 8) = 6;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "CHECK_IN";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "ACKNOWLEDGE";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "DEVICE_WARRANTY";
  *(v16 + 1) = 15;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "COVERAGE_CENTRAL";
  *(v18 + 1) = 16;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "DEVICE_MANAGEMENT";
  *(v20 + 1) = 17;
  v20[16] = 2;
  v9();
  return sub_22DEC4AF4();
}

uint64_t sub_22DEBC758()
{
  v0 = sub_22DEC4B14();
  __swift_allocate_value_buffer(v0, qword_28145C8C0);
  __swift_project_value_buffer(v0, qword_28145C8C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F60, &qword_22DEC8190);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F68, &qword_22DECB000) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_22DEC5F50;
  v4 = v3 + v2 + v1[14];
  *(v3 + v2) = 1;
  *v4 = "http_500_retry_delay";
  *(v4 + 8) = 20;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21888];
  v6 = sub_22DEC4AE4();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  return sub_22DEC4AF4();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_AppDefaults.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_22DEC4954();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AppDefaults(0);
      sub_22DEC4994();
    }
  }

  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_AppDefaults.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_22DEBC9CC(v3, a1, a2, a3);
  if (!v4)
  {
    return sub_22DEC4894();
  }

  return result;
}

uint64_t sub_22DEBC9CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AppDefaults(0);
  if ((*(a1 + *(result + 20) + 4) & 1) == 0)
  {
    return sub_22DEC4A84();
  }

  return result;
}

uint64_t sub_22DEBCA90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v5 = a2 + *(a1 + 20);
  *v5 = 0;
  *(v5 + 4) = 1;
  return result;
}

uint64_t sub_22DEBCB18(uint64_t a1, uint64_t a2)
{
  v4 = sub_22DEBF8C8(&qword_27DA39268, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AppDefaults, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_AppDefaults);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22DEBCBB8(uint64_t a1)
{
  v2 = sub_22DEBF8C8(&qword_28145C8B0, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AppDefaults, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_AppDefaults);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22DEBCC24(uint64_t a1, uint64_t a2)
{
  sub_22DEBF8C8(&qword_28145C8B0, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AppDefaults, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_AppDefaults);

  return sub_22DEC4A44();
}

uint64_t sub_22DEBCCE0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_22DEC4B14();
  __swift_allocate_value_buffer(v8, a2);
  __swift_project_value_buffer(v8, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F60, &qword_22DEC8190);
  v9 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F68, &qword_22DECB000) - 8);
  v10 = *(*v9 + 72);
  v11 = (*(*v9 + 80) + 32) & ~*(*v9 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_22DEC81D0;
  v13 = (v12 + v11);
  v14 = v12 + v11 + v9[14];
  *v13 = 1;
  *v14 = a3;
  *(v14 + 8) = a4;
  *(v14 + 16) = 2;
  v15 = *MEMORY[0x277D21870];
  v16 = sub_22DEC4AE4();
  v17 = *(*(v16 - 8) + 104);
  (v17)(v14, v15, v16);
  v18 = v13 + v10 + v9[14];
  *(v13 + v10) = 2;
  *v18 = a5;
  *(v18 + 1) = 3;
  v18[16] = 2;
  v17();
  return sub_22DEC4AF4();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_ConfigRequest.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_22DEC4954();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_22DEBCF58(a1, v5, a2, a3);
    }

    else if (result == 2)
    {
      sub_22DEBD00C(a1, v5, a2, a3);
    }
  }

  return result;
}

uint64_t sub_22DEBCF58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigRequest(0);
  type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta(0);
  sub_22DEBF8C8(&qword_28145C748, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta);
  return sub_22DEC49E4();
}

uint64_t sub_22DEBD00C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigRequest(0);
  sub_22DEC0570();
  return sub_22DEC4984();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_ConfigRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_22DEBD0F0(v3, a1, a2, a3);
  if (!v4)
  {
    sub_22DEBD300(v3, a1, a2, a3);
    return sub_22DEC4894();
  }

  return result;
}

uint64_t sub_22DEBD0F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37A38, &unk_22DEC6570);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigRequest(0);
  sub_22DDF0028(a1 + *(v12 + 20), v7, &qword_27DA37A38, &unk_22DEC6570);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_22DDEF284(v7, &qword_27DA37A38, &unk_22DEC6570);
  }

  sub_22DEBA0A8(v7, v11, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta);
  sub_22DEBF8C8(&qword_28145C748, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta);
  sub_22DEC4AD4();
  return sub_22DEBA73C(v11, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta);
}

uint64_t sub_22DEBD300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigRequest(0);
  if (*(a1 + *(result + 24)) != 5)
  {
    sub_22DEC0570();
    return sub_22DEC4A74();
  }

  return result;
}

uint64_t sub_22DEBD3D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v4 = *(a1 + 20);
  v5 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta(0);
  result = (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  *(a2 + *(a1 + 24)) = 5;
  return result;
}

uint64_t sub_22DEBD4A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22DEBF8C8(&qword_27DA39260, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigRequest, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22DEBD544(uint64_t a1)
{
  v2 = sub_22DEBF8C8(&qword_27DA39228, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigRequest, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigRequest);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22DEBD5B0(uint64_t a1, uint64_t a2)
{
  sub_22DEBF8C8(&qword_27DA39228, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigRequest, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigRequest);

  return sub_22DEC4A44();
}

uint64_t sub_22DEBD64C()
{
  v0 = sub_22DEC4B14();
  __swift_allocate_value_buffer(v0, qword_28145C038);
  __swift_project_value_buffer(v0, qword_28145C038);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F60, &qword_22DEC8190);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F68, &qword_22DECB000) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_22DECE290;
  v4 = v28 + v3;
  v5 = v28 + v3 + v1[14];
  *(v28 + v3) = 1;
  *v5 = "meta";
  *(v5 + 8) = 4;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_22DEC4AE4();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "config_id";
  *(v9 + 8) = 9;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "valid_until";
  *(v11 + 1) = 11;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "api_urls";
  *(v13 + 1) = 8;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "web_urls";
  *(v15 + 1) = 8;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "feature_flags";
  *(v17 + 1) = 13;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "universal_link_sheet_codes";
  *(v19 + 1) = 26;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "app_defaults";
  *(v21 + 1) = 12;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "coverage_central_ams_url";
  *(v22 + 8) = 24;
  *(v22 + 16) = 2;
  v8();
  v23 = (v4 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "coverage_details_ams_url";
  *(v24 + 1) = 24;
  v24[16] = 2;
  v8();
  v25 = (v4 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "universal_link_sheet_ams_url";
  *(v26 + 1) = 28;
  v26[16] = 2;
  v8();
  return sub_22DEC4AF4();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_22DEC4954();
  if (!v4)
  {
    while (1)
    {
      if (v10)
      {
        return result;
      }

      if (result <= 5)
      {
        if (result <= 2)
        {
          if (result == 1)
          {
            sub_22DEBDCA4(a1, v5, a2, a3);
          }

          else if (result == 2)
          {
            goto LABEL_4;
          }
        }

        else if (result == 3)
        {
          type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse(0);
          sub_22DEC49A4();
        }

        else
        {
          sub_22DEC4884();
          sub_22DEC4944();
        }
      }

      else if (result > 8)
      {
        if (result == 9 || result == 10 || result == 11)
        {
LABEL_4:
          type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse(0);
          sub_22DEC49C4();
        }
      }

      else if (result == 6)
      {
        sub_22DEBDD58(a1, v5, a2, a3);
      }

      else if (result == 7)
      {
        sub_22DEC49B4();
      }

      else
      {
        sub_22DEBDDDC(a1, v5, a2, a3);
      }

      result = sub_22DEC4954();
    }
  }

  return result;
}

uint64_t sub_22DEBDCA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse(0);
  type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta(0);
  sub_22DEBF8C8(&qword_28145C498, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta);
  return sub_22DEC49E4();
}

uint64_t sub_22DEBDD58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_22DEC4884();
  sub_22DEC4864();
  return sub_22DEC4944();
}

uint64_t sub_22DEBDDDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse(0);
  type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AppDefaults(0);
  sub_22DEBF8C8(&qword_28145C8B0, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AppDefaults, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_AppDefaults);
  return sub_22DEC49E4();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_22DEBE0D0(v3, a1, a2, a3);
  if (!v4)
  {
    sub_22DEBE2E0(v3, a1, a2, a3);
    sub_22DEBE358(v3, a1, a2, a3);
    if (*(*v3 + 16))
    {
      sub_22DEC4884();
      sub_22DEC4A54();
    }

    if (*(v3[1] + 16))
    {
      sub_22DEC4884();
      sub_22DEC4A54();
    }

    if (*(v3[2] + 16))
    {
      sub_22DEC4884();
      sub_22DEC4864();
      sub_22DEC4A54();
    }

    if (*(v3[3] + 16))
    {
      sub_22DEC4AA4();
    }

    sub_22DEBE3D0(v3, a1, a2, a3);
    sub_22DEBE5E0(v3, a1, a2, a3);
    sub_22DEBE658(v3, a1, a2, a3);
    sub_22DEBE6D0(v3, a1, a2, a3);
    type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse(0);
    return sub_22DEC4894();
  }

  return result;
}

uint64_t sub_22DEBE0D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38088, &unk_22DEC8220);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse(0);
  sub_22DDF0028(a1 + *(v12 + 36), v7, &qword_27DA38088, &unk_22DEC8220);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_22DDEF284(v7, &qword_27DA38088, &unk_22DEC8220);
  }

  sub_22DEBA0A8(v7, v11, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta);
  sub_22DEBF8C8(&qword_28145C498, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta);
  sub_22DEC4AD4();
  return sub_22DEBA73C(v11, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta);
}

uint64_t sub_22DEBE2E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse(0);
  if (*(a1 + *(result + 40) + 8))
  {
    return sub_22DEC4AB4();
  }

  return result;
}

uint64_t sub_22DEBE358(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse(0);
  if ((*(a1 + *(result + 44) + 8) & 1) == 0)
  {
    return sub_22DEC4A94();
  }

  return result;
}

uint64_t sub_22DEBE3D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA39180, &qword_22DED0500);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AppDefaults(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse(0);
  sub_22DDF0028(a1 + *(v12 + 48), v7, &qword_27DA39180, &qword_22DED0500);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_22DDEF284(v7, &qword_27DA39180, &qword_22DED0500);
  }

  sub_22DEBA0A8(v7, v11, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AppDefaults);
  sub_22DEBF8C8(&qword_28145C8B0, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AppDefaults, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_AppDefaults);
  sub_22DEC4AD4();
  return sub_22DEBA73C(v11, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AppDefaults);
}

uint64_t sub_22DEBE5E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse(0);
  if (*(a1 + *(result + 52) + 8))
  {
    return sub_22DEC4AB4();
  }

  return result;
}

uint64_t sub_22DEBE658(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse(0);
  if (*(a1 + *(result + 56) + 8))
  {
    return sub_22DEC4AB4();
  }

  return result;
}

uint64_t sub_22DEBE6D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse(0);
  if (*(a1 + *(result + 60) + 8))
  {
    return sub_22DEC4AB4();
  }

  return result;
}

uint64_t sub_22DEBE794(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  sub_22DEC5184();
  a1(0);
  sub_22DEBF8C8(a2, a3, a4);
  sub_22DEC4BE4();
  return sub_22DEC51A4();
}

uint64_t sub_22DEBE81C@<X0>(int *a1@<X0>, char *a2@<X8>)
{
  v4 = MEMORY[0x277D84F90];
  *a2 = sub_22DE0501C(MEMORY[0x277D84F90]);
  *(a2 + 1) = sub_22DE0501C(v4);
  *(a2 + 2) = sub_22DE05DA0(v4);
  *(a2 + 3) = v4;
  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v5 = a1[9];
  v6 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta(0);
  (*(*(v6 - 8) + 56))(&a2[v5], 1, 1, v6);
  v7 = a1[11];
  v8 = &a2[a1[10]];
  *v8 = 0;
  *(v8 + 1) = 0;
  v9 = &a2[v7];
  *v9 = 0;
  v9[8] = 1;
  v10 = a1[12];
  v11 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AppDefaults(0);
  result = (*(*(v11 - 8) + 56))(&a2[v10], 1, 1, v11);
  v13 = a1[14];
  v14 = &a2[a1[13]];
  *v14 = 0;
  *(v14 + 1) = 0;
  v15 = &a2[v13];
  *v15 = 0;
  *(v15 + 1) = 0;
  v16 = &a2[a1[15]];
  *v16 = 0;
  *(v16 + 1) = 0;
  return result;
}

uint64_t sub_22DEBE960@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = sub_22DEC48B4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_22DEBE9D4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = sub_22DEC48B4();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_22DEBEA9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22DEBF8C8(&qword_27DA39258, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22DEBEB3C(uint64_t a1)
{
  v2 = sub_22DEBF8C8(&qword_28145C028, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22DEBEBA8(uint64_t a1, uint64_t a2)
{
  sub_22DEBF8C8(&qword_28145C028, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse);

  return sub_22DEC4A44();
}

uint64_t _s6NDOAPI42Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponseV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v83 = a2;
  v3 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AppDefaults(0);
  v78 = *(v3 - 8);
  v79 = v3;
  MEMORY[0x28223BE20](v3);
  v75 = &v74 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA39180, &qword_22DED0500);
  MEMORY[0x28223BE20](v5 - 8);
  v76 = &v74 - v6;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA39288, "@{");
  MEMORY[0x28223BE20](v77);
  v80 = &v74 - v7;
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38088, &unk_22DEC8220);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v74 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38350, &unk_22DED04F0);
  v16 = v15 - 8;
  MEMORY[0x28223BE20](v15);
  v18 = &v74 - v17;
  v81 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse(0);
  v82 = a1;
  v19 = *(v81 + 36);
  v20 = *(v16 + 56);
  sub_22DDF0028(a1 + v19, v18, &qword_27DA38088, &unk_22DEC8220);
  v21 = v83;
  sub_22DDF0028(v83 + v19, &v18[v20], &qword_27DA38088, &unk_22DEC8220);
  v22 = *(v9 + 48);
  if (v22(v18, 1, v8) == 1)
  {
    if (v22(&v18[v20], 1, v8) == 1)
    {
      sub_22DDEF284(v18, &qword_27DA38088, &unk_22DEC8220);
      goto LABEL_11;
    }

LABEL_6:
    v23 = &qword_27DA38350;
    v24 = &unk_22DED04F0;
    v25 = v18;
LABEL_7:
    sub_22DDEF284(v25, v23, v24);
    goto LABEL_8;
  }

  sub_22DDF0028(v18, v14, &qword_27DA38088, &unk_22DEC8220);
  if (v22(&v18[v20], 1, v8) == 1)
  {
    sub_22DEBA73C(v14, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta);
    goto LABEL_6;
  }

  sub_22DEBA0A8(&v18[v20], v11, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta);
  v28 = static Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta.== infix(_:_:)(v14, v11);
  sub_22DEBA73C(v11, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta);
  sub_22DEBA73C(v14, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta);
  sub_22DDEF284(v18, &qword_27DA38088, &unk_22DEC8220);
  if ((v28 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_11:
  v30 = v81;
  v29 = v82;
  v31 = *(v81 + 40);
  v32 = (v82 + v31);
  v33 = *(v82 + v31 + 8);
  v34 = (v21 + v31);
  v35 = v34[1];
  if (v33)
  {
    if (!v35 || (*v32 != *v34 || v33 != v35) && (sub_22DEC50E4() & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else if (v35)
  {
    goto LABEL_8;
  }

  v36 = v30[11];
  v37 = (v29 + v36);
  v38 = *(v29 + v36 + 8);
  v39 = (v21 + v36);
  v40 = *(v21 + v36 + 8);
  if (v38)
  {
    if (!v40)
    {
      goto LABEL_8;
    }
  }

  else
  {
    if (*v37 != *v39)
    {
      LOBYTE(v40) = 1;
    }

    if (v40)
    {
      goto LABEL_8;
    }
  }

  if ((sub_22DEAFB4C(*v29, *v21) & 1) == 0 || (sub_22DEAFB4C(v29[1], v21[1]) & 1) == 0 || (sub_22DEAFCF0(v29[2], v21[2]) & 1) == 0 || (sub_22DE2F604(v29[3], v21[3]) & 1) == 0)
  {
    goto LABEL_8;
  }

  v41 = v30[12];
  v42 = *(v77 + 48);
  v43 = v80;
  sub_22DDF0028(v29 + v41, v80, &qword_27DA39180, &qword_22DED0500);
  v44 = v21 + v41;
  v45 = v21;
  v46 = v43;
  sub_22DDF0028(v44, v43 + v42, &qword_27DA39180, &qword_22DED0500);
  v47 = *(v78 + 48);
  v48 = v43;
  v49 = v79;
  if (v47(v48, 1, v79) != 1)
  {
    v55 = v76;
    sub_22DDF0028(v46, v76, &qword_27DA39180, &qword_22DED0500);
    if (v47(v46 + v42, 1, v49) == 1)
    {
      sub_22DEBA73C(v55, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AppDefaults);
      goto LABEL_39;
    }

    v56 = v49;
    v57 = v75;
    sub_22DEBA0A8(v46 + v42, v75, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AppDefaults);
    v58 = *(v56 + 20);
    v59 = (v55 + v58);
    v60 = *(v55 + v58 + 4);
    v61 = (v57 + v58);
    v62 = *(v57 + v58 + 4);
    if (v60)
    {
      if (!v62)
      {
LABEL_43:
        sub_22DEBA73C(v57, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AppDefaults);
        sub_22DEBA73C(v55, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AppDefaults);
        v23 = &qword_27DA39180;
        v24 = &qword_22DED0500;
        goto LABEL_40;
      }
    }

    else
    {
      if (*v59 != *v61)
      {
        LOBYTE(v62) = 1;
      }

      if (v62)
      {
        goto LABEL_43;
      }
    }

    sub_22DEC48B4();
    sub_22DEBF8C8(&qword_27DA37B30, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v63 = sub_22DEC4BF4();
    sub_22DEBA73C(v57, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AppDefaults);
    sub_22DEBA73C(v55, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AppDefaults);
    sub_22DDEF284(v46, &qword_27DA39180, &qword_22DED0500);
    if ((v63 & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_31;
  }

  if (v47(v46 + v42, 1, v49) != 1)
  {
LABEL_39:
    v23 = &qword_27DA39288;
    v24 = "@{";
LABEL_40:
    v25 = v46;
    goto LABEL_7;
  }

  sub_22DDEF284(v46, &qword_27DA39180, &qword_22DED0500);
LABEL_31:
  v50 = v30[13];
  v51 = (v29 + v50);
  v52 = *(v29 + v50 + 8);
  v53 = (v45 + v50);
  v54 = v53[1];
  if (v52)
  {
    if (!v54 || (*v51 != *v53 || v52 != v54) && (sub_22DEC50E4() & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else if (v54)
  {
    goto LABEL_8;
  }

  v64 = v30[14];
  v65 = (v29 + v64);
  v66 = *(v29 + v64 + 8);
  v67 = (v45 + v64);
  v68 = v67[1];
  if (v66)
  {
    if (!v68 || (*v65 != *v67 || v66 != v68) && (sub_22DEC50E4() & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else if (v68)
  {
    goto LABEL_8;
  }

  v69 = v30[15];
  v70 = (v29 + v69);
  v71 = *(v29 + v69 + 8);
  v72 = (v45 + v69);
  v73 = v72[1];
  if (v71)
  {
    if (v73 && (*v70 == *v72 && v71 == v73 || (sub_22DEC50E4() & 1) != 0))
    {
      goto LABEL_64;
    }
  }

  else if (!v73)
  {
LABEL_64:
    sub_22DEC48B4();
    sub_22DEBF8C8(&qword_27DA37B30, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v26 = sub_22DEC4BF4();
    return v26 & 1;
  }

LABEL_8:
  v26 = 0;
  return v26 & 1;
}

uint64_t _s6NDOAPI41Com_Apple_Sse_Ocean_Ndo_Api_ConfigRequestV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v25 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37A38, &unk_22DEC6570);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38368, &qword_22DECA2B0);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v24 - v12;
  v26 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigRequest(0);
  v27 = a1;
  v14 = *(v26 + 20);
  v15 = *(v11 + 56);
  sub_22DDF0028(a1 + v14, v13, &qword_27DA37A38, &unk_22DEC6570);
  sub_22DDF0028(a2 + v14, &v13[v15], &qword_27DA37A38, &unk_22DEC6570);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_22DDF0028(v13, v9, &qword_27DA37A38, &unk_22DEC6570);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      v19 = v25;
      sub_22DEBA0A8(&v13[v15], v25, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta);
      v20 = static Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta.== infix(_:_:)(v9, v19);
      sub_22DEBA73C(v19, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta);
      sub_22DEBA73C(v9, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta);
      sub_22DDEF284(v13, &qword_27DA37A38, &unk_22DEC6570);
      if ((v20 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_10;
    }

    sub_22DEBA73C(v9, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta);
LABEL_6:
    sub_22DDEF284(v13, &qword_27DA38368, &qword_22DECA2B0);
    goto LABEL_7;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_22DDEF284(v13, &qword_27DA37A38, &unk_22DEC6570);
LABEL_10:
  v21 = *(v26 + 24);
  v22 = *(v27 + v21);
  v23 = *(a2 + v21);
  if (v22 == 5)
  {
    if (v23 == 5)
    {
      goto LABEL_14;
    }
  }

  else if (v22 == v23)
  {
LABEL_14:
    sub_22DEC48B4();
    sub_22DEBF8C8(&qword_27DA37B30, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v17 = sub_22DEC4BF4();
    return v17 & 1;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t _s6NDOAPI39Com_Apple_Sse_Ocean_Ndo_Api_AppDefaultsV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AppDefaults(0) + 20);
  v5 = (a1 + v4);
  v6 = *(a1 + v4 + 4);
  v7 = (a2 + v4);
  v8 = *(a2 + v4 + 4);
  if (v6)
  {
    if (!v8)
    {
      return 0;
    }
  }

  else
  {
    if (*v5 != *v7)
    {
      LOBYTE(v8) = 1;
    }

    if (v8)
    {
      return 0;
    }
  }

  sub_22DEC48B4();
  sub_22DEBF8C8(&qword_27DA37B30, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_22DEC4BF4() & 1;
}

uint64_t sub_22DEBF8C8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_22DEBF914()
{
  result = qword_27DA391A0;
  if (!qword_27DA391A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA391A0);
  }

  return result;
}

unint64_t sub_22DEBF96C()
{
  result = qword_27DA391A8;
  if (!qword_27DA391A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA391A8);
  }

  return result;
}

unint64_t sub_22DEBF9C4()
{
  result = qword_27DA391B0;
  if (!qword_27DA391B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA391B0);
  }

  return result;
}

unint64_t sub_22DEBFA4C()
{
  result = qword_27DA391C8;
  if (!qword_27DA391C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA391C8);
  }

  return result;
}

unint64_t sub_22DEBFAA4()
{
  result = qword_27DA391D0;
  if (!qword_27DA391D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA391D0);
  }

  return result;
}

unint64_t sub_22DEBFAFC()
{
  result = qword_27DA391D8;
  if (!qword_27DA391D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA391D8);
  }

  return result;
}

unint64_t sub_22DEBFB84()
{
  result = qword_27DA391F0;
  if (!qword_27DA391F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA391F0);
  }

  return result;
}

unint64_t sub_22DEBFBDC()
{
  result = qword_27DA391F8;
  if (!qword_27DA391F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA391F8);
  }

  return result;
}

unint64_t sub_22DEBFC34()
{
  result = qword_27DA39200;
  if (!qword_27DA39200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA39200);
  }

  return result;
}

void sub_22DEC0070(uint64_t a1)
{
  sub_22DEC48B4();
  if (v1 <= 0x3F)
  {
    sub_22DEC0478(319, &qword_28145AD08, MEMORY[0x277D849A8], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_22DEC0140(uint64_t a1)
{
  sub_22DEC48B4();
  if (v1 <= 0x3F)
  {
    sub_22DEC0424(319, qword_28145C6F8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta);
    if (v2 <= 0x3F)
    {
      sub_22DEC0478(319, &qword_27DA39250, &type metadata for Com_Apple_Sse_Ocean_Ndo_Api_Environment, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_22DEC0244(uint64_t a1)
{
  sub_22DE5A8CC(319, &qword_28145ADA0, MEMORY[0x277D837D0]);
  if (v1 <= 0x3F)
  {
    sub_22DE5A8CC(319, &qword_28145AD90, MEMORY[0x277D839B0]);
    if (v2 <= 0x3F)
    {
      sub_22DEC0478(319, &qword_28145AD38, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
      if (v3 <= 0x3F)
      {
        sub_22DEC48B4();
        if (v4 <= 0x3F)
        {
          sub_22DEC0424(319, qword_28145C448, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ResponseMeta);
          if (v5 <= 0x3F)
          {
            sub_22DEC0478(319, &qword_28145AD88, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
            if (v6 <= 0x3F)
            {
              sub_22DEC0478(319, &qword_28145AD00, MEMORY[0x277D84A28], MEMORY[0x277D83D88]);
              if (v7 <= 0x3F)
              {
                sub_22DEC0424(319, qword_28145C868, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AppDefaults);
                if (v8 <= 0x3F)
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
}

void sub_22DEC0424(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22DEC4EB4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_22DEC0478(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_22DEC04C8()
{
  result = qword_27DA39270;
  if (!qword_27DA39270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA39270);
  }

  return result;
}

unint64_t sub_22DEC051C()
{
  result = qword_27DA39278;
  if (!qword_27DA39278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA39278);
  }

  return result;
}

unint64_t sub_22DEC0570()
{
  result = qword_27DA39280;
  if (!qword_27DA39280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA39280);
  }

  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_AckData.clientErrorCode.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckData(0) + 28));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_AckData.clientErrorReason.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckData(0) + 32));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_AckRequest.init()@<X0>(char *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  v2 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckRequest(0);
  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v3 = *(v2 + 24);
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(&a1[v3], 1, 1, v4);
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_AckRequest.meta.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckRequest(0) + 24);
  sub_22DDEF284(v1 + v3, &qword_27DA37A38, &unk_22DEC6570);
  sub_22DEC07DC(a1, v1 + v3);
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t sub_22DEC07DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_AckRequest.meta.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37A38, &unk_22DEC6570);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v14 - v4;
  v6 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckRequest(0);
  sub_22DEC09D4(v1 + *(v6 + 24), v5);
  v7 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta(0);
  v8 = *(*(v7 - 1) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_22DEC07DC(v5, a1);
  }

  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v9 = (a1 + v7[5]);
  *v9 = 0;
  v9[1] = 0;
  v10 = a1 + v7[6];
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = v7[7];
  v12 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Locale(0);
  (*(*(v12 - 8) + 56))(a1 + v11, 1, 1, v12);
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_22DDEF284(v5, &qword_27DA37A38, &unk_22DEC6570);
  }

  return result;
}

uint64_t sub_22DEC09D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37A38, &unk_22DEC6570);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22DEC0A44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37A38, &unk_22DEC6570);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - v5;
  v7 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckRequest(0);
  sub_22DEC09D4(a1 + *(v7 + 24), v6);
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_22DEC07DC(v6, a2);
  }

  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v10 = (a2 + v8[5]);
  *v10 = 0;
  v10[1] = 0;
  v11 = a2 + v8[6];
  *v11 = 0;
  *(v11 + 8) = 1;
  v12 = v8[7];
  v13 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Locale(0);
  (*(*(v13 - 8) + 56))(a2 + v12, 1, 1, v13);
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_22DDEF284(v6, &qword_27DA37A38, &unk_22DEC6570);
  }

  return result;
}

uint64_t sub_22DEC0BDC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22DEC104C(a1, v7);
  v8 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckRequest(0) + 24);
  sub_22DDEF284(a2 + v8, &qword_27DA37A38, &unk_22DEC6570);
  sub_22DEC07DC(v7, a2 + v8);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

void (*Com_Apple_Sse_Ocean_Ndo_Api_AckRequest.meta.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37A38, &unk_22DEC6570) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta(0);
  v5[2] = v9;
  v10 = *(v9 - 1);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckRequest(0) + 24);
  *(v5 + 12) = v15;
  sub_22DEC09D4(v1 + v15, v8);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
    v17 = (v14 + v9[5]);
    *v17 = 0;
    v17[1] = 0;
    v18 = v14 + v9[6];
    *v18 = 0;
    *(v18 + 8) = 1;
    v19 = v9[7];
    v20 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Locale(0);
    (*(*(v20 - 8) + 56))(v14 + v19, 1, 1, v20);
    if (v16(v8, 1, v9) != 1)
    {
      sub_22DDEF284(v8, &qword_27DA37A38, &unk_22DEC6570);
    }
  }

  else
  {
    sub_22DEC07DC(v8, v14);
  }

  return sub_22DEC0F34;
}

void sub_22DEC0F34(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    sub_22DEC104C((*a1)[5], v4);
    sub_22DDEF284(v9 + v3, &qword_27DA37A38, &unk_22DEC6570);
    sub_22DEC07DC(v4, v9 + v3);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_22DEC10B0(v5);
  }

  else
  {
    sub_22DDEF284(v9 + v3, &qword_27DA37A38, &unk_22DEC6570);
    sub_22DEC07DC(v5, v9 + v3);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

uint64_t sub_22DEC104C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22DEC10B0(uint64_t a1)
{
  v2 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL Com_Apple_Sse_Ocean_Ndo_Api_AckRequest.hasMeta.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37A38, &unk_22DEC6570);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckRequest(0);
  sub_22DEC09D4(v0 + *(v4 + 24), v3);
  v5 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta(0);
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5) != 1;
  sub_22DDEF284(v3, &qword_27DA37A38, &unk_22DEC6570);
  return v6;
}

Swift::Void __swiftcall Com_Apple_Sse_Ocean_Ndo_Api_AckRequest.clearMeta()()
{
  v1 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckRequest(0) + 24);
  sub_22DDEF284(v0 + v1, &qword_27DA37A38, &unk_22DEC6570);
  v2 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_AckRequest.data.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_AckRequest.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckRequest(0) + 20);
  v4 = sub_22DEC48B4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_AckRequest.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckRequest(0) + 20);
  v4 = sub_22DEC48B4();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_AckData.actionType.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  *(a1 + 8) = *v1 & ~(*v1 >> 31);
  return sub_22DEC1490;
}

void Com_Apple_Sse_Ocean_Ndo_Api_AckData.userActionType.getter(_BYTE *a1@<X8>)
{
  v2 = *v1 & 0x7F;
  if (*v1 > -9)
  {
    v2 = 0;
  }

  *a1 = v2;
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_AckData.userActionType.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v2 = *v1;
  if (v2 <= -9)
  {
    v3 = v2 & 0x7F;
  }

  else
  {
    v3 = 0;
  }

  *(a1 + 8) = v3;
  return sub_22DEC1504;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_AckData.clientErrorCode.getter()
{
  v1 = (v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckData(0) + 28));
  if (v1[1])
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_22DEC156C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckData(0) + 28));
  v4 = v3[1];
  if (v4)
  {
    v5 = *v3;
    v6 = v4;
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  *a2 = v5;
  a2[1] = v6;
}

uint64_t sub_22DEC15D0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (a2 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckData(0) + 28));

  *v4 = v3;
  v4[1] = v2;
  return result;
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_AckData.clientErrorCode.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckData(0) + 28);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_22DE2D1BC;
}

Swift::Void __swiftcall Com_Apple_Sse_Ocean_Ndo_Api_AckData.clearClientErrorCode()()
{
  v1 = (v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckData(0) + 28));

  *v1 = 0;
  v1[1] = 0;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_AckData.clientErrorReason.getter()
{
  v1 = (v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckData(0) + 32));
  if (v1[1])
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_22DEC1790@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckData(0) + 32));
  v4 = v3[1];
  if (v4)
  {
    v5 = *v3;
    v6 = v4;
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  *a2 = v5;
  a2[1] = v6;
}

uint64_t sub_22DEC17F4(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (a2 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckData(0) + 32));

  *v4 = v3;
  v4[1] = v2;
  return result;
}

uint64_t (*Com_Apple_Sse_Ocean_Ndo_Api_AckData.clientErrorReason.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckData(0) + 32);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_22DE33C88;
}

Swift::Void __swiftcall Com_Apple_Sse_Ocean_Ndo_Api_AckData.clearClientErrorReason()()
{
  v1 = (v0 + *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckData(0) + 32));

  *v1 = 0;
  v1[1] = 0;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_AckData.acknowledgeData.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_AckData.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckData(0) + 24);
  v4 = sub_22DEC48B4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_AckData.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckData(0) + 24);
  v4 = sub_22DEC48B4();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

BOOL static Com_Apple_Sse_Ocean_Ndo_Api_AckData.OneOf_Action.== infix(_:_:)(_BYTE *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  if ((*a1 & 0x80000000) == 0)
  {
    return *a1 == v2;
  }

  if ((v2 & 0x80) != 0)
  {
    return qword_22DED1270[*a1 & 0x7F] == qword_22DED1270[v2 & 0x7F];
  }

  return 0;
}

BOOL sub_22DEC1B44(_BYTE *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  if ((*a1 & 0x80000000) == 0)
  {
    return *a1 == v2;
  }

  if ((v2 & 0x80) != 0)
  {
    return qword_22DED1270[*a1 & 0x7F] == qword_22DED1270[v2 & 0x7F];
  }

  return 0;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_AckData.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = -8;
  *(a1 + 8) = sub_22DE0501C(MEMORY[0x277D84F90]);
  v2 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckData(0);
  result = _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v4 = (a1 + *(v2 + 28));
  *v4 = 0;
  v4[1] = 0;
  v5 = (a1 + *(v2 + 32));
  *v5 = 0;
  v5[1] = 0;
  return result;
}

uint64_t sub_22DEC1C18()
{
  v0 = sub_22DEC4B14();
  __swift_allocate_value_buffer(v0, qword_27DA39290);
  __swift_project_value_buffer(v0, qword_27DA39290);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F60, &qword_22DEC8190);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F68, &qword_22DECB000) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22DEC81D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "meta";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22DEC4AE4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "data";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  return sub_22DEC4AF4();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_AckRequest.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_22DEC4954();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result == 1)
      {
        sub_22DEC1F04(a1, v5, a2, a3);
      }

      else if (result == 2)
      {
        type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckData(0);
        sub_22DEC3538(&qword_27DA37B08, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckData, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_AckData);
        sub_22DEC49D4();
      }

      result = sub_22DEC4954();
    }
  }

  return result;
}

uint64_t sub_22DEC1F04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckRequest(0);
  type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta(0);
  sub_22DEC3538(&qword_28145C748, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta);
  return sub_22DEC49E4();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_AckRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_22DEC20B4(v3, a1, a2, a3);
  if (!v4)
  {
    if (*(*v3 + 16))
    {
      type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckData(0);
      sub_22DEC3538(&qword_27DA37B08, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckData, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_AckData);
      sub_22DEC4AC4();
    }

    type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckRequest(0);
    return sub_22DEC4894();
  }

  return result;
}

uint64_t sub_22DEC20B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37A38, &unk_22DEC6570);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckRequest(0);
  sub_22DEC09D4(a1 + *(v12 + 24), v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_22DDEF284(v7, &qword_27DA37A38, &unk_22DEC6570);
  }

  sub_22DEC07DC(v7, v11);
  sub_22DEC3538(&qword_28145C748, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta);
  sub_22DEC4AD4();
  return sub_22DEC10B0(v11);
}

uint64_t sub_22DEC22E0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v4 = *(a1 + 24);
  v5 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(&a2[v4], 1, 1, v5);
}

uint64_t sub_22DEC23B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_22DEC3538(&unk_27DA39310, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckRequest, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_AckRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22DEC2458(uint64_t a1)
{
  v2 = sub_22DEC3538(&qword_27DA37B48, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckRequest, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_AckRequest);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22DEC24C4(uint64_t a1, uint64_t a2)
{
  sub_22DEC3538(&qword_27DA37B48, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckRequest, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_AckRequest);

  return sub_22DEC4A44();
}

uint64_t sub_22DEC2560()
{
  v0 = sub_22DEC4B14();
  __swift_allocate_value_buffer(v0, qword_27DA392A8);
  __swift_project_value_buffer(v0, qword_27DA392A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F60, &qword_22DEC8190);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37F68, &qword_22DECB000) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22DEC7C40;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "action_type";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_22DEC4AE4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "user_action_type";
  *(v10 + 8) = 16;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "client_error_code";
  *(v12 + 1) = 17;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "client_error_reason";
  *(v14 + 1) = 19;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v15 = "acknowledge_data";
  *(v15 + 8) = 16;
  *(v15 + 16) = 2;
  v9();
  return sub_22DEC4AF4();
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_AckData.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_22DEC4954();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result <= 2)
      {
        if (result == 1)
        {
          sub_22DEC2970(a1, v5, a2, a3);
        }

        else if (result == 2)
        {
          sub_22DEC2A0C(a1, v5, a2, a3);
        }
      }

      else if (result == 3 || result == 4)
      {
        type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckData(0);
        sub_22DEC49C4();
      }

      else if (result == 5)
      {
        sub_22DEC4884();
        sub_22DEC4944();
      }

      result = sub_22DEC4954();
    }
  }

  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_AckData.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  if (v8 <= 0xF7)
  {
    if ((v8 & 0x80) != 0)
    {
      result = sub_22DEC2C3C(v3, a1, a2, a3);
      if (v4)
      {
        return result;
      }
    }

    else
    {
      result = sub_22DEC2BC8(v3, a1, a2, a3);
      if (v4)
      {
        return result;
      }
    }
  }

  result = sub_22DEC2CB8(v3, a1, a2, a3);
  if (!v4)
  {
    sub_22DEC2D30(v3, a1, a2, a3);
    if (*(*(v3 + 1) + 16))
    {
      sub_22DEC4884();
      sub_22DEC4A54();
    }

    type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckData(0);
    return sub_22DEC4894();
  }

  return result;
}

char *sub_22DEC2BC8(char *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_22DE5BBFC();
    return sub_22DEC4A74();
  }

  return result;
}

char *sub_22DEC2C3C(char *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*result > -9)
  {
    __break(1u);
  }

  else
  {
    sub_22DE94534();
    return sub_22DEC4A74();
  }

  return result;
}

uint64_t sub_22DEC2CB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckData(0);
  if (*(a1 + *(result + 28) + 8))
  {
    return sub_22DEC4AB4();
  }

  return result;
}

uint64_t sub_22DEC2D30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckData(0);
  if (*(a1 + *(result + 32) + 8))
  {
    return sub_22DEC4AB4();
  }

  return result;
}

uint64_t sub_22DEC2DF4(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  sub_22DEC5184();
  a1(0);
  sub_22DEC3538(a2, a3, a4);
  sub_22DEC4BE4();
  return sub_22DEC51A4();
}

uint64_t sub_22DEC2E7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = -8;
  *(a2 + 8) = sub_22DE0501C(MEMORY[0x277D84F90]);
  result = _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v5 = *(a1 + 32);
  v6 = (a2 + *(a1 + 28));
  *v6 = 0;
  v6[1] = 0;
  v7 = (a2 + v5);
  *v7 = 0;
  v7[1] = 0;
  return result;
}

uint64_t sub_22DEC2F24(uint64_t a1, uint64_t a2)
{
  v4 = sub_22DEC3538(&qword_27DA39308, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckData, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_AckData);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22DEC2FC4(uint64_t a1)
{
  v2 = sub_22DEC3538(&qword_27DA37B08, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckData, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_AckData);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22DEC3030(uint64_t a1, uint64_t a2)
{
  sub_22DEC3538(&qword_27DA37B08, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckData, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_AckData);

  return sub_22DEC4A44();
}

uint64_t _s6NDOAPI38Com_Apple_Sse_Ocean_Ndo_Api_AckRequestV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37A38, &unk_22DEC6570);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA38368, &qword_22DECA2B0);
  v12 = v11 - 8;
  MEMORY[0x28223BE20](v11);
  v14 = &v21 - v13;
  v15 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckRequest(0) + 24);
  v16 = *(v12 + 56);
  sub_22DEC09D4(a1 + v15, v14);
  sub_22DEC09D4(a2 + v15, &v14[v16]);
  v17 = *(v5 + 48);
  if (v17(v14, 1, v4) == 1)
  {
    if (v17(&v14[v16], 1, v4) == 1)
    {
      sub_22DDEF284(v14, &qword_27DA37A38, &unk_22DEC6570);
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  sub_22DEC09D4(v14, v10);
  if (v17(&v14[v16], 1, v4) == 1)
  {
    sub_22DEC10B0(v10);
LABEL_6:
    sub_22DDEF284(v14, &qword_27DA38368, &qword_22DECA2B0);
LABEL_10:
    v19 = 0;
    return v19 & 1;
  }

  sub_22DEC07DC(&v14[v16], v7);
  v18 = static Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta.== infix(_:_:)(v10, v7);
  sub_22DEC10B0(v7);
  sub_22DEC10B0(v10);
  sub_22DDEF284(v14, &qword_27DA37A38, &unk_22DEC6570);
  if ((v18 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_8:
  if ((sub_22DE310D4(*a1, *a2) & 1) == 0)
  {
    goto LABEL_10;
  }

  sub_22DEC48B4();
  sub_22DEC3538(&qword_27DA37B30, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v19 = sub_22DEC4BF4();
  return v19 & 1;
}

uint64_t _s6NDOAPI35Com_Apple_Sse_Ocean_Ndo_Api_AckDataV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = *a1;
  v5 = *a2;
  if (v4 <= 0xF7)
  {
    if (v5 > 0xF7)
    {
      return 0;
    }

    if ((v4 & 0x80) != 0)
    {
      if ((v5 & 0x80) == 0 || qword_22DED1270[v4 & 0x7F] != qword_22DED1270[v5 & 0x7F])
      {
        return 0;
      }
    }

    else if (v4 != v5)
    {
      return 0;
    }
  }

  else if (v5 <= 0xF7)
  {
    return 0;
  }

  v6 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckData(0);
  v7 = *(v6 + 28);
  v8 = &a1[v7];
  v9 = *&a1[v7 + 8];
  v10 = &a2[v7];
  v11 = *(v10 + 1);
  if (v9)
  {
    if (!v11)
    {
      return 0;
    }

    v12 = *v8 == *v10 && v9 == v11;
    if (!v12 && (sub_22DEC50E4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v11)
  {
    return 0;
  }

  v13 = *(v6 + 32);
  v14 = &a1[v13];
  v15 = *&a1[v13 + 8];
  v16 = &a2[v13];
  v17 = *(v16 + 1);
  if (v15)
  {
    if (!v17)
    {
      return 0;
    }

    v18 = *v14 == *v16 && v15 == v17;
    if (!v18 && (sub_22DEC50E4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v17)
  {
    return 0;
  }

  if (sub_22DEAFB4C(*(a1 + 1), *(a2 + 1)))
  {
    sub_22DEC48B4();
    sub_22DEC3538(&qword_27DA37B30, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    return sub_22DEC4BF4() & 1;
  }

  return 0;
}

uint64_t sub_22DEC3538(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_22DEC37E8(uint64_t a1)
{
  sub_22DEC38E4(319, &qword_27DA39300, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckData, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_22DEC48B4();
    if (v2 <= 0x3F)
    {
      sub_22DEC38E4(319, qword_28145C6F8, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_22DEC38E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_22DEC3970(uint64_t a1)
{
  sub_22DE33AAC(319, qword_28145D4D8);
  if (v1 <= 0x3F)
  {
    sub_22DE624D8();
    if (v2 <= 0x3F)
    {
      sub_22DEC48B4();
      if (v3 <= 0x3F)
      {
        sub_22DE33AAC(319, &qword_28145AD88);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for Com_Apple_Sse_Ocean_Ndo_Api_AckData.OneOf_Action(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x1F)
  {
    goto LABEL_17;
  }

  if (a2 + 225 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 225) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 225;
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

      return (*a1 | (v4 << 8)) - 225;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 225;
    }
  }

LABEL_17:
  v6 = ((*a1 >> 2) & 0x1E | (*a1 >> 7)) ^ 0x1F;
  if (v6 >= 0x1E)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t storeEnumTagSinglePayload for Com_Apple_Sse_Ocean_Ndo_Api_AckData.OneOf_Action(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 225 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 225) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x1F)
  {
    v4 = 0;
  }

  if (a2 > 0x1E)
  {
    v5 = ((a2 - 31) >> 8) + 1;
    *result = a2 - 31;
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
    *result = 8 * (((-a2 >> 1) & 0xF) - 16 * a2);
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t NDOConditionalCheckInHandler.__allocating_init(isDisabled:handler:)(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  sub_22DDEDA18(a3, v6 + 32);
  return v6;
}

uint64_t NDOConditionalCheckInHandler.init(isDisabled:handler:)(uint64_t a1, uint64_t a2, __int128 *a3)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  sub_22DDEDA18(a3, v3 + 32);
  return v3;
}

uint64_t sub_22DEC3C64(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA37C00, &unk_22DEC7580);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v21[-v13 - 8];
  v15 = a1[1];
  v22 = *a1;
  v23 = v15;
  v24 = *(a1 + 4);
  v16 = sub_22DEC4DB4();
  (*(*(v16 - 8) + 56))(v14, 1, 1, v16);
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  *(v17 + 24) = 0;
  *(v17 + 32) = v6;
  *(v17 + 40) = a2;
  *(v17 + 48) = a3;
  *(v17 + 56) = a4;
  *(v17 + 64) = a5;
  v18 = v23;
  *(v17 + 72) = v22;
  *(v17 + 88) = v18;
  *(v17 + 104) = v24;

  sub_22DEC423C(&v22, v21);
  sub_22DE1D5F0(0, 0, v14, &unk_22DED12B0, v17);
}

uint64_t sub_22DEC3DE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a8;
  v8[7] = v10;
  v8[4] = a6;
  v8[5] = a7;
  v8[2] = a4;
  v8[3] = a5;
  return MEMORY[0x2822009F8](sub_22DEC3E10, 0, 0);
}

uint64_t sub_22DEC3E10()
{
  v5 = (*(v0[2] + 16) + **(v0[2] + 16));
  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = sub_22DEC3F04;
  v3 = v0[3];
  v2 = v0[4];

  return v5(v3, v2);
}

uint64_t sub_22DEC3F04(char a1)
{
  *(*v1 + 72) = a1;

  return MEMORY[0x2822009F8](sub_22DEC4004, 0, 0);
}

uint64_t sub_22DEC4004()
{
  v17 = v0;
  if (*(v0 + 72))
  {
    v1 = *(v0 + 40);
    type metadata accessor for NDOErrors(0);
    sub_22DDFE48C();
    v2 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    *&v15 = 0;
    v14 = v2;
    BYTE8(v15) = 1;
    v1(&v14);
    sub_22DE17504(v14, *(&v14 + 1), v15, SBYTE8(v15));
  }

  else
  {
    v3 = *(v0 + 48);
    v4 = *(v0 + 56);
    v6 = *(v0 + 32);
    v5 = *(v0 + 40);
    v7 = *(v0 + 16);
    v8 = *(v0 + 24);
    v9 = v7[7];
    v10 = v7[8];
    __swift_project_boxed_opaque_existential_1(v7 + 4, v9);
    v11 = v4[1];
    v14 = *v4;
    v15 = v11;
    v16 = *(v4 + 4);
    (*(v10 + 8))(&v14, v8, v6, v5, v3, v9, v10);
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_22DEC414C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_22DE0D6CC;

  return sub_22DEC3DE0(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_22DEC423C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37BB0, &qword_22DEC7340);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t NDOConditionalCheckInHandler.deinit()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  return v0;
}

uint64_t NDOConditionalCheckInHandler.__deallocating_deinit()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return MEMORY[0x2821FE8D8](v0, 72, 7);
}

uint64_t sub_22DEC4314(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA37C00, &unk_22DEC7580);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v21[-v12 - 8];
  v14 = *v5;
  v15 = a1[1];
  v22 = *a1;
  v23 = v15;
  v24 = *(a1 + 4);
  v16 = sub_22DEC4DB4();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  *(v17 + 24) = 0;
  *(v17 + 32) = v14;
  *(v17 + 40) = a2;
  *(v17 + 48) = a3;
  *(v17 + 56) = a4;
  *(v17 + 64) = a5;
  v18 = v23;
  *(v17 + 72) = v22;
  *(v17 + 88) = v18;
  *(v17 + 104) = v24;

  sub_22DEC423C(&v22, v21);
  sub_22DE1D5F0(0, 0, v13, &unk_22DED1320, v17);
}

uint64_t objectdestroyTm_1()
{
  swift_unknownObjectRelease();

  if (*(v0 + 72) != 1)
  {
  }

  return MEMORY[0x2821FE8E8](v0, 112, 7);
}

uint64_t sub_22DEC4574(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_22DE0858C;

  return sub_22DEC3DE0(a1, v4, v5, v6, v7, v8, v9, v10);
}