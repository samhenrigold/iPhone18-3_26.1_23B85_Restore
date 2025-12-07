uint64_t sub_1C56B87B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C584F050();
  if (!v3)
  {
    while (1)
    {
      if (v5)
      {
        return result;
      }

      if (result > 3)
      {
        switch(result)
        {
          case 4:
            type metadata accessor for WebPlacecardBridge.MUActionBarItem(0);
            type metadata accessor for WebPlacecardBridge.MUUserInteractionAction(0);
            sub_1C56EF190(&qword_1EC16D5F8, type metadata accessor for WebPlacecardBridge.MUUserInteractionAction, &unk_1C586DE40);
            sub_1C584F100();
            break;
          case 5:
            type metadata accessor for WebPlacecardBridge.MUWebMenuItem(0);
            sub_1C56EF190(&qword_1EC16D838, type metadata accessor for WebPlacecardBridge.MUWebMenuItem, &unk_1C586E570);
            sub_1C584F0F0();
            break;
          case 6:
            goto LABEL_4;
        }
      }

      else
      {
        if (result == 1 || result == 2)
        {
LABEL_4:
          type metadata accessor for WebPlacecardBridge.MUActionBarItem(0);
          sub_1C584F0D0();
          goto LABEL_5;
        }

        if (result == 3)
        {
          type metadata accessor for WebPlacecardBridge.MUActionBarItem(0);
          sub_1C5703DDC();
          sub_1C584F090();
        }
      }

LABEL_5:
      result = sub_1C584F050();
    }
  }

  return result;
}

uint64_t sub_1C56B89CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = type metadata accessor for WebPlacecardBridge.MUActionBarItem(0);
  v9 = result;
  if (*(v3 + *(result + 24) + 8))
  {
    result = sub_1C584F1F0();
    if (v4)
    {
      return result;
    }
  }

  else if (v4)
  {
    return result;
  }

  if (*(v3 + *(v9 + 28) + 8))
  {
    sub_1C584F1F0();
  }

  if (*(v3 + *(v9 + 32)) != 2)
  {
    sub_1C5703DDC();
    sub_1C584F1A0();
  }

  sub_1C56B8BB4(v3, a1, a2, a3);
  if (*(*v3 + 16))
  {
    type metadata accessor for WebPlacecardBridge.MUWebMenuItem(0);
    sub_1C56EF190(&qword_1EC16D838, type metadata accessor for WebPlacecardBridge.MUWebMenuItem, &unk_1C586E570);
    sub_1C584F210();
  }

  sub_1C56C17B4(v3, a1, a2, a3, type metadata accessor for WebPlacecardBridge.MUActionBarItem);
  return sub_1C584EFB0();
}

uint64_t sub_1C56B8BB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EB18, &qword_1C586AF80);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for WebPlacecardBridge.MUUserInteractionAction(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for WebPlacecardBridge.MUActionBarItem(0);
  sub_1C56466CC(a1 + *(v14 + 36), v8, &qword_1EC16EB18, &qword_1C586AF80);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C5625230(v8, &qword_1EC16EB18, &qword_1C586AF80);
  }

  sub_1C56EC178(v8, v13, type metadata accessor for WebPlacecardBridge.MUUserInteractionAction);
  sub_1C56EF190(&qword_1EC16D5F8, type metadata accessor for WebPlacecardBridge.MUUserInteractionAction, &unk_1C586DE40);
  sub_1C584F220();
  return sub_1C56EC248(v13, type metadata accessor for WebPlacecardBridge.MUUserInteractionAction);
}

uint64_t sub_1C56B8DD0@<X0>(int *a1@<X0>, void *a2@<X8>)
{
  *a2 = MEMORY[0x1E69E7CC0];
  sub_1C584EFC0();
  v4 = a1[7];
  v5 = (a2 + a1[6]);
  *v5 = 0;
  v5[1] = 0;
  v6 = (a2 + v4);
  *v6 = 0;
  v6[1] = 0;
  v7 = a1[9];
  *(a2 + a1[8]) = 2;
  v8 = type metadata accessor for WebPlacecardBridge.MUUserInteractionAction(0);
  result = (*(*(v8 - 8) + 56))(a2 + v7, 1, 1, v8);
  v10 = (a2 + a1[10]);
  *v10 = 0;
  v10[1] = 0;
  return result;
}

uint64_t sub_1C56B8ECC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C56EF190(&qword_1EC16FB10, type metadata accessor for WebPlacecardBridge.MUActionBarItem, &unk_1C586E2F0);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C56B8F6C(uint64_t a1)
{
  sub_1C56EF190(&qword_1EC16D7E8, type metadata accessor for WebPlacecardBridge.MUActionBarItem, &unk_1C586E278);

  return sub_1C584F160();
}

uint64_t sub_1C56B8FD8(uint64_t a1, uint64_t a2)
{
  sub_1C56EF190(&qword_1EC16D7E8, type metadata accessor for WebPlacecardBridge.MUActionBarItem, &unk_1C586E278);

  return sub_1C584F170();
}

uint64_t sub_1C56B9058()
{
  v0 = sub_1C584F250();
  __swift_allocate_value_buffer(v0, qword_1EC18FD20);
  __swift_project_value_buffer(v0, qword_1EC18FD20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC0, &qword_1C5875DD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC8, &qword_1C5875DD8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C5867990;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "ACTION";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C584F230();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "MENU";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  return sub_1C584F240();
}

uint64_t sub_1C56B9244()
{
  v0 = sub_1C584F250();
  __swift_allocate_value_buffer(v0, qword_1EC18FD38);
  __swift_project_value_buffer(v0, qword_1EC18FD38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC0, &qword_1C5875DD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC8, &qword_1C5875DD8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C5867990;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "primary_action";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C584F230();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "secondary_actions";
  *(v10 + 1) = 17;
  v10[16] = 2;
  v9();
  return sub_1C584F240();
}

uint64_t sub_1C56B940C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C584F050();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for WebPlacecardBridge.MUActionBarArgument(0);
        type metadata accessor for WebPlacecardBridge.MUActionBarItem(0);
        sub_1C56EF190(&qword_1EC16D7E8, type metadata accessor for WebPlacecardBridge.MUActionBarItem, &unk_1C586E278);
        sub_1C584F100();
      }

      else if (result == 2)
      {
        type metadata accessor for WebPlacecardBridge.MUActionBarItem(0);
        sub_1C56EF190(&qword_1EC16D7E8, type metadata accessor for WebPlacecardBridge.MUActionBarItem, &unk_1C586E278);
        sub_1C584F0F0();
      }

      result = sub_1C584F050();
    }
  }

  return result;
}

uint64_t sub_1C56B9560(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C56B965C(v3, a1, a2, a3);
  if (!v4)
  {
    if (*(*v3 + 16))
    {
      type metadata accessor for WebPlacecardBridge.MUActionBarItem(0);
      sub_1C56EF190(&qword_1EC16D7E8, type metadata accessor for WebPlacecardBridge.MUActionBarItem, &unk_1C586E278);
      sub_1C584F210();
    }

    type metadata accessor for WebPlacecardBridge.MUActionBarArgument(0);
    return sub_1C584EFB0();
  }

  return result;
}

uint64_t sub_1C56B965C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EC38, &qword_1C586B0B0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for WebPlacecardBridge.MUActionBarItem(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for WebPlacecardBridge.MUActionBarArgument(0);
  sub_1C56466CC(a1 + *(v14 + 24), v8, &qword_1EC16EC38, &qword_1C586B0B0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C5625230(v8, &qword_1EC16EC38, &qword_1C586B0B0);
  }

  sub_1C56EC178(v8, v13, type metadata accessor for WebPlacecardBridge.MUActionBarItem);
  sub_1C56EF190(&qword_1EC16D7E8, type metadata accessor for WebPlacecardBridge.MUActionBarItem, &unk_1C586E278);
  sub_1C584F220();
  return sub_1C56EC248(v13, type metadata accessor for WebPlacecardBridge.MUActionBarItem);
}

uint64_t sub_1C56B9878@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = MEMORY[0x1E69E7CC0];
  sub_1C584EFC0();
  v4 = *(a1 + 24);
  v5 = type metadata accessor for WebPlacecardBridge.MUActionBarItem(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(&a2[v4], 1, 1, v5);
}

uint64_t sub_1C56B9950(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C56EF190(&qword_1EC16FB08, type metadata accessor for WebPlacecardBridge.MUActionBarArgument, &unk_1C586E480);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C56B99F0(uint64_t a1)
{
  sub_1C56EF190(&qword_1EC16D740, type metadata accessor for WebPlacecardBridge.MUActionBarArgument, &unk_1C586E408);

  return sub_1C584F160();
}

uint64_t sub_1C56B9A5C(uint64_t a1, uint64_t a2)
{
  sub_1C56EF190(&qword_1EC16D740, type metadata accessor for WebPlacecardBridge.MUActionBarArgument, &unk_1C586E408);

  return sub_1C584F170();
}

uint64_t sub_1C56B9ADC()
{
  v0 = sub_1C584F250();
  __swift_allocate_value_buffer(v0, qword_1EC18FD50);
  __swift_project_value_buffer(v0, qword_1EC18FD50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC0, &qword_1C5875DD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC8, &qword_1C5875DD8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1C586AE90;
  v4 = v28 + v3;
  v5 = v28 + v3 + v1[14];
  *(v28 + v3) = 1;
  *v5 = "menu_item_id";
  *(v5 + 8) = 12;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADE8];
  v7 = sub_1C584F230();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "display_name";
  *(v9 + 8) = 12;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "symbol_image";
  *(v11 + 1) = 12;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "app_artwork";
  *(v13 + 1) = 11;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "url";
  *(v15 + 1) = 3;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "groupData";
  *(v17 + 1) = 9;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "action";
  *(v19 + 1) = 6;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "attributes";
  *(v21 + 1) = 10;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "is_inline";
  *(v22 + 8) = 9;
  *(v22 + 16) = 2;
  v8();
  v23 = (v4 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "icon";
  *(v24 + 1) = 4;
  v24[16] = 2;
  v8();
  v25 = (v4 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "item_size";
  *(v26 + 1) = 9;
  v26[16] = 2;
  v8();
  return sub_1C584F240();
}

uint64_t sub_1C56B9ED8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C584F050();
  if (!v3)
  {
    while (1)
    {
      if (v5)
      {
        return result;
      }

      if (result <= 5)
      {
        if (result > 2 || result == 1 || result == 2)
        {
          type metadata accessor for WebPlacecardBridge.MUWebMenuItem(0);
          sub_1C584F0D0();
        }
      }

      else if (result > 8)
      {
        switch(result)
        {
          case 9:
            type metadata accessor for WebPlacecardBridge.MUWebMenuItem(0);
            sub_1C584F080();
            break;
          case 10:
            v6 = v3;
            type metadata accessor for WebPlacecardBridge.MUWebMenuItem(0);
            type metadata accessor for WebPlacecardBridge.MUWebMenuIcon(0);
            v7 = type metadata accessor for WebPlacecardBridge.MUWebMenuIcon;
            v8 = &unk_1C586E6D8;
            v9 = &qword_1EC16D850;
LABEL_23:
            sub_1C56EF190(v9, v7, v8);
            v3 = v6;
            sub_1C584F100();
            break;
          case 11:
            type metadata accessor for WebPlacecardBridge.MUWebMenuItem(0);
            sub_1C5703FD4();
            sub_1C584F090();
            break;
        }
      }

      else
      {
        if (result != 6)
        {
          if (result != 7)
          {
            sub_1C56F2204();
            sub_1C584F070();
            goto LABEL_5;
          }

          v6 = v3;
          type metadata accessor for WebPlacecardBridge.MUWebMenuItem(0);
          type metadata accessor for WebPlacecardBridge.MUUserInteractionAction(0);
          v7 = type metadata accessor for WebPlacecardBridge.MUUserInteractionAction;
          v8 = &unk_1C586DE40;
          v9 = &qword_1EC16D5F8;
          goto LABEL_23;
        }

        type metadata accessor for WebPlacecardBridge.MUWebMenuItem(0);
        sub_1C56EF190(&qword_1EC16D838, type metadata accessor for WebPlacecardBridge.MUWebMenuItem, &unk_1C586E570);
        sub_1C584F0F0();
      }

LABEL_5:
      result = sub_1C584F050();
    }
  }

  return result;
}

int *sub_1C56BA200(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = type metadata accessor for WebPlacecardBridge.MUWebMenuItem(0);
  v9 = result;
  if (*(v3 + result[7] + 8))
  {
    result = sub_1C584F1F0();
    if (v4)
    {
      return result;
    }
  }

  else if (v4)
  {
    return result;
  }

  if (*(v3 + v9[8] + 8))
  {
    sub_1C584F1F0();
  }

  if (*(v3 + v9[9] + 8))
  {
    sub_1C584F1F0();
  }

  if (*(v3 + v9[10] + 8))
  {
    sub_1C584F1F0();
  }

  sub_1C56E4AE0(v3, a1, a2, a3, type metadata accessor for WebPlacecardBridge.MUWebMenuItem, 5);
  if (*(*v3 + 16))
  {
    sub_1C56EF190(&qword_1EC16D838, type metadata accessor for WebPlacecardBridge.MUWebMenuItem, &unk_1C586E570);
    sub_1C584F210();
  }

  sub_1C56BA480(v3, a1, a2, a3);
  if (*(v3[1] + 16))
  {
    sub_1C56F2204();
    sub_1C584F180();
  }

  sub_1C56DB148(v3, a1, a2, a3, type metadata accessor for WebPlacecardBridge.MUWebMenuItem);
  sub_1C56BA69C(v3, a1, a2, a3);
  sub_1C56BA8B8(v3, a1, a2, a3);
  return sub_1C584EFB0();
}

uint64_t sub_1C56BA480(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EB18, &qword_1C586AF80);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for WebPlacecardBridge.MUUserInteractionAction(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for WebPlacecardBridge.MUWebMenuItem(0);
  sub_1C56466CC(a1 + *(v14 + 48), v8, &qword_1EC16EB18, &qword_1C586AF80);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C5625230(v8, &qword_1EC16EB18, &qword_1C586AF80);
  }

  sub_1C56EC178(v8, v13, type metadata accessor for WebPlacecardBridge.MUUserInteractionAction);
  sub_1C56EF190(&qword_1EC16D5F8, type metadata accessor for WebPlacecardBridge.MUUserInteractionAction, &unk_1C586DE40);
  sub_1C584F220();
  return sub_1C56EC248(v13, type metadata accessor for WebPlacecardBridge.MUUserInteractionAction);
}

uint64_t sub_1C56BA69C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EC40, &qword_1C586B0B8);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for WebPlacecardBridge.MUWebMenuIcon(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for WebPlacecardBridge.MUWebMenuItem(0);
  sub_1C56466CC(a1 + *(v14 + 56), v8, &qword_1EC16EC40, &qword_1C586B0B8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C5625230(v8, &qword_1EC16EC40, &qword_1C586B0B8);
  }

  sub_1C56EC178(v8, v13, type metadata accessor for WebPlacecardBridge.MUWebMenuIcon);
  sub_1C56EF190(&qword_1EC16D850, type metadata accessor for WebPlacecardBridge.MUWebMenuIcon, &unk_1C586E6D8);
  sub_1C584F220();
  return sub_1C56EC248(v13, type metadata accessor for WebPlacecardBridge.MUWebMenuIcon);
}

uint64_t sub_1C56BA8B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for WebPlacecardBridge.MUWebMenuItem(0);
  if (*(a1 + *(result + 60)) != 3)
  {
    sub_1C5703FD4();
    return sub_1C584F1A0();
  }

  return result;
}

uint64_t sub_1C56BA944@<X0>(int *a1@<X0>, char *a2@<X8>)
{
  v4 = MEMORY[0x1E69E7CC0];
  *a2 = MEMORY[0x1E69E7CC0];
  *(a2 + 1) = v4;
  sub_1C584EFC0();
  v5 = a1[8];
  v6 = &a2[a1[7]];
  *v6 = 0;
  *(v6 + 1) = 0;
  v7 = &a2[v5];
  *v7 = 0;
  *(v7 + 1) = 0;
  v8 = a1[10];
  v9 = &a2[a1[9]];
  *v9 = 0;
  *(v9 + 1) = 0;
  v10 = &a2[v8];
  *v10 = 0;
  *(v10 + 1) = 0;
  v11 = a1[12];
  v12 = &a2[a1[11]];
  *v12 = 0;
  *(v12 + 1) = 0;
  v13 = type metadata accessor for WebPlacecardBridge.MUUserInteractionAction(0);
  (*(*(v13 - 8) + 56))(&a2[v11], 1, 1, v13);
  v14 = a1[14];
  a2[a1[13]] = 2;
  v15 = type metadata accessor for WebPlacecardBridge.MUWebMenuIcon(0);
  result = (*(*(v15 - 8) + 56))(&a2[v14], 1, 1, v15);
  a2[a1[15]] = 3;
  return result;
}

uint64_t sub_1C56BAA70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_1C584EFD0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1C56BAAE4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = sub_1C584EFD0();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1C56BABAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C56EF190(&qword_1EC16FB00, type metadata accessor for WebPlacecardBridge.MUWebMenuItem, &unk_1C586E5E8);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C56BAC4C(uint64_t a1)
{
  sub_1C56EF190(&qword_1EC16D838, type metadata accessor for WebPlacecardBridge.MUWebMenuItem, &unk_1C586E570);

  return sub_1C584F160();
}

uint64_t sub_1C56BACB8(uint64_t a1, uint64_t a2)
{
  sub_1C56EF190(&qword_1EC16D838, type metadata accessor for WebPlacecardBridge.MUWebMenuItem, &unk_1C586E570);

  return sub_1C584F170();
}

uint64_t sub_1C56BAD38()
{
  v0 = sub_1C584F250();
  __swift_allocate_value_buffer(v0, qword_1EC18FD68);
  __swift_project_value_buffer(v0, qword_1EC18FD68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC0, &qword_1C5875DD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC8, &qword_1C5875DD8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C5867980;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "symbol_image";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C584F230();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "app_artwork";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "style";
  *(v11 + 8) = 5;
  *(v11 + 16) = 2;
  v9();
  return sub_1C584F240();
}

uint64_t sub_1C56BB004(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C56EF190(&qword_1EC16FAF8, type metadata accessor for WebPlacecardBridge.MUWebMenuIcon, &unk_1C586E750);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C56BB0A4(uint64_t a1)
{
  sub_1C56EF190(&qword_1EC16D850, type metadata accessor for WebPlacecardBridge.MUWebMenuIcon, &unk_1C586E6D8);

  return sub_1C584F160();
}

uint64_t sub_1C56BB110(uint64_t a1, uint64_t a2)
{
  sub_1C56EF190(&qword_1EC16D850, type metadata accessor for WebPlacecardBridge.MUWebMenuIcon, &unk_1C586E6D8);

  return sub_1C584F170();
}

uint64_t sub_1C56BB1BC()
{
  v0 = sub_1C584F250();
  __swift_allocate_value_buffer(v0, qword_1EC18FD80);
  __swift_project_value_buffer(v0, qword_1EC18FD80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC0, &qword_1C5875DD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC8, &qword_1C5875DD8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C5867980;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "NONE";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C584F230();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "ROUNDED_RECT";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "APP_CLIP";
  *(v11 + 8) = 8;
  *(v11 + 16) = 2;
  v9();
  return sub_1C584F240();
}

uint64_t sub_1C56BB3F0()
{
  v0 = sub_1C584F250();
  __swift_allocate_value_buffer(v0, qword_1EC18FD98);
  __swift_project_value_buffer(v0, qword_1EC18FD98);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC0, &qword_1C5875DD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC8, &qword_1C5875DD8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C586AE50;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "xCoordinate";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C584F230();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "yCoordinate";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "height";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "width";
  *(v14 + 1) = 5;
  v14[16] = 2;
  v9();
  return sub_1C584F240();
}

uint64_t sub_1C56BB638(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C584F050();
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
        if (result == 3 || result == 4)
        {
LABEL_9:
          type metadata accessor for WebPlacecardBridge.MUWebMenuButtonBoundingBox(0);
          sub_1C584F0A0();
        }
      }

      else if (result == 1 || result == 2)
      {
        goto LABEL_9;
      }

      result = sub_1C584F050();
    }
  }

  return result;
}

int *sub_1C56BB724(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = type metadata accessor for WebPlacecardBridge.MUWebMenuButtonBoundingBox(0);
  v6 = result;
  if (*(v3 + result[5] + 4))
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    result = sub_1C584F1B0();
    if (v4)
    {
      return result;
    }
  }

  if ((*(v3 + v6[6] + 4) & 1) == 0)
  {
    sub_1C584F1B0();
  }

  if ((*(v3 + v6[7] + 4) & 1) == 0)
  {
    sub_1C584F1B0();
  }

  if ((*(v3 + v6[8] + 4) & 1) == 0)
  {
    sub_1C584F1B0();
  }

  return sub_1C584EFB0();
}

uint64_t sub_1C56BB838@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1C584EFC0();
  v5 = a1[6];
  v6 = a2 + a1[5];
  *v6 = 0;
  *(v6 + 4) = 1;
  v7 = a2 + v5;
  *v7 = 0;
  *(v7 + 4) = 1;
  v8 = a1[8];
  v9 = a2 + a1[7];
  *v9 = 0;
  *(v9 + 4) = 1;
  v10 = a2 + v8;
  *v10 = 0;
  *(v10 + 4) = 1;
  return result;
}

uint64_t sub_1C56BB8E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C56EF190(&qword_1EC16FAF0, type metadata accessor for WebPlacecardBridge.MUWebMenuButtonBoundingBox, &unk_1C586E8E0);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C56BB988(uint64_t a1)
{
  sub_1C56EF190(&qword_1EC16D598, type metadata accessor for WebPlacecardBridge.MUWebMenuButtonBoundingBox, &unk_1C586E868);

  return sub_1C584F160();
}

uint64_t sub_1C56BB9F4(uint64_t a1, uint64_t a2)
{
  sub_1C56EF190(&qword_1EC16D598, type metadata accessor for WebPlacecardBridge.MUWebMenuButtonBoundingBox, &unk_1C586E868);

  return sub_1C584F170();
}

uint64_t sub_1C56BBA74()
{
  v0 = sub_1C584F250();
  __swift_allocate_value_buffer(v0, qword_1EC18FDB0);
  __swift_project_value_buffer(v0, qword_1EC18FDB0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC0, &qword_1C5875DD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC8, &qword_1C5875DD8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1C586AE30;
  v4 = v16 + v3;
  v5 = v16 + v3 + v1[14];
  *(v16 + v3) = 1;
  *v5 = "isRatingSuggestion";
  *(v5 + 8) = 18;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1C584F230();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "isPhotoSuggestion";
  *(v9 + 8) = 17;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "didTapSuggestion";
  *(v11 + 1) = 16;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "didSelectDislike";
  *(v13 + 1) = 16;
  v13[16] = 2;
  v8();
  v14 = v4 + 4 * v2 + v1[14];
  *(v4 + 4 * v2) = 5;
  *v14 = "disSelectLike";
  *(v14 + 8) = 13;
  *(v14 + 16) = 2;
  v8();
  return sub_1C584F240();
}

uint64_t sub_1C56BBD00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C584F050();
  if (!v3)
  {
    while (1)
    {
      if (v5)
      {
        return result;
      }

      if (result <= 2)
      {
        if (result == 1 || result == 2)
        {
LABEL_10:
          type metadata accessor for WebPlacecardBridge.MUUserInteractionARPSuggestion(0);
          sub_1C584F080();
        }
      }

      else if (result == 3 || result == 4 || result == 5)
      {
        goto LABEL_10;
      }

      result = sub_1C584F050();
    }
  }

  return result;
}

int *sub_1C56BBE08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for WebPlacecardBridge.MUUserInteractionARPSuggestion(0);
  v10 = result;
  if (*(v5 + result[5]) == 2)
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    result = sub_1C584F190();
    if (v4)
    {
      return result;
    }
  }

  if (*(v5 + v10[6]) != 2)
  {
    sub_1C584F190();
  }

  if (*(v5 + v10[7]) != 2)
  {
    sub_1C584F190();
  }

  if (*(v5 + v10[8]) != 2)
  {
    sub_1C584F190();
  }

  sub_1C56C70A0(v5, a1, a2, a3, type metadata accessor for WebPlacecardBridge.MUUserInteractionARPSuggestion);
  return sub_1C584EFB0();
}

uint64_t sub_1C56BBF48@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1C584EFC0();
  v5 = a1[6];
  *(a2 + a1[5]) = 2;
  *(a2 + v5) = 2;
  v6 = a1[8];
  *(a2 + a1[7]) = 2;
  *(a2 + v6) = 2;
  *(a2 + a1[9]) = 2;
  return result;
}

uint64_t sub_1C56BBFE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C56EF190(&qword_1EC16FAE8, type metadata accessor for WebPlacecardBridge.MUUserInteractionARPSuggestion, &unk_1C586EA48);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C56BC080(uint64_t a1)
{
  sub_1C56EF190(&qword_1EC16F3C8, type metadata accessor for WebPlacecardBridge.MUUserInteractionARPSuggestion, &unk_1C586E9D0);

  return sub_1C584F160();
}

uint64_t sub_1C56BC0EC(uint64_t a1, uint64_t a2)
{
  sub_1C56EF190(&qword_1EC16F3C8, type metadata accessor for WebPlacecardBridge.MUUserInteractionARPSuggestion, &unk_1C586E9D0);

  return sub_1C584F170();
}

uint64_t sub_1C56BC18C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  while (1)
  {
    result = sub_1C584F050();
    if (v4 || (v7 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      a4(0);
      sub_1C584F0D0();
    }
  }

  return result;
}

uint64_t sub_1C56BC220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  result = a4(0);
  if (*(v4 + *(result + 20) + 8))
  {
    result = sub_1C584F1F0();
    if (v5)
    {
      return result;
    }

    return sub_1C584EFB0();
  }

  if (!v5)
  {
    return sub_1C584EFB0();
  }

  return result;
}

uint64_t sub_1C56BC32C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C56EF190(&qword_1EC16FAE0, type metadata accessor for WebPlacecardBridge.MUUserInteractionExploreGuide, &unk_1C586EBB0);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C56BC3CC(uint64_t a1)
{
  sub_1C56EF190(&qword_1EC16F3E0, type metadata accessor for WebPlacecardBridge.MUUserInteractionExploreGuide, &unk_1C586EB38);

  return sub_1C584F160();
}

uint64_t sub_1C56BC438(uint64_t a1, uint64_t a2)
{
  sub_1C56EF190(&qword_1EC16F3E0, type metadata accessor for WebPlacecardBridge.MUUserInteractionExploreGuide, &unk_1C586EB38);

  return sub_1C584F170();
}

uint64_t sub_1C56BC578(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C56EF190(&qword_1EC16FAD8, type metadata accessor for WebPlacecardBridge.MUUserInteractionUserGuide, &unk_1C586ED18);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C56BC618(uint64_t a1)
{
  sub_1C56EF190(&qword_1EC16F3F8, type metadata accessor for WebPlacecardBridge.MUUserInteractionUserGuide, &unk_1C586ECA0);

  return sub_1C584F160();
}

uint64_t sub_1C56BC684(uint64_t a1, uint64_t a2)
{
  sub_1C56EF190(&qword_1EC16F3F8, type metadata accessor for WebPlacecardBridge.MUUserInteractionUserGuide, &unk_1C586ECA0);

  return sub_1C584F170();
}

uint64_t sub_1C56BC7C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C56EF190(&qword_1EC16FAD0, type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedGuide, &unk_1C586EE80);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C56BC864(uint64_t a1)
{
  sub_1C56EF190(&qword_1EC16F410, type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedGuide, &unk_1C586EE08);

  return sub_1C584F160();
}

uint64_t sub_1C56BC8D0(uint64_t a1, uint64_t a2)
{
  sub_1C56EF190(&qword_1EC16F410, type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedGuide, &unk_1C586EE08);

  return sub_1C584F170();
}

uint64_t sub_1C56BC97C()
{
  v0 = sub_1C584F250();
  __swift_allocate_value_buffer(v0, qword_1EC18FE10);
  __swift_project_value_buffer(v0, qword_1EC18FE10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC0, &qword_1C5875DD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC8, &qword_1C5875DD8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C5867990;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "appleRatingCategory";
  *(v6 + 8) = 19;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C584F230();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "value";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return sub_1C584F240();
}

uint64_t sub_1C56BCB44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = type metadata accessor for WebPlacecardBridge.MUUserInteractionARPRating(0);
  v6 = result;
  if (*(v3 + *(result + 20) + 8))
  {
    result = sub_1C584F1F0();
    if (v4)
    {
      return result;
    }
  }

  else if (v4)
  {
    return result;
  }

  if ((*(v3 + *(v6 + 24) + 4) & 1) == 0)
  {
    sub_1C584F1B0();
  }

  return sub_1C584EFB0();
}

uint64_t sub_1C56BCC7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C56EF190(&qword_1EC16FAC8, type metadata accessor for WebPlacecardBridge.MUUserInteractionARPRating, &unk_1C586EFE8);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C56BCD1C(uint64_t a1)
{
  sub_1C56EF190(&qword_1EC16F428, type metadata accessor for WebPlacecardBridge.MUUserInteractionARPRating, &unk_1C586EF70);

  return sub_1C584F160();
}

uint64_t sub_1C56BCD88(uint64_t a1, uint64_t a2)
{
  sub_1C56EF190(&qword_1EC16F428, type metadata accessor for WebPlacecardBridge.MUUserInteractionARPRating, &unk_1C586EF70);

  return sub_1C584F170();
}

uint64_t sub_1C56BCE28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = type metadata accessor for WebPlacecardBridge.MUUserInteractionInlineRAPEntry(0);
  if (*(v3 + *(result + 20)) == 6)
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    sub_1C5703E84();
    result = sub_1C584F1A0();
    if (v4)
    {
      return result;
    }
  }

  return sub_1C584EFB0();
}

uint64_t sub_1C56BCEDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1C584EFC0();
  *(a2 + *(a1 + 20)) = 6;
  return result;
}

uint64_t sub_1C56BCF8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C56EF190(&qword_1EC16FAC0, type metadata accessor for WebPlacecardBridge.MUUserInteractionInlineRAPEntry, &unk_1C586F150);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C56BD02C(uint64_t a1)
{
  sub_1C56EF190(&qword_1EC16D500, type metadata accessor for WebPlacecardBridge.MUUserInteractionInlineRAPEntry, &unk_1C586F0D8);

  return sub_1C584F160();
}

uint64_t sub_1C56BD098(uint64_t a1, uint64_t a2)
{
  sub_1C56EF190(&qword_1EC16D500, type metadata accessor for WebPlacecardBridge.MUUserInteractionInlineRAPEntry, &unk_1C586F0D8);

  return sub_1C584F170();
}

uint64_t sub_1C56BD114(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 20);
  v4 = *(a1 + v3);
  v5 = *(a2 + v3);
  if (v4 == 6)
  {
    if (v5 != 6)
    {
      return 0;
    }
  }

  else if (v4 != v5)
  {
    return 0;
  }

  sub_1C584EFD0();
  sub_1C56EF190(&qword_1EC16ED48, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1C584F620() & 1;
}

uint64_t sub_1C56BD1C8()
{
  v0 = sub_1C584F250();
  __swift_allocate_value_buffer(v0, qword_1EC18FE40);
  __swift_project_value_buffer(v0, qword_1EC18FE40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC0, &qword_1C5875DD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC8, &qword_1C5875DD8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C5867990;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "vendorId";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C584F230();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "attributionType";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v9();
  return sub_1C584F240();
}

uint64_t sub_1C56BD440(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C56EF190(&qword_1EC16FAB8, type metadata accessor for WebPlacecardBridge.MUAttributionArgument, &unk_1C586F2B8);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C56BD4E0(uint64_t a1)
{
  sub_1C56EF190(&qword_1EC16D6E0, type metadata accessor for WebPlacecardBridge.MUAttributionArgument, &unk_1C586F240);

  return sub_1C584F160();
}

uint64_t sub_1C56BD54C(uint64_t a1, uint64_t a2)
{
  sub_1C56EF190(&qword_1EC16D6E0, type metadata accessor for WebPlacecardBridge.MUAttributionArgument, &unk_1C586F240);

  return sub_1C584F170();
}

uint64_t sub_1C56BD5CC()
{
  v0 = sub_1C584F250();
  __swift_allocate_value_buffer(v0, qword_1EC18FE58);
  __swift_project_value_buffer(v0, qword_1EC18FE58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC0, &qword_1C5875DD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC8, &qword_1C5875DD8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C5867990;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "PLACE";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C584F230();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "PUBLISHER";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  return sub_1C584F240();
}

uint64_t sub_1C56BD7D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1C584EFC0();
  v5 = (a2 + *(a1 + 20));
  *v5 = 0;
  v5[1] = 0;
  return result;
}

uint64_t sub_1C56BD880(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C56EF190(&qword_1EC16FAB0, type metadata accessor for WebPlacecardBridge.MUAmpArtworkArgument, &unk_1C586F448);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C56BD920(uint64_t a1)
{
  sub_1C56EF190(&qword_1EC16F450, type metadata accessor for WebPlacecardBridge.MUAmpArtworkArgument, &unk_1C586F3D0);

  return sub_1C584F160();
}

uint64_t sub_1C56BD98C(uint64_t a1, uint64_t a2)
{
  sub_1C56EF190(&qword_1EC16F450, type metadata accessor for WebPlacecardBridge.MUAmpArtworkArgument, &unk_1C586F3D0);

  return sub_1C584F170();
}

uint64_t sub_1C56BDA38()
{
  v0 = sub_1C584F250();
  __swift_allocate_value_buffer(v0, qword_1EC18FE88);
  __swift_project_value_buffer(v0, qword_1EC18FE88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC0, &qword_1C5875DD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC8, &qword_1C5875DD8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C586AE50;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "styleAttributes";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C584F230();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "nightMode";
  *(v10 + 8) = 9;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "transparent";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "icon_id";
  *(v14 + 1) = 7;
  v14[16] = 2;
  v9();
  return sub_1C584F240();
}

uint64_t sub_1C56BDC88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C584F050();
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
          goto LABEL_14;
        }

        if (result == 4)
        {
          type metadata accessor for WebPlacecardBridge.MUIconArgument(0);
          sub_1C584F0E0();
        }
      }

      else
      {
        if (result == 1)
        {
          type metadata accessor for WebPlacecardBridge.MUIconArgument(0);
          type metadata accessor for WebPlacecardBridge.MUStyleAttributes(0);
          sub_1C56EF190(&qword_1EC16D7A8, type metadata accessor for WebPlacecardBridge.MUStyleAttributes, &unk_1C586F808);
          sub_1C584F100();
          goto LABEL_5;
        }

        if (result == 2)
        {
LABEL_14:
          type metadata accessor for WebPlacecardBridge.MUIconArgument(0);
          sub_1C584F080();
        }
      }

LABEL_5:
      result = sub_1C584F050();
    }
  }

  return result;
}

