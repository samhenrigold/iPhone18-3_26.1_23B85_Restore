unint64_t sub_1003BE578(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v4 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {
    return 0;
  }

  v7 = 4 * v4;
  v8 = 15;
  while (sub_1004A5A94() != a1 || v9 != a2)
  {
    v10 = sub_1004A6D34();

    if (v10)
    {
      return v8;
    }

    v8 = sub_1004A5934();
    if (v7 == v8 >> 14)
    {
      return 0;
    }
  }

  return v8;
}

uint64_t Capability.name.getter(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
  }

  else
  {
    sub_1004A5AB4();
    a1 = sub_1004A5864();
  }

  return a1;
}

unint64_t sub_1003BE6D8(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 >= result >> 14)
  {
    return sub_1004A5AB4();
  }

  __break(1u);
  return result;
}

uint64_t Capability.value.getter(uint64_t a1, unint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    return 0;
  }

  v7 = sub_1004A5934();
  sub_1003BE6D8(v7, a1, a2);
  v8 = sub_1004A5864();

  return v8;
}

void Capability.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, char a5)
{
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  if (a5)
  {
    sub_1004A6EC4(0);
  }

  else
  {
    sub_1004A6EC4(1u);
    sub_1004A6EF4(a4 >> 14);
  }
}

Swift::Int Capability.hashValue.getter(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  sub_1004A6E94();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  if (a4)
  {
    sub_1004A6EC4(0);
  }

  else
  {
    sub_1004A6EC4(1u);
    sub_1004A6EF4(a3 >> 14);
  }

  return sub_1004A6F14();
}

Swift::Int sub_1003BE8D4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_1004A6E94();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  if (v2 == 1)
  {
    sub_1004A6EC4(0);
  }

  else
  {
    sub_1004A6EC4(1u);
    sub_1004A6EF4(v1 >> 14);
  }

  return sub_1004A6F14();
}

void sub_1003BE960(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  if (v3 == 1)
  {
    sub_1004A6EC4(0);
  }

  else
  {
    sub_1004A6EC4(1u);
    sub_1004A6EF4(v2 >> 14);
  }
}

Swift::Int sub_1003BE9C4(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_1004A6E94();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  if (v3 == 1)
  {
    sub_1004A6EC4(0);
  }

  else
  {
    sub_1004A6EC4(1u);
    sub_1004A6EF4(v2 >> 14);
  }

  return sub_1004A6F14();
}

uint64_t sub_1003BEBB4()
{
  v0 = 15;
  while (sub_1004A5A94() != 61 || v1 != 0xE100000000000000)
  {
    v3 = sub_1004A6D34();

    if (v3)
    {
      goto LABEL_9;
    }

    result = sub_1004A5934();
    v0 = result;
    if ((result & 0xFFFFFFFFFFFFC000) == 0x30000)
    {
      v0 = 0;
LABEL_9:
      v5 = v3 ^ 1;
      goto LABEL_11;
    }
  }

  v5 = 0;
LABEL_11:
  static Capability.acl = 4997953;
  *algn_1005DE3A8 = 0xE300000000000000;
  qword_1005DE3B0 = v0;
  byte_1005DE3B8 = v5 & 1;
  return result;
}

uint64_t *Capability.acl.unsafeMutableAddressor()
{
  if (qword_1005DB9E0 != -1)
  {
    swift_once();
  }

  return &static Capability.acl;
}

uint64_t static Capability.acl.getter()
{
  if (qword_1005DB9E0 != -1)
  {
    swift_once();
  }

  v0 = static Capability.acl;

  return v0;
}

