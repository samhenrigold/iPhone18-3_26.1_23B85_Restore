uint64_t sub_218A3399C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_219BF7214();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_219BF7214();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_218A35748(0);
          sub_218A35D58(&unk_27CC0CBB8, sub_218A35748, MEMORY[0x277D83988]);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_218A353D0(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_2186C6148(0, &qword_280E8E560, 0x277D30FB0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_218A33B48(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_219BF7214();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_219BF7214();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_2186E330C(0);
          sub_218A35D58(&qword_280E8EB30, sub_2186E330C, MEMORY[0x277D83988]);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_218A353D0(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_2186C6148(0, &qword_280E8DAB0, 0x277D310B0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_218A33CF4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_219BF7214();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_219BF7214();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_218A35678(0);
          sub_218A35D58(&qword_27CC0CB98, sub_218A35678, MEMORY[0x277D83988]);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_218A353D0(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_2186C6148(0, &qword_280E8E698, 0x277D31328);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_218A33EA0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_219BF7214();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_219BF7214();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_218845868(0);
          sub_218A35D58(&unk_27CC0CC80, sub_218845868, MEMORY[0x277D83988]);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_218A352D0(v13, i, a3);
            v11 = *v10;
            swift_unknownObjectRetain();
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_2186D6710(0, &qword_280E8E420, &protocolRef_FCSportsProviding);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_218A3404C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_219BF7214();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_219BF7214();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_218A35C20(0);
          sub_218A35D58(&qword_27CC0CCD0, sub_218A35C20, MEMORY[0x277D83988]);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_218A355C8(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_2186C6148(0, &unk_280E8E710, 0x277D75720);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_218A341F8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_219BF7214();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_219BF7214();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_218713330(0, &qword_280E8EFD0, type metadata accessor for TagModel, MEMORY[0x277D83940]);
          sub_218A35DA0(&qword_27CC0CC50, &qword_280E8EFD0, type metadata accessor for TagModel);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_218A35350(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for TagModel();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_218A343AC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_219BF7214();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_219BF7214();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_2186EBC14(0);
          sub_218A35D58(&qword_280E8ED30, sub_2186EBC14, MEMORY[0x277D83988]);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_218A353D0(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_2186C6148(0, &qword_280E8E770, 0x277D30E08);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_218A34558(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v13 = a2;
    result = sub_219BF7214();
    a2 = v13;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_219BF7214();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          v8 = MEMORY[0x277D33C80];
          sub_218713330(0, &qword_27CC0CC10, MEMORY[0x277D33C80], MEMORY[0x277D83940]);
          sub_218A35DA0(&unk_27CC0CC18, &qword_27CC0CC10, v8);
          for (i = 0; i != v6; ++i)
          {
            v10 = sub_218A35350(v14, i, a3);
            v12 = *v11;

            (v10)(v14, 0);
            *(v4 + 8 * i) = v12;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_219BF3094();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_218A3470C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_219BF7214();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_219BF7214();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_218A356E0(0);
          sub_218A35D58(&unk_27CC0CBA8, sub_218A356E0, MEMORY[0x277D83988]);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_218A353D0(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_2186C6148(0, &qword_280E8DAD8, 0x277D76338);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_218A348B8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_219BF7214();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_219BF7214();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_218A35A18(0);
          sub_218A35D58(&unk_27CC0CC30, sub_218A35A18, MEMORY[0x277D83988]);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_218A353D0(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_2186C6148(0, &qword_280E8DBF0, 0x277D75308);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_218A34A64(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_219BF7214();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_219BF7214();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_218A35A80(0);
          sub_218A35D58(&qword_27CC0CC78, sub_218A35A80, MEMORY[0x277D83988]);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_218A352D0(v13, i, a3);
            v11 = *v10;
            swift_unknownObjectRetain();
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_2186D6710(0, &qword_280E8E430, &protocolRef_FCPuzzleProviding);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_218A34C10(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_219BF7214();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_219BF7214();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_218A35BB8(0);
          sub_218A35D58(&unk_27CC0CCB8, sub_218A35BB8, MEMORY[0x277D83988]);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_218A353D0(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_2186C6148(0, &qword_280E8E320, 0x277CCAAD0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_218A34DBC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_219BF7214();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_219BF7214();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_218713330(0, &qword_27CC0CC58, type metadata accessor for HeadlineModel, MEMORY[0x277D83940]);
          sub_218A35DA0(&unk_27CC0CC60, &qword_27CC0CC58, type metadata accessor for HeadlineModel);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_218A35540(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for HeadlineModel(0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_218A34F70(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_219BF7214();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_219BF7214();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_218A35B50(0);
          sub_218A35D58(&unk_27CC0CCA0, sub_218A35B50, MEMORY[0x277D83988]);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_218A353D0(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_2186C6148(0, &qword_280E8E400, 0x277D31410);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_218A3511C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_219BF7214();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_219BF7214();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_218713330(0, &qword_27CC0CCE8, type metadata accessor for MySportsTopicTagFeedGroupSection, MEMORY[0x277D83940]);
          sub_218A35DA0(&unk_27CC0CCF0, &qword_27CC0CCE8, type metadata accessor for MySportsTopicTagFeedGroupSection);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_218A35350(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for MySportsTopicTagFeedGroupSection(0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t (*sub_218A352D0(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x21CECE0F0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = swift_unknownObjectRetain();
LABEL_5:
    *v3 = v4;
    return sub_218A35E04;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_218A35350(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x21CECE0F0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return sub_218A35E0C;
  }

  __break(1u);
  return result;
}

void (*sub_218A353D0(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x21CECE0F0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_218A35E08;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_218A35450(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x21CECE0F0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = swift_unknownObjectRetain();
LABEL_5:
    *v3 = v4;
    return sub_218A354D0;
  }

  __break(1u);
  return result;
}

void sub_218A354D8(uint64_t a1)
{
  if (!qword_280E8ED00)
  {
    sub_2186D6710(255, &qword_280E8E680, &protocolRef_FCTagProviding);
    v1 = sub_219BF5B14();
    if (!v2)
    {
      atomic_store(v1, &qword_280E8ED00);
    }
  }
}

uint64_t (*sub_218A35540(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x21CECE0F0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return sub_218A355C0;
  }

  __break(1u);
  return result;
}

void (*sub_218A355C8(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x21CECE0F0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_218A35648;
  }

  __break(1u);
  return result;
}

void sub_218A35678(uint64_t a1)
{
  if (!qword_27CC0CB90)
  {
    sub_2186C6148(255, &qword_280E8E698, 0x277D31328);
    v1 = sub_219BF5B14();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC0CB90);
    }
  }
}

void sub_218A356E0(uint64_t a1)
{
  if (!qword_27CC0CBA0)
  {
    sub_2186C6148(255, &qword_280E8DAD8, 0x277D76338);
    v1 = sub_219BF5B14();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC0CBA0);
    }
  }
}

void sub_218A35748(uint64_t a1)
{
  if (!qword_280E8ECD0)
  {
    sub_2186C6148(255, &qword_280E8E560, 0x277D30FB0);
    v1 = sub_219BF5B14();
    if (!v2)
    {
      atomic_store(v1, &qword_280E8ECD0);
    }
  }
}

void sub_218A357B0(uint64_t a1)
{
  if (!qword_27CC0CBC8)
  {
    sub_2186C6148(255, &qword_280E8DCF0, 0x277D75088);
    v1 = sub_219BF5B14();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC0CBC8);
    }
  }
}

void sub_218A35818(uint64_t a1)
{
  if (!qword_27CC0CC00)
  {
    sub_2186C6148(255, &qword_280E8E5D0, 0x277D751E0);
    v1 = sub_219BF5B14();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC0CC00);
    }
  }
}

void sub_218A35880(uint64_t a1)
{
  if (!qword_280EC6990)
  {
    sub_2186CFDE4(255, &qword_280EC69A0, &protocol descriptor for StreamingRecipeResults);
    v1 = sub_219BF6FB4();
    if (!v2)
    {
      atomic_store(v1, &qword_280EC6990);
    }
  }
}

uint64_t sub_218A358E8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_218A35948(uint64_t a1)
{
  if (!qword_280EC30F0)
  {
    sub_2186CFDE4(255, qword_280EC3100, &protocol descriptor for StreamingArticleResults);
    v1 = sub_219BF6FB4();
    if (!v2)
    {
      atomic_store(v1, &qword_280EC30F0);
    }
  }
}

void sub_218A359B0(uint64_t a1)
{
  if (!qword_280E8ED20)
  {
    sub_2186C6148(255, &qword_280E8E6A8, 0x277D31138);
    v1 = sub_219BF5B14();
    if (!v2)
    {
      atomic_store(v1, &qword_280E8ED20);
    }
  }
}

void sub_218A35A18(uint64_t a1)
{
  if (!qword_27CC0CC28)
  {
    sub_2186C6148(255, &qword_280E8DBF0, 0x277D75308);
    v1 = sub_219BF5B14();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC0CC28);
    }
  }
}

void sub_218A35A80(uint64_t a1)
{
  if (!qword_280E8ECA0)
  {
    sub_2186D6710(255, &qword_280E8E430, &protocolRef_FCPuzzleProviding);
    v1 = sub_219BF5B14();
    if (!v2)
    {
      atomic_store(v1, &qword_280E8ECA0);
    }
  }
}

void sub_218A35AE8(uint64_t a1)
{
  if (!qword_27CC0CC90)
  {
    sub_2186C6148(255, &qword_280E8E438, 0x277D30F10);
    v1 = sub_219BF5B14();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC0CC90);
    }
  }
}

void sub_218A35B50(uint64_t a1)
{
  if (!qword_280E8EC58)
  {
    sub_2186C6148(255, &qword_280E8E400, 0x277D31410);
    v1 = sub_219BF5B14();
    if (!v2)
    {
      atomic_store(v1, &qword_280E8EC58);
    }
  }
}

void sub_218A35BB8(uint64_t a1)
{
  if (!qword_27CC0CCB0)
  {
    sub_2186C6148(255, &qword_280E8E320, 0x277CCAAD0);
    v1 = sub_219BF5B14();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC0CCB0);
    }
  }
}

void sub_218A35C20(uint64_t a1)
{
  if (!qword_27CC0CCC8)
  {
    sub_2186C6148(255, &unk_280E8E710, 0x277D75720);
    v1 = sub_219BF5B14();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC0CCC8);
    }
  }
}

void sub_218A35C88(uint64_t a1)
{
  if (!qword_280E8ECB0)
  {
    sub_2186C6148(255, &qword_280E8E480, 0x277D75D28);
    v1 = sub_219BF5B14();
    if (!v2)
    {
      atomic_store(v1, &qword_280E8ECB0);
    }
  }
}

void sub_218A35CF0(uint64_t a1)
{
  if (!qword_280E8EB70)
  {
    sub_2186D6710(255, &qword_280E8DF60, &protocolRef_FCFeedPersonalizingItem);
    v1 = sub_219BF5B14();
    if (!v2)
    {
      atomic_store(v1, &qword_280E8EB70);
    }
  }
}

uint64_t sub_218A35D58(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_218A35DA0(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_218713330(255, a2, a3, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_218A35E10()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_218A35E74(uint64_t a1)
{
  sub_218718690(*v1 + 16, &v13);
  v3 = *(a1 + 112);
  v11[6] = *(a1 + 96);
  v11[7] = v3;
  v12 = *(a1 + 128);
  v4 = *(a1 + 48);
  v11[2] = *(a1 + 32);
  v11[3] = v4;
  v5 = *(a1 + 80);
  v11[4] = *(a1 + 64);
  v11[5] = v5;
  v6 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v6;
  sub_218A36084(v11, v10);
  sub_218A35FA8(0);
  swift_allocObject();
  sub_218A360E0(a1, v9);
  sub_218A3613C();
  v7 = sub_219BE6E64();
  sub_218A36190(v11);
  return v7;
}

uint64_t sub_218A35F38()
{
  sub_218A35FA8(0);
  swift_allocObject();
  sub_218A36030();
  swift_unknownObjectRetain();
  return sub_219BE6E64();
}

void sub_218A35FA8(uint64_t a1)
{
  if (!qword_27CC0CD00)
  {
    type metadata accessor for ChannelPickerElementModel(255);
    sub_218951A90();
    sub_2189DA1A8();
    v1 = sub_219BE6E74();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC0CD00);
    }
  }
}

unint64_t sub_218A36030()
{
  result = qword_27CC0CD08;
  if (!qword_27CC0CD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0CD08);
  }

  return result;
}

unint64_t sub_218A3613C()
{
  result = qword_27CC0CD10;
  if (!qword_27CC0CD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0CD10);
  }

  return result;
}

void sub_218A361E4()
{
  v0 = MEMORY[0x277D84560];
  sub_218A38B58(0, &qword_280E8C0B0, MEMORY[0x277D6CCA0], MEMORY[0x277D84560]);
  v1 = *(sub_219BE2644() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_219C09BA0;
  v4 = (v3 + v2);
  *v4 = 0x5F656C6369747261;
  v4[1] = 0xEA00000000006469;
  (*(v1 + 104))();
  sub_218A38B58(0, &unk_280E8B6F0, sub_218A38BBC, v0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09BA0;
  *(inited + 32) = 0x4449657069636572;
  *(inited + 40) = 0xE800000000000000;
  sub_218A38B58(0, &unk_280E8C0A0, MEMORY[0x277D6CCB8], v0);
  v6 = sub_219BE26C4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 72);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_219C09EC0;
  v11 = (v10 + v9);
  *v11 = 75;
  v11[1] = 0xE100000000000000;
  v12 = *(v7 + 104);
  v12(v11, *MEMORY[0x277D6CCA8], v6);
  if ((*MEMORY[0x277D30A00] & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    *(v11 + v8) = *MEMORY[0x277D30A00];
    v12((v11 + v8), *MEMORY[0x277D6CCB0], v6);
    *(inited + 48) = v10;
    sub_2194AE704(inited);
    swift_setDeallocating();
    sub_218A39044(inited + 32, sub_218A38BBC);
    v13 = sub_219BE2684();

    qword_280F61920 = v13;
  }
}

uint64_t sub_218A364FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  return MEMORY[0x2822009F8](sub_218A36520, 0, 0);
}

uint64_t sub_218A36520()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 64) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 72) = v2;
    *v2 = v0;
    v2[1] = sub_218A36618;
    v3 = *(v0 + 56);

    return sub_218A36818(v3);
  }

  else
  {
    **(v0 + 40) = 0;
    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_218A36618(char a1)
{
  v4 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {
    v5 = sub_218A367B4;
  }

  else
  {
    *(v4 + 88) = a1 & 1;
    v5 = sub_218A36744;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_218A36744()
{
  v1 = *(v0 + 88);

  **(v0 + 40) = v1;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_218A367B4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_218A36818(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = sub_219BDD944();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  v4 = sub_219BDDED4();
  v2[9] = v4;
  v2[10] = *(v4 - 8);
  v2[11] = swift_task_alloc();
  v5 = sub_219BDDBF4();
  v2[12] = v5;
  v2[13] = *(v5 - 8);
  v2[14] = swift_task_alloc();
  v6 = sub_219BDD804();
  v2[15] = v6;
  v2[16] = *(v6 - 8);
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  sub_218A38B58(0, &qword_280EE8E10, MEMORY[0x277D2FB40], MEMORY[0x277D83D88]);
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_218A36A6C, 0, 0);
}

uint64_t sub_218A36A6C()
{
  v1 = sub_218A38D68();
  *(v0 + 176) = v2;
  if (v2)
  {
    v3 = v1;
    v4 = v2;
    v5 = *(v0 + 40);
    v6 = v5[7];
    v7 = v5[8];
    __swift_project_boxed_opaque_existential_1(v5 + 4, v6);
    v8 = swift_task_alloc();
    *(v0 + 184) = v8;
    *v8 = v0;
    v8[1] = sub_218A36DEC;

    return MEMORY[0x282192280](v3, v4, v6, v7);
  }

  else
  {
    *(v0 + 208) = 0;
    v9 = *(v0 + 40);
    sub_218A378CC(*(v0 + 168));
    [*(v9 + 112) useFood];
    v10 = *(v0 + 152);
    v11 = *(v0 + 48);
    v12 = *(v0 + 56);
    sub_218A3912C(*(v0 + 168), v10, &qword_280EE8E10, MEMORY[0x277D2FB40], MEMORY[0x277D83D88], sub_218A38B58);
    if ((*(v12 + 48))(v10, 1, v11) == 1)
    {
      v13 = MEMORY[0x277D2FB40];
      v14 = MEMORY[0x277D83D88];
      sub_218744990(*(v0 + 168), &qword_280EE8E10, MEMORY[0x277D2FB40], MEMORY[0x277D83D88], sub_218A38B58);
      sub_218744990(*(v0 + 152), &qword_280EE8E10, v13, v14, sub_218A38B58);

      v15 = *(v0 + 8);

      return v15(0);
    }

    else
    {
      v16 = *(v0 + 64);
      sub_218A38F7C(*(v0 + 152), v16);
      sub_2187B2C48(0);
      v18 = v17;
      v19 = swift_allocBox();
      v21 = v20;
      v22 = *(v18 + 48);
      sub_2187B2DA0(0);
      v24 = *(v23 + 48);
      sub_218A38FE0(v16, v21);
      v25 = MEMORY[0x277D84F90];
      *(v21 + v24) = MEMORY[0x277D84F90];
      *(v21 + v22) = v25;
      *(v0 + 16) = v19 | 2;
      sub_219BF5BD4();
      *(v0 + 232) = sub_219BF5BC4();
      v27 = sub_219BF5B44();

      return MEMORY[0x2822009F8](sub_218A376F4, v27, v26);
    }
  }
}

uint64_t sub_218A36DEC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 192) = v1;

  if (v1)
  {
    v5 = sub_218A37440;
  }

  else
  {
    *(v4 + 200) = a1;
    v5 = sub_218A36F14;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_218A36F14()
{

  v1 = *(v0 + 200);
  *(v0 + 208) = v1;
  v2 = *(v0 + 40);
  sub_218A378CC(*(v0 + 168));
  if ([*(v2 + 112) useFood])
  {
    v3 = v1 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    __swift_project_boxed_opaque_existential_1((*(v0 + 40) + 72), *(*(v0 + 40) + 96));
    v4 = v1;
    v5 = sub_219BF37C4();

    if (v5)
    {
      v7 = *(v0 + 160);
      v6 = *(v0 + 168);
      v8 = *(v0 + 144);
      v10 = *(v0 + 120);
      v9 = *(v0 + 128);
      v12 = *(v0 + 104);
      v11 = *(v0 + 112);
      v40 = *(v0 + 96);
      v41 = *(v0 + 136);
      (*(*(v0 + 80) + 104))(*(v0 + 88), *MEMORY[0x277D2FDD0], *(v0 + 72));
      sub_218A3912C(v6, v7, &qword_280EE8E10, MEMORY[0x277D2FB40], MEMORY[0x277D83D88], sub_218A38B58);
      sub_219BDDBD4();
      sub_218A390A4(0, &qword_27CC0CD20, sub_218799788, MEMORY[0x277D2FC70], " context ");
      v14 = *(v13 + 48);
      *v8 = v4;
      (*(v12 + 32))(&v8[v14], v11, v40);
      (*(v9 + 104))(v8, *MEMORY[0x277D2FAF8], v10);
      v15 = v4;
      sub_219BDD7F4();
      (*(v9 + 16))(v41, v8, v10);
      sub_219BDE674();
      swift_allocObject();
      v16 = sub_219BDE614();
      *(v0 + 216) = v16;
      v17 = swift_allocObject();
      *(v17 + 16) = v16;
      *(v0 + 24) = v17 | 0x7000000000000004;
      sub_219BF5BD4();

      *(v0 + 224) = sub_219BF5BC4();
      v18 = sub_219BF5B44();
      v20 = v19;
      v21 = sub_218A37514;
LABEL_13:

      return MEMORY[0x2822009F8](v21, v18, v20);
    }
  }

  v22 = *(v0 + 152);
  v23 = *(v0 + 48);
  v24 = *(v0 + 56);
  sub_218A3912C(*(v0 + 168), v22, &qword_280EE8E10, MEMORY[0x277D2FB40], MEMORY[0x277D83D88], sub_218A38B58);
  if ((*(v24 + 48))(v22, 1, v23) != 1)
  {
    v29 = *(v0 + 64);
    sub_218A38F7C(*(v0 + 152), v29);
    sub_2187B2C48(0);
    v31 = v30;
    v32 = swift_allocBox();
    v34 = v33;
    v35 = *(v31 + 48);
    sub_2187B2DA0(0);
    v37 = *(v36 + 48);
    sub_218A38FE0(v29, v34);
    v38 = MEMORY[0x277D84F90];
    *(v34 + v37) = MEMORY[0x277D84F90];
    *(v34 + v35) = v38;
    *(v0 + 16) = v32 | 2;
    sub_219BF5BD4();
    *(v0 + 232) = sub_219BF5BC4();
    v18 = sub_219BF5B44();
    v20 = v39;
    v21 = sub_218A376F4;
    goto LABEL_13;
  }

  v25 = MEMORY[0x277D2FB40];
  v26 = MEMORY[0x277D83D88];
  sub_218744990(*(v0 + 168), &qword_280EE8E10, MEMORY[0x277D2FB40], MEMORY[0x277D83D88], sub_218A38B58);

  sub_218744990(*(v0 + 152), &qword_280EE8E10, v25, v26, sub_218A38B58);

  v27 = *(v0 + 8);

  return v27(0);
}

uint64_t sub_218A37440()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_218A37514()
{

  *(v0 + 240) = sub_218A37CE4((v0 + 24)) & 1;
  sub_218932F9C(*(v0 + 24));

  return MEMORY[0x2822009F8](sub_218A3759C, 0, 0);
}

uint64_t sub_218A3759C()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 144);
  v3 = *(v0 + 120);
  v4 = *(v0 + 128);

  (*(v4 + 8))(v2, v3);
  v5 = *(v0 + 240);
  sub_218744990(*(v0 + 168), &qword_280EE8E10, MEMORY[0x277D2FB40], MEMORY[0x277D83D88], sub_218A38B58);

  v6 = *(v0 + 8);

  return v6(v5);
}

uint64_t sub_218A376F4()
{

  *(v0 + 241) = sub_218A37CE4((v0 + 16)) & 1;
  sub_218932F9C(*(v0 + 16));

  return MEMORY[0x2822009F8](sub_218A3777C, 0, 0);
}

uint64_t sub_218A3777C()
{
  v1 = *(v0 + 64);

  sub_218A39044(v1, MEMORY[0x277D2FB40]);
  v2 = *(v0 + 241);
  sub_218744990(*(v0 + 168), &qword_280EE8E10, MEMORY[0x277D2FB40], MEMORY[0x277D83D88], sub_218A38B58);

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_218A378CC@<X0>(uint64_t *a1@<X8>)
{
  sub_218A38B58(0, &unk_280EE9D00, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v26 - v3;
  v5 = sub_219BE22B4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BE22F4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A38B58(0, &qword_280EE7430, MEMORY[0x277D6D3E0], MEMORY[0x277D6CC70]);
  sub_219BE2594();
  sub_219BE22D4();
  (*(v10 + 8))(v12, v9);
  sub_219BE22C4();
  v14 = v13;
  (*(v6 + 8))(v8, v5);
  if (v14)
  {
    v15 = sub_219BF53D4();
    v16 = [v15 fc_isValidArticleID];

    if (v16)
    {
      sub_219BDEA94();
      v17 = sub_219BDB954();
      (*(*(v17 - 8) + 56))(v4, 1, 1, v17);
      sub_2187B3078(MEMORY[0x277D84F90]);
      v18 = sub_219BDEA44();
      sub_218A390A4(0, &qword_280EE8A90, MEMORY[0x277D30268], MEMORY[0x277D2FF20], " articleNavigationAction ");
      v20 = *(v19 + 48);
      *a1 = v18;
      v21 = *MEMORY[0x277D2FF08];
      v22 = sub_219BDE294();
      (*(*(v22 - 8) + 104))(a1 + v20, v21, v22);
      v23 = sub_219BDD944();
      swift_storeEnumTagMultiPayload();
      return (*(*(v23 - 8) + 56))(a1, 0, 1, v23);
    }
  }

  v25 = sub_219BDD944();
  return (*(*(v25 - 8) + 56))(a1, 1, 1, v25);
}

uint64_t sub_218A37CE4(uint64_t *a1)
{
  sub_218A38B58(0, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88]);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v49 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v49 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v49 - v14;
  v16 = *a1;
  v17 = sub_218DB24B0();
  v18 = *(v1 + 24);
  if (v17)
  {
    sub_219BE2564();
    v19 = sub_219BDFA44();
    (*(*(v19 - 8) + 56))(v15, 0, 1, v19);
    v62 = 0;
    v60 = 0u;
    v61 = 0u;
    v59 = 0;
    v57 = 0u;
    v58 = 0u;
    v56 = v18;
    sub_218A3912C(&v57, &v51, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
    if (*(&v52 + 1))
    {
      sub_21875F93C(&v51, &v53);
      *&v51 = v16;
      v20 = sub_2194DA78C(&v53);
      v22 = v21;
      v24 = v23;
      __swift_destroy_boxed_opaque_existential_1(&v53);
    }

    else
    {
      sub_218744990(&v51, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
      if (qword_280ED32D0 != -1)
      {
        swift_once();
      }

      v20 = qword_280ED32D8;
      v22 = qword_280ED32E0;
      v24 = qword_280ED32E8;

      sub_2188202A8(v22);
    }

    v50 = v16;
    v52 = 0u;
    v51 = 0u;
    sub_218A3912C(v15, v12, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88], sub_218A38B58);
    sub_218A3912C(&v60, &v53, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
    v31 = (*(v4 + 80) + 24) & ~*(v4 + 80);
    v32 = (v5 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
    v33 = (v32 + 47) & 0xFFFFFFFFFFFFFFF8;
    v34 = swift_allocObject();
    *(v34 + 16) = 0;
    sub_2189B4EAC(v12, v34 + v31);
    v35 = v34 + v32;
    v36 = v54;
    *v35 = v53;
    *(v35 + 16) = v36;
    *(v35 + 32) = v55;
    v37 = (v34 + v33);
    v38 = (v34 + ((v33 + 23) & 0xFFFFFFFFFFFFFFF8));
    *v37 = 0;
    v37[1] = 0;
    *v38 = v20;
    v38[1] = v22;
    v38[2] = v24;

    sub_2188202A8(v22);
    sub_2186CF94C(0);
    sub_218A39284(&qword_280EE5A90, 255, sub_2186CF94C, MEMORY[0x277D6D5F8]);
    sub_219BEB464();

    sub_2187FABEC(v22, v24);
    sub_218744990(&v57, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
    sub_218744990(&v60, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
    v45 = MEMORY[0x277D2DED0];
    v46 = MEMORY[0x277D83D88];
    v47 = v15;
  }

  else
  {
    sub_219BE2564();
    v25 = sub_219BDFA44();
    (*(*(v25 - 8) + 56))(v9, 0, 1, v25);
    v62 = 0;
    v60 = 0u;
    v61 = 0u;
    v59 = 0;
    v57 = 0u;
    v58 = 0u;
    v56 = v18;
    sub_218A3912C(&v57, &v51, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
    if (*(&v52 + 1))
    {
      sub_21875F93C(&v51, &v53);
      *&v51 = v16;
      v26 = sub_2194DA78C(&v53);
      v28 = v27;
      v30 = v29;
      __swift_destroy_boxed_opaque_existential_1(&v53);
    }

    else
    {
      sub_218744990(&v51, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
      if (qword_280ED32D0 != -1)
      {
        swift_once();
      }

      v26 = qword_280ED32D8;
      v28 = qword_280ED32E0;
      v30 = qword_280ED32E8;

      sub_2188202A8(v28);
    }

    v50 = v16;
    v52 = 0u;
    v51 = 0u;
    sub_218A3912C(v9, v6, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88], sub_218A38B58);
    sub_218A3912C(&v60, &v53, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
    v39 = (*(v4 + 80) + 24) & ~*(v4 + 80);
    v40 = (v5 + v39 + 7) & 0xFFFFFFFFFFFFFFF8;
    v41 = swift_allocObject();
    *(v41 + 16) = 0;
    sub_2189B4EAC(v6, v41 + v39);
    v42 = v41 + v40;
    v43 = v54;
    *v42 = v53;
    *(v42 + 16) = v43;
    *(v42 + 32) = v55;
    v44 = (v41 + ((v40 + 47) & 0xFFFFFFFFFFFFFFF8));
    *v44 = v26;
    v44[1] = v28;
    v44[2] = v30;

    sub_2188202A8(v28);
    sub_2186CF94C(0);
    sub_218A39284(&qword_280EE5A90, 255, sub_2186CF94C, MEMORY[0x277D6D5F8]);
    sub_219BEB474();

    sub_2187FABEC(v28, v30);
    sub_218744990(&v57, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
    sub_218744990(&v60, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
    v45 = MEMORY[0x277D2DED0];
    v46 = MEMORY[0x277D83D88];
    v47 = v9;
  }

  sub_218744990(v47, &qword_280EE8610, v45, v46, sub_218A38B58);
  sub_218744990(&v51, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2187A604C);
  return 1;
}

uint64_t sub_218A388D4()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  __swift_destroy_boxed_opaque_existential_1((v0 + 72));
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_218A38950(uint64_t a1)
{
  sub_218A38B58(0, &qword_280EE7430, MEMORY[0x277D6D3E0], MEMORY[0x277D6CC70]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v11 - v5;
  sub_2187A604C(0, &qword_280EE69F0, MEMORY[0x277D839B0], MEMORY[0x277D6CF30]);
  v7 = swift_allocObject();
  swift_weakInit();
  (*(v4 + 16))(v6, a1, v3);
  v8 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  (*(v4 + 32))(v9 + v8, v6, v3);
  return sub_219BE2F54();
}

void sub_218A38B58(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_218A38BBC(uint64_t a1)
{
  if (!qword_280E8F750)
  {
    sub_218A38B58(255, &qword_280E8F5F0, MEMORY[0x277D6CCB8], MEMORY[0x277D83940]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_280E8F750);
    }
  }
}

uint64_t sub_218A38C54(uint64_t a1)
{
  sub_218A38B58(0, &qword_280EE7430, MEMORY[0x277D6D3E0], MEMORY[0x277D6CC70]);
  v5 = (*(*(v4 - 8) + 80) + 24) & ~*(*(v4 - 8) + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2187608D4;

  return sub_218A364FC(a1, v6, v1 + v5);
}

uint64_t sub_218A38D68()
{
  v0 = sub_219BE22B4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BE22F4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A38B58(0, &qword_280EE7430, MEMORY[0x277D6D3E0], MEMORY[0x277D6CC70]);
  sub_219BE2594();
  sub_219BE22D4();
  (*(v5 + 8))(v7, v4);
  v8 = sub_219BE22C4();
  v10 = v9;
  (*(v1 + 8))(v3, v0);
  if (!v10)
  {
    return 0;
  }

  v11 = sub_219BF5554();
  if (v11 < 0 || v11 != *MEMORY[0x277D30A00])
  {

    return 0;
  }

  return v8;
}

uint64_t sub_218A38F7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BDD944();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_218A38FE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BDD944();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_218A39044(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_218A390A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t a5)
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v8)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_218A3912C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t sub_218A391A0(void *a1)
{
  sub_218A38B58(0, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88]);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = (v1 + ((v6 + 47) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];

  return sub_2194DAE0C(a1, v7, v1 + v5, v1 + v6, v9, v10);
}

uint64_t sub_218A39284(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_218A392CC(void *a1)
{
  sub_218A38B58(0, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88]);
  v4 = (*(*(v3 - 8) + 80) + 24) & ~*(*(v3 - 8) + 80);
  v5 = (*(*(v3 - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_2194DAC9C(a1, *(v1 + 16), v1 + v4, v1 + v5, *(v1 + ((v5 + 47) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v5 + 47) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((((v5 + 47) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v5 + 47) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8));
}

void sub_218A393C0(uint64_t a1)
{
  if (!qword_280E8D0C8)
  {
    sub_218731D50();
    v1 = sub_219BF75C4();
    if (!v2)
    {
      atomic_store(v1, &qword_280E8D0C8);
    }
  }
}

uint64_t sub_218A39470(uint64_t a1)
{
  result = sub_219BDBD34();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_218A39534(uint64_t a1)
{
  result = sub_218799788();
  if (v2 <= 0x3F)
  {
    result = sub_219BDBD34();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_218A395B8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = sub_219BED8D4();
  v19 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v20 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A39DC0(0, &qword_27CC0CD60, MEMORY[0x277D844C8]);
  v7 = v6;
  v18 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - v8;
  v10 = type metadata accessor for NewFollowTodayFeedGroup(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218A39D08();
  sub_219BF7B34();
  if (!v2)
  {
    v13 = v18;
    v14 = v19;
    sub_218A39E24(&unk_280E92630, MEMORY[0x277D31C50], MEMORY[0x277D31C60]);
    sub_219BF7734();
    (*(v13 + 8))(v9, v7);
    (*(v14 + 32))(v12, v20, v4);
    sub_218A39D5C(v12, v17);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_218A39864(uint64_t a1)
{
  v2 = sub_218A39D08();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218A398A0(uint64_t a1)
{
  v2 = sub_218A39D08();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_218A3991C(void *a1)
{
  sub_218A39DC0(0, &qword_27CC0CD70, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218A39D08();
  sub_219BF7B44();
  sub_219BED8D4();
  sub_218A39E24(&qword_280E92640, MEMORY[0x277D31C50], MEMORY[0x277D31C58]);
  sub_219BF7834();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_218A39B7C(uint64_t a1)
{
  result = sub_218A39E24(&qword_27CC0B9A8, type metadata accessor for NewFollowTodayFeedGroup, &unk_219C143B4);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_218A39BD4(uint64_t a1)
{
  v2 = sub_218A39E24(&qword_27CC0CD58, type metadata accessor for NewFollowTodayFeedGroup, &unk_219C14298);

  return MEMORY[0x282191938](a1, v2);
}

uint64_t sub_218A39C5C(void *a1)
{
  a1[1] = sub_218A39E24(&qword_27CC0CD58, type metadata accessor for NewFollowTodayFeedGroup, &unk_219C14298);
  a1[2] = sub_218A39E24(&qword_27CC0B9F0, type metadata accessor for NewFollowTodayFeedGroup, &unk_219C1438C);
  result = sub_218A39E24(&qword_27CC0BA28, type metadata accessor for NewFollowTodayFeedGroup, &unk_219C14364);
  a1[3] = result;
  return result;
}

unint64_t sub_218A39D08()
{
  result = qword_27CC0CD68;
  if (!qword_27CC0CD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0CD68);
  }

  return result;
}

uint64_t sub_218A39D5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NewFollowTodayFeedGroup(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_218A39DC0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_218A39D08();
    v7 = a3(a1, &type metadata for NewFollowTodayFeedGroup.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_218A39E24(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_218A39E80()
{
  result = qword_27CC0CD78;
  if (!qword_27CC0CD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0CD78);
  }

  return result;
}

unint64_t sub_218A39ED8()
{
  result = qword_27CC0CD80;
  if (!qword_27CC0CD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0CD80);
  }

  return result;
}

unint64_t sub_218A39F30()
{
  result = qword_27CC0CD88;
  if (!qword_27CC0CD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0CD88);
  }

  return result;
}

uint64_t sub_218A39FA0(uint64_t a1)
{
  v2 = sub_218A3A034();

  return MEMORY[0x2821D5688](a1, v2);
}

unint64_t sub_218A39FE0()
{
  result = qword_27CC0CD90;
  if (!qword_27CC0CD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0CD90);
  }

  return result;
}

unint64_t sub_218A3A034()
{
  result = qword_27CC0CD98;
  if (!qword_27CC0CD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0CD98);
  }

  return result;
}

unint64_t sub_218A3A09C()
{
  result = qword_27CC0CDA0;
  if (!qword_27CC0CDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0CDA0);
  }

  return result;
}

uint64_t type metadata accessor for SportsDetailModel(uint64_t a1)
{
  result = qword_27CC0CDA8;
  if (!qword_27CC0CDA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_218A3A13C(uint64_t a1)
{
  type metadata accessor for SportsModel(319);
  if (v1 <= 0x3F)
  {
    sub_21880C68C();
    if (v2 <= 0x3F)
    {
      sub_218A3A1C4(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_218A3A1C4(uint64_t a1)
{
  if (!qword_280E8EFD0)
  {
    type metadata accessor for TagModel();
    v1 = sub_219BF5B14();
    if (!v2)
    {
      atomic_store(v1, &qword_280E8EFD0);
    }
  }
}

uint64_t sub_218A3A21C()
{
  v1 = v0;
  v2 = type metadata accessor for SportsModel(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SportsDetailModel(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A3A494(v1, v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_218A3A55C(v7, type metadata accessor for SportsDetailModel);
      return 0;
    }

    else
    {
      sub_218A3A55C(v7, type metadata accessor for SportsDetailModel);
      type metadata accessor for Localized();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v14 = [objc_opt_self() bundleForClass_];
      v9 = sub_219BDB5E4();
    }
  }

  else
  {
    sub_218A3A4F8(v7, v4);
    v10 = *&v4[*(v2 + 24)];
    v11 = [*(v10 + 16) asSports];
    if (!v11 || (v12 = [v11 sportsPrimaryName], swift_unknownObjectRelease(), !v12))
    {
      v12 = [*(v10 + 16) name];
    }

    v9 = sub_219BF5414();

    sub_218A3A55C(v4, type metadata accessor for SportsModel);
  }

  return v9;
}

uint64_t sub_218A3A494(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsDetailModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_218A3A4F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_218A3A55C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_218A3A5D0(uint64_t a1)
{
  if (!qword_280E91F50)
  {
    type metadata accessor for ForYouTagFeedGroupConfigData(255);
    sub_2186F7CD8(&qword_280EB4348, type metadata accessor for ForYouTagFeedGroupConfigData, &unk_219CC0828);
    sub_2186F7CD8(&qword_280EB4350, type metadata accessor for ForYouTagFeedGroupConfigData, &unk_219CC0800);
    v1 = sub_219BEDD94();
    if (!v2)
    {
      atomic_store(v1, &qword_280E91F50);
    }
  }
}

uint64_t type metadata accessor for ForYouTagFeedGroupEmitter(uint64_t a1)
{
  result = qword_280EBE630;
  if (!qword_280EBE630)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_218A3A6FC(uint64_t a1)
{
  sub_218A3A5D0(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for ForYouTagFeedGroupKnobs(319);
    if (v2 <= 0x3F)
    {
      sub_2186CFDE4(319, &qword_280E90510, MEMORY[0x277D33778]);
      if (v3 <= 0x3F)
      {
        sub_2186D6710(319, &unk_280E8DF40, &protocolRef_FCPaidAccessCheckerType);
        if (v4 <= 0x3F)
        {
          sub_2186CFDE4(319, &qword_280E910C0, MEMORY[0x277D32B88]);
          if (v5 <= 0x3F)
          {
            sub_2186CFDE4(319, &unk_280E90370, MEMORY[0x277D339F8]);
            if (v6 <= 0x3F)
            {
              sub_2186D6710(319, &qword_280E8E270, &protocolRef_FCFeedPersonalizing);
              if (v7 <= 0x3F)
              {
                sub_2186CFDE4(319, &unk_280EE6160, MEMORY[0x277D34B68]);
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

uint64_t sub_218A3A878(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2187609C8;

  return sub_218A3A920(a1, a2);
}

uint64_t sub_218A3A920(uint64_t a1, uint64_t a2)
{
  v3[223] = v2;
  v3[217] = a2;
  v3[211] = a1;
  sub_2186E4530(0, &unk_280E91B60, MEMORY[0x277D32040], MEMORY[0x277D83D88]);
  v3[229] = swift_task_alloc();
  sub_219BEF554();
  v3[235] = swift_task_alloc();
  v3[241] = swift_task_alloc();
  v4 = sub_219BED8D4();
  v3[247] = v4;
  v3[253] = *(v4 - 8);
  v3[259] = swift_task_alloc();
  v5 = sub_219BF0BD4();
  v3[265] = v5;
  v3[271] = *(v5 - 8);
  v3[277] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_218A3AAD8, 0, 0);
}

uint64_t sub_218A3AAD8()
{

  swift_asyncLet_begin();

  sub_218824BC0(0, &qword_280E8F2C8, &type metadata for FeedLocalHeadline, MEMORY[0x277D83940]);
  swift_asyncLet_begin();
  sub_219BEF164();
  *(v0 + 2264) = 0;
  v1 = *(v0 + 1416);
  *(v0 + 1528) = *(v0 + 1400);
  *(v0 + 1544) = v1;
  v2 = *(v0 + 1448);
  *(v0 + 1560) = *(v0 + 1432);
  *(v0 + 1576) = v2;
  v3 = *(v0 + 1352);
  *(v0 + 1464) = *(v0 + 1336);
  *(v0 + 1480) = v3;
  v4 = *(v0 + 1384);
  *(v0 + 1496) = *(v0 + 1368);
  *(v0 + 1512) = v4;

  return MEMORY[0x282200930](v0 + 16, v0 + 1592, sub_218A3AC5C, v0 + 1744);
}

uint64_t sub_218A3AC5C()
{
  v1[289] = v0;
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_218A3BD88, 0, 0);
  }

  else
  {
    v1[295] = v1[199];
    v1[301] = v1[200];
    v1[307] = v1[201];
    v2 = v1[202];
    v1[308] = v2;
    v3 = v1[203];
    v1[309] = v3;

    sub_2189EEB80(v2, v3);

    return MEMORY[0x282200930](v1 + 82, v1 + 205, sub_218A3AD54, v1 + 236);
  }
}

uint64_t sub_218A3AD54()
{
  *(v1 + 2480) = v0;
  if (v0)
  {
    v2 = sub_218A3BF00;
  }

  else
  {
    v2 = sub_218A3AD88;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_218A3AD88()
{
  v1 = v0[310];
  v2 = v0[301];
  v3 = v0[295];
  v4 = v0[217];
  v5 = v0[205];

  v6 = sub_218A416E0(v4, (v0 + 183), v3, v2, v5);
  v0[311] = v1;
  v0[312] = v6;
  v0[313] = v7;
  if (v1)
  {
    v8 = v0[309];
    v9 = v0[308];

    sub_2189EEBC0(v9, v8);
    sub_218A410EC((v0 + 183));

    return MEMORY[0x282200920](v0 + 82, v0 + 205, sub_218A3B078, v0 + 248, v10);
  }

  else
  {
    v11 = v0[309];
    v12 = v0[308];
    v13 = v6;

    sub_2189EEBC0(v12, v11);
    sub_218A410EC((v0 + 183));
    v14 = swift_task_alloc();
    v0[314] = v14;
    *v14 = v0;
    v14[1] = sub_218A3AF58;

    return sub_218A3CE40(v13);
  }
}

uint64_t sub_218A3AF58(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 2520) = a1;
  *(v3 + 2528) = v1;

  if (v1)
  {
    v4 = sub_218A3C0B4;
  }

  else
  {

    v4 = sub_218A3B184;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_218A3B0D0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_218A3B184()
{
  v1 = sub_218A3D500(*(v0 + 1784), *(v0 + 1736), *(v0 + 2520));
  *(v0 + 2536) = v1;
  if (!v1)
  {

    v18 = sub_219BEEDD4();
    sub_2186F7CD8(&qword_280E917E0, MEMORY[0x277D32430], MEMORY[0x277D32438]);
    *(v0 + 2568) = swift_allocError();
    (*(*(v18 - 8) + 104))(v19, *MEMORY[0x277D323A8], v18);
    swift_willThrow();

    v14 = sub_218A3BB70;
    v17 = v0 + 656;
    v13 = v0 + 1640;
    v15 = v0 + 2176;

    return MEMORY[0x282200920](v17, v13, v14, v15, v16);
  }

  v2 = v1;
  if (qword_280E8D7F8 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 2520);
  v40 = qword_280F61708;
  sub_2186F20D4(0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_219C0D560;
  if (v3 >> 62)
  {
    v5 = sub_219BF7214();
  }

  else
  {
    v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = MEMORY[0x277D83B88];
  v7 = MEMORY[0x277D83C10];
  *(v4 + 56) = MEMORY[0x277D83B88];
  *(v4 + 64) = v7;
  *(v4 + 32) = v5;
  v41 = v2 >> 62;
  v42 = v2;
  if (v2 >> 62)
  {
    v8 = sub_219BF7214();
  }

  else
  {
    v8 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = *(v0 + 2216);
  v10 = *(v0 + 2168);
  v11 = *(v0 + 2120);
  *(v4 + 96) = v6;
  *(v4 + 104) = v7;
  *(v4 + 72) = v8;
  *(v0 + 2576) = *(type metadata accessor for ForYouTagFeedGroupEmitter(0) + 20);
  type metadata accessor for ForYouTagFeedGroupKnobs(0);
  sub_219BEF134();
  v12 = MEMORY[0x277D839F0];
  *(v4 + 136) = MEMORY[0x277D839B0];
  *(v4 + 144) = v12;
  sub_219BEF524();
  (*(v10 + 8))(v9, v11);
  if (v3 >> 62)
  {
    v17 = sub_219BF7214();
  }

  else
  {
    v17 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v17)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v20 = MEMORY[0x21CECE0F0](0, *(v0 + 2520));
    }

    else
    {
      if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_43:
        __break(1u);
        return MEMORY[0x282200920](v17, v13, v14, v15, v16);
      }

      v20 = *(*(v0 + 2520) + 32);
      swift_unknownObjectRetain();
    }

    v21 = [v20 identifier];
    swift_unknownObjectRelease();
    v22 = sub_219BF5414();
    v24 = v23;
  }

  else
  {

    v22 = 0;
    v24 = 0;
  }

  v25 = MEMORY[0x277D837D0];
  *(v4 + 176) = MEMORY[0x277D837D0];
  v26 = sub_2186FC3BC();
  *(v4 + 184) = v26;
  if (v24)
  {
    v27 = v22;
  }

  else
  {
    v27 = 0;
  }

  v28 = 0xE000000000000000;
  if (v24)
  {
    v28 = v24;
  }

  *(v4 + 152) = v27;
  *(v4 + 160) = v28;
  if (!v41)
  {
    v17 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v17)
    {
      goto LABEL_27;
    }

LABEL_33:
    v34 = (v4 + 192);
    *(v4 + 216) = v25;
    *(v4 + 224) = v26;
    goto LABEL_34;
  }

  v17 = sub_219BF7214();
  if (!v17)
  {
    goto LABEL_33;
  }

LABEL_27:
  if ((v42 & 0xC000000000000001) == 0)
  {
    if (*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v29 = *(v42 + 32);
      swift_unknownObjectRetain();
      goto LABEL_30;
    }

    goto LABEL_43;
  }

  v29 = MEMORY[0x21CECE0F0](0, v42);
LABEL_30:
  v30 = [v29 identifier];
  swift_unknownObjectRelease();
  v31 = sub_219BF5414();
  v33 = v32;

  v34 = (v4 + 192);
  *(v4 + 216) = v25;
  *(v4 + 224) = v26;
  if (!v33)
  {
LABEL_34:
    v35 = v40;
    *v34 = 0;
    v33 = 0xE000000000000000;
    goto LABEL_35;
  }

  *v34 = v31;
  v35 = v40;
LABEL_35:
  *(v4 + 200) = v33;
  v36 = sub_219BF6214();
  sub_219BE5314("For You tag emitter promoted from %ld to %ld feed items, shouldPromoteAccessibleHeadline=%d initial=%{public}@, promoted=%{public}@", 131, 2, &dword_2186C1000, v35, v36, v4);

  v37 = swift_task_alloc();
  *(v0 + 2544) = v37;
  *v37 = v0;
  v37[1] = sub_218A3B694;
  v38 = *(v0 + 1736);

  return sub_218A3D8B8(v38, v42);
}

uint64_t sub_218A3B694(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 2552) = v1;

  if (v1)
  {
    v5 = sub_218A3C238;
  }

  else
  {

    *(v4 + 2560) = a1;
    v5 = sub_218A3B7C4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_218A3B7C4()
{
  v10 = v0[259];
  v11 = v0[253];
  v12 = v0[247];
  v1 = v0[229];
  v2 = v0[211];
  sub_218A3A5D0(0);
  v9 = sub_219BEDCA4();
  v8 = v3;
  sub_219BEDCB4();
  sub_219BEDCC4();
  sub_219BEDCC4();
  sub_2189AD5C8(0);
  sub_219BEE9B4();
  sub_219BEE984();
  sub_219BEE9D4();
  v4 = sub_219BEE5D4();
  (*(*(v4 - 8) + 56))(v1, 1, 1, v4);
  sub_219BED834();
  *v2 = v9;
  v2[1] = v8;
  v5 = type metadata accessor for ForYouTagFeedGroup(0);
  (*(v11 + 32))(v2 + *(v5 + 20), v10, v12);
  type metadata accessor for TagFeedGroup(0);
  swift_storeEnumTagMultiPayload();
  sub_218A42380(0, &qword_280E91720, type metadata accessor for TagFeedGroup, sub_21877D2B0, MEMORY[0x277D324E8]);
  swift_storeEnumTagMultiPayload();

  return MEMORY[0x282200920](v0 + 82, v0 + 205, sub_218A3BA64, v0 + 296, v6);
}

uint64_t sub_218A3BABC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_218A3BBC8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_218A3BCD4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_218A3BD88()
{
  sub_218A410EC(v0 + 1464);

  return MEMORY[0x282200920](v0 + 656, v0 + 1640, sub_218A3BDF4, v0 + 1792, v1);
}

uint64_t sub_218A3BE4C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_218A3BF00()
{
  v1 = *(v0 + 2472);
  v2 = *(v0 + 2464);

  sub_2189EEBC0(v2, v1);
  sub_218A410EC(v0 + 1464);

  return MEMORY[0x282200920](v0 + 656, v0 + 1640, sub_218A3BFA8, v0 + 1296, v3);
}

uint64_t sub_218A3C000()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_218A3C0B4()
{

  return MEMORY[0x282200920](v0 + 656, v0 + 1640, sub_218A3C12C, v0 + 2080, v1);
}

uint64_t sub_218A3C184()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_218A3C238()
{

  return MEMORY[0x282200920](v0 + 656, v0 + 1640, sub_218A3C2B0, v0 + 2272, v1);
}

uint64_t sub_218A3C308()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_218A3C3BC(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 48));

  return v2;
}

uint64_t sub_218A3C3F4@<X0>(uint64_t *a1@<X8>)
{
  sub_218A3A5D0(0);
  v4 = v3;
  v5 = swift_allocBox();
  result = (*(*(v4 - 8) + 16))(v6, v1, v4);
  *a1 = v5 | 0x6000000000000002;
  return result;
}

uint64_t sub_218A3C474@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 20);
  a2[3] = type metadata accessor for ForYouTagFeedGroupKnobs(0);
  a2[4] = sub_2186F7CD8(&qword_280EC4DC8, type metadata accessor for ForYouTagFeedGroupKnobs, &unk_219C61108);
  a2[5] = sub_2186F7CD8(&unk_27CC0CDC0, type metadata accessor for ForYouTagFeedGroupKnobs, &unk_219C610E0);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);

  return sub_218A42648(v2 + v4, boxed_opaque_existential_1);
}

uint64_t sub_218A3C540(uint64_t a1)
{
  sub_2189AD5C8(0);
  v2 = sub_219BEE964();
  sub_2191EDA0C(MEMORY[0x277D84F90]);
  return v2;
}

uint64_t sub_218A3C5B0()
{
  sub_218A3A5D0(0);

  return sub_219BEDCA4();
}

uint64_t sub_218A3C5DC@<X0>(uint64_t *a2@<X8>)
{
  sub_2186E4530(0, &qword_280E8B6A0, sub_2188317B0, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09BA0;
  *(inited + 32) = 0x696669746E656469;
  *(inited + 40) = 0xEA00000000007265;
  sub_218A3A5D0(0);

  v4 = sub_219BEDCA4();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v4;
  *(inited + 56) = v5;
  sub_218831A70(inited);
  swift_setDeallocating();
  sub_218A426AC(inited + 32);
  sub_2186E4530(0, &qword_280EE79E8, type metadata accessor for ForYouTagFeedGroupEmitter, MEMORY[0x277D6CC20]);
  a2[3] = v6;
  a2[4] = sub_218A42708();
  __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_219BE2334();
}

uint64_t sub_218A3C74C(uint64_t a1)
{
  sub_2186F7CD8(&qword_280EBE658, type metadata accessor for ForYouTagFeedGroupEmitter, &unk_219C14708);

  return sub_219BE2324();
}

uint64_t sub_218A3C8DC(uint64_t a1, uint64_t a2)
{
  *(v2 + 272) = a1;
  *(v2 + 280) = a2;
  return MEMORY[0x2822009F8](sub_218A3C8FC, 0, 0);
}

uint64_t sub_218A3C8FC(uint64_t a1)
{
  sub_219BEF164();
  v2 = *(v1 + 96);
  *(v1 + 208) = *(v1 + 80);
  *(v1 + 224) = v2;
  v3 = *(v1 + 128);
  *(v1 + 240) = *(v1 + 112);
  *(v1 + 256) = v3;
  v4 = *(v1 + 32);
  *(v1 + 144) = *(v1 + 16);
  *(v1 + 160) = v4;
  v5 = *(v1 + 64);
  *(v1 + 176) = *(v1 + 48);
  *(v1 + 192) = v5;
  *(v1 + 288) = *(v1 + 160);

  sub_218A410EC(v1 + 144);
  v6 = swift_task_alloc();
  *(v1 + 296) = v6;
  *v6 = v1;
  v6[1] = sub_218A3CA20;
  v7 = *(v1 + 272);

  return MEMORY[0x2821D23D8](v7);
}

uint64_t sub_218A3CA20()
{
  v2 = *v1;
  *(v2 + 304) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_218A3CB5C, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_218A3CB5C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_218A3CBC0(uint64_t a1, uint64_t a2)
{
  *(v2 + 272) = a1;
  *(v2 + 280) = a2;
  return MEMORY[0x2822009F8](sub_218A3CBE0, 0, 0);
}

uint64_t sub_218A3CBE0(uint64_t a1)
{
  sub_219BEF164();
  v2 = *(v1 + 96);
  *(v1 + 208) = *(v1 + 80);
  *(v1 + 224) = v2;
  v3 = *(v1 + 128);
  *(v1 + 240) = *(v1 + 112);
  *(v1 + 256) = v3;
  v4 = *(v1 + 32);
  *(v1 + 144) = *(v1 + 16);
  *(v1 + 160) = v4;
  v5 = *(v1 + 64);
  *(v1 + 176) = *(v1 + 48);
  *(v1 + 192) = v5;
  *(v1 + 288) = *(v1 + 224);

  sub_218A410EC(v1 + 144);
  v6 = swift_task_alloc();
  *(v1 + 296) = v6;
  *v6 = v1;
  v6[1] = sub_218A3CD04;
  v7 = *(v1 + 272);

  return MEMORY[0x2821D23D8](v7);
}

uint64_t sub_218A3CD04()
{
  v2 = *v1;
  *(v2 + 304) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_218A42790, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_218A3CE40(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = sub_219BEDC04();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_218A3CF00, 0, 0);
}

uint64_t sub_218A3CF00()
{
  v1 = v0[6];
  v2 = type metadata accessor for ForYouTagFeedGroupEmitter(0);
  __swift_project_boxed_opaque_existential_1((v1 + *(v2 + 36)), *(v1 + *(v2 + 36) + 24));
  v0[10] = sub_219BF2804();
  v3 = swift_task_alloc();
  v0[11] = v3;
  *v3 = v0;
  v3[1] = sub_218A3D000;

  return MEMORY[0x2821D23D8](v0 + 2);
}

uint64_t sub_218A3D000()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_218A3D494;
  }

  else
  {

    v2 = sub_218A3D11C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_218A3D11C()
{
  v0[3] = v0[2];
  v1 = v0[5];
  sub_218A4247C(0, &qword_280E8EC00, &qword_280E8E260, &protocolRef_FCHeadlineProviding);
  sub_218A42544(&qword_280E8EBF0, &qword_280E8EC00, &qword_280E8E260, &protocolRef_FCHeadlineProviding);
  v2 = sub_219BF57C4();

  v28 = MEMORY[0x277D84F90];
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = v0[8];
    v6 = *(v4 + 16);
    v4 += 16;
    v5 = v6;
    v7 = v0[5] + ((*(v4 + 64) + 32) & ~*(v4 + 64));
    v26 = (v4 - 8);
    v27 = *(v4 + 56);
    v25 = MEMORY[0x277D84F90];
    v24 = v6;
    v23 = v2;
    v6(v0[9], v7, v0[7]);
    while (1)
    {
      sub_219BEDBE4();
      v0[4] = &unk_282B4B370;
      if (!swift_dynamicCastObjCProtocolConditional())
      {
        swift_unknownObjectRelease();
        v9 = sub_219BEDBA4();
        if (!*(v2 + 16))
        {

LABEL_14:
          if (qword_280E8D7F8 != -1)
          {
            swift_once();
          }

          v13 = v0[9];
          v14 = v0[7];
          v15 = qword_280F61708;
          v16 = sub_219BF61F4();
          sub_2186F20D4(0);
          v17 = swift_allocObject();
          *(v17 + 16) = xmmword_219C09BA0;
          v18 = sub_219BEDBA4();
          v20 = v19;
          *(v17 + 56) = MEMORY[0x277D837D0];
          *(v17 + 64) = sub_2186FC3BC();
          *(v17 + 32) = v18;
          *(v17 + 40) = v20;
          sub_219BE5314("ForYou emitter was unable to fetch item %{public}@  Removing from content.", 74, 2, &dword_2186C1000, v15, v16, v17);

          (*v26)(v13, v14);
          v2 = v23;
          v5 = v24;
          goto LABEL_7;
        }

        sub_21870F700(v9, v10);
        v12 = v11;

        if ((v12 & 1) == 0)
        {
          goto LABEL_14;
        }

        swift_unknownObjectRetain();
      }

      v8 = (*v26)(v0[9], v0[7]);
      MEMORY[0x21CECC690](v8);
      if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_219BF5A14();
        v5 = v24;
      }

      sub_219BF5A54();
      v25 = v28;
LABEL_7:
      v7 += v27;
      if (!--v3)
      {
        goto LABEL_18;
      }

      v5(v0[9], v7, v0[7]);
    }
  }

  v25 = MEMORY[0x277D84F90];
LABEL_18:

  v21 = v0[1];

  return v21(v25);
}

uint64_t sub_218A3D494()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_218A3D500(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v31[2] = a3;
  sub_2186E4530(0, &qword_280E912E0, MEMORY[0x277D32720], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v31 - v8;
  v10 = sub_219BF0BD4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(type metadata accessor for ForYouTagFeedGroupEmitter(0) + 20);
  v31[1] = a1;
  v15 = a1 + v14;
  v16 = type metadata accessor for ForYouTagFeedGroupKnobs(0);
  sub_219BEF134();
  sub_219BEF524();
  (*(v11 + 8))(v13, v10);
  v17 = v15 + *(v16 + 40);
  if (v32 != 1)
  {
    sub_2189B7614(v17, v6);
    v23 = sub_219BEF814();
    v24 = (*(*(v23 - 8) + 48))(v6, 1, v23);
    sub_218A424D4(v6, &qword_280E912E0, MEMORY[0x277D32720]);

    sub_219319AB8(v25);
    sub_2186D6710(0, &qword_280E8E260, &protocolRef_FCHeadlineProviding);
    v26 = sub_219BF5904();

    if (v24 == 1)
    {
      v27 = FCPromoteOneHeadline();
    }

    else
    {
      v27 = FCPromoteOneHeadlineIgnoringProminence();
    }

    v28 = v27;

    if (v28)
    {
      goto LABEL_8;
    }

    return 0;
  }

  sub_2189B7614(v17, v9);
  v18 = sub_219BEF814();
  v19 = (*(*(v18 - 8) + 48))(v9, 1, v18);
  sub_218A424D4(v9, &qword_280E912E0, MEMORY[0x277D32720]);

  sub_219319AB8(v20);
  sub_2186D6710(0, &qword_280E8E260, &protocolRef_FCHeadlineProviding);
  v21 = sub_219BF5904();

  if (v19 == 1)
  {
    v22 = FCPromoteAccessibleHeadline();
  }

  else
  {
    v22 = FCPromoteAccessibleHeadlineIgnoringProminence();
  }

  v28 = v22;

  if (!v28)
  {
    return 0;
  }

LABEL_8:
  v29 = sub_219BF5924();

  return v29;
}

uint64_t sub_218A3D8B8(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  v4 = MEMORY[0x277D83D88];
  sub_2186E4530(0, &qword_280E90380, MEMORY[0x277D339F0], MEMORY[0x277D83D88]);
  v3[9] = swift_task_alloc();
  sub_2186E4530(0, &qword_280E90150, MEMORY[0x277D33EC8], v4);
  v3[10] = swift_task_alloc();
  sub_2186E4530(0, &qword_280E91A70, sub_2189AD5C8, v4);
  v3[11] = swift_task_alloc();
  v5 = sub_219BF2AB4();
  v3[12] = v5;
  v3[13] = *(v5 - 8);
  v3[14] = swift_task_alloc();
  sub_2186E4530(0, &unk_280E8FF30, sub_218A42400, v4);
  v3[15] = swift_task_alloc();
  v3[16] = type metadata accessor for ForYouTagFeedGroupConfigData(0);
  v3[17] = swift_task_alloc();
  v6 = sub_219BF1934();
  v3[18] = v6;
  v3[19] = *(v6 - 8);
  v3[20] = swift_task_alloc();
  sub_2186E4530(0, &qword_280EE33F0, MEMORY[0x277D2D4E0], v4);
  v3[21] = swift_task_alloc();
  v7 = sub_219BF2034();
  v3[22] = v7;
  v3[23] = *(v7 - 8);
  v3[24] = swift_task_alloc();
  v8 = sub_219BF3C84();
  v3[25] = v8;
  v3[26] = *(v8 - 8);
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  v9 = sub_219BF3E84();
  v3[29] = v9;
  v3[30] = *(v9 - 8);
  v3[31] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_218A3DCB8, 0, 0);
}

uint64_t sub_218A3DCB8()
{
  if (qword_280E8D7F8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 56);
  v2 = qword_280F61708;
  sub_2186F20D4(0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_219C09BA0;
  if (v1 >> 62)
  {
    v4 = sub_219BF7214();
  }

  else
  {
    v4 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = MEMORY[0x277D83C10];
  *(v3 + 56) = MEMORY[0x277D83B88];
  *(v3 + 64) = v5;
  *(v3 + 32) = v4;
  sub_219BF6214();
  sub_219BE5314("ForYou emitter resolving content with %d headlines.", v52);

  sub_219BEF0B4();
  v6 = *(*(v0 + 16) + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor);

  v7 = sub_219BF6394();
  *(v0 + 256) = v7;

  v8 = MEMORY[0x277D84F90];
  v71 = v2;
  v72 = v7;
  if (v4)
  {
    v76 = MEMORY[0x277D84F90];
    v9 = sub_218C34A88(0, v4 & ~(v4 >> 63), 0);
    if (v4 < 0)
    {
      __break(1u);
      return MEMORY[0x2821921B8](v9, v10, v11, v12, v13);
    }

    v14 = *(v0 + 208);
    if ((v1 & 0xC000000000000001) != 0)
    {
      v15 = 0;
      v16 = *MEMORY[0x277D34128];
      do
      {
        v17 = *(v0 + 224);
        v18 = *(v0 + 200);
        *v17 = MEMORY[0x21CECE0F0](v15, *(v0 + 56));
        (*(v14 + 104))(v17, v16, v18);
        v20 = *(v76 + 16);
        v19 = *(v76 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_218C34A88((v19 > 1), v20 + 1, 1);
        }

        v21 = *(v0 + 224);
        v22 = *(v0 + 200);
        ++v15;
        *(v76 + 16) = v20 + 1;
        (*(v14 + 32))(v76 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v20, v21, v22);
      }

      while (v4 != v15);
    }

    else
    {
      v23 = (*(v0 + 56) + 32);
      v74 = *(v14 + 104);
      do
      {
        **(v0 + 216) = *v23;
        v74();
        v25 = *(v76 + 16);
        v24 = *(v76 + 24);
        swift_unknownObjectRetain();
        if (v25 >= v24 >> 1)
        {
          sub_218C34A88((v24 > 1), v25 + 1, 1);
        }

        v26 = *(v0 + 216);
        v27 = *(v0 + 200);
        *(v76 + 16) = v25 + 1;
        (*(v14 + 32))(v76 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v25, v26, v27);
        ++v23;
        --v4;
      }

      while (v4);
    }

    v8 = MEMORY[0x277D84F90];
  }

  v28 = *(v0 + 240);
  v29 = *(v0 + 248);
  v30 = *(v0 + 232);
  v31 = *(v0 + 168);
  v68 = *(v0 + 152);
  v69 = *(v0 + 144);
  v65 = *(v0 + 136);
  v66 = *(v0 + 128);
  v67 = *(v0 + 120);
  v70 = *(v0 + 88);
  v73 = *(v0 + 80);
  v75 = *(v0 + 72);
  v64 = *(v0 + 64);
  sub_218F0B984(v8);
  sub_218F0BA7C(v8);
  sub_218F0BB90(v8);
  sub_219BF3E74();
  sub_218824BC0(0, &qword_280E8B5A0, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v61 = swift_allocObject();
  *(v61 + 16) = xmmword_219C146A0;
  *(v61 + 32) = v72;
  sub_2186E4530(0, &unk_280E8B790, MEMORY[0x277D34258], MEMORY[0x277D84560]);
  v32 = (*(v28 + 80) + 32) & ~*(v28 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_219C09BA0;
  (*(v28 + 16))(v33 + v32, v29, v30);
  v63 = sub_219BEC004();
  v62 = *(*(v63 - 8) + 56);
  v34 = v31;
  v60 = v31;
  v62(v31, 1, 1, v63);
  swift_unknownObjectRetain();
  sub_219A95188(v8);
  sub_219A95188(v8);
  sub_219A951A0(v8);
  v35 = sub_219A951B8(v8);
  v36 = sub_219A952CC(v8);
  v37 = sub_219A952E4(v8);
  v59 = sub_219A953F8(v8);
  v57 = v37;
  v58 = v8;
  v55 = v8;
  v56 = v36;
  v53 = v8;
  v54 = v8;
  sub_219BF2024();
  v38 = (v64 + *(type metadata accessor for ForYouTagFeedGroupEmitter(0) + 24));
  v40 = v38[3];
  v39 = v38[4];
  __swift_project_boxed_opaque_existential_1(v38, v40);
  sub_218A3A5D0(0);
  sub_219BEDD14();
  v41 = *(v66 + 20);
  v42 = [v72 identifier];
  sub_219BF5414();

  v62(v60, 1, 1, v63);
  sub_218A42400(0);
  (*(*(v43 - 8) + 56))(v67, 1, 1, v43);
  sub_219BF1764();

  sub_218A424D4(v67, &unk_280E8FF30, sub_218A42400);
  sub_218A424D4(v60, &qword_280EE33F0, MEMORY[0x277D2D4E0]);
  v44 = *(v68 + 8);
  *(v0 + 264) = v44;
  *(v0 + 272) = (v68 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v44(v65 + v41, v69);
  sub_2189AD5C8(0);
  (*(*(v45 - 8) + 56))(v70, 1, 1, v45);
  sub_219BEF0B4();
  v46 = *(*(v0 + 24) + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor);

  v47 = sub_219BF35D4();
  (*(*(v47 - 8) + 56))(v73, 1, 1, v47);
  *(v0 + 304) = 26;
  sub_218A42380(0, &qword_280E90090, type metadata accessor for TagFeedServiceConfig, sub_2186F7CA4, MEMORY[0x277D33F88]);
  swift_allocObject();

  sub_219BF38D4();
  sub_219BEF0B4();
  sub_218CB8CBC();

  sub_219BEF0B4();
  v48 = *(*(v0 + 40) + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor);

  sub_219BF3914();
  swift_allocObject();
  sub_219BF3904();
  v49 = sub_219BF2774();
  (*(*(v49 - 8) + 56))(v75, 1, 1, v49);
  *MEMORY[0x277D30BC0];
  v71;
  sub_219BF2A84();
  v50 = swift_task_alloc();
  *(v0 + 280) = v50;
  *v50 = v0;
  v50[1] = sub_218A3E6D0;
  v10 = *(v0 + 192);
  v11 = *(v0 + 112);
  v9 = *(v0 + 160);
  v12 = v40;
  v13 = v39;

  return MEMORY[0x2821921B8](v9, v10, v11, v12, v13);
}

uint64_t sub_218A3E6D0(uint64_t a1)
{
  v4 = *v2;
  v4[36] = v1;

  v5 = v4[33];
  v6 = v4[20];
  v7 = v4[18];
  v8 = v4[14];
  v9 = v4[13];
  v10 = v4[12];
  if (v1)
  {
    (*(v9 + 8))(v8, v10);
    v5(v6, v7);
    v11 = sub_218A3EA1C;
  }

  else
  {
    v4[37] = a1;
    (*(v9 + 8))(v8, v10);
    v5(v6, v7);
    v11 = sub_218A3E8D0;
  }

  return MEMORY[0x2822009F8](v11, 0, 0);
}

uint64_t sub_218A3E8D0()
{
  v1 = v0[31];
  v3 = v0[29];
  v2 = v0[30];
  v4 = v0[23];
  v5 = v0[24];
  v6 = v0[22];
  swift_unknownObjectRelease();
  (*(v4 + 8))(v5, v6);
  (*(v2 + 8))(v1, v3);

  v7 = v0[1];
  v8 = v0[37];

  return v7(v8);
}

uint64_t sub_218A3EA1C()
{
  v1 = v0[31];
  v3 = v0[29];
  v2 = v0[30];
  v4 = v0[23];
  v5 = v0[24];
  v6 = v0[22];
  swift_unknownObjectRelease();
  (*(v4 + 8))(v5, v6);
  (*(v2 + 8))(v1, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_218A3EB64(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_280E8D7F8 != -1)
  {
    swift_once();
  }

  sub_2186F20D4(0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_219C09BA0;
  if (a1 >> 62)
  {
    v6 = sub_219BF7214();
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = MEMORY[0x277D83C10];
  *(v5 + 56) = MEMORY[0x277D83B88];
  *(v5 + 64) = v7;
  *(v5 + 32) = v6;
  sub_219BF6214();
  sub_219BE5314("ForYou emitter starting with %ld items available.", v16);

  if (a1 >> 62)
  {
    if (sub_219BF7214())
    {
      goto LABEL_7;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_7:
    v8 = sub_218A41140(a1, a3);
    v9 = sub_218A404FC(v8);

    v11 = sub_218A41470(v9, v10);

    v12 = sub_218A40948(v11, a3);

    return v12;
  }

  v14 = sub_219BEEDD4();
  sub_2186F7CD8(&qword_280E917E0, MEMORY[0x277D32430], MEMORY[0x277D32438]);
  swift_allocError();
  (*(*(v14 - 8) + 104))(v15, *MEMORY[0x277D32428], v14);
  return swift_willThrow();
}

uint64_t sub_218A3ED8C(uint64_t a1)
{
  v2 = sub_219BEDC04();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v26 - v8;
  v10 = *(a1 + 16);
  if (!v10)
  {
    return MEMORY[0x277D84F90];
  }

  v13 = *(v3 + 16);
  v11 = v3 + 16;
  v12 = v13;
  v29 = (*(v11 + 64) + 32) & ~*(v11 + 64);
  v14 = a1 + v29;
  v15 = *(v11 + 56);
  v27 = (v11 - 8);
  v32 = (v11 + 16);
  v16 = MEMORY[0x277D84F90];
  v30 = v5;
  v31 = v11;
  v28 = v13;
  v13(v9, a1 + v29, v2, v7);
  while (1)
  {
    v18 = sub_219BEDBC4();
    [v18 tabiScore];
    v20 = v19;

    if (v20 <= 0.0)
    {
      (*v27)(v9, v2);
    }

    else
    {
      v21 = *v32;
      (*v32)(v5, v9, v2);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v33 = v16;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_218C34908(0, *(v16 + 16) + 1, 1);
        v16 = v33;
      }

      v24 = *(v16 + 16);
      v23 = *(v16 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_218C34908((v23 > 1), v24 + 1, 1);
        v16 = v33;
      }

      *(v16 + 16) = v24 + 1;
      v5 = v30;
      v21((v16 + v29 + v24 * v15), v30, v2);
      v12 = v28;
    }

    v14 += v15;
    if (!--v10)
    {
      break;
    }

    v12(v9, v14, v2, v17);
  }

  return v16;
}

const char *sub_218A3EFE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v67 = a3;
  v4 = v3;
  v69 = a1;
  v64 = sub_219BF0BD4();
  v62 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v59 = v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BF02F4();
  v65 = *(v7 - 8);
  v66 = v7;
  MEMORY[0x28223BE20](v7);
  v60 = v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_219BEE6F4();
  v61 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v58 = v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BEF814();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E4530(0, &qword_280E912E0, MEMORY[0x277D32720], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = v50 - v15;
  v17 = type metadata accessor for ForYouTagFeedGroupEmitter(0);
  v18 = v4 + *(v17 + 20);
  v19 = type metadata accessor for ForYouTagFeedGroupKnobs(0);
  sub_2195EB5F8((v18 + *(v19 + 40)), 26, v16);
  if ((*(v11 + 48))(v16, 1, v10) == 1)
  {
    return sub_218A3F748(v69, a2, v67);
  }

  v55 = a2;
  v56 = v11;
  v21 = v69;
  v22 = *(v11 + 32);
  v57 = v10;
  v22(v13, v16, v10);
  v51 = v13;
  if (qword_280E8D7F8 != -1)
  {
    swift_once();
  }

  v23 = qword_280F61708;
  sub_2186F20D4(0);
  v53 = v24;
  v25 = swift_allocObject();
  v52 = xmmword_219C09BA0;
  *(v25 + 16) = xmmword_219C09BA0;
  v26 = *(v21 + 16);
  v27 = MEMORY[0x277D83C10];
  *(v25 + 56) = MEMORY[0x277D83B88];
  *(v25 + 64) = v27;
  *(v25 + 32) = v26;
  sub_219BF6214();
  v54 = v23;
  sub_219BE5314("ForYou emitter will form smarter best of group from %ld candidate items.", v50[0]);

  v28 = (v4 + *(v17 + 32));
  v29 = v28[3];
  v50[2] = v28[4];
  v50[1] = __swift_project_boxed_opaque_existential_1(v28, v29);
  v30 = sub_219BEFBD4();
  v31 = v58;
  (*(*(v30 - 8) + 16))(v58, v67, v30);
  v32 = v61;
  v33 = v63;
  (*(v61 + 104))(v31, *MEMORY[0x277D320E8], v63);
  v34 = v59;
  sub_219BEF134();
  v35 = v60;
  v36 = v51;
  sub_219BEF7E4();
  (*(v62 + 8))(v34, v64);
  v37 = v68;
  v38 = sub_219BEFFD4();
  if (v37)
  {
    (*(v65 + 8))(v35, v66);
    (*(v32 + 8))(v31, v33);
    v39 = sub_219BF61F4();
    v40 = swift_allocObject();
    *(v40 + 16) = v52;
    v70 = v37;
    v41 = v37;
    sub_2186CFDE4(0, &qword_280E8B580, MEMORY[0x277D84948]);
    v42 = sub_219BF5484();
    v44 = v43;
    *(v40 + 56) = MEMORY[0x277D837D0];
    *(v40 + 64) = sub_2186FC3BC();
    *(v40 + 32) = v42;
    *(v40 + 40) = v44;
    sub_219BE5314("ForYou emitter failed to form smarter best of group, error=%{public}@", 69, 2, &dword_2186C1000, v54, v39, v40);

    v45 = sub_219BEEDD4();
    sub_2186F7CD8(&qword_280E917E0, MEMORY[0x277D32430], MEMORY[0x277D32438]);
    swift_allocError();
    *v46 = v37;
    (*(*(v45 - 8) + 104))(v46, *MEMORY[0x277D32378], v45);
    swift_willThrow();
    return (*(v56 + 8))(v36, v57);
  }

  else
  {
    v47 = v38;
    (*(v65 + 8))(v35, v66);
    (*(v32 + 8))(v31, v33);
    v48 = swift_allocObject();
    *(v48 + 16) = v52;
    v49 = *(v47 + 16);
    *(v48 + 56) = MEMORY[0x277D83B88];
    *(v48 + 64) = MEMORY[0x277D83C10];
    *(v48 + 32) = v49;
    sub_219BF6214();
    sub_219BE5314("ForYou emitter selected smarter best of group with %ld items.", v50[0]);

    (*(v56 + 8))(v36, v57);
    return v47;
  }
}

const char *sub_218A3F748(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v81 = a3;
  v90 = a2;
  v92 = a1;
  v4 = sub_219BEE6F4();
  v84 = *(v4 - 8);
  v85 = v4;
  MEMORY[0x28223BE20](v4);
  v82 = &v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x277D83D88];
  sub_2186E4530(0, &qword_280E90F70, MEMORY[0x277D32C58], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7 - 8);
  v79 = &v72 - v8;
  sub_2186E4530(0, &qword_280E916D0, MEMORY[0x277D324F0], v6);
  MEMORY[0x28223BE20](v9 - 8);
  v75 = &v72 - v10;
  sub_2186E4530(0, &qword_280E91148, MEMORY[0x277D32A88], v6);
  MEMORY[0x28223BE20](v11 - 8);
  v91 = &v72 - v12;
  v13 = sub_219BF02F4();
  v87 = *(v13 - 8);
  v88 = v13;
  MEMORY[0x28223BE20](v13);
  v86 = &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_219BF0BD4();
  v16 = *(v15 - 8);
  v95 = v15;
  v96 = v16;
  MEMORY[0x28223BE20](v15);
  v18 = &v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E4530(0, &qword_280E912E0, MEMORY[0x277D32720], v6);
  MEMORY[0x28223BE20](v19 - 8);
  v76 = &v72 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v72 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = &v72 - v25;
  v77 = type metadata accessor for ForYouTagFeedGroupEmitter(0);
  v27 = *(v77 + 20);
  v80 = v3;
  v28 = v3 + v27;
  v29 = type metadata accessor for ForYouTagFeedGroupKnobs(0);
  v30 = *(v29 + 40);
  sub_2189B7614(v28 + v30, v26);
  v31 = sub_219BEF814();
  v32 = *(v31 - 8);
  v93 = *(v32 + 48);
  v94 = v32 + 48;
  v33 = v93(v26, 1, v31);
  v89 = v32;
  if (v33 == 1)
  {
    sub_218A424D4(v26, &qword_280E912E0, MEMORY[0x277D32720]);
  }

  else
  {
    v78 = v29;
    sub_219BEF794();
    (*(v32 + 8))(v26, v31);
  }

  sub_219BEF134();
  sub_219BEF524();

  v34 = *(v96 + 8);
  v96 += 8;
  v34(v18, v95);
  v78 = v97;
  sub_2189B7614(v28 + v30, v23);
  if (v93(v23, 1, v31) == 1)
  {
    sub_218A424D4(v23, &qword_280E912E0, MEMORY[0x277D32720]);
  }

  else
  {
    sub_219BEF784();
    (*(v89 + 8))(v23, v31);
  }

  sub_219BEF134();
  sub_219BEF524();

  v34(v18, v95);
  if (v97 < 1)
  {
    v43 = "minNumberOfItems";
    sub_219BEEDD4();
    sub_2186F7CD8(&qword_280E917E0, MEMORY[0x277D32430], MEMORY[0x277D32438]);
    swift_allocError();
    sub_219BEEDC4();
    swift_willThrow();
  }

  else
  {
    if (qword_280E8D7F8 != -1)
    {
      swift_once();
    }

    v35 = qword_280F61708;
    sub_2186F20D4(0);
    v73 = v36;
    v37 = swift_allocObject();
    v72 = xmmword_219C09BA0;
    *(v37 + 16) = xmmword_219C09BA0;
    v38 = *(v92 + 16);
    v39 = MEMORY[0x277D83C10];
    *(v37 + 56) = MEMORY[0x277D83B88];
    *(v37 + 64) = v39;
    *(v37 + 32) = v38;
    sub_219BF6214();
    v74 = v35;
    sub_219BE5314("ForYou emitter will form simple best of group from %ld candidate items.", v72);

    v40 = sub_219BEFD84();
    (*(*(v40 - 8) + 56))(v91, 1, 1, v40);
    v41 = v76;
    sub_2189B7614(v28 + v30, v76);
    if (v93(v41, 1, v31) == 1)
    {
      sub_218A424D4(v41, &qword_280E912E0, MEMORY[0x277D32720]);
      v42 = v84;
    }

    else
    {
      v44 = v75;
      sub_219BEF774();
      v45 = v31;
      v46 = v44;
      (*(v89 + 8))(v41, v45);
      v47 = sub_219BEF244();
      v48 = *(v47 - 8);
      v49 = (*(v48 + 48))(v46, 1, v47);
      v42 = v84;
      if (v49 == 1)
      {
        sub_218A424D4(v46, &qword_280E916D0, MEMORY[0x277D324F0]);
      }

      else
      {
        sub_219BEF1B4();
        (*(v48 + 8))(v46, v47);
        sub_219BEF134();
        sub_219BEF524();

        v34(v18, v95);
      }
    }

    v50 = v78;
    v51 = sub_219BF0354();
    (*(*(v51 - 8) + 56))(v79, 1, 1, v51);
    v52 = v86;
    sub_219BF02D4();
    __swift_project_boxed_opaque_existential_1((v80 + *(v77 + 32)), *(v80 + *(v77 + 32) + 24));
    v53 = sub_219BEFBD4();
    v54 = v82;
    (*(*(v53 - 8) + 16))(v82, v81, v53);
    v55 = v85;
    (*(v42 + 104))(v54, *MEMORY[0x277D320E8], v85);
    v56 = v83;
    v57 = sub_219BEFFD4();
    if (v56)
    {
      (*(v42 + 8))(v54, v55);
      v58 = swift_allocObject();
      *(v58 + 16) = v72;
      v97 = v56;
      v59 = v56;
      sub_2186CFDE4(0, &qword_280E8B580, MEMORY[0x277D84948]);
      v60 = sub_219BF5484();
      v62 = v61;
      *(v58 + 56) = MEMORY[0x277D837D0];
      *(v58 + 64) = sub_2186FC3BC();
      *(v58 + 32) = v60;
      *(v58 + 40) = v62;
      v63 = sub_219BF6214();
      sub_219BE5314("ForYou emitter failed to determine the best of group, error=%{public}@", 70, 2, &dword_2186C1000, v74, v63, v58);

      v43 = sub_219BEEDD4();
      sub_2186F7CD8(&qword_280E917E0, MEMORY[0x277D32430], MEMORY[0x277D32438]);
      swift_allocError();
      *v64 = v56;
      (*(*(v43 - 1) + 104))(v64, *MEMORY[0x277D32378], v43);
      swift_willThrow();
      (*(v87 + 8))(v52, v88);
    }

    else
    {
      v43 = v57;
      (*(v42 + 8))(v54, v55);
      v65 = swift_allocObject();
      *(v65 + 16) = v72;
      v66 = *(v43 + 2);
      v67 = MEMORY[0x277D83B88];
      *(v65 + 56) = MEMORY[0x277D83B88];
      *(v65 + 64) = MEMORY[0x277D83C10];
      *(v65 + 32) = v66;
      sub_219BF6214();
      sub_219BE5314("ForYou emitter selected simple best of group with %ld items.", v72);

      if (v66 < v50)
      {

        v68 = swift_allocObject();
        *(v68 + 16) = xmmword_219C09EC0;
        *(v68 + 56) = v67;
        v69 = MEMORY[0x277D83C10];
        *(v68 + 64) = MEMORY[0x277D83C10];
        *(v68 + 72) = v50;
        *(v68 + 32) = v66;
        *(v68 + 96) = v67;
        *(v68 + 104) = v69;
        sub_219BF6214();
        sub_219BE5314("ForYou emitter has best of group which is too small.  items=%ld required=%d", v72, DWORD2(v72));

        v43 = sub_219BEEDD4();
        sub_2186F7CD8(&qword_280E917E0, MEMORY[0x277D32430], MEMORY[0x277D32438]);
        swift_allocError();
        *v70 = v50;
        v70[1] = v66;
        (*(*(v43 - 1) + 104))(v70, *MEMORY[0x277D32400], v43);
        swift_willThrow();
      }

      (*(v87 + 8))(v52, v88);
    }
  }

  return v43;
}

unint64_t sub_218A404FC(unint64_t a1)
{
  v3 = sub_219BDBD34();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BF0BD4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v1 + *(type metadata accessor for ForYouTagFeedGroupEmitter(0) + 20);
  if (*(v11 + *(type metadata accessor for ForYouTagFeedGroupKnobs(0) + 20)))
  {
    sub_219BEF134();
    sub_219BEF524();
    (*(v8 + 8))(v10, v7);
    v12 = v28;
    v13 = sub_219BDBC54();
    MEMORY[0x28223BE20](v13);
    *(&v27 - 2) = v6;

    v14 = sub_2195EB294(sub_218A42628, &v27 - 4, a1);
    if (qword_280E8D7F8 != -1)
    {
      swift_once();
    }

    sub_2186F20D4(0);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_219C0B8C0;
    if (a1 >> 62)
    {
      v25 = v15;
      a1 = sub_219BF7214();
      v15 = v25;
      if (!(v14 >> 62))
      {
LABEL_6:
        v16 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v17 = a1 - v16;
        if (!__OFSUB__(a1, v16))
        {
LABEL_7:
          v18 = MEMORY[0x277D83B88];
          v19 = MEMORY[0x277D83C10];
          *(v15 + 56) = MEMORY[0x277D83B88];
          *(v15 + 64) = v19;
          *(v15 + 32) = v17;
          v20 = MEMORY[0x277D83A80];
          *(v15 + 96) = MEMORY[0x277D839F8];
          *(v15 + 104) = v20;
          *(v15 + 72) = v12;
          *(v15 + 136) = v18;
          *(v15 + 144) = v19;
          *(v15 + 112) = v16;
          sub_219BF6214();
          sub_219BE5314("ForYou emitter filtered %d items older than %.0f seconds.  %ld items remain.", v27, v28, v29);

          (*(v4 + 8))(v6, v3);
          return v14;
        }

        goto LABEL_16;
      }
    }

    else
    {
      a1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!(v14 >> 62))
      {
        goto LABEL_6;
      }
    }

    v26 = v15;
    v16 = sub_219BF7214();
    v15 = v26;
    v17 = a1 - v16;
    if (!__OFSUB__(a1, v16))
    {
      goto LABEL_7;
    }

LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (qword_280E8D7F8 != -1)
  {
LABEL_17:
    swift_once();
  }

  sub_2186F20D4(0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_219C09BA0;
  if (a1 >> 62)
  {
    v22 = sub_219BF7214();
  }

  else
  {
    v22 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v23 = MEMORY[0x277D83C10];
  *(v21 + 56) = MEMORY[0x277D83B88];
  *(v21 + 64) = v23;
  *(v21 + 32) = v22;
  sub_219BF6214();
  sub_219BE5314("ForYou emitter has no max age; skipping age filter.  %ld items remain.", v27);

  return a1;
}

uint64_t sub_218A40948(unint64_t a1, uint64_t a2)
{
  sub_218A4247C(0, &qword_280E8EB70, &qword_280E8DF60, &protocolRef_FCFeedPersonalizingItem);
  sub_218824BC0(0, &qword_280E8F860, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  sub_218A42544(&unk_280E8EB60, &qword_280E8EB70, &qword_280E8DF60, &protocolRef_FCFeedPersonalizingItem);
  sub_218A42594();
  v2 = sub_219BF56D4();
  v39 = MEMORY[0x277D84F90];
  if (v2 >> 62)
  {
LABEL_28:
    v25 = v2;
    v3 = sub_219BF7214();
    v2 = v25;
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
LABEL_3:
      v4 = 0;
      v5 = v2 & 0xC000000000000001;
      v6 = v2 & 0xFFFFFFFFFFFFFF8;
      v34 = v2;
      v7 = v2 + 32;
      v8 = &selRef_boldSystemFontOfSize_;
      v9 = &_OBJC_LABEL_PROTOCOL___FCAudioPlaylistType;
      v36 = v2 + 32;
      v37 = v3;
      while (1)
      {
        if (v5)
        {
          v10 = MEMORY[0x21CECE0F0](v4, v34);
          v11 = __OFADD__(v4++, 1);
          if (v11)
          {
LABEL_25:
            __break(1u);
LABEL_26:
            v24 = v39;
            goto LABEL_30;
          }
        }

        else
        {
          if (v4 >= *(v6 + 16))
          {
            __break(1u);
            goto LABEL_28;
          }

          v10 = *(v7 + 8 * v4);
          swift_unknownObjectRetain();
          v11 = __OFADD__(v4++, 1);
          if (v11)
          {
            goto LABEL_25;
          }
        }

        if ([v10 v9[238]])
        {
          v12 = [v10 v8[52]];
          if (v12)
          {
            v13 = v12;
            v14 = sub_219BF5414();
            v16 = v15;

            v17 = *(a2 + 96);
            if (*(v17 + 16))
            {
              sub_219BF7AA4();
              sub_219BF5524();
              v18 = sub_219BF7AE4();
              v19 = -1 << *(v17 + 32);
              v20 = v18 & ~v19;
              if ((*(v17 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20))
              {
                v21 = ~v19;
                while (1)
                {
                  v22 = (*(v17 + 48) + 16 * v20);
                  v23 = *v22 == v14 && v22[1] == v16;
                  if (v23 || (sub_219BF78F4() & 1) != 0)
                  {
                    break;
                  }

                  v20 = (v20 + 1) & v21;
                  if (((*(v17 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
                  {
                    goto LABEL_18;
                  }
                }

                swift_unknownObjectRelease();

                v7 = v36;
                v3 = v37;
                v8 = &selRef_boldSystemFontOfSize_;
                v9 = &_OBJC_LABEL_PROTOCOL___FCAudioPlaylistType;
                goto LABEL_20;
              }
            }

LABEL_18:

            v7 = v36;
            v3 = v37;
            v8 = &selRef_boldSystemFontOfSize_;
            v9 = &_OBJC_LABEL_PROTOCOL___FCAudioPlaylistType;
          }
        }

        sub_219BF73D4();
        sub_219BF7414();
        sub_219BF7424();
        v2 = sub_219BF73E4();
LABEL_20:
        if (v4 == v3)
        {
          goto LABEL_26;
        }
      }
    }
  }

  v24 = MEMORY[0x277D84F90];
LABEL_30:

  if (qword_280E8D7F8 != -1)
  {
    swift_once();
  }

  sub_2186F20D4(0);
  result = swift_allocObject();
  *(result + 16) = xmmword_219C09EC0;
  if (a1 >> 62)
  {
    v32 = result;
    v27 = sub_219BF7214();
    result = v32;
    if (v24 < 0)
    {
LABEL_38:
      v33 = result;
      v28 = sub_219BF7214();
      result = v33;
      v29 = v27 - v28;
      if (!__OFSUB__(v27, v28))
      {
        goto LABEL_36;
      }

      goto LABEL_40;
    }
  }

  else
  {
    v27 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v24 < 0)
    {
      goto LABEL_38;
    }
  }

  if ((v24 & 0x4000000000000000) != 0)
  {
    goto LABEL_38;
  }

  v28 = *(v24 + 16);
  v29 = v27 - v28;
  if (!__OFSUB__(v27, v28))
  {
LABEL_36:
    v30 = MEMORY[0x277D83B88];
    v31 = MEMORY[0x277D83C10];
    *(result + 56) = MEMORY[0x277D83B88];
    *(result + 64) = v31;
    *(result + 32) = v29;
    *(result + 96) = v30;
    *(result + 104) = v31;
    *(result + 72) = v28;
    sub_219BF6214();
    sub_219BE5314("ForYou emitter deduplicated %d cluster IDs.  %ld items remain.", v34, a1);

    return v24;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_218A40D74(id *a1, uint64_t a2)
{
  v3 = sub_219BDBD34();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v8 = MEMORY[0x28223BE20](v7).n128_u64[0];
  v10 = v16 - v9;
  v11 = [*a1 publishDate];
  if (v11)
  {
    v12 = v11;
    sub_219BDBCA4();

    (*(v4 + 32))(v10, v6, v3);
    sub_2186F7CD8(&qword_280EE9C90, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
    v13 = sub_219BF5334();
    (*(v4 + 8))(v10, v3);
    v14 = v13 ^ 1;
  }

  else
  {
    v14 = 1;
  }

  return v14 & 1;
}

void sub_218A40F14(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  if ([*a1 respondsToSelector_])
  {
    v4 = [v3 clusterID];
    if (v4)
    {
      v5 = v4;
      v6 = sub_219BF5414();
      v8 = v7;
    }

    else
    {
      v6 = 0;
      v8 = 0;
    }
  }

  else
  {
    v6 = 0;
    v8 = 1;
  }

  *a2 = v6;
  a2[1] = v8;
}

uint64_t sub_218A40FB4(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2187608D4;

  return sub_218A3C8DC(a1, v1);
}

uint64_t sub_218A41050(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2187609C8;

  return sub_218A3CBC0(a1, v1);
}

uint64_t sub_218A41140(unint64_t a1, uint64_t a2)
{
  v2 = a1;
  v32 = MEMORY[0x277D84F90];
  v3 = a1 >> 62;
  if (a1 >> 62)
  {
LABEL_25:
    v4 = sub_219BF7214();
    if (v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
LABEL_3:
      v27 = v3;
      v28 = v2;
      v3 = 0;
      v29 = v2 & 0xFFFFFFFFFFFFFF8;
      v30 = v2 & 0xC000000000000001;
      v2 += 32;
      while (1)
      {
        if (v30)
        {
          v5 = MEMORY[0x21CECE0F0](v3, v28);
          v6 = __OFADD__(v3++, 1);
          if (v6)
          {
LABEL_22:
            __break(1u);
LABEL_23:
            v18 = v32;
            v3 = v27;
            v2 = v28;
            goto LABEL_27;
          }
        }

        else
        {
          if (v3 >= *(v29 + 16))
          {
            __break(1u);
            goto LABEL_25;
          }

          v5 = *(v2 + 8 * v3);
          swift_unknownObjectRetain();
          v6 = __OFADD__(v3++, 1);
          if (v6)
          {
            goto LABEL_22;
          }
        }

        v7 = *(a2 + 88);
        v8 = [v5 itemID];
        v9 = sub_219BF5414();
        v11 = v10;

        if (*(v7 + 16) && (sub_219BF7AA4(), sub_219BF5524(), v12 = sub_219BF7AE4(), v13 = -1 << *(v7 + 32), v14 = v12 & ~v13, ((*(v7 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0))
        {
          v15 = ~v13;
          while (1)
          {
            v16 = (*(v7 + 48) + 16 * v14);
            v17 = *v16 == v9 && v16[1] == v11;
            if (v17 || (sub_219BF78F4() & 1) != 0)
            {
              break;
            }

            v14 = (v14 + 1) & v15;
            if (((*(v7 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
            {
              goto LABEL_4;
            }
          }

          swift_unknownObjectRelease();

          if (v3 == v4)
          {
            goto LABEL_23;
          }
        }

        else
        {
LABEL_4:

          sub_219BF73D4();
          sub_219BF7414();
          sub_219BF7424();
          sub_219BF73E4();
          if (v3 == v4)
          {
            goto LABEL_23;
          }
        }
      }
    }
  }

  v18 = MEMORY[0x277D84F90];
LABEL_27:
  if (qword_280E8D7F8 != -1)
  {
    swift_once();
  }

  sub_2186F20D4(0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_219C09EC0;
  if (v3)
  {
    v20 = sub_219BF7214();
  }

  else
  {
    v20 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v18 < 0 || (v18 & 0x4000000000000000) != 0)
  {
    v25 = v20;
    result = sub_219BF7214();
    v22 = v25 - result;
    if (!__OFSUB__(v25, result))
    {
      goto LABEL_35;
    }
  }

  else
  {
    result = *(v18 + 16);
    v6 = __OFSUB__(v20, result);
    v22 = v20 - result;
    if (!v6)
    {
LABEL_35:
      v23 = MEMORY[0x277D83B88];
      v24 = MEMORY[0x277D83C10];
      *(v19 + 56) = MEMORY[0x277D83B88];
      *(v19 + 64) = v24;
      *(v19 + 32) = v22;
      *(v19 + 96) = v23;
      *(v19 + 104) = v24;
      *(v19 + 72) = result;
      sub_219BF6214();
      sub_219BE5314("ForYou emitter filtered %d previously emitted items.  %d items remain.", v26, v27);

      return v18;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_218A41470(unint64_t a1, uint64_t a2)
{
  v19 = MEMORY[0x277D84F90];
  v3 = a1 >> 62;
  if (a1 >> 62)
  {
LABEL_17:
    v4 = sub_219BF7214();
    if (v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
LABEL_3:
      v18 = v3;
      v5 = 0;
      while (1)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v3 = MEMORY[0x21CECE0F0](v5, a1);
          v6 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
LABEL_14:
            __break(1u);
LABEL_15:
            v8 = v19;
            v3 = v18;
            goto LABEL_19;
          }
        }

        else
        {
          if (v5 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_17;
          }

          v3 = *(a1 + 8 * v5 + 32);
          swift_unknownObjectRetain();
          v6 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
            goto LABEL_14;
          }
        }

        v7 = swift_dynamicCastObjCProtocolConditional();
        if (v7 && ([v7 isSponsored] & 1) != 0)
        {
          swift_unknownObjectRelease();
        }

        else
        {
          sub_219BF73D4();
          sub_219BF7414();
          sub_219BF7424();
          sub_219BF73E4();
        }

        ++v5;
        if (v6 == v4)
        {
          goto LABEL_15;
        }
      }
    }
  }

  v8 = MEMORY[0x277D84F90];
LABEL_19:
  if (qword_280E8D7F8 != -1)
  {
    swift_once();
  }

  sub_2186F20D4(0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_219C09EC0;
  if (v3)
  {
    v10 = sub_219BF7214();
  }

  else
  {
    v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v8 < 0 || (v8 & 0x4000000000000000) != 0)
  {
    v16 = v10;
    result = sub_219BF7214();
    v13 = v16 - result;
    if (!__OFSUB__(v16, result))
    {
      goto LABEL_27;
    }
  }

  else
  {
    result = *(v8 + 16);
    v12 = __OFSUB__(v10, result);
    v13 = v10 - result;
    if (!v12)
    {
LABEL_27:
      v14 = MEMORY[0x277D83B88];
      v15 = MEMORY[0x277D83C10];
      *(v9 + 56) = MEMORY[0x277D83B88];
      *(v9 + 64) = v15;
      *(v9 + 32) = v13;
      *(v9 + 96) = v14;
      *(v9 + 104) = v15;
      *(v9 + 72) = result;
      sub_219BF6214();
      sub_219BE5314("ForYou emitter filtered %d sponsored items.  %ld items remain.", v17, v18);

      return v8;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_218A416E0(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  v92 = a5;
  v84 = a2;
  v9 = sub_219BEE6F4();
  v82 = *(v9 - 8);
  v83 = v9;
  MEMORY[0x28223BE20](v9);
  v81 = &v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_219BEFBD4();
  v87 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v88 = &v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_219BF0BD4();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v78 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = type metadata accessor for ForYouTagFeedGroupEmitter(0);
  v90 = v5;
  type metadata accessor for ForYouTagFeedGroupKnobs(0);
  v103 = a1;
  sub_219BEF134();
  sub_219BEF524();
  (*(v13 + 8))(v15, v12);
  v16 = v93;
  if (qword_280E8D7F8 != -1)
  {
    swift_once();
  }

  v17 = qword_280F61708;
  sub_2186F20D4(0);
  v85 = v18;
  v19 = swift_allocObject();
  v80 = xmmword_219C0B8C0;
  *(v19 + 16) = xmmword_219C0B8C0;
  if (a3 >> 62)
  {
    v20 = sub_219BF7214();
  }

  else
  {
    v20 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v21 = v92;
  v22 = MEMORY[0x277D83B88];
  v23 = MEMORY[0x277D83C10];
  *(v19 + 56) = MEMORY[0x277D83B88];
  *(v19 + 64) = v23;
  *(v19 + 32) = v20;
  v24 = *(v21 + 16);
  *(v19 + 96) = v22;
  *(v19 + 104) = v23;
  *(v19 + 72) = v24;
  if (a4 >> 62)
  {
    v76 = v23;
    v77 = sub_219BF7214();
    v23 = v76;
    v21 = v92;
    v22 = MEMORY[0x277D83B88];
    v25 = v77;
  }

  else
  {
    v25 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v78 = v16;
  v79 = v25;
  *(v19 + 136) = v22;
  *(v19 + 144) = v23;
  *(v19 + 112) = v25;
  sub_219BF6214();
  v92 = v17;
  sub_219BE5314("ForYou emitter will consider %ld available, %ld local news and %ld evergreen items", v78, v79, v80);

  v26 = MEMORY[0x277D84F90];
  if (v24)
  {
    *&v93 = MEMORY[0x277D84F90];
    sub_219BF73F4();
    v27 = v21 + 48;
    do
    {
      v27 += 24;
      swift_unknownObjectRetain();
      sub_219BF73D4();
      sub_219BF7414();
      sub_219BF7424();
      sub_219BF73E4();
      --v24;
    }

    while (v24);
    v26 = v93;
  }

  *&v93 = a3;

  sub_2191ED6C8(v26);
  v28 = v93;
  if (v93 >> 62)
  {
    sub_2186D6710(0, &qword_280E8DF60, &protocolRef_FCFeedPersonalizingItem);

    v30 = sub_219BF7534();
  }

  else
  {
    v29 = v93 & 0xFFFFFFFFFFFFFF8;

    sub_219BF7924();
    sub_2186D6710(0, &qword_280E8DF60, &protocolRef_FCFeedPersonalizingItem);
    v30 = v28;
    if (!swift_dynamicCastMetatype())
    {
      v36 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v30 = v28;
      if (v36)
      {
        v37 = v29 + 32;
        while (1)
        {
          v101 = &unk_282B48780;
          if (!swift_dynamicCastObjCProtocolConditional())
          {
            break;
          }

          v37 += 8;
          if (!--v36)
          {
            v30 = v28;
            goto LABEL_13;
          }
        }

        v30 = v29 | 1;
      }
    }
  }

LABEL_13:
  if (a4 >> 62)
  {
    sub_2186D6710(0, &qword_280E8DF60, &protocolRef_FCFeedPersonalizingItem);

    v31 = sub_219BF7534();

    a4 = v31;
  }

  else
  {

    sub_219BF7924();
    sub_2186D6710(0, &qword_280E8DF60, &protocolRef_FCFeedPersonalizingItem);
  }

  *&v93 = v30;
  sub_2191ED9E0(a4);
  v32 = v93;
  v33 = v103;
  v34 = v91;
  sub_219BEF164();
  if (v34)
  {

    return v33;
  }

  v102[4] = v97;
  v102[5] = v98;
  v102[6] = v99;
  v102[7] = v100;
  v102[0] = v93;
  v102[1] = v94;
  v102[2] = v95;
  v102[3] = v96;
  v35 = sub_218A3EB64(v32, v33, v102);

  sub_218A410EC(v102);
  v38 = swift_allocObject();
  v39 = v38;
  *(v38 + 16) = v80;
  v91 = v35;
  if (v35 >> 62)
  {
    v40 = sub_219BF7214();
  }

  else
  {
    v40 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v41 = v82;
  v42 = v86;
  v43 = MEMORY[0x277D83B88];
  v39[7] = MEMORY[0x277D83B88];
  v44 = MEMORY[0x277D83C10];
  v39[4] = v40;
  v39[12] = v43;
  v39[13] = v44;
  v45 = v79;
  v39[8] = v44;
  v39[9] = v45;
  if (v28 >> 62)
  {
    v46 = sub_219BF7214();
  }

  else
  {
    v46 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v39[17] = MEMORY[0x277D83B88];
  v39[18] = MEMORY[0x277D83C10];
  v39[14] = v46;
  sub_219BF6214();
  sub_219BE5314("ForYou emitter pre-filter will consider %ld filtered items, derived from %ld evergreen items and %ld available headlines", v78, v79, v80);

  v47 = [sub_219BF6394() isFoodHub];
  swift_unknownObjectRelease();
  v48 = MEMORY[0x277D32938];
  if (!v47)
  {
    v48 = MEMORY[0x277D32968];
  }

  v49 = v87;
  v50 = v88;
  v51 = v89;
  (*(v87 + 104))(v88, *v48, v89);
  v52 = (v90 + *(v42 + 32));
  v53 = v52[3];
  v82 = v52[4];
  __swift_project_boxed_opaque_existential_1(v52, v53);
  v54 = v81;
  (*(v49 + 16))(v81, v50, v51);
  v55 = v83;
  (*(v41 + 104))(v54, *MEMORY[0x277D320E8], v83);
  v56 = sub_219BF0004();
  (*(v41 + 8))(v54, v55);

  __swift_project_boxed_opaque_existential_1((v90 + *(v86 + 44)), *(v90 + *(v86 + 44) + 24));
  if ((sub_219BE4ED4() & 1) == 0)
  {

    v67 = sub_219BF61F4();
    sub_219BE5314("ForYou is unavailable", 21, 2, &dword_2186C1000, v92, v67, MEMORY[0x277D84F90]);
    v33 = sub_219BEEDD4();
    sub_2186F7CD8(&qword_280E917E0, MEMORY[0x277D32430], MEMORY[0x277D32438]);
    swift_allocError();
    v65 = v68;
    v66 = MEMORY[0x277D32408];
    goto LABEL_36;
  }

  v57 = v56;
  v58 = *(v56 + 16);
  v59 = v78;
  v60 = v92;
  if (v58 < v78)
  {

    v61 = swift_allocObject();
    *(v61 + 16) = xmmword_219C09EC0;
    v62 = MEMORY[0x277D83B88];
    *(v61 + 56) = MEMORY[0x277D83B88];
    v63 = MEMORY[0x277D83C10];
    *(v61 + 64) = MEMORY[0x277D83C10];
    *(v61 + 72) = v59;
    *(v61 + 32) = v58;
    *(v61 + 96) = v62;
    *(v61 + 104) = v63;
    sub_219BF6214();
    sub_219BE5314("ForYou emitter has insufficient items remaining.  items=%ld required=%d", v78, v79);

    v33 = sub_219BEEDD4();
    sub_2186F7CD8(&qword_280E917E0, MEMORY[0x277D32430], MEMORY[0x277D32438]);
    swift_allocError();
    v65 = v64;
    *v64 = v59;
    v64[1] = v58;
    v66 = MEMORY[0x277D32400];
LABEL_36:
    (*(*(v33 - 8) + 104))(v65, *v66, v33);
    swift_willThrow();
    (*(v87 + 8))(v88, v89);
    return v33;
  }

  v70 = sub_218A3ED8C(v57);

  if (!*(v70 + 16))
  {

    v72 = sub_219BF61F4();
    sub_219BE5314("ForYou emitter failed to score items", 36, 2, &dword_2186C1000, v60, v72, MEMORY[0x277D84F90]);
    v33 = sub_219BEEDD4();
    sub_2186F7CD8(&qword_280E917E0, MEMORY[0x277D32430], MEMORY[0x277D32438]);
    swift_allocError();
    v65 = v73;
    v66 = MEMORY[0x277D323B0];
    goto LABEL_36;
  }

  sub_219BEF864();

  sub_219BEF824();
  v71 = v88;
  v33 = sub_218A3EFE0(v70, v103, v88);

  v74 = v87;
  if (*(v33 + 16))
  {
    (*(v87 + 8))(v71, v89);
  }

  else
  {

    v33 = sub_219BEEDD4();
    sub_2186F7CD8(&qword_280E917E0, MEMORY[0x277D32430], MEMORY[0x277D32438]);
    swift_allocError();
    (*(*(v33 - 8) + 104))(v75, *MEMORY[0x277D32428], v33);
    swift_willThrow();

    (*(v74 + 8))(v71, v89);
  }

  return v33;
}

void sub_218A42380(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4();
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_218A4247C(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4)
{
  if (!*a2)
  {
    sub_2186D6710(255, a3, a4);
    v5 = sub_219BF5B14();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_218A424D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2186E4530(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_218A42544(unint64_t *a1, unint64_t *a2, unint64_t *a3, void *a4)
{
  result = *a1;
  if (!result)
  {
    sub_218A4247C(255, a2, a3, a4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_218A42594()
{
  result = qword_280E8F840;
  if (!qword_280E8F840)
  {
    sub_218824BC0(255, &qword_280E8F860, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E8F840);
  }

  return result;
}

uint64_t sub_218A42648(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ForYouTagFeedGroupKnobs(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_218A426AC(uint64_t a1)
{
  sub_2188317B0();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_218A42708()
{
  result = qword_280EE79F0;
  if (!qword_280EE79F0)
  {
    sub_2186E4530(255, &qword_280EE79E8, type metadata accessor for ForYouTagFeedGroupEmitter, MEMORY[0x277D6CC20]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE79F0);
  }

  return result;
}

uint64_t sub_218A42794()
{

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_218A42804()
{
  sub_21896FA3C(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = v23 - v6;
  v9 = *(v0 + 16);
  v8 = *(v0 + 24);
  v10 = sub_219BDFA44();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v32 = 0;
  memset(v31, 0, sizeof(v31));
  v30 = 0;
  memset(v29, 0, sizeof(v29));
  v28 = v9;
  sub_2187B14CC(v29, &v24, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
  if (v25)
  {
    sub_21875F93C(&v24, v26);
    if (qword_280ED32D0 != -1)
    {
      swift_once();
    }

    v12 = qword_280ED32D8;
    v11 = qword_280ED32E0;
    v13 = qword_280ED32E8;

    sub_2188202A8(v11);
    __swift_destroy_boxed_opaque_existential_1(v26);
  }

  else
  {
    sub_2187448D0(&v24, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
    if (qword_280ED32D0 != -1)
    {
      swift_once();
    }

    v12 = qword_280ED32D8;
    v11 = qword_280ED32E0;
    v13 = qword_280ED32E8;

    sub_2188202A8(v11);
  }

  v23[2] = 0xF000000000000028;
  v25 = sub_219BDD274();
  *&v24 = v8;
  sub_2189B4E2C(v7, v4);
  sub_2187B14CC(v31, v26, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
  v14 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v15 = (v3 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v15 + 47) & 0xFFFFFFFFFFFFFFF8;
  v23[0] = v7;
  v17 = swift_allocObject();
  *(v17 + 16) = v8;
  sub_2189B4EAC(v4, v17 + v14);
  v18 = v17 + v15;
  v19 = v26[1];
  *v18 = v26[0];
  *(v18 + 16) = v19;
  *(v18 + 32) = v27;
  v20 = (v17 + v16);
  v21 = (v17 + ((v16 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v20 = 0;
  v20[1] = 0;
  *v21 = v12;
  v21[1] = v11;
  v21[2] = v13;
  swift_retain_n();

  sub_2188202A8(v11);
  sub_2186CF94C(0);
  sub_2189B4DD4();
  sub_219BEB464();

  sub_2187FABEC(v11, v13);
  sub_2187448D0(v29, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
  sub_2187448D0(v31, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
  sub_218A42D80(v23[0]);
  return sub_2187448D0(&v24, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2186F8278);
}

uint64_t sub_218A42D80(uint64_t a1)
{
  sub_21896FA3C(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_218A42F20(void *a1)
{

  v2 = sub_219BF53D4();

  v3 = [a1 objectForKey_];

  if (v3)
  {
    sub_219BF70B4();
    swift_unknownObjectRelease();
    sub_218751558(&v5, &v6);
    type metadata accessor for TodayViewController();
    swift_dynamicCast();
    sub_219BE8664();
    sub_219BE7BC4();
  }

  else
  {
    __break(1u);
  }
}

double sub_218A43054()
{
  sub_21896FA3C(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v25 - v6;
  v8 = *(v0 + 16);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_219C14A10;
  v27 = v9;
  v10 = v9 | 0x1000000000000004;
  v11 = *(v0 + 24);
  v12 = sub_219BDFA44();
  (*(*(v12 - 8) + 56))(v7, 1, 1, v12);
  v37 = 0;
  memset(v36, 0, sizeof(v36));
  v35 = 0;
  memset(v34, 0, sizeof(v34));
  v33 = v8;
  sub_2187B14CC(v34, &v29, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
  if (v30)
  {
    sub_21875F93C(&v29, v31);
    if (qword_280ED32D0 != -1)
    {
      swift_once();
    }

    v14 = qword_280ED32D8;
    v13 = qword_280ED32E0;
    v15 = qword_280ED32E8;

    sub_2188202A8(v13);
    __swift_destroy_boxed_opaque_existential_1(v31);
  }

  else
  {
    sub_2187448D0(&v29, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
    if (qword_280ED32D0 != -1)
    {
      swift_once();
    }

    v14 = qword_280ED32D8;
    v13 = qword_280ED32E0;
    v15 = qword_280ED32E8;

    sub_2188202A8(v13);
  }

  v28 = v10;
  v30 = sub_219BDD274();
  *&v29 = v11;
  sub_2189B4E2C(v7, v4);
  sub_2187B14CC(v36, v31, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
  v16 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v17 = (v3 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v17 + 47) & 0xFFFFFFFFFFFFFFF8;
  v26 = v7;
  v19 = swift_allocObject();
  *(v19 + 16) = v11;
  sub_2189B4EAC(v4, v19 + v16);
  v20 = v19 + v17;
  v21 = v31[1];
  *v20 = v31[0];
  *(v20 + 16) = v21;
  *(v20 + 32) = v32;
  v22 = (v19 + v18);
  v23 = (v19 + ((v18 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v22 = 0;
  v22[1] = 0;
  *v23 = v14;
  v23[1] = v13;
  v23[2] = v15;
  swift_retain_n();

  sub_2188202A8(v13);
  sub_2186CF94C(0);
  sub_2189B4DD4();
  sub_219BEB464();

  sub_2187FABEC(v13, v15);
  sub_2187448D0(v34, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
  sub_2187448D0(v36, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
  sub_218A42D80(v26);
  sub_2187448D0(&v29, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2186F8278);

  return result;
}

uint64_t sub_218A43618(uint64_t a1, uint64_t a2)
{
  v55 = a2;
  v3 = MEMORY[0x277D83D88];
  sub_218A45220(0, &qword_280E90380, MEMORY[0x277D339F0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v56 = &v48 - v5;
  sub_218A45220(0, &qword_280E90150, MEMORY[0x277D33EC8], v3);
  MEMORY[0x28223BE20](v6 - 8);
  v54 = &v48 - v7;
  sub_218A45220(0, &qword_280E919D8, sub_2186F6D38, v3);
  MEMORY[0x28223BE20](v8 - 8);
  v50 = &v48 - v9;
  sub_2186EEE6C(0, &qword_280E92618, MEMORY[0x277D31C68]);
  v49 = v10;
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v48 = &v48 - v12;
  v13 = sub_219BF2AB4();
  v64 = *(v13 - 8);
  v65 = v13;
  MEMORY[0x28223BE20](v13);
  v63 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186F97D4(0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_219BEF554();
  v60 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v19 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v48 - v21;
  v23 = type metadata accessor for ArticleListHistoryFeedGroupConfigData(0);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = &v48 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(a1 + OBJC_IVAR____TtC7NewsUI234ArticleListHistoryFeedGroupEmitter_formatService + 24);
  v51 = *(a1 + OBJC_IVAR____TtC7NewsUI234ArticleListHistoryFeedGroupEmitter_formatService + 32);
  v52 = v26;
  v53 = __swift_project_boxed_opaque_existential_1((a1 + OBJC_IVAR____TtC7NewsUI234ArticleListHistoryFeedGroupEmitter_formatService), v26);
  sub_2186EED10(0);
  v57 = v25;
  sub_219BEDD14();
  v58 = v22;
  sub_219BEDCC4();
  v59 = v19;
  sub_219BEDCC4();
  v27 = sub_219BEE5D4();
  v28 = *(*(v27 - 8) + 56);
  v61 = v17;
  v28(v17, 1, 1, v27);
  (*(v11 + 16))(v48, v55, v49);
  v29 = OBJC_IVAR____TtC7NewsUI234ArticleListHistoryFeedGroupEmitter_knobs;
  sub_2186F6D38(0);
  v31 = v30;
  v32 = *(v30 - 8);
  v33 = v50;
  (*(v32 + 16))(v50, a1 + v29, v30);
  (*(v32 + 56))(v33, 0, 1, v31);
  v34 = v56;
  v35 = sub_219BF35D4();
  (*(*(v35 - 8) + 56))(v54, 1, 1, v35);
  sub_2186EEE6C(0, &unk_280E90060, MEMORY[0x277D33F88]);
  swift_allocObject();
  sub_219BF38E4();
  v36 = sub_219BF2774();
  (*(*(v36 - 8) + 56))(v34, 1, 1, v36);
  v37 = qword_280E8D930;
  *MEMORY[0x277D30B68];
  if (v37 != -1)
  {
    swift_once();
  }

  qword_280F617D8;
  v38 = v63;
  sub_219BF2A84();
  v40 = v57;
  v39 = v58;
  v41 = v59;
  v42 = v61;
  v43 = sub_218F0AF50(v57, 0x73656C6369747261, 0xE800000000000000, v58, v59, MEMORY[0x277D84F90], v61, v38, v52, v51);
  (*(v64 + 8))(v38, v65);
  sub_218A452EC(v42, sub_2186F97D4);
  v44 = *(v60 + 8);
  v45 = v62;
  v44(v41, v62);
  v44(v39, v45);
  v46 = sub_219BF1934();
  (*(*(v46 - 8) + 8))(v40, v46);
  return v43;
}

uint64_t sub_218A43D98(uint64_t a1)
{
  v2 = sub_219BED8D4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2, v4);
  v7 = type metadata accessor for FormatGroupFeedGroupEmitterCursor(0);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + OBJC_IVAR____TtC7NewsUI233FormatGroupFeedGroupEmitterCursor_formatGroup, v6, v2);
  v10[3] = v7;
  v10[0] = v8;
  sub_218A45220(0, &qword_280EE6910, sub_21880702C, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE3014();
}

uint64_t sub_218A43F0C(uint64_t a1)
{
  type metadata accessor for FormatGroupFeedGroupEmitterCursor(0);
  sub_219BE3204();

  v2 = sub_219BE2E54();
  sub_218A44FB0(0);
  sub_219BE2F64();

  v3 = swift_allocObject();
  *(v3 + 16) = sub_218A45018;
  *(v3 + 24) = v1;

  v4 = sub_219BE2E54();
  sub_218A45154(0, qword_280ED8678, type metadata accessor for FormatGroupFeedGroupEmitterCursor);
  sub_219BE2F64();

  v5 = sub_219BE2E54();
  sub_218A4505C(0);
  sub_219BE2F64();

  v6 = sub_219BE2E54();
  v7 = sub_219BE3054();

  return v7;
}

uint64_t sub_218A440E0(uint64_t *a1)
{
  sub_219BEF0C4();

  v1 = sub_219BE2E54();
  sub_218A44FB0(0);
  v2 = sub_219BE2F74();

  return v2;
}

double sub_218A4417C@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  *a3 = a2;
  a3[1] = v3;
  a3[2] = v4;

  return result;
}

uint64_t sub_218A441BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a4;
  *(v6 + 24) = a1;

  v7 = sub_219BE2E54();
  sub_218A45154(0, qword_280ED8678, type metadata accessor for FormatGroupFeedGroupEmitterCursor);
  v8 = sub_219BE2F74();

  return v8;
}

uint64_t sub_218A4427C@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X2>, char *a3@<X8>)
{
  v7 = sub_219BDBD64();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  if (v11 >> 62)
  {
    if (sub_219BF7214())
    {
      goto LABEL_3;
    }
  }

  else if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    sub_218A45154(0, qword_280ED8678, type metadata accessor for FormatGroupFeedGroupEmitterCursor);
    v24[1] = v3;
    v13 = *(v12 + 48);
    sub_219BDBD54();
    v14 = sub_219BDBD44();
    v16 = v15;
    (*(v8 + 8))(v10, v7);
    v17 = OBJC_IVAR____TtC7NewsUI233FormatGroupFeedGroupEmitterCursor_formatGroup;
    v18 = type metadata accessor for ArticleListHistoryFeedGroup(0);
    v19 = *(v18 + 20);
    v20 = sub_219BED8D4();
    (*(*(v20 - 8) + 16))(&a3[v19], a2 + v17, v20);
    *a3 = v14;
    *(a3 + 1) = v16;
    *&a3[*(v18 + 24)] = v11;
    *&a3[v13] = a2;
  }

  v22 = sub_219BEEDD4();
  sub_2186EEDDC(&qword_280E917E0, MEMORY[0x277D32430], MEMORY[0x277D32438]);
  swift_allocError();
  (*(*(v22 - 8) + 104))(v23, *MEMORY[0x277D323A8], v22);
  return swift_willThrow();
}

uint64_t sub_218A444E8(uint64_t a1)
{
  sub_218A4505C(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A45154(0, qword_280ED8678, type metadata accessor for FormatGroupFeedGroupEmitterCursor);
  v6 = *(a1 + *(v5 + 48));
  sub_218A45154(0, &qword_27CC0CF68, sub_21880702C);
  v8 = &v4[*(v7 + 48)];
  sub_218A45284(a1, v4, type metadata accessor for HistoryFeedGroup);
  *(v8 + 3) = type metadata accessor for FormatGroupFeedGroupEmitterCursor(0);
  *v8 = v6;
  swift_storeEnumTagMultiPayload();
  sub_218A45220(0, &unk_280EE6C50, sub_218A4505C, MEMORY[0x277D6CF30]);
  swift_allocObject();

  return sub_219BE3014();
}

uint64_t sub_218A44664(uint64_t a1)
{
  sub_218A4505C(0);
  MEMORY[0x28223BE20](v2);
  v4 = (&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = 0;
  v8 = 0xE000000000000000;
  sub_219BF7314();
  MEMORY[0x21CECC330](0xD00000000000002CLL, 0x8000000219CE0FA0);
  v9 = a1;
  sub_218A450F0();
  sub_219BF7484();
  v5 = v8;
  *v4 = v7;
  v4[1] = v5;
  swift_storeEnumTagMultiPayload();
  sub_218A45220(0, &unk_280EE6C50, sub_218A4505C, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE3014();
}

uint64_t sub_218A447BC()
{
  v1 = OBJC_IVAR____TtC7NewsUI234ArticleListHistoryFeedGroupEmitter_config;
  sub_2186EED10(0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_218A452EC(v0 + OBJC_IVAR____TtC7NewsUI234ArticleListHistoryFeedGroupEmitter_knobs, type metadata accessor for ArticleListHistoryFeedGroupKnobs);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC7NewsUI234ArticleListHistoryFeedGroupEmitter_formatService));

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ArticleListHistoryFeedGroupEmitter(uint64_t a1)
{
  result = qword_280EA1418;
  if (!qword_280EA1418)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_218A448E0(uint64_t a1)
{
  sub_2186EED10(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for ArticleListHistoryFeedGroupKnobs(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_218A449B4(uint64_t a1)
{
  sub_219BED8D4();
  sub_219BE3204();
  v1 = sub_219BE2E54();
  sub_21880702C();
  v2 = sub_219BE2F64();

  return v2;
}

uint64_t sub_218A44A84@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC7NewsUI234ArticleListHistoryFeedGroupEmitter_config;
  sub_2186EED10(0);
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_218A44B00@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC7NewsUI234ArticleListHistoryFeedGroupEmitter_knobs;
  a1[3] = type metadata accessor for ArticleListHistoryFeedGroupKnobs(0);
  a1[4] = sub_2186EEDDC(&qword_280EA71F0, type metadata accessor for ArticleListHistoryFeedGroupKnobs, &unk_219CCAE3C);
  a1[5] = sub_2186EEDDC(&qword_27CC0CF70, type metadata accessor for ArticleListHistoryFeedGroupKnobs, &unk_219CCAE14);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_218A45284(v3 + v4, boxed_opaque_existential_1, type metadata accessor for ArticleListHistoryFeedGroupKnobs);
}

uint64_t sub_218A44C04@<X0>(uint64_t *a2@<X8>)
{
  sub_218A45220(0, &qword_280E8B6A0, sub_2188317B0, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09BA0;
  *(inited + 32) = 0x696669746E656469;
  *(inited + 40) = 0xEA00000000007265;
  sub_2186EED10(0);
  v4 = sub_219BEDCA4();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v4;
  *(inited + 56) = v5;
  sub_218831A70(inited);
  swift_setDeallocating();
  sub_218A452EC(inited + 32, sub_2188317B0);
  sub_218A4534C(0);
  a2[3] = v6;
  a2[4] = sub_2186EEDDC(&unk_280EE7718, sub_218A4534C, MEMORY[0x277D6CC28]);
  __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_219BE2334();
}

uint64_t sub_218A44D8C(uint64_t a1)
{
  sub_2186EEDDC(&qword_280EA1430, type metadata accessor for ArticleListHistoryFeedGroupEmitter, &unk_219C14AF8);

  return sub_219BE2324();
}

void sub_218A44FB0(uint64_t a1)
{
  if (!qword_280EE2A48)
  {
    type metadata accessor for FormatGroupFeedGroupEmitterCursor(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_280EE2A48);
    }
  }
}

void sub_218A4505C(uint64_t a1)
{
  if (!qword_280E916F8)
  {
    type metadata accessor for HistoryFeedGroup(255);
    sub_2186EEDDC(&qword_280ED8740, type metadata accessor for HistoryFeedGroup, &unk_219C1DCC0);
    v1 = sub_219BEF1A4();
    if (!v2)
    {
      atomic_store(v1, &qword_280E916F8);
    }
  }
}

unint64_t sub_218A450F0()
{
  result = qword_280E8B580;
  if (!qword_280E8B580)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280E8B580);
  }

  return result;
}

void sub_218A45154(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    type metadata accessor for HistoryFeedGroup(255);
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_218A45220(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_218A45284(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_218A452EC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_218A45380()
{
  v8 = sub_219BF6694();
  v0 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v2 = v7 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_219BF6674();
  MEMORY[0x28223BE20](v3);
  v4 = sub_219BED1D4();
  MEMORY[0x28223BE20](v4 - 8);
  v7[1] = sub_2186C6148(0, &qword_280E8E3B0, 0x277D85C78);
  sub_219BED1A4();
  v9 = MEMORY[0x277D84F90];
  sub_218A474D0(&qword_280E8E3C0, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  v5 = MEMORY[0x277D85230];
  sub_218A47408(0, &qword_280E8EC40, MEMORY[0x277D85230], MEMORY[0x277D83940]);
  sub_21875B1AC(&qword_280E8EC30, &qword_280E8EC40, v5);
  sub_219BF7164();
  (*(v0 + 104))(v2, *MEMORY[0x277D85260], v8);
  result = sub_219BF66D4();
  qword_280ED9738 = result;
  return result;
}

uint64_t sub_218A45604(uint64_t a1, uint64_t a2, char a3, double a4, double a5)
{
  *(v6 + 256) = v5;
  *(v6 + 240) = a4;
  *(v6 + 248) = a5;
  *(v6 + 312) = a3;
  *(v6 + 224) = a1;
  *(v6 + 232) = a2;
  return MEMORY[0x2822009F8](sub_218A45630, 0, 0);
}

uint64_t sub_218A45630()
{
  v1 = *(v0 + 312);
  if ((v1 - 1) < 2)
  {
    v2.n128_f64[0] = sub_218A472B0(*(v0 + 224), *(v0 + 232), v1);
    v3 = *(v0 + 224);
LABEL_15:
    v56 = *(v0 + 8);

    return v56(v3, v2);
  }

  if (!*(v0 + 312))
  {
    v4 = sub_219BF53D4();
    v5 = [objc_opt_self() imageNamed_];

    v3 = v5;
    if (!v5)
    {
      v3 = [objc_opt_self() welcomeToNewsIcon];
    }

    goto LABEL_15;
  }

  v6 = *(v0 + 256);
  v7 = [*(v0 + 224) groupTitleColor];
  v8 = *(v6 + 56);
  swift_unknownObjectRetain();
  if (v7)
  {
    v9 = [v7 ne_color];

    type metadata accessor for TopicColorFeedNavImageStyler();
    v10 = swift_allocObject();
    *(v10 + 16) = v9;
    *(v10 + 24) = v8;
    v8 = v10;
  }

  *(v0 + 264) = v8;
  v12 = *(v0 + 240);
  v11 = *(v0 + 248);
  v13 = *(v0 + 224);
  v14 = objc_opt_self();
  swift_unknownObjectRetain();
  v15 = [v14 currentTraitCollection];
  [v15 displayScale];
  v17 = v16;

  v18 = type metadata accessor for FeedNavImageAssetHandle();
  v19 = objc_allocWithZone(v18);
  v20 = &v19[OBJC_IVAR___NEFeedNavImageAssetHandle_filePath];
  *v20 = 0;
  *(v20 + 1) = 0;
  *&v19[OBJC_IVAR___NEFeedNavImageAssetHandle_fallbackImage] = 0;
  *&v19[OBJC_IVAR___NEFeedNavImageAssetHandle_tag] = v13;
  v21 = swift_unknownObjectRetain();
  v22 = sub_219352488(v21);
  v23 = &v19[OBJC_IVAR___NEFeedNavImageAssetHandle_uniqueKey];
  *v23 = v22;
  v23[1] = v24;
  v25 = &v19[OBJC_IVAR___NEFeedNavImageAssetHandle_feedNavImageSize];
  *v25 = v12;
  *(v25 + 1) = v11;
  *&v19[OBJC_IVAR___NEFeedNavImageAssetHandle_feedNavImageStyler] = v8;
  *&v19[OBJC_IVAR___NEFeedNavImageAssetHandle_scale] = v17;
  *&v19[OBJC_IVAR___NEFeedNavImageAssetHandle_overrideFallbackColor] = 0;
  *(v0 + 168) = v19;
  *(v0 + 176) = v18;
  v26 = objc_msgSendSuper2((v0 + 168), sel_init);
  *(v0 + 272) = v26;
  swift_unknownObjectRetain();
  v27 = v26;
  v28 = [v14 currentTraitCollection];
  [v28 displayScale];
  v30 = v29;

  v31 = [v14 currentTraitCollection];
  v32 = [v31 userInterfaceStyle];

  v33 = type metadata accessor for FeedNavImageProcessorRequest();
  v34 = swift_allocObject();
  *(v0 + 280) = v34;
  *(v34 + 24) = v27;
  sub_218A47408(0, &qword_280E8B718, sub_218A471D4, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09BA0;
  *(inited + 32) = 0xD000000000000014;
  *(inited + 40) = 0x8000000219CE0FF0;
  *(inited + 72) = v18;
  *(inited + 80) = sub_218A474D0(qword_280EC5350, type metadata accessor for FeedNavImageAssetHandle, &protocol conformance descriptor for FeedNavImageAssetHandle);
  *(inited + 48) = v27;
  v36 = v27;
  v37 = sub_2194AEC1C(inited);
  swift_setDeallocating();
  sub_218A4724C(inited + 32);
  *(v34 + 16) = v37;
  *(v34 + 32) = v12;
  *(v34 + 40) = v11;
  *(v34 + 48) = v30;
  [v8 cornerRadius];
  *(v34 + 56) = v38;
  [v8 cornerRadius];
  *(v34 + 64) = v39 != v12 * 0.5;
  v40 = *&v36[OBJC_IVAR___NEFeedNavImageAssetHandle_tag];
  if (!v40 || ![v40 asSports])
  {
    goto LABEL_12;
  }

  v41 = OBJC_IVAR___NEFeedNavImageAssetHandle_fallbackImage;
  swift_beginAccess();
  if (*&v36[v41])
  {
    swift_unknownObjectRelease();
LABEL_12:
    v42 = 0;
    goto LABEL_13;
  }

  swift_getObjectType();
  v42 = sub_219BF6264();
  swift_unknownObjectRelease();
LABEL_13:
  v43 = *(v0 + 256);
  v45 = *(v0 + 240);
  v44 = *(v0 + 248);
  *(v34 + 72) = v32;
  *(v34 + 80) = v42;
  v46 = &v36[OBJC_IVAR___NEFeedNavImageAssetHandle_uniqueKey];
  v47 = *&v36[OBJC_IVAR___NEFeedNavImageAssetHandle_uniqueKey + 8];
  *(v34 + 104) = *&v36[OBJC_IVAR___NEFeedNavImageAssetHandle_uniqueKey];
  *(v34 + 112) = v47;
  *(v34 + 120) = 0x3FF0000000000000;

  sub_219BF7314();
  *(v0 + 184) = 0;
  *(v0 + 192) = 0xE000000000000000;
  v48 = *v46;
  v49 = *(v46 + 1);

  MEMORY[0x21CECC330](v48, v49);

  MEMORY[0x21CECC330](45, 0xE100000000000000);
  *(v0 + 200) = v45;
  *(v0 + 208) = v44;
  type metadata accessor for CGSize(0);
  sub_219BF7484();
  MEMORY[0x21CECC330](45, 0xE100000000000000);
  v50 = sub_219BF5CA4();
  MEMORY[0x21CECC330](v50);

  MEMORY[0x21CECC330](45, 0xE100000000000000);
  v51 = sub_219BF5CA4();
  MEMORY[0x21CECC330](v51);

  MEMORY[0x21CECC330](45, 0xE100000000000000);
  v52 = sub_219BF68C4();
  MEMORY[0x21CECC330](v52);

  MEMORY[0x21CECC330](45, 0xE100000000000000);
  v53 = sub_219BF5CA4();
  MEMORY[0x21CECC330](v53);

  swift_unknownObjectRelease();
  v54 = *(v0 + 192);
  *(v34 + 88) = *(v0 + 184);
  *(v34 + 96) = v54;
  *(v34 + 128) = 1;
  __swift_project_boxed_opaque_existential_1((v43 + 16), *(v43 + 40));
  *(v0 + 128) = v33;
  *(v0 + 136) = sub_218A474D0(qword_280EB4690, type metadata accessor for FeedNavImageProcessorRequest, &unk_219C9FC80);
  *(v0 + 104) = v34;

  v55 = sub_219BE6264();
  __swift_destroy_boxed_opaque_existential_1((v0 + 104));
  if (v55)
  {

    swift_unknownObjectRelease();
    v3 = v55;
    goto LABEL_15;
  }

  v58 = *(v0 + 256);
  v59 = swift_task_alloc();
  *(v0 + 288) = v59;
  *(v59 + 16) = v58;
  *(v59 + 24) = v34;
  v60 = swift_task_alloc();
  *(v0 + 296) = v60;
  sub_2189EB4C0(0);
  *v60 = v0;
  v60[1] = sub_218A45DD8;

  return MEMORY[0x2822008A0](v0 + 216, 0, 0, 0xD00000000000001CLL, 0x8000000219CE1010, sub_218A472A8, v59, v61);
}

uint64_t sub_218A45DD8()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_218A45F6C;
  }

  else
  {

    v2 = sub_218A45EF4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_218A45EF4()
{
  v1 = v0[34];
  swift_unknownObjectRelease();

  v2 = v0[27];
  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_218A45F6C()
{
  v1 = *(v0 + 272);
  swift_unknownObjectRelease();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_218A45FF0(uint64_t a1, void *a2, uint64_t *a3)
{
  v6 = *a3;
  sub_218A472F0(0);
  v8 = v7;
  v9 = *(v7 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  __swift_project_boxed_opaque_existential_1(a2 + 2, a2[5]);
  v15[3] = v6;
  v15[4] = sub_218A474D0(qword_280EB4690, type metadata accessor for FeedNavImageProcessorRequest, &unk_219C9FC80);
  v15[0] = a3;
  (*(v9 + 16))(&v15[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v8);
  v11 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v12 = swift_allocObject();
  (*(v9 + 32))(v12 + v11, &v15[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);

  sub_219BE6254();

  return __swift_destroy_boxed_opaque_existential_1(v15);
}

uint64_t sub_218A461D8(void *a1, id a2)
{
  if (a1)
  {
    sub_218A472F0(0);
    v3 = a1;
    return sub_219BF5B64();
  }

  else
  {
    if (!a2)
    {
      v5 = sub_219BE66D4();
      sub_218A474D0(&qword_27CC0CF78, MEMORY[0x277D6D658], MEMORY[0x277D6D660]);
      swift_allocError();
      (*(*(v5 - 8) + 104))(v6, *MEMORY[0x277D6D650], v5);
      a2 = 0;
    }

    v7 = a2;
    sub_218A472F0(0);
    return sub_219BF5B54();
  }
}

void sub_218A462FC(void *a1, void *a2, uint64_t a3, uint64_t a4, int a5, double a6, double a7, double a8)
{
  v9 = v8;
  v67 = a5;
  v69 = a4;
  v68 = a3;
  v66 = sub_219BED174();
  v65 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v63 = v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_219BED1D4();
  v62 = *(v64 - 8);
  *&v16 = MEMORY[0x28223BE20](v64).n128_u64[0];
  v61 = v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = v9[7];
  v19 = [a2 traitCollection];
  [v19 displayScale];
  v21 = v20;

  v22 = [a2 traitCollection];
  v23 = [v22 userInterfaceStyle];

  v24 = type metadata accessor for FeedNavImageProcessorRequest();
  v25 = swift_allocObject();
  *(v25 + 24) = a1;
  sub_218A47408(0, &qword_280E8B718, sub_218A471D4, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09BA0;
  *(inited + 32) = 0xD000000000000014;
  *(inited + 40) = 0x8000000219CE0FF0;
  *(inited + 72) = type metadata accessor for FeedNavImageAssetHandle();
  *(inited + 80) = sub_218A474D0(qword_280EC5350, type metadata accessor for FeedNavImageAssetHandle, &protocol conformance descriptor for FeedNavImageAssetHandle);
  *(inited + 48) = a1;
  v27 = a1;
  v28 = sub_2194AEC1C(inited);
  swift_setDeallocating();
  sub_218A4724C(inited + 32);
  *(v25 + 16) = v28;
  *(v25 + 32) = a6;
  *(v25 + 40) = a7;
  *(v25 + 48) = v21;
  [v18 cornerRadius];
  *(v25 + 56) = v29;
  [v18 cornerRadius];
  *(v25 + 64) = v30 != a6 * 0.5;
  v31 = *&v27[OBJC_IVAR___NEFeedNavImageAssetHandle_tag];
  if (!v31 || ![v31 asSports])
  {
    goto LABEL_5;
  }

  v32 = OBJC_IVAR___NEFeedNavImageAssetHandle_fallbackImage;
  swift_beginAccess();
  if (*&v27[v32])
  {
    swift_unknownObjectRelease();
LABEL_5:
    v33 = 0;
    goto LABEL_6;
  }

  swift_getObjectType();
  v33 = sub_219BF6264();
  swift_unknownObjectRelease();
LABEL_6:
  *(v25 + 72) = v23;
  *(v25 + 80) = v33;
  v34 = *&v27[OBJC_IVAR___NEFeedNavImageAssetHandle_uniqueKey];
  v35 = *&v27[OBJC_IVAR___NEFeedNavImageAssetHandle_uniqueKey + 8];
  *(v25 + 104) = v34;
  *(v25 + 112) = v35;
  *(v25 + 120) = a8;
  aBlock = 0;
  v72 = 0xE000000000000000;

  sub_219BF7314();
  MEMORY[0x21CECC330](v34, v35);
  MEMORY[0x21CECC330](45, 0xE100000000000000);
  v77 = a6;
  v78 = a7;
  type metadata accessor for CGSize(0);
  sub_219BF7484();
  MEMORY[0x21CECC330](45, 0xE100000000000000);
  v36 = sub_219BF5CA4();
  MEMORY[0x21CECC330](v36);

  MEMORY[0x21CECC330](45, 0xE100000000000000);
  v37 = sub_219BF5CA4();
  MEMORY[0x21CECC330](v37);

  MEMORY[0x21CECC330](45, 0xE100000000000000);
  v38 = sub_219BF68C4();
  MEMORY[0x21CECC330](v38);

  MEMORY[0x21CECC330](45, 0xE100000000000000);
  v39 = sub_219BF5CA4();
  MEMORY[0x21CECC330](v39);

  v40 = v72;
  *(v25 + 88) = aBlock;
  *(v25 + 96) = v40;
  *(v25 + 128) = 1;
  __swift_project_boxed_opaque_existential_1(v9 + 2, v9[5]);
  v74 = v24;
  v41 = sub_218A474D0(qword_280EB4690, type metadata accessor for FeedNavImageProcessorRequest, &unk_219C9FC80);
  v75 = v41;
  aBlock = v25;

  v42 = sub_219BE6264();
  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  if (v42)
  {
    v43 = sub_219BF53D4();
    [a2 setAccessibilityLabel_];

    [a2 setImage_];
  }

  else
  {
    v44 = swift_allocObject();
    *(v44 + 16) = 1;
    v45 = &v27[OBJC_IVAR___NEFeedNavImageAssetHandle_filePath];
    swift_beginAccess();
    if (!*(v45 + 1))
    {
      v59 = v24;
      if (qword_280ED9730 != -1)
      {
        swift_once();
      }

      v60 = qword_280ED9738;
      v46 = swift_allocObject();
      v46[2] = v44;
      v46[3] = v27;
      v47 = v68;
      v46[4] = a2;
      v46[5] = v47;
      v46[6] = v69;
      v75 = sub_218A473F0;
      v76 = v46;
      aBlock = MEMORY[0x277D85DD0];
      v72 = 1107296256;
      v73 = sub_218793E0C;
      v74 = &block_descriptor_8;
      v48 = _Block_copy(&aBlock);
      v49 = v27;

      v50 = a2;

      v51 = v61;
      sub_219BED1A4();
      v70 = MEMORY[0x277D84F90];
      v58[1] = sub_218A474D0(&qword_280E927E0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      v52 = MEMORY[0x277D85198];
      sub_218A47408(0, &qword_280E8EFB0, MEMORY[0x277D85198], MEMORY[0x277D83940]);
      sub_21875B1AC(&qword_280E8EFA0, &qword_280E8EFB0, v52);
      v53 = v63;
      v54 = v66;
      sub_219BF7164();
      MEMORY[0x21CECD460](0, v51, v53, v48);
      _Block_release(v48);
      (*(v65 + 8))(v53, v54);
      (*(v62 + 8))(v51, v64);

      v24 = v59;
    }

    v75 = v41;
    v74 = v24;
    aBlock = v25;
    v55 = swift_allocObject();
    *(v55 + 16) = v44;
    *(v55 + 24) = v67 & 1;
    v56 = v68;
    *(v55 + 32) = a2;
    *(v55 + 40) = v56;
    *(v55 + 48) = v69;

    v57 = a2;

    sub_219BF5F74();

    __swift_destroy_boxed_opaque_existential_1(&aBlock);
  }
}

double sub_218A46C60(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  if (*(a1 + 16) == 1)
  {
    v10 = FeedNavImageAssetHandle.generateFallbackImage()();
    if (v10)
    {
      v11 = v10;
      v12 = swift_allocObject();
      v12[2] = a1;
      v12[3] = a3;
      v12[4] = a4;
      v12[5] = a5;
      v12[6] = v11;

      v13 = a3;

      v14 = v11;
      sub_219BE3494();
    }
  }

  return result;
}

void sub_218A46D3C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  if (*(a1 + 16) == 1)
  {
    v8 = sub_219BF53D4();
    [a2 setAccessibilityLabel_];

    [a2 setImage_];
  }
}

void sub_218A46DE0(void *a1, uint64_t a2, char a3, void *a4, uint64_t a5, uint64_t a6)
{
  if (a1)
  {
    swift_beginAccess();
    *(a2 + 16) = 0;
    v12 = a1;
    if (a3)
    {
      v13 = [a4 image];
      if (v13)
      {

        v14 = objc_opt_self();
        v15 = swift_allocObject();
        v15[2] = a4;
        v15[3] = a5;
        v15[4] = a6;
        v15[5] = v12;
        v31 = sub_218A47494;
        v32 = v15;
        aBlock = MEMORY[0x277D85DD0];
        v28 = 1107296256;
        v29 = sub_218793E0C;
        v30 = &block_descriptor_30_0;
        v16 = _Block_copy(&aBlock);
        v17 = v12;
        v18 = a4;

        [v14 transitionWithView:v18 duration:5308418 options:v16 animations:0 completion:0.5];
      }

      else
      {
        [a4 setAlpha_];
        v20 = sub_219BF53D4();
        [a4 setAccessibilityLabel_];

        [a4 setImage_];
        v21 = objc_opt_self();
        v22 = swift_allocObject();
        *(v22 + 16) = a4;
        v31 = sub_218A47480;
        v32 = v22;
        aBlock = MEMORY[0x277D85DD0];
        v28 = 1107296256;
        v29 = sub_218793E0C;
        v30 = &block_descriptor_18;
        v16 = _Block_copy(&aBlock);
        v23 = a4;

        v24 = swift_allocObject();
        *(v24 + 16) = v23;
        v31 = sub_218A47480;
        v32 = v24;
        aBlock = MEMORY[0x277D85DD0];
        v28 = 1107296256;
        v29 = sub_218A1DA70;
        v30 = &block_descriptor_24_0;
        v25 = _Block_copy(&aBlock);
        v26 = v23;

        [v21 animateWithDuration:65538 delay:v16 options:v25 animations:0.5 completion:0.0];

        _Block_release(v25);
      }

      _Block_release(v16);
    }

    else
    {
      v19 = sub_219BF53D4();
      [a4 setAccessibilityLabel_];

      [a4 setImage_];
    }
  }
}

id sub_218A47160(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_219BF53D4();
  [a1 setAccessibilityLabel_];

  return [a1 setImage_];
}

void sub_218A471D4(uint64_t a1)
{
  if (!qword_280E8F7F8)
  {
    sub_2186CFDE4(255, &qword_280EE5A70, MEMORY[0x277D6D608]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_280E8F7F8);
    }
  }
}

uint64_t sub_218A4724C(uint64_t a1)
{
  sub_218A471D4(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_218A472B0(void *a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 > 1u)
  {
    if (a3 != 2)
    {
      if (a3 == 3)
      {
        swift_unknownObjectRetain();
      }

      return result;
    }

LABEL_8:
    v4 = a1;
    return result;
  }

  if (!a3)
  {

    return result;
  }

  if (a3 == 1)
  {
    goto LABEL_8;
  }

  return result;
}

void sub_218A472F0(uint64_t a1)
{
  if (!qword_280E8EAB8)
  {
    sub_2189EB4C0(255);
    sub_2186CFDE4(255, &qword_280E8B580, MEMORY[0x277D84948]);
    v1 = sub_219BF5B74();
    if (!v2)
    {
      atomic_store(v1, &qword_280E8EAB8);
    }
  }
}

uint64_t sub_218A47370(void *a1, void *a2)
{
  sub_218A472F0(0);

  return sub_218A461D8(a1, a2);
}

void sub_218A47408(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_218A474D0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_218A4752C()
{
  swift_unknownObjectRelease();

  v1 = OBJC_IVAR____TtC7NewsUI213TodayFeedPool_feedConfigData;
  v2 = sub_219BDF6C4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t sub_218A47704()
{
  sub_218A4752C();

  return swift_deallocClassInstance();
}

char *sub_218A47764@<X0>(char **a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_218A47790(a2);
  *a1 = result;
  return result;
}

char *sub_218A47790(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v359 = v2;
  v356 = v4;
  v326 = sub_219BE1BF4();
  MEMORY[0x28223BE20](v326);
  v327 = &v308 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v347 = type metadata accessor for TodayFeedGroup(0);
  MEMORY[0x28223BE20](v347);
  v348 = &v308 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BDF6C4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v308 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v308 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v308 - v15;
  MEMORY[0x28223BE20](v17);
  v321 = &v308 - v18;
  MEMORY[0x28223BE20](v19);
  v355 = &v308 - v20;
  MEMORY[0x28223BE20](v21);
  v354 = &v308 - v22;
  sub_218A4AC34(0);
  MEMORY[0x28223BE20](v23 - 8);
  v320 = &v308 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v317 = &v308 - v26;
  MEMORY[0x28223BE20](v27);
  v319 = &v308 - v28;
  MEMORY[0x28223BE20](v29);
  v316 = &v308 - v30;
  MEMORY[0x28223BE20](v31);
  v325 = &v308 - v32;
  MEMORY[0x28223BE20](v33);
  v324 = &v308 - v34;
  MEMORY[0x28223BE20](v35);
  v318 = &v308 - v36;
  MEMORY[0x28223BE20](v37);
  v315 = &v308 - v38;
  MEMORY[0x28223BE20](v39);
  v346 = &v308 - v40;
  MEMORY[0x28223BE20](v41);
  v43 = &v308 - v42;
  MEMORY[0x28223BE20](v44);
  v46 = &v308 - v45;
  MEMORY[0x28223BE20](v47);
  v49 = &v308 - v48;
  v357 = a1;
  v50 = sub_2189943CC();
  v328 = v16;
  v322 = v13;
  if (v50 >> 62)
  {
    v307 = v50;
    v51 = sub_219BF7214();
    v50 = v307;
  }

  else
  {
    v51 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v323 = v10;
  v360 = v7;
  v358 = v8;
  if (v51)
  {
    v52 = v50;
    (*(v8 + 56))(v49, 1, 1, v7);
    v53 = v359;
    v54 = *(v359 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_recipes + 16);
    v368[0] = *(v359 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_recipes);
    v368[1] = v54;
    v368[2] = *(v359 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_recipes + 32);
    v369 = *(v359 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_recipes + 48);
    sub_218A4C76C(v368, v52, v362);

    v56 = v53[2];
    v55 = v53[3];
    v344 = v53[4];
    sub_218A4B394(v49, v46);
    v57 = *(v8 + 48);
    v58 = v57(v46, 1, v7);
    v345 = v43;
    v330 = v55;
    if (v58 == 1)
    {
      (*(v8 + 16))(v354, v53 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_feedConfigData, v7);
      v59 = v57(v46, 1, v7);
      swift_unknownObjectRetain();
      v60 = v55;
      if (v59 != 1)
      {
        sub_218A4E46C(v46, sub_218A4AC34);
      }
    }

    else
    {
      (*(v8 + 32))(v354, v46, v7);
      swift_unknownObjectRetain();
      v62 = v55;
    }

    v333 = *(v359 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_lazyFeedItems);
    v63 = v333;
    v65 = *(v359 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_headlines + 8);
    v338 = *(v359 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_headlines);
    v64 = v338;
    v67 = *(v359 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_headlines + 16);
    v66 = *(v359 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_headlines + 24);
    v340 = v65;
    v341 = v67;
    v68 = *(v359 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_headlines + 32);
    v69 = *(v359 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_headlines + 40);
    v342 = v66;
    v343 = v68;
    v70 = *(v359 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_headlines + 48);
    v71 = *(v359 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_tags);
    v351 = *(v359 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_tags + 8);
    v352 = v71;
    v72 = *(v359 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_tags + 24);
    v353 = *(v359 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_tags + 16);
    v349 = v72;
    v73 = *(v359 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_tags + 40);
    v339 = *(v359 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_tags + 32);
    v350 = v73;
    v74 = *(v359 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_myHeadlines);
    v334 = *(v359 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_forYou);
    v335 = v74;
    v75 = *(v359 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_suggestions);
    v336 = *(v359 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_missedStories);
    v337 = v75;
    v76 = *(v359 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_magazines);
    v331 = *(v359 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_tags + 48);
    v332 = v76;
    v77 = swift_allocObject();
    v78 = v330;
    v77[2] = v56;
    v77[3] = v78;
    v61 = v77;
    v77[4] = v344;
    (*(v358 + 32))(v77 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_feedConfigData, v354, v360);
    *(v61 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_lazyFeedItems) = v63;
    v79 = (v61 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_headlines);
    *v79 = v64;
    v79[1] = v65;
    v79[2] = v67;
    v79[3] = v66;
    v79[4] = v68;
    v79[5] = v69;
    v79[6] = v70;
    v80 = v61 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_recipes;
    *(v80 + 6) = v363;
    v81 = v362[1];
    *v80 = v362[0];
    *(v80 + 1) = v81;
    *(v80 + 2) = v362[2];
    v82 = (v61 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_tags);
    v83 = v351;
    *v82 = v352;
    v82[1] = v83;
    v85 = v349;
    v84 = v350;
    v82[2] = v353;
    v82[3] = v85;
    v82[4] = v339;
    v82[5] = v84;
    v86 = v332;
    v82[6] = v331;
    v87 = v335;
    *(v61 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_forYou) = v334;
    *(v61 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_myHeadlines) = v87;
    v88 = v337;
    *(v61 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_missedStories) = v336;
    *(v61 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_suggestions) = v88;
    *(v61 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_magazines) = v86;

    v43 = v345;
  }

  else
  {

    v61 = v359;
  }

  v89 = sub_2189943A0();
  v90 = v89;
  if (v89 >> 62)
  {
    v91 = sub_219BF7214();
  }

  else
  {
    v91 = *((v89 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v92 = v360;
  v93 = v358;
  if (v91)
  {
    v310 = *(v358 + 56);
    v311 = v358 + 56;
    v310(v43, 1, 1, v360);
    v94 = *(v359 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_headlines + 16);
    v366[0] = *(v359 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_headlines);
    v366[1] = v94;
    v366[2] = *(v359 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_headlines + 32);
    v367 = *(v359 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_headlines + 48);
    v329 = v90;
    sub_218A4CFB0(v366, v90, v364);
    v96 = v61[2];
    v95 = v61[3];
    v342 = v61[4];
    v97 = v43;
    v98 = v346;
    sub_218A4B394(v97, v346);
    v99 = *(v93 + 48);
    v100 = v99(v98, 1, v92);
    v350 = v96;
    v351 = v95;
    v312 = v99;
    v313 = v93 + 48;
    if (v100 == 1)
    {
      (*(v93 + 16))(v355, v61 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_feedConfigData, v92);
      v101 = v99(v98, 1, v92);
      swift_unknownObjectRetain();
      v102 = v95;
      if (v101 != 1)
      {
        sub_218A4E46C(v98, sub_218A4AC34);
      }
    }

    else
    {
      (*(v93 + 32))(v355, v98, v92);
      swift_unknownObjectRetain();
      v103 = v95;
    }

    v346 = *(v61 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_lazyFeedItems);
    v104 = *(v61 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_tags);
    v338 = *(v61 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_tags + 8);
    v339 = v104;
    v105 = *(v61 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_tags + 16);
    v354 = *(v61 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_tags + 24);
    v107 = *(v61 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_tags + 32);
    v106 = *(v61 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_tags + 40);
    v352 = v105;
    v353 = v107;
    v108 = *(v61 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_tags + 48);
    v330 = v106;
    v331 = v108;
    v109 = *(v61 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_recipes + 8);
    v332 = *(v61 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_recipes);
    v333 = v109;
    v110 = *(v61 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_recipes + 24);
    v334 = *(v61 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_recipes + 16);
    v335 = v110;
    v111 = *(v61 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_recipes + 40);
    v336 = *(v61 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_recipes + 32);
    v337 = v111;
    v112 = *(v61 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_forYou);
    v113 = *(v61 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_myHeadlines);
    v340 = *(v61 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_recipes + 48);
    v341 = v113;
    v114 = *(v61 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_missedStories);
    v343 = v112;
    v344 = v114;
    v345 = *(v61 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_suggestions);
    v349 = *(v61 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_magazines);

    sub_218A4EEDC(v364, &v361, sub_218A4E404);

    v115 = v330;

    v116 = v331;

    v117 = v332;

    v118 = v333;

    v119 = v334;

    v120 = v335;

    v121 = v336;

    v122 = v337;

    v61 = swift_allocObject();
    v123 = v351;
    v61[2] = v350;
    v61[3] = v123;
    v61[4] = v342;
    v124 = *(v358 + 32);
    v125 = v355;
    v355 = (v358 + 32);
    v314 = v124;
    v124(v61 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_feedConfigData, v125, v360);
    sub_218A4E46C(v364, sub_218A4E404);
    *(v61 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_lazyFeedItems) = v346;
    v126 = v61 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_headlines;
    *(v126 + 6) = v365;
    v127 = v364[1];
    *v126 = v364[0];
    *(v126 + 1) = v127;
    *(v126 + 2) = v364[2];
    v128 = (v61 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_recipes);
    *v128 = v117;
    v128[1] = v118;
    v128[2] = v119;
    v128[3] = v120;
    v128[4] = v121;
    v128[5] = v122;
    v129 = v339;
    v128[6] = v340;
    v130 = (v61 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_tags);
    v131 = v338;
    *v130 = v129;
    v130[1] = v131;
    v132 = v353;
    v133 = v354;
    v130[2] = v352;
    v130[3] = v133;
    v130[4] = v132;
    v130[5] = v115;
    v130[6] = v116;
    *(v61 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_forYou) = v343;
    *(v61 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_myHeadlines) = v341;
    v134 = v345;
    *(v61 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_missedStories) = v344;
    *(v61 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_suggestions) = v134;
    v135 = v348;
    *(v61 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_magazines) = v349;
    sub_218A4EEDC(v357, v135, type metadata accessor for TodayFeedGroup);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 4u:
        v309 = v61;
        v190 = v315;
        v191 = v360;
        v310(v315, 1, 1, v360);
        v192 = *(v359 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_forYou);
        v193 = swift_allocObject();
        v194 = v329;
        *(v193 + 16) = v192;
        *(v193 + 24) = v194;
        v361 = MEMORY[0x277D84F90];
        sub_2187732DC(&qword_280EE7E70, MEMORY[0x277D6CA70], MEMORY[0x277D6CA78]);
        sub_218A4E214(0);
        sub_2187732DC(&qword_280E8F600, sub_218A4E214, MEMORY[0x277D83970]);

        sub_219BF7164();
        sub_218A4E2AC(0, &unk_280EE7200, &qword_280EE6F50, &_s11ForYouFetchVN);
        swift_allocObject();
        v343 = sub_219BE2D14();
        v195 = v318;
        sub_218A4B394(v190, v318);
        v196 = v312;
        if (v312(v195, 1, v191) == 1)
        {
          v197 = v309;
          (*(v358 + 16))(v321, v309 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_feedConfigData, v191);
          v198 = v196(v195, 1, v191);
          swift_unknownObjectRetain();
          v199 = v351;
          if (v198 != 1)
          {
            sub_218A4E46C(v195, sub_218A4AC34);
          }
        }

        else
        {
          v314(v321, v195, v191);
          swift_unknownObjectRetain();
          v243 = v351;
          v197 = v309;
        }

        v244 = *(v197 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_headlines);
        v338 = *(v197 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_headlines + 8);
        v339 = v244;
        v245 = *(v197 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_headlines + 24);
        v337 = *(v197 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_headlines + 16);
        v247 = *(v197 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_headlines + 32);
        v246 = *(v197 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_headlines + 40);
        v353 = *(v197 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_headlines + 48);
        v354 = v246;
        v248 = *(v197 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_tags + 8);
        v357 = *(v197 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_tags);
        v358 = v245;
        v333 = v248;
        v334 = v247;
        v249 = *(v197 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_tags + 16);
        v359 = *(v197 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_tags + 24);
        v250 = *(v197 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_tags + 40);
        v352 = *(v197 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_tags + 32);
        v347 = v250;
        v251 = (v197 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_recipes);
        v253 = *(v197 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_recipes);
        v252 = *(v197 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_recipes + 8);
        v328 = *(v197 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_tags + 48);
        v329 = v253;
        v330 = v252;
        v331 = v249;
        v254 = *(v197 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_recipes + 24);
        v332 = v251[2];
        v255 = v251[5];
        v335 = v251[4];
        v336 = v255;
        v340 = v251[6];

        v256 = v343;

        v257 = v328;

        v258 = v329;

        v259 = v330;

        v260 = v332;

        v261 = v254;

        v262 = v335;

        v263 = v336;

        v231 = swift_allocObject();
        v264 = v351;
        v231[2] = v350;
        v231[3] = v264;
        v231[4] = v342;
        v314(v231 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_feedConfigData, v321, v360);

        *(v231 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_lazyFeedItems) = v346;
        v265 = (v231 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_headlines);
        v266 = v338;
        *v265 = v339;
        v265[1] = v266;
        v267 = v358;
        v265[2] = v337;
        v265[3] = v267;
        v268 = v353;
        v269 = v354;
        v265[4] = v334;
        v265[5] = v269;
        v265[6] = v268;
        v270 = (v231 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_recipes);
        *v270 = v258;
        v270[1] = v259;
        v270[2] = v260;
        v270[3] = v261;
        v61 = v231;
        v270[4] = v262;
        v270[5] = v263;
        v270[6] = v340;
        v271 = (v231 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_tags);
        v272 = v333;
        *v271 = v357;
        v271[1] = v272;
        v273 = v359;
        v271[2] = v331;
        v271[3] = v273;
        v274 = v347;
        v271[4] = v352;
        v271[5] = v274;
        v271[6] = v257;
        *(v231 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_forYou) = v256;
        *(v231 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_myHeadlines) = v341;
        *(v231 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_missedStories) = v344;
        goto LABEL_42;
      case 5u:
        v309 = v61;
        v200 = v316;
        v201 = v360;
        v310(v316, 1, 1, v360);
        v202 = *(v359 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_missedStories);
        v203 = swift_allocObject();
        v204 = v329;
        *(v203 + 16) = v202;
        *(v203 + 24) = v204;
        v361 = MEMORY[0x277D84F90];
        sub_2187732DC(&qword_280EE7E70, MEMORY[0x277D6CA70], MEMORY[0x277D6CA78]);
        sub_218A4E214(0);
        sub_2187732DC(&qword_280E8F600, sub_218A4E214, MEMORY[0x277D83970]);

        sub_219BF7164();
        sub_218A4E2AC(0, &unk_280EE71D0, &unk_280EE6F20, &_s13MissedStoriesVN);
        swift_allocObject();
        v344 = sub_219BE2D14();
        v205 = v319;
        sub_218A4B394(v200, v319);
        v206 = v312;
        if (v312(v205, 1, v201) == 1)
        {
          v207 = v309;
          (*(v358 + 16))(v322, v309 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_feedConfigData, v201);
          v208 = v206(v205, 1, v201);
          swift_unknownObjectRetain();
          v209 = v351;
          if (v208 != 1)
          {
            sub_218A4E46C(v205, sub_218A4AC34);
          }
        }

        else
        {
          v314(v322, v205, v201);
          swift_unknownObjectRetain();
          v275 = v351;
          v207 = v309;
        }

        v276 = *(v207 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_headlines);
        v338 = *(v207 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_headlines + 8);
        v339 = v276;
        v277 = *(v207 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_headlines + 24);
        v337 = *(v207 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_headlines + 16);
        v279 = *(v207 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_headlines + 32);
        v278 = *(v207 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_headlines + 40);
        v353 = *(v207 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_headlines + 48);
        v354 = v278;
        v280 = *(v207 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_tags + 8);
        v357 = *(v207 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_tags);
        v358 = v277;
        v333 = v280;
        v334 = v279;
        v281 = *(v207 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_tags + 16);
        v359 = *(v207 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_tags + 24);
        v282 = *(v207 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_tags + 40);
        v352 = *(v207 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_tags + 32);
        v347 = v282;
        v283 = (v207 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_recipes);
        v285 = *(v207 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_recipes);
        v284 = *(v207 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_recipes + 8);
        v328 = *(v207 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_tags + 48);
        v329 = v285;
        v330 = v284;
        v331 = v281;
        v286 = *(v207 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_recipes + 24);
        v332 = v283[2];
        v287 = v283[5];
        v335 = v283[4];
        v336 = v287;
        v340 = v283[6];

        v288 = v344;

        v289 = v328;

        v290 = v329;

        v291 = v330;

        v292 = v332;

        v293 = v286;

        v294 = v335;

        v295 = v336;

        v231 = swift_allocObject();
        v296 = v351;
        v231[2] = v350;
        v231[3] = v296;
        v231[4] = v342;
        v314(v231 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_feedConfigData, v322, v360);

        *(v231 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_lazyFeedItems) = v346;
        v297 = (v231 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_headlines);
        v298 = v338;
        *v297 = v339;
        v297[1] = v298;
        v299 = v358;
        v297[2] = v337;
        v297[3] = v299;
        v300 = v353;
        v301 = v354;
        v297[4] = v334;
        v297[5] = v301;
        v297[6] = v300;
        v302 = (v231 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_recipes);
        *v302 = v290;
        v302[1] = v291;
        v302[2] = v292;
        v302[3] = v293;
        v61 = v231;
        v302[4] = v294;
        v302[5] = v295;
        v302[6] = v340;
        v303 = (v231 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_tags);
        v304 = v333;
        *v303 = v357;
        v303[1] = v304;
        v305 = v359;
        v303[2] = v331;
        v303[3] = v305;
        v306 = v347;
        v303[4] = v352;
        v303[5] = v306;
        v303[6] = v289;
        *(v231 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_forYou) = v343;
        *(v231 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_myHeadlines) = v341;
        *(v231 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_missedStories) = v288;
LABEL_42:
        *(v231 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_suggestions) = v345;
        goto LABEL_43;
      case 7u:
      case 8u:
      case 0x15u:
        sub_218A4E46C(v135, type metadata accessor for TodayFeedGroup);
        v138 = v324;
        v139 = v360;
        v310(v324, 1, 1, v360);
        v140 = *(v359 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_myHeadlines);
        v141 = swift_allocObject();
        v142 = v329;
        *(v141 + 16) = v140;
        *(v141 + 24) = v142;
        v361 = MEMORY[0x277D84F90];
        sub_2187732DC(&qword_280EE7E70, MEMORY[0x277D6CA70], MEMORY[0x277D6CA78]);
        sub_218A4E214(0);
        sub_2187732DC(&qword_280E8F600, sub_218A4E214, MEMORY[0x277D83970]);

        sub_219BF7164();
        sub_218A4E248(0, &unk_280EE71F0, sub_218A4E350, MEMORY[0x277D6CEE8]);
        swift_allocObject();
        v359 = sub_219BE2D14();
        v143 = v325;
        sub_218A4B394(v138, v325);
        v144 = v312;
        if (v312(v143, 1, v139) == 1)
        {
          (*(v358 + 16))(v328, v61 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_feedConfigData, v139);
          v145 = v144(v143, 1, v139);
          swift_unknownObjectRetain();
          v146 = v351;
          if (v145 != 1)
          {
            sub_218A4E46C(v143, sub_218A4AC34);
          }
        }

        else
        {
          v314(v328, v143, v139);
          swift_unknownObjectRetain();
          v147 = v351;
        }

        v309 = v61;
        v148 = *(v61 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_headlines);
        v340 = *(v61 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_headlines + 8);
        v341 = v148;
        v149 = *(v61 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_headlines + 24);
        v339 = *(v61 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_headlines + 16);
        v150 = *(v61 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_headlines + 40);
        v353 = *(v61 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_headlines + 32);
        v354 = v149;
        v352 = *(v61 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_headlines + 48);
        v151 = *(v61 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_tags + 8);
        v336 = *(v61 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_tags);
        v334 = v150;
        v335 = v151;
        v152 = *(v61 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_tags + 16);
        v154 = *(v61 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_tags + 32);
        v153 = *(v61 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_tags + 40);
        v357 = *(v61 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_tags + 24);
        v358 = v154;
        v348 = v153;
        v156 = *(v61 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_recipes);
        v155 = *(v61 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_recipes + 8);
        v329 = *(v61 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_tags + 48);
        v330 = v156;
        v331 = v155;
        v332 = v152;
        v157 = *(v61 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_recipes + 24);
        v333 = *(v61 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_recipes + 16);
        v158 = *(v61 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_recipes + 40);
        v337 = *(v61 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_recipes + 32);
        v338 = v158;
        v347 = *(v61 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_recipes + 48);

        v159 = v329;

        v160 = v330;

        v161 = v331;

        v162 = v333;

        v163 = v157;

        v164 = v337;

        v165 = v338;

        v166 = swift_allocObject();
        v167 = v351;
        v166[2] = v350;
        v166[3] = v167;
        v166[4] = v342;
        v314(v166 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_feedConfigData, v328, v360);
        v168 = v359;

        *(v166 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_lazyFeedItems) = v346;
        v169 = (v166 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_headlines);
        v170 = v340;
        *v169 = v341;
        v169[1] = v170;
        v171 = v353;
        v172 = v354;
        v169[2] = v339;
        v169[3] = v172;
        v169[4] = v171;
        v173 = v352;
        v169[5] = v334;
        v169[6] = v173;
        v174 = (v166 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_recipes);
        *v174 = v160;
        v174[1] = v161;
        v174[2] = v162;
        v174[3] = v163;
        v61 = v166;
        v174[4] = v164;
        v174[5] = v165;
        v174[6] = v347;
        v175 = (v166 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_tags);
        v176 = v335;
        *v175 = v336;
        v175[1] = v176;
        v178 = v357;
        v177 = v358;
        v175[2] = v332;
        v175[3] = v178;
        v175[4] = v177;
        v175[5] = v348;
        v175[6] = v159;
        v179 = v344;
        *(v166 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_forYou) = v343;
        *(v166 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_myHeadlines) = v168;
        *(v166 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_missedStories) = v179;
        *(v166 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_suggestions) = v345;
        *(v166 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_magazines) = v349;
        return v61;
      case 0xEu:
        v309 = v61;
        v180 = v317;
        v181 = v360;
        v310(v317, 1, 1, v360);
        v182 = *(v359 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_suggestions);
        v183 = swift_allocObject();
        v184 = v329;
        *(v183 + 16) = v182;
        *(v183 + 24) = v184;
        v361 = MEMORY[0x277D84F90];
        sub_2187732DC(&qword_280EE7E70, MEMORY[0x277D6CA70], MEMORY[0x277D6CA78]);
        sub_218A4E214(0);
        sub_2187732DC(&qword_280E8F600, sub_218A4E214, MEMORY[0x277D83970]);

        sub_219BF7164();
        sub_218A4E2AC(0, &unk_280EE71E0, &unk_280EE6F30, &_s11SuggestionsVN);
        swift_allocObject();
        v345 = sub_219BE2D14();
        v185 = v320;
        sub_218A4B394(v180, v320);
        v186 = v312;
        if (v312(v185, 1, v181) == 1)
        {
          v187 = v309;
          (*(v358 + 16))(v323, v309 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_feedConfigData, v181);
          v188 = v186(v185, 1, v181);
          swift_unknownObjectRetain();
          v189 = v351;
          if (v188 != 1)
          {
            sub_218A4E46C(v185, sub_218A4AC34);
          }
        }

        else
        {
          v314(v323, v185, v181);
          swift_unknownObjectRetain();
          v210 = v351;
          v187 = v309;
        }

        v211 = *(v187 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_headlines);
        v338 = *(v187 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_headlines + 8);
        v339 = v211;
        v212 = *(v187 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_headlines + 24);
        v337 = *(v187 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_headlines + 16);
        v214 = *(v187 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_headlines + 32);
        v213 = *(v187 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_headlines + 40);
        v353 = *(v187 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_headlines + 48);
        v354 = v213;
        v215 = *(v187 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_tags + 8);
        v357 = *(v187 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_tags);
        v358 = v212;
        v333 = v215;
        v334 = v214;
        v216 = *(v187 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_tags + 16);
        v359 = *(v187 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_tags + 24);
        v217 = *(v187 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_tags + 40);
        v352 = *(v187 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_tags + 32);
        v347 = v217;
        v218 = (v187 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_recipes);
        v220 = *(v187 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_recipes);
        v219 = *(v187 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_recipes + 8);
        v328 = *(v187 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_tags + 48);
        v329 = v220;
        v330 = v219;
        v331 = v216;
        v221 = *(v187 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_recipes + 24);
        v332 = v218[2];
        v222 = v218[5];
        v335 = v218[4];
        v336 = v222;
        v340 = v218[6];

        v223 = v345;

        v224 = v328;

        v225 = v329;

        v226 = v330;

        v227 = v332;

        v228 = v221;

        v229 = v335;

        v230 = v336;

        v231 = swift_allocObject();
        v232 = v351;
        v231[2] = v350;
        v231[3] = v232;
        v231[4] = v342;
        v314(v231 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_feedConfigData, v323, v360);

        *(v231 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_lazyFeedItems) = v346;
        v233 = (v231 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_headlines);
        v234 = v338;
        *v233 = v339;
        v233[1] = v234;
        v235 = v358;
        v233[2] = v337;
        v233[3] = v235;
        v236 = v353;
        v237 = v354;
        v233[4] = v334;
        v233[5] = v237;
        v233[6] = v236;
        v238 = (v231 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_recipes);
        *v238 = v225;
        v238[1] = v226;
        v238[2] = v227;
        v238[3] = v228;
        v61 = v231;
        v238[4] = v229;
        v238[5] = v230;
        v238[6] = v340;
        v239 = (v231 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_tags);
        v240 = v333;
        *v239 = v357;
        v239[1] = v240;
        v241 = v359;
        v239[2] = v331;
        v239[3] = v241;
        v242 = v347;
        v239[4] = v352;
        v239[5] = v242;
        v239[6] = v224;
        *(v231 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_forYou) = v343;
        *(v231 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_myHeadlines) = v341;
        *(v231 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_missedStories) = v344;
        *(v231 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_suggestions) = v223;
LABEL_43:
        v136 = v348;
        *(v231 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_magazines) = v349;
        break;
      default:

        v136 = v135;
        break;
    }

    sub_218A4E46C(v136, type metadata accessor for TodayFeedGroup);
  }

  else
  {
  }

  return v61;
}

void *sub_218A498D8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_218A49908(*a1);
  *a2 = result;
  return result;
}

void *sub_218A49908(uint64_t a1)
{
  v2 = v1;
  v62 = *v1;
  v4 = sub_219BDF6C4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A4AC34(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v48 - v13;
  (*(v5 + 56))(&v48 - v13, 1, 1, v4, v12);
  v15 = *(v2 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_headlines + 16);
  v74[0] = *(v2 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_headlines);
  v74[1] = v15;
  v74[2] = *(v2 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_headlines + 32);
  v75 = *(v2 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_headlines + 48);
  v16 = *(a1 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_headlines + 16);
  v76 = *(a1 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_headlines);
  v77 = v16;
  v78 = *(a1 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_headlines + 32);
  v79 = *(a1 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_headlines + 48);
  sub_218A4BB58(v74, v64);
  v17 = *(v2 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_recipes + 16);
  v68[0] = *(v2 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_recipes);
  v68[1] = v17;
  v68[2] = *(v2 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_recipes + 32);
  v69 = *(v2 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_recipes + 48);
  v18 = *(a1 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_recipes + 16);
  v70 = *(a1 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_recipes);
  v71 = v18;
  v72 = *(a1 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_recipes + 32);
  v73 = *(a1 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_recipes + 48);
  sub_218A4C16C(v68, v66);
  v19 = v2[2];
  v20 = v2[3];
  v61 = v2[4];
  sub_218A4B394(v14, v10);
  v21 = *(v5 + 48);
  if (v21(v10, 1, v4) == 1)
  {
    (*(v5 + 16))(v7, v2 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_feedConfigData, v4);
    v22 = v21(v10, 1, v4);
    swift_unknownObjectRetain();
    v23 = v20;
    v24 = v22 == 1;
    v25 = v4;
    v26 = v7;
    if (!v24)
    {
      sub_218A4E46C(v10, sub_218A4AC34);
    }
  }

  else
  {
    (*(v5 + 32))(v7, v10, v4);
    swift_unknownObjectRetain();
    v27 = v20;
    v25 = v4;
    v26 = v7;
  }

  v56 = *(v2 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_lazyFeedItems);
  v28 = v56;
  v29 = *(v2 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_tags);
  v30 = *(v2 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_tags + 8);
  v31 = *(v2 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_tags + 24);
  v49 = *(v2 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_tags + 16);
  v32 = v49;
  v50 = v29;
  v58 = v30;
  v59 = v31;
  v33 = *(v2 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_tags + 40);
  v63 = *(v2 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_tags + 32);
  v60 = *(v2 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_tags + 48);
  v57 = *(v2 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_forYou);
  v34 = *(v2 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_myHeadlines);
  v35 = *(v2 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_missedStories);
  v51 = v33;
  v52 = v35;
  v55 = *(v2 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_suggestions);
  v36 = *(v2 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_magazines);
  v53 = v34;
  v54 = v36;
  v37 = swift_allocObject();
  v37[2] = v19;
  v37[3] = v20;
  v37[4] = v61;
  (*(v5 + 32))(v37 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_feedConfigData, v26, v25);
  *(v37 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_lazyFeedItems) = v28;
  v38 = v37 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_headlines;
  v39 = v64[1];
  *v38 = v64[0];
  *(v38 + 1) = v39;
  *(v38 + 2) = v64[2];
  *(v38 + 6) = v65;
  v40 = v37 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_recipes;
  v41 = v66[1];
  *v40 = v66[0];
  *(v40 + 1) = v41;
  *(v40 + 2) = v66[2];
  *(v40 + 6) = v67;
  v42 = (v37 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_tags);
  v44 = v58;
  v43 = v59;
  *v42 = v50;
  v42[1] = v44;
  v42[2] = v32;
  v42[3] = v43;
  v42[4] = v63;
  v42[5] = v33;
  v42[6] = v60;
  *(v37 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_forYou) = v57;
  v45 = v52;
  *(v37 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_myHeadlines) = v53;
  *(v37 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_missedStories) = v45;
  v46 = v54;
  *(v37 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_suggestions) = v55;
  *(v37 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_magazines) = v46;

  return v37;
}

void *sub_218A49E14@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_218A49E40(a2);
  *a1 = result;
  return result;
}

void *sub_218A49E40(uint64_t a1)
{
  v2 = v1;
  v144 = *v2;
  v132 = sub_219BE1BF4();
  MEMORY[0x28223BE20](v132);
  v133 = &v114 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_219BDF6C4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v114 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v114 - v10;
  sub_218A4AC34(0);
  MEMORY[0x28223BE20](v12 - 8);
  v134 = &v114 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v142 = &v114 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v114 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v114 - v20;
  v140 = a1;
  v22 = sub_2189943CC();
  v141 = v11;
  if (v22 >> 62)
  {
    v111 = v22;
    v23 = sub_219BF7214();
    v22 = v111;
  }

  else
  {
    v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v145 = v5;
  v146 = v6;
  v143 = v8;
  if (v23)
  {
    v24 = v22;
    (*(v6 + 56))(v21, 1, 1, v5);
    v25 = *(v2 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_recipes + 16);
    v154[0] = *(v2 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_recipes);
    v154[1] = v25;
    v154[2] = *(v2 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_recipes + 32);
    v155 = *(v2 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_recipes + 48);
    sub_218A4AC68(v154, v24, v148);

    v26 = v2[2];
    v27 = v2[3];
    v131 = v2[4];
    sub_218A4B394(v21, v18);
    v28 = *(v6 + 48);
    v29 = v28(v18, 1, v5);
    v114 = v26;
    v115 = v27;
    if (v29 == 1)
    {
      (*(v6 + 16))(v141, v2 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_feedConfigData, v5);
      v30 = v28(v18, 1, v5);
      swift_unknownObjectRetain();
      v31 = v27;
      if (v30 != 1)
      {
        sub_218A4E46C(v18, sub_218A4AC34);
      }
    }

    else
    {
      (*(v6 + 32))(v141, v18, v5);
      swift_unknownObjectRetain();
      v33 = v27;
    }

    v135 = *(v2 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_lazyFeedItems);
    v35 = *(v2 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_headlines);
    v37 = *(v2 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_headlines + 16);
    v36 = *(v2 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_headlines + 24);
    v125 = *(v2 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_headlines + 8);
    v34 = v125;
    v126 = v37;
    v38 = *(v2 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_headlines + 32);
    v39 = *(v2 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_headlines + 40);
    v127 = v36;
    v128 = v38;
    v129 = *(v2 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_headlines + 48);
    v40 = v129;
    v130 = v39;
    v41 = *(v2 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_tags);
    v42 = *(v2 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_tags + 8);
    v122 = v35;
    v123 = v41;
    v43 = *(v2 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_tags + 16);
    v138 = *(v2 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_tags + 24);
    v139 = v42;
    v44 = *(v2 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_tags + 40);
    v136 = *(v2 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_tags + 32);
    v137 = v43;
    v124 = v44;
    v45 = *(v2 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_myHeadlines);
    v118 = *(v2 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_forYou);
    v119 = v45;
    v46 = *(v2 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_suggestions);
    v120 = *(v2 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_missedStories);
    v121 = v46;
    v47 = *(v2 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_magazines);
    v116 = *(v2 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_tags + 48);
    v117 = v47;
    v32 = swift_allocObject();
    v48 = v115;
    v32[2] = v114;
    v32[3] = v48;
    v32[4] = v131;
    (*(v146 + 32))(v32 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_feedConfigData, v141, v145);
    *(v32 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_lazyFeedItems) = v135;
    v49 = (v32 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_headlines);
    *v49 = v35;
    v49[1] = v34;
    v49[2] = v37;
    v49[3] = v36;
    v49[4] = v38;
    v49[5] = v39;
    v49[6] = v40;
    v50 = v32 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_recipes;
    *(v50 + 6) = v149;
    v51 = v148[1];
    *v50 = v148[0];
    *(v50 + 1) = v51;
    *(v50 + 2) = v148[2];
    v52 = (v32 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_tags);
    v53 = v124;
    v54 = v139;
    *v52 = v123;
    v52[1] = v54;
    v55 = v138;
    v52[2] = v137;
    v52[3] = v55;
    v52[4] = v136;
    v52[5] = v53;
    v56 = v117;
    v52[6] = v116;
    v57 = v119;
    *(v32 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_forYou) = v118;
    *(v32 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_myHeadlines) = v57;
    v58 = v121;
    *(v32 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_missedStories) = v120;
    *(v32 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_suggestions) = v58;
    *(v32 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_magazines) = v56;
  }

  else
  {

    v32 = v2;
  }

  v59 = sub_2189943A0();
  v60 = v59;
  if (v59 >> 62)
  {
    v112 = sub_219BF7214();
    v61 = v146;
    if (v112)
    {
      goto LABEL_12;
    }

LABEL_19:

    return v32;
  }

  v61 = v146;
  if (!*((v59 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_19;
  }

LABEL_12:
  (*(v61 + 56))(v142, 1, 1, v145);
  v62 = *(v2 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_headlines + 16);
  v152[0] = *(v2 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_headlines);
  v152[1] = v62;
  v152[2] = *(v2 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_headlines + 32);
  v153 = *(v2 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_headlines + 48);
  sub_218A4B3F8(v152, v60, v150);
  v63 = *(v2 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_forYou);
  v64 = swift_allocObject();
  *(v64 + 16) = v63;
  *(v64 + 24) = v60;
  v147[0] = MEMORY[0x277D84F90];
  v65 = sub_2187732DC(&qword_280EE7E70, MEMORY[0x277D6CA70], MEMORY[0x277D6CA78]);
  sub_218A4E214(0);
  v138 = v66;
  v67 = v2;
  v68 = sub_2187732DC(&qword_280E8F600, sub_218A4E214, MEMORY[0x277D83970]);

  v137 = v68;
  v139 = v65;
  sub_219BF7164();
  sub_218A4E2AC(0, &unk_280EE7200, &qword_280EE6F50, &_s11ForYouFetchVN);
  swift_allocObject();
  v136 = sub_219BE2D14();
  v69 = *(v67 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_myHeadlines);
  v70 = swift_allocObject();
  *(v70 + 16) = v69;
  *(v70 + 24) = v60;
  v147[0] = MEMORY[0x277D84F90];

  sub_219BF7164();
  sub_218A4E248(0, &unk_280EE71F0, sub_218A4E350, MEMORY[0x277D6CEE8]);
  swift_allocObject();
  v141 = sub_219BE2D14();
  v71 = *(v67 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_missedStories);
  v72 = swift_allocObject();
  *(v72 + 16) = v71;
  *(v72 + 24) = v60;
  v147[0] = MEMORY[0x277D84F90];

  sub_219BF7164();
  sub_218A4E2AC(0, &unk_280EE71D0, &unk_280EE6F20, &_s13MissedStoriesVN);
  swift_allocObject();
  v140 = sub_219BE2D14();
  v73 = *(v67 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_suggestions);
  v74 = swift_allocObject();
  *(v74 + 16) = v73;
  *(v74 + 24) = v60;
  v75 = v145;
  v147[0] = MEMORY[0x277D84F90];

  v76 = v146;
  sub_219BF7164();
  sub_218A4E2AC(0, &unk_280EE71E0, &unk_280EE6F30, &_s11SuggestionsVN);
  swift_allocObject();
  v77 = sub_219BE2D14();
  v78 = v32[2];
  v79 = v32[3];
  v135 = v32[4];
  v80 = v134;
  sub_218A4B394(v142, v134);
  v81 = *(v76 + 48);
  v82 = v81(v80, 1, v75);
  v130 = v78;
  v131 = v79;
  if (v82 == 1)
  {
    (*(v76 + 16))(v143, v32 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_feedConfigData, v75);
    v83 = v81(v80, 1, v75);
    swift_unknownObjectRetain();
    v84 = v79;
    if (v83 != 1)
    {
      sub_218A4E46C(v80, sub_218A4AC34);
    }
  }

  else
  {
    (*(v76 + 32))(v143, v80, v75);
    swift_unknownObjectRetain();
    v85 = v79;
  }

  v132 = *(v32 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_lazyFeedItems);
  v86 = *(v32 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_tags);
  v128 = *(v32 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_tags + 8);
  v129 = v86;
  v87 = *(v32 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_tags + 16);
  v126 = *(v32 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_tags + 24);
  v127 = v87;
  v88 = *(v32 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_tags + 40);
  v125 = *(v32 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_tags + 32);
  v142 = v88;
  v89 = *(v32 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_tags + 48);
  v90 = *(v32 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_recipes + 8);
  v138 = *(v32 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_recipes);
  v139 = v89;
  v137 = v90;
  v91 = *(v32 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_recipes + 24);
  v120 = *(v32 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_recipes + 16);
  v121 = v91;
  v92 = *(v32 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_recipes + 40);
  v122 = *(v32 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_recipes + 32);
  v123 = v92;
  v93 = *(v32 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_recipes + 48);
  v133 = *(v32 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_magazines);
  v134 = v93;

  sub_218A4EEDC(v150, v147, sub_218A4E404);

  v94 = v136;

  v124 = v77;

  v95 = v120;

  v96 = v121;

  v97 = v122;

  v98 = v123;

  v32 = swift_allocObject();
  v99 = v131;
  v32[2] = v130;
  v32[3] = v99;
  v32[4] = v135;
  (*(v146 + 32))(v32 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_feedConfigData, v143, v145);

  v100 = v141;

  v101 = v140;

  v102 = v124;

  sub_218A4E46C(v150, sub_218A4E404);
  *(v32 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_lazyFeedItems) = v132;
  v103 = v32 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_headlines;
  v104 = v150[1];
  *v103 = v150[0];
  *(v103 + 1) = v104;
  *(v103 + 2) = v150[2];
  *(v103 + 6) = v151;
  v105 = (v32 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_recipes);
  v106 = v137;
  *v105 = v138;
  v105[1] = v106;
  v105[2] = v95;
  v105[3] = v96;
  v105[4] = v97;
  v105[5] = v98;
  v105[6] = v134;
  v107 = (v32 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_tags);
  v108 = v128;
  *v107 = v129;
  v107[1] = v108;
  v109 = v126;
  v107[2] = v127;
  v107[3] = v109;
  v110 = v142;
  v107[4] = v125;
  v107[5] = v110;
  v107[6] = v139;
  *(v32 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_forYou) = v94;
  *(v32 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_myHeadlines) = v100;
  *(v32 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_missedStories) = v101;
  *(v32 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_suggestions) = v102;
  *(v32 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_magazines) = v133;
  return v32;
}

uint64_t sub_218A4AC68@<X0>(uint64_t *a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v3 = a2;
  v4 = a2 >> 62;
  if (a2 >> 62)
  {
LABEL_84:
    v5 = sub_219BF7214();
  }

  else
  {
    v5 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = a1[2];
  if (v5)
  {
    v74 = MEMORY[0x277D84F90];

    result = sub_21870B65C(0, v5 & ~(v5 >> 63), 0);
    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    v8 = 0;
    v9 = v74;
    v67 = v4;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x21CECE0F0](v8, v3);
      }

      else
      {
        if ((v8 & 0x8000000000000000) != 0)
        {
          goto LABEL_82;
        }

        if (v8 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_83:
          __break(1u);
          goto LABEL_84;
        }

        v10 = *(v3 + 8 * v8 + 32);
      }

      v11 = v10;
      v77[0] = v10;
      swift_getAtKeyPath();

      v4 = v72;
      v12 = v73;
      v74 = v9;
      v14 = *(v9 + 16);
      v13 = *(v9 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_21870B65C((v13 > 1), v14 + 1, 1);
        v9 = v74;
      }

      ++v8;
      *(v9 + 16) = v14 + 1;
      v15 = v9 + 16 * v14;
      *(v15 + 32) = v4;
      *(v15 + 40) = v12;
    }

    while (v5 != v8);
    v4 = v67;
  }

  else
  {

    v9 = MEMORY[0x277D84F90];
  }

  v16 = sub_218845F78(v9);

  sub_2194796A0(v16, v6);
  v18 = v17;
  if (v4)
  {
    v4 = v3 & 0xFFFFFFFFFFFFFF8;
    v19 = sub_219BF7214();
  }

  else
  {
    v4 = v3 & 0xFFFFFFFFFFFFFF8;
    v19 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v69 = a1[3];

  v20 = 0;
  v21 = MEMORY[0x277D84F90];
  if (v19)
  {
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v31 = MEMORY[0x21CECE0F0](v20, v3);
      }

      else
      {
        if (v20 >= *(v4 + 16))
        {
          goto LABEL_77;
        }

        v31 = *(v3 + 8 * v20 + 32);
      }

      v32 = v31;
      v33 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
LABEL_77:
        __break(1u);
LABEL_78:
        __break(1u);
LABEL_79:
        __break(1u);
LABEL_80:
        __break(1u);
LABEL_81:
        __break(1u);
LABEL_82:
        __break(1u);
        goto LABEL_83;
      }

      v74 = v31;
      if (!a1[6])
      {
        break;
      }

      swift_getAtKeyPath();

      v30 = v72;
      v29 = v73;
      ++v20;
      if (v73)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_218840D24(0, *(v21 + 2) + 1, 1, v21);
        }

        v35 = *(v21 + 2);
        v34 = *(v21 + 3);
        v36 = v35 + 1;
        if (v35 >= v34 >> 1)
        {
          v38 = sub_218840D24((v34 > 1), v35 + 1, 1, v21);
          v36 = v35 + 1;
          v21 = v38;
        }

        *(v21 + 2) = v36;
        v37 = &v21[16 * v35];
        *(v37 + 4) = v30;
        *(v37 + 5) = v29;
        v20 = v33;
        if (v19 == v33)
        {
          goto LABEL_20;
        }
      }

      else
      {
LABEL_24:
        if (v19 == v20)
        {
          goto LABEL_20;
        }
      }
    }

    ++v20;
    goto LABEL_24;
  }

LABEL_20:
  v22 = sub_218845F78(v21);

  sub_2194796A0(v22, v69);
  v24 = v23;
  v25 = a1[1];
  v77[0] = MEMORY[0x277D84F90];
  if (v25 >> 62)
  {
    v26 = sub_219BF7214();
    if (v26)
    {
LABEL_22:
      v65 = v24;
      v27 = 0;
      v68 = v25 & 0xFFFFFFFFFFFFFF8;
      v70 = v25 & 0xC000000000000001;
      v63 = v25;
      v28 = v25 + 32;
      v4 = v18 + 56;
      while (1)
      {
        if (v70)
        {
          v39 = MEMORY[0x21CECE0F0](v27, v63);
        }

        else
        {
          if (v27 >= *(v68 + 16))
          {
            goto LABEL_79;
          }

          v39 = *(v28 + 8 * v27);
        }

        v40 = v39;
        v41 = __OFADD__(v27++, 1);
        if (v41)
        {
          goto LABEL_78;
        }

        v76 = v39;
        swift_getAtKeyPath();
        if (*(v18 + 16) && (v3 = v74, sub_219BF7AA4(), sub_219BF5524(), v42 = sub_219BF7AE4(), v43 = -1 << *(v18 + 32), v44 = v42 & ~v43, ((*(v4 + ((v44 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v44) & 1) != 0))
        {
          v45 = ~v43;
          while (1)
          {
            v46 = (*(v18 + 48) + 16 * v44);
            v47 = *v46 == v74 && v46[1] == v75;
            if (v47 || (sub_219BF78F4() & 1) != 0)
            {
              break;
            }

            v44 = (v44 + 1) & v45;
            if (((*(v4 + ((v44 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v44) & 1) == 0)
            {
              goto LABEL_38;
            }
          }

          if (v27 == v26)
          {
LABEL_56:
            v48 = 0;
            v64 = v77[0];
            v77[0] = MEMORY[0x277D84F90];
            while (1)
            {
              if (v70)
              {
                v49 = MEMORY[0x21CECE0F0](v48, v63);
              }

              else
              {
                if (v48 >= *(v68 + 16))
                {
                  goto LABEL_81;
                }

                v49 = *(v28 + 8 * v48);
              }

              v50 = v49;
              v41 = __OFADD__(v48++, 1);
              if (v41)
              {
                goto LABEL_80;
              }

              v76 = v49;
              swift_getAtKeyPath();
              if (*(v18 + 16) && (v3 = v74, sub_219BF7AA4(), sub_219BF5524(), v51 = sub_219BF7AE4(), v52 = -1 << *(v18 + 32), v53 = v51 & ~v52, ((*(v4 + ((v53 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v53) & 1) != 0))
              {
                v54 = ~v52;
                while (1)
                {
                  v55 = (*(v18 + 48) + 16 * v53);
                  v56 = *v55 == v74 && v55[1] == v75;
                  if (v56 || (sub_219BF78F4() & 1) != 0)
                  {
                    break;
                  }

                  v53 = (v53 + 1) & v54;
                  if (((*(v4 + ((v53 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v53) & 1) == 0)
                  {
                    goto LABEL_57;
                  }
                }

                sub_219BF73D4();
                v3 = *(v77[0] + 16);
                sub_219BF7414();
                sub_219BF7424();
                sub_219BF73E4();
                if (v48 == v26)
                {
LABEL_75:
                  v57 = v77[0];
                  v58 = v64;
                  v24 = v65;
                  goto LABEL_87;
                }
              }

              else
              {
LABEL_57:

                if (v48 == v26)
                {
                  goto LABEL_75;
                }
              }
            }
          }
        }

        else
        {
LABEL_38:

          sub_219BF73D4();
          v3 = *(v77[0] + 16);
          sub_219BF7414();
          sub_219BF7424();
          sub_219BF73E4();
          if (v27 == v26)
          {
            goto LABEL_56;
          }
        }
      }
    }
  }

  else
  {
    v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v26)
    {
      goto LABEL_22;
    }
  }

  v58 = MEMORY[0x277D84F90];
  v57 = MEMORY[0x277D84F90];
LABEL_87:
  v72 = a1[4];

  sub_2191ED69C(v57);
  v59 = v72;
  v72 = *a1;
  v60 = v72;
  v61 = a1[5];
  v74 = a1[6];
  v62 = v74;
  sub_218A4E998(&v72, v77, &qword_280E8EB20, &qword_280E8DA30, 0x277D312A8, sub_2186C6148);

  result = sub_218A4EEDC(&v74, v77, sub_218A4EA0C);
  *a3 = v60;
  a3[1] = v58;
  a3[2] = v18;
  a3[3] = v24;
  a3[4] = v59;
  a3[5] = v61;
  a3[6] = v62;
  return result;
}

uint64_t sub_218A4B394(uint64_t a1, uint64_t a2)
{
  sub_218A4AC34(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_218A4B3F8@<X0>(uint64_t *a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v3 = a2;
  v4 = a2 >> 62;
  if (a2 >> 62)
  {
LABEL_85:
    v5 = sub_219BF7214();
  }

  else
  {
    v5 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = a1[2];
  if (v5)
  {
    v70 = MEMORY[0x277D84F90];

    result = sub_21870B65C(0, v5 & ~(v5 >> 63), 0);
    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    v8 = 0;
    v9 = v70;
    v63 = v4;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x21CECE0F0](v8, v3);
      }

      else
      {
        if ((v8 & 0x8000000000000000) != 0)
        {
          goto LABEL_83;
        }

        if (v8 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_84:
          __break(1u);
          goto LABEL_85;
        }

        v10 = *(v3 + 8 * v8 + 32);
        swift_unknownObjectRetain();
      }

      v73[0] = v10;
      swift_getAtKeyPath();
      swift_unknownObjectRelease();
      v4 = v68;
      v11 = v69;
      v70 = v9;
      v13 = *(v9 + 16);
      v12 = *(v9 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_21870B65C((v12 > 1), v13 + 1, 1);
        v9 = v70;
      }

      ++v8;
      *(v9 + 16) = v13 + 1;
      v14 = v9 + 16 * v13;
      *(v14 + 32) = v4;
      *(v14 + 40) = v11;
      if (v5 == v8)
      {
        v4 = v63;
        goto LABEL_16;
      }
    }
  }

  v9 = MEMORY[0x277D84F90];
LABEL_16:
  v15 = sub_218845F78(v9);

  sub_2194796A0(v15, v6);
  v17 = v16;
  if (v4)
  {
    v4 = v3 & 0xFFFFFFFFFFFFFF8;
    v18 = sub_219BF7214();
  }

  else
  {
    v4 = v3 & 0xFFFFFFFFFFFFFF8;
    v18 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v65 = a1[3];

  v19 = 0;
  v20 = MEMORY[0x277D84F90];
  if (v18)
  {
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v30 = MEMORY[0x21CECE0F0](v19, v3);
        v31 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          goto LABEL_79;
        }
      }

      else
      {
        if (v19 >= *(v4 + 16))
        {
          goto LABEL_80;
        }

        v30 = *(v3 + 8 * v19 + 32);
        swift_unknownObjectRetain();
        v31 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
LABEL_79:
          __break(1u);
LABEL_80:
          __break(1u);
LABEL_81:
          __break(1u);
LABEL_82:
          __break(1u);
LABEL_83:
          __break(1u);
          goto LABEL_84;
        }
      }

      v70 = v30;
      if (!a1[6])
      {
        break;
      }

      swift_getAtKeyPath();
      swift_unknownObjectRelease();

      v29 = v68;
      v28 = v69;
      ++v19;
      if (v69)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_218840D24(0, *(v20 + 2) + 1, 1, v20);
        }

        v33 = *(v20 + 2);
        v32 = *(v20 + 3);
        v34 = v33 + 1;
        if (v33 >= v32 >> 1)
        {
          v36 = sub_218840D24((v32 > 1), v33 + 1, 1, v20);
          v34 = v33 + 1;
          v20 = v36;
        }

        *(v20 + 2) = v34;
        v35 = &v20[16 * v33];
        *(v35 + 4) = v29;
        *(v35 + 5) = v28;
        v19 = v31;
        if (v18 == v31)
        {
          goto LABEL_20;
        }
      }

      else
      {
LABEL_24:
        if (v18 == v19)
        {
          goto LABEL_20;
        }
      }
    }

    swift_unknownObjectRelease();
    ++v19;
    goto LABEL_24;
  }

LABEL_20:
  v21 = sub_218845F78(v20);

  sub_2194796A0(v21, v65);
  v23 = v22;
  v24 = a1[1];
  v73[0] = MEMORY[0x277D84F90];
  if (v24 >> 62)
  {
    v25 = sub_219BF7214();
    if (v25)
    {
      goto LABEL_22;
    }

LABEL_87:
    v54 = MEMORY[0x277D84F90];
    v53 = MEMORY[0x277D84F90];
    goto LABEL_88;
  }

  v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v25)
  {
    goto LABEL_87;
  }

LABEL_22:
  v61 = v23;
  v26 = 0;
  v64 = v24 & 0xFFFFFFFFFFFFFF8;
  v66 = v24 & 0xC000000000000001;
  v59 = v24;
  v27 = v24 + 32;
  v4 = v17 + 56;
  while (v66)
  {
    v37 = MEMORY[0x21CECE0F0](v26, v59);
    v38 = __OFADD__(v26++, 1);
    if (v38)
    {
      goto LABEL_57;
    }

LABEL_43:
    v72 = v37;
    swift_getAtKeyPath();
    if (*(v17 + 16) && (v3 = v70, sub_219BF7AA4(), sub_219BF5524(), v39 = sub_219BF7AE4(), v40 = -1 << *(v17 + 32), v41 = v39 & ~v40, ((*(v4 + ((v41 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v41) & 1) != 0))
    {
      v42 = ~v40;
      while (1)
      {
        v43 = (*(v17 + 48) + 16 * v41);
        v44 = *v43 == v70 && v43[1] == v71;
        if (v44 || (sub_219BF78F4() & 1) != 0)
        {
          break;
        }

        v41 = (v41 + 1) & v42;
        if (((*(v4 + ((v41 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v41) & 1) == 0)
        {
          goto LABEL_39;
        }
      }

      swift_unknownObjectRelease();

      if (v26 == v25)
      {
        goto LABEL_58;
      }
    }

    else
    {
LABEL_39:

      sub_219BF73D4();
      v3 = *(v73[0] + 16);
      sub_219BF7414();
      sub_219BF7424();
      sub_219BF73E4();
      if (v26 == v25)
      {
        goto LABEL_58;
      }
    }
  }

  if (v26 >= *(v64 + 16))
  {
    goto LABEL_81;
  }

  v37 = *(v27 + 8 * v26);
  swift_unknownObjectRetain();
  v38 = __OFADD__(v26++, 1);
  if (!v38)
  {
    goto LABEL_43;
  }

LABEL_57:
  __break(1u);
LABEL_58:
  v45 = 0;
  v60 = v73[0];
  v73[0] = MEMORY[0x277D84F90];
  while (2)
  {
    if (v66)
    {
      v46 = MEMORY[0x21CECE0F0](v45, v59);
      v38 = __OFADD__(v45++, 1);
      if (v38)
      {
        break;
      }

      goto LABEL_63;
    }

    if (v45 >= *(v64 + 16))
    {
      goto LABEL_82;
    }

    v46 = *(v27 + 8 * v45);
    swift_unknownObjectRetain();
    v38 = __OFADD__(v45++, 1);
    if (!v38)
    {
LABEL_63:
      v72 = v46;
      swift_getAtKeyPath();
      if (*(v17 + 16) && (v3 = v70, sub_219BF7AA4(), sub_219BF5524(), v47 = sub_219BF7AE4(), v48 = -1 << *(v17 + 32), v49 = v47 & ~v48, ((*(v4 + ((v49 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v49) & 1) != 0))
      {
        v50 = ~v48;
        while (1)
        {
          v51 = (*(v17 + 48) + 16 * v49);
          v52 = *v51 == v70 && v51[1] == v71;
          if (v52 || (sub_219BF78F4() & 1) != 0)
          {
            break;
          }

          v49 = (v49 + 1) & v50;
          if (((*(v4 + ((v49 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v49) & 1) == 0)
          {
            goto LABEL_59;
          }
        }

        sub_219BF73D4();
        v3 = *(v73[0] + 16);
        sub_219BF7414();
        sub_219BF7424();
        sub_219BF73E4();
        if (v45 == v25)
        {
          goto LABEL_78;
        }
      }

      else
      {
LABEL_59:
        swift_unknownObjectRelease();

        if (v45 == v25)
        {
          goto LABEL_78;
        }
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_78:
  v53 = v73[0];
  v54 = v60;
  v23 = v61;
LABEL_88:
  v68 = a1[4];

  sub_2191ED6C8(v53);
  v55 = v68;
  v68 = *a1;
  v56 = v68;
  v57 = a1[5];
  v70 = a1[6];
  v58 = v70;
  sub_218A4E998(&v68, v73, &qword_280E8EC00, &qword_280E8E260, &protocolRef_FCHeadlineProviding, sub_2186D6710);

  result = sub_218A4EEDC(&v70, v73, sub_218A4E8C4);
  *a3 = v56;
  a3[1] = v54;
  a3[2] = v17;
  a3[3] = v23;
  a3[4] = v55;
  a3[5] = v57;
  a3[6] = v58;
  return result;
}

void sub_218A4BB58(void *a1@<X0>, uint64_t *a3@<X8>)
{
  v60 = *a1;
  v55[0] = v60;
  sub_218A4E998(&v60, v56, &qword_280E8EC00, &qword_280E8E260, &protocolRef_FCHeadlineProviding, sub_2186D6710);

  sub_2191ED6C8(v4);
  sub_218799578(0, &qword_280E8EC00, &qword_280E8E260, &protocolRef_FCHeadlineProviding, sub_2186D6710);
  sub_218A4EC18();
  v48 = sub_219BF56E4();

  v59 = a1[1];
  v55[0] = v59;
  sub_218A4E998(&v59, v56, &qword_280E8EC00, &qword_280E8E260, &protocolRef_FCHeadlineProviding, sub_2186D6710);

  sub_2191ED6C8(v5);
  v52 = sub_219BF56E4();

  v58 = a1[4];
  v55[0] = v58;
  sub_218A4E998(&v58, v56, &qword_280E8EC00, &qword_280E8E260, &protocolRef_FCHeadlineProviding, sub_2186D6710);

  sub_2191ED6C8(v6);
  v54 = a1;
  v7 = sub_219BF56E4();

  v8 = v7;
  v9 = v7;
  if (v7 >> 62)
  {
LABEL_43:
    v47 = sub_219BF7214();
    v8 = v9;
    v10 = v47;
  }

  else
  {
    v10 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v53 = v8;
  v11 = MEMORY[0x277D84F90];
  if (v10)
  {
    v56[0] = MEMORY[0x277D84F90];
    sub_21870B65C(0, v10 & ~(v10 >> 63), 0);
    if (v10 < 0)
    {
      __break(1u);
      return;
    }

    v12 = 0;
    v13 = v56[0];
    v14 = v9;
    v15 = v9 & 0xC000000000000001;
    v16 = v9 & 0xFFFFFFFFFFFFFF8;
    do
    {
      if (v15)
      {
        v17 = MEMORY[0x21CECE0F0](v12, v14);
      }

      else
      {
        if ((v12 & 0x8000000000000000) != 0)
        {
          goto LABEL_41;
        }

        if (v12 >= *(v16 + 16))
        {
LABEL_42:
          __break(1u);
          goto LABEL_43;
        }

        v17 = *(v14 + 8 * v12 + 32);
        swift_unknownObjectRetain();
      }

      v57 = v17;
      swift_getAtKeyPath();
      swift_unknownObjectRelease();
      v18 = v55[0];
      v19 = v55[1];
      v56[0] = v13;
      v21 = *(v13 + 16);
      v20 = *(v13 + 24);
      v9 = v21 + 1;
      if (v21 >= v20 >> 1)
      {
        sub_21870B65C((v20 > 1), v21 + 1, 1);
        v13 = v56[0];
      }

      ++v12;
      *(v13 + 16) = v9;
      v22 = v13 + 16 * v21;
      *(v22 + 32) = v18;
      *(v22 + 40) = v19;
      v14 = v53;
    }

    while (v10 != v12);
    v9 = v53;
    v11 = MEMORY[0x277D84F90];
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  v23 = sub_218845F78(v13);

  v57 = v11;
  v24 = v52;
  if (v52 >> 62)
  {
    v25 = sub_219BF7214();
    v24 = v52;
    if (v25)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v25 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v25)
    {
LABEL_18:
      v26 = 0;
      v50 = v24 & 0xFFFFFFFFFFFFFF8;
      v51 = v24 & 0xC000000000000001;
      v27 = v24 + 32;
      v9 = v23 + 56;
      while (1)
      {
        if (v51)
        {
          v28 = MEMORY[0x21CECE0F0](v26, v24);
          v29 = __OFADD__(v26++, 1);
          if (v29)
          {
LABEL_37:
            __break(1u);
LABEL_38:
            v11 = v57;
            v9 = v53;
            break;
          }
        }

        else
        {
          if (v26 >= *(v50 + 16))
          {
            __break(1u);
LABEL_41:
            __break(1u);
            goto LABEL_42;
          }

          v28 = *(v27 + 8 * v26);
          swift_unknownObjectRetain();
          v29 = __OFADD__(v26++, 1);
          if (v29)
          {
            goto LABEL_37;
          }
        }

        v56[2] = v28;
        swift_getAtKeyPath();
        v30 = v56[1];
        if (*(v23 + 16) && (v31 = v56[0], sub_219BF7AA4(), sub_219BF5524(), v32 = sub_219BF7AE4(), v33 = -1 << *(v23 + 32), v34 = v32 & ~v33, ((*(v9 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) != 0))
        {
          v35 = ~v33;
          while (1)
          {
            v36 = (*(v23 + 48) + 16 * v34);
            v37 = *v36 == v31 && v36[1] == v30;
            if (v37 || (sub_219BF78F4() & 1) != 0)
            {
              break;
            }

            v34 = (v34 + 1) & v35;
            if (((*(v9 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) == 0)
            {
              goto LABEL_19;
            }
          }

          swift_unknownObjectRelease();
        }

        else
        {
LABEL_19:

          sub_219BF73D4();
          sub_219BF7414();
          sub_219BF7424();
          sub_219BF73E4();
        }

        v24 = v52;
        if (v26 == v25)
        {
          goto LABEL_38;
        }
      }
    }
  }

  v38 = v54[5];
  v55[0] = v54[6];
  v39 = v54[2];

  sub_218A4EEDC(v55, v56, sub_218A4E8C4);

  sub_2194796A0(v40, v39);
  v42 = v41;
  v43 = v54[3];

  sub_2194796A0(v44, v43);
  v45 = v55[0];
  *a3 = v48;
  a3[1] = v11;
  a3[2] = v42;
  a3[3] = v46;
  a3[4] = v9;
  a3[5] = v38;
  a3[6] = v45;
}

void sub_218A4C16C(void *a1@<X0>, uint64_t *a3@<X8>)
{
  v62 = *a1;
  v57[0] = v62;
  sub_218A4E998(&v62, v58, &qword_280E8EB20, &qword_280E8DA30, 0x277D312A8, sub_2186C6148);

  sub_2191ED69C(v4);
  sub_218799578(0, &qword_280E8EB20, &qword_280E8DA30, 0x277D312A8, sub_2186C6148);
  sub_218A4EB28();
  v50 = sub_219BF56E4();

  v61 = a1[1];
  v57[0] = v61;
  sub_218A4E998(&v61, v58, &qword_280E8EB20, &qword_280E8DA30, 0x277D312A8, sub_2186C6148);

  sub_2191ED69C(v5);
  v54 = sub_219BF56E4();

  v60 = a1[4];
  v57[0] = v60;
  sub_218A4E998(&v60, v58, &qword_280E8EB20, &qword_280E8DA30, 0x277D312A8, sub_2186C6148);

  sub_2191ED69C(v6);
  v56 = a1;
  v7 = sub_219BF56E4();

  v8 = v7;
  v9 = v7;
  if (v7 >> 62)
  {
    goto LABEL_43;
  }

  for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = v49)
  {
    v55 = v8;
    v11 = MEMORY[0x277D84F90];
    if (!i)
    {
      v13 = MEMORY[0x277D84F90];
      goto LABEL_16;
    }

    v58[0] = MEMORY[0x277D84F90];
    sub_21870B65C(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v12 = 0;
    v13 = v58[0];
    v14 = v9;
    v15 = v9 & 0xC000000000000001;
    v16 = v9 & 0xFFFFFFFFFFFFFF8;
    do
    {
      if (v15)
      {
        v17 = MEMORY[0x21CECE0F0](v12, v14);
      }

      else
      {
        if ((v12 & 0x8000000000000000) != 0)
        {
          goto LABEL_41;
        }

        if (v12 >= *(v16 + 16))
        {
          goto LABEL_42;
        }

        v17 = *(v14 + 8 * v12 + 32);
      }

      v18 = v17;
      v59[0] = v17;
      swift_getAtKeyPath();

      v19 = v57[0];
      v20 = v57[1];
      v58[0] = v13;
      v22 = *(v13 + 16);
      v21 = *(v13 + 24);
      v9 = v22 + 1;
      if (v22 >= v21 >> 1)
      {
        sub_21870B65C((v21 > 1), v22 + 1, 1);
        v13 = v58[0];
      }

      ++v12;
      *(v13 + 16) = v9;
      v23 = v13 + 16 * v22;
      *(v23 + 32) = v19;
      *(v23 + 40) = v20;
      v14 = v55;
    }

    while (i != v12);
    v9 = v55;
    v11 = MEMORY[0x277D84F90];
LABEL_16:
    v24 = sub_218845F78(v13);

    v59[0] = v11;
    v25 = v54;
    if (v54 >> 62)
    {
      v26 = sub_219BF7214();
      v25 = v54;
      if (!v26)
      {
LABEL_38:

        v40 = v56[5];
        v57[0] = v56[6];
        v41 = v56[2];

        sub_218A4EEDC(v57, v58, sub_218A4EA0C);

        sub_2194796A0(v42, v41);
        v44 = v43;
        v45 = v56[3];

        sub_2194796A0(v46, v45);
        v47 = v57[0];
        *a3 = v50;
        a3[1] = v11;
        a3[2] = v44;
        a3[3] = v48;
        a3[4] = v9;
        a3[5] = v40;
        a3[6] = v47;
        return;
      }
    }

    else
    {
      v26 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v26)
      {
        goto LABEL_38;
      }
    }

    v27 = 0;
    v52 = v25 & 0xFFFFFFFFFFFFFF8;
    v53 = v25 & 0xC000000000000001;
    v28 = v25 + 32;
    v9 = v24 + 56;
    while (1)
    {
      if (v53)
      {
        v29 = MEMORY[0x21CECE0F0](v27, v25);
      }

      else
      {
        if (v27 >= *(v52 + 16))
        {
          goto LABEL_40;
        }

        v29 = *(v28 + 8 * v27);
      }

      v30 = v29;
      if (__OFADD__(v27++, 1))
      {
        break;
      }

      v58[2] = v29;
      swift_getAtKeyPath();
      v32 = v58[1];
      if (*(v24 + 16) && (v33 = v58[0], sub_219BF7AA4(), sub_219BF5524(), v34 = sub_219BF7AE4(), v35 = -1 << *(v24 + 32), v36 = v34 & ~v35, ((*(v9 + ((v36 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v36) & 1) != 0))
      {
        v37 = ~v35;
        while (1)
        {
          v38 = (*(v24 + 48) + 16 * v36);
          v39 = *v38 == v33 && v38[1] == v32;
          if (v39 || (sub_219BF78F4() & 1) != 0)
          {
            break;
          }

          v36 = (v36 + 1) & v37;
          if (((*(v9 + ((v36 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v36) & 1) == 0)
          {
            goto LABEL_19;
          }
        }
      }

      else
      {
LABEL_19:

        sub_219BF73D4();
        sub_219BF7414();
        sub_219BF7424();
        sub_219BF73E4();
      }

      v25 = v54;
      if (v27 == v26)
      {
        v11 = v59[0];
        v9 = v55;
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    v49 = sub_219BF7214();
    v8 = v9;
  }

  __break(1u);
}