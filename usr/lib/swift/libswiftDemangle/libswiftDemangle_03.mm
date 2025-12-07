uint64_t swift::Demangle::NodePrinter::printChildren(uint64_t this, swift::Demangle::Node **a2, int a3, const char *a4)
{
  if (!a2)
  {
    return this;
  }

  v6 = this;
  v7 = *(a2 + 18);
  v8 = a2;
  if ((v7 - 1) >= 2)
  {
    if (v7 == 5)
    {
      v9 = *a2;
      v8 = *a2;
LABEL_10:
      v10 = (v9 + 8 * *(a2 + 2));
      goto LABEL_17;
    }

    v8 = 0;
  }

  switch(v7)
  {
    case 1:
      v10 = a2 + 1;
      break;
    case 2:
      v10 = a2 + 2;
      break;
    case 5:
      v9 = *a2;
      goto LABEL_10;
    default:
      v10 = 0;
      break;
  }

LABEL_17:
  while (v8 != v10)
  {
    v11 = *v8++;
    this = swift::Demangle::NodePrinter::print(v6, v11, (a3 + 1), 0);
    if (a4)
    {
      if (v8 != v10)
      {
        v12 = strlen(a4);
        this = std::string::append((v6 + 8), a4, v12);
      }
    }
  }

  return this;
}

uint64_t swift::Demangle::NodePrinter::getFirstChildOfKind(uint64_t a1, uint64_t *a2, int a3)
{
  if (a2)
  {
    v3 = *(a2 + 18);
    v4 = a2;
    if ((v3 - 1) >= 2)
    {
      if (v3 == 5)
      {
        v5 = *a2;
        v4 = *a2;
LABEL_10:
        v6 = (v5 + 8 * *(a2 + 2));
        goto LABEL_15;
      }

      v4 = 0;
    }

    switch(v3)
    {
      case 1:
        v6 = a2 + 1;
        goto LABEL_15;
      case 2:
        v6 = a2 + 2;
        goto LABEL_15;
      case 5:
        v5 = *a2;
        goto LABEL_10;
    }

    v6 = 0;
LABEL_15:
    while (v4 != v6)
    {
      result = *v4;
      if (*v4 && *(result + 16) == a3)
      {
        return result;
      }

      ++v4;
    }
  }

  return 0;
}

std::string *swift::Demangle::NodePrinter::printBoundGenericNoSugar(std::string *this, swift::Demangle::Node *a2, int a3)
{
  v4 = this;
  v5 = *(a2 + 18);
  if (v5 != 2)
  {
    if (v5 != 5 || *(a2 + 2) < 2u)
    {
      return this;
    }

    a2 = *a2;
  }

  v6 = *(a2 + 1);
  swift::Demangle::NodePrinter::print(this, *a2, (a3 + 1), 0);
  std::string::append(&v4->__r_.__value_.__r.__words[1], "<", 1uLL);
  if (v6)
  {
    v7 = *(v6 + 18);
    v8 = v6;
    if ((v7 - 1) >= 2)
    {
      if (v7 == 5)
      {
        v9 = *v6;
        v8 = *v6;
        goto LABEL_15;
      }

      v8 = 0;
    }

    switch(v7)
    {
      case 1:
        v10 = (v6 + 8);
        if (v8 == (v6 + 8))
        {
          goto LABEL_24;
        }

        goto LABEL_22;
      case 2:
        v10 = (v6 + 16);
        if (v8 == (v6 + 16))
        {
          goto LABEL_24;
        }

        goto LABEL_22;
      case 5:
        v9 = *v6;
LABEL_15:
        v10 = (v9 + 8 * *(v6 + 8));
        if (v8 == v10)
        {
          goto LABEL_24;
        }

LABEL_22:
        v12 = *v8;
        v11 = v8 + 1;
        swift::Demangle::NodePrinter::print(v4, v12, (a3 + 1), 0);
        while (v11 != v10)
        {
          std::string::append(&v4->__r_.__value_.__r.__words[1], ", ", 2uLL);
          v13 = *v11++;
          swift::Demangle::NodePrinter::print(v4, v13, (a3 + 1), 0);
        }

        goto LABEL_24;
    }

    v10 = 0;
    if (v8)
    {
      goto LABEL_22;
    }
  }

LABEL_24:

  return std::string::append(&v4->__r_.__value_.__r.__words[1], ">", 1uLL);
}

std::string *swift::Demangle::NodePrinter::printOptionalIndex(std::string *this, swift::Demangle::Node *a2)
{
  if (*(a2 + 18) == 4)
  {
    v7 = v2;
    v8 = v3;
    v5 = this;
    std::string::append(&this->__r_.__value_.__r.__words[1], "#", 1uLL);
    snprintf(__str, 0x20uLL, "%llu", *a2);
    std::string::append(&v5->__r_.__value_.__r.__words[1], __str);
    return std::string::append(&v5->__r_.__value_.__r.__words[1], " ", 1uLL);
  }

  return this;
}

uint64_t swift::Demangle::NodePrinter::printContext(swift::Demangle::NodePrinter *this, swift::Demangle::Node *a2)
{
  if (*(this + 33) != 1)
  {
    return 0;
  }

  if (*(a2 + 8) != 163)
  {
    return 1;
  }

  v2 = *a2;
  v3 = *(a2 + 1);
  if (v3 == 3)
  {
    if (*v2 == 24415 && v2[2] == 67)
    {
      LOBYTE(v8) = *(this + 50);
      return v8 & 1;
    }

    if (*(this + 8) != 3)
    {
      goto LABEL_27;
    }
  }

  else if (v3 == 5)
  {
    if (*v2 == 1718187859 && v2[4] == 116)
    {
      LOBYTE(v8) = *(this + 49);
      return v8 & 1;
    }

    if (*(this + 8) != 5)
    {
      goto LABEL_27;
    }
  }

  else
  {
    if (v3 != *(this + 8))
    {
LABEL_22:
      if (v3 >= 0xC && *v2 == 0x655F62646C6C5F5FLL && *(v2 + 2) == 1601335416)
      {
        LOBYTE(v8) = *(this + 48);
        return v8 & 1;
      }

LABEL_27:
      LOBYTE(v8) = 1;
      return v8 & 1;
    }

    if (!v3)
    {
      LOBYTE(v8) = 0;
      return v8 & 1;
    }
  }

  v7 = this;
  v8 = memcmp(v2, *(this + 7), v3);
  this = v7;
  if (v8)
  {
    goto LABEL_22;
  }

  return v8 & 1;
}

uint64_t swift::Demangle::NodePrinter::isSimpleType(swift::Demangle::NodePrinter *this, swift::Demangle::Node *a2)
{
  while (2)
  {
    v2 = a2;
    result = 0;
    switch(*(a2 + 8))
    {
      case 0:
      case 1:
      case 2:
      case 3:
      case 6:
      case 7:
      case 8:
      case 9:
      case 0xA:
      case 0xB:
      case 0xC:
      case 0x17:
      case 0x18:
      case 0x1A:
      case 0x1B:
      case 0x1C:
      case 0x1D:
      case 0x1E:
      case 0x1F:
      case 0x20:
      case 0x21:
      case 0x22:
      case 0x23:
      case 0x24:
      case 0x25:
      case 0x26:
      case 0x28:
      case 0x29:
      case 0x2A:
      case 0x2B:
      case 0x2C:
      case 0x2F:
      case 0x30:
      case 0x31:
      case 0x32:
      case 0x33:
      case 0x34:
      case 0x35:
      case 0x36:
      case 0x37:
      case 0x38:
      case 0x39:
      case 0x3A:
      case 0x3C:
      case 0x3D:
      case 0x3E:
      case 0x40:
      case 0x42:
      case 0x43:
      case 0x44:
      case 0x45:
      case 0x46:
      case 0x48:
      case 0x49:
      case 0x4A:
      case 0x4B:
      case 0x4C:
      case 0x4D:
      case 0x4E:
      case 0x4F:
      case 0x50:
      case 0x51:
      case 0x52:
      case 0x53:
      case 0x54:
      case 0x55:
      case 0x58:
      case 0x59:
      case 0x5A:
      case 0x5B:
      case 0x5C:
      case 0x5D:
      case 0x5E:
      case 0x5F:
      case 0x60:
      case 0x61:
      case 0x62:
      case 0x63:
      case 0x64:
      case 0x65:
      case 0x66:
      case 0x67:
      case 0x68:
      case 0x69:
      case 0x6A:
      case 0x6B:
      case 0x6C:
      case 0x6D:
      case 0x6E:
      case 0x6F:
      case 0x70:
      case 0x71:
      case 0x72:
      case 0x73:
      case 0x74:
      case 0x75:
      case 0x76:
      case 0x77:
      case 0x78:
      case 0x79:
      case 0x7A:
      case 0x7B:
      case 0x7C:
      case 0x7D:
      case 0x7E:
      case 0x7F:
      case 0x80:
      case 0x81:
      case 0x82:
      case 0x83:
      case 0x84:
      case 0x85:
      case 0x86:
      case 0x87:
      case 0x88:
      case 0x89:
      case 0x8A:
      case 0x8B:
      case 0x8C:
      case 0x8D:
      case 0x8E:
      case 0x8F:
      case 0x90:
      case 0x91:
      case 0x92:
      case 0x93:
      case 0x94:
      case 0x95:
      case 0x96:
      case 0x97:
      case 0x98:
      case 0x99:
      case 0x9C:
      case 0x9D:
      case 0x9E:
      case 0x9F:
      case 0xA0:
      case 0xA1:
      case 0xA2:
      case 0xA4:
      case 0xA5:
      case 0xA6:
      case 0xA7:
      case 0xA8:
      case 0xA9:
      case 0xAA:
      case 0xAB:
      case 0xAC:
      case 0xAD:
      case 0xAE:
      case 0xAF:
      case 0xB0:
      case 0xB2:
      case 0xB3:
      case 0xB4:
      case 0xB5:
      case 0xB6:
      case 0xB7:
      case 0xB8:
      case 0xB9:
      case 0xBA:
      case 0xBB:
      case 0xBC:
      case 0xBD:
      case 0xC0:
      case 0xC1:
      case 0xC2:
      case 0xC3:
      case 0xC4:
      case 0xC5:
      case 0xC6:
      case 0xC7:
      case 0xC9:
      case 0xCB:
      case 0xCC:
      case 0xCD:
      case 0xCE:
      case 0xCF:
      case 0xD0:
      case 0xD1:
      case 0xD2:
      case 0xD3:
      case 0xD4:
      case 0xD5:
      case 0xD6:
      case 0xD7:
      case 0xD8:
      case 0xD9:
      case 0xDB:
      case 0xDC:
      case 0xDF:
      case 0xE0:
      case 0xE1:
      case 0xE2:
      case 0xE3:
      case 0xE4:
      case 0xE5:
      case 0xE7:
      case 0xE8:
      case 0xE9:
      case 0xEB:
      case 0xF0:
      case 0xF1:
      case 0xF2:
      case 0xF7:
      case 0xF8:
      case 0xF9:
      case 0xFA:
      case 0xFB:
      case 0xFC:
      case 0xFD:
      case 0xFE:
      case 0xFF:
      case 0x100:
      case 0x101:
      case 0x102:
      case 0x103:
      case 0x104:
      case 0x105:
      case 0x106:
      case 0x107:
      case 0x108:
      case 0x109:
      case 0x10A:
      case 0x10B:
      case 0x10C:
      case 0x10D:
      case 0x10E:
      case 0x10F:
      case 0x110:
      case 0x111:
      case 0x112:
      case 0x113:
      case 0x114:
      case 0x115:
      case 0x116:
      case 0x117:
      case 0x118:
      case 0x119:
      case 0x11A:
      case 0x11B:
      case 0x11C:
      case 0x11D:
      case 0x11E:
      case 0x11F:
      case 0x120:
      case 0x121:
      case 0x122:
      case 0x123:
      case 0x124:
      case 0x125:
      case 0x126:
      case 0x127:
      case 0x128:
      case 0x129:
      case 0x12A:
      case 0x12B:
      case 0x12C:
      case 0x12D:
      case 0x12E:
      case 0x130:
      case 0x131:
      case 0x132:
      case 0x133:
      case 0x139:
      case 0x13A:
      case 0x13B:
      case 0x13C:
      case 0x13D:
      case 0x13E:
      case 0x13F:
      case 0x140:
      case 0x141:
      case 0x142:
      case 0x143:
      case 0x144:
      case 0x145:
      case 0x146:
      case 0x147:
      case 0x148:
      case 0x149:
      case 0x14A:
      case 0x14B:
      case 0x14C:
      case 0x14D:
      case 0x14E:
      case 0x14F:
      case 0x150:
      case 0x151:
      case 0x152:
      case 0x153:
      case 0x154:
      case 0x155:
      case 0x156:
      case 0x157:
      case 0x158:
      case 0x159:
      case 0x15A:
      case 0x15B:
      case 0x15C:
      case 0x15D:
      case 0x15E:
      case 0x15F:
      case 0x160:
      case 0x161:
      case 0x162:
      case 0x163:
      case 0x164:
      case 0x165:
      case 0x166:
      case 0x167:
      case 0x168:
      case 0x169:
      case 0x16A:
      case 0x16B:
      case 0x16C:
      case 0x16D:
      case 0x16E:
      case 0x16F:
      case 0x172:
      case 0x173:
      case 0x174:
      case 0x175:
        return result;
      case 4:
      case 5:
      case 0xD:
      case 0xE:
      case 0xF:
      case 0x10:
      case 0x11:
      case 0x12:
      case 0x13:
      case 0x14:
      case 0x15:
      case 0x16:
      case 0x19:
      case 0x27:
      case 0x2D:
      case 0x2E:
      case 0x3B:
      case 0x3F:
      case 0x41:
      case 0x47:
      case 0x56:
      case 0x57:
      case 0x9A:
      case 0x9B:
      case 0xA3:
      case 0xB1:
      case 0xBE:
      case 0xBF:
      case 0xDA:
      case 0xDD:
      case 0xDE:
      case 0xE6:
      case 0xEA:
      case 0xEC:
      case 0xED:
      case 0xEE:
      case 0xEF:
      case 0xF4:
      case 0xF5:
      case 0xF6:
      case 0x12F:
      case 0x134:
      case 0x135:
      case 0x136:
      case 0x137:
      case 0x138:
      case 0x170:
      case 0x171:
        return 1;
      case 0xC8:
        v5 = *(a2 + 18);
        if ((v5 - 1) < 2)
        {
          goto LABEL_11;
        }

        if (v5 == 5 && *(a2 + 2))
        {
          v2 = *a2;
LABEL_11:
          v6 = *v2;
        }

        else
        {
          v6 = 0;
        }

        v9 = *(v6 + 18);
        if (v9 == 5)
        {
          return *(v6 + 2) < 2u;
        }

        else
        {
          return v9 != 2;
        }

      case 0xCA:
        v7 = *(a2 + 18);
        if ((v7 - 1) < 2)
        {
          goto LABEL_16;
        }

        if (v7 == 5 && *(a2 + 2))
        {
          v2 = *a2;
LABEL_16:
          v8 = *v2;
        }

        else
        {
          v8 = 0;
        }

        v10 = *(v8 + 18);
        if ((v10 - 1) < 2)
        {
          goto LABEL_25;
        }

        if (v10 == 5 && *(v8 + 2))
        {
          v8 = *v8;
LABEL_25:
          v11 = *v8;
        }

        else
        {
          v11 = 0;
        }

        v12 = *(v11 + 18);
        if ((v12 - 1) < 2)
        {
          return 0;
        }

        if (v12 == 5)
        {
          return *(v11 + 2) == 0;
        }

        return 1;
      case 0xF3:
        v4 = *(a2 + 18);
        if ((v4 - 1) < 2)
        {
          goto LABEL_6;
        }

        a2 = 0;
        if (v4 == 5)
        {
          a2 = 0;
          if (*(v2 + 2))
          {
            v2 = *v2;
LABEL_6:
            a2 = *v2;
          }
        }

        continue;
      default:
        printer_unreachable("bad node kind");
    }
  }
}

std::string *swift::Demangle::NodePrinter::printWithParens(swift::Demangle::NodePrinter *this, swift::Demangle::Node *a2, int a3)
{
  if (swift::Demangle::NodePrinter::isSimpleType(this, a2))
  {

    return swift::Demangle::NodePrinter::print(this, a2, (a3 + 1), 0);
  }

  else
  {
    std::string::append((this + 8), "(", 1uLL);
    swift::Demangle::NodePrinter::print(this, a2, (a3 + 1), 0);

    return std::string::append((this + 8), ")", 1uLL);
  }
}