void sub_1003BED60()
{
  if (("CREATE-SPECIAL-USE" & 0x2000000000000000) != 0)
  {
    v0 = ("CREATE-SPECIAL-USE" >> 40) & 0xF0000;
  }

  else
  {
    v0 = 1376256;
  }

  v1 = v0 == 0;
  if (v0)
  {
    v2 = 15;
    while (sub_1004A5A94() != 61 || v3 != 0xE100000000000000)
    {
      v4 = sub_1004A6D34();

      if (v4)
      {
        goto LABEL_12;
      }

      v2 = sub_1004A5934();
      v1 = (v0 ^ v2) < 0x4000;
      if ((v0 ^ v2) < 0x4000)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:
    v2 = 0;
  }

LABEL_12:
  static Capability.annotateExperiment1 = 0xD000000000000015;
  *algn_1005DE3C8 = 0x80000001004B0670;
  qword_1005DE3D0 = v2;
  byte_1005DE3D8 = v1;
}

uint64_t *Capability.annotateExperiment1.unsafeMutableAddressor()
{
  if (qword_1005DB9E8 != -1)
  {
    swift_once();
  }

  return &static Capability.annotateExperiment1;
}

uint64_t static Capability.annotateExperiment1.getter()
{
  if (qword_1005DB9E8 != -1)
  {
    swift_once();
  }

  v0 = static Capability.annotateExperiment1;

  return v0;
}

uint64_t sub_1003BEF40()
{
  v0 = 15;
  while (sub_1004A5A94() != 61 || v1 != 0xE100000000000000)
  {
    v3 = sub_1004A6D34();

    if (v3)
    {
      goto LABEL_9;
    }

    result = sub_1004A5934();
    v0 = result;
    if ((result & 0xFFFFFFFFFFFFC000) == 0x60000)
    {
      v0 = 0;
LABEL_9:
      v5 = v3 ^ 1;
      goto LABEL_11;
    }
  }

  v5 = 0;
LABEL_11:
  *&static Capability.binary = 0x5952414E4942;
  *(&static Capability.binary + 1) = 0xE600000000000000;
  qword_1005DE3F0 = v0;
  byte_1005DE3F8 = v5 & 1;
  return result;
}

__int128 *Capability.binary.unsafeMutableAddressor()
{
  if (qword_1005DB9F0 != -1)
  {
    swift_once();
  }

  return &static Capability.binary;
}

uint64_t static Capability.binary.getter()
{
  if (qword_1005DB9F0 != -1)
  {
    swift_once();
  }

  v0 = static Capability.binary;

  return v0;
}

uint64_t sub_1003BF0E8()
{
  v0 = 15;
  while (sub_1004A5A94() != 61 || v1 != 0xE100000000000000)
  {
    v3 = sub_1004A6D34();

    if (v3)
    {
      goto LABEL_9;
    }

    result = sub_1004A5934();
    v0 = result;
    if ((result & 0xFFFFFFFFFFFFC000) == 0x80000)
    {
      v0 = 0;
LABEL_9:
      v5 = v3 ^ 1;
      goto LABEL_11;
    }
  }

  v5 = 0;
LABEL_11:
  static Capability.catenate = 0x4554414E45544143;
  *algn_1005DE408 = 0xE800000000000000;
  qword_1005DE410 = v0;
  byte_1005DE418 = v5 & 1;
  return result;
}

uint64_t *Capability.catenate.unsafeMutableAddressor()
{
  if (qword_1005DB9F8 != -1)
  {
    swift_once();
  }

  return &static Capability.catenate;
}

uint64_t static Capability.catenate.getter()
{
  if (qword_1005DB9F8 != -1)
  {
    swift_once();
  }

  v0 = static Capability.catenate;

  return v0;
}

uint64_t sub_1003BF294()
{
  v0 = 15;
  while (sub_1004A5A94() != 61 || v1 != 0xE100000000000000)
  {
    v3 = sub_1004A6D34();

    if (v3)
    {
      goto LABEL_9;
    }

    result = sub_1004A5934();
    v0 = result;
    if ((result & 0xFFFFFFFFFFFFC000) == 0x80000)
    {
      v0 = 0;
LABEL_9:
      v5 = v3 ^ 1;
      goto LABEL_11;
    }
  }

  v5 = 0;
LABEL_11:
  static Capability.children = 0x4E4552444C494843;
  *algn_1005DE428 = 0xE800000000000000;
  qword_1005DE430 = v0;
  byte_1005DE438 = v5 & 1;
  return result;
}

uint64_t *Capability.children.unsafeMutableAddressor()
{
  if (qword_1005DBA00 != -1)
  {
    swift_once();
  }

  return &static Capability.children;
}

uint64_t static Capability.children.getter()
{
  if (qword_1005DBA00 != -1)
  {
    swift_once();
  }

  v0 = static Capability.children;

  return v0;
}

uint64_t sub_1003BF440()
{
  v0 = 15;
  while (sub_1004A5A94() != 61 || v1 != 0xE100000000000000)
  {
    v2 = sub_1004A6D34();

    if (v2)
    {
      goto LABEL_7;
    }

    result = sub_1004A5934();
    v0 = result;
    if ((result & 0xFFFFFFFFFFFFC000) == 0x90000)
    {
      v0 = 0;
LABEL_7:
      v4 = v2 ^ 1;
      goto LABEL_9;
    }
  }

  v4 = 0;
LABEL_9:
  static Capability.condStore = 0x524F5453444E4F43;
  *algn_1005DE448 = 0xE900000000000045;
  qword_1005DE450 = v0;
  byte_1005DE458 = v4 & 1;
  return result;
}

uint64_t *Capability.condStore.unsafeMutableAddressor()
{
  if (qword_1005DBA08 != -1)
  {
    swift_once();
  }

  return &static Capability.condStore;
}

uint64_t static Capability.condStore.getter()
{
  if (qword_1005DBA08 != -1)
  {
    swift_once();
  }

  v0 = static Capability.condStore;

  return v0;
}

void sub_1003BF5FC()
{
  if (("XYMHIGHESTMODSEQ" & 0x2000000000000000) != 0)
  {
    v0 = ("XYMHIGHESTMODSEQ" >> 40) & 0xF0000;
  }

  else
  {
    v0 = 1179648;
  }

  v1 = v0 == 0;
  if (v0)
  {
    v2 = 15;
    while (sub_1004A5A94() != 61 || v3 != 0xE100000000000000)
    {
      v4 = sub_1004A6D34();

      if (v4)
      {
        goto LABEL_12;
      }

      v2 = sub_1004A5934();
      v1 = (v0 ^ v2) < 0x4000;
      if ((v0 ^ v2) < 0x4000)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:
    v2 = 0;
  }

LABEL_12:
  static Capability.createSpecialUse = 0xD000000000000012;
  *algn_1005DE468 = 0x80000001004B0650;
  qword_1005DE470 = v2;
  byte_1005DE478 = v1;
}

uint64_t *Capability.createSpecialUse.unsafeMutableAddressor()
{
  if (qword_1005DBA10 != -1)
  {
    swift_once();
  }

  return &static Capability.createSpecialUse;
}

uint64_t static Capability.createSpecialUse.getter()
{
  if (qword_1005DBA10 != -1)
  {
    swift_once();
  }

  v0 = static Capability.createSpecialUse;

  return v0;
}

uint64_t sub_1003BF7DC()
{
  v0 = 15;
  while (sub_1004A5A94() != 61 || v1 != 0xE100000000000000)
  {
    v3 = sub_1004A6D34();

    if (v3)
    {
      goto LABEL_9;
    }

    result = sub_1004A5934();
    v0 = result;
    if ((result & 0xFFFFFFFFFFFFC000) == 0x60000)
    {
      v0 = 0;
LABEL_9:
      v5 = v3 ^ 1;
      goto LABEL_11;
    }
  }

  v5 = 0;
LABEL_11:
  static Capability.enable = 0x454C42414E45;
  *algn_1005DE488 = 0xE600000000000000;
  qword_1005DE490 = v0;
  byte_1005DE498 = v5 & 1;
  return result;
}

uint64_t *Capability.enable.unsafeMutableAddressor()
{
  if (qword_1005DBA18 != -1)
  {
    swift_once();
  }

  return &static Capability.enable;
}

uint64_t static Capability.enable.getter()
{
  if (qword_1005DBA18 != -1)
  {
    swift_once();
  }

  v0 = static Capability.enable;

  return v0;
}

uint64_t sub_1003BF984()
{
  v0 = 15;
  while (sub_1004A5A94() != 61 || v1 != 0xE100000000000000)
  {
    v3 = sub_1004A6D34();

    if (v3)
    {
      goto LABEL_9;
    }

    result = sub_1004A5934();
    v0 = result;
    if ((result & 0xFFFFFFFFFFFFC000) == 0x70000)
    {
      v0 = 0;
LABEL_9:
      v5 = v3 ^ 1;
      goto LABEL_11;
    }
  }

  v5 = 0;
LABEL_11:
  static Capability.extendedSearch = 0x48435241455345;
  *algn_1005DE4A8 = 0xE700000000000000;
  qword_1005DE4B0 = v0;
  byte_1005DE4B8 = v5 & 1;
  return result;
}

uint64_t *Capability.extendedSearch.unsafeMutableAddressor()
{
  if (qword_1005DBA20 != -1)
  {
    swift_once();
  }

  return &static Capability.extendedSearch;
}

uint64_t static Capability.extendedSearch.getter()
{
  if (qword_1005DBA20 != -1)
  {
    swift_once();
  }

  v0 = static Capability.extendedSearch;

  return v0;
}

uint64_t sub_1003BFB30()
{
  v0 = 15;
  while (sub_1004A5A94() != 61 || v1 != 0xE100000000000000)
  {
    v3 = sub_1004A6D34();

    if (v3)
    {
      goto LABEL_9;
    }

    result = sub_1004A5934();
    v0 = result;
    if ((result & 0xFFFFFFFFFFFFC000) == 0x50000)
    {
      v0 = 0;
LABEL_9:
      v5 = v3 ^ 1;
      goto LABEL_11;
    }
  }

  v5 = 0;
LABEL_11:
  static Capability.esort = 0x54524F5345;
  *algn_1005DE4C8 = 0xE500000000000000;
  qword_1005DE4D0 = v0;
  byte_1005DE4D8 = v5 & 1;
  return result;
}

uint64_t *Capability.esort.unsafeMutableAddressor()
{
  if (qword_1005DBA28 != -1)
  {
    swift_once();
  }

  return &static Capability.esort;
}

uint64_t static Capability.esort.getter()
{
  if (qword_1005DBA28 != -1)
  {
    swift_once();
  }

  v0 = static Capability.esort;

  return v0;
}

uint64_t sub_1003BFCD8()
{
  v0 = 15;
  while (sub_1004A5A94() != 61 || v1 != 0xE100000000000000)
  {
    v3 = sub_1004A6D34();

    if (v3)
    {
      goto LABEL_9;
    }

    result = sub_1004A5934();
    v0 = result;
    if ((result & 0xFFFFFFFFFFFFC000) == 0x70000)
    {
      v0 = 0;
LABEL_9:
      v5 = v3 ^ 1;
      goto LABEL_11;
    }
  }

  v5 = 0;
LABEL_11:
  static Capability.filters = 0x535245544C4946;
  *algn_1005DE4E8 = 0xE700000000000000;
  qword_1005DE4F0 = v0;
  byte_1005DE4F8 = v5 & 1;
  return result;
}

uint64_t *Capability.filters.unsafeMutableAddressor()
{
  if (qword_1005DBA30 != -1)
  {
    swift_once();
  }

  return &static Capability.filters;
}

uint64_t static Capability.filters.getter()
{
  if (qword_1005DBA30 != -1)
  {
    swift_once();
  }

  v0 = static Capability.filters;

  return v0;
}

uint64_t sub_1003BFE84()
{
  v0 = 15;
  while (sub_1004A5A94() != 61 || v1 != 0xE100000000000000)
  {
    v3 = sub_1004A6D34();

    if (v3)
    {
      goto LABEL_9;
    }

    result = sub_1004A5934();
    v0 = result;
    if ((result & 0xFFFFFFFFFFFFC000) == 0x20000)
    {
      v0 = 0;
LABEL_9:
      v5 = v3 ^ 1;
      goto LABEL_11;
    }
  }

  v5 = 0;
LABEL_11:
  static Capability.id = 17481;
  *algn_1005DE508 = 0xE200000000000000;
  qword_1005DE510 = v0;
  byte_1005DE518 = v5 & 1;
  return result;
}

uint64_t *Capability.id.unsafeMutableAddressor()
{
  if (qword_1005DBA38 != -1)
  {
    swift_once();
  }

  return &static Capability.id;
}

uint64_t static Capability.id.getter()
{
  if (qword_1005DBA38 != -1)
  {
    swift_once();
  }

  v0 = static Capability.id;

  return v0;
}

uint64_t sub_1003C001C()
{
  v0 = 15;
  while (sub_1004A5A94() != 61 || v1 != 0xE100000000000000)
  {
    v3 = sub_1004A6D34();

    if (v3)
    {
      goto LABEL_9;
    }

    result = sub_1004A5934();
    v0 = result;
    if ((result & 0xFFFFFFFFFFFFC000) == 0x40000)
    {
      v0 = 0;
LABEL_9:
      v5 = v3 ^ 1;
      goto LABEL_11;
    }
  }

  v5 = 0;
LABEL_11:
  static Capability.idle = 1162626121;
  *algn_1005DE528 = 0xE400000000000000;
  qword_1005DE530 = v0;
  byte_1005DE538 = v5 & 1;
  return result;
}

uint64_t *Capability.idle.unsafeMutableAddressor()
{
  if (qword_1005DBA40 != -1)
  {
    swift_once();
  }

  return &static Capability.idle;
}

uint64_t static Capability.idle.getter()
{
  if (qword_1005DBA40 != -1)
  {
    swift_once();
  }

  v0 = static Capability.idle;

  return v0;
}

uint64_t sub_1003C01C8()
{
  v0 = 15;
  while (sub_1004A5A94() != 61 || v1 != 0xE100000000000000)
  {
    v2 = sub_1004A6D34();

    if (v2)
    {
      goto LABEL_7;
    }

    result = sub_1004A5934();
    v0 = result;
    if ((result & 0xFFFFFFFFFFFFC000) == 0x90000)
    {
      v0 = 0;
LABEL_7:
      v4 = v2 ^ 1;
      goto LABEL_9;
    }
  }

  v4 = 0;
LABEL_9:
  static Capability.imap4rev1 = 0x7665723450414D49;
  *algn_1005DE548 = 0xE900000000000031;
  qword_1005DE550 = v0;
  byte_1005DE558 = v4 & 1;
  return result;
}

uint64_t *Capability.imap4rev1.unsafeMutableAddressor()
{
  if (qword_1005DBA48 != -1)
  {
    swift_once();
  }

  return &static Capability.imap4rev1;
}

uint64_t static Capability.imap4rev1.getter()
{
  if (qword_1005DBA48 != -1)
  {
    swift_once();
  }

  v0 = static Capability.imap4rev1;

  return v0;
}

uint64_t sub_1003C0384()
{
  v0 = 15;
  while (sub_1004A5A94() != 61 || v1 != 0xE100000000000000)
  {
    v3 = sub_1004A6D34();

    if (v3)
    {
      goto LABEL_9;
    }

    result = sub_1004A5934();
    v0 = result;
    if ((result & 0xFFFFFFFFFFFFC000) == 0x50000)
    {
      v0 = 0;
LABEL_9:
      v5 = v3 ^ 1;
      goto LABEL_11;
    }
  }

  v5 = 0;
LABEL_11:
  static Capability.imap4 = 0x3450414D49;
  *algn_1005DE568 = 0xE500000000000000;
  qword_1005DE570 = v0;
  byte_1005DE578 = v5 & 1;
  return result;
}

uint64_t *Capability.imap4.unsafeMutableAddressor()
{
  if (qword_1005DBA50 != -1)
  {
    swift_once();
  }

  return &static Capability.imap4;
}

uint64_t static Capability.imap4.getter()
{
  if (qword_1005DBA50 != -1)
  {
    swift_once();
  }

  v0 = static Capability.imap4;

  return v0;
}

uint64_t sub_1003C052C()
{
  v0 = 15;
  while (sub_1004A5A94() != 61 || v1 != 0xE100000000000000)
  {
    v3 = sub_1004A6D34();

    if (v3)
    {
      goto LABEL_9;
    }

    result = sub_1004A5934();
    v0 = result;
    if ((result & 0xFFFFFFFFFFFFC000) == 0x80000)
    {
      v0 = 0;
LABEL_9:
      v5 = v3 ^ 1;
      goto LABEL_11;
    }
  }

  v5 = 0;
LABEL_11:
  static Capability.language = 0x45474155474E414CLL;
  *algn_1005DE588 = 0xE800000000000000;
  qword_1005DE590 = v0;
  byte_1005DE598 = v5 & 1;
  return result;
}

uint64_t *Capability.language.unsafeMutableAddressor()
{
  if (qword_1005DBA58 != -1)
  {
    swift_once();
  }

  return &static Capability.language;
}

uint64_t static Capability.language.getter()
{
  if (qword_1005DBA58 != -1)
  {
    swift_once();
  }

  v0 = static Capability.language;

  return v0;
}

uint64_t sub_1003C06D8()
{
  v0 = 15;
  while (sub_1004A5A94() != 61 || v1 != 0xE100000000000000)
  {
    v2 = sub_1004A6D34();

    if (v2)
    {
      goto LABEL_7;
    }

    result = sub_1004A5934();
    v0 = result;
    if ((result & 0xFFFFFFFFFFFFC000) == 0xB0000)
    {
      v0 = 0;
LABEL_7:
      v4 = v2 ^ 1;
      goto LABEL_9;
    }
  }

  v4 = 0;
LABEL_9:
  static Capability.listStatus = 0x4154532D5453494CLL;
  *algn_1005DE5A8 = 0xEB00000000535554;
  qword_1005DE5B0 = v0;
  byte_1005DE5B8 = v4 & 1;
  return result;
}

uint64_t *Capability.listStatus.unsafeMutableAddressor()
{
  if (qword_1005DBA60 != -1)
  {
    swift_once();
  }

  return &static Capability.listStatus;
}

uint64_t static Capability.listStatus.getter()
{
  if (qword_1005DBA60 != -1)
  {
    swift_once();
  }

  v0 = static Capability.listStatus;

  return v0;
}

uint64_t sub_1003C0890()
{
  v0 = 15;
  while (sub_1004A5A94() != 61 || v1 != 0xE100000000000000)
  {
    v2 = sub_1004A6D34();

    if (v2)
    {
      goto LABEL_7;
    }

    result = sub_1004A5934();
    v0 = result;
    if ((result & 0xFFFFFFFFFFFFC000) == 0xD0000)
    {
      v0 = 0;
LABEL_7:
      v4 = v2 ^ 1;
      goto LABEL_9;
    }
  }

  v4 = 0;
LABEL_9:
  strcpy(&static Capability.listExtended, "LIST-EXTENDED");
  *&algn_1005DE5C8[6] = -4864;
  qword_1005DE5D0 = v0;
  byte_1005DE5D8 = v4 & 1;
  return result;
}

uint64_t *Capability.listExtended.unsafeMutableAddressor()
{
  if (qword_1005DBA68 != -1)
  {
    swift_once();
  }

  return &static Capability.listExtended;
}

uint64_t static Capability.listExtended.getter()
{
  if (qword_1005DBA68 != -1)
  {
    swift_once();
  }

  v0 = static Capability.listExtended;

  return v0;
}

uint64_t sub_1003C0A4C()
{
  v0 = 15;
  while (sub_1004A5A94() != 61 || v1 != 0xE100000000000000)
  {
    v2 = sub_1004A6D34();

    if (v2)
    {
      goto LABEL_7;
    }

    result = sub_1004A5934();
    v0 = result;
    if ((result & 0xFFFFFFFFFFFFC000) == 0xD0000)
    {
      v0 = 0;
LABEL_7:
      v4 = v2 ^ 1;
      goto LABEL_9;
    }
  }

  v4 = 0;
LABEL_9:
  strcpy(&static Capability.loginDisabled, "LOGINDISABLED");
  *&algn_1005DE5E8[6] = -4864;
  qword_1005DE5F0 = v0;
  byte_1005DE5F8 = v4 & 1;
  return result;
}

uint64_t *Capability.loginDisabled.unsafeMutableAddressor()
{
  if (qword_1005DBA70 != -1)
  {
    swift_once();
  }

  return &static Capability.loginDisabled;
}

uint64_t static Capability.loginDisabled.getter()
{
  if (qword_1005DBA70 != -1)
  {
    swift_once();
  }

  v0 = static Capability.loginDisabled;

  return v0;
}

uint64_t sub_1003C0C08()
{
  v0 = 15;
  while (sub_1004A5A94() != 61 || v1 != 0xE100000000000000)
  {
    v2 = sub_1004A6D34();

    if (v2)
    {
      goto LABEL_7;
    }

    result = sub_1004A5934();
    v0 = result;
    if ((result & 0xFFFFFFFFFFFFC000) == 0xF0000)
    {
      v0 = 0;
LABEL_7:
      v4 = v2 ^ 1;
      goto LABEL_9;
    }
  }

  v4 = 0;
LABEL_9:
  static Capability.loginReferrals = 0x45522D4E49474F4CLL;
  *algn_1005DE608 = 0xEF534C4152524546;
  qword_1005DE610 = v0;
  byte_1005DE618 = v4 & 1;
  return result;
}

uint64_t *Capability.loginReferrals.unsafeMutableAddressor()
{
  if (qword_1005DBA78 != -1)
  {
    swift_once();
  }

  return &static Capability.loginReferrals;
}

uint64_t static Capability.loginReferrals.getter()
{
  if (qword_1005DBA78 != -1)
  {
    swift_once();
  }

  v0 = static Capability.loginReferrals;

  return v0;
}

uint64_t sub_1003C0DC4()
{
  v0 = 15;
  while (sub_1004A5A94() != 61 || v1 != 0xE100000000000000)
  {
    v2 = sub_1004A6D34();

    if (v2)
    {
      goto LABEL_7;
    }

    result = sub_1004A5934();
    v0 = result;
    if ((result & 0xFFFFFFFFFFFFC000) == 0xB0000)
    {
      v0 = 0;
LABEL_7:
      v4 = v2 ^ 1;
      goto LABEL_9;
    }
  }

  v4 = 0;
LABEL_9:
  static Capability.mailboxSpecificAppendLimit = 0x494C444E45505041;
  *algn_1005DE628 = 0xEB0000000054494DLL;
  qword_1005DE630 = v0;
  byte_1005DE638 = v4 & 1;
  return result;
}

uint64_t *Capability.mailboxSpecificAppendLimit.unsafeMutableAddressor()
{
  if (qword_1005DBA80 != -1)
  {
    swift_once();
  }

  return &static Capability.mailboxSpecificAppendLimit;
}

uint64_t static Capability.mailboxSpecificAppendLimit.getter()
{
  if (qword_1005DBA80 != -1)
  {
    swift_once();
  }

  v0 = static Capability.mailboxSpecificAppendLimit;

  return v0;
}

uint64_t sub_1003C0F7C()
{
  v0 = 15;
  while (sub_1004A5A94() != 61 || v1 != 0xE100000000000000)
  {
    v3 = sub_1004A6D34();

    if (v3)
    {
      goto LABEL_9;
    }

    result = sub_1004A5934();
    v0 = result;
    if ((result & 0xFFFFFFFFFFFFC000) == 0x80000)
    {
      v0 = 0;
LABEL_9:
      v5 = v3 ^ 1;
      goto LABEL_11;
    }
  }

  v5 = 0;
LABEL_11:
  static Capability.metadata = 0x415441444154454DLL;
  *algn_1005DE648 = 0xE800000000000000;
  qword_1005DE650 = v0;
  byte_1005DE658 = v5 & 1;
  return result;
}

uint64_t *Capability.metadata.unsafeMutableAddressor()
{
  if (qword_1005DBA88 != -1)
  {
    swift_once();
  }

  return &static Capability.metadata;
}

uint64_t static Capability.metadata.getter()
{
  if (qword_1005DBA88 != -1)
  {
    swift_once();
  }

  v0 = static Capability.metadata;

  return v0;
}

uint64_t sub_1003C1128()
{
  v0 = 15;
  while (sub_1004A5A94() != 61 || v1 != 0xE100000000000000)
  {
    v2 = sub_1004A6D34();

    if (v2)
    {
      goto LABEL_7;
    }

    result = sub_1004A5934();
    v0 = result;
    if ((result & 0xFFFFFFFFFFFFC000) == 0xF0000)
    {
      v0 = 0;
LABEL_7:
      v4 = v2 ^ 1;
      goto LABEL_9;
    }
  }

  v4 = 0;
LABEL_9:
  static Capability.metadataServer = 0x415441444154454DLL;
  *algn_1005DE668 = 0xEF5245565245532DLL;
  qword_1005DE670 = v0;
  byte_1005DE678 = v4 & 1;
  return result;
}

uint64_t *Capability.metadataServer.unsafeMutableAddressor()
{
  if (qword_1005DBA90 != -1)
  {
    swift_once();
  }

  return &static Capability.metadataServer;
}

uint64_t static Capability.metadataServer.getter()
{
  if (qword_1005DBA90 != -1)
  {
    swift_once();
  }

  v0 = static Capability.metadataServer;

  return v0;
}

uint64_t sub_1003C12E4()
{
  v0 = 15;
  while (sub_1004A5A94() != 61 || v1 != 0xE100000000000000)
  {
    v3 = sub_1004A6D34();

    if (v3)
    {
      goto LABEL_9;
    }

    result = sub_1004A5934();
    v0 = result;
    if ((result & 0xFFFFFFFFFFFFC000) == 0x40000)
    {
      v0 = 0;
LABEL_9:
      v5 = v3 ^ 1;
      goto LABEL_11;
    }
  }

  v5 = 0;
LABEL_11:
  static Capability.move = 1163284301;
  *algn_1005DE688 = 0xE400000000000000;
  qword_1005DE690 = v0;
  byte_1005DE698 = v5 & 1;
  return result;
}

uint64_t *Capability.move.unsafeMutableAddressor()
{
  if (qword_1005DBA98 != -1)
  {
    swift_once();
  }

  return &static Capability.move;
}

uint64_t static Capability.move.getter()
{
  if (qword_1005DBA98 != -1)
  {
    swift_once();
  }

  v0 = static Capability.move;

  return v0;
}

uint64_t sub_1003C1490()
{
  v0 = 15;
  while (sub_1004A5A94() != 61 || v1 != 0xE100000000000000)
  {
    v2 = sub_1004A6D34();

    if (v2)
    {
      goto LABEL_7;
    }

    result = sub_1004A5934();
    v0 = result;
    if ((result & 0xFFFFFFFFFFFFC000) == 0xB0000)
    {
      v0 = 0;
LABEL_7:
      v4 = v2 ^ 1;
      goto LABEL_9;
    }
  }

  v4 = 0;
LABEL_9:
  static Capability.multiSearch = 0x41455349544C554DLL;
  *algn_1005DE6A8 = 0xEB00000000484352;
  qword_1005DE6B0 = v0;
  byte_1005DE6B8 = v4 & 1;
  return result;
}

uint64_t *Capability.multiSearch.unsafeMutableAddressor()
{
  if (qword_1005DBAA0 != -1)
  {
    swift_once();
  }

  return &static Capability.multiSearch;
}

uint64_t static Capability.multiSearch.getter()
{
  if (qword_1005DBAA0 != -1)
  {
    swift_once();
  }

  v0 = static Capability.multiSearch;

  return v0;
}

uint64_t sub_1003C1648()
{
  v0 = 15;
  while (sub_1004A5A94() != 61 || v1 != 0xE100000000000000)
  {
    v2 = sub_1004A6D34();

    if (v2)
    {
      goto LABEL_7;
    }

    result = sub_1004A5934();
    v0 = result;
    if ((result & 0xFFFFFFFFFFFFC000) == 0x90000)
    {
      v0 = 0;
LABEL_7:
      v4 = v2 ^ 1;
      goto LABEL_9;
    }
  }

  v4 = 0;
LABEL_9:
  static Capability.namespace = 0x43415053454D414ELL;
  *algn_1005DE6C8 = 0xE900000000000045;
  qword_1005DE6D0 = v0;
  byte_1005DE6D8 = v4 & 1;
  return result;
}

uint64_t *Capability.namespace.unsafeMutableAddressor()
{
  if (qword_1005DBAA8 != -1)
  {
    swift_once();
  }

  return &static Capability.namespace;
}

uint64_t static Capability.namespace.getter()
{
  if (qword_1005DBAA8 != -1)
  {
    swift_once();
  }

  v0 = static Capability.namespace;

  return v0;
}

uint64_t sub_1003C1804()
{
  v0 = 15;
  while (sub_1004A5A94() != 61 || v1 != 0xE100000000000000)
  {
    v3 = sub_1004A6D34();

    if (v3)
    {
      goto LABEL_9;
    }

    result = sub_1004A5934();
    v0 = result;
    if ((result & 0xFFFFFFFFFFFFC000) == 0x80000)
    {
      v0 = 0;
LABEL_9:
      v5 = v3 ^ 1;
      goto LABEL_11;
    }
  }

  v5 = 0;
LABEL_11:
  static Capability.objectID = 0x44495443454A424FLL;
  *algn_1005DE6E8 = 0xE800000000000000;
  qword_1005DE6F0 = v0;
  byte_1005DE6F8 = v5 & 1;
  return result;
}

uint64_t *Capability.objectID.unsafeMutableAddressor()
{
  if (qword_1005DBAB0 != -1)
  {
    swift_once();
  }

  return &static Capability.objectID;
}

uint64_t static Capability.objectID.getter()
{
  if (qword_1005DBAB0 != -1)
  {
    swift_once();
  }

  v0 = static Capability.objectID;

  return v0;
}

uint64_t sub_1003C19B0()
{
  v0 = 15;
  while (sub_1004A5A94() != 61 || v1 != 0xE100000000000000)
  {
    v3 = sub_1004A6D34();

    if (v3)
    {
      goto LABEL_9;
    }

    result = sub_1004A5934();
    v0 = result;
    if ((result & 0xFFFFFFFFFFFFC000) == 0x70000)
    {
      v0 = 0;
LABEL_9:
      v5 = v3 ^ 1;
      goto LABEL_11;
    }
  }

  v5 = 0;
LABEL_11:
  static Capability.qresync = 0x434E5953455251;
  *algn_1005DE708 = 0xE700000000000000;
  qword_1005DE710 = v0;
  byte_1005DE718 = v5 & 1;
  return result;
}

uint64_t *Capability.qresync.unsafeMutableAddressor()
{
  if (qword_1005DBAB8 != -1)
  {
    swift_once();
  }

  return &static Capability.qresync;
}

uint64_t static Capability.qresync.getter()
{
  if (qword_1005DBAB8 != -1)
  {
    swift_once();
  }

  v0 = static Capability.qresync;

  return v0;
}

uint64_t sub_1003C1B5C()
{
  v0 = 15;
  while (sub_1004A5A94() != 61 || v1 != 0xE100000000000000)
  {
    v3 = sub_1004A6D34();

    if (v3)
    {
      goto LABEL_9;
    }

    result = sub_1004A5934();
    v0 = result;
    if ((result & 0xFFFFFFFFFFFFC000) == 0x50000)
    {
      v0 = 0;
LABEL_9:
      v5 = v3 ^ 1;
      goto LABEL_11;
    }
  }

  v5 = 0;
LABEL_11:
  static Capability.quota = 0x41544F5551;
  *algn_1005DE728 = 0xE500000000000000;
  qword_1005DE730 = v0;
  byte_1005DE738 = v5 & 1;
  return result;
}

uint64_t *Capability.quota.unsafeMutableAddressor()
{
  if (qword_1005DBAC0 != -1)
  {
    swift_once();
  }

  return &static Capability.quota;
}

uint64_t static Capability.quota.getter()
{
  if (qword_1005DBAC0 != -1)
  {
    swift_once();
  }

  v0 = static Capability.quota;

  return v0;
}

uint64_t sub_1003C1D04()
{
  v0 = 15;
  while (sub_1004A5A94() != 61 || v1 != 0xE100000000000000)
  {
    v3 = sub_1004A6D34();

    if (v3)
    {
      goto LABEL_9;
    }

    result = sub_1004A5934();
    v0 = result;
    if ((result & 0xFFFFFFFFFFFFC000) == 0x70000)
    {
      v0 = 0;
LABEL_9:
      v5 = v3 ^ 1;
      goto LABEL_11;
    }
  }

  v5 = 0;
LABEL_11:
  static Capability.saslIR = 0x52492D4C534153;
  *algn_1005DE748 = 0xE700000000000000;
  qword_1005DE750 = v0;
  byte_1005DE758 = v5 & 1;
  return result;
}

uint64_t *Capability.saslIR.unsafeMutableAddressor()
{
  if (qword_1005DBAC8 != -1)
  {
    swift_once();
  }

  return &static Capability.saslIR;
}

uint64_t static Capability.saslIR.getter()
{
  if (qword_1005DBAC8 != -1)
  {
    swift_once();
  }

  v0 = static Capability.saslIR;

  return v0;
}

uint64_t sub_1003C1EB0()
{
  v0 = 15;
  while (sub_1004A5A94() != 61 || v1 != 0xE100000000000000)
  {
    v2 = sub_1004A6D34();

    if (v2)
    {
      goto LABEL_7;
    }

    result = sub_1004A5934();
    v0 = result;
    if ((result & 0xFFFFFFFFFFFFC000) == 0x90000)
    {
      v0 = 0;
LABEL_7:
      v4 = v2 ^ 1;
      goto LABEL_9;
    }
  }

  v4 = 0;
LABEL_9:
  static Capability.searchRes = 0x4552484352414553;
  *algn_1005DE768 = 0xE900000000000053;
  qword_1005DE770 = v0;
  byte_1005DE778 = v4 & 1;
  return result;
}

uint64_t *Capability.searchRes.unsafeMutableAddressor()
{
  if (qword_1005DBAD0 != -1)
  {
    swift_once();
  }

  return &static Capability.searchRes;
}

uint64_t static Capability.searchRes.getter()
{
  if (qword_1005DBAD0 != -1)
  {
    swift_once();
  }

  v0 = static Capability.searchRes;

  return v0;
}

uint64_t sub_1003C206C()
{
  v0 = 15;
  while (sub_1004A5A94() != 61 || v1 != 0xE100000000000000)
  {
    v2 = sub_1004A6D34();

    if (v2)
    {
      goto LABEL_7;
    }

    result = sub_1004A5934();
    v0 = result;
    if ((result & 0xFFFFFFFFFFFFC000) == 0xB0000)
    {
      v0 = 0;
LABEL_7:
      v4 = v2 ^ 1;
      goto LABEL_9;
    }
  }

  v4 = 0;
LABEL_9:
  static Capability.specialUse = 0x2D4C414943455053;
  *algn_1005DE788 = 0xEB00000000455355;
  qword_1005DE790 = v0;
  byte_1005DE798 = v4 & 1;
  return result;
}

uint64_t *Capability.specialUse.unsafeMutableAddressor()
{
  if (qword_1005DBAD8 != -1)
  {
    swift_once();
  }

  return &static Capability.specialUse;
}

uint64_t static Capability.specialUse.getter()
{
  if (qword_1005DBAD8 != -1)
  {
    swift_once();
  }

  v0 = static Capability.specialUse;

  return v0;
}

uint64_t sub_1003C2224()
{
  v0 = 15;
  while (sub_1004A5A94() != 61 || v1 != 0xE100000000000000)
  {
    v3 = sub_1004A6D34();

    if (v3)
    {
      goto LABEL_9;
    }

    result = sub_1004A5934();
    v0 = result;
    if ((result & 0xFFFFFFFFFFFFC000) == 0x80000)
    {
      v0 = 0;
LABEL_9:
      v5 = v3 ^ 1;
      goto LABEL_11;
    }
  }

  v5 = 0;
LABEL_11:
  static Capability.startTLS = 0x534C545452415453;
  *algn_1005DE7A8 = 0xE800000000000000;
  qword_1005DE7B0 = v0;
  byte_1005DE7B8 = v5 & 1;
  return result;
}

uint64_t *Capability.startTLS.unsafeMutableAddressor()
{
  if (qword_1005DBAE0 != -1)
  {
    swift_once();
  }

  return &static Capability.startTLS;
}

uint64_t static Capability.startTLS.getter()
{
  if (qword_1005DBAE0 != -1)
  {
    swift_once();
  }

  v0 = static Capability.startTLS;

  return v0;
}

uint64_t sub_1003C23D0()
{
  v0 = 15;
  while (sub_1004A5A94() != 61 || v1 != 0xE100000000000000)
  {
    v3 = sub_1004A6D34();

    if (v3)
    {
      goto LABEL_9;
    }

    result = sub_1004A5934();
    v0 = result;
    if ((result & 0xFFFFFFFFFFFFC000) == 0x70000)
    {
      v0 = 0;
LABEL_9:
      v5 = v3 ^ 1;
      goto LABEL_11;
    }
  }

  v5 = 0;
LABEL_11:
  static Capability.uidPlus = 0x53554C50444955;
  *algn_1005DE7C8 = 0xE700000000000000;
  qword_1005DE7D0 = v0;
  byte_1005DE7D8 = v5 & 1;
  return result;
}

uint64_t *Capability.uidPlus.unsafeMutableAddressor()
{
  if (qword_1005DBAE8 != -1)
  {
    swift_once();
  }

  return &static Capability.uidPlus;
}

uint64_t static Capability.uidPlus.getter()
{
  if (qword_1005DBAE8 != -1)
  {
    swift_once();
  }

  v0 = static Capability.uidPlus;

  return v0;
}

uint64_t sub_1003C257C()
{
  v0 = 15;
  while (sub_1004A5A94() != 61 || v1 != 0xE100000000000000)
  {
    v2 = sub_1004A6D34();

    if (v2)
    {
      goto LABEL_7;
    }

    result = sub_1004A5934();
    v0 = result;
    if ((result & 0xFFFFFFFFFFFFC000) == 0xA0000)
    {
      v0 = 0;
LABEL_7:
      v4 = v2 ^ 1;
      goto LABEL_9;
    }
  }

  v4 = 0;
LABEL_9:
  static Capability.uidBatches = 0x4843544142444955;
  *algn_1005DE7E8 = 0xEA00000000005345;
  qword_1005DE7F0 = v0;
  byte_1005DE7F8 = v4 & 1;
  return result;
}

uint64_t *Capability.uidBatches.unsafeMutableAddressor()
{
  if (qword_1005DBAF0 != -1)
  {
    swift_once();
  }

  return &static Capability.uidBatches;
}

uint64_t static Capability.uidBatches.getter()
{
  if (qword_1005DBAF0 != -1)
  {
    swift_once();
  }

  v0 = static Capability.uidBatches;

  return v0;
}

uint64_t sub_1003C2738()
{
  v0 = 15;
  while (sub_1004A5A94() != 61 || v1 != 0xE100000000000000)
  {
    v3 = sub_1004A6D34();

    if (v3)
    {
      goto LABEL_9;
    }

    result = sub_1004A5934();
    v0 = result;
    if ((result & 0xFFFFFFFFFFFFC000) == 0x80000)
    {
      v0 = 0;
LABEL_9:
      v5 = v3 ^ 1;
      goto LABEL_11;
    }
  }

  v5 = 0;
LABEL_11:
  static Capability.unselect = 0x5443454C45534E55;
  *algn_1005DE808 = 0xE800000000000000;
  qword_1005DE810 = v0;
  byte_1005DE818 = v5 & 1;
  return result;
}

uint64_t *Capability.unselect.unsafeMutableAddressor()
{
  if (qword_1005DBAF8 != -1)
  {
    swift_once();
  }

  return &static Capability.unselect;
}

uint64_t static Capability.unselect.getter()
{
  if (qword_1005DBAF8 != -1)
  {
    swift_once();
  }

  v0 = static Capability.unselect;

  return v0;
}

uint64_t sub_1003C28E4()
{
  v0 = 15;
  while (sub_1004A5A94() != 61 || v1 != 0xE100000000000000)
  {
    v2 = sub_1004A6D34();

    if (v2)
    {
      goto LABEL_7;
    }

    result = sub_1004A5934();
    v0 = result;
    if ((result & 0xFFFFFFFFFFFFC000) == 0xB0000)
    {
      v0 = 0;
LABEL_7:
      v4 = v2 ^ 1;
      goto LABEL_9;
    }
  }

  v4 = 0;
LABEL_9:
  static Capability.partialURL = 0x545241502D4C5255;
  *algn_1005DE828 = 0xEB000000004C4149;
  qword_1005DE830 = v0;
  byte_1005DE838 = v4 & 1;
  return result;
}

uint64_t *Capability.partialURL.unsafeMutableAddressor()
{
  if (qword_1005DBB00 != -1)
  {
    swift_once();
  }

  return &static Capability.partialURL;
}

uint64_t static Capability.partialURL.getter()
{
  if (qword_1005DBB00 != -1)
  {
    swift_once();
  }

  v0 = static Capability.partialURL;

  return v0;
}

uint64_t sub_1003C2A9C()
{
  v0 = 15;
  while (sub_1004A5A94() != 61 || v1 != 0xE100000000000000)
  {
    v3 = sub_1004A6D34();

    if (v3)
    {
      goto LABEL_9;
    }

    result = sub_1004A5934();
    v0 = result;
    if ((result & 0xFFFFFFFFFFFFC000) == 0x70000)
    {
      v0 = 0;
LABEL_9:
      v5 = v3 ^ 1;
      goto LABEL_11;
    }
  }

  v5 = 0;
LABEL_11:
  static Capability.partial = 0x4C414954524150;
  *algn_1005DE848 = 0xE700000000000000;
  qword_1005DE850 = v0;
  byte_1005DE858 = v5 & 1;
  return result;
}

uint64_t *Capability.partial.unsafeMutableAddressor()
{
  if (qword_1005DBB08 != -1)
  {
    swift_once();
  }

  return &static Capability.partial;
}

uint64_t static Capability.partial.getter()
{
  if (qword_1005DBB08 != -1)
  {
    swift_once();
  }

  v0 = static Capability.partial;

  return v0;
}

uint64_t sub_1003C2C48()
{
  v0 = 15;
  while (sub_1004A5A94() != 61 || v1 != 0xE100000000000000)
  {
    v3 = sub_1004A6D34();

    if (v3)
    {
      goto LABEL_9;
    }

    result = sub_1004A5934();
    v0 = result;
    if ((result & 0xFFFFFFFFFFFFC000) == 0x70000)
    {
      v0 = 0;
LABEL_9:
      v5 = v3 ^ 1;
      goto LABEL_11;
    }
  }

  v5 = 0;
LABEL_11:
  static Capability.authenticatedURL = 0x485455414C5255;
  *algn_1005DE868 = 0xE700000000000000;
  qword_1005DE870 = v0;
  byte_1005DE878 = v5 & 1;
  return result;
}

uint64_t *Capability.authenticatedURL.unsafeMutableAddressor()
{
  if (qword_1005DBB10 != -1)
  {
    swift_once();
  }

  return &static Capability.authenticatedURL;
}

uint64_t static Capability.authenticatedURL.getter()
{
  if (qword_1005DBB10 != -1)
  {
    swift_once();
  }

  v0 = static Capability.authenticatedURL;

  return v0;
}

uint64_t sub_1003C2DF4()
{
  v0 = 15;
  while (sub_1004A5A94() != 61 || v1 != 0xE100000000000000)
  {
    v3 = sub_1004A6D34();

    if (v3)
    {
      goto LABEL_9;
    }

    result = sub_1004A5934();
    v0 = result;
    if ((result & 0xFFFFFFFFFFFFC000) == 0x60000)
    {
      v0 = 0;
LABEL_9:
      v5 = v3 ^ 1;
      goto LABEL_11;
    }
  }

  v5 = 0;
LABEL_11:
  static Capability.within = 0x4E4948544957;
  *algn_1005DE888 = 0xE600000000000000;
  qword_1005DE890 = v0;
  byte_1005DE898 = v5 & 1;
  return result;
}

uint64_t *Capability.within.unsafeMutableAddressor()
{
  if (qword_1005DBB18 != -1)
  {
    swift_once();
  }

  return &static Capability.within;
}

uint64_t static Capability.within.getter()
{
  if (qword_1005DBB18 != -1)
  {
    swift_once();
  }

  v0 = static Capability.within;

  return v0;
}

uint64_t sub_1003C2F9C()
{
  v0 = 15;
  while (sub_1004A5A94() != 61 || v1 != 0xE100000000000000)
  {
    v2 = sub_1004A6D34();

    if (v2)
    {
      goto LABEL_7;
    }

    result = sub_1004A5934();
    v0 = result;
    if ((result & 0xFFFFFFFFFFFFC000) == 0xA0000)
    {
      v0 = 0;
LABEL_7:
      v4 = v2 ^ 1;
      goto LABEL_9;
    }
  }

  v4 = 0;
LABEL_9:
  static Capability.gmailExtensions = 0x5458452D4D472D58;
  *algn_1005DE8A8 = 0xEA0000000000312DLL;
  qword_1005DE8B0 = v0;
  byte_1005DE8B8 = v4 & 1;
  return result;
}

uint64_t *Capability.gmailExtensions.unsafeMutableAddressor()
{
  if (qword_1005DBB20 != -1)
  {
    swift_once();
  }

  return &static Capability.gmailExtensions;
}

uint64_t static Capability.gmailExtensions.getter()
{
  if (qword_1005DBB20 != -1)
  {
    swift_once();
  }

  v0 = static Capability.gmailExtensions;

  return v0;
}

void sub_1003C3158()
{
  if (("eBuffer-views.swift" & 0x2000000000000000) != 0)
  {
    v0 = ("eBuffer-views.swift" >> 40) & 0xF0000;
  }

  else
  {
    v0 = 0x100000;
  }

  v1 = v0 == 0;
  if (v0)
  {
    v2 = 15;
    while (sub_1004A5A94() != 61 || v3 != 0xE100000000000000)
    {
      v4 = sub_1004A6D34();

      if (v4)
      {
        goto LABEL_12;
      }

      v2 = sub_1004A5934();
      v1 = (v0 ^ v2) < 0x4000;
      if ((v0 ^ v2) < 0x4000)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:
    v2 = 0;
  }

LABEL_12:
  static Capability.yahooMailHighestModificationSequence = 0xD000000000000010;
  *algn_1005DE8C8 = 0x80000001004B0630;
  qword_1005DE8D0 = v2;
  byte_1005DE8D8 = v1;
}

uint64_t *Capability.yahooMailHighestModificationSequence.unsafeMutableAddressor()
{
  if (qword_1005DBB28 != -1)
  {
    swift_once();
  }

  return &static Capability.yahooMailHighestModificationSequence;
}

uint64_t static Capability.yahooMailHighestModificationSequence.getter()
{
  if (qword_1005DBB28 != -1)
  {
    swift_once();
  }

  v0 = static Capability.yahooMailHighestModificationSequence;

  return v0;
}

uint64_t sub_1003C3338()
{
  v0 = 15;
  while (sub_1004A5A94() != 61 || v1 != 0xE100000000000000)
  {
    v3 = sub_1004A6D34();

    if (v3)
    {
      goto LABEL_9;
    }

    result = sub_1004A5934();
    v0 = result;
    if ((result & 0xFFFFFFFFFFFFC000) == 0x80000)
    {
      v0 = 0;
LABEL_9:
      v5 = v3 ^ 1;
      goto LABEL_11;
    }
  }

  v5 = 0;
LABEL_11:
  *&static Capability.literalPlus = 0x2B4C41524554494CLL;
  *(&static Capability.literalPlus + 1) = 0xE800000000000000;
  qword_1005DE8F0 = v0;
  byte_1005DE8F8 = v5 & 1;
  return result;
}

__int128 *Capability.literalPlus.unsafeMutableAddressor()
{
  if (qword_1005DBB30 != -1)
  {
    swift_once();
  }

  return &static Capability.literalPlus;
}

uint64_t static Capability.literalPlus.getter()
{
  if (qword_1005DBB30 != -1)
  {
    swift_once();
  }

  v0 = static Capability.literalPlus;

  return v0;
}

uint64_t sub_1003C34E4()
{
  v0 = 15;
  while (sub_1004A5A94() != 61 || v1 != 0xE100000000000000)
  {
    v3 = sub_1004A6D34();

    if (v3)
    {
      goto LABEL_9;
    }

    result = sub_1004A5934();
    v0 = result;
    if ((result & 0xFFFFFFFFFFFFC000) == 0x80000)
    {
      v0 = 0;
LABEL_9:
      v5 = v3 ^ 1;
      goto LABEL_11;
    }
  }

  v5 = 0;
LABEL_11:
  *&static Capability.literalMinus = 0x2D4C41524554494CLL;
  *(&static Capability.literalMinus + 1) = 0xE800000000000000;
  qword_1005DE910 = v0;
  byte_1005DE918 = v5 & 1;
  return result;
}

__int128 *Capability.literalMinus.unsafeMutableAddressor()
{
  if (qword_1005DBB38 != -1)
  {
    swift_once();
  }

  return &static Capability.literalMinus;
}

uint64_t static Capability.literalMinus.getter()
{
  if (qword_1005DBB38 != -1)
  {
    swift_once();
  }

  v0 = static Capability.literalMinus;

  return v0;
}

uint64_t sub_1003C3690()
{
  v0 = 15;
  while (sub_1004A5A94() != 61 || v1 != 0xE100000000000000)
  {
    v3 = sub_1004A6D34();

    if (v3)
    {
      goto LABEL_9;
    }

    result = sub_1004A5934();
    v0 = result;
    if ((result & 0xFFFFFFFFFFFFC000) == 0x70000)
    {
      v0 = 0;
LABEL_9:
      v5 = v3 ^ 1;
      goto LABEL_11;
    }
  }

  v5 = 0;
LABEL_11:
  static Capability.preview = 0x57454956455250;
  *algn_1005DE928 = 0xE700000000000000;
  qword_1005DE930 = v0;
  byte_1005DE938 = v5 & 1;
  return result;
}

uint64_t *Capability.preview.unsafeMutableAddressor()
{
  if (qword_1005DBB40 != -1)
  {
    swift_once();
  }

  return &static Capability.preview;
}

uint64_t static Capability.preview.getter()
{
  if (qword_1005DBB40 != -1)
  {
    swift_once();
  }

  v0 = static Capability.preview;

  return v0;
}

uint64_t sub_1003C383C()
{
  v0 = 15;
  while (sub_1004A5A94() != 61 || v1 != 0xE100000000000000)
  {
    v3 = sub_1004A6D34();

    if (v3)
    {
      goto LABEL_9;
    }

    result = sub_1004A5934();
    v0 = result;
    if ((result & 0xFFFFFFFFFFFFC000) == 0x70000)
    {
      v0 = 0;
LABEL_9:
      v5 = v3 ^ 1;
      goto LABEL_11;
    }
  }

  v5 = 0;
LABEL_11:
  static Capability.uidOnly = 0x594C4E4F444955;
  *algn_1005DE948 = 0xE700000000000000;
  qword_1005DE950 = v0;
  byte_1005DE958 = v5 & 1;
  return result;
}

uint64_t *Capability.uidOnly.unsafeMutableAddressor()
{
  if (qword_1005DBB48 != -1)
  {
    swift_once();
  }

  return &static Capability.uidOnly;
}

uint64_t static Capability.uidOnly.getter()
{
  if (qword_1005DBB48 != -1)
  {
    swift_once();
  }

  v0 = static Capability.uidOnly;

  return v0;
}

uint64_t sub_1003C3A48(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v10._countAndFlagsBits = sub_1004A6CE4();
  sub_1004A5994(v10);

  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v3)
  {
    v4 = 4 * v3;
    while (sub_1004A5A94() != 61 || v5 != 0xE100000000000000)
    {
      v6 = sub_1004A6D34();

      if ((v6 & 1) != 0 || v4 == sub_1004A5934() >> 14)
      {
        return a2;
      }
    }
  }

  return a2;
}

uint64_t static Capability.sort(_:)(Swift::String a1)
{
  if (a1._object)
  {
    sub_1004A5994(a1);
    v1 = 0x3D54524F53;
    while (sub_1004A5A94() != 61 || v2 != 0xE100000000000000)
    {
      v3 = sub_1004A6D34();

      if ((v3 & 1) != 0 || sub_1004A5934() >> 14 == 20)
      {
        return v1;
      }
    }
  }

  else
  {
    v1 = 1414680403;
    while (sub_1004A5A94() != 61 || v4 != 0xE100000000000000)
    {
      v6 = sub_1004A6D34();

      if ((v6 & 1) != 0 || (sub_1004A5934() & 0xFFFFFFFFFFFFC000) == 0x40000)
      {
        return v1;
      }
    }
  }

  return v1;
}

uint64_t sub_1003C3DCC(Swift::String a1, uint64_t a3, unint64_t a4)
{
  sub_1004A5994(a1);
  v3 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v3 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (v3)
  {
    v4 = 4 * v3;
    while (sub_1004A5A94() != 61 || v5 != 0xE100000000000000)
    {
      v6 = sub_1004A6D34();

      if ((v6 & 1) != 0 || v4 == sub_1004A5934() >> 14)
      {
        return a3;
      }
    }
  }

  return a3;
}

uint64_t sub_1003C3ED0(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + 20);
  result = sub_1002F178C(0x494C494241504143uLL, 0xEA00000000005954, v1 + 8, v4);
  if (v6)
  {
    v7._countAndFlagsBits = 0x494C494241504143;
    v7._object = 0xEA00000000005954;
    result = ByteBuffer._setStringSlowpath(_:at:)(v7, v4);
  }

  v8 = result;
  v9 = *(v1 + 20);
  v10 = (v9 + result);
  if (__CFADD__(v9, result))
  {
    goto LABEL_20;
  }

  *(v1 + 20) = v10;
  v26 = a1;
  v11 = *(a1 + 16);
  if (v11)
  {
    result = sub_1002F178C(0x20uLL, 0xE100000000000000, v1 + 8, v10);
    if (v12)
    {
      v13._countAndFlagsBits = 32;
      v13._object = 0xE100000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v13, v10);
    }

    v14 = result;
    v15 = *(v2 + 20);
    v16 = __CFADD__(v15, result);
    v17 = v15 + result;
    if (v16)
    {
      goto LABEL_23;
    }

    *(v2 + 20) = v17;
  }

  else
  {
    v14 = 0;
  }

  __chkstk_darwin(result);
  v25[2] = sub_1003C40B8;
  v25[3] = 0;
  v25[4] = v2;
  v25[5] = &v26;
  v25[6] = 32;
  v25[7] = 0xE100000000000000;
  result = sub_100451D54(0, sub_1003C4564, v25, a1);
  v18 = v14 + result;
  if (__OFADD__(v14, result))
  {
    goto LABEL_21;
  }

  if (!v11)
  {
    v24 = v14 + result;
    goto LABEL_16;
  }

  v19 = *(v2 + 20);
  result = sub_1002F178C(0, 0xE000000000000000, v2 + 8, v19);
  if (v20)
  {
    v21._countAndFlagsBits = 0;
    v21._object = 0xE000000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v21, v19);
  }

  v22 = *(v2 + 20);
  v16 = __CFADD__(v22, result);
  v23 = v22 + result;
  if (v16)
  {
    goto LABEL_24;
  }

  *(v2 + 20) = v23;
  v24 = v18 + result;
  if (__OFADD__(v18, result))
  {
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

LABEL_16:
  result = v8 + v24;
  if (__OFADD__(v8, v24))
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }

  return result;
}