uint64_t sub_1C56BDDFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C56BDF20(v3, a1, a2, a3);
  if (!v4)
  {
    v6 = type metadata accessor for WebPlacecardBridge.MUIconArgument(0);
    if (*(v3 + v6[6]) != 2)
    {
      sub_1C584F190();
    }

    if (*(v3 + v6[7]) != 2)
    {
      sub_1C584F190();
    }

    if ((*(v3 + v6[8] + 4) & 1) == 0)
    {
      sub_1C584F200();
    }

    return sub_1C584EFB0();
  }

  return result;
}

uint64_t sub_1C56BDF20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EC48, &qword_1C586B0C0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for WebPlacecardBridge.MUStyleAttributes(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for WebPlacecardBridge.MUIconArgument(0);
  sub_1C56466CC(a1 + *(v14 + 20), v8, &qword_1EC16EC48, &qword_1C586B0C0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C5625230(v8, &qword_1EC16EC48, &qword_1C586B0C0);
  }

  sub_1C56EC178(v8, v13, type metadata accessor for WebPlacecardBridge.MUStyleAttributes);
  sub_1C56EF190(&qword_1EC16D7A8, type metadata accessor for WebPlacecardBridge.MUStyleAttributes, &unk_1C586F808);
  sub_1C584F220();
  return sub_1C56EC248(v13, type metadata accessor for WebPlacecardBridge.MUStyleAttributes);
}

uint64_t sub_1C56BE13C@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C584EFC0();
  v4 = a1[5];
  v5 = type metadata accessor for WebPlacecardBridge.MUStyleAttributes(0);
  result = (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v7 = a1[7];
  *(a2 + a1[6]) = 2;
  *(a2 + v7) = 2;
  v8 = a2 + a1[8];
  *v8 = 0;
  *(v8 + 4) = 1;
  return result;
}

uint64_t sub_1C56BE220(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C56EF190(&qword_1EC16FAA8, type metadata accessor for WebPlacecardBridge.MUIconArgument, &unk_1C586F5B0);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C56BE2C0(uint64_t a1)
{
  sub_1C56EF190(&qword_1EC16D828, type metadata accessor for WebPlacecardBridge.MUIconArgument, &unk_1C586F538);

  return sub_1C584F160();
}

uint64_t sub_1C56BE32C(uint64_t a1, uint64_t a2)
{
  sub_1C56EF190(&qword_1EC16D828, type metadata accessor for WebPlacecardBridge.MUIconArgument, &unk_1C586F538);

  return sub_1C584F170();
}

uint64_t sub_1C56BE3CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1C584EFC0();
  v5 = a2 + *(a1 + 20);
  *v5 = 0;
  *(v5 + 4) = 1;
  return result;
}

uint64_t sub_1C56BE47C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C56EF190(&qword_1EC16FAA0, type metadata accessor for WebPlacecardBridge.MUPageResizedArgument, &unk_1C586F718);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C56BE51C(uint64_t a1)
{
  sub_1C56EF190(&qword_1EC16D6C8, type metadata accessor for WebPlacecardBridge.MUPageResizedArgument, &unk_1C586F6A0);

  return sub_1C584F160();
}

uint64_t sub_1C56BE588(uint64_t a1, uint64_t a2)
{
  sub_1C56EF190(&qword_1EC16D6C8, type metadata accessor for WebPlacecardBridge.MUPageResizedArgument, &unk_1C586F6A0);

  return sub_1C584F170();
}

uint64_t sub_1C56BE654(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for WebPlacecardBridge.MUStyleAttributes.MUStyleAttribute(0), sub_1C56EF190(&qword_1EC16D7B8, type metadata accessor for WebPlacecardBridge.MUStyleAttributes.MUStyleAttribute, &unk_1C586F970), result = sub_1C584F210(), !v4))
  {
    type metadata accessor for WebPlacecardBridge.MUStyleAttributes(0);
    return sub_1C584EFB0();
  }

  return result;
}

uint64_t sub_1C56BE7C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C56EF190(&qword_1EC16FA98, type metadata accessor for WebPlacecardBridge.MUStyleAttributes, &unk_1C586F880);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C56BE868(uint64_t a1)
{
  sub_1C56EF190(&qword_1EC16D7A8, type metadata accessor for WebPlacecardBridge.MUStyleAttributes, &unk_1C586F808);

  return sub_1C584F160();
}

uint64_t sub_1C56BE8D4(uint64_t a1, uint64_t a2)
{
  sub_1C56EF190(&qword_1EC16D7A8, type metadata accessor for WebPlacecardBridge.MUStyleAttributes, &unk_1C586F808);

  return sub_1C584F170();
}

uint64_t sub_1C56BE968()
{
  result = MEMORY[0x1C6949D90](0xD000000000000011, 0x80000001C5896C20);
  qword_1EC18FEB8 = 0xD000000000000024;
  unk_1EC18FEC0 = 0x80000001C5894570;
  return result;
}

uint64_t sub_1C56BE9DC()
{
  v0 = sub_1C584F250();
  __swift_allocate_value_buffer(v0, qword_1EC18F9C8);
  __swift_project_value_buffer(v0, qword_1EC18F9C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC0, &qword_1C5875DD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC8, &qword_1C5875DD8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C5867990;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "key";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C584F230();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "value";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return sub_1C584F240();
}

uint64_t sub_1C56BEBA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = type metadata accessor for WebPlacecardBridge.MUStyleAttributes.MUStyleAttribute(0);
  v6 = result;
  if (*(v3 + *(result + 20) + 4))
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    result = sub_1C584F200();
    if (v4)
    {
      return result;
    }
  }

  if ((*(v3 + *(v6 + 24) + 4) & 1) == 0)
  {
    sub_1C584F200();
  }

  return sub_1C584EFB0();
}

uint64_t sub_1C56BECE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C56EF190(&qword_1EC16FA90, type metadata accessor for WebPlacecardBridge.MUStyleAttributes.MUStyleAttribute, &unk_1C586F9E8);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C56BED84(uint64_t a1)
{
  sub_1C56EF190(&qword_1EC16D7B8, type metadata accessor for WebPlacecardBridge.MUStyleAttributes.MUStyleAttribute, &unk_1C586F970);

  return sub_1C584F160();
}

uint64_t sub_1C56BEDF0(uint64_t a1, uint64_t a2)
{
  sub_1C56EF190(&qword_1EC16D7B8, type metadata accessor for WebPlacecardBridge.MUStyleAttributes.MUStyleAttribute, &unk_1C586F970);

  return sub_1C584F170();
}

uint64_t sub_1C56BEE70()
{
  v0 = sub_1C584F250();
  __swift_allocate_value_buffer(v0, qword_1EC18FEC8);
  __swift_project_value_buffer(v0, qword_1EC18FEC8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC0, &qword_1C5875DD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC8, &qword_1C5875DD8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C5867980;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "photoIndex";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C584F230();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "albumIndex";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "type";
  *(v11 + 8) = 4;
  *(v11 + 16) = 2;
  v9();
  return sub_1C584F240();
}

uint64_t sub_1C56BF084(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C584F050();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 3)
      {
        type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedPhoto(0);
        sub_1C5703CE0();
        sub_1C584F090();
      }

      else if (result == 2 || result == 1)
      {
        type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedPhoto(0);
        sub_1C584F0A0();
      }

      result = sub_1C584F050();
    }
  }

  return result;
}

uint64_t sub_1C56BF184(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedPhoto(0);
  v6 = result;
  if (*(v3 + *(result + 20) + 4))
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    result = sub_1C584F1B0();
    if (v4)
    {
      return result;
    }
  }

  if ((*(v3 + *(v6 + 24) + 4) & 1) == 0)
  {
    sub_1C584F1B0();
  }

  if (*(v3 + *(v6 + 28)) != 2)
  {
    sub_1C5703CE0();
    sub_1C584F1A0();
  }

  return sub_1C584EFB0();
}

uint64_t sub_1C56BF294@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1C584EFC0();
  v5 = a1[6];
  v6 = a2 + a1[5];
  *v6 = 0;
  *(v6 + 4) = 1;
  v7 = a2 + v5;
  *v7 = 0;
  *(v7 + 4) = 1;
  *(a2 + a1[7]) = 2;
  return result;
}

uint64_t sub_1C56BF334(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C56EF190(&qword_1EC16FA88, type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedPhoto, &unk_1C586FB50);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C56BF3D4(uint64_t a1)
{
  sub_1C56EF190(&qword_1EC16F488, type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedPhoto, &unk_1C586FAD8);

  return sub_1C584F160();
}

uint64_t sub_1C56BF440(uint64_t a1, uint64_t a2)
{
  sub_1C56EF190(&qword_1EC16F488, type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedPhoto, &unk_1C586FAD8);

  return sub_1C584F170();
}

uint64_t sub_1C56BF4C0()
{
  v0 = sub_1C584F250();
  __swift_allocate_value_buffer(v0, qword_1EC18FEE0);
  __swift_project_value_buffer(v0, qword_1EC18FEE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC0, &qword_1C5875DD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC8, &qword_1C5875DD8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C5867990;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "PHOTO_TAP";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C584F230();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "ALBUM_TAP";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  return sub_1C584F240();
}

uint64_t sub_1C56BF6AC()
{
  v0 = sub_1C584F250();
  __swift_allocate_value_buffer(v0, qword_1EC18FEF8);
  __swift_project_value_buffer(v0, qword_1EC18FEF8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC0, &qword_1C5875DD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC8, &qword_1C5875DD8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C5867980;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "listTitle";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C584F230();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "relatedMapsId";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "originalMapsId";
  *(v11 + 8) = 14;
  *(v11 + 16) = 2;
  v9();
  return sub_1C584F240();
}

uint64_t sub_1C56BF8C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_1C584F050();
    if (v3 || (v5 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 3:
        goto LABEL_8;
      case 2:
        sub_1C584F0C0();
        break;
      case 1:
LABEL_8:
        type metadata accessor for WebPlacecardBridge.MUUserInteractionViewPlaceList(0);
        sub_1C584F0D0();
        break;
    }
  }
}

uint64_t sub_1C56BF984(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = type metadata accessor for WebPlacecardBridge.MUUserInteractionViewPlaceList(0);
  v6 = result;
  if (*(v3 + *(result + 24) + 8))
  {
    result = sub_1C584F1F0();
    if (v4)
    {
      return result;
    }
  }

  else if (v4)
  {
    return result;
  }

  if (*(*v3 + 16))
  {
    sub_1C584F1D0();
  }

  if (*(v3 + *(v6 + 28) + 8))
  {
    sub_1C584F1F0();
  }

  return sub_1C584EFB0();
}

uint64_t sub_1C56BFA7C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = MEMORY[0x1E69E7CC0];
  result = sub_1C584EFC0();
  v5 = *(a1 + 28);
  v6 = (a2 + *(a1 + 24));
  *v6 = 0;
  v6[1] = 0;
  v7 = (a2 + v5);
  *v7 = 0;
  v7[1] = 0;
  return result;
}

uint64_t sub_1C56BFB18(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C56EF190(&qword_1EC16FA80, type metadata accessor for WebPlacecardBridge.MUUserInteractionViewPlaceList, &unk_1C586FCE0);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C56BFBB8(uint64_t a1)
{
  sub_1C56EF190(&qword_1EC16F4A0, type metadata accessor for WebPlacecardBridge.MUUserInteractionViewPlaceList, &unk_1C586FC68);

  return sub_1C584F160();
}

uint64_t sub_1C56BFC24(uint64_t a1, uint64_t a2)
{
  sub_1C56EF190(&qword_1EC16F4A0, type metadata accessor for WebPlacecardBridge.MUUserInteractionViewPlaceList, &unk_1C586FC68);

  return sub_1C584F170();
}

uint64_t sub_1C56BFD38(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C56EF190(&qword_1EC16FA78, type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedPlace, &unk_1C586FE48);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C56BFDD8(uint64_t a1)
{
  sub_1C56EF190(&qword_1EC16F4B8, type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedPlace, &unk_1C586FDD0);

  return sub_1C584F160();
}

uint64_t sub_1C56BFE44(uint64_t a1, uint64_t a2)
{
  sub_1C56EF190(&qword_1EC16F4B8, type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedPlace, &unk_1C586FDD0);

  return sub_1C584F170();
}

uint64_t sub_1C56BFEF0()
{
  v0 = sub_1C584F250();
  __swift_allocate_value_buffer(v0, qword_1EC18FF28);
  __swift_project_value_buffer(v0, qword_1EC18FF28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC0, &qword_1C5875DD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC8, &qword_1C5875DD8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C5867990;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "url";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C584F230();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "embedded_browser";
  *(v10 + 1) = 16;
  v10[16] = 2;
  v9();
  return sub_1C584F240();
}

uint64_t sub_1C56C00C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_1C584F050();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedUrl(0);
      sub_1C584F0D0();
    }

    else if (result == 2)
    {
      type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedUrl(0);
      sub_1C584F080();
    }
  }

  return result;
}

uint64_t sub_1C56C017C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedUrl(0);
  v6 = result;
  if (*(v3 + *(result + 20) + 8))
  {
    result = sub_1C584F1F0();
    if (v4)
    {
      return result;
    }
  }

  else if (v4)
  {
    return result;
  }

  if (*(v3 + *(v6 + 24)) != 2)
  {
    sub_1C584F190();
  }

  return sub_1C584EFB0();
}

uint64_t sub_1C56C0288(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C56EF190(&qword_1EC16FA70, type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedUrl, &unk_1C586FFB0);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C56C0328(uint64_t a1)
{
  sub_1C56EF190(&qword_1EC16D5B8, type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedUrl, &unk_1C586FF38);

  return sub_1C584F160();
}

uint64_t sub_1C56C0394(uint64_t a1, uint64_t a2)
{
  sub_1C56EF190(&qword_1EC16D5B8, type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedUrl, &unk_1C586FF38);

  return sub_1C584F170();
}

uint64_t sub_1C56C0414()
{
  v0 = sub_1C584F250();
  __swift_allocate_value_buffer(v0, qword_1EC18FF40);
  __swift_project_value_buffer(v0, qword_1EC18FF40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC0, &qword_1C5875DD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC8, &qword_1C5875DD8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C5867990;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "urls";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C584F230();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "vendor_id";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  return sub_1C584F240();
}

uint64_t sub_1C56C05E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_1C584F050();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1C584F0C0();
    }

    else if (result == 2)
    {
      type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedAttributionUrl(0);
      sub_1C584F0D0();
    }
  }

  return result;
}

uint64_t sub_1C56C068C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (result = sub_1C584F1D0(), !v4))
  {
    result = type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedAttributionUrl(0);
    if (*(v3 + *(result + 24) + 8))
    {
      result = sub_1C584F1F0();
      if (v4)
      {
        return result;
      }

      return sub_1C584EFB0();
    }

    if (!v4)
    {
      return sub_1C584EFB0();
    }
  }

  return result;
}

uint64_t sub_1C56C07A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C56EF190(&qword_1EC16FA68, type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedAttributionUrl, &unk_1C5870118);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C56C0844(uint64_t a1)
{
  sub_1C56EF190(&qword_1EC16F4D8, type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedAttributionUrl, &unk_1C58700A0);

  return sub_1C584F160();
}

uint64_t sub_1C56C08B0(uint64_t a1, uint64_t a2)
{
  sub_1C56EF190(&qword_1EC16F4D8, type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedAttributionUrl, &unk_1C58700A0);

  return sub_1C584F170();
}

uint64_t sub_1C56C0930()
{
  v0 = sub_1C584F250();
  __swift_allocate_value_buffer(v0, qword_1EC18FF58);
  __swift_project_value_buffer(v0, qword_1EC18FF58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC0, &qword_1C5875DD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC8, &qword_1C5875DD8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C5867990;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "library_saved_state";
  *(v6 + 8) = 19;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C584F230();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "show_add_to_library_modal";
  *(v10 + 1) = 25;
  v10[16] = 2;
  v9();
  return sub_1C584F240();
}

uint64_t sub_1C56C0AF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C584F050();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedLibrary(0);
        sub_1C57041CC();
        sub_1C584F090();
      }

      else if (result == 2)
      {
        type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedLibrary(0);
        sub_1C584F080();
      }

      result = sub_1C584F050();
    }
  }

  return result;
}

uint64_t sub_1C56C0BDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedLibrary(0);
  v6 = result;
  if (*(v3 + *(result + 20)) == 3)
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    sub_1C57041CC();
    result = sub_1C584F1A0();
    if (v4)
    {
      return result;
    }
  }

  if (*(v3 + *(v6 + 24)) != 2)
  {
    sub_1C584F190();
  }

  return sub_1C584EFB0();
}

uint64_t sub_1C56C0CB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1C584EFC0();
  v5 = *(a1 + 24);
  *(a2 + *(a1 + 20)) = 3;
  *(a2 + v5) = 2;
  return result;
}

uint64_t sub_1C56C0D40(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C56EF190(&qword_1EC16FA60, type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedLibrary, &unk_1C5870280);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C56C0DE0(uint64_t a1)
{
  sub_1C56EF190(&qword_1EC16D528, type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedLibrary, &unk_1C5870208);

  return sub_1C584F160();
}

uint64_t sub_1C56C0E4C(uint64_t a1, uint64_t a2)
{
  sub_1C56EF190(&qword_1EC16D528, type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedLibrary, &unk_1C5870208);

  return sub_1C584F170();
}

uint64_t sub_1C56C0F60(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C56EF190(&qword_1EC16FA58, type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedBrowseCategory, &unk_1C58703E8);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C56C1000(uint64_t a1)
{
  sub_1C56EF190(&qword_1EC16F4F8, type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedBrowseCategory, &unk_1C5870370);

  return sub_1C584F160();
}

uint64_t sub_1C56C106C(uint64_t a1, uint64_t a2)
{
  sub_1C56EF190(&qword_1EC16F4F8, type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedBrowseCategory, &unk_1C5870370);

  return sub_1C584F170();
}

uint64_t sub_1C56C1118()
{
  v0 = sub_1C584F250();
  __swift_allocate_value_buffer(v0, qword_1EC18FF88);
  __swift_project_value_buffer(v0, qword_1EC18FF88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC0, &qword_1C5875DD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC8, &qword_1C5875DD8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C586AEA0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "row_type";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C584F230();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "departure_sequence";
  *(v10 + 8) = 18;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "departure_sequence_container";
  *(v12 + 1) = 28;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "stop_info";
  *(v14 + 1) = 9;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "transit_line";
  *(v16 + 1) = 12;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "system";
  *(v18 + 1) = 6;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "coordinate";
  *(v20 + 1) = 10;
  v20[16] = 2;
  v9();
  return sub_1C584F240();
}

uint64_t sub_1C56C1428(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C584F050();
  if (!v3)
  {
    while (1)
    {
      if (v5)
      {
        return result;
      }

      if (result <= 3)
      {
        if (result == 1)
        {
          type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedTransitDeparture(0);
          sub_1C5703F80();
          sub_1C584F090();
        }

        else if (result == 2 || result == 3)
        {
LABEL_4:
          type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedTransitDeparture(0);
          sub_1C584F0D0();
        }
      }

      else
      {
        if (result <= 6)
        {
          goto LABEL_4;
        }

        if (result == 7)
        {
          type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedTransitDeparture(0);
          type metadata accessor for MULocation(0);
          sub_1C56EF190(&qword_1EC16D880, type metadata accessor for MULocation, &unk_1C5871748);
          sub_1C584F100();
        }
      }

      result = sub_1C584F050();
    }
  }

  return result;
}

int *sub_1C56C1614(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedTransitDeparture(0);
  v10 = result;
  if (*(v5 + result[5]) == 2)
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    sub_1C5703F80();
    result = sub_1C584F1A0();
    if (v4)
    {
      return result;
    }
  }

  if (*(v5 + v10[6] + 8))
  {
    sub_1C584F1F0();
  }

  if (*(v5 + v10[7] + 8))
  {
    sub_1C584F1F0();
  }

  if (*(v5 + v10[8] + 8))
  {
    sub_1C584F1F0();
  }

  sub_1C56DAF60(v5, a1, a2, a3, type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedTransitDeparture);
  sub_1C56C17B4(v5, a1, a2, a3, type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedTransitDeparture);
  sub_1C56C1830(v5, a1, a2, a3);
  return sub_1C584EFB0();
}

uint64_t sub_1C56C17B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  if (*(a1 + *(result + 40) + 8))
  {
    return sub_1C584F1F0();
  }

  return result;
}

uint64_t sub_1C56C1830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EC50, &qword_1C586B0C8);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for MULocation(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedTransitDeparture(0);
  sub_1C56466CC(a1 + *(v14 + 44), v8, &qword_1EC16EC50, &qword_1C586B0C8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C5625230(v8, &qword_1EC16EC50, &qword_1C586B0C8);
  }

  sub_1C56EC178(v8, v13, type metadata accessor for MULocation);
  sub_1C56EF190(&qword_1EC16D880, type metadata accessor for MULocation, &unk_1C5871748);
  sub_1C584F220();
  return sub_1C56EC248(v13, type metadata accessor for MULocation);
}

uint64_t sub_1C56C1A4C@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C584EFC0();
  v4 = a1[6];
  *(a2 + a1[5]) = 2;
  v5 = (a2 + v4);
  *v5 = 0;
  v5[1] = 0;
  v6 = a1[8];
  v7 = (a2 + a1[7]);
  *v7 = 0;
  v7[1] = 0;
  v8 = (a2 + v6);
  *v8 = 0;
  v8[1] = 0;
  v9 = a1[10];
  v10 = (a2 + a1[9]);
  *v10 = 0;
  v10[1] = 0;
  v11 = (a2 + v9);
  *v11 = 0;
  v11[1] = 0;
  v12 = a1[11];
  v13 = type metadata accessor for MULocation(0);
  v14 = *(*(v13 - 8) + 56);

  return v14(a2 + v12, 1, 1, v13);
}

uint64_t sub_1C56C1B4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C56EF190(&qword_1EC16FA50, type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedTransitDeparture, &unk_1C5870550);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C56C1BEC(uint64_t a1)
{
  sub_1C56EF190(&qword_1EC16F510, type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedTransitDeparture, &unk_1C58704D8);

  return sub_1C584F160();
}

uint64_t sub_1C56C1C58(uint64_t a1, uint64_t a2)
{
  sub_1C56EF190(&qword_1EC16F510, type metadata accessor for WebPlacecardBridge.MUUserInteractionTappedTransitDeparture, &unk_1C58704D8);

  return sub_1C584F170();
}

uint64_t sub_1C56C1CF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(void))
{
  if (!*(*v5 + 16) || (result = a4(), !v6))
  {
    (a5)(0, a2, a3, a4);
    return sub_1C584EFB0();
  }

  return result;
}

uint64_t sub_1C56C1DF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C56EF190(&qword_1EC16FA48, type metadata accessor for WebPlacecardBridge.MUUserInteractionActionTappedTransitIncident, &unk_1C58706B8);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C56C1E94(uint64_t a1)
{
  sub_1C56EF190(&qword_1EC16F528, type metadata accessor for WebPlacecardBridge.MUUserInteractionActionTappedTransitIncident, &unk_1C5870640);

  return sub_1C584F160();
}

uint64_t sub_1C56C1F00(uint64_t a1, uint64_t a2)
{
  sub_1C56EF190(&qword_1EC16F528, type metadata accessor for WebPlacecardBridge.MUUserInteractionActionTappedTransitIncident, &unk_1C5870640);

  return sub_1C584F170();
}

uint64_t sub_1C56C1F7C()
{
  v0 = sub_1C584F250();
  __swift_allocate_value_buffer(v0, qword_1EC18FFB8);
  __swift_project_value_buffer(v0, qword_1EC18FFB8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC0, &qword_1C5875DD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC8, &qword_1C5875DD8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C5867980;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "action_type";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C584F230();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "place_collection";
  *(v10 + 1) = 16;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "attribution";
  *(v11 + 8) = 11;
  *(v11 + 16) = 2;
  v9();
  return sub_1C584F240();
}

uint64_t sub_1C56C2198(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C584F050();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 3 || result == 2)
      {
        type metadata accessor for WebPlacecardBridge.MUUserInteractionPublisherGuideAction(0);
        sub_1C584F0D0();
      }

      else if (result == 1)
      {
        type metadata accessor for WebPlacecardBridge.MUUserInteractionPublisherGuideAction(0);
        sub_1C5703C8C();
        sub_1C584F090();
      }

      result = sub_1C584F050();
    }
  }

  return result;
}

uint64_t sub_1C56C2298(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = type metadata accessor for WebPlacecardBridge.MUUserInteractionPublisherGuideAction(0);
  v6 = result;
  if (*(v3 + *(result + 20)) == 4)
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    sub_1C5703C8C();
    result = sub_1C584F1A0();
    if (v4)
    {
      return result;
    }
  }

  if (*(v3 + *(v6 + 24) + 8))
  {
    sub_1C584F1F0();
  }

  if (*(v3 + *(v6 + 28) + 8))
  {
    sub_1C584F1F0();
  }

  return sub_1C584EFB0();
}

uint64_t sub_1C56C239C@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1C584EFC0();
  v5 = a1[6];
  *(a2 + a1[5]) = 4;
  v6 = (a2 + v5);
  *v6 = 0;
  v6[1] = 0;
  v7 = (a2 + a1[7]);
  *v7 = 0;
  v7[1] = 0;
  return result;
}

uint64_t sub_1C56C2430(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C56EF190(&qword_1EC16FA40, type metadata accessor for WebPlacecardBridge.MUUserInteractionPublisherGuideAction, &unk_1C5870820);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C56C24D0(uint64_t a1)
{
  sub_1C56EF190(&qword_1EC16F540, type metadata accessor for WebPlacecardBridge.MUUserInteractionPublisherGuideAction, &unk_1C58707A8);

  return sub_1C584F160();
}

uint64_t sub_1C56C253C(uint64_t a1, uint64_t a2)
{
  sub_1C56EF190(&qword_1EC16F540, type metadata accessor for WebPlacecardBridge.MUUserInteractionPublisherGuideAction, &unk_1C58707A8);

  return sub_1C584F170();
}

uint64_t sub_1C56C25BC()
{
  v0 = sub_1C584F250();
  __swift_allocate_value_buffer(v0, qword_1EC18FFD0);
  __swift_project_value_buffer(v0, qword_1EC18FFD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC0, &qword_1C5875DD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC8, &qword_1C5875DD8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C586AE50;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "UNKNOWN";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C584F230();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "SHOW_PUBLISHER";
  *(v10 + 8) = 14;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "ADD_GUIDE_TO_LIBRARY";
  *(v12 + 1) = 20;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "SHARE_PUBLISHER_GUIDE";
  *(v14 + 1) = 21;
  v14[16] = 2;
  v9();
  return sub_1C584F240();
}

uint64_t sub_1C56C2844(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  while (1)
  {
    result = sub_1C584F050();
    if (v4 || (v7 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      a4(0);
      sub_1C584F0A0();
    }
  }

  return result;
}

uint64_t sub_1C56C28D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  result = a4(0);
  if (*(v4 + *(result + 20) + 4))
  {
    if (v5)
    {
      return result;
    }
  }

  else
  {
    result = sub_1C584F1B0();
    if (v5)
    {
      return result;
    }
  }

  return sub_1C584EFB0();
}

uint64_t sub_1C56C29E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C56EF190(&qword_1EC16FA38, type metadata accessor for WebPlacecardBridge.MUUserInteractionOpenPhotoViewer, &unk_1C58709B0);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C56C2A88(uint64_t a1)
{
  sub_1C56EF190(&qword_1EC16F558, type metadata accessor for WebPlacecardBridge.MUUserInteractionOpenPhotoViewer, &unk_1C5870938);

  return sub_1C584F160();
}

uint64_t sub_1C56C2AF4(uint64_t a1, uint64_t a2)
{
  sub_1C56EF190(&qword_1EC16F558, type metadata accessor for WebPlacecardBridge.MUUserInteractionOpenPhotoViewer, &unk_1C5870938);

  return sub_1C584F170();
}

uint64_t sub_1C56C2BC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C584F050();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for WebPlacecardBridge.MUUserInteractionAddPhotos(0);
        type metadata accessor for WebPlacecardBridge.MUWebMenuButtonBoundingBox(0);
        sub_1C56EF190(&qword_1EC16D598, type metadata accessor for WebPlacecardBridge.MUWebMenuButtonBoundingBox, &unk_1C586E868);
        sub_1C584F100();
      }

      result = sub_1C584F050();
    }
  }

  return result;
}

uint64_t sub_1C56C2CAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EC30, &qword_1C586B0A8);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for WebPlacecardBridge.MUWebMenuButtonBoundingBox(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for WebPlacecardBridge.MUUserInteractionAddPhotos(0);
  sub_1C56466CC(a1 + *(v14 + 20), v8, &qword_1EC16EC30, &qword_1C586B0A8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C5625230(v8, &qword_1EC16EC30, &qword_1C586B0A8);
  }

  sub_1C56EC178(v8, v13, type metadata accessor for WebPlacecardBridge.MUWebMenuButtonBoundingBox);
  sub_1C56EF190(&qword_1EC16D598, type metadata accessor for WebPlacecardBridge.MUWebMenuButtonBoundingBox, &unk_1C586E868);
  sub_1C584F220();
  return sub_1C56EC248(v13, type metadata accessor for WebPlacecardBridge.MUWebMenuButtonBoundingBox);
}

uint64_t sub_1C56C2F40(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C56EF190(&qword_1EC16FA30, type metadata accessor for WebPlacecardBridge.MUUserInteractionAddPhotos, &unk_1C5870B18);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C56C2FE0(uint64_t a1)
{
  sub_1C56EF190(&qword_1EC16F570, type metadata accessor for WebPlacecardBridge.MUUserInteractionAddPhotos, &unk_1C5870AA0);

  return sub_1C584F160();
}

uint64_t sub_1C56C304C(uint64_t a1, uint64_t a2)
{
  sub_1C56EF190(&qword_1EC16F570, type metadata accessor for WebPlacecardBridge.MUUserInteractionAddPhotos, &unk_1C5870AA0);

  return sub_1C584F170();
}

uint64_t sub_1C56C30CC()
{
  v0 = sub_1C584F250();
  __swift_allocate_value_buffer(v0, qword_1EC190018);
  __swift_project_value_buffer(v0, qword_1EC190018);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC0, &qword_1C5875DD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC8, &qword_1C5875DD8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C5867980;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "title";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C584F230();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "url";
  *(v10 + 1) = 3;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "bundleId";
  *(v11 + 8) = 8;
  *(v11 + 16) = 2;
  v9();
  return sub_1C584F240();
}

uint64_t sub_1C56C3354(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C56EF190(&qword_1EC16FA28, type metadata accessor for WebPlacecardBridge.MUUserInteractionOpenAppClip, &unk_1C5870C80);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C56C33F4(uint64_t a1)
{
  sub_1C56EF190(&qword_1EC16F588, type metadata accessor for WebPlacecardBridge.MUUserInteractionOpenAppClip, &unk_1C5870C08);

  return sub_1C584F160();
}

uint64_t sub_1C56C3460(uint64_t a1, uint64_t a2)
{
  sub_1C56EF190(&qword_1EC16F588, type metadata accessor for WebPlacecardBridge.MUUserInteractionOpenAppClip, &unk_1C5870C08);

  return sub_1C584F170();
}

uint64_t sub_1C56C350C()
{
  v0 = sub_1C584F250();
  __swift_allocate_value_buffer(v0, qword_1EC190030);
  __swift_project_value_buffer(v0, qword_1EC190030);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC0, &qword_1C5875DD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC8, &qword_1C5875DD8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C5867990;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "vendor_id";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C584F230();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "source";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_1C584F240();
}

uint64_t sub_1C56C36DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t a6)
{
  while (1)
  {
    result = sub_1C584F050();
    if (v6 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      a4(0);
      sub_1C584F0D0();
    }

    else if (result == 2)
    {
      a4(0);
      a5();
      sub_1C584F090();
    }
  }

  return result;
}

uint64_t sub_1C56C37CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(uint64_t), uint64_t a6)
{
  result = a4(0);
  v10 = result;
  if (*(v6 + *(result + 20) + 8))
  {
    result = sub_1C584F1F0();
    if (v7)
    {
      return result;
    }
  }

  else if (v7)
  {
    return result;
  }

  if (*(v6 + *(v10 + 24)) != 2)
  {
    a5(result);
    sub_1C584F1A0();
  }

  return sub_1C584EFB0();
}

