uint64_t sub_23C6A2750()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FC890);
  __swift_project_value_buffer(v0, qword_27E1FC890);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873CF0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "CapitalizationType_NONE";
  *(v6 + 8) = 23;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "CapitalizationType_WORDS";
  *(v10 + 8) = 24;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "CapitalizationType_SENTENCES";
  *(v12 + 1) = 28;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "CapitalizationType_ALL_CHARACTERS";
  *(v14 + 1) = 33;
  v14[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C6A2A10()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FC8A8);
  __swift_project_value_buffer(v0, qword_27E1FC8A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C875050;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "regularContentItemClass";
  *(v6 + 8) = 23;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "linkEntityContentItemClass";
  *(v10 + 1) = 26;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "linkEnumContentItemClass";
  *(v11 + 8) = 24;
  *(v11 + 16) = 2;
  v9();
  return sub_23C871324();
}

uint64_t ToolKitProtoContentItemClassDescriptor.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_23C871044();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          sub_23C6A3314(v5, a1, a2, a3);
          break;
        case 2:
          sub_23C6A2D58(v5, a1, a2, a3);
          break;
        case 1:
          sub_23C682F3C(a1, v5, a2, a3, &qword_27E1FD6C8, &unk_23C889CE0, type metadata accessor for ToolKitProtoContentItemClassDescriptorKind, 0);
          break;
      }

      result = sub_23C871044();
    }
  }

  return result;
}

uint64_t sub_23C6A2D58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEntityContentItemClass(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD6C8, &unk_23C889CE0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for ToolKitProtoContentItemClassDescriptorKind(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEDC0, &qword_23C8899F0);
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
  sub_23C5855B0(a1, v12, &qword_27E1FD6C8, &unk_23C889CE0);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E1FD6C8, &unk_23C889CE0);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C716FA0(v12, v19, type metadata accessor for ToolKitProtoContentItemClassDescriptorKind);
    sub_23C716FA0(v19, v17, type metadata accessor for ToolKitProtoContentItemClassDescriptorKind);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_23C585C34(v24, &qword_27E1FEDC0, &qword_23C8899F0);
      v31 = v40;
      sub_23C716FA0(v17, v40, type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEntityContentItemClass);
      sub_23C716FA0(v31, v24, type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEntityContentItemClass);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_23C717008(v17, type metadata accessor for ToolKitProtoContentItemClassDescriptorKind);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_23C716EF0(&qword_27E1FDF78, type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEntityContentItemClass, &protocol conformance descriptor for ToolKitProtoContentItemClassDescriptor.LinkEntityContentItemClass);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E1FEDC0, &qword_23C8899F0);
  }

  sub_23C5855B0(v24, v32, &qword_27E1FEDC0, &qword_23C8899F0);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E1FEDC0, &qword_23C8899F0);
    return sub_23C585C34(v32, &qword_27E1FEDC0, &qword_23C8899F0);
  }

  else
  {
    v35 = v39;
    sub_23C716FA0(v32, v39, type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEntityContentItemClass);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E1FEDC0, &qword_23C8899F0);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E1FD6C8, &unk_23C889CE0);
    sub_23C716FA0(v35, v36, type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEntityContentItemClass);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_23C6A3314(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEnumContentItemClass(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD6C8, &unk_23C889CE0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for ToolKitProtoContentItemClassDescriptorKind(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEDC8, &qword_23C8899F8);
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
  sub_23C5855B0(a1, v12, &qword_27E1FD6C8, &unk_23C889CE0);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E1FD6C8, &unk_23C889CE0);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C716FA0(v12, v19, type metadata accessor for ToolKitProtoContentItemClassDescriptorKind);
    sub_23C716FA0(v19, v17, type metadata accessor for ToolKitProtoContentItemClassDescriptorKind);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_23C585C34(v24, &qword_27E1FEDC8, &qword_23C8899F8);
      v31 = v40;
      sub_23C716FA0(v17, v40, type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEnumContentItemClass);
      sub_23C716FA0(v31, v24, type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEnumContentItemClass);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_23C717008(v17, type metadata accessor for ToolKitProtoContentItemClassDescriptorKind);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_23C716EF0(&qword_27E1FDF90, type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEnumContentItemClass, &protocol conformance descriptor for ToolKitProtoContentItemClassDescriptor.LinkEnumContentItemClass);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E1FEDC8, &qword_23C8899F8);
  }

  sub_23C5855B0(v24, v32, &qword_27E1FEDC8, &qword_23C8899F8);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E1FEDC8, &qword_23C8899F8);
    return sub_23C585C34(v32, &qword_27E1FEDC8, &qword_23C8899F8);
  }

  else
  {
    v35 = v39;
    sub_23C716FA0(v32, v39, type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEnumContentItemClass);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E1FEDC8, &qword_23C8899F8);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E1FD6C8, &unk_23C889CE0);
    sub_23C716FA0(v35, v36, type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEnumContentItemClass);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t ToolKitProtoContentItemClassDescriptor.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD6C8, &unk_23C889CE0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v14 - v9;
  sub_23C5855B0(v3, &v14 - v9, &qword_27E1FD6C8, &unk_23C889CE0);
  v11 = type metadata accessor for ToolKitProtoContentItemClassDescriptorKind(0);
  if ((*(*(v11 - 8) + 48))(v10, 1, v11) == 1)
  {
    goto LABEL_9;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_23C717008(v10, type metadata accessor for ToolKitProtoContentItemClassDescriptorKind);
    result = sub_23C6A3AA0(v3, a1, a2, a3);
    if (v4)
    {
      return result;
    }

    goto LABEL_9;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_23C6A3C14(v3, a1, a2, a3);
  }

  else
  {
    sub_23C6A3E4C(v3, a1, a2, a3);
  }

  result = sub_23C717008(v10, type metadata accessor for ToolKitProtoContentItemClassDescriptorKind);
  if (!v4)
  {
LABEL_9:
    type metadata accessor for ToolKitProtoContentItemClassDescriptor(0);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C6A3AA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD6C8, &unk_23C889CE0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v10 - v6;
  sub_23C5855B0(a1, &v10 - v6, &qword_27E1FD6C8, &unk_23C889CE0);
  v8 = type metadata accessor for ToolKitProtoContentItemClassDescriptorKind(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_23C585C34(v7, &qword_27E1FD6C8, &unk_23C889CE0);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_23C8712C4();
  }

  result = sub_23C717008(v7, type metadata accessor for ToolKitProtoContentItemClassDescriptorKind);
  __break(1u);
  return result;
}

uint64_t sub_23C6A3C14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD6C8, &unk_23C889CE0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEntityContentItemClass(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E1FD6C8, &unk_23C889CE0);
  v11 = type metadata accessor for ToolKitProtoContentItemClassDescriptorKind(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E1FD6C8, &unk_23C889CE0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_23C716FA0(v7, v10, type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEntityContentItemClass);
    sub_23C716EF0(&qword_27E1FDF78, type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEntityContentItemClass, &protocol conformance descriptor for ToolKitProtoContentItemClassDescriptor.LinkEntityContentItemClass);
    sub_23C871304();
    return sub_23C717008(v10, type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEntityContentItemClass);
  }

  result = sub_23C717008(v7, type metadata accessor for ToolKitProtoContentItemClassDescriptorKind);
  __break(1u);
  return result;
}

uint64_t sub_23C6A3E4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD6C8, &unk_23C889CE0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEnumContentItemClass(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E1FD6C8, &unk_23C889CE0);
  v11 = type metadata accessor for ToolKitProtoContentItemClassDescriptorKind(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E1FD6C8, &unk_23C889CE0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_23C716FA0(v7, v10, type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEnumContentItemClass);
    sub_23C716EF0(&qword_27E1FDF90, type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEnumContentItemClass, &protocol conformance descriptor for ToolKitProtoContentItemClassDescriptor.LinkEnumContentItemClass);
    sub_23C871304();
    return sub_23C717008(v10, type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEnumContentItemClass);
  }

  result = sub_23C717008(v7, type metadata accessor for ToolKitProtoContentItemClassDescriptorKind);
  __break(1u);
  return result;
}

uint64_t sub_23C6A4134(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FE9A8, type metadata accessor for ToolKitProtoContentItemClassDescriptor, &protocol conformance descriptor for ToolKitProtoContentItemClassDescriptor);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C6A41D4(uint64_t a1)
{
  sub_23C716EF0(&qword_27E1FDF60, type metadata accessor for ToolKitProtoContentItemClassDescriptor, &protocol conformance descriptor for ToolKitProtoContentItemClassDescriptor);

  return sub_23C8711F4();
}

uint64_t sub_23C6A4240(uint64_t a1, uint64_t a2)
{
  sub_23C716EF0(&qword_27E1FDF60, type metadata accessor for ToolKitProtoContentItemClassDescriptor, &protocol conformance descriptor for ToolKitProtoContentItemClassDescriptor);

  return sub_23C871204();
}

uint64_t sub_23C6A42C0()
{
  result = MEMORY[0x23EED7100](0xD00000000000001BLL, 0x800000023C8AE510);
  qword_27E1FC8C0 = 0xD000000000000022;
  *algn_27E1FC8C8 = 0x800000023C8AD050;
  return result;
}

uint64_t sub_23C6A435C()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FC8D0);
  __swift_project_value_buffer(v0, qword_27E1FC8D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 2;
  *v6 = "bundleIdentifier";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 3;
  *v10 = "identifier";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C6A4660(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FE9A0, type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEntityContentItemClass, &protocol conformance descriptor for ToolKitProtoContentItemClassDescriptor.LinkEntityContentItemClass);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C6A4700(uint64_t a1)
{
  sub_23C716EF0(&qword_27E1FDF78, type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEntityContentItemClass, &protocol conformance descriptor for ToolKitProtoContentItemClassDescriptor.LinkEntityContentItemClass);

  return sub_23C8711F4();
}

uint64_t sub_23C6A476C(uint64_t a1, uint64_t a2)
{
  sub_23C716EF0(&qword_27E1FDF78, type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEntityContentItemClass, &protocol conformance descriptor for ToolKitProtoContentItemClassDescriptor.LinkEntityContentItemClass);

  return sub_23C871204();
}

uint64_t sub_23C6A4818()
{
  result = MEMORY[0x23EED7100](0xD000000000000019, 0x800000023C8AE4F0);
  qword_27E1FC8E8 = 0xD000000000000022;
  unk_27E1FC8F0 = 0x800000023C8AD050;
  return result;
}

uint64_t sub_23C6A48B4()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FC8F8);
  __swift_project_value_buffer(v0, qword_27E1FC8F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 2;
  *v6 = "bundleIdentifier";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 3;
  *v10 = "identifier";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C6A4AB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_23C871044();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 2 || result == 3)
    {
      sub_23C871164();
    }
  }

  return result;
}

uint64_t sub_23C6A4C08(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FE998, type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEnumContentItemClass, &protocol conformance descriptor for ToolKitProtoContentItemClassDescriptor.LinkEnumContentItemClass);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C6A4CA8(uint64_t a1)
{
  sub_23C716EF0(&qword_27E1FDF90, type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEnumContentItemClass, &protocol conformance descriptor for ToolKitProtoContentItemClassDescriptor.LinkEnumContentItemClass);

  return sub_23C8711F4();
}

uint64_t sub_23C6A4D14(uint64_t a1, uint64_t a2)
{
  sub_23C716EF0(&qword_27E1FDF90, type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEnumContentItemClass, &protocol conformance descriptor for ToolKitProtoContentItemClassDescriptor.LinkEnumContentItemClass);

  return sub_23C871204();
}

uint64_t sub_23C6A4DAC()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FC910);
  __swift_project_value_buffer(v0, qword_27E1FC910);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873CF0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "property";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "comparison";
  *(v10 + 8) = 10;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "rawGroupId";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "contentItemClass";
  *(v14 + 1) = 16;
  v14[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C6A5088(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoComparisonPredicate(0);
  type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property(0);
  sub_23C716EF0(&qword_27E1FD4F0, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property, &protocol conformance descriptor for ToolKitProtoTypeDefinition.Version1.Entity.Property);
  return sub_23C8711A4();
}

uint64_t sub_23C6A513C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoComparisonPredicate(0);
  type metadata accessor for ToolKitProtoComparisonPredicate.Comparison(0);
  sub_23C716EF0(&qword_27E1FDFB8, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison, &protocol conformance descriptor for ToolKitProtoComparisonPredicate.Comparison);
  return sub_23C8711A4();
}

uint64_t sub_23C6A51F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoComparisonPredicate(0);
  type metadata accessor for ToolKitProtoContentItemClassDescriptor(0);
  sub_23C716EF0(&qword_27E1FDF60, type metadata accessor for ToolKitProtoContentItemClassDescriptor, &protocol conformance descriptor for ToolKitProtoContentItemClassDescriptor);
  return sub_23C8711A4();
}

uint64_t sub_23C6A530C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FED80, &qword_23C8899B8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ToolKitProtoComparisonPredicate(0);
  sub_23C5855B0(a1 + *(v12 + 20), v7, &qword_27E1FED80, &qword_23C8899B8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_23C585C34(v7, &qword_27E1FED80, &qword_23C8899B8);
  }

  sub_23C716FA0(v7, v11, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property);
  sub_23C716EF0(&qword_27E1FD4F0, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property, &protocol conformance descriptor for ToolKitProtoTypeDefinition.Version1.Entity.Property);
  sub_23C871304();
  return sub_23C717008(v11, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property);
}

uint64_t sub_23C6A5528(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEDA8, &unk_23C889CF0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ToolKitProtoComparisonPredicate(0);
  sub_23C5855B0(a1 + *(v12 + 24), v7, &qword_27E1FEDA8, &unk_23C889CF0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_23C585C34(v7, &qword_27E1FEDA8, &unk_23C889CF0);
  }

  sub_23C716FA0(v7, v11, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison);
  sub_23C716EF0(&qword_27E1FDFB8, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison, &protocol conformance descriptor for ToolKitProtoComparisonPredicate.Comparison);
  sub_23C871304();
  return sub_23C717008(v11, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison);
}

uint64_t sub_23C6A5744(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FED60, &qword_23C889998);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoContentItemClassDescriptor(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ToolKitProtoComparisonPredicate(0);
  sub_23C5855B0(a1 + *(v12 + 28), v7, &qword_27E1FED60, &qword_23C889998);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_23C585C34(v7, &qword_27E1FED60, &qword_23C889998);
  }

  sub_23C716FA0(v7, v11, type metadata accessor for ToolKitProtoContentItemClassDescriptor);
  sub_23C716EF0(&qword_27E1FDF60, type metadata accessor for ToolKitProtoContentItemClassDescriptor, &protocol conformance descriptor for ToolKitProtoContentItemClassDescriptor);
  sub_23C871304();
  return sub_23C717008(v11, type metadata accessor for ToolKitProtoContentItemClassDescriptor);
}

uint64_t sub_23C6A5A10(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FE990, type metadata accessor for ToolKitProtoComparisonPredicate, &protocol conformance descriptor for ToolKitProtoComparisonPredicate);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C6A5AB0(uint64_t a1)
{
  sub_23C716EF0(&qword_27E1FD728, type metadata accessor for ToolKitProtoComparisonPredicate, &protocol conformance descriptor for ToolKitProtoComparisonPredicate);

  return sub_23C8711F4();
}

uint64_t sub_23C6A5B1C(uint64_t a1, uint64_t a2)
{
  sub_23C716EF0(&qword_27E1FD728, type metadata accessor for ToolKitProtoComparisonPredicate, &protocol conformance descriptor for ToolKitProtoComparisonPredicate);

  return sub_23C871204();
}