uint64_t sub_1003C40B8(unint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a2 + 20);
  result = sub_1002F178C(*a1, v4, a2 + 8, v5);
  if (v7)
  {
    v8._countAndFlagsBits = v3;
    v8._object = v4;
    result = ByteBuffer._setStringSlowpath(_:at:)(v8, v5);
  }

  v9 = *(a2 + 20);
  v10 = __CFADD__(v9, result);
  v11 = v9 + result;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 20) = v11;
  }

  return result;
}

uint64_t sub_1003C413C@<X0>(uint64_t *a1@<X0>, __int128 *a2@<X1>, uint64_t (*a3)(void *, uint64_t, __n128)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, uint64_t *a7@<X8>, unint64_t a8@<X6>, void *a9@<X7>)
{
  v11 = *a1;
  v12 = *(a2 + 2);
  v13 = *(a2 + 3);
  v14 = *(a2 + 32);
  v15 = *a6;
  v17 = *a2;
  v18 = v12;
  v19 = v13;
  v20 = v14;
  result = sub_1004911E8(v11, &v17, a3, a4, a5, v15, a8, a9);
  if (!v9)
  {
    *a7 = result;
  }

  return result;
}

uint64_t sub_1003C4194(uint64_t a1, uint64_t a2, unint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if (a1 == a5 && a2 == a6 || (v12 = sub_1004A6D34(), result = 0, (v12 & 1) != 0))
  {
    if (a4)
    {
      if ((a8 & 1) == 0)
      {
        return 0;
      }
    }

    else if ((a8 & 1) != 0 || (a7 ^ a3) >> 14)
    {
      return 0;
    }

    return 1;
  }

  return result;
}

unint64_t sub_1003C4220()
{
  result = qword_1005DBF80;
  if (!qword_1005DBF80)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Capability, &type metadata for Capability, v0, v1);
    atomic_store(result, &qword_1005DBF80);
  }

  return result;
}

unint64_t sub_1003C4278()
{
  result = qword_1005DBF88;
  if (!qword_1005DBF88)
  {
    result = swift_getWitnessTable("1j\b", &type metadata for Capability.ContextKind, v0, v1);
    atomic_store(result, &qword_1005DBF88);
  }

  return result;
}

unint64_t sub_1003C42D0()
{
  result = qword_1005DBF90;
  if (!qword_1005DBF90)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Capability.SortKind, &type metadata for Capability.SortKind, v0, v1);
    atomic_store(result, &qword_1005DBF90);
  }

  return result;
}

unint64_t sub_1003C4328()
{
  result = qword_1005DBF98;
  if (!qword_1005DBF98)
  {
    result = swift_getWitnessTable("ai\b", &type metadata for Capability.ThreadKind, v0, v1);
    atomic_store(result, &qword_1005DBF98);
  }

  return result;
}

unint64_t sub_1003C4380()
{
  result = qword_1005DBFA0;
  if (!qword_1005DBFA0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Capability.StatusKind, &type metadata for Capability.StatusKind, v0, v1);
    atomic_store(result, &qword_1005DBFA0);
  }

  return result;
}

unint64_t sub_1003C43D8()
{
  result = qword_1005DBFA8;
  if (!qword_1005DBFA8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Capability.UTF8Kind, &type metadata for Capability.UTF8Kind, v0, v1);
    atomic_store(result, &qword_1005DBFA8);
  }

  return result;
}

unint64_t sub_1003C4430()
{
  result = qword_1005DBFB0;
  if (!qword_1005DBFB0)
  {
    result = swift_getWitnessTable(")h\b", &type metadata for Capability.RightsKind, v0, v1);
    atomic_store(result, &qword_1005DBFB0);
  }

  return result;
}

unint64_t sub_1003C4488()
{
  result = qword_1005DBFB8;
  if (!qword_1005DBFB8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Capability.CompressionKind, &type metadata for Capability.CompressionKind, v0, v1);
    atomic_store(result, &qword_1005DBFB8);
  }

  return result;
}

BOOL static FetchModificationResponse.__derived_struct_equals(_:_:)(_BOOL8 result, uint64_t a2)
{
  if (((a2 | result) & 0x8000000000000000) == 0)
  {
    return a2 == result;
  }

  __break(1u);
  return result;
}

void *sub_1003C45D4(void *result, void *a2)
{
  if (((*a2 | *result) & 0x8000000000000000) == 0)
  {
    return (*a2 == *result);
  }

  __break(1u);
  return result;
}

unint64_t sub_1003C45F8()
{
  result = qword_1005DBFC0;
  if (!qword_1005DBFC0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ChangedSinceModifier, &type metadata for ChangedSinceModifier, v0, v1);
    atomic_store(result, &qword_1005DBFC0);
  }

  return result;
}

unint64_t sub_1003C4650()
{
  result = qword_1005DBFC8;
  if (!qword_1005DBFC8)
  {
    result = swift_getWitnessTable("Af\b", &type metadata for UnchangedSinceModifier, v0, v1);
    atomic_store(result, &qword_1005DBFC8);
  }

  return result;
}

uint64_t static Base64.encodeString<A>(bytes:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  __chkstk_darwin(a1);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1004A5E84();
  if (__OFADD__(result, 2))
  {
    __break(1u);
    goto LABEL_10;
  }

  if (((result + 2) / 3 - 0x2000000000000000) >> 62 != 3)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __chkstk_darwin(result);
  v17[-2] = v11;
  v17[-1] = a2;
  sub_1004A5AF4();
  if (v17[3])
  {
    return v17[2];
  }

  (*(v7 + 16))(v9, a1, a3);
  result = sub_1004A5CF4();
  v12 = *(result + 16);
  if (__OFADD__(v12, 2))
  {
    goto LABEL_11;
  }

  if (((v12 + 2) / 3uLL - 0x2000000000000000) >> 62 != 3)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  __chkstk_darwin(result);
  v17[-4] = v13;
  v17[-3] = v14;
  v17[-2] = v15;
  v17[-1] = a2;
  v16 = sub_1004A5904();

  return v16;
}

void *static Base64.decode(string:options:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = a2;
  v6 = a1;
  if ((a2 & 0x1000000000000000) != 0)
  {

    v6 = sub_10010CD9C(v6, v5);
    v13 = v12;

    v5 = v13;
LABEL_9:
    v10 = static Base64.decode(string:options:)(v6, v5, a3);
    if (v3)
    {
    }

    v11 = v10;

    return v11;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
    v14[0] = a1;
    v14[1] = v5 & 0xFFFFFFFFFFFFFFLL;
    v7 = v14;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v7 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v8 = v6 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = sub_1004A67E4();
  }

  result = sub_1003C55B4(v7, v8, a3, &v15);
  if (!v3)
  {
    result = v15;
    if (!v15)
    {

      goto LABEL_9;
    }
  }

  return result;
}

void *static Base64.encodeBytes<A>(bytes:options:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  v7 = *(a3 - 8);
  __chkstk_darwin(a1);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1004A5E84();
  if (__OFADD__(result, 2))
  {
    __break(1u);
    goto LABEL_22;
  }

  if (((result + 2) / 3 - 0x2000000000000000) >> 62 != 3)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  __chkstk_darwin(result);
  sub_10000C9C0(&unk_1005D8FF0, &unk_1004DC230);
  sub_1004A5AF4();
  v11 = v22;
  if (v22)
  {
    return v11;
  }

  (*(v7 + 16))(v9, a1, a3);
  result = sub_1004A5CF4();
  v12 = result[2];
  v13 = v12 + 2;
  if (__OFADD__(v12, 2))
  {
    goto LABEL_23;
  }

  v14 = v13 / 3;
  if ((v13 / 3 - 0x2000000000000000) >> 62 != 3)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v15 = 4 * v14;
  if (((4 * v14) & 0x8000000000000000) != 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v16 = result;
  if (v13 >= 3)
  {
    v11 = sub_1004A5C64();
    v11[2] = v15;
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  v22 = 0;
  if (v5)
  {
    v17 = &unk_1005BAFE8;
  }

  else
  {
    v17 = &unk_1005BB228;
  }

  v18 = &unk_1005BB218;
  if (v5)
  {
    v18 = &unk_1005BAFD8;
  }

  v19 = &unk_1005BB0F8;
  if (v5)
  {
    v20 = &unk_1005BB108;
  }

  else
  {
    v19 = &unk_1005BB338;
    v20 = &unk_1005BB348;
  }

  sub_1003C511C(v17, *v18, v20, *v19, v16 + 32, v12, (v11 + 4), v15, (v5 & 2) != 0, &v22);

  if (v15 >= v22)
  {
    v11[2] = v22;

    return v11;
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1003C4DA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, void *a5@<X8>)
{
  if (a3 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a3)
    {
      v11 = sub_1004A5C64();
      v11[2] = a3;
    }

    else
    {
      v11 = _swiftEmptyArrayStorage;
    }

    v17 = 0;
    v12 = &unk_1005BAFD8;
    if (a4)
    {
      v13 = &unk_1005BAFE8;
    }

    else
    {
      v13 = &unk_1005BB228;
    }

    if ((a4 & 1) == 0)
    {
      v12 = &unk_1005BB218;
    }

    v14 = &unk_1005BB0F8;
    if (a4)
    {
      v15 = &unk_1005BB108;
    }

    else
    {
      v14 = &unk_1005BB338;
      v15 = &unk_1005BB348;
    }

    sub_1003C511C(v13, *v12, v15, *v14, a1, a2, (v11 + 4), a3, (a4 & 2) != 0, &v17);
    if (v5)
    {
      goto LABEL_18;
    }

    if (v17 <= a3)
    {
      v11[2] = v17;
      *a5 = v11;
      return result;
    }
  }

  __break(1u);
LABEL_18:

  __break(1u);
  return result;
}

uint64_t static Base64._encodeChromium(input:buffer:length:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, char a6)
{
  if (a6)
  {
    v8 = &unk_1005BAFE8;
  }

  else
  {
    v8 = &unk_1005BB228;
  }

  v9 = &unk_1005BB218;
  if (a6)
  {
    v9 = &unk_1005BAFD8;
  }

  v10 = &unk_1005BB0F8;
  if (a6)
  {
    v11 = &unk_1005BB108;
  }

  else
  {
    v10 = &unk_1005BB338;
    v11 = &unk_1005BB348;
  }

  sub_1003C511C(v8, *v9, v11, *v10, a1, a2, a3, a4, (a6 & 2) != 0, a5);
}

uint64_t sub_1003C4FDC@<X0>(uint64_t *a3@<X8>)
{
  result = sub_1004A5904();
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_1003C5034(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v13 = a3;
  v8 = &unk_1005BAFD8;
  if (a6)
  {
    v9 = &unk_1005BAFE8;
  }

  else
  {
    v9 = &unk_1005BB228;
  }

  if ((a6 & 1) == 0)
  {
    v8 = &unk_1005BB218;
  }

  v10 = &unk_1005BB0F8;
  if (a6)
  {
    v11 = &unk_1005BB108;
  }

  else
  {
    v10 = &unk_1005BB338;
    v11 = &unk_1005BB348;
  }

  sub_1003C511C(v9, *v8, v11, *v10, a4, a5, a1, a2, (a6 & 2) != 0, &v13);
  if (v6)
  {

    __break(1u);
  }

  else
  {

    return v13;
  }

  return result;
}

uint64_t sub_1003C511C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, void *a10)
{
  v10 = 3 * (a6 / 3);
  v11 = a6 % 3;
  if (v10 > 0)
  {
    v12 = 0;
    v13 = 0;
    v14 = (a7 + 3);
    do
    {
      if (__OFADD__(v13, 3))
      {
        v15 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v15 = v13 + 3;
      }

      v16 = v13 + 2;
      if (__OFADD__(v13, 2))
      {
        __break(1u);
LABEL_43:
        __break(1u);
        goto LABEL_44;
      }

      v17 = (a5 + v13);
      v18 = *v17;
      v19 = *(a5 + v16);
      v20 = v17[1];
      *(v14 - 3) = *(result + v18);
      *(v14 - 2) = *(a3 + ((v20 >> 4) & 0xFFFFFFFFFFFFFFCFLL | (16 * (v18 & 3))));
      *(v14 - 1) = *(a3 + ((v19 >> 6) & 0xFFFFFFFFFFFFFFC3 | (4 * (v20 & 0xF))));
      *v14 = *(a3 + v19);
      v21 = v12 + 4;
      if (__OFADD__(v12, 4))
      {
        goto LABEL_43;
      }

      v14 += 4;
      v12 += 4;
      v13 = v15;
    }

    while (v15 < v10);
    if (v11 > 0)
    {
      goto LABEL_13;
    }

    goto LABEL_41;
  }

  if (v11 < 1)
  {
LABEL_40:
    v21 = 0;
    goto LABEL_41;
  }

  v21 = 0;
LABEL_13:
  v22 = v10 + 1;
  if (v10 + 1 >= a6)
  {
    v23 = 0;
  }

  else
  {
    v23 = *(a5 + v22);
  }

  v24 = v10 + 2;
  if (__OFADD__(v10, 2))
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v25 = *(a5 + v10);
  LOBYTE(v10) = a9;
  if (v24 < a6)
  {
    v26 = *(a5 + v24);
    *(a7 + v21) = *(result + v25);
    if (v22 >= a6)
    {
      goto LABEL_33;
    }

    if (__OFADD__(v21, 1))
    {
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    v22 = (v23 >> 4) & 0xFFFFFFCF | (16 * (v25 & 3));
    *(a7 + v21 + 1) = *(a3 + v22);
    if (__OFADD__(v21, 2))
    {
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    v25 = (v26 >> 6) & 0xFFFFFFFFFFFFFFC3 | (4 * (v23 & 0xF));
    *(a7 + v21 + 2) = *(a3 + v25);
    v10 = v21 + 3;
    if (__OFADD__(v21, 3))
    {
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    v23 = *(a3 + v26);
    *(a7 + v10) = v23;
    v27 = __OFADD__(v21, 4);
    v21 += 4;
    if (!v27)
    {
      goto LABEL_41;
    }

    __break(1u);
  }

  *(a7 + v21) = *(result + v25);
  if (v22 < a6)
  {
    if (__OFADD__(v21, 1))
    {
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    *(a7 + v21 + 1) = *(a3 + ((v23 >> 4) & 0xFFFFFFCF | (16 * (v25 & 3))));
    v25 = v21 + 2;
    if (__OFADD__(v21, 2))
    {
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    *(a7 + v25) = *(a3 + 4 * (v23 & 0xF));
    v27 = __OFADD__(v21, 3);
    v21 += 3;
    if (v27)
    {
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    if (v10)
    {
      goto LABEL_41;
    }

    LOBYTE(v10) = 61;
    *(a7 + v21) = 61;
    v27 = __OFADD__(v21++, 1);
    if (!v27)
    {
      goto LABEL_41;
    }

    __break(1u);
  }

LABEL_33:
  if (__OFADD__(v21, 1))
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  *(a7 + v21 + 1) = *(a3 + 16 * (v25 & 3));
  v27 = __OFADD__(v21, 2);
  v21 += 2;
  if (v27)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  if (v10)
  {
LABEL_41:
    *a10 = v21;
    return result;
  }

  *(a7 + v21) = 61;
  if (!__OFADD__(v21, 1))
  {
    *(a7 + v21 + 1) = 61;
    v27 = __OFADD__(v21, 2);
    v21 += 2;
    if (!v27)
    {
      goto LABEL_41;
    }

    __break(1u);
    goto LABEL_40;
  }

LABEL_53:
  __break(1u);
  return result;
}

uint64_t static Base64.withUnsafeEncodingTablesAsBufferPointers<A>(options:_:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v5 = &off_1005BB0E8;
  }

  else
  {
    v5 = &off_1005BB328;
  }

  v9[2] = a4;
  v9[3] = v5;
  v9[4] = a2;
  v9[5] = a3;
  if (a1)
  {
    v6 = &off_1005BAFC8;
  }

  else
  {
    v6 = &off_1005BB208;
  }

  v7 = sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
  sub_1003C54EC(sub_1003C6720, v9, v6, &type metadata for UInt8, a4, v7, &protocol self-conformance witness table for Error, &v10);
}

uint64_t sub_1003C5430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v13[2] = a6;
  v13[3] = a4;
  v13[4] = a5;
  v13[5] = a1;
  v13[6] = a2;
  v11 = sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
  result = sub_1003C54EC(sub_1003C6D50, v13, a3, &type metadata for UInt8, a6, v11, &protocol self-conformance witness table for Error, &v14);
  if (v7)
  {
    *a7 = v14;
  }

  return result;
}

uint64_t sub_1003C54EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a6 - 8);
  __chkstk_darwin(a1);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1003C68AC(v14, v15, v16, v17, v18, v19, v20, v13);
  if (v8)
  {
    return (*(v11 + 32))(a8, v13, a6);
  }

  return result;
}

uint64_t sub_1003C55B4@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (a2 < 1)
  {
    goto LABEL_7;
  }

  if (__OFADD__(a2, 3))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = a3;
  v8 = result;
  v9 = 3 * ((a2 + 3) >> 2);
  v10 = sub_1004A5C64();
  v11 = v10;
  *(v10 + 16) = v9;
  if (!v8)
  {
    v16 = 0;
    v14 = v10 + 32;
    v15 = v9;
    result = sub_1003C5F58(&v14, &v16, 0, 0, v7);
    v12 = v16;
    v13 = v9 < v16;
    if (!v4)
    {
      goto LABEL_13;
    }

    if (v9 >= v16)
    {
LABEL_10:
      *(v11 + 16) = v12;
    }

LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v16 = 0;
  v14 = v10 + 32;
  v15 = v9;
  result = sub_1003C5F58(&v14, &v16, v8, a2, v7);
  v12 = v16;
  v13 = v9 < v16;
  if (v4)
  {
    if (v9 < v16)
    {
      __break(1u);
LABEL_7:
      *a4 = _swiftEmptyArrayStorage;
      return result;
    }

    goto LABEL_10;
  }

  if (v9 >= v16)
  {
    goto LABEL_14;
  }

  __break(1u);
LABEL_13:
  if (!v13)
  {
LABEL_14:
    *(v11 + 16) = v12;
    *a4 = v11;
    return result;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t static Base64._decodeChromium(from:into:length:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, char a6)
{
  v6 = a2 + 3;
  if (a2 >= 0)
  {
    v6 = a2;
  }

  v7 = a2 - (v6 & 0xFFFFFFFFFFFFFFFCLL);
  if ((a6 & 2) != 0)
  {
    if (v7 == 1)
    {
      goto LABEL_5;
    }
  }

  else if (v7 >= 1)
  {
LABEL_5:
    sub_1003C6744();
    swift_allocError();
    *v8 = 256;
    return swift_willThrow();
  }

  v10 = a2 + 3;
  if (__OFADD__(a2, 3))
  {
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  if (v10 < 0)
  {
    v10 = a2 + 6;
  }

  if (3 * (v10 >> 2) > a4)
  {
    goto LABEL_53;
  }

  v11 = (v6 >> 2) - (a2 == (v6 & 0xFFFFFFFFFFFFFFFCLL));
  v12 = &unk_1005B8E98;
  if ((a6 & 1) == 0)
  {
    v12 = &unk_1005B9F18;
  }

  v13 = &unk_1005B92B8;
  if ((a6 & 1) == 0)
  {
    v13 = &unk_1005BA338;
  }

  v14 = &unk_1005B96D8;
  if ((a6 & 1) == 0)
  {
    v14 = &unk_1005BA758;
  }

  v15 = &unk_1005B9AF8;
  if ((a6 & 1) == 0)
  {
    v15 = &unk_1005BAB78;
  }

  if (v11 < 1)
  {
    v22 = 0;
  }

  else
  {
    v16 = 0;
    v17 = (a3 + 2);
    v18 = (a1 + 3);
    v19 = v11;
    do
    {
      v20 = *(v18 - 3);
      v21 = v13[*(v18 - 2)] | v12[v20] | v14[*(v18 - 1)] | v15[*v18];
      if (v21 >= 0x1FFFFFF)
      {
        goto LABEL_50;
      }

      v18 += 4;
      *(v17 - 1) = v21;
      *v17 = BYTE2(v21);
      v17 += 3;
      v16 -= 3;
      --v19;
    }

    while (v19);
    v22 = -v16;
  }

  if ((v11 - 0x2000000000000000) >> 62 != 3)
  {
    goto LABEL_54;
  }

  v23 = 4 * v11;
  v24 = (a1 + 4 * v11);
  v20 = *v24;
  v25 = v24[1];
  if ((v23 | 2) >= a2)
  {
    v28 = 0;
    v27 = 1;
  }

  else
  {
    v26 = *(a1 + (v23 | 2));
    v27 = v26 == 61;
    if (v26 == 61)
    {
      v28 = 0;
    }

    else
    {
      v28 = *(a1 + (v23 | 2));
    }
  }

  v29 = v23 | 3;
  if (v29 >= a2)
  {
    v34 = v12[v20];
    v35 = v13[v25];
    v36 = 65;
    if (!v27)
    {
      v36 = v28;
    }

    v31 = v35 | v34 | v14[v36];
  }

  else
  {
    v30 = *(a1 + v29);
    if (v27)
    {
      v28 = 65;
    }

    v31 = v13[v25] | v12[v20] | v14[v28];
    if (v30 == 61)
    {
      LOBYTE(v32) = 0;
    }

    else
    {
      LOBYTE(v32) = v30;
    }

    if (v30 != 61)
    {
      v33 = 0;
      v32 = v32;
      goto LABEL_43;
    }
  }

  v33 = 1;
  v32 = 65;
LABEL_43:
  v37 = v15[v32] | v31;
  if (v37 > 0x1FFFFFE)
  {
LABEL_50:
    sub_1003C6744();
    swift_allocError();
    *v40 = v20;
    v40[1] = 0;
    swift_willThrow();
    goto LABEL_51;
  }

  *(a3 + v22) = v37;
  v38 = v22 + 1;
  if (__OFADD__(v22, 1))
  {
    goto LABEL_55;
  }

  if (!v27)
  {
    *(a3 + v38) = BYTE1(v37);
    v39 = __OFADD__(v38, 1);
    v38 = v22 + 2;
    if (v39)
    {
      goto LABEL_56;
    }
  }

  if ((v33 & 1) == 0)
  {
    *(a3 + v38) = BYTE2(v37);
    v39 = __OFADD__(v38++, 1);
    if (v39)
    {
LABEL_57:
      __break(1u);
    }
  }

  *a5 = v38;
LABEL_51:
}

void *sub_1003C5A78(void *result, uint64_t a2)
{
  v3 = result[2];
  if (!v3)
  {
    return _swiftEmptyArrayStorage;
  }

  if (__OFADD__(v3, 3))
  {
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v4 = a2;
  v5 = result;
  v6 = 3 * ((v3 + 3) >> 2);
  v7 = sub_1004A5C64();
  *(v7 + 16) = v6;
  v8[1] = v6;
  v9 = 0;
  v8[0] = v7 + 32;
  result = sub_1003C5F58(v8, &v9, (v5 + 4), v3, v4);
  if (v2)
  {
    if (v6 >= v9)
    {
      *(v7 + 16) = v9;
      v7 = v2;

      return v7;
    }

    goto LABEL_11;
  }

  if (v6 >= v9)
  {
    *(v7 + 16) = v9;
    return v7;
  }

LABEL_12:
  __break(1u);
  return result;
}

void sub_1003C5B5C(uint64_t *a1, uint64_t a2)
{
  v4 = a1[3];
  v3 = a1[4];
  v5 = v3 - v4;
  v6 = __OFSUB__(v3, v4);
  if (v5 >= 1)
  {
    v7 = a2;
    v8 = *a1;
    v9 = *(a1 + 10);
    v10 = *(a1 + 22);
    swift_beginAccess();
    if (v6)
    {
      __break(1u);
    }

    else if (!__OFADD__(v5, 3))
    {
      v11 = *(v8 + 24);
      v12 = (v10 | (v9 << 8)) + v4;
      v13 = 3 * ((v5 + 3) >> 2);
      v14 = sub_1004A5C64();
      *(v14 + 16) = v13;
      v15[1] = v13;
      v16 = 0;
      v15[0] = v14 + 32;
      sub_1003C5F58(v15, &v16, v11 + v12, v5, v7);
      if (!v2)
      {
        if (v13 >= v16)
        {
          *(v14 + 16) = v16;
          return;
        }

        goto LABEL_16;
      }

      if (v13 >= v16)
      {
        *(v14 + 16) = v16;

        return;
      }

LABEL_15:
      __break(1u);
LABEL_16:
      __break(1u);
      return;
    }

    __break(1u);
    goto LABEL_15;
  }
}

void *static Base64.decode<A>(bytes:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 - 8);
  __chkstk_darwin(a1);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1004A5E84();
  if (v11 < 1)
  {
    return _swiftEmptyArrayStorage;
  }

  __chkstk_darwin(v11);
  *(&v15 - 2) = a2;
  sub_10000C9C0(&unk_1005D8FF0, &unk_1004DC230);
  result = sub_1004A5AF4();
  if (!v4)
  {
    result = v16;
    if (!v16)
    {
      (*(v8 + 16))(v10, a1, a3);
      v13 = sub_1004A5CF4();
      v14 = sub_1003C5A78(v13, a2);

      return v14;
    }
  }

  return result;
}

uint64_t sub_1003C5E54@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v6 = a2 + 3;
  if (__OFADD__(a2, 3))
  {
    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v7 = a2 + 6;
  if (v6 >= 0)
  {
    v7 = a2 + 3;
  }

  if (v6 < -3)
  {
    goto LABEL_15;
  }

  v8 = a3;
  v10 = result;
  v11 = 3 * (v7 >> 2);
  if (v6 < 4)
  {
    v12 = _swiftEmptyArrayStorage;
  }

  else
  {
    v12 = sub_1004A5C64();
    v12[2] = v11;
  }

  v13[1] = v11;
  v14 = 0;
  v13[0] = (v12 + 4);
  result = sub_1003C5F58(v13, &v14, v10, a2, v8);
  if (v4)
  {
    if (v11 >= v14)
    {
      v12[2] = v14;
    }

    goto LABEL_16;
  }

  if (v11 < v14)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v12[2] = v14;
  *a4 = v12;
  return result;
}

uint64_t sub_1003C5F58(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, char a5)
{
  v5 = *a1;
  v6 = a4 + 3;
  if (a4 >= 0)
  {
    v6 = a4;
  }

  v7 = a4 - (v6 & 0xFFFFFFFFFFFFFFFCLL);
  if ((a5 & 2) != 0)
  {
    if (v7 == 1)
    {
      goto LABEL_5;
    }
  }

  else if (v7 >= 1)
  {
LABEL_5:
    sub_1003C6744();
    swift_allocError();
    *v8 = 256;
    return swift_willThrow();
  }

  v10 = a4 + 3;
  if (__OFADD__(a4, 3))
  {
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  if (v10 < 0)
  {
    v10 = a4 + 6;
  }

  if (a1[1] < 3 * (v10 >> 2))
  {
    goto LABEL_53;
  }

  v11 = (v6 >> 2) - (a4 == (v6 & 0xFFFFFFFFFFFFFFFCLL));
  v12 = &unk_1005B8E98;
  if ((a5 & 1) == 0)
  {
    v12 = &unk_1005B9F18;
  }

  v13 = &unk_1005B92B8;
  if ((a5 & 1) == 0)
  {
    v13 = &unk_1005BA338;
  }

  v14 = &unk_1005B96D8;
  if ((a5 & 1) == 0)
  {
    v14 = &unk_1005BA758;
  }

  v15 = &unk_1005B9AF8;
  if ((a5 & 1) == 0)
  {
    v15 = &unk_1005BAB78;
  }

  if (v11 < 1)
  {
    v22 = 0;
  }

  else
  {
    v16 = 0;
    v17 = (v5 + 2);
    v18 = (a3 + 3);
    v19 = v11;
    do
    {
      v20 = *(v18 - 3);
      v21 = v13[*(v18 - 2)] | v12[v20] | v14[*(v18 - 1)] | v15[*v18];
      if (v21 >= 0x1FFFFFF)
      {
        goto LABEL_50;
      }

      v18 += 4;
      *(v17 - 1) = v21;
      *v17 = BYTE2(v21);
      v17 += 3;
      v16 -= 3;
      --v19;
    }

    while (v19);
    v22 = -v16;
  }

  if ((v11 - 0x2000000000000000) >> 62 != 3)
  {
    goto LABEL_54;
  }

  v23 = 4 * v11;
  v24 = (a3 + 4 * v11);
  v20 = *v24;
  v25 = v24[1];
  if ((v23 | 2) >= a4)
  {
    v28 = 0;
    v27 = 1;
  }

  else
  {
    v26 = *(a3 + (v23 | 2));
    v27 = v26 == 61;
    if (v26 == 61)
    {
      v28 = 0;
    }

    else
    {
      v28 = *(a3 + (v23 | 2));
    }
  }

  v29 = v23 | 3;
  if (v29 >= a4)
  {
    v34 = v12[v20];
    v35 = v13[v25];
    v36 = 65;
    if (!v27)
    {
      v36 = v28;
    }

    v31 = v35 | v34 | v14[v36];
  }

  else
  {
    v30 = *(a3 + v29);
    if (v27)
    {
      v28 = 65;
    }

    v31 = v13[v25] | v12[v20] | v14[v28];
    if (v30 == 61)
    {
      LOBYTE(v32) = 0;
    }

    else
    {
      LOBYTE(v32) = v30;
    }

    if (v30 != 61)
    {
      v33 = 0;
      v32 = v32;
      goto LABEL_43;
    }
  }

  v33 = 1;
  v32 = 65;
LABEL_43:
  v37 = v15[v32] | v31;
  if (v37 > 0x1FFFFFE)
  {
LABEL_50:
    sub_1003C6744();
    swift_allocError();
    *v40 = v20;
    v40[1] = 0;
    swift_willThrow();
    goto LABEL_51;
  }

  *(v5 + v22) = v37;
  v38 = v22 + 1;
  if (__OFADD__(v22, 1))
  {
    goto LABEL_55;
  }

  if (!v27)
  {
    *(v5 + v38) = BYTE1(v37);
    v39 = __OFADD__(v38, 1);
    v38 = v22 + 2;
    if (v39)
    {
      goto LABEL_56;
    }
  }

  if ((v33 & 1) == 0)
  {
    *(v5 + v38) = BYTE2(v37);
    v39 = __OFADD__(v38++, 1);
    if (v39)
    {
LABEL_57:
      __break(1u);
    }
  }

  *a2 = v38;
LABEL_51:
}

uint64_t static Base64.withUnsafeDecodingTablesAsBufferPointers<A>(options:_:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v5 = &off_1005B9AD8;
  }

  else
  {
    v5 = &off_1005BAB58;
  }

  if (a1)
  {
    v6 = &off_1005B9298;
  }

  else
  {
    v6 = &off_1005BA318;
  }

  v11[2] = a4;
  v11[3] = v6;
  if (a1)
  {
    v7 = &off_1005B96B8;
  }

  else
  {
    v7 = &off_1005BA738;
  }

  v11[4] = v7;
  v11[5] = v5;
  v11[6] = a2;
  v11[7] = a3;
  if (a1)
  {
    v8 = &off_1005B8E78;
  }

  else
  {
    v8 = &off_1005B9EF8;
  }

  v9 = sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
  sub_1003C54EC(sub_1003C67B4, v11, v8, &type metadata for UInt32, a4, v9, &protocol self-conformance witness table for Error, &v12);
}

uint64_t sub_1003C6470(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  v14[2] = a8;
  v14[3] = a4;
  v14[4] = a5;
  v14[5] = a6;
  v14[6] = a7;
  v14[7] = a1;
  v14[8] = a2;
  v12 = sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
  result = sub_1003C54EC(sub_1003C67E8, v14, a3, &type metadata for UInt32, a8, v12, &protocol self-conformance witness table for Error, &v15);
  if (v9)
  {
    *a9 = v15;
  }

  return result;
}

uint64_t sub_1003C6528(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  v14[2] = a9;
  v14[3] = a4;
  v14[4] = a5;
  v14[5] = a6;
  v14[6] = a7;
  v14[7] = a8;
  v14[8] = a1;
  v14[9] = a2;
  v12 = sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
  result = sub_1003C54EC(sub_1003C6820, v14, a3, &type metadata for UInt32, a9, v12, &protocol self-conformance witness table for Error, &v15);
  if (v10)
  {
    *a10 = v15;
  }

  return result;
}

uint64_t sub_1003C65E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11)
{
  v15[2] = a10;
  v15[3] = a4;
  v15[4] = a5;
  v15[5] = a6;
  v15[6] = a7;
  v15[7] = a8;
  v15[8] = a9;
  v15[9] = a1;
  v15[10] = a2;
  v13 = sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
  result = sub_1003C54EC(sub_1003C685C, v15, a3, &type metadata for UInt32, a10, v13, &protocol self-conformance witness table for Error, &v16);
  if (v11)
  {
    *a11 = v16;
  }

  return result;
}

unint64_t sub_1003C6744()
{
  result = qword_1005DBFD0;
  if (!qword_1005DBFD0)
  {
    result = swift_getWitnessTable("\tV\b", &type metadata for Base64.DecodingError, v0, v1);
    atomic_store(result, &qword_1005DBFD0);
  }

  return result;
}

uint64_t sub_1003C685C(uint64_t a1, uint64_t a2, void *a3)
{
  result = (*(v3 + 24))(*(v3 + 40), *(v3 + 48), *(v3 + 56), *(v3 + 64), *(v3 + 72), *(v3 + 80), a1, a2);
  if (v4)
  {
    *a3 = v4;
  }

  return result;
}

uint64_t sub_1003C68AC(uint64_t (*a1)(unint64_t, uint64_t, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v27 = a7;
  v28 = a8;
  v29 = a1;
  v13 = *(a6 - 8);
  __chkstk_darwin(a1);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v26 - v17;
  if ((_swift_isClassOrObjCExistentialType() & 1) != 0 && (a3 < 0 || (a3 & 0x4000000000000000) != 0))
  {
    v25 = v30;
    result = sub_1003C6AFC(v29, a2, a3, a4, a5, a6, v27, v18);
    v15 = v18;
    if (v25)
    {
      return (*(v13 + 32))(v28, v15, a6);
    }
  }

  else
  {
    if (_swift_isClassOrObjCExistentialType())
    {
      v19 = ((*(*(a4 - 8) + 80) + 32) & ~*(*(a4 - 8) + 80)) + (a3 & 0xFFFFFFFFFFFFFF8);
    }

    else
    {
      v19 = a3 + ((*(*(a4 - 8) + 80) + 32) & ~*(*(a4 - 8) + 80));
    }

    if ((_swift_isClassOrObjCExistentialType() & 1) != 0 && (a3 < 0 || (a3 & 0x4000000000000000) != 0))
    {
      v22 = sub_1004A6A34();
    }

    else
    {
      isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
      v21 = a3 & 0xFFFFFFFFFFFFFF8;
      if ((isClassOrObjCExistentialType & 1) == 0)
      {
        v21 = a3;
      }

      v22 = *(v21 + 16);
    }

    v23 = v30;
    result = v29(v19, v22, v15);
    if (v23)
    {
      return (*(v13 + 32))(v28, v15, a6);
    }
  }

  return result;
}

uint64_t sub_1003C6AFC(uint64_t (*a1)(unint64_t, uint64_t, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v22 = a8;
  v11 = *(a6 - 8);
  __chkstk_darwin(a1);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1003C6C54(v14, v15);
  v17 = (*(*(a4 - 8) + 80) + 32) & ~*(*(a4 - 8) + 80);
  v18 = v16[2];

  v19 = v23;
  result = a1(v16 + v17, v18, v13);
  if (v19)
  {
    return (*(v11 + 32))(v22, v13, a6);
  }

  return result;
}

void *sub_1003C6C54(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    v2 = a1;
  }

  else
  {
    v2 = (a1 & 0xFFFFFFFFFFFFFF8);
  }

  AssociatedObject = objc_getAssociatedObject(v2, _swiftEmptyArrayStorage);
  if (AssociatedObject)
  {
    v4 = AssociatedObject;
  }

  else
  {
    objc_sync_enter(v2);
    v5 = objc_getAssociatedObject(v2, _swiftEmptyArrayStorage);
    if (v5)
    {
      v4 = v5;
      swift_retain_n();
    }

    else
    {
      v6 = sub_1004A67B4();
      swift_getWitnessTable(&protocol conformance descriptor for _ArrayBuffer<A>, v6);
      v4 = sub_1004A6DC4();

      objc_setAssociatedObject(v2, _swiftEmptyArrayStorage, v4, 1);
    }

    objc_sync_exit(v2);
  }

  return v4;
}

uint64_t sub_1003C6D50(uint64_t a1, uint64_t a2, void *a3)
{
  result = (*(v3 + 24))(*(v3 + 40), *(v3 + 48), a1, a2);
  if (v4)
  {
    *a3 = v4;
  }

  return result;
}

Swift::Void __swiftcall CircularBuffer.advanceHeadIdx(by:)(Swift::Int by)
{
  v2 = *(v1 + 8) + by;
  sub_1004A6374();
  *(v1 + 8) = (sub_1004A68C4() - 1) & v2;
}

Swift::Int __swiftcall CircularBuffer.indexAdvanced(index:by:)(Swift::Int index, Swift::Int by)
{
  v2 = by + index;
  sub_1004A6374();
  return (sub_1004A68C4() - 1) & v2;
}

Swift::Void __swiftcall CircularBuffer.advanceTailIdx(by:)(Swift::Int by)
{
  v2 = *(v1 + 16) + by;
  sub_1004A6374();
  *(v1 + 16) = (sub_1004A68C4() - 1) & v2;
}

Swift::Int __swiftcall CircularBuffer.indexBeforeHeadIdx()()
{
  v1 = v0 - 1;
  sub_1004A6374();
  return (sub_1004A68C4() - 1) & v1;
}

Swift::Int __swiftcall CircularBuffer.indexBeforeTailIdx()()
{
  v1 = v0 - 1;
  sub_1004A6374();
  return (sub_1004A68C4() - 1) & v1;
}

uint64_t static CircularBuffer.Index.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((a1 & 0xFFFFFFFFFFFFFFLL) == (a2 & 0xFFFFFFFFFFFFFFLL))
  {
    return HIBYTE(a1) & 1 ^ ((a2 & 0x100000000000000) == 0);
  }

  else
  {
    return 0;
  }
}

BOOL static CircularBuffer.Index.< infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = a1 < a2;
  if ((a2 & 0x100000000000000) != 0)
  {
    v2 = 0;
    v3 = a1 < a2;
  }

  else
  {
    v3 = 1;
  }

  if ((a1 & 0x100000000000000) != 0)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

uint64_t CircularBuffer.count.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3 - a2;
  if (a3 < a2)
  {
    sub_1004A6374();
    v3 += sub_1004A68C4();
  }

  return v3;
}

uint64_t sub_1003C70B4(unsigned int *a1, unsigned int *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(unint64_t, unint64_t, uint64_t, uint64_t))
{
  if (*(a1 + 7))
  {
    v5 = 0x100000000000000;
  }

  else
  {
    v5 = 0;
  }

  if (*(a2 + 7))
  {
    v6 = 0x100000000000000;
  }

  else
  {
    v6 = 0;
  }

  return a5(v5 | (*(a1 + 6) << 48) | (*(a1 + 2) << 32) | *a1, v6 | (*(a2 + 6) << 48) | (*(a2 + 2) << 32) | *a2, a3, a4);
}

uint64_t CircularBuffer.description.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a3;
  v33 = a2;
  v34 = a4;
  v5 = sub_1004A6374();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v7 = *(TupleTypeMetadata2 - 8);
  __chkstk_darwin(TupleTypeMetadata2);
  v9 = &v26 - v8;
  v10 = sub_1004A6374();
  __chkstk_darwin(v10 - 8);
  v12 = &v26 - v11;
  v39 = 8283;
  v40 = 0xE200000000000000;
  v27 = a1;
  v38._countAndFlagsBits = a1;
  v13 = sub_1004A6904();
  swift_getWitnessTable(&protocol conformance descriptor for ContiguousArray<A>, v13);
  sub_1004A5B14();
  v37 = v35;
  sub_1004A6A04();
  sub_1004A69D4();
  v32 = sub_1004A69F4();
  sub_1004A69E4();
  v31 = *(v7 + 48);
  if (v31(v12, 1, TupleTypeMetadata2) != 1)
  {
    v16 = *(v5 - 8);
    v17 = *(v16 + 32);
    v29 = v16 + 32;
    v30 = v17;
    v18 = (v7 + 8);
    do
    {
      v24 = *v12;
      v25 = *(TupleTypeMetadata2 + 48);
      *v9 = *v12;
      v20 = v30(&v9[v25], &v12[v25], v5);
      if (v24 == v33)
      {
        v19._countAndFlagsBits = 60;
      }

      else
      {
        if (v24 != v28)
        {
          goto LABEL_6;
        }

        v19._countAndFlagsBits = 62;
      }

      v19._object = 0xE100000000000000;
      sub_1004A5994(v19);
LABEL_6:
      __chkstk_darwin(v20);
      *(&v26 - 2) = v34;
      sub_10016BE7C(sub_1003CD058, (&v26 - 4), &type metadata for Never, &type metadata for String, v21, &v35);
      if (v36)
      {
        v22._countAndFlagsBits = v35;
      }

      else
      {
        v22._countAndFlagsBits = 8287;
      }

      if (v36)
      {
        v23 = v36;
      }

      else
      {
        v23 = 0xE200000000000000;
      }

      v22._object = v23;
      sub_1004A5994(v22);

      (*v18)(v9, TupleTypeMetadata2);
      sub_1004A69E4();
    }

    while (v31(v12, 1, TupleTypeMetadata2) != 1);
  }

  v41._countAndFlagsBits = 93;
  v41._object = 0xE100000000000000;
  sub_1004A5994(v41);
  v38._countAndFlagsBits = 0;
  v38._object = 0xE000000000000000;
  sub_1004A6724(37);

  v38._countAndFlagsBits = 0xD000000000000012;
  v38._object = 0x80000001004B06A0;
  v14 = v27;
  v35 = sub_1004A68C4();
  v42._countAndFlagsBits = sub_1004A6CE4();
  sub_1004A5994(v42);

  v43._countAndFlagsBits = 0x654C676E6972202CLL;
  v43._object = 0xEE00203A6874676ELL;
  sub_1004A5994(v43);
  v35 = CircularBuffer.count.getter(v14, v33, v28);
  v44._countAndFlagsBits = sub_1004A6CE4();
  sub_1004A5994(v44);

  v45._countAndFlagsBits = 41;
  v45._object = 0xE100000000000000;
  sub_1004A5994(v45);
  sub_1004A5994(v38);

  return v39;
}

unint64_t CircularBuffer.index(_:offsetBy:)(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = a2 + a1;
  sub_1004A6374();
  v9 = sub_1004A68C4() - 1;
  result = CircularBuffer.count.getter(a3, a4, a5);
  v11 = v9 & v8;
  if ((v9 & v8) < 0 != v12)
  {
    __break(1u);
  }

  else if (!HIDWORD(v11))
  {
    return v11 | ((v11 >= a4) << 56) | 0xFFFFFF00000000;
  }

  __break(1u);
  return result;
}

uint64_t CircularBuffer.subscript.getter@<X0>(uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v6 = sub_1004A6374();
  __chkstk_darwin(v6);
  v8 = &v11 - v7;
  sub_1004A6914();
  v9 = *(a3 - 8);
  result = (*(v9 + 48))(v8, 1, a3);
  if (result != 1)
  {
    return (*(v9 + 32))(a4, v8, a3);
  }

  __break(1u);
  return result;
}

uint64_t CircularBuffer.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1003CD228(a1, a2, a3);
  v5 = *(*(*(a3 + 16) - 8) + 8);

  return v5(a1);
}

{
  sub_1003CD6EC(a1, a2, a3);
  v5 = *(*(*(a3 + 16) - 8) + 8);

  return v5(a1);
}

void (*CircularBuffer.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x38uLL);
  }

  v8 = v7;
  *a1 = v7;
  v7[1] = a3;
  v7[2] = v3;
  *v7 = a2;
  v9 = *(a3 + 16);
  v7[3] = v9;
  v10 = *(v9 - 8);
  v7[4] = v10;
  v11 = *(v10 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v7[5] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v7[5] = malloc(*(v10 + 64));
    v12 = malloc(v11);
  }

  v8[6] = v12;
  CircularBuffer.subscript.getter(v9, v12);
  return sub_1003C7958;
}

{
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x38uLL);
  }

  v8 = v7;
  *a1 = v7;
  v7[1] = a3;
  v7[2] = v3;
  *v7 = a2;
  v9 = *(a3 + 16);
  v7[3] = v9;
  v10 = *(v9 - 8);
  v7[4] = v10;
  v11 = *(v10 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v7[5] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v7[5] = malloc(*(v10 + 64));
    v12 = malloc(v11);
  }

  v8[6] = v12;
  CircularBuffer.subscript.getter(a2, *v3, *(v3 + 8), *(v3 + 16), v9, v12);
  return sub_1003CB224;
}