uint64_t sub_1C56C38C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1C584EFC0();
  v5 = *(a1 + 24);
  v6 = (a2 + *(a1 + 20));
  *v6 = 0;
  v6[1] = 0;
  *(a2 + v5) = 2;
  return result;
}

uint64_t sub_1C56C39B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C56EF190(&qword_1EC16FA20, type metadata accessor for WebPlacecardBridge.MUUserInteractionOpenExtension, &unk_1C5870DE8);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C56C3A50(uint64_t a1)
{
  sub_1C56EF190(&qword_1EC16F5A0, type metadata accessor for WebPlacecardBridge.MUUserInteractionOpenExtension, &unk_1C5870D70);

  return sub_1C584F160();
}

uint64_t sub_1C56C3ABC(uint64_t a1, uint64_t a2)
{
  sub_1C56EF190(&qword_1EC16F5A0, type metadata accessor for WebPlacecardBridge.MUUserInteractionOpenExtension, &unk_1C5870D70);

  return sub_1C584F170();
}

uint64_t sub_1C56C3B5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1C584EFC0();
  *(a2 + *(a1 + 20)) = 2;
  return result;
}

uint64_t sub_1C56C3C04(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C56EF190(&qword_1EC16FA18, type metadata accessor for WebPlacecardBridge.MUStickyHeaderArgument, &unk_1C5870F50);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C56C3CA4(uint64_t a1)
{
  sub_1C56EF190(&qword_1EC16D620, type metadata accessor for WebPlacecardBridge.MUStickyHeaderArgument, &unk_1C5870ED8);

  return sub_1C584F160();
}

uint64_t sub_1C56C3D10(uint64_t a1, uint64_t a2)
{
  sub_1C56EF190(&qword_1EC16D620, type metadata accessor for WebPlacecardBridge.MUStickyHeaderArgument, &unk_1C5870ED8);

  return sub_1C584F170();
}

uint64_t sub_1C56C3DBC()
{
  v0 = sub_1C584F250();
  __swift_allocate_value_buffer(v0, qword_1EC190060);
  __swift_project_value_buffer(v0, qword_1EC190060);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC0, &qword_1C5875DD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC8, &qword_1C5875DD8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C5867990;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "top";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C584F230();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "bottom";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_1C584F240();
}

uint64_t sub_1C56C3F84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(uint64_t, uint64_t, uint64_t))
{
  while (1)
  {
    result = sub_1C584F050();
    if (v6 || (v13 & 1) != 0)
    {
      return result;
    }

    if (result == 1)
    {
      v11 = *(a4(0) + 20);
      goto LABEL_3;
    }

    if (result == 2)
    {
      v11 = *(a4(0) + 24);
LABEL_3:
      v6 = 0;
      a5(v5 + v11, a2, a3);
    }
  }
}

uint64_t sub_1C56C40D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C56EF190(&qword_1EC16FA10, type metadata accessor for WebPlacecardBridge.MUHeaderInsetsArgument, &unk_1C58710B8);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C56C4170(uint64_t a1)
{
  sub_1C56EF190(&qword_1EC16D650, type metadata accessor for WebPlacecardBridge.MUHeaderInsetsArgument, &unk_1C5871040);

  return sub_1C584F160();
}

uint64_t sub_1C56C41DC(uint64_t a1, uint64_t a2)
{
  sub_1C56EF190(&qword_1EC16D650, type metadata accessor for WebPlacecardBridge.MUHeaderInsetsArgument, &unk_1C5871040);

  return sub_1C584F170();
}

uint64_t sub_1C56C431C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C56EF190(&qword_1EC16FA08, type metadata accessor for WebPlacecardBridge.MUUserInteractionCopy, &unk_1C5871220);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C56C43BC(uint64_t a1)
{
  sub_1C56EF190(&qword_1EC16F5C8, type metadata accessor for WebPlacecardBridge.MUUserInteractionCopy, &unk_1C58711A8);

  return sub_1C584F160();
}

uint64_t sub_1C56C4428(uint64_t a1, uint64_t a2)
{
  sub_1C56EF190(&qword_1EC16F5C8, type metadata accessor for WebPlacecardBridge.MUUserInteractionCopy, &unk_1C58711A8);

  return sub_1C584F170();
}

uint64_t sub_1C56C44F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for MUSendToDevice(0), sub_1C56EF190(&qword_1EC16EE98, type metadata accessor for MUSendToDevice, &unk_1C5871EC8), result = sub_1C584F210(), !v4))
  {
    type metadata accessor for WebPlacecardBridge.MUUserInteractionSendToDevice(0);
    return sub_1C584EFB0();
  }

  return result;
}

uint64_t sub_1C56C4668(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C56EF190(&qword_1EC16FA00, type metadata accessor for WebPlacecardBridge.MUUserInteractionSendToDevice, &unk_1C5871388);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C56C4708(uint64_t a1)
{
  sub_1C56EF190(&qword_1EC16F5E0, type metadata accessor for WebPlacecardBridge.MUUserInteractionSendToDevice, &unk_1C5871310);

  return sub_1C584F160();
}

uint64_t sub_1C56C4774(uint64_t a1, uint64_t a2)
{
  sub_1C56EF190(&qword_1EC16F5E0, type metadata accessor for WebPlacecardBridge.MUUserInteractionSendToDevice, &unk_1C5871310);

  return sub_1C584F170();
}

uint64_t sub_1C56C4808()
{
  v0 = sub_1C584F250();
  __swift_allocate_value_buffer(v0, qword_1EC1900A8);
  __swift_project_value_buffer(v0, qword_1EC1900A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC0, &qword_1C5875DD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC8, &qword_1C5875DD8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C586AE50;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "listTitle";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C584F230();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "collectionId";
  *(v10 + 8) = 12;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "attribution";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "placeCollection";
  *(v14 + 1) = 15;
  v14[16] = 2;
  v9();
  return sub_1C584F240();
}

uint64_t sub_1C56C4A50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_1C584F050();
    if (v3 || (v5 & 1) != 0)
    {
      return result;
    }

    if (result > 2)
    {
      if (result == 3 || result == 4)
      {
LABEL_2:
        sub_1C584F0C0();
      }
    }

    else if (result == 1)
    {
      type metadata accessor for WebPlacecardBridge.MUUserInteractionViewGuideList(0);
      sub_1C584F0D0();
    }

    else if (result == 2)
    {
      goto LABEL_2;
    }
  }
}

uint64_t sub_1C56C4B20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = type metadata accessor for WebPlacecardBridge.MUUserInteractionViewGuideList(0);
  if (*(v3 + *(result + 32) + 8))
  {
    result = sub_1C584F1F0();
    if (v4)
    {
      return result;
    }
  }

  else if (v4)
  {
    return result;
  }

  if (*(*v3 + 16))
  {
    sub_1C584F1D0();
  }

  if (*(v3[1] + 16))
  {
    sub_1C584F1D0();
  }

  if (*(v3[2] + 16))
  {
    sub_1C584F1D0();
  }

  return sub_1C584EFB0();
}

uint64_t sub_1C56C4C34@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = MEMORY[0x1E69E7CC0];
  *a2 = MEMORY[0x1E69E7CC0];
  a2[1] = v4;
  a2[2] = v4;
  result = sub_1C584EFC0();
  v6 = (a2 + *(a1 + 32));
  *v6 = 0;
  v6[1] = 0;
  return result;
}

uint64_t sub_1C56C4C9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = sub_1C584EFD0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1C56C4D10(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 28);
  v5 = sub_1C584EFD0();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1C56C4DD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C56EF190(&qword_1EC16F9F8, type metadata accessor for WebPlacecardBridge.MUUserInteractionViewGuideList, &unk_1C58714F0);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C56C4E78(uint64_t a1)
{
  sub_1C56EF190(&qword_1EC16F5F8, type metadata accessor for WebPlacecardBridge.MUUserInteractionViewGuideList, &unk_1C5871478);

  return sub_1C584F160();
}

uint64_t sub_1C56C4EE4(uint64_t a1, uint64_t a2)
{
  sub_1C56EF190(&qword_1EC16F5F8, type metadata accessor for WebPlacecardBridge.MUUserInteractionViewGuideList, &unk_1C5871478);

  return sub_1C584F170();
}

uint64_t sub_1C56C4F84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  while (1)
  {
    result = sub_1C584F050();
    if (v4 || (v7 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      a4(0);
      sub_1C584F080();
    }
  }

  return result;
}

uint64_t sub_1C56C5018(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  result = a4(0);
  if (*(v4 + *(result + 20)) == 2)
  {
    if (v5)
    {
      return result;
    }
  }

  else
  {
    result = sub_1C584F190();
    if (v5)
    {
      return result;
    }
  }

  return sub_1C584EFB0();
}

uint64_t sub_1C56C5128(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C56EF190(&qword_1EC16F9F0, type metadata accessor for WebPlacecardBridge.MUUserInteractionAddToGuides, &unk_1C5871658);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C56C51C8(uint64_t a1)
{
  sub_1C56EF190(&qword_1EC16D580, type metadata accessor for WebPlacecardBridge.MUUserInteractionAddToGuides, &unk_1C58715E0);

  return sub_1C584F160();
}

uint64_t sub_1C56C5234(uint64_t a1, uint64_t a2)
{
  sub_1C56EF190(&qword_1EC16D580, type metadata accessor for WebPlacecardBridge.MUUserInteractionAddToGuides, &unk_1C58715E0);

  return sub_1C584F170();
}

uint64_t sub_1C56C52E0()
{
  v0 = sub_1C584F250();
  __swift_allocate_value_buffer(v0, qword_1EC1900D8);
  __swift_project_value_buffer(v0, qword_1EC1900D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC0, &qword_1C5875DD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC8, &qword_1C5875DD8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C5867990;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "latitude";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C584F230();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "longitude";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  return sub_1C584F240();
}

uint64_t sub_1C56C54A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  result = a4(0);
  v7 = result;
  if (*(v4 + *(result + 20) + 4))
  {
    if (v5)
    {
      return result;
    }
  }

  else
  {
    result = sub_1C584F1B0();
    if (v5)
    {
      return result;
    }
  }

  if ((*(v4 + *(v7 + 24) + 4) & 1) == 0)
  {
    sub_1C584F1B0();
  }

  return sub_1C584EFB0();
}

uint64_t sub_1C56C5608(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C56EF190(&qword_1EC16F9E8, type metadata accessor for MULocation, &unk_1C58717C0);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C56C56AC(uint64_t a1)
{
  sub_1C56EF190(&qword_1EC16D880, type metadata accessor for MULocation, &unk_1C5871748);

  return sub_1C584F160();
}

uint64_t sub_1C56C571C(uint64_t a1, uint64_t a2)
{
  sub_1C56EF190(&qword_1EC16D880, type metadata accessor for MULocation, &unk_1C5871748);

  return sub_1C584F170();
}

uint64_t sub_1C56C57CC()
{
  v0 = sub_1C584F250();
  __swift_allocate_value_buffer(v0, qword_1EC1900F0);
  __swift_project_value_buffer(v0, qword_1EC1900F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC0, &qword_1C5875DD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC8, &qword_1C5875DD8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C5867990;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "display_name";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C584F230();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "supported_connectors";
  *(v10 + 1) = 20;
  v10[16] = 2;
  v9();
  return sub_1C584F240();
}

uint64_t sub_1C56C5994(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C584F050();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for MUVGVehicle(0);
        sub_1C584F0D0();
      }

      else if (result == 2)
      {
        sub_1C56F4368();
        sub_1C584F070();
      }

      result = sub_1C584F050();
    }
  }

  return result;
}

uint64_t sub_1C56C5A64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = type metadata accessor for MUVGVehicle(0);
  if (*(v3 + *(result + 24) + 8))
  {
    result = sub_1C584F1F0();
    if (v4)
    {
      return result;
    }
  }

  else if (v4)
  {
    return result;
  }

  if (*(*v3 + 16))
  {
    sub_1C56F4368();
    sub_1C584F180();
  }

  return sub_1C584EFB0();
}

uint64_t sub_1C56C5BA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C56EF190(&qword_1EC16F9E0, type metadata accessor for MUVGVehicle, &unk_1C5871928);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C56C5C48(uint64_t a1)
{
  sub_1C56EF190(&qword_1EC16EFC0, type metadata accessor for MUVGVehicle, &unk_1C58718B0);

  return sub_1C584F160();
}

uint64_t sub_1C56C5CB4(uint64_t a1, uint64_t a2)
{
  sub_1C56EF190(&qword_1EC16EFC0, type metadata accessor for MUVGVehicle, &unk_1C58718B0);

  return sub_1C584F170();
}

uint64_t sub_1C56C5D40(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1C584F250();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC0, &qword_1C5875DD0);
  v4 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC8, &qword_1C5875DD8) - 8);
  v5 = *(*v4 + 72);
  v6 = (*(*v4 + 80) + 32) & ~*(*v4 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1C586AE50;
  v8 = v7 + v6;
  v9 = v7 + v6 + v4[14];
  *(v7 + v6) = 1;
  *v9 = "postal_addresses";
  *(v9 + 8) = 16;
  *(v9 + 16) = 2;
  v10 = *MEMORY[0x1E69AADE8];
  v11 = sub_1C584F230();
  v12 = *(*(v11 - 8) + 104);
  (v12)(v9, v10, v11);
  v13 = v8 + v5 + v4[14];
  *(v8 + v5) = 2;
  *v13 = "phone_numbers";
  *(v13 + 8) = 13;
  *(v13 + 16) = 2;
  v12();
  v14 = (v8 + 2 * v5);
  v15 = v14 + v4[14];
  *v14 = 3;
  *v15 = "email_addresses";
  *(v15 + 1) = 15;
  v15[16] = 2;
  v12();
  v16 = (v8 + 3 * v5);
  v17 = v16 + v4[14];
  *v16 = 4;
  *v17 = "websites";
  *(v17 + 1) = 8;
  v17[16] = 2;
  v12();
  return sub_1C584F240();
}

uint64_t sub_1C56C5F8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  if (*(*v3 + 16))
  {
    type metadata accessor for MUContactLabeledValue(0);
    sub_1C56EF190(&qword_1EC16EED0, type metadata accessor for MUContactLabeledValue, &unk_1C5871B80);
    result = sub_1C584F210();
    if (v4)
    {
      return result;
    }

    v5 = 0;
  }

  if (*(v3[1] + 16))
  {
    type metadata accessor for MUContactLabeledValue(0);
    sub_1C56EF190(&qword_1EC16EED0, type metadata accessor for MUContactLabeledValue, &unk_1C5871B80);
    result = sub_1C584F210();
    if (v5)
    {
      return result;
    }

    v5 = 0;
  }

  if (*(v3[2] + 16))
  {
    type metadata accessor for MUContactLabeledValue(0);
    sub_1C56EF190(&qword_1EC16EED0, type metadata accessor for MUContactLabeledValue, &unk_1C5871B80);
    v7 = v5;
    result = sub_1C584F210();
    if (v5)
    {
      return result;
    }
  }

  else
  {
    v7 = v5;
  }

  if (!*(v3[3] + 16) || (type metadata accessor for MUContactLabeledValue(0), sub_1C56EF190(&qword_1EC16EED0, type metadata accessor for MUContactLabeledValue, &unk_1C5871B80), result = sub_1C584F210(), !v7))
  {
    type metadata accessor for MUContact(0);
    return sub_1C584EFB0();
  }

  return result;
}

uint64_t sub_1C56C6294(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C56EF190(&qword_1EC16F9D8, type metadata accessor for MUContact, &unk_1C5871A90);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C56C6334(uint64_t a1)
{
  sub_1C56EF190(&qword_1EC16F630, type metadata accessor for MUContact, &unk_1C5871A18);

  return sub_1C584F160();
}

uint64_t sub_1C56C63A0(uint64_t a1, uint64_t a2)
{
  sub_1C56EF190(&qword_1EC16F630, type metadata accessor for MUContact, &unk_1C5871A18);

  return sub_1C584F170();
}

uint64_t sub_1C56C6474()
{
  v0 = sub_1C584F250();
  __swift_allocate_value_buffer(v0, qword_1EC190120);
  __swift_project_value_buffer(v0, qword_1EC190120);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC0, &qword_1C5875DD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC8, &qword_1C5875DD8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C5867980;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "label";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C584F230();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "value";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "identifier";
  *(v11 + 8) = 10;
  *(v11 + 16) = 2;
  v9();
  return sub_1C584F240();
}

uint64_t sub_1C56C6688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  while (1)
  {
    result = sub_1C584F050();
    if (v4 || (v7 & 1) != 0)
    {
      break;
    }

    if (result == 3 || result == 2 || result == 1)
    {
      a4(0);
      sub_1C584F0D0();
    }
  }

  return result;
}

uint64_t sub_1C56C675C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  result = a4(0);
  v7 = result;
  if (*(v4 + *(result + 20) + 8))
  {
    result = sub_1C584F1F0();
    if (v5)
    {
      return result;
    }
  }

  else if (v5)
  {
    return result;
  }

  if (*(v4 + *(v7 + 24) + 8))
  {
    sub_1C584F1F0();
  }

  if (*(v4 + *(v7 + 28) + 8))
  {
    sub_1C584F1F0();
  }

  return sub_1C584EFB0();
}

uint64_t sub_1C56C68BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C56EF190(&qword_1EC16F9D0, type metadata accessor for MUContactLabeledValue, &unk_1C5871BF8);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C56C695C(uint64_t a1)
{
  sub_1C56EF190(&qword_1EC16EED0, type metadata accessor for MUContactLabeledValue, &unk_1C5871B80);

  return sub_1C584F160();
}

uint64_t sub_1C56C69C8(uint64_t a1, uint64_t a2)
{
  sub_1C56EF190(&qword_1EC16EED0, type metadata accessor for MUContactLabeledValue, &unk_1C5871B80);

  return sub_1C584F170();
}

uint64_t sub_1C56C6A74()
{
  v0 = sub_1C584F250();
  __swift_allocate_value_buffer(v0, qword_1EC190138);
  __swift_project_value_buffer(v0, qword_1EC190138);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC0, &qword_1C5875DD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC8, &qword_1C5875DD8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C586AE60;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "region_code";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C584F230();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "measurement_system";
  *(v10 + 8) = 18;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "temperature_unit";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "first_weekday";
  *(v14 + 1) = 13;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "prefers_24_hour_time";
  *(v16 + 1) = 20;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "map_style";
  *(v18 + 1) = 9;
  v18[16] = 2;
  v9();
  return sub_1C584F240();
}

uint64_t sub_1C56C6D40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C584F050();
  if (!v3)
  {
    while (1)
    {
      if (v5)
      {
        return result;
      }

      if (result > 3)
      {
        switch(result)
        {
          case 4:
            type metadata accessor for MUUserPreferences(0);
            sub_1C584F0B0();
            break;
          case 5:
            type metadata accessor for MUUserPreferences(0);
            sub_1C584F080();
            break;
          case 6:
            v6 = v3;
            type metadata accessor for MUUserPreferences(0);
            sub_1C5703B90();
            goto LABEL_5;
        }
      }

      else
      {
        switch(result)
        {
          case 1:
            type metadata accessor for MUUserPreferences(0);
            sub_1C584F0D0();
            break;
          case 2:
            v6 = v3;
            type metadata accessor for MUUserPreferences(0);
            sub_1C5703C38();
LABEL_5:
            v3 = v6;
            sub_1C584F090();
            break;
          case 3:
            v6 = v3;
            type metadata accessor for MUUserPreferences(0);
            sub_1C5703BE4();
            goto LABEL_5;
        }
      }

      result = sub_1C584F050();
    }
  }

  return result;
}

int *sub_1C56C6F04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for MUUserPreferences(0);
  v10 = result;
  if (*(v5 + result[5] + 8))
  {
    result = sub_1C584F1F0();
    if (v4)
    {
      return result;
    }
  }

  else if (v4)
  {
    return result;
  }

  if (*(v5 + v10[6]) != 4)
  {
    sub_1C5703C38();
    sub_1C584F1A0();
  }

  if (*(v5 + v10[7]) != 3)
  {
    sub_1C5703BE4();
    sub_1C584F1A0();
  }

  if ((*(v5 + v10[8] + 4) & 1) == 0)
  {
    sub_1C584F1C0();
  }

  sub_1C56C70A0(v5, a1, a2, a3, type metadata accessor for MUUserPreferences);
  sub_1C56C711C(v5, a1, a2, a3);
  return sub_1C584EFB0();
}

uint64_t sub_1C56C70A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  if (*(a1 + *(result + 36)) != 2)
  {
    return sub_1C584F190();
  }

  return result;
}

uint64_t sub_1C56C711C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for MUUserPreferences(0);
  if (*(a1 + *(result + 40)) != 4)
  {
    sub_1C5703B90();
    return sub_1C584F1A0();
  }

  return result;
}

uint64_t sub_1C56C71A8@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1C584EFC0();
  v5 = a1[6];
  v6 = (a2 + a1[5]);
  *v6 = 0;
  v6[1] = 0;
  *(a2 + v5) = 4;
  v7 = a1[8];
  *(a2 + a1[7]) = 3;
  v8 = a2 + v7;
  *v8 = 0;
  *(v8 + 4) = 1;
  v9 = a1[10];
  *(a2 + a1[9]) = 2;
  *(a2 + v9) = 4;
  return result;
}

uint64_t sub_1C56C725C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C56EF190(&qword_1EC16F9C8, type metadata accessor for MUUserPreferences, &unk_1C5871D60);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C56C72FC(uint64_t a1)
{
  sub_1C56EF190(&qword_1EC16F658, type metadata accessor for MUUserPreferences, &unk_1C5871CE8);

  return sub_1C584F160();
}

uint64_t sub_1C56C7368(uint64_t a1, uint64_t a2)
{
  sub_1C56EF190(&qword_1EC16F658, type metadata accessor for MUUserPreferences, &unk_1C5871CE8);

  return sub_1C584F170();
}

uint64_t sub_1C56C73E8()
{
  v0 = sub_1C584F250();
  __swift_allocate_value_buffer(v0, qword_1EC190150);
  __swift_project_value_buffer(v0, qword_1EC190150);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC0, &qword_1C5875DD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC8, &qword_1C5875DD8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C586AE50;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "MEASUREMENT_SYSTEM_UNSPECIFIED";
  *(v6 + 8) = 30;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C584F230();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "METRIC";
  *(v10 + 8) = 6;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "US";
  *(v12 + 1) = 2;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "UK";
  *(v14 + 1) = 2;
  v14[16] = 2;
  v9();
  return sub_1C584F240();
}

uint64_t sub_1C56C7648()
{
  v0 = sub_1C584F250();
  __swift_allocate_value_buffer(v0, qword_1EC190168);
  __swift_project_value_buffer(v0, qword_1EC190168);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC0, &qword_1C5875DD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC8, &qword_1C5875DD8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C5867980;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "TEMPERATURE_UNIT_UNSPECIFIED";
  *(v6 + 8) = 28;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C584F230();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "CELSIUS";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "FAHRENHEIT";
  *(v11 + 8) = 10;
  *(v11 + 16) = 2;
  v9();
  return sub_1C584F240();
}

uint64_t sub_1C56C787C()
{
  v0 = sub_1C584F250();
  __swift_allocate_value_buffer(v0, qword_1EC190180);
  __swift_project_value_buffer(v0, qword_1EC190180);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC0, &qword_1C5875DD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC8, &qword_1C5875DD8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C586AE50;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "MAP_STYLE_UNSPECIFIED";
  *(v6 + 8) = 21;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C584F230();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "STANDARD";
  *(v10 + 8) = 8;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "SATELLITE";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "LOOKAROUND";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v9();
  return sub_1C584F240();
}

uint64_t sub_1C56C7AE4()
{
  v0 = sub_1C584F250();
  __swift_allocate_value_buffer(v0, qword_1EC190198);
  __swift_project_value_buffer(v0, qword_1EC190198);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC0, &qword_1C5875DD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC8, &qword_1C5875DD8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C586AE50;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "name";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C584F230();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "symbol_name";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "device_id";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "model";
  *(v14 + 1) = 5;
  v14[16] = 2;
  v9();
  return sub_1C584F240();
}

uint64_t sub_1C56C7D44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C584F050();
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
        if (result == 3 || result == 4)
        {
LABEL_9:
          type metadata accessor for MUSendToDevice(0);
          sub_1C584F0D0();
        }
      }

      else if (result == 1 || result == 2)
      {
        goto LABEL_9;
      }

      result = sub_1C584F050();
    }
  }

  return result;
}

int *sub_1C56C7E30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = type metadata accessor for MUSendToDevice(0);
  v6 = result;
  if (*(v3 + result[5] + 8))
  {
    result = sub_1C584F1F0();
    if (v4)
    {
      return result;
    }
  }

  else if (v4)
  {
    return result;
  }

  if (*(v3 + v6[6] + 8))
  {
    sub_1C584F1F0();
  }

  if (*(v3 + v6[7] + 8))
  {
    sub_1C584F1F0();
  }

  if (*(v3 + v6[8] + 8))
  {
    sub_1C584F1F0();
  }

  return sub_1C584EFB0();
}

uint64_t sub_1C56C7F40@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1C584EFC0();
  v5 = a1[6];
  v6 = (a2 + a1[5]);
  *v6 = 0;
  v6[1] = 0;
  v7 = (a2 + v5);
  *v7 = 0;
  v7[1] = 0;
  v8 = a1[8];
  v9 = (a2 + a1[7]);
  *v9 = 0;
  v9[1] = 0;
  v10 = (a2 + v8);
  *v10 = 0;
  v10[1] = 0;
  return result;
}

uint64_t sub_1C56C7FE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C56EF190(&qword_1EC16F9C0, type metadata accessor for MUSendToDevice, &unk_1C5871F40);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C56C8084(uint64_t a1)
{
  sub_1C56EF190(&qword_1EC16EE98, type metadata accessor for MUSendToDevice, &unk_1C5871EC8);

  return sub_1C584F160();
}

uint64_t sub_1C56C80F0(uint64_t a1, uint64_t a2)
{
  sub_1C56EF190(&qword_1EC16EE98, type metadata accessor for MUSendToDevice, &unk_1C5871EC8);

  return sub_1C584F170();
}

uint64_t sub_1C56C8170()
{
  v0 = sub_1C584F250();
  __swift_allocate_value_buffer(v0, qword_1EC1901B0);
  __swift_project_value_buffer(v0, qword_1EC1901B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC0, &qword_1C5875DD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC8, &qword_1C5875DD8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1C586AEB0;
  v4 = v24 + v3;
  v5 = v24 + v3 + v1[14];
  *(v24 + v3) = 1;
  *v5 = "context";
  *(v5 + 8) = 7;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1C584F230();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "icon";
  *(v9 + 8) = 4;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "amp_artwork";
  *(v11 + 1) = 11;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "attribution_data";
  *(v13 + 1) = 16;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "refreshed_map_item";
  *(v15 + 1) = 18;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "transit_labels";
  *(v17 + 1) = 14;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "nearby_places";
  *(v19 + 1) = 13;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "routeSnapshot";
  *(v21 + 1) = 13;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 12;
  *v22 = "method";
  *(v22 + 8) = 6;
  *(v22 + 16) = 2;
  v8();
  return sub_1C584F240();
}

uint64_t sub_1C56C8508()
{
  type metadata accessor for WebPlacecardBridgeReply._StorageClass(0);
  v0 = swift_allocObject();
  v1 = OBJC_IVAR____TtCV6MapsUI23WebPlacecardBridgeReplyP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__context;
  v2 = type metadata accessor for WebPlacecardBridgeReply.MUContext(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = (v0 + OBJC_IVAR____TtCV6MapsUI23WebPlacecardBridgeReplyP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__icon);
  *v3 = 0;
  v3[1] = 0;
  v4 = OBJC_IVAR____TtCV6MapsUI23WebPlacecardBridgeReplyP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__ampArtwork;
  v5 = type metadata accessor for WebPlacecardBridgeReply.MUAmpArtwork(0);
  (*(*(v5 - 8) + 56))(v0 + v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtCV6MapsUI23WebPlacecardBridgeReplyP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__attributionData;
  v7 = type metadata accessor for WebPlacecardBridgeReply.MUAttributionData(0);
  (*(*(v7 - 8) + 56))(v0 + v6, 1, 1, v7);
  v8 = OBJC_IVAR____TtCV6MapsUI23WebPlacecardBridgeReplyP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__refreshedMapItem;
  v9 = type metadata accessor for WebPlacecardBridgeReply.MURefreshedMapItem(0);
  (*(*(v9 - 8) + 56))(v0 + v8, 1, 1, v9);
  *(v0 + OBJC_IVAR____TtCV6MapsUI23WebPlacecardBridgeReplyP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__transitLabels) = MEMORY[0x1E69E7CC0];
  v10 = (v0 + OBJC_IVAR____TtCV6MapsUI23WebPlacecardBridgeReplyP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__nearbyPlaces);
  *v10 = 0;
  v10[1] = 0;
  v11 = (v0 + OBJC_IVAR____TtCV6MapsUI23WebPlacecardBridgeReplyP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__routeSnapshot);
  *v11 = 0;
  v11[1] = 0;
  v12 = OBJC_IVAR____TtCV6MapsUI23WebPlacecardBridgeReplyP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__method;
  v13 = type metadata accessor for WebPlacecardBridgeReply.MUNativeWebCall(0);
  result = (*(*(v13 - 8) + 56))(v0 + v12, 1, 1, v13);
  qword_1EC177430 = v0;
  return result;
}

uint64_t sub_1C56C86F0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EC68, &qword_1C586B0F0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v66 = &v58 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EC60, &qword_1C586B0E8);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v65 = &v58 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC170A60, &qword_1C586B0E0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v63 = &v58 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC170A90, &unk_1C58783D0);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v62 = &v58 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EC58, &unk_1C586B0D0);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = &v58 - v17;
  v19 = OBJC_IVAR____TtCV6MapsUI23WebPlacecardBridgeReplyP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__context;
  v20 = type metadata accessor for WebPlacecardBridgeReply.MUContext(0);
  (*(*(v20 - 8) + 56))(v1 + v19, 1, 1, v20);
  v21 = (v1 + OBJC_IVAR____TtCV6MapsUI23WebPlacecardBridgeReplyP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__icon);
  *v21 = 0;
  v21[1] = 0;
  v22 = OBJC_IVAR____TtCV6MapsUI23WebPlacecardBridgeReplyP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__ampArtwork;
  v58 = OBJC_IVAR____TtCV6MapsUI23WebPlacecardBridgeReplyP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__ampArtwork;
  v23 = type metadata accessor for WebPlacecardBridgeReply.MUAmpArtwork(0);
  (*(*(v23 - 8) + 56))(v1 + v22, 1, 1, v23);
  v24 = OBJC_IVAR____TtCV6MapsUI23WebPlacecardBridgeReplyP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__attributionData;
  v59 = OBJC_IVAR____TtCV6MapsUI23WebPlacecardBridgeReplyP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__attributionData;
  v25 = type metadata accessor for WebPlacecardBridgeReply.MUAttributionData(0);
  (*(*(v25 - 8) + 56))(v1 + v24, 1, 1, v25);
  v26 = OBJC_IVAR____TtCV6MapsUI23WebPlacecardBridgeReplyP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__refreshedMapItem;
  v60 = OBJC_IVAR____TtCV6MapsUI23WebPlacecardBridgeReplyP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__refreshedMapItem;
  v27 = type metadata accessor for WebPlacecardBridgeReply.MURefreshedMapItem(0);
  (*(*(v27 - 8) + 56))(v1 + v26, 1, 1, v27);
  v61 = OBJC_IVAR____TtCV6MapsUI23WebPlacecardBridgeReplyP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__transitLabels;
  *(v1 + OBJC_IVAR____TtCV6MapsUI23WebPlacecardBridgeReplyP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__transitLabels) = MEMORY[0x1E69E7CC0];
  v28 = (v1 + OBJC_IVAR____TtCV6MapsUI23WebPlacecardBridgeReplyP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__nearbyPlaces);
  *v28 = 0;
  v28[1] = 0;
  v29 = (v1 + OBJC_IVAR____TtCV6MapsUI23WebPlacecardBridgeReplyP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__routeSnapshot);
  *v29 = 0;
  v29[1] = 0;
  v30 = OBJC_IVAR____TtCV6MapsUI23WebPlacecardBridgeReplyP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__method;
  v64 = OBJC_IVAR____TtCV6MapsUI23WebPlacecardBridgeReplyP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__method;
  v31 = type metadata accessor for WebPlacecardBridgeReply.MUNativeWebCall(0);
  (*(*(v31 - 8) + 56))(v1 + v30, 1, 1, v31);
  v32 = OBJC_IVAR____TtCV6MapsUI23WebPlacecardBridgeReplyP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__context;
  swift_beginAccess();
  sub_1C56466CC(a1 + v32, v18, &qword_1EC16EC58, &unk_1C586B0D0);
  swift_beginAccess();
  sub_1C56ECE38(v18, v1 + v19, &qword_1EC16EC58, &unk_1C586B0D0);
  swift_endAccess();
  v33 = (a1 + OBJC_IVAR____TtCV6MapsUI23WebPlacecardBridgeReplyP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__icon);
  swift_beginAccess();
  v34 = *v33;
  v35 = v33[1];
  swift_beginAccess();
  *v21 = v34;
  v21[1] = v35;

  v36 = OBJC_IVAR____TtCV6MapsUI23WebPlacecardBridgeReplyP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__ampArtwork;
  swift_beginAccess();
  v37 = v62;
  sub_1C56466CC(a1 + v36, v62, &qword_1EC170A90, &unk_1C58783D0);
  v38 = v58;
  swift_beginAccess();
  sub_1C56ECE38(v37, v1 + v38, &qword_1EC170A90, &unk_1C58783D0);
  swift_endAccess();
  v39 = OBJC_IVAR____TtCV6MapsUI23WebPlacecardBridgeReplyP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__attributionData;
  swift_beginAccess();
  v40 = v63;
  sub_1C56466CC(a1 + v39, v63, &unk_1EC170A60, &qword_1C586B0E0);
  v41 = v59;
  swift_beginAccess();
  sub_1C56ECE38(v40, v1 + v41, &unk_1EC170A60, &qword_1C586B0E0);
  swift_endAccess();
  v42 = OBJC_IVAR____TtCV6MapsUI23WebPlacecardBridgeReplyP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__refreshedMapItem;
  swift_beginAccess();
  v43 = v65;
  sub_1C56466CC(a1 + v42, v65, &qword_1EC16EC60, &qword_1C586B0E8);
  v44 = v60;
  swift_beginAccess();
  sub_1C56ECE38(v43, v1 + v44, &qword_1EC16EC60, &qword_1C586B0E8);
  swift_endAccess();
  v45 = OBJC_IVAR____TtCV6MapsUI23WebPlacecardBridgeReplyP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__transitLabels;
  swift_beginAccess();
  v46 = *(a1 + v45);
  v47 = v61;
  swift_beginAccess();
  *(v1 + v47) = v46;

  v48 = (a1 + OBJC_IVAR____TtCV6MapsUI23WebPlacecardBridgeReplyP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__nearbyPlaces);
  swift_beginAccess();
  v50 = *v48;
  v49 = v48[1];
  swift_beginAccess();
  *v28 = v50;
  v28[1] = v49;

  v51 = (a1 + OBJC_IVAR____TtCV6MapsUI23WebPlacecardBridgeReplyP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__routeSnapshot);
  swift_beginAccess();
  v53 = *v51;
  v52 = v51[1];
  swift_beginAccess();
  *v29 = v53;
  v29[1] = v52;

  v54 = OBJC_IVAR____TtCV6MapsUI23WebPlacecardBridgeReplyP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__method;
  swift_beginAccess();
  v55 = v66;
  sub_1C56466CC(a1 + v54, v66, &qword_1EC16EC68, &qword_1C586B0F0);

  v56 = v64;
  swift_beginAccess();
  sub_1C56ECE38(v55, v1 + v56, &qword_1EC16EC68, &qword_1C586B0F0);
  swift_endAccess();
  return v1;
}