uint64_t sub_23C6A5BF0()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FC938);
  __swift_project_value_buffer(v0, qword_27E1FC938);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_23C87D6E0;
  v4 = v38 + v3;
  v5 = v38 + v3 + v1[14];
  *(v38 + v3) = 1;
  *v5 = "notEqualTo";
  *(v5 + 8) = 10;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_23C871314();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "equalTo";
  *(v9 + 8) = 7;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "hasValue";
  *(v11 + 1) = 8;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "hasNoValue";
  *(v13 + 1) = 10;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "greaterThan";
  *(v15 + 1) = 11;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "greaterThanOrEqualTo";
  *(v17 + 1) = 20;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "lessThan";
  *(v19 + 1) = 8;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "lessThanOrEqualTo";
  *(v21 + 1) = 17;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "contains";
  *(v22 + 8) = 8;
  *(v22 + 16) = 2;
  v8();
  v23 = (v4 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "notContains";
  *(v24 + 1) = 11;
  v24[16] = 2;
  v8();
  v25 = (v4 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "beginsWith";
  *(v26 + 1) = 10;
  v26[16] = 2;
  v8();
  v27 = (v4 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "endsWith";
  *(v28 + 1) = 8;
  v28[16] = 2;
  v8();
  v29 = (v4 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "inTheNext";
  *(v30 + 1) = 9;
  v30[16] = 2;
  v8();
  v31 = (v4 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 14;
  *v32 = "inTheLast";
  *(v32 + 1) = 9;
  v32[16] = 2;
  v8();
  v33 = (v4 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 15;
  *v34 = "isToday";
  *(v34 + 1) = 7;
  v34[16] = 2;
  v8();
  v35 = (v4 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 16;
  *v36 = "isBetween";
  *(v36 + 1) = 9;
  v36[16] = 2;
  v8();
  return sub_23C871324();
}

uint64_t ToolKitProtoComparisonPredicate.Comparison.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_23C871044();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      switch(result)
      {
        case 1:
          sub_23C6A6404(v5, a1, a2, a3);
          break;
        case 2:
          sub_23C6A69B4(v5, a1, a2, a3);
          break;
        case 3:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 13;
          goto LABEL_5;
        case 4:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 14;
          goto LABEL_5;
        case 5:
          sub_23C6A6F70(v5, a1, a2, a3);
          break;
        case 6:
          sub_23C6A752C(v5, a1, a2, a3);
          break;
        case 7:
          sub_23C6A7AE8(v5, a1, a2, a3);
          break;
        case 8:
          sub_23C6A80A4(v5, a1, a2, a3);
          break;
        case 9:
          sub_23C6A8660(v5, a1, a2, a3);
          break;
        case 10:
          sub_23C6A8C1C(v5, a1, a2, a3);
          break;
        case 11:
          sub_23C6A91D8(v5, a1, a2, a3);
          break;
        case 12:
          sub_23C6A9794(v5, a1, a2, a3);
          break;
        case 13:
          sub_23C6A9D50(v5, a1, a2, a3);
          break;
        case 14:
          sub_23C6AA30C(v5, a1, a2, a3);
          break;
        case 15:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 15;
LABEL_5:
          sub_23C670A2C(v11, v12, v13, v14, &qword_27E1FD6F0, &qword_23C87D748, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind, v15);
          break;
        case 16:
          sub_23C6AA8C8(v5, a1, a2, a3);
          break;
        default:
          break;
      }

      result = sub_23C871044();
    }
  }

  return result;
}

uint64_t sub_23C6A6404(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for ToolKitProtoTypedValue(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v40 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v39 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD6F0, &qword_23C87D748);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB68, &unk_23C879140);
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
  sub_23C5855B0(a1, v12, &qword_27E1FD6F0, &qword_23C87D748);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E1FD6F0, &qword_23C87D748);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C716FA0(v12, v19, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
    sub_23C716FA0(v19, v17, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload())
    {
      sub_23C717008(v17, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
      v29 = v44;
    }

    else
    {
      sub_23C585C34(v24, &qword_27E1FAB68, &unk_23C879140);
      v31 = v39;
      sub_23C716FA0(v17, v39, type metadata accessor for ToolKitProtoTypedValue);
      sub_23C716FA0(v31, v24, type metadata accessor for ToolKitProtoTypedValue);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }
  }

  v32 = v42;
  sub_23C716EF0(&qword_27E1FAC90, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E1FAB68, &unk_23C879140);
  }

  sub_23C5855B0(v24, v32, &qword_27E1FAB68, &unk_23C879140);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E1FAB68, &unk_23C879140);
    return sub_23C585C34(v32, &qword_27E1FAB68, &unk_23C879140);
  }

  else
  {
    v35 = v40;
    sub_23C716FA0(v32, v40, type metadata accessor for ToolKitProtoTypedValue);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E1FAB68, &unk_23C879140);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E1FD6F0, &qword_23C87D748);
    sub_23C716FA0(v35, v36, type metadata accessor for ToolKitProtoTypedValue);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_23C6A69B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for ToolKitProtoTypedValue(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD6F0, &qword_23C87D748);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB68, &unk_23C879140);
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
  sub_23C5855B0(a1, v12, &qword_27E1FD6F0, &qword_23C87D748);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E1FD6F0, &qword_23C87D748);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C716FA0(v12, v19, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
    sub_23C716FA0(v19, v17, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_23C585C34(v24, &qword_27E1FAB68, &unk_23C879140);
      v31 = v40;
      sub_23C716FA0(v17, v40, type metadata accessor for ToolKitProtoTypedValue);
      sub_23C716FA0(v31, v24, type metadata accessor for ToolKitProtoTypedValue);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_23C717008(v17, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_23C716EF0(&qword_27E1FAC90, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E1FAB68, &unk_23C879140);
  }

  sub_23C5855B0(v24, v32, &qword_27E1FAB68, &unk_23C879140);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E1FAB68, &unk_23C879140);
    return sub_23C585C34(v32, &qword_27E1FAB68, &unk_23C879140);
  }

  else
  {
    v35 = v39;
    sub_23C716FA0(v32, v39, type metadata accessor for ToolKitProtoTypedValue);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E1FAB68, &unk_23C879140);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E1FD6F0, &qword_23C87D748);
    sub_23C716FA0(v35, v36, type metadata accessor for ToolKitProtoTypedValue);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_23C6A6F70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for ToolKitProtoTypedValue(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD6F0, &qword_23C87D748);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB68, &unk_23C879140);
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
  sub_23C5855B0(a1, v12, &qword_27E1FD6F0, &qword_23C87D748);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E1FD6F0, &qword_23C87D748);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C716FA0(v12, v19, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
    sub_23C716FA0(v19, v17, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_23C585C34(v24, &qword_27E1FAB68, &unk_23C879140);
      v31 = v40;
      sub_23C716FA0(v17, v40, type metadata accessor for ToolKitProtoTypedValue);
      sub_23C716FA0(v31, v24, type metadata accessor for ToolKitProtoTypedValue);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_23C717008(v17, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_23C716EF0(&qword_27E1FAC90, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E1FAB68, &unk_23C879140);
  }

  sub_23C5855B0(v24, v32, &qword_27E1FAB68, &unk_23C879140);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E1FAB68, &unk_23C879140);
    return sub_23C585C34(v32, &qword_27E1FAB68, &unk_23C879140);
  }

  else
  {
    v35 = v39;
    sub_23C716FA0(v32, v39, type metadata accessor for ToolKitProtoTypedValue);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E1FAB68, &unk_23C879140);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E1FD6F0, &qword_23C87D748);
    sub_23C716FA0(v35, v36, type metadata accessor for ToolKitProtoTypedValue);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_23C6A752C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for ToolKitProtoTypedValue(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD6F0, &qword_23C87D748);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB68, &unk_23C879140);
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
  sub_23C5855B0(a1, v12, &qword_27E1FD6F0, &qword_23C87D748);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E1FD6F0, &qword_23C87D748);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C716FA0(v12, v19, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
    sub_23C716FA0(v19, v17, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_23C585C34(v24, &qword_27E1FAB68, &unk_23C879140);
      v31 = v40;
      sub_23C716FA0(v17, v40, type metadata accessor for ToolKitProtoTypedValue);
      sub_23C716FA0(v31, v24, type metadata accessor for ToolKitProtoTypedValue);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_23C717008(v17, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_23C716EF0(&qword_27E1FAC90, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E1FAB68, &unk_23C879140);
  }

  sub_23C5855B0(v24, v32, &qword_27E1FAB68, &unk_23C879140);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E1FAB68, &unk_23C879140);
    return sub_23C585C34(v32, &qword_27E1FAB68, &unk_23C879140);
  }

  else
  {
    v35 = v39;
    sub_23C716FA0(v32, v39, type metadata accessor for ToolKitProtoTypedValue);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E1FAB68, &unk_23C879140);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E1FD6F0, &qword_23C87D748);
    sub_23C716FA0(v35, v36, type metadata accessor for ToolKitProtoTypedValue);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_23C6A7AE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for ToolKitProtoTypedValue(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD6F0, &qword_23C87D748);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB68, &unk_23C879140);
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
  sub_23C5855B0(a1, v12, &qword_27E1FD6F0, &qword_23C87D748);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E1FD6F0, &qword_23C87D748);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C716FA0(v12, v19, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
    sub_23C716FA0(v19, v17, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_23C585C34(v24, &qword_27E1FAB68, &unk_23C879140);
      v31 = v40;
      sub_23C716FA0(v17, v40, type metadata accessor for ToolKitProtoTypedValue);
      sub_23C716FA0(v31, v24, type metadata accessor for ToolKitProtoTypedValue);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_23C717008(v17, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_23C716EF0(&qword_27E1FAC90, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E1FAB68, &unk_23C879140);
  }

  sub_23C5855B0(v24, v32, &qword_27E1FAB68, &unk_23C879140);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E1FAB68, &unk_23C879140);
    return sub_23C585C34(v32, &qword_27E1FAB68, &unk_23C879140);
  }

  else
  {
    v35 = v39;
    sub_23C716FA0(v32, v39, type metadata accessor for ToolKitProtoTypedValue);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E1FAB68, &unk_23C879140);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E1FD6F0, &qword_23C87D748);
    sub_23C716FA0(v35, v36, type metadata accessor for ToolKitProtoTypedValue);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_23C6A80A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for ToolKitProtoTypedValue(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD6F0, &qword_23C87D748);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB68, &unk_23C879140);
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
  sub_23C5855B0(a1, v12, &qword_27E1FD6F0, &qword_23C87D748);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E1FD6F0, &qword_23C87D748);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C716FA0(v12, v19, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
    sub_23C716FA0(v19, v17, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_23C585C34(v24, &qword_27E1FAB68, &unk_23C879140);
      v31 = v40;
      sub_23C716FA0(v17, v40, type metadata accessor for ToolKitProtoTypedValue);
      sub_23C716FA0(v31, v24, type metadata accessor for ToolKitProtoTypedValue);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_23C717008(v17, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_23C716EF0(&qword_27E1FAC90, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E1FAB68, &unk_23C879140);
  }

  sub_23C5855B0(v24, v32, &qword_27E1FAB68, &unk_23C879140);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E1FAB68, &unk_23C879140);
    return sub_23C585C34(v32, &qword_27E1FAB68, &unk_23C879140);
  }

  else
  {
    v35 = v39;
    sub_23C716FA0(v32, v39, type metadata accessor for ToolKitProtoTypedValue);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E1FAB68, &unk_23C879140);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E1FD6F0, &qword_23C87D748);
    sub_23C716FA0(v35, v36, type metadata accessor for ToolKitProtoTypedValue);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_23C6A8660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for ToolKitProtoTypedValue(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD6F0, &qword_23C87D748);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB68, &unk_23C879140);
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
  sub_23C5855B0(a1, v12, &qword_27E1FD6F0, &qword_23C87D748);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E1FD6F0, &qword_23C87D748);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C716FA0(v12, v19, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
    sub_23C716FA0(v19, v17, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_23C585C34(v24, &qword_27E1FAB68, &unk_23C879140);
      v31 = v40;
      sub_23C716FA0(v17, v40, type metadata accessor for ToolKitProtoTypedValue);
      sub_23C716FA0(v31, v24, type metadata accessor for ToolKitProtoTypedValue);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_23C717008(v17, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_23C716EF0(&qword_27E1FAC90, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E1FAB68, &unk_23C879140);
  }

  sub_23C5855B0(v24, v32, &qword_27E1FAB68, &unk_23C879140);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E1FAB68, &unk_23C879140);
    return sub_23C585C34(v32, &qword_27E1FAB68, &unk_23C879140);
  }

  else
  {
    v35 = v39;
    sub_23C716FA0(v32, v39, type metadata accessor for ToolKitProtoTypedValue);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E1FAB68, &unk_23C879140);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E1FD6F0, &qword_23C87D748);
    sub_23C716FA0(v35, v36, type metadata accessor for ToolKitProtoTypedValue);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_23C6A8C1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for ToolKitProtoTypedValue(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD6F0, &qword_23C87D748);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB68, &unk_23C879140);
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
  sub_23C5855B0(a1, v12, &qword_27E1FD6F0, &qword_23C87D748);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E1FD6F0, &qword_23C87D748);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C716FA0(v12, v19, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
    sub_23C716FA0(v19, v17, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      sub_23C585C34(v24, &qword_27E1FAB68, &unk_23C879140);
      v31 = v40;
      sub_23C716FA0(v17, v40, type metadata accessor for ToolKitProtoTypedValue);
      sub_23C716FA0(v31, v24, type metadata accessor for ToolKitProtoTypedValue);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_23C717008(v17, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_23C716EF0(&qword_27E1FAC90, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E1FAB68, &unk_23C879140);
  }

  sub_23C5855B0(v24, v32, &qword_27E1FAB68, &unk_23C879140);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E1FAB68, &unk_23C879140);
    return sub_23C585C34(v32, &qword_27E1FAB68, &unk_23C879140);
  }

  else
  {
    v35 = v39;
    sub_23C716FA0(v32, v39, type metadata accessor for ToolKitProtoTypedValue);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E1FAB68, &unk_23C879140);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E1FD6F0, &qword_23C87D748);
    sub_23C716FA0(v35, v36, type metadata accessor for ToolKitProtoTypedValue);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_23C6A91D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for ToolKitProtoTypedValue(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD6F0, &qword_23C87D748);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB68, &unk_23C879140);
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
  sub_23C5855B0(a1, v12, &qword_27E1FD6F0, &qword_23C87D748);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E1FD6F0, &qword_23C87D748);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C716FA0(v12, v19, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
    sub_23C716FA0(v19, v17, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      sub_23C585C34(v24, &qword_27E1FAB68, &unk_23C879140);
      v31 = v40;
      sub_23C716FA0(v17, v40, type metadata accessor for ToolKitProtoTypedValue);
      sub_23C716FA0(v31, v24, type metadata accessor for ToolKitProtoTypedValue);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_23C717008(v17, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_23C716EF0(&qword_27E1FAC90, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E1FAB68, &unk_23C879140);
  }

  sub_23C5855B0(v24, v32, &qword_27E1FAB68, &unk_23C879140);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E1FAB68, &unk_23C879140);
    return sub_23C585C34(v32, &qword_27E1FAB68, &unk_23C879140);
  }

  else
  {
    v35 = v39;
    sub_23C716FA0(v32, v39, type metadata accessor for ToolKitProtoTypedValue);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E1FAB68, &unk_23C879140);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E1FD6F0, &qword_23C87D748);
    sub_23C716FA0(v35, v36, type metadata accessor for ToolKitProtoTypedValue);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_23C6A9794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for ToolKitProtoTypedValue(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD6F0, &qword_23C87D748);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB68, &unk_23C879140);
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
  sub_23C5855B0(a1, v12, &qword_27E1FD6F0, &qword_23C87D748);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E1FD6F0, &qword_23C87D748);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C716FA0(v12, v19, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
    sub_23C716FA0(v19, v17, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 9)
    {
      sub_23C585C34(v24, &qword_27E1FAB68, &unk_23C879140);
      v31 = v40;
      sub_23C716FA0(v17, v40, type metadata accessor for ToolKitProtoTypedValue);
      sub_23C716FA0(v31, v24, type metadata accessor for ToolKitProtoTypedValue);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_23C717008(v17, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_23C716EF0(&qword_27E1FAC90, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E1FAB68, &unk_23C879140);
  }

  sub_23C5855B0(v24, v32, &qword_27E1FAB68, &unk_23C879140);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E1FAB68, &unk_23C879140);
    return sub_23C585C34(v32, &qword_27E1FAB68, &unk_23C879140);
  }

  else
  {
    v35 = v39;
    sub_23C716FA0(v32, v39, type metadata accessor for ToolKitProtoTypedValue);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E1FAB68, &unk_23C879140);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E1FD6F0, &qword_23C87D748);
    sub_23C716FA0(v35, v36, type metadata accessor for ToolKitProtoTypedValue);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_23C6A9D50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for ToolKitProtoTypedValue(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD6F0, &qword_23C87D748);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB68, &unk_23C879140);
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
  sub_23C5855B0(a1, v12, &qword_27E1FD6F0, &qword_23C87D748);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E1FD6F0, &qword_23C87D748);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C716FA0(v12, v19, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
    sub_23C716FA0(v19, v17, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 10)
    {
      sub_23C585C34(v24, &qword_27E1FAB68, &unk_23C879140);
      v31 = v40;
      sub_23C716FA0(v17, v40, type metadata accessor for ToolKitProtoTypedValue);
      sub_23C716FA0(v31, v24, type metadata accessor for ToolKitProtoTypedValue);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_23C717008(v17, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_23C716EF0(&qword_27E1FAC90, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E1FAB68, &unk_23C879140);
  }

  sub_23C5855B0(v24, v32, &qword_27E1FAB68, &unk_23C879140);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E1FAB68, &unk_23C879140);
    return sub_23C585C34(v32, &qword_27E1FAB68, &unk_23C879140);
  }

  else
  {
    v35 = v39;
    sub_23C716FA0(v32, v39, type metadata accessor for ToolKitProtoTypedValue);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E1FAB68, &unk_23C879140);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E1FD6F0, &qword_23C87D748);
    sub_23C716FA0(v35, v36, type metadata accessor for ToolKitProtoTypedValue);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_23C6AA30C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for ToolKitProtoTypedValue(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD6F0, &qword_23C87D748);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB68, &unk_23C879140);
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
  sub_23C5855B0(a1, v12, &qword_27E1FD6F0, &qword_23C87D748);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E1FD6F0, &qword_23C87D748);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C716FA0(v12, v19, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
    sub_23C716FA0(v19, v17, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 11)
    {
      sub_23C585C34(v24, &qword_27E1FAB68, &unk_23C879140);
      v31 = v40;
      sub_23C716FA0(v17, v40, type metadata accessor for ToolKitProtoTypedValue);
      sub_23C716FA0(v31, v24, type metadata accessor for ToolKitProtoTypedValue);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_23C717008(v17, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_23C716EF0(&qword_27E1FAC90, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E1FAB68, &unk_23C879140);
  }

  sub_23C5855B0(v24, v32, &qword_27E1FAB68, &unk_23C879140);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E1FAB68, &unk_23C879140);
    return sub_23C585C34(v32, &qword_27E1FAB68, &unk_23C879140);
  }

  else
  {
    v35 = v39;
    sub_23C716FA0(v32, v39, type metadata accessor for ToolKitProtoTypedValue);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E1FAB68, &unk_23C879140);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E1FD6F0, &qword_23C87D748);
    sub_23C716FA0(v35, v36, type metadata accessor for ToolKitProtoTypedValue);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_23C6AA8C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Pair(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD6F0, &qword_23C87D748);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FEDA0, &qword_23C8899D8);
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
  sub_23C5855B0(a1, v12, &qword_27E1FD6F0, &qword_23C87D748);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E1FD6F0, &qword_23C87D748);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C716FA0(v12, v19, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
    sub_23C716FA0(v19, v17, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 12)
    {
      sub_23C585C34(v24, &qword_27E1FEDA0, &qword_23C8899D8);
      v31 = v40;
      sub_23C716FA0(v17, v40, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Pair);
      sub_23C716FA0(v31, v24, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Pair);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_23C717008(v17, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_23C716EF0(&qword_27E1FDFD0, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Pair, &protocol conformance descriptor for ToolKitProtoComparisonPredicate.Comparison.Pair);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E1FEDA0, &qword_23C8899D8);
  }

  sub_23C5855B0(v24, v32, &qword_27E1FEDA0, &qword_23C8899D8);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E1FEDA0, &qword_23C8899D8);
    return sub_23C585C34(v32, &qword_27E1FEDA0, &qword_23C8899D8);
  }

  else
  {
    v35 = v39;
    sub_23C716FA0(v32, v39, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Pair);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E1FEDA0, &qword_23C8899D8);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E1FD6F0, &qword_23C87D748);
    sub_23C716FA0(v35, v36, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Pair);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t ToolKitProtoComparisonPredicate.Comparison.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD6F0, &qword_23C87D748);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v13 - v9;
  sub_23C5855B0(v3, &v13 - v9, &qword_27E1FD6F0, &qword_23C87D748);
  v11 = type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind(0);
  if ((*(*(v11 - 8) + 48))(v10, 1, v11) != 1)
  {
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        sub_23C6AB450(v3, a1, a2, a3);
        goto LABEL_23;
      case 2u:
        sub_23C6ABB20(v3, a1, a2, a3);
        goto LABEL_23;
      case 3u:
        sub_23C6ABD58(v3, a1, a2, a3);
        goto LABEL_23;
      case 4u:
        sub_23C6ABF90(v3, a1, a2, a3);
        goto LABEL_23;
      case 5u:
        sub_23C6AC1C8(v3, a1, a2, a3);
        goto LABEL_23;
      case 6u:
        sub_23C6AC400(v3, a1, a2, a3);
        goto LABEL_23;
      case 7u:
        sub_23C6AC638(v3, a1, a2, a3);
        goto LABEL_23;
      case 8u:
        sub_23C6AC870(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_10;
        }

        return sub_23C717008(v10, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
      case 9u:
        sub_23C6ACAA8(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_10;
        }

        return sub_23C717008(v10, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
      case 0xAu:
        sub_23C6ACCE0(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_10;
        }

        return sub_23C717008(v10, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
      case 0xBu:
        sub_23C6ACF18(v3, a1, a2, a3);
        if (v4)
        {
          return sub_23C717008(v10, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
        }

        goto LABEL_10;
      case 0xCu:
        sub_23C6AD39C(v3, a1, a2, a3);
        if (v4)
        {
          return sub_23C717008(v10, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
        }

LABEL_10:
        sub_23C717008(v10, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
        break;
      case 0xDu:
        result = sub_23C6AB688(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0xEu:
        result = sub_23C6AB8D4(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0xFu:
        result = sub_23C6AD150(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      default:
        sub_23C6AB21C(v3, a1, a2, a3);
LABEL_23:
        result = sub_23C717008(v10, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
        if (!v4)
        {
          break;
        }

        return result;
    }
  }

  type metadata accessor for ToolKitProtoComparisonPredicate.Comparison(0);
  return sub_23C870F14();
}

uint64_t sub_23C6AB21C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD6F0, &qword_23C87D748);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoTypedValue(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E1FD6F0, &qword_23C87D748);
  v11 = type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E1FD6F0, &qword_23C87D748);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_23C716FA0(v7, v10, type metadata accessor for ToolKitProtoTypedValue);
    sub_23C716EF0(&qword_27E1FAC90, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue);
    sub_23C871304();
    return sub_23C717008(v10, type metadata accessor for ToolKitProtoTypedValue);
  }

  result = sub_23C717008(v7, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
  __break(1u);
  return result;
}

uint64_t sub_23C6AB450(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD6F0, &qword_23C87D748);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoTypedValue(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E1FD6F0, &qword_23C87D748);
  v11 = type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E1FD6F0, &qword_23C87D748);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_23C716FA0(v7, v10, type metadata accessor for ToolKitProtoTypedValue);
    sub_23C716EF0(&qword_27E1FAC90, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue);
    sub_23C871304();
    return sub_23C717008(v10, type metadata accessor for ToolKitProtoTypedValue);
  }

  result = sub_23C717008(v7, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
  __break(1u);
  return result;
}

uint64_t sub_23C6AB688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD6F0, &qword_23C87D748);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v15 - v10;
  sub_23C5855B0(a1, v15 - v10, &qword_27E1FD6F0, &qword_23C87D748);
  v12 = type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_23C585C34(v11, &qword_27E1FD6F0, &qword_23C87D748);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_23C717008(v11, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
    if (EnumCaseMultiPayload == 13)
    {
      sub_23C870E74();
      sub_23C716EF0(&qword_27E1FEBC0, MEMORY[0x277D21560], MEMORY[0x277D21558]);
      sub_23C871254();
      return (*(v6 + 8))(v8, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C6AB8D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD6F0, &qword_23C87D748);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v15 - v10;
  sub_23C5855B0(a1, v15 - v10, &qword_27E1FD6F0, &qword_23C87D748);
  v12 = type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_23C585C34(v11, &qword_27E1FD6F0, &qword_23C87D748);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_23C717008(v11, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
    if (EnumCaseMultiPayload == 14)
    {
      sub_23C870E74();
      sub_23C716EF0(&qword_27E1FEBC0, MEMORY[0x277D21560], MEMORY[0x277D21558]);
      sub_23C871254();
      return (*(v6 + 8))(v8, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C6ABB20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD6F0, &qword_23C87D748);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoTypedValue(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E1FD6F0, &qword_23C87D748);
  v11 = type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E1FD6F0, &qword_23C87D748);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_23C716FA0(v7, v10, type metadata accessor for ToolKitProtoTypedValue);
    sub_23C716EF0(&qword_27E1FAC90, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue);
    sub_23C871304();
    return sub_23C717008(v10, type metadata accessor for ToolKitProtoTypedValue);
  }

  result = sub_23C717008(v7, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
  __break(1u);
  return result;
}

uint64_t sub_23C6ABD58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD6F0, &qword_23C87D748);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoTypedValue(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E1FD6F0, &qword_23C87D748);
  v11 = type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E1FD6F0, &qword_23C87D748);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    sub_23C716FA0(v7, v10, type metadata accessor for ToolKitProtoTypedValue);
    sub_23C716EF0(&qword_27E1FAC90, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue);
    sub_23C871304();
    return sub_23C717008(v10, type metadata accessor for ToolKitProtoTypedValue);
  }

  result = sub_23C717008(v7, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
  __break(1u);
  return result;
}

uint64_t sub_23C6ABF90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD6F0, &qword_23C87D748);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoTypedValue(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E1FD6F0, &qword_23C87D748);
  v11 = type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E1FD6F0, &qword_23C87D748);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 4)
  {
    sub_23C716FA0(v7, v10, type metadata accessor for ToolKitProtoTypedValue);
    sub_23C716EF0(&qword_27E1FAC90, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue);
    sub_23C871304();
    return sub_23C717008(v10, type metadata accessor for ToolKitProtoTypedValue);
  }

  result = sub_23C717008(v7, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
  __break(1u);
  return result;
}

uint64_t sub_23C6AC1C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD6F0, &qword_23C87D748);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoTypedValue(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E1FD6F0, &qword_23C87D748);
  v11 = type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E1FD6F0, &qword_23C87D748);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 5)
  {
    sub_23C716FA0(v7, v10, type metadata accessor for ToolKitProtoTypedValue);
    sub_23C716EF0(&qword_27E1FAC90, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue);
    sub_23C871304();
    return sub_23C717008(v10, type metadata accessor for ToolKitProtoTypedValue);
  }

  result = sub_23C717008(v7, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
  __break(1u);
  return result;
}

uint64_t sub_23C6AC400(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD6F0, &qword_23C87D748);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoTypedValue(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E1FD6F0, &qword_23C87D748);
  v11 = type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E1FD6F0, &qword_23C87D748);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 6)
  {
    sub_23C716FA0(v7, v10, type metadata accessor for ToolKitProtoTypedValue);
    sub_23C716EF0(&qword_27E1FAC90, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue);
    sub_23C871304();
    return sub_23C717008(v10, type metadata accessor for ToolKitProtoTypedValue);
  }

  result = sub_23C717008(v7, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
  __break(1u);
  return result;
}

uint64_t sub_23C6AC638(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD6F0, &qword_23C87D748);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoTypedValue(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E1FD6F0, &qword_23C87D748);
  v11 = type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E1FD6F0, &qword_23C87D748);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 7)
  {
    sub_23C716FA0(v7, v10, type metadata accessor for ToolKitProtoTypedValue);
    sub_23C716EF0(&qword_27E1FAC90, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue);
    sub_23C871304();
    return sub_23C717008(v10, type metadata accessor for ToolKitProtoTypedValue);
  }

  result = sub_23C717008(v7, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
  __break(1u);
  return result;
}

uint64_t sub_23C6AC870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD6F0, &qword_23C87D748);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoTypedValue(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E1FD6F0, &qword_23C87D748);
  v11 = type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E1FD6F0, &qword_23C87D748);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 8)
  {
    sub_23C716FA0(v7, v10, type metadata accessor for ToolKitProtoTypedValue);
    sub_23C716EF0(&qword_27E1FAC90, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue);
    sub_23C871304();
    return sub_23C717008(v10, type metadata accessor for ToolKitProtoTypedValue);
  }

  result = sub_23C717008(v7, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
  __break(1u);
  return result;
}

uint64_t sub_23C6ACAA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD6F0, &qword_23C87D748);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoTypedValue(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E1FD6F0, &qword_23C87D748);
  v11 = type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E1FD6F0, &qword_23C87D748);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 9)
  {
    sub_23C716FA0(v7, v10, type metadata accessor for ToolKitProtoTypedValue);
    sub_23C716EF0(&qword_27E1FAC90, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue);
    sub_23C871304();
    return sub_23C717008(v10, type metadata accessor for ToolKitProtoTypedValue);
  }

  result = sub_23C717008(v7, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
  __break(1u);
  return result;
}

uint64_t sub_23C6ACCE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD6F0, &qword_23C87D748);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoTypedValue(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E1FD6F0, &qword_23C87D748);
  v11 = type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E1FD6F0, &qword_23C87D748);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 10)
  {
    sub_23C716FA0(v7, v10, type metadata accessor for ToolKitProtoTypedValue);
    sub_23C716EF0(&qword_27E1FAC90, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue);
    sub_23C871304();
    return sub_23C717008(v10, type metadata accessor for ToolKitProtoTypedValue);
  }

  result = sub_23C717008(v7, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
  __break(1u);
  return result;
}

uint64_t sub_23C6ACF18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD6F0, &qword_23C87D748);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoTypedValue(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E1FD6F0, &qword_23C87D748);
  v11 = type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E1FD6F0, &qword_23C87D748);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 11)
  {
    sub_23C716FA0(v7, v10, type metadata accessor for ToolKitProtoTypedValue);
    sub_23C716EF0(&qword_27E1FAC90, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue);
    sub_23C871304();
    return sub_23C717008(v10, type metadata accessor for ToolKitProtoTypedValue);
  }

  result = sub_23C717008(v7, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
  __break(1u);
  return result;
}

