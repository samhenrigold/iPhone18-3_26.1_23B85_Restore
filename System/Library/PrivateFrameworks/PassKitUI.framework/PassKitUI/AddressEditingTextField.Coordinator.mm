@interface AddressEditingTextField.Coordinator
- (_TtCV9PassKitUI23AddressEditingTextField11Coordinator)init;
- (void)textFieldDidBeginEditing:(id)editing;
- (void)textFieldDidChangeWithTextField:(id)field;
@end

@implementation AddressEditingTextField.Coordinator

- (void)textFieldDidBeginEditing:(id)editing
{
  v3 = *&self->parent[OBJC_IVAR____TtCV9PassKitUI23AddressEditingTextField11Coordinator_parent + 56];
  v4 = *&self->parent[OBJC_IVAR____TtCV9PassKitUI23AddressEditingTextField11Coordinator_parent + 88];
  v10[5] = *&self->parent[OBJC_IVAR____TtCV9PassKitUI23AddressEditingTextField11Coordinator_parent + 72];
  v10[6] = v4;
  v5 = *&self->parent[OBJC_IVAR____TtCV9PassKitUI23AddressEditingTextField11Coordinator_parent + 8];
  v10[0] = *(&self->super.isa + OBJC_IVAR____TtCV9PassKitUI23AddressEditingTextField11Coordinator_parent);
  v6 = *&self->parent[OBJC_IVAR____TtCV9PassKitUI23AddressEditingTextField11Coordinator_parent + 24];
  v7 = *&self->parent[OBJC_IVAR____TtCV9PassKitUI23AddressEditingTextField11Coordinator_parent + 40];
  v10[1] = v5;
  v10[2] = v6;
  v11 = *&self->parent[OBJC_IVAR____TtCV9PassKitUI23AddressEditingTextField11Coordinator_parent + 104];
  v10[3] = v7;
  v10[4] = v3;
  selfCopy = self;
  sub_1BD5C75CC(v10, v9);
  sub_1BD5C6EE4();

  sub_1BD5C7604(v10);
}

- (void)textFieldDidChangeWithTextField:(id)field
{
  v5 = *(&self->super.isa + OBJC_IVAR____TtCV9PassKitUI23AddressEditingTextField11Coordinator_parent);
  v6 = *&self->parent[OBJC_IVAR____TtCV9PassKitUI23AddressEditingTextField11Coordinator_parent];
  v7 = *&self->parent[OBJC_IVAR____TtCV9PassKitUI23AddressEditingTextField11Coordinator_parent + 16];
  v8 = *&self->parent[OBJC_IVAR____TtCV9PassKitUI23AddressEditingTextField11Coordinator_parent + 40];
  v10 = *&self->parent[OBJC_IVAR____TtCV9PassKitUI23AddressEditingTextField11Coordinator_parent + 56];
  v9 = *&self->parent[OBJC_IVAR____TtCV9PassKitUI23AddressEditingTextField11Coordinator_parent + 64];
  v11 = *&self->parent[OBJC_IVAR____TtCV9PassKitUI23AddressEditingTextField11Coordinator_parent + 88];
  v60 = *&self->parent[OBJC_IVAR____TtCV9PassKitUI23AddressEditingTextField11Coordinator_parent + 104];
  sub_1BE048964();
  fieldCopy = field;
  selfCopy = self;
  sub_1BE048964();
  sub_1BE048964();
  sub_1BE048C84();
  v62 = v8;
  v13 = v11;
  sub_1BE048C84();
  v14 = v10;
  v15 = v9;
  sub_1BE048964();
  text = [fieldCopy text];
  if (text)
  {
    v17 = text;
    sub_1BE052434();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48B70, &unk_1BE0E5BC0);
  sub_1BE0518F4();
  v60, v18, v19, v20, v21, v22, v23, v24;
  v13, v25, v26, v27, v28, v29, v30, v31;

  v62, v32, v33, v34, v35, v36, v37, v38;
  v7, v39, v40, v41, v42, v43, v44, v45;
  v6, v46, v47, v48, v49, v50, v51, v52;
  v5, v53, v54, v55, v56, v57, v58, v59;
}

- (_TtCV9PassKitUI23AddressEditingTextField11Coordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end