uint64_t sub_1C56C8E20()
{
  sub_1C5625230(v0 + OBJC_IVAR____TtCV6MapsUI23WebPlacecardBridgeReplyP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__context, &qword_1EC16EC58, &unk_1C586B0D0);

  sub_1C5625230(v0 + OBJC_IVAR____TtCV6MapsUI23WebPlacecardBridgeReplyP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__ampArtwork, &qword_1EC170A90, &unk_1C58783D0);
  sub_1C5625230(v0 + OBJC_IVAR____TtCV6MapsUI23WebPlacecardBridgeReplyP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__attributionData, &unk_1EC170A60, &qword_1C586B0E0);
  sub_1C5625230(v0 + OBJC_IVAR____TtCV6MapsUI23WebPlacecardBridgeReplyP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__refreshedMapItem, &qword_1EC16EC60, &qword_1C586B0E8);

  sub_1C5625230(v0 + OBJC_IVAR____TtCV6MapsUI23WebPlacecardBridgeReplyP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__method, &qword_1EC16EC68, &qword_1C586B0F0);

  return swift_deallocClassInstance();
}

uint64_t sub_1C56C8F60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v6 = *(type metadata accessor for WebPlacecardBridgeReply(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v3 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for WebPlacecardBridgeReply._StorageClass(0);
    v9 = swift_allocObject();
    sub_1C56C86F0(v8);
    *(v5 + v6) = v9;
  }

  result = sub_1C584F050();
  if (!v4)
  {
    while (1)
    {
      if (v11)
      {
        return result;
      }

      if (result <= 4)
      {
        if (result > 2)
        {
          v12 = v4;
          if (result == 3)
          {
            swift_beginAccess();
            type metadata accessor for WebPlacecardBridgeReply.MUAmpArtwork(0);
            v13 = type metadata accessor for WebPlacecardBridgeReply.MUAmpArtwork;
            v14 = &unk_1C5873318;
            v15 = &qword_1EC16F708;
          }

          else
          {
            swift_beginAccess();
            type metadata accessor for WebPlacecardBridgeReply.MUAttributionData(0);
            v13 = type metadata accessor for WebPlacecardBridgeReply.MUAttributionData;
            v14 = &unk_1C58735E8;
            v15 = &qword_1EC16D300;
          }
        }

        else
        {
          if (result != 1)
          {
            if (result != 2)
            {
              goto LABEL_27;
            }

LABEL_25:
            swift_beginAccess();
            sub_1C584F0D0();
            goto LABEL_26;
          }

          v12 = v4;
          swift_beginAccess();
          type metadata accessor for WebPlacecardBridgeReply.MUContext(0);
          v13 = type metadata accessor for WebPlacecardBridgeReply.MUContext;
          v14 = &unk_1C5872238;
          v15 = &qword_1EC16D188;
        }

        goto LABEL_24;
      }

      if (result > 6)
      {
        break;
      }

      if (result == 5)
      {
        v12 = v4;
        swift_beginAccess();
        type metadata accessor for WebPlacecardBridgeReply.MURefreshedMapItem(0);
        v13 = type metadata accessor for WebPlacecardBridgeReply.MURefreshedMapItem;
        v14 = &unk_1C5873480;
        v15 = &qword_1EC16D268;
LABEL_24:
        sub_1C56EF190(v15, v13, v14);
        v4 = v12;
        sub_1C584F100();
        goto LABEL_26;
      }

      swift_beginAccess();
      sub_1C584F0C0();
LABEL_26:
      swift_endAccess();
LABEL_27:
      result = sub_1C584F050();
    }

    if (result == 7 || result == 8)
    {
      goto LABEL_25;
    }

    if (result != 12)
    {
      goto LABEL_27;
    }

    v12 = v4;
    swift_beginAccess();
    type metadata accessor for WebPlacecardBridgeReply.MUNativeWebCall(0);
    v13 = type metadata accessor for WebPlacecardBridgeReply.MUNativeWebCall;
    v14 = &unk_1C5873750;
    v15 = &unk_1EC16D438;
    goto LABEL_24;
  }

  return result;
}

uint64_t sub_1C56C933C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + *(type metadata accessor for WebPlacecardBridgeReply(0) + 20));
  result = sub_1C56C9564(v8, a1, a2, a3);
  if (!v4)
  {
    v10 = v8 + OBJC_IVAR____TtCV6MapsUI23WebPlacecardBridgeReplyP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__icon;
    swift_beginAccess();
    if (*(v10 + 8))
    {

      sub_1C584F1F0();
    }

    sub_1C56C978C(v8, a1, a2, a3);
    sub_1C56C99B4(v8, a1, a2, a3);
    sub_1C56C9BDC(v8, a1, a2, a3);
    v11 = OBJC_IVAR____TtCV6MapsUI23WebPlacecardBridgeReplyP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__transitLabels;
    swift_beginAccess();
    if (*(*(v8 + v11) + 16))
    {

      sub_1C584F1D0();
    }

    sub_1C56D8394(v8, a1, a2, a3, &OBJC_IVAR____TtCV6MapsUI23WebPlacecardBridgeReplyP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__nearbyPlaces, 7);
    sub_1C56D8394(v8, a1, a2, a3, &OBJC_IVAR____TtCV6MapsUI23WebPlacecardBridgeReplyP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__routeSnapshot, 8);
    sub_1C56C9E04(v8, a1, a2, a3);
    return sub_1C584EFB0();
  }

  return result;
}

uint64_t sub_1C56C9564(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EC58, &unk_1C586B0D0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for WebPlacecardBridgeReply.MUContext(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV6MapsUI23WebPlacecardBridgeReplyP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__context;
  swift_beginAccess();
  sub_1C56466CC(a1 + v14, v8, &qword_1EC16EC58, &unk_1C586B0D0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C5625230(v8, &qword_1EC16EC58, &unk_1C586B0D0);
  }

  sub_1C56EC178(v8, v13, type metadata accessor for WebPlacecardBridgeReply.MUContext);
  sub_1C56EF190(&qword_1EC16D188, type metadata accessor for WebPlacecardBridgeReply.MUContext, &unk_1C5872238);
  sub_1C584F220();
  return sub_1C56EC248(v13, type metadata accessor for WebPlacecardBridgeReply.MUContext);
}

uint64_t sub_1C56C978C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC170A90, &unk_1C58783D0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for WebPlacecardBridgeReply.MUAmpArtwork(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV6MapsUI23WebPlacecardBridgeReplyP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__ampArtwork;
  swift_beginAccess();
  sub_1C56466CC(a1 + v14, v8, &qword_1EC170A90, &unk_1C58783D0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C5625230(v8, &qword_1EC170A90, &unk_1C58783D0);
  }

  sub_1C56EC178(v8, v13, type metadata accessor for WebPlacecardBridgeReply.MUAmpArtwork);
  sub_1C56EF190(&qword_1EC16F708, type metadata accessor for WebPlacecardBridgeReply.MUAmpArtwork, &unk_1C5873318);
  sub_1C584F220();
  return sub_1C56EC248(v13, type metadata accessor for WebPlacecardBridgeReply.MUAmpArtwork);
}

uint64_t sub_1C56C99B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC170A60, &qword_1C586B0E0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for WebPlacecardBridgeReply.MUAttributionData(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV6MapsUI23WebPlacecardBridgeReplyP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__attributionData;
  swift_beginAccess();
  sub_1C56466CC(a1 + v14, v8, &unk_1EC170A60, &qword_1C586B0E0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C5625230(v8, &unk_1EC170A60, &qword_1C586B0E0);
  }

  sub_1C56EC178(v8, v13, type metadata accessor for WebPlacecardBridgeReply.MUAttributionData);
  sub_1C56EF190(&qword_1EC16D300, type metadata accessor for WebPlacecardBridgeReply.MUAttributionData, &unk_1C58735E8);
  sub_1C584F220();
  return sub_1C56EC248(v13, type metadata accessor for WebPlacecardBridgeReply.MUAttributionData);
}

uint64_t sub_1C56C9BDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EC60, &qword_1C586B0E8);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for WebPlacecardBridgeReply.MURefreshedMapItem(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV6MapsUI23WebPlacecardBridgeReplyP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__refreshedMapItem;
  swift_beginAccess();
  sub_1C56466CC(a1 + v14, v8, &qword_1EC16EC60, &qword_1C586B0E8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C5625230(v8, &qword_1EC16EC60, &qword_1C586B0E8);
  }

  sub_1C56EC178(v8, v13, type metadata accessor for WebPlacecardBridgeReply.MURefreshedMapItem);
  sub_1C56EF190(&qword_1EC16D268, type metadata accessor for WebPlacecardBridgeReply.MURefreshedMapItem, &unk_1C5873480);
  sub_1C584F220();
  return sub_1C56EC248(v13, type metadata accessor for WebPlacecardBridgeReply.MURefreshedMapItem);
}

uint64_t sub_1C56C9E04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EC68, &qword_1C586B0F0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for WebPlacecardBridgeReply.MUNativeWebCall(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV6MapsUI23WebPlacecardBridgeReplyP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__method;
  swift_beginAccess();
  sub_1C56466CC(a1 + v14, v8, &qword_1EC16EC68, &qword_1C586B0F0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C5625230(v8, &qword_1EC16EC68, &qword_1C586B0F0);
  }

  sub_1C56EC178(v8, v13, type metadata accessor for WebPlacecardBridgeReply.MUNativeWebCall);
  sub_1C56EF190(&unk_1EC16D438, type metadata accessor for WebPlacecardBridgeReply.MUNativeWebCall, &unk_1C5873750);
  sub_1C584F220();
  return sub_1C56EC248(v13, type metadata accessor for WebPlacecardBridgeReply.MUNativeWebCall);
}