uint64_t sub_23C6AD150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD6F0, &qword_23C87D748);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v15 - v10;
  sub_23C5855B0(a1, v15 - v10, &qword_27E1FD6F0, &qword_23C87D748);
  v12 = type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_23C585C34(v11, &qword_27E1FD6F0, &qword_23C87D748);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_23C717008(v11, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
    if (EnumCaseMultiPayload == 15)
    {
      sub_23C870E74();
      sub_23C716EF0(&qword_27E1FEBC0, MEMORY[0x277D21560], MEMORY[0x277D21558]);
      sub_23C871254();
      return (*(v6 + 8))(v8, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C6AD39C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD6F0, &qword_23C87D748);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Pair(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E1FD6F0, &qword_23C87D748);
  v11 = type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E1FD6F0, &qword_23C87D748);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 12)
  {
    sub_23C716FA0(v7, v10, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Pair);
    sub_23C716EF0(&qword_27E1FDFD0, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Pair, &protocol conformance descriptor for ToolKitProtoComparisonPredicate.Comparison.Pair);
    sub_23C871304();
    return sub_23C717008(v10, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Pair);
  }

  result = sub_23C717008(v7, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
  __break(1u);
  return result;
}

uint64_t sub_23C6AD690(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FE988, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison, &protocol conformance descriptor for ToolKitProtoComparisonPredicate.Comparison);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C6AD730(uint64_t a1)
{
  sub_23C716EF0(&qword_27E1FDFB8, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison, &protocol conformance descriptor for ToolKitProtoComparisonPredicate.Comparison);

  return sub_23C8711F4();
}

uint64_t sub_23C6AD79C(uint64_t a1, uint64_t a2)
{
  sub_23C716EF0(&qword_27E1FDFB8, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison, &protocol conformance descriptor for ToolKitProtoComparisonPredicate.Comparison);

  return sub_23C871204();
}

uint64_t sub_23C6AD81C()
{
  if (qword_27E1F86E0 != -1)
  {
    swift_once();
  }

  v1 = qword_27E1FC928;
  v2 = qword_27E1FC930;
  swift_bridgeObjectRetain_n();
  MEMORY[0x23EED7100](0x726961502ELL, 0xE500000000000000);

  qword_27E1FC950 = v1;
  *algn_27E1FC958 = v2;
  return result;
}

uint64_t sub_23C6AD8E4()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FC960);
  __swift_project_value_buffer(v0, qword_27E1FC960);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "first";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "second";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t ToolKitProtoComparisonPredicate.Comparison.Pair.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_23C871044();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for ToolKitProtoTypedValue(0);
        sub_23C716EF0(&qword_27E1FAC90, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue);
        sub_23C8711A4();
      }

      else if (result == 2)
      {
        sub_23C6ADBE4(a1, v5, a2, a3);
      }

      result = sub_23C871044();
    }
  }

  return result;
}

uint64_t sub_23C6ADBE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Pair(0);
  type metadata accessor for ToolKitProtoTypedValue(0);
  sub_23C716EF0(&qword_27E1FAC90, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue);
  return sub_23C8711A4();
}

uint64_t sub_23C6ADCEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[3] = a4;
  v13[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB68, &unk_23C879140);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoTypedValue(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E1FAB68, &unk_23C879140);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_23C585C34(v7, &qword_27E1FAB68, &unk_23C879140);
  }

  sub_23C716FA0(v7, v11, type metadata accessor for ToolKitProtoTypedValue);
  sub_23C716EF0(&qword_27E1FAC90, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue);
  sub_23C871304();
  return sub_23C717008(v11, type metadata accessor for ToolKitProtoTypedValue);
}

uint64_t sub_23C6ADEFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAB68, &unk_23C879140);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoTypedValue(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Pair(0);
  sub_23C5855B0(a1 + *(v12 + 20), v7, &qword_27E1FAB68, &unk_23C879140);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_23C585C34(v7, &qword_27E1FAB68, &unk_23C879140);
  }

  sub_23C716FA0(v7, v11, type metadata accessor for ToolKitProtoTypedValue);
  sub_23C716EF0(&qword_27E1FAC90, type metadata accessor for ToolKitProtoTypedValue, &protocol conformance descriptor for ToolKitProtoTypedValue);
  sub_23C871304();
  return sub_23C717008(v11, type metadata accessor for ToolKitProtoTypedValue);
}

uint64_t sub_23C6AE164@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ToolKitProtoTypedValue(0);
  v5 = *(*(v4 - 8) + 56);
  v5(a2, 1, 1, v4);
  v5(a2 + *(a1 + 20), 1, 1, v4);
  return _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
}

uint64_t sub_23C6AE260(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FE980, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Pair, "QϙẸjH");

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C6AE300(uint64_t a1)
{
  sub_23C716EF0(&qword_27E1FDFD0, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Pair, &protocol conformance descriptor for ToolKitProtoComparisonPredicate.Comparison.Pair);

  return sub_23C8711F4();
}

uint64_t sub_23C6AE36C(uint64_t a1, uint64_t a2)
{
  sub_23C716EF0(&qword_27E1FDFD0, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Pair, &protocol conformance descriptor for ToolKitProtoComparisonPredicate.Comparison.Pair);

  return sub_23C871204();
}

uint64_t sub_23C6AE3EC()
{
  if (qword_27E1F86E0 != -1)
  {
    swift_once();
  }

  v1 = qword_27E1FC928;
  v2 = qword_27E1FC930;
  swift_bridgeObjectRetain_n();
  MEMORY[0x23EED7100](0x74616C706D65542ELL, 0xE900000000000065);

  qword_27E1FC978 = v1;
  unk_27E1FC980 = v2;
  return result;
}

uint64_t sub_23C6AE4BC()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FC988);
  __swift_project_value_buffer(v0, qword_27E1FC988);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_23C87D6E0;
  v4 = v38 + v3;
  v5 = v38 + v3 + v1[14];
  *(v38 + v3) = 1;
  *v5 = "equalTo";
  *(v5 + 8) = 7;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_23C871314();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "notEqualTo";
  *(v9 + 8) = 10;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "hasValue";
  *(v11 + 1) = 8;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "hasNoValue";
  *(v13 + 1) = 10;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "greaterThan";
  *(v15 + 1) = 11;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "greaterThanOrEqualTo";
  *(v17 + 1) = 20;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "lessThan";
  *(v19 + 1) = 8;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "lessThanOrEqualTo";
  *(v21 + 1) = 17;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "contains";
  *(v22 + 8) = 8;
  *(v22 + 16) = 2;
  v8();
  v23 = (v4 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "notContains";
  *(v24 + 1) = 11;
  v24[16] = 2;
  v8();
  v25 = (v4 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "beginsWith";
  *(v26 + 1) = 10;
  v26[16] = 2;
  v8();
  v27 = (v4 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "endsWith";
  *(v28 + 1) = 8;
  v28[16] = 2;
  v8();
  v29 = (v4 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "inTheNext";
  *(v30 + 1) = 9;
  v30[16] = 2;
  v8();
  v31 = (v4 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 14;
  *v32 = "inTheLast";
  *(v32 + 1) = 9;
  v32[16] = 2;
  v8();
  v33 = (v4 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 15;
  *v34 = "isToday";
  *(v34 + 1) = 7;
  v34[16] = 2;
  v8();
  v35 = (v4 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 16;
  *v36 = "isBetween";
  *(v36 + 1) = 9;
  v36[16] = 2;
  v8();
  return sub_23C871324();
}

uint64_t ToolKitProtoComparisonPredicate.Comparison.Template.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_23C871044();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      switch(result)
      {
        case 1:
          sub_23C6AECD0(v5, a1, a2, a3);
          break;
        case 2:
          sub_23C6AF280(v5, a1, a2, a3);
          break;
        case 3:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 13;
          goto LABEL_5;
        case 4:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 14;
          goto LABEL_5;
        case 5:
          sub_23C6AF83C(v5, a1, a2, a3);
          break;
        case 6:
          sub_23C6AFDF8(v5, a1, a2, a3);
          break;
        case 7:
          sub_23C6B03B4(v5, a1, a2, a3);
          break;
        case 8:
          sub_23C6B0970(v5, a1, a2, a3);
          break;
        case 9:
          sub_23C6B0F2C(v5, a1, a2, a3);
          break;
        case 10:
          sub_23C6B14E8(v5, a1, a2, a3);
          break;
        case 11:
          sub_23C6B1AA4(v5, a1, a2, a3);
          break;
        case 12:
          sub_23C6B2060(v5, a1, a2, a3);
          break;
        case 13:
          sub_23C6B261C(v5, a1, a2, a3);
          break;
        case 14:
          sub_23C6B2BD8(v5, a1, a2, a3);
          break;
        case 15:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 15;
LABEL_5:
          sub_23C670A2C(v11, v12, v13, v14, &qword_27E1FD708, &unk_23C889D00, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind, v15);
          break;
        case 16:
          sub_23C6B3194(v5, a1, a2, a3);
          break;
        default:
          break;
      }

      result = sub_23C871044();
    }
  }

  return result;
}

uint64_t sub_23C6AECD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v40 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v39 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD708, &unk_23C889D00);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC40, &unk_23C8791C0);
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
  sub_23C5855B0(a1, v12, &qword_27E1FD708, &unk_23C889D00);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E1FD708, &unk_23C889D00);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C716FA0(v12, v19, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
    sub_23C716FA0(v19, v17, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload())
    {
      sub_23C717008(v17, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
      v29 = v44;
    }

    else
    {
      sub_23C585C34(v24, &qword_27E1FAC40, &unk_23C8791C0);
      v31 = v39;
      sub_23C716FA0(v17, v39, type metadata accessor for ToolKitProtoTypeInstance);
      sub_23C716FA0(v31, v24, type metadata accessor for ToolKitProtoTypeInstance);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }
  }

  v32 = v42;
  sub_23C716EF0(&qword_27E1FACD8, type metadata accessor for ToolKitProtoTypeInstance, &protocol conformance descriptor for ToolKitProtoTypeInstance);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E1FAC40, &unk_23C8791C0);
  }

  sub_23C5855B0(v24, v32, &qword_27E1FAC40, &unk_23C8791C0);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E1FAC40, &unk_23C8791C0);
    return sub_23C585C34(v32, &qword_27E1FAC40, &unk_23C8791C0);
  }

  else
  {
    v35 = v40;
    sub_23C716FA0(v32, v40, type metadata accessor for ToolKitProtoTypeInstance);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E1FAC40, &unk_23C8791C0);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E1FD708, &unk_23C889D00);
    sub_23C716FA0(v35, v36, type metadata accessor for ToolKitProtoTypeInstance);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_23C6AF280(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD708, &unk_23C889D00);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC40, &unk_23C8791C0);
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
  sub_23C5855B0(a1, v12, &qword_27E1FD708, &unk_23C889D00);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E1FD708, &unk_23C889D00);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C716FA0(v12, v19, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
    sub_23C716FA0(v19, v17, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_23C585C34(v24, &qword_27E1FAC40, &unk_23C8791C0);
      v31 = v40;
      sub_23C716FA0(v17, v40, type metadata accessor for ToolKitProtoTypeInstance);
      sub_23C716FA0(v31, v24, type metadata accessor for ToolKitProtoTypeInstance);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_23C717008(v17, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_23C716EF0(&qword_27E1FACD8, type metadata accessor for ToolKitProtoTypeInstance, &protocol conformance descriptor for ToolKitProtoTypeInstance);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E1FAC40, &unk_23C8791C0);
  }

  sub_23C5855B0(v24, v32, &qword_27E1FAC40, &unk_23C8791C0);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E1FAC40, &unk_23C8791C0);
    return sub_23C585C34(v32, &qword_27E1FAC40, &unk_23C8791C0);
  }

  else
  {
    v35 = v39;
    sub_23C716FA0(v32, v39, type metadata accessor for ToolKitProtoTypeInstance);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E1FAC40, &unk_23C8791C0);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E1FD708, &unk_23C889D00);
    sub_23C716FA0(v35, v36, type metadata accessor for ToolKitProtoTypeInstance);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_23C6AF83C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD708, &unk_23C889D00);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC40, &unk_23C8791C0);
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
  sub_23C5855B0(a1, v12, &qword_27E1FD708, &unk_23C889D00);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E1FD708, &unk_23C889D00);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C716FA0(v12, v19, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
    sub_23C716FA0(v19, v17, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_23C585C34(v24, &qword_27E1FAC40, &unk_23C8791C0);
      v31 = v40;
      sub_23C716FA0(v17, v40, type metadata accessor for ToolKitProtoTypeInstance);
      sub_23C716FA0(v31, v24, type metadata accessor for ToolKitProtoTypeInstance);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_23C717008(v17, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_23C716EF0(&qword_27E1FACD8, type metadata accessor for ToolKitProtoTypeInstance, &protocol conformance descriptor for ToolKitProtoTypeInstance);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E1FAC40, &unk_23C8791C0);
  }

  sub_23C5855B0(v24, v32, &qword_27E1FAC40, &unk_23C8791C0);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E1FAC40, &unk_23C8791C0);
    return sub_23C585C34(v32, &qword_27E1FAC40, &unk_23C8791C0);
  }

  else
  {
    v35 = v39;
    sub_23C716FA0(v32, v39, type metadata accessor for ToolKitProtoTypeInstance);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E1FAC40, &unk_23C8791C0);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E1FD708, &unk_23C889D00);
    sub_23C716FA0(v35, v36, type metadata accessor for ToolKitProtoTypeInstance);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_23C6AFDF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD708, &unk_23C889D00);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC40, &unk_23C8791C0);
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
  sub_23C5855B0(a1, v12, &qword_27E1FD708, &unk_23C889D00);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E1FD708, &unk_23C889D00);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C716FA0(v12, v19, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
    sub_23C716FA0(v19, v17, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_23C585C34(v24, &qword_27E1FAC40, &unk_23C8791C0);
      v31 = v40;
      sub_23C716FA0(v17, v40, type metadata accessor for ToolKitProtoTypeInstance);
      sub_23C716FA0(v31, v24, type metadata accessor for ToolKitProtoTypeInstance);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_23C717008(v17, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_23C716EF0(&qword_27E1FACD8, type metadata accessor for ToolKitProtoTypeInstance, &protocol conformance descriptor for ToolKitProtoTypeInstance);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E1FAC40, &unk_23C8791C0);
  }

  sub_23C5855B0(v24, v32, &qword_27E1FAC40, &unk_23C8791C0);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E1FAC40, &unk_23C8791C0);
    return sub_23C585C34(v32, &qword_27E1FAC40, &unk_23C8791C0);
  }

  else
  {
    v35 = v39;
    sub_23C716FA0(v32, v39, type metadata accessor for ToolKitProtoTypeInstance);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E1FAC40, &unk_23C8791C0);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E1FD708, &unk_23C889D00);
    sub_23C716FA0(v35, v36, type metadata accessor for ToolKitProtoTypeInstance);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_23C6B03B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD708, &unk_23C889D00);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC40, &unk_23C8791C0);
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
  sub_23C5855B0(a1, v12, &qword_27E1FD708, &unk_23C889D00);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E1FD708, &unk_23C889D00);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C716FA0(v12, v19, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
    sub_23C716FA0(v19, v17, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_23C585C34(v24, &qword_27E1FAC40, &unk_23C8791C0);
      v31 = v40;
      sub_23C716FA0(v17, v40, type metadata accessor for ToolKitProtoTypeInstance);
      sub_23C716FA0(v31, v24, type metadata accessor for ToolKitProtoTypeInstance);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_23C717008(v17, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_23C716EF0(&qword_27E1FACD8, type metadata accessor for ToolKitProtoTypeInstance, &protocol conformance descriptor for ToolKitProtoTypeInstance);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E1FAC40, &unk_23C8791C0);
  }

  sub_23C5855B0(v24, v32, &qword_27E1FAC40, &unk_23C8791C0);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E1FAC40, &unk_23C8791C0);
    return sub_23C585C34(v32, &qword_27E1FAC40, &unk_23C8791C0);
  }

  else
  {
    v35 = v39;
    sub_23C716FA0(v32, v39, type metadata accessor for ToolKitProtoTypeInstance);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E1FAC40, &unk_23C8791C0);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E1FD708, &unk_23C889D00);
    sub_23C716FA0(v35, v36, type metadata accessor for ToolKitProtoTypeInstance);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_23C6B0970(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD708, &unk_23C889D00);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC40, &unk_23C8791C0);
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
  sub_23C5855B0(a1, v12, &qword_27E1FD708, &unk_23C889D00);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E1FD708, &unk_23C889D00);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C716FA0(v12, v19, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
    sub_23C716FA0(v19, v17, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_23C585C34(v24, &qword_27E1FAC40, &unk_23C8791C0);
      v31 = v40;
      sub_23C716FA0(v17, v40, type metadata accessor for ToolKitProtoTypeInstance);
      sub_23C716FA0(v31, v24, type metadata accessor for ToolKitProtoTypeInstance);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_23C717008(v17, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_23C716EF0(&qword_27E1FACD8, type metadata accessor for ToolKitProtoTypeInstance, &protocol conformance descriptor for ToolKitProtoTypeInstance);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E1FAC40, &unk_23C8791C0);
  }

  sub_23C5855B0(v24, v32, &qword_27E1FAC40, &unk_23C8791C0);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E1FAC40, &unk_23C8791C0);
    return sub_23C585C34(v32, &qword_27E1FAC40, &unk_23C8791C0);
  }

  else
  {
    v35 = v39;
    sub_23C716FA0(v32, v39, type metadata accessor for ToolKitProtoTypeInstance);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E1FAC40, &unk_23C8791C0);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E1FD708, &unk_23C889D00);
    sub_23C716FA0(v35, v36, type metadata accessor for ToolKitProtoTypeInstance);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_23C6B0F2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD708, &unk_23C889D00);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC40, &unk_23C8791C0);
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
  sub_23C5855B0(a1, v12, &qword_27E1FD708, &unk_23C889D00);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E1FD708, &unk_23C889D00);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C716FA0(v12, v19, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
    sub_23C716FA0(v19, v17, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_23C585C34(v24, &qword_27E1FAC40, &unk_23C8791C0);
      v31 = v40;
      sub_23C716FA0(v17, v40, type metadata accessor for ToolKitProtoTypeInstance);
      sub_23C716FA0(v31, v24, type metadata accessor for ToolKitProtoTypeInstance);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_23C717008(v17, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_23C716EF0(&qword_27E1FACD8, type metadata accessor for ToolKitProtoTypeInstance, &protocol conformance descriptor for ToolKitProtoTypeInstance);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E1FAC40, &unk_23C8791C0);
  }

  sub_23C5855B0(v24, v32, &qword_27E1FAC40, &unk_23C8791C0);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E1FAC40, &unk_23C8791C0);
    return sub_23C585C34(v32, &qword_27E1FAC40, &unk_23C8791C0);
  }

  else
  {
    v35 = v39;
    sub_23C716FA0(v32, v39, type metadata accessor for ToolKitProtoTypeInstance);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E1FAC40, &unk_23C8791C0);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E1FD708, &unk_23C889D00);
    sub_23C716FA0(v35, v36, type metadata accessor for ToolKitProtoTypeInstance);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_23C6B14E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD708, &unk_23C889D00);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC40, &unk_23C8791C0);
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
  sub_23C5855B0(a1, v12, &qword_27E1FD708, &unk_23C889D00);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E1FD708, &unk_23C889D00);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C716FA0(v12, v19, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
    sub_23C716FA0(v19, v17, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      sub_23C585C34(v24, &qword_27E1FAC40, &unk_23C8791C0);
      v31 = v40;
      sub_23C716FA0(v17, v40, type metadata accessor for ToolKitProtoTypeInstance);
      sub_23C716FA0(v31, v24, type metadata accessor for ToolKitProtoTypeInstance);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_23C717008(v17, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_23C716EF0(&qword_27E1FACD8, type metadata accessor for ToolKitProtoTypeInstance, &protocol conformance descriptor for ToolKitProtoTypeInstance);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E1FAC40, &unk_23C8791C0);
  }

  sub_23C5855B0(v24, v32, &qword_27E1FAC40, &unk_23C8791C0);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E1FAC40, &unk_23C8791C0);
    return sub_23C585C34(v32, &qword_27E1FAC40, &unk_23C8791C0);
  }

  else
  {
    v35 = v39;
    sub_23C716FA0(v32, v39, type metadata accessor for ToolKitProtoTypeInstance);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E1FAC40, &unk_23C8791C0);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E1FD708, &unk_23C889D00);
    sub_23C716FA0(v35, v36, type metadata accessor for ToolKitProtoTypeInstance);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_23C6B1AA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD708, &unk_23C889D00);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC40, &unk_23C8791C0);
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
  sub_23C5855B0(a1, v12, &qword_27E1FD708, &unk_23C889D00);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E1FD708, &unk_23C889D00);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C716FA0(v12, v19, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
    sub_23C716FA0(v19, v17, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      sub_23C585C34(v24, &qword_27E1FAC40, &unk_23C8791C0);
      v31 = v40;
      sub_23C716FA0(v17, v40, type metadata accessor for ToolKitProtoTypeInstance);
      sub_23C716FA0(v31, v24, type metadata accessor for ToolKitProtoTypeInstance);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_23C717008(v17, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_23C716EF0(&qword_27E1FACD8, type metadata accessor for ToolKitProtoTypeInstance, &protocol conformance descriptor for ToolKitProtoTypeInstance);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E1FAC40, &unk_23C8791C0);
  }

  sub_23C5855B0(v24, v32, &qword_27E1FAC40, &unk_23C8791C0);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E1FAC40, &unk_23C8791C0);
    return sub_23C585C34(v32, &qword_27E1FAC40, &unk_23C8791C0);
  }

  else
  {
    v35 = v39;
    sub_23C716FA0(v32, v39, type metadata accessor for ToolKitProtoTypeInstance);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E1FAC40, &unk_23C8791C0);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E1FD708, &unk_23C889D00);
    sub_23C716FA0(v35, v36, type metadata accessor for ToolKitProtoTypeInstance);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_23C6B2060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD708, &unk_23C889D00);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC40, &unk_23C8791C0);
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
  sub_23C5855B0(a1, v12, &qword_27E1FD708, &unk_23C889D00);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E1FD708, &unk_23C889D00);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C716FA0(v12, v19, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
    sub_23C716FA0(v19, v17, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 9)
    {
      sub_23C585C34(v24, &qword_27E1FAC40, &unk_23C8791C0);
      v31 = v40;
      sub_23C716FA0(v17, v40, type metadata accessor for ToolKitProtoTypeInstance);
      sub_23C716FA0(v31, v24, type metadata accessor for ToolKitProtoTypeInstance);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_23C717008(v17, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_23C716EF0(&qword_27E1FACD8, type metadata accessor for ToolKitProtoTypeInstance, &protocol conformance descriptor for ToolKitProtoTypeInstance);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E1FAC40, &unk_23C8791C0);
  }

  sub_23C5855B0(v24, v32, &qword_27E1FAC40, &unk_23C8791C0);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E1FAC40, &unk_23C8791C0);
    return sub_23C585C34(v32, &qword_27E1FAC40, &unk_23C8791C0);
  }

  else
  {
    v35 = v39;
    sub_23C716FA0(v32, v39, type metadata accessor for ToolKitProtoTypeInstance);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E1FAC40, &unk_23C8791C0);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E1FD708, &unk_23C889D00);
    sub_23C716FA0(v35, v36, type metadata accessor for ToolKitProtoTypeInstance);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_23C6B261C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD708, &unk_23C889D00);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC40, &unk_23C8791C0);
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
  sub_23C5855B0(a1, v12, &qword_27E1FD708, &unk_23C889D00);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E1FD708, &unk_23C889D00);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C716FA0(v12, v19, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
    sub_23C716FA0(v19, v17, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 10)
    {
      sub_23C585C34(v24, &qword_27E1FAC40, &unk_23C8791C0);
      v31 = v40;
      sub_23C716FA0(v17, v40, type metadata accessor for ToolKitProtoTypeInstance);
      sub_23C716FA0(v31, v24, type metadata accessor for ToolKitProtoTypeInstance);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_23C717008(v17, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_23C716EF0(&qword_27E1FACD8, type metadata accessor for ToolKitProtoTypeInstance, &protocol conformance descriptor for ToolKitProtoTypeInstance);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E1FAC40, &unk_23C8791C0);
  }

  sub_23C5855B0(v24, v32, &qword_27E1FAC40, &unk_23C8791C0);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E1FAC40, &unk_23C8791C0);
    return sub_23C585C34(v32, &qword_27E1FAC40, &unk_23C8791C0);
  }

  else
  {
    v35 = v39;
    sub_23C716FA0(v32, v39, type metadata accessor for ToolKitProtoTypeInstance);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E1FAC40, &unk_23C8791C0);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E1FD708, &unk_23C889D00);
    sub_23C716FA0(v35, v36, type metadata accessor for ToolKitProtoTypeInstance);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_23C6B2BD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD708, &unk_23C889D00);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC40, &unk_23C8791C0);
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
  sub_23C5855B0(a1, v12, &qword_27E1FD708, &unk_23C889D00);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E1FD708, &unk_23C889D00);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C716FA0(v12, v19, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
    sub_23C716FA0(v19, v17, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 11)
    {
      sub_23C585C34(v24, &qword_27E1FAC40, &unk_23C8791C0);
      v31 = v40;
      sub_23C716FA0(v17, v40, type metadata accessor for ToolKitProtoTypeInstance);
      sub_23C716FA0(v31, v24, type metadata accessor for ToolKitProtoTypeInstance);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_23C717008(v17, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_23C716EF0(&qword_27E1FACD8, type metadata accessor for ToolKitProtoTypeInstance, &protocol conformance descriptor for ToolKitProtoTypeInstance);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E1FAC40, &unk_23C8791C0);
  }

  sub_23C5855B0(v24, v32, &qword_27E1FAC40, &unk_23C8791C0);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E1FAC40, &unk_23C8791C0);
    return sub_23C585C34(v32, &qword_27E1FAC40, &unk_23C8791C0);
  }

  else
  {
    v35 = v39;
    sub_23C716FA0(v32, v39, type metadata accessor for ToolKitProtoTypeInstance);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E1FAC40, &unk_23C8791C0);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E1FD708, &unk_23C889D00);
    sub_23C716FA0(v35, v36, type metadata accessor for ToolKitProtoTypeInstance);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_23C6B3194(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD708, &unk_23C889D00);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC40, &unk_23C8791C0);
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
  sub_23C5855B0(a1, v12, &qword_27E1FD708, &unk_23C889D00);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E1FD708, &unk_23C889D00);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C716FA0(v12, v19, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
    sub_23C716FA0(v19, v17, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 12)
    {
      sub_23C585C34(v24, &qword_27E1FAC40, &unk_23C8791C0);
      v31 = v40;
      sub_23C716FA0(v17, v40, type metadata accessor for ToolKitProtoTypeInstance);
      sub_23C716FA0(v31, v24, type metadata accessor for ToolKitProtoTypeInstance);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_23C717008(v17, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_23C716EF0(&qword_27E1FACD8, type metadata accessor for ToolKitProtoTypeInstance, &protocol conformance descriptor for ToolKitProtoTypeInstance);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E1FAC40, &unk_23C8791C0);
  }

  sub_23C5855B0(v24, v32, &qword_27E1FAC40, &unk_23C8791C0);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E1FAC40, &unk_23C8791C0);
    return sub_23C585C34(v32, &qword_27E1FAC40, &unk_23C8791C0);
  }

  else
  {
    v35 = v39;
    sub_23C716FA0(v32, v39, type metadata accessor for ToolKitProtoTypeInstance);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E1FAC40, &unk_23C8791C0);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E1FD708, &unk_23C889D00);
    sub_23C716FA0(v35, v36, type metadata accessor for ToolKitProtoTypeInstance);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t ToolKitProtoComparisonPredicate.Comparison.Template.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD708, &unk_23C889D00);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v13 - v9;
  sub_23C5855B0(v3, &v13 - v9, &qword_27E1FD708, &unk_23C889D00);
  v11 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  if ((*(*(v11 - 8) + 48))(v10, 1, v11) != 1)
  {
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        sub_23C6B3D1C(v3, a1, a2, a3);
        goto LABEL_23;
      case 2u:
        sub_23C6B43EC(v3, a1, a2, a3);
        goto LABEL_23;
      case 3u:
        sub_23C6B4624(v3, a1, a2, a3);
        goto LABEL_23;
      case 4u:
        sub_23C6B485C(v3, a1, a2, a3);
        goto LABEL_23;
      case 5u:
        sub_23C6B4A94(v3, a1, a2, a3);
        goto LABEL_23;
      case 6u:
        sub_23C6B4CCC(v3, a1, a2, a3);
        goto LABEL_23;
      case 7u:
        sub_23C6B4F04(v3, a1, a2, a3);
        goto LABEL_23;
      case 8u:
        sub_23C6B513C(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_10;
        }

        return sub_23C717008(v10, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
      case 9u:
        sub_23C6B5374(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_10;
        }

        return sub_23C717008(v10, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
      case 0xAu:
        sub_23C6B55AC(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_10;
        }

        return sub_23C717008(v10, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
      case 0xBu:
        sub_23C6B57E4(v3, a1, a2, a3);
        if (v4)
        {
          return sub_23C717008(v10, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
        }

        goto LABEL_10;
      case 0xCu:
        sub_23C6B5C68(v3, a1, a2, a3);
        if (v4)
        {
          return sub_23C717008(v10, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
        }

LABEL_10:
        sub_23C717008(v10, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
        break;
      case 0xDu:
        result = sub_23C6B3F54(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0xEu:
        result = sub_23C6B41A0(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0xFu:
        result = sub_23C6B5A1C(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      default:
        sub_23C6B3AE8(v3, a1, a2, a3);
LABEL_23:
        result = sub_23C717008(v10, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
        if (!v4)
        {
          break;
        }

        return result;
    }
  }

  type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Template(0);
  return sub_23C870F14();
}

uint64_t sub_23C6B3AE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD708, &unk_23C889D00);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoTypeInstance(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E1FD708, &unk_23C889D00);
  v11 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E1FD708, &unk_23C889D00);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_23C716FA0(v7, v10, type metadata accessor for ToolKitProtoTypeInstance);
    sub_23C716EF0(&qword_27E1FACD8, type metadata accessor for ToolKitProtoTypeInstance, &protocol conformance descriptor for ToolKitProtoTypeInstance);
    sub_23C871304();
    return sub_23C717008(v10, type metadata accessor for ToolKitProtoTypeInstance);
  }

  result = sub_23C717008(v7, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
  __break(1u);
  return result;
}

uint64_t sub_23C6B3D1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD708, &unk_23C889D00);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoTypeInstance(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E1FD708, &unk_23C889D00);
  v11 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E1FD708, &unk_23C889D00);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_23C716FA0(v7, v10, type metadata accessor for ToolKitProtoTypeInstance);
    sub_23C716EF0(&qword_27E1FACD8, type metadata accessor for ToolKitProtoTypeInstance, &protocol conformance descriptor for ToolKitProtoTypeInstance);
    sub_23C871304();
    return sub_23C717008(v10, type metadata accessor for ToolKitProtoTypeInstance);
  }

  result = sub_23C717008(v7, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
  __break(1u);
  return result;
}

uint64_t sub_23C6B3F54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD708, &unk_23C889D00);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v15 - v10;
  sub_23C5855B0(a1, v15 - v10, &qword_27E1FD708, &unk_23C889D00);
  v12 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_23C585C34(v11, &qword_27E1FD708, &unk_23C889D00);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_23C717008(v11, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
    if (EnumCaseMultiPayload == 13)
    {
      sub_23C870E74();
      sub_23C716EF0(&qword_27E1FEBC0, MEMORY[0x277D21560], MEMORY[0x277D21558]);
      sub_23C871254();
      return (*(v6 + 8))(v8, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C6B41A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD708, &unk_23C889D00);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v15 - v10;
  sub_23C5855B0(a1, v15 - v10, &qword_27E1FD708, &unk_23C889D00);
  v12 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_23C585C34(v11, &qword_27E1FD708, &unk_23C889D00);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_23C717008(v11, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
    if (EnumCaseMultiPayload == 14)
    {
      sub_23C870E74();
      sub_23C716EF0(&qword_27E1FEBC0, MEMORY[0x277D21560], MEMORY[0x277D21558]);
      sub_23C871254();
      return (*(v6 + 8))(v8, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C6B43EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD708, &unk_23C889D00);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoTypeInstance(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E1FD708, &unk_23C889D00);
  v11 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E1FD708, &unk_23C889D00);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_23C716FA0(v7, v10, type metadata accessor for ToolKitProtoTypeInstance);
    sub_23C716EF0(&qword_27E1FACD8, type metadata accessor for ToolKitProtoTypeInstance, &protocol conformance descriptor for ToolKitProtoTypeInstance);
    sub_23C871304();
    return sub_23C717008(v10, type metadata accessor for ToolKitProtoTypeInstance);
  }

  result = sub_23C717008(v7, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
  __break(1u);
  return result;
}

uint64_t sub_23C6B4624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD708, &unk_23C889D00);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoTypeInstance(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E1FD708, &unk_23C889D00);
  v11 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E1FD708, &unk_23C889D00);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    sub_23C716FA0(v7, v10, type metadata accessor for ToolKitProtoTypeInstance);
    sub_23C716EF0(&qword_27E1FACD8, type metadata accessor for ToolKitProtoTypeInstance, &protocol conformance descriptor for ToolKitProtoTypeInstance);
    sub_23C871304();
    return sub_23C717008(v10, type metadata accessor for ToolKitProtoTypeInstance);
  }

  result = sub_23C717008(v7, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
  __break(1u);
  return result;
}