void sub_1003C7958(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v4 = (*a1)[6];
  v5 = (*a1)[3];
  v6 = (*a1)[4];
  v7 = (*a1)[1];
  v8 = **a1;
  if (a2)
  {
    (*(v6 + 16))((*a1)[5], v4, v5);
    sub_1003CD228(v3, v8, v7);
    v9 = *(v6 + 8);
    v9(v3, v5);
    v9(v4, v5);
  }

  else
  {
    sub_1003CD228((*a1)[6], v8, v7);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

unint64_t CircularBuffer.startIndex.getter(uint64_t a1, unint64_t a2, uint64_t a3)
{
  result = CircularBuffer.count.getter(a1, a2, a3);
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(a2))
  {
    return a2 | 0x1FFFFFF00000000;
  }

  __break(1u);
  return result;
}

unint64_t CircularBuffer.endIndex.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = CircularBuffer.count.getter(a1, a2, a3);
  if (a3 < 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(a3))
  {
    return a3 | ((a3 >= a2) << 56) | 0xFFFFFF00000000;
  }

  __break(1u);
  return result;
}

uint64_t CircularBuffer.distance(from:to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1004A6374();
  v5 = sub_1004A68C4();
  if ((a1 & 0x100000000000000) != 0)
  {
    if ((a2 & 0x100000000000000) != 0)
    {
      return a2 - a1;
    }

    else
    {
      return v5 - a1 + a2;
    }
  }

  else if ((a2 & 0x100000000000000) != 0)
  {
    v7 = a1 - a2 + v5;
    result = -v7;
    if (__OFSUB__(0, v7))
    {
      __break(1u);
    }
  }

  else
  {
    return a2 - a1;
  }

  return result;
}

uint64_t CircularBuffer._copyContents(initializing:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v48 = a7;
  v49 = a1;
  v12 = sub_1004A6374();
  __chkstk_darwin(v12);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v46 - v16;
  __chkstk_darwin(v18);
  v20 = &v46 - v19;
  v21 = a3;
  result = CircularBuffer.count.getter(a3, a4, a5);
  if (result > a2)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  result = sub_1004A6394();
  if (!result)
  {

    v30 = CircularBuffer.startIndex.getter(v29, a4, a5);
    result = 0;
LABEL_22:
    v45 = v48;
    *v48 = a3;
    v45[1] = a4;
    v45[2] = a5;
    *(v45 + 6) = v30;
    *(v45 + 14) = WORD2(v30);
    *(v45 + 30) = BYTE6(v30);
    *(v45 + 31) = HIBYTE(v30) != 0;
    v45[4] = result;
    return result;
  }

  v23 = result;
  v49 = a5;
  v47 = a4;
  if (a5 >= a4)
  {
    if (a4 != a5)
    {
      v31 = v47;
      do
      {
        sub_1004A6914();
        v32 = *(a6 - 8);
        result = (*(v32 + 48))(v20, 1, a6);
        if (result == 1)
        {
          goto LABEL_28;
        }

        ++v31;
        (*(v32 + 32))(v23, v20, a6);
        v23 += *(v32 + 72);
        a5 = v49;
      }

      while (v49 != v31);
    }

LABEL_20:
    v33 = v21;
    v34 = v21;
    v35 = v47;
    v36 = CircularBuffer.endIndex.getter(v34, v47, a5);
    v37 = a5;
    v54 = v36;
    v55 = WORD2(v36);
    v56 = BYTE6(v36);
    v57 = HIBYTE(v36) != 0;
    v38 = CircularBuffer.endIndex.getter(v33, v35, a5);
    v50 = v38;
    v51 = WORD2(v38);
    v52 = BYTE6(v38);
    v53 = HIBYTE(v38) != 0;
    v41 = type metadata accessor for CircularBuffer.Index(0, a6, v39, v40);
    swift_getWitnessTable(protocol conformance descriptor for CircularBuffer<A>.Index, v41);
    result = sub_1004A5684();
    if (result)
    {
      a3 = sub_1003CD0BC(v36 & 0xFFFFFFFFFFFFFFLL | ((HIBYTE(v36) != 0) << 56), v38 & 0xFFFFFFFFFFFFFFLL | ((HIBYTE(v38) != 0) << 56), v33, v35, a5);
      a4 = v42;
      a5 = v43;
      v44 = swift_retain_n();
      v30 = CircularBuffer.startIndex.getter(v44, a4, a5);

      result = CircularBuffer.count.getter(v33, v35, v37);
      goto LABEL_22;
    }

    goto LABEL_24;
  }

  v24 = *(a3 + 16);
  if (v24 >= a4)
  {
    if (v24 != a4)
    {
      v25 = v47;
      do
      {
        sub_1004A6914();
        v26 = *(a6 - 8);
        result = (*(v26 + 48))(v17, 1, a6);
        if (result == 1)
        {
          goto LABEL_29;
        }

        ++v25;
        result = (*(v26 + 32))(v23, v17, a6);
        v23 += *(v26 + 72);
      }

      while (v24 != v25);
    }

    a5 = v49;
    if (v49 < 0)
    {
      goto LABEL_26;
    }

    if (v49)
    {
      v27 = 0;
      while (1)
      {
        sub_1004A6914();
        v28 = *(a6 - 8);
        result = (*(v28 + 48))(v14, 1, a6);
        if (result == 1)
        {
          goto LABEL_27;
        }

        ++v27;
        (*(v28 + 32))(v23, v14, a6);
        v23 += *(v28 + 72);
        a5 = v49;
        if (v49 == v27)
        {
          goto LABEL_20;
        }
      }
    }

    goto LABEL_20;
  }

LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

unint64_t sub_1003C80C4@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void, void, void, void)@<X2>, uint64_t a3@<X8>)
{
  result = a2(*v3, v3[1], v3[2], *(a1 + 16));
  *a3 = result;
  *(a3 + 4) = WORD2(result);
  *(a3 + 6) = BYTE6(result);
  *(a3 + 7) = HIBYTE(result) != 0;
  return result;
}

uint64_t (*sub_1003C8124(uint64_t **a1, unsigned int *a2, uint64_t a3))()
{
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x28uLL);
  }

  *a1 = v7;
  v7[4] = sub_1003C8220(v7, *a2, *v3, v3[1], v3[2], *(a3 + 16));
  return sub_1003C81D8;
}

void sub_1003C81D8(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t (*sub_1003C8220(uint64_t *a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6))()
{
  v8 = *(a6 - 8);
  *a1 = a6;
  a1[1] = v8;
  if (&_swift_coroFrameAlloc)
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(*(v8 + 64));
  }

  a1[2] = v9;
  CircularBuffer.subscript.getter(a6, v9);
  return sub_1003C82F4;
}

void sub_1003C82F4(void *a1)
{
  v1 = a1[2];
  (*(a1[1] + 8))(v1, *a1);

  free(v1);
}

uint64_t sub_1003C8340@<X0>(unsigned int *a1@<X0>, uint64_t *a3@<X8>)
{
  v5 = 0x100000000000000;
  if (*(a1 + 7))
  {
    v6 = 0x100000000000000;
  }

  else
  {
    v6 = 0;
  }

  if ((*(a1 + 15) & 1) == 0)
  {
    v5 = 0;
  }

  *a3 = sub_1003CD0BC(*a1 | (*(a1 + 2) << 32) | (*(a1 + 6) << 48) | v6, a1[2] | (*(a1 + 6) << 32) | (*(a1 + 14) << 48) | v5, *v3, *(v3 + 8), *(v3 + 16));
  a3[1] = v7;
  a3[2] = v8;
}

uint64_t sub_1003C843C(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  sub_1003CD228(a1, *a2, a3);
  v5 = *(*(*(a3 + 16) - 8) + 8);

  return v5(a1);
}

void (*sub_1003C84D0(void *a1, uint64_t a2, uint64_t a3))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x38uLL);
  }

  v8 = v7;
  *a1 = v7;
  *v7 = v3;
  v7[1] = a3;
  v9 = *(a3 + 16);
  v7[2] = v9;
  v10 = *(v9 - 8);
  v7[3] = v10;
  v11 = *(v10 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v7[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v7[4] = malloc(*(v10 + 64));
    v12 = malloc(v11);
  }

  v8[5] = v12;
  *(v8 + 12) = *a2;
  *(v8 + 26) = *(a2 + 4);
  *(v8 + 54) = *(a2 + 6);
  *(v8 + 55) = *(a2 + 7);
  CircularBuffer.subscript.getter(v9, v12);
  return sub_1003C8628;
}

void sub_1003C8628(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  v4 = *(*a1 + 32);
  v5 = *(*a1 + 40);
  v6 = *(*a1 + 16);
  v7 = *(*a1 + 24);
  v8 = *(*a1 + 8);
  if (a2)
  {
    (*(v7 + 16))(*(*a1 + 32), v5, v6);
    sub_1003CD228(v4, v3, v8);
    v9 = *(v7 + 8);
    v9(v4, v6);
    v9(v5, v6);
  }

  else
  {
    sub_1003CD228(*(*a1 + 40), v3, v8);
    (*(v7 + 8))(v5, v6);
  }

  free(v5);
  free(v4);

  free(v2);
}

uint64_t sub_1003C8748(uint64_t *a1, unsigned int *a2, void *a3)
{
  v3 = 0x100000000000000;
  if (*(a2 + 7))
  {
    v4 = 0x100000000000000;
  }

  else
  {
    v4 = 0;
  }

  if ((*(a2 + 15) & 1) == 0)
  {
    v3 = 0;
  }

  sub_1003CD4C0(*a1, a1[1], a1[2], *a2 | (*(a2 + 2) << 32) | (*(a2 + 6) << 48) | v4, a2[2] | (*(a2 + 6) << 32) | (*(a2 + 14) << 48) | v3, a3);
}

uint64_t CircularBuffer.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  sub_1003CD4C0(a1, a2, a3, a4 & 0x1FFFFFFFFFFFFFFLL, a5 & 0x1FFFFFFFFFFFFFFLL, a6);
}