BOOL sub_1C56CA02C(uint64_t a1, uint64_t a2)
{
  v178 = a2;
  v3 = type metadata accessor for WebPlacecardBridgeReply.MUNativeWebCall(0);
  v150 = *(v3 - 8);
  v151 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v147 = &v146 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FC90, &qword_1C5875EA0);
  MEMORY[0x1EEE9AC00](v149, v6);
  v152 = &v146 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EC68, &qword_1C586B0F0);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v148 = &v146 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v12);
  v160 = &v146 - v13;
  v14 = type metadata accessor for WebPlacecardBridgeReply.MURefreshedMapItem(0);
  v157 = *(v14 - 8);
  v158 = v14;
  MEMORY[0x1EEE9AC00](v14, v15);
  v153 = (&v146 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FC98, &qword_1C5875EA8);
  MEMORY[0x1EEE9AC00](v156, v17);
  v159 = &v146 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EC60, &qword_1C586B0E8);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v154 = (&v146 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v21, v23);
  v162 = &v146 - v24;
  v25 = type metadata accessor for WebPlacecardBridgeReply.MUAttributionData(0);
  v165 = *(v25 - 8);
  v166 = v25;
  MEMORY[0x1EEE9AC00](v25, v26);
  v155 = (&v146 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FCA0, &qword_1C5875EB0);
  MEMORY[0x1EEE9AC00](v164, v28);
  v167 = &v146 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC170A60, &qword_1C586B0E0);
  v32 = MEMORY[0x1EEE9AC00](v30 - 8, v31);
  v161 = (&v146 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v32, v34);
  v169 = &v146 - v35;
  v36 = type metadata accessor for WebPlacecardBridgeReply.MUAmpArtwork(0);
  v171 = *(v36 - 8);
  v172 = v36;
  MEMORY[0x1EEE9AC00](v36, v37);
  v163 = &v146 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FCA8, &qword_1C5875EB8);
  MEMORY[0x1EEE9AC00](v170, v39);
  v173 = &v146 - v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC170A90, &unk_1C58783D0);
  v43 = MEMORY[0x1EEE9AC00](v41 - 8, v42);
  v168 = &v146 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43, v45);
  v175 = &v146 - v46;
  v47 = type metadata accessor for WebPlacecardBridgeReply.MUContext(0);
  v176 = *(v47 - 8);
  v177 = v47;
  MEMORY[0x1EEE9AC00](v47, v48);
  v174 = &v146 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FCB0, &qword_1C5875EC0);
  v51 = v50 - 8;
  MEMORY[0x1EEE9AC00](v50, v52);
  v54 = &v146 - v53;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EC58, &unk_1C586B0D0);
  v57 = MEMORY[0x1EEE9AC00](v55 - 8, v56);
  v59 = &v146 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v57, v60);
  v62 = &v146 - v61;
  v63 = OBJC_IVAR____TtCV6MapsUI23WebPlacecardBridgeReplyP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__context;
  swift_beginAccess();
  sub_1C56466CC(a1 + v63, v62, &qword_1EC16EC58, &unk_1C586B0D0);
  v64 = OBJC_IVAR____TtCV6MapsUI23WebPlacecardBridgeReplyP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__context;
  v65 = v178;
  swift_beginAccess();
  v66 = *(v51 + 56);
  sub_1C56466CC(v62, v54, &qword_1EC16EC58, &unk_1C586B0D0);
  v67 = v65 + v64;
  v68 = v176;
  v69 = v177;
  sub_1C56466CC(v67, &v54[v66], &qword_1EC16EC58, &unk_1C586B0D0);
  v70 = *(v68 + 48);
  if (v70(v54, 1, v69) == 1)
  {

    sub_1C5625230(v62, &qword_1EC16EC58, &unk_1C586B0D0);
    if (v70(&v54[v66], 1, v69) == 1)
    {
      sub_1C5625230(v54, &qword_1EC16EC58, &unk_1C586B0D0);
      goto LABEL_14;
    }

    goto LABEL_6;
  }

  sub_1C56466CC(v54, v59, &qword_1EC16EC58, &unk_1C586B0D0);
  v71 = v59;
  if (v70(&v54[v66], 1, v69) == 1)
  {

    sub_1C5625230(v62, &qword_1EC16EC58, &unk_1C586B0D0);
    sub_1C56EC248(v59, type metadata accessor for WebPlacecardBridgeReply.MUContext);
LABEL_6:
    v72 = &qword_1EC16FCB0;
    v73 = &qword_1C5875EC0;
    v74 = v54;
LABEL_7:
    sub_1C5625230(v74, v72, v73);
    goto LABEL_8;
  }

  v176 = v54;
  v76 = v174;
  sub_1C56EC178(&v54[v66], v174, type metadata accessor for WebPlacecardBridgeReply.MUContext);
  v77 = *(v69 + 20);
  v78 = *(v71 + v77);
  v79 = *(v76 + v77);

  if (v78 != v79)
  {

    v80 = sub_1C56D05E0(v78, v79);

    if ((v80 & 1) == 0)
    {
      sub_1C56EC248(v76, type metadata accessor for WebPlacecardBridgeReply.MUContext);
      sub_1C5625230(v62, &qword_1EC16EC58, &unk_1C586B0D0);
      sub_1C56EC248(v71, type metadata accessor for WebPlacecardBridgeReply.MUContext);
      v74 = v176;
      v72 = &qword_1EC16EC58;
      v73 = &unk_1C586B0D0;
      goto LABEL_7;
    }
  }

  sub_1C584EFD0();
  sub_1C56EF190(&qword_1EC16ED48, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v81 = sub_1C584F620();
  sub_1C56EC248(v76, type metadata accessor for WebPlacecardBridgeReply.MUContext);
  sub_1C5625230(v62, &qword_1EC16EC58, &unk_1C586B0D0);
  sub_1C56EC248(v71, type metadata accessor for WebPlacecardBridgeReply.MUContext);
  sub_1C5625230(v176, &qword_1EC16EC58, &unk_1C586B0D0);
  if ((v81 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_14:
  v82 = (a1 + OBJC_IVAR____TtCV6MapsUI23WebPlacecardBridgeReplyP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__icon);
  swift_beginAccess();
  v83 = *v82;
  v84 = v82[1];
  v85 = (v65 + OBJC_IVAR____TtCV6MapsUI23WebPlacecardBridgeReplyP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__icon);
  swift_beginAccess();
  v86 = v85[1];
  if (v84)
  {
    v87 = v175;
    if (!v86 || (v83 != *v85 || v84 != v86) && (sub_1C584FDC0() & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v87 = v175;
    if (v86)
    {
      goto LABEL_8;
    }
  }

  v88 = OBJC_IVAR____TtCV6MapsUI23WebPlacecardBridgeReplyP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__ampArtwork;
  swift_beginAccess();
  sub_1C56466CC(a1 + v88, v87, &qword_1EC170A90, &unk_1C58783D0);
  v89 = OBJC_IVAR____TtCV6MapsUI23WebPlacecardBridgeReplyP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__ampArtwork;
  swift_beginAccess();
  v90 = *(v170 + 48);
  v91 = v173;
  sub_1C56466CC(v87, v173, &qword_1EC170A90, &unk_1C58783D0);
  sub_1C56466CC(v65 + v89, v91 + v90, &qword_1EC170A90, &unk_1C58783D0);
  v92 = v172;
  v93 = *(v171 + 48);
  if (v93(v91, 1, v172) == 1)
  {
    sub_1C5625230(v87, &qword_1EC170A90, &unk_1C58783D0);
    if (v93(v91 + v90, 1, v92) == 1)
    {
      sub_1C5625230(v91, &qword_1EC170A90, &unk_1C58783D0);
      goto LABEL_29;
    }

    goto LABEL_27;
  }

  v94 = v168;
  sub_1C56466CC(v91, v168, &qword_1EC170A90, &unk_1C58783D0);
  if (v93(v91 + v90, 1, v92) == 1)
  {
    sub_1C5625230(v175, &qword_1EC170A90, &unk_1C58783D0);
    sub_1C56EC248(v94, type metadata accessor for WebPlacecardBridgeReply.MUAmpArtwork);
LABEL_27:
    v72 = &qword_1EC16FCA8;
    v73 = &qword_1C5875EB8;
    v74 = v91;
    goto LABEL_7;
  }

  v95 = v91 + v90;
  v96 = v163;
  sub_1C56EC178(v95, v163, type metadata accessor for WebPlacecardBridgeReply.MUAmpArtwork);
  v97 = sub_1C56EE53C(v94, v96);
  sub_1C56EC248(v96, type metadata accessor for WebPlacecardBridgeReply.MUAmpArtwork);
  sub_1C5625230(v175, &qword_1EC170A90, &unk_1C58783D0);
  sub_1C56EC248(v94, type metadata accessor for WebPlacecardBridgeReply.MUAmpArtwork);
  sub_1C5625230(v91, &qword_1EC170A90, &unk_1C58783D0);
  if ((v97 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_29:
  v98 = OBJC_IVAR____TtCV6MapsUI23WebPlacecardBridgeReplyP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__attributionData;
  swift_beginAccess();
  v99 = v169;
  sub_1C56466CC(a1 + v98, v169, &unk_1EC170A60, &qword_1C586B0E0);
  v100 = OBJC_IVAR____TtCV6MapsUI23WebPlacecardBridgeReplyP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__attributionData;
  swift_beginAccess();
  v101 = *(v164 + 48);
  v102 = v167;
  sub_1C56466CC(v99, v167, &unk_1EC170A60, &qword_1C586B0E0);
  sub_1C56466CC(v65 + v100, v102 + v101, &unk_1EC170A60, &qword_1C586B0E0);
  v103 = v166;
  v104 = *(v165 + 48);
  if (v104(v102, 1, v166) == 1)
  {
    sub_1C5625230(v99, &unk_1EC170A60, &qword_1C586B0E0);
    if (v104(v102 + v101, 1, v103) == 1)
    {
      sub_1C5625230(v102, &unk_1EC170A60, &qword_1C586B0E0);
      goto LABEL_36;
    }

    goto LABEL_34;
  }

  v105 = v161;
  sub_1C56466CC(v102, v161, &unk_1EC170A60, &qword_1C586B0E0);
  if (v104(v102 + v101, 1, v103) == 1)
  {
    sub_1C5625230(v169, &unk_1EC170A60, &qword_1C586B0E0);
    sub_1C56EC248(v105, type metadata accessor for WebPlacecardBridgeReply.MUAttributionData);
LABEL_34:
    v72 = &qword_1EC16FCA0;
    v73 = &qword_1C5875EB0;
    v74 = v102;
    goto LABEL_7;
  }

  v106 = v102 + v101;
  v107 = v155;
  sub_1C56EC178(v106, v155, type metadata accessor for WebPlacecardBridgeReply.MUAttributionData);
  v108 = sub_1C56ED8B0(v105, v107);
  sub_1C56EC248(v107, type metadata accessor for WebPlacecardBridgeReply.MUAttributionData);
  sub_1C5625230(v169, &unk_1EC170A60, &qword_1C586B0E0);
  sub_1C56EC248(v105, type metadata accessor for WebPlacecardBridgeReply.MUAttributionData);
  sub_1C5625230(v102, &unk_1EC170A60, &qword_1C586B0E0);
  if ((v108 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_36:
  v109 = OBJC_IVAR____TtCV6MapsUI23WebPlacecardBridgeReplyP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__refreshedMapItem;
  swift_beginAccess();
  v110 = v162;
  sub_1C56466CC(a1 + v109, v162, &qword_1EC16EC60, &qword_1C586B0E8);
  v111 = OBJC_IVAR____TtCV6MapsUI23WebPlacecardBridgeReplyP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__refreshedMapItem;
  swift_beginAccess();
  v112 = *(v156 + 48);
  v113 = v159;
  sub_1C56466CC(v110, v159, &qword_1EC16EC60, &qword_1C586B0E8);
  sub_1C56466CC(v65 + v111, v113 + v112, &qword_1EC16EC60, &qword_1C586B0E8);
  v114 = v158;
  v115 = *(v157 + 48);
  if (v115(v113, 1, v158) == 1)
  {
    sub_1C5625230(v110, &qword_1EC16EC60, &qword_1C586B0E8);
    v116 = v115(v113 + v112, 1, v114);
    v117 = v160;
    if (v116 == 1)
    {
      sub_1C5625230(v113, &qword_1EC16EC60, &qword_1C586B0E8);
      goto LABEL_43;
    }

    goto LABEL_41;
  }

  v118 = v154;
  sub_1C56466CC(v113, v154, &qword_1EC16EC60, &qword_1C586B0E8);
  v119 = v115(v113 + v112, 1, v114);
  v117 = v160;
  if (v119 == 1)
  {
    sub_1C5625230(v162, &qword_1EC16EC60, &qword_1C586B0E8);
    sub_1C56EC248(v118, type metadata accessor for WebPlacecardBridgeReply.MURefreshedMapItem);
LABEL_41:
    v72 = &qword_1EC16FC98;
    v73 = &qword_1C5875EA8;
    v74 = v113;
    goto LABEL_7;
  }

  v120 = v113 + v112;
  v121 = v153;
  sub_1C56EC178(v120, v153, type metadata accessor for WebPlacecardBridgeReply.MURefreshedMapItem);
  v122 = sub_1C56ED7BC(v118, v121);
  sub_1C56EC248(v121, type metadata accessor for WebPlacecardBridgeReply.MURefreshedMapItem);
  sub_1C5625230(v162, &qword_1EC16EC60, &qword_1C586B0E8);
  sub_1C56EC248(v118, type metadata accessor for WebPlacecardBridgeReply.MURefreshedMapItem);
  sub_1C5625230(v113, &qword_1EC16EC60, &qword_1C586B0E8);
  if ((v122 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_43:
  v123 = OBJC_IVAR____TtCV6MapsUI23WebPlacecardBridgeReplyP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__transitLabels;
  swift_beginAccess();
  v124 = *(a1 + v123);
  v125 = OBJC_IVAR____TtCV6MapsUI23WebPlacecardBridgeReplyP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__transitLabels;
  swift_beginAccess();
  if ((sub_1C56EA440(v124, *(v65 + v125)) & 1) == 0)
  {
    goto LABEL_8;
  }

  v126 = (a1 + OBJC_IVAR____TtCV6MapsUI23WebPlacecardBridgeReplyP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__nearbyPlaces);
  swift_beginAccess();
  v127 = *v126;
  v128 = v126[1];
  v129 = (v65 + OBJC_IVAR____TtCV6MapsUI23WebPlacecardBridgeReplyP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__nearbyPlaces);
  swift_beginAccess();
  v130 = v129[1];
  if (v128)
  {
    if (!v130 || (v127 != *v129 || v128 != v130) && (sub_1C584FDC0() & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else if (v130)
  {
    goto LABEL_8;
  }

  v131 = (a1 + OBJC_IVAR____TtCV6MapsUI23WebPlacecardBridgeReplyP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__routeSnapshot);
  swift_beginAccess();
  v132 = *v131;
  v133 = v131[1];
  v134 = (v65 + OBJC_IVAR____TtCV6MapsUI23WebPlacecardBridgeReplyP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__routeSnapshot);
  swift_beginAccess();
  v135 = v134[1];
  if (v133)
  {
    if (v135 && (v132 == *v134 && v133 == v135 || (sub_1C584FDC0() & 1) != 0))
    {
      goto LABEL_58;
    }

LABEL_8:

    return 0;
  }

  if (v135)
  {
    goto LABEL_8;
  }

LABEL_58:
  v136 = OBJC_IVAR____TtCV6MapsUI23WebPlacecardBridgeReplyP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__method;
  swift_beginAccess();
  sub_1C56466CC(a1 + v136, v117, &qword_1EC16EC68, &qword_1C586B0F0);
  v137 = OBJC_IVAR____TtCV6MapsUI23WebPlacecardBridgeReplyP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__method;
  swift_beginAccess();
  v138 = *(v149 + 48);
  v139 = v152;
  sub_1C56466CC(v117, v152, &qword_1EC16EC68, &qword_1C586B0F0);
  sub_1C56466CC(v65 + v137, v139 + v138, &qword_1EC16EC68, &qword_1C586B0F0);
  v140 = v151;
  v141 = *(v150 + 48);
  if (v141(v139, 1, v151) == 1)
  {

    sub_1C5625230(v117, &qword_1EC16EC68, &qword_1C586B0F0);
    if (v141(v139 + v138, 1, v140) == 1)
    {
      sub_1C5625230(v139, &qword_1EC16EC68, &qword_1C586B0F0);
      return 1;
    }

    goto LABEL_63;
  }

  v142 = v148;
  sub_1C56466CC(v139, v148, &qword_1EC16EC68, &qword_1C586B0F0);
  if (v141(v139 + v138, 1, v140) == 1)
  {

    sub_1C5625230(v117, &qword_1EC16EC68, &qword_1C586B0F0);
    sub_1C56EC248(v142, type metadata accessor for WebPlacecardBridgeReply.MUNativeWebCall);
LABEL_63:
    sub_1C5625230(v139, &qword_1EC16FC90, &qword_1C5875EA0);
    return 0;
  }

  v143 = v139 + v138;
  v144 = v147;
  sub_1C56EC178(v143, v147, type metadata accessor for WebPlacecardBridgeReply.MUNativeWebCall);
  v145 = sub_1C56EEC48(v142, v144);

  sub_1C56EC248(v144, type metadata accessor for WebPlacecardBridgeReply.MUNativeWebCall);
  sub_1C5625230(v117, &qword_1EC16EC68, &qword_1C586B0F0);
  sub_1C56EC248(v142, type metadata accessor for WebPlacecardBridgeReply.MUNativeWebCall);
  sub_1C5625230(v139, &qword_1EC16EC68, &qword_1C586B0F0);
  return (v145 & 1) != 0;
}

uint64_t sub_1C56CB568(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C56EF190(&qword_1EC16F9B8, type metadata accessor for WebPlacecardBridgeReply, &unk_1C58720A8);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C56CB608(uint64_t a1)
{
  sub_1C56EF190(&qword_1EC16D150, type metadata accessor for WebPlacecardBridgeReply, &unk_1C5872030);

  return sub_1C584F160();
}

uint64_t sub_1C56CB674(uint64_t a1, uint64_t a2)
{
  sub_1C56EF190(&qword_1EC16D150, type metadata accessor for WebPlacecardBridgeReply, &unk_1C5872030);

  return sub_1C584F170();
}

uint64_t sub_1C56CB734()
{
  v0 = sub_1C584F250();
  __swift_allocate_value_buffer(v0, qword_1EC1901C8);
  __swift_project_value_buffer(v0, qword_1EC1901C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC0, &qword_1C5875DD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC8, &qword_1C5875DD8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1C586AE30;
  v4 = v16 + v3;
  v5 = v16 + v3 + v1[14];
  *(v16 + v3) = 0;
  *v5 = "unspecified";
  *(v5 + 8) = 11;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1C584F230();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "phone";
  *(v9 + 8) = 5;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "pad";
  *(v11 + 1) = 3;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "mac";
  *(v13 + 1) = 3;
  v13[16] = 2;
  v8();
  v14 = v4 + 4 * v2 + v1[14];
  *(v4 + 4 * v2) = 4;
  *v14 = "vision";
  *(v14 + 8) = 6;
  *(v14 + 16) = 2;
  v8();
  return sub_1C584F240();
}

uint64_t sub_1C56CB9DC()
{
  v0 = sub_1C584F250();
  __swift_allocate_value_buffer(v0, qword_1EC1901E0);
  __swift_project_value_buffer(v0, qword_1EC1901E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC0, &qword_1C5875DD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC8, &qword_1C5875DD8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C586AE50;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "Maps";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C584F230();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "Safari";
  *(v10 + 8) = 6;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "Siri";
  *(v12 + 1) = 4;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "Spotlight";
  *(v14 + 1) = 9;
  v14[16] = 2;
  v9();
  return sub_1C584F240();
}

uint64_t sub_1C56CBC50()
{
  v0 = sub_1C584F250();
  __swift_allocate_value_buffer(v0, qword_1EC18F920);
  __swift_project_value_buffer(v0, qword_1EC18F920);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC0, &qword_1C5875DD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC8, &qword_1C5875DD8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1C586AEC0;
  v4 = v32 + v3;
  v5 = v32 + v3 + v1[14];
  *(v32 + v3) = 1;
  *v5 = "handleCardExpansion";
  *(v5 + 8) = 19;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1C584F230();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v32 + v3 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "updateEtaProvider";
  *(v9 + 8) = 17;
  *(v9 + 16) = 2;
  v8();
  v10 = (v32 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "updateUserData";
  *(v11 + 1) = 14;
  v11[16] = 2;
  v8();
  v12 = (v32 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "updateDirectionsMetadata";
  *(v13 + 1) = 24;
  v13[16] = 2;
  v8();
  v14 = (v32 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "handleMenuItemTap";
  *(v15 + 1) = 17;
  v15[16] = 2;
  v8();
  v16 = (v32 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "updateVGVehicle";
  *(v17 + 1) = 15;
  v17[16] = 2;
  v8();
  v18 = (v32 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "updatePlacecardOfflineMapProvider";
  *(v19 + 1) = 33;
  v19[16] = 2;
  v8();
  v20 = (v32 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "handleNativeUITap";
  *(v21 + 1) = 17;
  v21[16] = 2;
  v8();
  v22 = v32 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "updatePlacecard";
  *(v22 + 8) = 15;
  *(v22 + 16) = 2;
  v8();
  v23 = (v32 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "cleanPlacecard";
  *(v24 + 1) = 14;
  v24[16] = 2;
  v8();
  v25 = (v32 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "webViewIsCurrent";
  *(v26 + 1) = 16;
  v26[16] = 2;
  v8();
  v27 = (v32 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "updateUserPreferences";
  *(v28 + 1) = 21;
  v28[16] = 2;
  v8();
  v29 = (v32 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 1000;
  *v30 = "providePerfMarkers";
  *(v30 + 1) = 18;
  v30[16] = 2;
  v8();
  return sub_1C584F240();
}

uint64_t sub_1C56CC0E8()
{
  v0 = sub_1C584F250();
  __swift_allocate_value_buffer(v0, qword_1EC18F848);
  __swift_project_value_buffer(v0, qword_1EC18F848);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC0, &qword_1C5875DD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC8, &qword_1C5875DD8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1C586AE60;
  v4 = v18 + v3 + v1[14];
  *(v18 + v3) = 1;
  *v4 = "MUOfflineMapDownloadStateNotDownloaded";
  *(v4 + 8) = 38;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1C584F230();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v18 + v3 + v2 + v1[14];
  *(v18 + v3 + v2) = 2;
  *v8 = "MUOfflineMapDownloadStateWaiting";
  *(v8 + 8) = 32;
  *(v8 + 16) = 2;
  v7();
  v9 = (v18 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "MUOfflineMapDownloadStatePaused";
  *(v10 + 1) = 31;
  v10[16] = 2;
  v7();
  v11 = (v18 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "MUOfflineMapDownloadStateFailed";
  *(v12 + 1) = 31;
  v12[16] = 2;
  v7();
  v13 = (v18 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "MUOfflineMapDownloadStateDownloadInProgress";
  *(v14 + 1) = 43;
  v14[16] = 2;
  v7();
  v15 = (v18 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "MUOfflineMapDownloadStateFullyDownloaded";
  *(v16 + 1) = 40;
  v16[16] = 2;
  v7();
  return sub_1C584F240();
}

uint64_t sub_1C56CC3D0()
{
  v0 = sub_1C584F250();
  __swift_allocate_value_buffer(v0, qword_1EC1901F8);
  __swift_project_value_buffer(v0, qword_1EC1901F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC0, &qword_1C5875DD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC8, &qword_1C5875DD8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v69 = swift_allocObject();
  *(v69 + 16) = xmmword_1C586AED0;
  v4 = v69 + v3;
  v5 = v69 + v3 + v1[14];
  *(v69 + v3) = 1;
  *v5 = "locale";
  *(v5 + 8) = 6;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1C584F230();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "userLocation";
  *(v9 + 8) = 12;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "uiIdiom";
  *(v11 + 1) = 7;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "osVersion";
  *(v13 + 1) = 9;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "environment";
  *(v15 + 1) = 11;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "place";
  *(v17 + 1) = 5;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "formattedAddressLines";
  *(v19 + 1) = 21;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "locationAddress";
  *(v21 + 1) = 15;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "userData";
  *(v22 + 8) = 8;
  *(v22 + 16) = 2;
  v8();
  v23 = (v4 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "placeItemOption";
  *(v24 + 1) = 15;
  v24[16] = 2;
  v8();
  v25 = (v4 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "formattedPhoneNumber";
  *(v26 + 1) = 20;
  v26[16] = 2;
  v8();
  v27 = (v4 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "userCanEdit";
  *(v28 + 1) = 11;
  v28[16] = 2;
  v8();
  v29 = (v4 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "canShowOpenFindMyAction";
  *(v30 + 1) = 23;
  v30[16] = 2;
  v8();
  v31 = (v4 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 14;
  *v32 = "canShowRequestLocation";
  *(v32 + 1) = 22;
  v32[16] = 2;
  v8();
  v33 = (v4 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 15;
  *v34 = "showMoreButton";
  *(v34 + 1) = 14;
  v34[16] = 2;
  v8();
  v35 = (v4 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 16;
  *v36 = "canShowDownloadOffline";
  *(v36 + 1) = 22;
  v36[16] = 2;
  v8();
  v37 = v4 + 16 * v2 + v1[14];
  *(v4 + 16 * v2) = 17;
  *v37 = "etaProvider";
  *(v37 + 8) = 11;
  *(v37 + 16) = 2;
  v8();
  v38 = (v4 + 17 * v2);
  v39 = v38 + v1[14];
  *v38 = 18;
  *v39 = "directionsMetadata";
  *(v39 + 1) = 18;
  v39[16] = 2;
  v8();
  v40 = (v4 + 18 * v2);
  v41 = v40 + v1[14];
  *v40 = 19;
  *v41 = "savedStateOfPlace";
  *(v41 + 1) = 17;
  v41[16] = 2;
  v8();
  v42 = (v4 + 19 * v2);
  v43 = v42 + v1[14];
  *v42 = 20;
  *v43 = "webModuleBaseUrl";
  *(v43 + 1) = 16;
  v43[16] = 2;
  v8();
  v44 = (v4 + 20 * v2);
  v45 = v44 + v1[14];
  *v44 = 21;
  *v45 = "debug_options";
  *(v45 + 1) = 13;
  v45[16] = 2;
  v8();
  v46 = (v4 + 21 * v2);
  v47 = v46 + v1[14];
  *v46 = 22;
  *v47 = "transitAttributionUrl";
  *(v47 + 1) = 21;
  v47[16] = 2;
  v8();
  v48 = (v4 + 22 * v2);
  v49 = v48 + v1[14];
  *v48 = 23;
  *v49 = "vehicles";
  *(v49 + 1) = 8;
  v49[16] = 2;
  v8();
  v50 = (v4 + 23 * v2);
  v51 = v50 + v1[14];
  *v50 = 24;
  *v51 = "place_item";
  *(v51 + 1) = 10;
  v51[16] = 2;
  v8();
  v52 = (v4 + 24 * v2);
  v53 = v52 + v1[14];
  *v52 = 25;
  *v53 = "placecard_offline_map_provider";
  *(v53 + 1) = 30;
  v53[16] = 2;
  v8();
  v54 = (v4 + 25 * v2);
  v55 = v54 + v1[14];
  *v54 = 26;
  *v55 = "feature_flags";
  *(v55 + 1) = 13;
  v55[16] = 2;
  v8();
  v56 = (v4 + 26 * v2);
  v57 = v56 + v1[14];
  *v56 = 27;
  *v57 = "countryCode";
  *(v57 + 1) = 11;
  v57[16] = 2;
  v8();
  v58 = (v4 + 27 * v2);
  v59 = v58 + v1[14];
  *v58 = 28;
  *v59 = "isDeveloperPlacecard";
  *(v59 + 1) = 20;
  v59[16] = 2;
  v8();
  v60 = (v4 + 28 * v2);
  v61 = v60 + v1[14];
  *v60 = 29;
  *v61 = "bundleIdentifier";
  *(v61 + 1) = 16;
  v61[16] = 2;
  v8();
  v62 = (v4 + 29 * v2);
  v63 = v62 + v1[14];
  *v62 = 30;
  *v63 = "user_preferences";
  *(v63 + 1) = 16;
  v63[16] = 2;
  v8();
  v64 = (v4 + 30 * v2);
  v65 = v64 + v1[14];
  *v64 = 31;
  *v65 = "canMakeCalls";
  *(v65 + 1) = 12;
  v65[16] = 2;
  v8();
  v66 = (v4 + 31 * v2);
  v67 = v66 + v1[14];
  *v66 = 32;
  *v67 = "send_to_devices";
  *(v67 + 1) = 15;
  v67[16] = 2;
  v8();
  return sub_1C584F240();
}

uint64_t sub_1C56CCD18()
{
  type metadata accessor for WebPlacecardBridgeReply.MUContext._StorageClass(0);
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  v1 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__userLocation;
  v2 = type metadata accessor for MULocation(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__uiIdiom) = 5;
  v3 = (v0 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__osVersion);
  *v3 = 0;
  v3[1] = 0;
  *(v0 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__environment) = 4;
  v4 = (v0 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__place);
  *v4 = 0;
  v4[1] = 0;
  v5 = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__formattedAddressLines) = MEMORY[0x1E69E7CC0];
  v6 = (v0 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__locationAddress);
  *v6 = 0;
  v6[1] = 0;
  v7 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__userData;
  v8 = type metadata accessor for WebPlacecardBridgeReply.MUUserData(0);
  (*(*(v8 - 8) + 56))(v0 + v7, 1, 1, v8);
  v9 = (v0 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__placeItemOption);
  *v9 = 0;
  v9[1] = 0;
  v10 = (v0 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__formattedPhoneNumber);
  *v10 = 0;
  v10[1] = 0;
  *(v0 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__userCanEdit) = 2;
  *(v0 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__canShowOpenFindMyAction) = 2;
  *(v0 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__canShowRequestLocation) = 2;
  *(v0 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__showMoreButton) = 2;
  *(v0 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__canShowDownloadOffline) = 2;
  v11 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__etaProvider;
  v12 = type metadata accessor for WebPlacecardBridgeReply.MUEtaProvider(0);
  (*(*(v12 - 8) + 56))(v0 + v11, 1, 1, v12);
  v13 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__directionsMetadata;
  v14 = type metadata accessor for WebPlacecardBridgeReply.MUDirectionsMetadata(0);
  (*(*(v14 - 8) + 56))(v0 + v13, 1, 1, v14);
  *(v0 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__savedStateOfPlace) = 3;
  v15 = (v0 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__webModuleBaseURL);
  *v15 = 0;
  v15[1] = 0;
  v16 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__debugOptions;
  v17 = type metadata accessor for WebPlacecardBridgeReply.MUDebugOptions(0);
  (*(*(v17 - 8) + 56))(v0 + v16, 1, 1, v17);
  v18 = (v0 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__transitAttributionURL);
  *v18 = 0;
  v18[1] = 0;
  *(v0 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__vehicles) = v5;
  v19 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__placeItem;
  v20 = type metadata accessor for WebPlacecardBridgeReply.MUPlaceItem(0);
  (*(*(v20 - 8) + 56))(v0 + v19, 1, 1, v20);
  v21 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__placecardOfflineMapProvider;
  v22 = type metadata accessor for WebPlacecardBridgeReply.MUPlacecardOfflineMapProvider(0);
  (*(*(v22 - 8) + 56))(v0 + v21, 1, 1, v22);
  *(v0 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__featureFlags) = v5;
  v23 = (v0 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__countryCode);
  *v23 = 0;
  v23[1] = 0;
  *(v0 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__isDeveloperPlacecard) = 2;
  v24 = (v0 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__bundleIdentifier);
  *v24 = 0;
  v24[1] = 0;
  v25 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__userPreferences;
  v26 = type metadata accessor for MUUserPreferences(0);
  result = (*(*(v26 - 8) + 56))(v0 + v25, 1, 1, v26);
  *(v0 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__canMakeCalls) = 2;
  *(v0 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__sendToDevices) = v5;
  qword_1EC1755E8 = v0;
  return result;
}

uint64_t sub_1C56CD0F0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16ECA0, &qword_1C586B128);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v184 = &v148 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EC98, &qword_1C586B120);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v183 = &v148 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EC90, &qword_1C586B118);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v182 = &v148 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EC88, &qword_1C586B110);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v180 = &v148 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EC80, &qword_1C586B108);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v174 = &v148 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EC78, &qword_1C586B100);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v171 = &v148 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EC70, &qword_1C586B0F8);
  MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v158 = &v148 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EC50, &qword_1C586B0C8);
  MEMORY[0x1EEE9AC00](v24 - 8, v25);
  v149 = &v148 - v26;
  *(v1 + 24) = 0;
  *(v1 + 16) = 0;
  v27 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__userLocation;
  v148 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__userLocation;
  v28 = type metadata accessor for MULocation(0);
  (*(*(v28 - 8) + 56))(v1 + v27, 1, 1, v28);
  v151 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__uiIdiom;
  *(v1 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__uiIdiom) = 5;
  v29 = (v1 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__osVersion);
  *v29 = 0;
  v29[1] = 0;
  v30 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__environment;
  *(v1 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__environment) = 4;
  v31 = (v1 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__place);
  *v31 = 0;
  v31[1] = 0;
  v153 = v30;
  v154 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__formattedAddressLines;
  v32 = MEMORY[0x1E69E7CC0];
  *(v1 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__formattedAddressLines) = MEMORY[0x1E69E7CC0];
  v33 = (v1 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__locationAddress);
  v150 = (v1 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__locationAddress);
  *v33 = 0;
  v33[1] = 0;
  v34 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__userData;
  v155 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__userData;
  v35 = type metadata accessor for WebPlacecardBridgeReply.MUUserData(0);
  (*(*(v35 - 8) + 56))(v1 + v34, 1, 1, v35);
  v36 = (v1 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__placeItemOption);
  v152 = (v1 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__placeItemOption);
  *v36 = 0;
  v36[1] = 0;
  v37 = (v1 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__formattedPhoneNumber);
  v156 = (v1 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__formattedPhoneNumber);
  *v37 = 0;
  v37[1] = 0;
  v157 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__userCanEdit;
  *(v1 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__userCanEdit) = 2;
  v159 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__canShowOpenFindMyAction;
  *(v1 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__canShowOpenFindMyAction) = 2;
  v160 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__canShowRequestLocation;
  *(v1 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__canShowRequestLocation) = 2;
  v161 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__showMoreButton;
  *(v1 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__showMoreButton) = 2;
  v162 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__canShowDownloadOffline;
  *(v1 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__canShowDownloadOffline) = 2;
  v38 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__etaProvider;
  v163 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__etaProvider;
  v39 = type metadata accessor for WebPlacecardBridgeReply.MUEtaProvider(0);
  (*(*(v39 - 8) + 56))(v1 + v38, 1, 1, v39);
  v40 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__directionsMetadata;
  v164 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__directionsMetadata;
  v41 = type metadata accessor for WebPlacecardBridgeReply.MUDirectionsMetadata(0);
  (*(*(v41 - 8) + 56))(v1 + v40, 1, 1, v41);
  v42 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__savedStateOfPlace;
  *(v1 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__savedStateOfPlace) = 3;
  v43 = (v1 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__webModuleBaseURL);
  v165 = v42;
  v166 = v43;
  *v43 = 0;
  v43[1] = 0;
  v44 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__debugOptions;
  v167 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__debugOptions;
  v45 = type metadata accessor for WebPlacecardBridgeReply.MUDebugOptions(0);
  (*(*(v45 - 8) + 56))(v1 + v44, 1, 1, v45);
  v46 = (v1 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__transitAttributionURL);
  v168 = (v1 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__transitAttributionURL);
  *v46 = 0;
  v46[1] = 0;
  v169 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__vehicles;
  *(v1 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__vehicles) = v32;
  v47 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__placeItem;
  v170 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__placeItem;
  v48 = type metadata accessor for WebPlacecardBridgeReply.MUPlaceItem(0);
  (*(*(v48 - 8) + 56))(v1 + v47, 1, 1, v48);
  v49 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__placecardOfflineMapProvider;
  v172 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__placecardOfflineMapProvider;
  v50 = type metadata accessor for WebPlacecardBridgeReply.MUPlacecardOfflineMapProvider(0);
  (*(*(v50 - 8) + 56))(v1 + v49, 1, 1, v50);
  v173 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__featureFlags;
  *(v1 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__featureFlags) = v32;
  v51 = (v1 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__countryCode);
  v175 = (v1 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__countryCode);
  *v51 = 0;
  v51[1] = 0;
  v176 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__isDeveloperPlacecard;
  *(v1 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__isDeveloperPlacecard) = 2;
  v52 = (v1 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__bundleIdentifier);
  v177 = (v1 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__bundleIdentifier);
  *v52 = 0;
  v52[1] = 0;
  v53 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__userPreferences;
  v178 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__userPreferences;
  v54 = type metadata accessor for MUUserPreferences(0);
  (*(*(v54 - 8) + 56))(v1 + v53, 1, 1, v54);
  v179 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__canMakeCalls;
  *(v1 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__canMakeCalls) = 2;
  v181 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__sendToDevices;
  *(v1 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__sendToDevices) = v32;
  swift_beginAccess();
  v55 = *(a1 + 16);
  v56 = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 16) = v55;
  *(v1 + 24) = v56;
  v57 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__userLocation;
  swift_beginAccess();
  v58 = v149;
  sub_1C56466CC(a1 + v57, v149, &qword_1EC16EC50, &qword_1C586B0C8);
  v59 = v148;
  swift_beginAccess();

  sub_1C56ECE38(v58, v1 + v59, &qword_1EC16EC50, &qword_1C586B0C8);
  swift_endAccess();
  v60 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__uiIdiom;
  swift_beginAccess();
  LOBYTE(v60) = *(a1 + v60);
  v61 = v151;
  swift_beginAccess();
  *(v1 + v61) = v60;
  v62 = (a1 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__osVersion);
  swift_beginAccess();
  v64 = *v62;
  v63 = v62[1];
  swift_beginAccess();
  *v29 = v64;
  v29[1] = v63;

  v65 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__environment;
  swift_beginAccess();
  LOBYTE(v65) = *(a1 + v65);
  v66 = v153;
  swift_beginAccess();
  *(v1 + v66) = v65;
  v67 = (a1 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__place);
  swift_beginAccess();
  v69 = *v67;
  v68 = v67[1];
  swift_beginAccess();
  *v31 = v69;
  v31[1] = v68;

  v70 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__formattedAddressLines;
  swift_beginAccess();
  v71 = *(a1 + v70);
  v72 = v154;
  swift_beginAccess();
  *(v1 + v72) = v71;

  v73 = (a1 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__locationAddress);
  swift_beginAccess();
  v75 = *v73;
  v74 = v73[1];
  v76 = v150;
  swift_beginAccess();
  *v76 = v75;
  v76[1] = v74;

  v77 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__userData;
  swift_beginAccess();
  v78 = v158;
  sub_1C56466CC(a1 + v77, v158, &qword_1EC16EC70, &qword_1C586B0F8);
  v79 = v155;
  swift_beginAccess();
  sub_1C56ECE38(v78, v1 + v79, &qword_1EC16EC70, &qword_1C586B0F8);
  swift_endAccess();
  v80 = (a1 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__placeItemOption);
  swift_beginAccess();
  v82 = *v80;
  v81 = v80[1];
  v83 = v152;
  swift_beginAccess();
  *v83 = v82;
  v83[1] = v81;

  v84 = (a1 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__formattedPhoneNumber);
  swift_beginAccess();
  v86 = *v84;
  v85 = v84[1];
  v87 = v156;
  swift_beginAccess();
  *v87 = v86;
  v87[1] = v85;

  v88 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__userCanEdit;
  swift_beginAccess();
  LOBYTE(v88) = *(a1 + v88);
  v89 = v157;
  swift_beginAccess();
  *(v1 + v89) = v88;
  v90 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__canShowOpenFindMyAction;
  swift_beginAccess();
  LOBYTE(v90) = *(a1 + v90);
  v91 = v159;
  swift_beginAccess();
  *(v1 + v91) = v90;
  v92 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__canShowRequestLocation;
  swift_beginAccess();
  LOBYTE(v92) = *(a1 + v92);
  v93 = v160;
  swift_beginAccess();
  *(v1 + v93) = v92;
  v94 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__showMoreButton;
  swift_beginAccess();
  LOBYTE(v94) = *(a1 + v94);
  v95 = v161;
  swift_beginAccess();
  *(v1 + v95) = v94;
  v96 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__canShowDownloadOffline;
  swift_beginAccess();
  LOBYTE(v96) = *(a1 + v96);
  v97 = v162;
  swift_beginAccess();
  *(v1 + v97) = v96;
  v98 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__etaProvider;
  swift_beginAccess();
  v99 = v171;
  sub_1C56466CC(a1 + v98, v171, &qword_1EC16EC78, &qword_1C586B100);
  v100 = v163;
  swift_beginAccess();
  sub_1C56ECE38(v99, v1 + v100, &qword_1EC16EC78, &qword_1C586B100);
  swift_endAccess();
  v101 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__directionsMetadata;
  swift_beginAccess();
  v102 = v174;
  sub_1C56466CC(a1 + v101, v174, &qword_1EC16EC80, &qword_1C586B108);
  v103 = v164;
  swift_beginAccess();
  sub_1C56ECE38(v102, v1 + v103, &qword_1EC16EC80, &qword_1C586B108);
  swift_endAccess();
  v104 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__savedStateOfPlace;
  swift_beginAccess();
  LOBYTE(v104) = *(a1 + v104);
  v105 = v165;
  swift_beginAccess();
  *(v1 + v105) = v104;
  v106 = (a1 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__webModuleBaseURL);
  swift_beginAccess();
  v108 = *v106;
  v107 = v106[1];
  v109 = v166;
  swift_beginAccess();
  *v109 = v108;
  v109[1] = v107;

  v110 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__debugOptions;
  swift_beginAccess();
  v111 = v180;
  sub_1C56466CC(a1 + v110, v180, &qword_1EC16EC88, &qword_1C586B110);
  v112 = v167;
  swift_beginAccess();
  sub_1C56ECE38(v111, v1 + v112, &qword_1EC16EC88, &qword_1C586B110);
  swift_endAccess();
  v113 = (a1 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__transitAttributionURL);
  swift_beginAccess();
  v115 = *v113;
  v114 = v113[1];
  v116 = v168;
  swift_beginAccess();
  *v116 = v115;
  v116[1] = v114;

  v117 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__vehicles;
  swift_beginAccess();
  v118 = *(a1 + v117);
  v119 = v169;
  swift_beginAccess();
  *(v1 + v119) = v118;

  v120 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__placeItem;
  swift_beginAccess();
  v121 = v182;
  sub_1C56466CC(a1 + v120, v182, &qword_1EC16EC90, &qword_1C586B118);
  v122 = v170;
  swift_beginAccess();
  sub_1C56ECE38(v121, v1 + v122, &qword_1EC16EC90, &qword_1C586B118);
  swift_endAccess();
  v123 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__placecardOfflineMapProvider;
  swift_beginAccess();
  v124 = v183;
  sub_1C56466CC(a1 + v123, v183, &qword_1EC16EC98, &qword_1C586B120);
  v125 = v172;
  swift_beginAccess();
  sub_1C56ECE38(v124, v1 + v125, &qword_1EC16EC98, &qword_1C586B120);
  swift_endAccess();
  v126 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__featureFlags;
  swift_beginAccess();
  v127 = *(a1 + v126);
  v128 = v173;
  swift_beginAccess();
  *(v1 + v128) = v127;

  v129 = (a1 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__countryCode);
  swift_beginAccess();
  v131 = *v129;
  v130 = v129[1];
  v132 = v175;
  swift_beginAccess();
  *v132 = v131;
  v132[1] = v130;

  v133 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__isDeveloperPlacecard;
  swift_beginAccess();
  LOBYTE(v133) = *(a1 + v133);
  v134 = v176;
  swift_beginAccess();
  *(v1 + v134) = v133;
  v135 = (a1 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__bundleIdentifier);
  swift_beginAccess();
  v137 = *v135;
  v136 = v135[1];
  v138 = v177;
  swift_beginAccess();
  *v138 = v137;
  v138[1] = v136;

  v139 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__userPreferences;
  swift_beginAccess();
  v140 = v184;
  sub_1C56466CC(a1 + v139, v184, &qword_1EC16ECA0, &qword_1C586B128);
  v141 = v178;
  swift_beginAccess();
  sub_1C56ECE38(v140, v1 + v141, &qword_1EC16ECA0, &qword_1C586B128);
  swift_endAccess();
  v142 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__canMakeCalls;
  swift_beginAccess();
  LOBYTE(v142) = *(a1 + v142);
  v143 = v179;
  swift_beginAccess();
  *(v1 + v143) = v142;
  v144 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__sendToDevices;
  swift_beginAccess();
  v145 = *(a1 + v144);

  v146 = v181;
  swift_beginAccess();
  *(v1 + v146) = v145;

  return v1;
}

uint64_t sub_1C56CE24C()
{

  sub_1C5625230(v0 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__userLocation, &qword_1EC16EC50, &qword_1C586B0C8);

  sub_1C5625230(v0 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__userData, &qword_1EC16EC70, &qword_1C586B0F8);

  sub_1C5625230(v0 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__etaProvider, &qword_1EC16EC78, &qword_1C586B100);
  sub_1C5625230(v0 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__directionsMetadata, &qword_1EC16EC80, &qword_1C586B108);

  sub_1C5625230(v0 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__debugOptions, &qword_1EC16EC88, &qword_1C586B110);

  sub_1C5625230(v0 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__placeItem, &qword_1EC16EC90, &qword_1C586B118);
  sub_1C5625230(v0 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__placecardOfflineMapProvider, &qword_1EC16EC98, &qword_1C586B120);

  sub_1C5625230(v0 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__userPreferences, &qword_1EC16ECA0, &qword_1C586B128);

  return swift_deallocClassInstance();
}

uint64_t sub_1C56CE49C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v6 = *(type metadata accessor for WebPlacecardBridgeReply.MUContext(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v3 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for WebPlacecardBridgeReply.MUContext._StorageClass(0);
    v9 = swift_allocObject();
    sub_1C56CD0F0(v8);
    *(v5 + v6) = v9;
  }

  while (1)
  {
    result = sub_1C584F050();
    if (v4 || (v11 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 4:
      case 6:
      case 8:
      case 10:
      case 11:
      case 20:
      case 22:
      case 27:
      case 29:
        swift_beginAccess();
        sub_1C584F0D0();
        goto LABEL_26;
      case 2:
        swift_beginAccess();
        type metadata accessor for MULocation(0);
        v12 = &qword_1EC16D880;
        v13 = type metadata accessor for MULocation;
        v14 = &unk_1C5871748;
        goto LABEL_24;
      case 3:
        swift_beginAccess();
        sub_1C5703B3C();
        goto LABEL_17;
      case 5:
        swift_beginAccess();
        sub_1C5703AE8();
        goto LABEL_17;
      case 7:
        swift_beginAccess();
        sub_1C584F0C0();
        goto LABEL_26;
      case 9:
        swift_beginAccess();
        type metadata accessor for WebPlacecardBridgeReply.MUUserData(0);
        v12 = &qword_1EC16D418;
        v13 = type metadata accessor for WebPlacecardBridgeReply.MUUserData;
        v14 = &unk_1C5872940;
        goto LABEL_24;
      case 12:
      case 13:
      case 14:
      case 15:
      case 16:
      case 28:
      case 31:
        swift_beginAccess();
        sub_1C584F080();
        goto LABEL_26;
      case 17:
        swift_beginAccess();
        type metadata accessor for WebPlacecardBridgeReply.MUEtaProvider(0);
        v12 = &qword_1EC16D3A8;
        v13 = type metadata accessor for WebPlacecardBridgeReply.MUEtaProvider;
        v14 = &unk_1C58731B0;
        goto LABEL_24;
      case 18:
        swift_beginAccess();
        type metadata accessor for WebPlacecardBridgeReply.MUDirectionsMetadata(0);
        v12 = &qword_1EC16D238;
        v13 = type metadata accessor for WebPlacecardBridgeReply.MUDirectionsMetadata;
        v14 = &unk_1C5873B88;
        goto LABEL_24;
      case 19:
        swift_beginAccess();
        sub_1C57041CC();
LABEL_17:
        sub_1C584F090();
        goto LABEL_26;
      case 21:
        swift_beginAccess();
        type metadata accessor for WebPlacecardBridgeReply.MUDebugOptions(0);
        v12 = &qword_1EC16F750;
        v13 = type metadata accessor for WebPlacecardBridgeReply.MUDebugOptions;
        v14 = &unk_1C5873CF0;
        goto LABEL_24;
      case 23:
        swift_beginAccess();
        type metadata accessor for MUVGVehicle(0);
        v15 = &qword_1EC16EFC0;
        v16 = type metadata accessor for MUVGVehicle;
        v17 = &unk_1C58718B0;
        goto LABEL_21;
      case 24:
        swift_beginAccess();
        type metadata accessor for WebPlacecardBridgeReply.MUPlaceItem(0);
        v12 = &qword_1EC16D3E8;
        v13 = type metadata accessor for WebPlacecardBridgeReply.MUPlaceItem;
        v14 = &unk_1C58723A0;
        goto LABEL_24;
      case 25:
        swift_beginAccess();
        type metadata accessor for WebPlacecardBridgeReply.MUPlacecardOfflineMapProvider(0);
        v12 = &qword_1EC16D1E0;
        v13 = type metadata accessor for WebPlacecardBridgeReply.MUPlacecardOfflineMapProvider;
        v14 = &unk_1C5874420;
        goto LABEL_24;
      case 26:
        swift_beginAccess();
        type metadata accessor for WebPlacecardBridgeReply.MUFeatureFlag(0);
        v15 = &qword_1EC16D388;
        v16 = type metadata accessor for WebPlacecardBridgeReply.MUFeatureFlag;
        v17 = &unk_1C5874588;
        goto LABEL_21;
      case 30:
        swift_beginAccess();
        type metadata accessor for MUUserPreferences(0);
        v12 = &qword_1EC16F658;
        v13 = type metadata accessor for MUUserPreferences;
        v14 = &unk_1C5871CE8;
LABEL_24:
        sub_1C56EF190(v12, v13, v14);
        sub_1C584F100();
        goto LABEL_26;
      case 32:
        swift_beginAccess();
        type metadata accessor for MUSendToDevice(0);
        v15 = &qword_1EC16EE98;
        v16 = type metadata accessor for MUSendToDevice;
        v17 = &unk_1C5871EC8;
LABEL_21:
        sub_1C56EF190(v15, v16, v17);
        sub_1C584F0F0();
LABEL_26:
        swift_endAccess();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C56CEBC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v9 = *(v5 + *(type metadata accessor for WebPlacecardBridgeReply.MUContext(0) + 20));
  result = swift_beginAccess();
  if (*(v9 + 24))
  {

    sub_1C584F1F0();
  }

  if (!v4)
  {
    sub_1C56CF404(v9, a1, a2, a3);
    v11 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__uiIdiom;
    swift_beginAccess();
    if (*(v9 + v11) != 5)
    {
      sub_1C5703B3C();
      sub_1C584F1A0();
    }

    v12 = v9 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__osVersion;
    swift_beginAccess();
    if (*(v12 + 8))
    {

      sub_1C584F1F0();
    }

    v13 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__environment;
    swift_beginAccess();
    if (*(v9 + v13) != 4)
    {
      sub_1C5703AE8();
      sub_1C584F1A0();
    }

    v14 = v9 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__place;
    swift_beginAccess();
    if (*(v14 + 8))
    {

      sub_1C584F1F0();
    }

    v15 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__formattedAddressLines;
    swift_beginAccess();
    if (*(*(v9 + v15) + 16))
    {

      sub_1C584F1D0();
    }

    sub_1C56D8394(v9, a1, a2, a3, &OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__locationAddress, 8);
    sub_1C56CF62C(v9, a1, a2, a3);
    sub_1C56D8394(v9, a1, a2, a3, &OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__placeItemOption, 10);
    sub_1C56D8394(v9, a1, a2, a3, &OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__formattedPhoneNumber, 11);
    sub_1C56D0544(v9, a1, a2, a3, &OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__userCanEdit, 12);
    sub_1C56D0544(v9, a1, a2, a3, &OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__canShowOpenFindMyAction, 13);
    sub_1C56D0544(v9, a1, a2, a3, &OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__canShowRequestLocation, 14);
    sub_1C56D0544(v9, a1, a2, a3, &OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__showMoreButton, 15);
    sub_1C56D0544(v9, a1, a2, a3, &OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__canShowDownloadOffline, 16);
    sub_1C56CF854(v9, a1, a2, a3);
    sub_1C56CFA7C(v9, a1, a2, a3);
    sub_1C56D8444(v9, a1, a2, a3, &OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__savedStateOfPlace, sub_1C57041CC, 19, &type metadata for MULibraryPlaceSavedState);
    sub_1C56D8394(v9, a1, a2, a3, &OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__webModuleBaseURL, 20);
    sub_1C56CFCA4(v9, a1, a2, a3);
    sub_1C56D8394(v9, a1, a2, a3, &OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__transitAttributionURL, 22);
    v16 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__vehicles;
    swift_beginAccess();
    if (*(*(v9 + v16) + 16))
    {
      type metadata accessor for MUVGVehicle(0);
      sub_1C56EF190(&qword_1EC16EFC0, type metadata accessor for MUVGVehicle, &unk_1C58718B0);

      sub_1C584F210();
    }

    sub_1C56CFECC(v9, a1, a2, a3);
    sub_1C56D00F4(v9, a1, a2, a3);
    v17 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__featureFlags;
    swift_beginAccess();
    if (*(*(v9 + v17) + 16))
    {
      type metadata accessor for WebPlacecardBridgeReply.MUFeatureFlag(0);
      sub_1C56EF190(&qword_1EC16D388, type metadata accessor for WebPlacecardBridgeReply.MUFeatureFlag, &unk_1C5874588);

      sub_1C584F210();
    }

    sub_1C56D8394(v9, a1, a2, a3, &OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__countryCode, 27);
    sub_1C56D0544(v9, a1, a2, a3, &OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__isDeveloperPlacecard, 28);
    sub_1C56D8394(v9, a1, a2, a3, &OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__bundleIdentifier, 29);
    sub_1C56D031C(v9, a1, a2, a3);
    sub_1C56D0544(v9, a1, a2, a3, &OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__canMakeCalls, 31);
    v18 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__sendToDevices;
    swift_beginAccess();
    if (*(*(v9 + v18) + 16))
    {
      type metadata accessor for MUSendToDevice(0);
      sub_1C56EF190(&qword_1EC16EE98, type metadata accessor for MUSendToDevice, &unk_1C5871EC8);

      sub_1C584F210();
    }

    return sub_1C584EFB0();
  }

  return result;
}

uint64_t sub_1C56CF404(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EC50, &qword_1C586B0C8);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for MULocation(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__userLocation;
  swift_beginAccess();
  sub_1C56466CC(a1 + v14, v8, &qword_1EC16EC50, &qword_1C586B0C8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C5625230(v8, &qword_1EC16EC50, &qword_1C586B0C8);
  }

  sub_1C56EC178(v8, v13, type metadata accessor for MULocation);
  sub_1C56EF190(&qword_1EC16D880, type metadata accessor for MULocation, &unk_1C5871748);
  sub_1C584F220();
  return sub_1C56EC248(v13, type metadata accessor for MULocation);
}

uint64_t sub_1C56CF62C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EC70, &qword_1C586B0F8);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for WebPlacecardBridgeReply.MUUserData(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__userData;
  swift_beginAccess();
  sub_1C56466CC(a1 + v14, v8, &qword_1EC16EC70, &qword_1C586B0F8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C5625230(v8, &qword_1EC16EC70, &qword_1C586B0F8);
  }

  sub_1C56EC178(v8, v13, type metadata accessor for WebPlacecardBridgeReply.MUUserData);
  sub_1C56EF190(&qword_1EC16D418, type metadata accessor for WebPlacecardBridgeReply.MUUserData, &unk_1C5872940);
  sub_1C584F220();
  return sub_1C56EC248(v13, type metadata accessor for WebPlacecardBridgeReply.MUUserData);
}

uint64_t sub_1C56CF854(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EC78, &qword_1C586B100);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for WebPlacecardBridgeReply.MUEtaProvider(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__etaProvider;
  swift_beginAccess();
  sub_1C56466CC(a1 + v14, v8, &qword_1EC16EC78, &qword_1C586B100);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C5625230(v8, &qword_1EC16EC78, &qword_1C586B100);
  }

  sub_1C56EC178(v8, v13, type metadata accessor for WebPlacecardBridgeReply.MUEtaProvider);
  sub_1C56EF190(&qword_1EC16D3A8, type metadata accessor for WebPlacecardBridgeReply.MUEtaProvider, &unk_1C58731B0);
  sub_1C584F220();
  return sub_1C56EC248(v13, type metadata accessor for WebPlacecardBridgeReply.MUEtaProvider);
}

uint64_t sub_1C56CFA7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EC80, &qword_1C586B108);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for WebPlacecardBridgeReply.MUDirectionsMetadata(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__directionsMetadata;
  swift_beginAccess();
  sub_1C56466CC(a1 + v14, v8, &qword_1EC16EC80, &qword_1C586B108);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C5625230(v8, &qword_1EC16EC80, &qword_1C586B108);
  }

  sub_1C56EC178(v8, v13, type metadata accessor for WebPlacecardBridgeReply.MUDirectionsMetadata);
  sub_1C56EF190(&qword_1EC16D238, type metadata accessor for WebPlacecardBridgeReply.MUDirectionsMetadata, &unk_1C5873B88);
  sub_1C584F220();
  return sub_1C56EC248(v13, type metadata accessor for WebPlacecardBridgeReply.MUDirectionsMetadata);
}

uint64_t sub_1C56CFCA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EC88, &qword_1C586B110);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for WebPlacecardBridgeReply.MUDebugOptions(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__debugOptions;
  swift_beginAccess();
  sub_1C56466CC(a1 + v14, v8, &qword_1EC16EC88, &qword_1C586B110);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C5625230(v8, &qword_1EC16EC88, &qword_1C586B110);
  }

  sub_1C56EC178(v8, v13, type metadata accessor for WebPlacecardBridgeReply.MUDebugOptions);
  sub_1C56EF190(&qword_1EC16F750, type metadata accessor for WebPlacecardBridgeReply.MUDebugOptions, &unk_1C5873CF0);
  sub_1C584F220();
  return sub_1C56EC248(v13, type metadata accessor for WebPlacecardBridgeReply.MUDebugOptions);
}

uint64_t sub_1C56CFECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EC90, &qword_1C586B118);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for WebPlacecardBridgeReply.MUPlaceItem(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__placeItem;
  swift_beginAccess();
  sub_1C56466CC(a1 + v14, v8, &qword_1EC16EC90, &qword_1C586B118);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C5625230(v8, &qword_1EC16EC90, &qword_1C586B118);
  }

  sub_1C56EC178(v8, v13, type metadata accessor for WebPlacecardBridgeReply.MUPlaceItem);
  sub_1C56EF190(&qword_1EC16D3E8, type metadata accessor for WebPlacecardBridgeReply.MUPlaceItem, &unk_1C58723A0);
  sub_1C584F220();
  return sub_1C56EC248(v13, type metadata accessor for WebPlacecardBridgeReply.MUPlaceItem);
}

uint64_t sub_1C56D00F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EC98, &qword_1C586B120);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for WebPlacecardBridgeReply.MUPlacecardOfflineMapProvider(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__placecardOfflineMapProvider;
  swift_beginAccess();
  sub_1C56466CC(a1 + v14, v8, &qword_1EC16EC98, &qword_1C586B120);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C5625230(v8, &qword_1EC16EC98, &qword_1C586B120);
  }

  sub_1C56EC178(v8, v13, type metadata accessor for WebPlacecardBridgeReply.MUPlacecardOfflineMapProvider);
  sub_1C56EF190(&qword_1EC16D1E0, type metadata accessor for WebPlacecardBridgeReply.MUPlacecardOfflineMapProvider, &unk_1C5874420);
  sub_1C584F220();
  return sub_1C56EC248(v13, type metadata accessor for WebPlacecardBridgeReply.MUPlacecardOfflineMapProvider);
}

uint64_t sub_1C56D031C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16ECA0, &qword_1C586B128);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for MUUserPreferences(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__userPreferences;
  swift_beginAccess();
  sub_1C56466CC(a1 + v14, v8, &qword_1EC16ECA0, &qword_1C586B128);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C5625230(v8, &qword_1EC16ECA0, &qword_1C586B128);
  }

  sub_1C56EC178(v8, v13, type metadata accessor for MUUserPreferences);
  sub_1C56EF190(&qword_1EC16F658, type metadata accessor for MUUserPreferences, &unk_1C5871CE8);
  sub_1C584F220();
  return sub_1C56EC248(v13, type metadata accessor for MUUserPreferences);
}

uint64_t sub_1C56D0544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v7 = *a5;
  result = swift_beginAccess();
  if (*(a1 + v7) != 2)
  {
    return sub_1C584F190();
  }

  return result;
}

uint64_t sub_1C56D05E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MUUserPreferences(0);
  v377 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v378 = &v348 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v374 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBE0, &qword_1C5875DF0);
  MEMORY[0x1EEE9AC00](v374, v7);
  v9 = &v348 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16ECA0, &qword_1C586B128);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v376 = &v348 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v14);
  v375 = &v348 - v15;
  v372 = type metadata accessor for WebPlacecardBridgeReply.MUPlacecardOfflineMapProvider(0);
  v370 = *(v372 - 8);
  MEMORY[0x1EEE9AC00](v372, v16);
  v371 = &v348 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v367 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FC10, &qword_1C5875E20);
  MEMORY[0x1EEE9AC00](v367, v18);
  v373 = &v348 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EC98, &qword_1C586B120);
  v22 = MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v369 = &v348 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v24);
  v368 = &v348 - v25;
  v26 = type metadata accessor for WebPlacecardBridgeReply.MUPlaceItem(0);
  v361 = *(v26 - 8);
  v362 = v26;
  MEMORY[0x1EEE9AC00](v26, v27);
  v365 = &v348 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v360 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FC80, &qword_1C5875E90);
  MEMORY[0x1EEE9AC00](v360, v29);
  v366 = &v348 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EC90, &qword_1C586B118);
  v33 = MEMORY[0x1EEE9AC00](v31 - 8, v32);
  v364 = &v348 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33, v35);
  v363 = &v348 - v36;
  v358 = type metadata accessor for WebPlacecardBridgeReply.MUDebugOptions(0);
  v356 = *(v358 - 8);
  MEMORY[0x1EEE9AC00](v358, v37);
  v357 = (&v348 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  v353 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FC88, &qword_1C5875E98);
  MEMORY[0x1EEE9AC00](v353, v39);
  v359 = &v348 - v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EC88, &qword_1C586B110);
  v43 = MEMORY[0x1EEE9AC00](v41 - 8, v42);
  v355 = (&v348 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v43, v45);
  v354 = &v348 - v46;
  v384 = type metadata accessor for WebPlacecardBridgeReply.MUDirectionsMetadata(0);
  v382 = *(v384 - 8);
  MEMORY[0x1EEE9AC00](v384, v47);
  v352 = &v348 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v380 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FC28, &qword_1C5875E38);
  MEMORY[0x1EEE9AC00](v380, v49);
  v388 = &v348 - v50;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EC80, &qword_1C586B108);
  v53 = MEMORY[0x1EEE9AC00](v51 - 8, v52);
  v381 = &v348 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v53, v55);
  v383 = &v348 - v56;
  v390 = type metadata accessor for WebPlacecardBridgeReply.MUEtaProvider(0);
  v387 = *(v390 - 8);
  MEMORY[0x1EEE9AC00](v390, v57);
  v379 = &v348 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v385 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FC38, &qword_1C5875E48);
  MEMORY[0x1EEE9AC00](v385, v59);
  v391 = &v348 - v60;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EC78, &qword_1C586B100);
  v63 = MEMORY[0x1EEE9AC00](v61 - 8, v62);
  v386 = &v348 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v63, v65);
  v389 = &v348 - v66;
  v67 = type metadata accessor for WebPlacecardBridgeReply.MUUserData(0);
  v395 = *(v67 - 8);
  v396 = v67;
  MEMORY[0x1EEE9AC00](v67, v68);
  v392 = &v348 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  v394 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FC30, &qword_1C5875E40);
  MEMORY[0x1EEE9AC00](v394, v70);
  v397 = &v348 - v71;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EC70, &qword_1C586B0F8);
  v74 = MEMORY[0x1EEE9AC00](v72 - 8, v73);
  v393 = &v348 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v74, v76);
  v399 = &v348 - v77;
  v78 = type metadata accessor for MULocation(0);
  v401 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78, v79);
  v398 = &v348 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FC68, &qword_1C5875E78);
  MEMORY[0x1EEE9AC00](v81, v82);
  v84 = &v348 - v83;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EC50, &qword_1C586B0C8);
  v87 = MEMORY[0x1EEE9AC00](v85 - 8, v86);
  v400 = &v348 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v87, v89);
  v91 = &v348 - v90;
  swift_beginAccess();
  v402 = a1;
  v93 = *(a1 + 16);
  v92 = *(a1 + 24);
  swift_beginAccess();
  v94 = *(a2 + 24);
  if (v92)
  {
    if (!v94 || (v93 != *(a2 + 16) || v92 != v94) && (sub_1C584FDC0() & 1) == 0)
    {
      goto LABEL_16;
    }

LABEL_8:
    v349 = v4;
    v350 = v9;
    v351 = a2;
    v95 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__userLocation;
    v96 = v402;
    swift_beginAccess();
    sub_1C56466CC(v96 + v95, v91, &qword_1EC16EC50, &qword_1C586B0C8);
    v97 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__userLocation;
    v98 = v351;
    swift_beginAccess();
    v99 = *(v81 + 48);
    sub_1C56466CC(v91, v84, &qword_1EC16EC50, &qword_1C586B0C8);
    sub_1C56466CC(v98 + v97, &v84[v99], &qword_1EC16EC50, &qword_1C586B0C8);
    v100 = *(v401 + 48);
    if (v100(v84, 1, v78) == 1)
    {

      sub_1C5625230(v91, &qword_1EC16EC50, &qword_1C586B0C8);
      v101 = v96;
      if (v100(&v84[v99], 1, v78) == 1)
      {
        sub_1C5625230(v84, &qword_1EC16EC50, &qword_1C586B0C8);
LABEL_19:
        v111 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__uiIdiom;
        swift_beginAccess();
        v112 = *(v101 + v111);
        v113 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__uiIdiom;
        swift_beginAccess();
        v114 = *(v98 + v113);
        if (v112 == 5)
        {
          v115 = v399;
          if (v114 != 5)
          {
            goto LABEL_15;
          }
        }

        else
        {
          v115 = v399;
          if (v114 == 5 || v112 != v114)
          {
            goto LABEL_15;
          }
        }

        v116 = (v101 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__osVersion);
        swift_beginAccess();
        v117 = *v116;
        v118 = v116[1];
        v119 = (v98 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__osVersion);
        swift_beginAccess();
        v120 = v119[1];
        if (v118)
        {
          if (!v120)
          {
            goto LABEL_15;
          }

          v121 = v402;
          if ((v117 != *v119 || v118 != v120) && (sub_1C584FDC0() & 1) == 0)
          {
            goto LABEL_15;
          }
        }

        else
        {
          v121 = v402;
          if (v120)
          {
            goto LABEL_15;
          }
        }

        v122 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__environment;
        swift_beginAccess();
        v123 = *(v121 + v122);
        v124 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__environment;
        swift_beginAccess();
        v125 = *(v98 + v124);
        if (v123 == 4)
        {
          if (v125 != 4)
          {
            goto LABEL_15;
          }
        }

        else if (v125 == 4 || v123 != v125)
        {
          goto LABEL_15;
        }

        v126 = (v121 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__place);
        swift_beginAccess();
        v127 = *v126;
        v128 = v126[1];
        v129 = (v98 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__place);
        swift_beginAccess();
        v130 = v129[1];
        if (v128)
        {
          if (!v130)
          {
            goto LABEL_15;
          }

          v131 = v402;
          if ((v127 != *v129 || v128 != v130) && (sub_1C584FDC0() & 1) == 0)
          {
            goto LABEL_15;
          }
        }

        else
        {
          v131 = v402;
          if (v130)
          {
            goto LABEL_15;
          }
        }

        v132 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__formattedAddressLines;
        swift_beginAccess();
        v133 = *(v131 + v132);
        v134 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__formattedAddressLines;
        swift_beginAccess();
        if ((sub_1C56EA440(v133, *(v98 + v134)) & 1) == 0)
        {
          goto LABEL_15;
        }

        v135 = (v131 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__locationAddress);
        swift_beginAccess();
        v136 = *v135;
        v137 = v135[1];
        v138 = (v98 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__locationAddress);
        swift_beginAccess();
        v139 = v138[1];
        if (v137)
        {
          if (!v139 || (v136 != *v138 || v137 != v139) && (sub_1C584FDC0() & 1) == 0)
          {
            goto LABEL_15;
          }
        }

        else if (v139)
        {
          goto LABEL_15;
        }

        v140 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__userData;
        v141 = v402;
        swift_beginAccess();
        sub_1C56466CC(v141 + v140, v115, &qword_1EC16EC70, &qword_1C586B0F8);
        v142 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__userData;
        swift_beginAccess();
        v143 = *(v394 + 48);
        v144 = v397;
        sub_1C56466CC(v115, v397, &qword_1EC16EC70, &qword_1C586B0F8);
        sub_1C56466CC(v98 + v142, v144 + v143, &qword_1EC16EC70, &qword_1C586B0F8);
        v145 = v396;
        v146 = *(v395 + 48);
        if (v146(v144, 1, v396) == 1)
        {
          sub_1C5625230(v115, &qword_1EC16EC70, &qword_1C586B0F8);
          v147 = v146(v144 + v143, 1, v145);
          v148 = v402;
          if (v147 == 1)
          {
            sub_1C5625230(v144, &qword_1EC16EC70, &qword_1C586B0F8);
LABEL_60:
            v158 = (v148 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__placeItemOption);
            swift_beginAccess();
            v159 = *v158;
            v160 = v158[1];
            v161 = (v98 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__placeItemOption);
            swift_beginAccess();
            v162 = v161[1];
            if (v160)
            {
              if (!v162 || (v159 != *v161 || v160 != v162) && (sub_1C584FDC0() & 1) == 0)
              {
                goto LABEL_15;
              }
            }

            else if (v162)
            {
              goto LABEL_15;
            }

            v163 = (v148 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__formattedPhoneNumber);
            swift_beginAccess();
            v164 = *v163;
            v165 = v163[1];
            v166 = (v98 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__formattedPhoneNumber);
            swift_beginAccess();
            v167 = v166[1];
            if (v165)
            {
              if (!v167 || (v164 != *v166 || v165 != v167) && (sub_1C584FDC0() & 1) == 0)
              {
                goto LABEL_15;
              }

LABEL_75:
              v168 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__userCanEdit;
              swift_beginAccess();
              v169 = *(v148 + v168);
              v170 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__userCanEdit;
              swift_beginAccess();
              v171 = *(v98 + v170);
              if (v169 == 2)
              {
                if (v171 != 2)
                {
                  goto LABEL_15;
                }
              }

              else if (v171 == 2 || ((v169 ^ v171) & 1) != 0)
              {
                goto LABEL_15;
              }

              v172 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__canShowOpenFindMyAction;
              v173 = v402;
              swift_beginAccess();
              v174 = *(v173 + v172);
              v175 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__canShowOpenFindMyAction;
              v176 = v351;
              swift_beginAccess();
              v177 = *(v176 + v175);
              if (v174 == 2)
              {
                if (v177 != 2)
                {
                  goto LABEL_15;
                }
              }

              else if (v177 == 2 || ((v174 ^ v177) & 1) != 0)
              {
                goto LABEL_15;
              }

              v178 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__canShowRequestLocation;
              v179 = v402;
              swift_beginAccess();
              v180 = *(v179 + v178);
              v181 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__canShowRequestLocation;
              v182 = v351;
              swift_beginAccess();
              v183 = *(v182 + v181);
              if (v180 == 2)
              {
                if (v183 != 2)
                {
                  goto LABEL_15;
                }
              }

              else if (v183 == 2 || ((v180 ^ v183) & 1) != 0)
              {
                goto LABEL_15;
              }

              v184 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__showMoreButton;
              v185 = v402;
              swift_beginAccess();
              v186 = *(v185 + v184);
              v187 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__showMoreButton;
              v188 = v351;
              swift_beginAccess();
              v189 = *(v188 + v187);
              if (v186 == 2)
              {
                if (v189 != 2)
                {
                  goto LABEL_15;
                }
              }

              else if (v189 == 2 || ((v186 ^ v189) & 1) != 0)
              {
                goto LABEL_15;
              }

              v190 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__canShowDownloadOffline;
              v191 = v402;
              swift_beginAccess();
              v192 = *(v191 + v190);
              v193 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__canShowDownloadOffline;
              v194 = v351;
              swift_beginAccess();
              v195 = *(v194 + v193);
              if (v192 == 2)
              {
                if (v195 != 2)
                {
                  goto LABEL_15;
                }
              }

              else if (v195 == 2 || ((v192 ^ v195) & 1) != 0)
              {
                goto LABEL_15;
              }

              v196 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__etaProvider;
              v197 = v402;
              swift_beginAccess();
              v198 = v389;
              sub_1C56466CC(v197 + v196, v389, &qword_1EC16EC78, &qword_1C586B100);
              v199 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__etaProvider;
              v200 = v351;
              swift_beginAccess();
              v201 = *(v385 + 48);
              v202 = v198;
              v203 = v391;
              sub_1C56466CC(v202, v391, &qword_1EC16EC78, &qword_1C586B100);
              sub_1C56466CC(v200 + v199, v203 + v201, &qword_1EC16EC78, &qword_1C586B100);
              v204 = *(v387 + 48);
              if (v204(v203, 1, v390) == 1)
              {
                sub_1C5625230(v389, &qword_1EC16EC78, &qword_1C586B100);
                if (v204(v391 + v201, 1, v390) == 1)
                {
                  sub_1C5625230(v391, &qword_1EC16EC78, &qword_1C586B100);
                  goto LABEL_107;
                }
              }

              else
              {
                v205 = v391;
                sub_1C56466CC(v391, v386, &qword_1EC16EC78, &qword_1C586B100);
                if (v204(v205 + v201, 1, v390) != 1)
                {
                  v209 = v391;
                  v210 = v391 + v201;
                  v211 = v379;
                  sub_1C56EC178(v210, v379, type metadata accessor for WebPlacecardBridgeReply.MUEtaProvider);
                  v212 = v386;
                  v213 = sub_1C56EE398(v386, v211);
                  sub_1C56EC248(v211, type metadata accessor for WebPlacecardBridgeReply.MUEtaProvider);
                  sub_1C5625230(v389, &qword_1EC16EC78, &qword_1C586B100);
                  sub_1C56EC248(v212, type metadata accessor for WebPlacecardBridgeReply.MUEtaProvider);
                  sub_1C5625230(v209, &qword_1EC16EC78, &qword_1C586B100);
                  if ((v213 & 1) == 0)
                  {
                    goto LABEL_15;
                  }

LABEL_107:
                  v214 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__directionsMetadata;
                  v215 = v402;
                  swift_beginAccess();
                  v216 = v383;
                  sub_1C56466CC(v215 + v214, v383, &qword_1EC16EC80, &qword_1C586B108);
                  v217 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__directionsMetadata;
                  v218 = v351;
                  swift_beginAccess();
                  v219 = *(v380 + 48);
                  v220 = v216;
                  v221 = v388;
                  sub_1C56466CC(v220, v388, &qword_1EC16EC80, &qword_1C586B108);
                  sub_1C56466CC(v218 + v217, v221 + v219, &qword_1EC16EC80, &qword_1C586B108);
                  v222 = *(v382 + 48);
                  if (v222(v221, 1, v384) == 1)
                  {
                    sub_1C5625230(v383, &qword_1EC16EC80, &qword_1C586B108);
                    if (v222(v388 + v219, 1, v384) == 1)
                    {
                      sub_1C5625230(v388, &qword_1EC16EC80, &qword_1C586B108);
                      goto LABEL_116;
                    }
                  }

                  else
                  {
                    v223 = v388;
                    sub_1C56466CC(v388, v381, &qword_1EC16EC80, &qword_1C586B108);
                    if (v222(v223 + v219, 1, v384) != 1)
                    {
                      v224 = v388;
                      v225 = v388 + v219;
                      v226 = v352;
                      sub_1C56EC178(v225, v352, type metadata accessor for WebPlacecardBridgeReply.MUDirectionsMetadata);
                      v227 = v381;
                      v228 = sub_1C56ED578(v381, v226);
                      sub_1C56EC248(v226, type metadata accessor for WebPlacecardBridgeReply.MUDirectionsMetadata);
                      sub_1C5625230(v383, &qword_1EC16EC80, &qword_1C586B108);
                      sub_1C56EC248(v227, type metadata accessor for WebPlacecardBridgeReply.MUDirectionsMetadata);
                      sub_1C5625230(v224, &qword_1EC16EC80, &qword_1C586B108);
                      if ((v228 & 1) == 0)
                      {
                        goto LABEL_15;
                      }

LABEL_116:
                      v229 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__savedStateOfPlace;
                      v230 = v402;
                      swift_beginAccess();
                      v231 = *(v230 + v229);
                      v232 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__savedStateOfPlace;
                      v233 = v351;
                      swift_beginAccess();
                      v234 = *(v233 + v232);
                      if (v231 == 3)
                      {
                        if (v234 != 3)
                        {
                          goto LABEL_15;
                        }
                      }

                      else if (v234 == 3 || v231 != v234)
                      {
                        goto LABEL_15;
                      }

                      v235 = (v402 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__webModuleBaseURL);
                      swift_beginAccess();
                      v236 = *v235;
                      v237 = v235[1];
                      v238 = (v351 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__webModuleBaseURL);
                      swift_beginAccess();
                      v239 = v238[1];
                      if (v237)
                      {
                        if (!v239 || (v236 != *v238 || v237 != v239) && (sub_1C584FDC0() & 1) == 0)
                        {
                          goto LABEL_15;
                        }
                      }

                      else if (v239)
                      {
                        goto LABEL_15;
                      }

                      v240 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__debugOptions;
                      v241 = v402;
                      swift_beginAccess();
                      v242 = v354;
                      sub_1C56466CC(v241 + v240, v354, &qword_1EC16EC88, &qword_1C586B110);
                      v243 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__debugOptions;
                      v244 = v351;
                      swift_beginAccess();
                      v245 = *(v353 + 48);
                      v246 = v242;
                      v247 = v359;
                      sub_1C56466CC(v246, v359, &qword_1EC16EC88, &qword_1C586B110);
                      sub_1C56466CC(v244 + v243, v247 + v245, &qword_1EC16EC88, &qword_1C586B110);
                      v248 = *(v356 + 48);
                      if (v248(v247, 1, v358) == 1)
                      {
                        sub_1C5625230(v354, &qword_1EC16EC88, &qword_1C586B110);
                        if (v248(v359 + v245, 1, v358) == 1)
                        {
                          sub_1C5625230(v359, &qword_1EC16EC88, &qword_1C586B110);
                          goto LABEL_135;
                        }
                      }

                      else
                      {
                        v249 = v359;
                        sub_1C56466CC(v359, v355, &qword_1EC16EC88, &qword_1C586B110);
                        if (v248(v249 + v245, 1, v358) != 1)
                        {
                          v250 = v359;
                          v251 = v359 + v245;
                          v252 = v357;
                          sub_1C56EC178(v251, v357, type metadata accessor for WebPlacecardBridgeReply.MUDebugOptions);
                          v253 = v355;
                          v254 = sub_1C56EDD88(v355, v252);
                          sub_1C56EC248(v252, type metadata accessor for WebPlacecardBridgeReply.MUDebugOptions);
                          sub_1C5625230(v354, &qword_1EC16EC88, &qword_1C586B110);
                          sub_1C56EC248(v253, type metadata accessor for WebPlacecardBridgeReply.MUDebugOptions);
                          sub_1C5625230(v250, &qword_1EC16EC88, &qword_1C586B110);
                          if ((v254 & 1) == 0)
                          {
                            goto LABEL_15;
                          }

LABEL_135:
                          v255 = (v402 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__transitAttributionURL);
                          swift_beginAccess();
                          v256 = *v255;
                          v257 = v255[1];
                          v258 = (v351 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__transitAttributionURL);
                          swift_beginAccess();
                          v259 = v258[1];
                          if (v257)
                          {
                            if (!v259 || (v256 != *v258 || v257 != v259) && (sub_1C584FDC0() & 1) == 0)
                            {
                              goto LABEL_15;
                            }
                          }

                          else if (v259)
                          {
                            goto LABEL_15;
                          }

                          v260 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__vehicles;
                          v261 = v402;
                          swift_beginAccess();
                          v262 = *(v261 + v260);
                          v263 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__vehicles;
                          v264 = v351;
                          swift_beginAccess();
                          v265 = *(v264 + v263);

                          LOBYTE(v264) = sub_1C56EA4D0(v262, v265);

                          if ((v264 & 1) == 0)
                          {
                            goto LABEL_15;
                          }

                          v266 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__placeItem;
                          v267 = v402;
                          swift_beginAccess();
                          v268 = v363;
                          sub_1C56466CC(v267 + v266, v363, &qword_1EC16EC90, &qword_1C586B118);
                          v269 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__placeItem;
                          v270 = v351;
                          swift_beginAccess();
                          v271 = *(v360 + 48);
                          v272 = v268;
                          v273 = v366;
                          sub_1C56466CC(v272, v366, &qword_1EC16EC90, &qword_1C586B118);
                          sub_1C56466CC(v270 + v269, v273 + v271, &qword_1EC16EC90, &qword_1C586B118);
                          v274 = *(v361 + 48);
                          if (v274(v273, 1, v362) == 1)
                          {
                            sub_1C5625230(v363, &qword_1EC16EC90, &qword_1C586B118);
                            if (v274(v366 + v271, 1, v362) == 1)
                            {
                              sub_1C5625230(v366, &qword_1EC16EC90, &qword_1C586B118);
                              goto LABEL_152;
                            }
                          }

                          else
                          {
                            v275 = v366;
                            sub_1C56466CC(v366, v364, &qword_1EC16EC90, &qword_1C586B118);
                            if (v274(v275 + v271, 1, v362) != 1)
                            {
                              v276 = v365;
                              sub_1C56EC178(v366 + v271, v365, type metadata accessor for WebPlacecardBridgeReply.MUPlaceItem);
                              v277 = *(v362 + 20);
                              v278 = *(v364 + v277);
                              v279 = *(v276 + v277);
                              if (v278 != v279)
                              {

                                v280 = sub_1C56D49A8(v278, v279);

                                if (!v280)
                                {
                                  sub_1C56EC248(v365, type metadata accessor for WebPlacecardBridgeReply.MUPlaceItem);
                                  sub_1C5625230(v363, &qword_1EC16EC90, &qword_1C586B118);
                                  sub_1C56EC248(v364, type metadata accessor for WebPlacecardBridgeReply.MUPlaceItem);
                                  v208 = v366;
                                  v206 = &qword_1EC16EC90;
                                  v207 = &qword_1C586B118;
                                  goto LABEL_113;
                                }
                              }

                              sub_1C584EFD0();
                              sub_1C56EF190(&qword_1EC16ED48, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
                              v282 = v364;
                              v281 = v365;
                              v283 = sub_1C584F620();
                              sub_1C56EC248(v281, type metadata accessor for WebPlacecardBridgeReply.MUPlaceItem);
                              sub_1C5625230(v363, &qword_1EC16EC90, &qword_1C586B118);
                              sub_1C56EC248(v282, type metadata accessor for WebPlacecardBridgeReply.MUPlaceItem);
                              sub_1C5625230(v366, &qword_1EC16EC90, &qword_1C586B118);
                              if ((v283 & 1) == 0)
                              {
                                goto LABEL_15;
                              }

LABEL_152:
                              v284 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__placecardOfflineMapProvider;
                              v285 = v402;
                              swift_beginAccess();
                              v286 = v368;
                              sub_1C56466CC(v285 + v284, v368, &qword_1EC16EC98, &qword_1C586B120);
                              v287 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__placecardOfflineMapProvider;
                              v288 = v351;
                              swift_beginAccess();
                              v289 = *(v367 + 48);
                              v290 = v286;
                              v291 = v373;
                              sub_1C56466CC(v290, v373, &qword_1EC16EC98, &qword_1C586B120);
                              sub_1C56466CC(v288 + v287, v291 + v289, &qword_1EC16EC98, &qword_1C586B120);
                              v292 = *(v370 + 48);
                              if (v292(v291, 1, v372) == 1)
                              {
                                sub_1C5625230(v368, &qword_1EC16EC98, &qword_1C586B120);
                                if (v292(v373 + v289, 1, v372) == 1)
                                {
                                  sub_1C5625230(v373, &qword_1EC16EC98, &qword_1C586B120);
LABEL_159:
                                  v299 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__featureFlags;
                                  v300 = v402;
                                  swift_beginAccess();
                                  v301 = *(v300 + v299);
                                  v302 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__featureFlags;
                                  v303 = v351;
                                  swift_beginAccess();
                                  v304 = *(v303 + v302);

                                  LOBYTE(v303) = sub_1C56EB590(v301, v304);

                                  if ((v303 & 1) == 0)
                                  {
                                    goto LABEL_15;
                                  }

                                  v305 = (v402 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__countryCode);
                                  swift_beginAccess();
                                  v306 = *v305;
                                  v307 = v305[1];
                                  v308 = (v351 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__countryCode);
                                  swift_beginAccess();
                                  v309 = v308[1];
                                  if (v307)
                                  {
                                    if (!v309 || (v306 != *v308 || v307 != v309) && (sub_1C584FDC0() & 1) == 0)
                                    {
                                      goto LABEL_15;
                                    }
                                  }

                                  else if (v309)
                                  {
                                    goto LABEL_15;
                                  }

                                  v310 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__isDeveloperPlacecard;
                                  v311 = v402;
                                  swift_beginAccess();
                                  v312 = *(v311 + v310);
                                  v313 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__isDeveloperPlacecard;
                                  v314 = v351;
                                  swift_beginAccess();
                                  v315 = *(v314 + v313);
                                  if (v312 == 2)
                                  {
                                    if (v315 != 2)
                                    {
                                      goto LABEL_15;
                                    }
                                  }

                                  else if (v315 == 2 || ((v312 ^ v315) & 1) != 0)
                                  {
                                    goto LABEL_15;
                                  }

                                  v316 = (v402 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__bundleIdentifier);
                                  swift_beginAccess();
                                  v317 = *v316;
                                  v318 = v316[1];
                                  v319 = (v351 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__bundleIdentifier);
                                  swift_beginAccess();
                                  v320 = v319[1];
                                  if (v318)
                                  {
                                    if (!v320 || (v317 != *v319 || v318 != v320) && (sub_1C584FDC0() & 1) == 0)
                                    {
                                      goto LABEL_15;
                                    }
                                  }

                                  else if (v320)
                                  {
                                    goto LABEL_15;
                                  }

                                  v321 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__userPreferences;
                                  v322 = v402;
                                  swift_beginAccess();
                                  v323 = v375;
                                  sub_1C56466CC(v322 + v321, v375, &qword_1EC16ECA0, &qword_1C586B128);
                                  v324 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__userPreferences;
                                  v325 = v351;
                                  swift_beginAccess();
                                  v326 = *(v374 + 48);
                                  v327 = v323;
                                  v328 = v350;
                                  sub_1C56466CC(v327, v350, &qword_1EC16ECA0, &qword_1C586B128);
                                  sub_1C56466CC(v325 + v324, v328 + v326, &qword_1EC16ECA0, &qword_1C586B128);
                                  v329 = *(v377 + 48);
                                  if (v329(v328, 1, v349) == 1)
                                  {
                                    sub_1C5625230(v375, &qword_1EC16ECA0, &qword_1C586B128);
                                    if (v329(&v350[v326], 1, v349) == 1)
                                    {
                                      sub_1C5625230(v350, &qword_1EC16ECA0, &qword_1C586B128);
                                      goto LABEL_187;
                                    }
                                  }

                                  else
                                  {
                                    v330 = v350;
                                    sub_1C56466CC(v350, v376, &qword_1EC16ECA0, &qword_1C586B128);
                                    if (v329((v330 + v326), 1, v349) != 1)
                                    {
                                      v331 = v350;
                                      v332 = &v350[v326];
                                      v333 = v378;
                                      sub_1C56EC178(v332, v378, type metadata accessor for MUUserPreferences);
                                      v334 = v376;
                                      v335 = sub_1C56F34AC(v376, v333);
                                      sub_1C56EC248(v333, type metadata accessor for MUUserPreferences);
                                      sub_1C5625230(v375, &qword_1EC16ECA0, &qword_1C586B128);
                                      sub_1C56EC248(v334, type metadata accessor for MUUserPreferences);
                                      sub_1C5625230(v331, &qword_1EC16ECA0, &qword_1C586B128);
                                      if ((v335 & 1) == 0)
                                      {
                                        goto LABEL_15;
                                      }

LABEL_187:
                                      v336 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__canMakeCalls;
                                      v337 = v402;
                                      swift_beginAccess();
                                      v338 = *(v337 + v336);
                                      v339 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__canMakeCalls;
                                      v340 = v351;
                                      swift_beginAccess();
                                      v341 = *(v340 + v339);
                                      if (v338 == 2)
                                      {
                                        if (v341 != 2)
                                        {
                                          goto LABEL_15;
                                        }
                                      }

                                      else if (v341 == 2 || ((v338 ^ v341) & 1) != 0)
                                      {
                                        goto LABEL_15;
                                      }

                                      v342 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__sendToDevices;
                                      v343 = v402;
                                      swift_beginAccess();
                                      v344 = *(v343 + v342);
                                      v345 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply9MUContextP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__sendToDevices;
                                      v346 = v351;
                                      swift_beginAccess();
                                      v347 = *(v346 + v345);

                                      v106 = sub_1C56EACE4(v344, v347);

                                      return v106 & 1;
                                    }

                                    sub_1C5625230(v375, &qword_1EC16ECA0, &qword_1C586B128);
                                    sub_1C56EC248(v376, type metadata accessor for MUUserPreferences);
                                  }

                                  v206 = &qword_1EC16FBE0;
                                  v207 = &qword_1C5875DF0;
                                  v208 = v350;
LABEL_113:
                                  sub_1C5625230(v208, v206, v207);
                                  goto LABEL_15;
                                }
                              }

                              else
                              {
                                v293 = v373;
                                sub_1C56466CC(v373, v369, &qword_1EC16EC98, &qword_1C586B120);
                                if (v292(v293 + v289, 1, v372) != 1)
                                {
                                  v294 = v373;
                                  v295 = v373 + v289;
                                  v296 = v371;
                                  sub_1C56EC178(v295, v371, type metadata accessor for WebPlacecardBridgeReply.MUPlacecardOfflineMapProvider);
                                  v297 = v369;
                                  v298 = sub_1C56ED04C(v369, v296);
                                  sub_1C56EC248(v296, type metadata accessor for WebPlacecardBridgeReply.MUPlacecardOfflineMapProvider);
                                  sub_1C5625230(v368, &qword_1EC16EC98, &qword_1C586B120);
                                  sub_1C56EC248(v297, type metadata accessor for WebPlacecardBridgeReply.MUPlacecardOfflineMapProvider);
                                  sub_1C5625230(v294, &qword_1EC16EC98, &qword_1C586B120);
                                  if ((v298 & 1) == 0)
                                  {
                                    goto LABEL_15;
                                  }

                                  goto LABEL_159;
                                }

                                sub_1C5625230(v368, &qword_1EC16EC98, &qword_1C586B120);
                                sub_1C56EC248(v369, type metadata accessor for WebPlacecardBridgeReply.MUPlacecardOfflineMapProvider);
                              }

                              v206 = &qword_1EC16FC10;
                              v207 = &qword_1C5875E20;
                              v208 = v373;
                              goto LABEL_113;
                            }

                            sub_1C5625230(v363, &qword_1EC16EC90, &qword_1C586B118);
                            sub_1C56EC248(v364, type metadata accessor for WebPlacecardBridgeReply.MUPlaceItem);
                          }

                          v206 = &qword_1EC16FC80;
                          v207 = &qword_1C5875E90;
                          v208 = v366;
                          goto LABEL_113;
                        }

                        sub_1C5625230(v354, &qword_1EC16EC88, &qword_1C586B110);
                        sub_1C56EC248(v355, type metadata accessor for WebPlacecardBridgeReply.MUDebugOptions);
                      }

                      v206 = &qword_1EC16FC88;
                      v207 = &qword_1C5875E98;
                      v208 = v359;
                      goto LABEL_113;
                    }

                    sub_1C5625230(v383, &qword_1EC16EC80, &qword_1C586B108);
                    sub_1C56EC248(v381, type metadata accessor for WebPlacecardBridgeReply.MUDirectionsMetadata);
                  }

                  v206 = &qword_1EC16FC28;
                  v207 = &qword_1C5875E38;
                  v208 = v388;
                  goto LABEL_113;
                }

                sub_1C5625230(v389, &qword_1EC16EC78, &qword_1C586B100);
                sub_1C56EC248(v386, type metadata accessor for WebPlacecardBridgeReply.MUEtaProvider);
              }

              v206 = &qword_1EC16FC38;
              v207 = &qword_1C5875E48;
              v208 = v391;
              goto LABEL_113;
            }

            if (!v167)
            {
              goto LABEL_75;
            }

LABEL_15:

            goto LABEL_16;
          }
        }

        else
        {
          v149 = v393;
          sub_1C56466CC(v144, v393, &qword_1EC16EC70, &qword_1C586B0F8);
          if (v146(v144 + v143, 1, v145) != 1)
          {
            v150 = v145;
            v151 = v392;
            sub_1C56EC178(v144 + v143, v392, type metadata accessor for WebPlacecardBridgeReply.MUUserData);
            v152 = *(v150 + 20);
            v153 = *(v149 + v152);
            v154 = *(v151 + v152);
            if (v153 != v154)
            {

              v155 = sub_1C56D872C(v153, v154);

              if (!v155)
              {
                sub_1C56EC248(v151, type metadata accessor for WebPlacecardBridgeReply.MUUserData);
                sub_1C5625230(v115, &qword_1EC16EC70, &qword_1C586B0F8);
                sub_1C56EC248(v393, type metadata accessor for WebPlacecardBridgeReply.MUUserData);
                sub_1C5625230(v144, &qword_1EC16EC70, &qword_1C586B0F8);
                goto LABEL_15;
              }
            }

            sub_1C584EFD0();
            sub_1C56EF190(&qword_1EC16ED48, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
            v156 = v393;
            v157 = sub_1C584F620();
            sub_1C56EC248(v151, type metadata accessor for WebPlacecardBridgeReply.MUUserData);
            sub_1C5625230(v115, &qword_1EC16EC70, &qword_1C586B0F8);
            sub_1C56EC248(v156, type metadata accessor for WebPlacecardBridgeReply.MUUserData);
            sub_1C5625230(v144, &qword_1EC16EC70, &qword_1C586B0F8);
            v148 = v402;
            if ((v157 & 1) == 0)
            {
              goto LABEL_15;
            }

            goto LABEL_60;
          }

          sub_1C5625230(v115, &qword_1EC16EC70, &qword_1C586B0F8);
          sub_1C56EC248(v149, type metadata accessor for WebPlacecardBridgeReply.MUUserData);
        }

        v103 = &qword_1EC16FC30;
        v104 = &qword_1C5875E40;
        v105 = v144;
LABEL_14:
        sub_1C5625230(v105, v103, v104);
        goto LABEL_15;
      }
    }

    else
    {
      v102 = v400;
      sub_1C56466CC(v84, v400, &qword_1EC16EC50, &qword_1C586B0C8);
      if (v100(&v84[v99], 1, v78) != 1)
      {
        v108 = &v84[v99];
        v109 = v398;
        sub_1C56EC178(v108, v398, type metadata accessor for MULocation);
        v101 = v402;

        v110 = sub_1C56F4268(v102, v109, type metadata accessor for MULocation);
        sub_1C56EC248(v109, type metadata accessor for MULocation);
        sub_1C5625230(v91, &qword_1EC16EC50, &qword_1C586B0C8);
        sub_1C56EC248(v102, type metadata accessor for MULocation);
        sub_1C5625230(v84, &qword_1EC16EC50, &qword_1C586B0C8);
        if ((v110 & 1) == 0)
        {
          goto LABEL_15;
        }

        goto LABEL_19;
      }

      sub_1C5625230(v91, &qword_1EC16EC50, &qword_1C586B0C8);
      sub_1C56EC248(v102, type metadata accessor for MULocation);
    }

    v103 = &qword_1EC16FC68;
    v104 = &qword_1C5875E78;
    v105 = v84;
    goto LABEL_14;
  }

  if (!v94)
  {
    goto LABEL_8;
  }

LABEL_16:
  v106 = 0;
  return v106 & 1;
}

uint64_t sub_1C56D3000(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C56EF190(&qword_1EC16F9B0, type metadata accessor for WebPlacecardBridgeReply.MUContext, &unk_1C58722B0);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C56D30A0(uint64_t a1)
{
  sub_1C56EF190(&qword_1EC16D188, type metadata accessor for WebPlacecardBridgeReply.MUContext, &unk_1C5872238);

  return sub_1C584F160();
}

uint64_t sub_1C56D310C(uint64_t a1, uint64_t a2)
{
  sub_1C56EF190(&qword_1EC16D188, type metadata accessor for WebPlacecardBridgeReply.MUContext, &unk_1C5872238);

  return sub_1C584F170();
}

uint64_t sub_1C56D31CC()
{
  v0 = sub_1C584F250();
  __swift_allocate_value_buffer(v0, qword_1EC190210);
  __swift_project_value_buffer(v0, qword_1EC190210);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC0, &qword_1C5875DD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC8, &qword_1C5875DD8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1C586AEB0;
  v4 = v24 + v3;
  v5 = v24 + v3 + v1[14];
  *(v24 + v3) = 1;
  *v5 = "map_item";
  *(v5 + 8) = 8;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADE8];
  v7 = sub_1C584F230();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v24 + v3 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "is_home_work_school_shortcut";
  *(v9 + 8) = 28;
  *(v9 + 16) = 2;
  v8();
  v10 = (v24 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "custom_name";
  *(v11 + 1) = 11;
  v11[16] = 2;
  v8();
  v12 = (v24 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "place_data_availability";
  *(v13 + 1) = 23;
  v13[16] = 2;
  v8();
  v14 = (v24 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "contact";
  *(v15 + 1) = 7;
  v15[16] = 2;
  v8();
  v16 = (v24 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "coordinates";
  *(v17 + 1) = 11;
  v17[16] = 2;
  v8();
  v18 = (v24 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "formatted_address_lines";
  *(v19 + 1) = 23;
  v19[16] = 2;
  v8();
  v20 = (v24 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "full_thoroughfare";
  *(v21 + 1) = 17;
  v21[16] = 2;
  v8();
  v22 = v24 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "locality";
  *(v22 + 8) = 8;
  *(v22 + 16) = 2;
  v8();
  return sub_1C584F240();
}

uint64_t sub_1C56D3560()
{
  type metadata accessor for WebPlacecardBridgeReply.MUPlaceItem._StorageClass(0);
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 2;
  *(v0 + 40) = 0;
  *(v0 + 48) = 0;
  v1 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply11MUPlaceItemP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__placeDataAvailability;
  v2 = type metadata accessor for WebPlacecardBridgeReply.MUPlaceDataAvailability(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply11MUPlaceItemP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__contact;
  v4 = type metadata accessor for WebPlacecardBridgeReply.MUContact(0);
  (*(*(v4 - 8) + 56))(v0 + v3, 1, 1, v4);
  v5 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply11MUPlaceItemP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__coordinates;
  v6 = type metadata accessor for MULocation(0);
  result = (*(*(v6 - 8) + 56))(v0 + v5, 1, 1, v6);
  *(v0 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply11MUPlaceItemP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__formattedAddressLines) = MEMORY[0x1E69E7CC0];
  v8 = (v0 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply11MUPlaceItemP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__fullThoroughfare);
  *v8 = 0;
  v8[1] = 0;
  v9 = (v0 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply11MUPlaceItemP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__locality);
  *v9 = 0;
  v9[1] = 0;
  qword_1EC177AB0 = v0;
  return result;
}

uint64_t sub_1C56D36B8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EC50, &qword_1C586B0C8);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v51 = &v44 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16ECB0, &qword_1C586B138);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v50 = &v44 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16ECA8, &qword_1C586B130);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v46 = &v44 - v11;
  *(v1 + 24) = 0;
  *(v1 + 16) = 0;
  *(v1 + 32) = 2;
  *(v1 + 48) = 0;
  *(v1 + 40) = 0;
  v12 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply11MUPlaceItemP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__placeDataAvailability;
  v13 = type metadata accessor for WebPlacecardBridgeReply.MUPlaceDataAvailability(0);
  (*(*(v13 - 8) + 56))(v1 + v12, 1, 1, v13);
  v14 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply11MUPlaceItemP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__contact;
  v47 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply11MUPlaceItemP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__contact;
  v15 = type metadata accessor for WebPlacecardBridgeReply.MUContact(0);
  (*(*(v15 - 8) + 56))(v1 + v14, 1, 1, v15);
  v16 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply11MUPlaceItemP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__coordinates;
  v48 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply11MUPlaceItemP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__coordinates;
  v17 = type metadata accessor for MULocation(0);
  (*(*(v17 - 8) + 56))(v1 + v16, 1, 1, v17);
  v49 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply11MUPlaceItemP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__formattedAddressLines;
  *(v1 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply11MUPlaceItemP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__formattedAddressLines) = MEMORY[0x1E69E7CC0];
  v18 = (v1 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply11MUPlaceItemP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__fullThoroughfare);
  *v18 = 0;
  v18[1] = 0;
  v19 = (v1 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply11MUPlaceItemP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__locality);
  v45 = (v1 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply11MUPlaceItemP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__locality);
  *v19 = 0;
  v19[1] = 0;
  swift_beginAccess();
  v20 = *(a1 + 16);
  v21 = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 16) = v20;
  *(v1 + 24) = v21;
  swift_beginAccess();
  v22 = *(a1 + 32);
  swift_beginAccess();
  *(v1 + 32) = v22;
  swift_beginAccess();
  v24 = *(a1 + 40);
  v23 = *(a1 + 48);
  swift_beginAccess();
  *(v1 + 40) = v24;
  *(v1 + 48) = v23;
  v25 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply11MUPlaceItemP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__placeDataAvailability;
  swift_beginAccess();
  v26 = v46;
  sub_1C56466CC(a1 + v25, v46, &qword_1EC16ECA8, &qword_1C586B130);
  swift_beginAccess();

  sub_1C56ECE38(v26, v1 + v12, &qword_1EC16ECA8, &qword_1C586B130);
  swift_endAccess();
  v27 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply11MUPlaceItemP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__contact;
  swift_beginAccess();
  v28 = v50;
  sub_1C56466CC(a1 + v27, v50, &qword_1EC16ECB0, &qword_1C586B138);
  v29 = v47;
  swift_beginAccess();
  sub_1C56ECE38(v28, v1 + v29, &qword_1EC16ECB0, &qword_1C586B138);
  swift_endAccess();
  v30 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply11MUPlaceItemP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__coordinates;
  swift_beginAccess();
  v31 = v51;
  sub_1C56466CC(a1 + v30, v51, &qword_1EC16EC50, &qword_1C586B0C8);
  v32 = v48;
  swift_beginAccess();
  sub_1C56ECE38(v31, v1 + v32, &qword_1EC16EC50, &qword_1C586B0C8);
  swift_endAccess();
  v33 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply11MUPlaceItemP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__formattedAddressLines;
  swift_beginAccess();
  v34 = *(a1 + v33);
  v35 = v49;
  swift_beginAccess();
  *(v1 + v35) = v34;

  v36 = (a1 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply11MUPlaceItemP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__fullThoroughfare);
  swift_beginAccess();
  v38 = *v36;
  v37 = v36[1];
  swift_beginAccess();
  *v18 = v38;
  v18[1] = v37;

  v39 = (a1 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply11MUPlaceItemP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__locality);
  swift_beginAccess();
  v41 = *v39;
  v40 = v39[1];

  v42 = v45;
  swift_beginAccess();
  *v42 = v41;
  v42[1] = v40;

  return v1;
}

uint64_t sub_1C56D3C3C()
{

  sub_1C5625230(v0 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply11MUPlaceItemP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__placeDataAvailability, &qword_1EC16ECA8, &qword_1C586B130);
  sub_1C5625230(v0 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply11MUPlaceItemP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__contact, &qword_1EC16ECB0, &qword_1C586B138);
  sub_1C5625230(v0 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply11MUPlaceItemP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__coordinates, &qword_1EC16EC50, &qword_1C586B0C8);

  return swift_deallocClassInstance();
}

uint64_t sub_1C56D3D38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v6 = *(type metadata accessor for WebPlacecardBridgeReply.MUPlaceItem(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v3 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for WebPlacecardBridgeReply.MUPlaceItem._StorageClass(0);
    v9 = swift_allocObject();
    sub_1C56D36B8(v8);
    *(v5 + v6) = v9;
  }

  result = sub_1C584F050();
  if (!v4)
  {
    while (1)
    {
      if (v11)
      {
        return result;
      }

      if (result <= 4)
      {
        break;
      }

      if (result <= 6)
      {
        v12 = v4;
        if (result == 5)
        {
          swift_beginAccess();
          type metadata accessor for WebPlacecardBridgeReply.MUContact(0);
          v13 = type metadata accessor for WebPlacecardBridgeReply.MUContact;
          v14 = &unk_1C5872670;
          v15 = &qword_1EC16D1A0;
        }

        else
        {
          swift_beginAccess();
          type metadata accessor for MULocation(0);
          v13 = type metadata accessor for MULocation;
          v14 = &unk_1C5871748;
          v15 = &qword_1EC16D880;
        }

        goto LABEL_24;
      }

      if (result == 7)
      {
        swift_beginAccess();
        sub_1C584F0C0();
LABEL_26:
        swift_endAccess();
        goto LABEL_27;
      }

      if (result == 8 || result == 9)
      {
        goto LABEL_25;
      }

LABEL_27:
      result = sub_1C584F050();
    }

    if (result > 2)
    {
      if (result != 3)
      {
        v12 = v4;
        swift_beginAccess();
        type metadata accessor for WebPlacecardBridgeReply.MUPlaceDataAvailability(0);
        v13 = type metadata accessor for WebPlacecardBridgeReply.MUPlaceDataAvailability;
        v14 = &unk_1C5872508;
        v15 = &qword_1EC16D1F8;
LABEL_24:
        sub_1C56EF190(v15, v13, v14);
        v4 = v12;
        sub_1C584F100();
        goto LABEL_26;
      }
    }

    else if (result != 1)
    {
      if (result != 2)
      {
        goto LABEL_27;
      }

      swift_beginAccess();
      sub_1C584F080();
      goto LABEL_26;
    }

LABEL_25:
    swift_beginAccess();
    sub_1C584F0D0();
    goto LABEL_26;
  }

  return result;
}

uint64_t sub_1C56D40B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v9 = *(v5 + *(type metadata accessor for WebPlacecardBridgeReply.MUPlaceItem(0) + 20));
  result = swift_beginAccess();
  if (*(v9 + 24))
  {

    sub_1C584F1F0();
  }

  if (!v4)
  {
    swift_beginAccess();
    if (*(v9 + 32) != 2)
    {
      sub_1C584F190();
    }

    swift_beginAccess();
    if (*(v9 + 48))
    {

      sub_1C584F1F0();
    }

    sub_1C56D4330(v9, a1, a2, a3);
    sub_1C56D4558(v9, a1, a2, a3);
    sub_1C56D4780(v9, a1, a2, a3);
    v11 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply11MUPlaceItemP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__formattedAddressLines;
    swift_beginAccess();
    if (*(*(v9 + v11) + 16))
    {

      sub_1C584F1D0();
    }

    sub_1C56D8394(v9, a1, a2, a3, &OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply11MUPlaceItemP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__fullThoroughfare, 8);
    sub_1C56D8394(v9, a1, a2, a3, &OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply11MUPlaceItemP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__locality, 9);
    return sub_1C584EFB0();
  }

  return result;
}

uint64_t sub_1C56D4330(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16ECA8, &qword_1C586B130);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for WebPlacecardBridgeReply.MUPlaceDataAvailability(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply11MUPlaceItemP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__placeDataAvailability;
  swift_beginAccess();
  sub_1C56466CC(a1 + v14, v8, &qword_1EC16ECA8, &qword_1C586B130);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C5625230(v8, &qword_1EC16ECA8, &qword_1C586B130);
  }

  sub_1C56EC178(v8, v13, type metadata accessor for WebPlacecardBridgeReply.MUPlaceDataAvailability);
  sub_1C56EF190(&qword_1EC16D1F8, type metadata accessor for WebPlacecardBridgeReply.MUPlaceDataAvailability, &unk_1C5872508);
  sub_1C584F220();
  return sub_1C56EC248(v13, type metadata accessor for WebPlacecardBridgeReply.MUPlaceDataAvailability);
}

uint64_t sub_1C56D4558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16ECB0, &qword_1C586B138);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for WebPlacecardBridgeReply.MUContact(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply11MUPlaceItemP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__contact;
  swift_beginAccess();
  sub_1C56466CC(a1 + v14, v8, &qword_1EC16ECB0, &qword_1C586B138);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C5625230(v8, &qword_1EC16ECB0, &qword_1C586B138);
  }

  sub_1C56EC178(v8, v13, type metadata accessor for WebPlacecardBridgeReply.MUContact);
  sub_1C56EF190(&qword_1EC16D1A0, type metadata accessor for WebPlacecardBridgeReply.MUContact, &unk_1C5872670);
  sub_1C584F220();
  return sub_1C56EC248(v13, type metadata accessor for WebPlacecardBridgeReply.MUContact);
}