uint64_t sub_23C6B485C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD708, &unk_23C889D00);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoTypeInstance(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E1FD708, &unk_23C889D00);
  v11 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E1FD708, &unk_23C889D00);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 4)
  {
    sub_23C716FA0(v7, v10, type metadata accessor for ToolKitProtoTypeInstance);
    sub_23C716EF0(&qword_27E1FACD8, type metadata accessor for ToolKitProtoTypeInstance, &protocol conformance descriptor for ToolKitProtoTypeInstance);
    sub_23C871304();
    return sub_23C717008(v10, type metadata accessor for ToolKitProtoTypeInstance);
  }

  result = sub_23C717008(v7, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
  __break(1u);
  return result;
}

uint64_t sub_23C6B4A94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD708, &unk_23C889D00);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoTypeInstance(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E1FD708, &unk_23C889D00);
  v11 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E1FD708, &unk_23C889D00);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 5)
  {
    sub_23C716FA0(v7, v10, type metadata accessor for ToolKitProtoTypeInstance);
    sub_23C716EF0(&qword_27E1FACD8, type metadata accessor for ToolKitProtoTypeInstance, &protocol conformance descriptor for ToolKitProtoTypeInstance);
    sub_23C871304();
    return sub_23C717008(v10, type metadata accessor for ToolKitProtoTypeInstance);
  }

  result = sub_23C717008(v7, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
  __break(1u);
  return result;
}

uint64_t sub_23C6B4CCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD708, &unk_23C889D00);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoTypeInstance(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E1FD708, &unk_23C889D00);
  v11 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E1FD708, &unk_23C889D00);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 6)
  {
    sub_23C716FA0(v7, v10, type metadata accessor for ToolKitProtoTypeInstance);
    sub_23C716EF0(&qword_27E1FACD8, type metadata accessor for ToolKitProtoTypeInstance, &protocol conformance descriptor for ToolKitProtoTypeInstance);
    sub_23C871304();
    return sub_23C717008(v10, type metadata accessor for ToolKitProtoTypeInstance);
  }

  result = sub_23C717008(v7, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
  __break(1u);
  return result;
}

uint64_t sub_23C6B4F04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD708, &unk_23C889D00);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoTypeInstance(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E1FD708, &unk_23C889D00);
  v11 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E1FD708, &unk_23C889D00);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 7)
  {
    sub_23C716FA0(v7, v10, type metadata accessor for ToolKitProtoTypeInstance);
    sub_23C716EF0(&qword_27E1FACD8, type metadata accessor for ToolKitProtoTypeInstance, &protocol conformance descriptor for ToolKitProtoTypeInstance);
    sub_23C871304();
    return sub_23C717008(v10, type metadata accessor for ToolKitProtoTypeInstance);
  }

  result = sub_23C717008(v7, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
  __break(1u);
  return result;
}

uint64_t sub_23C6B513C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD708, &unk_23C889D00);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoTypeInstance(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E1FD708, &unk_23C889D00);
  v11 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E1FD708, &unk_23C889D00);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 8)
  {
    sub_23C716FA0(v7, v10, type metadata accessor for ToolKitProtoTypeInstance);
    sub_23C716EF0(&qword_27E1FACD8, type metadata accessor for ToolKitProtoTypeInstance, &protocol conformance descriptor for ToolKitProtoTypeInstance);
    sub_23C871304();
    return sub_23C717008(v10, type metadata accessor for ToolKitProtoTypeInstance);
  }

  result = sub_23C717008(v7, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
  __break(1u);
  return result;
}

uint64_t sub_23C6B5374(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD708, &unk_23C889D00);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoTypeInstance(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E1FD708, &unk_23C889D00);
  v11 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E1FD708, &unk_23C889D00);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 9)
  {
    sub_23C716FA0(v7, v10, type metadata accessor for ToolKitProtoTypeInstance);
    sub_23C716EF0(&qword_27E1FACD8, type metadata accessor for ToolKitProtoTypeInstance, &protocol conformance descriptor for ToolKitProtoTypeInstance);
    sub_23C871304();
    return sub_23C717008(v10, type metadata accessor for ToolKitProtoTypeInstance);
  }

  result = sub_23C717008(v7, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
  __break(1u);
  return result;
}

uint64_t sub_23C6B55AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD708, &unk_23C889D00);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoTypeInstance(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E1FD708, &unk_23C889D00);
  v11 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E1FD708, &unk_23C889D00);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 10)
  {
    sub_23C716FA0(v7, v10, type metadata accessor for ToolKitProtoTypeInstance);
    sub_23C716EF0(&qword_27E1FACD8, type metadata accessor for ToolKitProtoTypeInstance, &protocol conformance descriptor for ToolKitProtoTypeInstance);
    sub_23C871304();
    return sub_23C717008(v10, type metadata accessor for ToolKitProtoTypeInstance);
  }

  result = sub_23C717008(v7, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
  __break(1u);
  return result;
}

uint64_t sub_23C6B57E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD708, &unk_23C889D00);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoTypeInstance(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E1FD708, &unk_23C889D00);
  v11 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E1FD708, &unk_23C889D00);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 11)
  {
    sub_23C716FA0(v7, v10, type metadata accessor for ToolKitProtoTypeInstance);
    sub_23C716EF0(&qword_27E1FACD8, type metadata accessor for ToolKitProtoTypeInstance, &protocol conformance descriptor for ToolKitProtoTypeInstance);
    sub_23C871304();
    return sub_23C717008(v10, type metadata accessor for ToolKitProtoTypeInstance);
  }

  result = sub_23C717008(v7, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
  __break(1u);
  return result;
}

uint64_t sub_23C6B5A1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v5 = sub_23C870E84();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD708, &unk_23C889D00);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v15 - v10;
  sub_23C5855B0(a1, v15 - v10, &qword_27E1FD708, &unk_23C889D00);
  v12 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    result = sub_23C585C34(v11, &qword_27E1FD708, &unk_23C889D00);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_23C717008(v11, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
    if (EnumCaseMultiPayload == 15)
    {
      sub_23C870E74();
      sub_23C716EF0(&qword_27E1FEBC0, MEMORY[0x277D21560], MEMORY[0x277D21558]);
      sub_23C871254();
      return (*(v6 + 8))(v8, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23C6B5C68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD708, &unk_23C889D00);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoTypeInstance(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E1FD708, &unk_23C889D00);
  v11 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E1FD708, &unk_23C889D00);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 12)
  {
    sub_23C716FA0(v7, v10, type metadata accessor for ToolKitProtoTypeInstance);
    sub_23C716EF0(&qword_27E1FACD8, type metadata accessor for ToolKitProtoTypeInstance, &protocol conformance descriptor for ToolKitProtoTypeInstance);
    sub_23C871304();
    return sub_23C717008(v10, type metadata accessor for ToolKitProtoTypeInstance);
  }

  result = sub_23C717008(v7, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
  __break(1u);
  return result;
}

uint64_t sub_23C6B5F5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FE978, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Template, &protocol conformance descriptor for ToolKitProtoComparisonPredicate.Comparison.Template);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C6B5FFC(uint64_t a1)
{
  sub_23C716EF0(&qword_27E1FDFE8, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Template, &protocol conformance descriptor for ToolKitProtoComparisonPredicate.Comparison.Template);

  return sub_23C8711F4();
}

uint64_t sub_23C6B6068(uint64_t a1, uint64_t a2)
{
  sub_23C716EF0(&qword_27E1FDFE8, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Template, &protocol conformance descriptor for ToolKitProtoComparisonPredicate.Comparison.Template);

  return sub_23C871204();
}

uint64_t sub_23C6B6110(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  result = MEMORY[0x23EED7100](a2, a3);
  *a4 = 0xD00000000000001BLL;
  *a5 = 0x800000023C8AD080;
  return result;
}

uint64_t sub_23C6B61A4()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FC9B0);
  __swift_project_value_buffer(v0, qword_27E1FC9B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873CF0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "property";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "comparisonTemplate";
  *(v10 + 8) = 18;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "rawGroupId";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "contentItemClass";
  *(v14 + 1) = 16;
  v14[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C6B6478(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t), void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t), void (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v11 = v6;
  while (1)
  {
    result = sub_23C871044();
    if (v7 || (v16 & 1) != 0)
    {
      break;
    }

    if (result > 2)
    {
      if (result == 3)
      {
        sub_23C871164();
      }

      else if (result == 4)
      {
        a6(a1, v11, a2, a3);
      }
    }

    else if (result == 1)
    {
      a4(a1, v11, a2, a3);
    }

    else if (result == 2)
    {
      a5(a1, v11, a2, a3);
    }
  }

  return result;
}

uint64_t sub_23C6B6580(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoComparisonPredicate.Template(0);
  type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property(0);
  sub_23C716EF0(&qword_27E1FD4F0, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property, &protocol conformance descriptor for ToolKitProtoTypeDefinition.Version1.Entity.Property);
  return sub_23C8711A4();
}

uint64_t sub_23C6B6634(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoComparisonPredicate.Template(0);
  type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Template(0);
  sub_23C716EF0(&qword_27E1FDFE8, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Template, &protocol conformance descriptor for ToolKitProtoComparisonPredicate.Comparison.Template);
  return sub_23C8711A4();
}

uint64_t sub_23C6B66E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoComparisonPredicate.Template(0);
  type metadata accessor for ToolKitProtoContentItemClassDescriptor(0);
  sub_23C716EF0(&qword_27E1FDF60, type metadata accessor for ToolKitProtoContentItemClassDescriptor, &protocol conformance descriptor for ToolKitProtoContentItemClassDescriptor);
  return sub_23C8711A4();
}

uint64_t sub_23C6B6804(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, uint64_t, uint64_t), void (*a5)(void *, uint64_t, uint64_t, uint64_t), void (*a6)(void *, uint64_t, uint64_t, uint64_t), void (*a7)(void))
{
  result = a4(v7, a1, a2, a3);
  if (!v8)
  {
    a5(v7, a1, a2, a3);
    v16 = v7[1];
    v17 = HIBYTE(v16) & 0xF;
    if ((v16 & 0x2000000000000000) == 0)
    {
      v17 = *v7 & 0xFFFFFFFFFFFFLL;
    }

    if (v17)
    {
      sub_23C8712C4();
    }

    a6(v7, a1, a2, a3);
    a7(0);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C6B690C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FED80, &qword_23C8899B8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ToolKitProtoComparisonPredicate.Template(0);
  sub_23C5855B0(a1 + *(v12 + 20), v7, &qword_27E1FED80, &qword_23C8899B8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_23C585C34(v7, &qword_27E1FED80, &qword_23C8899B8);
  }

  sub_23C716FA0(v7, v11, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property);
  sub_23C716EF0(&qword_27E1FD4F0, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property, &protocol conformance descriptor for ToolKitProtoTypeDefinition.Version1.Entity.Property);
  sub_23C871304();
  return sub_23C717008(v11, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property);
}

uint64_t sub_23C6B6B28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FED70, &qword_23C8899A8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Template(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ToolKitProtoComparisonPredicate.Template(0);
  sub_23C5855B0(a1 + *(v12 + 24), v7, &qword_27E1FED70, &qword_23C8899A8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_23C585C34(v7, &qword_27E1FED70, &qword_23C8899A8);
  }

  sub_23C716FA0(v7, v11, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Template);
  sub_23C716EF0(&qword_27E1FDFE8, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Template, &protocol conformance descriptor for ToolKitProtoComparisonPredicate.Comparison.Template);
  sub_23C871304();
  return sub_23C717008(v11, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Template);
}

uint64_t sub_23C6B6D44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FED60, &qword_23C889998);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoContentItemClassDescriptor(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ToolKitProtoComparisonPredicate.Template(0);
  sub_23C5855B0(a1 + *(v12 + 28), v7, &qword_27E1FED60, &qword_23C889998);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_23C585C34(v7, &qword_27E1FED60, &qword_23C889998);
  }

  sub_23C716FA0(v7, v11, type metadata accessor for ToolKitProtoContentItemClassDescriptor);
  sub_23C716EF0(&qword_27E1FDF60, type metadata accessor for ToolKitProtoContentItemClassDescriptor, &protocol conformance descriptor for ToolKitProtoContentItemClassDescriptor);
  sub_23C871304();
  return sub_23C717008(v11, type metadata accessor for ToolKitProtoContentItemClassDescriptor);
}

uint64_t sub_23C6B6FC4@<X0>(int *a1@<X0>, uint64_t (*a2)(void)@<X2>, char *a3@<X8>)
{
  v6 = a1[5];
  v7 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property(0);
  (*(*(v7 - 8) + 56))(&a3[v6], 1, 1, v7);
  v8 = a1[6];
  v9 = a2(0);
  (*(*(v9 - 8) + 56))(&a3[v8], 1, 1, v9);
  v10 = a1[7];
  v11 = type metadata accessor for ToolKitProtoContentItemClassDescriptor(0);
  (*(*(v11 - 8) + 56))(&a3[v10], 1, 1, v11);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a3 = 0;
  *(a3 + 1) = 0xE000000000000000;
  return result;
}

uint64_t sub_23C6B7130(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FE970, type metadata accessor for ToolKitProtoComparisonPredicate.Template, &protocol conformance descriptor for ToolKitProtoComparisonPredicate.Template);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C6B71D0(uint64_t a1)
{
  sub_23C716EF0(&qword_27E1FD558, type metadata accessor for ToolKitProtoComparisonPredicate.Template, &protocol conformance descriptor for ToolKitProtoComparisonPredicate.Template);

  return sub_23C8711F4();
}