void (*sub_1003C881C(uint64_t *a1, unsigned int *a2, uint64_t a3))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x38uLL);
  }

  v8 = v7;
  *a1 = v7;
  *(v7 + 24) = v3;
  *(v7 + 32) = a3;
  v9 = *a2;
  v10 = *(a2 + 2);
  *(v7 + 48) = v10;
  v11 = *(a2 + 6);
  *(v7 + 52) = v11;
  v12 = *(a2 + 7);
  *(v7 + 53) = v12;
  v13 = a2[2];
  *(v7 + 40) = v9;
  *(v7 + 44) = v13;
  v14 = *(a2 + 6);
  *(v7 + 50) = v14;
  v15 = *(a2 + 14);
  v16 = v9 | (v10 << 32);
  *(v7 + 54) = v15;
  v17 = *(a2 + 15);
  v18 = v16 | (v11 << 48);
  *(v7 + 55) = v17;
  if (v12)
  {
    v19 = 0x100000000000000;
  }

  else
  {
    v19 = 0;
  }

  v20 = v13 | (v14 << 32) | (v15 << 48);
  if (v17)
  {
    v21 = 0x100000000000000;
  }

  else
  {
    v21 = 0;
  }

  *v7 = sub_1003CD0BC(v18 | v19, v20 | v21, *v3, *(v3 + 8), *(v3 + 16));
  *(v8 + 8) = v22;
  *(v8 + 16) = v23;

  return sub_1003C8924;
}

void sub_1003C8924(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[1];
  v4 = *(*a1 + 25);
  v5 = *(*a1 + 24);
  v6 = (*a1)[4];
  v7 = (*a1)[2];
  if (*(*a1 + 53))
  {
    v8 = 0x100000000000000;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8 | (*(*a1 + 52) << 48) | *(*a1 + 10);
  v10 = v9 | (v5 << 32);
  if (*(*a1 + 55))
  {
    v11 = 0x100000000000000;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11 | (*(*a1 + 54) << 48) | *(*a1 + 11);
  v13 = v12 | (v4 << 32);
  v14 = **a1;
  if (a2)
  {

    sub_1003CD4C0(v15, v3, v7, v10, v13, v6);
  }

  else
  {
    sub_1003CD4C0(v14, v3, v7, v9 | (v5 << 32), v12 | (v4 << 32), v6);
  }

  free(v2);
}

void (*CircularBuffer.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0x38uLL);
  }

  v10 = v9;
  *a1 = v9;
  v9[5] = a4;
  v9[6] = v4;
  v9[3] = a2;
  v9[4] = a3;
  *v9 = sub_1003CD0BC(a2 & 0x1FFFFFFFFFFFFFFLL, a3 & 0x1FFFFFFFFFFFFFFLL, *v4, *(v4 + 8), *(v4 + 16));
  v10[1] = v11;
  v10[2] = v12;

  return sub_1003C8AC8;
}

void sub_1003C8AC8(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[1];
  v4 = (*a1)[5];
  v6 = (*a1)[3];
  v5 = (*a1)[4];
  v7 = (*a1)[2];
  if (a2)
  {

    sub_1003CD4C0(v8, v3, v7, v6 & 0x1FFFFFFFFFFFFFFLL, v5 & 0x1FFFFFFFFFFFFFFLL, v4);
  }

  else
  {
    sub_1003CD4C0(**a1, v3, v7, v6 & 0x1FFFFFFFFFFFFFFLL, v5 & 0x1FFFFFFFFFFFFFFLL, v4);
  }

  free(v2);
}

uint64_t sub_1003C8C00@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;

  v7 = CircularBuffer.startIndex.getter(v6, v4, v5);

  *(a1 + 24) = v7;
  *(a1 + 28) = WORD2(v7);
  *(a1 + 30) = BYTE6(v7);
  *(a1 + 31) = HIBYTE(v7) != 0;
  return result;
}

uint64_t sub_1003C8C8C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for CircularBuffer<A>, a1);

  return Collection.underestimatedCount.getter(a1, WitnessTable);
}

uint64_t sub_1003C8CE0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for CircularBuffer<A>, a1);
  v4 = sub_100458B50(v1, a1, WitnessTable);

  return v4;
}

uint64_t sub_1003C8D3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CircularBuffer._copyContents(initializing:)(a2, a3, *v4, v4[1], v4[2], *(a4 + 16), &v14);
  v13 = v14;
  v6 = v15;
  v7 = v16;
  v8 = v17;
  v9 = v18;
  v10 = v19;
  v11 = v20;

  *a1 = v13;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 28) = v8;
  *(a1 + 30) = v9;
  *(a1 + 31) = v10;
  return v11;
}

void CircularBuffer.replaceSubrange<A>(_:with:)(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v7 = v6;
  v138 = a3;
  v10 = a1;
  v11 = HIDWORD(a1);
  v12 = HIWORD(a1);
  v13 = HIBYTE(a1);
  v158 = HIBYTE(a1);
  v141 = a2;
  v157 = HIBYTE(a2);
  v132 = a4;
  v14 = *(a4 + 16);
  v15 = sub_1004A6374();
  v113 = sub_1004A7134();
  __chkstk_darwin(v113);
  v112 = &v112 - v16;
  v140 = a6;
  v17 = *(a6 + 8);
  v124 = sub_1004A6744();
  v123 = *(v124 - 8);
  __chkstk_darwin(v124);
  v121 = &v112 - v18;
  v122 = sub_1004A6924();
  __chkstk_darwin(v122);
  v120 = &v112 - v19;
  v135 = v15;
  v142 = *(v15 - 8);
  __chkstk_darwin(v20);
  v129 = &v112 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v128 = &v112 - v23;
  v127 = *(a5 - 1);
  __chkstk_darwin(v24);
  v126 = &v112 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = v17;
  v139 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v125 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v143 = &v112 - v26;
  v29 = type metadata accessor for CircularBuffer.Index(0, v14, v27, v28);
  LODWORD(v153) = v10;
  v145 = v11;
  WORD2(v153) = v11;
  v30 = v12;
  BYTE6(v153) = v12;
  HIBYTE(v153) = HIBYTE(v10) & 1;
  v31 = *v7;
  v32 = v7[1];
  v134 = v7;
  v33 = v7[2];
  v34 = v31;
  v35 = v14;
  v36 = CircularBuffer.startIndex.getter(v31, v32, v33);
  LODWORD(v146) = v36;
  WORD2(v146) = WORD2(v36);
  BYTE6(v146) = BYTE6(v36);
  HIBYTE(v146) = HIBYTE(v36) != 0;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for CircularBuffer<A>.Index, v29);
  if ((sub_1004A5674() & 1) == 0)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v119 = HIBYTE(v10) & 1;
  v38 = v157;
  LODWORD(v153) = v141;
  v117 = HIDWORD(v141);
  WORD2(v153) = WORD2(v141);
  v118 = HIWORD(v141);
  BYTE6(v153) = BYTE6(v141);
  HIBYTE(v153) = v157;
  v137 = v32;
  v39 = v32;
  v40 = v35;
  v41 = CircularBuffer.endIndex.getter(v34, v39, v33);
  LODWORD(v146) = v41;
  WORD2(v146) = WORD2(v41);
  BYTE6(v146) = BYTE6(v41);
  HIBYTE(v146) = HIBYTE(v41) != 0;
  if ((sub_1004A5684() & 1) == 0)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v42 = v33;
  v130 = WitnessTable;
  v131 = v29;
  if (v13)
  {
    v43 = 0x100000000000000;
  }

  else
  {
    v43 = 0;
  }

  v44 = v43 & 0xFF00000000000000 | v10 & 0xFFFFFFFFFFFFFFLL;
  v116 = v38;
  if (v38)
  {
    v45 = 0x100000000000000;
  }

  else
  {
    v45 = 0;
  }

  v115 = v44;
  v114 = v45 & 0xFF00000000000000 | v141 & 0xFFFFFFFFFFFFFFLL;
  v46 = CircularBuffer.distance(from:to:)(v44, v114, v34);
  v47 = v138;
  v48 = v139;
  v49 = v40;
  if (v46 == sub_1004A5E84())
  {
    (*(v127 + 16))(v126, v47, v48);
    sub_1004A5AC4();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v51 = v128;
    v141 = AssociatedConformanceWitness;
    sub_1004A6414();
    v52 = v51;
    v53 = v129;
    v54 = *(v40 - 1);
    v55 = *(v54 + 48);
    v140 = v54 + 48;
    v139 = v55;
    v56 = (v55)(v52, 1, v40);
    v57 = v134;
    v58 = v135;
    if (v56 == 1)
    {
LABEL_14:
      (*(v125 + 8))(v143, AssociatedTypeWitness);
      return;
    }

    v136 = v142 + 40;
    v137 = *(v54 + 32);
    v138 = v54 + 32;
    while (1)
    {
      v137(v53, v52, v49);
      (*(v54 + 56))(v53, 0, 1, v49);
      sub_1004A6904();
      sub_1004A6874();
      if (*(*v57 + 16) <= v10)
      {
        break;
      }

      (*(v142 + 40))(*v57 + ((*(v142 + 80) + 32) & ~*(v142 + 80)) + *(v142 + 72) * v10, v53, v58);
      v59 = CircularBuffer.index(_:offsetBy:)(v10, 1, *v57, v57[1], v57[2]);
      v10 = v59 | ((HIBYTE(v59) != 0) << 56);
      v145 = HIDWORD(v10);
      sub_1004A6414();
      if ((v139)(v52, 1, v49) == 1)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
    goto LABEL_40;
  }

  v136 = v34;
  v60 = v34;
  v61 = v137;
  AssociatedTypeWitness = v42;
  v143 = v40;
  if (v46 == CircularBuffer.count.getter(v60, v137, v42) && (sub_1004A5E94() & 1) != 0)
  {
    v62 = 0x100000000000000;
    if (v158)
    {
      v63 = 0x100000000000000;
    }

    else
    {
      v63 = 0;
    }

    if (!v157)
    {
      v62 = 0;
    }

    CircularBuffer.removeSubrange(_:)(v63 | v10 & 0xFFFFFFFFFFFFFFLL, v62 | v141 & 0xFFFFFFFFFFFFFFLL, v132);
  }

  else
  {
    sub_1004A5C54();
    v156 = sub_1004A6844();
    v64 = CircularBuffer.count.getter(v136, v61, AssociatedTypeWitness);
    v65 = sub_1004A5E84();
    v66 = v64 + v65;
    if (__OFADD__(v64, v65))
    {
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    v67 = __OFSUB__(v66, v46);
    v68 = v66 - v46;
    if (v67)
    {
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    v69 = v68 + 1;
    if (__OFADD__(v68, 1))
    {
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    v70 = v143;
    sub_1004A6374();
    v71 = sub_1004A68C4();
    if (v69)
    {
      v72 = __clz(v69 - 1);
      v73 = v132;
      v74 = v137;
      v75 = v145;
      if (v72)
      {
        v72 = 1 << -v72;
      }

      v76 = v136;
    }

    else
    {
      v72 = 1;
      v73 = v132;
      v76 = v136;
      v74 = v137;
      v75 = v145;
    }

    if (v72 <= v71)
    {
      v77 = v71;
    }

    else
    {
      v77 = v72;
    }

    v78 = sub_1004A6904();
    v128 = v77;
    v145 = v78;
    sub_1004A6854(v77);
    v79 = CircularBuffer.startIndex.getter(v76, v74, AssociatedTypeWitness);
    LODWORD(v153) = v79;
    WORD2(v153) = WORD2(v79);
    BYTE6(v153) = BYTE6(v79);
    HIBYTE(v153) = HIBYTE(v79) != 0;
    LODWORD(v146) = v10;
    WORD2(v146) = v75;
    BYTE6(v146) = v30;
    HIBYTE(v146) = v119;
    if ((sub_1004A5684() & 1) == 0)
    {
      goto LABEL_45;
    }

    v146 = sub_1003CD0BC(v79 & 0xFFFFFFFFFFFFFFLL | ((HIBYTE(v79) != 0) << 56), v115, v76, v74, AssociatedTypeWitness);
    *&v147 = v80;
    *(&v147 + 1) = v81;
    v82 = swift_getWitnessTable("\th\b", v73);
    sub_1004A5B44();
    v149 = v151;
    v150 = v152;
    v83 = swift_allocObject();
    v84 = v139;
    v83[2] = v70;
    v83[3] = v84;
    v85 = v140;
    v83[4] = v140;
    v86 = swift_allocObject();
    v86[2] = v70;
    v86[3] = v84;
    v86[4] = v85;
    v86[5] = sub_1003CDBA0;
    v86[6] = v83;
    v87 = sub_1004A6744();
    v88 = swift_getWitnessTable(&protocol conformance descriptor for LazySequence<A>, v87);
    v126 = v87;
    v89 = v135;
    v125 = v88;
    sub_1004A6AD4();

    v146 = v153;
    v147 = v154;
    v148 = v155;
    v127 = v82;
    v90 = sub_1004A6924();
    v91 = swift_getWitnessTable(&protocol conformance descriptor for LazyMapSequence<A, B>, v90);
    v92 = v136;
    v119 = v90;
    v115 = v91;
    sub_1004A68D4();
    v93 = v121;
    sub_1004A5B44();
    v94 = swift_allocObject();
    v94[2] = v70;
    v94[3] = v84;
    v94[4] = v85;
    v95 = swift_allocObject();
    v95[2] = v70;
    v95[3] = v84;
    v95[4] = v85;
    v95[5] = sub_1003CD600;
    v95[6] = v94;
    v96 = v124;
    swift_getWitnessTable(&protocol conformance descriptor for LazySequence<A>, v124);
    sub_1004A6AD4();

    (*(v123 + 8))(v93, v96);
    swift_getWitnessTable(&protocol conformance descriptor for LazyMapSequence<A, B>, v122);
    sub_1004A68D4();
    LODWORD(v153) = v141;
    WORD2(v153) = v117;
    BYTE6(v153) = v118;
    HIBYTE(v153) = v116;
    v97 = v137;
    v98 = CircularBuffer.endIndex.getter(v92, v137, AssociatedTypeWitness);
    LODWORD(v146) = v98;
    WORD2(v146) = WORD2(v98);
    BYTE6(v146) = BYTE6(v98);
    HIBYTE(v146) = HIBYTE(v98) != 0;
    if ((sub_1004A5684() & 1) == 0)
    {
LABEL_46:
      __break(1u);
      return;
    }

    v99 = v97;
    v100 = v89;
    v146 = sub_1003CD0BC(v114, v98 & 0xFFFFFFFFFFFFFFLL | ((HIBYTE(v98) != 0) << 56), v92, v99, AssociatedTypeWitness);
    *&v147 = v101;
    *(&v147 + 1) = v102;
    sub_1004A5B44();
    v149 = v151;
    v150 = v152;
    v103 = swift_allocObject();
    v104 = v139;
    v103[2] = v70;
    v103[3] = v104;
    v105 = v140;
    v103[4] = v140;
    v106 = swift_allocObject();
    v106[2] = v70;
    v106[3] = v104;
    v106[4] = v105;
    v106[5] = sub_1003CDBA0;
    v106[6] = v103;
    sub_1004A6AD4();

    v146 = v153;
    v147 = v154;
    v148 = v155;
    sub_1004A68D4();
    v107 = &v128[-sub_1004A68C4()];
    if (v107 >= 1)
    {
      v108 = v129;
      (*(*(v70 - 1) + 56))(v129, 1, 1, v70);
      sub_1004A6804();
      (*(v142 + 8))(v108, v100);
      swift_getWitnessTable(&protocol conformance descriptor for Repeated<A>, v113);
      sub_1004A68D4();
    }

    v109 = v156;

    v110 = v134;
    *v134 = v109;
    v110[1] = 0;
    v111 = sub_1004A68C4();

    v110[2] = v111 - v107;
  }
}

unint64_t sub_1003C9EAC@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(unint64_t, void, void, void, void)@<X3>, uint64_t a4@<X8>)
{
  v6 = 0x100000000000000;
  if (!*(a1 + 7))
  {
    v6 = 0;
  }

  result = a3(v6 | (*(a1 + 6) << 48) | (*(a1 + 2) << 32) | *a1, *v4, v4[1], v4[2], *(a2 + 16));
  *a4 = result;
  *(a4 + 4) = WORD2(result);
  *(a4 + 6) = BYTE6(result);
  *(a4 + 7) = HIBYTE(result) != 0;
  return result;
}

unint64_t sub_1003C9F4C(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(unint64_t, void, void, void, void))
{
  v6 = 0x100000000000000;
  if (!*(a1 + 7))
  {
    v6 = 0;
  }

  result = a4(v6 | (*(a1 + 6) << 48) | (*(a1 + 2) << 32) | *a1, *v4, v4[1], v4[2], *(a2 + 16));
  *a1 = result;
  *(a1 + 2) = WORD2(result);
  *(a1 + 6) = BYTE6(result);
  *(a1 + 7) = HIBYTE(result) != 0;
  return result;
}

unint64_t sub_1003C9FD4@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = CircularBuffer.index(_:offsetBy:)(*a1, a2, *v3, v3[1], v3[2]);
  *a3 = result;
  *(a3 + 4) = WORD2(result);
  *(a3 + 6) = BYTE6(result);
  *(a3 + 7) = HIBYTE(result) != 0;
  return result;
}

uint64_t sub_1003CA054(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getWitnessTable(protocol conformance descriptor for CircularBuffer<A>, a4);

  return sub_1004A5E04();
}

uint64_t sub_1003CA0D8(unsigned int *a1, unsigned int *a2)
{
  if (*(a1 + 7))
  {
    v3 = 0x100000000000000;
  }

  else
  {
    v3 = 0;
  }

  if (*(a2 + 7))
  {
    v4 = 0x100000000000000;
  }

  else
  {
    v4 = 0;
  }

  return CircularBuffer.distance(from:to:)(v3 | (*(a1 + 6) << 48) | (*(a1 + 2) << 32) | *a1, v4 | (*(a2 + 6) << 48) | (*(a2 + 2) << 32) | *a2, *v2);
}

void CircularBuffer.init(initialCapacity:)(unint64_t a1, uint64_t a2)
{
  v4 = sub_1004A6374();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v12 - v7;
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (HIDWORD(a1))
  {
LABEL_11:
    __break(1u);
    return;
  }

  v9 = __clz(a1 - 1);
  if (v9)
  {
    v10 = (1 << -v9);
  }

  else
  {
    v10 = 0;
  }

  if (a1)
  {
    v11 = v10;
  }

  else
  {
    v11 = 1;
  }

  (*(*(a2 - 8) + 56))(v8, 1, 1, a2, v6);
  sub_1003CD3BC(v8, v11, v4);
  (*(v5 + 8))(v8, v4);
}

void CircularBuffer.append(_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = sub_1004A6374();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v14 - v8;
  v10 = v2[2];
  v11 = *(v4 - 8);
  (*(v11 + 16))(&v14 - v8, a1, v4, v7);
  (*(v11 + 56))(v9, 0, 1, v4);
  sub_1004A6904();
  sub_1004A6874();
  if ((v10 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (*(*v2 + 16) <= v10)
  {
LABEL_7:
    __break(1u);
    return;
  }

  (*(v6 + 40))(*v2 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v10, v9, v5);
  v12 = v2[2] + 1;
  v13 = (sub_1004A68C4() - 1) & v12;
  v2[2] = v13;
  if (v2[1] == v13)
  {
    CircularBuffer._doubleCapacity()();
  }
}

Swift::Void __swiftcall CircularBuffer._doubleCapacity()()
{
  v2 = v1;
  v3 = *(v0 + 16);
  v4 = sub_1004A6374();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v24 = v18 - v6;
  v7 = sub_1004A7134();
  __chkstk_darwin(v7);
  v9 = v18 - v8;
  v11 = *v2;
  v10 = v2[1];
  v23 = v2[2];
  v12 = 2 * sub_1004A68C4();
  sub_1004A5C54();
  v29 = sub_1004A6844();
  if (v12 < 1)
  {
    __break(1u);
  }

  else
  {
    v13 = sub_1004A6904();
    v20 = v9;
    v14 = v13;
    v22 = v7;
    v18[1] = v12;
    sub_1004A6854(v12);
    *&v25 = v10;
    sub_10000C9C0(&qword_1005DBFD8, &qword_1005007B0);
    v19 = v5;
    v18[0] = v3;
    swift_getWitnessTable(&protocol conformance descriptor for ContiguousArray<A>, v14);
    v21 = v11;
    sub_10000DF44(&qword_1005DBFE0, &qword_1005DBFD8, &qword_1005007B0, &protocol conformance descriptor for PartialRangeFrom<A>);
    sub_1004A56C4();
    v25 = v27;
    v26 = v28;
    v15 = sub_1004A64F4();
    swift_getWitnessTable(&protocol conformance descriptor for ArraySlice<A>, v15);
    sub_1004A68D4();
    v16 = v24;
    *&v25 = v23;
    sub_10000C9C0(&qword_1005DBFE8, &qword_1005007B8);
    sub_10000DF44(qword_1005DBFF0, &qword_1005DBFE8, &qword_1005007B8, &protocol conformance descriptor for PartialRangeUpTo<A>);
    sub_1004A56C4();
    v25 = v27;
    v26 = v28;
    sub_1004A68D4();
    v17 = sub_1004A68C4();
    (*(*(v18[0] - 8) + 56))(v16, 1, 1);
    sub_1004A6804();
    (*(v19 + 8))(v16, v4);
    swift_getWitnessTable(&protocol conformance descriptor for Repeated<A>, v22);
    sub_1004A68D4();

    v2[1] = 0;
    v2[2] = v17;
    *v2 = v29;
  }
}

void CircularBuffer.prepend(_:)(uint64_t a1, uint64_t a2)
{
  v17[1] = a2;
  v4 = *(a2 + 16);
  v5 = sub_1004A6374();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v17 - v7;
  v9 = v2[2];
  v10 = v2[1] - 1;
  v11 = sub_1004A68C4() - 1;
  v12 = *(v4 - 8);
  (*(v12 + 16))(v8, a1, v4);
  (*(v12 + 56))(v8, 0, 1, v4);
  sub_1004A6904();
  sub_1004A6874();
  v13 = v11 & v10;
  if ((v11 & v10) < 0 != v14)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (*(*v2 + 16) <= v13)
  {
LABEL_7:
    __break(1u);
    return;
  }

  (*(v6 + 40))(*v2 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v13, v8, v5);
  v15 = v2[1] - 1;
  v16 = (sub_1004A68C4() - 1) & v15;
  v2[1] = v16;
  if (v16 == v9)
  {
    CircularBuffer._doubleCapacity()();
  }
}

uint64_t CircularBuffer.capacity.getter(uint64_t a1)
{
  sub_1004A6374();

  return sub_1004A68C4();
}

Swift::Bool __swiftcall CircularBuffer.verifyInvariants()()
{
  v3 = v2;
  v4 = v1;
  v5 = v0;
  v6 = sub_1004A6374();
  __chkstk_darwin(v6);
  v9 = &v15 - v8;
  if (v5 == v4)
  {
    return 1;
  }

  v11 = (v7 + 8);
  do
  {
    sub_1004A6914();
    v12 = (*(*(v3 - 8) + 48))(v9, 1, v3);
    (*v11)(v9, v6);
    v13 = v12 == 1;
    v10 = v12 != 1;
    if (v13)
    {
      break;
    }

    v5 = (sub_1004A68C4() - 1) & (v5 + 1);
  }

  while (v5 != v4);
  return v10;
}

Swift::Void __swiftcall CircularBuffer._resizeAndFlatten(newCapacity:)(Swift::Int newCapacity)
{
  v3 = v2;
  v5 = *(v1 + 16);
  v6 = sub_1004A6374();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v24 - v8;
  v10 = sub_1004A7134();
  __chkstk_darwin(v10);
  v12 = v24 - v11;
  sub_1004A5C54();
  v33 = sub_1004A6844();
  if (newCapacity < 1)
  {
    __break(1u);
  }

  else
  {
    v28 = v12;
    v13 = sub_1004A6904();
    v27 = newCapacity;
    sub_1004A6854(newCapacity);
    v14 = v3[1];
    v15 = v3[2];
    if (v15 >= v14)
    {
      sub_1003CD18C(v14, v3[2], *v3, v6);
      *&v31 = v17;
      *(&v31 + 1) = v18;
      *&v32 = v19;
      *(&v32 + 1) = v20;
      v21 = sub_1004A64F4();
      swift_unknownObjectRetain();
      swift_getWitnessTable(&protocol conformance descriptor for ArraySlice<A>, v21);
    }

    else
    {
      *&v29 = v3[1];
      v26 = v10;
      sub_10000C9C0(&qword_1005DBFD8, &qword_1005007B0);
      v25 = v7;
      v24[1] = swift_getWitnessTable(&protocol conformance descriptor for ContiguousArray<A>, v13);
      sub_10000DF44(&qword_1005DBFE0, &qword_1005DBFD8, &qword_1005007B0, &protocol conformance descriptor for PartialRangeFrom<A>);
      sub_1004A56C4();
      v29 = v31;
      v30 = v32;
      v16 = sub_1004A64F4();
      swift_getWitnessTable(&protocol conformance descriptor for ArraySlice<A>, v16);
      sub_1004A68D4();
      *&v29 = v15;
      sub_10000C9C0(&qword_1005DBFE8, &qword_1005007B8);
      sub_10000DF44(qword_1005DBFF0, &qword_1005DBFE8, &qword_1005007B8, &protocol conformance descriptor for PartialRangeUpTo<A>);
      sub_1004A56C4();
      v29 = v31;
      v30 = v32;
      v7 = v25;
      v10 = v26;
    }

    sub_1004A68D4();
    v22 = sub_1004A68C4();
    (*(*(v5 - 8) + 56))(v9, 1, 1, v5);
    sub_1004A6804();
    (*(v7 + 8))(v9, v6);
    swift_getWitnessTable(&protocol conformance descriptor for Repeated<A>, v10);
    sub_1004A68D4();
    v3[1] = 0;
    v3[2] = v22;
    v23 = v33;

    *v3 = v23;
  }
}

uint64_t CircularBuffer.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = CircularBuffer.startIndex.getter(a2, a3, a4);
  CircularBuffer.index(_:offsetBy:)(v12, a1, a2, a3, a4);

  return CircularBuffer.subscript.getter(a5, a6);
}

void sub_1003CB224(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v4 = (*a1)[6];
  v5 = (*a1)[3];
  v6 = (*a1)[4];
  v7 = (*a1)[1];
  v8 = **a1;
  if (a2)
  {
    (*(v6 + 16))((*a1)[5], v4, v5);
    sub_1003CD6EC(v3, v8, v7);
    v9 = *(v6 + 8);
    v9(v3, v5);
    v9(v4, v5);
  }

  else
  {
    sub_1003CD6EC((*a1)[6], v8, v7);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

Swift::Void __swiftcall CircularBuffer.removeAll(keepingCapacity:)(Swift::Bool keepingCapacity)
{
  v4 = *(v1 + 16);
  v5 = sub_1004A6374();
  __chkstk_darwin(v5);
  v7 = &v9 - v6;
  if (keepingCapacity)
  {
    v8 = CircularBuffer.count.getter(*v2, v2[1], v2[2]);
    CircularBuffer.removeFirst(_:)(v8);
  }

  else
  {
    sub_1004A6904();
    sub_1004A68F4(0);
    (*(*(v4 - 8) + 56))(v7, 1, 1, v4);
    sub_1004A68E4();
  }

  v2[1] = 0;
  v2[2] = 0;
}

Swift::Void __swiftcall CircularBuffer.removeFirst(_:)(Swift::Int a1)
{
  v4 = *(v1 + 16);
  v5 = sub_1004A6374();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - v7;
  v9 = *v2;
  v10 = v2[1];
  v11 = v2[2];
  v14 = v4;
  if (CircularBuffer.count.getter(v9, v10, v11) < a1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((a1 & 0x8000000000000000) == 0)
  {
    if (!a1)
    {
LABEL_8:
      v2[1] = v10;
      return;
    }

    sub_1004A6904();
    sub_1004A6874();
    sub_1004A6874();
    v12 = *(*(v14 - 8) + 56);
    while (1)
    {
      v12(v8, 1, 1, v14);
      sub_1004A6874();
      if ((v10 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (*(*v2 + 16) <= v10)
      {
        goto LABEL_10;
      }

      (*(v6 + 40))(*v2 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v10, v8, v5);
      v10 = (sub_1004A68C4() + 0x7FFFFFFFFFFFFFFFLL) & (v10 + 1);
      if (!--a1)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

LABEL_12:
  __break(1u);
}

void CircularBuffer.modify<A>(_:_:)(unsigned int a1, uint64_t (*a2)(unint64_t), uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = a1;
  v8 = sub_1004A6374();
  sub_1004A6904();
  sub_1004A6874();
  if (*(*v4 + 16) <= v7)
  {
    __break(1u);
  }

  else
  {
    v9 = *v4 + ((*(*(v8 - 8) + 80) + 32) & ~*(*(v8 - 8) + 80)) + *(*(v8 - 8) + 72) * v7;
    if ((*(*(v6 - 8) + 48))(v9, 1, v6) != 1)
    {
      a2(v9);
      return;
    }
  }

  __break(1u);
}

uint64_t CircularBuffer.popFirst()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 16);
  if (CircularBuffer.count.getter(*v2, v2[1], v2[2]) < 1)
  {
    v6 = 1;
  }

  else
  {
    CircularBuffer.removeFirst()(a1, a2);
    v6 = 0;
  }

  v7 = *(*(v5 - 8) + 56);

  return v7(a2, v6, 1, v5);
}

void CircularBuffer.removeFirst()(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = sub_1004A6374();
  __chkstk_darwin(v5 - 8);
  v7 = &v11 - v6;
  CircularBuffer.first.getter(*v2, *(v2 + 8), *(v2 + 16), v4, &v11 - v6);
  v8 = *(v4 - 8);
  if ((*(v8 + 48))(v7, 1, v4) == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v8 + 32))(a2, v7, v4);
    type metadata accessor for CircularBuffer(0, v4, v9, v10);
    CircularBuffer.removeFirst(_:)(1);
  }
}

uint64_t CircularBuffer.popLast()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 16);
  if (CircularBuffer.count.getter(*v2, v2[1], v2[2]) < 1)
  {
    v6 = 1;
  }

  else
  {
    CircularBuffer.removeLast()(a1, a2);
    v6 = 0;
  }

  v7 = *(*(v5 - 8) + 56);

  return v7(a2, v6, 1, v5);
}

void CircularBuffer.removeLast()(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 16);
  v6 = sub_1004A6374();
  __chkstk_darwin(v6 - 8);
  v8 = v12 - v7;
  v12[1] = *v2;
  v13 = *(v2 + 8);
  swift_getWitnessTable(protocol conformance descriptor for CircularBuffer<A>, a1);
  sub_1004A55D4();
  v9 = *(v5 - 8);
  if ((*(v9 + 48))(v8, 1, v5) == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v9 + 32))(a2, v8, v5);
    type metadata accessor for CircularBuffer(0, v5, v10, v11);
    CircularBuffer.removeLast(_:)(1);
  }
}