uint64_t sub_1C56D4780(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EC50, &qword_1C586B0C8);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for MULocation(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply11MUPlaceItemP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__coordinates;
  swift_beginAccess();
  sub_1C56466CC(a1 + v14, v8, &qword_1EC16EC50, &qword_1C586B0C8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C5625230(v8, &qword_1EC16EC50, &qword_1C586B0C8);
  }

  sub_1C56EC178(v8, v13, type metadata accessor for MULocation);
  sub_1C56EF190(&qword_1EC16D880, type metadata accessor for MULocation, &unk_1C5871748);
  sub_1C584F220();
  return sub_1C56EC248(v13, type metadata accessor for MULocation);
}

BOOL sub_1C56D49A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MULocation(0);
  v110 = *(v4 - 8);
  v111 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v107 = &v105 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FC68, &qword_1C5875E78);
  MEMORY[0x1EEE9AC00](v109, v7);
  v112 = &v105 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EC50, &qword_1C586B0C8);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v114 = &v105 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v13);
  v119 = &v105 - v14;
  v15 = type metadata accessor for WebPlacecardBridgeReply.MUContact(0);
  v116 = *(v15 - 8);
  v117 = v15;
  MEMORY[0x1EEE9AC00](v15, v16);
  v108 = (&v105 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FC70, &qword_1C5875E80);
  MEMORY[0x1EEE9AC00](v115, v18);
  v118 = &v105 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16ECB0, &qword_1C586B138);
  v22 = MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v113 = (&v105 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v22, v24);
  v120 = &v105 - v25;
  v26 = type metadata accessor for WebPlacecardBridgeReply.MUPlaceDataAvailability(0);
  v121 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = &v105 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FC78, &qword_1C5875E88);
  MEMORY[0x1EEE9AC00](v30, v31);
  v122 = &v105 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16ECA8, &qword_1C586B130);
  v35 = MEMORY[0x1EEE9AC00](v33 - 8, v34);
  v37 = &v105 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35, v38);
  v40 = &v105 - v39;
  swift_beginAccess();
  v123 = a1;
  v41 = *(a1 + 16);
  v42 = *(a1 + 24);
  swift_beginAccess();
  v43 = a2;
  v44 = *(a2 + 24);
  if (v42)
  {
    if (!v44 || (v41 != *(a2 + 16) || v42 != v44) && (sub_1C584FDC0() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v44)
  {
    return 0;
  }

  v45 = v123;
  swift_beginAccess();
  v46 = *(v45 + 32);
  swift_beginAccess();
  v47 = *(a2 + 32);
  if (v46 == 2)
  {
    if (v47 != 2)
    {
      return 0;
    }
  }

  else if (v47 == 2 || ((v46 ^ v47) & 1) != 0)
  {
    return 0;
  }

  swift_beginAccess();
  v48 = *(v45 + 40);
  v49 = *(v45 + 48);
  swift_beginAccess();
  v50 = *(a2 + 48);
  if (v49)
  {
    if (!v50 || (v48 != *(a2 + 40) || v49 != v50) && (sub_1C584FDC0() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v50)
  {
    return 0;
  }

  v51 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply11MUPlaceItemP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__placeDataAvailability;
  v52 = v123;
  swift_beginAccess();
  sub_1C56466CC(v52 + v51, v40, &qword_1EC16ECA8, &qword_1C586B130);
  v53 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply11MUPlaceItemP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__placeDataAvailability;
  swift_beginAccess();
  v54 = *(v30 + 48);
  v55 = v122;
  sub_1C56466CC(v40, v122, &qword_1EC16ECA8, &qword_1C586B130);
  v106 = v54;
  sub_1C56466CC(v43 + v53, v55 + v54, &qword_1EC16ECA8, &qword_1C586B130);
  v56 = *(v121 + 48);
  if (v56(v55, 1, v26) == 1)
  {
    v57 = v123;

    sub_1C5625230(v40, &qword_1EC16ECA8, &qword_1C586B130);
    v58 = v56(v55 + v106, 1, v26);
    v59 = v43;
    v60 = v57;
    if (v58 == 1)
    {
      sub_1C5625230(v55, &qword_1EC16ECA8, &qword_1C586B130);
      goto LABEL_27;
    }

LABEL_25:
    v62 = &qword_1EC16FC78;
    v63 = &qword_1C5875E88;
    v64 = v55;
LABEL_41:
    sub_1C5625230(v64, v62, v63);
    goto LABEL_42;
  }

  sub_1C56466CC(v55, v37, &qword_1EC16ECA8, &qword_1C586B130);
  v61 = v106;
  if (v56(v55 + v106, 1, v26) == 1)
  {

    sub_1C5625230(v40, &qword_1EC16ECA8, &qword_1C586B130);
    sub_1C56EC248(v37, type metadata accessor for WebPlacecardBridgeReply.MUPlaceDataAvailability);
    goto LABEL_25;
  }

  sub_1C56EC178(v55 + v61, v29, type metadata accessor for WebPlacecardBridgeReply.MUPlaceDataAvailability);
  v65 = v123;

  v66 = sub_1C56EE970(v37, v29);
  sub_1C56EC248(v29, type metadata accessor for WebPlacecardBridgeReply.MUPlaceDataAvailability);
  sub_1C5625230(v40, &qword_1EC16ECA8, &qword_1C586B130);
  sub_1C56EC248(v37, type metadata accessor for WebPlacecardBridgeReply.MUPlaceDataAvailability);
  v60 = v65;
  v59 = v43;
  sub_1C5625230(v55, &qword_1EC16ECA8, &qword_1C586B130);
  if ((v66 & 1) == 0)
  {
    goto LABEL_42;
  }

LABEL_27:
  v67 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply11MUPlaceItemP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__contact;
  swift_beginAccess();
  v68 = v120;
  sub_1C56466CC(v60 + v67, v120, &qword_1EC16ECB0, &qword_1C586B138);
  v69 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply11MUPlaceItemP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__contact;
  swift_beginAccess();
  v70 = *(v115 + 48);
  v71 = v118;
  sub_1C56466CC(v68, v118, &qword_1EC16ECB0, &qword_1C586B138);
  sub_1C56466CC(v59 + v69, v71 + v70, &qword_1EC16ECB0, &qword_1C586B138);
  v72 = v117;
  v73 = *(v116 + 48);
  if (v73(v71, 1, v117) == 1)
  {
    sub_1C5625230(v68, &qword_1EC16ECB0, &qword_1C586B138);
    v74 = v73(v71 + v70, 1, v72);
    v75 = v114;
    v76 = v119;
    if (v74 == 1)
    {
      sub_1C5625230(v71, &qword_1EC16ECB0, &qword_1C586B138);
      goto LABEL_34;
    }

LABEL_32:
    v62 = &qword_1EC16FC70;
    v63 = &qword_1C5875E80;
LABEL_40:
    v64 = v71;
    goto LABEL_41;
  }

  v77 = v113;
  sub_1C56466CC(v71, v113, &qword_1EC16ECB0, &qword_1C586B138);
  v78 = v73(v71 + v70, 1, v72);
  v76 = v119;
  if (v78 == 1)
  {
    sub_1C5625230(v120, &qword_1EC16ECB0, &qword_1C586B138);
    sub_1C56EC248(v77, type metadata accessor for WebPlacecardBridgeReply.MUContact);
    goto LABEL_32;
  }

  v79 = v71 + v70;
  v80 = v108;
  sub_1C56EC178(v79, v108, type metadata accessor for WebPlacecardBridgeReply.MUContact);
  v81 = sub_1C56ECF40(v77, v80, type metadata accessor for WebPlacecardBridgeReply.MUContactLabeledValue, type metadata accessor for WebPlacecardBridgeReply.MUContactLabeledValue, type metadata accessor for WebPlacecardBridgeReply.MUContact);
  sub_1C56EC248(v80, type metadata accessor for WebPlacecardBridgeReply.MUContact);
  sub_1C5625230(v120, &qword_1EC16ECB0, &qword_1C586B138);
  sub_1C56EC248(v77, type metadata accessor for WebPlacecardBridgeReply.MUContact);
  sub_1C5625230(v71, &qword_1EC16ECB0, &qword_1C586B138);
  v75 = v114;
  if ((v81 & 1) == 0)
  {
    goto LABEL_42;
  }

LABEL_34:
  v82 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply11MUPlaceItemP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__coordinates;
  swift_beginAccess();
  sub_1C56466CC(v60 + v82, v76, &qword_1EC16EC50, &qword_1C586B0C8);
  v83 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply11MUPlaceItemP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__coordinates;
  swift_beginAccess();
  v84 = *(v109 + 48);
  v71 = v112;
  sub_1C56466CC(v76, v112, &qword_1EC16EC50, &qword_1C586B0C8);
  sub_1C56466CC(v59 + v83, v71 + v84, &qword_1EC16EC50, &qword_1C586B0C8);
  v85 = v111;
  v86 = *(v110 + 48);
  if (v86(v71, 1, v111) == 1)
  {
    sub_1C5625230(v76, &qword_1EC16EC50, &qword_1C586B0C8);
    if (v86(v71 + v84, 1, v85) == 1)
    {
      sub_1C5625230(v71, &qword_1EC16EC50, &qword_1C586B0C8);
      goto LABEL_46;
    }

    goto LABEL_39;
  }

  sub_1C56466CC(v71, v75, &qword_1EC16EC50, &qword_1C586B0C8);
  if (v86(v71 + v84, 1, v85) == 1)
  {
    sub_1C5625230(v76, &qword_1EC16EC50, &qword_1C586B0C8);
    sub_1C56EC248(v75, type metadata accessor for MULocation);
LABEL_39:
    v62 = &qword_1EC16FC68;
    v63 = &qword_1C5875E78;
    goto LABEL_40;
  }

  v88 = v71 + v84;
  v89 = v107;
  sub_1C56EC178(v88, v107, type metadata accessor for MULocation);
  v90 = sub_1C56F4268(v75, v89, type metadata accessor for MULocation);
  sub_1C56EC248(v89, type metadata accessor for MULocation);
  sub_1C5625230(v76, &qword_1EC16EC50, &qword_1C586B0C8);
  sub_1C56EC248(v75, type metadata accessor for MULocation);
  sub_1C5625230(v71, &qword_1EC16EC50, &qword_1C586B0C8);
  if ((v90 & 1) == 0)
  {
    goto LABEL_42;
  }

LABEL_46:
  v91 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply11MUPlaceItemP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__formattedAddressLines;
  swift_beginAccess();
  v92 = *(v60 + v91);
  v93 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply11MUPlaceItemP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__formattedAddressLines;
  swift_beginAccess();
  if ((sub_1C56EA440(v92, *(v59 + v93)) & 1) == 0)
  {
    goto LABEL_42;
  }

  v94 = (v60 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply11MUPlaceItemP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__fullThoroughfare);
  swift_beginAccess();
  v95 = *v94;
  v96 = v94[1];
  v97 = (v59 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply11MUPlaceItemP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__fullThoroughfare);
  swift_beginAccess();
  v98 = v97[1];
  if (v96)
  {
    if (!v98 || (v95 != *v97 || v96 != v98) && (sub_1C584FDC0() & 1) == 0)
    {
      goto LABEL_42;
    }
  }

  else if (v98)
  {
    goto LABEL_42;
  }

  v99 = (v60 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply11MUPlaceItemP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__locality);
  swift_beginAccess();
  v100 = *v99;
  v101 = v99[1];
  v102 = (v59 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply11MUPlaceItemP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__locality);
  swift_beginAccess();
  v103 = v102[1];
  if (!v101)
  {

    if (!v103)
    {
      return 1;
    }

    return 0;
  }

  if (!v103)
  {
LABEL_42:

    return 0;
  }

  if (v100 == *v102 && v101 == v103)
  {

    return 1;
  }

  v104 = sub_1C584FDC0();

  return (v104 & 1) != 0;
}

uint64_t sub_1C56D5864(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C56EF190(&qword_1EC16F9A8, type metadata accessor for WebPlacecardBridgeReply.MUPlaceItem, &unk_1C5872418);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C56D5904(uint64_t a1)
{
  sub_1C56EF190(&qword_1EC16D3E8, type metadata accessor for WebPlacecardBridgeReply.MUPlaceItem, &unk_1C58723A0);

  return sub_1C584F160();
}

uint64_t sub_1C56D5970(uint64_t a1, uint64_t a2)
{
  sub_1C56EF190(&qword_1EC16D3E8, type metadata accessor for WebPlacecardBridgeReply.MUPlaceItem, &unk_1C58723A0);

  return sub_1C584F170();
}

uint64_t sub_1C56D5A30()
{
  v0 = sub_1C584F250();
  __swift_allocate_value_buffer(v0, qword_1EC190228);
  __swift_project_value_buffer(v0, qword_1EC190228);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC0, &qword_1C5875DD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC8, &qword_1C5875DD8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C586AE60;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "is_in_supported_custom_route_region";
  *(v6 + 8) = 35;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C584F230();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "should_disable_report_a_problem";
  *(v10 + 8) = 31;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "mkrap_is_available";
  *(v12 + 1) = 18;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "supports_showing_coordinates";
  *(v14 + 1) = 28;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "should_exclude_flyover";
  *(v16 + 1) = 22;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "is_authorized_for_precise_location";
  *(v18 + 1) = 34;
  v18[16] = 2;
  v9();
  return sub_1C584F240();
}

uint64_t sub_1C56D5CFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C584F050();
  if (!v3)
  {
    while (1)
    {
      if (v5)
      {
        return result;
      }

      if (result > 3)
      {
        if (result == 4 || result == 5 || result == 6)
        {
LABEL_11:
          type metadata accessor for WebPlacecardBridgeReply.MUPlaceDataAvailability(0);
          sub_1C584F080();
        }
      }

      else if (result == 1 || result == 2 || result == 3)
      {
        goto LABEL_11;
      }

      result = sub_1C584F050();
    }
  }

  return result;
}

int *sub_1C56D5E20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for WebPlacecardBridgeReply.MUPlaceDataAvailability(0);
  v10 = result;
  if (*(v5 + result[5]) == 2)
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    result = sub_1C584F190();
    if (v4)
    {
      return result;
    }
  }

  if (*(v5 + v10[6]) != 2)
  {
    sub_1C584F190();
  }

  if (*(v5 + v10[7]) != 2)
  {
    sub_1C584F190();
  }

  if (*(v5 + v10[8]) != 2)
  {
    sub_1C584F190();
  }

  sub_1C56C70A0(v5, a1, a2, a3, type metadata accessor for WebPlacecardBridgeReply.MUPlaceDataAvailability);
  sub_1C56DAFDC(v5, a1, a2, a3, type metadata accessor for WebPlacecardBridgeReply.MUPlaceDataAvailability);
  return sub_1C584EFB0();
}

uint64_t sub_1C56D5F8C@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1C584EFC0();
  v5 = a1[6];
  *(a2 + a1[5]) = 2;
  *(a2 + v5) = 2;
  v6 = a1[8];
  *(a2 + a1[7]) = 2;
  *(a2 + v6) = 2;
  v7 = a1[10];
  *(a2 + a1[9]) = 2;
  *(a2 + v7) = 2;
  return result;
}