uint64_t sub_23C6B723C(uint64_t a1, uint64_t a2)
{
  sub_23C716EF0(&qword_27E1FD558, type metadata accessor for ToolKitProtoComparisonPredicate.Template, &protocol conformance descriptor for ToolKitProtoComparisonPredicate.Template);

  return sub_23C871204();
}

uint64_t sub_23C6B72D8()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FC9C8);
  __swift_project_value_buffer(v0, qword_27E1FC9C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "operator";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "operands";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t ToolKitProtoCompoundPredicate.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_23C871044();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        sub_23C70C1F4();
        sub_23C8710A4();
      }

      else if (result == 2)
      {
        type metadata accessor for ToolKitProtoComparisonPredicate(0);
        sub_23C716EF0(&qword_27E1FD728, type metadata accessor for ToolKitProtoComparisonPredicate, &protocol conformance descriptor for ToolKitProtoComparisonPredicate);
        sub_23C871194();
      }

      result = sub_23C871044();
    }
  }

  return result;
}

uint64_t ToolKitProtoCompoundPredicate.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (sub_23C70C1F4(), result = sub_23C871254(), !v4))
  {
    if (!*(*(v3 + 8) + 16) || (type metadata accessor for ToolKitProtoComparisonPredicate(0), sub_23C716EF0(&qword_27E1FD728, type metadata accessor for ToolKitProtoComparisonPredicate, &protocol conformance descriptor for ToolKitProtoComparisonPredicate), result = sub_23C8712F4(), !v4))
    {
      type metadata accessor for ToolKitProtoCompoundPredicate(0);
      return sub_23C870F14();
    }
  }

  return result;
}

uint64_t static ToolKitProtoCompoundPredicate.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2 || (sub_23C5DC0E8(*(a1 + 1), *(a2 + 1)) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for ToolKitProtoCompoundPredicate(0);
  sub_23C870F34();
  sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_23C871754() & 1;
}

uint64_t sub_23C6B7818@<X0>(uint64_t a2@<X8>)
{
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a2 = 0;
  *(a2 + 8) = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_23C6B78A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FE968, type metadata accessor for ToolKitProtoCompoundPredicate, &protocol conformance descriptor for ToolKitProtoCompoundPredicate);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C6B7940(uint64_t a1)
{
  sub_23C716EF0(&qword_27E1FE010, type metadata accessor for ToolKitProtoCompoundPredicate, &protocol conformance descriptor for ToolKitProtoCompoundPredicate);

  return sub_23C8711F4();
}

uint64_t sub_23C6B79AC(uint64_t a1, uint64_t a2)
{
  sub_23C716EF0(&qword_27E1FE010, type metadata accessor for ToolKitProtoCompoundPredicate, &protocol conformance descriptor for ToolKitProtoCompoundPredicate);

  return sub_23C871204();
}

uint64_t sub_23C6B7A28(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (*a1 != *a2 || (sub_23C5DC0E8(*(a1 + 1), *(a2 + 1)) & 1) == 0)
  {
    return 0;
  }

  sub_23C870F34();
  sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_23C871754() & 1;
}

uint64_t sub_23C6B7AE0()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FC9E0);
  __swift_project_value_buffer(v0, qword_27E1FC9E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C875050;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "Operator_UNSPECIFIED";
  *(v6 + 8) = 20;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "Operator_AND";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "Operator_OR";
  *(v11 + 8) = 11;
  *(v11 + 16) = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C6B7E08(uint64_t *a1, void *a2, uint64_t (*a3)(void))
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_23C872014() & 1) == 0)
  {
    return 0;
  }

  a3(0);
  sub_23C870F34();
  sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_23C871754() & 1;
}

uint64_t sub_23C6B7F4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FE960, type metadata accessor for ToolKitProtoStringSearchPredicate, &protocol conformance descriptor for ToolKitProtoStringSearchPredicate);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C6B7FEC(uint64_t a1)
{
  sub_23C716EF0(&qword_27E1FE038, type metadata accessor for ToolKitProtoStringSearchPredicate, &protocol conformance descriptor for ToolKitProtoStringSearchPredicate);

  return sub_23C8711F4();
}

uint64_t sub_23C6B8058(uint64_t a1, uint64_t a2)
{
  sub_23C716EF0(&qword_27E1FE038, type metadata accessor for ToolKitProtoStringSearchPredicate, &protocol conformance descriptor for ToolKitProtoStringSearchPredicate);

  return sub_23C871204();
}

uint64_t sub_23C6B80D4(uint64_t *a1, void *a2, uint64_t a3)
{
  v3 = *a1 == *a2 && a1[1] == a2[1];
  if (!v3 && (sub_23C872014() & 1) == 0)
  {
    return 0;
  }

  sub_23C870F34();
  sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_23C871754() & 1;
}

uint64_t sub_23C6B8190()
{
  result = MEMORY[0x23EED7100](0x74616C706D65542ELL, 0xE900000000000065);
  qword_27E1FCA10 = 0xD00000000000001DLL;
  *algn_27E1FCA18 = 0x800000023C8AD0C0;
  return result;
}

uint64_t _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  sub_23C870F34();
  sub_23C716EF0(&qword_27E1FA448, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_23C871754() & 1;
}

uint64_t sub_23C6B8364(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FE958, type metadata accessor for ToolKitProtoStringSearchPredicate.Template, &protocol conformance descriptor for ToolKitProtoStringSearchPredicate.Template);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C6B8404(uint64_t a1)
{
  sub_23C716EF0(&qword_27E1FE050, type metadata accessor for ToolKitProtoStringSearchPredicate.Template, &protocol conformance descriptor for ToolKitProtoStringSearchPredicate.Template);

  return sub_23C8711F4();
}

uint64_t sub_23C6B8470(uint64_t a1, uint64_t a2)
{
  sub_23C716EF0(&qword_27E1FE050, type metadata accessor for ToolKitProtoStringSearchPredicate.Template, &protocol conformance descriptor for ToolKitProtoStringSearchPredicate.Template);

  return sub_23C871204();
}

uint64_t sub_23C6B8620(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FE950, type metadata accessor for ToolKitProtoIdSearchPredicate, &protocol conformance descriptor for ToolKitProtoIdSearchPredicate);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C6B86C0(uint64_t a1)
{
  sub_23C716EF0(&qword_27E1FE068, type metadata accessor for ToolKitProtoIdSearchPredicate, &protocol conformance descriptor for ToolKitProtoIdSearchPredicate);

  return sub_23C8711F4();
}

uint64_t sub_23C6B872C(uint64_t a1, uint64_t a2)
{
  sub_23C716EF0(&qword_27E1FE068, type metadata accessor for ToolKitProtoIdSearchPredicate, &protocol conformance descriptor for ToolKitProtoIdSearchPredicate);

  return sub_23C871204();
}

uint64_t sub_23C6B87A8()
{
  result = MEMORY[0x23EED7100](0x74616C706D65542ELL, 0xE900000000000065);
  qword_27E1FCA50 = 0xD000000000000019;
  *algn_27E1FCA58 = 0x800000023C8AD0E0;
  return result;
}

uint64_t sub_23C6B88F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FE948, type metadata accessor for ToolKitProtoIdSearchPredicate.Template, "\třEęjH");

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C6B8994(uint64_t a1)
{
  sub_23C716EF0(&qword_27E1FE080, type metadata accessor for ToolKitProtoIdSearchPredicate.Template, &protocol conformance descriptor for ToolKitProtoIdSearchPredicate.Template);

  return sub_23C8711F4();
}

uint64_t sub_23C6B8A00(uint64_t a1, uint64_t a2)
{
  sub_23C716EF0(&qword_27E1FE080, type metadata accessor for ToolKitProtoIdSearchPredicate.Template, &protocol conformance descriptor for ToolKitProtoIdSearchPredicate.Template);

  return sub_23C871204();
}

uint64_t sub_23C6B8BAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FE940, type metadata accessor for ToolKitProtoSearchableItemPredicate, &protocol conformance descriptor for ToolKitProtoSearchableItemPredicate);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C6B8C4C(uint64_t a1)
{
  sub_23C716EF0(&qword_27E1FE098, type metadata accessor for ToolKitProtoSearchableItemPredicate, "IƙEܘjH");

  return sub_23C8711F4();
}

uint64_t sub_23C6B8CB8(uint64_t a1, uint64_t a2)
{
  sub_23C716EF0(&qword_27E1FE098, type metadata accessor for ToolKitProtoSearchableItemPredicate, "IƙEܘjH");

  return sub_23C871204();
}

uint64_t sub_23C6B8D34()
{
  result = MEMORY[0x23EED7100](0x74616C706D65542ELL, 0xE900000000000065);
  qword_27E1FCA90 = 0xD00000000000001FLL;
  *algn_27E1FCA98 = 0x800000023C8AD100;
  return result;
}

uint64_t sub_23C6B8E80(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FE938, type metadata accessor for ToolKitProtoSearchableItemPredicate.Template, &protocol conformance descriptor for ToolKitProtoSearchableItemPredicate.Template);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C6B8F20(uint64_t a1)
{
  sub_23C716EF0(&qword_27E1FE0B0, type metadata accessor for ToolKitProtoSearchableItemPredicate.Template, &protocol conformance descriptor for ToolKitProtoSearchableItemPredicate.Template);

  return sub_23C8711F4();
}

uint64_t sub_23C6B8F8C(uint64_t a1, uint64_t a2)
{
  sub_23C716EF0(&qword_27E1FE0B0, type metadata accessor for ToolKitProtoSearchableItemPredicate.Template, &protocol conformance descriptor for ToolKitProtoSearchableItemPredicate.Template);

  return sub_23C871204();
}

uint64_t sub_23C6B90CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FE930, type metadata accessor for ToolKitProtoAllPredicate, &protocol conformance descriptor for ToolKitProtoAllPredicate);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C6B916C(uint64_t a1)
{
  sub_23C716EF0(&qword_27E1FE0C8, type metadata accessor for ToolKitProtoAllPredicate, &protocol conformance descriptor for ToolKitProtoAllPredicate);

  return sub_23C8711F4();
}

uint64_t sub_23C6B91D8(uint64_t a1, uint64_t a2)
{
  sub_23C716EF0(&qword_27E1FE0C8, type metadata accessor for ToolKitProtoAllPredicate, &protocol conformance descriptor for ToolKitProtoAllPredicate);

  return sub_23C871204();
}

uint64_t sub_23C6B9318(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FE928, type metadata accessor for ToolKitProtoValidPredicate, &protocol conformance descriptor for ToolKitProtoValidPredicate);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C6B93B8(uint64_t a1)
{
  sub_23C716EF0(&qword_27E1FE0E0, type metadata accessor for ToolKitProtoValidPredicate, &protocol conformance descriptor for ToolKitProtoValidPredicate);

  return sub_23C8711F4();
}

uint64_t sub_23C6B9424(uint64_t a1, uint64_t a2)
{
  sub_23C716EF0(&qword_27E1FE0E0, type metadata accessor for ToolKitProtoValidPredicate, &protocol conformance descriptor for ToolKitProtoValidPredicate);

  return sub_23C871204();
}

uint64_t sub_23C6B9564(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FE920, type metadata accessor for ToolKitProtoSuggestedPredicate, &protocol conformance descriptor for ToolKitProtoSuggestedPredicate);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C6B9604(uint64_t a1)
{
  sub_23C716EF0(&qword_27E1FE0F8, type metadata accessor for ToolKitProtoSuggestedPredicate, &protocol conformance descriptor for ToolKitProtoSuggestedPredicate);

  return sub_23C8711F4();
}

uint64_t sub_23C6B9670(uint64_t a1, uint64_t a2)
{
  sub_23C716EF0(&qword_27E1FE0F8, type metadata accessor for ToolKitProtoSuggestedPredicate, &protocol conformance descriptor for ToolKitProtoSuggestedPredicate);

  return sub_23C871204();
}

uint64_t sub_23C6B9710()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FCB00);
  __swift_project_value_buffer(v0, qword_27E1FCB00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C875050;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "predicate";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "sort";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "limit";
  *(v11 + 8) = 5;
  *(v11 + 16) = 2;
  v9();
  return sub_23C871324();
}

uint64_t ToolKitProtoQuery.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_23C871044();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          type metadata accessor for ToolKitProtoQuery(0);
          sub_23C871104();
          break;
        case 2:
          sub_23C70C248();
          sub_23C8710A4();
          break;
        case 1:
          sub_23C6B9A58(a1, v5, a2, a3);
          break;
      }

      result = sub_23C871044();
    }
  }

  return result;
}

uint64_t sub_23C6B9A58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoQuery(0);
  type metadata accessor for ToolKitProtoQuery.AnyPredicate(0);
  sub_23C716EF0(&qword_27E1FE138, type metadata accessor for ToolKitProtoQuery.AnyPredicate, &protocol conformance descriptor for ToolKitProtoQuery.AnyPredicate);
  return sub_23C8711A4();
}

uint64_t ToolKitProtoQuery.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_23C6B9C00(v3, a1, a2, a3);
  if (!v4)
  {
    if (*v3)
    {
      sub_23C70C248();
      sub_23C871254();
    }

    sub_23C6B9E1C(v3, a1, a2, a3, type metadata accessor for ToolKitProtoQuery);
    type metadata accessor for ToolKitProtoQuery(0);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C6B9C00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FED50, &unk_23C889D10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoQuery.AnyPredicate(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ToolKitProtoQuery(0);
  sub_23C5855B0(a1 + *(v12 + 20), v7, &qword_27E1FED50, &unk_23C889D10);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_23C585C34(v7, &qword_27E1FED50, &unk_23C889D10);
  }

  sub_23C716FA0(v7, v11, type metadata accessor for ToolKitProtoQuery.AnyPredicate);
  sub_23C716EF0(&qword_27E1FE138, type metadata accessor for ToolKitProtoQuery.AnyPredicate, &protocol conformance descriptor for ToolKitProtoQuery.AnyPredicate);
  sub_23C871304();
  return sub_23C717008(v11, type metadata accessor for ToolKitProtoQuery.AnyPredicate);
}

uint64_t sub_23C6B9E1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  if ((*(a1 + *(result + 24) + 8) & 1) == 0)
  {
    return sub_23C871294();
  }

  return result;
}

uint64_t sub_23C6B9EE4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = type metadata accessor for ToolKitProtoQuery.AnyPredicate(0);
  (*(*(v5 - 8) + 56))(&a2[v4], 1, 1, v5);
  v6 = &a2[*(a1 + 24)];
  *v6 = 0;
  v6[8] = 1;
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a2 = 0;
  return result;
}

uint64_t sub_23C6B9FC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FE918, type metadata accessor for ToolKitProtoQuery, &protocol conformance descriptor for ToolKitProtoQuery);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C6BA068(uint64_t a1)
{
  sub_23C716EF0(&qword_27E1FE110, type metadata accessor for ToolKitProtoQuery, &protocol conformance descriptor for ToolKitProtoQuery);

  return sub_23C8711F4();
}

uint64_t sub_23C6BA0D4(uint64_t a1, uint64_t a2)
{
  sub_23C716EF0(&qword_27E1FE110, type metadata accessor for ToolKitProtoQuery, &protocol conformance descriptor for ToolKitProtoQuery);

  return sub_23C871204();
}

uint64_t sub_23C6BA154()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FCB18);
  __swift_project_value_buffer(v0, qword_27E1FCB18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C875050;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "SortOrder_UNSPECIFIED";
  *(v6 + 8) = 21;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "SortOrder_FORWARD";
  *(v10 + 1) = 17;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "SortOrder_REVERSE";
  *(v11 + 8) = 17;
  *(v11 + 16) = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C6BA3C0()
{
  strcpy(v1, "ToolKit.Query");
  HIWORD(v1[1]) = -4864;
  result = MEMORY[0x23EED7100](0x64657250796E412ELL, 0xED00006574616369);
  qword_27E1FCB30 = v1[0];
  *algn_27E1FCB38 = v1[1];
  return result;
}

uint64_t sub_23C6BA468()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FCB40);
  __swift_project_value_buffer(v0, qword_27E1FCB40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_23C87D6F0;
  v4 = v23 + v3;
  v5 = v23 + v3 + v1[14];
  *(v23 + v3) = 1;
  *v5 = "comparison";
  *(v5 + 8) = 10;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_23C871314();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "compound";
  *(v9 + 8) = 8;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "stringSearch";
  *(v11 + 1) = 12;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "idSearch";
  *(v13 + 1) = 8;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "all";
  *(v15 + 1) = 3;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "suggested";
  *(v17 + 1) = 9;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "searchableItem";
  *(v19 + 1) = 14;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "valid";
  *(v21 + 1) = 5;
  v21[16] = 2;
  v8();
  return sub_23C871324();
}

uint64_t ToolKitProtoQuery.AnyPredicate.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_23C871044();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result > 4)
    {
      if (result > 6)
      {
        if (result == 7)
        {
          sub_23C6BCBC8(v5, a1, a2, a3);
        }

        else if (result == 8)
        {
          sub_23C6BD184(v5, a1, a2, a3);
        }
      }

      else if (result == 5)
      {
        sub_23C6BC050(v5, a1, a2, a3);
      }

      else
      {
        sub_23C6BC60C(v5, a1, a2, a3);
      }
    }

    else if (result > 2)
    {
      if (result == 3)
      {
        sub_23C6BB4D8(v5, a1, a2, a3);
      }

      else
      {
        sub_23C6BBA94(v5, a1, a2, a3);
      }
    }

    else if (result == 1)
    {
      sub_23C6BA96C(v5, a1, a2, a3);
    }

    else if (result == 2)
    {
      sub_23C6BAF1C(v5, a1, a2, a3);
    }
  }

  return result;
}