Swift::Void __swiftcall CircularBuffer.removeLast(_:)(Swift::Int a1)
{
  v4 = *(v1 + 16);
  v5 = sub_1004A6374();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v13 - v7;
  v9 = v2[2];
  if (CircularBuffer.count.getter(*v2, v2[1], v9) < a1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((a1 & 0x8000000000000000) == 0)
  {
    if (!a1)
    {
LABEL_8:
      v2[2] = v9;
      return;
    }

    v10 = sub_1004A6904();
    sub_1004A6874();
    v13[1] = v10;
    sub_1004A6874();
    while (1)
    {
      v11 = sub_1004A68C4() - 1;
      (*(*(v4 - 8) + 56))(v8, 1, 1, v4);
      sub_1004A6874();
      v9 = v11 & (v9 - 1);
      if (v9 < 0 != v12)
      {
        break;
      }

      if (*(*v2 + 16) <= v9)
      {
        goto LABEL_10;
      }

      (*(v6 + 40))(*v2 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v9, v8, v5);
      if (!--a1)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

LABEL_12:
  __break(1u);
}

uint64_t CircularBuffer.first.getter@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  if (a2 == a3)
  {
    v7 = 1;
  }

  else
  {
    CircularBuffer.startIndex.getter(a1, a2, a3);
    CircularBuffer.subscript.getter(a4, a5);
    v7 = 0;
  }

  v8 = *(*(a4 - 8) + 56);

  return v8(a5, v7, 1, a4);
}

uint64_t CircularBuffer.removeSubrange(_:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v34 = a1;
  v5 = HIDWORD(a2);
  v6 = *(a3 + 16);
  v31 = *(v6 - 8);
  v32 = a3;
  v7 = HIWORD(a2);
  __chkstk_darwin(a1);
  v30 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for CircularBuffer.Index(0, v6, v9, v10);
  LODWORD(v40) = a2;
  v35 = v5;
  WORD2(v40) = v5;
  BYTE6(v40) = v7;
  HIBYTE(v40) = HIBYTE(a2) & 1;
  v12 = *v3;
  v13 = v3[1];
  v29 = v3 + 1;
  v33 = v3;
  v14 = v3[2];
  v15 = CircularBuffer.startIndex.getter(v12, v13, v14);
  v36 = v15;
  v37 = WORD2(v15);
  v38 = BYTE6(v15);
  v39 = HIBYTE(v15) != 0;
  swift_getWitnessTable(protocol conformance descriptor for CircularBuffer<A>.Index, v11);
  result = sub_1004A5674();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  LODWORD(v40) = a2;
  WORD2(v40) = v35;
  BYTE6(v40) = v7;
  HIBYTE(v40) = HIBYTE(a2) & 1;
  v17 = CircularBuffer.endIndex.getter(v12, v13, v14);
  v36 = v17;
  v37 = WORD2(v17);
  v38 = BYTE6(v17);
  v39 = HIBYTE(v17) != 0;
  result = sub_1004A5684();
  if ((result & 1) == 0)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v18 = v34;
  v19 = CircularBuffer.distance(from:to:)(v34 & 0x1FFFFFFFFFFFFFFLL, a2 & 0x1FFFFFFFFFFFFFFLL, v12);
  if (v19 == 1)
  {
    v20 = v18 & 0x1FFFFFFFFFFFFFFLL;
    v21 = v30;
    CircularBuffer.remove(at:)(v20, v32, v30);
    return (*(v31 + 8))(v21, v6);
  }

  else if (CircularBuffer.count.getter(v12, v13, v14) == v19)
  {
    sub_1004A6374();
    v22 = sub_1004A68C4();
    CircularBuffer.init(initialCapacity:)(v22, v6);
    v24 = v23;

    *v33 = v24;
    v25 = v29;
    *v29 = 0;
    v25[1] = 0;
  }

  else
  {
    v40 = sub_1004A5C54();
    v26 = sub_1004A5CD4();
    WitnessTable = swift_getWitnessTable(&protocol conformance descriptor for [A], v26);
    CircularBuffer.replaceSubrange<A>(_:with:)(v18 & 0x1FFFFFFFFFFFFFFLL, a2 & 0x1FFFFFFFFFFFFFFLL, &v40, v32, v26, WitnessTable);
  }

  return result;
}

void CircularBuffer.remove(at:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  LODWORD(v6) = a1;
  v39 = a3;
  v43 = a1;
  v7 = *(a2 + 16);
  v8 = sub_1004A6374();
  v38 = *(v8 - 8);
  __chkstk_darwin(v8);
  v40 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v36 - v11;
  v13 = *(v7 - 8);
  *&v15 = __chkstk_darwin(v14).n128_u64[0];
  v42 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = v3[1];
  v18 = v3[2];
  v50 = *v3;
  v51 = v17;
  v41 = v17;
  v36 = v18;
  v52 = v18;
  swift_getWitnessTable(protocol conformance descriptor for CircularBuffer<A>, a2, v15);
  sub_1004A5F14();
  v44 = v47;
  v45 = v48;
  v46 = v49;
  v19 = sub_1004A5574();
  swift_getWitnessTable(&protocol conformance descriptor for DefaultIndices<A>, v19);
  v22 = type metadata accessor for CircularBuffer.Index(255, v7, v20, v21);
  swift_getWitnessTable("ae\b", v22);
  v23 = sub_1004A5BB4();
  v53[0] = v44;
  v53[1] = v45;
  v54 = v46;
  (*(*(v19 - 8) + 8))(v53, v19);
  if ((v23 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v6 = v6;
  sub_1004A6914();
  if ((*(v13 + 48))(v12, 1, v7) != 1)
  {
    v24 = *(v13 + 32);
    v24(v42, v12, v7);
    v37 = v24;
    if (v41 != v6)
    {
      v28 = v36 - 1;
      if (((sub_1004A68C4() - 1) & v28) != v6)
      {
        v31 = v40;
        v27 = v7;
        (*(v13 + 56))(v40, 1, 1, v7);
        v32 = sub_1004A6904();
        sub_1004A6874();
        if (*(*v4 + 16) > v6)
        {
          (*(v38 + 40))(*v4 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v6, v31, v8);
          v33 = v4[2];
          for (i = (sub_1004A68C4() - 1) & (v6 + 1); i != v33; i = (sub_1004A68C4() - 1) & (i + 1))
          {
            *&v47 = v6;
            *&v44 = i;
            swift_getWitnessTable(&protocol conformance descriptor for ContiguousArray<A>, v32);
            sub_1004A56B4();
            v6 = i;
          }

          v35 = v4[2] - 1;
          v4[2] = (sub_1004A68C4() - 1) & v35;
          goto LABEL_13;
        }

        goto LABEL_17;
      }

      v29 = v4[2] - 1;
      v4[2] = (sub_1004A68C4() - 1) & v29;
      v30 = v40;
      v27 = v7;
      (*(v13 + 56))(v40, 1, 1, v7);
      sub_1004A6904();
      sub_1004A6874();
      if (*(*v4 + 16) > v6)
      {
        (*(v38 + 40))(*v4 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v6, v30, v8);
        goto LABEL_13;
      }

LABEL_16:
      __break(1u);
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    v25 = v4[1] + 1;
    v4[1] = (sub_1004A68C4() - 1) & v25;
    v26 = v40;
    v27 = v7;
    (*(v13 + 56))(v40, 1, 1, v7);
    sub_1004A6904();
    sub_1004A6874();
    if (*(*v4 + 16) > v41)
    {
      (*(v38 + 40))(*v4 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v41, v26, v8);
LABEL_13:
      v37(v39, v42, v27);
      return;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

LABEL_18:
  __break(1u);
}

Swift::Void __swiftcall CircularBuffer.reserveCapacity(_:)(Swift::Int a1)
{
  sub_1004A6374();
  if (sub_1004A68C4() < a1)
  {
    v2 = __clz(a1 - 1);
    if (v2)
    {
      v3 = 1 << -v2;
    }

    else
    {
      v3 = 0;
    }

    if (a1)
    {
      v4 = v3;
    }

    else
    {
      v4 = 1;
    }

    CircularBuffer._resizeAndFlatten(newCapacity:)(v4);
  }
}

void sub_1003CC6DC(uint64_t a1@<X0>, void *a2@<X8>)
{
  CircularBuffer.init()(*(a1 + 16));
  a2[1] = 0;
  a2[2] = 0;
  *a2 = v3;
}

uint64_t sub_1003CC70C(unsigned int *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v7 = 0x100000000000000;
  if (*(a1 + 7))
  {
    v8 = 0x100000000000000;
  }

  else
  {
    v8 = 0;
  }

  if ((*(a1 + 15) & 1) == 0)
  {
    v7 = 0;
  }

  CircularBuffer.replaceSubrange<A>(_:with:)(*a1 | (*(a1 + 2) << 32) | (*(a1 + 6) << 48) | v8, a1[2] | (*(a1 + 6) << 32) | (*(a1 + 14) << 48) | v7, a2, a5, a3, a4);
  v9 = *(*(a3 - 1) + 8);

  return v9(a2, a3);
}

uint64_t sub_1003CC7DC(uint64_t a1, uint64_t a2)
{
  CircularBuffer.append(_:)(a1, a2);
  v4 = *(*(*(a2 + 16) - 8) + 8);

  return v4(a1);
}

void sub_1003CC864(unsigned int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = 0x100000000000000;
  if (!*(a1 + 7))
  {
    v3 = 0;
  }

  CircularBuffer.remove(at:)(v3 | (*(a1 + 6) << 48) | (*(a1 + 2) << 32) | *a1, a2, a3);
}

uint64_t sub_1003CC890(unsigned int *a1, uint64_t a2)
{
  v2 = 0x100000000000000;
  if (*(a1 + 7))
  {
    v3 = 0x100000000000000;
  }

  else
  {
    v3 = 0;
  }

  if ((*(a1 + 15) & 1) == 0)
  {
    v2 = 0;
  }

  return CircularBuffer.removeSubrange(_:)(*a1 | (*(a1 + 2) << 32) | (*(a1 + 6) << 48) | v3, a1[2] | (*(a1 + 6) << 32) | (*(a1 + 14) << 48) | v2, a2);
}

uint64_t sub_1003CC8E4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for CircularBuffer<A>, a1);

  return RangeReplaceableCollection<>._customRemoveLast()(a1, WitnessTable, a2);
}

uint64_t sub_1003CC950(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for CircularBuffer<A>);

  return RangeReplaceableCollection<>._customRemoveLast(_:)(a1, a2, WitnessTable, a3);
}

uint64_t static CircularBuffer<A>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = CircularBuffer.count.getter(a1, a2, a3);
  if (v13 == CircularBuffer.count.getter(a4, a5, a6))
  {
    v16 = type metadata accessor for CircularBuffer(0, a7, v14, v15);
    swift_getWitnessTable("\th\b", v16);
    sub_1004A6E04();
    v17 = swift_allocObject();
    v17[2] = a7;
    v17[3] = a8;
    v17[4] = a7;
    __chkstk_darwin(v17);
    v18 = sub_1004A6764();
    swift_getWitnessTable(&protocol conformance descriptor for Zip2Sequence<A, B>, v18);
    v19 = sub_1004A5B04();
  }

  else
  {
    v19 = 0;
  }

  return v19 & 1;
}

uint64_t CircularBuffer<A>.hash(into:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v17[1] = a6;
  v10 = *(a5 - 8);
  __chkstk_darwin(a1);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);

  v13 = CircularBuffer.startIndex.getter(a2, a3, a4);
  v14 = CircularBuffer.endIndex.getter(a2, a3, a4);
  if ((v13 & 0xFFFFFFFFFFFFFFLL) != (v14 & 0xFFFFFFFFFFFFFFLL) || (HIBYTE(v13) != 0) != (HIBYTE(v14) != 0))
  {
    do
    {
      do
      {
        CircularBuffer.subscript.getter(a5, v12);
        v13 = CircularBuffer.index(_:offsetBy:)(v13, 1, a2, a3, a4);
        sub_1004A5564();
        (*(v10 + 8))(v12, a5);
        v15 = CircularBuffer.endIndex.getter(a2, a3, a4);
      }

      while ((v13 & 0xFFFFFFFFFFFFFFLL) != (v15 & 0xFFFFFFFFFFFFFFLL));
    }

    while ((HIBYTE(v13) != 0) != (HIBYTE(v15) != 0));
  }
}

Swift::Int CircularBuffer<A>.hashValue.getter(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1004A6E94();
  CircularBuffer<A>.hash(into:)(v11, a1, a2, a3, a4, a5);
  return sub_1004A6F14();
}

Swift::Int sub_1003CCEE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 - 8);
  sub_1004A6E94();
  CircularBuffer<A>.hash(into:)(v7, *v3, *(v3 + 8), *(v3 + 16), *(a2 + 16), v5);
  return sub_1004A6F14();
}

uint64_t CircularBuffer.init(arrayLiteral:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for CircularBuffer(0, a2, a3, a4);
  v6 = sub_1004A5CD4();
  swift_getWitnessTable("т\b", v5, a1);
  swift_getWitnessTable(&protocol conformance descriptor for [A], v6);
  sub_1004A5F84();
  return v8;
}

uint64_t sub_1003CCFFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  result = CircularBuffer.init(arrayLiteral:)(a1, *(a2 + 16), a4, a5);
  *a3 = result;
  a3[1] = v7;
  a3[2] = v8;
  return result;
}

uint64_t sub_1003CD02C(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (HIDWORD(result))
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v2 = 0x1FFFFFF00000000;
  if (result < a2)
  {
    v2 = 0xFFFFFF00000000;
  }

  return v2 | result;
}

void sub_1003CD058(void *a2@<X8>)
{
  sub_1004A6CF4();
  v3._countAndFlagsBits = 32;
  v3._object = 0xE100000000000000;
  sub_1004A5994(v3);
  *a2 = 0;
  a2[1] = 0xE000000000000000;
}

uint64_t sub_1003CD0BC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v10 = CircularBuffer.startIndex.getter(a3, a4, a5);
  result = CircularBuffer.distance(from:to:)(v10 & 0xFFFFFFFFFFFFFFLL | ((HIBYTE(v10) != 0) << 56), a1 & 0x1FFFFFFFFFFFFFFLL, a3);
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v12 = CircularBuffer.endIndex.getter(a3, a4, a5);
    result = CircularBuffer.distance(from:to:)(a2 & 0x1FFFFFFFFFFFFFFLL, v12 & 0xFFFFFFFFFFFFFFLL | ((HIBYTE(v12) != 0) << 56), a3);
    if ((result & 0x8000000000000000) == 0)
    {
      return a3;
    }
  }

  __break(1u);
  return result;
}

void sub_1003CD18C(Swift::Int a1, Swift::Int a2, uint64_t a3, uint64_t a4)
{
  sub_1004A6824(a1);
  sub_1004A6824(a2);
  if (a2 < 0)
  {
    __break(1u);
  }
}

void sub_1003CD228(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v7 = sub_1004A6374();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v13 - v10;
  v12 = *(v6 - 8);
  (*(v12 + 16))(&v13 - v10, a1, v6, v9);
  (*(v12 + 56))(v11, 0, 1, v6);
  sub_1004A6904();
  sub_1004A6874();
  if (*(*v3 + 16) <= a2)
  {
    __break(1u);
  }

  else
  {
    (*(v8 + 40))(*v3 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * a2, v11, v7);
  }
}

uint64_t sub_1003CD3BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1004A6884();
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v8 = result;
    if (a2)
    {
      v9 = v7;
      v10 = *(a3 - 8);
      v11 = *(v10 + 16);
      v11(v7, a1, a3);
      v12 = a2 - 1;
      if (v12)
      {
        v13 = *(v10 + 72);
        v14 = v9 + v13;
        do
        {
          v11(v14, a1, a3);
          v14 += v13;
          --v12;
        }

        while (v12);
      }
    }

    sub_1004A6904();
    return v8;
  }

  return result;
}

void sub_1003CD4C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v12 = *v6;
  v13 = v6[1];
  v14 = v6[2];
  v15 = CircularBuffer.startIndex.getter(*v6, v13, v14);
  if (CircularBuffer.distance(from:to:)(v15 & 0xFFFFFFFFFFFFFFLL | ((HIBYTE(v15) != 0) << 56), a4 & 0x1FFFFFFFFFFFFFFLL, v12) < 0)
  {
    __break(1u);
  }

  else
  {
    v16 = CircularBuffer.endIndex.getter(v12, v13, v14);
    if ((CircularBuffer.distance(from:to:)(a5 & 0x1FFFFFFFFFFFFFFLL, v16 & 0xFFFFFFFFFFFFFFLL | ((HIBYTE(v16) != 0) << 56), v12) & 0x8000000000000000) == 0)
    {
      v19[0] = a1;
      v19[1] = a2;
      v19[2] = a3;
      WitnessTable = swift_getWitnessTable(protocol conformance descriptor for CircularBuffer<A>, a6);
      CircularBuffer.replaceSubrange<A>(_:with:)(a4 & 0x1FFFFFFFFFFFFFFLL, a5 & 0x1FFFFFFFFFFFFFFLL, v19, a6, a6, WitnessTable);
      return;
    }
  }

  __break(1u);
}

uint64_t sub_1003CD638()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1003CD670@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  (*(v1 + 40))();
  v4 = *(*(v3 - 8) + 56);

  return v4(a1, 0, 1, v3);
}

void sub_1003CD6EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = v3[1];
  v9 = v3[2];
  v10 = CircularBuffer.startIndex.getter(*v3, v8, v9);
  v11 = CircularBuffer.index(_:offsetBy:)(v10, a2, v7, v8, v9);

  sub_1003CD228(a1, v11, a3);
}

uint64_t sub_1003CD7E8(uint64_t a1)
{
  v3 = *(v1 + 32);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return v3(a1, a1 + *(TupleTypeMetadata2 + 48)) & 1;
}

uint64_t sub_1003CDA74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1003CDAB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1003CDAEC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 8))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 7);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1003CDB40(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *(result + 7) = a2 + 1;
    }
  }

  return result;
}