uint64_t swift::Demangle::NodePrinter::findSugar(swift::Demangle::NodePrinter *this, swift::Demangle::Node *a2)
{
  while (1)
  {
    v2 = a2;
    v3 = *(a2 + 18);
    if (v3 != 1)
    {
      if (v3 != 5)
      {
        if (v3 == 2)
        {
          goto LABEL_18;
        }

        return 0;
      }

      v4 = *(a2 + 2);
      if (v4 != 1)
      {
        goto LABEL_16;
      }
    }

    if (*(a2 + 8) != 243)
    {
      break;
    }

    if ((v3 - 1) < 2)
    {
LABEL_4:
      a2 = *v2;
    }

    else
    {
      a2 = 0;
      if (v3 == 5)
      {
        a2 = 0;
        if (*(v2 + 2))
        {
          v2 = *v2;
          goto LABEL_4;
        }
      }
    }
  }

  if (v3 != 5)
  {
    return 0;
  }

  v4 = *(a2 + 2);
LABEL_16:
  if (v4 != 2)
  {
    return 0;
  }

  v3 = 5;
LABEL_18:
  v5 = *(a2 + 8);
  if ((v5 & 0xFFFE) != 0xE)
  {
    return 0;
  }

  v6 = a2;
  if (v3 == 2)
  {
    goto LABEL_22;
  }

  if (*(a2 + 2))
  {
    v6 = *a2;
LABEL_22:
    v7 = *v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = *(v7 + 18);
  if ((v8 - 1) < 2)
  {
LABEL_28:
    v9 = *v7;
    if (v3 != 2)
    {
      goto LABEL_31;
    }

    goto LABEL_33;
  }

  if (v8 == 5 && *(v7 + 2))
  {
    v7 = *v7;
    goto LABEL_28;
  }

  v9 = 0;
  if (v3 == 2)
  {
LABEL_33:
    v10 = *(v2 + 1);
    goto LABEL_35;
  }

LABEL_31:
  if (*(a2 + 2) >= 2u)
  {
    v2 = *a2;
    goto LABEL_33;
  }

  v10 = 0;
LABEL_35:
  v11 = *(v9 + 18);
  if (v5 != 14)
  {
    v14 = v9;
    if (v11 != 2)
    {
      if (v11 != 5 || *(v9 + 2) < 2u)
      {
        v15 = 0;
LABEL_56:
        if (*(v15 + 8) != 103 || v15[1] != 5)
        {
          goto LABEL_62;
        }

        v18 = *v15;
        v19 = *v18;
        v20 = *(v18 + 4);
        if (v19 != 1634890305 || v20 != 121)
        {
          goto LABEL_62;
        }

        v42 = *(v10 + 18);
        if (v42 != 1 && (v42 != 5 || *(v10 + 8) != 1))
        {
          goto LABEL_62;
        }

        v43 = v9;
        if ((v11 - 1) >= 2)
        {
          if (v11 != 5 || !*(v9 + 2))
          {
            v44 = 0;
LABEL_131:
            if (*(v44 + 8) == 163 && v44[1] == 5)
            {
              v51 = *v44;
              v52 = *v51;
              v53 = *(v51 + 4);
              if (v52 == 1718187859 && v53 == 116)
              {
                return 3;
              }
            }

LABEL_62:
            v22 = v9;
            if (v11 != 2)
            {
              if (v11 != 5 || *(v9 + 2) < 2u)
              {
                v23 = 0;
LABEL_90:
                if (*(v23 + 8) != 103 || v23[1] != 10)
                {
                  return 0;
                }

                v34 = *v23;
                v35 = *v34;
                v36 = *(v34 + 4);
                if (v35 != 0x616E6F6974636944 || v36 != 31090)
                {
                  return 0;
                }

                v45 = *(v10 + 18);
                if (v45 != 2 && (v45 != 5 || *(v10 + 8) != 2))
                {
                  return 0;
                }

                if ((v11 - 1) >= 2)
                {
                  if (v11 != 5 || !*(v9 + 2))
                  {
                    v46 = 0;
                    goto LABEL_149;
                  }

                  v9 = *v9;
                }

                v46 = *v9;
LABEL_149:
                if (*(v46 + 8) != 163 || v46[1] != 5)
                {
                  return 0;
                }

                v59 = *v46;
                v60 = *v59;
                v61 = *(v59 + 4);
                if (v60 != 1718187859 || v61 != 116)
                {
                  return 0;
                }

                return 4;
              }

              v22 = *v9;
            }

            v23 = v22[1];
            goto LABEL_90;
          }

          v43 = *v9;
        }

        v44 = *v43;
        goto LABEL_131;
      }

      v14 = *v9;
    }

    v15 = v14[1];
    goto LABEL_56;
  }

  v12 = v9;
  if (v11 == 2)
  {
    goto LABEL_40;
  }

  if (v11 == 5 && *(v9 + 2) >= 2u)
  {
    v12 = *v9;
LABEL_40:
    v13 = v12[1];
  }

  else
  {
    v13 = 0;
  }

  if (*(v13 + 16) != 103)
  {
    goto LABEL_50;
  }

  if (*(v13 + 8) != 8)
  {
    goto LABEL_50;
  }

  if (**v13 != 0x6C616E6F6974704FLL)
  {
    goto LABEL_50;
  }

  v39 = *(v10 + 18);
  if (v39 != 1 && (v39 != 5 || *(v10 + 8) != 1))
  {
    goto LABEL_50;
  }

  v40 = v9;
  if ((v11 - 1) < 2)
  {
    goto LABEL_104;
  }

  if (v11 == 5 && *(v9 + 2))
  {
    v40 = *v9;
LABEL_104:
    v41 = *v40;
  }

  else
  {
    v41 = 0;
  }

  if (*(v41 + 8) == 163 && v41[1] == 5)
  {
    v47 = *v41;
    v48 = *v47;
    v49 = *(v47 + 4);
    if (v48 == 1718187859 && v49 == 116)
    {
      return 1;
    }
  }

LABEL_50:
  v16 = v9;
  if (v11 == 2)
  {
    goto LABEL_54;
  }

  if (v11 == 5 && *(v9 + 2) >= 2u)
  {
    v16 = *v9;
LABEL_54:
    v17 = v16[1];
  }

  else
  {
    v17 = 0;
  }

  if (*(v17 + 16) != 103 || *(v17 + 8) != 27)
  {
    return 0;
  }

  v24 = *v17;
  v25 = *v24;
  v26 = v24[1];
  v27 = v24[2];
  v28 = *(v24 + 19);
  v29 = v25 == 0x746963696C706D49 && v26 == 0x706172776E55796CLL;
  v30 = v29 && v27 == 0x6F6974704F646570;
  if (!v30 || v28 != 0x6C616E6F6974704FLL)
  {
    return 0;
  }

  v32 = *(v10 + 18);
  if (v32 != 1 && (v32 != 5 || *(v10 + 8) != 1))
  {
    return 0;
  }

  if ((v11 - 1) < 2)
  {
    goto LABEL_88;
  }

  if (v11 == 5 && *(v9 + 2))
  {
    v9 = *v9;
LABEL_88:
    v33 = *v9;
  }

  else
  {
    v33 = 0;
  }

  if (*(v33 + 8) != 163 || v33[1] != 5)
  {
    return 0;
  }

  v55 = *v33;
  v56 = *v55;
  v57 = *(v55 + 4);
  if (v56 != 1718187859 || v57 != 116)
  {
    return 0;
  }

  return 2;
}

std::string *swift::Demangle::NodePrinter::printBoundGeneric(std::string *this, swift::Demangle::Node *a2, int a3)
{
  v4 = this;
  v5 = *(a2 + 18);
  if (v5 != 2)
  {
    if (v5 != 5)
    {
      return this;
    }

    v6 = *(a2 + 2);
    if (v6 < 2)
    {
      return this;
    }

    if (v6 != 2)
    {
      goto LABEL_9;
    }
  }

  if (this[1].__r_.__value_.__s.__data_[8] != 1)
  {
    goto LABEL_9;
  }

  v7 = *(a2 + 8);
  if (v7 != 16)
  {
    if (v7 == 13)
    {
LABEL_9:

      return swift::Demangle::NodePrinter::printBoundGenericNoSugar(this, a2, a3);
    }

    v14 = a2;
    Sugar = swift::Demangle::NodePrinter::findSugar(this, a2);
    v16 = Sugar;
    if (Sugar <= 2)
    {
      if ((Sugar - 1) >= 2)
      {
        this = v4;
        a2 = v14;
        goto LABEL_9;
      }

      if (v5 != 2)
      {
        if (*(v14 + 2) < 2u)
        {
          v17 = 0;
LABEL_36:
          v21 = *(v17 + 18);
          if ((v21 - 1) >= 2)
          {
            if (v21 != 5 || !*(v17 + 2))
            {
              v22 = 0;
LABEL_42:
              swift::Demangle::NodePrinter::printWithParens(v4, v22, a3);
              if (v16 == 1)
              {
                v23 = "?";
              }

              else
              {
                v23 = "!";
              }

              goto LABEL_79;
            }

            v17 = *v17;
          }

          v22 = *v17;
          goto LABEL_42;
        }

        v14 = *v14;
      }

      v17 = *(v14 + 1);
      goto LABEL_36;
    }

    if (Sugar == 3)
    {
      if (v5 != 2)
      {
        if (*(v14 + 2) < 2u)
        {
          v18 = 0;
LABEL_46:
          v24 = *(v18 + 18);
          if ((v24 - 1) >= 2)
          {
            if (v24 != 5 || !*(v18 + 2))
            {
              v25 = 0;
              goto LABEL_64;
            }

            v18 = *v18;
          }

          v25 = *v18;
LABEL_64:
          std::string::append(&v4->__r_.__value_.__r.__words[1], "[", 1uLL);
          v29 = (a3 + 1);
          v30 = v4;
          v31 = v25;
LABEL_78:
          swift::Demangle::NodePrinter::print(v30, v31, v29, 0);
          v23 = "]";
LABEL_79:

          return std::string::append(&v4->__r_.__value_.__r.__words[1], v23, 1uLL);
        }

        v14 = *v14;
      }

      v18 = *(v14 + 1);
      goto LABEL_46;
    }

    v19 = v14;
    if (v5 != 2)
    {
      if (*(v14 + 2) < 2u)
      {
        v20 = 0;
LABEL_52:
        v26 = *(v20 + 18);
        if ((v26 - 1) >= 2)
        {
          if (v26 != 5 || !*(v20 + 2))
          {
            v27 = 0;
LABEL_66:
            if (v5 != 2)
            {
              if (*(v14 + 2) < 2u)
              {
                v32 = 0;
LABEL_71:
                v33 = *(v32 + 18);
                if (v33 != 2)
                {
                  if (v33 != 5 || *(v32 + 2) < 2u)
                  {
                    v34 = 0;
                    goto LABEL_77;
                  }

                  v32 = *v32;
                }

                v34 = v32[1];
LABEL_77:
                std::string::append(&v4->__r_.__value_.__r.__words[1], "[", 1uLL);
                swift::Demangle::NodePrinter::print(v4, v27, (a3 + 1), 0);
                std::string::append(&v4->__r_.__value_.__r.__words[1], " : ", 3uLL);
                v29 = (a3 + 1);
                v30 = v4;
                v31 = v34;
                goto LABEL_78;
              }

              v14 = *v14;
            }

            v32 = *(v14 + 1);
            goto LABEL_71;
          }

          v20 = *v20;
        }

        v27 = *v20;
        goto LABEL_66;
      }

      v19 = *v14;
    }

    v20 = *(v19 + 1);
    goto LABEL_52;
  }

  v8 = a2;
  v9 = a2;
  if (v5 != 2)
  {
    if (*(a2 + 2) < 2u)
    {
      goto LABEL_87;
    }

    v9 = *a2;
  }

  v10 = *(v9 + 1);
  if (v10)
  {
    v11 = *(v10 + 18);
    v12 = v10;
    if ((v11 - 1) >= 2)
    {
      if (v11 == 5)
      {
        v13 = *v10;
        v12 = *v10;
LABEL_62:
        v28 = (v13 + 8 * *(v10 + 8));
        goto LABEL_86;
      }

      v12 = 0;
    }

    switch(v11)
    {
      case 1:
        v28 = (v10 + 8);
        break;
      case 2:
        v28 = (v10 + 16);
        break;
      case 5:
        v13 = *v10;
        goto LABEL_62;
      default:
        v28 = 0;
        break;
    }

LABEL_86:
    while (v12 != v28)
    {
      v35 = *v12++;
      swift::Demangle::NodePrinter::print(v4, v35, (a3 + 1), 0);
    }
  }

LABEL_87:
  std::string::append(&v4->__r_.__value_.__r.__words[1], " as ", 4uLL);
  v36 = *(v8 + 18);
  if ((v36 - 1) >= 2)
  {
    if (v36 != 5 || !*(v8 + 2))
    {
      v37 = 0;
      goto LABEL_93;
    }

    v8 = *v8;
  }

  v37 = *v8;
LABEL_93:

  return swift::Demangle::NodePrinter::print(v4, v37, (a3 + 1), 0);
}

uint64_t swift::Demangle::NodePrinter::getChildIf(uint64_t a1, uint64_t *a2, int a3)
{
  v3 = *(a2 + 18);
  v4 = a2;
  if ((v3 - 1) >= 2)
  {
    if (v3 == 5)
    {
      v5 = *a2;
      v4 = *a2;
      goto LABEL_9;
    }

    v4 = 0;
  }

  if (v3 == 1)
  {
    v6 = a2 + 1;
    goto LABEL_15;
  }

  if (v3 == 2)
  {
    v6 = a2 + 2;
    goto LABEL_15;
  }

  if (v3 != 5)
  {
    v6 = 0;
    goto LABEL_15;
  }

  v5 = *a2;
LABEL_9:
  v6 = (v5 + 8 * *(a2 + 2));
LABEL_15:
  while (v4 != v6 && *(*v4 + 16) != a3)
  {
    ++v4;
  }

  if (v3 == 5)
  {
    if (v4 != (*a2 + 8 * *(a2 + 2)))
    {
      return *v4;
    }
  }

  else
  {
    v7 = a2 + 1;
    if (v3 != 1)
    {
      v7 = 0;
    }

    if (v3 == 2)
    {
      v8 = a2 + 2;
    }

    else
    {
      v8 = v7;
    }

    if (v4 != v8)
    {
      return *v4;
    }
  }

  return 0;
}

void swift::Demangle::NodePrinter::printFunctionParameters(swift::Demangle::NodePrinter *this, swift::Demangle::Node *a2, swift::Demangle::Node *a3, int a4, int a5)
{
  v29 = a2;
  v28 = a4;
  v27 = a5;
  if (*(a3 + 8) != 3)
  {
    *(this + 105) = 0;
    return;
  }

  v6 = *(a3 + 18);
  if ((v6 - 1) < 2)
  {
    goto LABEL_6;
  }

  if (v6 == 5 && *(a3 + 2))
  {
    a3 = *a3;
LABEL_6:
    v7 = *a3;
    goto LABEL_9;
  }

  v7 = 0;
LABEL_9:
  v8 = *(v7 + 18);
  if ((v8 - 1) < 2)
  {
LABEL_13:
    v9 = *v7;
    goto LABEL_15;
  }

  if (v8 == 5 && *(v7 + 2))
  {
    v7 = *v7;
    goto LABEL_13;
  }

  v9 = 0;
LABEL_15:
  v10 = (v9 + 2);
  if (*(v9 + 8) == 234)
  {
    v26 = &v29;
    v25 = 0;
    if (!a2)
    {
      goto LABEL_28;
    }

    v11 = *(a2 + 18);
    if ((v11 - 1) < 2)
    {
      v12 = 1;
      goto LABEL_29;
    }

    if (v11 == 5)
    {
      v12 = *(a2 + 2) != 0;
    }

    else
    {
LABEL_28:
      v12 = 0;
    }

LABEL_29:
    v24 = v12;
    std::string::push_back((this + 8), 40);
    v15 = *(v9 + 18);
    v16 = v9;
    if ((v15 - 1) >= 2)
    {
      if (v15 == 5)
      {
        v17 = *v9;
        v16 = *v9;
LABEL_37:
        v10 = (v17 + 8 * *(v9 + 2));
        goto LABEL_40;
      }

      v16 = 0;
    }

    switch(v15)
    {
      case 1:
        v10 = (v9 + 1);
        break;
      case 2:
        break;
      case 5:
        v17 = *v9;
        goto LABEL_37;
      default:
        v10 = 0;
        break;
    }

LABEL_40:
    v23[0] = &v24;
    v23[1] = this;
    v23[2] = &v26;
    v23[3] = &v25;
    v23[4] = &v27;
    v23[5] = &v28;
    if (v16 != v10)
    {
      v19 = *v16;
      v18 = v16 + 1;
      swift::Demangle::NodePrinter::printFunctionParameters(swift::Demangle::Node *,swift::Demangle::Node *,unsigned int,BOOL)::$_1::operator()(v23, v19);
      while (v18 != v10)
      {
        if (v27)
        {
          v20 = ", ";
        }

        else
        {
          v20 = "";
        }

        if (v27)
        {
          v21 = 2;
        }

        else
        {
          v21 = 0;
        }

        std::string::append((this + 8), v20, v21);
        v22 = *v18++;
        swift::Demangle::NodePrinter::printFunctionParameters(swift::Demangle::Node *,swift::Demangle::Node *,unsigned int,BOOL)::$_1::operator()(v23, v22);
      }
    }

    std::string::push_back((this + 8), 41);
    return;
  }

  if (a5)
  {
    std::string::push_back((this + 8), 40);
    swift::Demangle::NodePrinter::print(this, v9, (a4 + 1), 0);

    std::string::push_back((this + 8), 41);
  }

  else
  {
    v14 = (this + 8);

    std::string::append(v14, "(_:)", 4uLL);
  }
}

uint64_t swift::Demangle::NodePrinter::printFunctionType(uint64_t this, swift::Demangle::Node *a2, swift::Demangle::Node *a3, uint64_t a4)
{
  v5 = a3;
  v7 = this;
  v8 = *(a3 + 18);
  if (v8 != 2 && (v8 != 5 || *(a3 + 2) <= 1u))
  {
    *(this + 105) = 0;
    return this;
  }

  v58[0] = this;
  v58[1] = a3;
  v59 = a4;
  v9 = *(a3 + 8);
  if (v9 <= 0xAE)
  {
    if (v9 == 11)
    {
LABEL_9:
      std::string::append((this + 8), "@autoclosure ", 0xDuLL);
      goto LABEL_18;
    }

    if (v9 != 23)
    {
      if (v9 != 66)
      {
        goto LABEL_18;
      }

      goto LABEL_9;
    }

    v10 = "c";
    goto LABEL_17;
  }

  switch(v9)
  {
    case 0xAFu:
LABEL_16:
      v10 = "block";
LABEL_17:
      swift::Demangle::NodePrinter::printFunctionType(swift::Demangle::Node *,swift::Demangle::Node *,unsigned int)::$_0::operator()(v58, v10);
      break;
    case 0xB0u:
      std::string::append((this + 8), "@escaping ", 0xAuLL);
      goto LABEL_16;
    case 0xE9u:
      std::string::append((this + 8), "@convention(thin) ", 0x12uLL);
      break;
  }

LABEL_18:
  v11 = *(v5 + 18);
  if (v11 == 1)
  {
    v12 = *(*v5 + 16) == 24;
    v14 = 1;
    v13 = -1;
    goto LABEL_22;
  }

  if (v11 == 2)
  {
    v12 = *(*v5 + 16) == 24;
    v13 = 0;
    v14 = 2;
LABEL_22:
    v57 = *(*(v5 + v12) + 16) == 137;
    if (*(*(v5 + v12) + 16) == 137)
    {
      v15 = (v12 + 1);
    }

    else
    {
      v15 = v12;
    }

    v16 = 1;
    v17 = v5;
    goto LABEL_32;
  }

  v14 = *(v5 + 2);
  v13 = v14 - 2;
  if (v14)
  {
    v18 = **v5 + 16;
  }

  else
  {
    v18 = 16;
  }

  v16 = 0;
  v19 = *v18 == 24;
  v17 = *v5;
  v57 = *(*(*v5 + 8 * v19) + 16) == 137;
  if (*(*(*v5 + 8 * v19) + 16) == 137)
  {
    v15 = (v19 + 1);
  }

  else
  {
    v15 = v19;
  }

LABEL_32:
  if (*(*(v17 + v15) + 16) != 135)
  {
    goto LABEL_44;
  }

  if (v11 != 1)
  {
    if (v11 == 5)
    {
      if (*(v5 + 2) > v15)
      {
        goto LABEL_38;
      }

      goto LABEL_42;
    }

    if (v11 != 2)
    {
      goto LABEL_42;
    }

    v11 = 2;
  }

  if (v11 > v15)
  {
LABEL_38:
    v20 = v5;
    if ((v16 & 1) == 0)
    {
      v20 = *v5;
    }

    v21 = *(v20 + v15);
    goto LABEL_43;
  }

LABEL_42:
  v21 = 0;
LABEL_43:
  swift::Demangle::NodePrinter::print(v7, v21, (a4 + 1), 0);
  v15 = (v15 + 1);
  LODWORD(v11) = *(v5 + 18);
LABEL_44:
  if ((v11 - 1) >= 2)
  {
    v22 = 0;
    v23 = *v5;
  }

  else
  {
    v22 = 1;
    v23 = v5;
  }

  v24 = *(*(v23 + v15) + 16);
  v25 = v11;
  if (v24 == 136)
  {
    if (v11 == 1)
    {
      if (v11 > v15)
      {
        goto LABEL_56;
      }
    }

    else
    {
      if (v11 != 5)
      {
        if (v11 != 2 || v15 >= 2)
        {
          goto LABEL_60;
        }

LABEL_56:
        v28 = v5;
        if ((v22 & 1) == 0)
        {
          v28 = *v5;
        }

        v26 = *(v28 + v15);
LABEL_61:
        v15 = (v15 + 1);
        v27 = v5;
        if (v22)
        {
          goto LABEL_63;
        }

        goto LABEL_62;
      }

      if (*(v5 + 2) > v15)
      {
        goto LABEL_56;
      }
    }

LABEL_60:
    v26 = 0;
    goto LABEL_61;
  }

  v26 = 0;
  v27 = v5;
  if ((v22 & 1) == 0)
  {
LABEL_62:
    v27 = *v5;
  }

LABEL_63:
  if (*(*(v27 + v15) + 16) != 69)
  {
    goto LABEL_75;
  }

  if (v11 != 1)
  {
    if (v11 == 5)
    {
      if (*(v5 + 2) > v15)
      {
        goto LABEL_69;
      }

      goto LABEL_73;
    }

    if (v11 != 2)
    {
      goto LABEL_73;
    }

    v25 = 2;
  }

  if (v25 > v15)
  {
LABEL_69:
    v29 = v5;
    if ((v22 & 1) == 0)
    {
      v29 = *v5;
    }

    v30 = *(v29 + v15);
    goto LABEL_74;
  }

LABEL_73:
  v30 = 0;
LABEL_74:
  swift::Demangle::NodePrinter::print(v7, v30, (a4 + 1), 0);
  v15 = (v15 + 1);
  LODWORD(v11) = *(v5 + 18);
LABEL_75:
  if ((v11 - 1) >= 2)
  {
    v31 = 0;
    v32 = *v5;
  }

  else
  {
    v31 = 1;
    v32 = v5;
  }

  if (*(*(v32 + v15) + 16) != 70)
  {
    v35 = -100;
    v36 = v5;
    if (v31)
    {
      goto LABEL_85;
    }

LABEL_84:
    v36 = *v5;
    goto LABEL_85;
  }

  v33 = v5;
  if ((v31 & 1) == 0)
  {
    v33 = *v5;
  }

  v34 = **(v33 + v15);
  v15 = (v15 + 1);
  v35 = v34 - 100;
  v36 = v5;
  if ((v31 & 1) == 0)
  {
    goto LABEL_84;
  }

LABEL_85:
  if (*(*(v36 + v15) + 16) == 285)
  {
    goto LABEL_89;
  }

  v37 = v5;
  if ((v31 & 1) == 0)
  {
    v37 = *v5;
  }

  if (*(*(v37 + v15) + 16) == 286)
  {
LABEL_89:
    if (v11 == 1)
    {
      if (!v15)
      {
        goto LABEL_97;
      }
    }

    else
    {
      if (v11 != 5)
      {
        if (v11 != 2 || v15 >= 2)
        {
          goto LABEL_101;
        }

LABEL_97:
        v40 = v5;
        if ((v31 & 1) == 0)
        {
          v40 = *v5;
        }

        v38 = *(v40 + v15);
LABEL_102:
        v15 = (v15 + 1);
        v39 = v5;
        if (v31)
        {
          goto LABEL_104;
        }

        goto LABEL_103;
      }

      if (*(v5 + 2) > v15)
      {
        goto LABEL_97;
      }
    }

LABEL_101:
    v38 = 0;
    goto LABEL_102;
  }

  v38 = 0;
  v39 = v5;
  if ((v31 & 1) == 0)
  {
LABEL_103:
    v39 = *v5;
  }

LABEL_104:
  v41 = *(*(v39 + v15) + 16);
  if (v41 == 68)
  {
    v42 = v15 + 1;
  }

  else
  {
    v42 = v15;
  }

  v43 = v5;
  if ((v31 & 1) == 0)
  {
    v43 = *v5;
  }

  v44 = *(*(v43 + v42) + 16);
  v45 = ((v35 >> 1) | (v35 << 7));
  if (v45 > 3)
  {
    if (v45 == 4)
    {
      v46 = "@differentiable(_linear) ";
    }

    else
    {
      if (v45 != 7)
      {
        goto LABEL_120;
      }

      v46 = "@differentiable(reverse) ";
    }

    v47 = (v7 + 8);
    v48 = 25;
  }

  else if ((v35 >> 1) | (v35 << 7))
  {
    if (v45 != 1)
    {
      goto LABEL_120;
    }

    v46 = "@differentiable(_forward) ";
    v47 = (v7 + 8);
    v48 = 26;
  }

  else
  {
    v46 = "@differentiable ";
    v47 = (v7 + 8);
    v48 = 16;
  }

  std::string::append(v47, v46, v48);
LABEL_120:
  if (v26)
  {
    swift::Demangle::NodePrinter::print(v7, v26, (a4 + 1), 0);
  }

  if (v41 == 68)
  {
    std::string::append((v7 + 8), "@Sendable ", 0xAuLL);
  }

  v49 = *(v5 + 18);
  v50 = v49 - 1;
  if (v49 != 1)
  {
    if (v49 == 5)
    {
      v49 = *(v5 + 2);
    }

    else
    {
      if (v49 != 2)
      {
LABEL_133:
        v52 = 0;
        goto LABEL_134;
      }

      v49 = 2;
    }
  }

  if (v49 <= v13)
  {
    goto LABEL_133;
  }

  v51 = v5;
  if (v50 >= 2)
  {
    v51 = *v5;
  }

  v52 = *(v51 + v13);
LABEL_134:
  this = (*(*v7 + 24))(v7, a2, v52, a4, *(v7 + 47));
  if (*(v7 + 47) != 1)
  {
    return this;
  }

  if (v44 == 284)
  {
    std::string::append((v7 + 8), " async", 6uLL);
  }

  if (v38)
  {
    swift::Demangle::NodePrinter::print(v7, v38, (a4 + 1), 0);
  }

  std::string::append((v7 + 8), " -> ", 4uLL);
  if (v57)
  {
    std::string::append((v7 + 8), "sending ", 8uLL);
  }

  v53 = *(v5 + 18);
  v54 = v53 - 1;
  if (v53 != 1)
  {
    if (v53 == 5)
    {
      v53 = *(v5 + 2);
    }

    else
    {
      if (v53 != 2)
      {
        goto LABEL_150;
      }

      v53 = 2;
    }
  }

  v55 = (v14 - 1);
  if (v53 > v55)
  {
    if (v54 >= 2)
    {
      v5 = *v5;
    }

    v56 = *(v5 + v55);
    return swift::Demangle::NodePrinter::print(v7, v56, (a4 + 1), 0);
  }

LABEL_150:
  v56 = 0;
  return swift::Demangle::NodePrinter::print(v7, v56, (a4 + 1), 0);
}

std::string *swift::Demangle::NodePrinter::printFunctionType(swift::Demangle::Node *,swift::Demangle::Node *,unsigned int)::$_0::operator()(uint64_t *a1, const char *a2)
{
  v4 = *a1;
  std::string::append((*a1 + 8), "@convention(", 0xCuLL);
  if (a2)
  {
    v5 = strlen(a2);
  }

  else
  {
    v5 = 0;
  }

  std::string::append((v4 + 8), a2, v5);
  v6 = a1[1];
  if (v6[18] - 1 >= 2)
  {
    v6 = *v6;
  }

  if (*(*v6 + 16) == 24)
  {
    std::string::append((v4 + 8), ", mangledCType: ", 0x11uLL);
    v7 = a1[1];
    v8 = *(v7 + 18);
    if ((v8 - 1) >= 2)
    {
      if (v8 != 5 || !*(v7 + 8))
      {
        v9 = 0;
        goto LABEL_13;
      }

      v7 = *v7;
    }

    v9 = *v7;
LABEL_13:
    swift::Demangle::NodePrinter::print(v4, v9, (*(a1 + 4) + 1), 0);
    std::string::push_back((v4 + 8), 34);
  }

  return std::string::append((v4 + 8), ") ", 2uLL);
}

void swift::Demangle::NodePrinter::printImplFunctionType(swift::Demangle::NodePrinter *this, swift::Demangle::Node *a2, int a3)
{
  v32 = a3;
  v30 = 0;
  v31 = 0;
  v29 = 0;
  v28[0] = &v29;
  v28[1] = &v31;
  v28[2] = this;
  v28[3] = &v32;
  v28[4] = &v30;
  v4 = *(a2 + 18);
  v5 = a2;
  if ((v4 - 1) >= 2)
  {
    if (v4 == 5)
    {
      v6 = *a2;
      v5 = *a2;
      goto LABEL_9;
    }

    v5 = 0;
  }

  switch(v4)
  {
    case 1:
      v7 = (a2 + 8);
      if (v5 == (a2 + 8))
      {
        goto LABEL_34;
      }

      goto LABEL_14;
    case 2:
      v7 = (a2 + 16);
      if (v5 == (a2 + 16))
      {
        goto LABEL_34;
      }

      goto LABEL_14;
    case 5:
      v6 = *a2;
LABEL_9:
      v7 = (v6 + 8 * *(a2 + 2));
      if (v5 == v7)
      {
        goto LABEL_34;
      }

      goto LABEL_14;
  }

  v7 = 0;
  if (v5)
  {
LABEL_14:
    v8 = 0;
    while (1)
    {
      v9 = *(*v5 + 16);
      if (v9 <= 0x7B)
      {
        if (v9 != 111)
        {
          if (v9 == 121)
          {
            v8 = *v5;
            goto LABEL_16;
          }

          if (v9 != 123)
          {
LABEL_31:
            swift::Demangle::NodePrinter::print(this, *v5, (v32 + 1), 0);
            std::string::push_back((this + 8), 32);
            goto LABEL_16;
          }

          if (v29 == 1)
          {
            std::string::append((this + 8), ", ", 2uLL);
          }

          v10 = 1;
          goto LABEL_28;
        }

        v30 = *v5;
      }

      else
      {
        if (v9 - 125 < 3)
        {
          if (v29 == 2)
          {
            std::string::append((this + 8), ", ", 2uLL);
          }

          v10 = 2;
LABEL_28:
          swift::Demangle::NodePrinter::printImplFunctionType(swift::Demangle::Node *,unsigned int)::$_0::operator()(v28, v10);
          swift::Demangle::NodePrinter::print(this, *v5, (v32 + 1), 0);
          goto LABEL_16;
        }

        if (v9 != 124)
        {
          goto LABEL_31;
        }

        v31 = *v5;
      }

LABEL_16:
      v5 = (v5 + 8);
      if (v5 == v7)
      {
        goto LABEL_35;
      }
    }
  }

LABEL_34:
  v8 = 0;
LABEL_35:
  swift::Demangle::NodePrinter::printImplFunctionType(swift::Demangle::Node *,unsigned int)::$_0::operator()(v28, 2);
  std::string::push_back((this + 8), 41);
  if (v31)
  {
    std::string::append((this + 8), " for <", 6uLL);
    v11 = v31;
    v12 = *(v31 + 18);
    if (v12 != 2)
    {
      if (v12 != 5 || *(v31 + 2) < 2u)
      {
        goto LABEL_56;
      }

      v11 = *v31;
    }

    v13 = *(v11 + 1);
    if (v13)
    {
      v14 = *(v13 + 18);
      v15 = v13;
      if ((v14 - 1) >= 2)
      {
        if (v14 == 5)
        {
          v16 = *v13;
          v15 = *v13;
LABEL_49:
          v17 = (v16 + 8 * *(v13 + 8));
          goto LABEL_53;
        }

        v15 = 0;
      }

      switch(v14)
      {
        case 1:
          v17 = (v13 + 8);
          break;
        case 2:
          v17 = (v13 + 16);
          break;
        case 5:
          v16 = *v13;
          goto LABEL_49;
        default:
          v17 = 0;
          break;
      }

LABEL_53:
      if (v15 != v17)
      {
        v18 = v32;
        do
        {
          v19 = *v15++;
          swift::Demangle::NodePrinter::print(this, v19, (v18 + 1), 0);
        }

        while (v15 != v17);
      }
    }

LABEL_56:
    std::string::push_back((this + 8), 62);
  }

  if (!v8)
  {
    return;
  }

  std::string::append((this + 8), " for <", 6uLL);
  v20 = *(v8 + 18);
  if ((v20 - 1) >= 2)
  {
    if (v20 != 5 || !*(v8 + 2))
    {
      goto LABEL_78;
    }

    v8 = *v8;
  }

  v21 = *v8;
  if (*v8)
  {
    v22 = *(v21 + 18);
    v23 = *v8;
    if ((v22 - 1) >= 2)
    {
      if (v22 == 5)
      {
        v24 = *v21;
        v23 = *v21;
LABEL_71:
        v25 = &v24[*(v21 + 2)];
        goto LABEL_75;
      }

      v23 = 0;
    }

    switch(v22)
    {
      case 1:
        v25 = (v21 + 8);
        break;
      case 2:
        v25 = (v21 + 16);
        break;
      case 5:
        v24 = *v21;
        goto LABEL_71;
      default:
        v25 = 0;
        break;
    }

LABEL_75:
    if (v23 != v25)
    {
      v26 = v32;
      do
      {
        v27 = *v23++;
        swift::Demangle::NodePrinter::print(this, v27, (v26 + 1), 0);
      }

      while (v23 != v25);
    }
  }

LABEL_78:
  std::string::push_back((this + 8), 62);
}

void swift::Demangle::NodePrinter::printImplFunctionType(swift::Demangle::Node *,unsigned int)::$_0::operator()(int **a1, int a2)
{
  v2 = **a1;
  if (v2 != a2)
  {
    v5 = a1[2];
    while (1)
    {
      if (v2)
      {
        if (v2 != 1)
        {
          if (v2 == 2)
          {
            printer_unreachable("no state after Results");
          }

          printer_unreachable("bad state");
        }

        std::string::append((v5 + 2), ") -> ", 5uLL);
        v8 = *a1[4];
        if (v8)
        {
          swift::Demangle::NodePrinter::print(v5, v8, (*a1[3] + 1), 0);
          std::string::append((v5 + 2), " ", 1uLL);
        }

        std::string::append((v5 + 2), "(", 1uLL);
        goto LABEL_9;
      }

      if (*a1[1])
      {
        break;
      }

LABEL_8:
      std::string::push_back((v5 + 2), 40);
LABEL_9:
      v2 = ++**a1;
      if (v2 == a2)
      {
        return;
      }
    }

    std::string::append((v5 + 2), "@substituted ", 0xDuLL);
    v6 = *a1[1];
    v9 = *(v6 + 18);
    if ((v9 - 1) >= 2)
    {
      if (v9 != 5 || !*(v6 + 2))
      {
        v7 = 0;
        goto LABEL_7;
      }

      v6 = *v6;
    }

    v7 = *v6;
LABEL_7:
    swift::Demangle::NodePrinter::print(v5, v7, (*a1[3] + 1), 0);
    std::string::push_back((v5 + 2), 32);
    goto LABEL_8;
  }
}

void swift::Demangle::NodePrinter::printGenericSignature(swift::Demangle::NodePrinter *this, swift::Demangle::Node *a2, int a3)
{
  std::string::push_back((this + 8), 60);
  v5 = *(a2 + 18);
  v6 = v5 - 1;
  if (v5 == 1)
  {
    v7 = 1;
    goto LABEL_28;
  }

  if (v5 != 5)
  {
    if (v5 == 2)
    {
      v7 = 2;
      goto LABEL_28;
    }

LABEL_152:
    std::string::push_back((this + 8), 62);
    return;
  }

  v7 = *(a2 + 2);
  if (v7)
  {
LABEL_28:
    for (i = 0; i != v7; ++i)
    {
      v14 = a2;
      if (v6 >= 2)
      {
        v14 = *a2;
      }

      if (*(*(v14 + i) + 16) != 38)
      {
        goto LABEL_7;
      }
    }

    LODWORD(v66) = v7;
    LODWORD(i) = v7;
    goto LABEL_35;
  }

  LODWORD(i) = 0;
LABEL_7:
  LODWORD(v66) = i;
  v9 = v7 - i;
  if (v7 > i)
  {
    v66 = i;
    do
    {
      v10 = *(a2 + 18);
      if (v5 != 1)
      {
        if (v5 == 5)
        {
          v10 = *(a2 + 2);
        }

        else
        {
          v10 = 2;
        }
      }

      if (v10 <= v66)
      {
        v12 = 0;
      }

      else
      {
        v11 = a2;
        if (v6 >= 2)
        {
          v11 = *a2;
        }

        v12 = *(v11 + v66);
      }

      v13 = *(v12 + 8);
      if (v13 == 243)
      {
        if (*(v12 + 18) - 1 >= 2)
        {
          v12 = *v12;
        }

        v13 = *(*v12 + 16);
      }

      if (v13 != 370 && v13 != 43)
      {
        goto LABEL_25;
      }

      ++v66;
      --v9;
    }

    while (v9);
    LODWORD(v66) = v7;
    if (i)
    {
      goto LABEL_35;
    }

LABEL_138:
    if (v66 == v7)
    {
      goto LABEL_152;
    }

    if (*(this + 39) != 1)
    {
      goto LABEL_152;
    }

    std::string::append((this + 8), " where ", 7uLL);
    if (v66 >= v7)
    {
      goto LABEL_152;
    }

    v52 = *(a2 + 18);
    v53 = v52 - 1;
    if (v52 != 1)
    {
      if (v52 == 2)
      {
        if (v66 < 2uLL)
        {
          goto LABEL_146;
        }

        goto LABEL_150;
      }

      if (v52 != 5)
      {
        goto LABEL_150;
      }

      v52 = *(a2 + 2);
    }

    if (v52 > v66)
    {
LABEL_146:
      v54 = a2;
      if (v53 >= 2)
      {
        v54 = *a2;
      }

      v55 = *(v54 + v66);
      goto LABEL_151;
    }

LABEL_150:
    v55 = 0;
LABEL_151:
    swift::Demangle::NodePrinter::print(this, v55, (a3 + 1), 0);
    v56 = v66 + 1;
    if (v7 == v66 + 1)
    {
      goto LABEL_152;
    }

    v57 = ~v66 + v7;
    while (1)
    {
      if (v56 > v66)
      {
        std::string::append((this + 8), ", ", 2uLL);
      }

      v59 = *(a2 + 18);
      if (v59 == 2)
      {
        if (v59 > v56)
        {
          goto LABEL_163;
        }
      }

      else if (v59 == 5 && *(a2 + 2) > v56)
      {
LABEL_163:
        v60 = v59 - 1;
        v61 = a2;
        if (v60 >= 2)
        {
          v61 = *a2;
        }

        v58 = *(v61 + v56);
        goto LABEL_155;
      }

      v58 = 0;
LABEL_155:
      swift::Demangle::NodePrinter::print(this, v58, (a3 + 1), 0);
      ++v56;
      if (!--v57)
      {
        goto LABEL_152;
      }
    }
  }

LABEL_25:
  if (!i)
  {
    goto LABEL_138;
  }

LABEL_35:
  v15 = 0;
  v16 = i;
  v17 = v66 - i;
  while (1)
  {
    if (v15)
    {
      std::string::append((this + 8), "><", 2uLL);
    }

    v18 = a2;
    if (*(a2 + 18) - 1 >= 2)
    {
      v18 = *a2;
    }

    v19 = *(v18 + v15);
    v20 = *v19;
    if (!*v19)
    {
      goto LABEL_37;
    }

    v21 = 0;
LABEL_45:
    if (!v21)
    {
      break;
    }

    std::string::append((this + 8), ", ", 2uLL);
    if (v21 < 0x80)
    {
      break;
    }

    std::string::append((this + 8), "...", 3uLL);
LABEL_37:
    if (++v15 == v16)
    {
      goto LABEL_138;
    }
  }

  if (v16 >= v66)
  {
LABEL_124:
    v45 = 0;
    v48 = 1;
    goto LABEL_125;
  }

  v22 = *(a2 + 18);
  v23 = v22 - 1;
  v24 = 1;
  v25 = v17;
  v26 = v16;
  while (1)
  {
    v27 = *(a2 + 18);
    if (v22 == 1)
    {
      goto LABEL_55;
    }

    if (v22 != 5)
    {
      if (v22 != 2)
      {
        goto LABEL_60;
      }

      v27 = 2;
LABEL_55:
      if (v27 <= v26)
      {
        goto LABEL_60;
      }

      goto LABEL_56;
    }

    if (*(a2 + 2) <= v26)
    {
LABEL_60:
      v29 = 0;
      goto LABEL_61;
    }

LABEL_56:
    v28 = a2;
    if ((v22 - 1) >= 2u)
    {
      v28 = *a2;
    }

    v29 = *(v28 + v26);
LABEL_61:
    if (*(v29 + 8) == 43)
    {
      break;
    }

LABEL_50:
    v24 = ++v26 < v66;
    if (!--v25)
    {
      goto LABEL_81;
    }
  }

  v30 = *(v29 + 18);
  if ((v30 - 1) < 2)
  {
    goto LABEL_66;
  }

  if (v30 == 5 && *(v29 + 2))
  {
    v29 = *v29;
LABEL_66:
    v31 = *v29;
  }

  else
  {
    v31 = 0;
  }

  if (*(v31 + 8) != 243)
  {
    goto LABEL_50;
  }

  v32 = *(v31 + 18);
  if ((v32 - 1) < 2)
  {
    goto LABEL_73;
  }

  if (v32 == 5 && *(v31 + 2))
  {
    v31 = *v31;
LABEL_73:
    v33 = *v31;
  }

  else
  {
    v33 = 0;
  }

  if (*(v33 + 8) != 39)
  {
    goto LABEL_50;
  }

  v34 = *(v33 + 18);
  v35 = v33;
  if ((v34 - 1) >= 2)
  {
    v35 = *v33;
  }

  if (**v35 != v21)
  {
    goto LABEL_50;
  }

  if (v34 == 5)
  {
    v33 = *v33;
  }

  if (*v33[1] != v15)
  {
    goto LABEL_50;
  }

LABEL_81:
  if (v24)
  {
    std::string::append((this + 8), "each ", 5uLL);
    v22 = *(a2 + 18);
    v23 = v22 - 1;
  }

  v36 = v17;
  v37 = v16;
  while (2)
  {
    if (v22 == 1)
    {
      if (v37)
      {
        goto LABEL_96;
      }
    }

    else if (v22 == 5)
    {
      if (*(a2 + 2) <= v37)
      {
        goto LABEL_96;
      }
    }

    else if (v22 != 2 || v37 >= 2)
    {
LABEL_96:
      v39 = 0;
      goto LABEL_97;
    }

    v38 = a2;
    if (v23 >= 2u)
    {
      v38 = *a2;
    }

    v39 = *(v38 + v37);
LABEL_97:
    if (*(v39 + 8) != 370)
    {
      goto LABEL_85;
    }

    v40 = *(v39 + 18);
    if ((v40 - 1) < 2)
    {
      goto LABEL_102;
    }

    if (v40 == 5 && *(v39 + 2))
    {
      v39 = *v39;
LABEL_102:
      v41 = *v39;
    }

    else
    {
      v41 = 0;
    }

    if (*(v41 + 8) != 243)
    {
      goto LABEL_85;
    }

    v42 = *(v41 + 18);
    v43 = v41;
    if ((v42 - 1) < 2)
    {
      goto LABEL_109;
    }

    if (v42 != 5)
    {
      v44 = 0;
      if (v42 == 2)
      {
        goto LABEL_115;
      }

      goto LABEL_112;
    }

    if (!*(v41 + 2))
    {
      v44 = 0;
LABEL_117:
      v45 = 0;
      goto LABEL_118;
    }

    v43 = *v41;
LABEL_109:
    v44 = *v43;
    if (v42 != 2)
    {
LABEL_112:
      if (v42 == 5 && *(v41 + 2) >= 2u)
      {
        v41 = *v41;
        goto LABEL_115;
      }

      goto LABEL_117;
    }

LABEL_115:
    v45 = v41[1];
LABEL_118:
    if (*(v44 + 8) != 39)
    {
      goto LABEL_85;
    }

    v46 = *(v44 + 18);
    v47 = v44;
    if ((v46 - 1) >= 2)
    {
      v47 = *v44;
    }

    if (**v47 != v21)
    {
      goto LABEL_85;
    }

    if (v46 == 5)
    {
      v44 = *v44;
    }

    if (*v44[1] != v15)
    {
LABEL_85:
      ++v37;
      if (!--v36)
      {
        goto LABEL_124;
      }

      continue;
    }

    break;
  }

  std::string::append((this + 8), "let ", 4uLL);
  v48 = v45 == 0;
LABEL_125:
  v69 = v21;
  v70 = v15;
  v49 = *(this + 12);
  if (v49)
  {
    (*(*v49 + 48))(__p);
    if (v68 >= 0)
    {
      v50 = __p;
    }

    else
    {
      v50 = __p[0];
    }

    if (v68 >= 0)
    {
      v51 = v68;
    }

    else
    {
      v51 = __p[1];
    }

    std::string::append((this + 8), v50, v51);
    if (v68 < 0)
    {
      operator delete(__p[0]);
      if (!v48)
      {
        goto LABEL_136;
      }
    }

    else if (!v48)
    {
LABEL_136:
      std::string::append((this + 8), ": ", 2uLL);
      swift::Demangle::NodePrinter::print(this, v45, (a3 + 1), 0);
    }

    if (++v21 == v20)
    {
      goto LABEL_37;
    }

    goto LABEL_45;
  }

  v62 = std::__throw_bad_function_call[abi:nn200100]();
  swift::Demangle::NodePrinter::printFunctionSigSpecializationParams(v62, v63, v64);
}

void swift::Demangle::NodePrinter::printFunctionSigSpecializationParams(swift::Demangle::NodePrinter *this, swift::Demangle::Node *a2, int a3)
{
  v6 = *(a2 + 18);
  if (v6 != 1)
  {
    if (v6 == 5)
    {
      v6 = *(a2 + 2);
      if (!v6)
      {
        return;
      }
    }

    else if (v6 != 2)
    {
      return;
    }
  }

  LODWORD(v7) = 0;
  while (1)
  {
    v9 = *(a2 + 18);
    if ((v9 - 1) >= 2)
    {
      v10 = 0;
      v11 = *a2;
    }

    else
    {
      v10 = 1;
      v11 = a2;
    }

    v12 = v7;
    v13 = **(v11 + v7);
    if (v13 <= 4)
    {
      break;
    }

    if ((v13 - 6) < 3)
    {
      if (v9 != 1)
      {
        if (v9 == 5)
        {
          goto LABEL_67;
        }

        goto LABEL_29;
      }

      goto LABEL_31;
    }

    if (v13 != 5)
    {
      if (v13 == 9)
      {
        LODWORD(v7) = v7 + 4;
        if (v12 + 4 > v6)
        {
          return;
        }

        std::string::append((this + 8), "[", 1uLL);
        v20 = *(a2 + 18);
        v21 = v20 - 1;
        switch(v20)
        {
          case 1:
LABEL_42:
            if (v20 <= v12)
            {
              goto LABEL_93;
            }

            break;
          case 5:
            if (*(a2 + 2) <= v12)
            {
              goto LABEL_93;
            }

            break;
          case 2:
            v20 = 2;
            goto LABEL_42;
          default:
LABEL_93:
            v23 = 0;
LABEL_94:
            swift::Demangle::NodePrinter::print(this, v23, (a3 + 1), 0);
            std::string::append((this + 8), " : ", 3uLL);
            v41 = *(a2 + 18);
            if (v41 != 2)
            {
              if (v41 == 5)
              {
                v42 = *(a2 + 2);
                goto LABEL_98;
              }

              goto LABEL_102;
            }

            v42 = *(a2 + 18);
LABEL_98:
            v43 = (v12 + 1);
            if (v42 <= v43)
            {
LABEL_102:
              v46 = 0;
            }

            else
            {
              v44 = v41 - 1;
              v45 = a2;
              if (v44 >= 2)
              {
                v45 = *a2;
              }

              v46 = *(v45 + v43);
            }

            swift::Demangle::NodePrinter::print(this, v46, (a3 + 1), 0);
            std::string::append((this + 8), "<", 1uLL);
            v47 = *(a2 + 18);
            v48 = v47 - 1;
            if (v47 != 1)
            {
              if (v47 != 5)
              {
                if (v47 == 2)
                {
                  v47 = 2;
                  goto LABEL_108;
                }

LABEL_112:
                v51 = 0;
                goto LABEL_113;
              }

              v47 = *(a2 + 2);
            }

LABEL_108:
            v49 = (v12 + 2);
            if (v47 <= v49)
            {
              goto LABEL_112;
            }

            v50 = a2;
            if (v48 >= 2)
            {
              v50 = *a2;
            }

            v51 = *(v50 + v49);
LABEL_113:
            swift::Demangle::NodePrinter::print(this, v51, (a3 + 1), 0);
            std::string::append((this + 8), ",", 1uLL);
            v52 = *(a2 + 18);
            v53 = v52 - 1;
            if (v52 != 1)
            {
              if (v52 != 5)
              {
                if (v52 == 2)
                {
                  v52 = 2;
                  goto LABEL_118;
                }

LABEL_122:
                v56 = 0;
                goto LABEL_123;
              }

              v52 = *(a2 + 2);
            }

LABEL_118:
            v54 = (v12 + 3);
            if (v52 <= v54)
            {
              goto LABEL_122;
            }

            v55 = a2;
            if (v53 >= 2)
            {
              v55 = *a2;
            }

            v56 = *(v55 + v54);
LABEL_123:
            swift::Demangle::NodePrinter::print(this, v56, (a3 + 1), 0);
            std::string::append((this + 8), ">]", 2uLL);
            goto LABEL_10;
        }

        v22 = a2;
        if (v21 >= 2)
        {
          v22 = *a2;
        }

        v23 = *(v22 + v12);
        goto LABEL_94;
      }

LABEL_65:
      if (v9 != 1)
      {
        if (v9 == 5)
        {
LABEL_67:
          if (*(a2 + 2) <= v7)
          {
LABEL_68:
            v19 = 0;
LABEL_69:
            LODWORD(v7) = v7 + 1;
            swift::Demangle::NodePrinter::print(this, v19, (a3 + 1), 0);
            goto LABEL_10;
          }

LABEL_32:
          v18 = a2;
          if ((v10 & 1) == 0)
          {
            v18 = *a2;
          }

          v19 = *(v18 + v7);
          goto LABEL_69;
        }

LABEL_29:
        if (v9 != 2)
        {
          goto LABEL_68;
        }

        v9 = 2;
      }

LABEL_31:
      if (v9 <= v7)
      {
        goto LABEL_68;
      }

      goto LABEL_32;
    }

    v7 = (v7 + 2);
    if (v7 > v6)
    {
      return;
    }

    std::string::append((this + 8), "[", 1uLL);
    v32 = *(a2 + 18);
    v33 = v32 - 1;
    if (v32 == 1)
    {
      goto LABEL_75;
    }

    if (v32 != 5)
    {
      if (v32 != 2)
      {
        goto LABEL_125;
      }

      v32 = 2;
LABEL_75:
      if (v32 <= v12)
      {
        goto LABEL_125;
      }

      goto LABEL_76;
    }

    if (*(a2 + 2) <= v12)
    {
LABEL_125:
      v35 = 0;
      goto LABEL_126;
    }

LABEL_76:
    v34 = a2;
    if (v33 >= 2)
    {
      v34 = *a2;
    }

    v35 = *(v34 + v12);
LABEL_126:
    swift::Demangle::NodePrinter::print(this, v35, (a3 + 1), 0);
    std::string::append((this + 8), " : ", 3uLL);
    v57 = *(a2 + 18);
    if (v57 == 2)
    {
      v58 = *(a2 + 18);
    }

    else
    {
      if (v57 != 5)
      {
        goto LABEL_134;
      }

      v58 = *(a2 + 2);
    }

    v59 = (v12 + 1);
    if (v58 > v59)
    {
      v60 = v57 - 1;
      v61 = a2;
      if (v60 >= 2)
      {
        v61 = *a2;
      }

      v62 = *(v61 + v59);
      goto LABEL_135;
    }

LABEL_134:
    v62 = 0;
LABEL_135:
    swift::Demangle::NodePrinter::print(this, v62, (a3 + 1), 0);
    std::string::append((this + 8), ", Argument Types : [", 0x14uLL);
    v63 = *(a2 + 18);
    switch(v63)
    {
      case 1u:
        goto LABEL_138;
      case 5u:
        v63 = *(a2 + 2);
        if (v7 < v63)
        {
          while (1)
          {
LABEL_143:
            v64 = a2;
            if (*(a2 + 18) - 1 >= 2)
            {
              v64 = *a2;
            }

            v65 = *(v64 + v7);
            if (*(v65 + 8) != 243)
            {
              break;
            }

            swift::Demangle::NodePrinter::print(this, v65, (a3 + 1), 0);
            if (v7 + 1 < v63)
            {
              v66 = a2;
              if (*(a2 + 18) - 1 >= 2)
              {
                v66 = *a2;
              }

              if (*(*(v66 + (v7 + 1)) + 18) == 3)
              {
                std::string::append((this + 8), ", ", 2uLL);
              }
            }

            if (v63 == ++v7)
            {
              LODWORD(v7) = v63;
              goto LABEL_9;
            }
          }
        }

        break;
      case 2u:
LABEL_138:
        if (v7 < v63)
        {
          goto LABEL_143;
        }

        break;
    }

LABEL_9:
    std::string::append((this + 8), "]", 1uLL);
LABEL_10:
    if (v7 >= v6)
    {
      return;
    }
  }

  if (v13 >= 2)
  {
    if ((v13 - 2) >= 2)
    {
      if (v13 != 4)
      {
        goto LABEL_65;
      }

      LODWORD(v7) = v7 + 3;
      if (v12 + 3 > v6)
      {
        return;
      }

      std::string::append((this + 8), "[", 1uLL);
      v28 = *(a2 + 18);
      v29 = v28 - 1;
      switch(v28)
      {
        case 1:
LABEL_61:
          if (v28 <= v12)
          {
            goto LABEL_152;
          }

          break;
        case 5:
          if (*(a2 + 2) <= v12)
          {
            goto LABEL_152;
          }

          break;
        case 2:
          v28 = 2;
          goto LABEL_61;
        default:
LABEL_152:
          v31 = 0;
LABEL_153:
          swift::Demangle::NodePrinter::print(this, v31, (a3 + 1), 0);
          std::string::append((this + 8), " : ", 3uLL);
          v67 = *(a2 + 18);
          if (v67 != 2)
          {
            if (v67 == 5)
            {
              v68 = *(a2 + 2);
              goto LABEL_157;
            }

            goto LABEL_161;
          }

          v68 = *(a2 + 18);
LABEL_157:
          v69 = (v12 + 1);
          if (v68 <= v69)
          {
LABEL_161:
            v72 = 0;
          }

          else
          {
            v70 = v67 - 1;
            v71 = a2;
            if (v70 >= 2)
            {
              v71 = *a2;
            }

            v72 = *(v71 + v69);
          }

          swift::Demangle::NodePrinter::print(this, v72, (a3 + 1), 0);
          std::string::append((this + 8), "'", 1uLL);
          v73 = *(a2 + 18);
          v74 = v73 - 1;
          if (v73 != 1)
          {
            if (v73 != 5)
            {
              if (v73 == 2)
              {
                v73 = 2;
                goto LABEL_167;
              }

LABEL_171:
              v77 = 0;
              goto LABEL_172;
            }

            v73 = *(a2 + 2);
          }

LABEL_167:
          v75 = (v12 + 2);
          if (v73 <= v75)
          {
            goto LABEL_171;
          }

          v76 = a2;
          if (v74 >= 2)
          {
            v76 = *a2;
          }

          v77 = *(v76 + v75);
LABEL_172:
          swift::Demangle::NodePrinter::print(this, v77, (a3 + 1), 0);
          std::string::append((this + 8), "'", 1uLL);
          goto LABEL_9;
      }

      v30 = a2;
      if (v29 >= 2)
      {
        v30 = *a2;
      }

      v31 = *(v30 + v12);
      goto LABEL_153;
    }

    LODWORD(v7) = v7 + 2;
    if (v12 + 2 > v6)
    {
      return;
    }

    std::string::append((this + 8), "[", 1uLL);
    v14 = *(a2 + 18);
    v15 = v14 - 1;
    switch(v14)
    {
      case 1:
LABEL_22:
        if (v14 <= v12)
        {
          goto LABEL_83;
        }

        break;
      case 5:
        if (*(a2 + 2) <= v12)
        {
          goto LABEL_83;
        }

        break;
      case 2:
        v14 = 2;
        goto LABEL_22;
      default:
LABEL_83:
        v17 = 0;
LABEL_84:
        swift::Demangle::NodePrinter::print(this, v17, (a3 + 1), 0);
        std::string::append((this + 8), " : ", 3uLL);
        v36 = *(a2 + 18);
        if (v36 != 2)
        {
          if (v36 == 5)
          {
            v37 = *(a2 + 2);
            goto LABEL_88;
          }

          goto LABEL_7;
        }

        v37 = *(a2 + 18);
LABEL_88:
        v38 = (v12 + 1);
        if (v37 <= v38)
        {
LABEL_7:
          v8 = 0;
        }

        else
        {
          v39 = v36 - 1;
          v40 = a2;
          if (v39 >= 2)
          {
            v40 = *a2;
          }

          v8 = *(v40 + v38);
        }

        swift::Demangle::NodePrinter::print(this, v8, (a3 + 1), 0);
        goto LABEL_9;
    }

    v16 = a2;
    if (v15 >= 2)
    {
      v16 = *a2;
    }

    v17 = *(v16 + v12);
    goto LABEL_84;
  }

  if (v7 + 2 <= v6)
  {
    std::string::append((this + 8), "[", 1uLL);
    v24 = *(a2 + 18);
    v25 = v24 - 1;
    switch(v24)
    {
      case 1:
        goto LABEL_51;
      case 5:
        if (*(a2 + 2) > v7)
        {
          goto LABEL_52;
        }

        break;
      case 2:
        v24 = 2;
LABEL_51:
        if (v24 > v7)
        {
LABEL_52:
          v26 = a2;
          if (v25 >= 2)
          {
            v26 = *a2;
          }

          v27 = *(v26 + v7);
LABEL_81:
          swift::Demangle::NodePrinter::print(this, v27, (a3 + 1), 0);
          std::string::append((this + 8), " : ", 3uLL);
          v78[0] = &unk_2A20082F8;
          v78[1] = swift::Demangle::genericParameterName;
          v78[3] = v78;
          swift::Demangle::demangleSymbolAsString();
        }

        break;
    }

    v27 = 0;
    goto LABEL_81;
  }
}

void swift::Demangle::DemangleOptions::~DemangleOptions(swift::Demangle::DemangleOptions *this)
{
  v1 = this + 40;
  v2 = *(this + 8);
  if (v2 == v1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }
}

std::string *swift::Demangle::NodePrinter::printSpecializationPrefix(std::string *result, uint64_t *a2, const std::string::value_type *a3, std::string::size_type a4, int a5, const std::string::value_type *a6, std::string::size_type a7)
{
  v7 = result;
  if (result[1].__r_.__value_.__s.__data_[13])
  {
    std::string::append(&result->__r_.__value_.__r.__words[1], a3, a4);
    std::string::append(&v7->__r_.__value_.__r.__words[1], " <", 2uLL);
    v12 = *(a2 + 18);
    v13 = a2;
    if ((v12 - 1) >= 2)
    {
      if (v12 == 5)
      {
        v14 = *a2;
        v13 = *a2;
LABEL_12:
        v15 = (v14 + 8 * *(a2 + 2));
        if (v13 == v15)
        {
          return std::string::append(&v7->__r_.__value_.__r.__words[1], "> of ", 5uLL);
        }

        goto LABEL_19;
      }

      v13 = 0;
    }

    switch(v12)
    {
      case 1:
        v15 = a2 + 1;
        if (v13 == v15)
        {
          return std::string::append(&v7->__r_.__value_.__r.__words[1], "> of ", 5uLL);
        }

        break;
      case 2:
        v15 = a2 + 2;
        if (v13 == v15)
        {
          return std::string::append(&v7->__r_.__value_.__r.__words[1], "> of ", 5uLL);
        }

        break;
      case 5:
        v14 = *a2;
        goto LABEL_12;
      default:
        v15 = 0;
        if (!v13)
        {
          return std::string::append(&v7->__r_.__value_.__r.__words[1], "> of ", 5uLL);
        }

        break;
    }

LABEL_19:
    v16 = 0;
    v17 = "";
    while (1)
    {
      v21 = *v13;
      v22 = *(*v13 + 16);
      if (v22 == 227 || v22 == 353)
      {
        goto LABEL_24;
      }

      if (v22 == 228)
      {
        if (v17)
        {
          v23 = strlen(v17);
        }

        else
        {
          v23 = 0;
        }

        std::string::append(&v7->__r_.__value_.__r.__words[1], v17, v23);
        swift::Demangle::NodePrinter::print(v7, v21, (a5 + 1), 0);
        v17 = ", ";
        goto LABEL_24;
      }

      v24 = *(v21 + 18);
      if ((v24 - 1) < 2 || v24 == 5 && *(v21 + 8))
      {
        break;
      }

LABEL_23:
      ++v16;
LABEL_24:
      if (++v13 == v15)
      {
        return std::string::append(&v7->__r_.__value_.__r.__words[1], "> of ", 5uLL);
      }
    }

    if (v17)
    {
      v25 = strlen(v17);
    }

    else
    {
      v25 = 0;
    }

    std::string::append(&v7->__r_.__value_.__r.__words[1], v17, v25);
    std::string::append(&v7->__r_.__value_.__r.__words[1], a6, a7);
    v26 = *(v21 + 16);
    if (v26 == 81)
    {
      v18 = &v7->__r_.__value_.__r.__words[1];
      v19 = "Return = ";
      v20 = 9;
    }

    else
    {
      if (v26 != 80)
      {
        swift::Demangle::NodePrinter::print(v7, v21, (a5 + 1), 0);
        goto LABEL_22;
      }

      std::string::append(&v7->__r_.__value_.__r.__words[1], "Arg[", 4uLL);
      snprintf(__str, 0x20uLL, "%lld", v16);
      std::string::append(&v7->__r_.__value_.__r.__words[1], __str);
      v18 = &v7->__r_.__value_.__r.__words[1];
      v19 = "] = ";
      v20 = 4;
    }

    std::string::append(v18, v19, v20);
    swift::Demangle::NodePrinter::printFunctionSigSpecializationParams(v7, v21, a5);
LABEL_22:
    v17 = ", ";
    goto LABEL_23;
  }

  if ((result[4].__r_.__value_.__s.__data_[8] & 1) == 0)
  {
    result = std::string::append(&result->__r_.__value_.__r.__words[1], "specialized ", 0xCuLL);
    v7[4].__r_.__value_.__s.__data_[8] = 1;
  }

  return result;
}

swift::Demangle::Node *swift::Demangle::NodePrinter::printEntity(uint64_t a1, unsigned int *a2, uint64_t a3, int a4, int a5, uint64_t a6, void *__s, size_t __n, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v15 = a2;
  v64[0] = __s;
  v64[1] = __n;
  v63[0] = a10;
  v63[1] = a11;
  if (*(a2 + 8) != 19)
  {
    v17 = 0;
    if (!__n)
    {
      goto LABEL_25;
    }

    goto LABEL_15;
  }

  v17 = 0;
  v18 = *(a2 + 18);
  if (v18 == 1)
  {
    goto LABEL_12;
  }

  v19 = a2;
  if (v18 != 2)
  {
    if (v18 != 5)
    {
      goto LABEL_8;
    }

    v20 = a2[2];
    if (v20 < 2)
    {
      v17 = 0;
      if (v20)
      {
        goto LABEL_11;
      }

LABEL_24:
      v15 = 0;
      if (!__n)
      {
        goto LABEL_25;
      }

      goto LABEL_15;
    }

    v19 = *a2;
  }

  v17 = *(v19 + 1);
LABEL_8:
  if (v18 == 2)
  {
    goto LABEL_12;
  }

  if (v18 != 5 || !a2[2])
  {
    goto LABEL_24;
  }

LABEL_11:
  v15 = *a2;
LABEL_12:
  v15 = *v15;
  if (!__n)
  {
LABEL_25:
    v24 = 0;
    if (a6)
    {
      goto LABEL_26;
    }

LABEL_30:
    v26 = 0;
    goto LABEL_31;
  }

LABEL_15:
  v22 = memchr(__s, 32, __n);
  if (v22)
  {
    v23 = v22 - __s == -1;
  }

  else
  {
    v23 = 1;
  }

  v24 = !v23;
  if (!a6)
  {
    goto LABEL_30;
  }

LABEL_26:
  v25 = v15;
  if (*(v15 + 18) == 5)
  {
    v25 = *v15;
  }

  if (*(*(v25 + 1) + 16) != 146)
  {
    goto LABEL_30;
  }

  v24 |= *(a1 + 41);
  v26 = 1;
LABEL_31:
  if (a4 && (a5 != 0) | v24 & 1)
  {
    return v15;
  }

  v27 = *(v15 + 18);
  v28 = v15;
  if ((v27 - 1) < 2)
  {
    goto LABEL_37;
  }

  if (v27 == 5 && v15[2])
  {
    v28 = *v15;
LABEL_37:
    v29 = *v28;
    goto LABEL_39;
  }

  v29 = 0;
LABEL_39:
  v30 = swift::Demangle::NodePrinter::printContext(a1, v29);
  v62 = v24;
  v31 = v24 | ~v30;
  if (v30)
  {
    v32 = v29;
  }

  else
  {
    v32 = 0;
  }

  if ((v31 & 1) == 0)
  {
    v33 = a4;
    a4 = v26;
    v34 = v17;
    if (*(a1 + 31) >= 0)
    {
      v35 = *(a1 + 31);
    }

    else
    {
      v35 = *(a1 + 16);
    }

    v36 = swift::Demangle::NodePrinter::print(a1, v29, (a3 + 1), 1);
    v37 = *(a1 + 31);
    if ((v37 & 0x80u) != 0)
    {
      v37 = *(a1 + 16);
    }

    if (v37 != v35)
    {
      std::string::push_back((a1 + 8), 46);
    }

    v17 = v34;
    v26 = a4;
    LOBYTE(a4) = v33;
    v32 = v36;
  }

  (*(*a1 + 40))(a1, a6, v63, v64, v62 & 1, &a9, v15, a3);
  if (!a5)
  {
    goto LABEL_129;
  }

  v38 = *(v15 + 18);
  v39 = v15;
  if ((v38 - 1) >= 2)
  {
    if (v38 == 5)
    {
      v40 = *v15;
      v39 = *v15;
      goto LABEL_60;
    }

    v39 = 0;
  }

  if (v38 == 1)
  {
    v41 = v15 + 2;
    goto LABEL_66;
  }

  if (v38 == 2)
  {
    v41 = v15 + 4;
    goto LABEL_66;
  }

  if (v38 != 5)
  {
    v41 = 0;
    goto LABEL_66;
  }

  v40 = *v15;
LABEL_60:
  v41 = &v40[2 * v15[2]];
LABEL_66:
  while (v39 != v41 && *(*v39 + 16) != 243)
  {
    v39 += 2;
  }

  if (v38 == 5)
  {
    if (v39 == (*v15 + 8 * v15[2]))
    {
LABEL_83:
      v15 = 0;
      *(a1 + 105) = 0;
      return v15;
    }
  }

  else
  {
    v42 = v15 + 2;
    if (v38 != 1)
    {
      v42 = 0;
    }

    if (v38 == 2)
    {
      v43 = v15 + 4;
    }

    else
    {
      v43 = v42;
    }

    if (v39 == v43)
    {
      goto LABEL_83;
    }
  }

  v44 = *v39;
  if (!v44)
  {
    goto LABEL_83;
  }

  v45 = *(v44 + 18);
  if ((v45 - 1) >= 2)
  {
    if (v45 != 5 || !*(v44 + 2))
    {
      v46 = 0;
      if (a5 == 1)
      {
        goto LABEL_112;
      }

      goto LABEL_85;
    }

    v44 = *v44;
  }

  v46 = *v44;
  if (a5 == 1)
  {
    goto LABEL_112;
  }

LABEL_85:
  if (a5 != 2)
  {
    goto LABEL_107;
  }

  v47 = v46;
  while (1)
  {
    v49 = *(v47 + 8);
    if (v49 != 45)
    {
      break;
    }

    v50 = *(v47 + 18);
    if (v50 != 2)
    {
      if (v50 != 5 || *(v47 + 2) < 2u)
      {
        v48 = 0;
        goto LABEL_97;
      }

      v47 = *v47;
    }

    v48 = *(v47 + 1);
LABEL_97:
    v51 = *(v48 + 18);
    if ((v51 - 1) < 2)
    {
LABEL_89:
      v47 = *v48;
    }

    else
    {
      v47 = 0;
      if (v51 == 5)
      {
        v47 = 0;
        if (*(v48 + 2))
        {
          v48 = *v48;
          goto LABEL_89;
        }
      }
    }
  }

  v52 = (v49 - 23) > 0x3D || ((1 << (v49 - 23)) & 0x2000100000000001) == 0;
  if (!v52 || v49 == 233 || v49 == 257)
  {
LABEL_107:
    v53 = *(v15 + 8);
    if ((v53 == 122 || v53 == 72) && *(a1 + 53) != 1)
    {
      goto LABEL_129;
    }

    if (v62)
    {
      goto LABEL_111;
    }

    v54 = v46;
    while (1)
    {
LABEL_118:
      v55 = v54;
      v56 = *(v54 + 8);
      if (v56 != 243)
      {
        v58 = (v56 - 45) > 0x27 || ((1 << (v56 - 45)) & 0x8000400001) == 0;
        if (!v58 || v56 == 257)
        {
LABEL_128:
          swift::Demangle::NodePrinter::printEntityType(a1, v15, v46, v17, a3);
          goto LABEL_129;
        }

LABEL_111:
        std::string::push_back((a1 + 8), 32);
        goto LABEL_128;
      }

      v57 = *(v55 + 18);
      if ((v57 - 1) < 2)
      {
        goto LABEL_117;
      }

      v54 = 0;
      if (v57 == 5)
      {
        v54 = 0;
        if (*(v55 + 2))
        {
          break;
        }
      }
    }

    v55 = *v55;
LABEL_117:
    v54 = *v55;
    goto LABEL_118;
  }

LABEL_112:
  if (*(a1 + 40) == 1)
  {
    std::string::append((a1 + 8), " : ", 3uLL);
    goto LABEL_128;
  }

LABEL_129:
  if ((a4 & 1) != 0 || !v32 || v26 && *(a1 + 41) != 1)
  {
    return v32;
  }

  v59 = *(v15 + 8);
  v60 = " of ";
  if (((v59 - 130) > 0x3B || ((1 << (v59 + 126)) & 0xC00000000000001) == 0) && v59 != 34)
  {
    v60 = " in ";
  }

  std::string::append((a1 + 8), v60, 4uLL);
  swift::Demangle::NodePrinter::print(a1, v32, (a3 + 1), 0);
  return 0;
}

void swift::Demangle::nodeToString(uint64_t *__return_ptr a1@<X8>, swift::Demangle *this@<X0>, swift::Demangle::Node *a3@<X1>, const swift::Demangle::DemangleOptions *a4@<X2>)
{
  if (!this)
  {
    *(a1 + 23) = 0;
    *a1 = 0;
    return;
  }

  v7 = *a3;
  v8 = *(a3 + 1);
  v9 = *(a3 + 4);
  v6 = *(a3 + 8);
  if (v6)
  {
    if (v6 == (a3 + 40))
    {
      v11 = v10;
      (*(*v6 + 24))(v6, v10, a4);
      v6 = v11;
    }

    else
    {
      v6 = (*(*v6 + 16))(v6);
      v11 = v6;
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = &unk_2A2008390;
  __p = 0uLL;
  v14 = 0;
  v15 = v7;
  v16 = v8;
  v17 = v9;
  if (v6)
  {
    if (v6 == v10)
    {
      v19 = v18;
      (*(*v6 + 24))(v6, v18);
    }

    else
    {
      v19 = (*(*v6 + 16))(v6);
    }

    v20 = 256;
    if (v11 == v10)
    {
      (*(*v11 + 32))(v11);
    }

    else if (v11)
    {
      (*(*v11 + 40))();
    }
  }

  else
  {
    v19 = 0;
    v20 = 256;
  }

  v12[2](&v12, this);
  if (HIBYTE(v20) == 1)
  {
    *a1 = __p;
    a1[2] = v14;
    v14 = 0;
    __p = 0uLL;
  }

  else
  {
    *(a1 + 23) = 0;
    *a1 = 0;
  }

  v12 = &unk_2A2008390;
  if (v19 == v18)
  {
    (*(*v19 + 32))(v19);
    if ((SHIBYTE(v14) & 0x80000000) == 0)
    {
      return;
    }

LABEL_26:
    operator delete(__p);
    return;
  }

  if (v19)
  {
    (*(*v19 + 40))();
  }

  if (SHIBYTE(v14) < 0)
  {
    goto LABEL_26;
  }
}

std::string *anonymous namespace::operator<<(std::string *a1, uint64_t a2)
{
  std::string::push_back(a1, 34);
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  if (v4 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = *(a2 + 8);
  }

  while (v6)
  {
    v9 = *v5;
    if (*v5 > 0xCu)
    {
      switch(v9)
      {
        case 0xD:
          v7 = a1;
          v8 = "\\r";
          break;
        case 0x22:
          v7 = a1;
          v8 = "\";
          break;
        case 0x5C:
          v7 = a1;
          v8 = "\\\"";
          break;
        default:
LABEL_22:
          if ((v9 - 127) > 0xA0u)
          {
            v10 = *v5;
          }

          else
          {
            std::string::append(a1, "\\x", 2uLL);
          }

          std::string::push_back(a1, v10);
          goto LABEL_11;
      }
    }

    else if (*v5)
    {
      if (v9 == 9)
      {
        v7 = a1;
        v8 = "\\t";
      }

      else
      {
        if (v9 != 10)
        {
          goto LABEL_22;
        }

        v7 = a1;
        v8 = "\\n";
      }
    }

    else
    {
      v7 = a1;
      v8 = "\\0";
    }

    std::string::append(v7, v8, 2uLL);
LABEL_11:
    ++v5;
    --v6;
  }

  std::string::push_back(a1, 34);
  return a1;
}

swift::Demangle::Node *swift::Demangle::NodePrinter::printAbstractStorage(uint64_t a1, uint64_t a2, uint64_t a3, int a4, void *a5, size_t a6)
{
  v6 = *(a2 + 16);
  if (v6 == 231)
  {
    LODWORD(v8) = -1;
    return swift::Demangle::NodePrinter::printEntity(a1, a2, a3, a4, 1, 0, a5, a6, v8, "subscript", 9);
  }

  else
  {
    if (v6 != 266)
    {
      printer_unreachable("Not an abstract storage node");
    }

    LODWORD(v8) = -1;
    return swift::Demangle::NodePrinter::printEntity(a1, a2, a3, a4, 1, 1, a5, a6, v8, "", 0);
  }
}

uint64_t swift::Demangle::NodePrinter::printEntityType(swift::Demangle::NodePrinter *this, swift::Demangle::Node *a2, swift::Demangle::Node *a3, unint64_t a4, uint64_t a5)
{
  v6 = a3;
  v8 = *(a2 + 18);
  v9 = a2;
  if ((v8 - 1) >= 2)
  {
    if (v8 == 5)
    {
      v10 = *a2;
      v9 = *a2;
      goto LABEL_9;
    }

    v9 = 0;
  }

  if (v8 == 1)
  {
    v11 = (a2 + 8);
    goto LABEL_15;
  }

  if (v8 == 2)
  {
    v11 = (a2 + 16);
    goto LABEL_15;
  }

  if (v8 != 5)
  {
    v11 = 0;
    goto LABEL_15;
  }

  v10 = *a2;
LABEL_9:
  v11 = (v10 + 8 * *(a2 + 2));
LABEL_15:
  while (v9 != v11 && *(*v9 + 16) != 303)
  {
    v9 = (v9 + 8);
  }

  if (v8 == 5)
  {
    if (v9 != (*a2 + 8 * *(a2 + 2)))
    {
      goto LABEL_23;
    }
  }

  else
  {
    v12 = (a2 + 8);
    if (v8 != 1)
    {
      v12 = 0;
    }

    if (v8 == 2)
    {
      v13 = (a2 + 16);
    }

    else
    {
      v13 = v12;
    }

    if (v9 != v13)
    {
LABEL_23:
      v14 = *v9;
      if (a4 | *v9)
      {
        goto LABEL_24;
      }

LABEL_30:

      return swift::Demangle::NodePrinter::print(this, a3, (a5 + 1), 0);
    }
  }

  v14 = 0;
  if (!a4)
  {
    goto LABEL_30;
  }

LABEL_24:
  if (!a4)
  {
    if (*(a3 + 8) != 45)
    {
      goto LABEL_84;
    }

    v20 = *(a3 + 18);
    v21 = a3;
    if ((v20 - 1) >= 2)
    {
      if (v20 != 5 || !*(a3 + 2))
      {
        v22 = 0;
        goto LABEL_56;
      }

      v21 = *a3;
    }

    v22 = *v21;
LABEL_56:
    swift::Demangle::NodePrinter::print(this, v22, (a5 + 1), 0);
    goto LABEL_57;
  }

  std::string::append((this + 8), "<", 1uLL);
  v16 = *(a4 + 18);
  v17 = a4;
  if ((v16 - 1) >= 2)
  {
    if (v16 == 5)
    {
      v18 = *a4;
      v17 = *a4;
      goto LABEL_44;
    }

    v17 = 0;
  }

  switch(v16)
  {
    case 1:
      v23 = (a4 + 8);
      if (v17 == (a4 + 8))
      {
        goto LABEL_53;
      }

      goto LABEL_51;
    case 2:
      v23 = (a4 + 16);
      if (v17 == (a4 + 16))
      {
        goto LABEL_53;
      }

      goto LABEL_51;
    case 5:
      v18 = *a4;
LABEL_44:
      v23 = (v18 + 8 * *(a4 + 8));
      if (v17 == v23)
      {
        goto LABEL_53;
      }

      goto LABEL_51;
  }

  v23 = 0;
  if (!v17)
  {
    goto LABEL_53;
  }

LABEL_51:
  v25 = *v17;
  v24 = v17 + 1;
  swift::Demangle::NodePrinter::print(this, v25, (a5 + 1), 0);
  while (v24 != v23)
  {
    std::string::append((this + 8), ", ", 2uLL);
    v26 = *v24++;
    swift::Demangle::NodePrinter::print(this, v26, (a5 + 1), 0);
  }

LABEL_53:
  std::string::append((this + 8), ">", 1uLL);
  if (*(v6 + 8) != 45)
  {
    goto LABEL_84;
  }

LABEL_57:
  v27 = *(v6 + 18);
  if (v27 != 2)
  {
    if (v27 != 5 || *(v6 + 2) < 2u)
    {
      v28 = 0;
      goto LABEL_63;
    }

    v6 = *v6;
  }

  v28 = *(v6 + 1);
LABEL_63:
  v29 = v28;
  while (1)
  {
    v30 = v29;
    v31 = *(v29 + 8);
    if (v31 != 243)
    {
      break;
    }

    v32 = *(v30 + 18);
    if ((v32 - 1) < 2)
    {
LABEL_66:
      v29 = *v30;
    }

    else
    {
      v29 = 0;
      if (v32 == 5)
      {
        v29 = 0;
        if (*(v30 + 2))
        {
          v30 = *v30;
          goto LABEL_66;
        }
      }
    }
  }

  v33 = (v31 - 45) > 0x27 || ((1 << (v31 - 45)) & 0x8000400001) == 0;
  if (v33 && v31 != 257)
  {
    std::string::push_back((this + 8), 32);
  }

  v34 = *(v28 + 18);
  if ((v34 - 1) < 2)
  {
LABEL_82:
    v6 = *v28;
  }

  else
  {
    if (v34 == 5 && *(v28 + 2))
    {
      v28 = *v28;
      goto LABEL_82;
    }

    v6 = 0;
  }

LABEL_84:

  return swift::Demangle::NodePrinter::printFunctionType(this, v14, v6, a5);
}

void swift::Demangle::NodePrinter::printFunctionName(swift::Demangle::NodePrinter *this, char a2, llvm::StringRef *a3, llvm::StringRef *a4, int a5, unsigned int *a6, swift::Demangle::Node *a7, int a8)
{
  v11 = *(a3 + 1);
  if ((a2 & 1) == 0 && !v11)
  {
    goto LABEL_22;
  }

  if (*(a4 + 1))
  {
    v12 = a5 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (!v12)
  {
    v13 = a3;
    v14 = a7;
    v15 = a8;
    std::string::append((this + 8), *a4, *(a4 + 1));
    if ((*a6 & 0x80000000) == 0)
    {
      snprintf(__str, 0x20uLL, "%lld", *a6);
      std::string::append((this + 8), __str);
    }

    std::string::append((this + 8), " of ", 4uLL);
    *a4 = "";
    *(a4 + 1) = 0;
    *a6 = -1;
    a3 = v13;
    v11 = *(v13 + 1);
    a8 = v15;
    a7 = v14;
  }

  if (*(this + 31) >= 0)
  {
    v16 = *(this + 31);
  }

  else
  {
    v16 = *(this + 2);
  }

  if (!v11)
  {
    v20 = *(a7 + 18);
    v21 = a7;
    if (v20 == 5)
    {
      v21 = *a7;
    }

    v22 = *(v21 + 1);
    if (*(v22 + 8) != 186)
    {
      v23 = a8;
      v24 = a7;
      swift::Demangle::NodePrinter::print(this, v22, (a8 + 1), 0);
      a7 = v24;
      a8 = v23;
      v20 = v24[18];
    }

    v25 = a7;
    if ((v20 - 1) >= 2)
    {
      if (v20 == 5)
      {
        v26 = *a7;
        v25 = *a7;
        goto LABEL_38;
      }

      v25 = 0;
    }

    if (v20 == 1)
    {
      v27 = (a7 + 8);
      goto LABEL_44;
    }

    if (v20 == 2)
    {
      v27 = (a7 + 16);
      goto LABEL_44;
    }

    if (v20 != 5)
    {
      v27 = 0;
      goto LABEL_44;
    }

    v26 = *a7;
LABEL_38:
    v27 = (v26 + 8 * *(a7 + 2));
LABEL_44:
    while (v25 != v27 && *(*v25 + 8) != 186)
    {
      ++v25;
    }

    if (v20 == 5)
    {
      if (v25 == (*a7 + 8 * *(a7 + 2)))
      {
        goto LABEL_15;
      }
    }

    else
    {
      v28 = (a7 + 8);
      if (v20 != 1)
      {
        v28 = 0;
      }

      if (v20 == 2)
      {
        v29 = (a7 + 16);
      }

      else
      {
        v29 = v28;
      }

      if (v25 == v29)
      {
        goto LABEL_15;
      }
    }

    if (*v25)
    {
      swift::Demangle::NodePrinter::print(this, *v25, (a8 + 1), 0);
    }

    goto LABEL_15;
  }

  std::string::append((this + 8), *a3, v11);
LABEL_15:
  v17 = *(this + 31);
  if ((v17 & 0x80u) != 0)
  {
    v17 = *(this + 2);
  }

  if (v17 != v16 && *(a4 + 1) != 0)
  {
    std::string::push_back((this + 8), 46);
  }

LABEL_22:
  v19 = *(a4 + 1);
  if (v19)
  {
    std::string::append((this + 8), *a4, v19);
    if ((*a6 & 0x80000000) == 0)
    {
      snprintf(__str, 0x20uLL, "%lld", *a6);
      std::string::append((this + 8), __str);
    }
  }
}

uint64_t ***matchSequenceOfKinds(uint64_t ***result, void *a2)
{
  if (result)
  {
    v2 = ((a2[1] - *a2) >> 4) + 1;
    for (i = (*a2 + 8); ; i += 2)
    {
      if (!--v2)
      {
        return result;
      }

      v4 = *(i - 4);
      v5 = *i;
      v6 = *(result + 18);
      v7 = v6 - 1;
      if (v6 != 1)
      {
        if (v6 == 5)
        {
          if (*(result + 2) <= v5)
          {
            return 0;
          }

          goto LABEL_11;
        }

        if (v6 != 2)
        {
          return 0;
        }

        v6 = 2;
      }

      if (v6 <= v5)
      {
        return 0;
      }

LABEL_11:
      if (v7 >= 2)
      {
        result = *result;
      }

      result = result[v5];
      if (!result)
      {
        return result;
      }

      if (*(result + 8) != v4)
      {
        return 0;
      }
    }
  }

  return result;
}

void swift::Demangle::keyPathSourceString()
{
  v5 = 3;
  LODWORD(v4) = 2112095;
  swift::Demangle::Context::Context(v3);
}

void swift::Demangle::keyPathSourceString(char const*,unsigned long)::$_1::operator()(uint64_t **a1@<X0>, char *a2@<X8>)
{
  v3 = *(a1 + 8);
  if (v3 == 146)
  {
    if (*(a1 + 18) == 5)
    {
      a1 = *a1;
    }

    v6 = a1[1];
    v7 = v6[1];
    if (v7 > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_32;
    }

    v8 = *v6;
    v9 = **a1;
    if (v7 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v6[1];
    if (v7)
    {
      memmove(&__dst, v8, v7);
    }

    __dst.__r_.__value_.__s.__data_[v7] = 0;
    v10 = std::string::append(&__dst, " #");
    v11 = v10->__r_.__value_.__r.__words[2];
    *&v17.__r_.__value_.__l.__data_ = *&v10->__r_.__value_.__l.__data_;
    v17.__r_.__value_.__r.__words[2] = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&__p, v9 + 1);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    v14 = std::string::append(&v17, p_p, size);
    *a2 = *v14;
    v14->__r_.__value_.__r.__words[0] = 0;
    v14->__r_.__value_.__l.__size_ = 0;
    v14->__r_.__value_.__r.__words[2] = 0;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v17.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_27:
        if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          return;
        }

        goto LABEL_31;
      }
    }

    else if ((SHIBYTE(v17.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_27;
    }

    operator delete(v17.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_31:
    operator delete(__dst.__r_.__value_.__l.__data_);
    return;
  }

  if (v3 != 103)
  {
    a2[23] = 9;
    strcpy(a2, "<unknown>");
    return;
  }

  v4 = a1[1];
  if (v4 > 0x7FFFFFFFFFFFFFF7)
  {
LABEL_32:
    std::string::__throw_out_of_range[abi:nn200100]();
  }

  v5 = *a1;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a2[23] = v4;
  if (v4)
  {
    memmove(a2, v5, v4);
  }

  *(v4 + a2) = 0;
}

__n128 std::operator+[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>@<Q0>(std::string *__return_ptr a1@<X8>, std::string *this@<X1>, uint64_t a3@<X0>)
{
  v4 = *(a3 + 23);
  if (v4 >= 0)
  {
    v5 = a3;
  }

  else
  {
    v5 = *a3;
  }

  if (v4 >= 0)
  {
    v6 = *(a3 + 23);
  }

  else
  {
    v6 = *(a3 + 8);
  }

  v7 = std::string::insert(this, 0, v5, v6);
  result = *v7;
  *a1 = *v7->n128_u8;
  v7->n128_u64[0] = 0;
  v7->n128_u64[1] = 0;
  v7[1].n128_u64[0] = 0;
  return result;
}

void swift::Demangle::keyPathSourceString(char const*,unsigned long)::$_0::operator()(uint64_t **a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = **a1;
  if (0xAAAAAAAAAAAAAAABLL * (((*a1)[1] - v3) >> 3) <= a2)
  {
    *(a3 + 23) = 9;
    strcpy(a3, "<unknown>");
  }

  else
  {
    v4 = (v3 + 24 * a2);
    if (*(v4 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(a3, *v4, *(v4 + 1));
    }

    else
    {
      v5 = *v4;
      *(a3 + 16) = *(v4 + 2);
      *a3 = v5;
    }
  }
}

void *std::string::basic_string<llvm::StringRef,0>(void *__dst, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_out_of_range[abi:nn200100]();
  }

  v4 = *a2;
  if (v2 >= 0x17)
  {
    operator new();
  }

  *(__dst + 23) = v2;
  if (v2)
  {
    memmove(__dst, v4, v2);
  }

  *(__dst + v2) = 0;
  return __dst;
}

uint64_t swift::Demangle::nodeToString(uint64_t this, swift::Demangle::Node *a2, swift::Demangle::NodePrinter *a3)
{
  if (this)
  {
    return (*(*a2 + 16))(a2, this);
  }

  return this;
}

void swift::Demangle::NodePrinter::~NodePrinter(swift::Demangle::NodePrinter *this)
{
  *this = &unk_2A2008390;
  v2 = this + 72;
  v3 = *(this + 12);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    if ((*(this + 31) & 0x80000000) == 0)
    {
      return;
    }

LABEL_7:
    operator delete(*(this + 1));
    return;
  }

  if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  if (*(this + 31) < 0)
  {
    goto LABEL_7;
  }
}

{
  *this = &unk_2A2008390;
  v2 = this + 72;
  v3 = *(this + 12);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    if ((*(this + 31) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    if ((*(this + 31) & 0x80000000) == 0)
    {
LABEL_5:

      JUMPOUT(0x29C2AA2C0);
    }
  }

  operator delete(*(this + 1));
  goto LABEL_5;
}

uint64_t *std::string::basic_string[abi:nn200100](uint64_t *__dst, const void *a2, size_t __len)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_out_of_range[abi:nn200100]();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  *(__dst + 23) = __len;
  if (__len)
  {
    memmove(__dst, a2, __len);
  }

  *(__dst + __len) = 0;
  return __dst;
}

void swift::Demangle::NodePrinter::printFunctionParameters(swift::Demangle::Node *,swift::Demangle::Node *,unsigned int,BOOL)::$_1::operator()(uint64_t a1, swift::Demangle::Node *a2)
{
  v4 = *(a1 + 8);
  if (**a1 != 1)
  {
    if (**(a1 + 32))
    {
      goto LABEL_60;
    }

    v10 = *(a2 + 18);
    v11 = a2;
    if ((v10 - 1) >= 2)
    {
      if (v10 == 5)
      {
        v12 = *a2;
        v11 = *a2;
        goto LABEL_40;
      }

      v11 = 0;
    }

    if (v10 == 1)
    {
      v19 = (a2 + 8);
      goto LABEL_46;
    }

    if (v10 == 2)
    {
      v19 = (a2 + 16);
      goto LABEL_46;
    }

    if (v10 != 5)
    {
      v19 = 0;
      goto LABEL_46;
    }

    v12 = *a2;
LABEL_40:
    v19 = (v12 + 8 * *(a2 + 2));
LABEL_46:
    while (v11 != v19 && *(*v11 + 16) != 236)
    {
      v11 = (v11 + 8);
    }

    if (v10 == 5)
    {
      if (v11 == (*a2 + 8 * *(a2 + 2)))
      {
        goto LABEL_58;
      }
    }

    else
    {
      v20 = (a2 + 8);
      if (v10 != 1)
      {
        v20 = 0;
      }

      if (v10 == 2)
      {
        v21 = (a2 + 16);
      }

      else
      {
        v21 = v20;
      }

      if (v11 == v21)
      {
        goto LABEL_58;
      }
    }

    v22 = *v11;
    if (v22)
    {
      std::string::append((v4 + 8), *v22, *(v22 + 8));
      v23 = ":";
      v24 = (v4 + 8);
      v25 = 1;
LABEL_59:
      std::string::append(v24, v23, v25);
      goto LABEL_60;
    }

LABEL_58:
    v23 = "_:";
    v24 = (v4 + 8);
    v25 = 2;
    goto LABEL_59;
  }

  v5 = **(a1 + 24);
  v6 = ***(a1 + 16);
  v7 = *(v6 + 18);
  v8 = v7 - 1;
  if (v7 != 1)
  {
    if (v7 == 5)
    {
      if (*(v6 + 2) > v5)
      {
        goto LABEL_7;
      }

      goto LABEL_15;
    }

    if (v7 != 2)
    {
      goto LABEL_15;
    }

    v7 = 2;
  }

  if (v7 > v5)
  {
LABEL_7:
    if (v8 >= 2)
    {
      v6 = *v6;
    }

    v9 = v6[v5];
    goto LABEL_16;
  }

LABEL_15:
  v9 = 0;
LABEL_16:
  if (*(v9 + 8) == 103)
  {
    v13 = *v9;
    if (*v9)
    {
      v14 = v9[1];
      if (v14 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_out_of_range[abi:nn200100]();
      }

      if (v14 >= 0x17)
      {
        operator new();
      }

      HIBYTE(v29) = v9[1];
      if (v14)
      {
        memmove(&__dst, v13, v14);
      }

      *(&__dst + v14) = 0;
      v15 = HIBYTE(v29);
      v16 = v28;
    }

    else
    {
      v16 = 0;
      v15 = 0;
      __dst = 0;
      v28 = 0;
      v29 = 0;
    }
  }

  else
  {
    v15 = 1;
    HIBYTE(v29) = 1;
    v16 = 95;
    LOWORD(__dst) = 95;
  }

  if ((v15 & 0x80u) == 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  if ((v15 & 0x80u) == 0)
  {
    v18 = v15;
  }

  else
  {
    v18 = v16;
  }

  std::string::append((v4 + 8), p_dst, v18);
  std::string::push_back((v4 + 8), 58);
  if (SHIBYTE(v29) < 0)
  {
    operator delete(__dst);
  }

LABEL_60:
  if (**a1 == 1 && **(a1 + 32) == 1)
  {
    std::string::push_back((v4 + 8), 32);
  }

  v26 = *(a1 + 32);
  ++**(a1 + 24);
  if (*v26 == 1)
  {
    swift::Demangle::NodePrinter::print(v4, a2, (**(a1 + 40) + 1), 0);
  }
}

unint64_t std::__function::__value_func<std::string ()(unsigned long long,unsigned long long)>::operator()[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  if (v3)
  {
    v4 = *(*v3 + 48);

    return v4();
  }

  else
  {
    std::__throw_bad_function_call[abi:nn200100]();
    return std::__throw_bad_function_call[abi:nn200100]();
  }
}

uint64_t std::vector<std::string>::emplace_back<std::string>(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    v8 = v7 + 1;
    if (v7 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::string::__throw_out_of_range[abi:nn200100]();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x555555555555555)
    {
      v10 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      if (v10 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      std::string::__throw_out_of_range[abi:nn200100]();
    }

    v11 = 24 * v7;
    *v11 = *a2;
    *(v11 + 16) = *(a2 + 2);
    *(a2 + 8) = 0uLL;
    *a2 = 0;
    v6 = 24 * v7 + 24;
    v12 = *a1;
    v13 = *(a1 + 8) - *a1;
    v14 = v11 - v13;
    memcpy((v11 - v13), *a1, v13);
    *a1 = v14;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v12)
    {
      operator delete(v12);
    }
  }

  else
  {
    v5 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v5;
    *(a2 + 8) = 0uLL;
    *a2 = 0;
    v6 = v3 + 24;
  }

  *(a1 + 8) = v6;
  return v6 - 24;
}

swift::Demangle::Node *swift::Demangle::demangleOldSymbolAsNode(_WORD *a1, size_t a2, swift::Demangle::NodeFactory *a3)
{
  __p = 0;
  v174 = 0;
  v175 = 0;
  __src = a1;
  __len = a2;
  v178 = a3;
  v3 = a2 - 2;
  if (a2 < 2 || *a1 != 21599)
  {
    goto LABEL_3;
  }

  v8 = a1 + 1;
  __src = a1 + 1;
  __len = a2 - 2;
  Node = swift::Demangle::NodeFactory::createNode(a3, 101);
  if (v3 < 2)
  {
    goto LABEL_202;
  }

  if (*v8 != 21332)
  {
    if (*v8 == 28500)
    {
      __src = a1 + 2;
      __len = a2 - 4;
      v11 = a3;
      v12 = 174;
    }

    else
    {
      v11 = a3;
      switch(*v8)
      {
        case 0x4F54:
          __src = a1 + 2;
          __len = a2 - 4;
          v12 = 170;
          break;
        case 0x4454:
          __src = a1 + 2;
          __len = a2 - 4;
          v12 = 57;
          break;
        case 0x6454:
          __src = a1 + 2;
          __len = a2 - 4;
          v12 = 58;
          break;
        case 0x5654:
          __src = a1 + 2;
          __len = a2 - 4;
          v11 = a3;
          v12 = 268;
          break;
        default:
          goto LABEL_202;
      }
    }

    v156 = swift::Demangle::NodeFactory::createNode(v11, v12);
    swift::Demangle::Node::addChild(Node, v156, a3, v157, v158);
LABEL_202:
    if (!v159)
    {
      goto LABEL_3;
    }

    swift::Demangle::Node::addChild(Node, v159, v178, v160, v161);
    v162 = __len;
    if (__len)
    {
      v163 = v178;
      v164 = __src;
      __src = __src + __len;
      __len = 0;
      v165 = *(v178 + 1);
      if (!v165 || (v166 = &v165[v162], &v165[v162] > *(v178 + 2)))
      {
        v167 = 2 * *(v178 + 4);
        if (v167 <= v162 + 1)
        {
          v167 = v162 + 1;
        }

        *(v178 + 4) = v167;
        v168 = v167 + 8;
        v169 = malloc_type_malloc(v167 + 8, 0x2004093837F09uLL);
        *v169 = *(v163 + 3);
        v165 = (v169 + 1);
        *(v163 + 2) = v169 + v168;
        *(v163 + 3) = v169;
        v166 = v169 + v162 + 8;
      }

      *(v163 + 1) = v166;
      memmove(v165, v164, v162);
      NodeWithAllocatedText = swift::Demangle::NodeFactory::createNodeWithAllocatedText(v163, 232, v165, v162);
      swift::Demangle::Node::addChild(Node, NodeWithAllocatedText, v178, v171, v172);
    }

    v4 = Node;
    goto LABEL_4;
  }

  v13 = (a1 + 2);
  v14 = a2 - 4;
  __src = a1 + 2;
  __len = a2 - 4;
  if (a2 == 4)
  {
    goto LABEL_3;
  }

  v15 = "u16";
  while (1)
  {
    v16 = *v13;
    switch(v16)
    {
      case 'f':
        __src = v13 + 1;
        __len = v14 - 1;
        v18 = swift::Demangle::NodeFactory::createNode(v178, 79);
        v26 = __len;
        if (__len)
        {
          v27 = __src;
          v28 = *__src;
          if (v28 == 113)
          {
            __src = __src + 1;
            --__len;
            v29 = swift::Demangle::NodeFactory::createNode(v178, 228);
            swift::Demangle::Node::addChild(v18, v29, v178, v30, v31);
            v26 = __len;
            v32 = v178;
            if (!__len)
            {
              v48 = 4294967294;
              goto LABEL_46;
            }

            v27 = __src;
            LOBYTE(v28) = *__src;
          }

          else
          {
            v32 = v178;
          }

          __src = v27 + 1;
          __len = v26 - 1;
          v48 = (v28 - 48);
        }

        else
        {
          v32 = v178;
          v48 = 4294967294;
        }

LABEL_46:
        v51 = swift::Demangle::NodeFactory::createNode(v32, 227, v48);
        while (1)
        {
          while (1)
          {
            while (1)
            {
              swift::Demangle::Node::addChild(v18, v51, v178, v49, v50);
              v39 = __len;
              if (__len)
              {
                v40 = __src;
                if (*__src == 95)
                {
                  goto LABEL_191;
                }
              }

              v51 = swift::Demangle::NodeFactory::createNode(v178, 80);
              v52 = __len;
              v53 = __len - 2;
              if (__len < 2)
              {
                if (!__len)
                {
                  goto LABEL_3;
                }

                v54 = __src;
                goto LABEL_53;
              }

              v54 = __src;
              if (*__src != 24430)
              {
                break;
              }

              __src = __src + 2;
              __len -= 2;
            }

            if (*__src == 28771)
            {
              break;
            }

            switch(*__src)
            {
              case 0x6C63:
                __src = __src + 2;
                __len -= 2;
                if (!v61)
                {
                  goto LABEL_3;
                }

                v62 = v61;
                v63 = v15;
                v64 = swift::Demangle::NodeFactory::createNode(v178, 82, 5);
                swift::Demangle::Node::addChild(v51, v64, v178, v65, v66);
                v67 = v178;
                v68 = *(v62 + 8);
                if (v68)
                {
                  v69 = *v62;
                  v70 = *(v178 + 1);
                  if (!v70 || (v71 = &v70[v68], &v70[v68] > *(v178 + 2)))
                  {
                    v72 = 2 * *(v178 + 4);
                    if (v72 <= v68 + 1)
                    {
                      v72 = v68 + 1;
                    }

                    *(v178 + 4) = v72;
                    v73 = v72 + 8;
                    v74 = malloc_type_malloc(v72 + 8, 0x2004093837F09uLL);
                    *v74 = *(v67 + 3);
                    v70 = (v74 + 1);
                    *(v67 + 2) = v74 + v73;
                    *(v67 + 3) = v74;
                    v71 = v74 + v68 + 8;
                  }

                  *(v67 + 1) = v71;
                  memmove(v70, v69, v68);
                }

                else
                {
                  v70 = 0;
                }

                v116 = swift::Demangle::NodeFactory::createNodeWithAllocatedText(v67, 83, v70, v68);
                swift::Demangle::Node::addChild(v51, v116, v178, v117, v118);
                v15 = v63;
                if (__len)
                {
LABEL_147:
                  if (*__src != 95)
                  {
                    goto LABEL_148;
                  }
                }

                else
                {
LABEL_148:
                  while (1)
                  {
                    if (!v120)
                    {
                      break;
                    }

                    v121 = v120;
                    v122 = swift::Demangle::NodeFactory::createNode(v178, 243);
                    swift::Demangle::Node::addChild(v122, v121, v178, v123, v124);
                    if (!v122)
                    {
                      break;
                    }

                    swift::Demangle::Node::addChild(v51, v122, v178, v49, v50);
                    if (__len)
                    {
                      goto LABEL_147;
                    }
                  }
                }

                if (!__len || *__src != 95)
                {
                  goto LABEL_3;
                }

                __src = __src + 1;
                --__len;
                break;
              case 0x5F69:
                __src = __src + 2;
                __len -= 2;
                v57 = swift::Demangle::NodeFactory::createNode(v178, 82, 6);
                if (!v57)
                {
                  goto LABEL_3;
                }

                goto LABEL_77;
              case 0x5F6B:
                __src = __src + 2;
                __len -= 2;
                v57 = swift::Demangle::NodeFactory::createNode(v178, 82, 7);
                if (!v57)
                {
                  goto LABEL_3;
                }

                goto LABEL_77;
              case 0x5F72:
                __src = __src + 2;
                __len -= 2;
                v57 = swift::Demangle::NodeFactory::createNode(v178, 82, 8);
                if (!v57)
                {
                  goto LABEL_3;
                }

                goto LABEL_77;
              default:
LABEL_53:
                v55 = *v54;
                if (v55 == 100)
                {
                  ++v54;
                  v52 = __len - 1;
                  __src = v54;
                  __len = v52;
                  if (!v52)
                  {
                    goto LABEL_3;
                  }

                  v55 = *v54;
                  v56 = 64;
                }

                else
                {
                  v56 = 0;
                }

                if (v55 == 103)
                {
                  ++v54;
                  --v52;
                  __src = v54;
                  __len = v52;
                  if (!v52)
                  {
                    goto LABEL_3;
                  }

                  v56 |= 0x80uLL;
                  v55 = *v54;
                }

                if (v55 == 111)
                {
                  ++v54;
                  --v52;
                  __src = v54;
                  __len = v52;
                  if (!v52)
                  {
                    goto LABEL_3;
                  }

                  v56 |= 0x200uLL;
                  v55 = *v54;
                }

                if (v55 == 115)
                {
                  ++v54;
                  --v52;
                  __src = v54;
                  __len = v52;
                  if (!v52)
                  {
                    goto LABEL_3;
                  }

                  v56 |= 0x100uLL;
                  v55 = *v54;
                }

                if (v55 != 95)
                {
                  goto LABEL_3;
                }

                __src = v54 + 1;
                __len = v52 - 1;
                if (!v56)
                {
                  goto LABEL_3;
                }

                v57 = swift::Demangle::NodeFactory::createNode(v178, 82, v56);
                if (!v57)
                {
                  goto LABEL_3;
                }

LABEL_77:
                swift::Demangle::Node::addChild(v51, v57, v178, v58, v59);
                break;
            }
          }

          v60 = __src + 2;
          __src = __src + 2;
          __len -= 2;
          if (v53 >= 2)
          {
            if (*v60 != 29286)
            {
              goto LABEL_90;
            }

            __src = v54 + 4;
            __len = v52 - 4;
            if (!v125 || !__len || *__src != 95)
            {
              goto LABEL_3;
            }

            v77 = v125;
            v78 = v15;
            __src = __src + 1;
            --__len;
            v79 = v178;
            v80 = 0;
LABEL_159:
            v126 = swift::Demangle::NodeFactory::createNode(v79, 82, v80);
            swift::Demangle::Node::addChild(v51, v126, v178, v127, v128);
            v129 = v178;
            v130 = *(v77 + 8);
            if (v130)
            {
              v131 = *v77;
              v132 = *(v178 + 1);
              if (!v132 || (v133 = &v132[v130], &v132[v130] > *(v178 + 2)))
              {
                v134 = 2 * *(v178 + 4);
                if (v134 <= v130 + 1)
                {
                  v134 = v130 + 1;
                }

                *(v178 + 4) = v134;
                v135 = v134 + 8;
                v136 = malloc_type_malloc(v134 + 8, 0x2004093837F09uLL);
                *v136 = *(v129 + 3);
                v132 = (v136 + 1);
                *(v129 + 2) = v136 + v135;
                *(v129 + 3) = v136;
                v133 = v136 + v130 + 8;
              }

              *(v129 + 1) = v133;
              memmove(v132, v131, v130);
            }

            else
            {
              v132 = 0;
            }

            v137 = swift::Demangle::NodeFactory::createNodeWithAllocatedText(v129, 83, v132, v130);
            swift::Demangle::Node::addChild(v51, v137, v178, v138, v139);
            v15 = v78;
          }

          else
          {
            if (!v53)
            {
              goto LABEL_3;
            }

LABEL_90:
            v75 = *v60;
            if (v75 == 105)
            {
              v81 = v54 + 3;
              memset(&v179, 0, sizeof(v179));
              v82 = v52 - 3;
              __src = v81;
              __len = v82;
              if (v82)
              {
                v83 = *v81;
                if (v83 == 95)
                {
LABEL_106:
                  __src = v81 + 1;
                  __len = v82 - 1;
                  v86 = swift::Demangle::NodeFactory::createNode(v178, 82, 2);
                  swift::Demangle::Node::addChild(v51, v86, v178, v87, v88);
                  v89 = v178;
                  if ((v179.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v90 = &v179;
                  }

                  else
                  {
                    v90 = v179.__r_.__value_.__r.__words[0];
                  }

                  if ((v179.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    size = SHIBYTE(v179.__r_.__value_.__r.__words[2]);
                  }

                  else
                  {
                    size = v179.__r_.__value_.__l.__size_;
                  }

                  if (size)
                  {
                    v92 = *(v178 + 1);
                    if (!v92 || (v93 = &v92[size], &v92[size] > *(v178 + 2)))
                    {
                      v94 = 2 * *(v178 + 4);
                      if (v94 <= size + 1)
                      {
                        v94 = size + 1;
                      }

                      *(v178 + 4) = v94;
                      v95 = v94 + 8;
                      v96 = malloc_type_malloc(v94 + 8, 0x2004093837F09uLL);
                      *v96 = *(v89 + 3);
                      v92 = (v96 + 1);
                      *(v89 + 2) = v96 + v95;
                      *(v89 + 3) = v96;
                      v93 = v96 + size + 8;
                    }

                    *(v89 + 1) = v93;
                    memmove(v92, v90, size);
                  }

                  else
                  {
                    v92 = 0;
                  }

                  v152 = swift::Demangle::NodeFactory::createNodeWithAllocatedText(v89, 83, v92, size);
                  swift::Demangle::Node::addChild(v51, v152, v178, v153, v154);
                  v151 = 1;
                  v15 = "u16";
                  goto LABEL_186;
                }

                while (1)
                {
                  std::string::push_back(&v179, v83);
                  v84 = __len;
                  v85 = __len != 0;
                  v81 = __len ? __src + 1 : __src;
                  v82 = __len - v85;
                  __src = v81;
                  __len -= v85;
                  if (v84 <= 1)
                  {
                    break;
                  }

                  v83 = *v81;
                  if (v83 == 95)
                  {
                    if (!v82)
                    {
                      goto LABEL_183;
                    }

                    goto LABEL_106;
                  }
                }
              }

              goto LABEL_183;
            }

            if (v75 == 103)
            {
              __src = v54 + 3;
              __len = v52 - 3;
              if (!v76 || !__len || *__src != 95)
              {
                goto LABEL_3;
              }

              v77 = v76;
              v78 = v15;
              __src = __src + 1;
              --__len;
              v79 = v178;
              v80 = 1;
              goto LABEL_159;
            }

            if (v53 >= 2 && *v60 == 27750)
            {
              v140 = v54 + 4;
              memset(&v179, 0, sizeof(v179));
              v141 = v52 - 4;
              __src = v140;
              __len = v141;
              if (!v141)
              {
                goto LABEL_183;
              }

              v142 = *v140;
              if (v142 != 95)
              {
                while (1)
                {
                  std::string::push_back(&v179, v142);
                  v143 = __len;
                  v144 = __len != 0;
                  v140 = __len ? __src + 1 : __src;
                  v141 = __len - v144;
                  __src = v140;
                  __len -= v144;
                  if (v143 <= 1)
                  {
                    break;
                  }

                  v142 = *v140;
                  if (v142 == 95)
                  {
                    if (!v141)
                    {
                      break;
                    }

                    goto LABEL_176;
                  }
                }

LABEL_183:
                v151 = 0;
                goto LABEL_186;
              }

LABEL_176:
              __src = v140 + 1;
              __len = v141 - 1;
              v145 = swift::Demangle::NodeFactory::createNode(v178, 82, 3);
              swift::Demangle::Node::addChild(v51, v145, v178, v146, v147);
              v113 = v178;
              if ((v179.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v114 = &v179;
              }

              else
              {
                v114 = v179.__r_.__value_.__r.__words[0];
              }

              if ((v179.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v115 = SHIBYTE(v179.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v115 = v179.__r_.__value_.__l.__size_;
              }
            }

            else
            {
              if (v75 != 115)
              {
                goto LABEL_3;
              }

              __src = v54 + 3;
              __len = v52 - 3;
              if (v52 == 3)
              {
                goto LABEL_3;
              }

              if (v54[3] != 101)
              {
                goto LABEL_3;
              }

              v97 = (v54 + 4);
              __src = v97;
              __len = v52 - 4;
              if (v52 == 4)
              {
                goto LABEL_3;
              }

              v98 = *v97;
              if ((v98 - 50) < 0xFFFFFFFE)
              {
                goto LABEL_3;
              }

              memset(&v179, 0, sizeof(v179));
              if (v98 == 48)
              {
                v99 = "u8";
              }

              else
              {
                v99 = v15;
              }

              std::string::append(&v179, v99);
              v100 = __src;
              v101 = __len;
              if (__len)
              {
                v100 = __src + 1;
              }

              v102 = __len - (__len != 0);
              __src = v100;
              __len = v102;
              if (v101 < 2)
              {
                goto LABEL_183;
              }

              if (*v100 != 118)
              {
                goto LABEL_183;
              }

              __src = v100 + 1;
              __len = v102 - 1;
              if (!v103 || !__len || *__src != 95)
              {
                goto LABEL_183;
              }

              v104 = v103;
              __src = __src + 1;
              --__len;
              v105 = swift::Demangle::NodeFactory::createNode(v178, 82, 4);
              swift::Demangle::Node::addChild(v51, v105, v178, v106, v107);
              if ((v179.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v108 = &v179;
              }

              else
              {
                v108 = v179.__r_.__value_.__r.__words[0];
              }

              if ((v179.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v109 = SHIBYTE(v179.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v109 = v179.__r_.__value_.__l.__size_;
              }

              v110 = swift::Demangle::NodeFactory::createNode(v178, 83, v108, v109);
              swift::Demangle::Node::addChild(v51, v110, v178, v111, v112);
              v113 = v178;
              v114 = *v104;
              v115 = *(v104 + 8);
            }

            v148 = swift::Demangle::NodeFactory::createNode(v113, 83, v114, v115);
            swift::Demangle::Node::addChild(v51, v148, v178, v149, v150);
            v151 = 1;
LABEL_186:
            if (SHIBYTE(v179.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v179.__r_.__value_.__l.__data_);
            }

            v4 = 0;
            if ((v151 & 1) == 0)
            {
              goto LABEL_4;
            }
          }
        }

      case 'g':
        v17 = 93;
        break;
      case 'r':
        v17 = 94;
        break;
      default:
        goto LABEL_3;
    }

    __src = v13 + 1;
    __len = v14 - 1;
    v18 = swift::Demangle::NodeFactory::createNode(v178, v17);
    v19 = __len;
    if (!__len)
    {
      v25 = v178;
      v33 = 4294967294;
      goto LABEL_33;
    }

    v20 = __src;
    v21 = *__src;
    if (v21 != 113)
    {
      v25 = v178;
      goto LABEL_32;
    }

    __src = __src + 1;
    --__len;
    v22 = swift::Demangle::NodeFactory::createNode(v178, 228);
    swift::Demangle::Node::addChild(v18, v22, v178, v23, v24);
    v19 = __len;
    v25 = v178;
    if (__len)
    {
      v20 = __src;
      LOBYTE(v21) = *__src;
LABEL_32:
      __src = v20 + 1;
      __len = v19 - 1;
      v33 = (v21 - 48);
      goto LABEL_33;
    }

    v33 = 4294967294;
LABEL_33:
    v36 = swift::Demangle::NodeFactory::createNode(v25, 227, v33);
    while (1)
    {
      swift::Demangle::Node::addChild(v18, v36, v178, v34, v35);
      v39 = __len;
      if (__len)
      {
        v40 = __src;
        if (*__src == 95)
        {
          break;
        }
      }

      v36 = swift::Demangle::NodeFactory::createNode(v178, 96);
      if (!v4)
      {
        goto LABEL_4;
      }

      v42 = swift::Demangle::NodeFactory::createNode(v178, 243);
      swift::Demangle::Node::addChild(v42, v4, v178, v43, v44);
      if (!v42)
      {
        goto LABEL_3;
      }

      while (1)
      {
        swift::Demangle::Node::addChild(v36, v42, v178, v45, v46);
        if (__len)
        {
          if (*__src == 95)
          {
            break;
          }
        }

        v4 = 0;
        if (!v42)
        {
          goto LABEL_4;
        }
      }

      __src = __src + 1;
      --__len;
    }

LABEL_191:
    __src = v40 + 1;
    __len = v39 - 1;
    if (!v18)
    {
      goto LABEL_3;
    }

    swift::Demangle::Node::addChild(Node, v18, v178, v37, v38);
    v174 = __p;
    if (__len < 4)
    {
      break;
    }

    v155 = __src;
    if (*__src != 1398035551)
    {
      goto LABEL_213;
    }

    v4 = 0;
    v13 = __src + 4;
    v14 = __len - 4;
    __src = __src + 4;
    __len = v14;
    if (!v14)
    {
      goto LABEL_4;
    }
  }

  if (__len >= 2)
  {
    v155 = __src;
LABEL_213:
    if (*v155 == 21599)
    {
      __src = v155 + 1;
      __len -= 2;
      goto LABEL_202;
    }
  }

LABEL_3:
  v4 = 0;
LABEL_4:
  if (__p)
  {
    v174 = __p;
    operator delete(__p);
  }

  return v4;
}

swift::Demangle::Node *anonymous namespace::OldDemangler::demangleGlobal(_anonymous_namespace_::OldDemangler *this, unsigned int a2)
{
  if (a2 > 0x400)
  {
    return 0;
  }

  v2 = *(this + 4);
  if (!v2)
  {
    return 0;
  }

  v3 = *(this + 3);
  v4 = *v3;
  if (v4 == 77)
  {
    *(this + 3) = v3 + 1;
    *(this + 4) = v2 - 1;
    if (v2 == 1)
    {
      goto LABEL_39;
    }

    v5 = v3[1];
    if (v5 > 0x65)
    {
      if (v3[1] <= 0x6Du)
      {
        if (v5 != 102)
        {
          if (v5 == 109)
          {
            *(this + 3) = v3 + 2;
            *(this + 4) = v2 - 2;
            v6 = this;
            v7 = *(this + 5);
            v8 = a2;
            v9 = 156;
            goto LABEL_40;
          }

          goto LABEL_39;
        }

        *(this + 3) = v3 + 2;
        *(this + 4) = v2 - 2;
        v6 = this;
        v7 = *(this + 5);
        v8 = a2;
        v9 = 77;
LABEL_40:
        Node = swift::Demangle::NodeFactory::createNode(v7, v9);
        v36 = v8 + 1;
        v34 = v6;
        if (v35)
        {
          goto LABEL_41;
        }

        return 0;
      }

      if (v5 == 110)
      {
        *(this + 3) = v3 + 2;
        *(this + 4) = v2 - 2;
        v6 = this;
        v7 = *(this + 5);
        v8 = a2;
        v9 = 168;
        goto LABEL_40;
      }

      if (v5 == 112)
      {
        *(this + 3) = v3 + 2;
        *(this + 4) = v2 - 2;
        Node = swift::Demangle::NodeFactory::createNode(*(this + 5), 196);
        v33 = a2 + 1;
        v34 = this;
        if (v35)
        {
LABEL_41:
          v38 = v35;
          v39 = *(v34 + 5);
LABEL_42:
          v40 = Node;
LABEL_43:
          swift::Demangle::Node::addChild(v40, v38, v39, v24, v25);
          return Node;
        }

        return 0;
      }

LABEL_39:
      v6 = this;
      v7 = *(this + 5);
      v8 = a2;
      v9 = 248;
      goto LABEL_40;
    }

    v8 = a2;
    switch(v5)
    {
      case 'L':
        *(this + 3) = v3 + 2;
        *(this + 4) = v2 - 2;
        v6 = this;
        v7 = *(this + 5);
        v9 = 256;
        goto LABEL_40;
      case 'P':
        *(this + 3) = v3 + 2;
        *(this + 4) = v2 - 2;
        v26 = this;
        v27 = *(this + 5);
        v28 = 99;
        break;
      case 'a':
        *(this + 3) = v3 + 2;
        *(this + 4) = v2 - 2;
        v26 = this;
        v27 = *(this + 5);
        v28 = 249;
        break;
      default:
        goto LABEL_39;
    }

LABEL_69:
    Node = swift::Demangle::NodeFactory::createNode(v27, v28);
    v66 = v26;
    if (v68)
    {
      v69 = v68;
      v70 = swift::Demangle::NodeFactory::createNode(*(v26 + 5), 243);
      swift::Demangle::Node::addChild(v70, v69, *(v66 + 5), v71, v72);
      if (v70)
      {
        v39 = *(v66 + 5);
        v40 = Node;
        v38 = v70;
        goto LABEL_43;
      }
    }

    return 0;
  }

  v10 = v2 - 1;
  if (v2 != 1 && *v3 == 16720)
  {
    *(this + 3) = v3 + 2;
    *(this + 4) = v2 - 2;
    if (v2 == 2 || v3[2] != 111)
    {
      v29 = a2;
      v30 = 180;
    }

    else
    {
      v29 = a2;
      *(this + 3) = v3 + 3;
      *(this + 4) = v2 - 3;
      v30 = 181;
    }

    v11 = swift::Demangle::NodeFactory::createNode(*(this + 5), v30);
    v57 = *(this + 4);
    v58 = v57 >= 3;
    v59 = v57 - 3;
    if (!v58)
    {
      return v11;
    }

    v60 = *(this + 3);
    if (*v60 != 24415 || *(v60 + 2) != 84)
    {
      return v11;
    }

    v62 = v11;
    *(this + 3) = v60 + 3;
    *(this + 4) = v59;
    if (v63)
    {
      swift::Demangle::Node::addChild(v62, v63, *(this + 5), v64, v65);
      return v62;
    }

    return 0;
  }

  if (*v3 > 0x73u)
  {
    if (v4 == 119)
    {
      *(this + 3) = v3 + 1;
      *(this + 4) = v10;
      v15 = this;
      if ((v49 & 0x100000000) == 0)
      {
        return 0;
      }

      v50 = v49;
      v51 = swift::Demangle::NodeFactory::createNode(*(v15 + 5), 264);
      v52 = swift::Demangle::NodeFactory::createNode(*(v15 + 5), 104, v50);
      Node = v51;
      swift::Demangle::Node::addChild(v51, v52, *(v15 + 5), v53, v54);
      if (!v23)
      {
        return 0;
      }

      goto LABEL_54;
    }

    if (v4 == 116)
    {
      *(this + 3) = v3 + 1;
      *(this + 4) = v10;
      v26 = this;
      v27 = *(this + 5);
      v8 = a2;
      v28 = 247;
      goto LABEL_69;
    }
  }

  else
  {
    if (v4 == 84)
    {
      *(this + 3) = v3 + 1;
      *(this + 4) = v2 - 1;
      if (v2 == 1)
      {
        return 0;
      }

      v43 = v3[1];
      switch(v43)
      {
        case 'r':
          *(this + 3) = v3 + 2;
          *(this + 4) = v2 - 2;
          v44 = this;
          v45 = *(this + 5);
          v46 = a2;
          v47 = 210;
          break;
        case 'W':
          *(this + 3) = v3 + 2;
          *(this + 4) = v2 - 2;
          Node = swift::Demangle::NodeFactory::createNode(*(this + 5), 206);
          v80 = a2;
          v81 = a2 + 1;
          v34 = this;
          if (v83)
          {
            swift::Demangle::Node::addChild(Node, v83, *(this + 5), v84, v85);
            if (v35)
            {
              goto LABEL_41;
            }
          }

          return 0;
        case 'R':
          *(this + 3) = v3 + 2;
          *(this + 4) = v2 - 2;
          v44 = this;
          v45 = *(this + 5);
          v46 = a2;
          v47 = 211;
          break;
        default:
          return 0;
      }

      v86 = swift::Demangle::NodeFactory::createNode(v45, v47);
      {
        return v86;
      }

      else
      {
        return 0;
      }
    }

    if (v4 == 87)
    {
      v11 = v2 - 1;
      *(this + 3) = v3 + 1;
      *(this + 4) = v2 - 1;
      if (v2 == 1)
      {
        return v11;
      }

      v11 = 0;
      v12 = v3[1];
      if (v12 > 0x55)
      {
        if (v3[1] <= 0x6Bu)
        {
          v8 = a2;
          if (v12 == 86)
          {
            *(this + 3) = v3 + 2;
            *(this + 4) = v2 - 2;
            v6 = this;
            v7 = *(this + 5);
            v9 = 265;
            goto LABEL_40;
          }

          if (v12 != 97)
          {
            return v11;
          }

          *(this + 3) = v3 + 2;
          *(this + 4) = v2 - 2;
          v87 = this;
          v88 = *(this + 5);
          v89 = 208;
          goto LABEL_101;
        }

        if (v12 != 108)
        {
          if (v12 == 116)
          {
            *(this + 3) = v3 + 2;
            *(this + 4) = v2 - 2;
            Node = swift::Demangle::NodeFactory::createNode(*(this + 5), 6);
            v15 = this;
            if (!v105)
            {
              return 0;
            }

            swift::Demangle::Node::addChild(Node, v105, *(this + 5), v106, v107);
            if (!v23)
            {
              return 0;
            }
          }

          else
          {
            if (v12 != 118)
            {
              return v11;
            }

            *(this + 3) = v3 + 2;
            *(this + 4) = v2 - 2;
            v15 = this;
            v74 = swift::Demangle::NodeFactory::createNode(*(this + 5), 75);
            v11 = *(v15 + 4);
            if (!v11)
            {
              return v11;
            }

            v75 = *(v15 + 3);
            v76 = *v75;
            if (v76 == 100)
            {
              Node = v74;
              v77 = 0;
            }

            else
            {
              if (v76 != 105)
              {
                return 0;
              }

              Node = v74;
              v77 = 1;
            }

            *(v15 + 3) = v75 + 1;
            *(v15 + 4) = v11 - 1;
            v108 = swift::Demangle::NodeFactory::createNode(*(v15 + 5), 54, v77);
            swift::Demangle::Node::addChild(Node, v108, *(v15 + 5), v109, v110);
            if (!v23)
            {
              return 0;
            }
          }

LABEL_54:
          v38 = v23;
          v39 = *(v15 + 5);
          goto LABEL_42;
        }

        *(this + 3) = v3 + 2;
        *(this + 4) = v2 - 2;
        v90 = this;
        v91 = *(this + 5);
        v92 = a2;
        v93 = 144;
      }

      else
      {
        if (v3[1] <= 0x4Bu)
        {
          v8 = a2;
          if (v12 == 71)
          {
            *(this + 3) = v3 + 2;
            *(this + 4) = v2 - 2;
            v87 = this;
            v88 = *(this + 5);
            v89 = 90;
          }

          else
          {
            if (v12 != 73)
            {
              return v11;
            }

            *(this + 3) = v3 + 2;
            *(this + 4) = v2 - 2;
            v87 = this;
            v88 = *(this + 5);
            v89 = 91;
          }

          goto LABEL_101;
        }

        if (v12 != 76)
        {
          v8 = a2;
          if (v12 != 80)
          {
            if (v12 == 84)
            {
              *(this + 3) = v3 + 2;
              *(this + 4) = v2 - 2;
              Node = swift::Demangle::NodeFactory::createNode(*(this + 5), 9);
              v15 = this;
              if (!v17)
              {
                return 0;
              }

              swift::Demangle::Node::addChild(Node, v17, *(this + 5), v18, v19);
              if (!v20)
              {
                return 0;
              }

              swift::Demangle::Node::addChild(Node, v20, *(this + 5), v21, v22);
              if (!v23)
              {
                return 0;
              }

              goto LABEL_54;
            }

            return v11;
          }

          *(this + 3) = v3 + 2;
          *(this + 4) = v2 - 2;
          v87 = this;
          v88 = *(this + 5);
          v89 = 207;
LABEL_101:
          Node = swift::Demangle::NodeFactory::createNode(v88, v89);
          v101 = v8 + 1;
          v34 = v87;
          if (v35)
          {
            goto LABEL_41;
          }

          return 0;
        }

        *(this + 3) = v3 + 2;
        *(this + 4) = v2 - 2;
        v90 = this;
        v91 = *(this + 5);
        v92 = a2;
        v93 = 145;
      }

      Node = swift::Demangle::NodeFactory::createNode(v91, v93);
      v94 = v92;
      v95 = v92 + 1;
      v34 = v90;
      if (v97)
      {
        swift::Demangle::Node::addChild(Node, v97, v90[5], v98, v99);
        if (v35)
        {
          goto LABEL_41;
        }
      }

      return 0;
    }
  }

  v41 = a2 + 1;
}

swift::Demangle *anonymous namespace::OldDemangler::demangleType(swift::Demangle::NodeFactory **this, uint64_t a2, unsigned int a3)
{
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  Node = swift::Demangle::NodeFactory::createNode(this[5], 243);
  swift::Demangle::Node::addChild(Node, v5, this[5], v7, v8);
  return Node;
}

swift::Demangle *anonymous namespace::OldDemangler::demangleProtocolConformance(swift::Demangle::NodeFactory **this, int a2, unsigned int a3)
{
  if (result)
  {
    v6 = result;
    Node = swift::Demangle::NodeFactory::createNode(this[5], 243);
    swift::Demangle::Node::addChild(Node, v6, this[5], v8, v9);
    if (!Node)
    {
      return 0;
    }

    if (!result)
    {
      return result;
    }

    v10 = result;
    v11 = swift::Demangle::NodeFactory::createNode(this[5], 243);
    swift::Demangle::Node::addChild(v11, v10, this[5], v12, v13);
    if (v11)
    {
      if (result)
      {
        v14 = result;
        v15 = swift::Demangle::NodeFactory::createNode(this[5], 192);
        swift::Demangle::Node::addChild(v15, Node, this[5], v16, v17);
        swift::Demangle::Node::addChild(v15, v11, this[5], v18, v19);
        swift::Demangle::Node::addChild(v15, v14, this[5], v20, v21);
        return v15;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

swift::Demangle *anonymous namespace::OldDemangler::demangleTypeImpl(_anonymous_namespace_::OldDemangler *this, uint64_t a2, unsigned int a3)
{
  if (a2 > 0x400)
  {
    return 0;
  }

  v3 = *(this + 4);
  if (!v3)
  {
    return 0;
  }

  Node = 0;
  v5 = *(this + 3);
  v7 = *v5;
  v6 = v5 + 1;
  *(this + 3) = v5 + 1;
  *(this + 4) = v3 - 1;
  v8 = 25;
  switch(v7)
  {
    case 'B':
      Node = 0;
      if (v3 == 1)
      {
        return Node;
      }

      v9 = v5[1];
      *(this + 3) = v5 + 2;
      *(this + 4) = v3 - 2;
      if (v9 > 110)
      {
        if (v9 <= 115)
        {
          if (v9 == 111)
          {
            v75 = *(this + 5);
            v76 = "Builtin.NativeObject";
          }

          else
          {
            if (v9 != 112)
            {
              return Node;
            }

            v75 = *(this + 5);
            v76 = "Builtin.RawPointer";
          }
        }

        else
        {
          switch(v9)
          {
            case 't':
              v75 = *(this + 5);
              v76 = "Builtin.SILToken";
              break;
            case 'v':
              v148 = 0;
              v103 = this;
              {
                return 0;
              }

              v104 = *(v103 + 4);
              if (!v104)
              {
                return 0;
              }

              v105 = *(v103 + 3);
              if (*v105 != 66)
              {
                return 0;
              }

              *(v103 + 3) = v105 + 1;
              *(v103 + 4) = v104 - 1;
              if (v104 == 1)
              {
                return 0;
              }

              v106 = v105[1];
              switch(v106)
              {
                case 'f':
                  *(v103 + 3) = v105 + 2;
                  *(v103 + 4) = v104 - 2;
                  v146 = 0;
                  Node = 0;
                  {
                    return Node;
                  }

                  v11 = *(v103 + 5);
                  memset(&v147, 0, sizeof(v147));
                  std::string::append(&v147, "Builtin.Vec", 0xBuLL);
                  v107 = swift::Demangle::DemanglerPrinter::operator<<(&v147, v148);
                  v108 = v107;
                  v109 = "xFPIEEE";
                  v110 = 7;
                  break;
                case 'p':
                  *(v103 + 3) = v105 + 2;
                  *(v103 + 4) = v104 - 2;
                  v11 = *(v103 + 5);
                  memset(&v147, 0, sizeof(v147));
                  std::string::append(&v147, "Builtin.Vec", 0xBuLL);
                  v138 = swift::Demangle::DemanglerPrinter::operator<<(&v147, v148);
                  std::string::append(v138, "xRawPointer", 0xBuLL);
                  v101 = SHIBYTE(v138->__r_.__value_.__r.__words[2]);
                  size = v138->__r_.__value_.__l.__size_;
                  if (v101 >= 0)
                  {
                    v61 = v138;
                  }

                  else
                  {
                    v61 = v138->__r_.__value_.__r.__words[0];
                  }

                  goto LABEL_150;
                case 'i':
                  *(v103 + 3) = v105 + 2;
                  *(v103 + 4) = v104 - 2;
                  v146 = 0;
                  Node = 0;
                  {
                    return Node;
                  }

                  v11 = *(v103 + 5);
                  memset(&v147, 0, sizeof(v147));
                  std::string::append(&v147, "Builtin.Vec", 0xBuLL);
                  v107 = swift::Demangle::DemanglerPrinter::operator<<(&v147, v148);
                  v108 = v107;
                  v109 = "xInt";
                  v110 = 4;
                  break;
                default:
                  return 0;
              }

              std::string::append(v107, v109, v110);
              v98 = v146;
              v99 = v108;
LABEL_147:
              v100 = swift::Demangle::DemanglerPrinter::operator<<(v99, v98);
              v101 = SHIBYTE(v100->__r_.__value_.__r.__words[2]);
              size = v100->__r_.__value_.__l.__size_;
              if (v101 >= 0)
              {
                v61 = v100;
              }

              else
              {
                v61 = v100->__r_.__value_.__r.__words[0];
              }

LABEL_150:
              if (v101 >= 0)
              {
                v63 = v101;
              }

              else
              {
                v63 = size;
              }

              v60 = v11;
              v62 = 20;
LABEL_154:
              Node = swift::Demangle::NodeFactory::createNode(v60, v62, v61, v63);
              if (SHIBYTE(v147.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v147.__r_.__value_.__l.__data_);
              }

              return Node;
            case 'w':
              v75 = *(this + 5);
              v76 = "Builtin.Word";
              break;
            default:
              return Node;
          }
        }
      }

      else if (v9 <= 97)
      {
        if (v9 == 66)
        {
          v75 = *(this + 5);
          v76 = "Builtin.UnsafeValueBuffer";
        }

        else
        {
          if (v9 != 79)
          {
            return Node;
          }

          v75 = *(this + 5);
          v76 = "Builtin.UnknownObject";
        }
      }

      else
      {
        if (v9 != 98)
        {
          if (v9 == 102)
          {
            v148 = 0;
            v97 = this;
            {
              return 0;
            }

            v11 = *(v97 + 5);
            memset(&v147, 0, sizeof(v147));
            v12 = "Builtin.FPIEEE";
            v13 = 14;
            goto LABEL_146;
          }

          if (v9 != 105)
          {
            return Node;
          }

          v148 = 0;
          v10 = this;
          {
            v11 = *(v10 + 5);
            memset(&v147, 0, sizeof(v147));
            v12 = "Builtin.Int";
            v13 = 11;
LABEL_146:
            std::string::append(&v147, v12, v13);
            v98 = v148;
            v99 = &v147;
            goto LABEL_147;
          }

          return 0;
        }

        v75 = *(this + 5);
        v76 = "Builtin.BridgeObject";
      }

      return swift::Demangle::NodeFactory::createNode(v75, 20, v76);
    case 'C':
      goto LABEL_69;
    case 'D':
      v27 = this;
      if (!v28)
      {
        return 0;
      }

      v29 = v28;
      v30 = swift::Demangle::NodeFactory::createNode(*(v27 + 5), 243);
      swift::Demangle::Node::addChild(v30, v29, *(v27 + 5), v31, v32);
      if (!v30)
      {
        return 0;
      }

      v33 = *(v27 + 5);
      v34 = 59;
      goto LABEL_67;
    case 'E':
      if (v3 == 1)
      {
        return 0;
      }

      if (*v6 != 82)
      {
        return 0;
      }

      *(this + 3) = v5 + 2;
      *(this + 4) = v3 - 2;
      if (v3 == 2 || v5[2] != 82)
      {
        return 0;
      }

      *(this + 3) = v5 + 3;
      *(this + 4) = v3 - 3;
      v60 = *(this + 5);
      memset(&v147, 0, sizeof(v147));
      v61 = &v147;
      v62 = 65;
      v63 = 0;
      goto LABEL_154;
    case 'F':
      v14 = a2 + 1;
      v15 = 84;
      goto LABEL_83;
    case 'G':
      v35 = a2;
      v36 = this;
      if (!v37)
      {
        return 0;
      }

    case 'K':
      v14 = a2 + 1;
      v15 = 11;
      goto LABEL_83;
    case 'M':
      v57 = this;
      if (!v58)
      {
        return 0;
      }

      v30 = v58;
      v27 = v57;
      v33 = *(v57 + 5);
      v34 = 154;
      goto LABEL_67;
    case 'O':
      v8 = 63;
      goto LABEL_69;
    case 'P':
      if (v3 == 1 || *v6 != 77)
      {
        goto LABEL_112;
      }

      *(this + 3) = v5 + 2;
      *(this + 4) = v3 - 2;
      v64 = this;
      if (!v65)
      {
        return 0;
      }

      v30 = v65;
      v27 = v64;
      v33 = *(v64 + 5);
      v34 = 71;
      goto LABEL_67;
    case 'Q':
      if (v3 == 1)
      {
        goto LABEL_89;
      }

      v24 = *v6;
      if (v24 != 85)
      {
        if (v24 == 117)
        {
          *(this + 3) = v5 + 2;
          *(this + 4) = v3 - 2;
          v25 = *(this + 5);

          return swift::Demangle::NodeFactory::createNode(v25, 322);
        }

        else
        {
LABEL_89:
          v74 = a2 + 1;
        }
      }

      *(this + 3) = v5 + 2;
      *(this + 4) = v3 - 2;
      v147.__r_.__value_.__r.__words[0] = 0;
      v78 = this;
      Node = 0;
      {
        return Node;
      }

      Node = swift::Demangle::NodeFactory::createNode(*(v78 + 5), 322);
      v43 = swift::Demangle::NodeFactory::createNode(*(v78 + 5), 355, v147.__r_.__value_.__l.__data_);
      v44 = *(v78 + 5);
      v45 = Node;
      goto LABEL_49;
    case 'R':
      v16 = this;
      v17 = *(this + 5);
      v18 = a2;
      v19 = 128;
      goto LABEL_43;
    case 'S':

    case 'T':
      v20 = a2 + 1;
      v21 = 0;
      goto LABEL_19;
    case 'V':
      v8 = 230;
LABEL_69:
      v69 = a2 + 1;
      v70 = v8;
      goto LABEL_71;
    case 'W':
      v59 = a2 + 1;

    case 'X':
      Node = 0;
      if (v3 == 1)
      {
        return Node;
      }

      v71 = *v6;
      if (v71 > 0x61)
      {
        if (*v6 <= 0x6Eu)
        {
          if (v71 != 98)
          {
            if (v71 != 102)
            {
              return Node;
            }

            *(this + 3) = v5 + 2;
            *(this + 4) = v3 - 2;
            v14 = a2 + 1;
            v15 = 233;
LABEL_83:
          }

          *(this + 3) = v5 + 2;
          *(this + 4) = v3 - 2;
          v93 = this;
          if (!v94)
          {
            return 0;
          }

          v30 = v94;
          v27 = v93;
          v33 = *(v93 + 5);
          v34 = 221;
        }

        else
        {
          switch(v71)
          {
            case 'o':
              *(this + 3) = v5 + 2;
              *(this + 4) = v3 - 2;
              v91 = this;
              if (!v92)
              {
                return 0;
              }

              v30 = v92;
              v27 = v91;
              v33 = *(v91 + 5);
              v34 = 260;
              break;
            case 'u':
              *(this + 3) = v5 + 2;
              *(this + 4) = v3 - 2;
              v95 = this;
              if (!v96)
              {
                return 0;
              }

              v30 = v96;
              v27 = v95;
              v33 = *(v95 + 5);
              v34 = 261;
              break;
            case 'w':
              *(this + 3) = v5 + 2;
              *(this + 4) = v3 - 2;
              v72 = this;
              if (!v73)
              {
                return 0;
              }

              v30 = v73;
              v27 = v72;
              v33 = *(v72 + 5);
              v34 = 259;
              break;
            default:
              return Node;
          }
        }

LABEL_67:
        v66 = swift::Demangle::NodeFactory::createNode(v33, v34);
        swift::Demangle::Node::addChild(v66, v30, *(v27 + 5), v67, v68);
        return v66;
      }

      if (*v6 > 0x4Cu)
      {
        if (v71 == 77)
        {
          v87 = a2;
          *(this + 3) = v5 + 2;
          *(this + 4) = v3 - 2;
          v88 = this;
          if (!v89)
          {
            return 0;
          }

          v49 = v89;
          if (!v90)
          {
            return 0;
          }

          v51 = v90;
          v52 = v88;
          v53 = *(v88 + 5);
          v54 = 154;
        }

        else
        {
          if (v71 != 80)
          {
            return Node;
          }

          *(this + 3) = v5 + 2;
          *(this + 4) = v3 - 2;
          if (v3 == 2 || v5[2] != 77)
          {
LABEL_112:
            v83 = a2 + 1;
          }

          v79 = a2;
          *(this + 3) = v5 + 3;
          *(this + 4) = v3 - 3;
          v80 = this;
          if (!v81)
          {
            return 0;
          }

          v49 = v81;
          if (!v82)
          {
            return 0;
          }

          v51 = v82;
          v52 = v80;
          v53 = *(v80 + 5);
          v54 = 71;
        }

LABEL_48:
        Node = swift::Demangle::NodeFactory::createNode(v53, v54);
        swift::Demangle::Node::addChild(Node, v49, *(v52 + 5), v55, v56);
        v44 = *(v52 + 5);
        v45 = Node;
        v43 = v51;
LABEL_49:
        swift::Demangle::Node::addChild(v45, v43, v44, v41, v42);
        return Node;
      }

      if (v71 != 66)
      {
        if (v71 != 70)
        {
          return Node;
        }

        *(this + 3) = v5 + 2;
        *(this + 4) = v3 - 2;
        v77 = a2 + 1;
      }

      *(this + 3) = v5 + 2;
      *(this + 4) = v3 - 2;
      if (v3 == 2 || v5[2] != 71)
      {
        v85 = a2;
        v86 = 0;
      }

      else
      {
        *(this + 3) = v5 + 3;
        *(this + 4) = v3 - 3;
        v84 = this;
        v85 = a2;
        this = v84;
        if (!v86)
        {
          return 0;
        }
      }

      v111 = this;
      v112 = swift::Demangle::NodeFactory::createNode(*(this + 5), 223);
      v114 = *(v111 + 4);
      if (!v114)
      {
        return 0;
      }

      v115 = v112;
      v116 = v111;
      v117 = v85;
      break;
    case 'a':
      v69 = a2 + 1;
      v70 = 245;
LABEL_71:

    case 'b':
      v14 = a2 + 1;
      v15 = 175;
      goto LABEL_83;
    case 'c':
      v14 = a2 + 1;
      v15 = 23;
      goto LABEL_83;
    case 'f':
      v14 = a2 + 1;
      v15 = 257;
      goto LABEL_83;
    case 'k':
      v16 = this;
      v17 = *(this + 5);
      v18 = a2;
      v19 = 340;
LABEL_43:
      v38 = swift::Demangle::NodeFactory::createNode(v17, v19);
      if (!v40)
      {
        return 0;
      }

      v43 = v40;
      v44 = *(v16 + 5);
      Node = v38;
      v45 = v38;
      goto LABEL_49;
    case 'q':
      v26 = a2 + 1;

    case 't':
      v20 = a2 + 1;
      v21 = 1;
LABEL_19:

    case 'u':
      v46 = a2;
      v47 = this;
      if (!v48)
      {
        return 0;
      }

      v49 = v48;
      if (!v50)
      {
        return 0;
      }

      v51 = v50;
      v52 = v47;
      v53 = *(v47 + 5);
      v54 = 45;
      goto LABEL_48;
    case 'w':
      v22 = a2 + 1;

    case 'x':

    default:
      return Node;
  }

  while (1)
  {
    v118 = *(v116 + 3);
    v119 = *v118;
    if (v119 == 105)
    {
      v120 = 225;
      goto LABEL_172;
    }

    if (v119 != 109)
    {
      break;
    }

    v120 = 224;
LABEL_172:
    *(v116 + 3) = v118 + 1;
    *(v116 + 4) = v114 - 1;
    v121 = v117;
    if (!v122)
    {
      return 0;
    }

    v123 = v122;
    v124 = swift::Demangle::NodeFactory::createNode(*(v111 + 5), 243);
    swift::Demangle::Node::addChild(v124, v123, *(v111 + 5), v125, v126);
    if (!v124)
    {
      return 0;
    }

    v127 = swift::Demangle::NodeFactory::createNode(*(v111 + 5), v120);
    swift::Demangle::Node::addChild(v127, v124, *(v111 + 5), v128, v129);
    swift::Demangle::Node::addChild(v115, v127, *(v111 + 5), v130, v131);
    v116 = v111;
    Node = 0;
    v114 = *(v111 + 4);
    v117 = v121;
    if (!v114)
    {
      return Node;
    }
  }

  if (v119 != 95)
  {
    return 0;
  }

  *(v116 + 3) = v118 + 1;
  *(v116 + 4) = v114 - 1;
  if (v86)
  {
    for (i = swift::Demangle::NodeFactory::createNode(*(v111 + 5), 246); ; swift::Demangle::Node::addChild(i, v135, *(v111 + 5), v136, v137))
    {
      v133 = *(v111 + 4);
      if (v133)
      {
        v134 = *(v111 + 3);
        if (*v134 == 95)
        {
          break;
        }
      }

      if (!v135)
      {
        return 0;
      }
    }

    *(v111 + 3) = v134 + 1;
    *(v111 + 4) = v133 - 1;
  }

  else
  {
    i = 0;
  }

  v139 = swift::Demangle::NodeFactory::createNode(*(v111 + 5), 222);
  swift::Demangle::Node::addChild(v139, v115, *(v111 + 5), v140, v141);
  if (v86)
  {
    swift::Demangle::Node::addChild(v139, v86, *(v111 + 5), v142, v143);
    swift::Demangle::Node::addChild(v139, i, *(v111 + 5), v144, v145);
  }

  return v139;
}

uint64_t anonymous namespace::OldDemangler::demangleBuiltinSize(_anonymous_namespace_::OldDemangler *this, unint64_t *a2)
{
  v2 = *(this + 4);
  if (!v2)
  {
    return 0;
  }

  v3 = *(this + 3);
  v6 = *v3;
  v4 = v3 + 1;
  v5 = *v3;
  *(this + 3) = v3 + 1;
  *(this + 4) = v2 - 1;
  if ((v6 - 48) > 9)
  {
    return 0;
  }

  v7 = v5 & 0xF;
  *a2 = v7;
  if (v2 == 1)
  {
    return 0;
  }

  v8 = v3 + 2;
  v9 = v2 - 2;
  while (1)
  {
    v10 = *v4;
    if ((v10 - 58) < 0xFFFFFFF6)
    {
      break;
    }

    v7 = (v10 & 0xF) + 10 * v7;
    *a2 = v7;
    ++v4;
    *(this + 3) = v8;
    *(this + 4) = v9;
    ++v8;
    if (--v9 == -1)
    {
      return 0;
    }
  }

  if (v10 != 95)
  {
    return 0;
  }

  *(this + 3) = v8;
  *(this + 4) = v9;
  return 1;
}

uint64_t anonymous namespace::OldDemangler::demangleNatural(_anonymous_namespace_::OldDemangler *this, unint64_t *a2)
{
  v2 = *(this + 4);
  if (!v2)
  {
    return 0;
  }

  v3 = *(this + 3);
  v6 = *v3;
  v4 = v3 + 1;
  v5 = *v3;
  *(this + 3) = v3 + 1;
  *(this + 4) = v2 - 1;
  if ((v6 - 48) > 9)
  {
    return 0;
  }

  v7 = v5 & 0xF;
  *a2 = v7;
  if (v2 != 1)
  {
    v8 = v3 + 2;
    v9 = v2 - 2;
    do
    {
      v10 = *v4;
      if ((v10 - 58) < 0xFFFFFFF6)
      {
        break;
      }

      v7 = (v10 & 0xF) + 10 * v7;
      *a2 = v7;
      ++v4;
      *(this + 3) = v8;
      *(this + 4) = v9;
      ++v8;
      --v9;
    }

    while (v9 != -1);
  }

  return 1;
}

swift::Demangle *anonymous namespace::OldDemangler::demangleDeclarationName(swift::Demangle::NodeFactory **a1, __int16 a2, int a3)
{
  if (result)
  {
    v6 = result;
    if (result)
    {
      v7 = result;
      Node = swift::Demangle::NodeFactory::createNode(a1[5], a2);
      swift::Demangle::Node::addChild(Node, v6, a1[5], v8, v9);
      swift::Demangle::Node::addChild(Node, v7, a1[5], v10, v11);
      std::vector<swift::Demangle::Node *>::push_back[abi:nn200100](a1, &Node);
      return Node;
    }
  }

  return result;
}

swift::Demangle *anonymous namespace::OldDemangler::demangleFunctionType(_anonymous_namespace_::OldDemangler *this, __int16 a2, unsigned int a3)
{
  v6 = *(this + 4);
  if (!v6)
  {
    Node = 0;
    v13 = 0;
    v12 = 0;
    v10 = 0;
    v9 = 0;
    goto LABEL_28;
  }

  v7 = *(this + 3);
  v8 = *v7;
  v9 = v8 == 122;
  if (v8 == 122)
  {
    ++v7;
    --v6;
    *(this + 3) = v7;
    *(this + 4) = v6;
    if (!v6)
    {
      Node = 0;
      v13 = 0;
      v12 = 0;
      v10 = 0;
      v9 = 1;
      goto LABEL_28;
    }

    v8 = *v7;
  }

  v10 = v8 == 121;
  if (v8 == 121)
  {
    ++v7;
    --v6;
    *(this + 3) = v7;
    *(this + 4) = v6;
    if (!v6)
    {
      Node = 0;
      v13 = 0;
      v12 = 0;
      v10 = 1;
      goto LABEL_28;
    }
  }

  v11 = *v7;
  v12 = v11 == 90;
  if (v11 == 90)
  {
    ++v7;
    --v6;
    *(this + 3) = v7;
    *(this + 4) = v6;
    if (!v6)
    {
      Node = 0;
      v13 = 0;
      v12 = 1;
      goto LABEL_28;
    }

    v11 = *v7;
  }

  if (v11 == 68)
  {
    *(this + 3) = v7 + 1;
    *(this + 4) = v6 - 1;
    if (v6 == 1)
    {
      v6 = 0;
      v13 = 46;
      ++v7;
    }

    else
    {
      v13 = v7[1];
      v7 += 2;
      v6 -= 2;
      *(this + 3) = v7;
      *(this + 4) = v6;
    }

    v15 = (((v13 - 100) >> 1) | ((v13 - 100) << 7));
    if (v15 <= 7 && ((1 << v15) & 0x93) != 0)
    {
      if (!v6)
      {
LABEL_27:
        Node = 0;
        goto LABEL_28;
      }
    }

    else
    {
      v13 = 0;
      if (!v6)
      {
        goto LABEL_27;
      }
    }
  }

  else
  {
    v13 = 0;
  }

  if (*v7 != 89)
  {
    goto LABEL_27;
  }

  *(this + 3) = v7 + 1;
  *(this + 4) = v6 - 1;
  if (!v16)
  {
    return 0;
  }

  v17 = v16;
  Node = swift::Demangle::NodeFactory::createNode(*(this + 5), 243);
  swift::Demangle::Node::addChild(Node, v17, *(this + 5), v18, v19);
  if (!Node)
  {
    return 0;
  }

LABEL_28:
  if (!v20)
  {
    return 0;
  }

  v21 = v20;
  v22 = swift::Demangle::NodeFactory::createNode(*(this + 5), 243);
  swift::Demangle::Node::addChild(v22, v21, *(this + 5), v23, v24);
  if (!v22)
  {
    return 0;
  }

  if (!v26)
  {
    return 0;
  }

  v27 = v26;
  v28 = swift::Demangle::NodeFactory::createNode(*(this + 5), 243);
  swift::Demangle::Node::addChild(v28, v27, *(this + 5), v29, v30);
  if (!v28)
  {
    return 0;
  }

  v31 = swift::Demangle::NodeFactory::createNode(*(this + 5), a2);
  if (v9)
  {
    v32 = swift::Demangle::NodeFactory::createNode(*(this + 5), 285);
    swift::Demangle::Node::addChild(v31, v32, *(this + 5), v33, v34);
    if (!v12)
    {
      goto LABEL_34;
    }
  }

  else if (!v12)
  {
LABEL_34:
    if (v10)
    {
      goto LABEL_35;
    }

    goto LABEL_41;
  }

  v39 = swift::Demangle::NodeFactory::createNode(*(this + 5), 284);
  swift::Demangle::Node::addChild(v31, v39, *(this + 5), v40, v41);
  if (v10)
  {
LABEL_35:
    v35 = swift::Demangle::NodeFactory::createNode(*(this + 5), 68);
    swift::Demangle::Node::addChild(v31, v35, *(this + 5), v36, v37);
    if (!v13)
    {
      goto LABEL_43;
    }

    goto LABEL_42;
  }

LABEL_41:
  if (v13)
  {
LABEL_42:
    v42 = swift::Demangle::NodeFactory::createNode(*(this + 5), 70, v13);
    swift::Demangle::Node::addChild(v31, v42, *(this + 5), v43, v44);
  }

LABEL_43:
  if (Node)
  {
    v45 = swift::Demangle::NodeFactory::createNode(*(this + 5), 69);
    swift::Demangle::Node::addChild(v45, Node, *(this + 5), v46, v47);
    swift::Demangle::Node::addChild(v31, v45, *(this + 5), v48, v49);
  }

  v50 = swift::Demangle::NodeFactory::createNode(*(this + 5), 3);
  swift::Demangle::Node::addChild(v31, v50, *(this + 5), v51, v52);
  swift::Demangle::Node::addChild(v50, v22, *(this + 5), v53, v54);
  v55 = swift::Demangle::NodeFactory::createNode(*(this + 5), 218);
  swift::Demangle::Node::addChild(v55, v28, *(this + 5), v56, v57);
  swift::Demangle::Node::addChild(v31, v55, *(this + 5), v58, v59);
  return v31;
}

swift::Demangle::Node *anonymous namespace::OldDemangler::demangleGenericSignature(_anonymous_namespace_::OldDemangler *this, int a2, int a3)
{
  v5 = *(this + 5);
  if (a3)
  {
    v6 = 47;
  }

  else
  {
    v6 = 44;
  }

  Node = swift::Demangle::NodeFactory::createNode(v5, v6);
  v8 = *(this + 4);
  if (v8)
  {
    v9 = Node;
    v10 = -1;
    while (1)
    {
      v14 = *(this + 3);
      v15 = *v14;
      if (v15 == 122)
      {
        v10 = 0;
        *(this + 3) = v14 + 1;
        *(this + 4) = v8 - 1;
        goto LABEL_7;
      }

      if (v15 == 82 || v15 == 114)
      {
        break;
      }

      v16 = v14 + 1;
      *(this + 3) = v14 + 1;
      *(this + 4) = v8 - 1;
      if (v15 == 95)
      {
        v10 = 1;
      }

      else
      {
        result = 0;
        if (v8 == 1 || (v15 - 58) < 0xFFFFFFF6)
        {
          return result;
        }

        v18 = v15 & 0xF;
        v19 = v14 + 2;
        v20 = v8 - 2;
        while (1)
        {
          v21 = *v16;
          if ((v21 - 58) < 0xFFFFFFF6)
          {
            break;
          }

          v18 = (v21 & 0xF) + 10 * v18;
          ++v16;
          *(this + 3) = v19;
          *(this + 4) = v20;
          ++v19;
          if (--v20 == -1)
          {
            return 0;
          }
        }

        if (v21 != 95)
        {
          return 0;
        }

        *(this + 3) = v19;
        *(this + 4) = v20;
        v10 = v18 + 2;
      }

LABEL_7:
      v11 = swift::Demangle::NodeFactory::createNode(*(this + 5), 38, v10);
      swift::Demangle::Node::addChild(v9, v11, *(this + 5), v12, v13);
      v8 = *(this + 4);
      if (!v8)
      {
        return 0;
      }
    }

    if (v10 != -1 || (v22 = swift::Demangle::NodeFactory::createNode(*(this + 5), 38, 1), swift::Demangle::Node::addChild(v9, v22, *(this + 5), v23, v24), (v8 = *(this + 4)) != 0))
    {
      v25 = *(this + 3);
      v26 = *v25;
      if (v26 == 114)
      {
LABEL_115:
        *(this + 3) = v25 + 1;
        *(this + 4) = v8 - 1;
        return v9;
      }

      if (v26 == 82)
      {
        --v8;
        *(this + 3) = v25 + 1;
        *(this + 4) = v8;
        v27 = "U";
        v28 = "B";
        v29 = "E";
        if (v8)
        {
          goto LABEL_26;
        }

LABEL_39:
        if (v35)
        {
          while (1)
          {
            v41 = swift::Demangle::NodeFactory::createNode(*(this + 5), 243);
            swift::Demangle::Node::addChild(v41, v35, *(this + 5), v42, v43);
            if (!v41)
            {
              return 0;
            }

            v47 = *(this + 4);
            if (!v47)
            {
              return 0;
            }

            v48 = *(this + 3);
            v49 = *v48;
            if (v49 <= 0x6B)
            {
              break;
            }

            if (v49 != 108)
            {
              if (v49 == 122)
              {
                *(this + 3) = v48 + 1;
                *(this + 4) = v47 - 1;
                if (!result)
                {
                  return result;
                }

                v55 = result;
                v52 = swift::Demangle::NodeFactory::createNode(*(this + 5), 243);
                swift::Demangle::Node::addChild(v52, v55, *(this + 5), v56, v57);
                if (!v52)
                {
                  return 0;
                }

                v58 = *(this + 5);
                v59 = 40;
                goto LABEL_61;
              }

LABEL_56:
              if (!result)
              {
                return result;
              }

LABEL_59:
              v60 = result;
              v52 = swift::Demangle::NodeFactory::createNode(*(this + 5), 243);
              swift::Demangle::Node::addChild(v52, v60, *(this + 5), v61, v62);
              if (!v52)
              {
                return 0;
              }

              goto LABEL_60;
            }

            v96 = -1;
            v97 = -1;
            *(this + 3) = v48 + 1;
            *(this + 4) = v47 - 1;
            v63 = 0;
            if (v47 != 1)
            {
              v68 = v48[1];
              if (v68 > 0x52)
              {
                if (v48[1] <= 0x54u)
                {
                  if (v68 == 83)
                  {
                    v69 = v29;
                    v70 = v28;
                    v71 = v27;
                    *(this + 3) = v48 + 2;
                    *(this + 4) = v47 - 2;
                    v27 = "S";
                    {
                      goto LABEL_100;
                    }

                    goto LABEL_110;
                  }

                  if (v68 == 84)
                  {
                    v69 = v29;
                    v70 = v28;
                    v71 = v27;
                    v27 = "T";
                    goto LABEL_99;
                  }
                }

                else
                {
                  switch(v68)
                  {
                    case 'U':
                      v69 = v29;
                      v70 = v28;
                      v71 = v27;
                      goto LABEL_99;
                    case 'e':
                      v69 = v29;
                      v70 = v28;
                      v71 = v27;
                      *(this + 3) = v48 + 2;
                      *(this + 4) = v47 - 2;
                      v27 = "e";
                      {
                        goto LABEL_110;
                      }

                      goto LABEL_100;
                    case 'm':
                      v69 = v29;
                      v70 = v28;
                      v71 = v27;
                      *(this + 3) = v48 + 2;
                      *(this + 4) = v47 - 2;
                      v27 = "m";
                      {
                        goto LABEL_110;
                      }

                      goto LABEL_100;
                  }
                }
              }

              else if (v48[1] <= 0x4Cu)
              {
                if (v68 == 66)
                {
                  v69 = v29;
                  v75 = v28;
                  v71 = v27;
                  v70 = v75;
                  v27 = v75;
                  goto LABEL_99;
                }

                if (v68 == 69)
                {
                  *(this + 3) = v48 + 2;
                  *(this + 4) = v47 - 2;
                  {
                    v72 = *(this + 4);
                    if (v72)
                    {
                      v73 = *(this + 3);
                      if (*v73 == 95)
                      {
                        v74 = v29;
                        v70 = v28;
                        v71 = v27;
                        *(this + 3) = v73 + 1;
                        *(this + 4) = v72 - 1;
                        v69 = v74;
                        v27 = v74;
                        {
                          goto LABEL_110;
                        }

LABEL_100:
                        v78 = *(this + 5);
                        v79 = v78[1];
                        if (!v79 || (v80 = v79 + 1, (v79 + 1) > v78[2]))
                        {
                          v81 = 2 * v78[4];
                          if (v81 <= 2)
                          {
                            v81 = 2;
                          }

                          v78[4] = v81;
                          v82 = v81 + 8;
                          v83 = malloc_type_malloc(v81 + 8, 0x2004093837F09uLL);
                          v79 = (v83 + 1);
                          *v83 = v78[3];
                          v80 = v83 + 9;
                          v78[2] = v83 + v82;
                          v78[3] = v83;
                        }

                        v78[1] = v80;
                        *v79 = *v27;
                        NodeWithAllocatedText = swift::Demangle::NodeFactory::createNodeWithAllocatedText(v78, 103, v79, 1);
                        if (NodeWithAllocatedText)
                        {
                          v85 = NodeWithAllocatedText;
                          v63 = swift::Demangle::NodeFactory::createNode(*(this + 5), 42);
                          swift::Demangle::Node::addChild(v63, v41, *(this + 5), v86, v87);
                          swift::Demangle::Node::addChild(v63, v85, *(this + 5), v88, v89);
                          v27 = v71;
                          if (v97 != -1)
                          {
                            v90 = swift::Demangle::NodeFactory::createNode(*(this + 5), 171, v97);
                            swift::Demangle::Node::addChild(v63, v90, *(this + 5), v91, v92);
                            v28 = v70;
                            if (v96 != -1)
                            {
                              v93 = swift::Demangle::NodeFactory::createNode(*(this + 5), 171, v96);
                              swift::Demangle::Node::addChild(v63, v93, *(this + 5), v94, v95);
                            }

                            goto LABEL_112;
                          }

LABEL_111:
                          v28 = v70;
LABEL_112:
                          v29 = v69;
                          goto LABEL_62;
                        }

LABEL_110:
                        v63 = 0;
                        v27 = v71;
                        goto LABEL_111;
                      }
                    }
                  }

                  goto LABEL_96;
                }
              }

              else
              {
                switch(v68)
                {
                  case 'M':
                    *(this + 3) = v48 + 2;
                    *(this + 4) = v47 - 2;
                    {
                      v76 = *(this + 4);
                      if (v76)
                      {
                        v77 = *(this + 3);
                        if (*v77 == 95)
                        {
                          v69 = v29;
                          v70 = v28;
                          v71 = v27;
                          *(this + 3) = v77 + 1;
                          *(this + 4) = v76 - 1;
                          v27 = "M";
                          {
                            goto LABEL_100;
                          }

                          goto LABEL_110;
                        }
                      }
                    }

LABEL_96:
                    v63 = 0;
                    break;
                  case 'N':
                    v69 = v29;
                    v70 = v28;
                    v71 = v27;
                    v27 = "N";
                    goto LABEL_99;
                  case 'R':
                    v69 = v29;
                    v70 = v28;
                    v71 = v27;
                    v27 = "R";
LABEL_99:
                    *(this + 3) = v48 + 2;
                    *(this + 4) = v47 - 2;
                    goto LABEL_100;
                }
              }
            }

LABEL_62:
            if (!v63)
            {
              return 0;
            }

            swift::Demangle::Node::addChild(v9, v63, *(this + 5), v45, v46);
            v8 = *(this + 4);
            if (!v8)
            {
              goto LABEL_39;
            }

LABEL_26:
            v25 = *(this + 3);
            v30 = *v25;
            switch(v30)
            {
              case 'W':
                *(this + 3) = v25 + 1;
                *(this + 4) = v8 - 1;
                if (!result)
                {
                  return result;
                }

                v35 = result;
                while (1)
                {
                  v39 = *(this + 4);
                  if (v39)
                  {
                    v40 = *(this + 3);
                    if (*v40 == 95)
                    {
                      break;
                    }
                  }

                  v36 = swift::Demangle::NodeFactory::createNode(*(this + 5), 243);
                  swift::Demangle::Node::addChild(v36, v35, *(this + 5), v37, v38);
                  result = 0;
                  if (!v35)
                  {
                    return result;
                  }
                }

                *(this + 3) = v40 + 1;
                *(this + 4) = v39 - 1;
                break;
              case 'w':
                *(this + 3) = v25 + 1;
                *(this + 4) = v8 - 1;
                if (!result)
                {
                  return result;
                }

                v31 = result;
                v32 = swift::Demangle::NodeFactory::createNode(*(this + 5), 243);
                swift::Demangle::Node::addChild(v32, v31, *(this + 5), v33, v34);
                if (!v35)
                {
                  return 0;
                }

                break;
              case 'r':
                goto LABEL_115;
              default:
                goto LABEL_39;
            }
          }

          if (v49 == 67)
          {
            if (!result)
            {
              return result;
            }

            goto LABEL_59;
          }

          if (v49 != 83)
          {
            goto LABEL_56;
          }

          *(this + 3) = v48 + 1;
          *(this + 4) = v47 - 1;
          if (!result)
          {
            return result;
          }

          v50 = result;
          v51 = *(result + 8);
          if (v51 != 25 && v51 != 190)
          {
            if (v51 != 163)
            {
              return 0;
            }

            v50 = result;
            if (!result)
            {
              return result;
            }
          }

          v52 = swift::Demangle::NodeFactory::createNode(*(this + 5), 243);
          swift::Demangle::Node::addChild(v52, v50, *(this + 5), v53, v54);
LABEL_60:
          v58 = *(this + 5);
          v59 = 37;
LABEL_61:
          v63 = swift::Demangle::NodeFactory::createNode(v58, v59);
          swift::Demangle::Node::addChild(v63, v41, *(this + 5), v64, v65);
          swift::Demangle::Node::addChild(v63, v52, *(this + 5), v66, v67);
          goto LABEL_62;
        }
      }
    }
  }

  return 0;
}

unint64_t anonymous namespace::OldDemangler::demangleMetatypeRepresentation(_anonymous_namespace_::OldDemangler *this)
{
  v1 = *(this + 4);
  if (!v1)
  {
    return 0;
  }

  v2 = *(this + 3);
  v3 = *v2;
  if (v3 == 116)
  {
    v4 = "@thin";
    goto LABEL_9;
  }

  if (v3 == 111)
  {
    v4 = "@objc_metatype";
    goto LABEL_9;
  }

  if (v3 != 84)
  {
    return 0;
  }

  v4 = "@thick";
LABEL_9:
  *(this + 3) = v2 + 1;
  *(this + 4) = v1 - 1;
  return swift::Demangle::NodeFactory::createNode(*(this + 5), 155, v4);
}

swift::Demangle::Node *anonymous namespace::OldDemangler::demangleProtocolList(_anonymous_namespace_::OldDemangler *this, int a2)
{
  Node = swift::Demangle::NodeFactory::createNode(*(this + 5), 200);
  v7 = swift::Demangle::NodeFactory::createNode(*(this + 5), 246);
  v8 = *(this + 5);
  v9 = Node;
  v10 = Node;
  for (i = v7; ; i = v16)
  {
    swift::Demangle::Node::addChild(v10, i, v8, v5, v6);
    v12 = *(this + 4);
    if (v12)
    {
      v13 = *(this + 3);
      if (*v13 == 95)
      {
        break;
      }
    }

    if (!result)
    {
      return result;
    }

    v15 = result;
    v16 = swift::Demangle::NodeFactory::createNode(*(this + 5), 243);
    swift::Demangle::Node::addChild(v16, v15, *(this + 5), v17, v18);
    if (!v16)
    {
      return 0;
    }

    v8 = *(this + 5);
    v10 = v7;
  }

  *(this + 3) = v13 + 1;
  *(this + 4) = v12 - 1;
  return v9;
}

uint64_t anonymous namespace::OldDemangler::demangleIndex(_anonymous_namespace_::OldDemangler *this, unint64_t *a2)
{
  v2 = *(this + 4);
  if (v2)
  {
    v3 = *(this + 3);
    v4 = v3 + 1;
    v5 = *v3;
    *(this + 3) = v3 + 1;
    *(this + 4) = v2 - 1;
    if (v5 == 95)
    {
      v6 = 0;
LABEL_4:
      *a2 = v6;
      return 1;
    }

    if ((v5 - 48) <= 9)
    {
      v8 = v5 & 0xF;
      *a2 = v8;
      if (v2 != 1)
      {
        v9 = v3 + 2;
        v10 = v2 - 2;
        while (1)
        {
          v11 = *v4;
          if ((v11 - 58) < 0xFFFFFFF6)
          {
            break;
          }

          v8 = (v11 & 0xF) + 10 * v8;
          *a2 = v8;
          ++v4;
          *(this + 3) = v9;
          *(this + 4) = v10;
          ++v9;
          if (--v10 == -1)
          {
            return 0;
          }
        }

        if (v11 == 95)
        {
          *(this + 3) = v9;
          *(this + 4) = v10;
          v6 = v8 + 1;
          goto LABEL_4;
        }
      }
    }
  }

  return 0;
}

swift::Demangle::Node *anonymous namespace::OldDemangler::demangleArchetypeType(_anonymous_namespace_::OldDemangler *this, unsigned int a2)
{
  v2 = *(this + 4);
  if (!v2)
  {
    return 0;
  }

  v4 = *(this + 3);
  v5 = *v4;
  if (v5 == 115)
  {
    *(this + 3) = v4 + 1;
    *(this + 4) = v2 - 1;
    v7 = *(this + 5);
    v8 = v7[1];
    v9 = (v8 + 5);
    if (v8)
    {
      v10 = v9 > v7[2];
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      v11 = 2 * v7[4];
      if (v11 <= 6)
      {
        v11 = 6;
      }

      v7[4] = v11;
      v12 = v11 + 8;
      v13 = malloc_type_malloc(v11 + 8, 0x2004093837F09uLL);
      *v13 = v7[3];
      v9 = v13 + 13;
      v8 = (v13 + 1);
      v7[2] = v13 + v12;
      v7[3] = v13;
    }

    v7[1] = v9;
    *(v8 + 4) = 116;
    *v8 = 1718187859;
    result = swift::Demangle::NodeFactory::createNodeWithAllocatedText(v7, 163, v8, 5);
    goto LABEL_19;
  }

  if (v5 == 83)
  {
    *(this + 3) = v4 + 1;
    *(this + 4) = v2 - 1;
    if (!result)
    {
      return result;
    }

    goto LABEL_19;
  }

  if (v5 != 81)
  {
    return 0;
  }

  *(this + 3) = v4 + 1;
  *(this + 4) = v2 - 1;
  if (result)
  {
LABEL_19:
    v14 = result;
    if (result)
    {
      v15 = result;
      Node = swift::Demangle::NodeFactory::createNode(*(this + 5), 5);
      swift::Demangle::Node::addChild(Node, v14, *(this + 5), v16, v17);
      swift::Demangle::Node::addChild(Node, v15, *(this + 5), v18, v19);
      std::vector<swift::Demangle::Node *>::push_back[abi:nn200100](this, &Node);
      return Node;
    }
  }

  return result;
}

swift::Demangle *anonymous namespace::OldDemangler::demangleDependentType(_anonymous_namespace_::OldDemangler *this, unsigned int a2, unsigned int a3)
{
  if (!*(this + 4))
  {
    return 0;
  }

  v3 = **(this + 3);
  if (v3 == 95 || v3 == 100 || (v3 - 48) < 0xA)
  {
  }

  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  Node = swift::Demangle::NodeFactory::createNode(*(this + 5), 243);
  swift::Demangle::Node::addChild(Node, v8, *(this + 5), v10, v11);
  if (!Node)
  {
    return 0;
  }
}

swift::Demangle *anonymous namespace::OldDemangler::getDependentGenericParamType(_anonymous_namespace_::OldDemangler *this, swift::Demangle *a2, unsigned int a3)
{
  memset(&v17, 0, sizeof(v17));
  v4 = a2;
  v5 = a3;
  swift::Demangle::genericParameterName(a2, a3, &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  std::string::append(&v17, p_p, size);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  Node = swift::Demangle::NodeFactory::createNode(*(this + 5), 39);
  v9 = swift::Demangle::NodeFactory::createNode(*(this + 5), 104, v4);
  swift::Demangle::Node::addChild(Node, v9, *(this + 5), v10, v11);
  v12 = swift::Demangle::NodeFactory::createNode(*(this + 5), 104, v5);
  swift::Demangle::Node::addChild(Node, v12, *(this + 5), v13, v14);
  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }

  return Node;
}

swift::Demangle::Node *anonymous namespace::OldDemangler::demangleAssociatedTypeSimple(swift::Demangle::NodeFactory **this, unsigned int a2)
{
  if (result)
  {
    v5 = result;
    Node = swift::Demangle::NodeFactory::createNode(this[5], 243);
    swift::Demangle::Node::addChild(Node, v5, this[5], v7, v8);
  }

  return result;
}

swift::Demangle::Node *anonymous namespace::OldDemangler::demangleAssociatedTypeCompound(swift::Demangle::NodeFactory **this, unsigned int a2)
{
  {
    v8 = result;
    if (!result)
    {
      break;
    }

    v9 = this[4];
    if (v9)
    {
      v10 = this[3];
      if (*v10 == 95)
      {
        this[3] = (v10 + 1);
        this[4] = (v9 - 1);
        return result;
      }
    }

    Node = swift::Demangle::NodeFactory::createNode(this[5], 243);
    swift::Demangle::Node::addChild(Node, v8, this[5], v6, v7);
  }

  return result;
}

swift::Demangle *anonymous namespace::OldDemangler::demangleSubstitutionIndex(_anonymous_namespace_::OldDemangler *this)
{
  v1 = *(this + 4);
  if (!v1)
  {
    return 0;
  }

  v2 = *(this + 3);
  switch(*v2)
  {
    case 'C':
      *(this + 3) = v2 + 1;
      *(this + 4) = v1 - 1;
      v3 = *(this + 5);
      v4 = v3[1];
      v5 = v4 + 15;
      if (v4)
      {
        v6 = v5 > v3[2];
      }

      else
      {
        v6 = 1;
      }

      if (v6)
      {
        v7 = 2 * v3[4];
        if (v7 <= 0x10)
        {
          v7 = 16;
        }

        v3[4] = v7;
        v8 = v7 + 8;
        v9 = malloc_type_malloc(v7 + 8, 0x2004093837F09uLL);
        v4 = v9 + 1;
        *v9 = v3[3];
        v5 = v9 + 23;
        v3[2] = v9 + v8;
        v3[3] = v9;
      }

      v3[1] = v5;
      qmemcpy(v4, "__C_Synthesized", 15);
      v10 = v3;
      v11 = 15;
      goto LABEL_24;
    case 'P':
      *(this + 3) = v2 + 1;
      *(this + 4) = v1 - 1;
      v12 = "UnsafePointer";
      goto LABEL_45;
    case 'Q':
      *(this + 3) = v2 + 1;
      *(this + 4) = v1 - 1;
      v12 = "ImplicitlyUnwrappedOptional";
      v13 = 63;
      v14 = 27;
      goto LABEL_49;
    case 'R':
      *(this + 3) = v2 + 1;
      *(this + 4) = v1 - 1;
      v12 = "UnsafeBufferPointer";
      v13 = 230;
      v14 = 19;
      goto LABEL_49;
    case 'S':
      *(this + 3) = v2 + 1;
      *(this + 4) = v1 - 1;
      v12 = "String";
      goto LABEL_43;
    case 'V':
      *(this + 3) = v2 + 1;
      *(this + 4) = v1 - 1;
      v12 = "UnsafeRawPointer";
      v13 = 230;
      v14 = 16;
      goto LABEL_49;
    case 'a':
      *(this + 3) = v2 + 1;
      *(this + 4) = v1 - 1;
      v12 = "Array";
      goto LABEL_38;
    case 'b':
      *(this + 3) = v2 + 1;
      *(this + 4) = v1 - 1;
      v12 = "Bool";
      goto LABEL_48;
    case 'c':
      *(this + 3) = v2 + 1;
      *(this + 4) = v1 - 1;
      v12 = "UnicodeScalar";
LABEL_45:
      v13 = 230;
      v14 = 13;
      goto LABEL_49;
    case 'd':
      *(this + 3) = v2 + 1;
      *(this + 4) = v1 - 1;
      v12 = "Double";
LABEL_43:
      v13 = 230;
      v14 = 6;
      goto LABEL_49;
    case 'f':
      *(this + 3) = v2 + 1;
      *(this + 4) = v1 - 1;
      v12 = "Float";
LABEL_38:
      v13 = 230;
      v14 = 5;
      goto LABEL_49;
    case 'i':
      *(this + 3) = v2 + 1;
      *(this + 4) = v1 - 1;
      v12 = "Int";
      v13 = 230;
      v14 = 3;
      goto LABEL_49;
    case 'o':
      *(this + 3) = v2 + 1;
      *(this + 4) = v1 - 1;
      v15 = *(this + 5);
      v4 = v15[1];
      v16 = v4 + 3;
      if (v4)
      {
        v17 = v16 > v15[2];
      }

      else
      {
        v17 = 1;
      }

      if (v17)
      {
        v18 = 2 * v15[4];
        if (v18 <= 4)
        {
          v18 = 4;
        }

        v15[4] = v18;
        v19 = v18 + 8;
        v20 = malloc_type_malloc(v18 + 8, 0x2004093837F09uLL);
        v4 = v20 + 1;
        *v20 = v15[3];
        v16 = v20 + 11;
        v15[2] = v20 + v19;
        v15[3] = v20;
      }

      v15[1] = v16;
      v4[2] = 67;
      *v4 = 24415;
      v10 = v15;
      v11 = 3;
LABEL_24:

      return swift::Demangle::NodeFactory::createNodeWithAllocatedText(v10, 163, v4, v11);
    case 'p':
      *(this + 3) = v2 + 1;
      *(this + 4) = v1 - 1;
      v12 = "UnsafeMutablePointer";
      v13 = 230;
      v14 = 20;
      goto LABEL_49;
    case 'q':
      *(this + 3) = v2 + 1;
      *(this + 4) = v1 - 1;
      v12 = "Optional";
      v13 = 63;
      v14 = 8;
      goto LABEL_49;
    case 'r':
      *(this + 3) = v2 + 1;
      *(this + 4) = v1 - 1;
      v12 = "UnsafeMutableBufferPointer";
      v13 = 230;
      v14 = 26;
      goto LABEL_49;
    case 'u':
      *(this + 3) = v2 + 1;
      *(this + 4) = v1 - 1;
      v12 = "UInt";
LABEL_48:
      v13 = 230;
      v14 = 4;
      goto LABEL_49;
    case 'v':
      *(this + 3) = v2 + 1;
      *(this + 4) = v1 - 1;
      v12 = "UnsafeMutableRawPointer";
      v13 = 230;
      v14 = 23;
LABEL_49:

      break;
    default:
      v23 = 0;
      {
        return 0;
      }

      result = *(*this + 8 * v23);
      break;
  }

  return result;
}

swift::Demangle *anonymous namespace::OldDemangler::demangleTuple(uint64_t a1, int a2, int a3)
{
  Node = swift::Demangle::NodeFactory::createNode(*(a1 + 40), 234);
  v8 = *(a1 + 32);
  if (!v8)
  {
    return 0;
  }

  v9 = Node;
  v10 = *(a1 + 24);
  if (*v10 != 95)
  {
    while (1)
    {
      v11 = swift::Demangle::NodeFactory::createNode(*(a1 + 40), 235);
      if (!*(a1 + 32))
      {
        break;
      }

      v16 = **(a1 + 24);
      if (v16 != 111)
      {
        goto LABEL_11;
      }

LABEL_12:
      v3 = v3 & 0xFFFFFFFF00000000 | 0x100EC;
      if (!v17)
      {
        return 0;
      }

      swift::Demangle::Node::addChild(v11, v17, *(a1 + 40), v18, v19);
LABEL_14:
      if (!v20)
      {
        return 0;
      }

      v21 = v20;
      v22 = swift::Demangle::NodeFactory::createNode(*(a1 + 40), 243);
      swift::Demangle::Node::addChild(v22, v21, *(a1 + 40), v23, v24);
      if (!v22)
      {
        return 0;
      }

      swift::Demangle::Node::addChild(v11, v22, *(a1 + 40), v25, v26);
      swift::Demangle::Node::addChild(v9, v11, *(a1 + 40), v27, v28);
      v8 = *(a1 + 32);
      if (!v8)
      {
        return 0;
      }

      v10 = *(a1 + 24);
      if (*v10 == 95)
      {
        goto LABEL_4;
      }
    }

    v16 = 46;
LABEL_11:
    if ((v16 - 48) > 9)
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  v11 = 0;
LABEL_4:
  *(a1 + 24) = v10 + 1;
  *(a1 + 32) = v8 - 1;
  if (a2 == 1 && v11)
  {
    swift::Demangle::Node::reverseChildren(v11, 0);
    v12 = swift::Demangle::NodeFactory::createNode(*(a1 + 40), 289);
    swift::Demangle::Node::addChild(v11, v12, *(a1 + 40), v13, v14);
    swift::Demangle::Node::reverseChildren(v11, 0);
  }

  return v9;
}

swift::Demangle::Node *anonymous namespace::OldDemangler::demangleImplFunctionType(_anonymous_namespace_::OldDemangler *this, int a2)
{
  Node = swift::Demangle::NodeFactory::createNode(*(this + 5), 119);
  v5 = *(this + 4);
  if (v5 && (v6 = *(this + 3), *v6 == 116))
  {
    *(this + 3) = v6 + 1;
    *(this + 4) = v5 - 1;
    v7 = "@convention(thin)";
    v8 = 17;
  }

  else
  {
    if (!v10)
    {
      return 0;
    }

    v7 = v9;
    v8 = v10;
  }

  v11 = *(this + 5);
  v12 = v11[1];
  v13 = &v12[v8];
  if (v12)
  {
    v14 = v13 > v11[2];
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
    v15 = 2 * v11[4];
    if (v15 <= v8 + 1)
    {
      v15 = v8 + 1;
    }

    v11[4] = v15;
    v16 = v15 + 8;
    v17 = malloc_type_malloc(v15 + 8, 0x2004093837F09uLL);
    v18 = v17 + v16;
    *v17 = v11[3];
    v12 = (v17 + 1);
    v11[2] = v18;
    v11[3] = v17;
    v13 = v17 + v8 + 8;
  }

  v11[1] = v13;
  memmove(v12, v7, v8);
  NodeWithAllocatedText = swift::Demangle::NodeFactory::createNodeWithAllocatedText(v11, 108, v12, v8);
  swift::Demangle::Node::addChild(Node, NodeWithAllocatedText, *(this + 5), v20, v21);
  v22 = *(this + 4);
  if (!v22)
  {
    return 0;
  }

  v23 = *(this + 3);
  if (*v23 == 67)
  {
    *(this + 3) = v23 + 1;
    *(this + 4) = v22 - 1;
    result = 0;
    if (v22 == 1)
    {
      return result;
    }

    v25 = v23[1];
    if (v25 <= 0x62)
    {
      if (v25 == 79)
      {
        v26 = "objc_method";
        v27 = 11;
      }

      else
      {
        if (v25 != 98)
        {
          return result;
        }

        v26 = "block";
        v27 = 5;
      }
    }

    else
    {
      switch(v25)
      {
        case 'w':
          v26 = "witness_method";
          v27 = 14;
          break;
        case 'm':
          v26 = "method";
          v27 = 6;
          break;
        case 'c':
          v26 = "c";
          v27 = 1;
          break;
        default:
          return result;
      }
    }

    *(this + 3) = v23 + 2;
    *(this + 4) = v22 - 2;
    v28 = swift::Demangle::NodeFactory::createNode(*(this + 5), 117);
    v29 = *(this + 5);
    v30 = v29[1];
    if (!v30 || (v31 = &v30[v27], &v30[v27] > v29[2]))
    {
      v32 = 2 * v29[4];
      if (v32 <= v27 + 1)
      {
        v32 = v27 + 1;
      }

      v29[4] = v32;
      v33 = v32 + 8;
      v34 = malloc_type_malloc(v32 + 8, 0x2004093837F09uLL);
      v35 = v34 + v33;
      *v34 = v29[3];
      v30 = (v34 + 1);
      v29[2] = v35;
      v29[3] = v34;
      v31 = v34 + v27 + 8;
    }

    v29[1] = v31;
    memmove(v30, v26, v27);
    v36 = swift::Demangle::NodeFactory::createNodeWithAllocatedText(v29, 118, v30, v27);
    swift::Demangle::Node::addChild(v28, v36, *(this + 5), v37, v38);
    swift::Demangle::Node::addChild(Node, v28, *(this + 5), v39, v40);
    v22 = *(this + 4);
    if (!v22)
    {
      return 0;
    }
  }

  v41 = *(this + 3);
  v42 = *v41;
  if (v42 == 104)
  {
    *(this + 3) = v41 + 1;
    *(this + 4) = v22 - 1;
    v43 = *(this + 5);
    v44 = v43[1];
    if (!v44 || (v45 = (v44 + 9), (v44 + 9) > v43[2]))
    {
      v46 = 2 * v43[4];
      if (v46 <= 0xA)
      {
        v46 = 10;
      }

      v43[4] = v46;
      v47 = v46 + 8;
      v48 = malloc_type_malloc(v46 + 8, 0x2004093837F09uLL);
      v44 = (v48 + 1);
      *v48 = v43[3];
      v45 = v48 + 17;
      v43[2] = v48 + v47;
      v43[3] = v48;
    }

    v43[1] = v45;
    *v44 = *"@Sendable";
    *(v44 + 8) = 101;
    v49 = swift::Demangle::NodeFactory::createNodeWithAllocatedText(v43, 116, v44, 9);
    swift::Demangle::Node::addChild(Node, v49, *(this + 5), v50, v51);
    v22 = *(this + 4);
    if (!v22)
    {
      return 0;
    }

    v41 = *(this + 3);
    v42 = *v41;
  }

  if (v42 == 72)
  {
    *(this + 3) = v41 + 1;
    *(this + 4) = v22 - 1;
    v52 = *(this + 5);
    v53 = v52[1];
    if (!v53 || (v54 = (v53 + 6), (v53 + 6) > v52[2]))
    {
      v55 = 2 * v52[4];
      if (v55 <= 7)
      {
        v55 = 7;
      }

      v52[4] = v55;
      v56 = v55 + 8;
      v57 = malloc_type_malloc(v55 + 8, 0x2004093837F09uLL);
      v53 = (v57 + 1);
      *v57 = v52[3];
      v54 = v57 + 14;
      v52[2] = v57 + v56;
      v52[3] = v57;
    }

    v52[1] = v54;
    *(v53 + 4) = 25454;
    *v53 = 2037604672;
    v58 = swift::Demangle::NodeFactory::createNodeWithAllocatedText(v52, 116, v53, 6);
    swift::Demangle::Node::addChild(Node, v58, *(this + 5), v59, v60);
    v22 = *(this + 4);
    if (!v22)
    {
      return 0;
    }

    v41 = *(this + 3);
    v42 = *v41;
  }

  if ((v42 | 0x20) == 0x67)
  {
    *(this + 3) = v41 + 1;
    *(this + 4) = v22 - 1;
    if (!result)
    {
      return result;
    }

    swift::Demangle::Node::addChild(Node, result, *(this + 5), v61, v62);
    v22 = *(this + 4);
    if (!v22)
    {
      return 0;
    }

    v41 = *(this + 3);
    v42 = *v41;
  }

  if (v42 != 95)
  {
    return 0;
  }

  v63 = v22 - 1;
  *(this + 3) = v41 + 1;
  *(this + 4) = v63;
  if (!v63)
  {
    goto LABEL_57;
  }

LABEL_56:
  v64 = *(this + 3);
  if (*v64 == 95)
  {
    v67 = v63 - 1;
    *(this + 3) = v64 + 1;
    *(this + 4) = v67;
    if (!v67)
    {
      goto LABEL_64;
    }

LABEL_63:
    v68 = *(this + 3);
    if (*v68 == 95)
    {
      *(this + 3) = v68 + 1;
      *(this + 4) = v67 - 1;
      return Node;
    }

    else
    {
LABEL_64:
      while (1)
      {
        if (!result)
        {
          break;
        }

        swift::Demangle::Node::addChild(Node, result, *(this + 5), v69, v70);
        v67 = *(this + 4);
        if (v67)
        {
          goto LABEL_63;
        }
      }
    }
  }

  else
  {
LABEL_57:
    while (1)
    {
      if (!result)
      {
        break;
      }

      swift::Demangle::Node::addChild(Node, result, *(this + 5), v65, v66);
      v63 = *(this + 4);
      if (v63)
      {
        goto LABEL_56;
      }
    }
  }

  return result;
}