uint64_t sub_23C6BA96C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for ToolKitProtoComparisonPredicate(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v40 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v39 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD790, &qword_23C87D750);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FED10, &qword_23C889960);
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
  sub_23C5855B0(a1, v12, &qword_27E1FD790, &qword_23C87D750);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E1FD790, &qword_23C87D750);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C716FA0(v12, v19, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
    sub_23C716FA0(v19, v17, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload())
    {
      sub_23C717008(v17, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
      v29 = v44;
    }

    else
    {
      sub_23C585C34(v24, &qword_27E1FED10, &qword_23C889960);
      v31 = v39;
      sub_23C716FA0(v17, v39, type metadata accessor for ToolKitProtoComparisonPredicate);
      sub_23C716FA0(v31, v24, type metadata accessor for ToolKitProtoComparisonPredicate);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }
  }

  v32 = v42;
  sub_23C716EF0(&qword_27E1FD728, type metadata accessor for ToolKitProtoComparisonPredicate, &protocol conformance descriptor for ToolKitProtoComparisonPredicate);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E1FED10, &qword_23C889960);
  }

  sub_23C5855B0(v24, v32, &qword_27E1FED10, &qword_23C889960);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E1FED10, &qword_23C889960);
    return sub_23C585C34(v32, &qword_27E1FED10, &qword_23C889960);
  }

  else
  {
    v35 = v40;
    sub_23C716FA0(v32, v40, type metadata accessor for ToolKitProtoComparisonPredicate);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E1FED10, &qword_23C889960);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E1FD790, &qword_23C87D750);
    sub_23C716FA0(v35, v36, type metadata accessor for ToolKitProtoComparisonPredicate);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_23C6BAF1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for ToolKitProtoCompoundPredicate(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD790, &qword_23C87D750);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FED18, &qword_23C889968);
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
  sub_23C5855B0(a1, v12, &qword_27E1FD790, &qword_23C87D750);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E1FD790, &qword_23C87D750);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C716FA0(v12, v19, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
    sub_23C716FA0(v19, v17, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_23C585C34(v24, &qword_27E1FED18, &qword_23C889968);
      v31 = v40;
      sub_23C716FA0(v17, v40, type metadata accessor for ToolKitProtoCompoundPredicate);
      sub_23C716FA0(v31, v24, type metadata accessor for ToolKitProtoCompoundPredicate);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_23C717008(v17, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_23C716EF0(&qword_27E1FE010, type metadata accessor for ToolKitProtoCompoundPredicate, &protocol conformance descriptor for ToolKitProtoCompoundPredicate);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E1FED18, &qword_23C889968);
  }

  sub_23C5855B0(v24, v32, &qword_27E1FED18, &qword_23C889968);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E1FED18, &qword_23C889968);
    return sub_23C585C34(v32, &qword_27E1FED18, &qword_23C889968);
  }

  else
  {
    v35 = v39;
    sub_23C716FA0(v32, v39, type metadata accessor for ToolKitProtoCompoundPredicate);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E1FED18, &qword_23C889968);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E1FD790, &qword_23C87D750);
    sub_23C716FA0(v35, v36, type metadata accessor for ToolKitProtoCompoundPredicate);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_23C6BB4D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for ToolKitProtoStringSearchPredicate(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD790, &qword_23C87D750);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FED20, &qword_23C889970);
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
  sub_23C5855B0(a1, v12, &qword_27E1FD790, &qword_23C87D750);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E1FD790, &qword_23C87D750);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C716FA0(v12, v19, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
    sub_23C716FA0(v19, v17, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_23C585C34(v24, &qword_27E1FED20, &qword_23C889970);
      v31 = v40;
      sub_23C716FA0(v17, v40, type metadata accessor for ToolKitProtoStringSearchPredicate);
      sub_23C716FA0(v31, v24, type metadata accessor for ToolKitProtoStringSearchPredicate);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_23C717008(v17, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_23C716EF0(&qword_27E1FE038, type metadata accessor for ToolKitProtoStringSearchPredicate, &protocol conformance descriptor for ToolKitProtoStringSearchPredicate);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E1FED20, &qword_23C889970);
  }

  sub_23C5855B0(v24, v32, &qword_27E1FED20, &qword_23C889970);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E1FED20, &qword_23C889970);
    return sub_23C585C34(v32, &qword_27E1FED20, &qword_23C889970);
  }

  else
  {
    v35 = v39;
    sub_23C716FA0(v32, v39, type metadata accessor for ToolKitProtoStringSearchPredicate);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E1FED20, &qword_23C889970);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E1FD790, &qword_23C87D750);
    sub_23C716FA0(v35, v36, type metadata accessor for ToolKitProtoStringSearchPredicate);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_23C6BBA94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for ToolKitProtoIdSearchPredicate(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD790, &qword_23C87D750);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FED28, &qword_23C889978);
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
  sub_23C5855B0(a1, v12, &qword_27E1FD790, &qword_23C87D750);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E1FD790, &qword_23C87D750);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C716FA0(v12, v19, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
    sub_23C716FA0(v19, v17, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_23C585C34(v24, &qword_27E1FED28, &qword_23C889978);
      v31 = v40;
      sub_23C716FA0(v17, v40, type metadata accessor for ToolKitProtoIdSearchPredicate);
      sub_23C716FA0(v31, v24, type metadata accessor for ToolKitProtoIdSearchPredicate);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_23C717008(v17, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_23C716EF0(&qword_27E1FE068, type metadata accessor for ToolKitProtoIdSearchPredicate, &protocol conformance descriptor for ToolKitProtoIdSearchPredicate);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E1FED28, &qword_23C889978);
  }

  sub_23C5855B0(v24, v32, &qword_27E1FED28, &qword_23C889978);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E1FED28, &qword_23C889978);
    return sub_23C585C34(v32, &qword_27E1FED28, &qword_23C889978);
  }

  else
  {
    v35 = v39;
    sub_23C716FA0(v32, v39, type metadata accessor for ToolKitProtoIdSearchPredicate);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E1FED28, &qword_23C889978);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E1FD790, &qword_23C87D750);
    sub_23C716FA0(v35, v36, type metadata accessor for ToolKitProtoIdSearchPredicate);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_23C6BC050(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for ToolKitProtoAllPredicate(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD790, &qword_23C87D750);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FED30, &qword_23C889980);
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
  sub_23C5855B0(a1, v12, &qword_27E1FD790, &qword_23C87D750);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E1FD790, &qword_23C87D750);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C716FA0(v12, v19, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
    sub_23C716FA0(v19, v17, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_23C585C34(v24, &qword_27E1FED30, &qword_23C889980);
      v31 = v40;
      sub_23C716FA0(v17, v40, type metadata accessor for ToolKitProtoAllPredicate);
      sub_23C716FA0(v31, v24, type metadata accessor for ToolKitProtoAllPredicate);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_23C717008(v17, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_23C716EF0(&qword_27E1FE0C8, type metadata accessor for ToolKitProtoAllPredicate, &protocol conformance descriptor for ToolKitProtoAllPredicate);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E1FED30, &qword_23C889980);
  }

  sub_23C5855B0(v24, v32, &qword_27E1FED30, &qword_23C889980);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E1FED30, &qword_23C889980);
    return sub_23C585C34(v32, &qword_27E1FED30, &qword_23C889980);
  }

  else
  {
    v35 = v39;
    sub_23C716FA0(v32, v39, type metadata accessor for ToolKitProtoAllPredicate);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E1FED30, &qword_23C889980);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E1FD790, &qword_23C87D750);
    sub_23C716FA0(v35, v36, type metadata accessor for ToolKitProtoAllPredicate);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_23C6BC60C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for ToolKitProtoSuggestedPredicate(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD790, &qword_23C87D750);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FED38, &unk_23C889C80);
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
  sub_23C5855B0(a1, v12, &qword_27E1FD790, &qword_23C87D750);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E1FD790, &qword_23C87D750);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C716FA0(v12, v19, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
    sub_23C716FA0(v19, v17, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_23C585C34(v24, &qword_27E1FED38, &unk_23C889C80);
      v31 = v40;
      sub_23C716FA0(v17, v40, type metadata accessor for ToolKitProtoSuggestedPredicate);
      sub_23C716FA0(v31, v24, type metadata accessor for ToolKitProtoSuggestedPredicate);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_23C717008(v17, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_23C716EF0(&qword_27E1FE0F8, type metadata accessor for ToolKitProtoSuggestedPredicate, &protocol conformance descriptor for ToolKitProtoSuggestedPredicate);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E1FED38, &unk_23C889C80);
  }

  sub_23C5855B0(v24, v32, &qword_27E1FED38, &unk_23C889C80);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E1FED38, &unk_23C889C80);
    return sub_23C585C34(v32, &qword_27E1FED38, &unk_23C889C80);
  }

  else
  {
    v35 = v39;
    sub_23C716FA0(v32, v39, type metadata accessor for ToolKitProtoSuggestedPredicate);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E1FED38, &unk_23C889C80);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E1FD790, &qword_23C87D750);
    sub_23C716FA0(v35, v36, type metadata accessor for ToolKitProtoSuggestedPredicate);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_23C6BCBC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for ToolKitProtoSearchableItemPredicate(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD790, &qword_23C87D750);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FED40, &qword_23C889988);
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
  sub_23C5855B0(a1, v12, &qword_27E1FD790, &qword_23C87D750);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E1FD790, &qword_23C87D750);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C716FA0(v12, v19, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
    sub_23C716FA0(v19, v17, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_23C585C34(v24, &qword_27E1FED40, &qword_23C889988);
      v31 = v40;
      sub_23C716FA0(v17, v40, type metadata accessor for ToolKitProtoSearchableItemPredicate);
      sub_23C716FA0(v31, v24, type metadata accessor for ToolKitProtoSearchableItemPredicate);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_23C717008(v17, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_23C716EF0(&qword_27E1FE098, type metadata accessor for ToolKitProtoSearchableItemPredicate, "IƙEܘjH");
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E1FED40, &qword_23C889988);
  }

  sub_23C5855B0(v24, v32, &qword_27E1FED40, &qword_23C889988);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E1FED40, &qword_23C889988);
    return sub_23C585C34(v32, &qword_27E1FED40, &qword_23C889988);
  }

  else
  {
    v35 = v39;
    sub_23C716FA0(v32, v39, type metadata accessor for ToolKitProtoSearchableItemPredicate);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E1FED40, &qword_23C889988);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E1FD790, &qword_23C87D750);
    sub_23C716FA0(v35, v36, type metadata accessor for ToolKitProtoSearchableItemPredicate);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_23C6BD184(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  valid = type metadata accessor for ToolKitProtoValidPredicate(0);
  v6 = *(valid - 8);
  v7 = MEMORY[0x28223BE20](valid);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD790, &qword_23C87D750);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FED48, &unk_23C889C90);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = valid;
  v26 = valid;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_23C5855B0(a1, v12, &qword_27E1FD790, &qword_23C87D750);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E1FD790, &qword_23C87D750);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C716FA0(v12, v19, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
    sub_23C716FA0(v19, v17, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      sub_23C585C34(v24, &qword_27E1FED48, &unk_23C889C90);
      v31 = v40;
      sub_23C716FA0(v17, v40, type metadata accessor for ToolKitProtoValidPredicate);
      sub_23C716FA0(v31, v24, type metadata accessor for ToolKitProtoValidPredicate);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_23C717008(v17, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_23C716EF0(&qword_27E1FE0E0, type metadata accessor for ToolKitProtoValidPredicate, &protocol conformance descriptor for ToolKitProtoValidPredicate);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E1FED48, &unk_23C889C90);
  }

  sub_23C5855B0(v24, v32, &qword_27E1FED48, &unk_23C889C90);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E1FED48, &unk_23C889C90);
    return sub_23C585C34(v32, &qword_27E1FED48, &unk_23C889C90);
  }

  else
  {
    v35 = v39;
    sub_23C716FA0(v32, v39, type metadata accessor for ToolKitProtoValidPredicate);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E1FED48, &unk_23C889C90);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E1FD790, &qword_23C87D750);
    sub_23C716FA0(v35, v36, type metadata accessor for ToolKitProtoValidPredicate);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t ToolKitProtoQuery.AnyPredicate.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD790, &qword_23C87D750);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v14 - v9;
  sub_23C5855B0(v3, &v14 - v9, &qword_27E1FD790, &qword_23C87D750);
  v11 = type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind(0);
  if ((*(*(v11 - 8) + 48))(v10, 1, v11) == 1)
  {
    goto LABEL_18;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        sub_23C6BE6F0(v3, a1, a2, a3);
      }

      else
      {
        sub_23C6BE928(v3, a1, a2, a3);
      }
    }

    else if (EnumCaseMultiPayload == 4)
    {
      sub_23C6BE280(v3, a1, a2, a3);
    }

    else
    {
      sub_23C6BE4B8(v3, a1, a2, a3);
    }
  }

  else if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_23C6BDE10(v3, a1, a2, a3);
    }

    else
    {
      sub_23C6BE048(v3, a1, a2, a3);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    sub_23C6BDBD8(v3, a1, a2, a3);
  }

  else
  {
    sub_23C6BD9A4(v3, a1, a2, a3);
  }

  result = sub_23C717008(v10, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
  if (!v4)
  {
LABEL_18:
    type metadata accessor for ToolKitProtoQuery.AnyPredicate(0);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C6BD9A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD790, &qword_23C87D750);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoComparisonPredicate(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E1FD790, &qword_23C87D750);
  v11 = type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E1FD790, &qword_23C87D750);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_23C716FA0(v7, v10, type metadata accessor for ToolKitProtoComparisonPredicate);
    sub_23C716EF0(&qword_27E1FD728, type metadata accessor for ToolKitProtoComparisonPredicate, &protocol conformance descriptor for ToolKitProtoComparisonPredicate);
    sub_23C871304();
    return sub_23C717008(v10, type metadata accessor for ToolKitProtoComparisonPredicate);
  }

  result = sub_23C717008(v7, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
  __break(1u);
  return result;
}

uint64_t sub_23C6BDBD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD790, &qword_23C87D750);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoCompoundPredicate(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E1FD790, &qword_23C87D750);
  v11 = type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E1FD790, &qword_23C87D750);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_23C716FA0(v7, v10, type metadata accessor for ToolKitProtoCompoundPredicate);
    sub_23C716EF0(&qword_27E1FE010, type metadata accessor for ToolKitProtoCompoundPredicate, &protocol conformance descriptor for ToolKitProtoCompoundPredicate);
    sub_23C871304();
    return sub_23C717008(v10, type metadata accessor for ToolKitProtoCompoundPredicate);
  }

  result = sub_23C717008(v7, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
  __break(1u);
  return result;
}

uint64_t sub_23C6BDE10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD790, &qword_23C87D750);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoStringSearchPredicate(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E1FD790, &qword_23C87D750);
  v11 = type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E1FD790, &qword_23C87D750);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_23C716FA0(v7, v10, type metadata accessor for ToolKitProtoStringSearchPredicate);
    sub_23C716EF0(&qword_27E1FE038, type metadata accessor for ToolKitProtoStringSearchPredicate, &protocol conformance descriptor for ToolKitProtoStringSearchPredicate);
    sub_23C871304();
    return sub_23C717008(v10, type metadata accessor for ToolKitProtoStringSearchPredicate);
  }

  result = sub_23C717008(v7, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
  __break(1u);
  return result;
}

uint64_t sub_23C6BE048(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD790, &qword_23C87D750);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoIdSearchPredicate(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E1FD790, &qword_23C87D750);
  v11 = type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E1FD790, &qword_23C87D750);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    sub_23C716FA0(v7, v10, type metadata accessor for ToolKitProtoIdSearchPredicate);
    sub_23C716EF0(&qword_27E1FE068, type metadata accessor for ToolKitProtoIdSearchPredicate, &protocol conformance descriptor for ToolKitProtoIdSearchPredicate);
    sub_23C871304();
    return sub_23C717008(v10, type metadata accessor for ToolKitProtoIdSearchPredicate);
  }

  result = sub_23C717008(v7, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
  __break(1u);
  return result;
}

uint64_t sub_23C6BE280(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD790, &qword_23C87D750);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoAllPredicate(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E1FD790, &qword_23C87D750);
  v11 = type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E1FD790, &qword_23C87D750);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 4)
  {
    sub_23C716FA0(v7, v10, type metadata accessor for ToolKitProtoAllPredicate);
    sub_23C716EF0(&qword_27E1FE0C8, type metadata accessor for ToolKitProtoAllPredicate, &protocol conformance descriptor for ToolKitProtoAllPredicate);
    sub_23C871304();
    return sub_23C717008(v10, type metadata accessor for ToolKitProtoAllPredicate);
  }

  result = sub_23C717008(v7, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
  __break(1u);
  return result;
}

uint64_t sub_23C6BE4B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD790, &qword_23C87D750);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoSuggestedPredicate(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E1FD790, &qword_23C87D750);
  v11 = type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E1FD790, &qword_23C87D750);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 5)
  {
    sub_23C716FA0(v7, v10, type metadata accessor for ToolKitProtoSuggestedPredicate);
    sub_23C716EF0(&qword_27E1FE0F8, type metadata accessor for ToolKitProtoSuggestedPredicate, &protocol conformance descriptor for ToolKitProtoSuggestedPredicate);
    sub_23C871304();
    return sub_23C717008(v10, type metadata accessor for ToolKitProtoSuggestedPredicate);
  }

  result = sub_23C717008(v7, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
  __break(1u);
  return result;
}

uint64_t sub_23C6BE6F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD790, &qword_23C87D750);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoSearchableItemPredicate(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E1FD790, &qword_23C87D750);
  v11 = type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E1FD790, &qword_23C87D750);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 6)
  {
    sub_23C716FA0(v7, v10, type metadata accessor for ToolKitProtoSearchableItemPredicate);
    sub_23C716EF0(&qword_27E1FE098, type metadata accessor for ToolKitProtoSearchableItemPredicate, "IƙEܘjH");
    sub_23C871304();
    return sub_23C717008(v10, type metadata accessor for ToolKitProtoSearchableItemPredicate);
  }

  result = sub_23C717008(v7, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
  __break(1u);
  return result;
}

uint64_t sub_23C6BE928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD790, &qword_23C87D750);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  valid = type metadata accessor for ToolKitProtoValidPredicate(0);
  MEMORY[0x28223BE20](valid);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E1FD790, &qword_23C87D750);
  v11 = type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E1FD790, &qword_23C87D750);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 7)
  {
    sub_23C716FA0(v7, v10, type metadata accessor for ToolKitProtoValidPredicate);
    sub_23C716EF0(&qword_27E1FE0E0, type metadata accessor for ToolKitProtoValidPredicate, &protocol conformance descriptor for ToolKitProtoValidPredicate);
    sub_23C871304();
    return sub_23C717008(v10, type metadata accessor for ToolKitProtoValidPredicate);
  }

  result = sub_23C717008(v7, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
  __break(1u);
  return result;
}

uint64_t sub_23C6BEC1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FE910, type metadata accessor for ToolKitProtoQuery.AnyPredicate, &protocol conformance descriptor for ToolKitProtoQuery.AnyPredicate);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C6BECBC(uint64_t a1)
{
  sub_23C716EF0(&qword_27E1FE138, type metadata accessor for ToolKitProtoQuery.AnyPredicate, &protocol conformance descriptor for ToolKitProtoQuery.AnyPredicate);

  return sub_23C8711F4();
}

uint64_t sub_23C6BED28(uint64_t a1, uint64_t a2)
{
  sub_23C716EF0(&qword_27E1FE138, type metadata accessor for ToolKitProtoQuery.AnyPredicate, &protocol conformance descriptor for ToolKitProtoQuery.AnyPredicate);

  return sub_23C871204();
}

uint64_t sub_23C6BEDC4()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FCB58);
  __swift_project_value_buffer(v0, qword_27E1FCB58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873CF0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "major";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "minor";
  *(v10 + 8) = 5;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "patch";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "isWildcard";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t ToolKitProtoRuntimePlatformVersion.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_23C871044();
    if (v3 || (v5 & 1) != 0)
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
        sub_23C871084();
      }
    }

    else if (result == 1 || result == 2)
    {
LABEL_2:
      sub_23C8710F4();
    }
  }
}

uint64_t ToolKitProtoRuntimePlatformVersion.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = sub_23C871284(), !v4))
  {
    if (!*(v3 + 4) || (result = sub_23C871284(), !v4))
    {
      if (!*(v3 + 8) || (result = sub_23C871284(), !v4))
      {
        if (*(v3 + 12) != 1 || (result = sub_23C871244(), !v4))
        {
          type metadata accessor for ToolKitProtoRuntimePlatformVersion(0);
          return sub_23C870F14();
        }
      }
    }
  }

  return result;
}

uint64_t sub_23C6BF234@<X0>(void *a2@<X8>)
{
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *(a2 + 5) = 0;
  *a2 = 0;
  return result;
}

uint64_t sub_23C6BF2B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FE908, type metadata accessor for ToolKitProtoRuntimePlatformVersion, &protocol conformance descriptor for ToolKitProtoRuntimePlatformVersion);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C6BF354(uint64_t a1)
{
  sub_23C716EF0(&qword_27E1FE150, type metadata accessor for ToolKitProtoRuntimePlatformVersion, &protocol conformance descriptor for ToolKitProtoRuntimePlatformVersion);

  return sub_23C8711F4();
}

uint64_t sub_23C6BF3C0(uint64_t a1, uint64_t a2)
{
  sub_23C716EF0(&qword_27E1FE150, type metadata accessor for ToolKitProtoRuntimePlatformVersion, &protocol conformance descriptor for ToolKitProtoRuntimePlatformVersion);

  return sub_23C871204();
}

uint64_t sub_23C6BF45C()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FCB70);
  __swift_project_value_buffer(v0, qword_27E1FCB70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873CF0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "platform";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "deviceCapability";
  *(v10 + 8) = 16;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "featureFlag";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "deviceState";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t ToolKitProtoRuntimeRequirement.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_23C871044();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result > 2)
    {
      if (result == 3)
      {
        sub_23C6C0334(v5, a1, a2, a3);
      }

      else if (result == 4)
      {
        sub_23C6C08F0(a1, v5, a2, a3);
      }
    }

    else if (result == 1)
    {
      sub_23C6BF7C8(v5, a1, a2, a3);
    }

    else if (result == 2)
    {
      sub_23C6BFD78(v5, a1, a2, a3);
    }
  }

  return result;
}

uint64_t sub_23C6BF7C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for ToolKitProtoRuntimeRequirement.AvailabilityAnnotation(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v40 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v39 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC60, &unk_23C889D20);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for ToolKitProtoRuntimeRequirementKind(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FECF0, &qword_23C889940);
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
  sub_23C5855B0(a1, v12, &qword_27E1FAC60, &unk_23C889D20);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E1FAC60, &unk_23C889D20);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C716FA0(v12, v19, type metadata accessor for ToolKitProtoRuntimeRequirementKind);
    sub_23C716FA0(v19, v17, type metadata accessor for ToolKitProtoRuntimeRequirementKind);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload())
    {
      sub_23C717008(v17, type metadata accessor for ToolKitProtoRuntimeRequirementKind);
      v29 = v44;
    }

    else
    {
      sub_23C585C34(v24, &qword_27E1FECF0, &qword_23C889940);
      v31 = v39;
      sub_23C716FA0(v17, v39, type metadata accessor for ToolKitProtoRuntimeRequirement.AvailabilityAnnotation);
      sub_23C716FA0(v31, v24, type metadata accessor for ToolKitProtoRuntimeRequirement.AvailabilityAnnotation);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }
  }

  v32 = v42;
  sub_23C716EF0(&qword_27E1FE188, type metadata accessor for ToolKitProtoRuntimeRequirement.AvailabilityAnnotation, &protocol conformance descriptor for ToolKitProtoRuntimeRequirement.AvailabilityAnnotation);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E1FECF0, &qword_23C889940);
  }

  sub_23C5855B0(v24, v32, &qword_27E1FECF0, &qword_23C889940);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E1FECF0, &qword_23C889940);
    return sub_23C585C34(v32, &qword_27E1FECF0, &qword_23C889940);
  }

  else
  {
    v35 = v40;
    sub_23C716FA0(v32, v40, type metadata accessor for ToolKitProtoRuntimeRequirement.AvailabilityAnnotation);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E1FECF0, &qword_23C889940);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E1FAC60, &unk_23C889D20);
    sub_23C716FA0(v35, v36, type metadata accessor for ToolKitProtoRuntimeRequirement.AvailabilityAnnotation);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_23C6BFD78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC60, &unk_23C889D20);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for ToolKitProtoRuntimeRequirementKind(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FECF8, &qword_23C889948);
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
  sub_23C5855B0(a1, v12, &qword_27E1FAC60, &unk_23C889D20);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E1FAC60, &unk_23C889D20);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C716FA0(v12, v19, type metadata accessor for ToolKitProtoRuntimeRequirementKind);
    sub_23C716FA0(v19, v17, type metadata accessor for ToolKitProtoRuntimeRequirementKind);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_23C585C34(v24, &qword_27E1FECF8, &qword_23C889948);
      v31 = v40;
      sub_23C716FA0(v17, v40, type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability);
      sub_23C716FA0(v31, v24, type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_23C717008(v17, type metadata accessor for ToolKitProtoRuntimeRequirementKind);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_23C716EF0(&qword_27E1FE1A0, type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability, &protocol conformance descriptor for ToolKitProtoRuntimeRequirement.DeviceCapability);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E1FECF8, &qword_23C889948);
  }

  sub_23C5855B0(v24, v32, &qword_27E1FECF8, &qword_23C889948);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E1FECF8, &qword_23C889948);
    return sub_23C585C34(v32, &qword_27E1FECF8, &qword_23C889948);
  }

  else
  {
    v35 = v39;
    sub_23C716FA0(v32, v39, type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E1FECF8, &qword_23C889948);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E1FAC60, &unk_23C889D20);
    sub_23C716FA0(v35, v36, type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_23C6C0334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for ToolKitProtoRuntimeRequirement.FeatureFlag(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC60, &unk_23C889D20);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for ToolKitProtoRuntimeRequirementKind(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FED00, &qword_23C889950);
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
  sub_23C5855B0(a1, v12, &qword_27E1FAC60, &unk_23C889D20);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E1FAC60, &unk_23C889D20);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C716FA0(v12, v19, type metadata accessor for ToolKitProtoRuntimeRequirementKind);
    sub_23C716FA0(v19, v17, type metadata accessor for ToolKitProtoRuntimeRequirementKind);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_23C585C34(v24, &qword_27E1FED00, &qword_23C889950);
      v31 = v40;
      sub_23C716FA0(v17, v40, type metadata accessor for ToolKitProtoRuntimeRequirement.FeatureFlag);
      sub_23C716FA0(v31, v24, type metadata accessor for ToolKitProtoRuntimeRequirement.FeatureFlag);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_23C717008(v17, type metadata accessor for ToolKitProtoRuntimeRequirementKind);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_23C716EF0(&qword_27E1FE1D0, type metadata accessor for ToolKitProtoRuntimeRequirement.FeatureFlag, &protocol conformance descriptor for ToolKitProtoRuntimeRequirement.FeatureFlag);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E1FED00, &qword_23C889950);
  }

  sub_23C5855B0(v24, v32, &qword_27E1FED00, &qword_23C889950);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E1FED00, &qword_23C889950);
    return sub_23C585C34(v32, &qword_27E1FED00, &qword_23C889950);
  }

  else
  {
    v35 = v39;
    sub_23C716FA0(v32, v39, type metadata accessor for ToolKitProtoRuntimeRequirement.FeatureFlag);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E1FED00, &qword_23C889950);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E1FAC60, &unk_23C889D20);
    sub_23C716FA0(v35, v36, type metadata accessor for ToolKitProtoRuntimeRequirement.FeatureFlag);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_23C6C08F0(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC60, &unk_23C889D20);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v15 - v7;
  v17 = 2;
  sub_23C716DF4();
  result = sub_23C871094();
  if (!v4)
  {
    v10 = v17;
    if (v17 != 2)
    {
      v16 = 0;
      sub_23C5855B0(a2, v8, &qword_27E1FAC60, &unk_23C889D20);
      v11 = type metadata accessor for ToolKitProtoRuntimeRequirementKind(0);
      v12 = *(v11 - 8);
      v13 = (*(v12 + 48))(v8, 1, v11);
      sub_23C585C34(v8, &qword_27E1FAC60, &unk_23C889D20);
      if (v13 != 1)
      {
        v14 = v16;
        result = sub_23C871054();
        if (v14)
        {
          return result;
        }

        v16 = 0;
      }

      sub_23C585C34(a2, &qword_27E1FAC60, &unk_23C889D20);
      *a2 = v10 & 1;
      swift_storeEnumTagMultiPayload();
      return (*(v12 + 56))(a2, 0, 1, v11);
    }
  }

  return result;
}

uint64_t ToolKitProtoRuntimeRequirement.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC60, &unk_23C889D20);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v14 - v9;
  sub_23C5855B0(v3, &v14 - v9, &qword_27E1FAC60, &unk_23C889D20);
  v11 = type metadata accessor for ToolKitProtoRuntimeRequirementKind(0);
  if ((*(*(v11 - 8) + 48))(v10, 1, v11) != 1)
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload != 2)
      {
        result = sub_23C6C1350(v3, a1, a2, a3);
        if (v4)
        {
          return result;
        }

        goto LABEL_11;
      }

      sub_23C6C1118(v3, a1, a2, a3);
    }

    else if (EnumCaseMultiPayload)
    {
      sub_23C6C0EE0(v3, a1, a2, a3);
    }

    else
    {
      sub_23C6C0CAC(v3, a1, a2, a3);
    }

    result = sub_23C717008(v10, type metadata accessor for ToolKitProtoRuntimeRequirementKind);
    if (v4)
    {
      return result;
    }
  }