uint64_t sub_1C56D6028(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C56EF190(&qword_1EC16F9A0, type metadata accessor for WebPlacecardBridgeReply.MUPlaceDataAvailability, &unk_1C5872580);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C56D60C8(uint64_t a1)
{
  sub_1C56EF190(&qword_1EC16D1F8, type metadata accessor for WebPlacecardBridgeReply.MUPlaceDataAvailability, &unk_1C5872508);

  return sub_1C584F160();
}

uint64_t sub_1C56D6134(uint64_t a1, uint64_t a2)
{
  sub_1C56EF190(&qword_1EC16D1F8, type metadata accessor for WebPlacecardBridgeReply.MUPlaceDataAvailability, &unk_1C5872508);

  return sub_1C584F170();
}

uint64_t sub_1C56D61C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t a7)
{
  result = sub_1C584F050();
  if (!v7)
  {
    v17 = a7;
    v14 = a5;
    v15 = a6;
    v16 = a4;
    while (1)
    {
      if (v13)
      {
        return result;
      }

      if (result > 2)
      {
        if (result == 3 || result == 4)
        {
LABEL_4:
          a4(0);
          sub_1C56EF190(a5, a6, a7);
          sub_1C584F0F0();
          a7 = v17;
          a5 = v14;
          a6 = v15;
LABEL_5:
          a4 = v16;
        }
      }

      else
      {
        if (result == 1)
        {
          a4(0);
          sub_1C56EF190(a5, a6, a7);
          sub_1C584F0F0();
          a7 = v17;
          goto LABEL_5;
        }

        if (result == 2)
        {
          goto LABEL_4;
        }
      }

      result = sub_1C584F050();
    }
  }

  return result;
}