void Command.hash(into:)(uint64_t a1)
{
  v207 = a1;
  v1 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  v204 = *(v1 - 8);
  v205 = v1;
  __chkstk_darwin(v1);
  v201 = &v190 - v2;
  v3 = sub_10000C9C0(&qword_1005CD1C0, &unk_1004CEC40);
  __chkstk_darwin(v3 - 8);
  v193 = &v190 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v197 = &v190 - v6;
  __chkstk_darwin(v7);
  v194 = &v190 - v8;
  __chkstk_darwin(v9);
  v198 = &v190 - v10;
  __chkstk_darwin(v11);
  v192 = &v190 - v12;
  __chkstk_darwin(v13);
  v199 = &v190 - v14;
  __chkstk_darwin(v15);
  v191 = &v190 - v16;
  __chkstk_darwin(v17);
  v196 = &v190 - v18;
  __chkstk_darwin(v19);
  v190 = &v190 - v20;
  __chkstk_darwin(v21);
  v195 = &v190 - v22;
  v23 = sub_10000C9C0(&qword_1005CDA68, &qword_1004CF7D0);
  v202 = *(v23 - 8);
  v203 = v23;
  __chkstk_darwin(v23);
  v200 = &v190 - v24;
  v25 = sub_10000C9C0(&qword_1005CDA78, &unk_1004CF7E0);
  __chkstk_darwin(v25 - 8);
  v27 = &v190 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v30 = &v190 - v29;
  __chkstk_darwin(v31);
  v33 = &v190 - v32;
  __chkstk_darwin(v34);
  v36 = &v190 - v35;
  __chkstk_darwin(v37);
  v39 = &v190 - v38;
  __chkstk_darwin(v40);
  v42 = &v190 - v41;
  __chkstk_darwin(v43);
  v45 = &v190 - v44;
  __chkstk_darwin(v46);
  v48 = &v190 - v47;
  v49 = type metadata accessor for Command(0);
  __chkstk_darwin(v49);
  v51 = &v190 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1003DABD4(v206, v51, type metadata accessor for Command);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v86 = *(v51 + 2);
      v87 = 4;
      goto LABEL_83;
    case 2u:
      v99 = *(v51 + 2);
      v100 = *(v51 + 2);
      v101 = 5;
      goto LABEL_50;
    case 3u:
      v106 = *(v51 + 3);
      *&v209[16] = *(v51 + 2);
      v210 = v106;
      v211 = *(v51 + 8);
      v107 = *(v51 + 1);
      v208 = *v51;
      *v209 = v107;
      v108 = *(v51 + 20);
      v110 = *(v51 + 11);
      v109 = *(v51 + 12);
      v111 = *(v51 + 26) | ((*(v51 + 54) | (v51[110] << 16)) << 32);
      v112 = v51[111];
      v205 = *(v51 + 14);
      v206 = v109;
      v113 = v207;
      sub_1004A6EB4(6uLL);
      v114 = v211;
      if (v211)
      {
        v200 = *&v209[8];
        v201 = *v209;
        v115 = v209[16];
        v203 = v210;
        v204 = *&v209[24];
        v202 = *(&v210 + 1);
        sub_1004A6EC4(1u);
        if (v115 == 255)
        {
          sub_1004A6EB4(0);
        }

        else
        {
          sub_1004A6EB4(1uLL);
          if (v115)
          {
            sub_1004A6EB4(1uLL);
            _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
          }

          else
          {
            sub_1004A6EB4(0);
          }

          _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
          sub_1003B0040(v113, v204, v203, v202);
        }

        sub_1003AD7B0(v113, v114);
      }

      else
      {
        sub_1004A6EC4(0);
      }

      sub_1004A6EB4(v108 | (v108 << 32));

      if (v112)
      {
        sub_1004A6EB4(1uLL);
        sub_1004A6EB4(*(v110 + 16));
        v188 = *(v110 + 16);
        if (v188)
        {
          v189 = v110 + 54;
          do
          {
            v189 += 24;
            swift_beginAccess();
            v113 = v207;
            sub_1004A6EA4();
            --v188;
          }

          while (v188);
        }
      }

      else
      {
        sub_1004A6EB4(0);
        swift_beginAccess();
        sub_1004A6EA4();
      }

      sub_1003AD398(v113, v205);
      sub_1003A30F4(v110, v206, v111, v112);
      sub_100025F40(&v208, &qword_1005DC128, &qword_100500D08);
      goto LABEL_84;
    case 4u:
      v76 = *v51;
      v77 = *(v51 + 4);
      v78 = *(v51 + 3);
      v79 = *(v51 + 4);
      v80 = *(v51 + 10) | ((*(v51 + 22) | (v51[46] << 16)) << 32);
      v81 = v51[47];
      v206 = *(v51 + 6);
      v82 = v207;
      sub_1004A6EB4(7uLL);
      sub_1003AD0B4(v82, v76);

      sub_1004A6EB4(v77 | (v77 << 32));

      v205 = v80;
      if (v81)
      {
        v83 = v79;
        sub_1004A6EB4(1uLL);
        sub_1004A6EB4(*(v78 + 16));
        v84 = *(v78 + 16);
        if (v84)
        {
          v85 = v78 + 54;
          do
          {
            v85 += 24;
            swift_beginAccess();
            v82 = v207;
            sub_1004A6EA4();
            --v84;
          }

          while (v84);
        }
      }

      else
      {
        sub_1004A6EB4(0);
        swift_beginAccess();
        v83 = v79;
        sub_1004A6EA4();
      }

      sub_1003AD398(v82, v206);
      sub_1003A30F4(v78, v83, v205, v81);
      goto LABEL_84;
    case 5u:
      v126 = *(v51 + 2);
      sub_1004A6EB4(8uLL);
      sub_1004A6EB4(v126 | (v126 << 32));

      swift_beginAccess();
      sub_1004A6EA4();
      goto LABEL_60;
    case 6u:
      v131 = *(v51 + 2);
      v132 = *(v51 + 6);
      v133 = *(v51 + 5);
      v134 = *(v51 + 6);
      v135 = v207;
      sub_1004A6EB4(9uLL);
      sub_1004A6EB4(v131 | (v131 << 32));

      sub_1004A6EB4(v132 | (v132 << 32));

      sub_1003A1878(v135, v133, v134);

      return;
    case 7u:
      v99 = *(v51 + 2);
      v100 = *(v51 + 2);
      v101 = 10;
LABEL_50:
      v116 = v207;
      sub_1004A6EB4(v101);
      sub_1004A6EB4(v99 | (v99 << 32));

      sub_1003AD9BC(v116, v100);
      goto LABEL_84;
    case 8u:
      v137 = *(v51 + 2);
      v138 = *(v51 + 2);
      v139 = v207;
      sub_1004A6EB4(0xBuLL);
      sub_1004A6EB4(v137 | (v137 << 32));

      sub_1002E5960(v139, v138);
      goto LABEL_84;
    case 9u:
      v86 = *(v51 + 2);
      v87 = 12;
      goto LABEL_83;
    case 0xAu:
      v86 = *(v51 + 2);
      v87 = 13;
      goto LABEL_83;
    case 0xBu:
      v75 = *(v51 + 2);
      sub_1004A6EB4(0xEuLL);
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

      if (!v75)
      {
        goto LABEL_58;
      }

      sub_1004A6EC4(1u);
      swift_beginAccess();
      goto LABEL_30;
    case 0xCu:
      sub_1004A6EB4(0xFuLL);
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      goto LABEL_84;
    case 0xDu:
      v129 = *v51;
      v130 = v207;
      sub_1004A6EB4(0x14uLL);
      sub_1002E5AF4(v130, v129);
      goto LABEL_84;
    case 0xEu:
      v71 = *&v51[*(sub_10000C9C0(&qword_1005DC110, &qword_100500CF0) + 48) + 8];
      sub_100025FDC(v51, v48, &qword_1005CDA78, &unk_1004CF7E0);
      sub_1004A6EB4(0x17uLL);
      sub_10000E268(v48, v45, &qword_1005CDA78, &unk_1004CF7E0);
      if ((*(v202 + 48))(v45, 1, v203) == 1)
      {
        sub_1004A6EB4(1uLL);
      }

      else
      {
        v169 = v45;
        v170 = v200;
        sub_100025FDC(v169, v200, &qword_1005CDA68, &qword_1004CF7D0);
        sub_1004A6EB4(0);
        sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
        sub_1000956A0();
        sub_1004A5564();
        sub_100025F40(v170, &qword_1005CDA68, &qword_1004CF7D0);
      }

      sub_1004A6EB4(v71 | (v71 << 32));

      v166 = &qword_1005CDA78;
      v167 = &unk_1004CF7E0;
      v168 = v48;
      goto LABEL_127;
    case 0xFu:
      v102 = sub_10000C9C0(&qword_1005DC120, &qword_100500D00);
      v103 = *&v51[*(v102 + 48)];
      v104 = *&v51[*(v102 + 64)];
      sub_100025FDC(v51, v42, &qword_1005CDA78, &unk_1004CF7E0);
      v105 = v207;
      sub_1004A6EB4(0x18uLL);
      sub_10000E268(v42, v39, &qword_1005CDA78, &unk_1004CF7E0);
      if ((*(v202 + 48))(v39, 1, v203) == 1)
      {
        sub_1004A6EB4(1uLL);
      }

      else
      {
        v172 = v200;
        sub_100025FDC(v39, v200, &qword_1005CDA68, &qword_1004CF7D0);
        sub_1004A6EB4(0);
        sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
        sub_1000956A0();
        sub_1004A5564();
        sub_100025F40(v172, &qword_1005CDA68, &qword_1004CF7D0);
      }

      sub_1004A6EB4(*(v103 + 16));
      v173 = *(v103 + 16);
      if (v173)
      {
        v174 = (v103 + 32);
        do
        {
          v175 = *v174;
          v176 = v174[1];
          *&v209[13] = *(v174 + 29);
          v208 = v175;
          *v209 = v176;
          sub_1002E7F14(&v208, v212);
          FetchAttribute.hash(into:)(v105);
          sub_1002E7F70(&v208);
          v174 = (v174 + 40);
          --v173;
        }

        while (v173);
      }

      sub_1003AC97C(v105, v104);

      v166 = &qword_1005CDA78;
      v167 = &unk_1004CF7E0;
      goto LABEL_124;
    case 0x10u:
      v65 = sub_10000C9C0(&qword_1005DC118, &qword_100500CF8);
      v66 = *&v51[*(v65 + 48)];
      v67 = &v51[*(v65 + 64)];
      v68 = *v67;
      v69 = v67[1];
      sub_100025FDC(v51, v36, &qword_1005CDA78, &unk_1004CF7E0);
      v70 = v207;
      sub_1004A6EB4(0x19uLL);
      sub_10000E268(v36, v33, &qword_1005CDA78, &unk_1004CF7E0);
      if ((*(v202 + 48))(v33, 1, v203) == 1)
      {
        sub_1004A6EB4(1uLL);
      }

      else
      {
        v165 = v200;
        sub_100025FDC(v33, v200, &qword_1005CDA68, &qword_1004CF7D0);
        sub_1004A6EB4(0);
        sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
        sub_1000956A0();
        sub_1004A5564();
        sub_100025F40(v165, &qword_1005CDA68, &qword_1004CF7D0);
      }

      sub_1003AC298(v70, v66);

      StoreData.hash(into:)(v70, v68, v69);
      sub_10027FF20(v68, v69);
      v166 = &qword_1005CDA78;
      v167 = &unk_1004CF7E0;
      v168 = v36;
      goto LABEL_127;
    case 0x11u:
      v95 = *v51;
      v97 = *(v51 + 2);
      v96 = *(v51 + 3);
      v98 = 26;
      goto LABEL_54;
    case 0x12u:
      v136 = *&v51[*(sub_10000C9C0(&qword_1005DC110, &qword_100500CF0) + 48) + 8];
      sub_100025FDC(v51, v30, &qword_1005CDA78, &unk_1004CF7E0);
      sub_1004A6EB4(0x1BuLL);
      sub_10000E268(v30, v27, &qword_1005CDA78, &unk_1004CF7E0);
      if ((*(v202 + 48))(v27, 1, v203) == 1)
      {
        sub_1004A6EB4(1uLL);
      }

      else
      {
        v178 = v200;
        sub_100025FDC(v27, v200, &qword_1005CDA68, &qword_1004CF7D0);
        sub_1004A6EB4(0);
        sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
        sub_1000956A0();
        sub_1004A5564();
        sub_100025F40(v178, &qword_1005CDA68, &qword_1004CF7D0);
      }

      sub_1004A6EB4(v136 | (v136 << 32));

      v166 = &qword_1005CDA78;
      v167 = &unk_1004CF7E0;
      goto LABEL_115;
    case 0x13u:
      v151 = *(v51 + 1);
      v152 = *(v51 + 2);
      v153 = v207;
      sub_1004A6EB4(0x1CuLL);
      sub_1002E5DBC(v153, v151, v152);

      goto LABEL_60;
    case 0x14u:
      v123 = *v51;
      v122 = *(v51 + 1);
      v124 = *(v51 + 2);
      v125 = v51[24];
      sub_1004A6EB4(0x1EuLL);
      sub_1004A6EB4(v123);
      if (v125 == 1)
      {
LABEL_58:
        sub_1004A6EC4(0);
      }

      else
      {
        sub_1004A6EC4(1u);
        sub_1004A6EB4(v122);
        sub_1004A6EB4(v124);
      }

      return;
    case 0x15u:
      v127 = *&v51[*(sub_10000C9C0(&qword_1005DC108, &qword_100500CE8) + 48) + 8];
      v30 = v195;
      sub_100025FDC(v51, v195, &qword_1005CD1C0, &unk_1004CEC40);
      sub_1004A6EB4(0x1FuLL);
      v128 = v190;
      sub_10000E268(v30, v190, &qword_1005CD1C0, &unk_1004CEC40);
      if ((*(v204 + 48))(v128, 1, v205) == 1)
      {
        sub_1004A6EB4(1uLL);
      }

      else
      {
        v177 = v201;
        sub_100025FDC(v128, v201, &qword_1005CD1D0, &unk_1004CF2C0);
        sub_1004A6EB4(0);
        sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
        sub_1000956A0();
        sub_1004A5564();
        sub_100025F40(v177, &qword_1005CD1D0, &unk_1004CF2C0);
      }

      sub_1004A6EB4(v127 | (v127 << 32));

      goto LABEL_112;
    case 0x16u:
      v149 = *&v51[*(sub_10000C9C0(&qword_1005DC108, &qword_100500CE8) + 48) + 8];
      v42 = v196;
      sub_100025FDC(v51, v196, &qword_1005CD1C0, &unk_1004CEC40);
      sub_1004A6EB4(0x20uLL);
      v150 = v191;
      sub_10000E268(v42, v191, &qword_1005CD1C0, &unk_1004CEC40);
      if ((*(v204 + 48))(v150, 1, v205) == 1)
      {
        sub_1004A6EB4(1uLL);
      }

      else
      {
        v179 = v201;
        sub_100025FDC(v150, v201, &qword_1005CD1D0, &unk_1004CF2C0);
        sub_1004A6EB4(0);
        sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
        sub_1000956A0();
        sub_1004A5564();
        sub_100025F40(v179, &qword_1005CD1D0, &unk_1004CF2C0);
      }

      sub_1004A6EB4(v149 | (v149 << 32));
      goto LABEL_123;
    case 0x17u:
      v154 = sub_10000C9C0(&qword_1005DC100, &qword_100500CE0);
      v155 = *&v51[*(v154 + 48)];
      v156 = *&v51[*(v154 + 64)];
      v42 = v199;
      sub_100025FDC(v51, v199, &qword_1005CD1C0, &unk_1004CEC40);
      v157 = v207;
      sub_1004A6EB4(0x21uLL);
      v158 = v192;
      sub_10000E268(v42, v192, &qword_1005CD1C0, &unk_1004CEC40);
      if ((*(v204 + 48))(v158, 1, v205) == 1)
      {
        sub_1004A6EB4(1uLL);
      }

      else
      {
        v180 = v201;
        sub_100025FDC(v158, v201, &qword_1005CD1D0, &unk_1004CF2C0);
        sub_1004A6EB4(0);
        sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
        sub_1000956A0();
        sub_1004A5564();
        sub_100025F40(v180, &qword_1005CD1D0, &unk_1004CF2C0);
      }

      sub_1004A6EB4(*(v155 + 16));
      v181 = *(v155 + 16);
      if (v181)
      {
        v182 = (v155 + 32);
        do
        {
          v183 = *v182;
          v184 = v182[1];
          *&v209[13] = *(v182 + 29);
          v208 = v183;
          *v209 = v184;
          sub_1002E7F14(&v208, v212);
          FetchAttribute.hash(into:)(v157);
          sub_1002E7F70(&v208);
          v182 = (v182 + 40);
          --v181;
        }

        while (v181);
      }

      sub_1003AC97C(v157, v156);
LABEL_123:

      v166 = &qword_1005CD1C0;
      v167 = &unk_1004CEC40;
LABEL_124:
      v168 = v42;
      goto LABEL_127;
    case 0x18u:
      v95 = *v51;
      v97 = *(v51 + 2);
      v96 = *(v51 + 3);
      v98 = 34;
LABEL_54:
      v121 = v207;
      sub_1004A6EB4(v98);
      SearchKey.hash(into:)(v121, v95);
      if (v97)
      {
        sub_1004A6EC4(1u);
        _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      }

      else
      {
        sub_1004A6EC4(0);
      }

      sub_1003ABB18(v121, v96);
      sub_1000B37D8(v95);
      goto LABEL_84;
    case 0x19u:
      v88 = sub_10000C9C0(&qword_1005DC0F8, &qword_100500CD8);
      v89 = *&v51[*(v88 + 48)];
      v90 = &v51[*(v88 + 64)];
      v91 = *v90;
      v92 = v90[1];
      v30 = v198;
      sub_100025FDC(v51, v198, &qword_1005CD1C0, &unk_1004CEC40);
      v93 = v207;
      sub_1004A6EB4(0x23uLL);
      v94 = v194;
      sub_10000E268(v30, v194, &qword_1005CD1C0, &unk_1004CEC40);
      if ((*(v204 + 48))(v94, 1, v205) == 1)
      {
        sub_1004A6EB4(1uLL);
      }

      else
      {
        v171 = v201;
        sub_100025FDC(v94, v201, &qword_1005CD1D0, &unk_1004CF2C0);
        sub_1004A6EB4(0);
        sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
        sub_1000956A0();
        sub_1004A5564();
        sub_100025F40(v171, &qword_1005CD1D0, &unk_1004CF2C0);
      }

      sub_1003AC298(v93, v89);

      StoreData.hash(into:)(v93, v91, v92);
      sub_10027FF20(v91, v92);
LABEL_112:
      v166 = &qword_1005CD1C0;
      v167 = &unk_1004CEC40;
LABEL_115:
      v168 = v30;
      goto LABEL_127;
    case 0x1Au:
      v163 = v197;
      sub_100025FDC(v51, v197, &qword_1005CD1C0, &unk_1004CEC40);
      sub_1004A6EB4(0x24uLL);
      v164 = v193;
      sub_10000E268(v163, v193, &qword_1005CD1C0, &unk_1004CEC40);
      if ((*(v204 + 48))(v164, 1, v205) == 1)
      {
        sub_1004A6EB4(1uLL);
      }

      else
      {
        v185 = v201;
        sub_100025FDC(v164, v201, &qword_1005CD1D0, &unk_1004CF2C0);
        sub_1004A6EB4(0);
        sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
        sub_1000956A0();
        sub_1004A5564();
        sub_100025F40(v185, &qword_1005CD1D0, &unk_1004CF2C0);
      }

      v166 = &qword_1005CD1C0;
      v167 = &unk_1004CEC40;
      v168 = v163;
LABEL_127:
      sub_100025F40(v168, v166, v167);
      return;
    case 0x1Bu:
      sub_1004A6EB4(0x25uLL);
      swift_beginAccess();
LABEL_30:
      sub_1004A6EA4();
      goto LABEL_60;
    case 0x1Cu:
      v86 = *(v51 + 2);
      v87 = 38;
LABEL_83:
      sub_1004A6EB4(v87);
      sub_1004A6EB4(v86 | (v86 << 32));
      goto LABEL_84;
    case 0x1Du:
      v159 = *(v51 + 3);
      sub_1004A6EB4(0x27uLL);
      swift_beginAccess();
      sub_1004A6EA4();
      sub_1004A6EB4(*(v159 + 16));
      v160 = *(v159 + 16);
      if (v160)
      {
        v161 = (v159 + 48);
        do
        {
          v162 = *v161;
          v161 += 3;

          _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
          sub_1004A6EB4(v162);

          --v160;
        }

        while (v160);
      }

      goto LABEL_84;
    case 0x1Eu:
      v140 = *v51;
      v141 = *(v51 + 4);
      v142 = *(v51 + 3);
      v143 = v207;
      sub_1004A6EB4(0x28uLL);
      sub_1003AB39C(v143, v140);

      sub_1004A6EB4(v141 | (v141 << 32));

      sub_1004A6EB4(*(v142 + 16));
      v144 = *(v142 + 16);
      if (v144)
      {
        v145 = v142 + 54;
        do
        {
          v145 += 24;
          swift_beginAccess();
          sub_1004A6EA4();
          --v144;
        }

        while (v144);
      }

      goto LABEL_84;
    case 0x1Fu:
      v117 = *(v51 + 2);
      v118 = *(v51 + 3);
      v119 = *(v51 + 4);
      v120 = v207;
      sub_1004A6EB4(0x29uLL);
      sub_1004A6EB4(v117 | (v117 << 32));

      sub_1003A1460(v120, v118, v119);

LABEL_60:

      return;
    case 0x20u:
      v146 = *(v51 + 1);
      v208 = *v51;
      *v209 = v146;
      v147 = *(v51 + 3);
      *&v209[16] = *(v51 + 2);
      v210 = v147;
      v148 = v207;
      sub_1004A6EB4(0x2AuLL);
      ExtendedSearchOptions.hash(into:)(v148);
      sub_1003D9E64(&v208);
      return;
    case 0x21u:
      v72 = *v51;
      v73 = *(v51 + 2);
      v74 = *(v51 + 2);
      sub_1004A6EB4(0x2BuLL);
      if (v72)
      {
        sub_1004A6EC4(1u);
        sub_1004A6EB4(v73 | (v73 << 32));
      }

      else
      {
        sub_1004A6EC4(0);
      }

      sub_1004A6EB4(*(v74 + 16));
      v186 = *(v74 + 16);
      if (v186)
      {
        v187 = v74 + 40;
        do
        {

          _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

          v187 += 16;
          --v186;
        }

        while (v186);
      }

      goto LABEL_84;
    case 0x22u:
      v62 = *v51;
      sub_1004A6EB4(0x2CuLL);
      sub_1004A6EB4(*(v62 + 16));
      v63 = *(v62 + 16);
      if (v63)
      {
        v64 = 0;
        do
        {
          swift_beginAccess();
          sub_1004A6EA4();

          swift_bridgeObjectRetain_n();
          _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

          swift_bridgeObjectRelease_n();
          v64 += 40;
          --v63;
        }

        while (v63);
      }

      goto LABEL_84;
    case 0x23u:
      v59 = *v51;
      sub_1004A6EB4(0x2DuLL);
      sub_1004A6EB4(*(v59 + 16));
      v60 = *(v59 + 16);
      if (v60)
      {
        v61 = v59 + 54;
        do
        {
          v61 += 24;
          swift_beginAccess();
          sub_1004A6EA4();
          --v60;
        }

        while (v60);
      }

      goto LABEL_84;
    case 0x24u:
      sub_1004A6EB4(0x2EuLL);
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      goto LABEL_84;
    case 0x25u:
      v56 = *(v51 + 2);
      sub_1004A6EB4(0x2FuLL);
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

      sub_1004A6EB4(*(v56 + 16));
      v57 = *(v56 + 16);
      if (v57)
      {
        v58 = v56 + 48;
        do
        {
          if ((*(v58 - 16) & 0x8000000000000000) != 0)
          {
            sub_1004A6EB4(1uLL);
          }

          else
          {
            sub_1004A6EB4(0);
          }

          swift_beginAccess();
          sub_1004A6EA4();
          v58 += 24;
          --v57;
        }

        while (v57);
      }

      goto LABEL_84;
    case 0x26u:
      v55 = 0;
      goto LABEL_93;
    case 0x27u:
      v55 = 1;
      goto LABEL_93;
    case 0x28u:
      v55 = 2;
      goto LABEL_93;
    case 0x29u:
      v55 = 16;
      goto LABEL_93;
    case 0x2Au:
      v55 = 17;
      goto LABEL_93;
    case 0x2Bu:
      v55 = 18;
      goto LABEL_93;
    case 0x2Cu:
      v55 = 19;
      goto LABEL_93;
    case 0x2Du:
      v55 = 21;
      goto LABEL_93;
    case 0x2Eu:
      v55 = 22;
      goto LABEL_93;
    case 0x2Fu:
      v55 = 29;
LABEL_93:
      sub_1004A6EB4(v55);
      break;
    default:
      v52 = *(v51 + 2);
      v53 = *(v51 + 2);
      v54 = v207;
      sub_1004A6EB4(3uLL);
      sub_1004A6EB4(v52 | (v52 << 32));

      sub_1003AE7F8(v54, v53);
LABEL_84:

      break;
  }
}

Swift::Int Command.hashValue.getter()
{
  sub_1004A6E94();
  Command.hash(into:)(v1);
  return sub_1004A6F14();
}

Swift::Int sub_1003CFA2C(uint64_t a1)
{
  sub_1004A6E94();
  Command.hash(into:)(v2);
  return sub_1004A6F14();
}