LABEL_11:
  type metadata accessor for ToolKitProtoRuntimeRequirement(0);
  return sub_23C870F14();
}

uint64_t sub_23C6C0CAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC60, &unk_23C889D20);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoRuntimeRequirement.AvailabilityAnnotation(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E1FAC60, &unk_23C889D20);
  v11 = type metadata accessor for ToolKitProtoRuntimeRequirementKind(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E1FAC60, &unk_23C889D20);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_23C716FA0(v7, v10, type metadata accessor for ToolKitProtoRuntimeRequirement.AvailabilityAnnotation);
    sub_23C716EF0(&qword_27E1FE188, type metadata accessor for ToolKitProtoRuntimeRequirement.AvailabilityAnnotation, &protocol conformance descriptor for ToolKitProtoRuntimeRequirement.AvailabilityAnnotation);
    sub_23C871304();
    return sub_23C717008(v10, type metadata accessor for ToolKitProtoRuntimeRequirement.AvailabilityAnnotation);
  }

  result = sub_23C717008(v7, type metadata accessor for ToolKitProtoRuntimeRequirementKind);
  __break(1u);
  return result;
}

uint64_t sub_23C6C0EE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC60, &unk_23C889D20);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E1FAC60, &unk_23C889D20);
  v11 = type metadata accessor for ToolKitProtoRuntimeRequirementKind(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E1FAC60, &unk_23C889D20);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_23C716FA0(v7, v10, type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability);
    sub_23C716EF0(&qword_27E1FE1A0, type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability, &protocol conformance descriptor for ToolKitProtoRuntimeRequirement.DeviceCapability);
    sub_23C871304();
    return sub_23C717008(v10, type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability);
  }

  result = sub_23C717008(v7, type metadata accessor for ToolKitProtoRuntimeRequirementKind);
  __break(1u);
  return result;
}

uint64_t sub_23C6C1118(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC60, &unk_23C889D20);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoRuntimeRequirement.FeatureFlag(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E1FAC60, &unk_23C889D20);
  v11 = type metadata accessor for ToolKitProtoRuntimeRequirementKind(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_23C585C34(v7, &qword_27E1FAC60, &unk_23C889D20);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_23C716FA0(v7, v10, type metadata accessor for ToolKitProtoRuntimeRequirement.FeatureFlag);
    sub_23C716EF0(&qword_27E1FE1D0, type metadata accessor for ToolKitProtoRuntimeRequirement.FeatureFlag, &protocol conformance descriptor for ToolKitProtoRuntimeRequirement.FeatureFlag);
    sub_23C871304();
    return sub_23C717008(v10, type metadata accessor for ToolKitProtoRuntimeRequirement.FeatureFlag);
  }

  result = sub_23C717008(v7, type metadata accessor for ToolKitProtoRuntimeRequirementKind);
  __break(1u);
  return result;
}

uint64_t sub_23C6C1350(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC60, &unk_23C889D20);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v10[-v6];
  sub_23C5855B0(a1, &v10[-v6], &qword_27E1FAC60, &unk_23C889D20);
  v8 = type metadata accessor for ToolKitProtoRuntimeRequirementKind(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_23C585C34(v7, &qword_27E1FAC60, &unk_23C889D20);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    v10[15] = *v7;
    sub_23C716DF4();
    return sub_23C871254();
  }

  result = sub_23C717008(v7, type metadata accessor for ToolKitProtoRuntimeRequirementKind);
  __break(1u);
  return result;
}

uint64_t sub_23C6C1580(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FE900, type metadata accessor for ToolKitProtoRuntimeRequirement, &protocol conformance descriptor for ToolKitProtoRuntimeRequirement);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C6C1620(uint64_t a1)
{
  sub_23C716EF0(&qword_27E1FD4F8, type metadata accessor for ToolKitProtoRuntimeRequirement, &protocol conformance descriptor for ToolKitProtoRuntimeRequirement);

  return sub_23C8711F4();
}

uint64_t sub_23C6C168C(uint64_t a1, uint64_t a2)
{
  sub_23C716EF0(&qword_27E1FD4F8, type metadata accessor for ToolKitProtoRuntimeRequirement, &protocol conformance descriptor for ToolKitProtoRuntimeRequirement);

  return sub_23C871204();
}

uint64_t sub_23C6C170C()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FCB88);
  __swift_project_value_buffer(v0, qword_27E1FCB88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "DeviceState_UNSPECIFIED";
  *(v6 + 8) = 23;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "DeviceState_UNLOCKED";
  *(v10 + 1) = 20;
  v10[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C6C1930()
{
  result = MEMORY[0x23EED7100](0xD000000000000017, 0x800000023C8AE250);
  qword_27E1FCBA0 = 0xD00000000000001ALL;
  *algn_27E1FCBA8 = 0x800000023C8AD1A0;
  return result;
}

uint64_t sub_23C6C19CC()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FCBB0);
  __swift_project_value_buffer(v0, qword_27E1FCBB0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873CF0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "platform";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "introducingVersion";
  *(v10 + 8) = 18;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "deprecatingVersion";
  *(v12 + 1) = 18;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "obsoletingVersion";
  *(v14 + 1) = 17;
  v14[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t ToolKitProtoRuntimeRequirement.AvailabilityAnnotation.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_23C871044();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result > 2)
      {
        if (result == 3)
        {
          sub_23C6C1E18(a1, v5, a2, a3);
        }

        else if (result == 4)
        {
          sub_23C6C1ECC(a1, v5, a2, a3);
        }
      }

      else if (result == 1)
      {
        sub_23C70C29C();
        sub_23C8710A4();
      }

      else if (result == 2)
      {
        sub_23C6C1D64(a1, v5, a2, a3);
      }

      result = sub_23C871044();
    }
  }

  return result;
}

uint64_t sub_23C6C1D64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoRuntimeRequirement.AvailabilityAnnotation(0);
  type metadata accessor for ToolKitProtoRuntimePlatformVersion(0);
  sub_23C716EF0(&qword_27E1FE150, type metadata accessor for ToolKitProtoRuntimePlatformVersion, &protocol conformance descriptor for ToolKitProtoRuntimePlatformVersion);
  return sub_23C8711A4();
}

uint64_t sub_23C6C1E18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoRuntimeRequirement.AvailabilityAnnotation(0);
  type metadata accessor for ToolKitProtoRuntimePlatformVersion(0);
  sub_23C716EF0(&qword_27E1FE150, type metadata accessor for ToolKitProtoRuntimePlatformVersion, &protocol conformance descriptor for ToolKitProtoRuntimePlatformVersion);
  return sub_23C8711A4();
}

uint64_t sub_23C6C1ECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoRuntimeRequirement.AvailabilityAnnotation(0);
  type metadata accessor for ToolKitProtoRuntimePlatformVersion(0);
  sub_23C716EF0(&qword_27E1FE150, type metadata accessor for ToolKitProtoRuntimePlatformVersion, &protocol conformance descriptor for ToolKitProtoRuntimePlatformVersion);
  return sub_23C8711A4();
}

uint64_t ToolKitProtoRuntimeRequirement.AvailabilityAnnotation.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (sub_23C70C29C(), result = sub_23C871254(), !v4))
  {
    result = sub_23C6C2074(v3, a1, a2, a3);
    if (!v4)
    {
      sub_23C6C2290(v3, a1, a2, a3);
      sub_23C6C24AC(v3, a1, a2, a3);
      type metadata accessor for ToolKitProtoRuntimeRequirement.AvailabilityAnnotation(0);
      return sub_23C870F14();
    }
  }

  return result;
}

uint64_t sub_23C6C2074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FECD8, &qword_23C889930);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoRuntimePlatformVersion(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ToolKitProtoRuntimeRequirement.AvailabilityAnnotation(0);
  sub_23C5855B0(a1 + *(v12 + 20), v7, &qword_27E1FECD8, &qword_23C889930);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_23C585C34(v7, &qword_27E1FECD8, &qword_23C889930);
  }

  sub_23C716FA0(v7, v11, type metadata accessor for ToolKitProtoRuntimePlatformVersion);
  sub_23C716EF0(&qword_27E1FE150, type metadata accessor for ToolKitProtoRuntimePlatformVersion, &protocol conformance descriptor for ToolKitProtoRuntimePlatformVersion);
  sub_23C871304();
  return sub_23C717008(v11, type metadata accessor for ToolKitProtoRuntimePlatformVersion);
}

uint64_t sub_23C6C2290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FECD8, &qword_23C889930);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoRuntimePlatformVersion(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ToolKitProtoRuntimeRequirement.AvailabilityAnnotation(0);
  sub_23C5855B0(a1 + *(v12 + 24), v7, &qword_27E1FECD8, &qword_23C889930);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_23C585C34(v7, &qword_27E1FECD8, &qword_23C889930);
  }

  sub_23C716FA0(v7, v11, type metadata accessor for ToolKitProtoRuntimePlatformVersion);
  sub_23C716EF0(&qword_27E1FE150, type metadata accessor for ToolKitProtoRuntimePlatformVersion, &protocol conformance descriptor for ToolKitProtoRuntimePlatformVersion);
  sub_23C871304();
  return sub_23C717008(v11, type metadata accessor for ToolKitProtoRuntimePlatformVersion);
}

uint64_t sub_23C6C24AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FECD8, &qword_23C889930);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoRuntimePlatformVersion(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ToolKitProtoRuntimeRequirement.AvailabilityAnnotation(0);
  sub_23C5855B0(a1 + *(v12 + 28), v7, &qword_27E1FECD8, &qword_23C889930);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_23C585C34(v7, &qword_27E1FECD8, &qword_23C889930);
  }

  sub_23C716FA0(v7, v11, type metadata accessor for ToolKitProtoRuntimePlatformVersion);
  sub_23C716EF0(&qword_27E1FE150, type metadata accessor for ToolKitProtoRuntimePlatformVersion, &protocol conformance descriptor for ToolKitProtoRuntimePlatformVersion);
  sub_23C871304();
  return sub_23C717008(v11, type metadata accessor for ToolKitProtoRuntimePlatformVersion);
}

uint64_t sub_23C6C2714@<X0>(int *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = a1[5];
  v5 = type metadata accessor for ToolKitProtoRuntimePlatformVersion(0);
  v6 = *(*(v5 - 8) + 56);
  v6(&a2[v4], 1, 1, v5);
  v6(&a2[a1[6]], 1, 1, v5);
  v6(&a2[a1[7]], 1, 1, v5);
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a2 = 0;
  return result;
}

uint64_t sub_23C6C2838(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FE8F8, type metadata accessor for ToolKitProtoRuntimeRequirement.AvailabilityAnnotation, &protocol conformance descriptor for ToolKitProtoRuntimeRequirement.AvailabilityAnnotation);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C6C28D8(uint64_t a1)
{
  sub_23C716EF0(&qword_27E1FE188, type metadata accessor for ToolKitProtoRuntimeRequirement.AvailabilityAnnotation, &protocol conformance descriptor for ToolKitProtoRuntimeRequirement.AvailabilityAnnotation);

  return sub_23C8711F4();
}

uint64_t sub_23C6C2944(uint64_t a1, uint64_t a2)
{
  sub_23C716EF0(&qword_27E1FE188, type metadata accessor for ToolKitProtoRuntimeRequirement.AvailabilityAnnotation, &protocol conformance descriptor for ToolKitProtoRuntimeRequirement.AvailabilityAnnotation);

  return sub_23C871204();
}

uint64_t sub_23C6C29C4()
{
  result = MEMORY[0x23EED7100](0xD000000000000011, 0x800000023C8AE1D0);
  qword_27E1FCBC8 = 0xD00000000000001ALL;
  unk_27E1FCBD0 = 0x800000023C8AD1A0;
  return result;
}

uint64_t sub_23C6C2AE0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = v4;
  while (1)
  {
    result = sub_23C871044();
    if (v5 || (v12 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      a4(v7, a1, a2, a3);
    }
  }

  return result;
}

uint64_t sub_23C6C2B64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v42 = a2;
  v43 = a3;
  v44 = a4;
  v45 = a1;
  v4 = type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability.MobileGestalt(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v36 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v38 = &v33 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FECC0, &unk_23C889D30);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v33 - v10;
  v12 = type metadata accessor for ToolKitProtoRuntimeRequirement.ToolKitProtoDeviceCapabilityKind(0);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v33 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FECD0, &qword_23C889928);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v39 = &v33 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v33 - v22;
  v37 = v5;
  v24 = *(v5 + 56);
  v40 = v4;
  v24(&v33 - v22, 1, 1, v4);
  sub_23C5855B0(v45, v11, &qword_27E1FECC0, &unk_23C889D30);
  v34 = v13;
  v35 = v12;
  v25 = (*(v13 + 48))(v11, 1, v12);
  if (v25 == 1)
  {
    sub_23C585C34(v11, &qword_27E1FECC0, &unk_23C889D30);
    v26 = v40;
  }

  else
  {
    sub_23C716FA0(v11, v18, type metadata accessor for ToolKitProtoRuntimeRequirement.ToolKitProtoDeviceCapabilityKind);
    sub_23C716FA0(v18, v16, type metadata accessor for ToolKitProtoRuntimeRequirement.ToolKitProtoDeviceCapabilityKind);
    sub_23C585C34(v23, &qword_27E1FECD0, &qword_23C889928);
    v27 = v38;
    sub_23C716FA0(v16, v38, type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability.MobileGestalt);
    sub_23C716FA0(v27, v23, type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability.MobileGestalt);
    v26 = v40;
    v24(v23, 0, 1, v40);
  }

  sub_23C716EF0(&qword_27E1FE1B8, type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability.MobileGestalt, &protocol conformance descriptor for ToolKitProtoRuntimeRequirement.DeviceCapability.MobileGestalt);
  v28 = v41;
  sub_23C8711A4();
  v29 = v39;
  if (v28)
  {
    return sub_23C585C34(v23, &qword_27E1FECD0, &qword_23C889928);
  }

  sub_23C5855B0(v23, v39, &qword_27E1FECD0, &qword_23C889928);
  if ((*(v37 + 48))(v29, 1, v26) == 1)
  {
    sub_23C585C34(v23, &qword_27E1FECD0, &qword_23C889928);
    return sub_23C585C34(v29, &qword_27E1FECD0, &qword_23C889928);
  }

  else
  {
    v31 = v36;
    sub_23C716FA0(v29, v36, type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability.MobileGestalt);
    if (v25 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v23, &qword_27E1FECD0, &qword_23C889928);
    v32 = v45;
    sub_23C585C34(v45, &qword_27E1FECC0, &unk_23C889D30);
    sub_23C716FA0(v31, v32, type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability.MobileGestalt);
    return (*(v34 + 56))(v32, 0, 1, v35);
  }
}

uint64_t sub_23C6C30F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FECC0, &unk_23C889D30);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability.MobileGestalt(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C5855B0(a1, v7, &qword_27E1FECC0, &unk_23C889D30);
  v11 = type metadata accessor for ToolKitProtoRuntimeRequirement.ToolKitProtoDeviceCapabilityKind(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    return sub_23C585C34(v7, &qword_27E1FECC0, &unk_23C889D30);
  }

  sub_23C716FA0(v7, v10, type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability.MobileGestalt);
  sub_23C716EF0(&qword_27E1FE1B8, type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability.MobileGestalt, &protocol conformance descriptor for ToolKitProtoRuntimeRequirement.DeviceCapability.MobileGestalt);
  sub_23C871304();
  return sub_23C717008(v10, type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability.MobileGestalt);
}

uint64_t sub_23C6C33AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FE8F0, type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability, &protocol conformance descriptor for ToolKitProtoRuntimeRequirement.DeviceCapability);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C6C344C(uint64_t a1)
{
  sub_23C716EF0(&qword_27E1FE1A0, type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability, &protocol conformance descriptor for ToolKitProtoRuntimeRequirement.DeviceCapability);

  return sub_23C8711F4();
}

uint64_t sub_23C6C34B8(uint64_t a1, uint64_t a2)
{
  sub_23C716EF0(&qword_27E1FE1A0, type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability, &protocol conformance descriptor for ToolKitProtoRuntimeRequirement.DeviceCapability);

  return sub_23C871204();
}

uint64_t sub_23C6C3538()
{
  if (qword_27E1F87D8 != -1)
  {
    swift_once();
  }

  v1 = qword_27E1FCBC8;
  v2 = qword_27E1FCBD0;
  swift_bridgeObjectRetain_n();
  MEMORY[0x23EED7100](0x47656C69626F4D2ELL, 0xEE00746C61747365);

  qword_27E1FCBF0 = v1;
  *algn_27E1FCBF8 = v2;
  return result;
}

uint64_t sub_23C6C3610()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FCC00);
  __swift_project_value_buffer(v0, qword_27E1FCC00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "key";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "value";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t ToolKitProtoRuntimeRequirement.DeviceCapability.MobileGestalt.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_23C871044();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_23C871164();
    }

    else if (result == 2)
    {
      sub_23C871084();
    }
  }

  return result;
}

uint64_t ToolKitProtoRuntimeRequirement.DeviceCapability.MobileGestalt.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 8);
  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6 || (result = sub_23C8712C4(), !v4))
  {
    if (*(v3 + 16) != 1 || (result = sub_23C871244(), !v4))
    {
      type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability.MobileGestalt(0);
      return sub_23C870F14();
    }
  }

  return result;
}

uint64_t sub_23C6C39A4@<X0>(uint64_t a2@<X8>)
{
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  return result;
}

uint64_t sub_23C6C3A34(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FE8E8, type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability.MobileGestalt, &protocol conformance descriptor for ToolKitProtoRuntimeRequirement.DeviceCapability.MobileGestalt);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C6C3AD4(uint64_t a1)
{
  sub_23C716EF0(&qword_27E1FE1B8, type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability.MobileGestalt, &protocol conformance descriptor for ToolKitProtoRuntimeRequirement.DeviceCapability.MobileGestalt);

  return sub_23C8711F4();
}

uint64_t sub_23C6C3B40(uint64_t a1, uint64_t a2)
{
  sub_23C716EF0(&qword_27E1FE1B8, type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability.MobileGestalt, &protocol conformance descriptor for ToolKitProtoRuntimeRequirement.DeviceCapability.MobileGestalt);

  return sub_23C871204();
}

uint64_t sub_23C6C3BC0()
{
  result = MEMORY[0x23EED7100](0x657275746165462ELL, 0xEC00000067616C46);
  qword_27E1FCC18 = 0xD00000000000001ALL;
  unk_27E1FCC20 = 0x800000023C8AD1A0;
  return result;
}

uint64_t sub_23C6C3C5C()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FCC28);
  __swift_project_value_buffer(v0, qword_27E1FCC28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C875050;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "domain";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "feature";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "value";
  *(v11 + 8) = 5;
  *(v11 + 16) = 2;
  v9();
  return sub_23C871324();
}

uint64_t ToolKitProtoRuntimeRequirement.FeatureFlag.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_23C871044();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 3)
    {
      sub_23C871084();
    }

    else if (result == 2 || result == 1)
    {
      sub_23C871164();
    }
  }

  return result;
}

uint64_t ToolKitProtoRuntimeRequirement.FeatureFlag.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 8);
  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6 || (result = sub_23C8712C4(), !v4))
  {
    v8 = *(v3 + 24);
    v9 = HIBYTE(v8) & 0xF;
    if ((v8 & 0x2000000000000000) == 0)
    {
      v9 = *(v3 + 16) & 0xFFFFFFFFFFFFLL;
    }

    if (!v9 || (result = sub_23C8712C4(), !v4))
    {
      if (*(v3 + 32) != 1 || (result = sub_23C871244(), !v4))
      {
        type metadata accessor for ToolKitProtoRuntimeRequirement.FeatureFlag(0);
        return sub_23C870F14();
      }
    }
  }

  return result;
}

uint64_t sub_23C6C407C@<X0>(uint64_t a2@<X8>)
{
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0xE000000000000000;
  *(a2 + 32) = 0;
  return result;
}

uint64_t sub_23C6C4110(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FE8E0, type metadata accessor for ToolKitProtoRuntimeRequirement.FeatureFlag, &protocol conformance descriptor for ToolKitProtoRuntimeRequirement.FeatureFlag);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C6C41B0(uint64_t a1)
{
  sub_23C716EF0(&qword_27E1FE1D0, type metadata accessor for ToolKitProtoRuntimeRequirement.FeatureFlag, &protocol conformance descriptor for ToolKitProtoRuntimeRequirement.FeatureFlag);

  return sub_23C8711F4();
}

uint64_t sub_23C6C421C(uint64_t a1, uint64_t a2)
{
  sub_23C716EF0(&qword_27E1FE1D0, type metadata accessor for ToolKitProtoRuntimeRequirement.FeatureFlag, &protocol conformance descriptor for ToolKitProtoRuntimeRequirement.FeatureFlag);

  return sub_23C871204();
}

uint64_t sub_23C6C4368(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t a7)
{
  while (1)
  {
    result = sub_23C871044();
    if (v7 || (v12 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      a4(0);
      sub_23C716EF0(a5, a6, a7);
      sub_23C871194();
    }
  }

  return result;
}

uint64_t ToolKitProtoToolSummaryString.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for ToolKitProtoToolSummaryString.Component(0), sub_23C716EF0(&qword_27E1FD7D8, type metadata accessor for ToolKitProtoToolSummaryString.Component, &protocol conformance descriptor for ToolKitProtoToolSummaryString.Component), result = sub_23C8712F4(), !v4))
  {
    type metadata accessor for ToolKitProtoToolSummaryString(0);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C6C45E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FE8D8, type metadata accessor for ToolKitProtoToolSummaryString, &protocol conformance descriptor for ToolKitProtoToolSummaryString);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C6C4688(uint64_t a1)
{
  sub_23C716EF0(&qword_27E1FE1E8, type metadata accessor for ToolKitProtoToolSummaryString, &protocol conformance descriptor for ToolKitProtoToolSummaryString);

  return sub_23C8711F4();
}

uint64_t sub_23C6C46F4(uint64_t a1, uint64_t a2)
{
  sub_23C716EF0(&qword_27E1FE1E8, type metadata accessor for ToolKitProtoToolSummaryString, &protocol conformance descriptor for ToolKitProtoToolSummaryString);

  return sub_23C871204();
}

uint64_t sub_23C6C4788()
{
  result = MEMORY[0x23EED7100](0x656E6F706D6F432ELL, 0xEA0000000000746ELL);
  qword_27E1FCC58 = 0xD000000000000019;
  unk_27E1FCC60 = 0x800000023C8AD1C0;
  return result;
}

uint64_t sub_23C6C4820()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FCC68);
  __swift_project_value_buffer(v0, qword_27E1FCC68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "text";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "parameter";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t ToolKitProtoToolSummaryString.Component.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_23C871044();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_23C6C4AC4(a1, v5, a2, a3, 0);
    }

    else if (result == 2)
    {
      sub_23C6C4AC4(a1, v5, a2, a3, 1);
    }
  }

  return result;
}