uint64_t sub_1C56D639C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  if (*(*v3 + 16))
  {
    type metadata accessor for WebPlacecardBridgeReply.MUContactLabeledValue(0);
    sub_1C56EF190(&qword_1EC16D208, type metadata accessor for WebPlacecardBridgeReply.MUContactLabeledValue, &unk_1C58727D8);
    result = sub_1C584F210();
    if (v4)
    {
      return result;
    }

    v5 = 0;
  }

  if (*(v3[1] + 16))
  {
    type metadata accessor for WebPlacecardBridgeReply.MUContactLabeledValue(0);
    sub_1C56EF190(&qword_1EC16D208, type metadata accessor for WebPlacecardBridgeReply.MUContactLabeledValue, &unk_1C58727D8);
    result = sub_1C584F210();
    if (v5)
    {
      return result;
    }

    v5 = 0;
  }

  if (*(v3[2] + 16))
  {
    type metadata accessor for WebPlacecardBridgeReply.MUContactLabeledValue(0);
    sub_1C56EF190(&qword_1EC16D208, type metadata accessor for WebPlacecardBridgeReply.MUContactLabeledValue, &unk_1C58727D8);
    v7 = v5;
    result = sub_1C584F210();
    if (v5)
    {
      return result;
    }
  }

  else
  {
    v7 = v5;
  }

  if (!*(v3[3] + 16) || (type metadata accessor for WebPlacecardBridgeReply.MUContactLabeledValue(0), sub_1C56EF190(&qword_1EC16D208, type metadata accessor for WebPlacecardBridgeReply.MUContactLabeledValue, &unk_1C58727D8), result = sub_1C584F210(), !v7))
  {
    type metadata accessor for WebPlacecardBridgeReply.MUContact(0);
    return sub_1C584EFB0();
  }

  return result;
}

uint64_t sub_1C56D65F4@<X0>(void *a1@<X8>)
{
  v1 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  a1[1] = v1;
  a1[2] = v1;
  a1[3] = v1;
  return sub_1C584EFC0();
}

uint64_t sub_1C56D6644@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = sub_1C584EFD0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1C56D66BC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = sub_1C584EFD0();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1C56D67A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C56EF190(&qword_1EC16F998, type metadata accessor for WebPlacecardBridgeReply.MUContact, &unk_1C58726E8);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C56D6844(uint64_t a1)
{
  sub_1C56EF190(&qword_1EC16D1A0, type metadata accessor for WebPlacecardBridgeReply.MUContact, &unk_1C5872670);

  return sub_1C584F160();
}

uint64_t sub_1C56D68B0(uint64_t a1, uint64_t a2)
{
  sub_1C56EF190(&qword_1EC16D1A0, type metadata accessor for WebPlacecardBridgeReply.MUContact, &unk_1C5872670);

  return sub_1C584F170();
}

uint64_t sub_1C56D6984()
{
  v0 = sub_1C584F250();
  __swift_allocate_value_buffer(v0, qword_1EC190258);
  __swift_project_value_buffer(v0, qword_1EC190258);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC0, &qword_1C5875DD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC8, &qword_1C5875DD8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C5867980;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "label";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C584F230();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "value";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "identifier";
  *(v11 + 8) = 10;
  *(v11 + 16) = 2;
  v9();
  return sub_1C584F240();
}

uint64_t sub_1C56D6C0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C56EF190(&qword_1EC16F990, type metadata accessor for WebPlacecardBridgeReply.MUContactLabeledValue, &unk_1C5872850);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C56D6CAC(uint64_t a1)
{
  sub_1C56EF190(&qword_1EC16D208, type metadata accessor for WebPlacecardBridgeReply.MUContactLabeledValue, &unk_1C58727D8);

  return sub_1C584F160();
}

uint64_t sub_1C56D6D18(uint64_t a1, uint64_t a2)
{
  sub_1C56EF190(&qword_1EC16D208, type metadata accessor for WebPlacecardBridgeReply.MUContactLabeledValue, &unk_1C58727D8);

  return sub_1C584F170();
}

uint64_t sub_1C56D6DC4()
{
  v0 = sub_1C584F250();
  __swift_allocate_value_buffer(v0, qword_1EC18F968);
  __swift_project_value_buffer(v0, qword_1EC18F968);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC0, &qword_1C5875DD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FBC8, &qword_1C5875DD8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1C586AEE0;
  v4 = v22 + v3 + v1[14];
  *(v22 + v3) = 1;
  *v4 = "favorites";
  *(v4 + 8) = 9;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1C584F230();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v22 + v3 + v2 + v1[14];
  *(v22 + v3 + v2) = 2;
  *v8 = "guides";
  *(v8 + 8) = 6;
  *(v8 + 16) = 2;
  v7();
  v9 = (v22 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "rapsInReview";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v7();
  v11 = (v22 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "arpSuggestions";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v7();
  v13 = (v22 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "arpRatings";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v7();
  v15 = (v22 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "arpPhotos";
  *(v16 + 1) = 9;
  v16[16] = 2;
  v7();
  v17 = (v22 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "savedStateOfPlace";
  *(v18 + 1) = 17;
  v18[16] = 2;
  v7();
  v19 = (v22 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "placeNote";
  *(v20 + 1) = 9;
  v20[16] = 2;
  v7();
  return sub_1C584F240();
}

uint64_t sub_1C56D7110()
{
  type metadata accessor for WebPlacecardBridgeReply.MUUserData._StorageClass(0);
  v0 = swift_allocObject();
  *(v0 + 16) = 2;
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 24) = MEMORY[0x1E69E7CC0];
  v2 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply10MUUserDataP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__rapsInReview;
  v3 = type metadata accessor for WebPlacecardBridgeReply.MURapsInReview(0);
  (*(*(v3 - 8) + 56))(v0 + v2, 1, 1, v3);
  v4 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply10MUUserDataP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__arpSuggestions;
  v5 = type metadata accessor for WebPlacecardBridgeReply.MUArpSuggestions(0);
  (*(*(v5 - 8) + 56))(v0 + v4, 1, 1, v5);
  *(v0 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply10MUUserDataP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__arpRatings) = v1;
  v6 = (v0 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply10MUUserDataP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__arpPhotos[0]);
  *v6 = 0;
  v6[1] = 0;
  *(v0 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply10MUUserDataP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__savedStateOfPlace) = 3;
  v7 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply10MUUserDataP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__placeNote;
  v8 = type metadata accessor for WebPlacecardBridgeReply.MUUserNote(0);
  result = (*(*(v8 - 8) + 56))(v0 + v7, 1, 1, v8);
  qword_1EC177DB0 = v0;
  return result;
}

uint64_t sub_1C56D726C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16ECC8, &qword_1C586B150);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v43 = &v39 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16ECC0, &qword_1C586B148);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v40 = &v39 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16ECB8, &qword_1C586B140);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v39 - v11;
  *(v1 + 16) = 2;
  v13 = MEMORY[0x1E69E7CC0];
  *(v1 + 24) = MEMORY[0x1E69E7CC0];
  v14 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply10MUUserDataP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__rapsInReview;
  v15 = type metadata accessor for WebPlacecardBridgeReply.MURapsInReview(0);
  (*(*(v15 - 8) + 56))(v1 + v14, 1, 1, v15);
  v16 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply10MUUserDataP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__arpSuggestions;
  v39 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply10MUUserDataP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__arpSuggestions;
  v17 = type metadata accessor for WebPlacecardBridgeReply.MUArpSuggestions(0);
  (*(*(v17 - 8) + 56))(v1 + v16, 1, 1, v17);
  v18 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply10MUUserDataP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__arpRatings;
  *(v1 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply10MUUserDataP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__arpRatings) = v13;
  v19 = (v1 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply10MUUserDataP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__arpPhotos[0]);
  *v19 = 0;
  v19[1] = 0;
  v20 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply10MUUserDataP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__savedStateOfPlace;
  *(v1 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply10MUUserDataP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__savedStateOfPlace) = 3;
  v21 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply10MUUserDataP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__placeNote;
  v41 = v20;
  v42 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply10MUUserDataP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__placeNote;
  v22 = type metadata accessor for WebPlacecardBridgeReply.MUUserNote(0);
  (*(*(v22 - 8) + 56))(v1 + v21, 1, 1, v22);
  swift_beginAccess();
  LOBYTE(v21) = *(a1 + 16);
  swift_beginAccess();
  *(v1 + 16) = v21;
  swift_beginAccess();
  v23 = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 24) = v23;
  v24 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply10MUUserDataP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__rapsInReview;
  swift_beginAccess();
  sub_1C56466CC(a1 + v24, v12, &qword_1EC16ECB8, &qword_1C586B140);
  swift_beginAccess();

  sub_1C56ECE38(v12, v1 + v14, &qword_1EC16ECB8, &qword_1C586B140);
  swift_endAccess();
  v25 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply10MUUserDataP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__arpSuggestions;
  swift_beginAccess();
  v26 = v40;
  sub_1C56466CC(a1 + v25, v40, &qword_1EC16ECC0, &qword_1C586B148);
  v27 = v39;
  swift_beginAccess();
  sub_1C56ECE38(v26, v1 + v27, &qword_1EC16ECC0, &qword_1C586B148);
  swift_endAccess();
  v28 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply10MUUserDataP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__arpRatings;
  swift_beginAccess();
  v29 = *(a1 + v28);
  swift_beginAccess();
  *(v1 + v18) = v29;

  v30 = (a1 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply10MUUserDataP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__arpPhotos[0]);
  swift_beginAccess();
  v32 = *v30;
  v31 = v30[1];
  swift_beginAccess();
  *v19 = v32;
  v19[1] = v31;

  v33 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply10MUUserDataP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__savedStateOfPlace;
  swift_beginAccess();
  LOBYTE(v33) = *(a1 + v33);
  v34 = v41;
  swift_beginAccess();
  *(v1 + v34) = v33;
  v35 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply10MUUserDataP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__placeNote;
  swift_beginAccess();
  v36 = v43;
  sub_1C56466CC(a1 + v35, v43, &qword_1EC16ECC8, &qword_1C586B150);

  v37 = v42;
  swift_beginAccess();
  sub_1C56ECE38(v36, v1 + v37, &qword_1EC16ECC8, &qword_1C586B150);
  swift_endAccess();
  return v1;
}

uint64_t sub_1C56D7778()
{

  sub_1C5625230(v0 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply10MUUserDataP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__rapsInReview, &qword_1EC16ECB8, &qword_1C586B140);
  sub_1C5625230(v0 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply10MUUserDataP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__arpSuggestions, &qword_1EC16ECC0, &qword_1C586B148);

  sub_1C5625230(v0 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply10MUUserDataP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__placeNote, &qword_1EC16ECC8, &qword_1C586B150);

  return swift_deallocClassInstance();
}

uint64_t sub_1C56D7858(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v6 = *(type metadata accessor for WebPlacecardBridgeReply.MUUserData(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v3 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for WebPlacecardBridgeReply.MUUserData._StorageClass(0);
    v9 = swift_allocObject();
    sub_1C56D726C(v8);
    *(v5 + v6) = v9;
  }

  result = sub_1C584F050();
  if (!v4)
  {
    while (1)
    {
      if (v11)
      {
        return result;
      }

      if (result > 4)
      {
        if (result > 6)
        {
          if (result == 7)
          {
            swift_beginAccess();
            sub_1C57041CC();
            sub_1C584F090();
            goto LABEL_25;
          }

          if (result != 8)
          {
            goto LABEL_26;
          }

          v13 = v4;
          swift_beginAccess();
          type metadata accessor for WebPlacecardBridgeReply.MUUserNote(0);
          v14 = type metadata accessor for WebPlacecardBridgeReply.MUUserNote;
          v15 = &unk_1C5873048;
          v16 = &qword_1EC16D400;
          goto LABEL_23;
        }

        if (result == 5)
        {
          v12 = v4;
          swift_beginAccess();
          type metadata accessor for WebPlacecardBridgeReply.MUArpRating(0);
          sub_1C56EF190(&qword_1EC16F6B8, type metadata accessor for WebPlacecardBridgeReply.MUArpRating, &unk_1C5872AA8);
LABEL_21:
          v4 = v12;
          sub_1C584F0F0();
          goto LABEL_25;
        }

        swift_beginAccess();
        sub_1C584F0D0();
      }

      else
      {
        if (result > 2)
        {
          v13 = v4;
          if (result == 3)
          {
            swift_beginAccess();
            type metadata accessor for WebPlacecardBridgeReply.MURapsInReview(0);
            v14 = type metadata accessor for WebPlacecardBridgeReply.MURapsInReview;
            v15 = &unk_1C5872D78;
            v16 = &qword_1EC16D360;
          }

          else
          {
            swift_beginAccess();
            type metadata accessor for WebPlacecardBridgeReply.MUArpSuggestions(0);
            v14 = type metadata accessor for WebPlacecardBridgeReply.MUArpSuggestions;
            v15 = &unk_1C5872EE0;
            v16 = &qword_1EC16D320;
          }

LABEL_23:
          sub_1C56EF190(v16, v14, v15);
          v4 = v13;
          sub_1C584F100();
          goto LABEL_25;
        }

        if (result != 1)
        {
          if (result != 2)
          {
            goto LABEL_26;
          }

          v12 = v4;
          swift_beginAccess();
          type metadata accessor for WebPlacecardBridgeReply.MUUserGuide(0);
          sub_1C56EF190(&qword_1EC16F6D0, type metadata accessor for WebPlacecardBridgeReply.MUUserGuide, &unk_1C5872C10);
          goto LABEL_21;
        }

        swift_beginAccess();
        sub_1C584F080();
      }

LABEL_25:
      swift_endAccess();
LABEL_26:
      result = sub_1C584F050();
    }
  }

  return result;
}

uint64_t sub_1C56D7C80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v9 = *(v5 + *(type metadata accessor for WebPlacecardBridgeReply.MUUserData(0) + 20));
  result = swift_beginAccess();
  if (*(v9 + 16) == 2)
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    result = sub_1C584F190();
    if (v4)
    {
      return result;
    }
  }

  swift_beginAccess();
  if (*(*(v9 + 24) + 16))
  {
    type metadata accessor for WebPlacecardBridgeReply.MUUserGuide(0);
    sub_1C56EF190(&qword_1EC16F6D0, type metadata accessor for WebPlacecardBridgeReply.MUUserGuide, &unk_1C5872C10);

    sub_1C584F210();
  }

  sub_1C56D7F44(v9, a1, a2, a3);
  sub_1C56D816C(v9, a1, a2, a3);
  v11 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply10MUUserDataP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__arpRatings;
  swift_beginAccess();
  if (*(*(v9 + v11) + 16))
  {
    type metadata accessor for WebPlacecardBridgeReply.MUArpRating(0);
    sub_1C56EF190(&qword_1EC16F6B8, type metadata accessor for WebPlacecardBridgeReply.MUArpRating, &unk_1C5872AA8);

    sub_1C584F210();
  }

  sub_1C56D8394(v9, a1, a2, a3, OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply10MUUserDataP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__arpPhotos, 6);
  sub_1C56D8444(v9, a1, a2, a3, &OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply10MUUserDataP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__savedStateOfPlace, sub_1C57041CC, 7, &type metadata for MULibraryPlaceSavedState);
  sub_1C56D8504(v9, a1, a2, a3);
  return sub_1C584EFB0();
}

uint64_t sub_1C56D7F44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16ECB8, &qword_1C586B140);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for WebPlacecardBridgeReply.MURapsInReview(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply10MUUserDataP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__rapsInReview;
  swift_beginAccess();
  sub_1C56466CC(a1 + v14, v8, &qword_1EC16ECB8, &qword_1C586B140);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C5625230(v8, &qword_1EC16ECB8, &qword_1C586B140);
  }

  sub_1C56EC178(v8, v13, type metadata accessor for WebPlacecardBridgeReply.MURapsInReview);
  sub_1C56EF190(&qword_1EC16D360, type metadata accessor for WebPlacecardBridgeReply.MURapsInReview, &unk_1C5872D78);
  sub_1C584F220();
  return sub_1C56EC248(v13, type metadata accessor for WebPlacecardBridgeReply.MURapsInReview);
}

uint64_t sub_1C56D816C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16ECC0, &qword_1C586B148);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for WebPlacecardBridgeReply.MUArpSuggestions(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply10MUUserDataP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__arpSuggestions;
  swift_beginAccess();
  sub_1C56466CC(a1 + v14, v8, &qword_1EC16ECC0, &qword_1C586B148);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C5625230(v8, &qword_1EC16ECC0, &qword_1C586B148);
  }

  sub_1C56EC178(v8, v13, type metadata accessor for WebPlacecardBridgeReply.MUArpSuggestions);
  sub_1C56EF190(&qword_1EC16D320, type metadata accessor for WebPlacecardBridgeReply.MUArpSuggestions, &unk_1C5872EE0);
  sub_1C584F220();
  return sub_1C56EC248(v13, type metadata accessor for WebPlacecardBridgeReply.MUArpSuggestions);
}

uint64_t sub_1C56D8394(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v6 = a1 + *a5;
  result = swift_beginAccess();
  if (*(v6 + 8))
  {

    sub_1C584F1F0();
  }

  return result;
}

uint64_t sub_1C56D8444(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t a7, uint64_t a8)
{
  v10 = *a5;
  result = swift_beginAccess();
  if (*(a1 + v10) != 3)
  {
    a6(result);
    return sub_1C584F1A0();
  }

  return result;
}

uint64_t sub_1C56D8504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16ECC8, &qword_1C586B150);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for WebPlacecardBridgeReply.MUUserNote(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply10MUUserDataP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__placeNote;
  swift_beginAccess();
  sub_1C56466CC(a1 + v14, v8, &qword_1EC16ECC8, &qword_1C586B150);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C5625230(v8, &qword_1EC16ECC8, &qword_1C586B150);
  }

  sub_1C56EC178(v8, v13, type metadata accessor for WebPlacecardBridgeReply.MUUserNote);
  sub_1C56EF190(&qword_1EC16D400, type metadata accessor for WebPlacecardBridgeReply.MUUserNote, &unk_1C5873048);
  sub_1C584F220();
  return sub_1C56EC248(v13, type metadata accessor for WebPlacecardBridgeReply.MUUserNote);
}

BOOL sub_1C56D872C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WebPlacecardBridgeReply.MUUserNote(0);
  v103 = *(v4 - 8);
  v104 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v98 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FC48, &qword_1C5875E58);
  MEMORY[0x1EEE9AC00](v102, v8);
  v10 = &v98 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16ECC8, &qword_1C586B150);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v113 = &v98 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v15);
  v112 = &v98 - v16;
  v17 = type metadata accessor for WebPlacecardBridgeReply.MUArpSuggestions(0);
  v109 = *(v17 - 8);
  v110 = v17;
  MEMORY[0x1EEE9AC00](v17, v18);
  v105 = &v98 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FC50, &qword_1C5875E60);
  MEMORY[0x1EEE9AC00](v108, v20);
  v111 = &v98 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16ECC0, &qword_1C586B148);
  v24 = MEMORY[0x1EEE9AC00](v22 - 8, v23);
  v106 = &v98 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v26);
  v115 = &v98 - v27;
  v28 = type metadata accessor for WebPlacecardBridgeReply.MURapsInReview(0);
  v116 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28, v29);
  v107 = &v98 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FC58, &qword_1C5875E68);
  MEMORY[0x1EEE9AC00](v31, v32);
  v34 = &v98 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16ECB8, &qword_1C586B140);
  v37 = MEMORY[0x1EEE9AC00](v35 - 8, v36);
  v114 = &v98 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37, v39);
  v41 = &v98 - v40;
  swift_beginAccess();
  v42 = *(a1 + 16);
  swift_beginAccess();
  v43 = *(a2 + 16);
  if (v42 == 2)
  {
    if (v43 != 2)
    {
      return 0;
    }
  }

  else if (v43 == 2 || ((v42 ^ v43) & 1) != 0)
  {
    return 0;
  }

  v99 = v7;
  v100 = v10;
  swift_beginAccess();
  v44 = *(a1 + 24);
  swift_beginAccess();
  v45 = a2;
  v46 = *(a2 + 24);

  v47 = sub_1C56EB888(v44, v46);

  if ((v47 & 1) == 0)
  {
    goto LABEL_30;
  }

  v48 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply10MUUserDataP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__rapsInReview;
  swift_beginAccess();
  v101 = a1;
  sub_1C56466CC(a1 + v48, v41, &qword_1EC16ECB8, &qword_1C586B140);
  v49 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply10MUUserDataP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__rapsInReview;
  swift_beginAccess();
  v50 = *(v31 + 48);
  sub_1C56466CC(v41, v34, &qword_1EC16ECB8, &qword_1C586B140);
  sub_1C56466CC(v45 + v49, &v34[v50], &qword_1EC16ECB8, &qword_1C586B140);
  v51 = *(v116 + 48);
  v52 = v45;
  if (v51(v34, 1, v28) == 1)
  {
    sub_1C5625230(v41, &qword_1EC16ECB8, &qword_1C586B140);
    if (v51(&v34[v50], 1, v28) == 1)
    {
      sub_1C5625230(v34, &qword_1EC16ECB8, &qword_1C586B140);
      goto LABEL_16;
    }

LABEL_13:
    sub_1C5625230(v34, &qword_1EC16FC58, &qword_1C5875E68);
    goto LABEL_30;
  }

  v53 = v114;
  sub_1C56466CC(v34, v114, &qword_1EC16ECB8, &qword_1C586B140);
  if (v51(&v34[v50], 1, v28) == 1)
  {
    sub_1C5625230(v41, &qword_1EC16ECB8, &qword_1C586B140);
    sub_1C56EC248(v53, type metadata accessor for WebPlacecardBridgeReply.MURapsInReview);
    goto LABEL_13;
  }

  v54 = v107;
  sub_1C56EC178(&v34[v50], v107, type metadata accessor for WebPlacecardBridgeReply.MURapsInReview);
  v55 = sub_1C56EEB28(v53, v54, type metadata accessor for WebPlacecardBridgeReply.MURapsInReview);
  sub_1C56EC248(v54, type metadata accessor for WebPlacecardBridgeReply.MURapsInReview);
  sub_1C5625230(v41, &qword_1EC16ECB8, &qword_1C586B140);
  sub_1C56EC248(v53, type metadata accessor for WebPlacecardBridgeReply.MURapsInReview);
  sub_1C5625230(v34, &qword_1EC16ECB8, &qword_1C586B140);
  if ((v55 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_16:
  v56 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply10MUUserDataP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__arpSuggestions;
  v57 = v101;
  swift_beginAccess();
  v58 = v115;
  sub_1C56466CC(v57 + v56, v115, &qword_1EC16ECC0, &qword_1C586B148);
  v59 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply10MUUserDataP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__arpSuggestions;
  swift_beginAccess();
  v60 = *(v108 + 48);
  v61 = v111;
  sub_1C56466CC(v58, v111, &qword_1EC16ECC0, &qword_1C586B148);
  sub_1C56466CC(v52 + v59, v61 + v60, &qword_1EC16ECC0, &qword_1C586B148);
  v62 = v110;
  v63 = *(v109 + 48);
  if (v63(v61, 1, v110) == 1)
  {
    sub_1C5625230(v58, &qword_1EC16ECC0, &qword_1C586B148);
    v64 = v63(v61 + v60, 1, v62);
    v65 = v101;
    v67 = v112;
    v66 = v113;
    if (v64 == 1)
    {
      sub_1C5625230(v61, &qword_1EC16ECC0, &qword_1C586B148);
      goto LABEL_23;
    }

LABEL_21:
    sub_1C5625230(v61, &qword_1EC16FC50, &qword_1C5875E60);
    goto LABEL_30;
  }

  v68 = v106;
  sub_1C56466CC(v61, v106, &qword_1EC16ECC0, &qword_1C586B148);
  v69 = v63(v61 + v60, 1, v62);
  v67 = v112;
  v66 = v113;
  if (v69 == 1)
  {
    sub_1C5625230(v115, &qword_1EC16ECC0, &qword_1C586B148);
    sub_1C56EC248(v68, type metadata accessor for WebPlacecardBridgeReply.MUArpSuggestions);
    goto LABEL_21;
  }

  v70 = v61 + v60;
  v71 = v105;
  sub_1C56EC178(v70, v105, type metadata accessor for WebPlacecardBridgeReply.MUArpSuggestions);
  v72 = sub_1C56EDA70(v68, v71);
  sub_1C56EC248(v71, type metadata accessor for WebPlacecardBridgeReply.MUArpSuggestions);
  sub_1C5625230(v115, &qword_1EC16ECC0, &qword_1C586B148);
  sub_1C56EC248(v68, type metadata accessor for WebPlacecardBridgeReply.MUArpSuggestions);
  sub_1C5625230(v61, &qword_1EC16ECC0, &qword_1C586B148);
  v65 = v101;
  if ((v72 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_23:
  v73 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply10MUUserDataP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__arpRatings;
  swift_beginAccess();
  v74 = *(v65 + v73);
  v75 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply10MUUserDataP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__arpRatings;
  swift_beginAccess();
  v76 = *(v52 + v75);

  v77 = sub_1C56EBBC8(v74, v76);

  if ((v77 & 1) == 0)
  {
    goto LABEL_30;
  }

  v78 = (v65 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply10MUUserDataP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__arpPhotos[0]);
  swift_beginAccess();
  v79 = *v78;
  v80 = v78[1];
  v81 = (v52 + OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply10MUUserDataP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__arpPhotos[0]);
  swift_beginAccess();
  v82 = v81[1];
  if (!v80)
  {
    if (!v82)
    {
      goto LABEL_33;
    }

LABEL_30:

    return 0;
  }

  if (!v82 || (v79 != *v81 || v80 != v82) && (sub_1C584FDC0() & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_33:
  v84 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply10MUUserDataP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__savedStateOfPlace;
  v85 = v101;
  swift_beginAccess();
  v86 = *(v85 + v84);
  v87 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply10MUUserDataP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__savedStateOfPlace;
  swift_beginAccess();
  v88 = *(v52 + v87);
  if (v86 == 3)
  {
    if (v88 != 3)
    {
      goto LABEL_30;
    }
  }

  else if (v88 == 3 || v86 != v88)
  {
    goto LABEL_30;
  }

  v89 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply10MUUserDataP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__placeNote;
  swift_beginAccess();
  sub_1C56466CC(v85 + v89, v67, &qword_1EC16ECC8, &qword_1C586B150);
  v90 = OBJC_IVAR____TtCVV6MapsUI23WebPlacecardBridgeReply10MUUserDataP33_9A83CFEC3FB8C3B4457258B202DFC6E313_StorageClass__placeNote;
  swift_beginAccess();
  v91 = *(v102 + 48);
  v92 = v100;
  sub_1C56466CC(v67, v100, &qword_1EC16ECC8, &qword_1C586B150);
  sub_1C56466CC(v52 + v90, v92 + v91, &qword_1EC16ECC8, &qword_1C586B150);
  v93 = v104;
  v94 = *(v103 + 48);
  if (v94(v92, 1, v104) == 1)
  {

    sub_1C5625230(v67, &qword_1EC16ECC8, &qword_1C586B150);
    if (v94(v92 + v91, 1, v93) == 1)
    {
      sub_1C5625230(v92, &qword_1EC16ECC8, &qword_1C586B150);
      return 1;
    }

LABEL_44:
    sub_1C5625230(v92, &qword_1EC16FC48, &qword_1C5875E58);
    return 0;
  }

  sub_1C56466CC(v92, v66, &qword_1EC16ECC8, &qword_1C586B150);
  if (v94(v92 + v91, 1, v93) == 1)
  {

    sub_1C5625230(v67, &qword_1EC16ECC8, &qword_1C586B150);
    sub_1C56EC248(v66, type metadata accessor for WebPlacecardBridgeReply.MUUserNote);
    goto LABEL_44;
  }

  v95 = v92 + v91;
  v96 = v99;
  sub_1C56EC178(v95, v99, type metadata accessor for WebPlacecardBridgeReply.MUUserNote);
  v97 = sub_1C56F0C00(v66, v96, type metadata accessor for WebPlacecardBridgeReply.MUUserNote);

  sub_1C56EC248(v96, type metadata accessor for WebPlacecardBridgeReply.MUUserNote);
  sub_1C5625230(v67, &qword_1EC16ECC8, &qword_1C586B150);
  sub_1C56EC248(v66, type metadata accessor for WebPlacecardBridgeReply.MUUserNote);
  sub_1C5625230(v92, &qword_1EC16ECC8, &qword_1C586B150);
  return (v97 & 1) != 0;
}