char *sub_1003CFAA8(uint64_t a1)
{
  v3 = sub_10000C9C0(&qword_1005CDA78, &unk_1004CF7E0);
  __chkstk_darwin(v3 - 8);
  v5 = &v223[-v4];
  v6 = sub_10000C9C0(&qword_1005CD1C0, &unk_1004CEC40);
  __chkstk_darwin(v6 - 8);
  v8 = &v223[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v11 = &v223[-v10];
  v12 = type metadata accessor for Command(0);
  __chkstk_darwin(v12);
  v14 = &v223[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1003DABD4(a1, v14, type metadata accessor for Command);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      goto LABEL_72;
    case 2u:
      goto LABEL_56;
    case 3u:
      v118 = *(v14 + 48);
      v227 = *(v14 + 32);
      v228 = v118;
      v119 = *(v14 + 72);
      v229 = *(v14 + 64);
      v120 = *(v14 + 16);
      v225 = *v14;
      v226 = v120;
      v121 = *(v14 + 80);
      v122 = *(v14 + 88);
      v123 = *(v14 + 96);
      v124 = *(v14 + 104) | ((*(v14 + 108) | (*(v14 + 110) << 16)) << 32);
      v224 = *(v14 + 111);
      v125 = v224;
      sub_1003D1330(&v225, v119, v121, v122, v123, v124 | (v224 << 56), *(v14 + 112));
      v25 = v126;

      sub_1003A30F4(v122, v123, v124, v125);

      sub_100025F40(&v225, &qword_1005DC128, &qword_100500D08);
      return v25;
    case 4u:
      v67 = *v14;
      v68 = *(v14 + 8);
      v69 = *(v14 + 16);
      v70 = *(v14 + 24);
      v71 = *(v14 + 32);
      v72 = *(v14 + 40) | ((*(v14 + 44) | (*(v14 + 46) << 16)) << 32);
      v73 = *(v14 + 47);
      v74 = *(v14 + 48);
      LOBYTE(v225) = v73;
      sub_1003D190C(v67, v68, v69, v70, v71, v72 | (v73 << 56), v74);
      v25 = v75;

      sub_1003A30F4(v70, v71, v72, v73);

      goto LABEL_103;
    case 5u:
      sub_1003D1CE8(*v14, *(v14 + 8), *(v14 + 16), *(v14 + 24), *(v14 + 32) | (*(v14 + 36) << 32) | (*(v14 + 38) << 48));
      goto LABEL_87;
    case 6u:
      sub_1003D1E20(*v14, *(v14 + 8), *(v14 + 16), *(v14 + 24), *(v14 + 32), *(v14 + 40), *(v14 + 48));
      v25 = v155;

      return v25;
    case 7u:
      v127 = *v14;
      v14 = *(v14 + 16);
      v128 = *(v1 + 20);
      v129 = sub_1002F178C(0x205443454C4553uLL, 0xE700000000000000, v1 + 8, v128);
      if (v130)
      {
        v131._countAndFlagsBits = 0x205443454C4553;
        v131._object = 0xE700000000000000;
        v129 = ByteBuffer._setStringSlowpath(_:at:)(v131, v128);
      }

      v132 = v129;
      v133 = *(v1 + 20);
      v20 = __CFADD__(v133, v129);
      v134 = v133 + v129;
      if (v20)
      {
        goto LABEL_168;
      }

      *(v1 + 20) = v134;
      sub_100441F24(v127);
      v113 = __OFADD__(v132, v135);
      v136 = v132 + v135;
      if (v113)
      {
        goto LABEL_177;
      }

      v1 = sub_100494D28(v14);

      result = (v136 + v1);
      if (!__OFADD__(v136, v1))
      {
        return result;
      }

      __break(1u);
LABEL_72:
      v14 = *v14;
      v137 = *(v1 + 20);
      v138 = sub_1002F178C(0x204554454C4544uLL, 0xE700000000000000, v1 + 8, v137);
      if (v139)
      {
        v140._countAndFlagsBits = 0x204554454C4544;
        v140._object = 0xE700000000000000;
        v138 = ByteBuffer._setStringSlowpath(_:at:)(v140, v137);
      }

      v141 = v138;
      v142 = *(v1 + 20);
      v20 = __CFADD__(v142, v138);
      v143 = v142 + v138;
      if (v20)
      {
        goto LABEL_169;
      }

      *(v1 + 20) = v143;
      sub_100441F24(v14);
      v145 = v144;

      result = (v141 + v145);
      if (!__OFADD__(v141, v145))
      {
        return result;
      }

      __break(1u);
LABEL_78:
      sub_1003D42E8(*v14, *(v14 + 8), *(v14 + 16), *(v14 + 24), *(v14 + 32));
      v25 = v146;

      return v25;
    case 8u:
      goto LABEL_100;
    case 9u:
      v14 = *v14;
      v8 = *(v1 + 20);
      v79 = sub_1002F178C(0x4249524353425553uLL, 0xEA00000000002045, v1 + 8, v8);
      if (v80)
      {
        v81._countAndFlagsBits = 0x4249524353425553;
        v81._object = 0xEA00000000002045;
        v79 = ByteBuffer._setStringSlowpath(_:at:)(v81, v8);
      }

      v82 = v79;
      v83 = *(v1 + 20);
      v20 = __CFADD__(v83, v79);
      v84 = v83 + v79;
      if (v20)
      {
        goto LABEL_165;
      }

      *(v1 + 20) = v84;
      sub_100441F24(v14);
      v86 = v85;

      result = (v82 + v86);
      if (!__OFADD__(v82, v86))
      {
        return result;
      }

      __break(1u);
LABEL_48:
      v87 = sub_10000C9C0(&qword_1005DC0F8, &qword_100500CD8);
      v88 = *(v14 + *(v87 + 48));
      v89 = (v14 + *(v87 + 64));
      v90 = *v89;
      v91 = v89[1];
      v52 = &qword_1005CD1C0;
      v53 = &unk_1004CEC40;
      sub_100025FDC(v14, v8, &qword_1005CD1C0, &unk_1004CEC40);
      v54 = sub_1003D362C(v8, v88, v90, v91);

      sub_10027FF20(v90, v91);
      v55 = v8;
LABEL_49:
      v92 = v52;
      v93 = v53;
      goto LABEL_138;
    case 0xAu:
      v14 = *v14;
      v157 = *(v1 + 20);
      v158 = sub_1002F178C(0x5243534255534E55uLL, 0xEC00000020454249, v1 + 8, v157);
      if (v159)
      {
        v160._countAndFlagsBits = 0x5243534255534E55;
        v160._object = 0xEC00000020454249;
        v158 = ByteBuffer._setStringSlowpath(_:at:)(v160, v157);
      }

      v161 = v158;
      v162 = *(v1 + 20);
      v20 = __CFADD__(v162, v158);
      v163 = v162 + v158;
      if (v20)
      {
        goto LABEL_170;
      }

      *(v1 + 20) = v163;
      sub_100441F24(v14);
      v165 = v164;

      result = (v161 + v165);
      if (!__OFADD__(v161, v165))
      {
        return result;
      }

      __break(1u);
LABEL_100:
      sub_1003D2998(*v14, *(v14 + 8), *(v14 + 16));
      goto LABEL_101;
    case 0xBu:
      sub_1003D2B0C(*v14, *(v14 + 8), *(v14 + 16), *(v14 + 24), *(v14 + 32) | ((*(v14 + 36) | (*(v14 + 38) << 16)) << 32));
LABEL_87:
      v54 = v66;

      return v54;
    case 0xCu:
      goto LABEL_41;
    case 0xDu:
      v25 = sub_1003D2FAC(*v14);
      goto LABEL_103;
    case 0xEu:
      goto LABEL_32;
    case 0xFu:
      goto LABEL_63;
    case 0x10u:
      v47 = sub_10000C9C0(&qword_1005DC118, &qword_100500CF8);
      v48 = *(v14 + *(v47 + 48));
      v49 = (v14 + *(v47 + 64));
      v50 = *v49;
      v51 = v49[1];
      v52 = &qword_1005CDA78;
      v53 = &unk_1004CF7E0;
      sub_100025FDC(v14, v5, &qword_1005CDA78, &unk_1004CF7E0);
      v54 = sub_1003D32D4(v5, v48, v50, v51);

      sub_10027FF20(v50, v51);
      v55 = v5;
      goto LABEL_49;
    case 0x11u:
      v147 = *v14;
      v25 = sub_1003D3940(*v14, *(v14 + 8), *(v14 + 16), *(v14 + 24));

      sub_1000B37D8(v147);
      return v25;
    case 0x12u:
      v156 = v14 + *(sub_10000C9C0(&qword_1005DC110, &qword_100500CF0) + 48);
      v60 = *v156;
      v61 = *(v156 + 8);
      v62 = &qword_1005CDA78;
      v63 = &unk_1004CF7E0;
      sub_100025FDC(v14, v5, &qword_1005CDA78, &unk_1004CF7E0);
      v64 = 1163284301;
      goto LABEL_92;
    case 0x13u:
      goto LABEL_124;
    case 0x14u:
      return sub_1003D4A54(*v14, *(v14 + 8), *(v14 + 16), *(v14 + 24));
    case 0x15u:
      v151 = v14 + *(sub_10000C9C0(&qword_1005DC108, &qword_100500CE8) + 48);
      v152 = *v151;
      v153 = *(v151 + 8);
      v62 = &qword_1005CD1C0;
      v63 = &unk_1004CEC40;
      sub_100025FDC(v14, v8, &qword_1005CD1C0, &unk_1004CEC40);
      v154 = 0x59504F4320444955;
      goto LABEL_118;
    case 0x16u:
      goto LABEL_117;
    case 0x17u:
      goto LABEL_135;
    case 0x18u:
      v94 = *v14;
      v95 = *(v14 + 8);
      v96 = *(v14 + 16);
      v14 = *(v14 + 24);
      v97 = *(v1 + 20);
      v98 = sub_1002F178C(0x20444955uLL, 0xE400000000000000, v1 + 8, v97);
      if (v99)
      {
        v100._countAndFlagsBits = 541346133;
        v100._object = 0xE400000000000000;
        v98 = ByteBuffer._setStringSlowpath(_:at:)(v100, v97);
      }

      v101 = v98;
      v102 = *(v1 + 20);
      v20 = __CFADD__(v102, v98);
      v103 = v102 + v98;
      if (v20)
      {
        goto LABEL_166;
      }

      *(v1 + 20) = v103;
      v1 = sub_1003D3940(v94, v95, v96, v14);

      sub_1000B37D8(v94);
      result = (v101 + v1);
      if (!__OFADD__(v101, v1))
      {
        return result;
      }

      __break(1u);
LABEL_56:
      v104 = *v14;
      v14 = *(v14 + 16);
      v105 = *(v1 + 20);
      v106 = sub_1002F178C(0x20454E494D415845uLL, 0xE800000000000000, v1 + 8, v105);
      if (v107)
      {
        v108._countAndFlagsBits = 0x20454E494D415845;
        v108._object = 0xE800000000000000;
        v106 = ByteBuffer._setStringSlowpath(_:at:)(v108, v105);
      }

      v109 = v106;
      v110 = *(v1 + 20);
      v20 = __CFADD__(v110, v106);
      v111 = v110 + v106;
      if (v20)
      {
        goto LABEL_167;
      }

      *(v1 + 20) = v111;
      sub_100441F24(v104);
      v113 = __OFADD__(v109, v112);
      v5 = (v109 + v112);
      if (v113)
      {
        goto LABEL_176;
      }

      v114 = sub_100494D28(v14);

      result = &v5[v114];
      if (!__OFADD__(v5, v114))
      {
        return result;
      }

      __break(1u);
LABEL_63:
      v115 = sub_10000C9C0(&qword_1005DC120, &qword_100500D00);
      v116 = *(v14 + *(v115 + 48));
      v117 = *(v14 + *(v115 + 64));
      v62 = &qword_1005CDA78;
      v63 = &unk_1004CF7E0;
      sub_100025FDC(v14, v5, &qword_1005CDA78, &unk_1004CF7E0);
      v54 = sub_1003D318C(v5, v116, v117, 0x204843544546uLL, 0xE600000000000000, sub_10048D800);

LABEL_93:

      v55 = v5;
      goto LABEL_137;
    case 0x19u:
      goto LABEL_48;
    case 0x1Au:
      goto LABEL_152;
    case 0x1Bu:
      v35 = *v14;
      v36 = *(v14 + 8);
      v37 = *(v14 + 16);
      v38 = *(v14 + 20);
      v39 = *(v14 + 22);
      v40 = *(v1 + 20);
      v41 = sub_1002F178C(0x41544F5551544547uLL, 0xE900000000000020, v1 + 8, v40);
      if (v42)
      {
        v43._countAndFlagsBits = 0x41544F5551544547;
        v43._object = 0xE900000000000020;
        v41 = ByteBuffer._setStringSlowpath(_:at:)(v43, v40);
      }

      v14 = v41;
      v44 = *(v1 + 20);
      v20 = __CFADD__(v44, v41);
      v45 = v44 + v41;
      if (v20)
      {
        goto LABEL_164;
      }

      *(v1 + 20) = v45;
      v46 = sub_1003B1E70(v35, v36, v37 | (v38 << 32) | (v39 << 48));

      result = (v14 + v46);
      if (!__OFADD__(v14, v46))
      {
        return result;
      }

      __break(1u);
LABEL_25:
      v25 = sub_1003D468C(*v14);
      goto LABEL_103;
    case 0x1Cu:
      v14 = *v14;
      v200 = *(v1 + 20);
      v201 = sub_1002F178C(0x41544F5551544547uLL, 0xED000020544F4F52, v1 + 8, v200);
      if (v202)
      {
        v203._countAndFlagsBits = 0x41544F5551544547;
        v203._object = 0xED000020544F4F52;
        v201 = ByteBuffer._setStringSlowpath(_:at:)(v203, v200);
      }

      v204 = v201;
      v205 = *(v1 + 20);
      v20 = __CFADD__(v205, v201);
      v206 = v205 + v201;
      if (v20)
      {
        goto LABEL_173;
      }

      *(v1 + 20) = v206;
      sub_100441F24(v14);
      v208 = v207;

      result = (v204 + v208);
      if (!__OFADD__(v204, v208))
      {
        return result;
      }

      __break(1u);
LABEL_146:
      v25 = sub_1003D3C44(*v14, *(v14 + 8), *(v14 + 16) | (*(v14 + 20) << 32) | (*(v14 + 22) << 48), *(v14 + 24));

      goto LABEL_103;
    case 0x1Du:
      goto LABEL_146;
    case 0x1Eu:
      sub_1003D3F4C(*v14, *(v14 + 8), *(v14 + 16), *(v14 + 24));
      v25 = v166;

      goto LABEL_102;
    case 0x1Fu:
      goto LABEL_78;
    case 0x20u:
      v167 = *(v14 + 16);
      v225 = *v14;
      v226 = v167;
      v168 = *(v14 + 48);
      v227 = *(v14 + 32);
      v228 = v168;
      v169 = *(v1 + 20);
      v170 = sub_1002F178C(0x48435241455345uLL, 0xE700000000000000, v1 + 8, v169);
      if (v171)
      {
        v172._countAndFlagsBits = 0x48435241455345;
        v172._object = 0xE700000000000000;
        v170 = ByteBuffer._setStringSlowpath(_:at:)(v172, v169);
      }

      v173 = v170;
      v174 = *(v1 + 20);
      v20 = __CFADD__(v174, v170);
      v175 = v174 + v170;
      if (v20)
      {
        goto LABEL_171;
      }

      *(v1 + 20) = v175;
      v1 = sub_1003E8C6C(&v225);
      sub_1003D9E64(&v225);
      result = (v173 + v1);
      if (!__OFADD__(v173, v1))
      {
        return result;
      }

      __break(1u);
LABEL_112:
      v8 = 0x5443454C45534E55;
      v14 = *(v1 + 20);
      result = sub_1002F178C(0x5443454C45534E55uLL, 0xE800000000000000, v1 + 8, v14);
      if (v176)
      {
        v177._countAndFlagsBits = 0x5443454C45534E55;
        v177._object = 0xE800000000000000;
        result = ByteBuffer._setStringSlowpath(_:at:)(v177, v14);
      }

      v178 = *(v1 + 20);
      v20 = __CFADD__(v178, result);
      v21 = v178 + result;
      if (!v20)
      {
        goto LABEL_161;
      }

      __break(1u);
LABEL_117:
      v179 = v14 + *(sub_10000C9C0(&qword_1005DC108, &qword_100500CE8) + 48);
      v152 = *v179;
      v153 = *(v179 + 8);
      v62 = &qword_1005CD1C0;
      v63 = &unk_1004CEC40;
      sub_100025FDC(v14, v8, &qword_1005CD1C0, &unk_1004CEC40);
      v154 = 0x45564F4D20444955;
LABEL_118:
      v54 = sub_1003D3B18(v8, v152, v153, v154, 0xE900000000000020, sub_10048DA10);
      goto LABEL_136;
    case 0x21u:
      sub_1003D4430(*v14, *(v14 + 8), *(v14 + 16));
      v25 = v65;

      goto LABEL_103;
    case 0x22u:
      goto LABEL_25;
    case 0x23u:
      goto LABEL_14;
    case 0x24u:
      v230._countAndFlagsBits = *v14;
      v26 = *(v14 + 8);
      *&v225 = 0x53534552504D4F43;
      *(&v225 + 1) = 0xE900000000000020;
      v230._object = v26;
      sub_1004A5994(v230);
      v27 = v1;
      v28 = v225;
      v29 = *(v1 + 20);
      v30 = sub_1002F178C(v225, *(&v225 + 1), v27 + 8, *(v27 + 20));
      if (v31)
      {
        v30 = ByteBuffer._setStringSlowpath(_:at:)(v28, v29);
        v27 = v1;
      }

      v32 = v30;

      v33 = *(v27 + 20);
      result = v32;
      v20 = __CFADD__(v33, v32);
      v34 = v33 + v32;
      if (v20)
      {
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
        JUMPOUT(0x1003D0F64);
      }

      *(v27 + 20) = v34;
      return result;
    case 0x25u:
      goto LABEL_8;
    case 0x26u:
      v14 = *(v1 + 20);
      result = sub_1002F178C(0x494C494241504143uLL, 0xEA00000000005954, v1 + 8, v14);
      if (v209)
      {
        v210._countAndFlagsBits = 0x494C494241504143;
        v210._object = 0xEA00000000005954;
        result = ByteBuffer._setStringSlowpath(_:at:)(v210, v14);
      }

      v211 = *(v1 + 20);
      v20 = __CFADD__(v211, result);
      v21 = v211 + result;
      if (!v20)
      {
        goto LABEL_161;
      }

      __break(1u);
LABEL_152:
      sub_100025FDC(v14, v11, &qword_1005CD1C0, &unk_1004CEC40);
      v212 = *(v1 + 20);
      v213 = sub_1002F178C(0x5550584520444955uLL, 0xEC0000002045474ELL, v1 + 8, v212);
      if (v214)
      {
        v215._object = 0xEC0000002045474ELL;
        v215._countAndFlagsBits = 0x5550584520444955;
        v213 = ByteBuffer._setStringSlowpath(_:at:)(v215, v212);
      }

      v216 = v213;
      v217 = *(v1 + 20);
      v20 = __CFADD__(v217, v213);
      v218 = v217 + v213;
      if (v20)
      {
        goto LABEL_174;
      }

      *(v1 + 20) = v218;
      v1 = sub_10048DA10(v11);
      sub_100025F40(v11, &qword_1005CD1C0, &unk_1004CEC40);
      result = (v216 + v1);
      if (!__OFADD__(v216, v1))
      {
        return result;
      }

      __break(1u);
LABEL_158:
      v219 = *(v1 + 20);
      result = sub_1002F178C(0x454C4449uLL, 0xE400000000000000, v1 + 8, v219);
      if (v220)
      {
        v221._countAndFlagsBits = 1162626121;
        v221._object = 0xE400000000000000;
        result = ByteBuffer._setStringSlowpath(_:at:)(v221, v219);
      }

      v222 = *(v1 + 20);
      v20 = __CFADD__(v222, result);
      v21 = v222 + result;
      if (!v20)
      {
        goto LABEL_161;
      }

      goto LABEL_175;
    case 0x27u:
      v14 = *(v1 + 20);
      result = sub_1002F178C(0x54554F474F4CuLL, 0xE600000000000000, v1 + 8, v14);
      if (v180)
      {
        v181._countAndFlagsBits = 0x54554F474F4CLL;
        v181._object = 0xE600000000000000;
        result = ByteBuffer._setStringSlowpath(_:at:)(v181, v14);
      }

      v182 = *(v1 + 20);
      v20 = __CFADD__(v182, result);
      v21 = v182 + result;
      if (!v20)
      {
        goto LABEL_161;
      }

      __break(1u);
LABEL_124:
      v183 = *v14;
      v184 = *(v14 + 8);
      v185 = *(v14 + 16);
      v186 = *(v1 + 20);
      v187 = sub_1002F178C(0x204449uLL, 0xE300000000000000, v1 + 8, v186);
      if (v188)
      {
        v189._countAndFlagsBits = 2114633;
        v189._object = 0xE300000000000000;
        v187 = ByteBuffer._setStringSlowpath(_:at:)(v189, v186);
      }

      v190 = v187;
      v191 = *(v1 + 20);
      v20 = __CFADD__(v191, v187);
      v192 = v191 + v187;
      if (v20)
      {
        goto LABEL_172;
      }

      *(v1 + 20) = v192;
      sub_100430E74(v183, v184, v185);
      v1 = v193;

      result = (v190 + v1);
      if (!__OFADD__(v190, v1))
      {
        return result;
      }

      __break(1u);
LABEL_130:
      v8 = 0x4B43454843;
      v14 = *(v1 + 20);
      result = sub_1002F178C(0x4B43454843uLL, 0xE500000000000000, v1 + 8, v14);
      if (v194)
      {
        v195._countAndFlagsBits = 0x4B43454843;
        v195._object = 0xE500000000000000;
        result = ByteBuffer._setStringSlowpath(_:at:)(v195, v14);
      }

      v196 = *(v1 + 20);
      v20 = __CFADD__(v196, result);
      v21 = v196 + result;
      if (v20)
      {
        __break(1u);
LABEL_135:
        v197 = sub_10000C9C0(&qword_1005DC100, &qword_100500CE0);
        v198 = *(v14 + *(v197 + 48));
        v199 = *(v14 + *(v197 + 64));
        v62 = &qword_1005CD1C0;
        v63 = &unk_1004CEC40;
        sub_100025FDC(v14, v8, &qword_1005CD1C0, &unk_1004CEC40);
        v54 = sub_1003D318C(v8, v198, v199, 0x4354454620444955uLL, 0xEA00000000002048, sub_10048DA10);

LABEL_136:

        v55 = v8;
LABEL_137:
        v92 = v62;
        v93 = v63;
LABEL_138:
        sub_100025F40(v55, v92, v93);
        return v54;
      }

      else
      {
LABEL_161:
        *(v1 + 20) = v21;
      }

      return result;
    case 0x28u:
      v14 = *(v1 + 20);
      result = sub_1002F178C(0x504F4F4EuLL, 0xE400000000000000, v1 + 8, v14);
      if (v76)
      {
        v77._countAndFlagsBits = 1347374926;
        v77._object = 0xE400000000000000;
        result = ByteBuffer._setStringSlowpath(_:at:)(v77, v14);
      }

      v78 = *(v1 + 20);
      v20 = __CFADD__(v78, result);
      v21 = v78 + result;
      if (!v20)
      {
        goto LABEL_161;
      }

      __break(1u);
LABEL_41:
      sub_1003D2E74(*v14, *(v14 + 8), *(v14 + 16), *(v14 + 24));
      goto LABEL_101;
    case 0x29u:
      v14 = *(v1 + 20);
      result = sub_1002F178C(0x534C545452415453uLL, 0xE800000000000000, v1 + 8, v14);
      if (v148)
      {
        v149._countAndFlagsBits = 0x534C545452415453;
        v149._object = 0xE800000000000000;
        result = ByteBuffer._setStringSlowpath(_:at:)(v149, v14);
      }

      v150 = *(v1 + 20);
      v20 = __CFADD__(v150, result);
      v21 = v150 + result;
      if (!v20)
      {
        goto LABEL_161;
      }

      __break(1u);
      return sub_1003D4A54(*v14, *(v14 + 8), *(v14 + 16), *(v14 + 24));
    case 0x2Au:
      goto LABEL_130;
    case 0x2Bu:
      v14 = *(v1 + 20);
      result = sub_1002F178C(0x45534F4C43uLL, 0xE500000000000000, v1 + 8, v14);
      if (v17)
      {
        v18._countAndFlagsBits = 0x45534F4C43;
        v18._object = 0xE500000000000000;
        result = ByteBuffer._setStringSlowpath(_:at:)(v18, v14);
      }

      v19 = *(v1 + 20);
      v20 = __CFADD__(v19, result);
      v21 = v19 + result;
      if (!v20)
      {
        goto LABEL_161;
      }

      __break(1u);
LABEL_8:
      v15 = sub_1003D4B78(*v14, *(v14 + 8), *(v14 + 16));
LABEL_101:
      v25 = v15;
LABEL_102:

      goto LABEL_103;
    case 0x2Cu:
      v14 = *(v1 + 20);
      v5 = 0;
      result = sub_1002F178C(0x45474E55505845uLL, 0xE700000000000000, v1 + 8, v14);
      if (v56)
      {
        v5 = v1;
        v57._countAndFlagsBits = 0x45474E55505845;
        v57._object = 0xE700000000000000;
        result = ByteBuffer._setStringSlowpath(_:at:)(v57, v14);
      }

      v58 = *(v1 + 20);
      v20 = __CFADD__(v58, result);
      v21 = v58 + result;
      if (!v20)
      {
        goto LABEL_161;
      }

      __break(1u);
LABEL_32:
      v59 = v14 + *(sub_10000C9C0(&qword_1005DC110, &qword_100500CF0) + 48);
      v60 = *v59;
      v61 = *(v59 + 8);
      v62 = &qword_1005CDA78;
      v63 = &unk_1004CF7E0;
      sub_100025FDC(v14, v5, &qword_1005CDA78, &unk_1004CF7E0);
      v64 = 1498435395;
LABEL_92:
      v54 = sub_1003D3B18(v5, v60, v61, v64 & 0xFFFF0000FFFFFFFFLL | 0x2000000000, 0xE500000000000000, sub_10048D800);
      goto LABEL_93;
    case 0x2Du:
      goto LABEL_112;
    case 0x2Eu:
      goto LABEL_158;
    case 0x2Fu:
      v14 = *(v1 + 20);
      result = sub_1002F178C(0x43415053454D414EuLL, 0xE900000000000045, v1 + 8, v14);
      if (v22)
      {
        v23._object = 0xE900000000000045;
        v23._countAndFlagsBits = 0x43415053454D414ELL;
        result = ByteBuffer._setStringSlowpath(_:at:)(v23, v14);
      }

      v24 = *(v1 + 20);
      v20 = __CFADD__(v24, result);
      v21 = v24 + result;
      if (!v20)
      {
        goto LABEL_161;
      }

      __break(1u);
LABEL_14:
      v25 = sub_1003D4874(*v14);
LABEL_103:

      return v25;
    default:
      sub_1003D1064(*v14, *(v14 + 8), *(v14 + 16));
      goto LABEL_101;
  }
}

void sub_1003D1064(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = *(v3 + 20);
  v8 = sub_1002F178C(0x20455441455243uLL, 0xE700000000000000, v3 + 8, v7);
  if (v9)
  {
    v10._countAndFlagsBits = 0x20455441455243;
    v10._object = 0xE700000000000000;
    v8 = ByteBuffer._setStringSlowpath(_:at:)(v10, v7);
  }

  v11 = v8;
  v12 = *(v3 + 20);
  v13 = __CFADD__(v12, v8);
  v14 = v12 + v8;
  if (v13)
  {
    __break(1u);
    goto LABEL_29;
  }

  *(v3 + 20) = v14;
  sub_100441F24(a1);
  v16 = v11 + v15;
  if (__OFADD__(v11, v15))
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v17 = *(a3 + 16);
  if (v17)
  {
    v18 = *(v3 + 20);
    v19 = sub_1002F178C(0x20uLL, 0xE100000000000000, v3 + 8, v18);
    if (v20)
    {
      v21._countAndFlagsBits = 32;
      v21._object = 0xE100000000000000;
      v19 = ByteBuffer._setStringSlowpath(_:at:)(v21, v18);
    }

    v22 = v19;
    v23 = *(v3 + 20);
    v24 = (v23 + v19);
    if (__CFADD__(v23, v19))
    {
      goto LABEL_31;
    }

    *(v3 + 20) = v24;
    v54 = a3;
    v25 = sub_1002F178C(0, 0xE000000000000000, v3 + 8, v24);
    if (v26)
    {
      v27._countAndFlagsBits = 0;
      v27._object = 0xE000000000000000;
      v25 = ByteBuffer._setStringSlowpath(_:at:)(v27, v24);
    }

    v28 = v25;
    v29 = *(v3 + 20);
    v30 = (v29 + v25);
    if (__CFADD__(v29, v25))
    {
      goto LABEL_32;
    }

    *(v3 + 20) = v30;
    v31 = sub_1002F178C(0x28uLL, 0xE100000000000000, v3 + 8, v30);
    if (v32)
    {
      v33._countAndFlagsBits = 40;
      v33._object = 0xE100000000000000;
      v31 = ByteBuffer._setStringSlowpath(_:at:)(v33, v30);
    }

    v34 = *(v3 + 20);
    v13 = __CFADD__(v34, v31);
    v35 = v34 + v31;
    if (v13)
    {
      goto LABEL_33;
    }

    *(v3 + 20) = v35;
    v36 = v28 + v31;
    if (__OFADD__(v28, v31))
    {
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    __chkstk_darwin(v31);
    v53[2] = sub_1003D4E2C;
    v53[3] = 0;
    v53[4] = v4;
    v53[5] = &v54;
    v53[6] = 0;
    v53[7] = 0xE000000000000000;
    v37 = sub_100451E28(0, sub_1003DAA94, v53, a3);
    v38 = v36 + v37;
    if (__OFADD__(v36, v37))
    {
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    v39 = *(v4 + 20);
    v40 = sub_1002F178C(0x29uLL, 0xE100000000000000, v4 + 8, v39);
    if (v41)
    {
      v42._countAndFlagsBits = 41;
      v42._object = 0xE100000000000000;
      v40 = ByteBuffer._setStringSlowpath(_:at:)(v42, v39);
    }

    v43 = *(v4 + 20);
    v44 = (v43 + v40);
    if (__CFADD__(v43, v40))
    {
      goto LABEL_36;
    }

    *(v4 + 20) = v44;
    v45 = __OFADD__(v38, v40);
    v46 = v38 + v40;
    if (v45)
    {
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v47 = sub_1002F178C(0, 0xE000000000000000, v4 + 8, v44);
    if (v48)
    {
      v49._countAndFlagsBits = 0;
      v49._object = 0xE000000000000000;
      v47 = ByteBuffer._setStringSlowpath(_:at:)(v49, v44);
    }

    v50 = *(v4 + 20);
    v13 = __CFADD__(v50, v47);
    v51 = v50 + v47;
    if (v13)
    {
      goto LABEL_38;
    }

    *(v4 + 20) = v51;
    v52 = v46 + v47;
    if (__OFADD__(v46, v47))
    {
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    v45 = __OFADD__(v22, v52);
    v17 = v22 + v52;
    if (v45)
    {
LABEL_40:
      __break(1u);
      return;
    }
  }

  if (__OFADD__(v16, v17))
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }
}

void sub_1003D1330(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v98 = a7;
  v96 = a6;
  v95 = a5;
  v97 = a4;
  v99 = a2;
  v10 = a1[1];
  v110 = *a1;
  v111 = v10;
  v11 = *(a1 + 4);
  v108 = *(a1 + 40);
  v12 = *(a1 + 8);
  v109 = *(a1 + 7);
  v13 = *(v7 + 20);
  v14 = sub_1002F178C(0x5453494CuLL, 0xE400000000000000, v7 + 8, v13);
  if (v15)
  {
    v16._countAndFlagsBits = 1414744396;
    v16._object = 0xE400000000000000;
    v14 = ByteBuffer._setStringSlowpath(_:at:)(v16, v13);
  }

  v17 = v14;
  v18 = *(v7 + 20);
  v19 = (v18 + v14);
  if (__CFADD__(v18, v14))
  {
    goto LABEL_59;
  }

  *(v7 + 20) = v19;
  v20 = *(a1 + 8);
  if (!v20)
  {
    goto LABEL_36;
  }

  v21 = sub_1002F178C(0x20uLL, 0xE100000000000000, v7 + 8, v19);
  if (v22)
  {
    v23._countAndFlagsBits = 32;
    v23._object = 0xE100000000000000;
    v21 = ByteBuffer._setStringSlowpath(_:at:)(v23, v19);
  }

  v24 = *(v7 + 20);
  v25 = (v24 + v21);
  if (__CFADD__(v24, v21))
  {
    goto LABEL_68;
  }

  v93 = v21;
  *(v7 + 20) = v25;
  v26 = sub_1002F178C(0x28uLL, 0xE100000000000000, v7 + 8, v25);
  if (v27)
  {
    v28._countAndFlagsBits = 40;
    v28._object = 0xE100000000000000;
    v26 = ByteBuffer._setStringSlowpath(_:at:)(v28, v25);
  }

  v29 = *(v7 + 20);
  v30 = (v29 + v26);
  if (__CFADD__(v29, v26))
  {
    goto LABEL_69;
  }

  v94 = v26;
  *(v7 + 20) = v30;
  v107 = v12;
  v31 = *(v12 + 16);
  if (v31)
  {
    v101 = v110;
    v102 = v111;
    v103 = v11;
    v104 = v108;
    v105 = v109;
    v106 = v12;
    sub_1003DAAC0(&v101, v100);
    v32 = sub_1002F178C(0, 0xE000000000000000, v7 + 8, v30);
    if (v33)
    {
      v34._countAndFlagsBits = 0;
      v34._object = 0xE000000000000000;
      v32 = ByteBuffer._setStringSlowpath(_:at:)(v34, v30);
    }

    v35 = v32;
    v36 = *(v8 + 20);
    v37 = __CFADD__(v36, v32);
    v38 = v36 + v32;
    if (v37)
    {
      goto LABEL_78;
    }

    *(v8 + 20) = v38;
  }

  else
  {
    v101 = v110;
    v102 = v111;
    v103 = v11;
    v104 = v108;
    v105 = v109;
    v106 = v12;
    v32 = sub_1003DAAC0(&v101, v100);
    v35 = 0;
  }

  __chkstk_darwin(v32);
  v92[2] = sub_100438924;
  v92[3] = 0;
  v92[4] = v8;
  v92[5] = &v107;
  v92[6] = 0;
  v92[7] = 0xE000000000000000;
  v39 = sub_10045219C(0, sub_1003DAB1C, v92, v12);
  v40 = v35 + v39;
  if (__OFADD__(v35, v39))
  {
    goto LABEL_70;
  }

  if (v31)
  {
    v41 = *(v8 + 20);
    v42 = sub_1002F178C(0, 0xE000000000000000, v8 + 8, v41);
    if (v43)
    {
      v44._countAndFlagsBits = 0;
      v44._object = 0xE000000000000000;
      v42 = ByteBuffer._setStringSlowpath(_:at:)(v44, v41);
    }

    v45 = *(v8 + 20);
    v37 = __CFADD__(v45, v42);
    v46 = v45 + v42;
    if (v37)
    {
      goto LABEL_79;
    }

    *(v8 + 20) = v46;
    v47 = v40 + v42;
    if (!__OFADD__(v40, v42))
    {
      goto LABEL_23;
    }

    __break(1u);
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v47 = v35 + v39;
LABEL_23:
  if (v11 == 0xFF)
  {
    v48 = *(v8 + 20);
    v49 = sub_1002F178C(0x4249524353425553uLL, 0xEA00000000004445, v8 + 8, v48);
    if (v50)
    {
      v51._countAndFlagsBits = 0x4249524353425553;
      v51._object = 0xEA00000000004445;
      v49 = ByteBuffer._setStringSlowpath(_:at:)(v51, v48);
    }

    v52 = v49;
    sub_100025F40(a1, &qword_1005DC128, &qword_100500D08);
    v53 = *(v8 + 20);
    v37 = __CFADD__(v53, v52);
    v54 = v53 + v52;
    if (v37)
    {
      goto LABEL_80;
    }

    *(v8 + 20) = v54;
  }

  else
  {
    v101 = v110;
    v102 = v111;
    v103 = v11;
    v104 = v108;
    v105 = v109;
    v52 = sub_100462548(&v101);
    sub_100025F40(a1, &qword_1005DC128, &qword_100500D08);
  }

  v55 = v47 + v52;
  if (__OFADD__(v47, v52))
  {
    goto LABEL_71;
  }

  v56 = v94 + v55;
  if (__OFADD__(v94, v55))
  {
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v57 = *(v8 + 20);
  v58 = sub_1002F178C(0x29uLL, 0xE100000000000000, v8 + 8, v57);
  if (v59)
  {
    v60._countAndFlagsBits = 41;
    v60._object = 0xE100000000000000;
    v58 = ByteBuffer._setStringSlowpath(_:at:)(v60, v57);
  }

  v61 = *(v8 + 20);
  LODWORD(v19) = v61 + v58;
  if (__CFADD__(v61, v58))
  {
    goto LABEL_73;
  }

  *(v8 + 20) = v19;
  v62 = v56 + v58;
  if (__OFADD__(v56, v58))
  {
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  v63 = __OFADD__(v93, v62);
  v20 = v93 + v62;
  if (v63)
  {
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

LABEL_36:
  v64 = v17 + v20;
  if (__OFADD__(v17, v20))
  {
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v65 = sub_1002F178C(0x20uLL, 0xE100000000000000, v8 + 8, v19);
  if (v66)
  {
    v67._countAndFlagsBits = 32;
    v67._object = 0xE100000000000000;
    v65 = ByteBuffer._setStringSlowpath(_:at:)(v67, v19);
  }

  v68 = *(v8 + 20);
  v37 = __CFADD__(v68, v65);
  v69 = v68 + v65;
  if (v37)
  {
    goto LABEL_61;
  }

  *(v8 + 20) = v69;
  v70 = v64 + v65;
  if (__OFADD__(v64, v65))
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  sub_100441F24(v99);
  v72 = v70 + v71;
  if (__OFADD__(v70, v71))
  {
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  v73 = *(v8 + 20);
  v74 = sub_1002F178C(0x20uLL, 0xE100000000000000, v8 + 8, v73);
  if (v75)
  {
    v76._countAndFlagsBits = 32;
    v76._object = 0xE100000000000000;
    v74 = ByteBuffer._setStringSlowpath(_:at:)(v76, v73);
  }

  v77 = v98;
  v78 = *(v8 + 20);
  v37 = __CFADD__(v78, v74);
  v79 = v78 + v74;
  if (v37)
  {
    goto LABEL_64;
  }

  *(v8 + 20) = v79;
  v80 = v72 + v74;
  if (__OFADD__(v72, v74))
  {
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  if ((v96 & 0x100000000000000) != 0)
  {
    v81 = sub_100475A74(v97);
  }

  else
  {
    v81 = sub_1003B1E70(v97, v95, v96 & 0xFFFFFFFFFFFFFFLL);
  }

  v82 = v80 + v81;
  if (__OFADD__(v80, v81))
  {
    goto LABEL_66;
  }

  v83 = *(v77 + 16);
  if (v83)
  {
    v84 = *(v8 + 20);
    v85 = sub_1002F178C(0x20uLL, 0xE100000000000000, v8 + 8, v84);
    if (v86)
    {
      v87._countAndFlagsBits = 32;
      v87._object = 0xE100000000000000;
      v85 = ByteBuffer._setStringSlowpath(_:at:)(v87, v84);
    }

    v88 = v85;
    v89 = *(v8 + 20);
    v37 = __CFADD__(v89, v85);
    v90 = v89 + v85;
    if (v37)
    {
      goto LABEL_76;
    }

    *(v8 + 20) = v90;
    v91 = sub_1004366B8(v77);
    v83 = v88 + v91;
    if (__OFADD__(v88, v91))
    {
LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
      return;
    }
  }

  if (__OFADD__(v82, v83))
  {
    goto LABEL_67;
  }
}