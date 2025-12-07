uint64_t PlaylistCurators.View.curatorsString.getter()
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  v1 = type metadata accessor for String.LocalizationValue();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = v18 - v5;
  type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin();
  type metadata accessor for PlaylistCurators.Curator(0);
  __chkstk_darwin();
  v9 = (v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(*v0 + 16);
  if (v10)
  {
    outlined init with copy of Collaboration.Management.View(*v0 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PlaylistCurators.Curator);
    v11 = v10 - 1;
    if (v11)
    {
      String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v13._countAndFlagsBits = 0;
      v13._object = 0xE000000000000000;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v13);
      String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(*v9);
      v14._countAndFlagsBits = 2106912;
      v14._object = 0xE300000000000000;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v14);
      v18[1] = v11;
      String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
      v15._countAndFlagsBits = 0x7328726568744F20;
      v15._object = 0xE900000000000029;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v15);
      String.LocalizationValue.init(stringInterpolation:)();
      (*(v2 + 16))(v4, v6, v1);
      if (one-time initialization token for module != -1)
      {
        swift_once();
      }

      v16 = static NSBundle.module;
      static Locale.current.getter();
      countAndFlagsBits = String.init(localized:table:bundle:locale:comment:)();
      (*(v2 + 8))(v6, v1);
    }

    else
    {
      countAndFlagsBits = v9->_countAndFlagsBits;
    }

    outlined destroy of ArtworkImage.Placeholder(v9, type metadata accessor for PlaylistCurators.Curator);
    return countAndFlagsBits;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t PlaylistCurators.View.fontTextStyle.getter@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v1 = type metadata accessor for UserInterfaceSizeClass();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v24 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI22UserInterfaceSizeClassOSg_ADtMd, &_s7SwiftUI22UserInterfaceSizeClassOSg_ADtMR) - 8;
  __chkstk_darwin();
  v6 = &v23 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
  __chkstk_darwin();
  v25 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v23 - v8;
  __chkstk_darwin();
  v11 = &v23 - v10;
  PlaylistCurators.View.horizontalSizeClass.getter(&v23 - v10);
  (*(v2 + 104))(v9, enum case for UserInterfaceSizeClass.compact(_:), v1);
  (*(v2 + 56))(v9, 0, 1, v1);
  v12 = *(v4 + 56);
  outlined init with copy of TaskPriority?(v11, v6, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
  outlined init with copy of TaskPriority?(v9, &v6[v12], &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
  v13 = *(v2 + 48);
  if (v13(v6, 1, v1) == 1)
  {
    outlined destroy of TaskPriority?(v9, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
    outlined destroy of TaskPriority?(v11, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
    if (v13(&v6[v12], 1, v1) == 1)
    {
      outlined destroy of TaskPriority?(v6, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
LABEL_9:
      v14 = &enum case for Font.TextStyle.title3(_:);
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  outlined init with copy of TaskPriority?(v6, v25, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
  if (v13(&v6[v12], 1, v1) == 1)
  {
    outlined destroy of TaskPriority?(v9, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
    outlined destroy of TaskPriority?(v11, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
    (*(v2 + 8))(v25, v1);
LABEL_6:
    outlined destroy of TaskPriority?(v6, &_s7SwiftUI22UserInterfaceSizeClassOSg_ADtMd, &_s7SwiftUI22UserInterfaceSizeClassOSg_ADtMR);
    goto LABEL_7;
  }

  v15 = &v6[v12];
  v16 = v24;
  (*(v2 + 32))(v24, v15, v1);
  lazy protocol witness table accessor for type Collaboration.Management.Model and conformance Collaboration.Management.Model(&lazy protocol witness table cache variable for type UserInterfaceSizeClass and conformance UserInterfaceSizeClass, &type metadata accessor for UserInterfaceSizeClass, &protocol conformance descriptor for UserInterfaceSizeClass);
  v17 = v25;
  v18 = dispatch thunk of static Equatable.== infix(_:_:)();
  v19 = *(v2 + 8);
  v19(v16, v1);
  outlined destroy of TaskPriority?(v9, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
  outlined destroy of TaskPriority?(v11, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
  v19(v17, v1);
  outlined destroy of TaskPriority?(v6, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
  if (v18)
  {
    goto LABEL_9;
  }

LABEL_7:
  v14 = &enum case for Font.TextStyle.title2(_:);
LABEL_10:
  v20 = *v14;
  v21 = type metadata accessor for Font.TextStyle();
  return (*(*(v21 - 8) + 104))(v26, v20, v21);
}

uint64_t closure #1 in PlaylistCurators.View.faceholeView(_:)(uint64_t a1)
{
  v2 = [objc_opt_self() secondarySystemBackgroundColor];
  v4[3] = &type metadata for Color;
  v4[4] = &protocol witness table for Color;
  v4[0] = Color.init(_:)();
  return outlined assign with take of PlaybackIntentDescriptor.IntentType?(v4, a1 + 40, &_s7SwiftUI10ShapeStyle_pSgMd, &_s7SwiftUI10ShapeStyle_pSgMR);
}

void one-time initialization function for borderColor()
{
  v0 = objc_allocWithZone(UIColor);
  v3[4] = closure #1 in variable initialization expression of static PlaylistCurators.View.Specs.borderColor;
  v3[5] = 0;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 1107296256;
  v3[2] = thunk for @escaping @callee_guaranteed (@guaranteed UITraitCollection) -> (@owned UIColor);
  v3[3] = &block_descriptor_59;
  v1 = _Block_copy(v3);
  v2 = [v0 initWithDynamicProvider:v1];
  _Block_release(v1);

  static PlaylistCurators.View.Specs.borderColor = v2;
}

id closure #1 in variable initialization expression of static PlaylistCurators.View.Specs.borderColor(void *a1)
{
  if ([a1 userInterfaceIdiom] == 6)
  {
    v2 = objc_opt_self();
    v3 = &selRef_whiteColor;
  }

  else
  {
    v4 = [a1 userInterfaceStyle];
    v2 = objc_opt_self();
    v3 = &selRef_whiteColor;
    if (v4 == 2)
    {
      v3 = &selRef_blackColor;
    }
  }

  v5 = [v2 *v3];

  return v5;
}

uint64_t one-time initialization function for faceholeBorder()
{
  if (one-time initialization token for borderColor != -1)
  {
    swift_once();
  }

  v0 = static PlaylistCurators.View.Specs.borderColor;
  result = Color.init(uiColor:)();
  static PlaylistCurators.View.Specs.faceholeBorder = result;
  qword_10060C5A0 = 0x3FF0000000000000;
  byte_10060C5A8 = 1;
  return result;
}

double PlaylistCurators.ViewController.configuration.getter()
{
  swift_beginAccess();

  return result;
}

uint64_t PlaylistCurators.ViewController.configuration.setter(uint64_t a1)
{
  v3 = direct field offset for PlaylistCurators.ViewController.configuration;
  swift_beginAccess();
  *(v1 + v3) = a1;

  v4 = dispatch thunk of UIHostingController.rootView.modify();
  *v5 = a1;

  return v4(v7, 0);
}

uint64_t (*PlaylistCurators.ViewController.configuration.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  *a1 = v3;
  v4 = direct field offset for PlaylistCurators.ViewController.configuration;
  *(v3 + 32) = v1;
  *(v3 + 40) = v4;
  swift_beginAccess();
  return PlaylistCurators.ViewController.configuration.modify;
}

void PlaylistCurators.ViewController.configuration.modify(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = *(v3[4] + v3[5]);

    v5 = dispatch thunk of UIHostingController.rootView.modify();
    *v6 = v4;

    v5(v3, 0);
  }

  free(v3);
}

uint64_t PlaylistCurators.ViewController.__allocating_init(configuration:)(uint64_t a1, __n128 a2)
{
  v4 = type metadata accessor for PlaylistCurators.View(0) - 8;
  __chkstk_darwin();
  v6 = (&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = objc_allocWithZone(v2);
  *&v7[direct field offset for PlaylistCurators.ViewController.configuration] = a1;
  v8 = *(v4 + 28);
  *(v6 + v8) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA22UserInterfaceSizeClassOSg_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA22UserInterfaceSizeClassOSg_GMR);
  swift_storeEnumTagMultiPayload();
  *v6 = a1;

  return UIHostingController.init(rootView:)();
}

uint64_t PlaylistCurators.ViewController.init(configuration:)(uint64_t a1, __n128 a2)
{
  type metadata accessor for PlaylistCurators.View(0);
  __chkstk_darwin();
  v5 = (&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  *(v2 + direct field offset for PlaylistCurators.ViewController.configuration) = a1;
  v7 = *(v6 + 28);
  *(v5 + v7) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA22UserInterfaceSizeClassOSg_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA22UserInterfaceSizeClassOSg_GMR);
  swift_storeEnumTagMultiPayload();
  *v5 = a1;

  return UIHostingController.init(rootView:)();
}

id Collaboration.Management.ViewController.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

id protocol witness for UIViewControllerRepresentable.makeUIViewController(context:) in conformance ClearBackground(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ClearBackground.Controller();
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v2 init];
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance ClearBackground(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type ClearBackground and conformance ClearBackground();

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance ClearBackground(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type ClearBackground and conformance ClearBackground();

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void protocol witness for View.body.getter in conformance ClearBackground(uint64_t a1)
{
  lazy protocol witness table accessor for type ClearBackground and conformance ClearBackground();
  UIViewControllerRepresentable.body.getter();
  __break(1u);
}

uint64_t key path setter for Collaboration.Management.Model.pendingCollaborators : Collaboration.Management.Model(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

void specialized _NativeSet.copyAndResize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v34 = type metadata accessor for Playlist.Collaborator();
  v3 = *(v34 - 8);
  __chkstk_darwin();
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy8MusicKit8PlaylistV0cD8InternalE12CollaboratorVGMd, &_ss11_SetStorageCy8MusicKit8PlaylistV0cD8InternalE12CollaboratorVGMR);
  v7 = static _SetStorage.resize(original:capacity:move:)();
  v8 = v6;
  if (*(v6 + 16))
  {
    v29 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v32 = v3 + 16;
    v33 = v3;
    v15 = v7 + 56;
    v30 = (v3 + 32);
    v31 = v8;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v33 + 72);
      (*(v33 + 16))(v5, *(v8 + 48) + v20 * (v17 | (v9 << 6)), v34);
      lazy protocol witness table accessor for type Collaboration.Management.Model and conformance Collaboration.Management.Model(&lazy protocol witness table cache variable for type Playlist.Collaborator and conformance Playlist.Collaborator, &type metadata accessor for Playlist.Collaborator, &protocol conformance descriptor for Playlist.Collaborator);
      v21 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v30)(*(v7 + 48) + v16 * v20, v5, v34);
      ++*(v7 + 16);
      v8 = v31;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v29;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v7;
  }
}

{
  v2 = v1;
  v34 = type metadata accessor for IndexPath();
  v3 = *(v34 - 8);
  __chkstk_darwin();
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10Foundation9IndexPathVGMd, &_ss11_SetStorageCy10Foundation9IndexPathVGMR);
  v7 = static _SetStorage.resize(original:capacity:move:)();
  v8 = v6;
  if (*(v6 + 16))
  {
    v29 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v32 = v3 + 16;
    v33 = v3;
    v15 = v7 + 56;
    v30 = (v3 + 32);
    v31 = v8;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v33 + 72);
      (*(v33 + 16))(v5, *(v8 + 48) + v20 * (v17 | (v9 << 6)), v34);
      lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
      v21 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v30)(*(v7 + 48) + v16 * v20, v5, v34);
      ++*(v7 + 16);
      v8 = v31;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v29;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v7;
  }
}

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd_0, &_ss11_SetStorageCySSGMR_0);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v20 = Hasher._finalize()();
      v21 = -1 << *(v5 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v11 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v11 + 8 * v23);
          if (v27 != -1)
          {
            v12 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v22) & ~*(v11 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }
}

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy7LyricsX0C14OptionsManagerC6OptionOGMd, &_ss11_SetStorageCy7LyricsX0C14OptionsManagerC6OptionOGMR);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + (v13 | (v6 << 6)));
      Hasher.init(_seed:)();
      Hasher._combine(_:)(qword_100519430[v16]);
      v17 = Hasher._finalize()();
      v18 = -1 << *(v5 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }
}

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy7LyricsX06SyncedC8LineViewC4WordCGMd, &_ss11_SetStorageCy7LyricsX06SyncedC8LineViewC4WordCGMR);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v16);
      v17 = Hasher._finalize()();
      v18 = -1 << *(v5 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }
}

void specialized _NativeSet.resize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v37 = type metadata accessor for Playlist.Collaborator();
  v3 = *(v37 - 8);
  __chkstk_darwin();
  v36 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy8MusicKit8PlaylistV0cD8InternalE12CollaboratorVGMd, &_ss11_SetStorageCy8MusicKit8PlaylistV0cD8InternalE12CollaboratorVGMR);
  v6 = static _SetStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v1;
    v32 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v35 = v3 + 32;
    v14 = v6 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v33 = *(v3 + 72);
      v34 = v20;
      v20(v36, v19, v37);
      lazy protocol witness table accessor for type Collaboration.Management.Model and conformance Collaboration.Management.Model(&lazy protocol witness table cache variable for type Playlist.Collaborator and conformance Playlist.Collaborator, &type metadata accessor for Playlist.Collaborator, &protocol conformance descriptor for Playlist.Collaborator);
      v21 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v34(*(v7 + 48) + v15 * v33, v36, v37);
      ++*(v7 + 16);
      v5 = v32;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero(v9, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    v2 = v31;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
}

{
  v2 = v1;
  v37 = type metadata accessor for IndexPath();
  v3 = *(v37 - 8);
  __chkstk_darwin();
  v36 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10Foundation9IndexPathVGMd, &_ss11_SetStorageCy10Foundation9IndexPathVGMR);
  v6 = static _SetStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v1;
    v32 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v35 = v3 + 32;
    v14 = v6 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v33 = *(v3 + 72);
      v34 = v20;
      v20(v36, v19, v37);
      lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
      v21 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v34(*(v7 + 48) + v15 * v33, v36, v37);
      ++*(v7 + 16);
      v5 = v32;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero(v9, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    v2 = v31;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
}

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd_0, &_ss11_SetStorageCySSGMR_0);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      Hasher.init(_seed:)();
      String.hash(into:)();
      v21 = Hasher._finalize()();
      v22 = -1 << *(v5 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v3 + 32);
    if (v29 >= 64)
    {
      bzero((v3 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v29;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

{
  specialized _NativeSet.resize(capacity:)(a1, &_ss11_SetStorageCySo14MSVLyricsAgentCGMd, &_ss11_SetStorageCySo14MSVLyricsAgentCGMR);
}

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy7LyricsX0C14OptionsManagerC6OptionOGMd, &_ss11_SetStorageCy7LyricsX0C14OptionsManagerC6OptionOGMR);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + (v14 | (v6 << 6)));
      Hasher.init(_seed:)();
      Hasher._combine(_:)(qword_100519430[v17]);
      v18 = Hasher._finalize()();
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy7LyricsX06SyncedC8LineViewC4WordCGMd, &_ss11_SetStorageCy7LyricsX06SyncedC8LineViewC4WordCGMR);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v17);
      v18 = Hasher._finalize()();
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

uint64_t key path setter for EnvironmentValues.symbolRenderingMode : EnvironmentValues, serialized(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19SymbolRenderingModeVSgMd, &_s7SwiftUI19SymbolRenderingModeVSgMR);
  __chkstk_darwin();
  outlined init with copy of TaskPriority?(a1, &v4 - v2, &_s7SwiftUI19SymbolRenderingModeVSgMd, &_s7SwiftUI19SymbolRenderingModeVSgMR);
  return EnvironmentValues.symbolRenderingMode.setter();
}

uint64_t key path setter for EnvironmentValues.openURL : EnvironmentValues(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  a5(0);
  v8 = __chkstk_darwin();
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1, v8);
  return a6(v10);
}

BOOL specialized static PlaylistCurators.Curator.__derived_struct_equals(_:_:)(void *a1, void *a2)
{
  v4 = type metadata accessor for Artwork();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit7ArtworkVSgMd_0, &_s8MusicKit7ArtworkVSgMR_0);
  __chkstk_darwin();
  v9 = &v21 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit7ArtworkVSg_ADtMd, &_s8MusicKit7ArtworkVSg_ADtMR);
  __chkstk_darwin();
  v12 = &v21 - v11;
  if (*a1 == *a2 || (v13 = _stringCompareWithSmolCheck(_:_:expecting:)(), result = 0, (v13 & 1) != 0))
  {
    v22 = v7;
    v15 = *(type metadata accessor for PlaylistCurators.Curator(0) + 20);
    v16 = *(v10 + 48);
    outlined init with copy of TaskPriority?(a1 + v15, v12, &_s8MusicKit7ArtworkVSgMd_0, &_s8MusicKit7ArtworkVSgMR_0);
    outlined init with copy of TaskPriority?(a2 + v15, &v12[v16], &_s8MusicKit7ArtworkVSgMd_0, &_s8MusicKit7ArtworkVSgMR_0);
    v17 = *(v5 + 48);
    if (v17(v12, 1, v4) == 1)
    {
      if (v17(&v12[v16], 1, v4) == 1)
      {
        outlined destroy of TaskPriority?(v12, &_s8MusicKit7ArtworkVSgMd_0, &_s8MusicKit7ArtworkVSgMR_0);
        return 1;
      }
    }

    else
    {
      outlined init with copy of TaskPriority?(v12, v9, &_s8MusicKit7ArtworkVSgMd_0, &_s8MusicKit7ArtworkVSgMR_0);
      if (v17(&v12[v16], 1, v4) != 1)
      {
        v18 = v22;
        (*(v5 + 32))(v22, &v12[v16], v4);
        lazy protocol witness table accessor for type Collaboration.Management.Model and conformance Collaboration.Management.Model(&lazy protocol witness table cache variable for type Artwork and conformance Artwork, &type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
        v19 = dispatch thunk of static Equatable.== infix(_:_:)();
        v20 = *(v5 + 8);
        v20(v18, v4);
        v20(v9, v4);
        outlined destroy of TaskPriority?(v12, &_s8MusicKit7ArtworkVSgMd_0, &_s8MusicKit7ArtworkVSgMR_0);
        return (v19 & 1) != 0;
      }

      (*(v5 + 8))(v9, v4);
    }

    outlined destroy of TaskPriority?(v12, &_s8MusicKit7ArtworkVSg_ADtMd, &_s8MusicKit7ArtworkVSg_ADtMR);
    return 0;
  }

  return result;
}

uint64_t specialized Collaboration.Management.Model.init(manager:playlist:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v60 = a2;
  v61 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_1, &_sScPSgMR_1);
  __chkstk_darwin();
  v63 = &v53 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit8PlaylistV0aB8InternalE13CollaborationVSgMd_0, &_s8MusicKit8PlaylistV0aB8InternalE13CollaborationVSgMR_0);
  __chkstk_darwin();
  v55 = &v53 - v5;
  v65 = type metadata accessor for Playlist();
  v64 = *(v65 - 8);
  __chkstk_darwin();
  v59 = (&v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v62 = v6;
  __chkstk_darwin();
  v58 = &v53 - v7;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd_0, &_s7Combine9PublishedVySbGMR_0);
  v56 = *(v57 - 1);
  __chkstk_darwin();
  v9 = &v53 - v8;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVyShy8MusicKit8PlaylistV0cD8InternalE12CollaboratorVGGMd, &_s7Combine9PublishedVyShy8MusicKit8PlaylistV0cD8InternalE12CollaboratorVGGMR);
  v10 = *(v54 - 8);
  __chkstk_darwin();
  v12 = &v53 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay8MusicKit8PlaylistV0cD8InternalE12CollaboratorVGGMd, &_s7Combine9PublishedVySay8MusicKit8PlaylistV0cD8InternalE12CollaboratorVGGMR);
  v14 = *(v13 - 8);
  __chkstk_darwin();
  v16 = &v53 - v15;
  v17 = OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model__pendingCollaborators;
  *&v68[0] = _swiftEmptyArrayStorage;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8MusicKit8PlaylistV0aB8InternalE12CollaboratorVGMd, &_sSay8MusicKit8PlaylistV0aB8InternalE12CollaboratorVGMR);
  Published.init(initialValue:)();
  v18 = *(v14 + 32);
  v18(v3 + v17, v16, v13);
  v19 = OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model__activeCollaborators;
  *&v68[0] = _swiftEmptyArrayStorage;
  Published.init(initialValue:)();
  v18(v3 + v19, v16, v13);
  v20 = OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model__transientCollaborators;
  *&v68[0] = &_swiftEmptySetSingleton;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy8MusicKit8PlaylistV0aB8InternalE12CollaboratorVGMd, &_sShy8MusicKit8PlaylistV0aB8InternalE12CollaboratorVGMR);
  Published.init(initialValue:)();
  (*(v10 + 32))(v3 + v20, v12, v54);
  v21 = OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model__isResetingURL;
  LOBYTE(v68[0]) = 0;
  Published.init(initialValue:)();
  v22 = *(v56 + 32);
  v23 = v57;
  v22(v3 + v21, v9, v57);
  v24 = OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model__shouldDismiss;
  LOBYTE(v68[0]) = 0;
  Published.init(initialValue:)();
  v22(v3 + v24, v9, v23);
  v25 = OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model__hasNetworkConnectivity;
  static ApplicationCapabilities.shared.getter(v68);
  outlined destroy of ApplicationCapabilities(v68);
  v67 = BYTE1(v68[0]);
  Published.init(initialValue:)();
  v22(v3 + v25, v9, v23);
  v26 = v60;
  v27 = OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model____lazy_storage___artworkViewModel;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgMd, &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgMR);
  (*(*(v28 - 8) + 56))(v3 + v27, 1, 1, v28);
  *(v3 + OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model_autoupdatingResponse) = 0;
  *(v3 + OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model_autoupdatingResponseSubscription) = 0;
  v56 = OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model_networkConnectivityNotificationObserver;
  *(v3 + OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model_networkConnectivityNotificationObserver) = 0;
  *(v3 + 16) = v61;
  v29 = v64;
  v30 = *(v64 + 16);
  v31 = v58;
  v32 = v65;
  v30(v58, v26, v65);
  swift_beginAccess();
  v57 = v30;
  v30(v59, v31, v32);

  v33 = v32;
  Published.init(initialValue:)();
  v34 = *(v29 + 8);
  v35 = v31;
  v61 = v29 + 8;
  v59 = v34;
  v34(v31, v33);
  swift_endAccess();
  v36 = v55;
  v37 = v26;
  Playlist.collaboration.getter();
  v38 = type metadata accessor for Playlist.Collaboration();
  v39 = *(v38 - 8);
  if ((*(v39 + 48))(v36, 1, v38) == 1)
  {
    outlined destroy of TaskPriority?(v36, &_s8MusicKit8PlaylistV0aB8InternalE13CollaborationVSgMd_0, &_s8MusicKit8PlaylistV0aB8InternalE13CollaborationVSgMR_0);
    v40 = 0;
  }

  else
  {
    v40 = Playlist.Collaboration.isOpenInvitation.getter();
    (*(v39 + 8))(v36, v38);
  }

  swift_beginAccess();
  v66 = v40 & 1;
  Published.init(initialValue:)();
  swift_endAccess();
  v41 = *ApplicationCapabilities.NotificationNames.hasNetworkConnectivityDidChange.unsafeMutableAddressor();
  v42 = *ApplicationCapabilities.Controller.shared.unsafeMutableAddressor();
  v43 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for NotificationObserver();
  swift_allocObject();

  v44 = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v41, v42, 1, 1, partial apply for closure #1 in Collaboration.Management.Model.init(manager:playlist:), v43);
  *(v3 + v56) = v44;

  v45 = type metadata accessor for TaskPriority();
  v46 = v63;
  (*(*(v45 - 8) + 56))(v63, 1, 1, v45);
  v47 = v65;
  (v57)(v31, v37, v65);
  v48 = v64;
  v49 = (*(v64 + 80) + 32) & ~*(v64 + 80);
  v50 = (v62 + v49 + 7) & 0xFFFFFFFFFFFFFFF8;
  v51 = swift_allocObject();
  *(v51 + 16) = 0;
  *(v51 + 24) = 0;
  (*(v48 + 32))(v51 + v49, v35, v47);
  *(v51 + v50) = v3;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5_1(0, 0, v46, &async function pointer to partial apply for closure #2 in Collaboration.Management.Model.init(manager:playlist:), v51);

  v59(v37, v47);
  return v3;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<List<Never, TupleView<(<<opaque return type of View.headerProminence(_:)>>.0, TupleView<(Section<Text, Collaboration.Management.View.CollaboratorRowView, EmptyView>, Section<EmptyView, <<opaque return type of View.alert(isPresented:content:)>>.0, EmptyView>?, Section<Text, ForEach<[Playlist.Collaborator], MusicItemID, Collaboration.Management.View.CollaboratorRowView>, EmptyView>)>?, Section<Text, HStack<Toggle<Text>>, _ConditionalContent<_ConditionalContent<Text, Text>, Text>>?)>>, _EnvironmentKeyWritingModifier<CGFloat>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<List<Never, TupleView<(<<opaque return type of View.headerProminence(_:)>>.0, TupleView<(Section<Text, Collaboration.Management.View.CollaboratorRowView, EmptyView>, Section<EmptyView, <<opaque return type of View.alert(isPresented:content:)>>.0, EmptyView>?, Section<Text, ForEach<[Playlist.Collaborator], MusicItemID, Collaboration.Management.View.CollaboratorRowView>, EmptyView>)>?, Section<Text, HStack<Toggle<Text>>, _ConditionalContent<_ConditionalContent<Text, Text>, Text>>?)>>, _EnvironmentKeyWritingModifier<CGFloat>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<List<Never, TupleView<(<<opaque return type of View.headerProminence(_:)>>.0, TupleView<(Section<Text, Collaboration.Management.View.CollaboratorRowView, EmptyView>, Section<EmptyView, <<opaque return type of View.alert(isPresented:content:)>>.0, EmptyView>?, Section<Text, ForEach<[Playlist.Collaborator], MusicItemID, Collaboration.Management.View.CollaboratorRowView>, EmptyView>)>?, Section<Text, HStack<Toggle<Text>>, _ConditionalContent<_ConditionalContent<Text, Text>, Text>>?)>>, _EnvironmentKeyWritingModifier<CGFloat>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2( &_s7SwiftUI15ModifiedContentVyAA4ListVys5NeverOAA9TupleViewVyAA0H0PAAE16headerProminenceyQrAA0J0OFQOyAA7SectionVyAkAE15fullScreenCover11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaJRd__lFQOyACyAA6VStackVyAIyACyACyACyACy010_MusicKit_aB012ArtworkImageV01_vw9Internal_aB0E18artworkPlaceholderyQrx0vW00X0VSg_So6CGSizeVAA5ColorVtcAaJRzlFQOy_AA012_ConditionalD0VyACyACyA1_0v4CoreB0E11PlaceholderOAJVAA26_PreferenceWritingModifierVyA14_29RadiosityEnabledPreferenceKeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA26_GGQo_A25_GA14_20CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGA14_06BorderH8ModifierA34_LLVGAA13_ShadowEffectVG_AA4TextVAIyACyACyAA6HStackVyAIyAkAE5sheetArsTQrAW_AXqd__yctAaJRd__lFQOyACy0V4Core13CollaborationOA14_E10ManagementOAJV5Share33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonVAA32_EnvironmentKeyTransformModifierVySbGG_A52_08ActivityH10ControllerA55_LLVSgQo__ACyA62_AA20_TransactionModifierVGSgtGGAA16_FixedSizeLayoutVGAA14_PaddingLayoutVG_ACyACyACyACyACyACyACyAA5GroupVyA13_yA46_yAIyAA08ProgressH0VyAA05EmptyH0VA84_G_A44_tGGACyACyA44_AA30_EnvironmentKeyWritingModifierVyA11_SgGGA89_yAA13OpenURLActionVGGGSgGAA16_FlexFrameLayoutVGA89_ySiSgGGA74_GAA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGA89_yAA4FontVSgGGA77_GA77_GAA6SpacerVtGSgA46_yA121_GtGGAA21_TraitWritingModifierVyAA0E17RowInsetsTraitKeyVGG_ACyACyA52_06QRCodeH0A55_LLVAA30_SafeAreaRegionsIgnoringLayoutVGAA19_BackgroundModifierVyA14_15ClearBackgroundA55_LLVGGSgQo_AIyAkAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyACyACyACyA46_yAIyACyACyACyACyAA0Y0VA116_GA25_GA89_yAA19SymbolRenderingModeVSgGGA91_GSg_AZyAIyA44__A44_SgtGGAIyA121__AkAE5alertArTQrAW_AA5AlertVyXEtFQOyAkAE15dynamicTypeSizeyQrqd__SXRd__AA15DynamicTypeSizeO5BoundRtd__lFQOyACyACyACyACyACyAkAE10fontWeightyQrA114_6WeightVSgFQOyACyAAA57_VyA44_GA116_G_Qo_A91_GA25_GA77_GAA24_BackgroundStyleModifierVyA11_GGAA11_ClipEffectVyAA7CapsuleVGG_s19PartialRangeThroughVyA169_GQo__Qo_tGSgtGGA77_GA131_GAA25_AlignmentWritingModifierVG_Qo__AA7ForEachVySayA4_8PlaylistV0vwZ0E12CollaboratorVGA4_0V6ItemIDVA53_015CollaboratorRowH0A55_LLVGtGSgA84_G_Qo__AIyAPyA44_A219_A84_G_APyA84_AkAEA164_ArTQrAW_A166_yXEtFQOyAkAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyA176_yACyACyA44_A101_GA91_GG_AA21BorderlessButtonStyleVQo__Qo_A84_GSgAPyA44_A220_A84_GtGSgAPyA44_A46_yAA6ToggleVyA44_GGA13_yA13_yA44_A44_GA44_GGSgtGGA89_y12CoreGraphics7CGFloatVGGMd,  &_s7SwiftUI15ModifiedContentVyAA4ListVys5NeverOAA9TupleViewVyAA0H0PAAE16headerProminenceyQrAA0J0OFQOyAA7SectionVyAkAE15fullScreenCover11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaJRd__lFQOyACyAA6VStackVyAIyACyACyACyACy010_MusicKit_aB012ArtworkImageV01_vw9Internal_aB0E18artworkPlaceholderyQrx0vW00X0VSg_So6CGSizeVAA5ColorVtcAaJRzlFQOy_AA012_ConditionalD0VyACyACyA1_0v4CoreB0E11PlaceholderOAJVAA26_PreferenceWritingModifierVyA14_29RadiosityEnabledPreferenceKeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA26_GGQo_A25_GA14_20CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGA14_06BorderH8ModifierA34_LLVGAA13_ShadowEffectVG_AA4TextVAIyACyACyAA6HStackVyAIyAkAE5sheetArsTQrAW_AXqd__yctAaJRd__lFQOyACy0V4Core13CollaborationOA14_E10ManagementOAJV5Share33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonVAA32_EnvironmentKeyTransformModifierVySbGG_A52_08ActivityH10ControllerA55_LLVSgQo__ACyA62_AA20_TransactionModifierVGSgtGGAA16_FixedSizeLayoutVGAA14_PaddingLayoutVG_ACyACyACyACyACyACyACyAA5GroupVyA13_yA46_yAIyAA08ProgressH0VyAA05EmptyH0VA84_G_A44_tGGACyACyA44_AA30_EnvironmentKeyWritingModifierVyA11_SgGGA89_yAA13OpenURLActionVGGGSgGAA16_FlexFrameLayoutVGA89_ySiSgGGA74_GAA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGA89_yAA4FontVSgGGA77_GA77_GAA6SpacerVtGSgA46_yA121_GtGGAA21_TraitWritingModifierVyAA0E17RowInsetsTraitKeyVGG_ACyACyA52_06QRCodeH0A55_LLVAA30_SafeAreaRegionsIgnoringLayoutVGAA19_BackgroundModifierVyA14_15ClearBackgroundA55_LLVGGSgQo_AIyAkAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyACyACyACyA46_yAIyACyACyACyACyAA0Y0VA116_GA25_GA89_yAA19SymbolRenderingModeVSgGGA91_GSg_AZyAIyA44__A44_SgtGGAIyA121__AkAE5alertArTQrAW_AA5AlertVyXEtFQOyAkAE15dynamicTypeSizeyQrqd__SXRd__AA15DynamicTypeSizeO5BoundRtd__lFQOyACyACyACyACyACyAkAE10fontWeightyQrA114_6WeightVSgFQOyACyAAA57_VyA44_GA116_G_Qo_A91_GA25_GA77_GAA24_BackgroundStyleModifierVyA11_GGAA11_ClipEffectVyAA7CapsuleVGG_s19PartialRangeThroughVyA169_GQo__Qo_tGSgtGGA77_GA131_GAA25_AlignmentWritingModifierVG_Qo__AA7ForEachVySayA4_8PlaylistV0vwZ0E12CollaboratorVGA4_0V6ItemIDVA53_015CollaboratorRowH0A55_LLVGtGSgA84_G_Qo__AIyAPyA44_A219_A84_G_APyA84_AkAEA164_ArTQrAW_A166_yXEtFQOyAkAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyA176_yACyACyA44_A101_GA91_GG_AA21BorderlessButtonStyleVQo__Qo_A84_GSgAPyA44_A220_A84_GtGSgAPyA44_A46_yAA6ToggleVyA44_GGA13_yA13_yA44_A44_GA44_GGSgtGGA89_y12CoreGraphics7CGFloatVGGMR);
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>( &lazy protocol witness table cache variable for type List<Never, TupleView<(<<opaque return type of View.headerProminence(_:)>>.0, TupleView<(Section<Text, Collaboration.Management.View.CollaboratorRowView, EmptyView>, Section<EmptyView, <<opaque return type of View.alert(isPresented:content:)>>.0, EmptyView>?, Section<Text, ForEach<[Playlist.Collaborator], MusicItemID, Collaboration.Management.View.CollaboratorRowView>, EmptyView>)>?, Section<Text, HStack<Toggle<Text>>, _ConditionalContent<_ConditionalContent<Text, Text>, Text>>?)>> and conformance List<A, B>,  &_s7SwiftUI4ListVys5NeverOAA9TupleViewVyAA0F0PAAE16headerProminenceyQrAA0H0OFQOyAA7SectionVyAiAE15fullScreenCover11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaHRd__lFQOyAA15ModifiedContentVyAA6VStackVyAGyAXyAXyAXyAXy010_MusicKit_aB012ArtworkImageV01_vw9Internal_aB0E18artworkPlaceholderyQrx0vW00X0VSg_So6CGSizeVAA5ColorVtcAaHRzlFQOy_AA012_ConditionalT0VyAXyAXyA1_0v4CoreB0E11PlaceholderOAHVAA26_PreferenceWritingModifierVyA14_29RadiosityEnabledPreferenceKeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA26_GGQo_A25_GA14_20CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGA14_06BorderF8ModifierA34_LLVGAA13_ShadowEffectVG_AA4TextVAGyAXyAXyAA6HStackVyAGyAiAE5sheetApqRQrAU_AVqd__yctAaHRd__lFQOyAXy0V4Core13CollaborationOA14_E10ManagementOAHV5Share33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonVAA32_EnvironmentKeyTransformModifierVySbGG_A52_08ActivityF10ControllerA55_LLVSgQo__AXyA62_AA20_TransactionModifierVGSgtGGAA16_FixedSizeLayoutVGAA14_PaddingLayoutVG_AXyAXyAXyAXyAXyAXyAXyAA5GroupVyA13_yA46_yAGyAA08ProgressF0VyAA05EmptyF0VA84_G_A44_tGGAXyAXyA44_AA30_EnvironmentKeyWritingModifierVyA11_SgGGA89_yAA13OpenURLActionVGGGSgGAA16_FlexFrameLayoutVGA89_ySiSgGGA74_GAA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGA89_yAA4FontVSgGGA77_GA77_GAA6SpacerVtGSgA46_yA121_GtGGAA21_TraitWritingModifierVyAA0C17RowInsetsTraitKeyVGG_AXyAXyA52_06QRCodeF0A55_LLVAA30_SafeAreaRegionsIgnoringLayoutVGAA19_BackgroundModifierVyA14_15ClearBackgroundA55_LLVGGSgQo_AGyAiAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAXyAXyAXyA46_yAGyAXyAXyAXyAXyAA0Y0VA116_GA25_GA89_yAA19SymbolRenderingModeVSgGGA91_GSg_AZyAGyA44__A44_SgtGGAGyA121__AiAE5alertApRQrAU_AA5AlertVyXEtFQOyAiAE15dynamicTypeSizeyQrqd__SXRd__AA15DynamicTypeSizeO5BoundRtd__lFQOyAXyAXyAXyAXyAXyAiAE10fontWeightyQrA114_6WeightVSgFQOyAXyAAA57_VyA44_GA116_G_Qo_A91_GA25_GA77_GAA24_BackgroundStyleModifierVyA11_GGAA11_ClipEffectVyAA7CapsuleVGG_s19PartialRangeThroughVyA169_GQo__Qo_tGSgtGGA77_GA131_GAA25_AlignmentWritingModifierVG_Qo__AA7ForEachVySayA4_8PlaylistV0vwZ0E12CollaboratorVGA4_0V6ItemIDVA53_015CollaboratorRowF0A55_LLVGtGSgA84_G_Qo__AGyANyA44_A219_A84_G_ANyA84_AiAEA164_ApRQrAU_A166_yXEtFQOyAiAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyA176_yAXyAXyA44_A101_GA91_GG_AA21BorderlessButtonStyleVQo__Qo_A84_GSgANyA44_A220_A84_GtGSgANyA44_A46_yAA6ToggleVyA44_GGA13_yA13_yA44_A44_GA44_GGSgtGGMd,  &_s7SwiftUI4ListVys5NeverOAA9TupleViewVyAA0F0PAAE16headerProminenceyQrAA0H0OFQOyAA7SectionVyAiAE15fullScreenCover11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaHRd__lFQOyAA15ModifiedContentVyAA6VStackVyAGyAXyAXyAXyAXy010_MusicKit_aB012ArtworkImageV01_vw9Internal_aB0E18artworkPlaceholderyQrx0vW00X0VSg_So6CGSizeVAA5ColorVtcAaHRzlFQOy_AA012_ConditionalT0VyAXyAXyA1_0v4CoreB0E11PlaceholderOAHVAA26_PreferenceWritingModifierVyA14_29RadiosityEnabledPreferenceKeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA26_GGQo_A25_GA14_20CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGA14_06BorderF8ModifierA34_LLVGAA13_ShadowEffectVG_AA4TextVAGyAXyAXyAA6HStackVyAGyAiAE5sheetApqRQrAU_AVqd__yctAaHRd__lFQOyAXy0V4Core13CollaborationOA14_E10ManagementOAHV5Share33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonVAA32_EnvironmentKeyTransformModifierVySbGG_A52_08ActivityF10ControllerA55_LLVSgQo__AXyA62_AA20_TransactionModifierVGSgtGGAA16_FixedSizeLayoutVGAA14_PaddingLayoutVG_AXyAXyAXyAXyAXyAXyAXyAA5GroupVyA13_yA46_yAGyAA08ProgressF0VyAA05EmptyF0VA84_G_A44_tGGAXyAXyA44_AA30_EnvironmentKeyWritingModifierVyA11_SgGGA89_yAA13OpenURLActionVGGGSgGAA16_FlexFrameLayoutVGA89_ySiSgGGA74_GAA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGA89_yAA4FontVSgGGA77_GA77_GAA6SpacerVtGSgA46_yA121_GtGGAA21_TraitWritingModifierVyAA0C17RowInsetsTraitKeyVGG_AXyAXyA52_06QRCodeF0A55_LLVAA30_SafeAreaRegionsIgnoringLayoutVGAA19_BackgroundModifierVyA14_15ClearBackgroundA55_LLVGGSgQo_AGyAiAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAXyAXyAXyA46_yAGyAXyAXyAXyAXyAA0Y0VA116_GA25_GA89_yAA19SymbolRenderingModeVSgGGA91_GSg_AZyAGyA44__A44_SgtGGAGyA121__AiAE5alertApRQrAU_AA5AlertVyXEtFQOyAiAE15dynamicTypeSizeyQrqd__SXRd__AA15DynamicTypeSizeO5BoundRtd__lFQOyAXyAXyAXyAXyAXyAiAE10fontWeightyQrA114_6WeightVSgFQOyAXyAAA57_VyA44_GA116_G_Qo_A91_GA25_GA77_GAA24_BackgroundStyleModifierVyA11_GGAA11_ClipEffectVyAA7CapsuleVGG_s19PartialRangeThroughVyA169_GQo__Qo_tGSgtGGA77_GA131_GAA25_AlignmentWritingModifierVG_Qo__AA7ForEachVySayA4_8PlaylistV0vwZ0E12CollaboratorVGA4_0V6ItemIDVA53_015CollaboratorRowF0A55_LLVGtGSgA84_G_Qo__AGyANyA44_A219_A84_G_ANyA84_AiAEA164_ApRQrAU_A166_yXEtFQOyAiAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyA176_yAXyAXyA44_A101_GA91_GG_AA21BorderlessButtonStyleVQo__Qo_A84_GSgANyA44_A220_A84_GtGSgANyA44_A46_yAA6ToggleVyA44_GGA13_yA13_yA44_A44_GA44_GGSgtGGMR,  &protocol conformance descriptor for List<A, B>);
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<CGFloat> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGMR, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<List<Never, TupleView<(<<opaque return type of View.headerProminence(_:)>>.0, TupleView<(Section<Text, Collaboration.Management.View.CollaboratorRowView, EmptyView>, Section<EmptyView, <<opaque return type of View.alert(isPresented:content:)>>.0, EmptyView>?, Section<Text, ForEach<[Playlist.Collaborator], MusicItemID, Collaboration.Management.View.CollaboratorRowView>, EmptyView>)>?, Section<Text, HStack<Toggle<Text>>, _ConditionalContent<_ConditionalContent<Text, Text>, Text>>?)>>, _EnvironmentKeyWritingModifier<CGFloat>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void partial apply for closure #2 in Collaboration.Management.View.body.getter(uint64_t a1, _BYTE *a2)
{
  type metadata accessor for Collaboration.Management.View(0);

  closure #2 in Collaboration.Management.View.body.getter(a1, a2);
}

uint64_t lazy protocol witness table accessor for type Collaboration.Management.Model and conformance Collaboration.Management.Model(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t instantiation function for generic protocol witness table for PlaylistCurators.View(uint64_t a1)
{
  result = lazy protocol witness table accessor for type Collaboration.Management.Model and conformance Collaboration.Management.Model(&lazy protocol witness table cache variable for type PlaylistCurators.View and conformance PlaylistCurators.View, type metadata accessor for PlaylistCurators.View, &protocol conformance descriptor for PlaylistCurators.View);
  *(a1 + 8) = result;
  return result;
}

void type metadata completion function for Collaboration.Management.Model(uint64_t a1)
{
  type metadata accessor for Published<[Playlist.Collaborator]>(319, &lazy cache variable for type metadata for Published<[Playlist.Collaborator]>, &_sSay8MusicKit8PlaylistV0aB8InternalE12CollaboratorVGMd, &_sSay8MusicKit8PlaylistV0aB8InternalE12CollaboratorVGMR, &type metadata accessor for Published);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Published<[Playlist.Collaborator]>(319, &lazy cache variable for type metadata for Published<Set<Playlist.Collaborator>>, &_sShy8MusicKit8PlaylistV0aB8InternalE12CollaboratorVGMd, &_sShy8MusicKit8PlaylistV0aB8InternalE12CollaboratorVGMR, &type metadata accessor for Published);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Published<Playlist>(319, &lazy cache variable for type metadata for Published<Playlist>, &type metadata accessor for Playlist, &type metadata accessor for Published);
      if (v3 <= 0x3F)
      {
        type metadata accessor for Published<Bool>(319, &_s7Combine9PublishedVySbGML_0, &type metadata accessor for Published);
        if (v4 <= 0x3F)
        {
          type metadata accessor for Published<[Playlist.Collaborator]>(319, &lazy cache variable for type metadata for ArtworkImage.ViewModel??, &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgMd, &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgMR, &type metadata accessor for Optional);
          if (v5 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

uint64_t sub_1003499AC(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA13DismissActionVGMd, &_s7SwiftUI11EnvironmentVyAA13DismissActionVGMR);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA15DynamicTypeSizeOGMd_0, &_s7SwiftUI11EnvironmentVyAA15DynamicTypeSizeOGMR_0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA13OpenURLActionVGMd, &_s7SwiftUI11EnvironmentVyAA13OpenURLActionVGMR);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[7];

  return v15(v16, a2, v14);
}

uint64_t sub_100349B50(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA13DismissActionVGMd, &_s7SwiftUI11EnvironmentVyAA13DismissActionVGMR);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA15DynamicTypeSizeOGMd_0, &_s7SwiftUI11EnvironmentVyAA15DynamicTypeSizeOGMR_0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA13OpenURLActionVGMd, &_s7SwiftUI11EnvironmentVyAA13OpenURLActionVGMR);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[7];

  return v15(v16, a2, a2, v14);
}

void type metadata completion function for Collaboration.Management.View(uint64_t a1)
{
  type metadata accessor for ObservedObject<Collaboration.Management.Model>(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Published<Playlist>(319, &lazy cache variable for type metadata for Environment<DismissAction>, &type metadata accessor for DismissAction, &type metadata accessor for Environment);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Published<Playlist>(319, &_s7SwiftUI11EnvironmentVyAA15DynamicTypeSizeOGML_0, &type metadata accessor for DynamicTypeSize, &type metadata accessor for Environment);
      if (v3 <= 0x3F)
      {
        type metadata accessor for Published<Playlist>(319, &lazy cache variable for type metadata for Environment<OpenURLAction>, &type metadata accessor for OpenURLAction, &type metadata accessor for Environment);
        if (v4 <= 0x3F)
        {
          type metadata accessor for Published<[Playlist.Collaborator]>(319, &lazy cache variable for type metadata for State<UIActivityViewController?>, &_sSo24UIActivityViewControllerCSgMd, &_sSo24UIActivityViewControllerCSgMR, &type metadata accessor for State);
          if (v5 <= 0x3F)
          {
            type metadata accessor for Published<Bool>(319, &lazy cache variable for type metadata for State<Bool>, &type metadata accessor for State);
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

void type metadata accessor for ObservedObject<Collaboration.Management.Model>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ObservedObject<Collaboration.Management.Model>)
  {
    type metadata accessor for Collaboration.Management.Model(255);
    lazy protocol witness table accessor for type Collaboration.Management.Model and conformance Collaboration.Management.Model(&lazy protocol witness table cache variable for type Collaboration.Management.Model and conformance Collaboration.Management.Model, type metadata accessor for Collaboration.Management.Model, &protocol conformance descriptor for Collaboration.Management.Model);
    v1 = type metadata accessor for ObservedObject();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ObservedObject<Collaboration.Management.Model>);
    }
  }
}

uint64_t sub_100349FA0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit7ArtworkVSgMd_0, &_s8MusicKit7ArtworkVSgMR_0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10034A070(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit7ArtworkVSgMd_0, &_s8MusicKit7ArtworkVSgMR_0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void type metadata completion function for PlaylistCurators.Curator(uint64_t a1)
{
  type metadata accessor for Published<Playlist>(319, &lazy cache variable for type metadata for Artwork?, &type metadata accessor for Artwork, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_10034A1E0(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA22UserInterfaceSizeClassOSgGMd, &_s7SwiftUI11EnvironmentVyAA22UserInterfaceSizeClassOSgGMR);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_10034A2B0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA22UserInterfaceSizeClassOSgGMd, &_s7SwiftUI11EnvironmentVyAA22UserInterfaceSizeClassOSgGMR);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void type metadata completion function for PlaylistCurators.View(uint64_t a1)
{
  type metadata accessor for Published<[Playlist.Collaborator]>(319, &lazy cache variable for type metadata for Environment<UserInterfaceSizeClass?>, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR, &type metadata accessor for Environment);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_10034A494()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2( &_s7SwiftUI15NavigationStackVyAA0C4PathVAA4ViewPAAE7toolbar7contentQrqd__yXE_tAA14ToolbarContentRd__lFQOyAgAE9listStyleyQrqd__AA04ListL0Rd__lFQOyAA08ModifiedJ0VyAA0M0Vys5NeverOAA05TupleF0VyAgAE16headerProminenceyQrAA0R0OFQOyAA7SectionVyAgAE15fullScreenCover11isPresented9onDismissAIQrAA7BindingVySbG_yycSgqd__yctAaFRd__lFQOyANyAA6VStackVyATyANyANyANyANy010_MusicKit_aB012ArtworkImageV018_MusicKitInternal_aB0E18artworkPlaceholderyQrx8MusicKit7ArtworkVSg_So6CGSizeVAA5ColorVtcAaFRzlFQOy_AA012_ConditionalJ0VyANyANyA9_09MusicCoreB0E11PlaceholderOAFVAA26_PreferenceWritingModifierVyA22_29RadiosityEnabledPreferenceKeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA34_GGQo_A33_GA22_20CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGA22_06BorderF8ModifierA42_LLVGAA13_ShadowEffectVG_AA4TextVATyANyANyAA6HStackVyATyAgAE5sheetA_A0_AIQrA3__A4_qd__yctAaFRd__lFQOyANy9MusicCore13CollaborationOA22_E10ManagementOAFV5Share33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonVAA32_EnvironmentKeyTransformModifierVySbGG_A60_08ActivityF10ControllerA63_LLVSgQo__ANyA70_AA20_TransactionModifierVGSgtGGAA16_FixedSizeLayoutVGAA14_PaddingLayoutVG_ANyANyANyANyANyANyANyAA5GroupVyA21_yA54_yATyAA08ProgressF0VyAA05EmptyF0VA92_G_A52_tGGANyANyA52_AA30_EnvironmentKeyWritingModifierVyA19_SgGGA97_yAA13OpenURLActionVGGGSgGAA16_FlexFrameLayoutVGA97_ySiSgGGA82_GAA011_ForegroundL8ModifierVyAA017HierarchicalShapeL0VGGA97_yAA4FontVSgGGA85_GA85_GAA6SpacerVtGSgA54_yA129_GtGGAA21_TraitWritingModifierVyAA0M17RowInsetsTraitKeyVGG_ANyANyA60_06QRCodeF0A63_LLVAA30_SafeAreaRegionsIgnoringLayoutVGAA19_BackgroundModifierVyA22_15ClearBackgroundA63_LLVGGSgQo_ATyAgAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyANyANyANyA54_yATyANyANyANyANyAA5ImageVA124_GA33_GA97_yAA19SymbolRenderingModeVSgGGA99_GSg_A6_yATyA52__A52_SgtGGATyA129__AgAE5alertA_AIQrA3__AA5AlertVyXEtFQOyAgAE15dynamicTypeSizeyQrqd__SXRd__AA15DynamicTypeSizeO5BoundRtd__lFQOyANyANyANyANyANyAgAE10fontWeightyQrA122_6WeightVSgFQOyANyAAA65_VyA52_GA124_G_Qo_A99_GA33_GA85_GAA011_BackgroundL8ModifierVyA19_GGAA11_ClipEffectVyAA7CapsuleVGG_s19PartialRangeThroughVyA177_GQo__Qo_tGSgtGGA85_GA139_GAA25_AlignmentWritingModifierVG_Qo__AA7ForEachVySayA12_8PlaylistV16MusicKitInternalE12CollaboratorVGA12_11MusicItemIDVA61_015CollaboratorRowF0A63_LLVGtGSgA92_G_Qo__ATyAYyA52_A227_A92_G_AYyA92_AgAEA172_A_AIQrA3__A174_yXEtFQOyAgAE06buttonL0yQrqd__AA015PrimitiveButtonL0Rd__lFQOyA184_yANyANyA52_A109_GA99_GG_AA016BorderlessButtonL0VQo__Qo_A92_GSgAYyA52_A228_A92_GtGSgAYyA52_A54_yAA6ToggleVyA52_GGA21_yA21_yA52_A52_GA52_GGSgtGGA97_y12CoreGraphics7CGFloatVGG_AA012InsetGroupedmL0VQo__AA0iJ7BuilderV10buildBlockyQrxAaJRzlFZQOy_AA0I4ItemVyytA184_yAA18DefaultButtonLabelVGGQo_Qo_GMd,  &_s7SwiftUI15NavigationStackVyAA0C4PathVAA4ViewPAAE7toolbar7contentQrqd__yXE_tAA14ToolbarContentRd__lFQOyAgAE9listStyleyQrqd__AA04ListL0Rd__lFQOyAA08ModifiedJ0VyAA0M0Vys5NeverOAA05TupleF0VyAgAE16headerProminenceyQrAA0R0OFQOyAA7SectionVyAgAE15fullScreenCover11isPresented9onDismissAIQrAA7BindingVySbG_yycSgqd__yctAaFRd__lFQOyANyAA6VStackVyATyANyANyANyANy010_MusicKit_aB012ArtworkImageV018_MusicKitInternal_aB0E18artworkPlaceholderyQrx8MusicKit7ArtworkVSg_So6CGSizeVAA5ColorVtcAaFRzlFQOy_AA012_ConditionalJ0VyANyANyA9_09MusicCoreB0E11PlaceholderOAFVAA26_PreferenceWritingModifierVyA22_29RadiosityEnabledPreferenceKeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA34_GGQo_A33_GA22_20CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGA22_06BorderF8ModifierA42_LLVGAA13_ShadowEffectVG_AA4TextVATyANyANyAA6HStackVyATyAgAE5sheetA_A0_AIQrA3__A4_qd__yctAaFRd__lFQOyANy9MusicCore13CollaborationOA22_E10ManagementOAFV5Share33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonVAA32_EnvironmentKeyTransformModifierVySbGG_A60_08ActivityF10ControllerA63_LLVSgQo__ANyA70_AA20_TransactionModifierVGSgtGGAA16_FixedSizeLayoutVGAA14_PaddingLayoutVG_ANyANyANyANyANyANyANyAA5GroupVyA21_yA54_yATyAA08ProgressF0VyAA05EmptyF0VA92_G_A52_tGGANyANyA52_AA30_EnvironmentKeyWritingModifierVyA19_SgGGA97_yAA13OpenURLActionVGGGSgGAA16_FlexFrameLayoutVGA97_ySiSgGGA82_GAA011_ForegroundL8ModifierVyAA017HierarchicalShapeL0VGGA97_yAA4FontVSgGGA85_GA85_GAA6SpacerVtGSgA54_yA129_GtGGAA21_TraitWritingModifierVyAA0M17RowInsetsTraitKeyVGG_ANyANyA60_06QRCodeF0A63_LLVAA30_SafeAreaRegionsIgnoringLayoutVGAA19_BackgroundModifierVyA22_15ClearBackgroundA63_LLVGGSgQo_ATyAgAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyANyANyANyA54_yATyANyANyANyANyAA5ImageVA124_GA33_GA97_yAA19SymbolRenderingModeVSgGGA99_GSg_A6_yATyA52__A52_SgtGGATyA129__AgAE5alertA_AIQrA3__AA5AlertVyXEtFQOyAgAE15dynamicTypeSizeyQrqd__SXRd__AA15DynamicTypeSizeO5BoundRtd__lFQOyANyANyANyANyANyAgAE10fontWeightyQrA122_6WeightVSgFQOyANyAAA65_VyA52_GA124_G_Qo_A99_GA33_GA85_GAA011_BackgroundL8ModifierVyA19_GGAA11_ClipEffectVyAA7CapsuleVGG_s19PartialRangeThroughVyA177_GQo__Qo_tGSgtGGA85_GA139_GAA25_AlignmentWritingModifierVG_Qo__AA7ForEachVySayA12_8PlaylistV16MusicKitInternalE12CollaboratorVGA12_11MusicItemIDVA61_015CollaboratorRowF0A63_LLVGtGSgA92_G_Qo__ATyAYyA52_A227_A92_G_AYyA92_AgAEA172_A_AIQrA3__A174_yXEtFQOyAgAE06buttonL0yQrqd__AA015PrimitiveButtonL0Rd__lFQOyA184_yANyANyA52_A109_GA99_GG_AA016BorderlessButtonL0VQo__Qo_A92_GSgAYyA52_A228_A92_GtGSgAYyA52_A54_yAA6ToggleVyA52_GGA21_yA21_yA52_A52_GA52_GGSgtGGA97_y12CoreGraphics7CGFloatVGG_AA012InsetGroupedmL0VQo__AA0iJ7BuilderV10buildBlockyQrxAaJRzlFZQOy_AA0I4ItemVyytA184_yAA18DefaultButtonLabelVGGQo_Qo_GMR);
  lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>( &lazy protocol witness table cache variable for type NavigationStack<NavigationPath, <<opaque return type of View.toolbar<A>(content:)>>.0> and conformance NavigationStack<A, B>,  &_s7SwiftUI15NavigationStackVyAA0C4PathVAA4ViewPAAE7toolbar7contentQrqd__yXE_tAA14ToolbarContentRd__lFQOyAgAE9listStyleyQrqd__AA04ListL0Rd__lFQOyAA08ModifiedJ0VyAA0M0Vys5NeverOAA05TupleF0VyAgAE16headerProminenceyQrAA0R0OFQOyAA7SectionVyAgAE15fullScreenCover11isPresented9onDismissAIQrAA7BindingVySbG_yycSgqd__yctAaFRd__lFQOyANyAA6VStackVyATyANyANyANyANy010_MusicKit_aB012ArtworkImageV018_MusicKitInternal_aB0E18artworkPlaceholderyQrx8MusicKit7ArtworkVSg_So6CGSizeVAA5ColorVtcAaFRzlFQOy_AA012_ConditionalJ0VyANyANyA9_09MusicCoreB0E11PlaceholderOAFVAA26_PreferenceWritingModifierVyA22_29RadiosityEnabledPreferenceKeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA34_GGQo_A33_GA22_20CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGA22_06BorderF8ModifierA42_LLVGAA13_ShadowEffectVG_AA4TextVATyANyANyAA6HStackVyATyAgAE5sheetA_A0_AIQrA3__A4_qd__yctAaFRd__lFQOyANy9MusicCore13CollaborationOA22_E10ManagementOAFV5Share33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonVAA32_EnvironmentKeyTransformModifierVySbGG_A60_08ActivityF10ControllerA63_LLVSgQo__ANyA70_AA20_TransactionModifierVGSgtGGAA16_FixedSizeLayoutVGAA14_PaddingLayoutVG_ANyANyANyANyANyANyANyAA5GroupVyA21_yA54_yATyAA08ProgressF0VyAA05EmptyF0VA92_G_A52_tGGANyANyA52_AA30_EnvironmentKeyWritingModifierVyA19_SgGGA97_yAA13OpenURLActionVGGGSgGAA16_FlexFrameLayoutVGA97_ySiSgGGA82_GAA011_ForegroundL8ModifierVyAA017HierarchicalShapeL0VGGA97_yAA4FontVSgGGA85_GA85_GAA6SpacerVtGSgA54_yA129_GtGGAA21_TraitWritingModifierVyAA0M17RowInsetsTraitKeyVGG_ANyANyA60_06QRCodeF0A63_LLVAA30_SafeAreaRegionsIgnoringLayoutVGAA19_BackgroundModifierVyA22_15ClearBackgroundA63_LLVGGSgQo_ATyAgAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyANyANyANyA54_yATyANyANyANyANyAA5ImageVA124_GA33_GA97_yAA19SymbolRenderingModeVSgGGA99_GSg_A6_yATyA52__A52_SgtGGATyA129__AgAE5alertA_AIQrA3__AA5AlertVyXEtFQOyAgAE15dynamicTypeSizeyQrqd__SXRd__AA15DynamicTypeSizeO5BoundRtd__lFQOyANyANyANyANyANyAgAE10fontWeightyQrA122_6WeightVSgFQOyANyAAA65_VyA52_GA124_G_Qo_A99_GA33_GA85_GAA011_BackgroundL8ModifierVyA19_GGAA11_ClipEffectVyAA7CapsuleVGG_s19PartialRangeThroughVyA177_GQo__Qo_tGSgtGGA85_GA139_GAA25_AlignmentWritingModifierVG_Qo__AA7ForEachVySayA12_8PlaylistV16MusicKitInternalE12CollaboratorVGA12_11MusicItemIDVA61_015CollaboratorRowF0A63_LLVGtGSgA92_G_Qo__ATyAYyA52_A227_A92_G_AYyA92_AgAEA172_A_AIQrA3__A174_yXEtFQOyAgAE06buttonL0yQrqd__AA015PrimitiveButtonL0Rd__lFQOyA184_yANyANyA52_A109_GA99_GG_AA016BorderlessButtonL0VQo__Qo_A92_GSgAYyA52_A228_A92_GtGSgAYyA52_A54_yAA6ToggleVyA52_GGA21_yA21_yA52_A52_GA52_GGSgtGGA97_y12CoreGraphics7CGFloatVGG_AA012InsetGroupedmL0VQo__AA0iJ7BuilderV10buildBlockyQrxAaJRzlFZQOy_AA0I4ItemVyytA184_yAA18DefaultButtonLabelVGGQo_Qo_GMd,  &_s7SwiftUI15NavigationStackVyAA0C4PathVAA4ViewPAAE7toolbar7contentQrqd__yXE_tAA14ToolbarContentRd__lFQOyAgAE9listStyleyQrqd__AA04ListL0Rd__lFQOyAA08ModifiedJ0VyAA0M0Vys5NeverOAA05TupleF0VyAgAE16headerProminenceyQrAA0R0OFQOyAA7SectionVyAgAE15fullScreenCover11isPresented9onDismissAIQrAA7BindingVySbG_yycSgqd__yctAaFRd__lFQOyANyAA6VStackVyATyANyANyANyANy010_MusicKit_aB012ArtworkImageV018_MusicKitInternal_aB0E18artworkPlaceholderyQrx8MusicKit7ArtworkVSg_So6CGSizeVAA5ColorVtcAaFRzlFQOy_AA012_ConditionalJ0VyANyANyA9_09MusicCoreB0E11PlaceholderOAFVAA26_PreferenceWritingModifierVyA22_29RadiosityEnabledPreferenceKeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA34_GGQo_A33_GA22_20CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGA22_06BorderF8ModifierA42_LLVGAA13_ShadowEffectVG_AA4TextVATyANyANyAA6HStackVyATyAgAE5sheetA_A0_AIQrA3__A4_qd__yctAaFRd__lFQOyANy9MusicCore13CollaborationOA22_E10ManagementOAFV5Share33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonVAA32_EnvironmentKeyTransformModifierVySbGG_A60_08ActivityF10ControllerA63_LLVSgQo__ANyA70_AA20_TransactionModifierVGSgtGGAA16_FixedSizeLayoutVGAA14_PaddingLayoutVG_ANyANyANyANyANyANyANyAA5GroupVyA21_yA54_yATyAA08ProgressF0VyAA05EmptyF0VA92_G_A52_tGGANyANyA52_AA30_EnvironmentKeyWritingModifierVyA19_SgGGA97_yAA13OpenURLActionVGGGSgGAA16_FlexFrameLayoutVGA97_ySiSgGGA82_GAA011_ForegroundL8ModifierVyAA017HierarchicalShapeL0VGGA97_yAA4FontVSgGGA85_GA85_GAA6SpacerVtGSgA54_yA129_GtGGAA21_TraitWritingModifierVyAA0M17RowInsetsTraitKeyVGG_ANyANyA60_06QRCodeF0A63_LLVAA30_SafeAreaRegionsIgnoringLayoutVGAA19_BackgroundModifierVyA22_15ClearBackgroundA63_LLVGGSgQo_ATyAgAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyANyANyANyA54_yATyANyANyANyANyAA5ImageVA124_GA33_GA97_yAA19SymbolRenderingModeVSgGGA99_GSg_A6_yATyA52__A52_SgtGGATyA129__AgAE5alertA_AIQrA3__AA5AlertVyXEtFQOyAgAE15dynamicTypeSizeyQrqd__SXRd__AA15DynamicTypeSizeO5BoundRtd__lFQOyANyANyANyANyANyAgAE10fontWeightyQrA122_6WeightVSgFQOyANyAAA65_VyA52_GA124_G_Qo_A99_GA33_GA85_GAA011_BackgroundL8ModifierVyA19_GGAA11_ClipEffectVyAA7CapsuleVGG_s19PartialRangeThroughVyA177_GQo__Qo_tGSgtGGA85_GA139_GAA25_AlignmentWritingModifierVG_Qo__AA7ForEachVySayA12_8PlaylistV16MusicKitInternalE12CollaboratorVGA12_11MusicItemIDVA61_015CollaboratorRowF0A63_LLVGtGSgA92_G_Qo__ATyAYyA52_A227_A92_G_AYyA92_AgAEA172_A_AIQrA3__A174_yXEtFQOyAgAE06buttonL0yQrqd__AA015PrimitiveButtonL0Rd__lFQOyA184_yANyANyA52_A109_GA99_GG_AA016BorderlessButtonL0VQo__Qo_A92_GSgAYyA52_A228_A92_GtGSgAYyA52_A54_yAA6ToggleVyA52_GGA21_yA21_yA52_A52_GA52_GGSgtGGA97_y12CoreGraphics7CGFloatVGG_AA012InsetGroupedmL0VQo__AA0iJ7BuilderV10buildBlockyQrxAaJRzlFZQOy_AA0I4ItemVyytA184_yAA18DefaultButtonLabelVGGQo_Qo_GMR,  &protocol conformance descriptor for NavigationStack<A, B>);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10034A540()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyACyAEyACyAA7ForEachVySaySi6offset_09MusicCoreB016PlaylistCuratorsO7CuratorV7elementtGSiAGyAGyAGyAGyAGy01_k4Kit_aB012ArtworkImageV01_kq9Internal_aB0E18artworkPlaceholderyQrx0kQ00R0VSg_So6CGSizeVAA5ColorVtcAA0E0RzlFQOy_AA012_ConditionalG0VyAGyAGyAtKE0V0OA3_VAA26_PreferenceWritingModifierVyAK016RadiosityEnabledZ3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA17_GGQo_AK0V13StyleModifierVGA16_GAK20CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAK06BorderE8ModifierA28_LLVGAA21_TraitWritingModifierVyAA14ZIndexTraitKeyVGGGG_AGyAGyAGyAAA3_PAAE10textSuffixyQrAA4TextV6SuffixVFQOyA45__Qo_AA30_EnvironmentKeyWritingModifierVySiSgGGA50_yAA0S0V5ScaleOGGA50_yAA4FontVSgGGtGGAK05HoverE8ModifierA28_LLVG_AA6SpacerVSgtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyACyAEyACyAA7ForEachVySaySi6offset_09MusicCoreB016PlaylistCuratorsO7CuratorV7elementtGSiAGyAGyAGyAGyAGy01_k4Kit_aB012ArtworkImageV01_kq9Internal_aB0E18artworkPlaceholderyQrx0kQ00R0VSg_So6CGSizeVAA5ColorVtcAA0E0RzlFQOy_AA012_ConditionalG0VyAGyAGyAtKE0V0OA3_VAA26_PreferenceWritingModifierVyAK016RadiosityEnabledZ3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA17_GGQo_AK0V13StyleModifierVGA16_GAK20CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAK06BorderE8ModifierA28_LLVGAA21_TraitWritingModifierVyAA14ZIndexTraitKeyVGGGG_AGyAGyAGyAAA3_PAAE10textSuffixyQrAA4TextV6SuffixVFQOyA45__Qo_AA30_EnvironmentKeyWritingModifierVySiSgGGA50_yAA0S0V5ScaleOGGA50_yAA4FontVSgGGtGGAK05HoverE8ModifierA28_LLVG_AA6SpacerVSgtGGMR);
  lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type HStack<TupleView<(ModifiedContent<HStack<TupleView<(HStack<ForEach<[(offset: Int, element: PlaylistCurators.Curator)], Int, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of ArtworkImage.artworkPlaceholder<A>(_:)>>.0, PlaceholderStyleModifier>, _FrameLayout>, CornerRadiusModifier>, BorderViewModifier>, _TraitWritingModifier<ZIndexTraitKey>>>>, ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.textSuffix(_:)>>.0, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>)>>, HoverViewModifier>, Spacer?)>> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyACyAEyACyAA7ForEachVySaySi6offset_09MusicCoreB016PlaylistCuratorsO7CuratorV7elementtGSiAGyAGyAGyAGyAGy01_k4Kit_aB012ArtworkImageV01_kq9Internal_aB0E18artworkPlaceholderyQrx0kQ00R0VSg_So6CGSizeVAA5ColorVtcAA0E0RzlFQOy_AA012_ConditionalG0VyAGyAGyAtKE0V0OA3_VAA26_PreferenceWritingModifierVyAK016RadiosityEnabledZ3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA17_GGQo_AK0V13StyleModifierVGA16_GAK20CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAK06BorderE8ModifierA28_LLVGAA21_TraitWritingModifierVyAA14ZIndexTraitKeyVGGGG_AGyAGyAGyAAA3_PAAE10textSuffixyQrAA4TextV6SuffixVFQOyA45__Qo_AA30_EnvironmentKeyWritingModifierVySiSgGGA50_yAA0S0V5ScaleOGGA50_yAA4FontVSgGGtGGAK05HoverE8ModifierA28_LLVG_AA6SpacerVSgtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyACyAEyACyAA7ForEachVySaySi6offset_09MusicCoreB016PlaylistCuratorsO7CuratorV7elementtGSiAGyAGyAGyAGyAGy01_k4Kit_aB012ArtworkImageV01_kq9Internal_aB0E18artworkPlaceholderyQrx0kQ00R0VSg_So6CGSizeVAA5ColorVtcAA0E0RzlFQOy_AA012_ConditionalG0VyAGyAGyAtKE0V0OA3_VAA26_PreferenceWritingModifierVyAK016RadiosityEnabledZ3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA17_GGQo_AK0V13StyleModifierVGA16_GAK20CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAK06BorderE8ModifierA28_LLVGAA21_TraitWritingModifierVyAA14ZIndexTraitKeyVGGGG_AGyAGyAGyAAA3_PAAE10textSuffixyQrAA4TextV6SuffixVFQOyA45__Qo_AA30_EnvironmentKeyWritingModifierVySiSgGGA50_yAA0S0V5ScaleOGGA50_yAA4FontVSgGGtGGAK05HoverE8ModifierA28_LLVG_AA6SpacerVSgtGGMR, &protocol conformance descriptor for HStack<A>);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10034A5EC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for Playlist.Collaborator();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_12:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v11 = *(a1 + a3[5]);
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy8MusicKit8PlaylistV0dE8InternalE12CollaboratorVSgGMd, &_s7SwiftUI5StateVy8MusicKit8PlaylistV0dE8InternalE12CollaboratorVSgGMR);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v8 = v13;
    v14 = *(v13 - 8);
    v15 = a3[7];
LABEL_11:
    v9 = *(v14 + 48);
    v10 = a1 + v15;
    goto LABEL_12;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA15DynamicTypeSizeOGMd_0, &_s7SwiftUI11EnvironmentVyAA15DynamicTypeSizeOGMR_0);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v14 = *(v16 - 8);
    v15 = a3[8];
    goto LABEL_11;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA13OpenURLActionVGMd, &_s7SwiftUI11EnvironmentVyAA13OpenURLActionVGMR);
  v18 = *(*(v17 - 8) + 48);
  v19 = a1 + a3[9];

  return v18(v19, a2, v17);
}

uint64_t sub_10034A7E0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for Playlist.Collaborator();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5]) = (a2 - 1);
    return result;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy8MusicKit8PlaylistV0dE8InternalE12CollaboratorVSgGMd, &_s7SwiftUI5StateVy8MusicKit8PlaylistV0dE8InternalE12CollaboratorVSgGMR);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[7];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA15DynamicTypeSizeOGMd_0, &_s7SwiftUI11EnvironmentVyAA15DynamicTypeSizeOGMR_0);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[8];
    goto LABEL_9;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA13OpenURLActionVGMd, &_s7SwiftUI11EnvironmentVyAA13OpenURLActionVGMR);
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + a4[9];

  return v18(v19, a2, a2, v17);
}

void type metadata completion function for Collaboration.Management.View.CollaboratorRowView(uint64_t a1)
{
  type metadata accessor for Playlist.Collaborator();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Collaboration.Management.Model(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Published<Bool>(319, &lazy cache variable for type metadata for State<Bool>, &type metadata accessor for State);
      if (v3 <= 0x3F)
      {
        type metadata accessor for Published<[Playlist.Collaborator]>(319, &lazy cache variable for type metadata for State<Playlist.Collaborator?>, &_s8MusicKit8PlaylistV0aB8InternalE12CollaboratorVSgMd, &_s8MusicKit8PlaylistV0aB8InternalE12CollaboratorVSgMR, &type metadata accessor for State);
        if (v4 <= 0x3F)
        {
          type metadata accessor for Published<Playlist>(319, &_s7SwiftUI11EnvironmentVyAA15DynamicTypeSizeOGML_0, &type metadata accessor for DynamicTypeSize, &type metadata accessor for Environment);
          if (v5 <= 0x3F)
          {
            type metadata accessor for Published<Playlist>(319, &lazy cache variable for type metadata for Environment<OpenURLAction>, &type metadata accessor for OpenURLAction, &type metadata accessor for Environment);
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

void type metadata accessor for Published<[Playlist.Collaborator]>(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO_0(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_10034AC40(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA11ColorSchemeOGMd, &_s7SwiftUI11EnvironmentVyAA11ColorSchemeOGMR);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10034AD10(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA11ColorSchemeOGMd, &_s7SwiftUI11EnvironmentVyAA11ColorSchemeOGMR);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void type metadata completion function for Collaboration.Management.View.Share.Button(uint64_t a1)
{
  _syycMa_0();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Published<Playlist>(319, &lazy cache variable for type metadata for Environment<ColorScheme>, &type metadata accessor for ColorScheme, &type metadata accessor for Environment);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Published<Bool>(319, &lazy cache variable for type metadata for Environment<Bool>, &type metadata accessor for Environment);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for Published<Playlist>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void type metadata accessor for Published<Bool>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for Bool);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type Collaboration.Management.View.Share and conformance Collaboration.Management.View.Share()
{
  result = lazy protocol witness table cache variable for type Collaboration.Management.View.Share and conformance Collaboration.Management.View.Share;
  if (!lazy protocol witness table cache variable for type Collaboration.Management.View.Share and conformance Collaboration.Management.View.Share)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Collaboration.Management.View.Share and conformance Collaboration.Management.View.Share);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Collaboration.Management.ActivityViewController and conformance Collaboration.Management.ActivityViewController()
{
  result = lazy protocol witness table cache variable for type Collaboration.Management.ActivityViewController and conformance Collaboration.Management.ActivityViewController;
  if (!lazy protocol witness table cache variable for type Collaboration.Management.ActivityViewController and conformance Collaboration.Management.ActivityViewController)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Collaboration.Management.ActivityViewController and conformance Collaboration.Management.ActivityViewController);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Collaboration.Management.ActivityViewController and conformance Collaboration.Management.ActivityViewController;
  if (!lazy protocol witness table cache variable for type Collaboration.Management.ActivityViewController and conformance Collaboration.Management.ActivityViewController)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Collaboration.Management.ActivityViewController and conformance Collaboration.Management.ActivityViewController);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Collaboration.Management.QRCodeView and conformance Collaboration.Management.QRCodeView()
{
  result = lazy protocol witness table cache variable for type Collaboration.Management.QRCodeView and conformance Collaboration.Management.QRCodeView;
  if (!lazy protocol witness table cache variable for type Collaboration.Management.QRCodeView and conformance Collaboration.Management.QRCodeView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Collaboration.Management.QRCodeView and conformance Collaboration.Management.QRCodeView);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Collaboration.Management.QRCodeView and conformance Collaboration.Management.QRCodeView;
  if (!lazy protocol witness table cache variable for type Collaboration.Management.QRCodeView and conformance Collaboration.Management.QRCodeView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Collaboration.Management.QRCodeView and conformance Collaboration.Management.QRCodeView);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ClearBackground and conformance ClearBackground()
{
  result = lazy protocol witness table cache variable for type ClearBackground and conformance ClearBackground;
  if (!lazy protocol witness table cache variable for type ClearBackground and conformance ClearBackground)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ClearBackground and conformance ClearBackground);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ClearBackground and conformance ClearBackground;
  if (!lazy protocol witness table cache variable for type ClearBackground and conformance ClearBackground)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ClearBackground and conformance ClearBackground);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of ArtworkImage.artworkPlaceholder<A>(_:)>>.0, CornerRadiusModifier>, _FrameLayout>, _AspectRatioLayout>?, VStack<TupleView<(Text?, _ConditionalContent<Text, Text>?)>>, Spacer, _ConditionalContent<ModifiedContent<ProgressView<EmptyView, EmptyView>, _FrameLayout>, TupleView<(Collaboration.Management.View.Moderation.Button, Collaboration.Management.View.Moderation.Button)>>?)>>, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of ArtworkImage.artworkPlaceholder<A>(_:)>>.0, CornerRadiusModifier>, _FrameLayout>, _AspectRatioLayout>?, VStack<TupleView<(Text?, _ConditionalContent<Text, Text>?)>>, Spacer, _ConditionalContent<ModifiedContent<ProgressView<EmptyView, EmptyView>, _FrameLayout>, TupleView<(Collaboration.Management.View.Moderation.Button, Collaboration.Management.View.Moderation.Button)>>?)>>, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of ArtworkImage.artworkPlaceholder<A>(_:)>>.0, CornerRadiusModifier>, _FrameLayout>, _AspectRatioLayout>?, VStack<TupleView<(Text?, _ConditionalContent<Text, Text>?)>>, Spacer, _ConditionalContent<ModifiedContent<ProgressView<EmptyView, EmptyView>, _FrameLayout>, TupleView<(Collaboration.Management.View.Moderation.Button, Collaboration.Management.View.Moderation.Button)>>?)>>, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyACyACy010_MusicKit_aB012ArtworkImageV01_hi9Internal_aB0E18artworkPlaceholderyQrx0hI00J0VSg_So6CGSizeVAA5ColorVtcAA0G0RzlFQOy_AA012_ConditionalD0VyACyACyAJ0h4CoreB0E0N0OAUVAA26_PreferenceWritingModifierVyAX016RadiosityEnabledS3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA8_GGQo_AX012CornerRadiusU033_F5ED3014321945F1E2BE58A044A15282LLVGA7_GAA012_AspectRatioZ0VGSg_AA6VStackVyAGyAA4TextVSg_AWyA26_A26_GSgtGGAA6SpacerVAWyACyAA08ProgressG0VyAA05EmptyG0VA37_GA7_GAGy0hR013CollaborationOAXE10ManagementOAUV10Moderation33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonV_A50_tGGSgtGGAA01_d5ShapeU0VyAA9RectangleVGGMd, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyACyACy010_MusicKit_aB012ArtworkImageV01_hi9Internal_aB0E18artworkPlaceholderyQrx0hI00J0VSg_So6CGSizeVAA5ColorVtcAA0G0RzlFQOy_AA012_ConditionalD0VyACyACyAJ0h4CoreB0E0N0OAUVAA26_PreferenceWritingModifierVyAX016RadiosityEnabledS3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA8_GGQo_AX012CornerRadiusU033_F5ED3014321945F1E2BE58A044A15282LLVGA7_GAA012_AspectRatioZ0VGSg_AA6VStackVyAGyAA4TextVSg_AWyA26_A26_GSgtGGAA6SpacerVAWyACyAA08ProgressG0VyAA05EmptyG0VA37_GA7_GAGy0hR013CollaborationOAXE10ManagementOAUV10Moderation33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonV_A50_tGGSgtGGAA01_d5ShapeU0VyAA9RectangleVGGMR);
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of ArtworkImage.artworkPlaceholder<A>(_:)>>.0, CornerRadiusModifier>, _FrameLayout>, _AspectRatioLayout>?, VStack<TupleView<(Text?, _ConditionalContent<Text, Text>?)>>, Spacer, _ConditionalContent<ModifiedContent<ProgressView<EmptyView, EmptyView>, _FrameLayout>, TupleView<(Collaboration.Management.View.Moderation.Button, Collaboration.Management.View.Moderation.Button)>>?)>> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGy010_MusicKit_aB012ArtworkImageV01_hi9Internal_aB0E18artworkPlaceholderyQrx0hI00J0VSg_So6CGSizeVAA5ColorVtcAA0E0RzlFQOy_AA012_ConditionalG0VyAGyAGyAJ0h4CoreB0E0N0OAUVAA26_PreferenceWritingModifierVyAX016RadiosityEnabledS3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA8_GGQo_AX012CornerRadiusU033_F5ED3014321945F1E2BE58A044A15282LLVGA7_GAA012_AspectRatioZ0VGSg_AA6VStackVyAEyAA4TextVSg_AWyA26_A26_GSgtGGAA6SpacerVAWyAGyAA08ProgressE0VyAA05EmptyE0VA37_GA7_GAEy0hR013CollaborationOAXE10ManagementOAUV10Moderation33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonV_A50_tGGSgtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGy010_MusicKit_aB012ArtworkImageV01_hi9Internal_aB0E18artworkPlaceholderyQrx0hI00J0VSg_So6CGSizeVAA5ColorVtcAA0E0RzlFQOy_AA012_ConditionalG0VyAGyAGyAJ0h4CoreB0E0N0OAUVAA26_PreferenceWritingModifierVyAX016RadiosityEnabledS3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA8_GGQo_AX012CornerRadiusU033_F5ED3014321945F1E2BE58A044A15282LLVGA7_GAA012_AspectRatioZ0VGSg_AA6VStackVyAEyAA4TextVSg_AWyA26_A26_GSgtGGAA6SpacerVAWyAGyAA08ProgressE0VyAA05EmptyE0VA37_GA7_GAEy0hR013CollaborationOAXE10ManagementOAUV10Moderation33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonV_A50_tGGSgtGGMR, &protocol conformance descriptor for HStack<A>);
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type _ContentShapeModifier<Rectangle> and conformance _ContentShapeModifier<A>, &_s7SwiftUI21_ContentShapeModifierVyAA9RectangleVGMd, &_s7SwiftUI21_ContentShapeModifierVyAA9RectangleVGMR, &protocol conformance descriptor for _ContentShapeModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of ArtworkImage.artworkPlaceholder<A>(_:)>>.0, CornerRadiusModifier>, _FrameLayout>, _AspectRatioLayout>?, VStack<TupleView<(Text?, _ConditionalContent<Text, Text>?)>>, Spacer, _ConditionalContent<ModifiedContent<ProgressView<EmptyView, EmptyView>, _FrameLayout>, TupleView<(Collaboration.Management.View.Moderation.Button, Collaboration.Management.View.Moderation.Button)>>?)>>, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMR);
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&_s7SwiftUI6ButtonVyAA4TextVGACyxGAA4ViewAAWL_0, &_s7SwiftUI6ButtonVyAA4TextVGMd_0, &_s7SwiftUI6ButtonVyAA4TextVGMR_0, &protocol conformance descriptor for Button<A>);
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMR, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t outlined init with copy of Collaboration.Management.View(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of Collaboration.Management.View(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_142Tm()
{
  v1 = type metadata accessor for Collaboration.Management.View.CollaboratorRowView(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));
  v3 = type metadata accessor for Playlist.Collaborator();
  v4 = *(v3 - 8);
  v5 = *(v4 + 8);
  v5(v2, v3);

  v6 = v2 + v1[7];
  if (!(*(v4 + 48))(v6, 1, v3))
  {
    v5(v6, v3);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy8MusicKit8PlaylistV0dE8InternalE12CollaboratorVSgGMd, &_s7SwiftUI5StateVy8MusicKit8PlaylistV0dE8InternalE12CollaboratorVSgGMR);

  v7 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA15DynamicTypeSizeO_GMd_0, &_s7SwiftUI11EnvironmentV7ContentOyAA15DynamicTypeSizeO_GMR_0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = type metadata accessor for DynamicTypeSize();
    (*(*(v8 - 8) + 8))(v2 + v7, v8);
  }

  else
  {
  }

  v9 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA13OpenURLActionV_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA13OpenURLActionV_GMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = type metadata accessor for OpenURLAction();
    (*(*(v10 - 8) + 8))(v2 + v9, v10);
  }

  else
  {
  }

  return swift_deallocObject();
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ProgressView<EmptyView, EmptyView>, _FrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ProgressView<EmptyView, EmptyView>, _FrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ProgressView<EmptyView, EmptyView>, _FrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA12ProgressViewVyAA05EmptyF0VAGGAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA12ProgressViewVyAA05EmptyF0VAGGAA12_FrameLayoutVGMR);
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type ProgressView<EmptyView, EmptyView> and conformance ProgressView<A, B>, &_s7SwiftUI12ProgressViewVyAA05EmptyD0VAEGMd, &_s7SwiftUI12ProgressViewVyAA05EmptyD0VAEGMR, &protocol conformance descriptor for ProgressView<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ProgressView<EmptyView, EmptyView>, _FrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t outlined destroy of ArtworkImage.Placeholder(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double outlined copy of Text?(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    outlined copy of Text.Storage(a1, a2, a3 & 1);
  }

  return result;
}

double outlined copy of _ConditionalContent<Text, Text>?(uint64_t result, uint64_t a2, char a3, uint64_t a4, char a5)
{
  if (a5 != -1)
  {
    return outlined copy of _ConditionalContent<Text, Text>.Storage(result, a2, a3, a4);
  }

  return v5;
}

double outlined copy of _ConditionalContent<Text, Text>.Storage(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  outlined copy of Text.Storage(a1, a2, a3 & 1);

  return result;
}

double outlined consume of Text?(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    outlined consume of Text.Storage(a1, a2, a3 & 1);
  }

  return result;
}

double outlined consume of _ConditionalContent<Text, Text>?(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  if (a5 != -1)
  {
    return outlined consume of _ConditionalContent<Text, Text>.Storage(a1, a2, a3, a4);
  }

  return result;
}

uint64_t sub_10034BAD8()
{
  v1 = type metadata accessor for Collaboration.Management.View.Share.Button(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  v3 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = type metadata accessor for ColorScheme();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  outlined consume of Environment<Bool>.Content(*(v2 + *(v1 + 28)), *(v2 + *(v1 + 28) + 8));

  return swift_deallocObject();
}

double outlined consume of Environment<Bool>.Content(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<VStackLayout>, TupleView<(Spacer, <<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, Text, Spacer)>>, _OffsetEffect>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<VStackLayout>, TupleView<(Spacer, <<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, Text, Spacer)>>, _OffsetEffect>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<VStackLayout>, TupleView<(Spacer, <<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, Text, Spacer)>>, _OffsetEffect>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA13_VariadicViewO4TreeVy_AA11_LayoutRootVyAA06VStackH0VGAA05TupleF0VyAA6SpacerV_AA0F0PAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamicnO0O5BoundRtd__lFQOyArAE10fontWeightyQrAA4FontV0S0VSgFQOyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAZSgGG_Qo__s19PartialRangeThroughVyAUGQo_AA4TextVAPtGGAA13_OffsetEffectVGAA010_FlexFrameH0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA13_VariadicViewO4TreeVy_AA11_LayoutRootVyAA06VStackH0VGAA05TupleF0VyAA6SpacerV_AA0F0PAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamicnO0O5BoundRtd__lFQOyArAE10fontWeightyQrAA4FontV0S0VSgFQOyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAZSgGG_Qo__s19PartialRangeThroughVyAUGQo_AA4TextVAPtGGAA13_OffsetEffectVGAA010_FlexFrameH0VGMR);
    lazy protocol witness table accessor for type ModifiedContent<_VariadicView.Tree<_LayoutRoot<VStackLayout>, TupleView<(Spacer, <<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, Text, Spacer)>>, _OffsetEffect> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<VStackLayout>, TupleView<(Spacer, <<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, Text, Spacer)>>, _OffsetEffect>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_VariadicView.Tree<_LayoutRoot<VStackLayout>, TupleView<(Spacer, <<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, Text, Spacer)>>, _OffsetEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_VariadicView.Tree<_LayoutRoot<VStackLayout>, TupleView<(Spacer, <<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, Text, Spacer)>>, _OffsetEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_VariadicView.Tree<_LayoutRoot<VStackLayout>, TupleView<(Spacer, <<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, Text, Spacer)>>, _OffsetEffect> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA13_VariadicViewO4TreeVy_AA11_LayoutRootVyAA06VStackH0VGAA05TupleF0VyAA6SpacerV_AA0F0PAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamicnO0O5BoundRtd__lFQOyArAE10fontWeightyQrAA4FontV0S0VSgFQOyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAZSgGG_Qo__s19PartialRangeThroughVyAUGQo_AA4TextVAPtGGAA13_OffsetEffectVGMd, &_s7SwiftUI15ModifiedContentVyAA13_VariadicViewO4TreeVy_AA11_LayoutRootVyAA06VStackH0VGAA05TupleF0VyAA6SpacerV_AA0F0PAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamicnO0O5BoundRtd__lFQOyArAE10fontWeightyQrAA4FontV0S0VSgFQOyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAZSgGG_Qo__s19PartialRangeThroughVyAUGQo_AA4TextVAPtGGAA13_OffsetEffectVGMR);
    lazy protocol witness table accessor for type _VariadicView.Tree<_LayoutRoot<VStackLayout>, TupleView<(Spacer, <<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, Text, Spacer)>> and conformance <> _VariadicView.Tree<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_VariadicView.Tree<_LayoutRoot<VStackLayout>, TupleView<(Spacer, <<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, Text, Spacer)>>, _OffsetEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _VariadicView.Tree<_LayoutRoot<VStackLayout>, TupleView<(Spacer, <<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, Text, Spacer)>> and conformance <> _VariadicView.Tree<A, B>()
{
  result = lazy protocol witness table cache variable for type _VariadicView.Tree<_LayoutRoot<VStackLayout>, TupleView<(Spacer, <<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, Text, Spacer)>> and conformance <> _VariadicView.Tree<A, B>;
  if (!lazy protocol witness table cache variable for type _VariadicView.Tree<_LayoutRoot<VStackLayout>, TupleView<(Spacer, <<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, Text, Spacer)>> and conformance <> _VariadicView.Tree<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA11_LayoutRootVyAA06VStackF0VGAA05TupleD0VyAA6SpacerV_AA0D0PAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamiclM0O5BoundRtd__lFQOyApAE10fontWeightyQrAA4FontV0Q0VSgFQOyAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAXSgGG_Qo__s19PartialRangeThroughVyASGQo_AA4TextVANtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA11_LayoutRootVyAA06VStackF0VGAA05TupleD0VyAA6SpacerV_AA0D0PAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamiclM0O5BoundRtd__lFQOyApAE10fontWeightyQrAA4FontV0Q0VSgFQOyAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAXSgGG_Qo__s19PartialRangeThroughVyASGQo_AA4TextVANtGGMR);
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type _LayoutRoot<VStackLayout> and conformance _LayoutRoot<A>, &_s7SwiftUI11_LayoutRootVyAA06VStackC0VGMd, &_s7SwiftUI11_LayoutRootVyAA06VStackC0VGMR, &protocol conformance descriptor for _LayoutRoot<A>);
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type TupleView<(Spacer, <<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, Text, Spacer)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA6SpacerV_AA0D0PAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamicgH0O5BoundRtd__lFQOyAgAE10fontWeightyQrAA4FontV0L0VSgFQOyAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAOSgGG_Qo__s19PartialRangeThroughVyAJGQo_AA4TextVAEtGMd, &_s7SwiftUI9TupleViewVyAA6SpacerV_AA0D0PAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamicgH0O5BoundRtd__lFQOyAgAE10fontWeightyQrAA4FontV0L0VSgFQOyAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAOSgGG_Qo__s19PartialRangeThroughVyAJGQo_AA4TextVAEtGMR, &protocol conformance descriptor for TupleView<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _VariadicView.Tree<_LayoutRoot<VStackLayout>, TupleView<(Spacer, <<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, Text, Spacer)>> and conformance <> _VariadicView.Tree<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMd, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMR);
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMR, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t sub_10034BF50()
{
  v1 = type metadata accessor for Playlist.Collaborator();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 41) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in Collaboration.Management.Model.moderateCollaborator(_:action:)(uint64_t a1)
{
  v4 = *(type metadata accessor for Playlist.Collaborator() - 8);
  v5 = (*(v4 + 80) + 41) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  v9 = *(v1 + 40);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in Collaboration.Management.Model.moderateCollaborator(_:action:)(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t partial apply for closure #1 in closure #1 in Collaboration.Management.Model.moderateCollaborator(_:action:)(uint64_t a1)
{
  v4 = *(type metadata accessor for Playlist.Collaborator() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in closure #1 in Collaboration.Management.Model.moderateCollaborator(_:action:)(a1, v6, v7, v8, v1 + v5);
}

uint64_t objectdestroy_189Tm()
{
  v1 = type metadata accessor for Playlist.Collaborator();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in Collaboration.Management.Model.remove(_:)(uint64_t a1)
{
  v4 = *(type metadata accessor for Playlist.Collaborator() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in Collaboration.Management.Model.remove(_:)(a1, v6, v7, v8, v1 + v5);
}

double specialized static PlaylistCurators.View.Specs.faceholeSpacing(for:)(uint64_t a1)
{
  v2 = type metadata accessor for UserInterfaceSizeClass();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI22UserInterfaceSizeClassOSg_ADtMd, &_s7SwiftUI22UserInterfaceSizeClassOSg_ADtMR) - 8;
  __chkstk_darwin();
  v8 = &v19 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
  __chkstk_darwin();
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin();
  v13 = &v19 - v12;
  (*(v3 + 104))(&v19 - v12, enum case for UserInterfaceSizeClass.compact(_:), v2, v11);
  (*(v3 + 56))(v13, 0, 1, v2);
  v14 = *(v6 + 56);
  outlined init with copy of TaskPriority?(a1, v8, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
  outlined init with copy of TaskPriority?(v13, &v8[v14], &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
  v15 = *(v3 + 48);
  if (v15(v8, 1, v2) == 1)
  {
    outlined destroy of TaskPriority?(v13, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
    if (v15(&v8[v14], 1, v2) == 1)
    {
      outlined destroy of TaskPriority?(v8, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
      return -9.0;
    }

    goto LABEL_6;
  }

  outlined init with copy of TaskPriority?(v8, v10, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
  if (v15(&v8[v14], 1, v2) == 1)
  {
    outlined destroy of TaskPriority?(v13, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
    (*(v3 + 8))(v10, v2);
LABEL_6:
    outlined destroy of TaskPriority?(v8, &_s7SwiftUI22UserInterfaceSizeClassOSg_ADtMd, &_s7SwiftUI22UserInterfaceSizeClassOSg_ADtMR);
    return -12.0;
  }

  (*(v3 + 32))(v5, &v8[v14], v2);
  lazy protocol witness table accessor for type Collaboration.Management.Model and conformance Collaboration.Management.Model(&lazy protocol witness table cache variable for type UserInterfaceSizeClass and conformance UserInterfaceSizeClass, &type metadata accessor for UserInterfaceSizeClass, &protocol conformance descriptor for UserInterfaceSizeClass);
  v17 = dispatch thunk of static Equatable.== infix(_:_:)();
  v18 = *(v3 + 8);
  v18(v5, v2);
  outlined destroy of TaskPriority?(v13, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
  v18(v10, v2);
  outlined destroy of TaskPriority?(v8, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
  result = -9.0;
  if ((v17 & 1) == 0)
  {
    return -12.0;
  }

  return result;
}

uint64_t sub_10034C9B8()
{
  v1 = (type metadata accessor for PlaylistCurators.View(0) - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);

  v3 = v0 + v2;

  v4 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA22UserInterfaceSizeClassOSg_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA22UserInterfaceSizeClassOSg_GMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = type metadata accessor for UserInterfaceSizeClass();
    v6 = *(v5 - 8);
    if (!(*(v6 + 48))(v3 + v4, 1, v5))
    {
      (*(v6 + 8))(v3 + v4, v5);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in closure #1 in PlaylistCurators.View.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  type metadata accessor for PlaylistCurators.View(0);
  v7 = *(v3 + 16);

  return closure #1 in closure #1 in closure #1 in closure #1 in PlaylistCurators.View.body.getter(a1, a2, v7, a3);
}

uint64_t sub_10034CBC0()
{

  return swift_deallocObject();
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@unowned Int, @in_guaranteed PlaylistCurators.Curator) -> (@out ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of ArtworkImage.artworkPlaceholder<A>(_:)>>.0, PlaceholderStyleModifier>, _FrameLayout>, CornerRadiusModifier>, BorderViewModifier>, _TraitWritingModifier<ZIndexTraitKey>>)(char *a1)
{
  v3 = *(v1 + 16);
  v4 = *a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_11MusicCoreUI16PlaylistCuratorsO7CuratorV7elementtMd, &_sSi6offset_11MusicCoreUI16PlaylistCuratorsO7CuratorV7elementtMR);
  return v3(v4, &a1[*(v5 + 48)]);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of ArtworkImage.artworkPlaceholder<A>(_:)>>.0, PlaceholderStyleModifier>, _FrameLayout>, CornerRadiusModifier>, BorderViewModifier>, _TraitWritingModifier<ZIndexTraitKey>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of ArtworkImage.artworkPlaceholder<A>(_:)>>.0, PlaceholderStyleModifier>, _FrameLayout>, CornerRadiusModifier>, BorderViewModifier>, _TraitWritingModifier<ZIndexTraitKey>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of ArtworkImage.artworkPlaceholder<A>(_:)>>.0, PlaceholderStyleModifier>, _FrameLayout>, CornerRadiusModifier>, BorderViewModifier>, _TraitWritingModifier<ZIndexTraitKey>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACy010_MusicKit_aB012ArtworkImageV01_ef9Internal_aB0E18artworkPlaceholderyQrx0eF00G0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_AA012_ConditionalD0VyACyACyAF0e4CoreB0E0K0OAQVAA26_PreferenceWritingModifierVyAT016RadiosityEnabledQ3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA4_GGQo_AT0k5StyleS0VGA3_GAT012CornerRadiusS033_F5ED3014321945F1E2BE58A044A15282LLVGAT06BordernS0A15_LLVGAA06_TraitrS0VyAA011ZIndexTraitV0VGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACy010_MusicKit_aB012ArtworkImageV01_ef9Internal_aB0E18artworkPlaceholderyQrx0eF00G0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_AA012_ConditionalD0VyACyACyAF0e4CoreB0E0K0OAQVAA26_PreferenceWritingModifierVyAT016RadiosityEnabledQ3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA4_GGQo_AT0k5StyleS0VGA3_GAT012CornerRadiusS033_F5ED3014321945F1E2BE58A044A15282LLVGAT06BordernS0A15_LLVGAA06_TraitrS0VyAA011ZIndexTraitV0VGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of ArtworkImage.artworkPlaceholder<A>(_:)>>.0, PlaceholderStyleModifier>, _FrameLayout>, CornerRadiusModifier>, BorderViewModifier> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type _TraitWritingModifier<ZIndexTraitKey> and conformance _TraitWritingModifier<A>, &_s7SwiftUI21_TraitWritingModifierVyAA06ZIndexC3KeyVGMd, &_s7SwiftUI21_TraitWritingModifierVyAA06ZIndexC3KeyVGMR, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of ArtworkImage.artworkPlaceholder<A>(_:)>>.0, PlaceholderStyleModifier>, _FrameLayout>, CornerRadiusModifier>, BorderViewModifier>, _TraitWritingModifier<ZIndexTraitKey>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of ArtworkImage.artworkPlaceholder<A>(_:)>>.0, PlaceholderStyleModifier>, _FrameLayout>, CornerRadiusModifier>, BorderViewModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of ArtworkImage.artworkPlaceholder<A>(_:)>>.0, PlaceholderStyleModifier>, _FrameLayout>, CornerRadiusModifier>, BorderViewModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of ArtworkImage.artworkPlaceholder<A>(_:)>>.0, PlaceholderStyleModifier>, _FrameLayout>, CornerRadiusModifier>, BorderViewModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACy010_MusicKit_aB012ArtworkImageV01_ef9Internal_aB0E18artworkPlaceholderyQrx0eF00G0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_AA012_ConditionalD0VyACyACyAF0e4CoreB0E0K0OAQVAA26_PreferenceWritingModifierVyAT016RadiosityEnabledQ3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA4_GGQo_AT0k5StyleS0VGA3_GAT012CornerRadiusS033_F5ED3014321945F1E2BE58A044A15282LLVGAT06BordernS0A15_LLVGMd, &_s7SwiftUI15ModifiedContentVyACyACyACy010_MusicKit_aB012ArtworkImageV01_ef9Internal_aB0E18artworkPlaceholderyQrx0eF00G0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_AA012_ConditionalD0VyACyACyAF0e4CoreB0E0K0OAQVAA26_PreferenceWritingModifierVyAT016RadiosityEnabledQ3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA4_GGQo_AT0k5StyleS0VGA3_GAT012CornerRadiusS033_F5ED3014321945F1E2BE58A044A15282LLVGAT06BordernS0A15_LLVGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of ArtworkImage.artworkPlaceholder<A>(_:)>>.0, PlaceholderStyleModifier>, _FrameLayout>, CornerRadiusModifier> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type BorderViewModifier and conformance BorderViewModifier();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of ArtworkImage.artworkPlaceholder<A>(_:)>>.0, PlaceholderStyleModifier>, _FrameLayout>, CornerRadiusModifier>, BorderViewModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of ArtworkImage.artworkPlaceholder<A>(_:)>>.0, PlaceholderStyleModifier>, _FrameLayout>, CornerRadiusModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of ArtworkImage.artworkPlaceholder<A>(_:)>>.0, PlaceholderStyleModifier>, _FrameLayout>, CornerRadiusModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of ArtworkImage.artworkPlaceholder<A>(_:)>>.0, PlaceholderStyleModifier>, _FrameLayout>, CornerRadiusModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACy010_MusicKit_aB012ArtworkImageV01_ef9Internal_aB0E18artworkPlaceholderyQrx0eF00G0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_AA012_ConditionalD0VyACyACyAF0e4CoreB0E0K0OAQVAA26_PreferenceWritingModifierVyAT016RadiosityEnabledQ3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA4_GGQo_AT0k5StyleS0VGA3_GAT012CornerRadiusS033_F5ED3014321945F1E2BE58A044A15282LLVGMd, &_s7SwiftUI15ModifiedContentVyACyACy010_MusicKit_aB012ArtworkImageV01_ef9Internal_aB0E18artworkPlaceholderyQrx0eF00G0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_AA012_ConditionalD0VyACyACyAF0e4CoreB0E0K0OAQVAA26_PreferenceWritingModifierVyAT016RadiosityEnabledQ3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA4_GGQo_AT0k5StyleS0VGA3_GAT012CornerRadiusS033_F5ED3014321945F1E2BE58A044A15282LLVGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of ArtworkImage.artworkPlaceholder<A>(_:)>>.0, PlaceholderStyleModifier>, _FrameLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type CornerRadiusModifier and conformance CornerRadiusModifier();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of ArtworkImage.artworkPlaceholder<A>(_:)>>.0, PlaceholderStyleModifier>, _FrameLayout>, CornerRadiusModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of ArtworkImage.artworkPlaceholder<A>(_:)>>.0, PlaceholderStyleModifier>, _FrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of ArtworkImage.artworkPlaceholder<A>(_:)>>.0, PlaceholderStyleModifier>, _FrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of ArtworkImage.artworkPlaceholder<A>(_:)>>.0, PlaceholderStyleModifier>, _FrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACy010_MusicKit_aB012ArtworkImageV01_ef9Internal_aB0E18artworkPlaceholderyQrx0eF00G0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_AA012_ConditionalD0VyACyACyAF0e4CoreB0E0K0OAQVAA26_PreferenceWritingModifierVyAT016RadiosityEnabledQ3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA4_GGQo_AT0k5StyleS0VGA3_GMd, &_s7SwiftUI15ModifiedContentVyACy010_MusicKit_aB012ArtworkImageV01_ef9Internal_aB0E18artworkPlaceholderyQrx0eF00G0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_AA012_ConditionalD0VyACyACyAF0e4CoreB0E0K0OAQVAA26_PreferenceWritingModifierVyAT016RadiosityEnabledQ3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA4_GGQo_AT0k5StyleS0VGA3_GMR);
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of ArtworkImage.artworkPlaceholder<A>(_:)>>.0, PlaceholderStyleModifier> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of ArtworkImage.artworkPlaceholder<A>(_:)>>.0, PlaceholderStyleModifier>, _FrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of ArtworkImage.artworkPlaceholder<A>(_:)>>.0, PlaceholderStyleModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of ArtworkImage.artworkPlaceholder<A>(_:)>>.0, PlaceholderStyleModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of ArtworkImage.artworkPlaceholder<A>(_:)>>.0, PlaceholderStyleModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy010_MusicKit_aB012ArtworkImageV01_ef9Internal_aB0E18artworkPlaceholderyQrx0eF00G0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_AA012_ConditionalD0VyACyACyAF0e4CoreB0E0K0OAQVAA26_PreferenceWritingModifierVyAT016RadiosityEnabledQ3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA4_GGQo_AT0k5StyleS0VGMd, &_s7SwiftUI15ModifiedContentVy010_MusicKit_aB012ArtworkImageV01_ef9Internal_aB0E18artworkPlaceholderyQrx0eF00G0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_AA012_ConditionalD0VyACyACyAF0e4CoreB0E0K0OAQVAA26_PreferenceWritingModifierVyAT016RadiosityEnabledQ3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA4_GGQo_AT0k5StyleS0VGMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEy010_MusicKit_aB012ArtworkImageV0f4CoreB0E11PlaceholderO4ViewVAA26_PreferenceWritingModifierVyAI016RadiosityEnabledM3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyAVGGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEy010_MusicKit_aB012ArtworkImageV0f4CoreB0E11PlaceholderO4ViewVAA26_PreferenceWritingModifierVyAI016RadiosityEnabledM3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyAVGGMR);
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<ArtworkImage.Placeholder.View, _PreferenceWritingModifier<RadiosityEnabledPreferenceKey>>, _FrameLayout>, GeometryReader<ModifiedContent<ModifiedContent<ArtworkImage.Placeholder.View, _PreferenceWritingModifier<RadiosityEnabledPreferenceKey>>, _FrameLayout>>> and conformance <> _ConditionalContent<A, B>();
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type Collaboration.Management.Model and conformance Collaboration.Management.Model(&lazy protocol witness table cache variable for type PlaceholderStyleModifier and conformance PlaceholderStyleModifier, type metadata accessor for PlaceholderStyleModifier, &protocol conformance descriptor for PlaceholderStyleModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of ArtworkImage.artworkPlaceholder<A>(_:)>>.0, PlaceholderStyleModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

double specialized static PlaylistCurators.View.Specs.avatarLength(for:)(uint64_t a1)
{
  v2 = type metadata accessor for UserInterfaceSizeClass();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI22UserInterfaceSizeClassOSg_ADtMd, &_s7SwiftUI22UserInterfaceSizeClassOSg_ADtMR) - 8;
  __chkstk_darwin();
  v8 = &v19 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
  __chkstk_darwin();
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin();
  v13 = &v19 - v12;
  (*(v3 + 104))(&v19 - v12, enum case for UserInterfaceSizeClass.compact(_:), v2, v11);
  (*(v3 + 56))(v13, 0, 1, v2);
  v14 = *(v6 + 56);
  outlined init with copy of TaskPriority?(a1, v8, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
  outlined init with copy of TaskPriority?(v13, &v8[v14], &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
  v15 = *(v3 + 48);
  if (v15(v8, 1, v2) == 1)
  {
    outlined destroy of TaskPriority?(v13, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
    if (v15(&v8[v14], 1, v2) == 1)
    {
      outlined destroy of TaskPriority?(v8, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
      return 25.0;
    }

    goto LABEL_6;
  }

  outlined init with copy of TaskPriority?(v8, v10, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
  if (v15(&v8[v14], 1, v2) == 1)
  {
    outlined destroy of TaskPriority?(v13, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
    (*(v3 + 8))(v10, v2);
LABEL_6:
    outlined destroy of TaskPriority?(v8, &_s7SwiftUI22UserInterfaceSizeClassOSg_ADtMd, &_s7SwiftUI22UserInterfaceSizeClassOSg_ADtMR);
    return 29.0;
  }

  (*(v3 + 32))(v5, &v8[v14], v2);
  lazy protocol witness table accessor for type Collaboration.Management.Model and conformance Collaboration.Management.Model(&lazy protocol witness table cache variable for type UserInterfaceSizeClass and conformance UserInterfaceSizeClass, &type metadata accessor for UserInterfaceSizeClass, &protocol conformance descriptor for UserInterfaceSizeClass);
  v17 = dispatch thunk of static Equatable.== infix(_:_:)();
  v18 = *(v3 + 8);
  v18(v5, v2);
  outlined destroy of TaskPriority?(v13, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
  v18(v10, v2);
  outlined destroy of TaskPriority?(v8, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
  result = 25.0;
  if ((v17 & 1) == 0)
  {
    return 29.0;
  }

  return result;
}

uint64_t block_copy_helper_59(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroyTm_16()
{
  v1 = type metadata accessor for Collaboration.Management.View(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  v3 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = type metadata accessor for DismissAction();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  v5 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA15DynamicTypeSizeO_GMd_0, &_s7SwiftUI11EnvironmentV7ContentOyAA15DynamicTypeSizeO_GMR_0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for DynamicTypeSize();
    (*(*(v6 - 8) + 8))(v2 + v5, v6);
  }

  else
  {
  }

  v7 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA13OpenURLActionV_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA13OpenURLActionV_GMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = type metadata accessor for OpenURLAction();
    (*(*(v8 - 8) + 8))(v2 + v7, v8);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>>? and conformance <A> A?(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Collaboration.Management.QRCodeView, _SafeAreaRegionsIgnoringLayout>, _BackgroundModifier<ClearBackground>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Collaboration.Management.QRCodeView, _SafeAreaRegionsIgnoringLayout>, _BackgroundModifier<ClearBackground>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Collaboration.Management.QRCodeView, _SafeAreaRegionsIgnoringLayout>, _BackgroundModifier<ClearBackground>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACy9MusicCore13CollaborationO0efB0E10ManagementO10QRCodeView33_BED032AFC26D7293E5DA491DDAECC514LLVAA30_SafeAreaRegionsIgnoringLayoutVGAA19_BackgroundModifierVyAG05ClearV0AKLLVGGMd, &_s7SwiftUI15ModifiedContentVyACy9MusicCore13CollaborationO0efB0E10ManagementO10QRCodeView33_BED032AFC26D7293E5DA491DDAECC514LLVAA30_SafeAreaRegionsIgnoringLayoutVGAA19_BackgroundModifierVyAG05ClearV0AKLLVGGMR);
    lazy protocol witness table accessor for type ModifiedContent<Collaboration.Management.QRCodeView, _SafeAreaRegionsIgnoringLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type _BackgroundModifier<ClearBackground> and conformance _BackgroundModifier<A>, &_s7SwiftUI19_BackgroundModifierVy09MusicCoreB005ClearC033_BED032AFC26D7293E5DA491DDAECC514LLVGMd, &_s7SwiftUI19_BackgroundModifierVy09MusicCoreB005ClearC033_BED032AFC26D7293E5DA491DDAECC514LLVGMR, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Collaboration.Management.QRCodeView, _SafeAreaRegionsIgnoringLayout>, _BackgroundModifier<ClearBackground>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Collaboration.Management.QRCodeView, _SafeAreaRegionsIgnoringLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Collaboration.Management.QRCodeView, _SafeAreaRegionsIgnoringLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Collaboration.Management.QRCodeView, _SafeAreaRegionsIgnoringLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy9MusicCore13CollaborationO0efB0E10ManagementO10QRCodeView33_BED032AFC26D7293E5DA491DDAECC514LLVAA30_SafeAreaRegionsIgnoringLayoutVGMd, &_s7SwiftUI15ModifiedContentVy9MusicCore13CollaborationO0efB0E10ManagementO10QRCodeView33_BED032AFC26D7293E5DA491DDAECC514LLVAA30_SafeAreaRegionsIgnoringLayoutVGMR);
    lazy protocol witness table accessor for type Collaboration.Management.QRCodeView and conformance Collaboration.Management.QRCodeView();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Collaboration.Management.QRCodeView, _SafeAreaRegionsIgnoringLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TupleView<(<<opaque return type of View.accessibilityElement(children:)>>.0, ForEach<[Playlist.Collaborator], MusicItemID, Collaboration.Management.View.CollaboratorRowView>)>? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type TupleView<(<<opaque return type of View.accessibilityElement(children:)>>.0, ForEach<[Playlist.Collaborator], MusicItemID, Collaboration.Management.View.CollaboratorRowView>)>? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type TupleView<(<<opaque return type of View.accessibilityElement(children:)>>.0, ForEach<[Playlist.Collaborator], MusicItemID, Collaboration.Management.View.CollaboratorRowView>)>? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI9TupleViewVyAA0D0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA15ModifiedContentVyAKyAKyAA6HStackVyACyAKyAKyAKyAKyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA12_FrameLayoutVGAQyAA19SymbolRenderingModeVSgGGAQyAA5ColorVSgGGSg_AA6VStackVyACyAA4TextV_A12_SgtGGACyAA6SpacerV_AeAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyAeAE15dynamicTypeSizeyQrqd__SXRd__AA15DynamicTypeSizeO5BoundRtd__lFQOyAKyAKyAKyAKyAKyAeAE10fontWeightyQrAS6WeightVSgFQOyAKyAA6ButtonVyA12_GAUG_Qo_A6_GAXGAA08_PaddingU0VGAA016_BackgroundStyleR0VyA4_GGAA11_ClipEffectVyAA7CapsuleVGG_s19PartialRangeThroughVyA28_GQo__Qo_tGSgtGGA43_GAA06_TraitqR0VyAA018ListRowInsetsTraitP0VGGAA010_AlignmentqR0VG_Qo__AA7ForEachVySay8MusicKit8PlaylistV16MusicKitInternalE12CollaboratorVGA77_11MusicItemIDV9MusicCore13CollaborationO09MusicCoreB0E10ManagementOADV015CollaboratorRowD033_BED032AFC26D7293E5DA491DDAECC514LLVGtGSgMd, &_s7SwiftUI9TupleViewVyAA0D0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA15ModifiedContentVyAKyAKyAA6HStackVyACyAKyAKyAKyAKyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA12_FrameLayoutVGAQyAA19SymbolRenderingModeVSgGGAQyAA5ColorVSgGGSg_AA6VStackVyACyAA4TextV_A12_SgtGGACyAA6SpacerV_AeAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyAeAE15dynamicTypeSizeyQrqd__SXRd__AA15DynamicTypeSizeO5BoundRtd__lFQOyAKyAKyAKyAKyAKyAeAE10fontWeightyQrAS6WeightVSgFQOyAKyAA6ButtonVyA12_GAUG_Qo_A6_GAXGAA08_PaddingU0VGAA016_BackgroundStyleR0VyA4_GGAA11_ClipEffectVyAA7CapsuleVGG_s19PartialRangeThroughVyA28_GQo__Qo_tGSgtGGA43_GAA06_TraitqR0VyAA018ListRowInsetsTraitP0VGGAA010_AlignmentqR0VG_Qo__AA7ForEachVySay8MusicKit8PlaylistV16MusicKitInternalE12CollaboratorVGA77_11MusicItemIDV9MusicCore13CollaborationO09MusicCoreB0E10ManagementOADV015CollaboratorRowD033_BED032AFC26D7293E5DA491DDAECC514LLVGtGSgMR);
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type TupleView<(<<opaque return type of View.accessibilityElement(children:)>>.0, ForEach<[Playlist.Collaborator], MusicItemID, Collaboration.Management.View.CollaboratorRowView>)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA0D0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA15ModifiedContentVyAKyAKyAA6HStackVyACyAKyAKyAKyAKyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA12_FrameLayoutVGAQyAA19SymbolRenderingModeVSgGGAQyAA5ColorVSgGGSg_AA6VStackVyACyAA4TextV_A12_SgtGGACyAA6SpacerV_AeAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyAeAE15dynamicTypeSizeyQrqd__SXRd__AA15DynamicTypeSizeO5BoundRtd__lFQOyAKyAKyAKyAKyAKyAeAE10fontWeightyQrAS6WeightVSgFQOyAKyAA6ButtonVyA12_GAUG_Qo_A6_GAXGAA08_PaddingU0VGAA016_BackgroundStyleR0VyA4_GGAA11_ClipEffectVyAA7CapsuleVGG_s19PartialRangeThroughVyA28_GQo__Qo_tGSgtGGA43_GAA06_TraitqR0VyAA018ListRowInsetsTraitP0VGGAA010_AlignmentqR0VG_Qo__AA7ForEachVySay8MusicKit8PlaylistV16MusicKitInternalE12CollaboratorVGA77_11MusicItemIDV9MusicCore13CollaborationO09MusicCoreB0E10ManagementOADV015CollaboratorRowD033_BED032AFC26D7293E5DA491DDAECC514LLVGtGMd, &_s7SwiftUI9TupleViewVyAA0D0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA15ModifiedContentVyAKyAKyAA6HStackVyACyAKyAKyAKyAKyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA12_FrameLayoutVGAQyAA19SymbolRenderingModeVSgGGAQyAA5ColorVSgGGSg_AA6VStackVyACyAA4TextV_A12_SgtGGACyAA6SpacerV_AeAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyAeAE15dynamicTypeSizeyQrqd__SXRd__AA15DynamicTypeSizeO5BoundRtd__lFQOyAKyAKyAKyAKyAKyAeAE10fontWeightyQrAS6WeightVSgFQOyAKyAA6ButtonVyA12_GAUG_Qo_A6_GAXGAA08_PaddingU0VGAA016_BackgroundStyleR0VyA4_GGAA11_ClipEffectVyAA7CapsuleVGG_s19PartialRangeThroughVyA28_GQo__Qo_tGSgtGGA43_GAA06_TraitqR0VyAA018ListRowInsetsTraitP0VGGAA010_AlignmentqR0VG_Qo__AA7ForEachVySay8MusicKit8PlaylistV16MusicKitInternalE12CollaboratorVGA77_11MusicItemIDV9MusicCore13CollaborationO09MusicCoreB0E10ManagementOADV015CollaboratorRowD033_BED032AFC26D7293E5DA491DDAECC514LLVGtGMR, &protocol conformance descriptor for TupleView<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TupleView<(<<opaque return type of View.accessibilityElement(children:)>>.0, ForEach<[Playlist.Collaborator], MusicItemID, Collaboration.Management.View.CollaboratorRowView>)>? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Section<<<opaque return type of View.fullScreenCover<A>(isPresented:onDismiss:content:)>>.0, TupleView<(<<opaque return type of View.accessibilityElement(children:)>>.0, ForEach<[Playlist.Collaborator], MusicItemID, Collaboration.Management.View.CollaboratorRowView>)>?, EmptyView> and conformance <> Section<A, B, C>()
{
  result = lazy protocol witness table cache variable for type Section<<<opaque return type of View.fullScreenCover<A>(isPresented:onDismiss:content:)>>.0, TupleView<(<<opaque return type of View.accessibilityElement(children:)>>.0, ForEach<[Playlist.Collaborator], MusicItemID, Collaboration.Management.View.CollaboratorRowView>)>?, EmptyView> and conformance <> Section<A, B, C>;
  if (!lazy protocol witness table cache variable for type Section<<<opaque return type of View.fullScreenCover<A>(isPresented:onDismiss:content:)>>.0, TupleView<(<<opaque return type of View.accessibilityElement(children:)>>.0, ForEach<[Playlist.Collaborator], MusicItemID, Collaboration.Management.View.CollaboratorRowView>)>?, EmptyView> and conformance <> Section<A, B, C>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2( &_s7SwiftUI7SectionVyAA4ViewPAAE15fullScreenCover11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaDRd__lFQOyAA15ModifiedContentVyAA6VStackVyAA05TupleD0VyAOyAOyAOyAOy010_MusicKit_aB012ArtworkImageV01_rs9Internal_aB0E18artworkPlaceholderyQrx0rS00T0VSg_So6CGSizeVAA5ColorVtcAaDRzlFQOy_AA012_ConditionalO0VyAOyAOyAV0r4CoreB0E0X0OADVAA26_PreferenceWritingModifierVyA7_29RadiosityEnabledPreferenceKeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA19_GGQo_A18_GA7_20CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGA7_06BorderD8ModifierA27_LLVGAA13_ShadowEffectVG_AA4TextVASyAOyAOyAA6HStackVyASyAeAE5sheetAghIQrAL_AMqd__yctAaDRd__lFQOyAOy0R4Core13CollaborationOA7_E10ManagementOADV5Share33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonVAA32_EnvironmentKeyTransformModifierVySbGG_A45_08ActivityD10ControllerA48_LLVSgQo__AOyA55_AA20_TransactionModifierVGSgtGGAA16_FixedSizeLayoutVGAA14_PaddingLayoutVG_AOyAOyAOyAOyAOyAOyAOyAA5GroupVyA6_yA39_yASyAA08ProgressD0VyAA05EmptyD0VA77_G_A37_tGGAOyAOyA37_AA30_EnvironmentKeyWritingModifierVyA4_SgGGA82_yAA13OpenURLActionVGGGSgGAA16_FlexFrameLayoutVGA82_ySiSgGGA67_GAA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGA82_yAA4FontVSgGGA70_GA70_GAA6SpacerVtGSgA39_yA114_GtGGAA21_TraitWritingModifierVyAA21ListRowInsetsTraitKeyVGG_AOyAOyA45_06QRCodeD0A48_LLVAA30_SafeAreaRegionsIgnoringLayoutVGAA19_BackgroundModifierVyA7_15ClearBackgroundA48_LLVGGSgQo_ASyAeAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAOyAOyAOyA39_yASyAOyAOyAOyAOyAA0U0VA109_GA18_GA82_yAA19SymbolRenderingModeVSgGGA84_GSg_AQyASyA37__A37_SgtGGASyA114__AeAE5alertAgIQrAL_AA5AlertVyXEtFQOyAeAE15dynamicTypeSizeyQrqd__SXRd__AA15DynamicTypeSizeO5BoundRtd__lFQOyAOyAOyAOyAOyAOyAeAE10fontWeightyQrA107_6WeightVSgFQOyAOyAAA50_VyA37_GA109_G_Qo_A84_GA18_GA70_GAA24_BackgroundStyleModifierVyA4_GGAA11_ClipEffectVyAA7CapsuleVGG_s19PartialRangeThroughVyA162_GQo__Qo_tGSgtGGA70_GA124_GAA25_AlignmentWritingModifierVG_Qo__AA7ForEachVySayAY8PlaylistV0rsV0E12CollaboratorVGAY0R6ItemIDVA46_015CollaboratorRowD0A48_LLVGtGSgA77_GMd,  &_s7SwiftUI7SectionVyAA4ViewPAAE15fullScreenCover11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaDRd__lFQOyAA15ModifiedContentVyAA6VStackVyAA05TupleD0VyAOyAOyAOyAOy010_MusicKit_aB012ArtworkImageV01_rs9Internal_aB0E18artworkPlaceholderyQrx0rS00T0VSg_So6CGSizeVAA5ColorVtcAaDRzlFQOy_AA012_ConditionalO0VyAOyAOyAV0r4CoreB0E0X0OADVAA26_PreferenceWritingModifierVyA7_29RadiosityEnabledPreferenceKeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA19_GGQo_A18_GA7_20CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGA7_06BorderD8ModifierA27_LLVGAA13_ShadowEffectVG_AA4TextVASyAOyAOyAA6HStackVyASyAeAE5sheetAghIQrAL_AMqd__yctAaDRd__lFQOyAOy0R4Core13CollaborationOA7_E10ManagementOADV5Share33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonVAA32_EnvironmentKeyTransformModifierVySbGG_A45_08ActivityD10ControllerA48_LLVSgQo__AOyA55_AA20_TransactionModifierVGSgtGGAA16_FixedSizeLayoutVGAA14_PaddingLayoutVG_AOyAOyAOyAOyAOyAOyAOyAA5GroupVyA6_yA39_yASyAA08ProgressD0VyAA05EmptyD0VA77_G_A37_tGGAOyAOyA37_AA30_EnvironmentKeyWritingModifierVyA4_SgGGA82_yAA13OpenURLActionVGGGSgGAA16_FlexFrameLayoutVGA82_ySiSgGGA67_GAA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGA82_yAA4FontVSgGGA70_GA70_GAA6SpacerVtGSgA39_yA114_GtGGAA21_TraitWritingModifierVyAA21ListRowInsetsTraitKeyVGG_AOyAOyA45_06QRCodeD0A48_LLVAA30_SafeAreaRegionsIgnoringLayoutVGAA19_BackgroundModifierVyA7_15ClearBackgroundA48_LLVGGSgQo_ASyAeAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAOyAOyAOyA39_yASyAOyAOyAOyAOyAA0U0VA109_GA18_GA82_yAA19SymbolRenderingModeVSgGGA84_GSg_AQyASyA37__A37_SgtGGASyA114__AeAE5alertAgIQrAL_AA5AlertVyXEtFQOyAeAE15dynamicTypeSizeyQrqd__SXRd__AA15DynamicTypeSizeO5BoundRtd__lFQOyAOyAOyAOyAOyAOyAeAE10fontWeightyQrA107_6WeightVSgFQOyAOyAAA50_VyA37_GA109_G_Qo_A84_GA18_GA70_GAA24_BackgroundStyleModifierVyA4_GGAA11_ClipEffectVyAA7CapsuleVGG_s19PartialRangeThroughVyA162_GQo__Qo_tGSgtGGA70_GA124_GAA25_AlignmentWritingModifierVG_Qo__AA7ForEachVySayAY8PlaylistV0rsV0E12CollaboratorVGAY0R6ItemIDVA46_015CollaboratorRowD0A48_LLVGtGSgA77_GMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyACyACyACy010_MusicKit_aB012ArtworkImageV01_hi9Internal_aB0E18artworkPlaceholderyQrx0hI00J0VSg_So6CGSizeVAA5ColorVtcAA0G0RzlFQOy_AA012_ConditionalD0VyACyACyAJ0h4CoreB0E0N0OAUVAA26_PreferenceWritingModifierVyAX016RadiosityEnabledS3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA8_GGQo_A7_GAX012CornerRadiusU033_F5ED3014321945F1E2BE58A044A15282LLVGAX06BordergU0A16_LLVGAA13_ShadowEffectVG_AA4TextVAGyACyACyAA6HStackVyAGyAaUPAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaURd__lFQOyACy0hR013CollaborationOAXE10ManagementOAUV5Share33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonVAA012_Environmentx9TransformU0VySbGG_A42_08ActivityG10ControllerA45_LLVSgQo__ACyA52_AA012_TransactionU0VGSgtGGAA010_FixedSizeZ0VGAA08_PaddingZ0VG_ACyACyACyACyACyACyACyAA5GroupVyAWyA28_yAGyAA08ProgressG0VyAA05EmptyG0VA74_G_A26_tGGACyACyA26_AA012_EnvironmentxtU0VyATSgGGA79_yAA13OpenURLActionVGGGSgGAA05_FlexyZ0VGA79_ySiSgGGA64_GAA016_ForegroundStyleU0VyAA22HierarchicalShapeStyleVGGA79_yAA4FontVSgGGA67_GA67_GAA6SpacerVtGSgA28_yA111_GtGGAA06_TraittU0VyAA018ListRowInsetsTraitX0VGGMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyACyACyACy010_MusicKit_aB012ArtworkImageV01_hi9Internal_aB0E18artworkPlaceholderyQrx0hI00J0VSg_So6CGSizeVAA5ColorVtcAA0G0RzlFQOy_AA012_ConditionalD0VyACyACyAJ0h4CoreB0E0N0OAUVAA26_PreferenceWritingModifierVyAX016RadiosityEnabledS3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA8_GGQo_A7_GAX012CornerRadiusU033_F5ED3014321945F1E2BE58A044A15282LLVGAX06BordergU0A16_LLVGAA13_ShadowEffectVG_AA4TextVAGyACyACyAA6HStackVyAGyAaUPAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaURd__lFQOyACy0hR013CollaborationOAXE10ManagementOAUV5Share33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonVAA012_Environmentx9TransformU0VySbGG_A42_08ActivityG10ControllerA45_LLVSgQo__ACyA52_AA012_TransactionU0VGSgtGGAA010_FixedSizeZ0VGAA08_PaddingZ0VG_ACyACyACyACyACyACyACyAA5GroupVyAWyA28_yAGyAA08ProgressG0VyAA05EmptyG0VA74_G_A26_tGGACyACyA26_AA012_EnvironmentxtU0VyATSgGGA79_yAA13OpenURLActionVGGGSgGAA05_FlexyZ0VGA79_ySiSgGGA64_GAA016_ForegroundStyleU0VyAA22HierarchicalShapeStyleVGGA79_yAA4FontVSgGGA67_GA67_GAA6SpacerVtGSgA28_yA111_GtGGAA06_TraittU0VyAA018ListRowInsetsTraitX0VGGMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACy9MusicCore13CollaborationO0efB0E10ManagementO10QRCodeView33_BED032AFC26D7293E5DA491DDAECC514LLVAA30_SafeAreaRegionsIgnoringLayoutVGAA19_BackgroundModifierVyAG05ClearV0AKLLVGGSgMd, &_s7SwiftUI15ModifiedContentVyACy9MusicCore13CollaborationO0efB0E10ManagementO10QRCodeView33_BED032AFC26D7293E5DA491DDAECC514LLVAA30_SafeAreaRegionsIgnoringLayoutVGAA19_BackgroundModifierVyAG05ClearV0AKLLVGGSgMR);
    lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of ArtworkImage.artworkPlaceholder<A>(_:)>>.0, _FrameLayout>, CornerRadiusModifier>, BorderViewModifier>, _ShadowEffect>, Text, TupleView<(ModifiedContent<ModifiedContent<HStack<TupleView<(<<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0, ModifiedContent<ModifiedContent<Collaboration.Management.View.Share.Button, _EnvironmentKeyTransformModifier<Bool>>, _TransactionModifier>?)>>, _FixedSizeLayout>, _PaddingLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Group<_ConditionalContent<HStack<TupleView<(ProgressView<EmptyView, EmptyView>, Text)>>, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<OpenURLAction>>>?>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Int?>>, _FixedSizeLayout>, _Foreg();
    lazy protocol witness table accessor for type ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>>? and conformance <A> A?(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Collaboration.Management.QRCodeView, _SafeAreaRegionsIgnoringLayout>, _BackgroundModifier<ClearBackground>>? and conformance <A> A?, &_s7SwiftUI15ModifiedContentVyACy9MusicCore13CollaborationO0efB0E10ManagementO10QRCodeView33_BED032AFC26D7293E5DA491DDAECC514LLVAA30_SafeAreaRegionsIgnoringLayoutVGAA19_BackgroundModifierVyAG05ClearV0AKLLVGGSgMd, &_s7SwiftUI15ModifiedContentVyACy9MusicCore13CollaborationO0efB0E10ManagementO10QRCodeView33_BED032AFC26D7293E5DA491DDAECC514LLVAA30_SafeAreaRegionsIgnoringLayoutVGAA19_BackgroundModifierVyAG05ClearV0AKLLVGGSgMR, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Collaboration.Management.QRCodeView, _SafeAreaRegionsIgnoringLayout>, _BackgroundModifier<ClearBackground>> and conformance <> ModifiedContent<A, B>);
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type TupleView<(<<opaque return type of View.accessibilityElement(children:)>>.0, ForEach<[Playlist.Collaborator], MusicItemID, Collaboration.Management.View.CollaboratorRowView>)>? and conformance <A> A?();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Section<<<opaque return type of View.fullScreenCover<A>(isPresented:onDismiss:content:)>>.0, TupleView<(<<opaque return type of View.accessibilityElement(children:)>>.0, ForEach<[Playlist.Collaborator], MusicItemID, Collaboration.Management.View.CollaboratorRowView>)>?, EmptyView> and conformance <> Section<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ForEach<[Playlist.Collaborator], MusicItemID, Collaboration.Management.View.CollaboratorRowView> and conformance <> ForEach<A, B, C>()
{
  result = lazy protocol witness table cache variable for type ForEach<[Playlist.Collaborator], MusicItemID, Collaboration.Management.View.CollaboratorRowView> and conformance <> ForEach<A, B, C>;
  if (!lazy protocol witness table cache variable for type ForEach<[Playlist.Collaborator], MusicItemID, Collaboration.Management.View.CollaboratorRowView> and conformance <> ForEach<A, B, C>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI7ForEachVySay8MusicKit8PlaylistV0eF8InternalE12CollaboratorVGAD0E6ItemIDV0E4Core13CollaborationO0elB0E10ManagementO4ViewV0i3RowO033_BED032AFC26D7293E5DA491DDAECC514LLVGMd, &_s7SwiftUI7ForEachVySay8MusicKit8PlaylistV0eF8InternalE12CollaboratorVGAD0E6ItemIDV0E4Core13CollaborationO0elB0E10ManagementO4ViewV0i3RowO033_BED032AFC26D7293E5DA491DDAECC514LLVGMR);
    lazy protocol witness table accessor for type Collaboration.Management.Model and conformance Collaboration.Management.Model(&lazy protocol witness table cache variable for type Collaboration.Management.View.CollaboratorRowView and conformance Collaboration.Management.View.CollaboratorRowView, type metadata accessor for Collaboration.Management.View.CollaboratorRowView, &protocol conformance descriptor for Collaboration.Management.View.CollaboratorRowView);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ForEach<[Playlist.Collaborator], MusicItemID, Collaboration.Management.View.CollaboratorRowView> and conformance <> ForEach<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA16_FlexFrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMR);
    lazy protocol witness table accessor for type ModifiedContent<Text, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMR, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Text, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Text, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Text, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA16_FlexFrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA4TextVAA16_FlexFrameLayoutVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Text, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t partial apply for closure #1 in Collaboration.Management.Model.end()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in Collaboration.Management.Model.end()(a1, v4, v5, v6);
}

void partial apply for closure #1 in closure #1 in closure #8 in closure #1 in closure #1 in Collaboration.Management.View.body.getter(BOOL *a1@<X8>)
{
  type metadata accessor for Collaboration.Management.View(0);

  closure #1 in closure #1 in closure #8 in closure #1 in closure #1 in Collaboration.Management.View.body.getter(a1);
}

uint64_t objectdestroy_277Tm()
{
  v1 = type metadata accessor for Collaboration.Management.View(0);
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  swift_unknownObjectRelease();
  v3 = v0 + v2;

  v4 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = type metadata accessor for DismissAction();
    (*(*(v5 - 8) + 8))(v3 + v4, v5);
  }

  else
  {
  }

  v6 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA15DynamicTypeSizeO_GMd_0, &_s7SwiftUI11EnvironmentV7ContentOyAA15DynamicTypeSizeO_GMR_0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for DynamicTypeSize();
    (*(*(v7 - 8) + 8))(v3 + v6, v7);
  }

  else
  {
  }

  v8 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA13OpenURLActionV_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA13OpenURLActionV_GMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = type metadata accessor for OpenURLAction();
    (*(*(v9 - 8) + 8))(v3 + v8, v9);
  }

  else
  {
  }

  return swift_deallocObject();
}

double partial apply for closure #2 in closure #1 in closure #8 in closure #1 in closure #1 in Collaboration.Management.View.body.getter(char *a1)
{
  v3 = *(type metadata accessor for Collaboration.Management.View(0) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return closure #2 in closure #1 in closure #8 in closure #1 in closure #1 in Collaboration.Management.View.body.getter(a1, v4, v5, v6);
}

uint64_t partial apply for closure #1 in Collaboration.Management.Model.updateShareOption(isOpen:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in static MusicEngagementExtension.performRequest(with:completion:);

  return closure #1 in Collaboration.Management.Model.updateShareOption(isOpen:)(a1, v4, v5, v6, v7);
}

uint64_t partial apply for closure #2 in closure #2 in closure #1 in closure #1 in Collaboration.Management.View.body.getter@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for Collaboration.Management.View(0);

  return closure #2 in closure #2 in closure #1 in closure #1 in Collaboration.Management.View.body.getter(a1);
}

uint64_t partial apply for closure #1 in static ArtworkImage.with(_:placeholder:size:reusePolicy:)(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for ArtworkImage.Placeholder(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);

  return closure #1 in static ArtworkImage.with(_:placeholder:size:reusePolicy:)(a1, a2, v2 + v6, v7);
}

uint64_t partial apply for closure #2 in closure #2 in closure #1 in closure #2 in closure #1 in closure #1 in Collaboration.Management.View.body.getter(uint64_t a1)
{
  v3 = *(type metadata accessor for Collaboration.Management.View(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return closure #2 in closure #2 in closure #1 in closure #2 in closure #1 in closure #1 in Collaboration.Management.View.body.getter(a1, v4);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<OpenURLAction>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<OpenURLAction>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<OpenURLAction>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA13OpenURLActionVGGMd, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA13OpenURLActionVGGMR);
    lazy protocol witness table accessor for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<OpenURLAction> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA13OpenURLActionVGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA13OpenURLActionVGMR, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<OpenURLAction>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd, &_s7SwiftUI15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMR);
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMR, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t partial apply for closure #1 in Collaboration.Management.Model.resetInvitationURL()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in Collaboration.Management.Model.resetInvitationURL()(a1, v4, v5, v6);
}

uint64_t partial apply for closure #2 in closure #1 in closure #1 in closure #2 in closure #1 in closure #1 in Collaboration.Management.View.body.getter@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for Collaboration.Management.View(0);

  return closure #2 in closure #1 in closure #1 in closure #2 in closure #1 in closure #1 in Collaboration.Management.View.body.getter(a1);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Collaboration.Management.View.Share.Button, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Collaboration.Management.View.Share.Button, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Collaboration.Management.View.Share.Button, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy9MusicCore13CollaborationO0efB0E10ManagementO4ViewV5Share33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonVAA32_EnvironmentKeyTransformModifierVySbGGMd, &_s7SwiftUI15ModifiedContentVy9MusicCore13CollaborationO0efB0E10ManagementO4ViewV5Share33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonVAA32_EnvironmentKeyTransformModifierVySbGGMR);
    lazy protocol witness table accessor for type Collaboration.Management.Model and conformance Collaboration.Management.Model(&lazy protocol witness table cache variable for type Collaboration.Management.View.Share.Button and conformance Collaboration.Management.View.Share.Button, type metadata accessor for Collaboration.Management.View.Share.Button, &protocol conformance descriptor for Collaboration.Management.View.Share.Button);
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyTransformModifier<Bool> and conformance _EnvironmentKeyTransformModifier<A>, &_s7SwiftUI32_EnvironmentKeyTransformModifierVySbGMd, &_s7SwiftUI32_EnvironmentKeyTransformModifierVySbGMR, &protocol conformance descriptor for _EnvironmentKeyTransformModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Collaboration.Management.View.Share.Button, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _EnvironmentKeyWritingModifier<Color?>>?, VStack<TupleView<(Text, Text?)>>, TupleView<(Spacer, <<opaque return type of View.alert(isPresented:content:)>>.0)>?)>>, _PaddingLayout>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _AlignmentWritingModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _EnvironmentKeyWritingModifier<Color?>>?, VStack<TupleView<(Text, Text?)>>, TupleView<(Spacer, <<opaque return type of View.alert(isPresented:content:)>>.0)>?)>>, _PaddingLayout>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _AlignmentWritingModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _EnvironmentKeyWritingModifier<Color?>>?, VStack<TupleView<(Text, Text?)>>, TupleView<(Spacer, <<opaque return type of View.alert(isPresented:content:)>>.0)>?)>>, _PaddingLayout>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _AlignmentWritingModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6HStackVyAA9TupleViewVyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA12_FrameLayoutVGAKyAA19SymbolRenderingModeVSgGGAKyAA5ColorVSgGGSg_AA6VStackVyAGyAA4TextV_A6_SgtGGAGyAA6SpacerV_AA0G0PAAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyA13_AAE15dynamicTypeSizeyQrqd__SXRd__AA15DynamicTypeSizeO5BoundRtd__lFQOyACyACyACyACyACyA13_AAE10fontWeightyQrAM6WeightVSgFQOyACyAA6ButtonVyA6_GAOG_Qo_A0_GARGAA08_PaddingO0VGAA016_BackgroundStyleL0VyAZGGAA11_ClipEffectVyAA7CapsuleVGG_s19PartialRangeThroughVyA24_GQo__Qo_tGSgtGGA39_GAA06_TraitkL0VyAA018ListRowInsetsTraitJ0VGGAA010_AlignmentkL0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6HStackVyAA9TupleViewVyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA12_FrameLayoutVGAKyAA19SymbolRenderingModeVSgGGAKyAA5ColorVSgGGSg_AA6VStackVyAGyAA4TextV_A6_SgtGGAGyAA6SpacerV_AA0G0PAAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyA13_AAE15dynamicTypeSizeyQrqd__SXRd__AA15DynamicTypeSizeO5BoundRtd__lFQOyACyACyACyACyACyA13_AAE10fontWeightyQrAM6WeightVSgFQOyACyAA6ButtonVyA6_GAOG_Qo_A0_GARGAA08_PaddingO0VGAA016_BackgroundStyleL0VyAZGGAA11_ClipEffectVyAA7CapsuleVGG_s19PartialRangeThroughVyA24_GQo__Qo_tGSgtGGA39_GAA06_TraitkL0VyAA018ListRowInsetsTraitJ0VGGAA010_AlignmentkL0VGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _EnvironmentKeyWritingModifier<Color?>>?, VStack<TupleView<(Text, Text?)>>, TupleView<(Spacer, <<opaque return type of View.alert(isPresented:content:)>>.0)>?)>>, _PaddingLayout>, _TraitWritingModifier<ListRowInsetsTraitKey>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _EnvironmentKeyWritingModifier<Color?>>?, VStack<TupleView<(Text, Text?)>>, TupleView<(Spacer, <<opaque return type of View.alert(isPresented:content:)>>.0)>?)>>, _PaddingLayout>, _TraitWritingModifier<ListRowInsetsTraitKey>>, _AlignmentWritingModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _EnvironmentKeyWritingModifier<Color?>>?, VStack<TupleView<(Text, Text?)>>, TupleView<(Spacer, <<opaque return type of View.alert(isPresented:content:)>>.0)>?)>>, _PaddingLayout>, _TraitWritingModifier<ListRowInsetsTraitKey>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _EnvironmentKeyWritingModifier<Color?>>?, VStack<TupleView<(Text, Text?)>>, TupleView<(Spacer, <<opaque return type of View.alert(isPresented:content:)>>.0)>?)>>, _PaddingLayout>, _TraitWritingModifier<ListRowInsetsTraitKey>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _EnvironmentKeyWritingModifier<Color?>>?, VStack<TupleView<(Text, Text?)>>, TupleView<(Spacer, <<opaque return type of View.alert(isPresented:content:)>>.0)>?)>>, _PaddingLayout>, _TraitWritingModifier<ListRowInsetsTraitKey>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA12_FrameLayoutVGAKyAA19SymbolRenderingModeVSgGGAKyAA5ColorVSgGGSg_AA6VStackVyAGyAA4TextV_A6_SgtGGAGyAA6SpacerV_AA0G0PAAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyA13_AAE15dynamicTypeSizeyQrqd__SXRd__AA15DynamicTypeSizeO5BoundRtd__lFQOyACyACyACyACyACyA13_AAE10fontWeightyQrAM6WeightVSgFQOyACyAA6ButtonVyA6_GAOG_Qo_A0_GARGAA08_PaddingO0VGAA016_BackgroundStyleL0VyAZGGAA11_ClipEffectVyAA7CapsuleVGG_s19PartialRangeThroughVyA24_GQo__Qo_tGSgtGGA39_GAA06_TraitkL0VyAA018ListRowInsetsTraitJ0VGGMd, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA12_FrameLayoutVGAKyAA19SymbolRenderingModeVSgGGAKyAA5ColorVSgGGSg_AA6VStackVyAGyAA4TextV_A6_SgtGGAGyAA6SpacerV_AA0G0PAAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyA13_AAE15dynamicTypeSizeyQrqd__SXRd__AA15DynamicTypeSizeO5BoundRtd__lFQOyACyACyACyACyACyA13_AAE10fontWeightyQrAM6WeightVSgFQOyACyAA6ButtonVyA6_GAOG_Qo_A0_GARGAA08_PaddingO0VGAA016_BackgroundStyleL0VyAZGGAA11_ClipEffectVyAA7CapsuleVGG_s19PartialRangeThroughVyA24_GQo__Qo_tGSgtGGA39_GAA06_TraitkL0VyAA018ListRowInsetsTraitJ0VGGMR);
    lazy protocol witness table accessor for type ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _EnvironmentKeyWritingModifier<Color?>>?, VStack<TupleView<(Text, Text?)>>, TupleView<(Spacer, <<opaque return type of View.alert(isPresented:content:)>>.0)>?)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type _TraitWritingModifier<ListRowInsetsTraitKey> and conformance _TraitWritingModifier<A>, &_s7SwiftUI21_TraitWritingModifierVyAA013ListRowInsetsC3KeyVGMd, &_s7SwiftUI21_TraitWritingModifierVyAA013ListRowInsetsC3KeyVGMR, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _EnvironmentKeyWritingModifier<Color?>>?, VStack<TupleView<(Text, Text?)>>, TupleView<(Spacer, <<opaque return type of View.alert(isPresented:content:)>>.0)>?)>>, _PaddingLayout>, _TraitWritingModifier<ListRowInsetsTraitKey>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _EnvironmentKeyWritingModifier<Color?>>?, VStack<TupleView<(Text, Text?)>>, TupleView<(Spacer, <<opaque return type of View.alert(isPresented:content:)>>.0)>?)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _EnvironmentKeyWritingModifier<Color?>>?, VStack<TupleView<(Text, Text?)>>, TupleView<(Spacer, <<opaque return type of View.alert(isPresented:content:)>>.0)>?)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _EnvironmentKeyWritingModifier<Color?>>?, VStack<TupleView<(Text, Text?)>>, TupleView<(Spacer, <<opaque return type of View.alert(isPresented:content:)>>.0)>?)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA12_FrameLayoutVGAKyAA19SymbolRenderingModeVSgGGAKyAA5ColorVSgGGSg_AA6VStackVyAGyAA4TextV_A6_SgtGGAGyAA6SpacerV_AA0G0PAAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyA13_AAE15dynamicTypeSizeyQrqd__SXRd__AA15DynamicTypeSizeO5BoundRtd__lFQOyACyACyACyACyACyA13_AAE10fontWeightyQrAM6WeightVSgFQOyACyAA6ButtonVyA6_GAOG_Qo_A0_GARGAA08_PaddingO0VGAA016_BackgroundStyleL0VyAZGGAA11_ClipEffectVyAA7CapsuleVGG_s19PartialRangeThroughVyA24_GQo__Qo_tGSgtGGA39_GMd, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA12_FrameLayoutVGAKyAA19SymbolRenderingModeVSgGGAKyAA5ColorVSgGGSg_AA6VStackVyAGyAA4TextV_A6_SgtGGAGyAA6SpacerV_AA0G0PAAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyA13_AAE15dynamicTypeSizeyQrqd__SXRd__AA15DynamicTypeSizeO5BoundRtd__lFQOyACyACyACyACyACyA13_AAE10fontWeightyQrAM6WeightVSgFQOyACyAA6ButtonVyA6_GAOG_Qo_A0_GARGAA08_PaddingO0VGAA016_BackgroundStyleL0VyAZGGAA11_ClipEffectVyAA7CapsuleVGG_s19PartialRangeThroughVyA24_GQo__Qo_tGSgtGGA39_GMR);
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _EnvironmentKeyWritingModifier<Color?>>?, VStack<TupleView<(Text, Text?)>>, TupleView<(Spacer, <<opaque return type of View.alert(isPresented:content:)>>.0)>?)>> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA12_FrameLayoutVGAKyAA19SymbolRenderingModeVSgGGAKyAA5ColorVSgGGSg_AA6VStackVyAEyAA4TextV_A6_SgtGGAEyAA6SpacerV_AA0E0PAAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyA13_AAE15dynamicTypeSizeyQrqd__SXRd__AA15DynamicTypeSizeO5BoundRtd__lFQOyAGyAGyAGyAGyAGyA13_AAE10fontWeightyQrAM6WeightVSgFQOyAGyAA6ButtonVyA6_GAOG_Qo_A0_GARGAA08_PaddingO0VGAA016_BackgroundStyleL0VyAZGGAA11_ClipEffectVyAA7CapsuleVGG_s19PartialRangeThroughVyA24_GQo__Qo_tGSgtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA12_FrameLayoutVGAKyAA19SymbolRenderingModeVSgGGAKyAA5ColorVSgGGSg_AA6VStackVyAEyAA4TextV_A6_SgtGGAEyAA6SpacerV_AA0E0PAAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyA13_AAE15dynamicTypeSizeyQrqd__SXRd__AA15DynamicTypeSizeO5BoundRtd__lFQOyAGyAGyAGyAGyAGyA13_AAE10fontWeightyQrAM6WeightVSgFQOyAGyAA6ButtonVyA6_GAOG_Qo_A0_GARGAA08_PaddingO0VGAA016_BackgroundStyleL0VyAZGGAA11_ClipEffectVyAA7CapsuleVGG_s19PartialRangeThroughVyA24_GQo__Qo_tGSgtGGMR, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _EnvironmentKeyWritingModifier<Color?>>?, VStack<TupleView<(Text, Text?)>>, TupleView<(Spacer, <<opaque return type of View.alert(isPresented:content:)>>.0)>?)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #3 in Collaboration.Management.View.CollaboratorRowView.body.getter(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a2(v4);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMd, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMR);
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&_s7SwiftUI6ButtonVyAA4TextVGACyxGAA4ViewAAWL_0, &_s7SwiftUI6ButtonVyAA4TextVGMd_0, &_s7SwiftUI6ButtonVyAA4TextVGMR_0, &protocol conformance descriptor for Button<A>);
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMR, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Capsule>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Capsule>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Capsule>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAHSgGG_Qo_ARyAA5ColorVSgGGAA12_FrameLayoutVGAA08_PaddingQ0VGAA016_BackgroundStyleN0VyAXGGAA11_ClipEffectVyAA7CapsuleVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAHSgGG_Qo_ARyAA5ColorVSgGGAA12_FrameLayoutVGAA08_PaddingQ0VGAA016_BackgroundStyleN0VyAXGGAA11_ClipEffectVyAA7CapsuleVGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type _ClipEffect<Capsule> and conformance _ClipEffect<A>, &_s7SwiftUI11_ClipEffectVyAA7CapsuleVGMd, &_s7SwiftUI11_ClipEffectVyAA7CapsuleVGMR, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Capsule>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAHSgGG_Qo_ARyAA5ColorVSgGGAA12_FrameLayoutVGAA08_PaddingQ0VGAA016_BackgroundStyleN0VyAXGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAHSgGG_Qo_ARyAA5ColorVSgGGAA12_FrameLayoutVGAA08_PaddingQ0VGAA016_BackgroundStyleN0VyAXGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type _BackgroundStyleModifier<Color> and conformance _BackgroundStyleModifier<A>, &_s7SwiftUI24_BackgroundStyleModifierVyAA5ColorVGMd, &_s7SwiftUI24_BackgroundStyleModifierVyAA5ColorVGMR, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAHSgGG_Qo_ARyAA5ColorVSgGGAA12_FrameLayoutVGAA08_PaddingQ0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAHSgGG_Qo_ARyAA5ColorVSgGGAA12_FrameLayoutVGAA08_PaddingQ0VGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAHSgGG_Qo_ARyAA5ColorVSgGGAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAHSgGG_Qo_ARyAA5ColorVSgGGAA12_FrameLayoutVGMR);
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAHSgGG_Qo_ARyAA5ColorVSgGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAHSgGG_Qo_ARyAA5ColorVSgGGMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMd, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMR);
    lazy protocol witness table accessor for type ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMR, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t objectdestroy_269Tm(uint64_t a1)
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_10034F0D8()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_10034F118()
{
  v1 = type metadata accessor for Playlist();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t partial apply for closure #2 in Collaboration.Management.Model.init(manager:playlist:)(uint64_t a1)
{
  v4 = *(type metadata accessor for Playlist() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #2 in Collaboration.Management.Model.init(manager:playlist:)(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_10034F310@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_0Tm(a1, a1[3]);
  result = dispatch thunk of LibraryPlaylistFilter.id.getter();
  *a2 = result;
  a2[1] = v4;
  return result;
}

unint64_t _sSo17OS_dispatch_queueCAB7Combine9Scheduler8DispatchWl_0()
{
  result = _sSo17OS_dispatch_queueCAB7Combine9Scheduler8DispatchWL_0;
  if (!_sSo17OS_dispatch_queueCAB7Combine9Scheduler8DispatchWL_0)
  {
    type metadata accessor for UIAction(255, &_sSo17OS_dispatch_queueCML_0, OS_dispatch_queue_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &_sSo17OS_dispatch_queueCAB7Combine9Scheduler8DispatchWL_0);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAeAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyAeAE12swipeActions4edge15allowsFullSwipeALQrAA14HorizontalEdgeO_Sbqd__yXEtAaDRd__lFQOyACyAA6HStackVyAA05TupleE0VyACyACyACy010_MusicKit_aB012ArtworkImageV018_MusicKitInternal_aB0E18artworkPlaceholderyQrx8MusicKit7ArtworkVSg_So6CGSizeVAA5ColorVtcAaDRzlFQOy_AA012_ConditionalD0VyACyACyA1_09MusicCoreB0E11PlaceholderOADVAA26_PreferenceWritingModifierVyA14_29RadiosityEnabledPreferenceKeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA26_GGQo_A14_20CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGA25_GAA18_AspectRatioLayoutVGSg_AA6VStackVyAZyAA4TextVSg_A13_yA44_A44_GSgtGGAA6SpacerVA13_yACyAA08ProgressE0VyAA05EmptyE0VA55_GA25_GAZy9MusicCore13CollaborationOA14_E10ManagementOADV10Moderation33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonV_A68_tGGSgtGGAA01_D13ShapeModifierVyAA9RectangleVGG_ACyAAA67_VyA44_GAA30_EnvironmentKeyWritingModifierVyA11_SgGGSgQo__Qo__Qo_AA0I18AttachmentModifierVGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAeAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyAeAE12swipeActions4edge15allowsFullSwipeALQrAA14HorizontalEdgeO_Sbqd__yXEtAaDRd__lFQOyACyAA6HStackVyAA05TupleE0VyACyACyACy010_MusicKit_aB012ArtworkImageV018_MusicKitInternal_aB0E18artworkPlaceholderyQrx8MusicKit7ArtworkVSg_So6CGSizeVAA5ColorVtcAaDRzlFQOy_AA012_ConditionalD0VyACyACyA1_09MusicCoreB0E11PlaceholderOADVAA26_PreferenceWritingModifierVyA14_29RadiosityEnabledPreferenceKeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA26_GGQo_A14_20CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGA25_GAA18_AspectRatioLayoutVGSg_AA6VStackVyAZyAA4TextVSg_A13_yA44_A44_GSgtGGAA6SpacerVA13_yACyAA08ProgressE0VyAA05EmptyE0VA55_GA25_GAZy9MusicCore13CollaborationOA14_E10ManagementOADV10Moderation33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonV_A68_tGGSgtGGAA01_D13ShapeModifierVyAA9RectangleVGG_ACyAAA67_VyA44_GAA30_EnvironmentKeyWritingModifierVyA11_SgGGSgQo__Qo__Qo_AA0I18AttachmentModifierVGMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyAcAE12swipeActions4edge15allowsFullSwipeAFQrAA14HorizontalEdgeO_Sbqd__yXEtAaBRd__lFQOyAA15ModifiedContentVyAA6HStackVyAA05TupleC0VyARyARyARy010_MusicKit_aB012ArtworkImageV01_vw9Internal_aB0E18artworkPlaceholderyQrx0vW00X0VSg_So6CGSizeVAA5ColorVtcAaBRzlFQOy_AA012_ConditionalS0VyARyARyAY0v4CoreB0E11PlaceholderOABVAA26_PreferenceWritingModifierVyA10_29RadiosityEnabledPreferenceKeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA22_GGQo_A10_20CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGA21_GAA18_AspectRatioLayoutVGSg_AA6VStackVyAVyAA4TextVSg_A9_yA40_A40_GSgtGGAA6SpacerVA9_yARyAA08ProgressC0VyAA05EmptyC0VA51_GA21_GAVy0V4Core13CollaborationOA10_E10ManagementOABV10Moderation33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonV_A64_tGGSgtGGAA01_S13ShapeModifierVyAA9RectangleVGG_ARyAAA63_VyA40_GAA30_EnvironmentKeyWritingModifierVyA7_SgGGSgQo__Qo_Md, &_s7SwiftUI4ViewPAAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyAcAE12swipeActions4edge15allowsFullSwipeAFQrAA14HorizontalEdgeO_Sbqd__yXEtAaBRd__lFQOyAA15ModifiedContentVyAA6HStackVyAA05TupleC0VyARyARyARy010_MusicKit_aB012ArtworkImageV01_vw9Internal_aB0E18artworkPlaceholderyQrx0vW00X0VSg_So6CGSizeVAA5ColorVtcAaBRzlFQOy_AA012_ConditionalS0VyARyARyAY0v4CoreB0E11PlaceholderOABVAA26_PreferenceWritingModifierVyA10_29RadiosityEnabledPreferenceKeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA22_GGQo_A10_20CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGA21_GAA18_AspectRatioLayoutVGSg_AA6VStackVyAVyAA4TextVSg_A9_yA40_A40_GSgtGGAA6SpacerVA9_yARyAA08ProgressC0VyAA05EmptyC0VA51_GA21_GAVy0V4Core13CollaborationOA10_E10ManagementOABV10Moderation33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonV_A64_tGGSgtGGAA01_S13ShapeModifierVyAA9RectangleVGG_ARyAAA63_VyA40_GAA30_EnvironmentKeyWritingModifierVyA7_SgGGSgQo__Qo_MR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE12swipeActions4edge15allowsFullSwipe7contentQrAA14HorizontalEdgeO_Sbqd__yXEtAaBRd__lFQOyAA15ModifiedContentVyAA6HStackVyAA05TupleC0VyAKyAKyAKy010_MusicKit_aB012ArtworkImageV01_qr9Internal_aB0E18artworkPlaceholderyQrx0qR00S0VSg_So6CGSizeVAA5ColorVtcAaBRzlFQOy_AA012_ConditionalN0VyAKyAKyAR0q4CoreB0E0W0OABVAA26_PreferenceWritingModifierVyA3_29RadiosityEnabledPreferenceKeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA15_GGQo_A3_20CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGA14_GAA18_AspectRatioLayoutVGSg_AA6VStackVyAOyAA4TextVSg_A2_yA33_A33_GSgtGGAA6SpacerVA2_yAKyAA08ProgressC0VyAA05EmptyC0VA44_GA14_GAOy0Q4Core13CollaborationOA3_E10ManagementOABV10Moderation33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonV_A57_tGGSgtGGAA01_N13ShapeModifierVyAA9RectangleVGG_AKyAAA56_VyA33_GAA30_EnvironmentKeyWritingModifierVyA0_SgGGSgQo_Md, &_s7SwiftUI4ViewPAAE12swipeActions4edge15allowsFullSwipe7contentQrAA14HorizontalEdgeO_Sbqd__yXEtAaBRd__lFQOyAA15ModifiedContentVyAA6HStackVyAA05TupleC0VyAKyAKyAKy010_MusicKit_aB012ArtworkImageV01_qr9Internal_aB0E18artworkPlaceholderyQrx0qR00S0VSg_So6CGSizeVAA5ColorVtcAaBRzlFQOy_AA012_ConditionalN0VyAKyAKyAR0q4CoreB0E0W0OABVAA26_PreferenceWritingModifierVyA3_29RadiosityEnabledPreferenceKeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA15_GGQo_A3_20CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGA14_GAA18_AspectRatioLayoutVGSg_AA6VStackVyAOyAA4TextVSg_A2_yA33_A33_GSgtGGAA6SpacerVA2_yAKyAA08ProgressC0VyAA05EmptyC0VA44_GA14_GAOy0Q4Core13CollaborationOA3_E10ManagementOABV10Moderation33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonV_A57_tGGSgtGGAA01_N13ShapeModifierVyAA9RectangleVGG_AKyAAA56_VyA33_GAA30_EnvironmentKeyWritingModifierVyA0_SgGGSgQo_MR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyACyACy010_MusicKit_aB012ArtworkImageV01_hi9Internal_aB0E18artworkPlaceholderyQrx0hI00J0VSg_So6CGSizeVAA5ColorVtcAA0G0RzlFQOy_AA012_ConditionalD0VyACyACyAJ0h4CoreB0E0N0OAUVAA26_PreferenceWritingModifierVyAX016RadiosityEnabledS3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA8_GGQo_AX012CornerRadiusU033_F5ED3014321945F1E2BE58A044A15282LLVGA7_GAA012_AspectRatioZ0VGSg_AA6VStackVyAGyAA4TextVSg_AWyA26_A26_GSgtGGAA6SpacerVAWyACyAA08ProgressG0VyAA05EmptyG0VA37_GA7_GAGy0hR013CollaborationOAXE10ManagementOAUV10Moderation33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonV_A50_tGGSgtGGAA01_d5ShapeU0VyAA9RectangleVGGMd, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyACyACy010_MusicKit_aB012ArtworkImageV01_hi9Internal_aB0E18artworkPlaceholderyQrx0hI00J0VSg_So6CGSizeVAA5ColorVtcAA0G0RzlFQOy_AA012_ConditionalD0VyACyACyAJ0h4CoreB0E0N0OAUVAA26_PreferenceWritingModifierVyAX016RadiosityEnabledS3KeyVGGAA12_FrameLayoutVGAA14GeometryReaderVyA8_GGQo_AX012CornerRadiusU033_F5ED3014321945F1E2BE58A044A15282LLVGA7_GAA012_AspectRatioZ0VGSg_AA6VStackVyAGyAA4TextVSg_AWyA26_A26_GSgtGGAA6SpacerVAWyACyAA08ProgressG0VyAA05EmptyG0VA37_GA7_GAGy0hR013CollaborationOAXE10ManagementOAUV10Moderation33_BED032AFC26D7293E5DA491DDAECC514LLO6ButtonV_A50_tGGSgtGGAA01_d5ShapeU0VyAA9RectangleVGGMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGSgMd, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGSgMR);
    lazy protocol witness table accessor for type ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of ArtworkImage.artworkPlaceholder<A>(_:)>>.0, CornerRadiusModifier>, _FrameLayout>, _AspectRatioLayout>?, VStack<TupleView<(Text?, _ConditionalContent<Text, Text>?)>>, Spacer, _ConditionalContent<ModifiedContent<ProgressView<EmptyView, EmptyView>, _FrameLayout>, TupleView<(Collaboration.Management.View.Moderation.Button, Collaboration.Management.View.Moderation.Button)>>?)>>, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>>? and conformance <A> A?(&lazy protocol witness table cache variable for type ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>>? and conformance <A> A?, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGSgMd, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGSgMR, lazy protocol witness table accessor for type ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type Collaboration.Management.Model and conformance Collaboration.Management.Model(&_s7SwiftUI31AccessibilityAttachmentModifierVAcA04ViewE0AAWL_0, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<VStackLayout>, TupleView<(Spacer, <<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, Text, Spacer)>>, _OffsetEffect>, _FlexFrameLayout>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Color?>>, _InsettableBackgroundShapeModifier<Color, RoundedRectangle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<VStackLayout>, TupleView<(Spacer, <<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, Text, Spacer)>>, _OffsetEffect>, _FlexFrameLayout>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Color?>>, _InsettableBackgroundShapeModifier<Color, RoundedRectangle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<VStackLayout>, TupleView<(Spacer, <<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, Text, Spacer)>>, _OffsetEffect>, _FlexFrameLayout>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Color?>>, _InsettableBackgroundShapeModifier<Color, RoundedRectangle>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6ButtonVyACyACyAA13_VariadicViewO4TreeVy_AA11_LayoutRootVyAA06VStackI0VGAA05TupleG0VyAA6SpacerV_AA0G0PAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamicoP0O5BoundRtd__lFQOyAtAE10fontWeightyQrAA4FontV0T0VSgFQOyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA0_SgGG_Qo__s19PartialRangeThroughVyAWGQo_AA4TextVARtGGAA13_OffsetEffectVGAA010_FlexFrameI0VGGA24_GA7_yAA5ColorVSgGGAA026_InsettableBackgroundShapeZ0VyA29_AA16RoundedRectangleVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6ButtonVyACyACyAA13_VariadicViewO4TreeVy_AA11_LayoutRootVyAA06VStackI0VGAA05TupleG0VyAA6SpacerV_AA0G0PAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamicoP0O5BoundRtd__lFQOyAtAE10fontWeightyQrAA4FontV0T0VSgFQOyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA0_SgGG_Qo__s19PartialRangeThroughVyAWGQo_AA4TextVARtGGAA13_OffsetEffectVGAA010_FlexFrameI0VGGA24_GA7_yAA5ColorVSgGGAA026_InsettableBackgroundShapeZ0VyA29_AA16RoundedRectangleVGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Button<ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<VStackLayout>, TupleView<(Spacer, <<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, Text, Spacer)>>, _OffsetEffect>, _FlexFrameLayout>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type _InsettableBackgroundShapeModifier<Color, RoundedRectangle> and conformance _InsettableBackgroundShapeModifier<A, B>, &_s7SwiftUI34_InsettableBackgroundShapeModifierVyAA5ColorVAA16RoundedRectangleVGMd, &_s7SwiftUI34_InsettableBackgroundShapeModifierVyAA5ColorVAA16RoundedRectangleVGMR, &protocol conformance descriptor for _InsettableBackgroundShapeModifier<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<VStackLayout>, TupleView<(Spacer, <<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, Text, Spacer)>>, _OffsetEffect>, _FlexFrameLayout>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Color?>>, _InsettableBackgroundShapeModifier<Color, RoundedRectangle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Button<ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<VStackLayout>, TupleView<(Spacer, <<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, Text, Spacer)>>, _OffsetEffect>, _FlexFrameLayout>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Button<ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<VStackLayout>, TupleView<(Spacer, <<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, Text, Spacer)>>, _OffsetEffect>, _FlexFrameLayout>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Button<ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<VStackLayout>, TupleView<(Spacer, <<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, Text, Spacer)>>, _OffsetEffect>, _FlexFrameLayout>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyACyACyAA13_VariadicViewO4TreeVy_AA11_LayoutRootVyAA06VStackI0VGAA05TupleG0VyAA6SpacerV_AA0G0PAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamicoP0O5BoundRtd__lFQOyAtAE10fontWeightyQrAA4FontV0T0VSgFQOyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA0_SgGG_Qo__s19PartialRangeThroughVyAWGQo_AA4TextVARtGGAA13_OffsetEffectVGAA010_FlexFrameI0VGGA24_GA7_yAA5ColorVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyACyACyAA13_VariadicViewO4TreeVy_AA11_LayoutRootVyAA06VStackI0VGAA05TupleG0VyAA6SpacerV_AA0G0PAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamicoP0O5BoundRtd__lFQOyAtAE10fontWeightyQrAA4FontV0T0VSgFQOyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA0_SgGG_Qo__s19PartialRangeThroughVyAWGQo_AA4TextVARtGGAA13_OffsetEffectVGAA010_FlexFrameI0VGGA24_GA7_yAA5ColorVSgGGMR);
    lazy protocol witness table accessor for type ModifiedContent<Button<ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<VStackLayout>, TupleView<(Spacer, <<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, Text, Spacer)>>, _OffsetEffect>, _FlexFrameLayout>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMR, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Button<ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<VStackLayout>, TupleView<(Spacer, <<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, Text, Spacer)>>, _OffsetEffect>, _FlexFrameLayout>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Button<ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<VStackLayout>, TupleView<(Spacer, <<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, Text, Spacer)>>, _OffsetEffect>, _FlexFrameLayout>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Button<ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<VStackLayout>, TupleView<(Spacer, <<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, Text, Spacer)>>, _OffsetEffect>, _FlexFrameLayout>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Button<ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<VStackLayout>, TupleView<(Spacer, <<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, Text, Spacer)>>, _OffsetEffect>, _FlexFrameLayout>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyACyACyAA13_VariadicViewO4TreeVy_AA11_LayoutRootVyAA06VStackI0VGAA05TupleG0VyAA6SpacerV_AA0G0PAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamicoP0O5BoundRtd__lFQOyAtAE10fontWeightyQrAA4FontV0T0VSgFQOyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA0_SgGG_Qo__s19PartialRangeThroughVyAWGQo_AA4TextVARtGGAA13_OffsetEffectVGAA010_FlexFrameI0VGGA24_GMd, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyACyACyAA13_VariadicViewO4TreeVy_AA11_LayoutRootVyAA06VStackI0VGAA05TupleG0VyAA6SpacerV_AA0G0PAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamicoP0O5BoundRtd__lFQOyAtAE10fontWeightyQrAA4FontV0T0VSgFQOyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA0_SgGG_Qo__s19PartialRangeThroughVyAWGQo_AA4TextVARtGGAA13_OffsetEffectVGAA010_FlexFrameI0VGGA24_GMR);
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type Button<ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<VStackLayout>, TupleView<(Spacer, <<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, Text, Spacer)>>, _OffsetEffect>, _FlexFrameLayout>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAA13_VariadicViewO4TreeVy_AA11_LayoutRootVyAA06VStackI0VGAA05TupleG0VyAA6SpacerV_AA0G0PAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamicoP0O5BoundRtd__lFQOyAtAE10fontWeightyQrAA4FontV0T0VSgFQOyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA0_SgGG_Qo__s19PartialRangeThroughVyAWGQo_AA4TextVARtGGAA13_OffsetEffectVGAA010_FlexFrameI0VGGMd, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAA13_VariadicViewO4TreeVy_AA11_LayoutRootVyAA06VStackI0VGAA05TupleG0VyAA6SpacerV_AA0G0PAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamicoP0O5BoundRtd__lFQOyAtAE10fontWeightyQrAA4FontV0T0VSgFQOyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA0_SgGG_Qo__s19PartialRangeThroughVyAWGQo_AA4TextVARtGGAA13_OffsetEffectVGAA010_FlexFrameI0VGGMR, &protocol conformance descriptor for Button<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Button<ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<VStackLayout>, TupleView<(Spacer, <<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, Text, Spacer)>>, _OffsetEffect>, _FlexFrameLayout>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Collaboration.Management.View.Moderation and conformance Collaboration.Management.View.Moderation()
{
  result = lazy protocol witness table cache variable for type Collaboration.Management.View.Moderation and conformance Collaboration.Management.View.Moderation;
  if (!lazy protocol witness table cache variable for type Collaboration.Management.View.Moderation and conformance Collaboration.Management.View.Moderation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Collaboration.Management.View.Moderation and conformance Collaboration.Management.View.Moderation);
  }

  return result;
}

uint64_t sub_10034F888()
{

  return swift_deallocObject();
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAA5ColorVSgGGAA12_FrameLayoutVGAA016_BackgroundStyleI0VyANGGAA11_ClipEffectVyAA6CircleVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAA5ColorVSgGGAA12_FrameLayoutVGAA016_BackgroundStyleI0VyANGGAA11_ClipEffectVyAA6CircleVGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type _ClipEffect<Circle> and conformance _ClipEffect<A>, &_s7SwiftUI11_ClipEffectVyAA6CircleVGMd, &_s7SwiftUI11_ClipEffectVyAA6CircleVGMR, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<Circle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAA5ColorVSgGGAA12_FrameLayoutVGAA016_BackgroundStyleI0VyANGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAA5ColorVSgGGAA12_FrameLayoutVGAA016_BackgroundStyleI0VyANGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type _BackgroundStyleModifier<Color> and conformance _BackgroundStyleModifier<A>, &_s7SwiftUI24_BackgroundStyleModifierVyAA5ColorVGMd, &_s7SwiftUI24_BackgroundStyleModifierVyAA5ColorVGMR, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAA5ColorVSgGGAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAA5ColorVSgGGAA12_FrameLayoutVGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAA5ColorVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAA5ColorVSgGGMR);
    lazy protocol witness table accessor for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMR, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ButtonBorderShape>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ButtonBorderShape>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ButtonBorderShape>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAeAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamickL0O5BoundRtd__lFQOyACyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGARyAA5ColorVSgGGAA12_FrameLayoutVGAA011_BackgroundgS0VyAYGGAA11_ClipEffectVyAA6CircleVGG_s19PartialRangeThroughVyALGQo_G_AA010BorderlessiG0VQo_ARyAA0I11BorderShapeVGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAeAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamickL0O5BoundRtd__lFQOyACyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGARyAA5ColorVSgGGAA12_FrameLayoutVGAA011_BackgroundgS0VyAYGGAA11_ClipEffectVyAA6CircleVGG_s19PartialRangeThroughVyALGQo_G_AA010BorderlessiG0VQo_ARyAA0I11BorderShapeVGGMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6ButtonVyAA4ViewPAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamicfG0O5BoundRtd__lFQOyAA15ModifiedContentVyALyALyALyALyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAPyAA5ColorVSgGGAA12_FrameLayoutVGAA016_BackgroundStyleP0VyAWGGAA11_ClipEffectVyAA6CircleVGG_s19PartialRangeThroughVyAHGQo_GMd, &_s7SwiftUI6ButtonVyAA4ViewPAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamicfG0O5BoundRtd__lFQOyAA15ModifiedContentVyALyALyALyALyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAPyAA5ColorVSgGGAA12_FrameLayoutVGAA016_BackgroundStyleP0VyAWGGAA11_ClipEffectVyAA6CircleVGG_s19PartialRangeThroughVyAHGQo_GMR);
    type metadata accessor for BorderlessButtonStyle();
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type Button<<<opaque return type of View.dynamicTypeSize<A>(_:)>>.0> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA4ViewPAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamicfG0O5BoundRtd__lFQOyAA15ModifiedContentVyALyALyALyALyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAPyAA5ColorVSgGGAA12_FrameLayoutVGAA016_BackgroundStyleP0VyAWGGAA11_ClipEffectVyAA6CircleVGG_s19PartialRangeThroughVyAHGQo_GMd, &_s7SwiftUI6ButtonVyAA4ViewPAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamicfG0O5BoundRtd__lFQOyAA15ModifiedContentVyALyALyALyALyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAPyAA5ColorVSgGGAA12_FrameLayoutVGAA016_BackgroundStyleP0VyAWGGAA11_ClipEffectVyAA6CircleVGG_s19PartialRangeThroughVyAHGQo_GMR, &protocol conformance descriptor for Button<A>);
    lazy protocol witness table accessor for type Collaboration.Management.Model and conformance Collaboration.Management.Model(&lazy protocol witness table cache variable for type BorderlessButtonStyle and conformance BorderlessButtonStyle, &type metadata accessor for BorderlessButtonStyle, &protocol conformance descriptor for BorderlessButtonStyle);
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<ButtonBorderShape> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA17ButtonBorderShapeVGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA17ButtonBorderShapeVGMR, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ButtonBorderShape>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void _ss30_dictionaryDownCastConditionalySDyq0_q1_GSgSDyxq_GSHRzSHR0_r2_lFs11AnyHashableV_ypSSypTg5_0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd_1, &_ss18_DictionaryStorageCySSypGMR_1);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

  do
  {
LABEL_10:
    v10 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      return;
    }

    if (v10 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v7;
  }

  while (!v5);
  while (1)
  {
    v11 = __clz(__rbit64(v5)) | (v10 << 6);
    outlined init with copy of AnyHashable(*(a1 + 48) + 40 * v11, v27);
    outlined init with copy of Any(*(a1 + 56) + 32 * v11, v28 + 8);
    v25[0] = v28[0];
    v25[1] = v28[1];
    v26 = v29;
    v24[0] = v27[0];
    v24[1] = v27[1];
    outlined init with copy of AnyHashable(v24, v19);
    if (!swift_dynamicCast())
    {
      break;
    }

    v5 &= v5 - 1;
    outlined init with copy of Any(v25 + 8, v20);
    outlined destroy of TaskPriority?(v24, &_ss11AnyHashableV3key_yp5valuetMd_0, &_ss11AnyHashableV3key_yp5valuetMR_0);
    v21 = v18;
    outlined init with take of Any(v20, v22);
    v12 = v21;
    outlined init with take of Any(v22, v23);
    outlined init with take of Any(v23, &v21);
    v13 = specialized __RawDictionaryStorage.find<A>(_:)(v12, *(&v12 + 1));
    if (v14)
    {
      *(v2[6] + 16 * v13) = v12;
      v8 = v13;

      v9 = (v2[7] + 32 * v8);
      __swift_destroy_boxed_opaque_existential_0Tm(v9);
      outlined init with take of Any(&v21, v9);
      v7 = v10;
      if (!v5)
      {
        goto LABEL_10;
      }
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_22;
      }

      *(v2 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v13;
      *(v2[6] + 16 * v13) = v12;
      outlined init with take of Any(&v21, (v2[7] + 32 * v13));
      v15 = v2[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_23;
      }

      v2[2] = v17;
      v7 = v10;
      if (!v5)
      {
        goto LABEL_10;
      }
    }

LABEL_9:
    v10 = v7;
  }

  outlined destroy of TaskPriority?(v24, &_ss11AnyHashableV3key_yp5valuetMd_0, &_ss11AnyHashableV3key_yp5valuetMR_0);
}

uint64_t Collaboration.Flow.Collaborator.init(name:handle:artwork:canCollaborate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, char *a7@<X8>)
{
  v14 = type metadata accessor for Collaboration.Flow.Collaborator(0);
  v15 = *(v14 + 24);
  v16 = type metadata accessor for Artwork();
  (*(*(v16 - 8) + 56))(&a7[v15], 1, 1, v16);
  v17 = *(v14 + 28);
  *a7 = a1;
  *(a7 + 1) = a2;
  *(a7 + 2) = a3;
  *(a7 + 3) = a4;
  result = outlined assign with take of Artwork?(a5, &a7[v15]);
  a7[v17] = a6;
  return result;
}

uint64_t outlined assign with take of Artwork?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit7ArtworkVSgMd_0, &_s8MusicKit7ArtworkVSgMR_0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t Collaboration.Flow.Collaborator.artwork.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for Collaboration.Flow.Collaborator(0) + 24);

  return outlined assign with take of Artwork?(a1, v3);
}

uint64_t Collaboration.Flow.Collaborator.canCollaborate.setter(char a1)
{
  result = type metadata accessor for Collaboration.Flow.Collaborator(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t Collaboration.Flow.title.getter()
{
  v1 = v0;
  v31[0] = type metadata accessor for Playlist.Collaborator();
  v2 = *(v31[0] - 8);
  __chkstk_darwin();
  v4 = v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Locale();
  __chkstk_darwin();
  v5 = type metadata accessor for String.LocalizationValue();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = v31 - v9;
  type metadata accessor for Collaboration.Flow(0);
  v11 = __chkstk_darwin();
  v13 = v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Collaboration.Flow(v1, v13, v11, type metadata accessor for Collaboration.Flow);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v15 = v2;
      v16 = *(v2 + 32);
      v17 = v31[0];
      v16(v4, v13, v31[0]);
      String.LocalizationValue.init(stringLiteral:)();
      (*(v6 + 16))(v8, v10, v5);
      if (one-time initialization token for module != -1)
      {
        swift_once();
      }

      v18 = static NSBundle.module;
      static Locale.current.getter();
      String.init(localized:table:bundle:locale:comment:)();
      (*(v6 + 8))(v10, v5);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd_0, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR_0);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_1004F2400;
      v20 = Playlist.Collaborator.name.getter();
      v22 = v21;
      *(v19 + 56) = &type metadata for String;
      *(v19 + 64) = _sS2Ss7CVarArg10FoundationWl_0();
      if (v22)
      {
        v23 = v20;
      }

      else
      {
        v23 = 0;
      }

      v24 = 0xE000000000000000;
      if (v22)
      {
        v24 = v22;
      }

      *(v19 + 32) = v23;
      *(v19 + 40) = v24;
      v25 = static String.localizedStringWithFormat(_:_:)();

      (*(v15 + 8))(v4, v17);
    }

    else
    {
      String.LocalizationValue.init(stringLiteral:)();
      (*(v6 + 16))(v8, v10, v5);
      if (one-time initialization token for module != -1)
      {
        swift_once();
      }

      v27 = static NSBundle.module;
      static Locale.current.getter();
      v25 = String.init(localized:table:bundle:locale:comment:)();
      (*(v6 + 8))(v10, v5);
    }
  }

  else
  {
    v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore13CollaborationO0aB2UIE4FlowO12CollaboratorVSg_10Foundation3URLVSbtMd, &_s9MusicCore13CollaborationO0aB2UIE4FlowO12CollaboratorVSg_10Foundation3URLVSbtMR) + 48);
    String.LocalizationValue.init(stringLiteral:)();
    (*(v6 + 16))(v8, v10, v5);
    if (one-time initialization token for module != -1)
    {
      swift_once();
    }

    v28 = static NSBundle.module;
    static Locale.current.getter();
    v25 = String.init(localized:table:bundle:locale:comment:)();
    (*(v6 + 8))(v10, v5);
    v29 = type metadata accessor for URL();
    (*(*(v29 - 8) + 8))(&v13[v26], v29);
    outlined destroy of TaskPriority?(v13, &_s9MusicCore13CollaborationO0aB2UIE4FlowO12CollaboratorVSgMd, &_s9MusicCore13CollaborationO0aB2UIE4FlowO12CollaboratorVSgMR);
  }

  return v25;
}

Swift::String __swiftcall Collaboration.Flow.subtitle(hasProfileEdit:)(Swift::Bool hasProfileEdit)
{
  v86 = hasProfileEdit;
  type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin();
  v2 = type metadata accessor for Collaboration.Flow.Collaborator(0);
  v85 = *(v2 - 8);
  __chkstk_darwin();
  v4 = (&v81 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v6 = (&v81 - v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore13CollaborationO0aB2UIE4FlowO12CollaboratorVSg_SbtMd, &_s9MusicCore13CollaborationO0aB2UIE4FlowO12CollaboratorVSg_SbtMR);
  __chkstk_darwin();
  v8 = &v81 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore13CollaborationO0aB2UIE4FlowO12CollaboratorVSgMd, &_s9MusicCore13CollaborationO0aB2UIE4FlowO12CollaboratorVSgMR);
  __chkstk_darwin();
  v10 = &v81 - v9;
  type metadata accessor for Locale();
  __chkstk_darwin();
  v88 = &v81 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = type metadata accessor for String.LocalizationValue();
  v87 = *(v90 - 8);
  __chkstk_darwin();
  v89 = &v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v14 = &v81 - v13;
  type metadata accessor for Collaboration.Flow(0);
  v15 = __chkstk_darwin();
  v17 = &v81 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Collaboration.Flow(v1, v17, v15, type metadata accessor for Collaboration.Flow);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      String.LocalizationValue.init(stringLiteral:)();
      v19 = v87;
      v20 = v90;
      (*(v87 + 16))(v89, v14, v90);
      if (one-time initialization token for module != -1)
      {
        swift_once();
      }

      v21 = static NSBundle.module;
      static Locale.current.getter();
      v22 = String.init(localized:table:bundle:locale:comment:)();
      v24 = v23;
      (*(v19 + 8))(v14, v20);
      outlined destroy of Collaboration.Flow(v17, type metadata accessor for Collaboration.Flow);
    }

    else
    {
      v33 = v87;
      v34 = (v87 + 16);
      v35 = v14;
      v36 = v89;
      v37 = v90;
      String.LocalizationValue.init(stringLiteral:)();
      (*v34)(v36, v35, v37);
      if (one-time initialization token for module != -1)
      {
        swift_once();
      }

      v40 = static NSBundle.module;
      static Locale.current.getter();
      v22 = String.init(localized:table:bundle:locale:comment:)();
      v24 = v41;
      (*(v33 + 8))(v35, v37);
    }

    goto LABEL_33;
  }

  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore13CollaborationO0aB2UIE4FlowO12CollaboratorVSg_10Foundation3URLVSbtMd, &_s9MusicCore13CollaborationO0aB2UIE4FlowO12CollaboratorVSg_10Foundation3URLVSbtMR);
  v26 = *(v25 + 48);
  v27 = *(v25 + 64);
  v28 = v17;
  v29 = v17[v27];
  v83 = v26;
  v84 = v28;
  outlined init with take of URL?(v28, v10, &_s9MusicCore13CollaborationO0aB2UIE4FlowO12CollaboratorVSgMd, &_s9MusicCore13CollaborationO0aB2UIE4FlowO12CollaboratorVSgMR);
  v82 = v10;
  outlined init with copy of TaskPriority?(v10, v8, &_s9MusicCore13CollaborationO0aB2UIE4FlowO12CollaboratorVSgMd, &_s9MusicCore13CollaborationO0aB2UIE4FlowO12CollaboratorVSgMR);
  if ((*(v85 + 48))(v8, 1, v2) == 1)
  {
    v30 = v87;
    v31 = (v87 + 16);
    v32 = v14;
    String.LocalizationValue.init(stringLiteral:)();
    v42 = v90;
    (*v31)(v89, v32, v90);
    v43 = v82;
    if (one-time initialization token for module != -1)
    {
      swift_once();
    }

    v44 = static NSBundle.module;
    static Locale.current.getter();
    v22 = String.init(localized:table:bundle:locale:comment:)();
    v24 = v45;
    (*(v30 + 8))(v32, v42);
    outlined destroy of TaskPriority?(v43, &_s9MusicCore13CollaborationO0aB2UIE4FlowO12CollaboratorVSgMd, &_s9MusicCore13CollaborationO0aB2UIE4FlowO12CollaboratorVSgMR);
    v46 = type metadata accessor for URL();
    (*(*(v46 - 8) + 8))(v84 + v83, v46);
    goto LABEL_33;
  }

  v38 = v14;
  if (v29)
  {
    v39 = v6;
    outlined init with take of Collaboration.Flow.Collaborator(v8, v6, type metadata accessor for Collaboration.Flow.Collaborator);
    if (v86)
    {
      goto LABEL_19;
    }

    countAndFlagsBits = v6[1]._countAndFlagsBits;
    object = v6[1]._object;
    v55 = v84;
    if (object)
    {
      String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v56._countAndFlagsBits = 0x100000000000002ELL;
      v56._object = 0x80000001004D2660;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v56);
      String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(*v6);
      v57._countAndFlagsBits = 4204576;
      v57._object = 0xE300000000000000;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v57);
      v58._countAndFlagsBits = countAndFlagsBits;
      v58._object = object;
      String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v58);
      v59._countAndFlagsBits = 0xD000000000000031;
      v59._object = 0x80000001004D2690;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v59);
LABEL_26:
      String.LocalizationValue.init(stringInterpolation:)();
      v66 = v87;
      v67 = v90;
      (*(v87 + 16))(v89, v38, v90);
      if (one-time initialization token for module != -1)
      {
        swift_once();
      }

      v68 = static NSBundle.module;
      static Locale.current.getter();
      v22 = String.init(localized:table:bundle:locale:comment:)();
      v24 = v69;
      (*(v66 + 8))(v38, v67);
LABEL_32:
      outlined destroy of TaskPriority?(v82, &_s9MusicCore13CollaborationO0aB2UIE4FlowO12CollaboratorVSgMd, &_s9MusicCore13CollaborationO0aB2UIE4FlowO12CollaboratorVSgMR);
      outlined destroy of Collaboration.Flow(v39, type metadata accessor for Collaboration.Flow.Collaborator);
      v77 = type metadata accessor for URL();
      (*(*(v77 - 8) + 8))(v55 + v83, v77);
      goto LABEL_33;
    }

    goto LABEL_29;
  }

  v39 = v4;
  outlined init with take of Collaboration.Flow.Collaborator(v8, v4, type metadata accessor for Collaboration.Flow.Collaborator);
  if (!v86)
  {
    v60 = v4[1]._countAndFlagsBits;
    v61 = v4[1]._object;
    v55 = v84;
    if (v61)
    {
      String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v62._countAndFlagsBits = 0x100000000000002ALL;
      v62._object = 0x80000001004D2570;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v62);
      String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(*v4);
      v63._countAndFlagsBits = 4204576;
      v63._object = 0xE300000000000000;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v63);
      v64._countAndFlagsBits = v60;
      v64._object = v61;
      String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v64);
      v65._countAndFlagsBits = 0xD000000000000048;
      v65._object = 0x80000001004D25A0;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v65);
      goto LABEL_26;
    }

LABEL_29:
    String.LocalizationValue.init(stringLiteral:)();
    v70 = v87;
    v71 = v90;
    (*(v87 + 16))(v89, v38, v90);
    if (one-time initialization token for module != -1)
    {
      swift_once();
    }

    v72 = static NSBundle.module;
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    (*(v70 + 8))(v38, v71);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd_0, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR_0);
    v73 = swift_allocObject();
    *(v73 + 16) = xmmword_1004F2400;
    v74 = v39->_countAndFlagsBits;
    v75 = v39->_object;
    *(v73 + 56) = &type metadata for String;
    *(v73 + 64) = _sS2Ss7CVarArg10FoundationWl_0();
    *(v73 + 32) = v74;
    *(v73 + 40) = v75;

    v22 = static String.localizedStringWithFormat(_:_:)();
    v24 = v76;

    goto LABEL_32;
  }

LABEL_19:
  String.LocalizationValue.init(stringLiteral:)();
  v47 = v87;
  v48 = v90;
  (*(v87 + 16))(v89, v38, v90);
  v49 = v84;
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  v50 = static NSBundle.module;
  static Locale.current.getter();
  v22 = String.init(localized:table:bundle:locale:comment:)();
  v24 = v51;
  (*(v47 + 8))(v38, v48);
  outlined destroy of TaskPriority?(v82, &_s9MusicCore13CollaborationO0aB2UIE4FlowO12CollaboratorVSgMd, &_s9MusicCore13CollaborationO0aB2UIE4FlowO12CollaboratorVSgMR);
  outlined destroy of Collaboration.Flow(v39, type metadata accessor for Collaboration.Flow.Collaborator);
  v52 = type metadata accessor for URL();
  (*(*(v52 - 8) + 8))(v49 + v83, v52);
LABEL_33:
  v78 = v22;
  v79 = v24;
  result._object = v79;
  result._countAndFlagsBits = v78;
  return result;
}

uint64_t Collaboration.Flow.buttonActionTitle.getter()
{
  v1 = v0;
  type metadata accessor for Locale();
  __chkstk_darwin();
  v2 = type metadata accessor for String.LocalizationValue();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v18[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v7 = &v18[-v6];
  type metadata accessor for Collaboration.Flow(0);
  v8 = __chkstk_darwin();
  v10 = &v18[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  outlined init with copy of Collaboration.Flow(v1, v10, v8, type metadata accessor for Collaboration.Flow);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      outlined destroy of Collaboration.Flow(v10, type metadata accessor for Collaboration.Flow);
      return 0;
    }

    else
    {
      String.LocalizationValue.init(stringLiteral:)();
      (*(v3 + 16))(v5, v7, v2);
      if (one-time initialization token for module != -1)
      {
        swift_once();
      }

      v14 = static NSBundle.module;
      static Locale.current.getter();
      v12 = String.init(localized:table:bundle:locale:comment:)();
      (*(v3 + 8))(v7, v2);
    }
  }

  else
  {
    v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore13CollaborationO0aB2UIE4FlowO12CollaboratorVSg_10Foundation3URLVSbtMd, &_s9MusicCore13CollaborationO0aB2UIE4FlowO12CollaboratorVSg_10Foundation3URLVSbtMR) + 48);
    String.LocalizationValue.init(stringLiteral:)();
    (*(v3 + 16))(v5, v7, v2);
    if (one-time initialization token for module != -1)
    {
      swift_once();
    }

    v15 = static NSBundle.module;
    static Locale.current.getter();
    v12 = String.init(localized:table:bundle:locale:comment:)();
    (*(v3 + 8))(v7, v2);
    v16 = type metadata accessor for URL();
    (*(*(v16 - 8) + 8))(&v10[v13], v16);
    outlined destroy of TaskPriority?(v10, &_s9MusicCore13CollaborationO0aB2UIE4FlowO12CollaboratorVSgMd, &_s9MusicCore13CollaborationO0aB2UIE4FlowO12CollaboratorVSgMR);
  }

  return v12;
}

uint64_t Collaboration.Flow.View.init(_:playlist:manager:showProfileCreation:profileUpdateHandler:completion:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  closure #1 in variable initialization expression of Collaboration.Flow.View._isRestricted();
  State.init(wrappedValue:)();
  *a9 = v25;
  *(a9 + 8) = v26;
  State.init(wrappedValue:)();
  *(a9 + 16) = v25;
  *(a9 + 24) = v26;
  v17 = type metadata accessor for Collaboration.Flow.View(0);
  v18 = (a9 + v17[10]);
  v19 = a9 + v17[12];
  *v19 = implicit closure #2 in implicit closure #1 in variable initialization expression of Collaboration.Flow.View._profileContext;
  *(v19 + 8) = 0;
  *(v19 + 16) = 0;
  outlined init with take of Collaboration.Flow.Collaborator(a1, a9 + v17[6], type metadata accessor for Collaboration.Flow);
  v20 = v17[7];
  v21 = type metadata accessor for Playlist();
  result = (*(*(v21 - 8) + 32))(a9 + v20, a2, v21);
  *(a9 + v17[8]) = a3;
  *(a9 + v17[9]) = a4;
  *v18 = a5;
  v18[1] = a6;
  v23 = (a9 + v17[11]);
  *v23 = a7;
  v23[1] = a8;
  return result;
}

uint64_t Collaboration.Flow.View.body.getter@<X0>(uint64_t a2@<X8>)
{
  *a2 = static HorizontalAlignment.center.getter();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAA0D0PAAE4boldyQrSbFQOyAKy9MusicCore13CollaborationO0lmB0E4FlowO010GlyphImageD033_4FA82EB282576B4095E3FA5F35E498B8LLVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_AA31AccessibilityAttachmentModifierVGSg_AKyAKyAmAEANyQrSbFQOyAKyAKyAA4TextVAA010_FixedSizeG0VGA1_G_Qo_AYyAA13TextAlignmentOGGAA08_PaddingG0VGAKyAKyAKyAKyA13_A17_GAYyAA5ColorVSgGGA20_GA20_GAKyAT014ProfileEditingD0AVLLVA20_GSgAA012_ConditionalJ0VyA35_yAIyAKyAKyAKyAKyAA6ToggleVyA9_GA20_GAA24_BackgroundStyleModifierVyAA15BackgroundStyleVGGAA11_ClipEffectVyAA16RoundedRectangleVGGAA010_FlexFrameG0VG_AKyAKyAKyAKyAKyAKyAKyA12_A53_GA17_GAA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGA1_GA20_GA20_GA20_GAmAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyAKyAT12ActionButtonAVLLVAA01_Z20KeyTransformModifierVySbGG_Qo_tGA80_GAIyAKyAKyAKy01_l4Kit_aB007ArtworkQ0V01_l12KitInternal_aB0E18artworkPlaceholderyQrx0L3Kit7ArtworkVSg_So6CGSizeVA24_tcAaLRzlFQOy_AR015CNSwiftUIAvatarD0VQo_AA06_FrameG0VGA47_yAA6CircleVGGA20_G_AKyA76_A20_GA106_tGGtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAA0D0PAAE4boldyQrSbFQOyAKy9MusicCore13CollaborationO0lmB0E4FlowO010GlyphImageD033_4FA82EB282576B4095E3FA5F35E498B8LLVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_AA31AccessibilityAttachmentModifierVGSg_AKyAKyAmAEANyQrSbFQOyAKyAKyAA4TextVAA010_FixedSizeG0VGA1_G_Qo_AYyAA13TextAlignmentOGGAA08_PaddingG0VGAKyAKyAKyAKyA13_A17_GAYyAA5ColorVSgGGA20_GA20_GAKyAT014ProfileEditingD0AVLLVA20_GSgAA012_ConditionalJ0VyA35_yAIyAKyAKyAKyAKyAA6ToggleVyA9_GA20_GAA24_BackgroundStyleModifierVyAA15BackgroundStyleVGGAA11_ClipEffectVyAA16RoundedRectangleVGGAA010_FlexFrameG0VG_AKyAKyAKyAKyAKyAKyAKyA12_A53_GA17_GAA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGA1_GA20_GA20_GA20_GAmAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyAKyAT12ActionButtonAVLLVAA01_Z20KeyTransformModifierVySbGG_Qo_tGA80_GAIyAKyAKyAKy01_l4Kit_aB007ArtworkQ0V01_l12KitInternal_aB0E18artworkPlaceholderyQrx0L3Kit7ArtworkVSg_So6CGSizeVA24_tcAaLRzlFQOy_AR015CNSwiftUIAvatarD0VQo_AA06_FrameG0VGA47_yAA6CircleVGGA20_G_AKyA76_A20_GA106_tGGtGGMR);
  return closure #1 in Collaboration.Flow.View.body.getter(v2, a2 + *(v4 + 44));
}

uint64_t closure #1 in Collaboration.Flow.View.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v466 = a1;
  v440 = a2;
  v439 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAEy010_MusicKit_aB012ArtworkImageV01_gh9Internal_aB0E18artworkPlaceholderyQrx0gH00I0VSg_So6CGSizeVAA5ColorVtcAA0D0RzlFQOy_0g4CoreB0015CNSwiftUIAvatarD0VQo_AA12_FrameLayoutVGAA11_ClipEffectVyAA6CircleVGGAA08_PaddingT0VG_AEy0gP013CollaborationOATE4FlowO12ActionButton33_4FA82EB282576B4095E3FA5F35E498B8LLVA6_GA16_tGMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAEy010_MusicKit_aB012ArtworkImageV01_gh9Internal_aB0E18artworkPlaceholderyQrx0gH00I0VSg_So6CGSizeVAA5ColorVtcAA0D0RzlFQOy_0g4CoreB0015CNSwiftUIAvatarD0VQo_AA12_FrameLayoutVGAA11_ClipEffectVyAA6CircleVGGAA08_PaddingT0VG_AEy0gP013CollaborationOATE4FlowO12ActionButton33_4FA82EB282576B4095E3FA5F35E498B8LLVA6_GA16_tGMR);
  __chkstk_darwin();
  v403 = &v375 - v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit7ArtworkV0aB8InternalE9CropStyleVSgMd_0, &_s8MusicKit7ArtworkV0aB8InternalE9CropStyleVSgMR_0);
  __chkstk_darwin();
  v378 = &v375 - v3;
  v379 = type metadata accessor for Artwork.CropStyle();
  v396 = *(v379 - 8);
  __chkstk_darwin();
  v395 = &v375 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit7ArtworkVSgMd_0, &_s8MusicKit7ArtworkVSgMR_0);
  __chkstk_darwin();
  v389 = &v375 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v388 = &v375 - v6;
  v7 = type metadata accessor for ArtworkImage();
  v397 = *(v7 - 8);
  v398 = v7;
  __chkstk_darwin();
  v411 = &v375 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v377 = &v375 - v9;
  __chkstk_darwin();
  v394 = &v375 - v10;
  __chkstk_darwin();
  v413 = &v375 - v11;
  v414 = type metadata accessor for ArtworkImage.ReusePolicy();
  v412 = *(v414 - 8);
  __chkstk_darwin();
  v425 = &v375 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgMd, &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgMR);
  __chkstk_darwin();
  v387 = &v375 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v386 = &v375 - v14;
  __chkstk_darwin();
  v424 = (&v375 - v15);
  v391 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACy010_MusicKit_aB012ArtworkImageV01_ef9Internal_aB0E18artworkPlaceholderyQrx0eF00G0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_0e4CoreB0015CNSwiftUIAvatarN0VQo_AA12_FrameLayoutVGAA11_ClipEffectVyAA6CircleVGGMd, &_s7SwiftUI15ModifiedContentVyACy010_MusicKit_aB012ArtworkImageV01_ef9Internal_aB0E18artworkPlaceholderyQrx0eF00G0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_0e4CoreB0015CNSwiftUIAvatarN0VQo_AA12_FrameLayoutVGAA11_ClipEffectVyAA6CircleVGGMR);
  __chkstk_darwin();
  v393 = &v375 - v16;
  v392 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACy010_MusicKit_aB012ArtworkImageV01_ef9Internal_aB0E18artworkPlaceholderyQrx0eF00G0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_0e4CoreB0015CNSwiftUIAvatarN0VQo_AA12_FrameLayoutVGAA11_ClipEffectVyAA6CircleVGGAA08_PaddingS0VGMd, &_s7SwiftUI15ModifiedContentVyACyACy010_MusicKit_aB012ArtworkImageV01_ef9Internal_aB0E18artworkPlaceholderyQrx0eF00G0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_0e4CoreB0015CNSwiftUIAvatarN0VQo_AA12_FrameLayoutVGAA11_ClipEffectVyAA6CircleVGGAA08_PaddingS0VGMR);
  __chkstk_darwin();
  v402 = &v375 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v390 = &v375 - v18;
  __chkstk_darwin();
  v434 = &v375 - v19;
  v447 = type metadata accessor for Playlist.Collaborator();
  v433 = *(v447 - 8);
  __chkstk_darwin();
  v415 = v20;
  v416 = &v375 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v446 = &v375 - v21;
  v22 = type metadata accessor for URL();
  v409 = *(v22 - 8);
  v410 = v22;
  __chkstk_darwin();
  v384 = v23;
  v385 = &v375 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v408 = &v375 - v24;
  v436 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyACyAA9TupleViewVyAA08ModifiedD0VyAIyAIyAIyAA6ToggleVyAA4TextVGAA14_PaddingLayoutVGAA24_BackgroundStyleModifierVyAA0mN0VGGAA11_ClipEffectVyAA16RoundedRectangleVGGAA010_FlexFrameL0VG_AIyAIyAIyAIyAIyAIyAIyAIyAmA010_FixedSizeL0VGA3_GAA022_EnvironmentKeyWritingO0VyAA0J9AlignmentOGGAA011_ForegroundnO0VyAA017HierarchicalShapeN0VGGA10_yAA4FontVSgGGAPGAPGAPGAA0G0PAAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyAIy9MusicCore13CollaborationO09MusicCoreB0E4FlowO12ActionButton33_4FA82EB282576B4095E3FA5F35E498B8LLVAA01_xy9TransformO0VySbGG_Qo_tGA51_GAGyAIyAIyAIy010_MusicKit_aB012ArtworkImageV018_MusicKitInternal_aB0E18artworkPlaceholderyQrx8MusicKit7ArtworkVSg_So6CGSizeVAA5ColorVtcAAA29_RzlFQOy_A42_015CNSwiftUIAvatarG0VQo_AA01_uL0VGAYyAA6CircleVGGAPG_AIyA47_APGA79_tG_GMd, &_s7SwiftUI19_ConditionalContentV7StorageOyACyAA9TupleViewVyAA08ModifiedD0VyAIyAIyAIyAA6ToggleVyAA4TextVGAA14_PaddingLayoutVGAA24_BackgroundStyleModifierVyAA0mN0VGGAA11_ClipEffectVyAA16RoundedRectangleVGGAA010_FlexFrameL0VG_AIyAIyAIyAIyAIyAIyAIyAIyAmA010_FixedSizeL0VGA3_GAA022_EnvironmentKeyWritingO0VyAA0J9AlignmentOGGAA011_ForegroundnO0VyAA017HierarchicalShapeN0VGGA10_yAA4FontVSgGGAPGAPGAPGAA0G0PAAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyAIy9MusicCore13CollaborationO09MusicCoreB0E4FlowO12ActionButton33_4FA82EB282576B4095E3FA5F35E498B8LLVAA01_xy9TransformO0VySbGG_Qo_tGA51_GAGyAIyAIyAIy010_MusicKit_aB012ArtworkImageV018_MusicKitInternal_aB0E18artworkPlaceholderyQrx8MusicKit7ArtworkVSg_So6CGSizeVAA5ColorVtcAAA29_RzlFQOy_A42_015CNSwiftUIAvatarG0VQo_AA01_uL0VGAYyAA6CircleVGGAPG_AIyA47_APGA79_tG_GMR);
  __chkstk_darwin();
  v438 = &v375 - v25;
  v418 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA9TupleViewVyAA08ModifiedD0VyAIyAIyAIyAA6ToggleVyAA4TextVGAA14_PaddingLayoutVGAA24_BackgroundStyleModifierVyAA0mN0VGGAA11_ClipEffectVyAA16RoundedRectangleVGGAA010_FlexFrameL0VG_AIyAIyAIyAIyAIyAIyAIyAIyAmA010_FixedSizeL0VGA3_GAA022_EnvironmentKeyWritingO0VyAA0J9AlignmentOGGAA011_ForegroundnO0VyAA017HierarchicalShapeN0VGGA10_yAA4FontVSgGGAPGAPGAPGAA0G0PAAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyAIy9MusicCore13CollaborationO09MusicCoreB0E4FlowO12ActionButton33_4FA82EB282576B4095E3FA5F35E498B8LLVAA01_xy9TransformO0VySbGG_Qo_tGA51__GMd, &_s7SwiftUI19_ConditionalContentV7StorageOyAA9TupleViewVyAA08ModifiedD0VyAIyAIyAIyAA6ToggleVyAA4TextVGAA14_PaddingLayoutVGAA24_BackgroundStyleModifierVyAA0mN0VGGAA11_ClipEffectVyAA16RoundedRectangleVGGAA010_FlexFrameL0VG_AIyAIyAIyAIyAIyAIyAIyAIyAmA010_FixedSizeL0VGA3_GAA022_EnvironmentKeyWritingO0VyAA0J9AlignmentOGGAA011_ForegroundnO0VyAA017HierarchicalShapeN0VGGA10_yAA4FontVSgGGAPGAPGAPGAA0G0PAAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyAIy9MusicCore13CollaborationO09MusicCoreB0E4FlowO12ActionButton33_4FA82EB282576B4095E3FA5F35E498B8LLVAA01_xy9TransformO0VySbGG_Qo_tGA51__GMR);
  __chkstk_darwin();
  v420 = (&v375 - v26);
  v437 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA9TupleViewVyAA08ModifiedD0VyAGyAGyAGyAA6ToggleVyAA4TextVGAA14_PaddingLayoutVGAA24_BackgroundStyleModifierVyAA0lM0VGGAA11_ClipEffectVyAA16RoundedRectangleVGGAA010_FlexFrameK0VG_AGyAGyAGyAGyAGyAGyAGyAGyAkA010_FixedSizeK0VGA1_GAA022_EnvironmentKeyWritingN0VyAA0I9AlignmentOGGAA011_ForegroundmN0VyAA017HierarchicalShapeM0VGGA8_yAA4FontVSgGGANGANGANGAA0F0PAAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyAGy9MusicCore13CollaborationO09MusicCoreB0E4FlowO12ActionButton33_4FA82EB282576B4095E3FA5F35E498B8LLVAA01_wx9TransformN0VySbGG_Qo_tGA49_GMd, &_s7SwiftUI19_ConditionalContentVyAA9TupleViewVyAA08ModifiedD0VyAGyAGyAGyAA6ToggleVyAA4TextVGAA14_PaddingLayoutVGAA24_BackgroundStyleModifierVyAA0lM0VGGAA11_ClipEffectVyAA16RoundedRectangleVGGAA010_FlexFrameK0VG_AGyAGyAGyAGyAGyAGyAGyAGyAkA010_FixedSizeK0VGA1_GAA022_EnvironmentKeyWritingN0VyAA0I9AlignmentOGGAA011_ForegroundmN0VyAA017HierarchicalShapeM0VGGA8_yAA4FontVSgGGANGANGANGAA0F0PAAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyAGy9MusicCore13CollaborationO09MusicCoreB0E4FlowO12ActionButton33_4FA82EB282576B4095E3FA5F35E498B8LLVAA01_wx9TransformN0VySbGG_Qo_tGA49_GMR);
  __chkstk_darwin();
  v421 = &v375 - v27;
  v419 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAEyAEyAA6ToggleVyAA4TextVGAA14_PaddingLayoutVGAA24_BackgroundStyleModifierVyAA0kL0VGGAA11_ClipEffectVyAA16RoundedRectangleVGGAA010_FlexFrameJ0VG_AEyAEyAEyAEyAEyAEyAEyAEyAiA010_FixedSizeJ0VGA_GAA022_EnvironmentKeyWritingM0VyAA0H9AlignmentOGGAA011_ForegroundlM0VyAA017HierarchicalShapeL0VGGA6_yAA4FontVSgGGALGALGALGAA0D0PAAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyAEy9MusicCore13CollaborationO09MusicCoreB0E4FlowO12ActionButton33_4FA82EB282576B4095E3FA5F35E498B8LLVAA01_vw9TransformM0VySbGG_Qo_tGMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAEyAEyAA6ToggleVyAA4TextVGAA14_PaddingLayoutVGAA24_BackgroundStyleModifierVyAA0kL0VGGAA11_ClipEffectVyAA16RoundedRectangleVGGAA010_FlexFrameJ0VG_AEyAEyAEyAEyAEyAEyAEyAEyAiA010_FixedSizeJ0VGA_GAA022_EnvironmentKeyWritingM0VyAA0H9AlignmentOGGAA011_ForegroundlM0VyAA017HierarchicalShapeL0VGGA6_yAA4FontVSgGGALGALGALGAA0D0PAAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyAEy9MusicCore13CollaborationO09MusicCoreB0E4FlowO12ActionButton33_4FA82EB282576B4095E3FA5F35E498B8LLVAA01_vw9TransformM0VySbGG_Qo_tGMR);
  __chkstk_darwin();
  v401 = &v375 - v28;
  v29 = type metadata accessor for Collaboration.Flow.View(0);
  v432 = *(v29 - 8);
  v30 = *(v432 + 64);
  __chkstk_darwin();
  v448 = &v375 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v428 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyAA15ModifiedContentVy9MusicCore13CollaborationO0lmB0E4FlowO12ActionButton33_4FA82EB282576B4095E3FA5F35E498B8LLVAA32_EnvironmentKeyTransformModifierVySbGG_Qo_Md, &_s7SwiftUI4ViewPAAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyAA15ModifiedContentVy9MusicCore13CollaborationO0lmB0E4FlowO12ActionButton33_4FA82EB282576B4095E3FA5F35E498B8LLVAA32_EnvironmentKeyTransformModifierVySbGG_Qo_MR);
  v444 = *(v428 - 1);
  __chkstk_darwin();
  v400 = &v375 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v417 = &v375 - v32;
  type metadata accessor for Locale();
  __chkstk_darwin();
  v429 = &v375 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v431 = type metadata accessor for String.LocalizationValue();
  v445 = *(v431 - 8);
  __chkstk_darwin();
  v427 = &v375 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v430 = &v375 - v35;
  v380 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6ToggleVyAA4TextVGAA14_PaddingLayoutVGAA24_BackgroundStyleModifierVyAA0iJ0VGGAA11_ClipEffectVyAA16RoundedRectangleVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6ToggleVyAA4TextVGAA14_PaddingLayoutVGAA24_BackgroundStyleModifierVyAA0iJ0VGGAA11_ClipEffectVyAA16RoundedRectangleVGGMR);
  __chkstk_darwin();
  v382 = &v375 - v36;
  v381 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA6ToggleVyAA4TextVGAA14_PaddingLayoutVGAA24_BackgroundStyleModifierVyAA0iJ0VGGAA11_ClipEffectVyAA16RoundedRectangleVGGAA010_FlexFrameH0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6ToggleVyAA4TextVGAA14_PaddingLayoutVGAA24_BackgroundStyleModifierVyAA0iJ0VGGAA11_ClipEffectVyAA16RoundedRectangleVGGAA010_FlexFrameH0VGMR);
  __chkstk_darwin();
  v399 = &v375 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v383 = &v375 - v38;
  __chkstk_darwin();
  v426 = (&v375 - v39);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyAA9TupleViewVyAA08ModifiedD0VyAGyAGyAGyAA6ToggleVyAA4TextVGAA14_PaddingLayoutVGAA24_BackgroundStyleModifierVyAA0lM0VGGAA11_ClipEffectVyAA16RoundedRectangleVGGAA010_FlexFrameK0VG_AGyAGyAGyAGyAGyAGyAGyAGyAkA010_FixedSizeK0VGA1_GAA022_EnvironmentKeyWritingN0VyAA0I9AlignmentOGGAA011_ForegroundmN0VyAA017HierarchicalShapeM0VGGA8_yAA4FontVSgGGANGANGANGAA0F0PAAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyAGy9MusicCore13CollaborationO09MusicCoreB0E4FlowO12ActionButton33_4FA82EB282576B4095E3FA5F35E498B8LLVAA01_wx9TransformN0VySbGG_Qo_tGA49_GAEyAGyAGyAGy010_MusicKit_aB012ArtworkImageV018_MusicKitInternal_aB0E18artworkPlaceholderyQrx8MusicKit7ArtworkVSg_So6CGSizeVAA5ColorVtcAAA27_RzlFQOy_A40_015CNSwiftUIAvatarF0VQo_AA01_tK0VGAWyAA6CircleVGGANG_AGyA45_ANGA77_tGGMd, &_s7SwiftUI19_ConditionalContentVyACyAA9TupleViewVyAA08ModifiedD0VyAGyAGyAGyAA6ToggleVyAA4TextVGAA14_PaddingLayoutVGAA24_BackgroundStyleModifierVyAA0lM0VGGAA11_ClipEffectVyAA16RoundedRectangleVGGAA010_FlexFrameK0VG_AGyAGyAGyAGyAGyAGyAGyAGyAkA010_FixedSizeK0VGA1_GAA022_EnvironmentKeyWritingN0VyAA0I9AlignmentOGGAA011_ForegroundmN0VyAA017HierarchicalShapeM0VGGA8_yAA4FontVSgGGANGANGANGAA0F0PAAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyAGy9MusicCore13CollaborationO09MusicCoreB0E4FlowO12ActionButton33_4FA82EB282576B4095E3FA5F35E498B8LLVAA01_wx9TransformN0VySbGG_Qo_tGA49_GAEyAGyAGyAGy010_MusicKit_aB012ArtworkImageV018_MusicKitInternal_aB0E18artworkPlaceholderyQrx8MusicKit7ArtworkVSg_So6CGSizeVAA5ColorVtcAAA27_RzlFQOy_A40_015CNSwiftUIAvatarF0VQo_AA01_tK0VGAWyAA6CircleVGGANG_AGyA45_ANGA77_tGGMR);
  __chkstk_darwin();
  v464 = &v375 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v42 = &v375 - v41;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy9MusicCore13CollaborationO0efB0E4FlowO18ProfileEditingView33_4FA82EB282576B4095E3FA5F35E498B8LLVAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVy9MusicCore13CollaborationO0efB0E4FlowO18ProfileEditingView33_4FA82EB282576B4095E3FA5F35E498B8LLVAA14_PaddingLayoutVGMR);
  v422 = *(v43 - 8);
  v423 = v43;
  __chkstk_darwin();
  v376 = (&v375 - v44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy9MusicCore13CollaborationO0efB0E4FlowO18ProfileEditingView33_4FA82EB282576B4095E3FA5F35E498B8LLVAA14_PaddingLayoutVGSgMd, &_s7SwiftUI15ModifiedContentVy9MusicCore13CollaborationO0efB0E4FlowO18ProfileEditingView33_4FA82EB282576B4095E3FA5F35E498B8LLVAA14_PaddingLayoutVGSgMR);
  __chkstk_darwin();
  v462 = &v375 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v469 = &v375 - v46;
  v457 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE4boldyQrSbFQOyACyACyAA4TextVAA16_FixedSizeLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_AMyAA0G9AlignmentOGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE4boldyQrSbFQOyACyACyAA4TextVAA16_FixedSizeLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_AMyAA0G9AlignmentOGGMR);
  __chkstk_darwin();
  v460 = &v375 - v47;
  v459 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE4boldyQrSbFQOyACyACyAA4TextVAA16_FixedSizeLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_AMyAA0G9AlignmentOGGAA08_PaddingJ0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE4boldyQrSbFQOyACyACyAA4TextVAA16_FixedSizeLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_AMyAA0G9AlignmentOGGAA08_PaddingJ0VGMR);
  __chkstk_darwin();
  v463 = &v375 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v458 = &v375 - v49;
  __chkstk_darwin();
  v467 = &v375 - v50;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE4boldyQrSbFQOyAA15ModifiedContentVy9MusicCore13CollaborationO0ghB0E4FlowO010GlyphImageC033_4FA82EB282576B4095E3FA5F35E498B8LLVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_Md, &_s7SwiftUI4ViewPAAE4boldyQrSbFQOyAA15ModifiedContentVy9MusicCore13CollaborationO0ghB0E4FlowO010GlyphImageC033_4FA82EB282576B4095E3FA5F35E498B8LLVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_MR);
  v52 = *(v51 - 8);
  __chkstk_darwin();
  v54 = &v375 - v53;
  v55 = type metadata accessor for Collaboration.Flow(0);
  __chkstk_darwin();
  v443 = (&v375 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v456 = &v375 - v57;
  __chkstk_darwin();
  v59 = &v375 - v58;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE4boldyQrSbFQOyACy9MusicCore13CollaborationO0ghB0E4FlowO010GlyphImageE033_4FA82EB282576B4095E3FA5F35E498B8LLVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_AA023AccessibilityAttachmentX0VGSgMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE4boldyQrSbFQOyACy9MusicCore13CollaborationO0ghB0E4FlowO010GlyphImageE033_4FA82EB282576B4095E3FA5F35E498B8LLVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_AA023AccessibilityAttachmentX0VGSgMR);
  __chkstk_darwin();
  v461 = &v375 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = __chkstk_darwin();
  v63 = &v375 - v62;
  v441 = v29;
  v470 = *(v29 + 24);
  outlined init with copy of Collaboration.Flow(v466 + v470, v59, v61, type metadata accessor for Collaboration.Flow);
  v449 = v55;
  LODWORD(v29) = swift_getEnumCaseMultiPayload();
  outlined destroy of Collaboration.Flow(v59, type metadata accessor for Collaboration.Flow);
  v468 = v42;
  v465 = v63;
  if (v29 == 1)
  {
    v64 = 1;
  }

  else
  {
    if (one-time initialization token for collaborationGlyphFont != -1)
    {
      swift_once();
    }

    v65 = static Collaboration.Flow.Specs.collaborationGlyphFont;
    *v478 = swift_getKeyPath();
    *&v478[8] = v65;

    v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy9MusicCore13CollaborationO0efB0E4FlowO14GlyphImageView33_4FA82EB282576B4095E3FA5F35E498B8LLVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMd, &_s7SwiftUI15ModifiedContentVy9MusicCore13CollaborationO0efB0E4FlowO14GlyphImageView33_4FA82EB282576B4095E3FA5F35E498B8LLVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMR);
    v67 = lazy protocol witness table accessor for type ModifiedContent<Collaboration.Flow.GlyphImageView, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
    View.bold(_:)();

    *v478 = v66;
    *&v478[8] = v67;
    swift_getOpaqueTypeConformance2();
    v63 = v465;
    View.accessibilityHidden(_:)();
    (*(v52 + 8))(v54, v51);
    v64 = 0;
  }

  v435 = v30;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE4boldyQrSbFQOyACy9MusicCore13CollaborationO0ghB0E4FlowO010GlyphImageE033_4FA82EB282576B4095E3FA5F35E498B8LLVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_AA023AccessibilityAttachmentX0VGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE4boldyQrSbFQOyACy9MusicCore13CollaborationO0ghB0E4FlowO010GlyphImageE033_4FA82EB282576B4095E3FA5F35E498B8LLVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_AA023AccessibilityAttachmentX0VGMR);
  (*(*(v68 - 8) + 56))(v63, v64, 1, v68);
  v69 = v466;
  *v478 = Collaboration.Flow.title.getter();
  *&v478[8] = v70;
  v442 = _sS2SSysWl_0();
  v71 = Text.init<A>(_:)();
  v73 = v72;
  v75 = v74;
  v77 = v76;
  if (one-time initialization token for subtitleFont != -1)
  {
    swift_once();
  }

  v78 = static Collaboration.Flow.Specs.subtitleFont;
  KeyPath = swift_getKeyPath();
  LOBYTE(v477[0]) = v75 & 1;
  *v478 = v71;
  *&v478[8] = v73;
  v478[16] = v75 & 1;
  *&v478[24] = v77;
  *&v478[32] = 256;
  *&v478[40] = KeyPath;
  *&v478[48] = v78;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA16_FixedSizeLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA16_FixedSizeLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMR);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, _FixedSizeLayout>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
  v80 = v460;
  View.bold(_:)();
  v523[0] = *v478;
  v523[1] = *&v478[16];
  v523[2] = *&v478[32];
  v524 = *&v478[48];
  outlined destroy of TaskPriority?(v523, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA16_FixedSizeLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA16_FixedSizeLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMR);
  v81 = swift_getKeyPath();
  v82 = v80 + *(v457 + 36);
  *v82 = v81;
  *(v82 + 8) = 1;
  v83 = static Edge.Set.top.getter();
  v84 = v456;
  outlined init with copy of Collaboration.Flow(v69 + v470, v456, v85, type metadata accessor for Collaboration.Flow);
  swift_getEnumCaseMultiPayload();
  outlined destroy of Collaboration.Flow(v84, type metadata accessor for Collaboration.Flow);
  EdgeInsets.init(_all:)();
  v87 = v86;
  v89 = v88;
  v91 = v90;
  v93 = v92;
  v94 = v458;
  outlined init with take of URL?(v80, v458, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE4boldyQrSbFQOyACyACyAA4TextVAA16_FixedSizeLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_AMyAA0G9AlignmentOGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE4boldyQrSbFQOyACyACyAA4TextVAA16_FixedSizeLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_AMyAA0G9AlignmentOGGMR);
  v95 = v94 + *(v459 + 36);
  *v95 = v83;
  *(v95 + 8) = v87;
  *(v95 + 16) = v89;
  *(v95 + 24) = v91;
  *(v95 + 32) = v93;
  *(v95 + 40) = 0;
  outlined init with take of URL?(v94, v467, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE4boldyQrSbFQOyACyACyAA4TextVAA16_FixedSizeLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_AMyAA0G9AlignmentOGGAA08_PaddingJ0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE4boldyQrSbFQOyACyACyAA4TextVAA16_FixedSizeLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_AMyAA0G9AlignmentOGGAA08_PaddingJ0VGMR);
  v96 = v441;
  v97 = v441[9];
  v98 = *(v69 + v97);
  *v478 = Collaboration.Flow.subtitle(hasProfileEdit:)(*(v69 + v97));
  v457 = Text.init<A>(_:)();
  v456 = v99;
  v101 = v100;
  v458 = v102;
  v459 = swift_getKeyPath();
  v453 = v101 & 1;
  v478[0] = v101 & 1;
  v103 = swift_getKeyPath();
  v460 = v78;

  v104 = static Color.secondary.getter();
  v105 = swift_getKeyPath();
  v450 = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v107 = v106;
  v109 = v108;
  v111 = v110;
  v113 = v112;
  v478[0] = 0;
  v451 = static Edge.Set.bottom.getter();
  if (one-time initialization token for subtitleBottomPadding != -1)
  {
    swift_once();
  }

  v452 = v105;
  EdgeInsets.init(_all:)();
  v115 = v114;
  v117 = v116;
  v119 = v118;
  v121 = v120;
  if (v98)
  {
    v122 = v470;
    if (*(v69 + v96[10]))
    {
      type metadata accessor for InlineProfileEditingView.Context(0);
      lazy protocol witness table accessor for type InlineProfileEditingView.Context and conformance InlineProfileEditingView.Context(&lazy protocol witness table cache variable for type InlineProfileEditingView.Context and conformance InlineProfileEditingView.Context, type metadata accessor for InlineProfileEditingView.Context, &protocol conformance descriptor for InlineProfileEditingView.Context);
      v123 = StateObject.wrappedValue.getter();
      v124 = type metadata accessor for Collaboration.Flow.ProfileEditingView(0);
      v125 = v376;
      outlined init with copy of Collaboration.Flow(v69 + v122, v376 + *(v124 + 20), v126, type metadata accessor for Collaboration.Flow);
      *v125 = v123;
      LOBYTE(v123) = static Edge.Set.bottom.getter();
      EdgeInsets.init(_all:)();
      v127 = v423;
      v128 = v125 + *(v423 + 36);
      *v128 = v123;
      *(v128 + 1) = v129;
      *(v128 + 2) = v130;
      *(v128 + 3) = v131;
      *(v128 + 4) = v132;
      v128[40] = 0;
      outlined init with take of URL?(v125, v469, &_s7SwiftUI15ModifiedContentVy9MusicCore13CollaborationO0efB0E4FlowO18ProfileEditingView33_4FA82EB282576B4095E3FA5F35E498B8LLVAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVy9MusicCore13CollaborationO0efB0E4FlowO18ProfileEditingView33_4FA82EB282576B4095E3FA5F35E498B8LLVAA14_PaddingLayoutVGMR);
      v133 = v127;
      v134 = 0;
      goto LABEL_16;
    }

    v134 = 1;
  }

  else
  {
    v134 = 1;
    v122 = v470;
  }

  v133 = v423;
LABEL_16:
  (*(v422 + 56))(v469, v134, 1, v133);
  type metadata accessor for InlineProfileEditingView.Context(0);
  lazy protocol witness table accessor for type InlineProfileEditingView.Context and conformance InlineProfileEditingView.Context(&lazy protocol witness table cache variable for type InlineProfileEditingView.Context and conformance InlineProfileEditingView.Context, type metadata accessor for InlineProfileEditingView.Context, &protocol conformance descriptor for InlineProfileEditingView.Context);
  StateObject.wrappedValue.getter();
  v135 = InlineProfileEditingView.Context.canValidate.getter();

  v136 = !v135;
  v137 = v443;
  outlined init with copy of Collaboration.Flow(v69 + v122, v443, v138, type metadata accessor for Collaboration.Flow);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v455 = v103;
  v454 = v104;
  if (EnumCaseMultiPayload)
  {
    v406 = v117;
    v407 = v115;
    v404 = v121;
    v405 = v119;
    if (EnumCaseMultiPayload != 1)
    {
      LODWORD(v449) = v136;
      v175 = *(v69 + 8);
      LOBYTE(v477[0]) = *v69;
      v174 = v477[0];
      *(&v477[0] + 1) = v175;
      v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd, &_s7SwiftUI5StateVySbGMR);
      State.projectedValue.getter();
      v177 = v382;
      Toggle.init(isOn:label:)();
      v178 = static Edge.Set.all.getter();
      EdgeInsets.init(_all:)();
      v180 = v179;
      v182 = v181;
      v184 = v183;
      v186 = v185;
      v187 = v177 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ToggleVyAA4TextVGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA6ToggleVyAA4TextVGAA14_PaddingLayoutVGMR) + 36);
      *v187 = v178;
      *(v187 + 8) = v180;
      *(v187 + 16) = v182;
      *(v187 + 24) = v184;
      *(v187 + 32) = v186;
      *(v187 + 40) = 0;
      v188 = static Edge.Set.all.getter();
      *(v177 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6ToggleVyAA4TextVGAA14_PaddingLayoutVGAA24_BackgroundStyleModifierVyAA0iJ0VGGMd, &_s7SwiftUI15ModifiedContentVyACyAA6ToggleVyAA4TextVGAA14_PaddingLayoutVGAA24_BackgroundStyleModifierVyAA0iJ0VGGMR) + 36)) = v188;
      v189 = (v177 + *(v380 + 36));
      v190 = *(type metadata accessor for RoundedRectangle() + 20);
      v191 = enum case for RoundedCornerStyle.continuous(_:);
      v192 = type metadata accessor for RoundedCornerStyle();
      (*(*(v192 - 8) + 104))(&v189[v190], v191, v192);
      __asm { FMOV            V0.2D, #16.0 }

      *v189 = _Q0;
      *&v189[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11_ClipEffectVyAA16RoundedRectangleVGMd, &_s7SwiftUI11_ClipEffectVyAA16RoundedRectangleVGMR) + 36)] = 256;
      static Alignment.center.getter();
      _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
      v198 = v383;
      outlined init with take of URL?(v177, v383, &_s7SwiftUI15ModifiedContentVyACyACyAA6ToggleVyAA4TextVGAA14_PaddingLayoutVGAA24_BackgroundStyleModifierVyAA0iJ0VGGAA11_ClipEffectVyAA16RoundedRectangleVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6ToggleVyAA4TextVGAA14_PaddingLayoutVGAA24_BackgroundStyleModifierVyAA0iJ0VGGAA11_ClipEffectVyAA16RoundedRectangleVGGMR);
      v199 = (v198 + *(v381 + 36));
      v200 = v505;
      v199[4] = v504;
      v199[5] = v200;
      v199[6] = v506;
      v201 = v501;
      *v199 = v500;
      v199[1] = v201;
      v202 = v503;
      v199[2] = v502;
      v199[3] = v202;
      outlined init with take of URL?(v198, v426, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6ToggleVyAA4TextVGAA14_PaddingLayoutVGAA24_BackgroundStyleModifierVyAA0iJ0VGGAA11_ClipEffectVyAA16RoundedRectangleVGGAA010_FlexFrameH0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6ToggleVyAA4TextVGAA14_PaddingLayoutVGAA24_BackgroundStyleModifierVyAA0iJ0VGGAA11_ClipEffectVyAA16RoundedRectangleVGGAA010_FlexFrameH0VGMR);
      v478[0] = v174;
      *&v478[8] = v175;
      v434 = v176;
      State.wrappedValue.getter();
      v203 = v445;
      v204 = (v445 + 16);
      v205 = v430;
      String.LocalizationValue.init(stringLiteral:)();
      v215 = v431;
      (*v204)(v427, v205, v431);
      if (one-time initialization token for module != -1)
      {
        swift_once();
      }

      v216 = static NSBundle.module;
      static Locale.current.getter();
      v217 = String.init(localized:table:bundle:locale:comment:)();
      v219 = v218;
      v441 = v113;
      v443 = v111;
      v446 = v109;
      v447 = v107;
      (*(v203 + 8))(v205, v215);
      *v478 = v217;
      *&v478[8] = v219;
      v445 = Text.init<A>(_:)();
      v442 = v220;
      LOBYTE(v217) = v221;
      v433 = v222;
      static Alignment.leading.getter();
      _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
      *&v479[54] = v511;
      *&v479[70] = v512;
      *&v479[86] = v513;
      *&v479[102] = v514;
      *&v479[6] = v508;
      *&v479[22] = v509;
      v223 = v217 & 1;
      v480 = v217 & 1;
      *&v479[38] = v510;
      v431 = swift_getKeyPath();
      v224 = static HierarchicalShapeStyle.secondary.getter();
      v225 = static Font.footnote.getter();
      v226 = swift_getKeyPath();
      v227 = static Edge.Set.horizontal.getter();
      EdgeInsets.init(_all:)();
      v229 = v228;
      v231 = v230;
      v233 = v232;
      v235 = v234;
      v481 = 0;
      v236 = static Edge.Set.top.getter();
      if (one-time initialization token for toggleDescriptionTextTopPadding != -1)
      {
        swift_once();
      }

      EdgeInsets.init(_all:)();
      v238 = v237;
      v240 = v239;
      v242 = v241;
      v244 = v243;
      v482 = 0;
      v245 = static Edge.Set.bottom.getter();
      EdgeInsets.init(_all:)();
      *&v472[98] = *&v479[64];
      *&v472[114] = *&v479[80];
      *&v472[130] = *&v479[96];
      *&v472[34] = *v479;
      *&v472[50] = *&v479[16];
      *&v472[66] = *&v479[32];
      v483 = 0;
      *v472 = v445;
      *&v472[8] = v442;
      v472[16] = v223;
      *&v472[24] = v433;
      *&v472[32] = 256;
      *&v472[82] = *&v479[48];
      *&v472[144] = *&v479[110];
      *&v472[152] = v431;
      v472[160] = 0;
      *&v472[164] = v224;
      *&v472[168] = v226;
      *&v472[176] = v225;
      v472[184] = v227;
      *&v472[192] = v229;
      *&v472[200] = v231;
      *&v472[208] = v233;
      *&v472[216] = v235;
      v472[224] = 0;
      v472[232] = v236;
      *&v472[240] = v238;
      *&v472[248] = v240;
      *&v472[256] = v242;
      *&v472[264] = v244;
      v472[272] = 0;
      *&v472[273] = v484;
      *&v472[276] = *(&v484 + 3);
      v472[280] = v245;
      *&v472[281] = v525;
      *&v472[284] = *(&v525 + 3);
      *&v472[288] = v246;
      *&v472[296] = v247;
      *&v472[304] = v248;
      *&v472[312] = v249;
      v472[320] = 0;
      v250 = v466;
      v251 = Collaboration.Flow.buttonActionTitle.getter();
      v253 = v252;
      v254 = v448;
      outlined init with copy of Collaboration.Flow(v250, v448, v255, type metadata accessor for Collaboration.Flow.View);
      v256 = (*(v432 + 80) + 16) & ~*(v432 + 80);
      v257 = swift_allocObject();
      outlined init with take of Collaboration.Flow.Collaborator(v254, v257 + v256, type metadata accessor for Collaboration.Flow.View);
      LOBYTE(v477[0]) = 0;
      State.init(wrappedValue:)();
      v258 = v478[0];
      v259 = *&v478[8];
      v260 = swift_getKeyPath();
      v473 = 0;
      v261 = swift_getKeyPath();
      v262 = swift_allocObject();
      *(v262 + 16) = v449 & 1;
      *v478 = v251;
      *&v478[8] = v253;
      v478[16] = 0;
      *&v478[17] = v476[0];
      *&v478[20] = *(v476 + 3);
      *&v478[24] = partial apply for closure #2 in closure #1 in Collaboration.Flow.View.body.getter;
      *&v478[32] = v257;
      v478[40] = v258;
      *&v478[41] = v475[0];
      *&v478[44] = *(v475 + 3);
      *&v478[48] = v259;
      *&v478[56] = v260;
      v478[64] = v473;
      *&v478[65] = *v474;
      *&v478[68] = *&v474[3];
      *&v478[72] = v261;
      *&v478[80] = closure #1 in View.disabled(_:)partial apply;
      *&v478[88] = v262;
      v263 = *(v250 + 24);
      LOBYTE(v471[0]) = *(v250 + 16);
      *(&v471[0] + 1) = v263;
      State.projectedValue.getter();
      v449 = &v375;
      LODWORD(v448) = LOBYTE(v477[1]);
      __chkstk_darwin();
      v466 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy9MusicCore13CollaborationO0efB0E4FlowO12ActionButton33_4FA82EB282576B4095E3FA5F35E498B8LLVAA32_EnvironmentKeyTransformModifierVySbGGMd, &_s7SwiftUI15ModifiedContentVy9MusicCore13CollaborationO0efB0E4FlowO12ActionButton33_4FA82EB282576B4095E3FA5F35E498B8LLVAA32_EnvironmentKeyTransformModifierVySbGGMR);
      v470 = lazy protocol witness table accessor for type ModifiedContent<Collaboration.Flow.ActionButton, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>();
      v264 = v417;
      View.alert(isPresented:content:)();

      v494 = *&v478[32];
      v495 = *&v478[48];
      v496 = *&v478[64];
      v497 = *&v478[80];
      v492 = *v478;
      v493 = *&v478[16];
      outlined destroy of TaskPriority?(&v492, &_s7SwiftUI15ModifiedContentVy9MusicCore13CollaborationO0efB0E4FlowO12ActionButton33_4FA82EB282576B4095E3FA5F35E498B8LLVAA32_EnvironmentKeyTransformModifierVySbGGMd, &_s7SwiftUI15ModifiedContentVy9MusicCore13CollaborationO0efB0E4FlowO12ActionButton33_4FA82EB282576B4095E3FA5F35E498B8LLVAA32_EnvironmentKeyTransformModifierVySbGGMR);
      v265 = v399;
      outlined init with copy of TaskPriority?(v426, v399, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6ToggleVyAA4TextVGAA14_PaddingLayoutVGAA24_BackgroundStyleModifierVyAA0iJ0VGGAA11_ClipEffectVyAA16RoundedRectangleVGGAA010_FlexFrameH0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6ToggleVyAA4TextVGAA14_PaddingLayoutVGAA24_BackgroundStyleModifierVyAA0iJ0VGGAA11_ClipEffectVyAA16RoundedRectangleVGGAA010_FlexFrameH0VGMR);
      memcpy(v471, v472, 0x141uLL);
      v266 = *(v444 + 16);
      v267 = v400;
      v266(v400, v264, v428);
      v268 = v401;
      outlined init with copy of TaskPriority?(v265, v401, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6ToggleVyAA4TextVGAA14_PaddingLayoutVGAA24_BackgroundStyleModifierVyAA0iJ0VGGAA11_ClipEffectVyAA16RoundedRectangleVGGAA010_FlexFrameH0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6ToggleVyAA4TextVGAA14_PaddingLayoutVGAA24_BackgroundStyleModifierVyAA0iJ0VGGAA11_ClipEffectVyAA16RoundedRectangleVGGAA010_FlexFrameH0VGMR);
      v269 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA6ToggleVyAA4TextVGAA14_PaddingLayoutVGAA24_BackgroundStyleModifierVyAA0iJ0VGGAA11_ClipEffectVyAA16RoundedRectangleVGGAA010_FlexFrameH0VG_ACyACyACyACyACyACyACyACyAgA010_FixedSizeH0VGAYGAA022_EnvironmentKeyWritingK0VyAA0F9AlignmentOGGAA011_ForegroundjK0VyAA017HierarchicalShapeJ0VGGA4_yAA4FontVSgGGAJGAJGAJGAA4ViewPAAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyACy9MusicCore13CollaborationO09MusicCoreB0E4FlowO12ActionButton33_4FA82EB282576B4095E3FA5F35E498B8LLVAA01_tu9TransformK0VySbGG_Qo_tMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6ToggleVyAA4TextVGAA14_PaddingLayoutVGAA24_BackgroundStyleModifierVyAA0iJ0VGGAA11_ClipEffectVyAA16RoundedRectangleVGGAA010_FlexFrameH0VG_ACyACyACyACyACyACyACyACyAgA010_FixedSizeH0VGAYGAA022_EnvironmentKeyWritingK0VyAA0F9AlignmentOGGAA011_ForegroundjK0VyAA017HierarchicalShapeJ0VGGA4_yAA4FontVSgGGAJGAJGAJGAA4ViewPAAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyACy9MusicCore13CollaborationO09MusicCoreB0E4FlowO12ActionButton33_4FA82EB282576B4095E3FA5F35E498B8LLVAA01_tu9TransformK0VySbGG_Qo_tMR);
      v270 = *(v269 + 48);
      memcpy(v477, v471, 0x141uLL);
      memcpy((v268 + v270), v471, 0x141uLL);
      v271 = v428;
      v266((v268 + *(v269 + 64)), v267, v428);
      outlined init with copy of TaskPriority?(v472, v478, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyACyAA4TextVAA16_FixedSizeLayoutVGAA010_FlexFrameH0VGAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA016_ForegroundStyleN0VyAA017HierarchicalShapeQ0VGGAMyAA4FontVSgGGAA08_PaddingH0VGA2_GA2_GMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyACyAA4TextVAA16_FixedSizeLayoutVGAA010_FlexFrameH0VGAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA016_ForegroundStyleN0VyAA017HierarchicalShapeQ0VGGAMyAA4FontVSgGGAA08_PaddingH0VGA2_GA2_GMR);
      outlined init with copy of TaskPriority?(v477, v478, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyACyAA4TextVAA16_FixedSizeLayoutVGAA010_FlexFrameH0VGAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA016_ForegroundStyleN0VyAA017HierarchicalShapeQ0VGGAMyAA4FontVSgGGAA08_PaddingH0VGA2_GA2_GMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyACyAA4TextVAA16_FixedSizeLayoutVGAA010_FlexFrameH0VGAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA016_ForegroundStyleN0VyAA017HierarchicalShapeQ0VGGAMyAA4FontVSgGGAA08_PaddingH0VGA2_GA2_GMR);
      v449 = *(v444 + 8);
      v444 += 8;
      (v449)(v267, v271);
      memcpy(v478, v471, sizeof(v478));
      outlined destroy of TaskPriority?(v478, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyACyAA4TextVAA16_FixedSizeLayoutVGAA010_FlexFrameH0VGAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA016_ForegroundStyleN0VyAA017HierarchicalShapeQ0VGGAMyAA4FontVSgGGAA08_PaddingH0VGA2_GA2_GMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyACyAA4TextVAA16_FixedSizeLayoutVGAA010_FlexFrameH0VGAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA016_ForegroundStyleN0VyAA017HierarchicalShapeQ0VGGAMyAA4FontVSgGGAA08_PaddingH0VGA2_GA2_GMR);
      outlined destroy of TaskPriority?(v265, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6ToggleVyAA4TextVGAA14_PaddingLayoutVGAA24_BackgroundStyleModifierVyAA0iJ0VGGAA11_ClipEffectVyAA16RoundedRectangleVGGAA010_FlexFrameH0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6ToggleVyAA4TextVGAA14_PaddingLayoutVGAA24_BackgroundStyleModifierVyAA0iJ0VGGAA11_ClipEffectVyAA16RoundedRectangleVGGAA010_FlexFrameH0VGMR);
      outlined init with copy of TaskPriority?(v268, v420, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAEyAEyAA6ToggleVyAA4TextVGAA14_PaddingLayoutVGAA24_BackgroundStyleModifierVyAA0kL0VGGAA11_ClipEffectVyAA16RoundedRectangleVGGAA010_FlexFrameJ0VG_AEyAEyAEyAEyAEyAEyAEyAEyAiA010_FixedSizeJ0VGA_GAA022_EnvironmentKeyWritingM0VyAA0H9AlignmentOGGAA011_ForegroundlM0VyAA017HierarchicalShapeL0VGGA6_yAA4FontVSgGGALGALGALGAA0D0PAAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyAEy9MusicCore13CollaborationO09MusicCoreB0E4FlowO12ActionButton33_4FA82EB282576B4095E3FA5F35E498B8LLVAA01_vw9TransformM0VySbGG_Qo_tGMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAEyAEyAA6ToggleVyAA4TextVGAA14_PaddingLayoutVGAA24_BackgroundStyleModifierVyAA0kL0VGGAA11_ClipEffectVyAA16RoundedRectangleVGGAA010_FlexFrameJ0VG_AEyAEyAEyAEyAEyAEyAEyAEyAiA010_FixedSizeJ0VGA_GAA022_EnvironmentKeyWritingM0VyAA0H9AlignmentOGGAA011_ForegroundlM0VyAA017HierarchicalShapeL0VGGA6_yAA4FontVSgGGALGALGALGAA0D0PAAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyAEy9MusicCore13CollaborationO09MusicCoreB0E4FlowO12ActionButton33_4FA82EB282576B4095E3FA5F35E498B8LLVAA01_vw9TransformM0VySbGG_Qo_tGMR);
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Toggle<Text>, _PaddingLayout>, _BackgroundStyleModifier<BackgroundStyle>>, _ClipEffect<RoundedRectangle>>, _FlexFrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FixedSizeLayout>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<TextAlignment>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _PaddingLayout>, _PaddingLayout>, <<opaque return type of View.alert(isPresented:content:)>>.0)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAEyAEyAA6ToggleVyAA4TextVGAA14_PaddingLayoutVGAA24_BackgroundStyleModifierVyAA0kL0VGGAA11_ClipEffectVyAA16RoundedRectangleVGGAA010_FlexFrameJ0VG_AEyAEyAEyAEyAEyAEyAEyAEyAiA010_FixedSizeJ0VGA_GAA022_EnvironmentKeyWritingM0VyAA0H9AlignmentOGGAA011_ForegroundlM0VyAA017HierarchicalShapeL0VGGA6_yAA4FontVSgGGALGALGALGAA0D0PAAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyAEy9MusicCore13CollaborationO09MusicCoreB0E4FlowO12ActionButton33_4FA82EB282576B4095E3FA5F35E498B8LLVAA01_vw9TransformM0VySbGG_Qo_tGMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAEyAEyAA6ToggleVyAA4TextVGAA14_PaddingLayoutVGAA24_BackgroundStyleModifierVyAA0kL0VGGAA11_ClipEffectVyAA16RoundedRectangleVGGAA010_FlexFrameJ0VG_AEyAEyAEyAEyAEyAEyAEyAEyAiA010_FixedSizeJ0VGA_GAA022_EnvironmentKeyWritingM0VyAA0H9AlignmentOGGAA011_ForegroundlM0VyAA017HierarchicalShapeL0VGGA6_yAA4FontVSgGGALGALGALGAA0D0PAAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyAEy9MusicCore13CollaborationO09MusicCoreB0E4FlowO12ActionButton33_4FA82EB282576B4095E3FA5F35E498B8LLVAA01_vw9TransformM0VySbGG_Qo_tGMR, &protocol conformance descriptor for TupleView<A>);
      v272 = v421;
      _ConditionalContent<>.init(storage:)();
      outlined init with copy of TaskPriority?(v272, v438, &_s7SwiftUI19_ConditionalContentVyAA9TupleViewVyAA08ModifiedD0VyAGyAGyAGyAA6ToggleVyAA4TextVGAA14_PaddingLayoutVGAA24_BackgroundStyleModifierVyAA0lM0VGGAA11_ClipEffectVyAA16RoundedRectangleVGGAA010_FlexFrameK0VG_AGyAGyAGyAGyAGyAGyAGyAGyAkA010_FixedSizeK0VGA1_GAA022_EnvironmentKeyWritingN0VyAA0I9AlignmentOGGAA011_ForegroundmN0VyAA017HierarchicalShapeM0VGGA8_yAA4FontVSgGGANGANGANGAA0F0PAAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyAGy9MusicCore13CollaborationO09MusicCoreB0E4FlowO12ActionButton33_4FA82EB282576B4095E3FA5F35E498B8LLVAA01_wx9TransformN0VySbGG_Qo_tGA49_GMd, &_s7SwiftUI19_ConditionalContentVyAA9TupleViewVyAA08ModifiedD0VyAGyAGyAGyAA6ToggleVyAA4TextVGAA14_PaddingLayoutVGAA24_BackgroundStyleModifierVyAA0lM0VGGAA11_ClipEffectVyAA16RoundedRectangleVGGAA010_FlexFrameK0VG_AGyAGyAGyAGyAGyAGyAGyAGyAkA010_FixedSizeK0VGA1_GAA022_EnvironmentKeyWritingN0VyAA0I9AlignmentOGGAA011_ForegroundmN0VyAA017HierarchicalShapeM0VGGA8_yAA4FontVSgGGANGANGANGAA0F0PAAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyAGy9MusicCore13CollaborationO09MusicCoreB0E4FlowO12ActionButton33_4FA82EB282576B4095E3FA5F35E498B8LLVAA01_wx9TransformN0VySbGG_Qo_tGA49_GMR);
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type _ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Toggle<Text>, _PaddingLayout>, _BackgroundStyleModifier<BackgroundStyle>>, _ClipEffect<RoundedRectangle>>, _FlexFrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FixedSizeLayout>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<TextAlignment>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _PaddingLayout>, _PaddingLayout>, <<opaque return type of View.alert(isPresented:content:)>>.0)>, ModifiedContent<Collaboration.Flow.ActionButton, _EnvironmentKeyTransformModifier<Bool>>> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of ArtworkImage.artworkPlaceholder<A>(_:)>>.0, _FrameLayout>, _ClipEffect<Circle>>, _PaddingLayout>, ModifiedContent<Collaboration.Flow.ActionButton, _PaddingLayout>, ModifiedContent<Collaboration.Flow.ActionButton, _PaddingLayout>)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAEy010_MusicKit_aB012ArtworkImageV01_gh9Internal_aB0E18artworkPlaceholderyQrx0gH00I0VSg_So6CGSizeVAA5ColorVtcAA0D0RzlFQOy_0g4CoreB0015CNSwiftUIAvatarD0VQo_AA12_FrameLayoutVGAA11_ClipEffectVyAA6CircleVGGAA08_PaddingT0VG_AEy0gP013CollaborationOATE4FlowO12ActionButton33_4FA82EB282576B4095E3FA5F35E498B8LLVA6_GA16_tGMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAEy010_MusicKit_aB012ArtworkImageV01_gh9Internal_aB0E18artworkPlaceholderyQrx0gH00I0VSg_So6CGSizeVAA5ColorVtcAA0D0RzlFQOy_0g4CoreB0015CNSwiftUIAvatarD0VQo_AA12_FrameLayoutVGAA11_ClipEffectVyAA6CircleVGGAA08_PaddingT0VG_AEy0gP013CollaborationOATE4FlowO12ActionButton33_4FA82EB282576B4095E3FA5F35E498B8LLVA6_GA16_tGMR, &protocol conformance descriptor for TupleView<A>);
      _ConditionalContent<>.init(storage:)();
      outlined destroy of TaskPriority?(v472, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyACyAA4TextVAA16_FixedSizeLayoutVGAA010_FlexFrameH0VGAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA016_ForegroundStyleN0VyAA017HierarchicalShapeQ0VGGAMyAA4FontVSgGGAA08_PaddingH0VGA2_GA2_GMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyACyAA4TextVAA16_FixedSizeLayoutVGAA010_FlexFrameH0VGAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAA016_ForegroundStyleN0VyAA017HierarchicalShapeQ0VGGAMyAA4FontVSgGGAA08_PaddingH0VGA2_GA2_GMR);
      outlined destroy of TaskPriority?(v272, &_s7SwiftUI19_ConditionalContentVyAA9TupleViewVyAA08ModifiedD0VyAGyAGyAGyAA6ToggleVyAA4TextVGAA14_PaddingLayoutVGAA24_BackgroundStyleModifierVyAA0lM0VGGAA11_ClipEffectVyAA16RoundedRectangleVGGAA010_FlexFrameK0VG_AGyAGyAGyAGyAGyAGyAGyAGyAkA010_FixedSizeK0VGA1_GAA022_EnvironmentKeyWritingN0VyAA0I9AlignmentOGGAA011_ForegroundmN0VyAA017HierarchicalShapeM0VGGA8_yAA4FontVSgGGANGANGANGAA0F0PAAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyAGy9MusicCore13CollaborationO09MusicCoreB0E4FlowO12ActionButton33_4FA82EB282576B4095E3FA5F35E498B8LLVAA01_wx9TransformN0VySbGG_Qo_tGA49_GMd, &_s7SwiftUI19_ConditionalContentVyAA9TupleViewVyAA08ModifiedD0VyAGyAGyAGyAA6ToggleVyAA4TextVGAA14_PaddingLayoutVGAA24_BackgroundStyleModifierVyAA0lM0VGGAA11_ClipEffectVyAA16RoundedRectangleVGGAA010_FlexFrameK0VG_AGyAGyAGyAGyAGyAGyAGyAGyAkA010_FixedSizeK0VGA1_GAA022_EnvironmentKeyWritingN0VyAA0I9AlignmentOGGAA011_ForegroundmN0VyAA017HierarchicalShapeM0VGGA8_yAA4FontVSgGGANGANGANGAA0F0PAAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyAGy9MusicCore13CollaborationO09MusicCoreB0E4FlowO12ActionButton33_4FA82EB282576B4095E3FA5F35E498B8LLVAA01_wx9TransformN0VySbGG_Qo_tGA49_GMR);
      outlined destroy of TaskPriority?(v268, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAEyAEyAA6ToggleVyAA4TextVGAA14_PaddingLayoutVGAA24_BackgroundStyleModifierVyAA0kL0VGGAA11_ClipEffectVyAA16RoundedRectangleVGGAA010_FlexFrameJ0VG_AEyAEyAEyAEyAEyAEyAEyAEyAiA010_FixedSizeJ0VGA_GAA022_EnvironmentKeyWritingM0VyAA0H9AlignmentOGGAA011_ForegroundlM0VyAA017HierarchicalShapeL0VGGA6_yAA4FontVSgGGALGALGALGAA0D0PAAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyAEy9MusicCore13CollaborationO09MusicCoreB0E4FlowO12ActionButton33_4FA82EB282576B4095E3FA5F35E498B8LLVAA01_vw9TransformM0VySbGG_Qo_tGMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAEyAEyAA6ToggleVyAA4TextVGAA14_PaddingLayoutVGAA24_BackgroundStyleModifierVyAA0kL0VGGAA11_ClipEffectVyAA16RoundedRectangleVGGAA010_FlexFrameJ0VG_AEyAEyAEyAEyAEyAEyAEyAEyAiA010_FixedSizeJ0VGA_GAA022_EnvironmentKeyWritingM0VyAA0H9AlignmentOGGAA011_ForegroundlM0VyAA017HierarchicalShapeL0VGGA6_yAA4FontVSgGGALGALGALGAA0D0PAAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyAEy9MusicCore13CollaborationO09MusicCoreB0E4FlowO12ActionButton33_4FA82EB282576B4095E3FA5F35E498B8LLVAA01_vw9TransformM0VySbGG_Qo_tGMR);
      (v449)(v417, v428);
      outlined destroy of TaskPriority?(v426, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6ToggleVyAA4TextVGAA14_PaddingLayoutVGAA24_BackgroundStyleModifierVyAA0iJ0VGGAA11_ClipEffectVyAA16RoundedRectangleVGGAA010_FlexFrameH0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6ToggleVyAA4TextVGAA14_PaddingLayoutVGAA24_BackgroundStyleModifierVyAA0iJ0VGGAA11_ClipEffectVyAA16RoundedRectangleVGGAA010_FlexFrameH0VGMR);
      v107 = v447;
      v109 = v446;
      v111 = v443;
      v113 = v441;
      goto LABEL_41;
    }

    v140 = *(v433 + 32);
    v470 = v433 + 32;
    v449 = v140;
    (v140)(v446, v137, v447);
    v141 = v424;
    Playlist.Collaborator.artworkViewModel.getter(v424);
    v142 = Playlist.Collaborator.name.getter();
    v144 = v143;
    if (one-time initialization token for avatarSizeLength != -1)
    {
      swift_once();
    }

    (*(v412 + 104))(v425, enum case for ArtworkImage.ReusePolicy.reusableForDistinctItems(_:), v414);
    v145 = swift_allocObject();
    *(v145 + 16) = v142;
    *(v145 + 24) = v144;
    v146 = v386;
    outlined init with copy of TaskPriority?(v141, v386, &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgMd, &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgMR);
    v147 = type metadata accessor for ArtworkImage.ViewModel(0);
    v443 = *(*(v147 - 8) + 48);
    v148 = (v443)(v146, 1, v147);
    v149 = v396;
    v150 = v388;
    v444 = v145;
    if (v148 == 1)
    {
      outlined destroy of TaskPriority?(v146, &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgMd, &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgMR);
      v151 = type metadata accessor for Artwork();
      (*(*(v151 - 8) + 56))(v150, 1, 1, v151);
    }

    else
    {
      v206 = type metadata accessor for Artwork();
      v207 = *(v206 - 8);
      (*(v207 + 16))(v150, v146, v206);
      outlined destroy of Collaboration.Flow(v146, type metadata accessor for ArtworkImage.ViewModel);
      (*(v207 + 56))(v150, 0, 1, v206);
    }

    outlined init with copy of TaskPriority?(v150, v389, &_s8MusicKit7ArtworkVSgMd_0, &_s8MusicKit7ArtworkVSgMR_0);
    ArtworkImage.init(_:width:height:)();
    outlined destroy of TaskPriority?(v150, &_s8MusicKit7ArtworkVSgMd_0, &_s8MusicKit7ArtworkVSgMR_0);
    ArtworkImage.artworkReusablePolicy(_:)();
    v208 = v387;
    outlined init with copy of TaskPriority?(v424, v387, &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgMd, &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgMR);
    if ((v443)(v208, 1, v147) == 1)
    {
      outlined destroy of TaskPriority?(v208, &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgMd, &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgMR);
      v209 = v378;
      v210 = v379;
      (*(v149 + 56))(v378, 1, 1, v379);
      v211 = v377;
    }

    else
    {
      v209 = v378;
      outlined init with copy of TaskPriority?(v208 + *(v147 + 20), v378, &_s8MusicKit7ArtworkV0aB8InternalE9CropStyleVSgMd_0, &_s8MusicKit7ArtworkV0aB8InternalE9CropStyleVSgMR_0);
      outlined destroy of Collaboration.Flow(v208, type metadata accessor for ArtworkImage.ViewModel);
      v210 = v379;
      v212 = (*(v149 + 48))(v209, 1, v379);
      v211 = v377;
      if (v212 != 1)
      {
        v214 = v395;
        (*(v149 + 32))(v395, v209, v210);
LABEL_38:
        v273 = v411;
        ArtworkImage.artworkCropStyle(_:)();
        (*(v149 + 8))(v214, v210);
        v274 = v398;
        v275 = *(v397 + 8);
        v275(v273, v398);
        v276 = v394;
        ArtworkImage.artworkIdealAspectRatio(_:contentMode:)();
        v275(v211, v274);
        lazy protocol witness table accessor for type CNSwiftUIAvatarView and conformance CNSwiftUIAvatarView();
        v277 = v393;
        ArtworkImage.artworkPlaceholder<A>(_:)();

        v275(v276, v274);
        v275(v413, v274);
        (*(v412 + 8))(v425, v414);
        outlined destroy of TaskPriority?(v424, &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgMd, &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgMR);
        static Alignment.center.getter();
        _FrameLayout.init(width:height:alignment:)();
        v278 = (v277 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy010_MusicKit_aB012ArtworkImageV01_ef9Internal_aB0E18artworkPlaceholderyQrx0eF00G0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_0e4CoreB0015CNSwiftUIAvatarN0VQo_AA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVy010_MusicKit_aB012ArtworkImageV01_ef9Internal_aB0E18artworkPlaceholderyQrx0eF00G0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_0e4CoreB0015CNSwiftUIAvatarN0VQo_AA12_FrameLayoutVGMR) + 36));
        v279 = v526;
        *v278 = v525;
        v278[1] = v279;
        v278[2] = v527;
        *(v277 + *(v391 + 36)) = 256;
        LOBYTE(v273) = static Edge.Set.top.getter();
        EdgeInsets.init(_all:)();
        v281 = v280;
        v283 = v282;
        v285 = v284;
        v287 = v286;
        v288 = v390;
        outlined init with take of URL?(v277, v390, &_s7SwiftUI15ModifiedContentVyACy010_MusicKit_aB012ArtworkImageV01_ef9Internal_aB0E18artworkPlaceholderyQrx0eF00G0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_0e4CoreB0015CNSwiftUIAvatarN0VQo_AA12_FrameLayoutVGAA11_ClipEffectVyAA6CircleVGGMd, &_s7SwiftUI15ModifiedContentVyACy010_MusicKit_aB012ArtworkImageV01_ef9Internal_aB0E18artworkPlaceholderyQrx0eF00G0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_0e4CoreB0015CNSwiftUIAvatarN0VQo_AA12_FrameLayoutVGAA11_ClipEffectVyAA6CircleVGGMR);
        v289 = v288 + *(v392 + 36);
        *v289 = v273;
        *(v289 + 8) = v281;
        *(v289 + 16) = v283;
        *(v289 + 24) = v285;
        *(v289 + 32) = v287;
        *(v289 + 40) = 0;
        outlined init with take of URL?(v288, v434, &_s7SwiftUI15ModifiedContentVyACyACy010_MusicKit_aB012ArtworkImageV01_ef9Internal_aB0E18artworkPlaceholderyQrx0eF00G0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_0e4CoreB0015CNSwiftUIAvatarN0VQo_AA12_FrameLayoutVGAA11_ClipEffectVyAA6CircleVGGAA08_PaddingS0VGMd, &_s7SwiftUI15ModifiedContentVyACyACy010_MusicKit_aB012ArtworkImageV01_ef9Internal_aB0E18artworkPlaceholderyQrx0eF00G0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_0e4CoreB0015CNSwiftUIAvatarN0VQo_AA12_FrameLayoutVGAA11_ClipEffectVyAA6CircleVGGAA08_PaddingS0VGMR);
        v290 = v430;
        String.LocalizationValue.init(stringLiteral:)();
        v291 = v445;
        v292 = *(v445 + 16);
        v293 = v431;
        v444 = v445 + 16;
        v443 = v292;
        v292();
        if (one-time initialization token for module != -1)
        {
          swift_once();
        }

        v294 = static NSBundle.module;
        v295 = static NSBundle.module;
        v442 = v294;
        v296 = v295;
        static Locale.current.getter();
        v297 = v296;
        v298 = String.init(localized:table:bundle:locale:comment:)();
        v421 = v299;
        v422 = v298;
        v300 = *(v291 + 8);
        v445 = v291 + 8;
        v441 = v300;
        v301.n128_f64[0] = (v300)(v290, v293);
        v428 = type metadata accessor for Collaboration.Flow.View;
        v302 = v448;
        outlined init with copy of Collaboration.Flow(v69, v448, v301, type metadata accessor for Collaboration.Flow.View);
        v303 = v433;
        v304 = *(v433 + 16);
        v425 = (v433 + 16);
        v426 = v304;
        v305 = v416;
        v306 = v447;
        v304(v416, v446, v447);
        v307 = *(v432 + 80);
        v308 = *(v303 + 80);
        v309 = (v307 + 16) & ~v307;
        v432 = v309;
        v310 = (v435 + v308 + v309) & ~v308;
        v435 = v307 | v308;
        v311 = v310;
        v423 = v310;
        v312 = swift_allocObject();
        v424 = type metadata accessor for Collaboration.Flow.View;
        outlined init with take of Collaboration.Flow.Collaborator(v302, v312 + v309, type metadata accessor for Collaboration.Flow.View);
        (v449)(v312 + v311, v305, v306);
        LOBYTE(v477[0]) = 0;
        State.init(wrappedValue:)();
        LOBYTE(v305) = v478[0];
        v313 = *&v478[8];
        v314 = swift_getKeyPath();
        LOBYTE(v475[0]) = 0;
        v315 = static Edge.Set.top.getter();
        v316 = v427;
        v317 = v315;
        EdgeInsets.init(_all:)();
        v472[0] = 0;
        *&v500 = v422;
        *(&v500 + 1) = v421;
        LOBYTE(v501) = 0;
        *(&v501 + 1) = partial apply for closure #5 in closure #1 in Collaboration.Flow.View.body.getter;
        *&v502 = v312;
        BYTE8(v502) = v305;
        *&v503 = v313;
        *(&v503 + 1) = v314;
        LOBYTE(v504) = v475[0];
        *(&v504 + 1) = *v478;
        DWORD1(v504) = *&v478[3];
        BYTE8(v504) = v317;
        HIDWORD(v504) = *(v477 + 3);
        *(&v504 + 9) = v477[0];
        *&v505 = v318;
        *(&v505 + 1) = v319;
        *&v506 = v320;
        *(&v506 + 1) = v321;
        v507 = 0;
        v322 = v430;
        String.LocalizationValue.init(stringLiteral:)();
        v323 = v431;
        (v443)(v316, v322, v431);
        static Locale.current.getter();
        v444 = String.init(localized:table:bundle:locale:comment:)();
        v443 = v324;
        v325.n128_f64[0] = (v441)(v322, v323);
        v326 = v448;
        outlined init with copy of Collaboration.Flow(v466, v448, v325, v428);
        v327 = v416;
        v328 = v447;
        v426(v416, v446, v447);
        v329 = v423;
        v330 = swift_allocObject();
        outlined init with take of Collaboration.Flow.Collaborator(v326, v330 + v432, v424);
        (v449)(v330 + v329, v327, v328);
        LOBYTE(v477[0]) = 0;
        State.init(wrappedValue:)();
        LOBYTE(v327) = v478[0];
        v331 = *&v478[8];
        v332 = swift_getKeyPath();
        LOBYTE(v476[0]) = 0;
        LOBYTE(v326) = static Edge.Set.top.getter();
        EdgeInsets.init(_all:)();
        v472[0] = 0;
        *&v508 = v444;
        *(&v508 + 1) = v443;
        LOBYTE(v509) = 1;
        *(&v509 + 1) = partial apply for closure #6 in closure #1 in Collaboration.Flow.View.body.getter;
        *&v510 = v330;
        BYTE8(v510) = v327;
        *&v511 = v331;
        *(&v511 + 1) = v332;
        LOBYTE(v512) = v476[0];
        *(&v512 + 1) = *v478;
        DWORD1(v512) = *&v478[3];
        BYTE8(v512) = v326;
        HIDWORD(v512) = *(v477 + 3);
        *(&v512 + 9) = v477[0];
        *&v513 = v333;
        *(&v513 + 1) = v334;
        *&v514 = v335;
        *(&v514 + 1) = v336;
        v515 = 0;
        v337 = v402;
        outlined init with copy of TaskPriority?(v434, v402, &_s7SwiftUI15ModifiedContentVyACyACy010_MusicKit_aB012ArtworkImageV01_ef9Internal_aB0E18artworkPlaceholderyQrx0eF00G0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_0e4CoreB0015CNSwiftUIAvatarN0VQo_AA12_FrameLayoutVGAA11_ClipEffectVyAA6CircleVGGAA08_PaddingS0VGMd, &_s7SwiftUI15ModifiedContentVyACyACy010_MusicKit_aB012ArtworkImageV01_ef9Internal_aB0E18artworkPlaceholderyQrx0eF00G0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_0e4CoreB0015CNSwiftUIAvatarN0VQo_AA12_FrameLayoutVGAA11_ClipEffectVyAA6CircleVGGAA08_PaddingS0VGMR);
        v496 = v504;
        v497 = v505;
        v498 = v506;
        v492 = v500;
        v493 = v501;
        v494 = v502;
        v495 = v503;
        v488 = v512;
        v489 = v513;
        v490 = v514;
        v484 = v508;
        v485 = v509;
        v486 = v510;
        v499 = v507;
        v491 = v515;
        v487 = v511;
        v338 = v403;
        outlined init with copy of TaskPriority?(v337, v403, &_s7SwiftUI15ModifiedContentVyACyACy010_MusicKit_aB012ArtworkImageV01_ef9Internal_aB0E18artworkPlaceholderyQrx0eF00G0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_0e4CoreB0015CNSwiftUIAvatarN0VQo_AA12_FrameLayoutVGAA11_ClipEffectVyAA6CircleVGGAA08_PaddingS0VGMd, &_s7SwiftUI15ModifiedContentVyACyACy010_MusicKit_aB012ArtworkImageV01_ef9Internal_aB0E18artworkPlaceholderyQrx0eF00G0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_0e4CoreB0015CNSwiftUIAvatarN0VQo_AA12_FrameLayoutVGAA11_ClipEffectVyAA6CircleVGGAA08_PaddingS0VGMR);
        v339 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACy010_MusicKit_aB012ArtworkImageV01_ef9Internal_aB0E18artworkPlaceholderyQrx0eF00G0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_0e4CoreB0015CNSwiftUIAvatarN0VQo_AA12_FrameLayoutVGAA11_ClipEffectVyAA6CircleVGGAA08_PaddingS0VG_ACy0eO013CollaborationOARE4FlowO12ActionButton33_4FA82EB282576B4095E3FA5F35E498B8LLVA4_GA14_tMd, &_s7SwiftUI15ModifiedContentVyACyACy010_MusicKit_aB012ArtworkImageV01_ef9Internal_aB0E18artworkPlaceholderyQrx0eF00G0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_0e4CoreB0015CNSwiftUIAvatarN0VQo_AA12_FrameLayoutVGAA11_ClipEffectVyAA6CircleVGGAA08_PaddingS0VG_ACy0eO013CollaborationOARE4FlowO12ActionButton33_4FA82EB282576B4095E3FA5F35E498B8LLVA4_GA14_tMR);
        v340 = v338 + *(v339 + 48);
        v341 = v499;
        LOBYTE(v471[7]) = v499;
        v343 = v497;
        v471[4] = v496;
        v342 = v496;
        v471[5] = v497;
        v471[6] = v498;
        v344 = v498;
        v346 = v493;
        v471[0] = v492;
        v345 = v492;
        v471[1] = v493;
        v347 = v495;
        v471[2] = v494;
        v471[3] = v495;
        *(v340 + 32) = v494;
        *(v340 + 48) = v347;
        *v340 = v345;
        *(v340 + 16) = v346;
        *(v340 + 112) = v341;
        *(v340 + 80) = v343;
        *(v340 + 96) = v344;
        *(v340 + 64) = v342;
        v348 = v338 + *(v339 + 64);
        *&v472[32] = v486;
        *&v472[48] = v487;
        *v472 = v484;
        *&v472[16] = v485;
        *&v472[64] = v488;
        *&v472[80] = v489;
        *&v472[96] = v490;
        v472[112] = v491;
        v349 = v488;
        v350 = v489;
        *(v348 + 64) = v488;
        *(v348 + 80) = v350;
        v351 = v490;
        *(v348 + 96) = v490;
        v352 = v491;
        *(v348 + 112) = v491;
        v353 = v484;
        v354 = v485;
        *v348 = v484;
        *(v348 + 16) = v354;
        v355 = v486;
        v356 = v487;
        *(v348 + 32) = v486;
        *(v348 + 48) = v356;
        v477[0] = v353;
        v477[1] = v354;
        v477[2] = v355;
        v477[3] = v356;
        v477[4] = v349;
        v477[5] = v350;
        v477[6] = v351;
        LOBYTE(v477[7]) = v352;
        outlined init with copy of TaskPriority?(&v500, v478, &_s7SwiftUI15ModifiedContentVy9MusicCore13CollaborationO0efB0E4FlowO12ActionButton33_4FA82EB282576B4095E3FA5F35E498B8LLVAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVy9MusicCore13CollaborationO0efB0E4FlowO12ActionButton33_4FA82EB282576B4095E3FA5F35E498B8LLVAA14_PaddingLayoutVGMR);
        outlined init with copy of TaskPriority?(&v508, v478, &_s7SwiftUI15ModifiedContentVy9MusicCore13CollaborationO0efB0E4FlowO12ActionButton33_4FA82EB282576B4095E3FA5F35E498B8LLVAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVy9MusicCore13CollaborationO0efB0E4FlowO12ActionButton33_4FA82EB282576B4095E3FA5F35E498B8LLVAA14_PaddingLayoutVGMR);
        outlined init with copy of TaskPriority?(v471, v478, &_s7SwiftUI15ModifiedContentVy9MusicCore13CollaborationO0efB0E4FlowO12ActionButton33_4FA82EB282576B4095E3FA5F35E498B8LLVAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVy9MusicCore13CollaborationO0efB0E4FlowO12ActionButton33_4FA82EB282576B4095E3FA5F35E498B8LLVAA14_PaddingLayoutVGMR);
        outlined init with copy of TaskPriority?(v472, v478, &_s7SwiftUI15ModifiedContentVy9MusicCore13CollaborationO0efB0E4FlowO12ActionButton33_4FA82EB282576B4095E3FA5F35E498B8LLVAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVy9MusicCore13CollaborationO0efB0E4FlowO12ActionButton33_4FA82EB282576B4095E3FA5F35E498B8LLVAA14_PaddingLayoutVGMR);
        outlined destroy of TaskPriority?(v477, &_s7SwiftUI15ModifiedContentVy9MusicCore13CollaborationO0efB0E4FlowO12ActionButton33_4FA82EB282576B4095E3FA5F35E498B8LLVAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVy9MusicCore13CollaborationO0efB0E4FlowO12ActionButton33_4FA82EB282576B4095E3FA5F35E498B8LLVAA14_PaddingLayoutVGMR);
        *&v478[64] = v496;
        *&v478[80] = v497;
        *&v478[96] = v498;
        v478[112] = v499;
        *v478 = v492;
        *&v478[16] = v493;
        *&v478[32] = v494;
        *&v478[48] = v495;
        outlined destroy of TaskPriority?(v478, &_s7SwiftUI15ModifiedContentVy9MusicCore13CollaborationO0efB0E4FlowO12ActionButton33_4FA82EB282576B4095E3FA5F35E498B8LLVAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVy9MusicCore13CollaborationO0efB0E4FlowO12ActionButton33_4FA82EB282576B4095E3FA5F35E498B8LLVAA14_PaddingLayoutVGMR);
        outlined destroy of TaskPriority?(v337, &_s7SwiftUI15ModifiedContentVyACyACy010_MusicKit_aB012ArtworkImageV01_ef9Internal_aB0E18artworkPlaceholderyQrx0eF00G0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_0e4CoreB0015CNSwiftUIAvatarN0VQo_AA12_FrameLayoutVGAA11_ClipEffectVyAA6CircleVGGAA08_PaddingS0VGMd, &_s7SwiftUI15ModifiedContentVyACyACy010_MusicKit_aB012ArtworkImageV01_ef9Internal_aB0E18artworkPlaceholderyQrx0eF00G0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_0e4CoreB0015CNSwiftUIAvatarN0VQo_AA12_FrameLayoutVGAA11_ClipEffectVyAA6CircleVGGAA08_PaddingS0VGMR);
        outlined init with copy of TaskPriority?(v338, v438, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAEy010_MusicKit_aB012ArtworkImageV01_gh9Internal_aB0E18artworkPlaceholderyQrx0gH00I0VSg_So6CGSizeVAA5ColorVtcAA0D0RzlFQOy_0g4CoreB0015CNSwiftUIAvatarD0VQo_AA12_FrameLayoutVGAA11_ClipEffectVyAA6CircleVGGAA08_PaddingT0VG_AEy0gP013CollaborationOATE4FlowO12ActionButton33_4FA82EB282576B4095E3FA5F35E498B8LLVA6_GA16_tGMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAEy010_MusicKit_aB012ArtworkImageV01_gh9Internal_aB0E18artworkPlaceholderyQrx0gH00I0VSg_So6CGSizeVAA5ColorVtcAA0D0RzlFQOy_0g4CoreB0015CNSwiftUIAvatarD0VQo_AA12_FrameLayoutVGAA11_ClipEffectVyAA6CircleVGGAA08_PaddingT0VG_AEy0gP013CollaborationOATE4FlowO12ActionButton33_4FA82EB282576B4095E3FA5F35E498B8LLVA6_GA16_tGMR);
        swift_storeEnumTagMultiPayload();
        lazy protocol witness table accessor for type _ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Toggle<Text>, _PaddingLayout>, _BackgroundStyleModifier<BackgroundStyle>>, _ClipEffect<RoundedRectangle>>, _FlexFrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FixedSizeLayout>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<TextAlignment>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _PaddingLayout>, _PaddingLayout>, <<opaque return type of View.alert(isPresented:content:)>>.0)>, ModifiedContent<Collaboration.Flow.ActionButton, _EnvironmentKeyTransformModifier<Bool>>> and conformance <> _ConditionalContent<A, B>();
        lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of ArtworkImage.artworkPlaceholder<A>(_:)>>.0, _FrameLayout>, _ClipEffect<Circle>>, _PaddingLayout>, ModifiedContent<Collaboration.Flow.ActionButton, _PaddingLayout>, ModifiedContent<Collaboration.Flow.ActionButton, _PaddingLayout>)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAEy010_MusicKit_aB012ArtworkImageV01_gh9Internal_aB0E18artworkPlaceholderyQrx0gH00I0VSg_So6CGSizeVAA5ColorVtcAA0D0RzlFQOy_0g4CoreB0015CNSwiftUIAvatarD0VQo_AA12_FrameLayoutVGAA11_ClipEffectVyAA6CircleVGGAA08_PaddingT0VG_AEy0gP013CollaborationOATE4FlowO12ActionButton33_4FA82EB282576B4095E3FA5F35E498B8LLVA6_GA16_tGMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAEy010_MusicKit_aB012ArtworkImageV01_gh9Internal_aB0E18artworkPlaceholderyQrx0gH00I0VSg_So6CGSizeVAA5ColorVtcAA0D0RzlFQOy_0g4CoreB0015CNSwiftUIAvatarD0VQo_AA12_FrameLayoutVGAA11_ClipEffectVyAA6CircleVGGAA08_PaddingT0VG_AEy0gP013CollaborationOATE4FlowO12ActionButton33_4FA82EB282576B4095E3FA5F35E498B8LLVA6_GA16_tGMR, &protocol conformance descriptor for TupleView<A>);
        _ConditionalContent<>.init(storage:)();
        outlined destroy of TaskPriority?(&v508, &_s7SwiftUI15ModifiedContentVy9MusicCore13CollaborationO0efB0E4FlowO12ActionButton33_4FA82EB282576B4095E3FA5F35E498B8LLVAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVy9MusicCore13CollaborationO0efB0E4FlowO12ActionButton33_4FA82EB282576B4095E3FA5F35E498B8LLVAA14_PaddingLayoutVGMR);
        outlined destroy of TaskPriority?(&v500, &_s7SwiftUI15ModifiedContentVy9MusicCore13CollaborationO0efB0E4FlowO12ActionButton33_4FA82EB282576B4095E3FA5F35E498B8LLVAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVy9MusicCore13CollaborationO0efB0E4FlowO12ActionButton33_4FA82EB282576B4095E3FA5F35E498B8LLVAA14_PaddingLayoutVGMR);
        outlined destroy of TaskPriority?(v338, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAEy010_MusicKit_aB012ArtworkImageV01_gh9Internal_aB0E18artworkPlaceholderyQrx0gH00I0VSg_So6CGSizeVAA5ColorVtcAA0D0RzlFQOy_0g4CoreB0015CNSwiftUIAvatarD0VQo_AA12_FrameLayoutVGAA11_ClipEffectVyAA6CircleVGGAA08_PaddingT0VG_AEy0gP013CollaborationOATE4FlowO12ActionButton33_4FA82EB282576B4095E3FA5F35E498B8LLVA6_GA16_tGMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAEy010_MusicKit_aB012ArtworkImageV01_gh9Internal_aB0E18artworkPlaceholderyQrx0gH00I0VSg_So6CGSizeVAA5ColorVtcAA0D0RzlFQOy_0g4CoreB0015CNSwiftUIAvatarD0VQo_AA12_FrameLayoutVGAA11_ClipEffectVyAA6CircleVGGAA08_PaddingT0VG_AEy0gP013CollaborationOATE4FlowO12ActionButton33_4FA82EB282576B4095E3FA5F35E498B8LLVA6_GA16_tGMR);
        outlined destroy of TaskPriority?(v434, &_s7SwiftUI15ModifiedContentVyACyACy010_MusicKit_aB012ArtworkImageV01_ef9Internal_aB0E18artworkPlaceholderyQrx0eF00G0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_0e4CoreB0015CNSwiftUIAvatarN0VQo_AA12_FrameLayoutVGAA11_ClipEffectVyAA6CircleVGGAA08_PaddingS0VGMd, &_s7SwiftUI15ModifiedContentVyACyACy010_MusicKit_aB012ArtworkImageV01_ef9Internal_aB0E18artworkPlaceholderyQrx0eF00G0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_0e4CoreB0015CNSwiftUIAvatarN0VQo_AA12_FrameLayoutVGAA11_ClipEffectVyAA6CircleVGGAA08_PaddingS0VGMR);
        (*(v433 + 8))(v446, v447);
LABEL_41:
        v117 = v406;
        v115 = v407;
        v121 = v404;
        v119 = v405;
        goto LABEL_42;
      }
    }

    if (one-time initialization token for fallback != -1)
    {
      swift_once();
    }

    v213 = __swift_project_value_buffer(v210, static Artwork.CropStyle.fallback);
    v214 = v395;
    (*(v149 + 16))(v395, v213, v210);
    if ((*(v149 + 48))(v209, 1, v210) != 1)
    {
      outlined destroy of TaskPriority?(v209, &_s8MusicKit7ArtworkV0aB8InternalE9CropStyleVSgMd_0, &_s8MusicKit7ArtworkV0aB8InternalE9CropStyleVSgMR_0);
    }

    goto LABEL_38;
  }

  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore13CollaborationO0aB2UIE4FlowO12CollaboratorVSg_10Foundation3URLVSbtMd, &_s9MusicCore13CollaborationO0aB2UIE4FlowO12CollaboratorVSg_10Foundation3URLVSbtMR);
  v153 = v408;
  v154 = v409;
  v155 = *(v409 + 32);
  v156 = v410;
  v155(v408, v137 + *(v152 + 48), v410);
  LODWORD(v449) = v136;
  v470 = Collaboration.Flow.buttonActionTitle.getter();
  v447 = v157;
  v158 = v448;
  outlined init with copy of Collaboration.Flow(v69, v448, v159, type metadata accessor for Collaboration.Flow.View);
  v160 = v385;
  v161 = v156;
  (*(v154 + 16))(v385, v153, v156);
  v162 = (*(v432 + 80) + 16) & ~*(v432 + 80);
  v163 = (v435 + *(v154 + 80) + v162) & ~*(v154 + 80);
  v164 = swift_allocObject();
  outlined init with take of Collaboration.Flow.Collaborator(v158, v164 + v162, type metadata accessor for Collaboration.Flow.View);
  v155((v164 + v163), v160, v161);
  LOBYTE(v477[0]) = 0;
  State.init(wrappedValue:)();
  LOBYTE(v162) = v478[0];
  v165 = *&v478[8];
  v166 = swift_getKeyPath();
  v472[0] = 0;
  v167 = swift_getKeyPath();
  v168 = swift_allocObject();
  *(v168 + 16) = v449 & 1;
  *v478 = v470;
  *&v478[8] = v447;
  v478[16] = 0;
  *&v478[24] = partial apply for closure #4 in closure #1 in Collaboration.Flow.View.body.getter;
  *&v478[32] = v164;
  v478[40] = v162;
  *&v478[48] = v165;
  *&v478[56] = v166;
  v478[64] = v472[0];
  *&v478[65] = v477[0];
  *&v478[68] = *(v477 + 3);
  *&v478[72] = v167;
  *&v478[80] = closure #1 in View.disabled(_:)partial apply;
  *&v478[88] = v168;
  v169 = *&v478[48];
  v170 = v420;
  v420[2] = *&v478[32];
  v170[3] = v169;
  v171 = *&v478[80];
  v170[4] = *&v478[64];
  v170[5] = v171;
  v172 = *&v478[16];
  *v170 = *v478;
  v170[1] = v172;
  swift_storeEnumTagMultiPayload();
  outlined init with copy of TaskPriority?(v478, v477, &_s7SwiftUI15ModifiedContentVy9MusicCore13CollaborationO0efB0E4FlowO12ActionButton33_4FA82EB282576B4095E3FA5F35E498B8LLVAA32_EnvironmentKeyTransformModifierVySbGGMd, &_s7SwiftUI15ModifiedContentVy9MusicCore13CollaborationO0efB0E4FlowO12ActionButton33_4FA82EB282576B4095E3FA5F35E498B8LLVAA32_EnvironmentKeyTransformModifierVySbGGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy9MusicCore13CollaborationO0efB0E4FlowO12ActionButton33_4FA82EB282576B4095E3FA5F35E498B8LLVAA32_EnvironmentKeyTransformModifierVySbGGMd, &_s7SwiftUI15ModifiedContentVy9MusicCore13CollaborationO0efB0E4FlowO12ActionButton33_4FA82EB282576B4095E3FA5F35E498B8LLVAA32_EnvironmentKeyTransformModifierVySbGGMR);
  lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Toggle<Text>, _PaddingLayout>, _BackgroundStyleModifier<BackgroundStyle>>, _ClipEffect<RoundedRectangle>>, _FlexFrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FixedSizeLayout>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<TextAlignment>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _PaddingLayout>, _PaddingLayout>, <<opaque return type of View.alert(isPresented:content:)>>.0)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAEyAEyAA6ToggleVyAA4TextVGAA14_PaddingLayoutVGAA24_BackgroundStyleModifierVyAA0kL0VGGAA11_ClipEffectVyAA16RoundedRectangleVGGAA010_FlexFrameJ0VG_AEyAEyAEyAEyAEyAEyAEyAEyAiA010_FixedSizeJ0VGA_GAA022_EnvironmentKeyWritingM0VyAA0H9AlignmentOGGAA011_ForegroundlM0VyAA017HierarchicalShapeL0VGGA6_yAA4FontVSgGGALGALGALGAA0D0PAAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyAEy9MusicCore13CollaborationO09MusicCoreB0E4FlowO12ActionButton33_4FA82EB282576B4095E3FA5F35E498B8LLVAA01_vw9TransformM0VySbGG_Qo_tGMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAEyAEyAA6ToggleVyAA4TextVGAA14_PaddingLayoutVGAA24_BackgroundStyleModifierVyAA0kL0VGGAA11_ClipEffectVyAA16RoundedRectangleVGGAA010_FlexFrameJ0VG_AEyAEyAEyAEyAEyAEyAEyAEyAiA010_FixedSizeJ0VGA_GAA022_EnvironmentKeyWritingM0VyAA0H9AlignmentOGGAA011_ForegroundlM0VyAA017HierarchicalShapeL0VGGA6_yAA4FontVSgGGALGALGALGAA0D0PAAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyAEy9MusicCore13CollaborationO09MusicCoreB0E4FlowO12ActionButton33_4FA82EB282576B4095E3FA5F35E498B8LLVAA01_vw9TransformM0VySbGG_Qo_tGMR, &protocol conformance descriptor for TupleView<A>);
  lazy protocol witness table accessor for type ModifiedContent<Collaboration.Flow.ActionButton, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>();
  v173 = v421;
  _ConditionalContent<>.init(storage:)();
  outlined init with copy of TaskPriority?(v173, v438, &_s7SwiftUI19_ConditionalContentVyAA9TupleViewVyAA08ModifiedD0VyAGyAGyAGyAA6ToggleVyAA4TextVGAA14_PaddingLayoutVGAA24_BackgroundStyleModifierVyAA0lM0VGGAA11_ClipEffectVyAA16RoundedRectangleVGGAA010_FlexFrameK0VG_AGyAGyAGyAGyAGyAGyAGyAGyAkA010_FixedSizeK0VGA1_GAA022_EnvironmentKeyWritingN0VyAA0I9AlignmentOGGAA011_ForegroundmN0VyAA017HierarchicalShapeM0VGGA8_yAA4FontVSgGGANGANGANGAA0F0PAAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyAGy9MusicCore13CollaborationO09MusicCoreB0E4FlowO12ActionButton33_4FA82EB282576B4095E3FA5F35E498B8LLVAA01_wx9TransformN0VySbGG_Qo_tGA49_GMd, &_s7SwiftUI19_ConditionalContentVyAA9TupleViewVyAA08ModifiedD0VyAGyAGyAGyAA6ToggleVyAA4TextVGAA14_PaddingLayoutVGAA24_BackgroundStyleModifierVyAA0lM0VGGAA11_ClipEffectVyAA16RoundedRectangleVGGAA010_FlexFrameK0VG_AGyAGyAGyAGyAGyAGyAGyAGyAkA010_FixedSizeK0VGA1_GAA022_EnvironmentKeyWritingN0VyAA0I9AlignmentOGGAA011_ForegroundmN0VyAA017HierarchicalShapeM0VGGA8_yAA4FontVSgGGANGANGANGAA0F0PAAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyAGy9MusicCore13CollaborationO09MusicCoreB0E4FlowO12ActionButton33_4FA82EB282576B4095E3FA5F35E498B8LLVAA01_wx9TransformN0VySbGG_Qo_tGA49_GMR);
  swift_storeEnumTagMultiPayload();
  lazy protocol witness table accessor for type _ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Toggle<Text>, _PaddingLayout>, _BackgroundStyleModifier<BackgroundStyle>>, _ClipEffect<RoundedRectangle>>, _FlexFrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FixedSizeLayout>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<TextAlignment>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _PaddingLayout>, _PaddingLayout>, <<opaque return type of View.alert(isPresented:content:)>>.0)>, ModifiedContent<Collaboration.Flow.ActionButton, _EnvironmentKeyTransformModifier<Bool>>> and conformance <> _ConditionalContent<A, B>();
  lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of ArtworkImage.artworkPlaceholder<A>(_:)>>.0, _FrameLayout>, _ClipEffect<Circle>>, _PaddingLayout>, ModifiedContent<Collaboration.Flow.ActionButton, _PaddingLayout>, ModifiedContent<Collaboration.Flow.ActionButton, _PaddingLayout>)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAEy010_MusicKit_aB012ArtworkImageV01_gh9Internal_aB0E18artworkPlaceholderyQrx0gH00I0VSg_So6CGSizeVAA5ColorVtcAA0D0RzlFQOy_0g4CoreB0015CNSwiftUIAvatarD0VQo_AA12_FrameLayoutVGAA11_ClipEffectVyAA6CircleVGGAA08_PaddingT0VG_AEy0gP013CollaborationOATE4FlowO12ActionButton33_4FA82EB282576B4095E3FA5F35E498B8LLVA6_GA16_tGMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAEy010_MusicKit_aB012ArtworkImageV01_gh9Internal_aB0E18artworkPlaceholderyQrx0gH00I0VSg_So6CGSizeVAA5ColorVtcAA0D0RzlFQOy_0g4CoreB0015CNSwiftUIAvatarD0VQo_AA12_FrameLayoutVGAA11_ClipEffectVyAA6CircleVGGAA08_PaddingT0VG_AEy0gP013CollaborationOATE4FlowO12ActionButton33_4FA82EB282576B4095E3FA5F35E498B8LLVA6_GA16_tGMR, &protocol conformance descriptor for TupleView<A>);
  _ConditionalContent<>.init(storage:)();
  outlined destroy of TaskPriority?(v478, &_s7SwiftUI15ModifiedContentVy9MusicCore13CollaborationO0efB0E4FlowO12ActionButton33_4FA82EB282576B4095E3FA5F35E498B8LLVAA32_EnvironmentKeyTransformModifierVySbGGMd, &_s7SwiftUI15ModifiedContentVy9MusicCore13CollaborationO0efB0E4FlowO12ActionButton33_4FA82EB282576B4095E3FA5F35E498B8LLVAA32_EnvironmentKeyTransformModifierVySbGGMR);
  outlined destroy of TaskPriority?(v173, &_s7SwiftUI19_ConditionalContentVyAA9TupleViewVyAA08ModifiedD0VyAGyAGyAGyAA6ToggleVyAA4TextVGAA14_PaddingLayoutVGAA24_BackgroundStyleModifierVyAA0lM0VGGAA11_ClipEffectVyAA16RoundedRectangleVGGAA010_FlexFrameK0VG_AGyAGyAGyAGyAGyAGyAGyAGyAkA010_FixedSizeK0VGA1_GAA022_EnvironmentKeyWritingN0VyAA0I9AlignmentOGGAA011_ForegroundmN0VyAA017HierarchicalShapeM0VGGA8_yAA4FontVSgGGANGANGANGAA0F0PAAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyAGy9MusicCore13CollaborationO09MusicCoreB0E4FlowO12ActionButton33_4FA82EB282576B4095E3FA5F35E498B8LLVAA01_wx9TransformN0VySbGG_Qo_tGA49_GMd, &_s7SwiftUI19_ConditionalContentVyAA9TupleViewVyAA08ModifiedD0VyAGyAGyAGyAA6ToggleVyAA4TextVGAA14_PaddingLayoutVGAA24_BackgroundStyleModifierVyAA0lM0VGGAA11_ClipEffectVyAA16RoundedRectangleVGGAA010_FlexFrameK0VG_AGyAGyAGyAGyAGyAGyAGyAGyAkA010_FixedSizeK0VGA1_GAA022_EnvironmentKeyWritingN0VyAA0I9AlignmentOGGAA011_ForegroundmN0VyAA017HierarchicalShapeM0VGGA8_yAA4FontVSgGGANGANGANGAA0F0PAAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyAGy9MusicCore13CollaborationO09MusicCoreB0E4FlowO12ActionButton33_4FA82EB282576B4095E3FA5F35E498B8LLVAA01_wx9TransformN0VySbGG_Qo_tGA49_GMR);
  (*(v409 + 8))(v408, v410);
  outlined destroy of TaskPriority?(v443, &_s9MusicCore13CollaborationO0aB2UIE4FlowO12CollaboratorVSgMd, &_s9MusicCore13CollaborationO0aB2UIE4FlowO12CollaboratorVSgMR);
LABEL_42:
  v357 = v461;
  outlined init with copy of TaskPriority?(v465, v461, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE4boldyQrSbFQOyACy9MusicCore13CollaborationO0ghB0E4FlowO010GlyphImageE033_4FA82EB282576B4095E3FA5F35E498B8LLVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_AA023AccessibilityAttachmentX0VGSgMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE4boldyQrSbFQOyACy9MusicCore13CollaborationO0ghB0E4FlowO010GlyphImageE033_4FA82EB282576B4095E3FA5F35E498B8LLVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_AA023AccessibilityAttachmentX0VGSgMR);
  v358 = v463;
  outlined init with copy of TaskPriority?(v467, v463, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE4boldyQrSbFQOyACyACyAA4TextVAA16_FixedSizeLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_AMyAA0G9AlignmentOGGAA08_PaddingJ0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE4boldyQrSbFQOyACyACyAA4TextVAA16_FixedSizeLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_AMyAA0G9AlignmentOGGAA08_PaddingJ0VGMR);
  outlined init with copy of TaskPriority?(v469, v462, &_s7SwiftUI15ModifiedContentVy9MusicCore13CollaborationO0efB0E4FlowO18ProfileEditingView33_4FA82EB282576B4095E3FA5F35E498B8LLVAA14_PaddingLayoutVGSgMd, &_s7SwiftUI15ModifiedContentVy9MusicCore13CollaborationO0efB0E4FlowO18ProfileEditingView33_4FA82EB282576B4095E3FA5F35E498B8LLVAA14_PaddingLayoutVGSgMR);
  outlined init with copy of TaskPriority?(v468, v464, &_s7SwiftUI19_ConditionalContentVyACyAA9TupleViewVyAA08ModifiedD0VyAGyAGyAGyAA6ToggleVyAA4TextVGAA14_PaddingLayoutVGAA24_BackgroundStyleModifierVyAA0lM0VGGAA11_ClipEffectVyAA16RoundedRectangleVGGAA010_FlexFrameK0VG_AGyAGyAGyAGyAGyAGyAGyAGyAkA010_FixedSizeK0VGA1_GAA022_EnvironmentKeyWritingN0VyAA0I9AlignmentOGGAA011_ForegroundmN0VyAA017HierarchicalShapeM0VGGA8_yAA4FontVSgGGANGANGANGAA0F0PAAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyAGy9MusicCore13CollaborationO09MusicCoreB0E4FlowO12ActionButton33_4FA82EB282576B4095E3FA5F35E498B8LLVAA01_wx9TransformN0VySbGG_Qo_tGA49_GAEyAGyAGyAGy010_MusicKit_aB012ArtworkImageV018_MusicKitInternal_aB0E18artworkPlaceholderyQrx8MusicKit7ArtworkVSg_So6CGSizeVAA5ColorVtcAAA27_RzlFQOy_A40_015CNSwiftUIAvatarF0VQo_AA01_tK0VGAWyAA6CircleVGGANG_AGyA45_ANGA77_tGGMd, &_s7SwiftUI19_ConditionalContentVyACyAA9TupleViewVyAA08ModifiedD0VyAGyAGyAGyAA6ToggleVyAA4TextVGAA14_PaddingLayoutVGAA24_BackgroundStyleModifierVyAA0lM0VGGAA11_ClipEffectVyAA16RoundedRectangleVGGAA010_FlexFrameK0VG_AGyAGyAGyAGyAGyAGyAGyAGyAkA010_FixedSizeK0VGA1_GAA022_EnvironmentKeyWritingN0VyAA0I9AlignmentOGGAA011_ForegroundmN0VyAA017HierarchicalShapeM0VGGA8_yAA4FontVSgGGANGANGANGAA0F0PAAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyAGy9MusicCore13CollaborationO09MusicCoreB0E4FlowO12ActionButton33_4FA82EB282576B4095E3FA5F35E498B8LLVAA01_wx9TransformN0VySbGG_Qo_tGA49_GAEyAGyAGyAGy010_MusicKit_aB012ArtworkImageV018_MusicKitInternal_aB0E18artworkPlaceholderyQrx8MusicKit7ArtworkVSg_So6CGSizeVAA5ColorVtcAAA27_RzlFQOy_A40_015CNSwiftUIAvatarF0VQo_AA01_tK0VGAWyAA6CircleVGGANG_AGyA45_ANGA77_tGGMR);
  v359 = v357;
  v360 = v440;
  outlined init with copy of TaskPriority?(v359, v440, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE4boldyQrSbFQOyACy9MusicCore13CollaborationO0ghB0E4FlowO010GlyphImageE033_4FA82EB282576B4095E3FA5F35E498B8LLVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_AA023AccessibilityAttachmentX0VGSgMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE4boldyQrSbFQOyACy9MusicCore13CollaborationO0ghB0E4FlowO010GlyphImageE033_4FA82EB282576B4095E3FA5F35E498B8LLVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_AA023AccessibilityAttachmentX0VGSgMR);
  v361 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE4boldyQrSbFQOyACy9MusicCore13CollaborationO0ghB0E4FlowO010GlyphImageE033_4FA82EB282576B4095E3FA5F35E498B8LLVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_AA023AccessibilityAttachmentX0VGSg_ACyACyAeAEAFyQrSbFQOyACyACyAA4TextVAA16_FixedSizeLayoutVGAUG_Qo_AQyAA13TextAlignmentOGGAA14_PaddingLayoutVGACyACyACyACyA5_A9_GAQyAA5ColorVSgGGA12_GA12_GACyAL014ProfileEditingE0ANLLVA12_GSgAA012_ConditionalD0VyA27_yAA05TupleE0VyACyACyACyACyAA6ToggleVyA1_GA12_GAA016_BackgroundStyleX0VyAA15BackgroundStyleVGGAA11_ClipEffectVyAA16RoundedRectangleVGGAA16_FlexFrameLayoutVG_ACyACyACyACyACyACyACyA4_A47_GA9_GAA016_ForegroundStyleX0VyAA22HierarchicalShapeStyleVGGAUGA12_GA12_GA12_GAeAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyACyAL12ActionButtonANLLVAA01_uv9TransformX0VySbGG_Qo_tGA74_GA29_yACyACyACy01_g4Kit_aB007ArtworkL0V01_g12KitInternal_aB0E18artworkPlaceholderyQrx0G3Kit7ArtworkVSg_So6CGSizeVA16_tcAaDRzlFQOy_AJ015CNSwiftUIAvatarE0VQo_AA12_FrameLayoutVGA41_yAA6CircleVGGA12_G_ACyA70_A12_GA100_tGGtMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE4boldyQrSbFQOyACy9MusicCore13CollaborationO0ghB0E4FlowO010GlyphImageE033_4FA82EB282576B4095E3FA5F35E498B8LLVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_AA023AccessibilityAttachmentX0VGSg_ACyACyAeAEAFyQrSbFQOyACyACyAA4TextVAA16_FixedSizeLayoutVGAUG_Qo_AQyAA13TextAlignmentOGGAA14_PaddingLayoutVGACyACyACyACyA5_A9_GAQyAA5ColorVSgGGA12_GA12_GACyAL014ProfileEditingE0ANLLVA12_GSgAA012_ConditionalD0VyA27_yAA05TupleE0VyACyACyACyACyAA6ToggleVyA1_GA12_GAA016_BackgroundStyleX0VyAA15BackgroundStyleVGGAA11_ClipEffectVyAA16RoundedRectangleVGGAA16_FlexFrameLayoutVG_ACyACyACyACyACyACyACyA4_A47_GA9_GAA016_ForegroundStyleX0VyAA22HierarchicalShapeStyleVGGAUGA12_GA12_GA12_GAeAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyACyAL12ActionButtonANLLVAA01_uv9TransformX0VySbGG_Qo_tGA74_GA29_yACyACyACy01_g4Kit_aB007ArtworkL0V01_g12KitInternal_aB0E18artworkPlaceholderyQrx0G3Kit7ArtworkVSg_So6CGSizeVA16_tcAaDRzlFQOy_AJ015CNSwiftUIAvatarE0VQo_AA12_FrameLayoutVGA41_yAA6CircleVGGA12_G_ACyA70_A12_GA100_tGGtMR);
  outlined init with copy of TaskPriority?(v358, v360 + v361[12], &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE4boldyQrSbFQOyACyACyAA4TextVAA16_FixedSizeLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_AMyAA0G9AlignmentOGGAA08_PaddingJ0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE4boldyQrSbFQOyACyACyAA4TextVAA16_FixedSizeLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_AMyAA0G9AlignmentOGGAA08_PaddingJ0VGMR);
  v362 = v360 + v361[16];
  *&v477[0] = v457;
  *(&v477[0] + 1) = v456;
  LOBYTE(v477[1]) = v453;
  *(&v477[1] + 1) = *v520;
  DWORD1(v477[1]) = *&v520[3];
  *(&v477[1] + 1) = v458;
  LOWORD(v477[2]) = 256;
  *(&v477[2] + 2) = v518;
  WORD3(v477[2]) = v519;
  *(&v477[2] + 1) = v459;
  *&v477[3] = v460;
  *(&v477[3] + 1) = v455;
  LOBYTE(v477[4]) = 1;
  *(&v477[4] + 1) = *v517;
  DWORD1(v477[4]) = *&v517[3];
  *(&v477[4] + 1) = v452;
  *&v477[5] = v454;
  BYTE8(v477[5]) = v450;
  *(&v477[5] + 9) = *v516;
  HIDWORD(v477[5]) = *&v516[3];
  *&v477[6] = v107;
  *(&v477[6] + 1) = v109;
  *&v477[7] = v111;
  *(&v477[7] + 1) = v113;
  LOBYTE(v477[8]) = 0;
  DWORD1(v477[8]) = *&v522[3];
  *(&v477[8] + 1) = *v522;
  BYTE8(v477[8]) = v451;
  HIDWORD(v477[8]) = *&v521[3];
  *(&v477[8] + 9) = *v521;
  *&v477[9] = v115;
  *(&v477[9] + 1) = v117;
  *&v477[10] = v119;
  *(&v477[10] + 1) = v121;
  LOBYTE(v477[11]) = 0;
  v363 = v477[8];
  v364 = v477[9];
  v365 = v477[10];
  *(v362 + 176) = 0;
  *(v362 + 144) = v364;
  *(v362 + 160) = v365;
  v366 = v477[0];
  v367 = v477[1];
  v368 = v477[3];
  *(v362 + 32) = v477[2];
  *(v362 + 48) = v368;
  *v362 = v366;
  *(v362 + 16) = v367;
  v369 = v477[4];
  v370 = v477[5];
  v371 = v477[6];
  *(v362 + 112) = v477[7];
  *(v362 + 128) = v363;
  *(v362 + 80) = v370;
  *(v362 + 96) = v371;
  *(v362 + 64) = v369;
  v372 = v462;
  outlined init with copy of TaskPriority?(v462, v360 + v361[20], &_s7SwiftUI15ModifiedContentVy9MusicCore13CollaborationO0efB0E4FlowO18ProfileEditingView33_4FA82EB282576B4095E3FA5F35E498B8LLVAA14_PaddingLayoutVGSgMd, &_s7SwiftUI15ModifiedContentVy9MusicCore13CollaborationO0efB0E4FlowO18ProfileEditingView33_4FA82EB282576B4095E3FA5F35E498B8LLVAA14_PaddingLayoutVGSgMR);
  v373 = v464;
  outlined init with copy of TaskPriority?(v464, v360 + v361[24], &_s7SwiftUI19_ConditionalContentVyACyAA9TupleViewVyAA08ModifiedD0VyAGyAGyAGyAA6ToggleVyAA4TextVGAA14_PaddingLayoutVGAA24_BackgroundStyleModifierVyAA0lM0VGGAA11_ClipEffectVyAA16RoundedRectangleVGGAA010_FlexFrameK0VG_AGyAGyAGyAGyAGyAGyAGyAGyAkA010_FixedSizeK0VGA1_GAA022_EnvironmentKeyWritingN0VyAA0I9AlignmentOGGAA011_ForegroundmN0VyAA017HierarchicalShapeM0VGGA8_yAA4FontVSgGGANGANGANGAA0F0PAAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyAGy9MusicCore13CollaborationO09MusicCoreB0E4FlowO12ActionButton33_4FA82EB282576B4095E3FA5F35E498B8LLVAA01_wx9TransformN0VySbGG_Qo_tGA49_GAEyAGyAGyAGy010_MusicKit_aB012ArtworkImageV018_MusicKitInternal_aB0E18artworkPlaceholderyQrx8MusicKit7ArtworkVSg_So6CGSizeVAA5ColorVtcAAA27_RzlFQOy_A40_015CNSwiftUIAvatarF0VQo_AA01_tK0VGAWyAA6CircleVGGANG_AGyA45_ANGA77_tGGMd, &_s7SwiftUI19_ConditionalContentVyACyAA9TupleViewVyAA08ModifiedD0VyAGyAGyAGyAA6ToggleVyAA4TextVGAA14_PaddingLayoutVGAA24_BackgroundStyleModifierVyAA0lM0VGGAA11_ClipEffectVyAA16RoundedRectangleVGGAA010_FlexFrameK0VG_AGyAGyAGyAGyAGyAGyAGyAGyAkA010_FixedSizeK0VGA1_GAA022_EnvironmentKeyWritingN0VyAA0I9AlignmentOGGAA011_ForegroundmN0VyAA017HierarchicalShapeM0VGGA8_yAA4FontVSgGGANGANGANGAA0F0PAAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyAGy9MusicCore13CollaborationO09MusicCoreB0E4FlowO12ActionButton33_4FA82EB282576B4095E3FA5F35E498B8LLVAA01_wx9TransformN0VySbGG_Qo_tGA49_GAEyAGyAGyAGy010_MusicKit_aB012ArtworkImageV018_MusicKitInternal_aB0E18artworkPlaceholderyQrx8MusicKit7ArtworkVSg_So6CGSizeVAA5ColorVtcAAA27_RzlFQOy_A40_015CNSwiftUIAvatarF0VQo_AA01_tK0VGAWyAA6CircleVGGANG_AGyA45_ANGA77_tGGMR);
  outlined init with copy of TaskPriority?(v477, v478, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA4TextVAA16_FixedSizeLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAJyAA0E9AlignmentOGGAJyAA5ColorVSgGGAA08_PaddingH0VGAZGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA4TextVAA16_FixedSizeLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAJyAA0E9AlignmentOGGAJyAA5ColorVSgGGAA08_PaddingH0VGAZGMR);
  outlined destroy of TaskPriority?(v468, &_s7SwiftUI19_ConditionalContentVyACyAA9TupleViewVyAA08ModifiedD0VyAGyAGyAGyAA6ToggleVyAA4TextVGAA14_PaddingLayoutVGAA24_BackgroundStyleModifierVyAA0lM0VGGAA11_ClipEffectVyAA16RoundedRectangleVGGAA010_FlexFrameK0VG_AGyAGyAGyAGyAGyAGyAGyAGyAkA010_FixedSizeK0VGA1_GAA022_EnvironmentKeyWritingN0VyAA0I9AlignmentOGGAA011_ForegroundmN0VyAA017HierarchicalShapeM0VGGA8_yAA4FontVSgGGANGANGANGAA0F0PAAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyAGy9MusicCore13CollaborationO09MusicCoreB0E4FlowO12ActionButton33_4FA82EB282576B4095E3FA5F35E498B8LLVAA01_wx9TransformN0VySbGG_Qo_tGA49_GAEyAGyAGyAGy010_MusicKit_aB012ArtworkImageV018_MusicKitInternal_aB0E18artworkPlaceholderyQrx8MusicKit7ArtworkVSg_So6CGSizeVAA5ColorVtcAAA27_RzlFQOy_A40_015CNSwiftUIAvatarF0VQo_AA01_tK0VGAWyAA6CircleVGGANG_AGyA45_ANGA77_tGGMd, &_s7SwiftUI19_ConditionalContentVyACyAA9TupleViewVyAA08ModifiedD0VyAGyAGyAGyAA6ToggleVyAA4TextVGAA14_PaddingLayoutVGAA24_BackgroundStyleModifierVyAA0lM0VGGAA11_ClipEffectVyAA16RoundedRectangleVGGAA010_FlexFrameK0VG_AGyAGyAGyAGyAGyAGyAGyAGyAkA010_FixedSizeK0VGA1_GAA022_EnvironmentKeyWritingN0VyAA0I9AlignmentOGGAA011_ForegroundmN0VyAA017HierarchicalShapeM0VGGA8_yAA4FontVSgGGANGANGANGAA0F0PAAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyAGy9MusicCore13CollaborationO09MusicCoreB0E4FlowO12ActionButton33_4FA82EB282576B4095E3FA5F35E498B8LLVAA01_wx9TransformN0VySbGG_Qo_tGA49_GAEyAGyAGyAGy010_MusicKit_aB012ArtworkImageV018_MusicKitInternal_aB0E18artworkPlaceholderyQrx8MusicKit7ArtworkVSg_So6CGSizeVAA5ColorVtcAAA27_RzlFQOy_A40_015CNSwiftUIAvatarF0VQo_AA01_tK0VGAWyAA6CircleVGGANG_AGyA45_ANGA77_tGGMR);
  outlined destroy of TaskPriority?(v469, &_s7SwiftUI15ModifiedContentVy9MusicCore13CollaborationO0efB0E4FlowO18ProfileEditingView33_4FA82EB282576B4095E3FA5F35E498B8LLVAA14_PaddingLayoutVGSgMd, &_s7SwiftUI15ModifiedContentVy9MusicCore13CollaborationO0efB0E4FlowO18ProfileEditingView33_4FA82EB282576B4095E3FA5F35E498B8LLVAA14_PaddingLayoutVGSgMR);
  outlined destroy of TaskPriority?(v467, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE4boldyQrSbFQOyACyACyAA4TextVAA16_FixedSizeLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_AMyAA0G9AlignmentOGGAA08_PaddingJ0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE4boldyQrSbFQOyACyACyAA4TextVAA16_FixedSizeLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_AMyAA0G9AlignmentOGGAA08_PaddingJ0VGMR);
  outlined destroy of TaskPriority?(v465, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE4boldyQrSbFQOyACy9MusicCore13CollaborationO0ghB0E4FlowO010GlyphImageE033_4FA82EB282576B4095E3FA5F35E498B8LLVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_AA023AccessibilityAttachmentX0VGSgMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE4boldyQrSbFQOyACy9MusicCore13CollaborationO0ghB0E4FlowO010GlyphImageE033_4FA82EB282576B4095E3FA5F35E498B8LLVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_AA023AccessibilityAttachmentX0VGSgMR);
  outlined destroy of TaskPriority?(v373, &_s7SwiftUI19_ConditionalContentVyACyAA9TupleViewVyAA08ModifiedD0VyAGyAGyAGyAA6ToggleVyAA4TextVGAA14_PaddingLayoutVGAA24_BackgroundStyleModifierVyAA0lM0VGGAA11_ClipEffectVyAA16RoundedRectangleVGGAA010_FlexFrameK0VG_AGyAGyAGyAGyAGyAGyAGyAGyAkA010_FixedSizeK0VGA1_GAA022_EnvironmentKeyWritingN0VyAA0I9AlignmentOGGAA011_ForegroundmN0VyAA017HierarchicalShapeM0VGGA8_yAA4FontVSgGGANGANGANGAA0F0PAAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyAGy9MusicCore13CollaborationO09MusicCoreB0E4FlowO12ActionButton33_4FA82EB282576B4095E3FA5F35E498B8LLVAA01_wx9TransformN0VySbGG_Qo_tGA49_GAEyAGyAGyAGy010_MusicKit_aB012ArtworkImageV018_MusicKitInternal_aB0E18artworkPlaceholderyQrx8MusicKit7ArtworkVSg_So6CGSizeVAA5ColorVtcAAA27_RzlFQOy_A40_015CNSwiftUIAvatarF0VQo_AA01_tK0VGAWyAA6CircleVGGANG_AGyA45_ANGA77_tGGMd, &_s7SwiftUI19_ConditionalContentVyACyAA9TupleViewVyAA08ModifiedD0VyAGyAGyAGyAA6ToggleVyAA4TextVGAA14_PaddingLayoutVGAA24_BackgroundStyleModifierVyAA0lM0VGGAA11_ClipEffectVyAA16RoundedRectangleVGGAA010_FlexFrameK0VG_AGyAGyAGyAGyAGyAGyAGyAGyAkA010_FixedSizeK0VGA1_GAA022_EnvironmentKeyWritingN0VyAA0I9AlignmentOGGAA011_ForegroundmN0VyAA017HierarchicalShapeM0VGGA8_yAA4FontVSgGGANGANGANGAA0F0PAAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyAGy9MusicCore13CollaborationO09MusicCoreB0E4FlowO12ActionButton33_4FA82EB282576B4095E3FA5F35E498B8LLVAA01_wx9TransformN0VySbGG_Qo_tGA49_GAEyAGyAGyAGy010_MusicKit_aB012ArtworkImageV018_MusicKitInternal_aB0E18artworkPlaceholderyQrx8MusicKit7ArtworkVSg_So6CGSizeVAA5ColorVtcAAA27_RzlFQOy_A40_015CNSwiftUIAvatarF0VQo_AA01_tK0VGAWyAA6CircleVGGANG_AGyA45_ANGA77_tGGMR);
  outlined destroy of TaskPriority?(v372, &_s7SwiftUI15ModifiedContentVy9MusicCore13CollaborationO0efB0E4FlowO18ProfileEditingView33_4FA82EB282576B4095E3FA5F35E498B8LLVAA14_PaddingLayoutVGSgMd, &_s7SwiftUI15ModifiedContentVy9MusicCore13CollaborationO0efB0E4FlowO18ProfileEditingView33_4FA82EB282576B4095E3FA5F35E498B8LLVAA14_PaddingLayoutVGSgMR);
  *v478 = v457;
  *&v478[8] = v456;
  v478[16] = v453;
  *&v478[17] = *v520;
  *&v478[20] = *&v520[3];
  *&v478[24] = v458;
  *&v478[32] = 256;
  *&v478[34] = v518;
  *&v478[38] = v519;
  *&v478[40] = v459;
  *&v478[48] = v460;
  *&v478[56] = v455;
  v478[64] = 1;
  *&v478[68] = *&v517[3];
  *&v478[65] = *v517;
  *&v478[72] = v452;
  *&v478[80] = v454;
  v478[88] = v450;
  *&v478[92] = *&v516[3];
  *&v478[89] = *v516;
  *&v478[96] = v107;
  *&v478[104] = v109;
  *&v478[112] = v111;
  *&v478[120] = v113;
  v478[128] = 0;
  *&v478[129] = *v522;
  *&v478[132] = *&v522[3];
  v478[136] = v451;
  *&v478[140] = *&v521[3];
  *&v478[137] = *v521;
  *&v478[144] = v115;
  *&v478[152] = v117;
  *&v478[160] = v119;
  *&v478[168] = v121;
  v478[176] = 0;
  outlined destroy of TaskPriority?(v478, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA4TextVAA16_FixedSizeLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAJyAA0E9AlignmentOGGAJyAA5ColorVSgGGAA08_PaddingH0VGAZGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA4TextVAA16_FixedSizeLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAJyAA0E9AlignmentOGGAJyAA5ColorVSgGGAA08_PaddingH0VGAZGMR);
  outlined destroy of TaskPriority?(v463, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE4boldyQrSbFQOyACyACyAA4TextVAA16_FixedSizeLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_AMyAA0G9AlignmentOGGAA08_PaddingJ0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE4boldyQrSbFQOyACyACyAA4TextVAA16_FixedSizeLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_AMyAA0G9AlignmentOGGAA08_PaddingJ0VGMR);
  return outlined destroy of TaskPriority?(v461, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE4boldyQrSbFQOyACy9MusicCore13CollaborationO0ghB0E4FlowO010GlyphImageE033_4FA82EB282576B4095E3FA5F35E498B8LLVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_AA023AccessibilityAttachmentX0VGSgMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE4boldyQrSbFQOyACy9MusicCore13CollaborationO0ghB0E4FlowO010GlyphImageE033_4FA82EB282576B4095E3FA5F35E498B8LLVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_AA023AccessibilityAttachmentX0VGSgMR);
}

uint64_t closure #1 in closure #1 in Collaboration.Flow.View.body.getter@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  v2 = type metadata accessor for String.LocalizationValue();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = v16 - v6;
  String.LocalizationValue.init(stringLiteral:)();
  (*(v3 + 16))(v5, v7, v2);
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  v8 = static NSBundle.module;
  static Locale.current.getter();
  v9 = String.init(localized:table:bundle:locale:comment:)();
  v11 = v10;
  (*(v3 + 8))(v7, v2);
  v16[1] = v9;
  v16[2] = v11;
  _sS2SSysWl_0();
  result = Text.init<A>(_:)();
  *a1 = result;
  *(a1 + 8) = v13;
  *(a1 + 16) = v14 & 1;
  *(a1 + 24) = v15;
  return result;
}

double closure #2 in closure #1 in Collaboration.Flow.View.body.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(type metadata accessor for Collaboration.Flow.View(0) - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_1, &_sScPSgMR_1);
  __chkstk_darwin();
  v7 = &v14 - v6;
  v8 = type metadata accessor for TaskPriority();
  v9.n128_f64[0] = (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  outlined init with copy of Collaboration.Flow(a2, v5, v9, type metadata accessor for Collaboration.Flow.View);
  type metadata accessor for MainActor();
  v10 = static MainActor.shared.getter();
  v11 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  *(v12 + 24) = &protocol witness table for MainActor;
  outlined init with take of Collaboration.Flow.Collaborator(v5, v12 + v11, type metadata accessor for Collaboration.Flow.View);
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5_1(0, 0, v7, &async function pointer to partial apply for closure #1 in closure #2 in closure #1 in Collaboration.Flow.View.body.getter, v12);

  return result;
}

uint64_t closure #1 in closure #2 in closure #1 in Collaboration.Flow.View.body.getter()
{
  v0[2] = type metadata accessor for MainActor();
  v0[3] = static MainActor.shared.getter();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = closure #3 in GroupActivitiesManager.join();

  return Collaboration.Flow.View.initiate(shouldDuplicate:)(0);
}

uint64_t Collaboration.Flow.View.initiate(shouldDuplicate:)(char a1)
{
  v2[10] = v1;
  v2[11] = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy8MusicKit8PlaylistVSgs5Error_pGMd, &_ss6ResultOy8MusicKit8PlaylistVSgs5Error_pGMR);
  v2[12] = swift_task_alloc();
  v4 = type metadata accessor for Playlist();
  v2[13] = v4;
  v2[14] = *(v4 - 8);
  v2[15] = swift_task_alloc();
  v2[16] = type metadata accessor for MainActor();
  v2[17] = static MainActor.shared.getter();
  type metadata accessor for Collaboration.Flow.View(0);
  if (a1)
  {
    v5 = swift_task_alloc();
    v2[18] = v5;
    *v5 = v2;
    v5[1] = Collaboration.Flow.View.initiate(shouldDuplicate:);

    return Playlist.duplicate()();
  }

  else
  {
    v7 = swift_task_alloc();
    v2[20] = v7;
    *v7 = v2;
    v7[1] = Collaboration.Flow.View.initiate(shouldDuplicate:);

    return Playlist.hasUnsupportedContent.getter();
  }
}

{
  *(*v1 + 35) = a1;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(Collaboration.Flow.View.initiate(shouldDuplicate:), v3, v2);
}

uint64_t Collaboration.Flow.View.initiate(shouldDuplicate:)()
{
  *(*v1 + 152) = v0;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v0)
  {
    v4 = Collaboration.Flow.View.initiate(shouldDuplicate:);
  }

  else
  {
    v4 = Collaboration.Flow.View.initiate(shouldDuplicate:);
  }

  return _swift_task_switch(v4, v3, v2);
}

{
  v1 = *(v0 + 80);
  v2 = type metadata accessor for Collaboration.Flow.View(0);
  *(v0 + 168) = v2;
  if (*(v1 + v2[9]) == 1 && (v3 = *(v1 + v2[10])) != 0)
  {
    type metadata accessor for InlineProfileEditingView.Context(0);
    lazy protocol witness table accessor for type InlineProfileEditingView.Context and conformance InlineProfileEditingView.Context(&lazy protocol witness table cache variable for type InlineProfileEditingView.Context and conformance InlineProfileEditingView.Context, type metadata accessor for InlineProfileEditingView.Context, &protocol conformance descriptor for InlineProfileEditingView.Context);
    v4 = StateObject.wrappedValue.getter();
    *(v0 + 176) = v4;
    v12 = (v3 + *v3);
    v5 = swift_task_alloc();
    *(v0 + 184) = v5;
    *v5 = v0;
    v5[1] = Collaboration.Flow.View.initiate(shouldDuplicate:);

    return v12(v4);
  }

  else
  {
    v7 = v2[7];
    v8 = *(v1 + 8);
    *(v0 + 40) = *v1;
    *(v0 + 48) = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd, &_s7SwiftUI5StateVySbGMR);
    State.wrappedValue.getter();
    v9 = *(v0 + 33);
    v10 = swift_task_alloc();
    *(v0 + 200) = v10;
    *v10 = v0;
    v10[1] = Collaboration.Flow.View.initiate(shouldDuplicate:);
    v11 = *(v0 + 120);

    return Collaboration.Manager.start(_:isOpen:)(v11, v1 + v7, (v9 & 1) == 0);
  }
}

{
  if (*(v0 + 35) == 1)
  {

    _s9MusicCore13CollaborationO5ErrorOAEsAdAWl_0();
    v1 = swift_allocError();
    *v2 = xmmword_100507A60;
    *(v2 + 16) = 3;
    swift_willThrow();
    *(v0 + 72) = v1;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd_0, &_ss5Error_pMR_0);
    if (swift_dynamicCast())
    {
      v3 = *(v0 + 16);
      v4 = *(v0 + 24);
      v5 = *(v0 + 32);
      if (v5 == 3 && v3 == 8 && !v4)
      {
        v6 = *(v0 + 80);

        v7 = *(v6 + 24);
        *(v0 + 56) = *(v6 + 16);
        *(v0 + 64) = v7;
        *(v0 + 34) = 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd, &_s7SwiftUI5StateVySbGMR);
        State.wrappedValue.setter();

LABEL_17:

        v22 = *(v0 + 8);

        return v22();
      }

      outlined consume of Collaboration.Error(v3, v4, v5);
    }

    v19 = *(v0 + 96);
    v20 = *(v0 + 80);

    v21 = *(v20 + *(type metadata accessor for Collaboration.Flow.View(0) + 44));
    *v19 = v1;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    v21(v19);

    outlined destroy of TaskPriority?(v19, &_ss6ResultOy8MusicKit8PlaylistVSgs5Error_pGMd, &_ss6ResultOy8MusicKit8PlaylistVSgs5Error_pGMR);
    goto LABEL_17;
  }

  v8 = *(v0 + 80);
  v9 = type metadata accessor for Collaboration.Flow.View(0);
  *(v0 + 168) = v9;
  if (*(v8 + v9[9]) == 1 && (v10 = *(v8 + v9[10])) != 0)
  {
    type metadata accessor for InlineProfileEditingView.Context(0);
    lazy protocol witness table accessor for type InlineProfileEditingView.Context and conformance InlineProfileEditingView.Context(&lazy protocol witness table cache variable for type InlineProfileEditingView.Context and conformance InlineProfileEditingView.Context, type metadata accessor for InlineProfileEditingView.Context, &protocol conformance descriptor for InlineProfileEditingView.Context);
    v11 = StateObject.wrappedValue.getter();
    *(v0 + 176) = v11;
    v23 = (v10 + *v10);
    v12 = swift_task_alloc();
    *(v0 + 184) = v12;
    *v12 = v0;
    v12[1] = Collaboration.Flow.View.initiate(shouldDuplicate:);

    return v23(v11);
  }

  else
  {
    v14 = v9[7];
    v15 = *(v8 + 8);
    *(v0 + 40) = *v8;
    *(v0 + 48) = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd, &_s7SwiftUI5StateVySbGMR);
    State.wrappedValue.getter();
    v16 = *(v0 + 33);
    v17 = swift_task_alloc();
    *(v0 + 200) = v17;
    *v17 = v0;
    v17[1] = Collaboration.Flow.View.initiate(shouldDuplicate:);
    v18 = *(v0 + 120);

    return Collaboration.Manager.start(_:isOpen:)(v18, v8 + v14, (v16 & 1) == 0);
  }
}

{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = dispatch thunk of Actor.unownedExecutor.getter();
    v4 = v3;
    v5 = Collaboration.Flow.View.initiate(shouldDuplicate:);
  }

  else
  {

    v2 = dispatch thunk of Actor.unownedExecutor.getter();
    v4 = v6;
    v5 = Collaboration.Flow.View.initiate(shouldDuplicate:);
  }

  return _swift_task_switch(v5, v2, v4);
}

{
  v1 = *(v0 + 80);
  v2 = *(*(v0 + 168) + 28);
  v3 = *(v1 + 8);
  *(v0 + 40) = *v1;
  *(v0 + 48) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd, &_s7SwiftUI5StateVySbGMR);
  State.wrappedValue.getter();
  v4 = *(v0 + 33);
  v5 = swift_task_alloc();
  *(v0 + 200) = v5;
  *v5 = v0;
  v5[1] = Collaboration.Flow.View.initiate(shouldDuplicate:);
  v6 = *(v0 + 120);

  return Collaboration.Manager.start(_:isOpen:)(v6, v1 + v2, (v4 & 1) == 0);
}

{
  *(*v1 + 208) = v0;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v0)
  {
    v4 = Collaboration.Flow.View.initiate(shouldDuplicate:);
  }

  else
  {
    v4 = Collaboration.Flow.View.initiate(shouldDuplicate:);
  }

  return _swift_task_switch(v4, v3, v2);
}

{
  v1 = v0[21];
  v3 = v0[14];
  v2 = v0[15];
  v5 = v0[12];
  v4 = v0[13];
  v6 = v0[10];

  v7 = *(v6 + *(v1 + 44));
  (*(v3 + 16))(v5, v2, v4);
  (*(v3 + 56))(v5, 0, 1, v4);
  swift_storeEnumTagMultiPayload();
  v7(v5);
  outlined destroy of TaskPriority?(v5, &_ss6ResultOy8MusicKit8PlaylistVSgs5Error_pGMd, &_ss6ResultOy8MusicKit8PlaylistVSgs5Error_pGMR);
  (*(v3 + 8))(v2, v4);

  v8 = v0[1];

  return v8();
}

{

  v1 = *(v0 + 152);
  *(v0 + 72) = v1;
  swift_errorRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd_0, &_ss5Error_pMR_0);
  if (swift_dynamicCast())
  {
    v2 = *(v0 + 16);
    v3 = *(v0 + 24);
    v4 = *(v0 + 32);
    if (v4 == 3 && v2 == 8 && !v3)
    {
      v5 = *(v0 + 80);

      v6 = *(v5 + 24);
      *(v0 + 56) = *(v5 + 16);
      *(v0 + 64) = v6;
      *(v0 + 34) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd, &_s7SwiftUI5StateVySbGMR);
      State.wrappedValue.setter();

      goto LABEL_8;
    }

    outlined consume of Collaboration.Error(v2, v3, v4);
  }

  v7 = *(v0 + 96);
  v8 = *(v0 + 80);

  v9 = *(v8 + *(type metadata accessor for Collaboration.Flow.View(0) + 44));
  *v7 = v1;
  swift_storeEnumTagMultiPayload();
  swift_errorRetain();
  v9(v7);

  outlined destroy of TaskPriority?(v7, &_ss6ResultOy8MusicKit8PlaylistVSgs5Error_pGMd, &_ss6ResultOy8MusicKit8PlaylistVSgs5Error_pGMR);
LABEL_8:

  v10 = *(v0 + 8);

  return v10();
}

{

  v1 = *(v0 + 192);
  *(v0 + 72) = v1;
  swift_errorRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd_0, &_ss5Error_pMR_0);
  if (swift_dynamicCast())
  {
    v2 = *(v0 + 16);
    v3 = *(v0 + 24);
    v4 = *(v0 + 32);
    if (v4 == 3 && v2 == 8 && !v3)
    {
      v5 = *(v0 + 80);

      v6 = *(v5 + 24);
      *(v0 + 56) = *(v5 + 16);
      *(v0 + 64) = v6;
      *(v0 + 34) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd, &_s7SwiftUI5StateVySbGMR);
      State.wrappedValue.setter();

      goto LABEL_8;
    }

    outlined consume of Collaboration.Error(v2, v3, v4);
  }

  v7 = *(v0 + 96);
  v8 = *(v0 + 80);

  v9 = *(v8 + *(type metadata accessor for Collaboration.Flow.View(0) + 44));
  *v7 = v1;
  swift_storeEnumTagMultiPayload();
  swift_errorRetain();
  v9(v7);

  outlined destroy of TaskPriority?(v7, &_ss6ResultOy8MusicKit8PlaylistVSgs5Error_pGMd, &_ss6ResultOy8MusicKit8PlaylistVSgs5Error_pGMR);
LABEL_8:

  v10 = *(v0 + 8);

  return v10();
}

{

  v1 = *(v0 + 208);
  *(v0 + 72) = v1;
  swift_errorRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd_0, &_ss5Error_pMR_0);
  if (swift_dynamicCast())
  {
    v2 = *(v0 + 16);
    v3 = *(v0 + 24);
    v4 = *(v0 + 32);
    if (v4 == 3 && v2 == 8 && !v3)
    {
      v5 = *(v0 + 80);

      v6 = *(v5 + 24);
      *(v0 + 56) = *(v5 + 16);
      *(v0 + 64) = v6;
      *(v0 + 34) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd, &_s7SwiftUI5StateVySbGMR);
      State.wrappedValue.setter();

      goto LABEL_8;
    }

    outlined consume of Collaboration.Error(v2, v3, v4);
  }

  v7 = *(v0 + 96);
  v8 = *(v0 + 80);

  v9 = *(v8 + *(type metadata accessor for Collaboration.Flow.View(0) + 44));
  *v7 = v1;
  swift_storeEnumTagMultiPayload();
  swift_errorRetain();
  v9(v7);

  outlined destroy of TaskPriority?(v7, &_ss6ResultOy8MusicKit8PlaylistVSgs5Error_pGMd, &_ss6ResultOy8MusicKit8PlaylistVSgs5Error_pGMR);
LABEL_8:

  v10 = *(v0 + 8);

  return v10();
}

uint64_t closure #3 in closure #1 in Collaboration.Flow.View.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v65 = a1;
  v62 = a2;
  v58 = *(type metadata accessor for Collaboration.Flow.View(0) - 8);
  __chkstk_darwin();
  v59 = v2;
  v61 = &v46 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Alert.Button();
  __chkstk_darwin();
  v60 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v64 = &v46 - v4;
  type metadata accessor for Locale();
  __chkstk_darwin();
  v5 = type metadata accessor for String.LocalizationValue();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v46 - v9;
  String.LocalizationValue.init(stringLiteral:)();
  v49 = *(v6 + 16);
  v48 = v6 + 16;
  v49(v8, v10, v5);
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  v11 = static NSBundle.module;
  v12 = static NSBundle.module;
  v63 = v11;
  v13 = v12;
  static Locale.current.getter();
  v14 = v13;
  v15 = String.init(localized:table:bundle:locale:comment:)();
  v17 = v16;
  v18 = *(v6 + 8);
  v18(v10, v5);
  v47 = v18;
  v66 = v15;
  v67 = v17;
  v46 = _sS2SSysWl_0();
  v19 = Text.init<A>(_:)();
  v56 = v20;
  v57 = v19;
  v54 = v21;
  v55 = v22;
  String.LocalizationValue.init(stringLiteral:)();
  v23 = v49;
  v49(v8, v10, v5);
  static Locale.current.getter();
  v24 = String.init(localized:table:bundle:locale:comment:)();
  v26 = v25;
  v18(v10, v5);
  v66 = v24;
  v67 = v26;
  v27 = Text.init<A>(_:)();
  v52 = v28;
  v53 = v27;
  v50 = v29 & 1;
  v51 = v30;
  String.LocalizationValue.init(stringLiteral:)();
  v23(v8, v10, v5);
  static Locale.current.getter();
  v31 = String.init(localized:table:bundle:locale:comment:)();
  v33 = v32;
  v47(v10, v5);
  v66 = v31;
  v67 = v33;
  v34 = Text.init<A>(_:)();
  v36 = v35;
  v38 = v37;
  v63 = type metadata accessor for Collaboration.Flow.View;
  v39 = v61;
  outlined init with copy of Collaboration.Flow(v65, v61, v40, type metadata accessor for Collaboration.Flow.View);
  v41 = (*(v58 + 80) + 16) & ~*(v58 + 80);
  v42 = swift_allocObject();
  outlined init with take of Collaboration.Flow.Collaborator(v39, v42 + v41, type metadata accessor for Collaboration.Flow.View);
  static Alert.Button.default(_:action:)();
  outlined consume of Text.Storage(v34, v36, v38 & 1);

  outlined init with copy of Collaboration.Flow(v65, v39, v43, v63);
  v44 = swift_allocObject();
  outlined init with take of Collaboration.Flow.Collaborator(v39, v44 + v41, type metadata accessor for Collaboration.Flow.View);
  static Alert.Button.cancel(_:)();

  return Alert.init(title:message:primaryButton:secondaryButton:)();
}

double closure #1 in closure #3 in closure #1 in Collaboration.Flow.View.body.getter(uint64_t a1)
{
  v2 = *(type metadata accessor for Collaboration.Flow.View(0) - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin();
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_1, &_sScPSgMR_1);
  __chkstk_darwin();
  v6 = &v13 - v5;
  v7 = type metadata accessor for TaskPriority();
  v8.n128_f64[0] = (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  outlined init with copy of Collaboration.Flow(a1, v4, v8, type metadata accessor for Collaboration.Flow.View);
  type metadata accessor for MainActor();
  v9 = static MainActor.shared.getter();
  v10 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  *(v11 + 24) = &protocol witness table for MainActor;
  outlined init with take of Collaboration.Flow.Collaborator(v4, v11 + v10, type metadata accessor for Collaboration.Flow.View);
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5_1(0, 0, v6, &async function pointer to partial apply for closure #1 in closure #1 in closure #3 in closure #1 in Collaboration.Flow.View.body.getter, v11);

  return result;
}

uint64_t closure #1 in closure #1 in closure #3 in closure #1 in Collaboration.Flow.View.body.getter()
{
  v0[2] = type metadata accessor for MainActor();
  v0[3] = static MainActor.shared.getter();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = closure #2 in GroupActivitiesManager.join();

  return Collaboration.Flow.View.initiate(shouldDuplicate:)(1);
}

uint64_t closure #2 in closure #3 in closure #1 in Collaboration.Flow.View.body.getter(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy8MusicKit8PlaylistVSgs5Error_pGMd, &_ss6ResultOy8MusicKit8PlaylistVSgs5Error_pGMR);
  __chkstk_darwin();
  v3 = (&v8 - v2);
  v4 = *(a1 + *(type metadata accessor for Collaboration.Flow.View(0) + 44));
  _s9MusicCore13CollaborationO5ErrorOAEsAdAWl_0();
  v5 = swift_allocError();
  *v6 = xmmword_100507A60;
  *(v6 + 16) = 3;
  *v3 = v5;
  swift_storeEnumTagMultiPayload();
  v4(v3);
  return outlined destroy of TaskPriority?(v3, &_ss6ResultOy8MusicKit8PlaylistVSgs5Error_pGMd, &_ss6ResultOy8MusicKit8PlaylistVSgs5Error_pGMR);
}

uint64_t closure #1 in closure #4 in closure #1 in Collaboration.Flow.View.body.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v5[4] = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy8MusicKit8PlaylistVSgs5Error_pGMd, &_ss6ResultOy8MusicKit8PlaylistVSgs5Error_pGMR);
  v5[5] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[6] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[7] = v7;
  v5[8] = v6;

  return _swift_task_switch(closure #1 in closure #4 in closure #1 in Collaboration.Flow.View.body.getter, v7, v6);
}

uint64_t closure #1 in closure #4 in closure #1 in Collaboration.Flow.View.body.getter()
{
  v1 = v0[2];
  v2 = type metadata accessor for Collaboration.Flow.View(0);
  v0[9] = v2;
  if (*(v1 + v2[9]) == 1 && (v3 = *(v1 + v2[10])) != 0)
  {
    type metadata accessor for InlineProfileEditingView.Context(0);
    lazy protocol witness table accessor for type InlineProfileEditingView.Context and conformance InlineProfileEditingView.Context(&lazy protocol witness table cache variable for type InlineProfileEditingView.Context and conformance InlineProfileEditingView.Context, type metadata accessor for InlineProfileEditingView.Context, &protocol conformance descriptor for InlineProfileEditingView.Context);
    v4 = StateObject.wrappedValue.getter();
    v0[10] = v4;
    v10 = (v3 + *v3);
    v5 = swift_task_alloc();
    v0[11] = v5;
    *v5 = v0;
    v5[1] = closure #1 in closure #4 in closure #1 in Collaboration.Flow.View.body.getter;

    return v10(v4);
  }

  else
  {
    v7 = v2[7];
    v8 = swift_task_alloc();
    v0[13] = v8;
    *v8 = v0;
    v8[1] = closure #1 in closure #4 in closure #1 in Collaboration.Flow.View.body.getter;
    v9 = v0[3];

    return Collaboration.Manager.join(_:url:)(v1 + v7, v9);
  }
}

{
  v2 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = *(v2 + 56);
    v4 = *(v2 + 64);
    v5 = closure #1 in closure #4 in closure #1 in Collaboration.Flow.View.body.getter;
  }

  else
  {

    v3 = *(v2 + 56);
    v4 = *(v2 + 64);
    v5 = closure #1 in closure #4 in closure #1 in Collaboration.Flow.View.body.getter;
  }

  return _swift_task_switch(v5, v3, v4);
}

{
  v1 = v0[2];
  v2 = *(v0[9] + 28);
  v3 = swift_task_alloc();
  v0[13] = v3;
  *v3 = v0;
  v3[1] = closure #1 in closure #4 in closure #1 in Collaboration.Flow.View.body.getter;
  v4 = v0[3];

  return Collaboration.Manager.join(_:url:)(v1 + v2, v4);
}

{
  v2 = *v1;
  *(*v1 + 112) = v0;

  v3 = *(v2 + 64);
  v4 = *(v2 + 56);
  if (v0)
  {
    v5 = closure #1 in closure #4 in closure #1 in Collaboration.Flow.View.body.getter;
  }

  else
  {
    v5 = closure #1 in closure #4 in closure #1 in Collaboration.Flow.View.body.getter;
  }

  return _swift_task_switch(v5, v4, v3);
}

{
  v1 = v0[9];
  v2 = v0[5];
  v3 = v0[2];

  v4 = *(v3 + *(v1 + 44));
  v5 = type metadata accessor for Playlist();
  (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
  swift_storeEnumTagMultiPayload();
  v4(v2);
  outlined destroy of TaskPriority?(v2, &_ss6ResultOy8MusicKit8PlaylistVSgs5Error_pGMd, &_ss6ResultOy8MusicKit8PlaylistVSgs5Error_pGMR);

  v6 = v0[1];

  return v6();
}

{

  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[5];
  v4 = v0[2];

  v5 = *(v4 + *(v2 + 44));
  *v3 = v1;
  swift_storeEnumTagMultiPayload();
  swift_errorRetain();
  v5(v3);

  outlined destroy of TaskPriority?(v3, &_ss6ResultOy8MusicKit8PlaylistVSgs5Error_pGMd, &_ss6ResultOy8MusicKit8PlaylistVSgs5Error_pGMR);

  v6 = v0[1];

  return v6();
}

{
  v1 = v0[14];
  v2 = v0[9];
  v3 = v0[5];
  v4 = v0[2];

  v5 = *(v4 + *(v2 + 44));
  *v3 = v1;
  swift_storeEnumTagMultiPayload();
  swift_errorRetain();
  v5(v3);

  outlined destroy of TaskPriority?(v3, &_ss6ResultOy8MusicKit8PlaylistVSgs5Error_pGMd, &_ss6ResultOy8MusicKit8PlaylistVSgs5Error_pGMR);

  v6 = v0[1];

  return v6();
}

uint64_t closure #1 in closure #5 in closure #1 in Collaboration.Flow.View.body.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v5[4] = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy8MusicKit8PlaylistVSgs5Error_pGMd, &_ss6ResultOy8MusicKit8PlaylistVSgs5Error_pGMR);
  v5[5] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[6] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[7] = v7;
  v5[8] = v6;

  return _swift_task_switch(closure #1 in closure #5 in closure #1 in Collaboration.Flow.View.body.getter, v7, v6);
}

uint64_t closure #1 in closure #5 in closure #1 in Collaboration.Flow.View.body.getter()
{
  v1 = v0[2];
  v2 = type metadata accessor for Collaboration.Flow.View(0);
  v0[9] = v2;
  v3 = *(v2 + 28);
  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = closure #1 in closure #5 in closure #1 in Collaboration.Flow.View.body.getter;
  v5 = v0[3];

  return Collaboration.Manager.moderate(_:collaborator:in:)(0, v5, v1 + v3);
}

{
  v2 = *v1;
  *(*v1 + 88) = v0;

  v3 = *(v2 + 64);
  v4 = *(v2 + 56);
  if (v0)
  {
    v5 = closure #1 in closure #5 in closure #1 in Collaboration.Flow.View.body.getter;
  }

  else
  {
    v5 = closure #1 in closure #5 in closure #1 in Collaboration.Flow.View.body.getter;
  }

  return _swift_task_switch(v5, v4, v3);
}

{
  v1 = v0[11];
  v2 = v0[9];
  v3 = v0[5];
  v4 = v0[2];

  v5 = *(v4 + *(v2 + 44));
  *v3 = v1;
  swift_storeEnumTagMultiPayload();
  swift_errorRetain();
  v5(v3);

  outlined destroy of TaskPriority?(v3, &_ss6ResultOy8MusicKit8PlaylistVSgs5Error_pGMd, &_ss6ResultOy8MusicKit8PlaylistVSgs5Error_pGMR);

  v6 = v0[1];

  return v6();
}

double closure #4 in closure #1 in Collaboration.Flow.View.body.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5, uint64_t a6)
{
  v24 = a5;
  v25 = a6;
  v8 = a4(0);
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v24 - v10;
  v12 = *(type metadata accessor for Collaboration.Flow.View(0) - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin();
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_1, &_sScPSgMR_1);
  __chkstk_darwin();
  v16 = &v24 - v15;
  v17 = type metadata accessor for TaskPriority();
  v18.n128_f64[0] = (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  outlined init with copy of Collaboration.Flow(a2, v14, v18, type metadata accessor for Collaboration.Flow.View);
  (*(v9 + 16))(v11, a3, v8);
  type metadata accessor for MainActor();
  v19 = static MainActor.shared.getter();
  v20 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v21 = (v13 + *(v9 + 80) + v20) & ~*(v9 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = v19;
  *(v22 + 24) = &protocol witness table for MainActor;
  outlined init with take of Collaboration.Flow.Collaborator(v14, v22 + v20, type metadata accessor for Collaboration.Flow.View);
  (*(v9 + 32))(v22 + v21, v11, v8);
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5_1(0, 0, v16, v25, v22);

  return result;
}

uint64_t closure #1 in closure #6 in closure #1 in Collaboration.Flow.View.body.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v5[4] = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy8MusicKit8PlaylistVSgs5Error_pGMd, &_ss6ResultOy8MusicKit8PlaylistVSgs5Error_pGMR);
  v5[5] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[6] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[7] = v7;
  v5[8] = v6;

  return _swift_task_switch(closure #1 in closure #6 in closure #1 in Collaboration.Flow.View.body.getter, v7, v6);
}

uint64_t closure #1 in closure #6 in closure #1 in Collaboration.Flow.View.body.getter()
{
  v1 = v0[2];
  v2 = type metadata accessor for Collaboration.Flow.View(0);
  v0[9] = v2;
  v3 = *(v2 + 28);
  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = closure #1 in closure #6 in closure #1 in Collaboration.Flow.View.body.getter;
  v5 = v0[3];

  return Collaboration.Manager.moderate(_:collaborator:in:)(1, v5, v1 + v3);
}

{
  v2 = *v1;
  *(*v1 + 88) = v0;

  v3 = *(v2 + 64);
  v4 = *(v2 + 56);
  if (v0)
  {
    v5 = closure #1 in closure #6 in closure #1 in Collaboration.Flow.View.body.getter;
  }

  else
  {
    v5 = closure #1 in closure #5 in closure #1 in Collaboration.Flow.View.body.getter;
  }

  return _swift_task_switch(v5, v4, v3);
}

id closure #1 in variable initialization expression of Collaboration.Flow.View._isRestricted()
{
  v0 = [objc_opt_self() defaultIdentityStore];
  type metadata accessor for ICUserIdentity();
  v1 = static ICUserIdentity.active.getter();
  v7 = 0;
  v2 = [v0 getPropertiesForUserIdentity:v1 error:&v7];

  if (v2)
  {
    v3 = v7;
    v4 = [v2 isU18MinorAccount];
  }

  else
  {
    v5 = v7;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    return 0;
  }

  return v4;
}

uint64_t implicit closure #2 in implicit closure #1 in variable initialization expression of Collaboration.Flow.View._profileContext()
{
  type metadata accessor for InlineProfileEditingView.Context(0);
  swift_allocObject();
  return InlineProfileEditingView.Context.init()();
}

uint64_t protocol witness for View.body.getter in conformance Collaboration.Flow.GlyphImageView@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19SymbolRenderingModeVSgMd, &_s7SwiftUI19SymbolRenderingModeVSgMR);
  __chkstk_darwin();
  v3 = &v8 - v2;
  Image.init(systemName:)();
  static SymbolRenderingMode.hierarchical.getter();
  v4 = type metadata accessor for SymbolRenderingMode();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = Image.symbolRenderingMode(_:)();

  outlined destroy of TaskPriority?(v3, &_s7SwiftUI19SymbolRenderingModeVSgMd, &_s7SwiftUI19SymbolRenderingModeVSgMR);
  v6 = static Color.accentColor.getter();
  result = swift_getKeyPath();
  *a1 = v5;
  a1[1] = result;
  a1[2] = v6;
  return result;
}

uint64_t closure #1 in Collaboration.Flow.ProfileEditingView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v134 = a2;
  v135 = a1;
  v2 = type metadata accessor for Font.Leading();
  v130 = *(v2 - 8);
  v131 = v2;
  __chkstk_darwin();
  v129 = &v112 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Locale();
  __chkstk_darwin();
  v5 = &v112 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for String.LocalizationValue();
  v128 = *(v6 - 8);
  __chkstk_darwin();
  v8 = &v112 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v112 - v9;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAE4CaseOSgGGAGyAA4FontVSgGGAGyAA5ColorVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAE4CaseOSgGGAGyAA4FontVSgGGAGyAA5ColorVSgGGMR);
  __chkstk_darwin();
  v12 = &v112 - v11;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAE4CaseOSgGGAGyAA4FontVSgGGAGyAA5ColorVSgGGAA16_FlexFrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAE4CaseOSgGGAGyAA4FontVSgGGAGyAA5ColorVSgGGAA16_FlexFrameLayoutVGMR);
  __chkstk_darwin();
  v119 = &v112 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAE4CaseOSgGGAGyAA4FontVSgGGAGyAA5ColorVSgGGAA16_FlexFrameLayoutVGAA08_PaddingO0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAE4CaseOSgGGAGyAA4FontVSgGGAGyAA5ColorVSgGGAA16_FlexFrameLayoutVGAA08_PaddingO0VGMR);
  v126 = *(v14 - 8);
  v127 = v14;
  __chkstk_darwin();
  v117 = &v112 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v118 = &v112 - v16;
  v17 = type metadata accessor for Collaboration.Flow(0);
  __chkstk_darwin();
  v19 = &v112 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAE4CaseOSgGGAGyAA4FontVSgGGAGyAA5ColorVSgGGAA16_FlexFrameLayoutVGAA08_PaddingO0VGSgMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAE4CaseOSgGGAGyAA4FontVSgGGAGyAA5ColorVSgGGAA16_FlexFrameLayoutVGAA08_PaddingO0VGSgMR);
  __chkstk_darwin();
  v133 = &v112 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v22 = &v112 - v21;
  v23 = *(type metadata accessor for Collaboration.Flow.ProfileEditingView(0) + 20);
  v125 = v17;
  swift_storeEnumTagMultiPayload();
  v124 = v23;
  LOBYTE(v23) = specialized static Collaboration.Flow.__derived_enum_equals(_:_:)((v135 + v23), v19);
  outlined destroy of Collaboration.Flow(v19, type metadata accessor for Collaboration.Flow);
  v132 = v22;
  v122 = v5;
  v123 = v6;
  v120 = v8;
  v121 = v10;
  if (v23)
  {
    v24 = 1;
    v25 = v127;
  }

  else
  {
    String.LocalizationValue.init(stringLiteral:)();
    v26 = v128;
    (*(v128 + 16))(v8, v10, v6);
    v27 = v26;
    if (one-time initialization token for module != -1)
    {
      swift_once();
    }

    v28 = static NSBundle.module;
    static Locale.current.getter();
    v29 = String.init(localized:table:bundle:locale:comment:)();
    v31 = v30;
    (*(v27 + 8))(v10, v6);
    *&v158 = v29;
    *(&v158 + 1) = v31;
    _sS2SSysWl_0();
    v32 = Text.init<A>(_:)();
    v113 = v33;
    v114 = v34;
    v36 = v35;
    v37 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAE4CaseOSgGGMd, &_s7SwiftUI15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAE4CaseOSgGGMR) + 36)];
    v38 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4TextV4CaseOSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4TextV4CaseOSgGMR) + 28);
    v39 = enum case for Text.Case.uppercase(_:);
    v40 = type metadata accessor for Text.Case();
    v41 = *(v40 - 8);
    (*(v41 + 104))(v37 + v38, v39, v40);
    (*(v41 + 56))(v37 + v38, 0, 1, v40);
    *v37 = swift_getKeyPath();
    v42 = v113;
    *v12 = v32;
    *(v12 + 1) = v42;
    v12[16] = v36 & 1;
    *(v12 + 3) = v114;
    v43 = static Font.footnote.getter();
    KeyPath = swift_getKeyPath();
    v45 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAE4CaseOSgGGAGyAA4FontVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAE4CaseOSgGGAGyAA4FontVSgGGMR) + 36)];
    *v45 = KeyPath;
    v45[1] = v43;
    v46 = static Color.secondary.getter();
    v47 = swift_getKeyPath();
    v48 = &v12[*(v115 + 36)];
    *v48 = v47;
    v48[1] = v46;
    static Alignment.leading.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    v49 = v119;
    outlined init with take of URL?(v12, v119, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAE4CaseOSgGGAGyAA4FontVSgGGAGyAA5ColorVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAE4CaseOSgGGAGyAA4FontVSgGGAGyAA5ColorVSgGGMR);
    v50 = (v49 + *(v116 + 36));
    v51 = v172;
    v50[4] = v171;
    v50[5] = v51;
    v50[6] = v173;
    v52 = v168;
    *v50 = v167;
    v50[1] = v52;
    v53 = v170;
    v50[2] = v169;
    v50[3] = v53;
    LOBYTE(v46) = static Edge.Set.horizontal.getter();
    EdgeInsets.init(_all:)();
    v55 = v54;
    v57 = v56;
    v59 = v58;
    v61 = v60;
    v62 = v117;
    outlined init with take of URL?(v49, v117, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAE4CaseOSgGGAGyAA4FontVSgGGAGyAA5ColorVSgGGAA16_FlexFrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAE4CaseOSgGGAGyAA4FontVSgGGAGyAA5ColorVSgGGAA16_FlexFrameLayoutVGMR);
    v25 = v127;
    v63 = v62 + *(v127 + 36);
    *v63 = v46;
    *(v63 + 8) = v55;
    *(v63 + 16) = v57;
    *(v63 + 24) = v59;
    *(v63 + 32) = v61;
    *(v63 + 40) = 0;
    v64 = v62;
    v65 = v118;
    outlined init with take of URL?(v64, v118, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAE4CaseOSgGGAGyAA4FontVSgGGAGyAA5ColorVSgGGAA16_FlexFrameLayoutVGAA08_PaddingO0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAE4CaseOSgGGAGyAA4FontVSgGGAGyAA5ColorVSgGGAA16_FlexFrameLayoutVGAA08_PaddingO0VGMR);
    v22 = v132;
    outlined init with take of URL?(v65, v132, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAE4CaseOSgGGAGyAA4FontVSgGGAGyAA5ColorVSgGGAA16_FlexFrameLayoutVGAA08_PaddingO0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAE4CaseOSgGGAGyAA4FontVSgGGAGyAA5ColorVSgGGAA16_FlexFrameLayoutVGAA08_PaddingO0VGMR);
    v24 = 0;
  }

  v67 = v130;
  v66 = v131;
  v68 = v129;
  (*(v126 + 56))(v22, v24, 1, v25);
  v69 = v135;

  specialized InlineProfileEditingView.init(context:)(&v174);
  swift_storeEnumTagMultiPayload();
  LOBYTE(v69) = specialized static Collaboration.Flow.__derived_enum_equals(_:_:)((v69 + v124), v19);
  outlined destroy of Collaboration.Flow(v19, type metadata accessor for Collaboration.Flow);
  if (v69)
  {
    _s7SwiftUI15ModifiedContentVyACyACyACyACyAA4TextVAA16_FixedSizeLayoutVGAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAJyAA4FontVSgGGAJyAA5ColorVSgGGAA08_PaddingH0VGSgWOi0_(&v158);
  }

  else
  {
    v70 = v121;
    String.LocalizationValue.init(stringLiteral:)();
    v71 = v128;
    v72 = v123;
    (*(v128 + 16))(v120, v70, v123);
    if (one-time initialization token for module != -1)
    {
      swift_once();
    }

    v73 = static NSBundle.module;
    static Locale.current.getter();
    v74 = String.init(localized:table:bundle:locale:comment:)();
    v76 = v75;
    (*(v71 + 8))(v70, v72);
    *&v158 = v74;
    *(&v158 + 1) = v76;
    _sS2SSysWl_0();
    v135 = Text.init<A>(_:)();
    v78 = v77;
    v80 = v79;
    v82 = v81;
    v83 = swift_getKeyPath();
    LOBYTE(v74) = v80 & 1;
    LOBYTE(v158) = v80 & 1;
    static Font.footnote.getter();
    (*(v67 + 104))(v68, enum case for Font.Leading.tight(_:), v66);
    v84 = Font.leading(_:)();

    (*(v67 + 8))(v68, v66);
    v85 = swift_getKeyPath();
    v86 = static Color.secondary.getter();
    v87 = swift_getKeyPath();
    v88 = static Edge.Set.horizontal.getter();
    EdgeInsets.init(_all:)();
    LOBYTE(v158) = 0;
    *&v149 = v135;
    *(&v149 + 1) = v78;
    LOBYTE(v150) = v74;
    *(&v150 + 1) = v82;
    LOWORD(v151) = 256;
    *(&v151 + 1) = v83;
    LOBYTE(v152) = 1;
    *(&v152 + 1) = v85;
    *&v153 = v84;
    *(&v153 + 1) = v87;
    *&v154 = v86;
    BYTE8(v154) = v88;
    *&v155 = v89;
    *(&v155 + 1) = v90;
    *&v156 = v91;
    *(&v156 + 1) = v92;
    v157 = 0;
    v93.location = &v149;
    CFRange.init(_:)(v93);
    v164 = v155;
    v165 = v156;
    v166 = v157;
    v160 = v151;
    v161 = v152;
    v162 = v153;
    v163 = v154;
    v158 = v149;
    v159 = v150;
    v22 = v132;
  }

  v94 = v133;
  outlined init with copy of TaskPriority?(v22, v133, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAE4CaseOSgGGAGyAA4FontVSgGGAGyAA5ColorVSgGGAA16_FlexFrameLayoutVGAA08_PaddingO0VGSgMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAE4CaseOSgGGAGyAA4FontVSgGGAGyAA5ColorVSgGGAA16_FlexFrameLayoutVGAA08_PaddingO0VGSgMR);
  v142 = v164;
  v143 = v165;
  v144 = v166;
  v138 = v160;
  v139 = v161;
  v140 = v162;
  v141 = v163;
  v136 = v158;
  v137 = v159;
  v95 = v134;
  outlined init with copy of TaskPriority?(v94, v134, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAE4CaseOSgGGAGyAA4FontVSgGGAGyAA5ColorVSgGGAA16_FlexFrameLayoutVGAA08_PaddingO0VGSgMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAE4CaseOSgGGAGyAA4FontVSgGGAGyAA5ColorVSgGGAA16_FlexFrameLayoutVGAA08_PaddingO0VGSgMR);
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAE4CaseOSgGGAGyAA4FontVSgGGAGyAA5ColorVSgGGAA16_FlexFrameLayoutVGAA08_PaddingO0VGSg_09MusicCoreB024InlineProfileEditingViewVACyACyACyACyACyAeA010_FixedSizeO0VGAGyAA0E9AlignmentOGGAPGAUGA_GSgtMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAE4CaseOSgGGAGyAA4FontVSgGGAGyAA5ColorVSgGGAA16_FlexFrameLayoutVGAA08_PaddingO0VGSg_09MusicCoreB024InlineProfileEditingViewVACyACyACyACyACyAeA010_FixedSizeO0VGAGyAA0E9AlignmentOGGAPGAUGA_GSgtMR);
  v97 = (v95 + *(v96 + 48));
  v98 = v178;
  v99 = v177;
  v145[3] = v177;
  v145[4] = v178;
  v100 = v175;
  v101 = v174;
  v145[1] = v175;
  v145[2] = v176;
  v145[0] = v174;
  v97[2] = v176;
  v97[3] = v99;
  v97[4] = v98;
  *v97 = v101;
  v97[1] = v100;
  v102 = *(v96 + 64);
  v103 = v143;
  v146[6] = v142;
  v146[7] = v143;
  v105 = v140;
  v104 = v141;
  v146[4] = v140;
  v146[5] = v141;
  v106 = v138;
  v107 = v139;
  v146[2] = v138;
  v146[3] = v139;
  v109 = v136;
  v108 = v137;
  v146[0] = v136;
  v146[1] = v137;
  v110 = v95 + v102;
  *(v110 + 96) = v142;
  *(v110 + 112) = v103;
  v147 = v144;
  *(v110 + 128) = v144;
  *(v110 + 32) = v106;
  *(v110 + 48) = v107;
  *(v110 + 64) = v105;
  *(v110 + 80) = v104;
  *v110 = v109;
  *(v110 + 16) = v108;
  outlined init with copy of InlineProfileEditingView(v145, &v149);
  outlined init with copy of TaskPriority?(v146, &v149, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4TextVAA16_FixedSizeLayoutVGAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAJyAA4FontVSgGGAJyAA5ColorVSgGGAA08_PaddingH0VGSgMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4TextVAA16_FixedSizeLayoutVGAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAJyAA4FontVSgGGAJyAA5ColorVSgGGAA08_PaddingH0VGSgMR);
  outlined destroy of TaskPriority?(v22, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAE4CaseOSgGGAGyAA4FontVSgGGAGyAA5ColorVSgGGAA16_FlexFrameLayoutVGAA08_PaddingO0VGSgMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAE4CaseOSgGGAGyAA4FontVSgGGAGyAA5ColorVSgGGAA16_FlexFrameLayoutVGAA08_PaddingO0VGSgMR);
  v155 = v142;
  v156 = v143;
  v157 = v144;
  v151 = v138;
  v152 = v139;
  v153 = v140;
  v154 = v141;
  v149 = v136;
  v150 = v137;
  outlined destroy of TaskPriority?(&v149, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4TextVAA16_FixedSizeLayoutVGAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAJyAA4FontVSgGGAJyAA5ColorVSgGGAA08_PaddingH0VGSgMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4TextVAA16_FixedSizeLayoutVGAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAJyAA4FontVSgGGAJyAA5ColorVSgGGAA08_PaddingH0VGSgMR);
  v148[2] = v176;
  v148[3] = v177;
  v148[4] = v178;
  v148[0] = v174;
  v148[1] = v175;
  outlined destroy of InlineProfileEditingView(v148);
  return outlined destroy of TaskPriority?(v94, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAE4CaseOSgGGAGyAA4FontVSgGGAGyAA5ColorVSgGGAA16_FlexFrameLayoutVGAA08_PaddingO0VGSgMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAE4CaseOSgGGAGyAA4FontVSgGGAGyAA5ColorVSgGGAA16_FlexFrameLayoutVGAA08_PaddingO0VGSgMR);
}

uint64_t protocol witness for View.body.getter in conformance Collaboration.Flow.View@<X0>(uint64_t a2@<X2>, uint64_t *a3@<X3>, uint64_t *a4@<X4>, uint64_t (*a5)(uint64_t)@<X5>, uint64_t a6@<X8>)
{
  *a6 = static HorizontalAlignment.center.getter();
  *(a6 + 8) = a2;
  *(a6 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  return a5(v6);
}

uint64_t Collaboration.Flow.ActionButton.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v76 = a1;
  v3 = type metadata accessor for EnvironmentValues();
  v65 = *(v3 - 8);
  v66 = v3;
  __chkstk_darwin();
  v64 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = type metadata accessor for RoundedRectangle();
  __chkstk_darwin();
  v74 = (&v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI10_ShapeViewVyAA16RoundedRectangleVAA5ColorVGMd, &_s7SwiftUI10_ShapeViewVyAA16RoundedRectangleVAA5ColorVGMR);
  __chkstk_darwin();
  v75 = &v63 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA012_ConditionalD0VyACyAA12ProgressViewVyAA05EmptyH0VAKGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGACyAA4TextVAA16_FlexFrameLayoutVGGGAA01_jk9TransformM0VySbGGMd, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA012_ConditionalD0VyACyAA12ProgressViewVyAA05EmptyH0VAKGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGACyAA4TextVAA16_FlexFrameLayoutVGGGAA01_jk9TransformM0VySbGGMR) - 8;
  __chkstk_darwin();
  v9 = &v63 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA012_ConditionalD0VyACyAA12ProgressViewVyAA05EmptyH0VAKGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGACyAA4TextVAA16_FlexFrameLayoutVGGGAA01_jk9TransformM0VySbGGAWGMd, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA012_ConditionalD0VyACyAA12ProgressViewVyAA05EmptyH0VAKGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGACyAA4TextVAA16_FlexFrameLayoutVGGGAA01_jk9TransformM0VySbGGAWGMR) - 8;
  __chkstk_darwin();
  v12 = &v63 - v11;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6ButtonVyAA012_ConditionalD0VyACyAA12ProgressViewVyAA05EmptyH0VAKGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGACyAA4TextVAA16_FlexFrameLayoutVGGGAA01_jk9TransformM0VySbGGAWGARGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6ButtonVyAA012_ConditionalD0VyACyAA12ProgressViewVyAA05EmptyH0VAKGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGACyAA4TextVAA16_FlexFrameLayoutVGGGAA01_jk9TransformM0VySbGGAWGARGMR);
  __chkstk_darwin();
  v14 = &v63 - v13;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA6ButtonVyAA012_ConditionalD0VyACyAA12ProgressViewVyAA05EmptyH0VAKGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGACyAA4TextVAA16_FlexFrameLayoutVGGGAA01_jk9TransformM0VySbGGAWGARGAWGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6ButtonVyAA012_ConditionalD0VyACyAA12ProgressViewVyAA05EmptyH0VAKGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGACyAA4TextVAA16_FlexFrameLayoutVGGGAA01_jk9TransformM0VySbGGAWGARGAWGMR);
  __chkstk_darwin();
  v16 = &v63 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE4boldyQrSbFQOyAA15ModifiedContentVyAFyAFyAFyAA6ButtonVyAA012_ConditionalF0VyAFyAA08ProgressC0VyAA05EmptyC0VANGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAFyAA4TextVAA16_FlexFrameLayoutVGGGAA01_kl9TransformN0VySbGGAZGAUGAZG_Qo_Md, &_s7SwiftUI4ViewPAAE4boldyQrSbFQOyAA15ModifiedContentVyAFyAFyAFyAA6ButtonVyAA012_ConditionalF0VyAFyAA08ProgressC0VyAA05EmptyC0VANGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAFyAA4TextVAA16_FlexFrameLayoutVGGGAA01_kl9TransformN0VySbGGAZGAUGAZG_Qo_MR);
  v71 = *(v17 - 8);
  v72 = v17;
  __chkstk_darwin();
  v70 = &v63 - v18;
  v19 = swift_allocObject();
  v20 = *(v1 + 48);
  *(v19 + 48) = *(v1 + 32);
  *(v19 + 64) = v20;
  *(v19 + 80) = *(v1 + 64);
  v21 = *(v1 + 16);
  *(v19 + 16) = *v1;
  *(v19 + 32) = v21;
  v77 = v1;
  outlined init with copy of Collaboration.Flow.ActionButton(v1, v87);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA12ProgressViewVyAA05EmptyG0VAIGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAEyAA4TextVAA16_FlexFrameLayoutVGGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA12ProgressViewVyAA05EmptyG0VAIGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAEyAA4TextVAA16_FlexFrameLayoutVGGMR);
  lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ProgressView<EmptyView, EmptyView>, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<Text, _FlexFrameLayout>> and conformance <> _ConditionalContent<A, B>();
  Button.init(action:label:)();
  v90 = *(v1 + 40);
  v87[0] = *(v1 + 40);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd, &_s7SwiftUI5StateVySbGMR);
  State.wrappedValue.getter();
  v22 = v80;
  KeyPath = swift_getKeyPath();
  v24 = swift_allocObject();
  *(v24 + 16) = v22;
  v25 = &v9[*(v7 + 44)];
  *v25 = KeyPath;
  v25[1] = _s7SwiftUI4ViewPAAE8disabledyQrSbFySbzcfU_TA_0;
  v25[2] = v24;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  outlined init with take of URL?(v9, v12, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA012_ConditionalD0VyACyAA12ProgressViewVyAA05EmptyH0VAKGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGACyAA4TextVAA16_FlexFrameLayoutVGGGAA01_jk9TransformM0VySbGGMd, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA012_ConditionalD0VyACyAA12ProgressViewVyAA05EmptyH0VAKGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGACyAA4TextVAA16_FlexFrameLayoutVGGGAA01_jk9TransformM0VySbGGMR);
  v26 = &v12[*(v10 + 44)];
  v27 = v85;
  *(v26 + 4) = v84;
  *(v26 + 5) = v27;
  *(v26 + 6) = v86;
  v28 = v81;
  *v26 = v80;
  *(v26 + 1) = v28;
  v29 = v83;
  *(v26 + 2) = v82;
  *(v26 + 3) = v29;
  v30 = *(v2 + 16);
  if (v30)
  {
    v31 = static Color.accentColor.getter();
  }

  else
  {
    v31 = static Color.white.getter();
  }

  v32 = v31;
  v33 = swift_getKeyPath();
  outlined init with take of URL?(v12, v14, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA012_ConditionalD0VyACyAA12ProgressViewVyAA05EmptyH0VAKGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGACyAA4TextVAA16_FlexFrameLayoutVGGGAA01_jk9TransformM0VySbGGAWGMd, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA012_ConditionalD0VyACyAA12ProgressViewVyAA05EmptyH0VAKGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGACyAA4TextVAA16_FlexFrameLayoutVGGGAA01_jk9TransformM0VySbGGAWGMR);
  v34 = &v14[*(v67 + 36)];
  *v34 = v33;
  v34[1] = v32;
  v35 = v70;
  if (one-time initialization token for minHeight != -1)
  {
    swift_once();
  }

  v36 = *&static Collaboration.Flow.ActionButton.Specs.minHeight;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  outlined init with take of URL?(v14, v16, &_s7SwiftUI15ModifiedContentVyACyACyAA6ButtonVyAA012_ConditionalD0VyACyAA12ProgressViewVyAA05EmptyH0VAKGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGACyAA4TextVAA16_FlexFrameLayoutVGGGAA01_jk9TransformM0VySbGGAWGARGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6ButtonVyAA012_ConditionalD0VyACyAA12ProgressViewVyAA05EmptyH0VAKGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGACyAA4TextVAA16_FlexFrameLayoutVGGGAA01_jk9TransformM0VySbGGAWGARGMR);
  v37 = &v16[*(v68 + 36)];
  v38 = v87[5];
  *(v37 + 4) = v87[4];
  *(v37 + 5) = v38;
  *(v37 + 6) = v87[6];
  v39 = v87[1];
  *v37 = v87[0];
  *(v37 + 1) = v39;
  v40 = v87[3];
  *(v37 + 2) = v87[2];
  *(v37 + 3) = v40;
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<ModifiedContent<ProgressView<EmptyView, EmptyView>, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<Text, _FlexFrameLayout>>>, _EnvironmentKeyTransformModifier<Bool>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Color?>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<ModifiedContent<ProgressView<EmptyView, EmptyView>, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<Text, _FlexFrameLayout>>>, _EnvironmentKeyTransformModifier<Bool>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Color?>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6ButtonVyAA012_ConditionalD0VyACyAA12ProgressViewVyAA05EmptyH0VAKGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGACyAA4TextVAA16_FlexFrameLayoutVGGGAA01_jk9TransformM0VySbGGAWGARGAWGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6ButtonVyAA012_ConditionalD0VyACyAA12ProgressViewVyAA05EmptyH0VAKGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGACyAA4TextVAA16_FlexFrameLayoutVGGGAA01_jk9TransformM0VySbGGAWGARGAWGMR, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<ModifiedContent<ProgressView<EmptyView, EmptyView>, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<Text, _FlexFrameLayout>>>, _EnvironmentKeyTransformModifier<Bool>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>);
  View.bold(_:)();
  outlined destroy of TaskPriority?(v16, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6ButtonVyAA012_ConditionalD0VyACyAA12ProgressViewVyAA05EmptyH0VAKGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGACyAA4TextVAA16_FlexFrameLayoutVGGGAA01_jk9TransformM0VySbGGAWGARGAWGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6ButtonVyAA012_ConditionalD0VyACyAA12ProgressViewVyAA05EmptyH0VAKGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGACyAA4TextVAA16_FlexFrameLayoutVGGGAA01_jk9TransformM0VySbGGAWGARGAWGMR);
  v41 = v36 * 0.5;
  v42 = *(v69 + 20);
  v43 = enum case for RoundedCornerStyle.continuous(_:);
  v44 = type metadata accessor for RoundedCornerStyle();
  v45 = v74;
  (*(*(v44 - 8) + 104))(v74 + v42, v43, v44);
  *v45 = v41;
  v45[1] = v41;
  v46 = *(v2 + 56);
  v88 = v46;
  v89 = *(v2 + 64);
  if (v89 == 1)
  {
    if (v46)
    {
      goto LABEL_11;
    }
  }

  else
  {

    v47 = static os_log_type_t.fault.getter();
    v48 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)(v47, &_mh_execute_header, v48, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    v49 = v64;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined destroy of TaskPriority?(&v88, &_s7SwiftUI11EnvironmentVySbGMd, &_s7SwiftUI11EnvironmentVySbGMR);
    (*(v65 + 8))(v49, v66);
    if (v79)
    {
      goto LABEL_11;
    }
  }

  v79 = v90;
  State.wrappedValue.getter();
  if (v78 != 1)
  {
    v51 = [objc_opt_self() systemFillColor];
    v50 = Color.init(_:)();
    goto LABEL_15;
  }

LABEL_11:
  if (v30)
  {
    v50 = static Color.clear.getter();
  }

  else
  {
    v50 = static Color.accentColor.getter();
  }

LABEL_15:
  v52 = v50;
  v53 = v75;
  outlined init with take of Collaboration.Flow.Collaborator(v45, v75, &type metadata accessor for RoundedRectangle);
  v54 = v73;
  *(v53 + *(v73 + 52)) = v52;
  *(v53 + *(v54 + 56)) = 256;
  v55 = static Alignment.center.getter();
  v57 = v56;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE4boldyQrSbFQOyACyACyACyACyAA6ButtonVyAA012_ConditionalD0VyACyAA08ProgressE0VyAA05EmptyE0VANGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGACyAA4TextVAA16_FlexFrameLayoutVGGGAA01_kl9TransformN0VySbGGAZGAUGAZG_Qo_AA011_BackgroundN0VyAA06_ShapeE0VyAA16RoundedRectangleVASGGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE4boldyQrSbFQOyACyACyACyACyAA6ButtonVyAA012_ConditionalD0VyACyAA08ProgressE0VyAA05EmptyE0VANGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGACyAA4TextVAA16_FlexFrameLayoutVGGGAA01_kl9TransformN0VySbGGAZGAUGAZG_Qo_AA011_BackgroundN0VyAA06_ShapeE0VyAA16RoundedRectangleVASGGGMR);
  v59 = v76;
  v60 = v76 + *(v58 + 36);
  outlined init with take of URL?(v53, v60, &_s7SwiftUI10_ShapeViewVyAA16RoundedRectangleVAA5ColorVGMd, &_s7SwiftUI10_ShapeViewVyAA16RoundedRectangleVAA5ColorVGMR);
  v61 = (v60 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_BackgroundModifierVyAA10_ShapeViewVyAA16RoundedRectangleVAA5ColorVGGMd, &_s7SwiftUI19_BackgroundModifierVyAA10_ShapeViewVyAA16RoundedRectangleVAA5ColorVGGMR) + 36));
  *v61 = v55;
  v61[1] = v57;
  return (*(v71 + 32))(v59, v35, v72);
}

uint64_t closure #1 in Collaboration.Flow.ActionButton.body.getter(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd, &_s7SwiftUI5StateVySbGMR);
  State.wrappedValue.setter();
  return (*(a1 + 24))(a1);
}

uint64_t closure #2 in Collaboration.Flow.ActionButton.body.getter(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAA12ProgressViewVyAA05EmptyH0VAKGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA4TextVAA16_FlexFrameLayoutVG_GMd, &_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAA12ProgressViewVyAA05EmptyH0VAKGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA4TextVAA16_FlexFrameLayoutVG_GMR);
  __chkstk_darwin();
  v3 = v22 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA12ProgressViewVyAA05EmptyF0VAGGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd, &_s7SwiftUI15ModifiedContentVyAA12ProgressViewVyAA05EmptyF0VAGGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMR);
  __chkstk_darwin();
  v6 = v22 - v5;
  v22[0] = *(a1 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd, &_s7SwiftUI5StateVySbGMR);
  State.wrappedValue.getter();
  if (v23 == 1)
  {
    ProgressView<>.init<>()();
    v7 = static Color.white.getter();
    KeyPath = swift_getKeyPath();
    v9 = &v6[*(v4 + 36)];
    *v9 = KeyPath;
    v9[1] = v7;
    outlined init with copy of TaskPriority?(v6, v3, &_s7SwiftUI15ModifiedContentVyAA12ProgressViewVyAA05EmptyF0VAGGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd, &_s7SwiftUI15ModifiedContentVyAA12ProgressViewVyAA05EmptyF0VAGGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMR);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA16_FlexFrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA4TextVAA16_FlexFrameLayoutVGMR);
    lazy protocol witness table accessor for type ModifiedContent<ProgressView<EmptyView, EmptyView>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<Text, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<Text, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyAA4TextVAA16_FlexFrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA4TextVAA16_FlexFrameLayoutVGMR);
    _ConditionalContent<>.init(storage:)();
    return outlined destroy of TaskPriority?(v6, &_s7SwiftUI15ModifiedContentVyAA12ProgressViewVyAA05EmptyF0VAGGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd, &_s7SwiftUI15ModifiedContentVyAA12ProgressViewVyAA05EmptyF0VAGGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMR);
  }

  else
  {
    v11 = *(a1 + 8);
    *&v22[0] = *a1;
    *(&v22[0] + 1) = v11;
    _sS2SSysWl_0();

    v12 = Text.init<A>(_:)();
    v14 = v13;
    v16 = v15;
    v18 = v17;
    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    LOBYTE(v23) = v16 & 1;
    *v3 = v12;
    *(v3 + 1) = v14;
    v3[16] = v16 & 1;
    *(v3 + 3) = v18;
    v19 = v22[5];
    *(v3 + 6) = v22[4];
    *(v3 + 7) = v19;
    *(v3 + 8) = v22[6];
    v20 = v22[1];
    *(v3 + 2) = v22[0];
    *(v3 + 3) = v20;
    v21 = v22[3];
    *(v3 + 4) = v22[2];
    *(v3 + 5) = v21;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA16_FlexFrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA4TextVAA16_FlexFrameLayoutVGMR);
    lazy protocol witness table accessor for type ModifiedContent<ProgressView<EmptyView, EmptyView>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<Text, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<Text, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyAA4TextVAA16_FlexFrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA4TextVAA16_FlexFrameLayoutVGMR);
    return _ConditionalContent<>.init(storage:)();
  }
}

void one-time initialization function for minHeight()
{
  v0 = [objc_opt_self() currentTraitCollection];
  v1 = [v0 userInterfaceIdiom];

  v2 = 50.0;
  if (v1 == 6)
  {
    v2 = 44.0;
  }

  static Collaboration.Flow.ActionButton.Specs.minHeight = *&v2;
}

uint64_t one-time initialization function for avatarSizeLength()
{
  if (one-time initialization token for isVision != -1)
  {
    result = swift_once();
  }

  v0 = 180.0;
  if (static Collaboration.Flow.Specs.isVision)
  {
    v0 = 140.0;
  }

  static Collaboration.Flow.Specs.avatarSizeLength = *&v0;
  return result;
}

uint64_t one-time initialization function for subtitleBottomPadding()
{
  if (one-time initialization token for isVision != -1)
  {
    result = swift_once();
  }

  v0 = 24.0;
  if (static Collaboration.Flow.Specs.isVision)
  {
    v0 = 16.0;
  }

  static Collaboration.Flow.Specs.subtitleBottomPadding = *&v0;
  return result;
}

uint64_t one-time initialization function for subtitleFont()
{
  v0 = type metadata accessor for Font.Leading();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for isVision != -1)
  {
    swift_once();
  }

  if (static Collaboration.Flow.Specs.isVision == 1)
  {
    result = static Font.subheadline.getter();
    v5 = result;
  }

  else
  {
    static Font.body.getter();
    (*(v1 + 104))(v3, enum case for Font.Leading.tight(_:), v0);
    v5 = Font.leading(_:)();

    result = (*(v1 + 8))(v3, v0);
  }

  static Collaboration.Flow.Specs.subtitleFont = v5;
  return result;
}

uint64_t one-time initialization function for collaborationGlyphFont()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
  __chkstk_darwin();
  v1 = &v5 - v0;
  if (one-time initialization token for isVision != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Font.Design();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = static Font.system(size:weight:design:)();
  result = outlined destroy of TaskPriority?(v1, &_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
  static Collaboration.Flow.Specs.collaborationGlyphFont = v3;
  return result;
}

uint64_t one-time initialization function for toggleDescriptionTextTopPadding()
{
  if (one-time initialization token for isVision != -1)
  {
    result = swift_once();
  }

  v0 = 6.0;
  if (static Collaboration.Flow.Specs.isVision)
  {
    v0 = 9.0;
  }

  static Collaboration.Flow.Specs.toggleDescriptionTextTopPadding = *&v0;
  return result;
}

uint64_t ICMusicUserProfile.collaborator.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit7ArtworkVSgMd_0, &_s8MusicKit7ArtworkVSgMR_0);
  __chkstk_darwin();
  v5 = v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = v30 - v6;
  v8 = type metadata accessor for Artwork();
  v9 = *(v8 - 8);
  v31 = *(v9 + 56);
  v32 = v8;
  v30[1] = v9 + 56;
  v31(v7, 1, 1);
  v10 = [v2 artworkInfo];
  if (v10)
  {
    v11 = v10;
    v12 = [v10 responseDictionary];

    if (v12)
    {
      v13 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      _ss30_dictionaryDownCastConditionalySDyq0_q1_GSgSDyxq_GSHRzSHR0_r2_lFs11AnyHashableV_ypSSypTg5_0(v13);
      v15 = v14;

      if (v15)
      {
        Artwork.init(_:)();
        outlined destroy of TaskPriority?(v7, &_s8MusicKit7ArtworkVSgMd_0, &_s8MusicKit7ArtworkVSgMR_0);
        outlined init with take of URL?(v5, v7, &_s8MusicKit7ArtworkVSgMd_0, &_s8MusicKit7ArtworkVSgMR_0);
      }
    }
  }

  v16 = [v2 name];
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  v20 = [v2 handle];
  if (v20)
  {
    v21 = v20;
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;
  }

  else
  {
    v22 = 0;
    v24 = 0;
  }

  outlined init with copy of TaskPriority?(v7, v5, &_s8MusicKit7ArtworkVSgMd_0, &_s8MusicKit7ArtworkVSgMR_0);
  v25 = [v2 collaborationAllowed];
  outlined destroy of TaskPriority?(v7, &_s8MusicKit7ArtworkVSgMd_0, &_s8MusicKit7ArtworkVSgMR_0);
  v26 = type metadata accessor for Collaboration.Flow.Collaborator(0);
  v27 = *(v26 + 24);
  (v31)(a1 + v27, 1, 1, v32);
  v28 = *(v26 + 28);
  *a1 = v17;
  a1[1] = v19;
  a1[2] = v22;
  a1[3] = v24;
  result = outlined assign with take of Artwork?(v5, a1 + v27);
  *(a1 + v28) = v25;
  return result;
}

uint64_t key path getter for EnvironmentValues.isEnabled : EnvironmentValues, serialized@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isEnabled.getter();
  *a1 = result & 1;
  return result;
}

uint64_t key path getter for EnvironmentValues.tintColor : EnvironmentValues, serialized@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.tintColor.getter();
  *a1 = result;
  return result;
}

uint64_t key path getter for EnvironmentValues.multilineTextAlignment : EnvironmentValues, serialized@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.multilineTextAlignment.getter();
  *a1 = result;
  return result;
}

uint64_t specialized static Collaboration.Flow.__derived_enum_equals(_:_:)(char *a1, char *a2)
{
  v66 = a1;
  v67 = a2;
  v2 = type metadata accessor for Playlist.Collaborator();
  v62 = *(v2 - 8);
  v63 = v2;
  __chkstk_darwin();
  v61 = &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Collaboration.Flow.Collaborator(0);
  v59 = *(v4 - 8);
  v60 = v4;
  __chkstk_darwin();
  v57 = (&v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore13CollaborationO0aB2UIE4FlowO12CollaboratorVSgMd, &_s9MusicCore13CollaborationO0aB2UIE4FlowO12CollaboratorVSgMR);
  __chkstk_darwin();
  v58 = (&v56 - v6);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore13CollaborationO0aB2UIE4FlowO12CollaboratorVSg_AItMd, &_s9MusicCore13CollaborationO0aB2UIE4FlowO12CollaboratorVSg_AItMR);
  __chkstk_darwin();
  v8 = &v56 - v7;
  v9 = type metadata accessor for URL();
  v65 = *(v9 - 8);
  __chkstk_darwin();
  v11 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v56 - v12;
  type metadata accessor for Collaboration.Flow(0);
  __chkstk_darwin();
  v15 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v17 = &v56 - v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore13CollaborationO0aB2UIE4FlowO_AFtMd, &_s9MusicCore13CollaborationO0aB2UIE4FlowO_AFtMR);
  v18 = __chkstk_darwin();
  v20 = &v56 - v19;
  v22 = &v56 + *(v21 + 56) - v19;
  outlined init with copy of Collaboration.Flow(v66, &v56 - v19, v18, type metadata accessor for Collaboration.Flow);
  outlined init with copy of Collaboration.Flow(v67, v22, v23, type metadata accessor for Collaboration.Flow);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v32 = v64;
    v63 = v8;
    v66 = v11;
    v67 = v13;
    v33 = v9;
    outlined init with copy of Collaboration.Flow(v20, v17, v25, type metadata accessor for Collaboration.Flow);
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore13CollaborationO0aB2UIE4FlowO12CollaboratorVSg_10Foundation3URLVSbtMd, &_s9MusicCore13CollaborationO0aB2UIE4FlowO12CollaboratorVSg_10Foundation3URLVSbtMR);
    v35 = *(v34 + 48);
    v36 = *(v34 + 64);
    v37 = v17[v36];
    if (swift_getEnumCaseMultiPayload())
    {
      (*(v65 + 8))(&v17[v35], v9);
      outlined destroy of TaskPriority?(v17, &_s9MusicCore13CollaborationO0aB2UIE4FlowO12CollaboratorVSgMd, &_s9MusicCore13CollaborationO0aB2UIE4FlowO12CollaboratorVSgMR);
LABEL_10:
      outlined destroy of TaskPriority?(v20, &_s9MusicCore13CollaborationO0aB2UIE4FlowO_AFtMd, &_s9MusicCore13CollaborationO0aB2UIE4FlowO_AFtMR);
LABEL_11:
      v30 = 0;
      return v30 & 1;
    }

    LODWORD(v62) = v37;
    v39 = v22[v36];
    v40 = *(v65 + 32);
    v40(v67, &v17[v35], v33);
    v40(v66, &v22[v35], v33);
    v41 = *(v32 + 48);
    v42 = v63;
    outlined init with take of URL?(v17, v63, &_s9MusicCore13CollaborationO0aB2UIE4FlowO12CollaboratorVSgMd, &_s9MusicCore13CollaborationO0aB2UIE4FlowO12CollaboratorVSgMR);
    outlined init with take of URL?(v22, v42 + v41, &_s9MusicCore13CollaborationO0aB2UIE4FlowO12CollaboratorVSgMd, &_s9MusicCore13CollaborationO0aB2UIE4FlowO12CollaboratorVSgMR);
    v43 = v60;
    v44 = *(v59 + 48);
    if (v44(v42, 1, v60) == 1)
    {
      v45 = v44(v42 + v41, 1, v43);
      v46 = v65;
      v47 = v66;
      v48 = v67;
      if (v45 == 1)
      {
        outlined destroy of TaskPriority?(v42, &_s9MusicCore13CollaborationO0aB2UIE4FlowO12CollaboratorVSgMd, &_s9MusicCore13CollaborationO0aB2UIE4FlowO12CollaboratorVSgMR);
        goto LABEL_21;
      }
    }

    else
    {
      v49 = v58;
      outlined init with copy of TaskPriority?(v42, v58, &_s9MusicCore13CollaborationO0aB2UIE4FlowO12CollaboratorVSgMd, &_s9MusicCore13CollaborationO0aB2UIE4FlowO12CollaboratorVSgMR);
      if (v44(v42 + v41, 1, v43) != 1)
      {
        v51 = v57;
        outlined init with take of Collaboration.Flow.Collaborator(v42 + v41, v57, type metadata accessor for Collaboration.Flow.Collaborator);
        v52 = specialized static Collaboration.Flow.Collaborator.__derived_struct_equals(_:_:)(v49, v51);
        outlined destroy of Collaboration.Flow(v51, type metadata accessor for Collaboration.Flow.Collaborator);
        outlined destroy of Collaboration.Flow(v49, type metadata accessor for Collaboration.Flow.Collaborator);
        outlined destroy of TaskPriority?(v42, &_s9MusicCore13CollaborationO0aB2UIE4FlowO12CollaboratorVSgMd, &_s9MusicCore13CollaborationO0aB2UIE4FlowO12CollaboratorVSgMR);
        v46 = v65;
        v47 = v66;
        v48 = v67;
        if (v52)
        {
LABEL_21:
          v53 = static URL.== infix(_:_:)();
          v54 = *(v46 + 8);
          v54(v47, v33);
          v54(v48, v33);
          if (v53)
          {
            v55 = v62 ^ v39;
            outlined destroy of Collaboration.Flow(v20, type metadata accessor for Collaboration.Flow);
            v30 = v55 ^ 1;
            return v30 & 1;
          }

          goto LABEL_23;
        }

LABEL_19:
        v50 = *(v46 + 8);
        v50(v47, v33);
        v50(v48, v33);
LABEL_23:
        outlined destroy of Collaboration.Flow(v20, type metadata accessor for Collaboration.Flow);
        goto LABEL_11;
      }

      outlined destroy of Collaboration.Flow(v49, type metadata accessor for Collaboration.Flow.Collaborator);
      v46 = v65;
      v47 = v66;
      v48 = v67;
    }

    outlined destroy of TaskPriority?(v42, &_s9MusicCore13CollaborationO0aB2UIE4FlowO12CollaboratorVSg_AItMd, &_s9MusicCore13CollaborationO0aB2UIE4FlowO12CollaboratorVSg_AItMR);
    goto LABEL_19;
  }

  if (EnumCaseMultiPayload != 1)
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      outlined destroy of Collaboration.Flow(v20, type metadata accessor for Collaboration.Flow);
      v30 = 1;
      return v30 & 1;
    }

    goto LABEL_10;
  }

  outlined init with copy of Collaboration.Flow(v20, v15, v25, type metadata accessor for Collaboration.Flow);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v62 + 8))(v15, v63);
    goto LABEL_10;
  }

  v27 = v61;
  v26 = v62;
  v28 = v22;
  v29 = v63;
  (*(v62 + 32))(v61, v28, v63);
  v30 = static Playlist.Collaborator.== infix(_:_:)();
  v31 = *(v26 + 8);
  v31(v27, v29);
  v31(v15, v29);
  outlined destroy of Collaboration.Flow(v20, type metadata accessor for Collaboration.Flow);
  return v30 & 1;
}

uint64_t specialized static Collaboration.Flow.Collaborator.__derived_struct_equals(_:_:)(void *a1, void *a2)
{
  v4 = type metadata accessor for Artwork();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit7ArtworkVSgMd_0, &_s8MusicKit7ArtworkVSgMR_0);
  __chkstk_darwin();
  v9 = &v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit7ArtworkVSg_ADtMd, &_s8MusicKit7ArtworkVSg_ADtMR);
  __chkstk_darwin();
  v12 = &v24 - v11;
  if (*a1 != *a2 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_16;
  }

  v13 = a1[3];
  v14 = a2[3];
  if (v13)
  {
    if (!v14 || (a1[2] != a2[2] || v13 != v14) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else if (v14)
  {
    goto LABEL_16;
  }

  v24 = v7;
  v25 = type metadata accessor for Collaboration.Flow.Collaborator(0);
  v15 = *(v25 + 24);
  v16 = *(v10 + 48);
  outlined init with copy of TaskPriority?(a1 + v15, v12, &_s8MusicKit7ArtworkVSgMd_0, &_s8MusicKit7ArtworkVSgMR_0);
  outlined init with copy of TaskPriority?(a2 + v15, &v12[v16], &_s8MusicKit7ArtworkVSgMd_0, &_s8MusicKit7ArtworkVSgMR_0);
  v17 = *(v5 + 48);
  if (v17(v12, 1, v4) == 1)
  {
    if (v17(&v12[v16], 1, v4) == 1)
    {
      outlined destroy of TaskPriority?(v12, &_s8MusicKit7ArtworkVSgMd_0, &_s8MusicKit7ArtworkVSgMR_0);
LABEL_19:
      v18 = *(a1 + *(v25 + 28)) ^ *(a2 + *(v25 + 28)) ^ 1;
      return v18 & 1;
    }

    goto LABEL_15;
  }

  outlined init with copy of TaskPriority?(v12, v9, &_s8MusicKit7ArtworkVSgMd_0, &_s8MusicKit7ArtworkVSgMR_0);
  if (v17(&v12[v16], 1, v4) == 1)
  {
    (*(v5 + 8))(v9, v4);
LABEL_15:
    outlined destroy of TaskPriority?(v12, &_s8MusicKit7ArtworkVSg_ADtMd, &_s8MusicKit7ArtworkVSg_ADtMR);
    goto LABEL_16;
  }

  v20 = &v12[v16];
  v21 = v24;
  (*(v5 + 32))(v24, v20, v4);
  lazy protocol witness table accessor for type InlineProfileEditingView.Context and conformance InlineProfileEditingView.Context(&lazy protocol witness table cache variable for type Artwork and conformance Artwork, &type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
  v22 = dispatch thunk of static Equatable.== infix(_:_:)();
  v23 = *(v5 + 8);
  v23(v21, v4);
  v23(v9, v4);
  outlined destroy of TaskPriority?(v12, &_s8MusicKit7ArtworkVSgMd_0, &_s8MusicKit7ArtworkVSgMR_0);
  if (v22)
  {
    goto LABEL_19;
  }

LABEL_16:
  v18 = 0;
  return v18 & 1;
}

unint64_t _sS2Ss7CVarArg10FoundationWl_0()
{
  result = _sS2Ss7CVarArg10FoundationWL_0;
  if (!_sS2Ss7CVarArg10FoundationWL_0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &_sS2Ss7CVarArg10FoundationWL_0);
  }

  return result;
}

uint64_t outlined destroy of Collaboration.Flow(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with take of Collaboration.Flow.Collaborator(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void type metadata completion function for Collaboration.Flow(uint64_t a1)
{
  type metadata accessor for (Collaboration.Flow.Collaborator?, URL, Bool)(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Playlist.Collaborator();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void type metadata accessor for (Collaboration.Flow.Collaborator?, URL, Bool)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (Collaboration.Flow.Collaborator?, URL, Bool))
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s9MusicCore13CollaborationO0aB2UIE4FlowO12CollaboratorVSgMd, &_s9MusicCore13CollaborationO0aB2UIE4FlowO12CollaboratorVSgMR);
    type metadata accessor for URL();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &lazy cache variable for type metadata for (Collaboration.Flow.Collaborator?, URL, Bool));
    }
  }
}

uint64_t sub_10035BE0C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit7ArtworkVSgMd_0, &_s8MusicKit7ArtworkVSgMR_0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10035BEDC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit7ArtworkVSgMd_0, &_s8MusicKit7ArtworkVSgMR_0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void type metadata completion function for Collaboration.Flow.Collaborator(uint64_t a1)
{
  type metadata accessor for String?(319, &_sSSSgML_0, &type metadata for String, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Artwork?(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for Artwork?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Artwork?)
  {
    type metadata accessor for Artwork();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Artwork?);
    }
  }
}

uint64_t sub_10035C0B0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for Collaboration.Flow(0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[6];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = type metadata accessor for Playlist();
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[7];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[8]);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

uint64_t sub_10035C1CC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for Collaboration.Flow(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
  }

  else
  {
    result = type metadata accessor for Playlist();
    if (*(*(result - 8) + 84) != a3)
    {
      *(a1 + a4[8]) = (a2 - 1);
      return result;
    }

    v9 = result;
    v10 = *(result - 8);
    v11 = a4[7];
  }

  v13 = *(v10 + 56);

  return v13(a1 + v11, a2, a2, v9);
}

void type metadata completion function for Collaboration.Flow.View(uint64_t a1)
{
  type metadata accessor for String?(319, &lazy cache variable for type metadata for State<Bool>, &type metadata for Bool, &type metadata accessor for State);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Collaboration.Flow(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Playlist();
      if (v3 <= 0x3F)
      {
        type metadata accessor for Collaboration.Manager();
        if (v4 <= 0x3F)
        {
          _syycSgMa_0(319);
          if (v5 <= 0x3F)
          {
            _syycMa_0();
            if (v6 <= 0x3F)
            {
              type metadata accessor for StateObject<InlineProfileEditingView.Context>(319);
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

void type metadata accessor for String?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void type metadata accessor for StateObject<InlineProfileEditingView.Context>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StateObject<InlineProfileEditingView.Context>)
  {
    type metadata accessor for InlineProfileEditingView.Context(255);
    lazy protocol witness table accessor for type InlineProfileEditingView.Context and conformance InlineProfileEditingView.Context(&lazy protocol witness table cache variable for type InlineProfileEditingView.Context and conformance InlineProfileEditingView.Context, type metadata accessor for InlineProfileEditingView.Context, &protocol conformance descriptor for InlineProfileEditingView.Context);
    v1 = type metadata accessor for StateObject();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for StateObject<InlineProfileEditingView.Context>);
    }
  }
}

__n128 __swift_memcpy65_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for Collaboration.Flow.ActionButton(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
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

uint64_t storeEnumTagSinglePayload for Collaboration.Flow.ActionButton(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10035C60C(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for Collaboration.Flow(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_10035C6CC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Collaboration.Flow(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata completion function for Collaboration.Flow.ProfileEditingView(uint64_t a1)
{
  result = type metadata accessor for InlineProfileEditingView.Context(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Collaboration.Flow(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_10035C878()
{

  outlined consume of Environment<Bool>.Content(*(v0 + 72), *(v0 + 80));

  return swift_deallocObject();
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ProgressView<EmptyView, EmptyView>, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<Text, _FlexFrameLayout>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ProgressView<EmptyView, EmptyView>, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<Text, _FlexFrameLayout>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ProgressView<EmptyView, EmptyView>, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<Text, _FlexFrameLayout>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA12ProgressViewVyAA05EmptyG0VAIGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAEyAA4TextVAA16_FlexFrameLayoutVGGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA12ProgressViewVyAA05EmptyG0VAIGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAEyAA4TextVAA16_FlexFrameLayoutVGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ProgressView<EmptyView, EmptyView>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<Text, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<Text, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyAA4TextVAA16_FlexFrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA4TextVAA16_FlexFrameLayoutVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ProgressView<EmptyView, EmptyView>, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<Text, _FlexFrameLayout>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ProgressView<EmptyView, EmptyView>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ProgressView<EmptyView, EmptyView>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ProgressView<EmptyView, EmptyView>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA12ProgressViewVyAA05EmptyF0VAGGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd, &_s7SwiftUI15ModifiedContentVyAA12ProgressViewVyAA05EmptyF0VAGGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMR);
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type ProgressView<EmptyView, EmptyView> and conformance ProgressView<A, B>, &_s7SwiftUI12ProgressViewVyAA05EmptyD0VAEGMd, &_s7SwiftUI12ProgressViewVyAA05EmptyD0VAEGMR, &protocol conformance descriptor for ProgressView<A, B>);
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMR, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ProgressView<EmptyView, EmptyView>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t sub_10035CAA4@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isEnabled.getter();
  *a1 = result & 1;
  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<ModifiedContent<ProgressView<EmptyView, EmptyView>, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<Text, _FlexFrameLayout>>>, _EnvironmentKeyTransformModifier<Bool>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<ModifiedContent<ProgressView<EmptyView, EmptyView>, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<Text, _FlexFrameLayout>>>, _EnvironmentKeyTransformModifier<Bool>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<ModifiedContent<ProgressView<EmptyView, EmptyView>, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<Text, _FlexFrameLayout>>>, _EnvironmentKeyTransformModifier<Bool>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6ButtonVyAA012_ConditionalD0VyACyAA12ProgressViewVyAA05EmptyH0VAKGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGACyAA4TextVAA16_FlexFrameLayoutVGGGAA01_jk9TransformM0VySbGGAWGARGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6ButtonVyAA012_ConditionalD0VyACyAA12ProgressViewVyAA05EmptyH0VAKGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGACyAA4TextVAA16_FlexFrameLayoutVGGGAA01_jk9TransformM0VySbGGAWGARGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<ModifiedContent<ProgressView<EmptyView, EmptyView>, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<Text, _FlexFrameLayout>>>, _EnvironmentKeyTransformModifier<Bool>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Color?>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Button<_ConditionalContent<ModifiedContent<ProgressView<EmptyView, EmptyView>, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<Text, _FlexFrameLayout>>>, _EnvironmentKeyTransformModifier<Bool>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA012_ConditionalD0VyACyAA12ProgressViewVyAA05EmptyH0VAKGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGACyAA4TextVAA16_FlexFrameLayoutVGGGAA01_jk9TransformM0VySbGGAWGMd, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA012_ConditionalD0VyACyAA12ProgressViewVyAA05EmptyH0VAKGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGACyAA4TextVAA16_FlexFrameLayoutVGGGAA01_jk9TransformM0VySbGGAWGMR, lazy protocol witness table accessor for type ModifiedContent<Button<_ConditionalContent<ModifiedContent<ProgressView<EmptyView, EmptyView>, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<Text, _FlexFrameLayout>>>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>);
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMR, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<ModifiedContent<ProgressView<EmptyView, EmptyView>, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<Text, _FlexFrameLayout>>>, _EnvironmentKeyTransformModifier<Bool>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<ModifiedContent<ProgressView<EmptyView, EmptyView>, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<Text, _FlexFrameLayout>>>, _EnvironmentKeyTransformModifier<Bool>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Color?>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Button<_ConditionalContent<ModifiedContent<ProgressView<EmptyView, EmptyView>, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<Text, _FlexFrameLayout>>>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Button<_ConditionalContent<ModifiedContent<ProgressView<EmptyView, EmptyView>, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<Text, _FlexFrameLayout>>>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Button<_ConditionalContent<ModifiedContent<ProgressView<EmptyView, EmptyView>, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<Text, _FlexFrameLayout>>>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA012_ConditionalD0VyACyAA12ProgressViewVyAA05EmptyH0VAKGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGACyAA4TextVAA16_FlexFrameLayoutVGGGAA01_jk9TransformM0VySbGGMd, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA012_ConditionalD0VyACyAA12ProgressViewVyAA05EmptyH0VAKGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGACyAA4TextVAA16_FlexFrameLayoutVGGGAA01_jk9TransformM0VySbGGMR);
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type Button<_ConditionalContent<ModifiedContent<ProgressView<EmptyView, EmptyView>, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<Text, _FlexFrameLayout>>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA19_ConditionalContentVyAA08ModifiedE0VyAA12ProgressViewVyAA05EmptyH0VAKGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA4TextVAA16_FlexFrameLayoutVGGGMd, &_s7SwiftUI6ButtonVyAA19_ConditionalContentVyAA08ModifiedE0VyAA12ProgressViewVyAA05EmptyH0VAKGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA4TextVAA16_FlexFrameLayoutVGGGMR, &protocol conformance descriptor for Button<A>);
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyTransformModifier<Bool> and conformance _EnvironmentKeyTransformModifier<A>, &_s7SwiftUI32_EnvironmentKeyTransformModifierVySbGMd, &_s7SwiftUI32_EnvironmentKeyTransformModifierVySbGMR, &protocol conformance descriptor for _EnvironmentKeyTransformModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Button<_ConditionalContent<ModifiedContent<ProgressView<EmptyView, EmptyView>, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<Text, _FlexFrameLayout>>>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t sub_10035CD78@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.tintColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10035CDE0@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.multilineTextAlignment.getter();
  *a1 = result;
  return result;
}

double _s7SwiftUI15ModifiedContentVyACyACyACyACyAA4TextVAA16_FixedSizeLayoutVGAA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGAJyAA4FontVSgGGAJyAA5ColorVSgGGAA08_PaddingH0VGSgWOi0_(uint64_t a1)
{
  *(a1 + 128) = 0;
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Collaboration.Flow.GlyphImageView, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Collaboration.Flow.GlyphImageView, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Collaboration.Flow.GlyphImageView, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy9MusicCore13CollaborationO0efB0E4FlowO14GlyphImageView33_4FA82EB282576B4095E3FA5F35E498B8LLVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMd, &_s7SwiftUI15ModifiedContentVy9MusicCore13CollaborationO0efB0E4FlowO14GlyphImageView33_4FA82EB282576B4095E3FA5F35E498B8LLVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMR);
    lazy protocol witness table accessor for type Collaboration.Flow.GlyphImageView and conformance Collaboration.Flow.GlyphImageView();
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMR, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Collaboration.Flow.GlyphImageView, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Collaboration.Flow.GlyphImageView and conformance Collaboration.Flow.GlyphImageView()
{
  result = lazy protocol witness table cache variable for type Collaboration.Flow.GlyphImageView and conformance Collaboration.Flow.GlyphImageView;
  if (!lazy protocol witness table cache variable for type Collaboration.Flow.GlyphImageView and conformance Collaboration.Flow.GlyphImageView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Collaboration.Flow.GlyphImageView and conformance Collaboration.Flow.GlyphImageView);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, _FixedSizeLayout>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _FixedSizeLayout>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _FixedSizeLayout>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA16_FixedSizeLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA16_FixedSizeLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMR);
    lazy protocol witness table accessor for type ModifiedContent<Text, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<Text, _FixedSizeLayout> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyAA4TextVAA16_FixedSizeLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA4TextVAA16_FixedSizeLayoutVGMR);
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMR, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _FixedSizeLayout>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<Text, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_10035D154()
{

  return swift_deallocObject();
}

uint64_t outlined init with copy of Collaboration.Flow(uint64_t a1, uint64_t a2, __n128 a3, uint64_t (*a4)(void, __n128))
{
  v6 = a4(0, a3);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t objectdestroy_61Tm()
{
  v1 = type metadata accessor for Collaboration.Flow.View(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = type metadata accessor for Playlist.Collaborator();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = v0 + v2;

  v8 = v0 + v2 + v1[6];
  type metadata accessor for Collaboration.Flow(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    (*(v5 + 8))(v8, v4);
  }

  else if (!EnumCaseMultiPayload)
  {
    v23 = v3;
    v10 = type metadata accessor for Collaboration.Flow.Collaborator(0);
    if (!(*(*(v10 - 8) + 48))(v8, 1, v10))
    {

      v11 = *(v10 + 24);
      v12 = type metadata accessor for Artwork();
      v21 = *(v12 - 8);
      v22 = v11;
      v13 = v8 + v11;
      v14 = v12;
      if (!(*(v21 + 48))(v13, 1, v12))
      {
        (*(v21 + 8))(v8 + v22, v14);
      }
    }

    v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore13CollaborationO0aB2UIE4FlowO12CollaboratorVSg_10Foundation3URLVSbtMd, &_s9MusicCore13CollaborationO0aB2UIE4FlowO12CollaboratorVSg_10Foundation3URLVSbtMR) + 48);
    v16 = type metadata accessor for URL();
    (*(*(v16 - 8) + 8))(v8 + v15, v16);
    v3 = v23;
  }

  v17 = v1[7];
  v18 = type metadata accessor for Playlist();
  (*(*(v18 - 8) + 8))(v7 + v17, v18);

  if (*(v7 + v1[10]))
  {
  }

  v19 = outlined consume of StateObject<InlineProfileEditingView.Context>.Storage(*(v7 + v1[12]), *(v7 + v1[12] + 8));
  (*(v5 + 8))(v0 + ((v2 + v3 + v6) & ~v6), v4, v19);

  return swift_deallocObject();
}

double partial apply for closure #5 in closure #1 in Collaboration.Flow.View.body.getter(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t a4, uint64_t a5)
{
  v11 = *(type metadata accessor for Collaboration.Flow.View(0) - 8);
  v12 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v13 = *(v11 + 64);
  v14 = *(a2(0) - 8);
  return closure #4 in closure #1 in Collaboration.Flow.View.body.getter(a1, v5 + v12, v5 + ((v12 + v13 + *(v14 + 80)) & ~*(v14 + 80)), a3, a4, a5);
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Toggle<Text>, _PaddingLayout>, _BackgroundStyleModifier<BackgroundStyle>>, _ClipEffect<RoundedRectangle>>, _FlexFrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FixedSizeLayout>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<TextAlignment>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _PaddingLayout>, _PaddingLayout>, <<opaque return type of View.alert(isPresented:content:)>>.0)>, ModifiedContent<Collaboration.Flow.ActionButton, _EnvironmentKeyTransformModifier<Bool>>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Toggle<Text>, _PaddingLayout>, _BackgroundStyleModifier<BackgroundStyle>>, _ClipEffect<RoundedRectangle>>, _FlexFrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FixedSizeLayout>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<TextAlignment>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _PaddingLayout>, _PaddingLayout>, <<opaque return type of View.alert(isPresented:content:)>>.0)>, ModifiedContent<Collaboration.Flow.ActionButton, _EnvironmentKeyTransformModifier<Bool>>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Toggle<Text>, _PaddingLayout>, _BackgroundStyleModifier<BackgroundStyle>>, _ClipEffect<RoundedRectangle>>, _FlexFrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FixedSizeLayout>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<TextAlignment>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _PaddingLayout>, _PaddingLayout>, <<opaque return type of View.alert(isPresented:content:)>>.0)>, ModifiedContent<Collaboration.Flow.ActionButton, _EnvironmentKeyTransformModifier<Bool>>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA9TupleViewVyAA08ModifiedD0VyAGyAGyAGyAA6ToggleVyAA4TextVGAA14_PaddingLayoutVGAA24_BackgroundStyleModifierVyAA0lM0VGGAA11_ClipEffectVyAA16RoundedRectangleVGGAA010_FlexFrameK0VG_AGyAGyAGyAGyAGyAGyAGyAGyAkA010_FixedSizeK0VGA1_GAA022_EnvironmentKeyWritingN0VyAA0I9AlignmentOGGAA011_ForegroundmN0VyAA017HierarchicalShapeM0VGGA8_yAA4FontVSgGGANGANGANGAA0F0PAAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyAGy9MusicCore13CollaborationO09MusicCoreB0E4FlowO12ActionButton33_4FA82EB282576B4095E3FA5F35E498B8LLVAA01_wx9TransformN0VySbGG_Qo_tGA49_GMd, &_s7SwiftUI19_ConditionalContentVyAA9TupleViewVyAA08ModifiedD0VyAGyAGyAGyAA6ToggleVyAA4TextVGAA14_PaddingLayoutVGAA24_BackgroundStyleModifierVyAA0lM0VGGAA11_ClipEffectVyAA16RoundedRectangleVGGAA010_FlexFrameK0VG_AGyAGyAGyAGyAGyAGyAGyAGyAkA010_FixedSizeK0VGA1_GAA022_EnvironmentKeyWritingN0VyAA0I9AlignmentOGGAA011_ForegroundmN0VyAA017HierarchicalShapeM0VGGA8_yAA4FontVSgGGANGANGANGAA0F0PAAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyAGy9MusicCore13CollaborationO09MusicCoreB0E4FlowO12ActionButton33_4FA82EB282576B4095E3FA5F35E498B8LLVAA01_wx9TransformN0VySbGG_Qo_tGA49_GMR);
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Toggle<Text>, _PaddingLayout>, _BackgroundStyleModifier<BackgroundStyle>>, _ClipEffect<RoundedRectangle>>, _FlexFrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FixedSizeLayout>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<TextAlignment>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _PaddingLayout>, _PaddingLayout>, <<opaque return type of View.alert(isPresented:content:)>>.0)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAEyAEyAA6ToggleVyAA4TextVGAA14_PaddingLayoutVGAA24_BackgroundStyleModifierVyAA0kL0VGGAA11_ClipEffectVyAA16RoundedRectangleVGGAA010_FlexFrameJ0VG_AEyAEyAEyAEyAEyAEyAEyAEyAiA010_FixedSizeJ0VGA_GAA022_EnvironmentKeyWritingM0VyAA0H9AlignmentOGGAA011_ForegroundlM0VyAA017HierarchicalShapeL0VGGA6_yAA4FontVSgGGALGALGALGAA0D0PAAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyAEy9MusicCore13CollaborationO09MusicCoreB0E4FlowO12ActionButton33_4FA82EB282576B4095E3FA5F35E498B8LLVAA01_vw9TransformM0VySbGG_Qo_tGMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAEyAEyAA6ToggleVyAA4TextVGAA14_PaddingLayoutVGAA24_BackgroundStyleModifierVyAA0kL0VGGAA11_ClipEffectVyAA16RoundedRectangleVGGAA010_FlexFrameJ0VG_AEyAEyAEyAEyAEyAEyAEyAEyAiA010_FixedSizeJ0VGA_GAA022_EnvironmentKeyWritingM0VyAA0H9AlignmentOGGAA011_ForegroundlM0VyAA017HierarchicalShapeL0VGGA6_yAA4FontVSgGGALGALGALGAA0D0PAAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyAEy9MusicCore13CollaborationO09MusicCoreB0E4FlowO12ActionButton33_4FA82EB282576B4095E3FA5F35E498B8LLVAA01_vw9TransformM0VySbGG_Qo_tGMR, &protocol conformance descriptor for TupleView<A>);
    lazy protocol witness table accessor for type ModifiedContent<Collaboration.Flow.ActionButton, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Toggle<Text>, _PaddingLayout>, _BackgroundStyleModifier<BackgroundStyle>>, _ClipEffect<RoundedRectangle>>, _FlexFrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _FixedSizeLayout>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<TextAlignment>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _PaddingLayout>, _PaddingLayout>, <<opaque return type of View.alert(isPresented:content:)>>.0)>, ModifiedContent<Collaboration.Flow.ActionButton, _EnvironmentKeyTransformModifier<Bool>>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Collaboration.Flow.ActionButton, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Collaboration.Flow.ActionButton, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Collaboration.Flow.ActionButton, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy9MusicCore13CollaborationO0efB0E4FlowO12ActionButton33_4FA82EB282576B4095E3FA5F35E498B8LLVAA32_EnvironmentKeyTransformModifierVySbGGMd, &_s7SwiftUI15ModifiedContentVy9MusicCore13CollaborationO0efB0E4FlowO12ActionButton33_4FA82EB282576B4095E3FA5F35E498B8LLVAA32_EnvironmentKeyTransformModifierVySbGGMR);
    lazy protocol witness table accessor for type Collaboration.Flow.ActionButton and conformance Collaboration.Flow.ActionButton();
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyTransformModifier<Bool> and conformance _EnvironmentKeyTransformModifier<A>, &_s7SwiftUI32_EnvironmentKeyTransformModifierVySbGMd, &_s7SwiftUI32_EnvironmentKeyTransformModifierVySbGMR, &protocol conformance descriptor for _EnvironmentKeyTransformModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Collaboration.Flow.ActionButton, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Collaboration.Flow.ActionButton and conformance Collaboration.Flow.ActionButton()
{
  result = lazy protocol witness table cache variable for type Collaboration.Flow.ActionButton and conformance Collaboration.Flow.ActionButton;
  if (!lazy protocol witness table cache variable for type Collaboration.Flow.ActionButton and conformance Collaboration.Flow.ActionButton)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Collaboration.Flow.ActionButton and conformance Collaboration.Flow.ActionButton);
  }

  return result;
}

uint64_t sub_10035D8A4()
{
  v1 = type metadata accessor for Collaboration.Flow.View(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = v0 + v2;

  v8 = v0 + v2 + v1[6];
  type metadata accessor for Collaboration.Flow(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v16 = type metadata accessor for Playlist.Collaborator();
    (*(*(v16 - 8) + 8))(v8, v16);
  }

  else if (!EnumCaseMultiPayload)
  {
    v23 = v3;
    v10 = type metadata accessor for Collaboration.Flow.Collaborator(0);
    if (!(*(*(v10 - 8) + 48))(v8, 1, v10))
    {

      v11 = *(v10 + 24);
      v12 = type metadata accessor for Artwork();
      v21 = *(v12 - 8);
      v22 = v11;
      v13 = v8 + v11;
      v14 = v12;
      if (!(*(v21 + 48))(v13, 1, v12))
      {
        (*(v21 + 8))(v8 + v22, v14);
      }
    }

    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore13CollaborationO0aB2UIE4FlowO12CollaboratorVSg_10Foundation3URLVSbtMd, &_s9MusicCore13CollaborationO0aB2UIE4FlowO12CollaboratorVSg_10Foundation3URLVSbtMR);
    (*(v5 + 8))(v8 + *(v15 + 48), v4);
    v3 = v23;
  }

  v17 = v1[7];
  v18 = type metadata accessor for Playlist();
  (*(*(v18 - 8) + 8))(v7 + v17, v18);

  if (*(v7 + v1[10]))
  {
  }

  v19 = outlined consume of StateObject<InlineProfileEditingView.Context>.Storage(*(v7 + v1[12]), *(v7 + v1[12] + 8));
  (*(v5 + 8))(v0 + ((v2 + v3 + v6) & ~v6), v4, v19);

  return swift_deallocObject();
}

double partial apply for closure #2 in closure #1 in Collaboration.Flow.View.body.getter(uint64_t a1)
{
  v3 = *(type metadata accessor for Collaboration.Flow.View(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return closure #2 in closure #1 in Collaboration.Flow.View.body.getter(a1, v4);
}

uint64_t objectdestroy_78Tm()
{
  v1 = type metadata accessor for Collaboration.Flow.View(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  v3 = v2 + v1[6];
  type metadata accessor for Collaboration.Flow(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v11 = type metadata accessor for Playlist.Collaborator();
    (*(*(v11 - 8) + 8))(v3, v11);
  }

  else if (!EnumCaseMultiPayload)
  {
    v5 = type metadata accessor for Collaboration.Flow.Collaborator(0);
    if (!(*(*(v5 - 8) + 48))(v3, 1, v5))
    {

      v6 = *(v5 + 24);
      v7 = type metadata accessor for Artwork();
      v8 = *(v7 - 8);
      if (!(*(v8 + 48))(v3 + v6, 1, v7))
      {
        (*(v8 + 8))(v3 + v6, v7);
      }
    }

    v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore13CollaborationO0aB2UIE4FlowO12CollaboratorVSg_10Foundation3URLVSbtMd, &_s9MusicCore13CollaborationO0aB2UIE4FlowO12CollaboratorVSg_10Foundation3URLVSbtMR) + 48);
    v10 = type metadata accessor for URL();
    (*(*(v10 - 8) + 8))(v3 + v9, v10);
  }

  v12 = v1[7];
  v13 = type metadata accessor for Playlist();
  (*(*(v13 - 8) + 8))(v2 + v12, v13);

  if (*(v2 + v1[10]))
  {
  }

  outlined consume of StateObject<InlineProfileEditingView.Context>.Storage(*(v2 + v1[12]), *(v2 + v1[12] + 8));

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in closure #3 in closure #1 in Collaboration.Flow.View.body.getter(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for Collaboration.Flow.View(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t _s9MusicCore13CollaborationO5ErrorOAEsAdAWl_0()
{
  result = _s9MusicCore13CollaborationO5ErrorOAEsAdAWL_0;
  if (!_s9MusicCore13CollaborationO5ErrorOAEsAdAWL_0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &_s9MusicCore13CollaborationO5ErrorOAEsAdAWL_0);
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #1 in closure #3 in closure #1 in Collaboration.Flow.View.body.getter()
{
  type metadata accessor for Collaboration.Flow.View(0);
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = partial apply for closure #1 in static MusicEngagementExtension.performRequest(with:completion:);

  return closure #1 in closure #1 in closure #3 in closure #1 in Collaboration.Flow.View.body.getter();
}

double outlined consume of Collaboration.Error(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 == 2)
  {
  }

  else if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t objectdestroy_91Tm()
{
  v1 = type metadata accessor for Collaboration.Flow.View(0);
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  swift_unknownObjectRelease();
  v3 = v0 + v2;

  v4 = v0 + v2 + v1[6];
  type metadata accessor for Collaboration.Flow(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v12 = type metadata accessor for Playlist.Collaborator();
    (*(*(v12 - 8) + 8))(v4, v12);
  }

  else if (!EnumCaseMultiPayload)
  {
    v6 = type metadata accessor for Collaboration.Flow.Collaborator(0);
    if (!(*(*(v6 - 8) + 48))(v4, 1, v6))
    {

      v7 = *(v6 + 24);
      v8 = type metadata accessor for Artwork();
      v9 = *(v8 - 8);
      if (!(*(v9 + 48))(v4 + v7, 1, v8))
      {
        (*(v9 + 8))(v4 + v7, v8);
      }
    }

    v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore13CollaborationO0aB2UIE4FlowO12CollaboratorVSg_10Foundation3URLVSbtMd, &_s9MusicCore13CollaborationO0aB2UIE4FlowO12CollaboratorVSg_10Foundation3URLVSbtMR) + 48);
    v11 = type metadata accessor for URL();
    (*(*(v11 - 8) + 8))(v4 + v10, v11);
  }

  v13 = v1[7];
  v14 = type metadata accessor for Playlist();
  (*(*(v14 - 8) + 8))(v3 + v13, v14);

  if (*(v3 + v1[10]))
  {
  }

  outlined consume of StateObject<InlineProfileEditingView.Context>.Storage(*(v3 + v1[12]), *(v3 + v1[12] + 8));

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in closure #2 in closure #1 in Collaboration.Flow.View.body.getter()
{
  type metadata accessor for Collaboration.Flow.View(0);
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in closure #2 in closure #1 in Collaboration.Flow.View.body.getter();
}

uint64_t sub_10035E534()
{
  v1 = type metadata accessor for Collaboration.Flow.View(0);
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  swift_unknownObjectRelease();
  v7 = v0 + v2;

  v8 = v0 + v2 + v1[6];
  type metadata accessor for Collaboration.Flow(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v16 = type metadata accessor for Playlist.Collaborator();
    (*(*(v16 - 8) + 8))(v8, v16);
  }

  else if (!EnumCaseMultiPayload)
  {
    v23 = v3;
    v10 = type metadata accessor for Collaboration.Flow.Collaborator(0);
    if (!(*(*(v10 - 8) + 48))(v8, 1, v10))
    {

      v11 = *(v10 + 24);
      v12 = type metadata accessor for Artwork();
      v21 = *(v12 - 8);
      v22 = v11;
      v13 = v8 + v11;
      v14 = v12;
      if (!(*(v21 + 48))(v13, 1, v12))
      {
        (*(v21 + 8))(v8 + v22, v14);
      }
    }

    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore13CollaborationO0aB2UIE4FlowO12CollaboratorVSg_10Foundation3URLVSbtMd, &_s9MusicCore13CollaborationO0aB2UIE4FlowO12CollaboratorVSg_10Foundation3URLVSbtMR);
    (*(v5 + 8))(v8 + *(v15 + 48), v4);
    v3 = v23;
  }

  v17 = v1[7];
  v18 = type metadata accessor for Playlist();
  (*(*(v18 - 8) + 8))(v7 + v17, v18);

  if (*(v7 + v1[10]))
  {
  }

  v19 = outlined consume of StateObject<InlineProfileEditingView.Context>.Storage(*(v7 + v1[12]), *(v7 + v1[12] + 8));
  (*(v5 + 8))(v0 + ((v2 + v3 + v6) & ~v6), v4, v19);

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in closure #4 in closure #1 in Collaboration.Flow.View.body.getter(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for Collaboration.Flow.View(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for URL() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in closure #4 in closure #1 in Collaboration.Flow.View.body.getter(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t partial apply for closure #1 in closure #6 in closure #1 in Collaboration.Flow.View.body.getter(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for Collaboration.Flow.View(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for Playlist.Collaborator() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in closure #6 in closure #1 in Collaboration.Flow.View.body.getter(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t objectdestroy_111Tm()
{
  v1 = type metadata accessor for Collaboration.Flow.View(0);
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = type metadata accessor for Playlist.Collaborator();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  swift_unknownObjectRelease();
  v7 = v0 + v2;

  v8 = v0 + v2 + v1[6];
  type metadata accessor for Collaboration.Flow(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    (*(v5 + 8))(v8, v4);
  }

  else if (!EnumCaseMultiPayload)
  {
    v23 = v3;
    v10 = type metadata accessor for Collaboration.Flow.Collaborator(0);
    if (!(*(*(v10 - 8) + 48))(v8, 1, v10))
    {

      v11 = *(v10 + 24);
      v12 = type metadata accessor for Artwork();
      v21 = *(v12 - 8);
      v22 = v11;
      v13 = v8 + v11;
      v14 = v12;
      if (!(*(v21 + 48))(v13, 1, v12))
      {
        (*(v21 + 8))(v8 + v22, v14);
      }
    }

    v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore13CollaborationO0aB2UIE4FlowO12CollaboratorVSg_10Foundation3URLVSbtMd, &_s9MusicCore13CollaborationO0aB2UIE4FlowO12CollaboratorVSg_10Foundation3URLVSbtMR) + 48);
    v16 = type metadata accessor for URL();
    (*(*(v16 - 8) + 8))(v8 + v15, v16);
    v3 = v23;
  }

  v17 = v1[7];
  v18 = type metadata accessor for Playlist();
  (*(*(v18 - 8) + 8))(v7 + v17, v18);

  if (*(v7 + v1[10]))
  {
  }

  v19 = outlined consume of StateObject<InlineProfileEditingView.Context>.Storage(*(v7 + v1[12]), *(v7 + v1[12] + 8));
  (*(v5 + 8))(v0 + ((v2 + v3 + v6) & ~v6), v4, v19);

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in closure #5 in closure #1 in Collaboration.Flow.View.body.getter(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for Collaboration.Flow.View(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for Playlist.Collaborator() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in closure #5 in closure #1 in Collaboration.Flow.View.body.getter(a1, v10, v11, v1 + v6, v1 + v9);
}

unint64_t type metadata accessor for ICUserIdentity()
{
  result = lazy cache variable for type metadata for ICUserIdentity;
  if (!lazy cache variable for type metadata for ICUserIdentity)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for ICUserIdentity);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type InlineProfileEditingView.Context and conformance InlineProfileEditingView.Context(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.bold(_:)>>.0, _BackgroundModifier<_ShapeView<RoundedRectangle, Color>>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.bold(_:)>>.0, _BackgroundModifier<_ShapeView<RoundedRectangle, Color>>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.bold(_:)>>.0, _BackgroundModifier<_ShapeView<RoundedRectangle, Color>>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE4boldyQrSbFQOyACyACyACyACyAA6ButtonVyAA012_ConditionalD0VyACyAA08ProgressE0VyAA05EmptyE0VANGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGACyAA4TextVAA16_FlexFrameLayoutVGGGAA01_kl9TransformN0VySbGGAZGAUGAZG_Qo_AA011_BackgroundN0VyAA06_ShapeE0VyAA16RoundedRectangleVASGGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE4boldyQrSbFQOyACyACyACyACyAA6ButtonVyAA012_ConditionalD0VyACyAA08ProgressE0VyAA05EmptyE0VANGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGACyAA4TextVAA16_FlexFrameLayoutVGGGAA01_kl9TransformN0VySbGGAZGAUGAZG_Qo_AA011_BackgroundN0VyAA06_ShapeE0VyAA16RoundedRectangleVASGGGMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA6ButtonVyAA012_ConditionalD0VyACyAA12ProgressViewVyAA05EmptyH0VAKGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGACyAA4TextVAA16_FlexFrameLayoutVGGGAA01_jk9TransformM0VySbGGAWGARGAWGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6ButtonVyAA012_ConditionalD0VyACyAA12ProgressViewVyAA05EmptyH0VAKGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGACyAA4TextVAA16_FlexFrameLayoutVGGGAA01_jk9TransformM0VySbGGAWGARGAWGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<ModifiedContent<ProgressView<EmptyView, EmptyView>, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<Text, _FlexFrameLayout>>>, _EnvironmentKeyTransformModifier<Bool>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Color?>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<ModifiedContent<ProgressView<EmptyView, EmptyView>, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<Text, _FlexFrameLayout>>>, _EnvironmentKeyTransformModifier<Bool>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Color?>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6ButtonVyAA012_ConditionalD0VyACyAA12ProgressViewVyAA05EmptyH0VAKGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGACyAA4TextVAA16_FlexFrameLayoutVGGGAA01_jk9TransformM0VySbGGAWGARGAWGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6ButtonVyAA012_ConditionalD0VyACyAA12ProgressViewVyAA05EmptyH0VAKGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGACyAA4TextVAA16_FlexFrameLayoutVGGGAA01_jk9TransformM0VySbGGAWGARGAWGMR, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<ModifiedContent<ProgressView<EmptyView, EmptyView>, _EnvironmentKeyWritingModifier<Color?>>, ModifiedContent<Text, _FlexFrameLayout>>>, _EnvironmentKeyTransformModifier<Bool>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>);
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type _BackgroundModifier<_ShapeView<RoundedRectangle, Color>> and conformance _BackgroundModifier<A>, &_s7SwiftUI19_BackgroundModifierVyAA10_ShapeViewVyAA16RoundedRectangleVAA5ColorVGGMd, &_s7SwiftUI19_BackgroundModifierVyAA10_ShapeViewVyAA16RoundedRectangleVAA5ColorVGGMR, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.bold(_:)>>.0, _BackgroundModifier<_ShapeView<RoundedRectangle, Color>>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMR);
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMR, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Collaboration.Flow.ActionButton.Style and conformance Collaboration.Flow.ActionButton.Style()
{
  result = lazy protocol witness table cache variable for type Collaboration.Flow.ActionButton.Style and conformance Collaboration.Flow.ActionButton.Style;
  if (!lazy protocol witness table cache variable for type Collaboration.Flow.ActionButton.Style and conformance Collaboration.Flow.ActionButton.Style)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Collaboration.Flow.ActionButton.Style and conformance Collaboration.Flow.ActionButton.Style);
  }

  return result;
}

uint64_t InlineProfileEditingView.Context.__allocating_init()()
{
  v0 = swift_allocObject();
  InlineProfileEditingView.Context.init()();
  return v0;
}

__n128 InlineProfileEditingView.init(context:)@<Q0>(uint64_t a2@<X8>)
{
  specialized InlineProfileEditingView.init(context:)(v5);
  v3 = v5[3];
  *(a2 + 32) = v5[2];
  *(a2 + 48) = v3;
  *(a2 + 64) = v5[4];
  result = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = result;
  return result;
}

uint64_t property wrapper backing initializer of InlineProfileEditingView.Context.artwork(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit7ArtworkVSgMd_0, &_s8MusicKit7ArtworkVSgMR_0);
  __chkstk_darwin();
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = &v7 - v4;
  outlined init with copy of TaskPriority?(a1, &v7 - v4, &_s8MusicKit7ArtworkVSgMd_0, &_s8MusicKit7ArtworkVSgMR_0);
  outlined init with copy of TaskPriority?(v5, v3, &_s8MusicKit7ArtworkVSgMd_0, &_s8MusicKit7ArtworkVSgMR_0);
  Published.init(initialValue:)();
  outlined destroy of TaskPriority?(a1, &_s8MusicKit7ArtworkVSgMd_0, &_s8MusicKit7ArtworkVSgMR_0);
  return outlined destroy of TaskPriority?(v5, &_s8MusicKit7ArtworkVSgMd_0, &_s8MusicKit7ArtworkVSgMR_0);
}

uint64_t InlineProfileEditingView.Context.name.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t InlineProfileEditingView.Context.image.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

void InlineProfileEditingView.Context.image.setter(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit7ArtworkVSgMd_0, &_s8MusicKit7ArtworkVSgMR_0);
  __chkstk_darwin();
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = &v11 - v5;
  swift_getKeyPath();
  swift_getKeyPath();
  v12 = a1;
  v7 = a1;

  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v8 = v12;
  if (v12)
  {
    v9 = OBJC_IVAR____TtCV11MusicCoreUI24InlineProfileEditingView7Context_hasRemovedImage;
    swift_beginAccess();
    *(v1 + v9) = 0;
    v10 = type metadata accessor for Artwork();
    (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
    swift_getKeyPath();
    swift_getKeyPath();
    outlined init with copy of TaskPriority?(v6, v4, &_s8MusicKit7ArtworkVSgMd_0, &_s8MusicKit7ArtworkVSgMR_0);

    static Published.subscript.setter();

    outlined destroy of TaskPriority?(v6, &_s8MusicKit7ArtworkVSgMd_0, &_s8MusicKit7ArtworkVSgMR_0);
  }

  else
  {
  }
}

uint64_t InlineProfileEditingView.Context.init()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo7UIImageCSgGMd, &_s7Combine9PublishedVySo7UIImageCSgGMR);
  v75 = *(v0 - 8);
  v76 = v0;
  __chkstk_darwin();
  v74 = &v68 - v1;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySSGMd_0, &_s7Combine9PublishedVySSGMR_0);
  v71 = *(v73 - 8);
  __chkstk_darwin();
  v3 = &v68 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy8MusicKit7ArtworkVSgGMd, &_s7Combine9PublishedVy8MusicKit7ArtworkVSgGMR);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v68 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit7ArtworkVSgMd_0, &_s8MusicKit7ArtworkVSgMR_0);
  __chkstk_darwin();
  v69 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v70 = &v68 - v9;
  __chkstk_darwin();
  v11 = &v68 - v10;
  __chkstk_darwin();
  v13 = &v68 - v12;
  v14 = OBJC_IVAR____TtCV11MusicCoreUI24InlineProfileEditingView7Context__artwork;
  v15 = type metadata accessor for Artwork();
  v77 = *(v15 - 8);
  v78 = v15;
  (*(v77 + 56))(v13, 1, 1);
  outlined init with copy of TaskPriority?(v13, v11, &_s8MusicKit7ArtworkVSgMd_0, &_s8MusicKit7ArtworkVSgMR_0);
  v68 = v11;
  Published.init(initialValue:)();
  v16 = v13;
  outlined destroy of TaskPriority?(v13, &_s8MusicKit7ArtworkVSgMd_0, &_s8MusicKit7ArtworkVSgMR_0);
  v17 = v72;
  (*(v5 + 32))(v72 + v14, v7, v4);
  v18 = OBJC_IVAR____TtCV11MusicCoreUI24InlineProfileEditingView7Context__name;
  v80 = 0;
  v81 = 0xE000000000000000;
  Published.init(initialValue:)();
  (*(v71 + 32))(v17 + v18, v3, v73);
  v19 = OBJC_IVAR____TtCV11MusicCoreUI24InlineProfileEditingView7Context__image;
  v80 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7UIImageCSgMd_0, &_sSo7UIImageCSgMR_0);
  v20 = v74;
  Published.init(initialValue:)();
  (*(v75 + 32))(v17 + v19, v20, v76);
  *(v17 + OBJC_IVAR____TtCV11MusicCoreUI24InlineProfileEditingView7Context_hasRemovedImage) = 0;
  v21 = [objc_opt_self() shared];
  v22 = [v21 activeUserState];

  v23 = [v22 music];
  v24 = [v23 userProfile];

  if (v24)
  {
    v25 = [v24 name];
    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v27;

    swift_getKeyPath();
    swift_getKeyPath();
    v80 = v26;
    v81 = v28;

    static Published.subscript.setter();
    v29 = [v24 artworkInfo];
    if (v29)
    {
      v30 = v29;
      v31 = [v29 responseDictionary];

      if (v31)
      {
        v32 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        _ss30_dictionaryDownCastConditionalySDyq0_q1_GSgSDyxq_GSHRzSHR0_r2_lFs11AnyHashableV_ypSSypTg5_0(v32);
        v34 = v33;

        if (v34)
        {
          Artwork.init(_:)();
          swift_getKeyPath();
          swift_getKeyPath();
          outlined init with copy of TaskPriority?(v16, v68, &_s8MusicKit7ArtworkVSgMd_0, &_s8MusicKit7ArtworkVSgMR_0);

          static Published.subscript.setter();
          outlined destroy of TaskPriority?(v16, &_s8MusicKit7ArtworkVSgMd_0, &_s8MusicKit7ArtworkVSgMR_0);
        }
      }
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v36 = v80;
  v35 = v81;

  v37 = HIBYTE(v35) & 0xF;
  if ((v35 & 0x2000000000000000) == 0)
  {
    v37 = v36 & 0xFFFFFFFFFFFFLL;
  }

  v39 = v77;
  v38 = v78;
  if (v37)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v40 = v70;
    static Published.subscript.getter();

    if ((*(v39 + 48))(v40, 1, v38) != 1)
    {

LABEL_25:
      outlined destroy of TaskPriority?(v40, &_s8MusicKit7ArtworkVSgMd_0, &_s8MusicKit7ArtworkVSgMR_0);
      return v17;
    }

    outlined destroy of TaskPriority?(v40, &_s8MusicKit7ArtworkVSgMd_0, &_s8MusicKit7ArtworkVSgMR_0);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd_0, &_ss23_ContiguousArrayStorageCyyXlGMR_0);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_1004F2F10;
  *(v41 + 32) = CNContactThumbnailImageDataKey;
  v79 = v41;
  v42 = objc_opt_self();
  v43 = CNContactThumbnailImageDataKey;
  v44 = [v42 descriptorForRequiredKeysForStyle:0];
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v79 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v79 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v45 = [objc_allocWithZone(CNContactStore) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo15CNKeyDescriptor_pMd, &_sSo15CNKeyDescriptor_pMR);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v80 = 0;
  v47 = [v45 _ios_meContactWithKeysToFetch:isa error:&v80];

  v48 = v80;
  if (!v47)
  {
    v66 = v80;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    return v17;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v49 = v48;
  static Published.subscript.getter();

  v51 = v80;
  v50 = v81;

  v52 = HIBYTE(v50) & 0xF;
  if ((v50 & 0x2000000000000000) == 0)
  {
    v52 = v51 & 0xFFFFFFFFFFFFLL;
  }

  if (!v52)
  {
    v53 = [v42 stringFromContact:v47 style:0];
    if (v53)
    {
      v54 = v53;
      v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v57 = v56;

      swift_getKeyPath();
      swift_getKeyPath();
      v80 = v55;
      v81 = v57;

      static Published.subscript.setter();
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v40 = v69;
  static Published.subscript.getter();

  if ((*(v39 + 48))(v40, 1, v38) != 1)
  {

    goto LABEL_25;
  }

  outlined destroy of TaskPriority?(v40, &_s8MusicKit7ArtworkVSgMd_0, &_s8MusicKit7ArtworkVSgMR_0);
  v58 = [v47 thumbnailImageData];
  if (v58)
  {
    v59 = v58;
    v60 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v62 = v61;

    v63 = objc_allocWithZone(UIImage);
    outlined copy of Data._Representation(v60, v62);
    v64 = Data._bridgeToObjectiveC()().super.isa;
    v65 = [v63 initWithData:v64];

    outlined consume of Data._Representation(v60, v62);
    InlineProfileEditingView.Context.image.setter(v65);

    outlined consume of Data._Representation(v60, v62);
  }

  else
  {
  }

  return v17;
}

BOOL InlineProfileEditingView.Context.canValidate.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v0 = String.trim()();

  v1 = (v0._object >> 56) & 0xF;
  if ((v0._object & 0x2000000000000000) == 0)
  {
    v1 = v0._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  return v1 != 0;
}

uint64_t InlineProfileEditingView.Context.userName.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  countAndFlagsBits = String.trim()()._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t InlineProfileEditingView.Context.hasRemovedImage.getter()
{
  v1 = OBJC_IVAR____TtCV11MusicCoreUI24InlineProfileEditingView7Context_hasRemovedImage;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t InlineProfileEditingView.Context.hasRemovedImage.setter(char a1)
{
  v3 = OBJC_IVAR____TtCV11MusicCoreUI24InlineProfileEditingView7Context_hasRemovedImage;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double InlineProfileEditingView.Context.artwork.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return result;
}

uint64_t InlineProfileEditingView.Context.userImage.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit7ArtworkVSgMd_0, &_s8MusicKit7ArtworkVSgMR_0);
  __chkstk_darwin();
  v2 = &v7 - v1;
  v3 = OBJC_IVAR____TtCV11MusicCoreUI24InlineProfileEditingView7Context_hasRemovedImage;
  swift_beginAccess();
  if (*(v0 + v3))
  {
    return 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v4 = type metadata accessor for Artwork();
  v5 = (*(*(v4 - 8) + 48))(v2, 1, v4);
  outlined destroy of TaskPriority?(v2, &_s8MusicKit7ArtworkVSgMd_0, &_s8MusicKit7ArtworkVSgMR_0);
  if (v5 != 1)
  {
    return 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v7;
}

uint64_t InlineProfileEditingView.Context.deinit()
{
  v1 = OBJC_IVAR____TtCV11MusicCoreUI24InlineProfileEditingView7Context__artwork;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy8MusicKit7ArtworkVSgGMd, &_s7Combine9PublishedVy8MusicKit7ArtworkVSgGMR);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCV11MusicCoreUI24InlineProfileEditingView7Context__name;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySSGMd_0, &_s7Combine9PublishedVySSGMR_0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtCV11MusicCoreUI24InlineProfileEditingView7Context__image;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo7UIImageCSgGMd, &_s7Combine9PublishedVySo7UIImageCSgGMR);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  return v0;
}

uint64_t InlineProfileEditingView.Context.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtCV11MusicCoreUI24InlineProfileEditingView7Context__artwork;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy8MusicKit7ArtworkVSgGMd, &_s7Combine9PublishedVy8MusicKit7ArtworkVSgGMR);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCV11MusicCoreUI24InlineProfileEditingView7Context__name;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySSGMd_0, &_s7Combine9PublishedVySSGMR_0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtCV11MusicCoreUI24InlineProfileEditingView7Context__image;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo7UIImageCSgGMd, &_s7Combine9PublishedVySo7UIImageCSgGMR);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance InlineProfileEditingView.Context@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for InlineProfileEditingView.Context(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

uint64_t property wrapper backing initializer of InlineProfileEditingView.context(uint64_t a1)
{
  type metadata accessor for InlineProfileEditingView.Context(0);
  lazy protocol witness table accessor for type InlineProfileEditingView.Context and conformance InlineProfileEditingView.Context();

  return ObservedObject.init(wrappedValue:)();
}

uint64_t InlineProfileEditingView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v78 = a1;
  type metadata accessor for Locale();
  __chkstk_darwin();
  v77 = v66 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for String.LocalizationValue();
  v75 = *(v4 - 8);
  v76 = v4;
  __chkstk_darwin();
  v74 = v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v73 = v66 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA012_ConditionalD0VyACyACyACyAA5ImageVAA12_FrameLayoutVGAA11_ClipEffectVyAA6CircleVGGAA08_PaddingK0VGACyACyACy010_MusicKit_aB007ArtworkI0V01_pq9Internal_aB0E18artworkPlaceholderyQrx0pQ00R0VSg_So6CGSizeVAA5ColorVtcAA0G0RzlFQOy_0p4CoreB0015CNSwiftUIAvatarG0VQo_AMGASGAVGG_AIyAA4TextVACyAA6ButtonVyA19_GAA30_EnvironmentKeyWritingModifierVyA8_SgGGGAA6SpacerVACyACyACyA22_AVGA24_ySiSgGGAA21_TraitWritingModifierVyAA0K16PriorityTraitKeyVGGSgtGGAA24_BackgroundStyleModifierVyA8_GGMd, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA012_ConditionalD0VyACyACyACyAA5ImageVAA12_FrameLayoutVGAA11_ClipEffectVyAA6CircleVGGAA08_PaddingK0VGACyACyACy010_MusicKit_aB007ArtworkI0V01_pq9Internal_aB0E18artworkPlaceholderyQrx0pQ00R0VSg_So6CGSizeVAA5ColorVtcAA0G0RzlFQOy_0p4CoreB0015CNSwiftUIAvatarG0VQo_AMGASGAVGG_AIyAA4TextVACyAA6ButtonVyA19_GAA30_EnvironmentKeyWritingModifierVyA8_SgGGGAA6SpacerVACyACyACyA22_AVGA24_ySiSgGGAA21_TraitWritingModifierVyAA0K16PriorityTraitKeyVGGSgtGGAA24_BackgroundStyleModifierVyA8_GGMR) - 8;
  __chkstk_darwin();
  v9 = v66 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyAA012_ConditionalD0VyACyACyACyAA5ImageVAA12_FrameLayoutVGAA11_ClipEffectVyAA6CircleVGGAA08_PaddingK0VGACyACyACy010_MusicKit_aB007ArtworkI0V01_pq9Internal_aB0E18artworkPlaceholderyQrx0pQ00R0VSg_So6CGSizeVAA5ColorVtcAA0G0RzlFQOy_0p4CoreB0015CNSwiftUIAvatarG0VQo_AMGASGAVGG_AIyAA4TextVACyAA6ButtonVyA19_GAA30_EnvironmentKeyWritingModifierVyA8_SgGGGAA6SpacerVACyACyACyA22_AVGA24_ySiSgGGAA21_TraitWritingModifierVyAA0K16PriorityTraitKeyVGGSgtGGAA24_BackgroundStyleModifierVyA8_GGAA05_FlexjK0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyAA012_ConditionalD0VyACyACyACyAA5ImageVAA12_FrameLayoutVGAA11_ClipEffectVyAA6CircleVGGAA08_PaddingK0VGACyACyACy010_MusicKit_aB007ArtworkI0V01_pq9Internal_aB0E18artworkPlaceholderyQrx0pQ00R0VSg_So6CGSizeVAA5ColorVtcAA0G0RzlFQOy_0p4CoreB0015CNSwiftUIAvatarG0VQo_AMGASGAVGG_AIyAA4TextVACyAA6ButtonVyA19_GAA30_EnvironmentKeyWritingModifierVyA8_SgGGGAA6SpacerVACyACyACyA22_AVGA24_ySiSgGGAA21_TraitWritingModifierVyAA0K16PriorityTraitKeyVGGSgtGGAA24_BackgroundStyleModifierVyA8_GGAA05_FlexjK0VGMR) - 8;
  __chkstk_darwin();
  v12 = v66 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6HStackVyAA9TupleViewVyAA012_ConditionalD0VyACyACyACyAA5ImageVAA12_FrameLayoutVGAA11_ClipEffectVyAA6CircleVGGAA08_PaddingK0VGACyACyACy010_MusicKit_aB007ArtworkI0V01_pq9Internal_aB0E18artworkPlaceholderyQrx0pQ00R0VSg_So6CGSizeVAA5ColorVtcAA0G0RzlFQOy_0p4CoreB0015CNSwiftUIAvatarG0VQo_AMGASGAVGG_AIyAA4TextVACyAA6ButtonVyA19_GAA30_EnvironmentKeyWritingModifierVyA8_SgGGGAA6SpacerVACyACyACyA22_AVGA24_ySiSgGGAA21_TraitWritingModifierVyAA0K16PriorityTraitKeyVGGSgtGGAA24_BackgroundStyleModifierVyA8_GGAA05_FlexjK0VGA49_GMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6HStackVyAA9TupleViewVyAA012_ConditionalD0VyACyACyACyAA5ImageVAA12_FrameLayoutVGAA11_ClipEffectVyAA6CircleVGGAA08_PaddingK0VGACyACyACy010_MusicKit_aB007ArtworkI0V01_pq9Internal_aB0E18artworkPlaceholderyQrx0pQ00R0VSg_So6CGSizeVAA5ColorVtcAA0G0RzlFQOy_0p4CoreB0015CNSwiftUIAvatarG0VQo_AMGASGAVGG_AIyAA4TextVACyAA6ButtonVyA19_GAA30_EnvironmentKeyWritingModifierVyA8_SgGGGAA6SpacerVACyACyACyA22_AVGA24_ySiSgGGAA21_TraitWritingModifierVyAA0K16PriorityTraitKeyVGGSgtGGAA24_BackgroundStyleModifierVyA8_GGAA05_FlexjK0VGA49_GMR) - 8;
  __chkstk_darwin();
  v15 = v66 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA6HStackVyAA9TupleViewVyAA012_ConditionalD0VyACyACyACyAA5ImageVAA12_FrameLayoutVGAA11_ClipEffectVyAA6CircleVGGAA08_PaddingK0VGACyACyACy010_MusicKit_aB007ArtworkI0V01_pq9Internal_aB0E18artworkPlaceholderyQrx0pQ00R0VSg_So6CGSizeVAA5ColorVtcAA0G0RzlFQOy_0p4CoreB0015CNSwiftUIAvatarG0VQo_AMGASGAVGG_AIyAA4TextVACyAA6ButtonVyA19_GAA30_EnvironmentKeyWritingModifierVyA8_SgGGGAA6SpacerVACyACyACyA22_AVGA24_ySiSgGGAA21_TraitWritingModifierVyAA0K16PriorityTraitKeyVGGSgtGGAA24_BackgroundStyleModifierVyA8_GGAA05_FlexjK0VGA49_GAPyAA16RoundedRectangleVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6HStackVyAA9TupleViewVyAA012_ConditionalD0VyACyACyACyAA5ImageVAA12_FrameLayoutVGAA11_ClipEffectVyAA6CircleVGGAA08_PaddingK0VGACyACyACy010_MusicKit_aB007ArtworkI0V01_pq9Internal_aB0E18artworkPlaceholderyQrx0pQ00R0VSg_So6CGSizeVAA5ColorVtcAA0G0RzlFQOy_0p4CoreB0015CNSwiftUIAvatarG0VQo_AMGASGAVGG_AIyAA4TextVACyAA6ButtonVyA19_GAA30_EnvironmentKeyWritingModifierVyA8_SgGGGAA6SpacerVACyACyACyA22_AVGA24_ySiSgGGAA21_TraitWritingModifierVyAA0K16PriorityTraitKeyVGGSgtGGAA24_BackgroundStyleModifierVyA8_GGAA05_FlexjK0VGA49_GAPyAA16RoundedRectangleVGGMR);
  v66[2] = v16;
  __chkstk_darwin();
  v79 = v66 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE18confirmationDialog_11isPresented15titleVisibility7actionsQrqd___AA7BindingVySbGAA0I0Oqd_0_yXEtSyRd__AaBRd_0_r0_lFQOyAA15ModifiedContentVyANyANyANyAA6HStackVyAA05TupleC0VyAA012_ConditionalM0VyANyANyANyAA5ImageVAA12_FrameLayoutVGAA11_ClipEffectVyAA6CircleVGGAA08_PaddingS0VGANyANyANy010_MusicKit_aB007ArtworkQ0V01_xy9Internal_aB0E18artworkPlaceholderyQrx0xY00Z0VSg_So6CGSizeVAA5ColorVtcAaBRzlFQOy_0x4CoreB0015CNSwiftUIAvatarC0VQo_AXGA2_GA5_GG_ATyAA4TextVANyAA6ButtonVyA29_GAA30_EnvironmentKeyWritingModifierVyA19_SgGGGAA6SpacerVANyANyANyA32_A5_GA34_ySiSgGGAA21_TraitWritingModifierVyAA0S16PriorityTraitKeyVGGSgtGGAA24_BackgroundStyleModifierVyA19_GGAA05_FlexrS0VGA59_GA_yAA16RoundedRectangleVGG_SSARyA32__A32_A32_SgA32_tGQo_Md, &_s7SwiftUI4ViewPAAE18confirmationDialog_11isPresented15titleVisibility7actionsQrqd___AA7BindingVySbGAA0I0Oqd_0_yXEtSyRd__AaBRd_0_r0_lFQOyAA15ModifiedContentVyANyANyANyAA6HStackVyAA05TupleC0VyAA012_ConditionalM0VyANyANyANyAA5ImageVAA12_FrameLayoutVGAA11_ClipEffectVyAA6CircleVGGAA08_PaddingS0VGANyANyANy010_MusicKit_aB007ArtworkQ0V01_xy9Internal_aB0E18artworkPlaceholderyQrx0xY00Z0VSg_So6CGSizeVAA5ColorVtcAaBRzlFQOy_0x4CoreB0015CNSwiftUIAvatarC0VQo_AXGA2_GA5_GG_ATyAA4TextVANyAA6ButtonVyA29_GAA30_EnvironmentKeyWritingModifierVyA19_SgGGGAA6SpacerVANyANyANyA32_A5_GA34_ySiSgGGAA21_TraitWritingModifierVyAA0S16PriorityTraitKeyVGGSgtGGAA24_BackgroundStyleModifierVyA19_GGAA05_FlexrS0VGA59_GA_yAA16RoundedRectangleVGG_SSARyA32__A32_A32_SgA32_tGQo_MR);
  v71 = *(v18 - 8);
  v72 = v18;
  __chkstk_darwin();
  v70 = v66 - v19;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE18confirmationDialog_11isPresented15titleVisibility7actionsQrqd___AA7BindingVySbGAA0K0Oqd_0_yXEtSyRd__AaDRd_0_r0_lFQOyACyACyACyACyAA6HStackVyAA05TupleE0VyAA012_ConditionalD0VyACyACyACyAA5ImageVAA12_FrameLayoutVGAA11_ClipEffectVyAA6CircleVGGAA08_PaddingS0VGACyACyACy010_MusicKit_aB007ArtworkQ0V01_xy9Internal_aB0E18artworkPlaceholderyQrx0xY00Z0VSg_So6CGSizeVAA5ColorVtcAaDRzlFQOy_0x4CoreB0015CNSwiftUIAvatarE0VQo_AXGA2_GA5_GG_ATyAA4TextVACyAA6ButtonVyA29_GAA30_EnvironmentKeyWritingModifierVyA19_SgGGGAA6SpacerVACyACyACyA32_A5_GA34_ySiSgGGAA21_TraitWritingModifierVyAA0S16PriorityTraitKeyVGGSgtGGAA24_BackgroundStyleModifierVyA19_GGAA05_FlexrS0VGA59_GA_yAA16RoundedRectangleVGG_SSARyA32__A32_A32_SgA32_tGQo_AA19_BackgroundModifierVyACyA20_0Q6PickerVAXGGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE18confirmationDialog_11isPresented15titleVisibility7actionsQrqd___AA7BindingVySbGAA0K0Oqd_0_yXEtSyRd__AaDRd_0_r0_lFQOyACyACyACyACyAA6HStackVyAA05TupleE0VyAA012_ConditionalD0VyACyACyACyAA5ImageVAA12_FrameLayoutVGAA11_ClipEffectVyAA6CircleVGGAA08_PaddingS0VGACyACyACy010_MusicKit_aB007ArtworkQ0V01_xy9Internal_aB0E18artworkPlaceholderyQrx0xY00Z0VSg_So6CGSizeVAA5ColorVtcAaDRzlFQOy_0x4CoreB0015CNSwiftUIAvatarE0VQo_AXGA2_GA5_GG_ATyAA4TextVACyAA6ButtonVyA29_GAA30_EnvironmentKeyWritingModifierVyA19_SgGGGAA6SpacerVACyACyACyA32_A5_GA34_ySiSgGGAA21_TraitWritingModifierVyAA0S16PriorityTraitKeyVGGSgtGGAA24_BackgroundStyleModifierVyA19_GGAA05_FlexrS0VGA59_GA_yAA16RoundedRectangleVGG_SSARyA32__A32_A32_SgA32_tGQo_AA19_BackgroundModifierVyACyA20_0Q6PickerVAXGGGMR);
  __chkstk_darwin();
  v81 = v66 - v20;
  *v9 = static VerticalAlignment.center.getter();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA19_ConditionalContentVyAA08ModifiedJ0VyAMyAMyAA5ImageVAA06_FrameG0VGAA11_ClipEffectVyAA6CircleVGGAA08_PaddingG0VGAMyAMyAMy010_MusicKit_aB007ArtworkL0V01_rs9Internal_aB0E18artworkPlaceholderyQrx0rS00T0VSg_So6CGSizeVAA5ColorVtcAA0D0RzlFQOy_0r4CoreB0015CNSwiftUIAvatarD0VQo_AQGAWGAZGG_AKyAA4TextVAMyAA6ButtonVyA23_GAA30_EnvironmentKeyWritingModifierVyA12_SgGGGAA6SpacerVAMyAMyAMyA26_AZGA28_ySiSgGGAA21_TraitWritingModifierVyAA0G16PriorityTraitKeyVGGSgtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA19_ConditionalContentVyAA08ModifiedJ0VyAMyAMyAA5ImageVAA06_FrameG0VGAA11_ClipEffectVyAA6CircleVGGAA08_PaddingG0VGAMyAMyAMy010_MusicKit_aB007ArtworkL0V01_rs9Internal_aB0E18artworkPlaceholderyQrx0rS00T0VSg_So6CGSizeVAA5ColorVtcAA0D0RzlFQOy_0r4CoreB0015CNSwiftUIAvatarD0VQo_AQGAWGAZGG_AKyAA4TextVAMyAA6ButtonVyA23_GAA30_EnvironmentKeyWritingModifierVyA12_SgGGGAA6SpacerVAMyAMyAMyA26_AZGA28_ySiSgGGAA21_TraitWritingModifierVyAA0G16PriorityTraitKeyVGGSgtGGMR);
  closure #1 in InlineProfileEditingView.body.getter(v2, &v9[*(v21 + 44)]);
  v22 = [objc_opt_self() quaternarySystemFillColor];
  v23 = Color.init(_:)();
  v24 = static Edge.Set.all.getter();
  v25 = &v9[*(v7 + 44)];
  *v25 = v23;
  v25[8] = v24;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  outlined init with take of URL?(v9, v12, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA012_ConditionalD0VyACyACyACyAA5ImageVAA12_FrameLayoutVGAA11_ClipEffectVyAA6CircleVGGAA08_PaddingK0VGACyACyACy010_MusicKit_aB007ArtworkI0V01_pq9Internal_aB0E18artworkPlaceholderyQrx0pQ00R0VSg_So6CGSizeVAA5ColorVtcAA0G0RzlFQOy_0p4CoreB0015CNSwiftUIAvatarG0VQo_AMGASGAVGG_AIyAA4TextVACyAA6ButtonVyA19_GAA30_EnvironmentKeyWritingModifierVyA8_SgGGGAA6SpacerVACyACyACyA22_AVGA24_ySiSgGGAA21_TraitWritingModifierVyAA0K16PriorityTraitKeyVGGSgtGGAA24_BackgroundStyleModifierVyA8_GGMd, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA012_ConditionalD0VyACyACyACyAA5ImageVAA12_FrameLayoutVGAA11_ClipEffectVyAA6CircleVGGAA08_PaddingK0VGACyACyACy010_MusicKit_aB007ArtworkI0V01_pq9Internal_aB0E18artworkPlaceholderyQrx0pQ00R0VSg_So6CGSizeVAA5ColorVtcAA0G0RzlFQOy_0p4CoreB0015CNSwiftUIAvatarG0VQo_AMGASGAVGG_AIyAA4TextVACyAA6ButtonVyA19_GAA30_EnvironmentKeyWritingModifierVyA8_SgGGGAA6SpacerVACyACyACyA22_AVGA24_ySiSgGGAA21_TraitWritingModifierVyAA0K16PriorityTraitKeyVGGSgtGGAA24_BackgroundStyleModifierVyA8_GGMR);
  v26 = &v12[*(v10 + 44)];
  v27 = v91;
  *(v26 + 4) = v90;
  *(v26 + 5) = v27;
  *(v26 + 6) = v92;
  v28 = v87;
  *v26 = v86;
  *(v26 + 1) = v28;
  v29 = v89;
  *(v26 + 2) = v88;
  *(v26 + 3) = v29;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  outlined init with take of URL?(v12, v15, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyAA012_ConditionalD0VyACyACyACyAA5ImageVAA12_FrameLayoutVGAA11_ClipEffectVyAA6CircleVGGAA08_PaddingK0VGACyACyACy010_MusicKit_aB007ArtworkI0V01_pq9Internal_aB0E18artworkPlaceholderyQrx0pQ00R0VSg_So6CGSizeVAA5ColorVtcAA0G0RzlFQOy_0p4CoreB0015CNSwiftUIAvatarG0VQo_AMGASGAVGG_AIyAA4TextVACyAA6ButtonVyA19_GAA30_EnvironmentKeyWritingModifierVyA8_SgGGGAA6SpacerVACyACyACyA22_AVGA24_ySiSgGGAA21_TraitWritingModifierVyAA0K16PriorityTraitKeyVGGSgtGGAA24_BackgroundStyleModifierVyA8_GGAA05_FlexjK0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyAA012_ConditionalD0VyACyACyACyAA5ImageVAA12_FrameLayoutVGAA11_ClipEffectVyAA6CircleVGGAA08_PaddingK0VGACyACyACy010_MusicKit_aB007ArtworkI0V01_pq9Internal_aB0E18artworkPlaceholderyQrx0pQ00R0VSg_So6CGSizeVAA5ColorVtcAA0G0RzlFQOy_0p4CoreB0015CNSwiftUIAvatarG0VQo_AMGASGAVGG_AIyAA4TextVACyAA6ButtonVyA19_GAA30_EnvironmentKeyWritingModifierVyA8_SgGGGAA6SpacerVACyACyACyA22_AVGA24_ySiSgGGAA21_TraitWritingModifierVyAA0K16PriorityTraitKeyVGGSgtGGAA24_BackgroundStyleModifierVyA8_GGAA05_FlexjK0VGMR);
  v30 = &v15[*(v13 + 44)];
  v31 = v98;
  *(v30 + 4) = v97;
  *(v30 + 5) = v31;
  *(v30 + 6) = v99;
  v32 = v94;
  *v30 = v93;
  *(v30 + 1) = v32;
  v33 = v96;
  *(v30 + 2) = v95;
  *(v30 + 3) = v33;
  v34 = *(v16 + 36);
  v35 = v79;
  v36 = &v79[v34];
  v37 = *(type metadata accessor for RoundedRectangle() + 20);
  v38 = enum case for RoundedCornerStyle.continuous(_:);
  v39 = type metadata accessor for RoundedCornerStyle();
  (*(*(v39 - 8) + 104))(&v36[v37], v38, v39);
  __asm { FMOV            V0.2D, #16.0 }

  *v36 = _Q0;
  *&v36[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11_ClipEffectVyAA16RoundedRectangleVGMd, &_s7SwiftUI11_ClipEffectVyAA16RoundedRectangleVGMR) + 36)] = 256;
  outlined init with take of URL?(v15, v35, &_s7SwiftUI15ModifiedContentVyACyACyAA6HStackVyAA9TupleViewVyAA012_ConditionalD0VyACyACyACyAA5ImageVAA12_FrameLayoutVGAA11_ClipEffectVyAA6CircleVGGAA08_PaddingK0VGACyACyACy010_MusicKit_aB007ArtworkI0V01_pq9Internal_aB0E18artworkPlaceholderyQrx0pQ00R0VSg_So6CGSizeVAA5ColorVtcAA0G0RzlFQOy_0p4CoreB0015CNSwiftUIAvatarG0VQo_AMGASGAVGG_AIyAA4TextVACyAA6ButtonVyA19_GAA30_EnvironmentKeyWritingModifierVyA8_SgGGGAA6SpacerVACyACyACyA22_AVGA24_ySiSgGGAA21_TraitWritingModifierVyAA0K16PriorityTraitKeyVGGSgtGGAA24_BackgroundStyleModifierVyA8_GGAA05_FlexjK0VGA49_GMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6HStackVyAA9TupleViewVyAA012_ConditionalD0VyACyACyACyAA5ImageVAA12_FrameLayoutVGAA11_ClipEffectVyAA6CircleVGGAA08_PaddingK0VGACyACyACy010_MusicKit_aB007ArtworkI0V01_pq9Internal_aB0E18artworkPlaceholderyQrx0pQ00R0VSg_So6CGSizeVAA5ColorVtcAA0G0RzlFQOy_0p4CoreB0015CNSwiftUIAvatarG0VQo_AMGASGAVGG_AIyAA4TextVACyAA6ButtonVyA19_GAA30_EnvironmentKeyWritingModifierVyA8_SgGGGAA6SpacerVACyACyACyA22_AVGA24_ySiSgGGAA21_TraitWritingModifierVyAA0K16PriorityTraitKeyVGGSgtGGAA24_BackgroundStyleModifierVyA8_GGAA05_FlexjK0VGA49_GMR);
  v84 = 0;
  v85 = 0xE000000000000000;
  v45 = v67;
  v83 = *(v67 + 16);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd, &_s7SwiftUI5StateVySbGMR);
  State.projectedValue.getter();
  v66[1] = v66;
  v82 = v45;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA6ButtonVyAA4TextVG_A2HSgAHtGMd, &_s7SwiftUI9TupleViewVyAA6ButtonVyAA4TextVG_A2HSgAHtGMR);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _FrameLayout>, _ClipEffect<Circle>>, _PaddingLayout>, ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of ArtworkImage.artworkPlaceholder<A>(_:)>>.0, _FrameLayout>, _ClipEffect<Circle>>, _PaddingLayout>>, _ConditionalContent<Text, ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>>>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Button<Text>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Int?>>, _TraitWritingModifier<LayoutPriorityTraitKey>>?)>>, _BackgroundStyleModifier<Color>>, _FlexFrameLayout>, _FlexFrameLayout>, _ClipEffect<RoundedRectangle>> and conformance <> ModifiedContent<A, B>();
  v46 = _sS2SSysWl_0();
  lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type TupleView<(Button<Text>, Button<Text>, Button<Text>?, Button<Text>)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA6ButtonVyAA4TextVG_A2HSgAHtGMd, &_s7SwiftUI9TupleViewVyAA6ButtonVyAA4TextVG_A2HSgAHtGMR, &protocol conformance descriptor for TupleView<A>);
  v69 = v46;
  v47 = v70;
  v48 = v79;
  View.confirmationDialog<A, B>(_:isPresented:titleVisibility:actions:)();
  v49 = v73;
  v50 = v45;

  v51 = v74;

  v52 = v75;
  outlined destroy of TaskPriority?(v48, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6HStackVyAA9TupleViewVyAA012_ConditionalD0VyACyACyACyAA5ImageVAA12_FrameLayoutVGAA11_ClipEffectVyAA6CircleVGGAA08_PaddingK0VGACyACyACy010_MusicKit_aB007ArtworkI0V01_pq9Internal_aB0E18artworkPlaceholderyQrx0pQ00R0VSg_So6CGSizeVAA5ColorVtcAA0G0RzlFQOy_0p4CoreB0015CNSwiftUIAvatarG0VQo_AMGASGAVGG_AIyAA4TextVACyAA6ButtonVyA19_GAA30_EnvironmentKeyWritingModifierVyA8_SgGGGAA6SpacerVACyACyACyA22_AVGA24_ySiSgGGAA21_TraitWritingModifierVyAA0K16PriorityTraitKeyVGGSgtGGAA24_BackgroundStyleModifierVyA8_GGAA05_FlexjK0VGA49_GAPyAA16RoundedRectangleVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6HStackVyAA9TupleViewVyAA012_ConditionalD0VyACyACyACyAA5ImageVAA12_FrameLayoutVGAA11_ClipEffectVyAA6CircleVGGAA08_PaddingK0VGACyACyACy010_MusicKit_aB007ArtworkI0V01_pq9Internal_aB0E18artworkPlaceholderyQrx0pQ00R0VSg_So6CGSizeVAA5ColorVtcAA0G0RzlFQOy_0p4CoreB0015CNSwiftUIAvatarG0VQo_AMGASGAVGG_AIyAA4TextVACyAA6ButtonVyA19_GAA30_EnvironmentKeyWritingModifierVyA8_SgGGGAA6SpacerVACyACyACyA22_AVGA24_ySiSgGGAA21_TraitWritingModifierVyAA0K16PriorityTraitKeyVGGSgtGGAA24_BackgroundStyleModifierVyA8_GGAA05_FlexjK0VGA49_GAPyAA16RoundedRectangleVGGMR);
  v53 = static Alignment.center.getter();
  v55 = v54;
  v56 = v81;
  v57 = &v81[*(v80 + 36)];
  closure #3 in InlineProfileEditingView.body.getter(v50, v57);
  v58 = (v57 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_BackgroundModifierVyAA15ModifiedContentVy09MusicCoreB011ImagePickerVAA12_FrameLayoutVGGMd, &_s7SwiftUI19_BackgroundModifierVyAA15ModifiedContentVy09MusicCoreB011ImagePickerVAA12_FrameLayoutVGGMR) + 36));
  *v58 = v53;
  v58[1] = v55;
  v59 = v76;
  (*(v71 + 32))(v56, v47, v72);
  String.LocalizationValue.init(stringLiteral:)();
  (*(v52 + 16))(v51, v49, v59);
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  v60 = static NSBundle.module;
  static Locale.current.getter();
  v61 = String.init(localized:table:bundle:locale:comment:)();
  v63 = v62;
  (*(v52 + 8))(v49, v59);
  v84 = v61;
  v85 = v63;
  v83 = *(v50 + 48);
  State.projectedValue.getter();
  v79 = v66;
  __chkstk_darwin();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA9TextFieldVyAA0E0VG_AA15ModifiedContentVyAA6ButtonVyAGGAA32_EnvironmentKeyTransformModifierVySbGGAMtGMd, &_s7SwiftUI9TupleViewVyAA9TextFieldVyAA0E0VG_AA15ModifiedContentVyAA6ButtonVyAGGAA32_EnvironmentKeyTransformModifierVySbGGAMtGMR);
  lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.confirmationDialog<A, B>(_:isPresented:titleVisibility:actions:)>>.0, _BackgroundModifier<ModifiedContent<ImagePicker, _FrameLayout>>> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type TupleView<(TextField<Text>, ModifiedContent<Button<Text>, _EnvironmentKeyTransformModifier<Bool>>, Button<Text>)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA9TextFieldVyAA0E0VG_AA15ModifiedContentVyAA6ButtonVyAGGAA32_EnvironmentKeyTransformModifierVySbGGAMtGMd, &_s7SwiftUI9TupleViewVyAA9TextFieldVyAA0E0VG_AA15ModifiedContentVyAA6ButtonVyAGGAA32_EnvironmentKeyTransformModifierVySbGGAMtGMR, &protocol conformance descriptor for TupleView<A>);
  v64 = v81;
  View.alert<A, B>(_:isPresented:actions:)();

  return outlined destroy of TaskPriority?(v64, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE18confirmationDialog_11isPresented15titleVisibility7actionsQrqd___AA7BindingVySbGAA0K0Oqd_0_yXEtSyRd__AaDRd_0_r0_lFQOyACyACyACyACyAA6HStackVyAA05TupleE0VyAA012_ConditionalD0VyACyACyACyAA5ImageVAA12_FrameLayoutVGAA11_ClipEffectVyAA6CircleVGGAA08_PaddingS0VGACyACyACy010_MusicKit_aB007ArtworkQ0V01_xy9Internal_aB0E18artworkPlaceholderyQrx0xY00Z0VSg_So6CGSizeVAA5ColorVtcAaDRzlFQOy_0x4CoreB0015CNSwiftUIAvatarE0VQo_AXGA2_GA5_GG_ATyAA4TextVACyAA6ButtonVyA29_GAA30_EnvironmentKeyWritingModifierVyA19_SgGGGAA6SpacerVACyACyACyA32_A5_GA34_ySiSgGGAA21_TraitWritingModifierVyAA0S16PriorityTraitKeyVGGSgtGGAA24_BackgroundStyleModifierVyA19_GGAA05_FlexrS0VGA59_GA_yAA16RoundedRectangleVGG_SSARyA32__A32_A32_SgA32_tGQo_AA19_BackgroundModifierVyACyA20_0Q6PickerVAXGGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE18confirmationDialog_11isPresented15titleVisibility7actionsQrqd___AA7BindingVySbGAA0K0Oqd_0_yXEtSyRd__AaDRd_0_r0_lFQOyACyACyACyACyAA6HStackVyAA05TupleE0VyAA012_ConditionalD0VyACyACyACyAA5ImageVAA12_FrameLayoutVGAA11_ClipEffectVyAA6CircleVGGAA08_PaddingS0VGACyACyACy010_MusicKit_aB007ArtworkQ0V01_xy9Internal_aB0E18artworkPlaceholderyQrx0xY00Z0VSg_So6CGSizeVAA5ColorVtcAaDRzlFQOy_0x4CoreB0015CNSwiftUIAvatarE0VQo_AXGA2_GA5_GG_ATyAA4TextVACyAA6ButtonVyA29_GAA30_EnvironmentKeyWritingModifierVyA19_SgGGGAA6SpacerVACyACyACyA32_A5_GA34_ySiSgGGAA21_TraitWritingModifierVyAA0S16PriorityTraitKeyVGGSgtGGAA24_BackgroundStyleModifierVyA19_GGAA05_FlexrS0VGA59_GA_yAA16RoundedRectangleVGG_SSARyA32__A32_A32_SgA32_tGQo_AA19_BackgroundModifierVyACyA20_0Q6PickerVAXGGGMR);
}

uint64_t closure #1 in InlineProfileEditingView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v235 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6ButtonVyAA4TextVGAA14_PaddingLayoutVGAA30_EnvironmentKeyWritingModifierVySiSgGGAA06_TraitkL0VyAA0h8PrioritymJ0VGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6ButtonVyAA4TextVGAA14_PaddingLayoutVGAA30_EnvironmentKeyWritingModifierVySiSgGGAA06_TraitkL0VyAA0h8PrioritymJ0VGGMR);
  v231 = *(v3 - 8);
  v232 = v3;
  __chkstk_darwin();
  v212 = v188 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6ButtonVyAA4TextVGAA14_PaddingLayoutVGAA30_EnvironmentKeyWritingModifierVySiSgGGAA06_TraitkL0VyAA0h8PrioritymJ0VGGSgMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6ButtonVyAA4TextVGAA14_PaddingLayoutVGAA30_EnvironmentKeyWritingModifierVySiSgGGAA06_TraitkL0VyAA0h8PrioritymJ0VGGSgMR);
  __chkstk_darwin();
  v234 = v188 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v233 = v188 - v6;
  type metadata accessor for Locale();
  __chkstk_darwin();
  v227 = v188 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v228 = type metadata accessor for String.LocalizationValue();
  v226 = *(v228 - 8);
  __chkstk_darwin();
  v239 = v188 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v240 = v188 - v9;
  v225 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMR);
  __chkstk_darwin();
  v208 = v188 - v10;
  v222 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA4TextVAA08ModifiedD0VyAA6ButtonVyAGGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_GMd, &_s7SwiftUI19_ConditionalContentV7StorageOyAA4TextVAA08ModifiedD0VyAA6ButtonVyAGGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGG_GMR);
  __chkstk_darwin();
  v224 = (v188 - v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA4TextVAA08ModifiedD0VyAA6ButtonVyAEGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGGMd, &_s7SwiftUI19_ConditionalContentVyAA4TextVAA08ModifiedD0VyAA6ButtonVyAEGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGGMR);
  __chkstk_darwin();
  v230 = v188 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v241 = v188 - v13;
  v14 = type metadata accessor for Image.ResizingMode();
  v210 = *(v14 - 8);
  v211 = v14;
  __chkstk_darwin();
  v209 = v188 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v219 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAGyAGyAA5ImageVAA12_FrameLayoutVGAA11_ClipEffectVyAA6CircleVGGAA08_PaddingI0VGAGyAGyAGy010_MusicKit_aB007ArtworkG0V01_no9Internal_aB0E18artworkPlaceholderyQrx0nO00P0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_0n4CoreB0015CNSwiftUIAvatarV0VQo_AKGAQGATG_GMd, &_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAGyAGyAA5ImageVAA12_FrameLayoutVGAA11_ClipEffectVyAA6CircleVGGAA08_PaddingI0VGAGyAGyAGy010_MusicKit_aB007ArtworkG0V01_no9Internal_aB0E18artworkPlaceholderyQrx0nO00P0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_0n4CoreB0015CNSwiftUIAvatarV0VQo_AKGAQGATG_GMR);
  __chkstk_darwin();
  v220 = (v188 - v16);
  v236 = type metadata accessor for Artwork.CropStyle();
  v217 = *(v236 - 8);
  __chkstk_darwin();
  v204 = v188 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for ArtworkImage();
  v206 = *(v18 - 8);
  v207 = v18;
  __chkstk_darwin();
  v213 = v188 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v203 = v188 - v20;
  __chkstk_darwin();
  v205 = v188 - v21;
  __chkstk_darwin();
  v215 = v188 - v22;
  v216 = type metadata accessor for ArtworkImage.ReusePolicy();
  v214 = *(v216 - 8);
  __chkstk_darwin();
  v238 = v188 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit7ArtworkV0aB8InternalE9CropStyleVSgMd_0, &_s8MusicKit7ArtworkV0aB8InternalE9CropStyleVSgMR_0);
  __chkstk_darwin();
  v199 = v188 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v194 = v188 - v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit7ArtworkVSgMd_0, &_s8MusicKit7ArtworkVSgMR_0);
  __chkstk_darwin();
  v197 = v188 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v196 = v188 - v27;
  __chkstk_darwin();
  v193 = v188 - v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgMd, &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgMR);
  __chkstk_darwin();
  v198 = v188 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v195 = v188 - v30;
  __chkstk_darwin();
  v237 = v188 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_MusicKit_SwiftUI12ArtworkImageV01_ab9Internal_cD0E18artworkPlaceholderyQrx0aB00E0VSg_So6CGSizeV0cD05ColorVtcAL4ViewRzlFQOy_0a4CoreD0015CNSwiftUIAvatarL0VQo_Md, &_s17_MusicKit_SwiftUI12ArtworkImageV01_ab9Internal_cD0E18artworkPlaceholderyQrx0aB00E0VSg_So6CGSizeV0cD05ColorVtcAL4ViewRzlFQOy_0a4CoreD0015CNSwiftUIAvatarL0VQo_MR);
  v201 = *(v32 - 8);
  v202 = v32;
  __chkstk_darwin();
  v200 = v188 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy010_MusicKit_aB012ArtworkImageV01_ef9Internal_aB0E18artworkPlaceholderyQrx0eF00G0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_0e4CoreB0015CNSwiftUIAvatarN0VQo_AA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVy010_MusicKit_aB012ArtworkImageV01_ef9Internal_aB0E18artworkPlaceholderyQrx0eF00G0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_0e4CoreB0015CNSwiftUIAvatarN0VQo_AA12_FrameLayoutVGMR);
  __chkstk_darwin();
  v36 = v188 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACy010_MusicKit_aB012ArtworkImageV01_ef9Internal_aB0E18artworkPlaceholderyQrx0eF00G0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_0e4CoreB0015CNSwiftUIAvatarN0VQo_AA12_FrameLayoutVGAA11_ClipEffectVyAA6CircleVGGMd, &_s7SwiftUI15ModifiedContentVyACy010_MusicKit_aB012ArtworkImageV01_ef9Internal_aB0E18artworkPlaceholderyQrx0eF00G0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_0e4CoreB0015CNSwiftUIAvatarN0VQo_AA12_FrameLayoutVGAA11_ClipEffectVyAA6CircleVGGMR);
  __chkstk_darwin();
  v39 = v188 - v38;
  v218 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACy010_MusicKit_aB012ArtworkImageV01_ef9Internal_aB0E18artworkPlaceholderyQrx0eF00G0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_0e4CoreB0015CNSwiftUIAvatarN0VQo_AA12_FrameLayoutVGAA11_ClipEffectVyAA6CircleVGGAA08_PaddingS0VGMd, &_s7SwiftUI15ModifiedContentVyACyACy010_MusicKit_aB012ArtworkImageV01_ef9Internal_aB0E18artworkPlaceholderyQrx0eF00G0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_0e4CoreB0015CNSwiftUIAvatarN0VQo_AA12_FrameLayoutVGAA11_ClipEffectVyAA6CircleVGGAA08_PaddingS0VGMR);
  __chkstk_darwin();
  v41 = v188 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v43 = v188 - v42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAA5ImageVAA12_FrameLayoutVGAA11_ClipEffectVyAA6CircleVGGAA08_PaddingH0VGAEyAEyAEy010_MusicKit_aB007ArtworkF0V01_mn9Internal_aB0E18artworkPlaceholderyQrx0mN00O0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_0m4CoreB0015CNSwiftUIAvatarU0VQo_AIGAOGARGGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAA5ImageVAA12_FrameLayoutVGAA11_ClipEffectVyAA6CircleVGGAA08_PaddingH0VGAEyAEyAEy010_MusicKit_aB007ArtworkF0V01_mn9Internal_aB0E18artworkPlaceholderyQrx0mN00O0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_0m4CoreB0015CNSwiftUIAvatarU0VQo_AIGAOGARGGMR);
  __chkstk_darwin();
  v223 = v188 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v221 = v188 - v45;
  Int.seconds.getter(54);
  Int.seconds.getter(10);
  v229 = a1;
  v46 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v242 = v46;
  if (v245._countAndFlagsBits)
  {
    v238 = v245._countAndFlagsBits;
    Image.init(uiImage:)();
    v48 = v209;
    v47 = v210;
    v49 = v211;
    (*(v210 + 13))(v209, enum case for Image.ResizingMode.stretch(_:), v211);
    v237 = Image.resizable(capInsets:resizingMode:)();

    (*(v47 + 8))(v48, v49);
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v50 = v253;
    v51 = v254;
    v52 = v255;
    v53 = v256;
    v55 = v257;
    v54 = v258;
    LOBYTE(v245._countAndFlagsBits) = v254;
    LOBYTE(v243[0]) = v256;
    LOBYTE(v47) = static Edge.Set.all.getter();
    EdgeInsets.init(_all:)();
    v244 = 0;
    v245._countAndFlagsBits = v237;
    v245._object = v50;
    LOBYTE(v246._countAndFlagsBits) = v51;
    v246._object = v52;
    LOBYTE(v247._countAndFlagsBits) = v53;
    v247._object = v55;
    v248._countAndFlagsBits = v54;
    LOWORD(v248._object) = 256;
    *(&v248._object + 2) = v251;
    HIWORD(v248._object) = WORD2(v251);
    LOBYTE(v249._countAndFlagsBits) = v47;
    HIDWORD(v249._countAndFlagsBits) = *(v243 + 3);
    *(&v249._countAndFlagsBits + 1) = v243[0];
    v249._object = v56;
    *&v250[0] = v57;
    *(&v250[0] + 1) = v58;
    *&v250[1] = v59;
    BYTE8(v250[1]) = 0;
    v60 = v248;
    v61 = v250[0];
    v62 = v220;
    v220[4] = v249;
    v62[5] = v61;
    *(v62 + 89) = *(v250 + 9);
    v63 = v246;
    v64 = v247;
    *v62 = v245;
    v62[1] = v63;
    v62[2] = v64;
    v62[3] = v60;
    swift_storeEnumTagMultiPayload();
    outlined init with copy of TaskPriority?(&v245, v243, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA12_FrameLayoutVGAA11_ClipEffectVyAA6CircleVGGAA08_PaddingG0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA12_FrameLayoutVGAA11_ClipEffectVyAA6CircleVGGAA08_PaddingG0VGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA12_FrameLayoutVGAA11_ClipEffectVyAA6CircleVGGAA08_PaddingG0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA12_FrameLayoutVGAA11_ClipEffectVyAA6CircleVGGAA08_PaddingG0VGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _FrameLayout>, _ClipEffect<Circle>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of ArtworkImage.artworkPlaceholder<A>(_:)>>.0, _FrameLayout>, _ClipEffect<Circle>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    v65 = v221;
    _ConditionalContent<>.init(storage:)();

    outlined destroy of TaskPriority?(&v245, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA12_FrameLayoutVGAA11_ClipEffectVyAA6CircleVGGAA08_PaddingG0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA12_FrameLayoutVGAA11_ClipEffectVyAA6CircleVGGAA08_PaddingG0VGMR);
    v66 = v239;
    goto LABEL_18;
  }

  v190 = v37;
  v191 = v41;
  v192 = v34;
  v209 = v36;
  v210 = v39;
  v211 = v43;
  swift_getKeyPath();
  swift_getKeyPath();
  v67 = v193;
  static Published.subscript.getter();

  v68 = v194;
  v188[0] = *(v217 + 56);
  v188[1] = v217 + 56;
  (v188[0])(v194, 1, 1, v236);
  v69 = type metadata accessor for Artwork();
  v70 = *(v69 - 8);
  v71 = (*(v70 + 48))(v67, 1, v69);
  v189 = v69;
  if (v71 == 1)
  {
    outlined destroy of TaskPriority?(v68, &_s8MusicKit7ArtworkV0aB8InternalE9CropStyleVSgMd_0, &_s8MusicKit7ArtworkV0aB8InternalE9CropStyleVSgMR_0);
    outlined destroy of TaskPriority?(v67, &_s8MusicKit7ArtworkVSgMd_0, &_s8MusicKit7ArtworkVSgMR_0);
    v72 = type metadata accessor for ArtworkImage.ViewModel(0);
    v73 = v237;
    (*(*(v72 - 8) + 56))(v237, 1, 1, v72);
  }

  else
  {
    v73 = v237;
    (*(v70 + 32))(v237, v67, v69);
    v72 = type metadata accessor for ArtworkImage.ViewModel(0);
    outlined init with take of URL?(v68, v73 + *(v72 + 20), &_s8MusicKit7ArtworkV0aB8InternalE9CropStyleVSgMd_0, &_s8MusicKit7ArtworkV0aB8InternalE9CropStyleVSgMR_0);
    (*(*(v72 - 8) + 56))(v73, 0, 1, v72);
  }

  v74 = v238;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v75 = String.trim()();

  (*(v214 + 104))(v74, enum case for ArtworkImage.ReusePolicy.reusableForDistinctItems(_:), v216);
  *(swift_allocObject() + 16) = v75;
  v76 = v195;
  outlined init with copy of TaskPriority?(v73, v195, &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgMd, &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgMR);
  type metadata accessor for ArtworkImage.ViewModel(0);
  v77 = *(*(v72 - 8) + 48);
  if (v77(v76, 1, v72) == 1)
  {
    outlined destroy of TaskPriority?(v76, &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgMd, &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgMR);
    v78 = 1;
    v79 = v196;
    v80 = v197;
    v81 = v189;
  }

  else
  {
    v79 = v196;
    v81 = v189;
    (*(v70 + 16))(v196, v76, v189);
    outlined destroy of ImagePicker(v76, type metadata accessor for ArtworkImage.ViewModel);
    v78 = 0;
    v80 = v197;
  }

  (*(v70 + 56))(v79, v78, 1, v81);
  outlined init with copy of TaskPriority?(v79, v80, &_s8MusicKit7ArtworkVSgMd_0, &_s8MusicKit7ArtworkVSgMR_0);
  ArtworkImage.init(_:)();
  outlined destroy of TaskPriority?(v79, &_s8MusicKit7ArtworkVSgMd_0, &_s8MusicKit7ArtworkVSgMR_0);
  ArtworkImage.artworkReusablePolicy(_:)();
  v82 = v198;
  outlined init with copy of TaskPriority?(v237, v198, &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgMd, &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgMR);
  v83 = v77(v82, 1, v72);
  v84 = v207;
  if (v83 == 1)
  {
    outlined destroy of TaskPriority?(v82, &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgMd, &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgMR);
    v85 = v199;
    (v188[0])(v199, 1, 1, v236);
    v66 = v239;
    v86 = v206;
    v87 = v217;
LABEL_12:
    v90 = v204;
    if (one-time initialization token for fallback != -1)
    {
      swift_once();
    }

    v88 = v236;
    v91 = __swift_project_value_buffer(v236, static Artwork.CropStyle.fallback);
    (*(v87 + 16))(v90, v91, v88);
    v92 = (*(v87 + 48))(v85, 1, v88) == 1;
    v93 = v85;
    v94 = v90;
    v95 = v87;
    if (!v92)
    {
      outlined destroy of TaskPriority?(v93, &_s8MusicKit7ArtworkV0aB8InternalE9CropStyleVSgMd_0, &_s8MusicKit7ArtworkV0aB8InternalE9CropStyleVSgMR_0);
    }

    goto LABEL_17;
  }

  v85 = v199;
  outlined init with copy of TaskPriority?(v82 + *(v72 + 20), v199, &_s8MusicKit7ArtworkV0aB8InternalE9CropStyleVSgMd_0, &_s8MusicKit7ArtworkV0aB8InternalE9CropStyleVSgMR_0);
  outlined destroy of ImagePicker(v82, type metadata accessor for ArtworkImage.ViewModel);
  v87 = v217;
  v88 = v236;
  v89 = (*(v217 + 48))(v85, 1, v236);
  v66 = v239;
  v86 = v206;
  if (v89 == 1)
  {
    goto LABEL_12;
  }

  v96 = v85;
  v94 = v204;
  (*(v87 + 32))(v204, v96, v88);
  v95 = v87;
LABEL_17:
  v97 = v203;
  v98 = v213;
  ArtworkImage.artworkCropStyle(_:)();
  (*(v95 + 8))(v94, v88);
  v99 = *(v86 + 8);
  v99(v98, v84);
  v100 = v205;
  ArtworkImage.artworkIdealAspectRatio(_:contentMode:)();
  v99(v97, v84);
  lazy protocol witness table accessor for type CNSwiftUIAvatarView and conformance CNSwiftUIAvatarView();
  v101 = v200;
  ArtworkImage.artworkPlaceholder<A>(_:)();

  v99(v100, v84);
  v99(v215, v84);
  (*(v214 + 8))(v238, v216);
  outlined destroy of TaskPriority?(v237, &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgMd, &_s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelVSgMR);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v102 = v209;
  (*(v201 + 32))(v209, v101, v202);
  v103 = (v102 + *(v192 + 36));
  v104 = v243[1];
  *v103 = v243[0];
  v103[1] = v104;
  v103[2] = v243[2];
  v105 = v210;
  outlined init with take of URL?(v102, v210, &_s7SwiftUI15ModifiedContentVy010_MusicKit_aB012ArtworkImageV01_ef9Internal_aB0E18artworkPlaceholderyQrx0eF00G0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_0e4CoreB0015CNSwiftUIAvatarN0VQo_AA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVy010_MusicKit_aB012ArtworkImageV01_ef9Internal_aB0E18artworkPlaceholderyQrx0eF00G0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_0e4CoreB0015CNSwiftUIAvatarN0VQo_AA12_FrameLayoutVGMR);
  *(v105 + *(v190 + 36)) = 256;
  LOBYTE(v102) = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v107 = v106;
  v109 = v108;
  v111 = v110;
  v113 = v112;
  v114 = v191;
  outlined init with take of URL?(v105, v191, &_s7SwiftUI15ModifiedContentVyACy010_MusicKit_aB012ArtworkImageV01_ef9Internal_aB0E18artworkPlaceholderyQrx0eF00G0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_0e4CoreB0015CNSwiftUIAvatarN0VQo_AA12_FrameLayoutVGAA11_ClipEffectVyAA6CircleVGGMd, &_s7SwiftUI15ModifiedContentVyACy010_MusicKit_aB012ArtworkImageV01_ef9Internal_aB0E18artworkPlaceholderyQrx0eF00G0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_0e4CoreB0015CNSwiftUIAvatarN0VQo_AA12_FrameLayoutVGAA11_ClipEffectVyAA6CircleVGGMR);
  v115 = v114 + *(v218 + 36);
  *v115 = v102;
  *(v115 + 8) = v107;
  *(v115 + 16) = v109;
  *(v115 + 24) = v111;
  *(v115 + 32) = v113;
  *(v115 + 40) = 0;
  v116 = v211;
  outlined init with take of URL?(v114, v211, &_s7SwiftUI15ModifiedContentVyACyACy010_MusicKit_aB012ArtworkImageV01_ef9Internal_aB0E18artworkPlaceholderyQrx0eF00G0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_0e4CoreB0015CNSwiftUIAvatarN0VQo_AA12_FrameLayoutVGAA11_ClipEffectVyAA6CircleVGGAA08_PaddingS0VGMd, &_s7SwiftUI15ModifiedContentVyACyACy010_MusicKit_aB012ArtworkImageV01_ef9Internal_aB0E18artworkPlaceholderyQrx0eF00G0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_0e4CoreB0015CNSwiftUIAvatarN0VQo_AA12_FrameLayoutVGAA11_ClipEffectVyAA6CircleVGGAA08_PaddingS0VGMR);
  outlined init with copy of TaskPriority?(v116, v220, &_s7SwiftUI15ModifiedContentVyACyACy010_MusicKit_aB012ArtworkImageV01_ef9Internal_aB0E18artworkPlaceholderyQrx0eF00G0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_0e4CoreB0015CNSwiftUIAvatarN0VQo_AA12_FrameLayoutVGAA11_ClipEffectVyAA6CircleVGGAA08_PaddingS0VGMd, &_s7SwiftUI15ModifiedContentVyACyACy010_MusicKit_aB012ArtworkImageV01_ef9Internal_aB0E18artworkPlaceholderyQrx0eF00G0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_0e4CoreB0015CNSwiftUIAvatarN0VQo_AA12_FrameLayoutVGAA11_ClipEffectVyAA6CircleVGGAA08_PaddingS0VGMR);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA12_FrameLayoutVGAA11_ClipEffectVyAA6CircleVGGAA08_PaddingG0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA12_FrameLayoutVGAA11_ClipEffectVyAA6CircleVGGAA08_PaddingG0VGMR);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _FrameLayout>, _ClipEffect<Circle>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of ArtworkImage.artworkPlaceholder<A>(_:)>>.0, _FrameLayout>, _ClipEffect<Circle>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
  v65 = v221;
  _ConditionalContent<>.init(storage:)();
  outlined destroy of TaskPriority?(v116, &_s7SwiftUI15ModifiedContentVyACyACy010_MusicKit_aB012ArtworkImageV01_ef9Internal_aB0E18artworkPlaceholderyQrx0eF00G0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_0e4CoreB0015CNSwiftUIAvatarN0VQo_AA12_FrameLayoutVGAA11_ClipEffectVyAA6CircleVGGAA08_PaddingS0VGMd, &_s7SwiftUI15ModifiedContentVyACyACy010_MusicKit_aB012ArtworkImageV01_ef9Internal_aB0E18artworkPlaceholderyQrx0eF00G0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_0e4CoreB0015CNSwiftUIAvatarN0VQo_AA12_FrameLayoutVGAA11_ClipEffectVyAA6CircleVGGAA08_PaddingS0VGMR);
LABEL_18:
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v117 = String.trim()();

  v118 = (v117._object >> 56) & 0xF;
  if ((v117._object & 0x2000000000000000) == 0)
  {
    v118 = v117._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  v119 = &unk_10063E000;
  if (v118)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v120 = String.trim()();

    v245 = v120;
    _sS2SSysWl_0();
    v121 = Text.init<A>(_:)();
    v123 = v122;
    v125 = v124;
    v126 = Text.bold()();
    v128 = v127;
    v129 = v65;
    v131 = v130;
    v133 = v132;
    outlined consume of Text.Storage(v121, v123, v125 & 1);

    v134 = v224;
    *v224 = v126;
    v134[1] = v128;
    v66 = v239;
    v135 = v131 & 1;
    v65 = v129;
    *(v134 + 16) = v135;
    v134[3] = v133;
    v119 = &unk_10063E000;
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    v136 = v228;
  }

  else
  {
    v137 = v240;
    String.LocalizationValue.init(stringLiteral:)();
    v138 = v226;
    v136 = v228;
    (*(v226 + 16))(v66, v137, v228);
    if (one-time initialization token for module != -1)
    {
      swift_once();
    }

    v139 = static NSBundle.module;
    static Locale.current.getter();
    v140 = String.init(localized:table:bundle:locale:comment:)();
    v142 = v141;
    (*(v138 + 8))(v240, v136);
    v251 = v140;
    v252 = v142;
    v143 = swift_allocObject();
    v144 = v229;
    v145 = *(v229 + 48);
    v143[3] = *(v229 + 32);
    v143[4] = v145;
    v143[5] = v144[4];
    v146 = v144[1];
    v143[1] = *v144;
    v143[2] = v146;
    outlined init with copy of InlineProfileEditingView(v144, &v245);
    _sS2SSysWl_0();
    v147 = v208;
    Button<>.init<A>(_:action:)();
    v148 = static Color.secondary.getter();
    KeyPath = swift_getKeyPath();
    v150 = v224;
    v151 = (v147 + *(v225 + 36));
    *v151 = KeyPath;
    v151[1] = v148;
    outlined init with copy of TaskPriority?(v147, v150, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMR);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    outlined destroy of TaskPriority?(v147, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMR);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v152 = String.trim()();

  v153 = (v152._object >> 56) & 0xF;
  if ((v152._object & 0x2000000000000000) == 0)
  {
    v153 = v152._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (v153)
  {
    v154 = v240;
    String.LocalizationValue.init(stringLiteral:)();
    v155 = v226;
    (*(v226 + 16))(v66, v154, v136);
    if (one-time initialization token for module != -1)
    {
      swift_once();
    }

    v156 = v119[408];
    static Locale.current.getter();
    v157 = String.init(localized:table:bundle:locale:comment:)();
    v159 = v158;
    (*(v155 + 8))(v240, v136);
    v251 = v157;
    v252 = v159;
    v160 = swift_allocObject();
    v161 = v229;
    v162 = *(v229 + 48);
    v160[3] = *(v229 + 32);
    v160[4] = v162;
    v160[5] = v161[4];
    v163 = v161[1];
    v160[1] = *v161;
    v160[2] = v163;
    outlined init with copy of InlineProfileEditingView(v161, &v245);
    _sS2SSysWl_0();
    v164 = v212;
    Button<>.init<A>(_:action:)();
    LOBYTE(v160) = static Edge.Set.trailing.getter();
    EdgeInsets.init(_all:)();
    v166 = v165;
    v168 = v167;
    v170 = v169;
    v172 = v171;
    v173 = v164 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA14_PaddingLayoutVGMR) + 36);
    *v173 = v160;
    *(v173 + 8) = v166;
    *(v173 + 16) = v168;
    *(v173 + 24) = v170;
    *(v173 + 32) = v172;
    *(v173 + 40) = 0;
    v174 = swift_getKeyPath();
    v175 = v164 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA4TextVGAA14_PaddingLayoutVGAA30_EnvironmentKeyWritingModifierVySiSgGGMd, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA4TextVGAA14_PaddingLayoutVGAA30_EnvironmentKeyWritingModifierVySiSgGGMR) + 36);
    *v175 = v174;
    *(v175 + 8) = 1;
    *(v175 + 16) = 0;
    v177 = v232;
    v176 = v233;
    *(v164 + *(v232 + 36)) = 0x3FF0000000000000;
    outlined init with take of URL?(v164, v176, &_s7SwiftUI15ModifiedContentVyACyACyAA6ButtonVyAA4TextVGAA14_PaddingLayoutVGAA30_EnvironmentKeyWritingModifierVySiSgGGAA06_TraitkL0VyAA0h8PrioritymJ0VGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6ButtonVyAA4TextVGAA14_PaddingLayoutVGAA30_EnvironmentKeyWritingModifierVySiSgGGAA06_TraitkL0VyAA0h8PrioritymJ0VGGMR);
    v178 = 0;
  }

  else
  {
    v178 = 1;
    v177 = v232;
    v176 = v233;
  }

  (*(v231 + 56))(v176, v178, 1, v177);
  v179 = v223;
  v180 = v65;
  outlined init with copy of TaskPriority?(v65, v223, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAA5ImageVAA12_FrameLayoutVGAA11_ClipEffectVyAA6CircleVGGAA08_PaddingH0VGAEyAEyAEy010_MusicKit_aB007ArtworkF0V01_mn9Internal_aB0E18artworkPlaceholderyQrx0mN00O0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_0m4CoreB0015CNSwiftUIAvatarU0VQo_AIGAOGARGGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAA5ImageVAA12_FrameLayoutVGAA11_ClipEffectVyAA6CircleVGGAA08_PaddingH0VGAEyAEyAEy010_MusicKit_aB007ArtworkF0V01_mn9Internal_aB0E18artworkPlaceholderyQrx0mN00O0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_0m4CoreB0015CNSwiftUIAvatarU0VQo_AIGAOGARGGMR);
  v181 = v241;
  v182 = v230;
  outlined init with copy of TaskPriority?(v241, v230, &_s7SwiftUI19_ConditionalContentVyAA4TextVAA08ModifiedD0VyAA6ButtonVyAEGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGGMd, &_s7SwiftUI19_ConditionalContentVyAA4TextVAA08ModifiedD0VyAA6ButtonVyAEGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGGMR);
  v183 = v234;
  outlined init with copy of TaskPriority?(v176, v234, &_s7SwiftUI15ModifiedContentVyACyACyAA6ButtonVyAA4TextVGAA14_PaddingLayoutVGAA30_EnvironmentKeyWritingModifierVySiSgGGAA06_TraitkL0VyAA0h8PrioritymJ0VGGSgMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6ButtonVyAA4TextVGAA14_PaddingLayoutVGAA30_EnvironmentKeyWritingModifierVySiSgGGAA06_TraitkL0VyAA0h8PrioritymJ0VGGSgMR);
  v184 = v235;
  outlined init with copy of TaskPriority?(v179, v235, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAA5ImageVAA12_FrameLayoutVGAA11_ClipEffectVyAA6CircleVGGAA08_PaddingH0VGAEyAEyAEy010_MusicKit_aB007ArtworkF0V01_mn9Internal_aB0E18artworkPlaceholderyQrx0mN00O0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_0m4CoreB0015CNSwiftUIAvatarU0VQo_AIGAOGARGGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAA5ImageVAA12_FrameLayoutVGAA11_ClipEffectVyAA6CircleVGGAA08_PaddingH0VGAEyAEyAEy010_MusicKit_aB007ArtworkF0V01_mn9Internal_aB0E18artworkPlaceholderyQrx0mN00O0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_0m4CoreB0015CNSwiftUIAvatarU0VQo_AIGAOGARGGMR);
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAA5ImageVAA12_FrameLayoutVGAA11_ClipEffectVyAA6CircleVGGAA08_PaddingH0VGAEyAEyAEy010_MusicKit_aB007ArtworkF0V01_mn9Internal_aB0E18artworkPlaceholderyQrx0mN00O0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_0m4CoreB0015CNSwiftUIAvatarU0VQo_AIGAOGARGG_ACyAA4TextVAEyAA6ButtonVyA15_GAA30_EnvironmentKeyWritingModifierVyA4_SgGGGAA6SpacerVAEyAEyAEyA18_ARGA20_ySiSgGGAA21_TraitWritingModifierVyAA0H16PriorityTraitKeyVGGSgtMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAA5ImageVAA12_FrameLayoutVGAA11_ClipEffectVyAA6CircleVGGAA08_PaddingH0VGAEyAEyAEy010_MusicKit_aB007ArtworkF0V01_mn9Internal_aB0E18artworkPlaceholderyQrx0mN00O0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_0m4CoreB0015CNSwiftUIAvatarU0VQo_AIGAOGARGG_ACyAA4TextVAEyAA6ButtonVyA15_GAA30_EnvironmentKeyWritingModifierVyA4_SgGGGAA6SpacerVAEyAEyAEyA18_ARGA20_ySiSgGGAA21_TraitWritingModifierVyAA0H16PriorityTraitKeyVGGSgtMR);
  outlined init with copy of TaskPriority?(v182, v184 + v185[12], &_s7SwiftUI19_ConditionalContentVyAA4TextVAA08ModifiedD0VyAA6ButtonVyAEGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGGMd, &_s7SwiftUI19_ConditionalContentVyAA4TextVAA08ModifiedD0VyAA6ButtonVyAEGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGGMR);
  v186 = v184 + v185[16];
  *v186 = 0;
  *(v186 + 8) = 1;
  outlined init with copy of TaskPriority?(v183, v184 + v185[20], &_s7SwiftUI15ModifiedContentVyACyACyAA6ButtonVyAA4TextVGAA14_PaddingLayoutVGAA30_EnvironmentKeyWritingModifierVySiSgGGAA06_TraitkL0VyAA0h8PrioritymJ0VGGSgMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6ButtonVyAA4TextVGAA14_PaddingLayoutVGAA30_EnvironmentKeyWritingModifierVySiSgGGAA06_TraitkL0VyAA0h8PrioritymJ0VGGSgMR);
  outlined destroy of TaskPriority?(v176, &_s7SwiftUI15ModifiedContentVyACyACyAA6ButtonVyAA4TextVGAA14_PaddingLayoutVGAA30_EnvironmentKeyWritingModifierVySiSgGGAA06_TraitkL0VyAA0h8PrioritymJ0VGGSgMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6ButtonVyAA4TextVGAA14_PaddingLayoutVGAA30_EnvironmentKeyWritingModifierVySiSgGGAA06_TraitkL0VyAA0h8PrioritymJ0VGGSgMR);
  outlined destroy of TaskPriority?(v181, &_s7SwiftUI19_ConditionalContentVyAA4TextVAA08ModifiedD0VyAA6ButtonVyAEGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGGMd, &_s7SwiftUI19_ConditionalContentVyAA4TextVAA08ModifiedD0VyAA6ButtonVyAEGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGGMR);
  outlined destroy of TaskPriority?(v180, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAA5ImageVAA12_FrameLayoutVGAA11_ClipEffectVyAA6CircleVGGAA08_PaddingH0VGAEyAEyAEy010_MusicKit_aB007ArtworkF0V01_mn9Internal_aB0E18artworkPlaceholderyQrx0mN00O0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_0m4CoreB0015CNSwiftUIAvatarU0VQo_AIGAOGARGGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAA5ImageVAA12_FrameLayoutVGAA11_ClipEffectVyAA6CircleVGGAA08_PaddingH0VGAEyAEyAEy010_MusicKit_aB007ArtworkF0V01_mn9Internal_aB0E18artworkPlaceholderyQrx0mN00O0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_0m4CoreB0015CNSwiftUIAvatarU0VQo_AIGAOGARGGMR);
  outlined destroy of TaskPriority?(v183, &_s7SwiftUI15ModifiedContentVyACyACyAA6ButtonVyAA4TextVGAA14_PaddingLayoutVGAA30_EnvironmentKeyWritingModifierVySiSgGGAA06_TraitkL0VyAA0h8PrioritymJ0VGGSgMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6ButtonVyAA4TextVGAA14_PaddingLayoutVGAA30_EnvironmentKeyWritingModifierVySiSgGGAA06_TraitkL0VyAA0h8PrioritymJ0VGGSgMR);
  outlined destroy of TaskPriority?(v182, &_s7SwiftUI19_ConditionalContentVyAA4TextVAA08ModifiedD0VyAA6ButtonVyAEGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGGMd, &_s7SwiftUI19_ConditionalContentVyAA4TextVAA08ModifiedD0VyAA6ButtonVyAEGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGGMR);
  return outlined destroy of TaskPriority?(v179, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAA5ImageVAA12_FrameLayoutVGAA11_ClipEffectVyAA6CircleVGGAA08_PaddingH0VGAEyAEyAEy010_MusicKit_aB007ArtworkF0V01_mn9Internal_aB0E18artworkPlaceholderyQrx0mN00O0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_0m4CoreB0015CNSwiftUIAvatarU0VQo_AIGAOGARGGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAA5ImageVAA12_FrameLayoutVGAA11_ClipEffectVyAA6CircleVGGAA08_PaddingH0VGAEyAEyAEy010_MusicKit_aB007ArtworkF0V01_mn9Internal_aB0E18artworkPlaceholderyQrx0mN00O0VSg_So6CGSizeVAA5ColorVtcAA4ViewRzlFQOy_0m4CoreB0015CNSwiftUIAvatarU0VQo_AIGAOGARGGMR);
}

uint64_t closure #2 in InlineProfileEditingView.body.getter@<X0>(_OWORD *a1@<X0>, char *a2@<X8>)
{
  v75 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA4TextVGSgMd, &_s7SwiftUI6ButtonVyAA4TextVGSgMR);
  __chkstk_darwin();
  v76 = &v72 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v92 = &v72 - v4;
  type metadata accessor for Locale();
  __chkstk_darwin();
  v5 = type metadata accessor for String.LocalizationValue();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v72 - v9;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA4TextVGMd_0, &_s7SwiftUI6ButtonVyAA4TextVGMR_0);
  v81 = *(v82 - 8);
  __chkstk_darwin();
  v74 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v86 = &v72 - v12;
  __chkstk_darwin();
  v85 = &v72 - v13;
  __chkstk_darwin();
  v80 = &v72 - v14;
  __chkstk_darwin();
  v88 = &v72 - v15;
  __chkstk_darwin();
  v91 = &v72 - v16;
  String.LocalizationValue.init(stringLiteral:)();
  v89 = *(v6 + 16);
  v90 = v5;
  v87 = v6 + 16;
  v89(v8, v10, v5);
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  v17 = static NSBundle.module;
  v18 = static NSBundle.module;
  static Locale.current.getter();
  v83 = v18;
  v19 = String.init(localized:table:bundle:locale:comment:)();
  v84 = v8;
  v21 = v20;
  v22 = *(v6 + 8);
  v23 = v90;
  v22(v10, v90);
  v94 = v19;
  v95 = v21;
  v24 = swift_allocObject();
  v25 = v6 + 8;
  v26 = a1[3];
  v24[3] = a1[2];
  v24[4] = v26;
  v24[5] = a1[4];
  v27 = a1[1];
  v24[1] = *a1;
  v24[2] = v27;
  outlined init with copy of InlineProfileEditingView(a1, v93);
  v28 = _sS2SSysWl_0();
  Button<>.init<A>(_:action:)();
  String.LocalizationValue.init(stringLiteral:)();
  v89(v84, v10, v23);
  static Locale.current.getter();
  v79 = v17;
  v29 = v22;
  v30 = String.init(localized:table:bundle:locale:comment:)();
  v32 = v31;
  v78 = v25;
  v22(v10, v23);
  v94 = v30;
  v95 = v32;
  v33 = swift_allocObject();
  v34 = a1[3];
  v33[3] = a1[2];
  v33[4] = v34;
  v33[5] = a1[4];
  v35 = a1[1];
  v33[1] = *a1;
  v33[2] = v35;
  outlined init with copy of InlineProfileEditingView(a1, v93);
  v36 = v88;
  v77 = v28;
  v37 = v84;
  Button<>.init<A>(_:action:)();
  v38 = 1;
  if ([objc_opt_self() isSourceTypeAvailable:1])
  {
    v39 = v83;
    v73 = v29;
    v40 = v89;
    v41 = v90;
    v42 = [objc_opt_self() currentTraitCollection];
    v43 = [v42 userInterfaceIdiom];

    if (v43 == 6)
    {
      v38 = 1;
      v36 = v88;
      v29 = v73;
    }

    else
    {
      String.LocalizationValue.init(stringLiteral:)();
      v40(v37, v10, v41);
      v44 = v39;
      static Locale.current.getter();
      v45 = String.init(localized:table:bundle:locale:comment:)();
      v47 = v46;
      v29 = v73;
      v73(v10, v41);
      v94 = v45;
      v95 = v47;
      v48 = swift_allocObject();
      v49 = a1[3];
      v48[3] = a1[2];
      v48[4] = v49;
      v48[5] = a1[4];
      v50 = a1[1];
      v48[1] = *a1;
      v48[2] = v50;
      outlined init with copy of InlineProfileEditingView(a1, v93);
      v51 = v80;
      Button<>.init<A>(_:action:)();
      (*(v81 + 32))(v92, v51, v82);
      v38 = 0;
      v36 = v88;
    }
  }

  v52 = v81;
  v53 = v82;
  (*(v81 + 56))(v92, v38, 1, v82);
  String.LocalizationValue.init(stringLiteral:)();
  v54 = v90;
  v89(v37, v10, v90);
  v55 = v83;
  static Locale.current.getter();
  v56 = String.init(localized:table:bundle:locale:comment:)();
  v58 = v57;
  v29(v10, v54);
  v94 = v56;
  v95 = v58;
  v59 = swift_allocObject();
  v60 = a1[3];
  v59[3] = a1[2];
  v59[4] = v60;
  v59[5] = a1[4];
  v61 = a1[1];
  v59[1] = *a1;
  v59[2] = v61;
  outlined init with copy of InlineProfileEditingView(a1, v93);
  v62 = v80;
  Button<>.init<A>(_:action:)();
  v63 = *(v52 + 16);
  v64 = v85;
  v63(v85, v91, v53);
  v65 = v86;
  v63(v86, v36, v53);
  v66 = v76;
  outlined init with copy of TaskPriority?(v92, v76, &_s7SwiftUI6ButtonVyAA4TextVGSgMd, &_s7SwiftUI6ButtonVyAA4TextVGSgMR);
  v67 = v74;
  v63(v74, v62, v53);
  v68 = v75;
  v63(v75, v64, v53);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA4TextVG_A2FSgAFtMd, &_s7SwiftUI6ButtonVyAA4TextVG_A2FSgAFtMR);
  v63(&v68[v69[12]], v65, v53);
  outlined init with copy of TaskPriority?(v66, &v68[v69[16]], &_s7SwiftUI6ButtonVyAA4TextVGSgMd, &_s7SwiftUI6ButtonVyAA4TextVGSgMR);
  v63(&v68[v69[20]], v67, v53);
  v70 = *(v52 + 8);
  v70(v62, v53);
  outlined destroy of TaskPriority?(v92, &_s7SwiftUI6ButtonVyAA4TextVGSgMd, &_s7SwiftUI6ButtonVyAA4TextVGSgMR);
  v70(v88, v53);
  v70(v91, v53);
  v70(v67, v53);
  outlined destroy of TaskPriority?(v66, &_s7SwiftUI6ButtonVyAA4TextVGSgMd, &_s7SwiftUI6ButtonVyAA4TextVGSgMR);
  v70(v86, v53);
  return (v70)(v85, v53);
}

uint64_t closure #2 in closure #2 in InlineProfileEditingView.body.getter(uint64_t a1, char a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy09MusicCoreB011ImagePickerV10SourceTypeOGMd, &_s7SwiftUI5StateVy09MusicCoreB011ImagePickerV10SourceTypeOGMR);
  State.wrappedValue.setter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd, &_s7SwiftUI5StateVySbGMR);
  return State.wrappedValue.setter();
}

uint64_t closure #4 in closure #2 in InlineProfileEditingView.body.getter(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit7ArtworkVSgMd_0, &_s8MusicKit7ArtworkVSgMR_0);
  __chkstk_darwin();
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = &v10 - v4;
  v6 = *(a1 + 8);
  InlineProfileEditingView.Context.image.setter(0);
  v7 = type metadata accessor for Artwork();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  swift_getKeyPath();
  swift_getKeyPath();
  outlined init with copy of TaskPriority?(v5, v3, &_s8MusicKit7ArtworkVSgMd_0, &_s8MusicKit7ArtworkVSgMR_0);

  static Published.subscript.setter();
  outlined destroy of TaskPriority?(v5, &_s8MusicKit7ArtworkVSgMd_0, &_s8MusicKit7ArtworkVSgMR_0);
  v8 = OBJC_IVAR____TtCV11MusicCoreUI24InlineProfileEditingView7Context_hasRemovedImage;
  result = swift_beginAccess();
  *(v6 + v8) = 1;
  return result;
}

uint64_t closure #3 in InlineProfileEditingView.body.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v3 = type metadata accessor for ImagePicker(0);
  __chkstk_darwin();
  v5 = (&v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for InlineProfileEditingView.Context(0);
  lazy protocol witness table accessor for type InlineProfileEditingView.Context and conformance InlineProfileEditingView.Context();
  ObservedObject.projectedValue.getter();
  swift_getKeyPath();
  ObservedObject.Wrapper.subscript.getter();

  v23 = *(&v30 + 1);
  v24 = v30;
  v6 = v31;
  v29 = *(a1 + 4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy09MusicCoreB011ImagePickerV10SourceTypeOGMd, &_s7SwiftUI5StateVy09MusicCoreB011ImagePickerV10SourceTypeOGMR);
  State.projectedValue.getter();
  v7 = v26;
  v8 = v27;
  v9 = v28;
  v29 = *(a1 + 2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd, &_s7SwiftUI5StateVySbGMR);
  State.projectedValue.getter();
  v10 = v26;
  v11 = v27;
  v12 = v28;
  if (one-time initialization token for profileImagePickerProperties != -1)
  {
    swift_once();
  }

  v13 = static UIImagePickerController.profileImagePickerProperties;
  *v5 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMR);
  swift_storeEnumTagMultiPayload();
  v14 = (v5 + v3[7]);
  v15 = v3[9];
  v16 = (v5 + v3[5]);
  *v16 = v24;
  v16[1] = v23;
  v16[2] = v6;
  v17 = v5 + v3[6];
  *v17 = v7;
  *(v17 + 1) = v8;
  v17[16] = v9;
  v18 = v5 + v3[8];
  *v18 = v10;
  *(v18 + 1) = v11;
  v18[16] = v12;
  *v14 = 0;
  v14[1] = 0;
  *(v5 + v15) = v13;

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v19 = v25;
  outlined init with copy of ImagePicker(v5, v25);
  v20 = (v19 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy09MusicCoreB011ImagePickerVAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVy09MusicCoreB011ImagePickerVAA12_FrameLayoutVGMR) + 36));
  v21 = v31;
  *v20 = v30;
  v20[1] = v21;
  v20[2] = v32;
  return outlined destroy of ImagePicker(v5, type metadata accessor for ImagePicker);
}