uint64_t sub_23C6C4AC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  result = sub_23C871154();
  if (v5)
  {
  }

  if (v12)
  {
    if (*(a2 + 16) == 255)
    {
      v9 = -1;
    }

    else
    {
      sub_23C871054();
      v9 = *(a2 + 16);
    }

    v10 = *a2;
    v11 = *(a2 + 8);
    *a2 = 0;
    *(a2 + 8) = v12;
    *(a2 + 16) = a5;
    return sub_23C5EDA2C(v10, v11, v9);
  }

  return result;
}

uint64_t ToolKitProtoToolSummaryString.Component.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 16);
  if (v5 == 255)
  {
    goto LABEL_4;
  }

  if (v5)
  {
    result = sub_23C6C4C78(v3, a1, a2, a3);
    if (v4)
    {
      return result;
    }

    goto LABEL_4;
  }

  result = sub_23C6C4C2C(v3, a1, a2, a3);
  if (!v4)
  {
LABEL_4:
    type metadata accessor for ToolKitProtoToolSummaryString.Component(0);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C6C4C2C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 16);
  if (v4 != 255 && (v4 & 1) == 0)
  {
    return sub_23C8712C4();
  }

  __break(1u);
  return result;
}

uint64_t sub_23C6C4C78(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 16);
  if (v4 != 255 && (v4 & 1) != 0)
  {
    return sub_23C8712C4();
  }

  __break(1u);
  return result;
}

uint64_t sub_23C6C4D10@<X0>(uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = -1;
  return _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
}

uint64_t sub_23C6C4D94(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FE8D0, type metadata accessor for ToolKitProtoToolSummaryString.Component, &protocol conformance descriptor for ToolKitProtoToolSummaryString.Component);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C6C4E34(uint64_t a1)
{
  sub_23C716EF0(&qword_27E1FD7D8, type metadata accessor for ToolKitProtoToolSummaryString.Component, &protocol conformance descriptor for ToolKitProtoToolSummaryString.Component);

  return sub_23C8711F4();
}

uint64_t sub_23C6C4EA0(uint64_t a1, uint64_t a2)
{
  sub_23C716EF0(&qword_27E1FD7D8, type metadata accessor for ToolKitProtoToolSummaryString.Component, &protocol conformance descriptor for ToolKitProtoToolSummaryString.Component);

  return sub_23C871204();
}

uint64_t sub_23C6C4F3C()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FCC80);
  __swift_project_value_buffer(v0, qword_27E1FCC80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C875050;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "visibleParameterKeys";
  *(v6 + 8) = 20;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "invisibleParameterKeys";
  *(v10 + 1) = 22;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "valueConstraints";
  *(v11 + 8) = 16;
  *(v11 + 16) = 2;
  v9();
  return sub_23C871324();
}

uint64_t ToolKitProtoToolInvocationSignature.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_23C871044();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 3)
    {
      sub_23C6C5228(a1, v5, a2, a3);
    }

    else if (result == 2 || result == 1)
    {
      sub_23C871124();
    }
  }

  return result;
}

uint64_t sub_23C6C5228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_23C870EE4();
  type metadata accessor for ToolKitProtoToolInvocationSignature.ListOfRelations(0);
  sub_23C716EF0(&qword_27E1FD7F0, type metadata accessor for ToolKitProtoToolInvocationSignature.ListOfRelations, &protocol conformance descriptor for ToolKitProtoToolInvocationSignature.ListOfRelations);
  sub_23C716EF0(&qword_27E1FD7F8, type metadata accessor for ToolKitProtoToolInvocationSignature.ListOfRelations, &protocol conformance descriptor for ToolKitProtoToolInvocationSignature.ListOfRelations);
  return sub_23C871024();
}

uint64_t ToolKitProtoToolInvocationSignature.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (result = sub_23C8712A4(), !v4))
  {
    if (!*(v3[1] + 16) || (result = sub_23C8712A4(), !v4))
    {
      if (!*(v3[2] + 16) || (sub_23C870EE4(), type metadata accessor for ToolKitProtoToolInvocationSignature.ListOfRelations(0), sub_23C716EF0(&qword_27E1FD7F0, type metadata accessor for ToolKitProtoToolInvocationSignature.ListOfRelations, &protocol conformance descriptor for ToolKitProtoToolInvocationSignature.ListOfRelations), sub_23C716EF0(&qword_27E1FD7F8, type metadata accessor for ToolKitProtoToolInvocationSignature.ListOfRelations, &protocol conformance descriptor for ToolKitProtoToolInvocationSignature.ListOfRelations), result = sub_23C871214(), !v4))
      {
        type metadata accessor for ToolKitProtoToolInvocationSignature(0);
        return sub_23C870F14();
      }
    }
  }

  return result;
}

unint64_t sub_23C6C54F0@<X0>(void *a2@<X8>)
{
  _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  v3 = MEMORY[0x277D84F90];
  *a2 = MEMORY[0x277D84F90];
  a2[1] = v3;
  result = sub_23C599660(v3);
  a2[2] = result;
  return result;
}

uint64_t sub_23C6C557C(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FE8C8, type metadata accessor for ToolKitProtoToolInvocationSignature, &protocol conformance descriptor for ToolKitProtoToolInvocationSignature);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C6C561C(uint64_t a1)
{
  sub_23C716EF0(&qword_27E1FE210, type metadata accessor for ToolKitProtoToolInvocationSignature, &protocol conformance descriptor for ToolKitProtoToolInvocationSignature);

  return sub_23C8711F4();
}

uint64_t sub_23C6C5688(uint64_t a1, uint64_t a2)
{
  sub_23C716EF0(&qword_27E1FE210, type metadata accessor for ToolKitProtoToolInvocationSignature, &protocol conformance descriptor for ToolKitProtoToolInvocationSignature);

  return sub_23C871204();
}

uint64_t sub_23C6C5708()
{
  result = MEMORY[0x23EED7100](0xD000000000000010, 0x800000023C8AE120);
  qword_27E1FCC98 = 0xD00000000000001FLL;
  unk_27E1FCCA0 = 0x800000023C8AD1E0;
  return result;
}

uint64_t ToolKitProtoToolInvocationSignature.ListOfRelations.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation(0), sub_23C716EF0(&qword_27E1FD808, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation), result = sub_23C8712F4(), !v4))
  {
    type metadata accessor for ToolKitProtoToolInvocationSignature.ListOfRelations(0);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C6C5A04(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FE8C0, type metadata accessor for ToolKitProtoToolInvocationSignature.ListOfRelations, &protocol conformance descriptor for ToolKitProtoToolInvocationSignature.ListOfRelations);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C6C5AA4(uint64_t a1)
{
  sub_23C716EF0(&qword_27E1FD7F0, type metadata accessor for ToolKitProtoToolInvocationSignature.ListOfRelations, &protocol conformance descriptor for ToolKitProtoToolInvocationSignature.ListOfRelations);

  return sub_23C8711F4();
}

uint64_t sub_23C6C5B10(uint64_t a1, uint64_t a2)
{
  sub_23C716EF0(&qword_27E1FD7F0, type metadata accessor for ToolKitProtoToolInvocationSignature.ListOfRelations, &protocol conformance descriptor for ToolKitProtoToolInvocationSignature.ListOfRelations);

  return sub_23C871204();
}

uint64_t sub_23C6C5BC0()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FCCC0);
  __swift_project_value_buffer(v0, qword_27E1FCCC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C875050;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "phrases";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "expectedResult";
  *(v10 + 1) = 14;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "negativePhrases";
  *(v11 + 8) = 15;
  *(v11 + 16) = 2;
  v9();
  return sub_23C871324();
}

uint64_t ToolKitProtoSampleInvocationDefinition.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_23C871044();
    if (v3 || (v5 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 3:
        goto LABEL_8;
      case 2:
        sub_23C871154();
        break;
      case 1:
LABEL_8:
        sub_23C871124();
        break;
    }
  }
}

uint64_t ToolKitProtoSampleInvocationDefinition.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *v3;
  if (!*(*v3 + 16) || (result = sub_23C8712A4(), !v4))
  {
    if (v3[3])
    {
      result = sub_23C8712C4();
    }

    if (!v4)
    {
      if (*(v3[1] + 16))
      {
        sub_23C8712A4();
      }

      type metadata accessor for ToolKitProtoSampleInvocationDefinition(0);
      return sub_23C870F14();
    }
  }

  return result;
}

uint64_t sub_23C6C5FC4@<X0>(void *a2@<X8>)
{
  a2[2] = 0;
  a2[3] = 0;
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  v4 = MEMORY[0x277D84F90];
  *a2 = MEMORY[0x277D84F90];
  a2[1] = v4;
  return result;
}

uint64_t sub_23C6C604C(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FE8B8, type metadata accessor for ToolKitProtoSampleInvocationDefinition, &protocol conformance descriptor for ToolKitProtoSampleInvocationDefinition);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C6C60EC(uint64_t a1)
{
  sub_23C716EF0(&qword_27E1FD500, type metadata accessor for ToolKitProtoSampleInvocationDefinition, &protocol conformance descriptor for ToolKitProtoSampleInvocationDefinition);

  return sub_23C8711F4();
}

uint64_t sub_23C6C6158(uint64_t a1, uint64_t a2)
{
  sub_23C716EF0(&qword_27E1FD500, type metadata accessor for ToolKitProtoSampleInvocationDefinition, &protocol conformance descriptor for ToolKitProtoSampleInvocationDefinition);

  return sub_23C871204();
}

uint64_t sub_23C6C61F4()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FCCD8);
  __swift_project_value_buffer(v0, qword_27E1FCCD8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C875050;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "major";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "minor";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "patch";
  *(v11 + 8) = 5;
  *(v11 + 16) = 2;
  v9();
  return sub_23C871324();
}

uint64_t ToolKitProtoAssistantSchemaVersion.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_23C871044();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 3 || result == 2 || result == 1)
    {
      sub_23C871184();
    }
  }

  return result;
}

uint64_t ToolKitProtoAssistantSchemaVersion.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = sub_23C8712E4(), !v4))
  {
    if (!v3[1] || (result = sub_23C8712E4(), !v4))
    {
      if (!v3[2] || (result = sub_23C8712E4(), !v4))
      {
        type metadata accessor for ToolKitProtoAssistantSchemaVersion(0);
        return sub_23C870F14();
      }
    }
  }

  return result;
}

uint64_t sub_23C6C65DC@<X0>(void *a2@<X8>)
{
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return result;
}

uint64_t sub_23C6C665C(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FE8B0, type metadata accessor for ToolKitProtoAssistantSchemaVersion, &protocol conformance descriptor for ToolKitProtoAssistantSchemaVersion);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C6C66FC(uint64_t a1)
{
  sub_23C716EF0(&qword_27E1FE248, type metadata accessor for ToolKitProtoAssistantSchemaVersion, &protocol conformance descriptor for ToolKitProtoAssistantSchemaVersion);

  return sub_23C8711F4();
}

uint64_t sub_23C6C6768(uint64_t a1, uint64_t a2)
{
  sub_23C716EF0(&qword_27E1FE248, type metadata accessor for ToolKitProtoAssistantSchemaVersion, &protocol conformance descriptor for ToolKitProtoAssistantSchemaVersion);

  return sub_23C871204();
}

uint64_t sub_23C6C6804()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FCCF0);
  __swift_project_value_buffer(v0, qword_27E1FCCF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "kind";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "version";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C6C6A44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoAssistantSchemaIdentifier(0);
  type metadata accessor for ToolKitProtoAssistantSchemaVersion(0);
  sub_23C716EF0(&qword_27E1FE248, type metadata accessor for ToolKitProtoAssistantSchemaVersion, &protocol conformance descriptor for ToolKitProtoAssistantSchemaVersion);
  return sub_23C8711A4();
}

uint64_t sub_23C6C6B38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FECB8, &qword_23C889918);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoAssistantSchemaVersion(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ToolKitProtoAssistantSchemaIdentifier(0);
  sub_23C5855B0(a1 + *(v12 + 20), v7, &qword_27E1FECB8, &qword_23C889918);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_23C585C34(v7, &qword_27E1FECB8, &qword_23C889918);
  }

  sub_23C716FA0(v7, v11, type metadata accessor for ToolKitProtoAssistantSchemaVersion);
  sub_23C716EF0(&qword_27E1FE248, type metadata accessor for ToolKitProtoAssistantSchemaVersion, &protocol conformance descriptor for ToolKitProtoAssistantSchemaVersion);
  sub_23C871304();
  return sub_23C717008(v11, type metadata accessor for ToolKitProtoAssistantSchemaVersion);
}

uint64_t sub_23C6C6E00(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FE8A8, type metadata accessor for ToolKitProtoAssistantSchemaIdentifier, &protocol conformance descriptor for ToolKitProtoAssistantSchemaIdentifier);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C6C6EA0(uint64_t a1)
{
  sub_23C716EF0(&qword_27E1FACC0, type metadata accessor for ToolKitProtoAssistantSchemaIdentifier, &protocol conformance descriptor for ToolKitProtoAssistantSchemaIdentifier);

  return sub_23C8711F4();
}

uint64_t sub_23C6C6F0C(uint64_t a1, uint64_t a2)
{
  sub_23C716EF0(&qword_27E1FACC0, type metadata accessor for ToolKitProtoAssistantSchemaIdentifier, &protocol conformance descriptor for ToolKitProtoAssistantSchemaIdentifier);

  return sub_23C871204();
}

uint64_t sub_23C6C6FA8()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FCD08);
  __swift_project_value_buffer(v0, qword_27E1FCD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C875570;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "identifier";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "name";
  *(v10 + 8) = 4;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "description";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "parameters";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v15 = "sampleInvocations";
  *(v15 + 8) = 17;
  *(v15 + 16) = 2;
  v9();
  return sub_23C871324();
}

uint64_t ToolKitProtoAssistantToolSchemaDefinition.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_23C871044();
  if (!v4)
  {
    while (1)
    {
      if (v10)
      {
        return result;
      }

      if (result <= 2)
      {
        if (result == 1)
        {
          sub_23C6C742C(a1, v5, a2, a3);
        }

        else if (result == 2)
        {
          sub_23C871164();
        }
      }

      else
      {
        switch(result)
        {
          case 3:
            type metadata accessor for ToolKitProtoAssistantToolSchemaDefinition(0);
            sub_23C871154();
            goto LABEL_5;
          case 4:
            v11 = v4;
            type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter(0);
            sub_23C716EF0(&qword_27E1FD828, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.Parameter);
            break;
          case 5:
            v11 = v4;
            type metadata accessor for ToolKitProtoSampleInvocationDefinition(0);
            sub_23C716EF0(&qword_27E1FD500, type metadata accessor for ToolKitProtoSampleInvocationDefinition, &protocol conformance descriptor for ToolKitProtoSampleInvocationDefinition);
            break;
          default:
            goto LABEL_5;
        }

        v4 = v11;
        sub_23C871194();
      }

LABEL_5:
      result = sub_23C871044();
    }
  }

  return result;
}

uint64_t sub_23C6C742C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ToolKitProtoAssistantToolSchemaDefinition(0);
  type metadata accessor for ToolKitProtoAssistantSchemaIdentifier(0);
  sub_23C716EF0(&qword_27E1FACC0, type metadata accessor for ToolKitProtoAssistantSchemaIdentifier, &protocol conformance descriptor for ToolKitProtoAssistantSchemaIdentifier);
  return sub_23C8711A4();
}

uint64_t ToolKitProtoAssistantToolSchemaDefinition.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_23C6C76A0(v3, a1, a2, a3);
  if (!v4)
  {
    v9 = v3[1];
    v10 = HIBYTE(v9) & 0xF;
    if ((v9 & 0x2000000000000000) == 0)
    {
      v10 = *v3 & 0xFFFFFFFFFFFFLL;
    }

    if (v10)
    {
      sub_23C8712C4();
    }

    sub_23C6C78BC(v3, a1, a2, a3);
    if (*(v3[2] + 16))
    {
      type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter(0);
      sub_23C716EF0(&qword_27E1FD828, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter, &protocol conformance descriptor for ToolKitProtoToolDefinition.Version1.Parameter);
      sub_23C8712F4();
    }

    if (*(v3[3] + 16))
    {
      type metadata accessor for ToolKitProtoSampleInvocationDefinition(0);
      sub_23C716EF0(&qword_27E1FD500, type metadata accessor for ToolKitProtoSampleInvocationDefinition, &protocol conformance descriptor for ToolKitProtoSampleInvocationDefinition);
      sub_23C8712F4();
    }

    type metadata accessor for ToolKitProtoAssistantToolSchemaDefinition(0);
    return sub_23C870F14();
  }

  return result;
}

uint64_t sub_23C6C76A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FACC8, &unk_23C889C50);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ToolKitProtoAssistantSchemaIdentifier(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ToolKitProtoAssistantToolSchemaDefinition(0);
  sub_23C5855B0(a1 + *(v12 + 28), v7, &qword_27E1FACC8, &unk_23C889C50);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_23C585C34(v7, &qword_27E1FACC8, &unk_23C889C50);
  }

  sub_23C716FA0(v7, v11, type metadata accessor for ToolKitProtoAssistantSchemaIdentifier);
  sub_23C716EF0(&qword_27E1FACC0, type metadata accessor for ToolKitProtoAssistantSchemaIdentifier, &protocol conformance descriptor for ToolKitProtoAssistantSchemaIdentifier);
  sub_23C871304();
  return sub_23C717008(v11, type metadata accessor for ToolKitProtoAssistantSchemaIdentifier);
}

uint64_t sub_23C6C78BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for ToolKitProtoAssistantToolSchemaDefinition(0);
  if (*(a1 + *(result + 32) + 8))
  {
    return sub_23C8712C4();
  }

  return result;
}

uint64_t sub_23C6C7980@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = type metadata accessor for ToolKitProtoAssistantSchemaIdentifier(0);
  (*(*(v5 - 8) + 56))(&a2[v4], 1, 1, v5);
  v6 = &a2[*(a1 + 32)];
  *v6 = 0;
  *(v6 + 1) = 0;
  result = _s26AIMLInstrumentationStreams012ToolKitProtoC10DefinitionVACycfC_0();
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  v8 = MEMORY[0x277D84F90];
  *(a2 + 2) = MEMORY[0x277D84F90];
  *(a2 + 3) = v8;
  return result;
}

uint64_t sub_23C6C7A64(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C716EF0(&qword_27E1FE8A0, type metadata accessor for ToolKitProtoAssistantToolSchemaDefinition, &protocol conformance descriptor for ToolKitProtoAssistantToolSchemaDefinition);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23C6C7B04(uint64_t a1)
{
  sub_23C716EF0(&qword_27E1FE270, type metadata accessor for ToolKitProtoAssistantToolSchemaDefinition, &protocol conformance descriptor for ToolKitProtoAssistantToolSchemaDefinition);

  return sub_23C8711F4();
}

uint64_t sub_23C6C7B70(uint64_t a1, uint64_t a2)
{
  sub_23C716EF0(&qword_27E1FE270, type metadata accessor for ToolKitProtoAssistantToolSchemaDefinition, &protocol conformance descriptor for ToolKitProtoAssistantToolSchemaDefinition);

  return sub_23C871204();
}

uint64_t sub_23C6C7C0C()
{
  v0 = sub_23C871344();
  __swift_allocate_value_buffer(v0, qword_27E1FCD20);
  __swift_project_value_buffer(v0, qword_27E1FCD20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC80, &qword_23C879000);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FAC88, &qword_23C879008) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23C873D20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "entity";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23C871314();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "enumeration";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  return sub_23C871324();
}

uint64_t sub_23C6C7E4C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t), void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v9 = v5;
  while (1)
  {
    result = sub_23C871044();
    if (v6 || (v14 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      a4(v9, a1, a2, a3);
    }

    else if (result == 2)
    {
      a5(v9, a1, a2, a3);
    }
  }

  return result;
}

uint64_t sub_23C6C7EF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Entity(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD838, &unk_23C889D40);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinitionKind(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FECA8, &qword_23C889908);
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
  sub_23C5855B0(a1, v12, &qword_27E1FD838, &unk_23C889D40);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E1FD838, &unk_23C889D40);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C716FA0(v12, v19, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinitionKind);
    sub_23C716FA0(v19, v17, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinitionKind);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_23C717008(v17, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinitionKind);
      v29 = v44;
    }

    else
    {
      sub_23C585C34(v24, &qword_27E1FECA8, &qword_23C889908);
      v31 = v40;
      sub_23C716FA0(v17, v40, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Entity);
      sub_23C716FA0(v31, v24, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Entity);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }
  }

  v32 = v42;
  sub_23C716EF0(&qword_27E1FE2A0, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Entity, &protocol conformance descriptor for ToolKitProtoAssistantTypeSchemaDefinition.Entity);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E1FECA8, &qword_23C889908);
  }

  sub_23C5855B0(v24, v32, &qword_27E1FECA8, &qword_23C889908);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E1FECA8, &qword_23C889908);
    return sub_23C585C34(v32, &qword_27E1FECA8, &qword_23C889908);
  }

  else
  {
    v35 = v39;
    sub_23C716FA0(v32, v39, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Entity);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E1FECA8, &qword_23C889908);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E1FD838, &unk_23C889D40);
    sub_23C716FA0(v35, v36, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Entity);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_23C6C84B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Enumeration(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD838, &unk_23C889D40);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinitionKind(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FECB0, &qword_23C889910);
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
  sub_23C5855B0(a1, v12, &qword_27E1FD838, &unk_23C889D40);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_23C585C34(v12, &qword_27E1FD838, &unk_23C889D40);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_23C716FA0(v12, v19, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinitionKind);
    sub_23C716FA0(v19, v17, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinitionKind);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_23C585C34(v24, &qword_27E1FECB0, &qword_23C889910);
      v31 = v40;
      sub_23C716FA0(v17, v40, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Enumeration);
      sub_23C716FA0(v31, v24, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Enumeration);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_23C717008(v17, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinitionKind);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_23C716EF0(&qword_27E1FE2B8, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Enumeration, &protocol conformance descriptor for ToolKitProtoAssistantTypeSchemaDefinition.Enumeration);
  v33 = v43;
  sub_23C8711A4();
  if (v33)
  {
    return sub_23C585C34(v24, &qword_27E1FECB0, &qword_23C889910);
  }

  sub_23C5855B0(v24, v32, &qword_27E1FECB0, &qword_23C889910);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_23C585C34(v24, &qword_27E1FECB0, &qword_23C889910);
    return sub_23C585C34(v32, &qword_27E1FECB0, &qword_23C889910);
  }

  else
  {
    v35 = v39;
    sub_23C716FA0(v32, v39, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Enumeration);
    if (v28 != 1)
    {
      sub_23C871054();
    }

    sub_23C585C34(v24, &qword_27E1FECB0, &qword_23C889910);
    v36 = v38;
    sub_23C585C34(v38, &qword_27E1FD838, &unk_23C889D40);
    sub_23C716FA0(v35, v36, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Enumeration);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t ToolKitProtoAssistantTypeSchemaDefinition.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FD838, &unk_23C889D40);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v13 - v9;
  sub_23C5855B0(v3, &v13 - v9, &qword_27E1FD838, &unk_23C889D40);
  v11 = type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinitionKind(0);
  if ((*(*(v11 - 8) + 48))(v10, 1, v11) == 1)
  {
    goto LABEL_6;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_23C6C8E38(v3, a1, a2, a3);
  }

  else
  {
    sub_23C6C8C00(v3, a1, a2, a3);
  }

  result = sub_23C717008(v10, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinitionKind);
  if (!v4)
  {
LABEL_6:
    type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition(0);
    return sub_23C870F14();
  }

  return result;
}