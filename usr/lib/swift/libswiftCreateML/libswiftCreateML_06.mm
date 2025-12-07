void static MLStyleTransfer.ModelParameters.verifyTextelDensityParameter(value:)(uint64_t a1)
{
  if ((a1 - 64) > 0x3C0)
  {
    _StringGuts.grow(_:)(38);
    0;
    *&v8 = 0xD00000000000001ELL;
    *(&v8 + 1) = "Style image not readable." + 0x8000000000000000;
    v1._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    object = v1._object;
    String.append(_:)(v1);
    object;
    v3._countAndFlagsBits = 8236;
    v3._object = 0xE200000000000000;
    String.append(_:)(v3);
    v4._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    v5 = v4._object;
    String.append(_:)(v4);
    v5;
    v3._countAndFlagsBits = 11869;
    v3._object = 0xE200000000000000;
    String.append(_:)(v3);
    v6 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v6, 0, 0);
    *v7 = v8;
    *(v7 + 16) = 0;
    *(v7 + 32) = 0;
    *(v7 + 48) = 0;
    swift_willThrow();
  }
}

uint64_t MLStyleTransfer.DataSource.getProcessedStyleImageURL(for:destination:)(uint64_t a1, uint64_t a2)
{
  v44 = v3;
  v38 = a2;
  v45 = v2;
  v42 = type metadata accessor for UUID(0);
  v41 = *(v42 - 8);
  v4 = *(v41 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v43 = &v37;
  v47 = type metadata accessor for URL(0);
  v46 = *(v47 - 8);
  v7 = *(v46 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v40 = &v37;
  v10 = alloca(v7);
  v11 = alloca(v7);
  v48 = &v37;
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?) - 8) + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v39 = &v37;
  v15 = type metadata accessor for UTType(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = alloca(v17);
  v19 = alloca(v17);
  static UTType.image.getter();
  v20 = static _FileUtilities.isReadableFile(at:of:)(a1, &v37);
  (*(v16 + 8))(&v37, v15);
  if (v20)
  {
    v21 = v39;
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v38, v39, &demangling cache variable for type metadata for URL?);
    if (__swift_getEnumTagSinglePayload(v21, 1, v47) == 1)
    {
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v21, &demangling cache variable for type metadata for URL?);
      v22 = NSTemporaryDirectory();
      v23 = v22;
      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)(v23);
      v26 = v25;

      URL.init(fileURLWithPath:isDirectory:)(v24, v26, 1);
      v26;
      v27 = v43;
      UUID.init()();
      v28 = UUID.uuidString.getter();
      v30 = v29;
      (*(v41 + 8))(v27, v42);
      v31 = v40;
      URL.appendingPathComponent(_:)(v28, v30);
      v30;
      URL.appendingPathExtension(_:)(6778480, 0xE300000000000000);
      v32 = *(v46 + 8);
      v33 = v47;
      v32(v31, v47);
      return (v32)(v48, v33);
    }

    else
    {
      return (*(v46 + 32))(v45, v21, v47);
    }
  }

  else
  {
    v35 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v35, 0, 0);
    *v36 = 0xD000000000000019;
    *(v36 + 8) = "Scale Fill Rotate 90CCW" + 0x8000000000000000;
    *(v36 + 16) = 0;
    *(v36 + 32) = 0;
    *(v36 + 48) = 0;
    return swift_willThrow();
  }
}

void *MLStyleTransfer.DataSource.processImage(sourceURL:textelDensity:processingOption:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v55 = v4;
  v51 = a4;
  v49 = a3;
  v52 = a2;
  v5 = type metadata accessor for URL(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v48 = v47;
  v53 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for MLFeatureValue, MLFeatureValue_ptr);
  v50[1] = a1;
  (*(v6 + 16))(v47, a1, v5);
  v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(MLFeatureValueImageOption, Any)>);
  inited = swift_initStackObject(v10, v47);
  inited[2] = 1;
  inited[3] = 2;
  inited[4] = MLFeatureValueImageOptionCropAndScale;
  inited[8] = &type metadata for UInt;
  inited[5] = 0;
  v12 = type metadata accessor for MLFeatureValueImageOption(0);
  v13 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type MLFeatureValueImageOption and conformance MLFeatureValueImageOption, type metadata accessor for MLFeatureValueImageOption, &protocol conformance descriptor for MLFeatureValueImageOption);
  MLFeatureValueImageOptionCropAndScale;
  v14 = Dictionary.init(dictionaryLiteral:)(inited, v12, &type metadata for Any + 8, v13);
  v15 = v55;
  v16 = @nonobjc MLFeatureValue.__allocating_init(imageAt:pixelsWide:pixelsHigh:pixelFormatType:options:)(v48, v52, v52, 0x52474241u, v14);
  if (!v15)
  {
    v13 = v16;
    v17 = v51;
    if (AnalyticsReporter.init()())
    {
      goto LABEL_20;
    }

    v55 = v13;
    v52 = 0;
    if (v17)
    {
      v18 = "Unable to process image." + 0x8000000000000000;
      v19 = 0xD000000000000020;
    }

    else
    {
      v19 = VNImageCropAndScaleOption.description.getter(v49);
      v18 = v20;
    }

    AnalyticsReporter.reportParameterSettings(model:parameterName:parameterValue:)(CreateML_ModelType_styleTransfer, __PAIR128__(("rocessing Option" + 0x8000000000000000), 0xD000000000000014), __PAIR128__(v18, v19));
    v21 = v18;
    URL._bridgeToObjectiveC()(v21);
    v23 = v22;
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
    v25 = CGImageSourceCreateWithURL(v23, isa);

    v13 = v55;
    if (!v25)
    {
      goto LABEL_20;
    }

    v26 = Dictionary._bridgeToObjectiveC()().super.isa;
    v27 = CGImageSourceCopyPropertiesAtIndex(v25, 0, v26);

    if (v27)
    {
      v53 = v25;
      v50[0] = 0;
      static Dictionary._conditionallyBridgeFromObjectiveC(_:result:)(v27, v50, &type metadata for String, &type metadata for Swift.AnyObject + 8, &protocol witness table for String);

      v28 = v50[0];
      if (v50[0])
      {
        v29 = static String._unconditionallyBridgeFromObjectiveC(_:)(kCGImagePropertyPixelHeight);
        v31 = v30;
        v32 = specialized Dictionary.subscript.getter(v29, v30, v28);
        v31;
        if (v32)
        {
          v50[0] = v32;
          if (swift_dynamicCast(&quantity, v50, &type metadata for Swift.AnyObject + 8, &type metadata for Float, 6))
          {
            AnalyticsReporter.reportDataMetrics(model:metricName:quantity:)(CreateML_ModelType_styleTransfer, __PAIR128__(("Style Image Width" + 0x8000000000000000), 0xD000000000000012), quantity);
          }
        }

        v33 = static String._unconditionallyBridgeFromObjectiveC(_:)(kCGImagePropertyPixelWidth);
        v35 = v34;
        v36 = specialized Dictionary.subscript.getter(v33, v34, v28);
        v35;
        v28;
        if (v36)
        {
          v50[0] = v36;
          v37 = swift_dynamicCast(&quantity, v50, &type metadata for Swift.AnyObject + 8, &type metadata for Float, 6);
          v13 = v55;
          if (v37)
          {
            AnalyticsReporter.reportDataMetrics(model:metricName:quantity:)(CreateML_ModelType_styleTransfer, __PAIR128__(("Preprocessing Option" + 0x8000000000000000), 0xD000000000000011), quantity);
          }

          goto LABEL_20;
        }

        goto LABEL_19;
      }

      v38 = v53;
    }

    else
    {
      v38 = v25;
    }

LABEL_19:
    v13 = v55;
LABEL_20:
    v39 = [v13 imageBufferValue];
    v40 = v39;
    if (v40)
    {
      v41 = v40;
      v42 = objc_allocWithZone(CIImage);
      v43 = v13;
      v13 = [v42 initWithCVPixelBuffer:v41];
    }

    else
    {
      v45 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
      swift_allocError(&type metadata for MLCreateError, v45, 0, 0);
      *v46 = 0xD000000000000018;
      *(v46 + 8) = " to be a directory URL." + 0x8000000000000000;
      *(v46 + 16) = 0;
      *(v46 + 32) = 0;
      *(v46 + 48) = 0;
      swift_willThrow();
    }
  }

  return v13;
}

NSURL *MLStyleTransfer.DataSource.getProcessedContentImagesDirectory(for:)(uint64_t a1)
{
  v46 = v2;
  v47 = v1;
  v44 = type metadata accessor for UUID(0);
  v43 = *(v44 - 8);
  v3 = *(v43 + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v45 = &v42;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?) - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v9 = type metadata accessor for URL(0);
  v51 = *(v9 - 8);
  v10 = v51[8];
  v11 = alloca(v10);
  v12 = alloca(v10);
  v49 = &v42;
  v13 = alloca(v10);
  v14 = alloca(v10);
  v50 = &v42;
  v15 = alloca(v10);
  v16 = alloca(v10);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(a1, &v42, &demangling cache variable for type metadata for URL?);
  if (__swift_getEnumTagSinglePayload(&v42, 1, v9) == 1)
  {
    v48 = v9;
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v42, &demangling cache variable for type metadata for URL?);
    v17 = NSTemporaryDirectory();
    v18 = v17;
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)(v18);
    v21 = v20;

    URL.init(fileURLWithPath:isDirectory:)(v19, v21, 1);
    v21;
    v22 = v45;
    UUID.init()();
    v23 = UUID.uuidString.getter();
    v25 = v24;
    (*(v43 + 8))(v22, v44);
    URL.appendingPathComponent(_:)(v23, v25);
    v25;
    v26 = objc_opt_self(NSFileManager);
    v27 = [v26 defaultManager];
    v28 = v27;
    URL._bridgeToObjectiveC()(v28);
    v30 = v29;
    v52 = 0;
    LOBYTE(v22) = [(NSURL *)v28 createDirectoryAtURL:v29 withIntermediateDirectories:0 attributes:0 error:&v52];

    v31 = v52;
    if (v22)
    {
      v32 = v51;
      v33 = v51[1];
      v52;
      v34 = v48;
      v33(v50, v48);
      (v32[4])(v47, v49, v34);
    }

    else
    {
      v38 = v52;
      _convertNSErrorToError(_:)(v31);

      swift_willThrow();
      v39 = v51[1];
      v40 = v48;
      v39(v49, v48);
      v39(v50, v40);
    }
  }

  else
  {
    v35 = v51[4];
    v35(&v42, &v42, v9);
    if (URL.hasDirectoryPath.getter())
    {
      v35(v47, &v42, v9);
    }

    else
    {
      v36 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
      swift_allocError(&type metadata for MLCreateError, v36, 0, 0);
      *v37 = 0xD000000000000037;
      *(v37 + 8) = "Style strength out of bounds [" + 0x8000000000000000;
      *(v37 + 16) = 0;
      *(v37 + 32) = 0;
      *(v37 + 48) = 0;
      swift_willThrow();
      (v51[1])(&v42, v9);
    }
  }

  return __stack_chk_guard;
}

Swift::Void __swiftcall __spoils<cf,zf,sf,of,pf,rax,rdx,rcx,rdi,rsi,r8,r9,r10,r11,r12,xmm0,xmm1,xmm2,xmm3,xmm4,xmm5,xmm6,xmm7> MLStyleTransfer.DataSource.saveImagesToDisk(imagesDictionary:)(Swift::OpaquePointer imagesDictionary)
{
  v59 = v1;
  v2 = 0;
  v60 = type metadata accessor for URL(0);
  v61 = *(v60 - 8);
  v3 = *(v61 + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (key: URL, value: CIImage)?) - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v56 = &v48;
  v9 = alloca(v6);
  v10 = alloca(v6);
  v51 = &v48;
  v11 = objc_allocWithZone(CIContext);
  v12 = [v11 init];
  v13 = 1 << *(imagesDictionary._rawValue + 32);
  v62 = v12;
  v14 = ~(-1 << v13);
  if (v13 >= 64)
  {
    v14 = -1;
  }

  v15 = *(imagesDictionary._rawValue + 8) & v14;
  v57 = kCIFormatRGBA16;
  v64 = (v13 + 63) >> 6;
  v53 = v64 - 1;
  rawValue = imagesDictionary._rawValue;

  v52 = &type metadata for Any + 8;
  v58 = &v48;
  while (1)
  {
    if (v15)
    {
      goto LABEL_5;
    }

    v22 = v2 + 1;
    if (__OFADD__(1, v2))
    {
      BUG();
    }

    if (v22 >= v64)
    {
      v23 = v2;
    }

    else
    {
      v15 = rawValue[v22 + 8];
      if (v15)
      {
        ++v2;
LABEL_5:
        v63 = v2;
        _BitScanForward64(&v16, v15);
        v55 = (v15 - 1) & v15;
        v17 = v16 | (v2 << 6);
        v18 = rawValue;
        v19 = v56;
        (*(v61 + 16))(v56, rawValue[6] + v17 * *(v61 + 72), v60);
        v20 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (key: URL, value: CIImage));
        v21 = *(v18[7] + 8 * v17);
        *(v19 + *(v20 + 48)) = v21;
        __swift_storeEnumTagSinglePayload(v19, 0, 1, v20);
        v21;
        v54 = v63;
        goto LABEL_12;
      }

      v23 = (v2 + 2);
      if (v2 + 2 >= v64)
      {
        v23 = (v2 + 1);
      }

      else
      {
        if (rawValue[v22 + 9])
        {
          v2 += 2;
          v15 = rawValue[v22 + 9];
          goto LABEL_5;
        }

        v41 = v2;
        v2 += 3;
        if (v22 + 2 < v64)
        {
          v15 = rawValue[v22 + 10];
          if (v15)
          {
            goto LABEL_5;
          }

          v23 = (v22 + 2);
          if (v22 + 3 < v64)
          {
            v15 = rawValue[v22 + 11];
            if (v15)
            {
              v2 = v22 + 3;
              goto LABEL_5;
            }

            v23 = (v22 + 3);
            if (v22 + 4 < v64)
            {
              v15 = rawValue[v22 + 12];
              if (v15)
              {
                v2 = v22 + 4;
                goto LABEL_5;
              }

              v2 = v22 + 5;
              v23 = (v22 + 4);
              if (v22 + 5 < v64)
              {
                v15 = rawValue[v22 + 13];
                if (v15)
                {
                  goto LABEL_5;
                }

                v42 = v41 + 7;
                while (v42 < v64)
                {
                  v15 = rawValue[v42++ + 8];
                  if (v15)
                  {
                    v2 = v42 - 1;
                    goto LABEL_5;
                  }
                }

                v23 = v53;
              }
            }
          }
        }
      }
    }

    v24 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (key: URL, value: CIImage));
    v19 = v56;
    __swift_storeEnumTagSinglePayload(v56, 1, 1, v24);
    v55 = 0;
    v54 = v23;
LABEL_12:
    v25 = v19;
    v26 = v51;
    outlined init with take of (key: URL, value: CIImage)?(v25, v51);
    v27 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (key: URL, value: CIImage));
    if (__swift_getEnumTagSinglePayload(v26, 1, v27) == 1)
    {

      goto LABEL_39;
    }

    v28 = *(v26 + *(v27 + 48));
    v29 = v58;
    (*(v61 + 32))(v58, v26, v60);
    v30 = [v28 colorSpace];
    v31 = v30;
    v63 = v31;
    if (!v31)
    {
      v43 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
      v44 = swift_allocError(&type metadata for MLCreateError, v43, 0, 0);
      *v45 = 0xD00000000000001ELL;
      *(v45 + 8) = "alidation image." + 0x8000000000000000;
      *(v45 + 16) = 0;
      *(v45 + 32) = 0;
      *(v45 + 48) = 2;
      v59 = v44;
      swift_willThrow();

      goto LABEL_38;
    }

    URL._bridgeToObjectiveC()(v31);
    v50 = v32;
    v33 = type metadata accessor for CIImageRepresentationOption(0);
    v34 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type CIImageRepresentationOption and conformance CIImageRepresentationOption, type metadata accessor for CIImageRepresentationOption, &protocol conformance descriptor for CIImageRepresentationOption);
    v49 = v28;
    v35 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, v33, v52, v34);
    v36 = v49;
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
    v35;
    v66 = 0;
    v38 = v50;
    v39 = [v62 writePNGRepresentationOfImage:v36 toURL:v50 format:v57 colorSpace:v63 options:isa error:?];

    v40 = v66;
    if (!v39)
    {
      break;
    }

    v66;
    (*(v61 + 8))(v58, v60);
    (objc_release)(v36);
    (objc_release)(v63);
    v2 = v54;
    v15 = v55;
  }

  v46 = v66;
  v47 = _convertNSErrorToError(_:)(v40);

  v59 = v47;
  swift_willThrow();

  v29 = v58;
LABEL_38:
  (*(v61 + 8))(v29, v60);
LABEL_39:
}

id @nonobjc MLFeatureValue.__allocating_init(imageAt:pixelsWide:pixelsHigh:pixelFormatType:options:)(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5)
{
  URL._bridgeToObjectiveC()(__stack_chk_guard);
  v16 = v6;
  if (a5)
  {
    type metadata accessor for MLFeatureValueImageOption(0);
    lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type MLFeatureValueImageOption and conformance MLFeatureValueImageOption, type metadata accessor for MLFeatureValueImageOption, &protocol conformance descriptor for MLFeatureValueImageOption);
    v7.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
    a5;
  }

  else
  {
    v7.super.isa = 0;
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = [ObjCClassFromMetadata featureValueWithImageAtURL:v16 pixelsWide:a2 pixelsHigh:a3 pixelFormatType:a4 options:v7.super.isa error:?];
  v10 = v9;

  if (v10)
  {
    v11 = type metadata accessor for URL(0);
    v12 = *(*(v11 - 8) + 8);
    0;
    v12(a1, v11);
  }

  else
  {
    v13 = 0;
    _convertNSErrorToError(_:)(0);

    swift_willThrow();
    v14 = type metadata accessor for URL(0);
    (*(*(v14 - 8) + 8))(a1, v14);
  }

  return v10;
}

uint64_t VNImageCropAndScaleOption.description.getter(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      return 0x43207265746E6543;
    case 258:
      return 0xD000000000000017;
    case 2:
      return 0x694620656C616353;
    case 257:
      return 0xD000000000000016;
    case 1:
      return 0x694620656C616353;
    default:
      return 0x6669636570736E55;
  }
}

void *MLStyleTransfer.DataSource.getStyleImageAndContentTable()(_BYTE *a1, void *a2)
{
  v24 = a2;
  v25 = a1;
  v22 = type metadata accessor for URL(0);
  v4 = *(v22 - 8);
  v5 = *(v4 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v23 = v21;
  v8 = alloca(v5);
  v9 = alloca(v5);
  v10 = *(*(type metadata accessor for MLStyleTransfer.DataSource(0) - 8) + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  outlined init with copy of MLTrainingSessionParameters(v3, v21, type metadata accessor for MLStyleTransfer.DataSource);
  v13 = &v21[*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (styleImage: URL, contentDirectory: URL, processingOption: VNImageCropAndScaleOption?)) + 48)];
  v29 = v4;
  v14 = *(v4 + 32);
  v28 = v21;
  v15 = v22;
  v14(v21, v21, v22);
  v16 = v13;
  v17 = v23;
  v14(v23, v16, v15);
  static MLStyleTransfer.generateTrainingTable(directoryURL:)(v17);
  if (v2)
  {
    v18 = *(v29 + 8);
    v18(v17, v15);
    return (v18)(v28, v15);
  }

  else
  {
    (*(v29 + 8))(v17, v15);
    v20 = v26;
    LOBYTE(v29) = v27;
    v14(v25, v28, v15);
    result = v24;
    *v24 = v20;
    *(result + 8) = v29;
  }

  return result;
}

uint64_t static MLStyleTransfer.generateTrainingTable(directoryURL:)(uint64_t a1)
{
  v15 = v2;
  v14 = v1;
  v3 = type metadata accessor for UTType(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  static UTType.image.getter(0);
  v8 = v15;
  v9 = static _FileUtilities.readableFiles(at:type:)(a1, &v14);
  if (v8)
  {
    return (*(v4 + 8))(&v14, v3);
  }

  v15 = v9;
  (*(v4 + 8))(&v14, v3);
  v11 = v15;
  if (*(v15 + 16))
  {
    static MLStyleTransfer.generateTrainingTable(urls:)(v15);
    return v11;
  }

  else
  {
    v15;
    v12 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v12, 0, 0);
    *v13 = 0xD00000000000003CLL;
    *(v13 + 8) = "training_content_loss" + 0x8000000000000000;
    *(v13 + 16) = 0;
    *(v13 + 32) = 0;
    *(v13 + 48) = 0;
    return swift_willThrow();
  }
}

char MLStyleTransfer.ModelParameters.algorithm.setter(char *a1)
{
  result = *a1;
  *v1 = *a1;
  return result;
}

uint64_t MLStyleTransfer.ModelParameters.validation.getter()
{
  v2 = v0;
  v3 = type metadata accessor for MLStyleTransfer.ModelParameters(0);
  return outlined init with copy of MLTrainingSessionParameters(v1 + *(v3 + 20), v2, type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData);
}

uint64_t MLStyleTransfer.ModelParameters.maxIterations.setter(uint64_t a1)
{
  result = *(type metadata accessor for MLStyleTransfer.ModelParameters(0) + 28);
  *(v1 + result) = a1;
  return result;
}

uint64_t MLStyleTransfer.ModelParameters.textelDensity.setter(uint64_t a1)
{
  result = *(type metadata accessor for MLStyleTransfer.ModelParameters(0) + 32);
  *(v1 + result) = a1;
  return result;
}

uint64_t MLStyleTransfer.ModelParameters.styleStrength.setter(uint64_t a1)
{
  result = *(type metadata accessor for MLStyleTransfer.ModelParameters(0) + 36);
  *(v1 + result) = a1;
  return result;
}

uint64_t MLStyleTransfer.ModelParameters.ValidationData.preprocessValidationData(to:)(uint64_t a1)
{
  v63 = v1;
  v62 = v2;
  v55 = a1;
  v57 = type metadata accessor for UUID(0);
  v56 = *(v57 - 8);
  v3 = *(v56 + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v58 = &v53;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?) - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v64 = &v53;
  v53 = type metadata accessor for UTType(0);
  v68 = *(v53 - 8);
  v9 = *(v68 + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v54 = &v53;
  v12 = *(*(type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData(0) - 8) + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v15 = type metadata accessor for URL(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = alloca(v17);
  v19 = alloca(v17);
  v61 = &v53;
  v20 = alloca(v17);
  v21 = alloca(v17);
  v59 = &v53;
  v22 = alloca(v17);
  v23 = alloca(v17);
  v67 = &v53;
  v24 = alloca(v17);
  v25 = alloca(v17);
  outlined init with copy of MLTrainingSessionParameters(v62, &v53, type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData);
  v65 = v15;
  if (__swift_getEnumTagSinglePayload(&v53, 1, v15) == 1)
  {
    return outlined destroy of MLActivityClassifier.ModelParameters(&v53, type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData);
  }

  v27 = v16;
  v60 = *(v16 + 32);
  v60(&v53, &v53, v65);
  v28 = v54;
  static UTType.image.getter(&v53);
  v66 = &v53;
  v29 = static _FileUtilities.isReadableFile(at:of:)(&v53, v28);
  (*(v68 + 8))(v28, v53);
  if (v29)
  {
    v68 = v27;
    v30 = v64;
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v55, v64, &demangling cache variable for type metadata for URL?);
    v31 = v65;
    if (__swift_getEnumTagSinglePayload(v30, 1, v65) == 1)
    {
      v32 = NSTemporaryDirectory();
      v33 = v32;
      v34 = static String._unconditionallyBridgeFromObjectiveC(_:)(v33);
      v36 = v35;

      URL.init(fileURLWithPath:isDirectory:)(v34, v36, 1);
      v36;
      v37 = v58;
      UUID.init()();
      v38 = UUID.uuidString.getter();
      v40 = v39;
      (*(v56 + 8))(v37, v57);
      v41 = v59;
      v42 = v38;
      v31 = v65;
      v43 = v61;
      URL.appendingPathComponent(_:)(v42, v40);
      v40;
      v44 = *(v68 + 8);
      v44(v43, v31);
      URL.appendingPathExtension(_:)(6778480, 0xE300000000000000);
      v44(v41, v31);
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v64, 1, v31);
      v46 = v63;
      v47 = v66;
      if (EnumTagSinglePayload != 1)
      {
        outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v64, &demangling cache variable for type metadata for URL?);
      }
    }

    else
    {
      v60(v67, v30, v31);
      v46 = v63;
      v47 = v66;
    }

    v50 = MLStyleTransfer.ModelParameters.ValidationData.processImage(sourceURL:pixels:processingOption:)(v47, 512, 2);
    if (!v46)
    {
      v51 = v50;
      MLStyleTransfer.ModelParameters.ValidationData.saveImage(for:at:)(v50);
    }

    v52 = *(v68 + 8);
    v52(v67, v31);
    return (v52)(v66, v31);
  }

  else
  {
    v48 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v48, 0, 0);
    *v49 = 0xD000000000000020;
    *(v49 + 8) = "fied content image directory" + 0x8000000000000000;
    *(v49 + 16) = 0;
    *(v49 + 32) = 0;
    *(v49 + 48) = 0;
    swift_willThrow();
    return (*(v27 + 8))(v66, v65);
  }
}

uint64_t MLStyleTransfer.ModelParameters.ValidationData.processImage(sourceURL:pixels:processingOption:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = v3;
  v30 = a3;
  v27 = a2;
  v4 = type metadata accessor for URL(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v29 = v25;
  v28 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for MLFeatureValue, MLFeatureValue_ptr);
  (*(v5 + 16))(v25, a1, v4);
  v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(MLFeatureValueImageOption, Any)>);
  inited = swift_initStackObject(v9, v25);
  inited[2] = 1;
  inited[3] = 2;
  inited[4] = MLFeatureValueImageOptionCropAndScale;
  inited[8] = &type metadata for UInt;
  inited[5] = v30;
  v11 = type metadata accessor for MLFeatureValueImageOption(0);
  v12 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type MLFeatureValueImageOption and conformance MLFeatureValueImageOption, type metadata accessor for MLFeatureValueImageOption, &protocol conformance descriptor for MLFeatureValueImageOption);
  MLFeatureValueImageOptionCropAndScale;
  v13 = Dictionary.init(dictionaryLiteral:)(inited, v11, &type metadata for Any + 8, v12);
  v14 = v28;
  v15 = v26;
  v16 = @nonobjc MLFeatureValue.__allocating_init(imageAt:pixelsWide:pixelsHigh:pixelFormatType:options:)(v29, v27, v27, 0x52474241u, v13);
  if (!v15)
  {
    v17 = v16;
    v18 = [v16 imageBufferValue];
    v19 = v18;
    if (v19)
    {
      v20 = v19;
      v21 = objc_allocWithZone(CIImage);
      v14 = [v21 initWithCVPixelBuffer:v20];
    }

    else
    {
      v23 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
      swift_allocError(&type metadata for MLCreateError, v23, 0, 0);
      *v24 = 0xD000000000000023;
      *(v24 + 8) = "Failed to write image to disk." + 0x8000000000000000;
      *(v24 + 16) = 0;
      *(v24 + 32) = 0;
      *(v24 + 48) = 0;
      swift_willThrow();
    }
  }

  return v14;
}

NSURL *MLStyleTransfer.ModelParameters.ValidationData.saveImage(for:at:)(id a1)
{
  v1 = objc_allocWithZone(CIContext);
  v2 = [v1 init];
  v3 = [a1 colorSpace];
  v16 = v3;
  if (v16)
  {
    v15 = kCIFormatRGBA16;
    URL._bridgeToObjectiveC()(kCIFormatRGBA16);
    v14 = v4;
    v5 = type metadata accessor for CIImageRepresentationOption(0);
    v6 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type CIImageRepresentationOption and conformance CIImageRepresentationOption, type metadata accessor for CIImageRepresentationOption, &protocol conformance descriptor for CIImageRepresentationOption);
    v17 = v2;
    v7 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, v5, &type metadata for Any + 8, v6);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
    v7;
    v9 = [v2 writePNGRepresentationOfImage:a1 toURL:v14 format:v15 colorSpace:v16 options:isa error:?];

    if (v9)
    {
      0;
    }

    else
    {
      v12 = 0;
      _convertNSErrorToError(_:)(0);

      swift_willThrow();
    }
  }

  else
  {
    v10 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v10, 0, 0);
    *v11 = 0xD00000000000001ELL;
    *(v11 + 8) = "alidation image." + 0x8000000000000000;
    *(v11 + 16) = 0;
    *(v11 + 32) = 0;
    *(v11 + 48) = 2;
    swift_willThrow();
  }

  return __stack_chk_guard;
}

CreateML::MLStyleTransfer::ModelParameters::ModelAlgorithmType_optional __swiftcall MLStyleTransfer.ModelParameters.ModelAlgorithmType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of MLStyleTransfer.ModelParameters.ModelAlgorithmType.init(rawValue:), rawValue);
  rawValue._object;
  result.value = CreateML_MLStyleTransfer_ModelParameters_ModelAlgorithmType_cnn;
  v5 = 2 - (v3 == 1);
  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t MLStyleTransfer.ModelParameters.ModelAlgorithmType.rawValue.getter()
{
  result = 7237219;
  if (*v0)
  {
    return 0x6574694C6E6E63;
  }

  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance MLStyleTransfer.ModelParameters.ModelAlgorithmType(uint64_t a1)
{
  v2 = v1;
  result = MLStyleTransfer.ModelParameters.ModelAlgorithmType.rawValue.getter();
  *v2 = result;
  v2[1] = v4;
  return result;
}

void static MLStyleTransfer.ModelParameters.verifyStyleStrengthParameter(value:)(uint64_t a1)
{
  if ((a1 - 1) > 9)
  {
    _StringGuts.grow(_:)(38);
    0;
    *&v8 = 0xD00000000000001ELL;
    *(&v8 + 1) = "s validation image." + 0x8000000000000000;
    v1._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    object = v1._object;
    String.append(_:)(v1);
    object;
    v3._countAndFlagsBits = 8236;
    v3._object = 0xE200000000000000;
    String.append(_:)(v3);
    v4._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    v5 = v4._object;
    String.append(_:)(v4);
    v5;
    v3._countAndFlagsBits = 11869;
    v3._object = 0xE200000000000000;
    String.append(_:)(v3);
    v6 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v6, 0, 0);
    *v7 = v8;
    *(v7 + 16) = 0;
    *(v7 + 32) = 0;
    *(v7 + 48) = 0;
    swift_willThrow();
  }
}

uint64_t *static MLStyleTransfer.generateTrainingTable(urls:)(uint64_t a1)
{
  v3 = v1;
  v31 = type metadata accessor for URL(0);
  v4 = *(v31 - 8);
  v5 = *(v4 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v32 = v27;
  v8 = *(a1 + 16);
  v37 = v3;
  if (v8)
  {
    v38 = _swiftEmptyArrayStorage;
    v34 = v8;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8, 0);
    v9 = v38;
    v10 = ((*(v4 + 80) + 32) & ~*(v4 + 80)) + a1;
    v35 = *(v4 + 16);
    v33 = v4;
    v36 = *(v4 + 72);
    do
    {
      v11 = v32;
      v12 = v32;
      v13 = v31;
      v35(v32, v10, v31);
      v29 = URL.path.getter(v12);
      v30 = v14;
      (*(v33 + 8))(v11, v13);
      v38 = v9;
      v15 = v9[2];
      v16 = v15 + 1;
      if (v9[3] >> 1 <= v15)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v9[3] >= 2uLL, v15 + 1, 1);
        v16 = v15 + 1;
        v9 = v38;
      }

      v9[2] = v16;
      v17 = 2 * v15;
      v9[v17 + 4] = v29;
      v9[v17 + 5] = v30;
      v10 += v36;
      --v34;
    }

    while (v34);
  }

  else
  {
    v9 = _swiftEmptyArrayStorage;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, MLUntypedColumn)>);
  inited = swift_initStackObject(v18, v27);
  *(inited + 16) = 1;
  *(inited + 24) = 2;
  *(inited + 32) = 0x55746E65746E6F63;
  *(inited + 40) = 0xEB00000000734C52;
  v38 = v9;
  v20 = alloca(24);
  v21 = alloca(32);
  v28 = &v38;
  *(inited + 48) = _ss6ResultOsRi_zrlE8catchingAByxq_Gxyq_YKXE_tcfC8CreateML14_UntypedColumnC_s5Error_pTt1g5(partial apply for specialized closure #1 in MLUntypedColumn.init<A>(_:));
  *(inited + 56) = v22 & 1;
  v38;
  v23 = Dictionary.init(dictionaryLiteral:)(inited, &type metadata for String, &type metadata for MLUntypedColumn, &protocol witness table for String);
  result = _s8CreateML11MLDataTableV20uniqueKeysWithValuesACx_tKcSTRzSS3key_AA15MLUntypedColumnV5valuet7ElementRtzlufCSDySSAGG_Tt1g5(v23);
  if (!v2)
  {
    result = v38;
    v25 = v39;
    v26 = v37;
    *v37 = v38;
    *(v26 + 8) = v25;
  }

  return result;
}

uint64_t CMLModel.contentLoss.getter(double a1)
{
  empty = tc_v1_parameters_create_empty(0);
  if (!empty)
  {
    BUG();
  }

  v2 = empty;
  v3 = type metadata accessor for CMLParameters();
  inited = swift_initStackObject(v3, v8);
  *(inited + 16) = v2;
  type metadata accessor for CMLFeatureValue();
  v5 = CMLFeatureValue.__allocating_init(_:)(0xD000000000000015, ("training_style_loss" + 0x8000000000000000));
  CMLParameters.add(key:featureValue:)(35, v5);

  CMLModel.callFunction(name:arguments:)(16, inited);
  v6 = CMLVariant.featureValue()();
  specialized handling<A, B>(_:_:)(*(v6 + 16));
  v9 = a1;

  swift_setDeallocating(inited);
  tc_v1_release(*(inited + 16));
  return *&v9;
}

uint64_t CMLModel.styleLoss.getter(double a1)
{
  empty = tc_v1_parameters_create_empty(0);
  if (!empty)
  {
    BUG();
  }

  v2 = empty;
  v3 = type metadata accessor for CMLParameters();
  inited = swift_initStackObject(v3, v8);
  *(inited + 16) = v2;
  type metadata accessor for CMLFeatureValue();
  v5 = CMLFeatureValue.__allocating_init(_:)(0xD000000000000013, ("Style strength: " + 0x8000000000000000));
  CMLParameters.add(key:featureValue:)(35, v5);

  CMLModel.callFunction(name:arguments:)(16, inited);
  v6 = CMLVariant.featureValue()();
  specialized handling<A, B>(_:_:)(*(v6 + 16));
  v9 = a1;

  swift_setDeallocating(inited);
  tc_v1_release(*(inited + 16));
  return *&v9;
}

unint64_t MLStyleTransfer.ModelParameters.ModelAlgorithmType.description.getter()
{
  result = 0xD00000000000004FLL;
  if (!*v0)
  {
    return 0xD000000000000046;
  }

  return result;
}

unint64_t *MLStyleTransfer.ModelParameters.ModelAlgorithmType.playgroundDescription.getter()
{
  v2 = 0xD00000000000004FLL;
  if (!*v1)
  {
    v2 = 0xD000000000000046;
  }

  v3 = "volutional neural network lite)";
  if (*v1)
  {
    v3 = "parallelTreeCount";
  }

  result[3] = &type metadata for String;
  *result = v2;
  result[1] = v3 | 0x8000000000000000;
  return result;
}

uint64_t MLStyleTransfer.ModelParameters.description.getter()
{
  v1._countAndFlagsBits = 0xD000000000000046;
  if (*v0)
  {
    v1._countAndFlagsBits = 0xD00000000000004FLL;
  }

  v2 = "volutional neural network lite)";
  if (*v0)
  {
    v2 = "parallelTreeCount";
  }

  v1._object = (v2 | 0x8000000000000000);
  String.append(_:)(v1);
  v2;
  v3._countAndFlagsBits = 10;
  v3._object = 0xE100000000000000;
  String.append(_:)(v3);
  v3._countAndFlagsBits = 0x687469726F676C41;
  v3._object = 0xEB00000000203A6DLL;
  String.append(_:)(v3);
  109;
  _StringGuts.grow(_:)(19);
  0;
  type metadata accessor for MLStyleTransfer.ModelParameters(0);
  v4 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
  v6 = v5;
  v3._countAndFlagsBits = v4;
  v3._object = v5;
  String.append(_:)(v3);
  v6;
  v3._countAndFlagsBits = 10;
  v3._object = 0xE100000000000000;
  String.append(_:)(v3);
  v3._countAndFlagsBits = 0xD000000000000010;
  v3._object = "tional neural network)" + 0x8000000000000000;
  String.append(_:)(v3);
  ("tional neural network)" + 0x8000000000000000);
  _StringGuts.grow(_:)(19);
  0;
  v7 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
  v9 = v8;
  v3._countAndFlagsBits = v7;
  v3._object = v8;
  String.append(_:)(v3);
  v9;
  v3._countAndFlagsBits = 10;
  v3._object = 0xE100000000000000;
  String.append(_:)(v3);
  v3._countAndFlagsBits = 0xD000000000000010;
  v3._object = "Max iterations: " + 0x8000000000000000;
  String.append(_:)(v3);
  ("Max iterations: " + 0x8000000000000000);
  _StringGuts.grow(_:)(19);
  0;
  v10 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
  v12 = v11;
  v3._countAndFlagsBits = v10;
  v3._object = v11;
  String.append(_:)(v3);
  v12;
  v3._countAndFlagsBits = 10;
  v3._object = 0xE100000000000000;
  String.append(_:)(v3);
  v3._countAndFlagsBits = 0xD000000000000010;
  v3._object = "Textel density: " + 0x8000000000000000;
  String.append(_:)(v3);
  ("Textel density: " + 0x8000000000000000);
  return 0;
}

uint64_t MLStyleTransfer.ModelParameters.playgroundDescription.getter(uint64_t a1)
{
  v2 = v1;
  result = MLStyleTransfer.ModelParameters.description.getter();
  v2[3] = &type metadata for String;
  *v2 = result;
  v2[1] = v4;
  return result;
}

unint64_t MLStyleTransfer.debugDescription.getter()
{
  v1 = ModelType.description.getter(*(*v0 + 32));
  v3 = v2;
  type metadata accessor for MLStyleTransfer(0);
  v4 = MLStyleTransfer.ModelParameters.description.getter();
  v6 = v5;

  v7._countAndFlagsBits = 0x656D617261500A0ALL;
  v7._object = 0xED00000A73726574;
  String.append(_:)(v7);

  v7._countAndFlagsBits = v4;
  v7._object = v6;
  String.append(_:)(v7);
  v3;
  v6;
  v3;
  return v1;
}

NSAttributedString MLStyleTransfer.playgroundDescription.getter()
{
  v1 = v0;
  v2 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSAttributedString, NSAttributedString_ptr);
  v3._countAndFlagsBits = MLStyleTransfer.debugDescription.getter();
  v3._object = v4;
  result.super.isa = NSAttributedString.__allocating_init(string:)(v3).super.isa;
  v1[3].super.isa = v2;
  v1->super.isa = result.super.isa;
  return result;
}

uint64_t static MLStyleTransfer.ModelParameters.ValidationData.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v22 = a2;
  v2 = a1;
  v3 = type metadata accessor for URL(0);
  v25 = *(v3 - 8);
  v4 = *(v25 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v23 = v21;
  v7 = *(*(type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData(0) - 8) + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v24 = v21;
  v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (MLStyleTransfer.ModelParameters.ValidationData, MLStyleTransfer.ModelParameters.ValidationData));
  v11 = *(*(v10 - 8) + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v14 = &v21[*(v10 + 48)];
  outlined init with copy of MLTrainingSessionParameters(a1, v21, type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData);
  outlined init with copy of MLTrainingSessionParameters(v22, v14, type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData);
  if (__swift_getEnumTagSinglePayload(v21, 1, v3) != 1)
  {
    v15 = v24;
    outlined init with copy of MLTrainingSessionParameters(v21, v24, type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData);
    if (__swift_getEnumTagSinglePayload(v14, 1, v3) != 1)
    {
      v16 = v23;
      v17 = v14;
      v18 = v25;
      (*(v25 + 32))(v23, v17, v3);
      v2 = static URL.== infix(_:_:)(v15, v16);
      v19 = *(v18 + 8);
      v19(v16, v3);
      v19(v24, v3);
      outlined destroy of MLActivityClassifier.ModelParameters(v21, type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData);
      return v2;
    }

    (*(v25 + 8))(v15, v3);
    goto LABEL_6;
  }

  if (__swift_getEnumTagSinglePayload(v14, 1, v3) != 1)
  {
LABEL_6:
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v21, &demangling cache variable for type metadata for (MLStyleTransfer.ModelParameters.ValidationData, MLStyleTransfer.ModelParameters.ValidationData));
    return 0;
  }

  outlined destroy of MLActivityClassifier.ModelParameters(v21, type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData);
  LOBYTE(v2) = 1;
  return v2;
}

id @nonobjc VNImageRequestHandler.init(cgImage:options:)(id a1, uint64_t a2)
{
  type metadata accessor for VNImageOption(0);
  lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type VNImageOption and conformance VNImageOption, type metadata accessor for VNImageOption, &protocol conformance descriptor for VNImageOption);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  a2;
  v4 = [v2 initWithCGImage:a1 options:isa];

  return v4;
}

_OWORD *specialized _NativeDictionary.setValue(_:forKey:isUnique:)(__int128 *a1, uint64_t a2, uint64_t a3, Swift::Bool a4)
{
  v5 = v4;
  v6 = *v4;
  v8 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v9 = (v7 & 1) == 0;
  v10 = __OFADD__(v6[2], v9);
  v11 = v6[2] + v9;
  if (v10)
  {
    BUG();
  }

  v12 = v7;
  __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<String, Any>);
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(a4, v11))
  {
    v8 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    LOBYTE(v14) = v14 & 1;
    if ((v12 & 1) != v14)
    {
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for String, a3, v14, v13);
      BUG();
    }
  }

  v15 = *v5;
  if (v12)
  {
    v16 = (v15[7] + 32 * v8);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    return outlined init with take of Any(a1, v16);
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v8, a2, a3, a1, v15);
  }
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, Swift::Bool a4)
{
  v5 = v4;
  v7 = *v4;
  v8 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v10 = (v9 & 1) == 0;
  v11 = __OFADD__(v7[2], v10);
  v12 = v7[2] + v10;
  if (v11)
  {
    BUG();
  }

  v13 = v9;
  v14 = v8;
  __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<String, Int>);
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(a4, v12))
  {
    v16 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    LOBYTE(v17) = v17 & 1;
    if ((v13 & 1) != v17)
    {
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for String, a3, v17, v15);
      BUG();
    }
  }

  else
  {
    v16 = v14;
  }

  v18 = *v5;
  if (v13)
  {
    result = v18[7];
    *(result + 8 * v16) = a1;
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v16, a2, a3, a1, v18);
  }

  return result;
}

{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, a4, &demangling cache variable for type metadata for _NativeDictionary<String, MetricsKey>, &type metadata accessor for MetricsKey);
}

{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, a4, &demangling cache variable for type metadata for _NativeDictionary<String, Tensor>, &type metadata accessor for Tensor);
}

{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, a4, &demangling cache variable for type metadata for _NativeDictionary<String, MLProgram.Block>, &type metadata accessor for MLProgram.Block);
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, _BOOL8 a4)
{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, a4, &demangling cache variable for type metadata for _NativeDictionary<String, CSVType>, &type metadata accessor for CSVType);
}

{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, a4, &demangling cache variable for type metadata for _NativeDictionary<String, JSONType>, &type metadata accessor for JSONType);
}

{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, a4, &demangling cache variable for type metadata for _NativeDictionary<String, [Double]>);
}

{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, a4, &demangling cache variable for type metadata for _NativeDictionary<String, [URL]>);
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, Swift::Bool a4, uint64_t *a5, uint64_t (*a6)(void))
{
  v7 = v6;
  v8 = *v6;
  v10 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v8[2], v11);
  v13 = v8[2] + v11;
  if (v12)
  {
    BUG();
  }

  v14 = v9;
  __swift_instantiateConcreteTypeFromMangledName(a5);
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(a4, v13))
  {
    v10 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    LOBYTE(v16) = v16 & 1;
    if ((v14 & 1) != v16)
    {
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for String, a3, v16, v15);
      BUG();
    }
  }

  v17 = *v7;
  if (v14)
  {
    v18 = v17[7];
    v19 = a6(0);
    return (*(*(v19 - 8) + 40))(v18 + *(*(v19 - 8) + 72) * v10, a1, v19);
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v10, a2, a3, a1, v17, a6);
  }
}

char specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, Swift::Bool a5)
{
  v6 = v5;
  v7 = *v5;
  v9 = specialized __RawDictionaryStorage.find<A>(_:)(a3, a4);
  v10 = (v8 & 1) == 0;
  v11 = __OFADD__(v7[2], v10);
  v12 = v7[2] + v10;
  if (v11)
  {
    BUG();
  }

  v13 = v8;
  __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<String, MLUntypedColumn>);
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(a5, v12))
  {
    v9 = specialized __RawDictionaryStorage.find<A>(_:)(a3, a4);
    LOBYTE(v15) = v15 & 1;
    if ((v13 & 1) != v15)
    {
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for String, a4, v15, v14);
      BUG();
    }
  }

  v16 = *v6;
  if (v13)
  {
    v17 = v16[7];
    v18 = 16 * v9;
    outlined consume of Result<_DataTable, Error>(*(v17 + v18), *(v17 + v18 + 8));
    *(v17 + v18) = a1;
    result = a2 & 1;
    *(v17 + v18 + 8) = a2 & 1;
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v9, a3, a4, a1, a2 & 1, v16);
  }

  return result;
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, Swift::Bool a5)
{
  v6 = v5;
  v7 = *v5;
  v9 = specialized __RawDictionaryStorage.find<A>(_:)(a3, a4);
  v10 = (v8 & 1) == 0;
  v11 = __OFADD__(v7[2], v10);
  v12 = v7[2] + v10;
  if (v11)
  {
    BUG();
  }

  v13 = v8;
  __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<String, String>);
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(a5, v12))
  {
    v9 = specialized __RawDictionaryStorage.find<A>(_:)(a3, a4);
    LOBYTE(v15) = v15 & 1;
    if ((v13 & 1) != v15)
    {
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for String, a4, v15, v14);
      BUG();
    }
  }

  v16 = *v6;
  if (v13)
  {
    v17 = v16[7];
    v18 = 16 * v9;
    *(v17 + v18 + 8);
    *(v17 + v18) = a1;
    result = a2;
    *(v17 + v18 + 8) = a2;
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v9, a3, a4, a1, a2, v16);
  }

  return result;
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, _BOOL4 a2, double a3)
{
  v4 = v3;
  v26 = a2;
  v23 = a3;
  v25 = type metadata accessor for MetricsKey(0);
  v21 = *(v25 - 8);
  v5 = *(v21 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v22 = &v20;
  v8 = *v3;
  v24 = a1;
  v10 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v8[2], v11);
  v13 = v8[2] + v11;
  if (v12)
  {
    BUG();
  }

  v14 = v9;
  __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<MetricsKey, Double>);
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v26, v13))
  {
    v10 = specialized __RawDictionaryStorage.find<A>(_:)(v24);
    LOBYTE(v16) = v16 & 1;
    if ((v14 & 1) != v16)
    {
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(v25, v13, v16, v15);
      BUG();
    }
  }

  v17 = *v4;
  if (v14)
  {
    result = v17[7];
    *(result + 8 * v10) = v23;
  }

  else
  {
    v19 = v22;
    (*(v21 + 16))(v22, v24, v25);
    return specialized _NativeDictionary._insert(at:key:value:)(v10, v19, v17, v23);
  }

  return result;
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(char a1, Swift::Bool a2, double a3)
{
  v4 = v3;
  v6 = *v3;
  v7 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  v9 = (v8 & 1) == 0;
  v10 = __OFADD__(v6[2], v9);
  v11 = v6[2] + v9;
  if (v10)
  {
    BUG();
  }

  v12 = v8;
  v13 = v7;
  __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<MLProgress.Metric, Double>);
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(a2, v11))
  {
    v15 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
    LOBYTE(v16) = v16 & 1;
    if ((v12 & 1) != v16)
    {
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for MLProgress.Metric, v11, v16, v14);
      BUG();
    }
  }

  else
  {
    v15 = v13;
  }

  v17 = *v4;
  if ((v12 & 1) == 0)
  {
    return specialized _NativeDictionary._insert(at:key:value:)(v15, a1, v17, a3);
  }

  result = v17[7];
  *(result + 8 * v15) = a3;
  return result;
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, Swift::Bool a4, uint64_t *a5)
{
  v7 = v5;
  v8 = *v5;
  v20 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v10 = (v9 & 1) == 0;
  v11 = __OFADD__(v8[2], v10);
  v12 = v8[2] + v10;
  if (v11)
  {
    BUG();
  }

  v13 = v9;
  __swift_instantiateConcreteTypeFromMangledName(a5);
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(a4, v12))
  {
    v15 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    LOBYTE(v16) = v16 & 1;
    if ((v13 & 1) != v16)
    {
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for String, a3, v16, v14);
      BUG();
    }
  }

  else
  {
    v15 = v20;
  }

  v17 = *v7;
  if (v13)
  {
    v18 = v17[7];
    *(v18 + 8 * v15);
    result = a1;
    *(v18 + 8 * v15) = a1;
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v15, a2, a3, a1, v17);
  }

  return result;
}

_OWORD *specialized _NativeDictionary.setValue(_:forKey:isUnique:)(__int128 *a1, uint64_t a2, _BOOL4 a3)
{
  v4 = v3;
  v27 = a3;
  v24 = a1;
  v26 = type metadata accessor for CodingUserInfoKey(0);
  v22 = *(v26 - 8);
  v5 = *(v22 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v23 = &v21;
  v8 = *v3;
  v25 = a2;
  v10 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v8[2], v11);
  v13 = v8[2] + v11;
  if (v12)
  {
    BUG();
  }

  v14 = v9;
  __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<CodingUserInfoKey, Sendable>);
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v27, v13))
  {
    v10 = specialized __RawDictionaryStorage.find<A>(_:)(v25);
    LOBYTE(v16) = v16 & 1;
    if ((v14 & 1) != v16)
    {
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(v26, v13, v16, v15);
      BUG();
    }
  }

  v17 = *v4;
  if (v14)
  {
    v18 = (v17[7] + 32 * v10);
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    return outlined init with take of Any(v24, v18);
  }

  else
  {
    v20 = v23;
    (*(v22 + 16))(v23, v25, v26);
    return specialized _NativeDictionary._insert(at:key:value:)(v10, v20, v24, v17);
  }
}

{
  v4 = v3;
  v20 = a3;
  v18 = a1;
  v5 = *v3;
  v19 = a2;
  v7 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v8 = (v6 & 1) == 0;
  v9 = __OFADD__(v5[2], v8);
  v10 = v5[2] + v8;
  if (v9)
  {
    BUG();
  }

  v11 = v6;
  __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<AnyHashable, Any>);
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v20, v10))
  {
    v7 = specialized __RawDictionaryStorage.find<A>(_:)(v19);
    LOBYTE(v13) = v13 & 1;
    if ((v11 & 1) != v13)
    {
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for AnyHashable, v10, v13, v12);
      BUG();
    }
  }

  v14 = *v4;
  if (v11)
  {
    v15 = (v14[7] + 32 * v7);
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
    return outlined init with take of Any(v18, v15);
  }

  else
  {
    outlined init with copy of AnyHashable(v19, v17);
    return specialized _NativeDictionary._insert(at:key:value:)(v7, v17, v18, v14);
  }
}

void *specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, Swift::Bool a3)
{
  v4 = v3;
  v6 = *v3;
  v7 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v9 = (v8 & 1) == 0;
  v10 = __OFADD__(v6[2], v9);
  v11 = v6[2] + v9;
  if (v10)
  {
    BUG();
  }

  v12 = v8;
  v13 = v7;
  __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<Int, Int>);
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(a3, v11))
  {
    v15 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    LOBYTE(v16) = v16 & 1;
    if ((v12 & 1) != v16)
    {
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for Int, v11, v16, v14);
      BUG();
    }
  }

  else
  {
    v15 = v13;
  }

  v17 = *v4;
  if ((v12 & 1) == 0)
  {
    return specialized _NativeDictionary._insert(at:key:value:)(v15, a2, a1, v17);
  }

  result = v17[7];
  result[v15] = a1;
  return result;
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, _BOOL4 a3)
{
  v4 = v3;
  v27 = a3;
  v24 = a1;
  v26 = type metadata accessor for URL(0);
  v22 = *(v26 - 8);
  v5 = *(v22 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v23 = &v21;
  v8 = *v3;
  v25 = a2;
  v10 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v8[2], v11);
  v13 = v8[2] + v11;
  if (v12)
  {
    BUG();
  }

  v14 = v9;
  __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<URL, CIImage>);
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v27, v13))
  {
    v10 = specialized __RawDictionaryStorage.find<A>(_:)(v25);
    LOBYTE(v16) = v16 & 1;
    if ((v14 & 1) != v16)
    {
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(v26, v13, v16, v15);
      BUG();
    }
  }

  v17 = *v4;
  if (v14)
  {
    v18 = v17[7];

    result = v24;
    *(v18 + 8 * v10) = v24;
  }

  else
  {
    v20 = v23;
    (*(v22 + 16))(v23, v25, v26);
    return specialized _NativeDictionary._insert(at:key:value:)(v10, v20, v24, v17);
  }

  return result;
}

_OWORD *specialized _NativeDictionary.setValue(_:forKey:isUnique:)(__int128 *a1, char a2, Swift::Bool a3)
{
  v4 = v3;
  v5 = *v3;
  v7 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v8 = (v6 & 1) == 0;
  v9 = __OFADD__(v5[2], v8);
  v10 = v5[2] + v8;
  if (v9)
  {
    BUG();
  }

  v11 = v6;
  __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<MLProgress.Metric, Any>);
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(a3, v10))
  {
    v7 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    LOBYTE(v13) = v13 & 1;
    if ((v11 & 1) != v13)
    {
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for MLProgress.Metric, v10, v13, v12);
      BUG();
    }
  }

  v14 = *v4;
  if ((v11 & 1) == 0)
  {
    return specialized _NativeDictionary._insert(at:key:value:)(v7, a2, a1, v14);
  }

  v15 = (v14[7] + 32 * v7);
  __swift_destroy_boxed_opaque_existential_1Tm(v15);
  return outlined init with take of Any(a1, v15);
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a5[6];
  v9 = 16 * a1;
  *(v8 + v9) = a2;
  *(v8 + v9 + 8) = a3;
  outlined init with take of Any(a4, (a5[7] + 32 * a1));
  v10 = a5[2];
  v11 = __OFADD__(1, v10);
  result = v10 + 1;
  if (v11)
  {
    BUG();
  }

  a5[2] = result;
  return result;
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v7 = a5[6];
  v8 = 16 * a1;
  *(v7 + v8) = a2;
  *(v7 + v8 + 8) = a3;
  *(a5[7] + 8 * a1) = a4;
  v9 = a5[2];
  v10 = __OFADD__(1, v9);
  result = v9 + 1;
  if (v10)
  {
    BUG();
  }

  a5[2] = result;
  return result;
}

{
  return specialized _NativeDictionary._insert(at:key:value:)(a1, a2, a3, a4, a5);
}

{
  return specialized _NativeDictionary._insert(at:key:value:)(a1, a2, a3, a4, a5);
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void *a6)
{
  v7 = a1;
  a6[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a6[6];
  v7 *= 16;
  *(v8 + v7) = a2;
  *(v8 + v7 + 8) = a3;
  v9 = a6[7];
  *(v9 + v7) = a4;
  *(v9 + v7 + 8) = a5 & 1;
  v10 = a6[2];
  v11 = __OFADD__(1, v10);
  result = v10 + 1;
  if (v11)
  {
    BUG();
  }

  a6[2] = result;
  return result;
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7 = a1;
  a6[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a6[6];
  v7 *= 16;
  *(v8 + v7) = a2;
  *(v8 + v7 + 8) = a3;
  v9 = a6[7];
  *(v9 + v7) = a4;
  *(v9 + v7 + 8) = a5;
  v10 = a6[2];
  v11 = __OFADD__(1, v10);
  result = v10 + 1;
  if (v11)
  {
    BUG();
  }

  a6[2] = result;
  return result;
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t (*a6)(void))
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a5[6];
  v9 = 16 * a1;
  *(v8 + v9) = a2;
  *(v8 + v9 + 8) = a3;
  v10 = a5[7];
  v11 = a6(0);
  (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a4, v11);
  v12 = a5[2];
  v13 = __OFADD__(1, v12);
  result = v12 + 1;
  if (v13)
  {
    BUG();
  }

  a5[2] = result;
  return result;
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, void *a3, double a4)
{
  a3[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a3[6];
  v6 = type metadata accessor for MetricsKey(0);
  (*(*(v6 - 8) + 32))(v5 + a1 * *(*(v6 - 8) + 72), a2, v6);
  *(a3[7] + 8 * a1) = a4;
  v7 = a3[2];
  v8 = __OFADD__(1, v7);
  result = v7 + 1;
  if (v8)
  {
    BUG();
  }

  a3[2] = result;
  return result;
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, char a2, void *a3, double a4)
{
  a3[(a1 >> 6) + 8] |= 1 << a1;
  *(a3[6] + a1) = a2;
  *(a3[7] + 8 * a1) = a4;
  v4 = a3[2];
  v5 = __OFADD__(1, v4);
  result = v4 + 1;
  if (v5)
  {
    BUG();
  }

  a3[2] = result;
  return result;
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, __int128 *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v6 = a4[6];
  v7 = type metadata accessor for CodingUserInfoKey(0);
  (*(*(v7 - 8) + 32))(v6 + a1 * *(*(v7 - 8) + 72), a2, v7);
  outlined init with take of Any(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(1, v8);
  result = v8 + 1;
  if (v9)
  {
    BUG();
  }

  a4[2] = result;
  return result;
}

void *specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  result = a4;
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  *(a4[7] + 8 * a1) = a3;
  v5 = a4[2];
  v6 = __OFADD__(1, v5);
  v7 = v5 + 1;
  if (v6)
  {
    BUG();
  }

  result[2] = v7;
  return result;
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v6 = a4[6];
  v7 = type metadata accessor for URL(0);
  (*(*(v7 - 8) + 32))(v6 + a1 * *(*(v7 - 8) + 72), a2, v7);
  *(a4[7] + 8 * a1) = a3;
  v8 = a4[2];
  v9 = __OFADD__(1, v8);
  result = v8 + 1;
  if (v9)
  {
    BUG();
  }

  a4[2] = result;
  return result;
}

uint64_t outlined assign with take of MLStyleTransfer.ModelParameters.ValidationData(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData(0);
  (*(*(v2 - 8) + 40))(a2, a1, v2);
  return a2;
}

uint64_t lazy protocol witness table accessor for type MLStyleTransfer.ModelParameters.ModelAlgorithmType and conformance MLStyleTransfer.ModelParameters.ModelAlgorithmType()
{
  result = lazy protocol witness table cache variable for type MLStyleTransfer.ModelParameters.ModelAlgorithmType and conformance MLStyleTransfer.ModelParameters.ModelAlgorithmType;
  if (!lazy protocol witness table cache variable for type MLStyleTransfer.ModelParameters.ModelAlgorithmType and conformance MLStyleTransfer.ModelParameters.ModelAlgorithmType)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLStyleTransfer.ModelParameters.ModelAlgorithmType, &type metadata for MLStyleTransfer.ModelParameters.ModelAlgorithmType);
    lazy protocol witness table cache variable for type MLStyleTransfer.ModelParameters.ModelAlgorithmType and conformance MLStyleTransfer.ModelParameters.ModelAlgorithmType = result;
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for MLStyleTransfer(void *a1, void *a2, uint64_t a3)
{
  v3 = *(*(a3 - 8) + 80);
  v4 = *a2;
  *a1 = *a2;
  if ((v3 & 0x20000) != 0)
  {
    v5 = (v4 + ((v3 + 16) & ~v3));
  }

  else
  {
    v5 = a1;
    v6 = *(a3 + 20);
    v7 = a1 + v6;
    v8 = a2 + v6;
    *(a1 + v6) = *(a2 + v6);
    v16 = type metadata accessor for MLStyleTransfer.ModelParameters(0);
    v9 = v16[5];
    v15 = v7;
    v10 = &v7[v9];
    v11 = &v8[v9];
    v12 = type metadata accessor for URL(0);

    if (__swift_getEnumTagSinglePayload(v11, 1, v12))
    {
      v13 = type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData(0);
      memcpy(v10, v11, *(*(v13 - 8) + 64));
    }

    else
    {
      (*(*(v12 - 8) + 16))(v10, v11, v12);
      __swift_storeEnumTagSinglePayload(v10, 0, 1, v12);
    }

    *&v15[v16[6]] = *&v8[v16[6]];
    *&v15[v16[7]] = *&v8[v16[7]];
    *&v15[v16[8]] = *&v8[v16[8]];
    *&v15[v16[9]] = *&v8[v16[9]];
    v15[v16[10]] = v8[v16[10]];
  }

  return v5;
}

uint64_t destroy for MLStyleTransfer(void *a1, uint64_t a2)
{

  v2 = a1 + *(a2 + 20);
  v3 = &v2[*(type metadata accessor for MLStyleTransfer.ModelParameters(0) + 20)];
  v4 = type metadata accessor for URL(0);
  result = __swift_getEnumTagSinglePayload(v3, 1, v4);
  if (!result)
  {
    return (*(*(v4 - 8) + 8))(v3, v4);
  }

  return result;
}

void *initializeWithCopy for MLStyleTransfer(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v3 = *(a3 + 20);
  v4 = a1 + v3;
  v5 = a2 + v3;
  *(a1 + v3) = *(a2 + v3);
  v6 = type metadata accessor for MLStyleTransfer.ModelParameters(0);
  v7 = v6[5];
  __dst = &v4[v7];
  v8 = &v5[v7];
  v9 = type metadata accessor for URL(0);

  if (__swift_getEnumTagSinglePayload(v8, 1, v9))
  {
    v10 = type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData(0);
    memcpy(__dst, v8, *(*(v10 - 8) + 64));
  }

  else
  {
    (*(*(v9 - 8) + 16))(__dst, v8, v9);
    __swift_storeEnumTagSinglePayload(__dst, 0, 1, v9);
  }

  *&v4[v6[6]] = *&v5[v6[6]];
  *&v4[v6[7]] = *&v5[v6[7]];
  *&v4[v6[8]] = *&v5[v6[8]];
  *&v4[v6[9]] = *&v5[v6[9]];
  v4[v6[10]] = v5[v6[10]];
  return a1;
}

void *assignWithCopy for MLStyleTransfer(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;

  v4 = *(a3 + 20);
  v5 = a1 + v4;
  v6 = a2 + v4;
  *(a1 + v4) = *(a2 + v4);
  v7 = type metadata accessor for MLStyleTransfer.ModelParameters(0);
  v8 = v7[5];
  v18 = v5;
  v9 = &v5[v8];
  v10 = &v6[v8];
  v11 = type metadata accessor for URL(0);
  __dst = v9;
  LODWORD(v9) = __swift_getEnumTagSinglePayload(v9, 1, v11);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  if (v9)
  {
    if (!EnumTagSinglePayload)
    {
      (*(*(v11 - 8) + 16))(__dst, v10, v11);
      __swift_storeEnumTagSinglePayload(__dst, 0, 1, v11);
      goto LABEL_9;
    }

    v13 = *(*(type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData(0) - 8) + 64);
    v14 = __dst;
  }

  else
  {
    v15 = *(v11 - 8);
    if (!EnumTagSinglePayload)
    {
      (*(v15 + 24))(__dst, v10, v11);
      goto LABEL_9;
    }

    (*(v15 + 8))(__dst, v11);
    v13 = *(*(type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData(0) - 8) + 64);
    v14 = __dst;
  }

  memcpy(v14, v10, v13);
LABEL_9:
  *&v18[v7[6]] = *&v6[v7[6]];
  *&v18[v7[7]] = *&v6[v7[7]];
  *&v18[v7[8]] = *&v6[v7[8]];
  *&v18[v7[9]] = *&v6[v7[9]];
  v18[v7[10]] = v6[v7[10]];
  return a1;
}

void *initializeWithTake for MLStyleTransfer(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v3 = *(a3 + 20);
  v4 = a1 + v3;
  v5 = a2 + v3;
  *(a1 + v3) = *(a2 + v3);
  v6 = type metadata accessor for MLStyleTransfer.ModelParameters(0);
  v7 = v6[5];
  __dst = &v4[v7];
  v8 = &v5[v7];
  v9 = type metadata accessor for URL(0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9))
  {
    v10 = type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData(0);
    memcpy(__dst, v8, *(*(v10 - 8) + 64));
  }

  else
  {
    (*(*(v9 - 8) + 32))(__dst, v8, v9);
    __swift_storeEnumTagSinglePayload(__dst, 0, 1, v9);
  }

  *&v4[v6[6]] = *&v5[v6[6]];
  *&v4[v6[7]] = *&v5[v6[7]];
  *&v4[v6[8]] = *&v5[v6[8]];
  *&v4[v6[9]] = *&v5[v6[9]];
  v4[v6[10]] = v5[v6[10]];
  return a1;
}

void *assignWithTake for MLStyleTransfer(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;

  v4 = *(a3 + 20);
  v5 = a1 + v4;
  v6 = a2 + v4;
  *(a1 + v4) = *(a2 + v4);
  v7 = type metadata accessor for MLStyleTransfer.ModelParameters(0);
  v8 = v7[5];
  v18 = v5;
  v9 = &v5[v8];
  v10 = &v6[v8];
  v11 = type metadata accessor for URL(0);
  __dst = v9;
  LODWORD(v9) = __swift_getEnumTagSinglePayload(v9, 1, v11);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  if (v9)
  {
    if (!EnumTagSinglePayload)
    {
      (*(*(v11 - 8) + 32))(__dst, v10, v11);
      __swift_storeEnumTagSinglePayload(__dst, 0, 1, v11);
      goto LABEL_9;
    }

    v13 = *(*(type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData(0) - 8) + 64);
    v14 = __dst;
  }

  else
  {
    v15 = *(v11 - 8);
    if (!EnumTagSinglePayload)
    {
      (*(v15 + 40))(__dst, v10, v11);
      goto LABEL_9;
    }

    (*(v15 + 8))(__dst, v11);
    v13 = *(*(type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData(0) - 8) + 64);
    v14 = __dst;
  }

  memcpy(v14, v10, v13);
LABEL_9:
  *&v18[v7[6]] = *&v6[v7[6]];
  *&v18[v7[7]] = *&v6[v7[7]];
  *&v18[v7[8]] = *&v6[v7[8]];
  *&v18[v7[9]] = *&v6[v7[9]];
  v18[v7[10]] = v6[v7[10]];
  return a1;
}

uint64_t sub_5CCCB(void *a1, unsigned int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    result = 0;
    if ((*a1 & 0xFFFFFFFF00000001) == 0)
    {
      return (*a1 >> 1) + 1;
    }
  }

  else
  {
    v5 = type metadata accessor for MLStyleTransfer.ModelParameters(0);
    return __swift_getEnumTagSinglePayload(a1 + *(a3 + 20), a2, v5);
  }

  return result;
}

uint64_t sub_5CD43(void *a1, unsigned int a2, int a3, uint64_t a4)
{
  if (a3 == 0x7FFFFFFF)
  {
    *a1 = 2 * (a2 - 1);
  }

  else
  {
    v5 = type metadata accessor for MLStyleTransfer.ModelParameters(0);
    return __swift_storeEnumTagSinglePayload(a1 + *(a4 + 20), a2, a2, v5);
  }

  return result;
}

uint64_t type metadata completion function for MLStyleTransfer(uint64_t a1)
{
  v3[0] = &value witness table for Builtin.NativeObject + 64;
  result = type metadata accessor for MLStyleTransfer.ModelParameters(319);
  if (v2 <= 0x3F)
  {
    v3[1] = *(result - 8) + 64;
    swift_initStructMetadata(a1, 256, 2, v3, a1 + 16);
    return 0;
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for MLStyleTransfer.DataSource(void *a1, void *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v9 = *a2;
    *v3 = *a2;
    v3 = (v9 + ((v4 + 16) & ~v4));
  }

  else
  {
    v5 = type metadata accessor for URL(0);
    v6 = *(*(v5 - 8) + 16);
    v6(a1, a2, v5);
    v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (styleImage: URL, contentDirectory: URL, processingOption: VNImageCropAndScaleOption?));
    v6((a1 + *(v7 + 48)), (a2 + *(v7 + 48)), v5);
    v8 = *(v7 + 64);
    *(a1 + v8 + 8) = *(a2 + v8 + 8);
    *(a1 + v8) = *(a2 + v8);
  }

  return v3;
}

uint64_t destroy for MLStyleTransfer.DataSource(uint64_t a1)
{
  v1 = type metadata accessor for URL(0);
  v2 = *(*(v1 - 8) + 8);
  v2(a1, v1);
  v3 = a1 + *(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (styleImage: URL, contentDirectory: URL, processingOption: VNImageCropAndScaleOption?)) + 48);
  return (v2)(v3, v1);
}

uint64_t initializeWithCopy for MLStyleTransfer.DataSource(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for URL(0);
  v3 = *(*(v2 - 8) + 16);
  v3(a1, a2, v2);
  v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (styleImage: URL, contentDirectory: URL, processingOption: VNImageCropAndScaleOption?));
  v3(a1 + *(v4 + 48), a2 + *(v4 + 48), v2);
  v5 = *(v4 + 64);
  *(a1 + v5 + 8) = *(a2 + v5 + 8);
  *(a1 + v5) = *(a2 + v5);
  return a1;
}

uint64_t assignWithCopy for MLStyleTransfer.DataSource(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for URL(0);
  v3 = *(*(v2 - 8) + 24);
  v3(a1, a2, v2);
  v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (styleImage: URL, contentDirectory: URL, processingOption: VNImageCropAndScaleOption?));
  v3(a1 + *(v4 + 48), a2 + *(v4 + 48), v2);
  v5 = *(v4 + 64);
  *(a1 + v5 + 8) = *(a2 + v5 + 8);
  *(a1 + v5) = *(a2 + v5);
  return a1;
}

uint64_t initializeWithTake for MLStyleTransfer.DataSource(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for URL(0);
  v3 = *(*(v2 - 8) + 32);
  v3(a1, a2, v2);
  v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (styleImage: URL, contentDirectory: URL, processingOption: VNImageCropAndScaleOption?));
  v3(a1 + *(v4 + 48), a2 + *(v4 + 48), v2);
  v5 = *(v4 + 64);
  *(a1 + v5 + 8) = *(a2 + v5 + 8);
  *(a1 + v5) = *(a2 + v5);
  return a1;
}

uint64_t assignWithTake for MLStyleTransfer.DataSource(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for URL(0);
  v3 = *(*(v2 - 8) + 40);
  v3(a1, a2, v2);
  v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (styleImage: URL, contentDirectory: URL, processingOption: VNImageCropAndScaleOption?));
  v3(a1 + *(v4 + 48), a2 + *(v4 + 48), v2);
  v5 = *(v4 + 64);
  *(a1 + v5 + 8) = *(a2 + v5 + 8);
  *(a1 + v5) = *(a2 + v5);
  return a1;
}

uint64_t type metadata completion function for MLStyleTransfer.DataSource(uint64_t a1)
{
  result = type metadata accessor for URL(319);
  if (v2 <= 0x3F)
  {
    swift_getTupleTypeLayout3(v3, *(result - 8) + 64, *(result - 8) + 64, "\t");
    swift_initEnumMetadataSingleCase(a1, 256, v3);
    *(*(a1 - 8) + 84) = v4;
    return 0;
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for MLStyleTransfer.ModelParameters(_BYTE *a1, void *a2, int *a3)
{
  v3 = a1;
  v4 = *(*(a3 - 1) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v10 = *a2;
    *v3 = *a2;
    v3 = (v10 + ((v4 + 16) & ~v4));
  }

  else
  {
    *a1 = *a2;
    v6 = a3[5];
    __dst = &a1[v6];
    v7 = a2 + v6;
    v8 = type metadata accessor for URL(0);
    if (__swift_getEnumTagSinglePayload(v7, 1, v8))
    {
      v9 = type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData(0);
      memcpy(__dst, v7, *(*(v9 - 8) + 64));
    }

    else
    {
      (*(*(v8 - 8) + 16))(__dst, v7, v8);
      __swift_storeEnumTagSinglePayload(__dst, 0, 1, v8);
    }

    *&a1[a3[6]] = *(a2 + a3[6]);
    *&a1[a3[7]] = *(a2 + a3[7]);
    *&a1[a3[8]] = *(a2 + a3[8]);
    *&a1[a3[9]] = *(a2 + a3[9]);
    a1[a3[10]] = *(a2 + a3[10]);
  }

  return v3;
}

uint64_t destroy for MLStyleTransfer.ModelParameters(uint64_t a1, uint64_t a2)
{
  v2 = a1 + *(a2 + 20);
  v3 = type metadata accessor for URL(0);
  result = __swift_getEnumTagSinglePayload(v2, 1, v3);
  if (!result)
  {
    return (*(*(v3 - 8) + 8))(v2, v3);
  }

  return result;
}

_BYTE *initializeWithCopy for MLStyleTransfer.ModelParameters(_BYTE *a1, _BYTE *a2, int *a3)
{
  *a1 = *a2;
  v4 = a3[5];
  __dst = &a1[v4];
  v5 = &a2[v4];
  v6 = type metadata accessor for URL(0);
  if (__swift_getEnumTagSinglePayload(v5, 1, v6))
  {
    v7 = type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData(0);
    memcpy(__dst, v5, *(*(v7 - 8) + 64));
  }

  else
  {
    (*(*(v6 - 8) + 16))(__dst, v5, v6);
    __swift_storeEnumTagSinglePayload(__dst, 0, 1, v6);
  }

  *&a1[a3[6]] = *&a2[a3[6]];
  *&a1[a3[7]] = *&a2[a3[7]];
  *&a1[a3[8]] = *&a2[a3[8]];
  *&a1[a3[9]] = *&a2[a3[9]];
  a1[a3[10]] = a2[a3[10]];
  return a1;
}

_BYTE *assignWithCopy for MLStyleTransfer.ModelParameters(_BYTE *a1, _BYTE *a2, int *a3)
{
  *a1 = *a2;
  v4 = a3[5];
  v5 = &a1[v4];
  v6 = &a2[v4];
  v7 = type metadata accessor for URL(0);
  __dst = v5;
  LODWORD(v5) = __swift_getEnumTagSinglePayload(v5, 1, v7);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v6, 1, v7);
  if (v5)
  {
    if (!EnumTagSinglePayload)
    {
      (*(*(v7 - 8) + 16))(__dst, v6, v7);
      __swift_storeEnumTagSinglePayload(__dst, 0, 1, v7);
      goto LABEL_9;
    }

    v9 = *(*(type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData(0) - 8) + 64);
    v10 = __dst;
  }

  else
  {
    v11 = *(v7 - 8);
    if (!EnumTagSinglePayload)
    {
      (*(v11 + 24))(__dst, v6, v7);
      goto LABEL_9;
    }

    (*(v11 + 8))(__dst, v7);
    v9 = *(*(type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData(0) - 8) + 64);
    v10 = __dst;
  }

  memcpy(v10, v6, v9);
LABEL_9:
  *&a1[a3[6]] = *&a2[a3[6]];
  *&a1[a3[7]] = *&a2[a3[7]];
  *&a1[a3[8]] = *&a2[a3[8]];
  *&a1[a3[9]] = *&a2[a3[9]];
  a1[a3[10]] = a2[a3[10]];
  return a1;
}

_BYTE *initializeWithTake for MLStyleTransfer.ModelParameters(_BYTE *a1, _BYTE *a2, int *a3)
{
  *a1 = *a2;
  v4 = a3[5];
  __dst = &a1[v4];
  v5 = &a2[v4];
  v6 = type metadata accessor for URL(0);
  if (__swift_getEnumTagSinglePayload(v5, 1, v6))
  {
    v7 = type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData(0);
    memcpy(__dst, v5, *(*(v7 - 8) + 64));
  }

  else
  {
    (*(*(v6 - 8) + 32))(__dst, v5, v6);
    __swift_storeEnumTagSinglePayload(__dst, 0, 1, v6);
  }

  *&a1[a3[6]] = *&a2[a3[6]];
  *&a1[a3[7]] = *&a2[a3[7]];
  *&a1[a3[8]] = *&a2[a3[8]];
  *&a1[a3[9]] = *&a2[a3[9]];
  a1[a3[10]] = a2[a3[10]];
  return a1;
}

_BYTE *assignWithTake for MLStyleTransfer.ModelParameters(_BYTE *a1, _BYTE *a2, int *a3)
{
  *a1 = *a2;
  v4 = a3[5];
  v5 = &a1[v4];
  v6 = &a2[v4];
  v7 = type metadata accessor for URL(0);
  __dst = v5;
  LODWORD(v5) = __swift_getEnumTagSinglePayload(v5, 1, v7);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v6, 1, v7);
  if (v5)
  {
    if (!EnumTagSinglePayload)
    {
      (*(*(v7 - 8) + 32))(__dst, v6, v7);
      __swift_storeEnumTagSinglePayload(__dst, 0, 1, v7);
      goto LABEL_9;
    }

    v9 = *(*(type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData(0) - 8) + 64);
    v10 = __dst;
  }

  else
  {
    v11 = *(v7 - 8);
    if (!EnumTagSinglePayload)
    {
      (*(v11 + 40))(__dst, v6, v7);
      goto LABEL_9;
    }

    (*(v11 + 8))(__dst, v7);
    v9 = *(*(type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData(0) - 8) + 64);
    v10 = __dst;
  }

  memcpy(v10, v6, v9);
LABEL_9:
  *&a1[a3[6]] = *&a2[a3[6]];
  *&a1[a3[7]] = *&a2[a3[7]];
  *&a1[a3[8]] = *&a2[a3[8]];
  *&a1[a3[9]] = *&a2[a3[9]];
  a1[a3[10]] = a2[a3[10]];
  return a1;
}

uint64_t sub_5D6F7(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v3 = *a1;
    result = 0;
    if (v3 >= 2)
    {
      return v3 - 1;
    }
  }

  else
  {
    v6 = type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData(0);
    return __swift_getEnumTagSinglePayload(&a1[*(a3 + 20)], a2, v6);
  }

  return result;
}

uint64_t sub_5D761(_BYTE *a1, unsigned int a2, int a3, uint64_t a4)
{
  if (a3 == 254)
  {
    *a1 = a2 + 1;
  }

  else
  {
    v5 = type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData(0);
    return __swift_storeEnumTagSinglePayload(&a1[*(a4 + 20)], a2, a2, v5);
  }

  return result;
}

uint64_t type metadata completion function for MLStyleTransfer.ModelParameters(uint64_t a1)
{
  v3[0] = &unk_33E7F0;
  result = type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData(319);
  if (v2 <= 0x3F)
  {
    v3[1] = *(result - 8) + 64;
    v3[2] = &value witness table for Builtin.Int64 + 64;
    v3[3] = &value witness table for Builtin.Int64 + 64;
    v3[4] = &value witness table for Builtin.Int64 + 64;
    v3[5] = &value witness table for Builtin.Int64 + 64;
    v3[6] = &unk_33E7F0;
    swift_initStructMetadata(a1, 256, 7, v3, a1 + 16);
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for MLStyleTransfer.ModelParameters.ValidationData(uint64_t *__dst, uint64_t *__src, uint64_t a3)
{
  v3 = __dst;
  v4 = *(a3 - 8);
  v5 = *(v4 + 80);
  if ((v5 & 0x20000) != 0)
  {
    v8 = *__src;
    *v3 = *__src;
    v3 = (v8 + ((v5 + 16) & ~v5));
  }

  else
  {
    v6 = type metadata accessor for URL(0);
    if (__swift_getEnumTagSinglePayload(__src, 1, v6))
    {
      return memcpy(__dst, __src, *(v4 + 64));
    }

    (*(*(v6 - 8) + 16))(__dst, __src, v6);
    __swift_storeEnumTagSinglePayload(__dst, 0, 1, v6);
  }

  return v3;
}

uint64_t destroy for MLStyleTransfer.ModelParameters.ValidationData(uint64_t a1)
{
  v1 = type metadata accessor for URL(0);
  result = __swift_getEnumTagSinglePayload(a1, 1, v1);
  if (!result)
  {
    return (*(*(v1 - 8) + 8))(a1, v1);
  }

  return result;
}

void *initializeWithCopy for MLStyleTransfer.ModelParameters.ValidationData(void *__dst, void *__src, uint64_t a3)
{
  v4 = type metadata accessor for URL(0);
  if (__swift_getEnumTagSinglePayload(__src, 1, v4))
  {
    return memcpy(__dst, __src, *(*(a3 - 8) + 64));
  }

  (*(*(v4 - 8) + 16))(__dst, __src, v4);
  __swift_storeEnumTagSinglePayload(__dst, 0, 1, v4);
  return __dst;
}

void *assignWithCopy for MLStyleTransfer.ModelParameters.ValidationData(void *__dst, void *__src, uint64_t a3)
{
  v3 = type metadata accessor for URL(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(__dst, 1, v3);
  v5 = __swift_getEnumTagSinglePayload(__src, 1, v3);
  if (!EnumTagSinglePayload)
  {
    v6 = *(v3 - 8);
    if (!v5)
    {
      (*(v6 + 24))(__dst, __src, v3);
      return __dst;
    }

    (*(v6 + 8))(__dst, v3);
    return memcpy(__dst, __src, *(*(a3 - 8) + 64));
  }

  if (v5)
  {
    return memcpy(__dst, __src, *(*(a3 - 8) + 64));
  }

  (*(*(v3 - 8) + 16))(__dst, __src, v3);
  __swift_storeEnumTagSinglePayload(__dst, 0, 1, v3);
  return __dst;
}

void *initializeWithTake for MLStyleTransfer.ModelParameters.ValidationData(void *__dst, void *__src, uint64_t a3)
{
  v4 = type metadata accessor for URL(0);
  if (__swift_getEnumTagSinglePayload(__src, 1, v4))
  {
    return memcpy(__dst, __src, *(*(a3 - 8) + 64));
  }

  (*(*(v4 - 8) + 32))(__dst, __src, v4);
  __swift_storeEnumTagSinglePayload(__dst, 0, 1, v4);
  return __dst;
}

void *assignWithTake for MLStyleTransfer.ModelParameters.ValidationData(void *__dst, void *__src, uint64_t a3)
{
  v3 = type metadata accessor for URL(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(__dst, 1, v3);
  v5 = __swift_getEnumTagSinglePayload(__src, 1, v3);
  if (!EnumTagSinglePayload)
  {
    v6 = *(v3 - 8);
    if (!v5)
    {
      (*(v6 + 40))(__dst, __src, v3);
      return __dst;
    }

    (*(v6 + 8))(__dst, v3);
    return memcpy(__dst, __src, *(*(a3 - 8) + 64));
  }

  if (v5)
  {
    return memcpy(__dst, __src, *(*(a3 - 8) + 64));
  }

  (*(*(v3 - 8) + 32))(__dst, __src, v3);
  __swift_storeEnumTagSinglePayload(__dst, 0, 1, v3);
  return __dst;
}

uint64_t sub_5DB8C(uint64_t a1, unsigned int a2)
{
  v2 = type metadata accessor for URL(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, a2, v2);
  v4 = EnumTagSinglePayload - 1;
  if (EnumTagSinglePayload < 2)
  {
    return 0;
  }

  return v4;
}

uint64_t sub_5DBDA(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v4 = a2;
  if (a2)
  {
    v4 = a2 + 1;
  }

  v5 = type metadata accessor for URL(0);
  return __swift_storeEnumTagSinglePayload(a1, v4, a3, v5);
}

uint64_t type metadata completion function for MLStyleTransfer.ModelParameters.ValidationData(uint64_t a1)
{
  result = type metadata accessor for URL(319);
  if (v2 <= 0x3F)
  {
    swift_initEnumMetadataSinglePayload(a1, 256, *(result - 8) + 64, 1);
    return 0;
  }

  return result;
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, __int128 *a2, __int128 *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v6 = a4[6];
  v7 = 40 * a1;
  *(v6 + v7 + 32) = *(a2 + 4);
  v8 = *a2;
  *(v6 + v7 + 16) = a2[1];
  *(v6 + v7) = v8;
  outlined init with take of Any(a3, (a4[7] + 32 * a1));
  v9 = a4[2];
  v10 = __OFADD__(1, v9);
  result = v9 + 1;
  if (v10)
  {
    BUG();
  }

  a4[2] = result;
  return result;
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, char a2, __int128 *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + a1) = a2;
  outlined init with take of Any(a3, (a4[7] + 32 * a1));
  v5 = a4[2];
  v6 = __OFADD__(1, v5);
  result = v5 + 1;
  if (v6)
  {
    BUG();
  }

  a4[2] = result;
  return result;
}

uint64_t specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4, void *a5)
{
  specialized LazyMapSequence.makeIterator()(a1, a2, a3);
  v32 = a1;

  while (1)
  {
    v5 = specialized LazyMapSequence.Iterator.next()();
    if (!v6)
    {
      break;
    }

    v9 = v6;
    v31 = v7;
    v33 = v8;
    v10 = *a5;
    v34 = v5;
    v12 = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
    v13 = (v11 & 1) == 0;
    v14 = __OFADD__(v10[2], v13);
    v15 = v10[2] + v13;
    if (v14)
    {
      BUG();
    }

    v16 = v11;
    if (v10[3] >= v15)
    {
      if ((a4 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<String, String>);
        _NativeDictionary.copy()();
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v15, a4);
      v12 = specialized __RawDictionaryStorage.find<A>(_:)(v34, v9);
      LOBYTE(v18) = v18 & 1;
      if ((v16 & 1) != v18)
      {
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for String, v9, v18, v17);
        BUG();
      }
    }

    v19 = *a5;
    if (v16)
    {
      v20 = v19[7];
      v21 = 16 * v12;
      v37 = *(v20 + v21);
      v22 = *(v20 + v21 + 8);

      v9;
      v33;
      v23 = v19[7];
      *(v23 + v21 + 8);
      *(v23 + v21) = v37;
      *(v23 + v21 + 8) = v22;
    }

    else
    {
      v19[(v12 >> 6) + 8] |= 1 << v12;
      v24 = v19[6];
      v25 = 16 * v12;
      *(v24 + v25) = v34;
      *(v24 + v25 + 8) = v9;
      v26 = v19[7];
      *(v26 + v25) = v31;
      *(v26 + v25 + 8) = v33;
      v27 = v19[2];
      v14 = __OFADD__(1, v27);
      v28 = v27 + 1;
      if (v14)
      {
        BUG();
      }

      v19[2] = v28;
    }

    a4 = 1;
  }

  v32;

  outlined consume of [String : [Double]].Iterator._Variant(v30);
}

{
  specialized LazyMapSequence.makeIterator()(a1, a2, a3);
  v27 = a1;

  while (1)
  {
    v5 = specialized LazyMapSequence.Iterator.next()();
    if (!v6)
    {
      break;
    }

    v8 = v6;
    v28 = v7;
    v9 = *a5;
    v29 = v5;
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
    v12 = (v10 & 1) == 0;
    v13 = __OFADD__(v9[2], v12);
    v14 = v9[2] + v12;
    if (v13)
    {
      BUG();
    }

    v15 = v10;
    if (v9[3] >= v14)
    {
      if ((a4 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<String, [Double]>);
        _NativeDictionary.copy()();
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, a4);
      v11 = specialized __RawDictionaryStorage.find<A>(_:)(v29, v8);
      LOBYTE(v17) = v17 & 1;
      if ((v15 & 1) != v17)
      {
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for String, v8, v17, v16);
        BUG();
      }
    }

    v18 = *a5;
    if (v15)
    {
      v19 = *(v18[7] + 8 * v11);

      v8;
      v28;
      v20 = v18[7];
      *(v20 + 8 * v11);
      *(v20 + 8 * v11) = v19;
    }

    else
    {
      v18[(v11 >> 6) + 8] |= 1 << v11;
      v21 = v18[6];
      v22 = 16 * v11;
      *(v21 + v22) = v29;
      *(v21 + v22 + 8) = v8;
      *(v18[7] + 8 * v11) = v28;
      v23 = v18[2];
      v13 = __OFADD__(1, v23);
      v24 = v23 + 1;
      if (v13)
      {
        BUG();
      }

      v18[2] = v24;
    }

    a4 = 1;
  }

  v27;

  outlined consume of [String : [Double]].Iterator._Variant(v26);
}

{
  specialized LazyMapSequence.makeIterator()(a1, a2, a3);
  v29 = a1;

  while (1)
  {
    v5 = specialized LazyMapSequence.Iterator.next()();
    if (!v6)
    {
      break;
    }

    v9 = v6;
    v31 = v7;
    v30 = v8;
    v10 = *a5;
    v32 = v5;
    v12 = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
    v13 = (v11 & 1) == 0;
    v14 = __OFADD__(v10[2], v13);
    v15 = v10[2] + v13;
    if (v14)
    {
      BUG();
    }

    v16 = v11;
    if (v10[3] >= v15)
    {
      if ((a4 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<String, String>);
        _NativeDictionary.copy()();
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v15, a4);
      v12 = specialized __RawDictionaryStorage.find<A>(_:)(v32, v9);
      LOBYTE(v18) = v18 & 1;
      if ((v16 & 1) != v18)
      {
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for String, v9, v18, v17);
        BUG();
      }
    }

    v19 = *a5;
    if (v16)
    {
      v9;
      v20 = v19[7];
      v21 = 16 * v12;
      *(v20 + v21 + 8);
      *(v20 + v21) = v31;
      *(v20 + v21 + 8) = v30;
    }

    else
    {
      v19[(v12 >> 6) + 8] |= 1 << v12;
      v22 = v19[6];
      v23 = 16 * v12;
      *(v22 + v23) = v32;
      *(v22 + v23 + 8) = v9;
      v24 = v19[7];
      *(v24 + v23) = v31;
      *(v24 + v23 + 8) = v30;
      v25 = v19[2];
      v14 = __OFADD__(1, v25);
      v26 = v25 + 1;
      if (v14)
      {
        BUG();
      }

      v19[2] = v26;
    }

    a4 = 1;
  }

  v29;

  outlined consume of [String : [Double]].Iterator._Variant(v28);
}

uint64_t outlined init with take of (key: URL, value: CIImage)?(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (key: URL, value: CIImage)?);
  (*(*(v2 - 8) + 32))(a2, a1, v2);
  return a2;
}

void *outlined retain of MLModelMetadata(void *a1)
{

  return a1;
}

uint64_t sub_5E03C()
{
  v1 = type metadata accessor for MLStyleTransfer.PersistentParameters(0);
  v2 = *(v1 - 8);
  v11 = *(v2 + 80);
  v3 = ~*(v2 + 80) & (v11 + 40);
  v12 = *(v2 + 64);
  swift_unknownObjectRelease(*(v0 + 16));

  v10 = v0;
  v4 = v3 + v0;
  v5 = type metadata accessor for URL(0);
  v6 = *(*(v5 - 8) + 8);
  v6(v4, v5);
  v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (styleImage: URL, contentDirectory: URL, processingOption: VNImageCropAndScaleOption?));
  v6(v4 + *(v7 + 48), v5);
  v8 = v4 + *(v1 + 24);
  if (!__swift_getEnumTagSinglePayload(v8, 1, v5))
  {
    v6(v8, v5);
  }

  return swift_deallocObject(v10, ((v12 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v11 | 7);
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in static MLStyleTransfer.resume(_:)(uint64_t a1)
{
  v3 = *(type metadata accessor for MLStyleTransfer.PersistentParameters(0) - 8);
  v4 = ~*(v3 + 80) & (*(v3 + 80) + 40);
  v5 = (v4 + *(v3 + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = v1[2];
  v12 = v1[3];
  v13 = v1[4];
  v7 = v1 + v4;
  v8 = *(v1 + v5);
  v9 = *(v1 + v5 + 8);
  v10 = swift_task_alloc(80);
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = partial apply for specialized closure #1 in blockAwait<A>(_:);
  return closure #1 in closure #1 in closure #1 in static MLStyleTransfer.resume(_:)(a1, v6, v12, v13, v7, v8, v9);
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in closure #1 in static MLStyleTransfer.resume(_:)(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = swift_task_alloc(80);
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in MLActivityClassifier.init(trainingData:featureColumns:labelColumn:recordingFileColumn:parameters:);
  return closure #1 in closure #1 in closure #1 in closure #1 in static MLStyleTransfer.resume(_:)(a1, v3, v4);
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF11TabularData9AnyColumnV_Say8CreateML16MLObjectDetectorV19DecodableAnnotationVGSgsAE_pTg503_s8h4ML16jk3V10e36SourceO23unpackAnnotationsColumnySayu4AC19lm7VGSgG07d4E003F18I0VKFZAJypSgKXEfU_10Foundation11JSONDecoderCTf1cn_n()
{
  v31 = v0;
  v1 = type metadata accessor for AnyColumn(0);
  v30 = lazy protocol witness table accessor for type AnyColumn and conformance AnyColumn();
  v2 = dispatch thunk of Collection.count.getter(v1, v30);
  if (!v2)
  {

    return _swiftEmptyArrayStorage;
  }

  v35 = _swiftEmptyArrayStorage;
  v3 = 0;
  if (v2 > 0)
  {
    v3 = v2;
  }

  v29 = v2;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3, 0);
  v32 = v35;
  dispatch thunk of Collection.startIndex.getter(v1, v30);
  if (v29 < 0)
  {
    BUG();
  }

  v4 = 0;
  v27 = v1;
  while (1)
  {
    v5 = __OFADD__(1, v4);
    v6 = v4 + 1;
    if (v5)
    {
      BUG();
    }

    v26 = v6;
    v7 = dispatch thunk of Collection.subscript.read(v38, v34, v1, v30);
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v8, v37, &demangling cache variable for type metadata for Any?);
    v7(v38, 0);
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v37, v36, &demangling cache variable for type metadata for Any?);
    if (!v36[3])
    {
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v36, &demangling cache variable for type metadata for Any?);
      v10 = 0;
      goto LABEL_11;
    }

    outlined init with take of Any(v36, v38);
    outlined init with copy of Any(v38, v36);
    v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [MLObjectDetector.DecodableAnnotation]);
    if (!swift_dynamicCast(&v33, v36, &type metadata for Any + 8, v9, 6))
    {
      break;
    }

    v10 = v33;
    __swift_destroy_boxed_opaque_existential_1Tm(v38);
LABEL_11:
    v11 = v32;
LABEL_15:
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v37, &demangling cache variable for type metadata for Any?);
    v35 = v11;
    v23 = v11[2];
    if (v11[3] >> 1 <= v23)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v11[3] >= 2uLL, v23 + 1, 1);
      v11 = v35;
    }

    v11[2] = v23 + 1;
    v32 = v11;
    v11[v23 + 4] = v10;
    v1 = v27;
    dispatch thunk of Collection.formIndex(after:)(v34, v27, v30);
    v4 = v26;
    if (v26 == v29)
    {

      return v11;
    }
  }

  v28 = v9;
  v12 = objc_opt_self(NSJSONSerialization);
  v13 = v39;
  v14 = __swift_project_boxed_opaque_existential_0Tm(v38, v39);
  v15 = _bridgeAnythingToObjectiveC<A>(_:)(v14, v13);
  v36[0] = 0;
  v16 = [v12 dataWithJSONObject:v15 options:0 error:v36];
  v17 = v16;
  swift_unknownObjectRelease(v15);
  v18 = v36[0];
  if (!v17)
  {
    v25 = v18;
    _convertNSErrorToError(_:)(v18);

    swift_willThrow();
    goto LABEL_22;
  }

  v19 = static Data._unconditionallyBridgeFromObjectiveC(_:)(v17);
  v21 = v20;

  v22 = lazy protocol witness table accessor for type [MLObjectDetector.DecodableAnnotation] and conformance <A> [A]();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)(v28, v19, v21, v28, v22);
  if (!v31)
  {
    v31 = 0;
    outlined consume of Data._Representation(v19, v21);
    __swift_destroy_boxed_opaque_existential_1Tm(v38);
    v10 = v36[0];
    v11 = v32;
    goto LABEL_15;
  }

  outlined consume of Data._Representation(v19, v21);
LABEL_22:
  __swift_destroy_boxed_opaque_existential_1Tm(v38);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v37, &demangling cache variable for type metadata for Any?);
}

void *MLObjectDetector.DataSource.gatherAnnotatedImages(annotationType:)(__int16 *a1)
{
  v82 = v1;
  v74 = v2;
  v68 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for AnnotatedFeature<String, [MLObjectDetector.NormalizedAnnotation]>);
  v70 = *(v68 - 8);
  v3 = *(v70 + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v69 = &v64;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Zip2Sequence<Column<String>, [[MLObjectDetector.DecodableAnnotation]?]>) - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v66 = &v64;
  v65 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Zip2Sequence<Column<String>, [[MLObjectDetector.DecodableAnnotation]?]>.Iterator);
  v9 = *(*(v65 - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v84 = &v64;
  v78 = type metadata accessor for AnyColumn(0);
  v85 = *(v78 - 8);
  v12 = v85[8];
  v13 = alloca(v12);
  v14 = alloca(v12);
  v83 = &v64;
  v80 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<String>);
  v75 = *(v80 - 8);
  v15 = *(v75 + 64);
  v16 = alloca(v15);
  v17 = alloca(v15);
  v81 = &v64;
  v18 = alloca(v15);
  v19 = alloca(v15);
  v76 = &v64;
  v20 = type metadata accessor for DataFrame(0);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = alloca(v22);
  v24 = alloca(v22);
  v86 = *a1;
  v25 = *(a1 + 2);
  v77 = &v64;
  v26 = v82;
  result = MLObjectDetector.DataSource.gatherAnnotatedFileNames()();
  if (!v26)
  {
    v87 = v25;
    v72 = v20;
    v71 = v21;
    v28 = v81;
    DataFrame.subscript.getter(0x7461506567616D69, 0xE900000000000068, &type metadata for String);
    v29 = v80;
    Column.map<A>(_:)(closure #1 in MLObjectDetector.DataSource.gatherAnnotatedImages(annotationType:), 0, v80, &type metadata for String);
    v82 = 0;
    v73 = *(v75 + 8);
    v73(v28, v29);
    v30 = v77;
    DataFrame.subscript.getter(0x697461746F6E6E61, 0xEA00000000006E6FLL);
    v31 = type metadata accessor for JSONDecoder(0);
    swift_allocObject(v31, *(v31 + 48), *(v31 + 52));
    JSONDecoder.init()();
    v32 = v82;
    ML16MLObjectDetectorV19DecodableAnnotationVGSgsAE_pTg503_s8h4ML16jk3V10e36SourceO23unpackAnnotationsColumnySayu4AC19lm7VGSgG07d4E003F18I0VKFZAJypSgKXEfU_10Foundation11JSONDecoderCTf1cn_n = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF11TabularData9AnyColumnV_Say8CreateML16MLObjectDetectorV19DecodableAnnotationVGSgsAE_pTg503_s8h4ML16jk3V10e36SourceO23unpackAnnotationsColumnySayu4AC19lm7VGSgG07d4E003F18I0VKFZAJypSgKXEfU_10Foundation11JSONDecoderCTf1cn_n();
    v34 = v29;
    v35 = v76;
    if (!v32)
    {
      v79 = 0;
      v36 = v83;
      v83 = ML16MLObjectDetectorV19DecodableAnnotationVGSgsAE_pTg503_s8h4ML16jk3V10e36SourceO23unpackAnnotationsColumnySayu4AC19lm7VGSgG07d4E003F18I0VKFZAJypSgKXEfU_10Foundation11JSONDecoderCTf1cn_n;
      (v85[1])(v36, v78);
      v37 = v66;
      v38 = v35;
      v39 = v75;
      (*(v75 + 16))(v66, v38, v34);
      (*(v39 + 32))(v81, v37, v34);
      v40 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<String> and conformance Column<A>, &demangling cache variable for type metadata for Column<String>, &protocol conformance descriptor for Column<A>);
      v41 = v84;
      dispatch thunk of Sequence.makeIterator()(v34, v40);
      v42 = v65;
      v43 = *(v65 + 52);
      *(v41 + v43) = v83;
      v75 = v43;
      *(v41 + v43 + 8) = 0;
      v78 = *(v42 + 56);
      *(v41 + v78) = 0;
      v82 = (v41 + *(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for IndexingIterator<Column<String>>) + 36));
      v44 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<String> and conformance Column<A>, &demangling cache variable for type metadata for Column<String>, &protocol conformance descriptor for Column<A>);
      v85 = _swiftEmptyArrayStorage;
      v74 = 0;
      while (1)
      {
        v45 = v80;
        dispatch thunk of Collection.endIndex.getter(v80, v44);
        if (*v82 == v67[0])
        {
          goto LABEL_20;
        }

        v46 = dispatch thunk of Collection.subscript.read(v67, v82, v45, v44);
        v81 = *v47;
        v48 = v47[1];

        v46(v67, 0);
        v49 = v44;
        dispatch thunk of Collection.formIndex(after:)(v82, v80, v44);
        if (v74 == v83[2])
        {
          v48;
          v45 = v80;
LABEL_20:
          v63 = v84;
          *(v84 + v78) = 1;
          outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v63, &demangling cache variable for type metadata for Zip2Sequence<Column<String>, [[MLObjectDetector.DecodableAnnotation]?]>.Iterator);
          v73(v76, v45);
          (*(v71 + 8))(v77, v72);
          return v85;
        }

        if (v74 >= v83[2])
        {
          BUG();
        }

        v50 = v83[v74 + 4];
        v51 = v74 + 1;
        *(v84 + v75 + 8) = v74 + 1;
        v74 = v51;
        if (v48)
        {
          if (v50)
          {
            LOWORD(v67[0]) = v86;
            BYTE2(v67[0]) = v87;

            v52 = v79;
            v53 = static MLObjectDetector.DataSource.normalizedAnnotations(annotatedObjects:filename:annotationType:)(v50, v81, v48, v67);
            v79 = v52;
            v54 = v50;
            if (v52)
            {
              v50;
              v48;
              outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v84, &demangling cache variable for type metadata for Zip2Sequence<Column<String>, [[MLObjectDetector.DecodableAnnotation]?]>.Iterator);
              v73(v76, v80);
              (*(v71 + 8))(v77, v72);
              return v85;
            }

            v55 = v53;
            v54;
            v67[0] = v81;
            v67[1] = v48;
            v64 = v55;
            v56 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [MLObjectDetector.NormalizedAnnotation]);
            AnnotatedFeature.init(feature:annotation:)(v67, &v64, &type metadata for String, v56);
            if (!swift_isUniquelyReferenced_nonNull_native(v85))
            {
              v85 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v85[2] + 1, 1, v85);
            }

            v57 = v68;
            v58 = v70;
            v59 = v85;
            v60 = v85[2];
            v61 = v69;
            if (v85[3] >> 1 <= v60)
            {
              v59 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v85[3] >= 2uLL, v60 + 1, 1, v85);
              v61 = v69;
              v58 = v70;
            }

            v59[2] = v60 + 1;
            v62 = *(v58 + 80);
            v85 = v59;
            (*(v58 + 32))(v59 + ((v62 + 32) & ~v62) + *(v58 + 72) * v60, v61, v57);
          }

          else
          {
            v48;
          }
        }

        v44 = v49;
      }
    }

    (v85[1])(v83, v78);
    v73(v35, v34);
    return (*(v71 + 8))(v30, v72);
  }

  return result;
}

uint64_t MLObjectDetector.ObjectAnnotation.init(label:boundingBox:confidence:)(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6, double a7)
{
  *result = a1;
  *(result + 8) = a2;
  *(result + 16) = a3;
  *(result + 24) = a4;
  *(result + 32) = a5;
  *(result + 40) = a6;
  *(result + 48) = a7;
  return result;
}

uint64_t MLObjectDetector.DataSource.gatherAnnotatedFileNames()()
{
  v191._object = v1;
  v196._countAndFlagsBits = v2;
  v186 = v0;
  v175 = type metadata accessor for DataFrame.Slice(0);
  v181 = *(v175 - 8);
  v3 = *(v181 + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v179 = &v165;
  v6 = alloca(v3);
  v7 = alloca(v3);
  v176 = &v165;
  v180 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<String>);
  v178 = *(v180 - 8);
  v8 = *(v178 + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v177 = &v165;
  v183 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FilledColumn<Column<String>>);
  v182 = *(v183 - 8);
  v11 = *(v182 + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v187 = &v165;
  v14 = *(*(type metadata accessor for JSONReadingOptions(0) - 8) + 64);
  v15 = alloca(v14);
  v16 = alloca(v14);
  v173 = &v165;
  v192._countAndFlagsBits = type metadata accessor for DataFrame(0);
  v190 = *(v192._countAndFlagsBits - 8);
  v17 = *(v190 + 64);
  v18 = alloca(v17);
  v19 = alloca(v17);
  v191._countAndFlagsBits = &v165;
  v20 = alloca(v17);
  v21 = alloca(v17);
  v192._object = &v165;
  v22 = type metadata accessor for MLObjectDetector.DataSource(0);
  v23 = *(*(v22 - 8) + 64);
  v24 = alloca(v23);
  v25 = alloca(v23);
  v195 = type metadata accessor for URL(0);
  v26 = *(v195 - 1);
  v27 = v26[8];
  v28 = alloca(v27);
  v29 = alloca(v27);
  v174 = &v165;
  v30 = alloca(v27);
  v31 = alloca(v27);
  v188 = &v165;
  v32 = alloca(v27);
  v33 = alloca(v27);
  _._countAndFlagsBits = &v165;
  v34 = alloca(v27);
  v35 = alloca(v27);
  named = &v165;
  v36 = alloca(v27);
  v37 = alloca(v27);
  outlined init with copy of MLObjectDetector.DataSource(v196._countAndFlagsBits, &v165);
  switch(swift_getEnumCaseMultiPayload(&v165, v22))
  {
    case 0u:
      (v26[4])(_._countAndFlagsBits, &v165, v195);
      v196._countAndFlagsBits = &v165;
      URL.resolvingSymlinksInPath()();
      v38 = named;
      URL.resolvingSymlinksInPath()();
      v192._object = v26;
      v39 = v26[1];
      v40 = v195;
      v39(_._countAndFlagsBits, v195);
      goto LABEL_9;
    case 1u:
      v55 = &v165 + *(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL)) + 48);
      v196._countAndFlagsBits = v26[4];
      v56 = v195;
      (v196._countAndFlagsBits)(_._countAndFlagsBits, &v165, v195);
      (v196._countAndFlagsBits)(v188, v55, v56);
      v196._countAndFlagsBits = &v165;
      URL.resolvingSymlinksInPath()();
      v38 = named;
      v57 = v188;
      URL.resolvingSymlinksInPath()();
      v192._object = v26;
      v39 = v26[1];
      v58 = v57;
      v40 = v195;
      v39(v58, v195);
      v39(_._countAndFlagsBits, v40);
LABEL_9:
      object = v191._object;
      v60 = static _FileUtilities.getReadableJsonFilesInDirectory(at:)(v38);
      _._countAndFlagsBits = object;
      if (object)
      {
        v39(v38, v40);
        return v39(v196._countAndFlagsBits, v40);
      }

      v62 = v60;
      v191._object = v39;
      v63 = *(v60 + 16);
      if (v63 >= 2)
      {
        v189._countAndFlagsBits = 0;
        v189._object = 0xE000000000000000;
        _StringGuts.grow(_:)(58);
        v64._object = "with object annotations." + 0x8000000000000000;
        v64._countAndFlagsBits = 0xD000000000000037;
        String.append(_:)(v64);
        v62;
        v184 = v63;
        v65 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
        v67 = v66;
        v64._countAndFlagsBits = v65;
        v64._object = v66;
        String.append(_:)(v64);
        v67;
        v64._countAndFlagsBits = 46;
        v64._object = 0xE100000000000000;
        String.append(_:)(v64);
        _ = v189;
        v68 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
        swift_allocError(&type metadata for MLCreateError, v68, 0, 0);
        *v69 = _;
        *(v69 + 16) = 0;
        *(v69 + 32) = 0;
        *(v69 + 48) = 0;
        swift_willThrow();
        v70 = v195;
        v71 = v191._object;
        (v191._object)(named, v195);
        return v71(v196._countAndFlagsBits, v70);
      }

      if (!v63)
      {
        v60;
        v109 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
        swift_allocError(&type metadata for MLCreateError, v109, 0, 0);
        *v110 = 0xD000000000000058;
        *(v110 + 8) = " specified data source." + 0x8000000000000000;
        *(v110 + 16) = 0;
        *(v110 + 32) = 0;
        *(v110 + 48) = 0;
        swift_willThrow();
        v91 = v191._object;
        (v191._object)(named, v40);
        countAndFlagsBits = v196._countAndFlagsBits;
        return v91(countAndFlagsBits, v40);
      }

      v86 = v174;
      (*(v192._object + 2))(v174, ((*(v192._object + 80) + 32) & ~*(v192._object + 80)) + v60, v40);
      v62;
      v87 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_11TabularData8JSONTypeOTt0gq5(_swiftEmptyArrayStorage);
      v88 = v173;
      JSONReadingOptions.init()(_swiftEmptyArrayStorage);
      v89 = _._countAndFlagsBits;
      DataFrame.init(contentsOfJSONFile:columns:types:options:)(v86, 0, v87, v88);
      v90 = v196._countAndFlagsBits;
      if (v89)
      {
        v91 = v191._object;
        (v191._object)(named, v40);
        countAndFlagsBits = v90;
        return v91(countAndFlagsBits, v40);
      }

      _._countAndFlagsBits = &v165;
      v113._object = 0xED0000656D616E65;
      v114 = v196._countAndFlagsBits;
      v115 = alloca(24);
      v116 = alloca(32);
      v167 = v196._countAndFlagsBits;
      v113._countAndFlagsBits = 0x6C69666567616D69;
      v117 = v191._countAndFlagsBits;
      MLE10findColumn11defaultName4type5whereS2S_xmSbxSgXEtKlFSS_Tt0g5 = _s11TabularData0B5FrameV8CreateMLE10findColumn11defaultName4type5whereS2S_xmSbxSgXEtKlFSS_Tt0g5(v113, partial apply for closure #1 in MLObjectDetector.DataSource.gatherAnnotatedFileNames(), &v165);
      v119 = v114;
      LOBYTE(v114) = v122;
      v196._countAndFlagsBits = v119;
      v113._countAndFlagsBits = MLE10findColumn11defaultName4type5whereS2S_xmSbxSgXEtKlFSS_Tt0g5;
      v113._object = v122;
      v123._countAndFlagsBits = 0x6C69666567616D69;
      v123._object = 0xED0000656D616E65;
      DataFrame.renameColumn(_:to:)(v113, v123);
      v114;
      v113._countAndFlagsBits = 0x697461746F6E6E61;
      v113._object = 0xEA00000000006E6FLL;
      v124._countAndFlagsBits = _s11TabularData0B5FrameV8CreateMLE10findColumn11defaultName4type5whereS2S_xmSbxSgXEtKlFSayypSgG_Tt0g503_s8d23ML16MLObjectDetectorV10b35SourceO24gatherAnnotatedFileNames07a5E00E5C22VyKFSbSayypSgGSgXEfU0_Tf1ncn_n(v113, v117);
      v134 = v124._object;
      v135 = v124;
      v136._countAndFlagsBits = 0x697461746F6E6E61;
      v136._object = 0xEA00000000006E6FLL;
      DataFrame.renameColumn(_:to:)(v135, v136);
      v134;
      _._countAndFlagsBits = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<String>);
      v137._rawValue = swift_initStackObject(_._countAndFlagsBits, v171);
      *(v137._rawValue + 2) = 1;
      *(v137._rawValue + 3) = 2;
      strcpy(v137._rawValue + 32, "imagefilename");
      *(v137._rawValue + 23) = -4864;
      DataFrame.validateContainsColumns(_:context:)(v137, __PAIR128__(0xEF656D616E20656CLL, 0x6966206567616D49));
      v138 = v192._countAndFlagsBits;
      if (v139)
      {
        swift_setDeallocating(v137._rawValue);
        specialized _ContiguousArrayStorage.__deallocating_deinit();
        (*(v190 + 8))(v191._countAndFlagsBits, v138);
        v140 = v195;
        v141 = v191._object;
        (v191._object)(named, v195);
        return v141(v196._countAndFlagsBits, v140);
      }

      else
      {
        swift_setDeallocating(v137._rawValue);
        specialized _ContiguousArrayStorage.__deallocating_deinit();
        inited = swift_initStackObject(_._countAndFlagsBits, v172);
        inited[2] = 1;
        inited[3] = 2;
        inited[4] = 0x697461746F6E6E61;
        inited[5] = 0xEA00000000006E6FLL;
        _._countAndFlagsBits = inited;
        v143 = v191._countAndFlagsBits;
        DataFrame.validateContainsColumns(_:context:)(inited, __PAIR128__(0xEA00000000006E6FLL, 0x697461746F6E6E41));
        if (v144)
        {
          swift_setDeallocating(_._countAndFlagsBits);
          specialized _ContiguousArrayStorage.__deallocating_deinit();
          (*(v190 + 8))(v143, v138);
          v145 = v195;
          v146 = v191._object;
          (v191._object)(named, v195);
          return v146(v196._countAndFlagsBits, v145);
        }

        else
        {
          swift_setDeallocating(_._countAndFlagsBits);
          specialized _ContiguousArrayStorage.__deallocating_deinit();
          v147 = v177;
          DataFrame.subscript.getter(0x6C69666567616D69, 0xED0000656D616E65, &type metadata for String);
          _._countAndFlagsBits = 0;
          v189._countAndFlagsBits = 0;
          v189._object = 0xE000000000000000;
          v148 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<String> and conformance Column<A>, &demangling cache variable for type metadata for Column<String>, &protocol conformance descriptor for Column<A>);
          v149 = v180;
          OptionalColumnProtocol.filled(with:)(&v189, v180, v148);
          v192._object = *(v178 + 8);
          (v192._object)(v147, v149);
          v150 = alloca(24);
          v151 = alloca(32);
          v167 = v196._countAndFlagsBits;
          v152 = _._countAndFlagsBits;
          v153 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF11TabularData12FilledColumnVyAF0G0VySSGG_SSs5NeverOTg5(partial apply for closure #3 in MLObjectDetector.DataSource.gatherAnnotatedFileNames(), &v165);
          _._countAndFlagsBits = v152;
          v189._countAndFlagsBits = v153;
          v154 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String]);
          v155 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type [String] and conformance [A], &demangling cache variable for type metadata for [String], &protocol conformance descriptor for [A]);
          Column.init<A>(name:contents:)(0x7461506567616D69, 0xE900000000000068, &v189, &type metadata for String, v154, v155);
          DataFrame.append<A>(column:)(v147, &type metadata for String);
          (v192._object)(v147, v180);
          v156 = v176;
          v157 = _._countAndFlagsBits;
          DataFrame.filter<A>(on:_:_:)(0x7461506567616D69, 0xE900000000000068, &type metadata for String, closure #4 in MLObjectDetector.DataSource.gatherAnnotatedFileNames(), 0, &type metadata for String);
          _._countAndFlagsBits = v157;
          v158 = v175;
          if (DataFrameProtocol.isEmpty.getter(v175, &protocol witness table for DataFrame.Slice))
          {
            v159 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
            swift_allocError(&type metadata for MLCreateError, v159, 0, 0);
            *v160 = 0xD000000000000027;
            *(v160 + 8) = " required column '" + 0x8000000000000000;
            *(v160 + 16) = 0;
            *(v160 + 32) = 0;
            *(v160 + 48) = 0;
            swift_willThrow();
            (*(v181 + 8))(v156, v158);
          }

          else
          {
            v163 = v179;
            v164 = v181;
            (*(v181 + 16))(v179, v156, v158);
            DataFrame.init(_:)(v163);
            (*(v164 + 8))(v156, v158);
          }

          (*(v182 + 8))(v187, v183);
          (*(v190 + 8))(v191._countAndFlagsBits, v192._countAndFlagsBits);
          v161 = v195;
          v162 = v191._object;
          (v191._object)(named, v195);
          return v162(v196._countAndFlagsBits, v161);
        }
      }

    case 2u:
      v41 = v165;
      LOBYTE(v196._countAndFlagsBits) = v166;
      v42 = v167;
      named = v168;
      v192 = v169;
      v195 = v165;
      if (v166)
      {
        outlined copy of Result<_DataTable, Error>(v165, 1);
        v43 = tc_v1_flex_list_create(0);
        if (!v43)
        {
          BUG();
        }

        v44 = v43;
        v45 = type metadata accessor for CMLSequence();
        v46 = swift_allocObject(v45, 25, 7);
        *(v46 + 16) = v44;
        *(v46 + 24) = 1;
        outlined consume of Result<_DataTable, Error>(v41, 1);
      }

      else
      {
        outlined copy of Result<_DataTable, Error>(v165, 0);
        _DataTable.columnNames.getter();
        outlined consume of Result<_DataTable, Error>(v41, 0);
        v46 = v184;
      }

      v188 = v42;
      v189._countAndFlagsBits = v42;
      v72 = named;
      v189._object = named;
      v73 = alloca(24);
      v74 = alloca(32);
      v167 = &v189;
      v75 = v191._object;
      v76 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), &v165, v46);
      _._countAndFlagsBits = v75;

      if ((v76 & 1) == 0)
      {
        v192._object;
        v189._countAndFlagsBits = 0;
        v189._object = 0xE000000000000000;
        _StringGuts.grow(_:)(38);
        v189._object;
        v189._countAndFlagsBits = 0xD000000000000022;
        v189._object = "Number of Samples" + 0x8000000000000000;
        v82._countAndFlagsBits = v188;
LABEL_30:
        v82._object = v72;
        String.append(_:)(v82);
        v72;
        v101._object = 0xE200000000000000;
        v101._countAndFlagsBits = 11815;
        String.append(_:)(v101);
        _ = v189;
        v102 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
        swift_allocError(&type metadata for MLCreateError, v102, 0, 0);
        *v103 = _;
        *(v103 + 16) = 0;
        *(v103 + 32) = 0;
        *(v103 + 48) = 0;
        swift_willThrow();
        return outlined consume of Result<_DataTable, Error>(v195, v196._countAndFlagsBits);
      }

      if (LOBYTE(v196._countAndFlagsBits))
      {
        v77 = v195;
        outlined copy of Result<_DataTable, Error>(v195, 1);
        v78 = tc_v1_flex_list_create(0);
        if (!v78)
        {
          BUG();
        }

        v79 = v78;
        v80 = type metadata accessor for CMLSequence();
        v81 = swift_allocObject(v80, 25, 7);
        *(v81 + 16) = v79;
        *(v81 + 24) = 1;
        outlined consume of Result<_DataTable, Error>(v77, 1);
      }

      else
      {
        v93 = v195;
        outlined copy of Result<_DataTable, Error>(v195, 0);
        _DataTable.columnNames.getter();
        outlined consume of Result<_DataTable, Error>(v93, 0);
        v81 = v184;
      }

      v189 = v192;
      v72 = v192._object;
      v94 = alloca(24);
      v95 = alloca(32);
      v167 = &v189;
      v96 = _._countAndFlagsBits;
      v97 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, &v165, v81);
      _._countAndFlagsBits = v96;

      if ((v97 & 1) == 0)
      {
        named;
        v189._countAndFlagsBits = 0;
        v189._object = 0xE000000000000000;
        _StringGuts.grow(_:)(38);
        v189._object;
        v189._countAndFlagsBits = 0xD000000000000022;
        v189._object = "Number of Samples" + 0x8000000000000000;
        v82._countAndFlagsBits = v192._countAndFlagsBits;
        goto LABEL_30;
      }

      v98 = v195;
      v189._countAndFlagsBits = v195;
      v99 = v196._countAndFlagsBits;
      LOBYTE(v189._object) = v196._countAndFlagsBits;
      v100 = named;
      if (!(v188 ^ 0x6C69666567616D69 | named ^ 0xED0000656D616E65))
      {
        outlined copy of Result<_DataTable, Error>(v195, v196._countAndFlagsBits);
LABEL_35:
        v100;
        v112 = v99;
        goto LABEL_41;
      }

      v111 = _stringCompareWithSmolCheck(_:_:expecting:)(v188, named, 0x6C69666567616D69, 0xED0000656D616E65, 0);
      outlined copy of Result<_DataTable, Error>(v98, v99);
      if (v111)
      {
        goto LABEL_35;
      }

      MLDataTable.willMutate()();
      v120._countAndFlagsBits = 0x7461506567616D69;
      v120._object = 0xE900000000000068;
      v121._countAndFlagsBits = v188;
      v121._object = v100;
      MLDataTable.renameImpl(named:to:)(v121, v120);
      if (LOBYTE(v189._object))
      {
        v100;
        v112 = 1;
      }

      else
      {
        v125 = v189._countAndFlagsBits;
        v126 = v100;
        v112 = 0;
        outlined copy of Result<_DataTable, Error>(v189._countAndFlagsBits, 0);
        _DataTable.columnNamesDidChange()();
        outlined consume of Result<_DataTable, Error>(v125, 0);
        v126;
      }

      v99 = v196._countAndFlagsBits;
LABEL_41:
      v127 = v192._countAndFlagsBits;
      if (v192._countAndFlagsBits ^ 0x697461746F6E6E61 | v192._object ^ 0xEA00000000006E6FLL)
      {
        if ((_stringCompareWithSmolCheck(_:_:expecting:)(v192._countAndFlagsBits, v192._object, 0x697461746F6E6E61, 0xEA00000000006E6FLL, 0) & 1) == 0)
        {
          MLDataTable.willMutate()();
          v129._countAndFlagsBits = v127;
          v130 = v192._object;
          v129._object = v192._object;
          v131._countAndFlagsBits = 0x697461746F6E6E61;
          v131._object = 0xEA00000000006E6FLL;
          MLDataTable.renameImpl(named:to:)(v129, v131);
          if (LOBYTE(v189._object))
          {
            v130;
            v112 = 1;
          }

          else
          {
            v132 = v189._countAndFlagsBits;
            v112 = 0;
            outlined copy of Result<_DataTable, Error>(v189._countAndFlagsBits, 0);
            _DataTable.columnNamesDidChange()();
            outlined consume of Result<_DataTable, Error>(v132, 0);
            v130;
          }

          v99 = v196._countAndFlagsBits;
          goto LABEL_50;
        }

        v128 = v192._object;
      }

      else
      {
        v128 = v192._object;
      }

      v128;
LABEL_50:
      v133 = v189._countAndFlagsBits;
      v184 = v189._countAndFlagsBits;
      v185 = v112;
      outlined copy of Result<_DataTable, Error>(v189._countAndFlagsBits, v112);
      DataFrame.init(_:)(&v184);
      outlined consume of Result<_DataTable, Error>(v195, v99);
      return outlined consume of Result<_DataTable, Error>(v133, v112);
    case 3u:
      v47 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, imageColumn: String, annotationColumn: String));
      v48 = *(v47 + 48);
      v49 = *(&v165 + v48);
      _._countAndFlagsBits = *(&v165 + v48 + 8);
      v50 = *(v47 + 64);
      v196._countAndFlagsBits = *(&v165 + v50);
      v195 = *(&v165 + v50 + 8);
      v188 = *(v190 + 32);
      (v188)(v192._object, &v165, v192._countAndFlagsBits);
      named = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<String>);
      v51 = swift_initStackObject(named, &v165);
      v51[2] = 1;
      v51[3] = 2;
      v191._countAndFlagsBits = v49;
      v51[4] = v49;
      v52 = _._countAndFlagsBits;
      v51[5] = _._countAndFlagsBits;

      DataFrame.validateContainsColumns(_:context:)(v51, __PAIR128__(0xEF656D616E20656CLL, 0x6966206567616D49));
      if (v53)
      {
        (*(v190 + 8))(v192._object, v192._countAndFlagsBits);
        swift_setDeallocating(v51);
        specialized _ContiguousArrayStorage.__deallocating_deinit();
        v52;
        v54 = v195;
      }

      else
      {
        swift_setDeallocating(v51);
        specialized _ContiguousArrayStorage.__deallocating_deinit();
        v83 = swift_initStackObject(named, v170);
        v83[2] = 1;
        v83[3] = 2;
        v83[4] = v196._countAndFlagsBits;
        v84 = v195;
        v83[5] = v195;

        DataFrame.validateContainsColumns(_:context:)(v83, __PAIR128__(0xEA00000000006E6FLL, 0x697461746F6E6E41));
        if (!v85)
        {
          swift_setDeallocating(v83);
          specialized _ContiguousArrayStorage.__deallocating_deinit();
          v104._countAndFlagsBits = 0x7461506567616D69;
          v104._object = 0xE900000000000068;
          v105._countAndFlagsBits = v191._countAndFlagsBits;
          v106 = _._countAndFlagsBits;
          v105._object = _._countAndFlagsBits;
          v107 = v192._object;
          DataFrame.renameColumn(_:to:)(v105, v104);
          v106;
          v105._countAndFlagsBits = v196._countAndFlagsBits;
          v105._object = v84;
          v108._countAndFlagsBits = 0x697461746F6E6E61;
          v108._object = 0xEA00000000006E6FLL;
          DataFrame.renameColumn(_:to:)(v105, v108);
          v84;
          return (v188)(v186, v107, v192._countAndFlagsBits);
        }

        (*(v190 + 8))(v192._object, v192._countAndFlagsBits);
        swift_setDeallocating(v83);
        specialized _ContiguousArrayStorage.__deallocating_deinit();
        _._countAndFlagsBits;
        v54 = v84;
      }

      return v54;
    case 4u:
      JUMPOUT(0x5FF08);
  }
}

uint64_t type metadata accessor for MLObjectDetector.DataSource(uint64_t a1)
{
  result = type metadata singleton initialization cache for MLObjectDetector.DataSource;
  if (!type metadata singleton initialization cache for MLObjectDetector.DataSource)
  {
    return swift_getSingletonMetadata(a1, &nominal type descriptor for MLObjectDetector.DataSource);
  }

  return result;
}

uint64_t outlined init with copy of MLObjectDetector.DataSource(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for MLObjectDetector.DataSource(0);
  (*(*(v2 - 8) + 16))(a2, a1, v2);
  return a2;
}

uint64_t closure #1 in MLObjectDetector.DataSource.gatherAnnotatedFileNames()(uint64_t *a1, uint64_t a2)
{
  v26 = a2;
  v24 = type metadata accessor for UTType(0);
  v23 = *(v24 - 8);
  v2 = *(v23 + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v25 = &v23;
  v28 = type metadata accessor for URL.DirectoryHint(0);
  v27 = *(v28 - 8);
  v5 = *(v27 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?) - 8) + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v11 = type metadata accessor for URL(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v16 = a1[1];
  if (v16)
  {
    v30 = *a1;
    v31 = &v23;
    v17 = v11;
    v29 = v12;
    (*(v12 + 16))(&v23, v26);
    __swift_storeEnumTagSinglePayload(&v23, 0, 1, v17);
    (*(v27 + 104))(&v23, enum case for URL.DirectoryHint.inferFromPath(_:), v28);

    v18 = v31;
    URL.init(filePath:directoryHint:relativeTo:)(v30, v16, &v23, &v23);
    v19 = v25;
    static UTType.image.getter();
    LOBYTE(v20) = static _FileUtilities.isReadableFile(at:of:)(v18, v19);
    v21 = v20;
    (*(v23 + 8))(v19, v24);
    (*(v29 + 8))(v18, v17);
  }

  else
  {
    return 0;
  }

  return v21;
}

uint64_t _s11TabularData0B5FrameV8CreateMLE10findColumn11defaultName4type5whereS2S_xmSbxSgXEtKlFSS_Tt0g5(Swift::String a1, uint64_t (*a2)(void **), uint64_t a3)
{
  v88 = v3;
  v85[1] = a3;
  v86 = a2;
  v97._object = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<String>);
  v100 = *(v97._object - 1);
  v5 = *(v100 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v87 = v85;
  v8 = alloca(v5);
  v9 = alloca(v5);
  v90 = v85;
  v10 = alloca(v5);
  v11 = alloca(v5);
  v89 = v85;
  v12 = alloca(v5);
  v13 = alloca(v5);
  v99 = v85;
  v108 = type metadata accessor for AnyColumn(0);
  v107 = *(v108 - 8);
  v14 = v107[8];
  v15 = alloca(v14);
  v16 = alloca(v14);
  v95 = v85;
  v17 = alloca(v14);
  v18 = alloca(v14);
  v19 = v85;
  v20 = alloca(v14);
  v21 = alloca(v14);
  v98 = v85;
  v97._countAndFlagsBits = a1._countAndFlagsBits;
  object = a1._object;
  v22 = DataFrame.indexOfColumn(_:)(a1);
  v93 = v4;
  v94 = v85;
  if (!v22.is_nil)
  {
    value = v22.value;
    v24 = DataFrame.columns.getter(a1._countAndFlagsBits);
    if (value < 0)
    {
      BUG();
    }

    if (value >= *(v24 + 16))
    {
      BUG();
    }

    v25 = v107;
    v26 = ((*(v107 + 80) + 32) & ~*(v107 + 80)) + v24 + v107[9] * value;
    v27 = v98;
    v105 = v24;
    v28 = v108;
    (v107[2])(v98, v26, v108);
    v29 = v105;
    v105;
    v30 = AnyColumn.wrappedElementType.getter(v29);
    a1._countAndFlagsBits = v27;
    (v25[1])(v27, v28);
    v19 = v94;
    if (v30 == &type metadata for String)
    {

      return v97._countAndFlagsBits;
    }
  }

  if (DataFrame.shape.getter(a1._countAndFlagsBits) <= 0)
  {
    v60 = "not in Data Table." + 0x8000000000000000;
    v61 = 0xD00000000000001ALL;
LABEL_43:
    v76 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v76, 0, 0);
    *v77 = v61;
    *(v77 + 8) = v60;
    *(v77 + 16) = 0;
    *(v77 + 32) = 0;
    *(v77 + 48) = 1;
    swift_willThrow();
    return v61;
  }

  v31 = DataFrame.columns.getter(a1._countAndFlagsBits);
  v105 = *(v31 + 16);
  v104 = _swiftEmptyArrayStorage;
  v32 = 0;
  v33 = v108;
  v34 = v107;
  v103 = v31;
  while (v105 != v32)
  {
    if (v32 >= *(v31 + 16))
    {
      BUG();
    }

    v35 = v19;
    v36 = (*(v34 + 80) + 32) & ~*(v34 + 80);
    v106 = v34[9];
    (v34[2])(v35, v36 + v31 + v32 * v106, v33);
    if (AnyColumn.wrappedElementType.getter(v35) == &type metadata for String)
    {
      v91 = v32;
      v38 = v108;
      v92 = v34[4];
      v92(v95, v35, v108);
      v39 = v104;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v104);
      v101 = v39;
      if (isUniquelyReferenced_nonNull_native)
      {
        v41 = v38;
      }

      else
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v39[2] + 1, 1);
        v41 = v108;
        v39 = v101;
      }

      v42 = v106;
      v43 = v39[2];
      v44 = v39[3];
      v45 = v43 + 1;
      if (v44 >> 1 <= v43)
      {
        v48 = v39[2];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v44 >= 2, v45, 1);
        v43 = v48;
        v42 = v106;
        v41 = v108;
        v39 = v101;
      }

      v32 = v91 + 1;
      v39[2] = v45;
      v104 = v39;
      v46 = v39 + v36 + v42 * v43;
      v47 = v41;
      (v92)(v46, v95);
      v33 = v47;
      v34 = v107;
      v19 = v94;
      v31 = v103;
    }

    else
    {
      v37 = v108;
      (v34[1])(v35, v108);
      ++v32;
      v33 = v37;
      v19 = v35;
      v31 = v103;
    }
  }

  v31;
  v49 = v104;
  v50 = v104[2];
  if (v50)
  {
    v101 = _swiftEmptyArrayStorage;
    v105 = v50;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v50, 0);
    v51 = v108;
    v52 = v101;
    v53 = v104 + ((*(v34 + 80) + 32) & ~*(v34 + 80));
    v103 = v34[2];
    v106 = v34[9];
    do
    {
      v54 = v98;
      (v103)(v98, v53, v51);
      AnyColumn.assumingType<A>(_:)(&type metadata for String, &type metadata for String);
      v55 = v54;
      v56 = v108;
      (v107[1])(v55);
      v101 = v52;
      v57 = v52[2];
      v58 = v57 + 1;
      if (v52[3] >> 1 <= v57)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v52[3] >= 2uLL, v57 + 1, 1);
        v58 = v57 + 1;
        v56 = v108;
        v52 = v101;
      }

      v52[2] = v58;
      (*(v100 + 32))(v52 + ((*(v100 + 80) + 32) & ~*(v100 + 80)) + *(v100 + 72) * v57, v99, v97._object);
      v53 += v106;
      v59 = v105-- == &dword_0 + 1;
      v51 = v56;
    }

    while (!v59);
    v107 = v52;
    v49 = v104;
  }

  else
  {

    v107 = _swiftEmptyArrayStorage;
  }

  v62 = DataFrame.shape.getter(v49) * 0.2;
  if (COERCE__INT64(fabs(v62)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    BUG();
  }

  if (v62 <= -9.223372036854778e18)
  {
    BUG();
  }

  if (v62 >= 9.223372036854776e18)
  {
    BUG();
  }

  v63 = DataFrame.shape.getter(v49);
  v64 = 10;
  if (v63 < 10)
  {
    v64 = v63;
  }

  if (v64 <= v62)
  {
    v64 = v62;
  }

  if (v64 < 0)
  {
    BUG();
  }

  v65 = v97._object;
  v66 = v87;
  v67 = v107;
  if (!v64)
  {
LABEL_42:
    v67;
    v101 = 0;
    v102 = 0xE000000000000000;
    _StringGuts.grow(_:)(166);
    v75._object = "Annotations file is empty." + 0x8000000000000000;
    v75._countAndFlagsBits = 0xD000000000000098;
    String.append(_:)(v75);
    v75._countAndFlagsBits = v97._countAndFlagsBits;
    v75._object = object;
    String.append(_:)(v75);
    v75._countAndFlagsBits = 0x2E316567616D693ALL;
    v75._object = 0xEC0000002E67706ALL;
    String.append(_:)(v75);
    v61 = v101;
    v60 = v102;
    goto LABEL_43;
  }

  v106 = v107[2];
  v108 = 0;
  v68 = 0;
  v99 = v64;
  while (1)
  {
    if (__OFADD__(1, v68++))
    {
      BUG();
    }

    if (v106)
    {
      break;
    }

LABEL_41:
    v108 = v68;
    if (v68 == v64)
    {
      goto LABEL_42;
    }
  }

  v98 = v68;
  v70 = v100;
  v71 = v67 + ((*(v100 + 80) + 32) & ~*(v100 + 80));

  v105 = *(v70 + 16);
  v103 = *(v70 + 72);
  v72 = v106;
  while (1)
  {
    (v105)(v66, v71, v65);
    Column.subscript.getter(v108, v65);
    v73 = v86(&v101);
    v102;
    if (v73)
    {
      break;
    }

    v65 = v97._object;
    (*(v100 + 8))(v66, v97._object);
    v71 += v103;
    if (!--v72)
    {
      v74 = v107;
      v107;
      v67 = v74;
      v64 = v99;
      v68 = v98;
      goto LABEL_41;
    }
  }

  v78 = v107;
  v107;
  v79 = v90;
  v80 = v66;
  v81 = v97._object;
  v82 = *(v100 + 32);
  v82(v90, v80, v97._object);
  v78;
  v83 = v89;
  v82(v89, v79, v81);
  v61 = Column.name.getter(v81);
  (*(v100 + 8))(v83, v81);
  return v61;
}

uint64_t *closure #3 in MLObjectDetector.DataSource.gatherAnnotatedFileNames()(uint64_t *a1, uint64_t a2)
{
  v28 = a2;
  v27 = v2;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?) - 8) + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v34 = &v26;
  v6 = type metadata accessor for URL.DirectoryHint(0);
  v30 = *(v6 - 8);
  v7 = *(v30 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v32 = &v26;
  v35 = type metadata accessor for URL(0);
  v33 = *(v35 - 8);
  v10 = *(v33 + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v29 = &v26;
  v13 = alloca(v10);
  v14 = alloca(v10);
  v31 = *a1;
  v15 = a1[1];
  (*(v30 + 104))(&v26, enum case for URL.DirectoryHint.notDirectory(_:), v6);
  v16 = v34;
  v17 = v35;
  (*(v33 + 16))(v34, v28, v35);
  v18 = v16;
  v19 = v17;
  __swift_storeEnumTagSinglePayload(v18, 0, 1, v17);

  URL.init(filePath:directoryHint:relativeTo:)(v31, v15, v32, v34);
  v20 = v29;
  URL.absoluteURL.getter();
  v21 = *(v33 + 8);
  v21(&v26, v19);
  v22 = URL.path.getter(&v26);
  v24 = v23;
  v21(v20, v35);
  result = v27;
  *v27 = v22;
  result[1] = v24;
  return result;
}

uint64_t closure #4 in MLObjectDetector.DataSource.gatherAnnotatedFileNames()(uint64_t *a1)
{
  v22 = type metadata accessor for UTType(0);
  v21 = *(v22 - 8);
  v1 = *(v21 + 64);
  v2 = alloca(v1);
  v3 = alloca(v1);
  v23 = &v20;
  v25 = type metadata accessor for URL.DirectoryHint(0);
  v24 = *(v25 - 8);
  v4 = *(v24 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?) - 8) + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v10 = type metadata accessor for URL(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v15 = a1[1];
  if (v15)
  {
    v28 = *a1;
    v26 = v11;
    v27 = v10;
    __swift_storeEnumTagSinglePayload(&v20, 1, 1, v10);
    (*(v24 + 104))(&v20, enum case for URL.DirectoryHint.inferFromPath(_:), v25);

    URL.init(filePath:directoryHint:relativeTo:)(v28, v15, &v20, &v20);
    v16 = v23;
    static UTType.image.getter();
    LOBYTE(v17) = static _FileUtilities.isReadableFile(at:of:)(&v20, v16);
    v18 = v17;
    (*(v21 + 8))(v16, v22);
    (*(v26 + 8))(&v20, v27);
  }

  else
  {
    return 0;
  }

  return v18;
}

uint64_t static MLObjectDetector.DataSource.normalizedAnnotations(annotatedObjects:filename:annotationType:)(unint64_t *a1, uint64_t a2, uint64_t a3, char *a4)
{
  v41.f64[0] = v4;
  *&v42.f64[0] = a3;
  v44 = a1;
  v40 = type metadata accessor for URL(0);
  x = *(v40 - 8);
  v7 = *(*&x + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v10 = &v30;
  v45 = *a4;
  v46 = a4[1];
  v11 = a4[2];
  URL.init(fileURLWithPath:)(a2, *&v42.f64[0]);
  v12 = v41.f64[0];
  v13 = static ImageReader.read(url:)(&v30);
  if (v12 == 0.0)
  {
    v37 = 0;
    v39 = x;
    v14 = v13;
    objc_msgSend_stret(&rect, v13, "extent");
    v15.f64[1] = rect.origin.y;
    v15.f64[0] = CGRectGetWidth(rect);
    v41 = v15;
    objc_msgSend_stret(&rect, v14, "extent");
    v16.f64[1] = rect.origin.y;
    v16.f64[0] = CGRectGetHeight(rect);
    v17 = v44[2];
    if (v17)
    {
      v38 = v14;
      v31 = _mm_cvtpd_ps(_mm_unpacklo_pd(v41, v16));
      *&rect.origin.x = _swiftEmptyArrayStorage;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v17, 0);
      v18 = v17;
      x = rect.origin.x;
      v19 = v44 + 7;
      v35 = &v30;
      v43 = v11;
      do
      {
        inserted = *(v19 - 1);
        v21 = *v19;
        if ((v45 & 1) == 0)
        {
          inserted = _mm_div_ps(inserted, v31);
          v21 = _mm_div_ps(v21, v31);
        }

        if ((v46 & 1) == 0)
        {
          v22 = 0x3F800000u;
          v22.f32[0] = 1.0 - _mm_movehdup_ps(inserted).f32[0];
          inserted = _mm_insert_ps(inserted, v22, 16);
        }

        *&v41.f64[0] = v18;
        v30 = v21;
        if (v11)
        {
          if (v11 == 1)
          {
            v23 = _mm_mul_ps(v21, xmmword_33E870);
            inserted = _mm_blend_ps(_mm_sub_ps(inserted, v23), _mm_add_ps(inserted, v23), 13);
          }

          else
          {
            inserted = _mm_add_ps(inserted, _mm_mul_ps(v21, xmmword_33E870));
          }
        }

        v42 = inserted;
        v33 = *(v19 - 3);
        v24 = *(v19 - 2);
        rect.origin.x = x;
        v25 = *(*&x + 16);
        v36 = *(*&x + 24);
        v26 = v36 >> 1;
        v44 = v19;
        v34 = v24;

        if (v26 <= v25)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v36 >= 2, v25 + 1, 1);
          x = rect.origin.x;
        }

        *(*&x + 16) = v25 + 1;
        v27 = 32 * v25;
        *(*&x + v27 + 32) = v33;
        *(*&x + v27 + 40) = v34;
        *(*&x + v27 + 48) = _mm_unpacklo_pd(v42, v30);
        v19 = v44 + 4;
        v18 = *&v41.f64[0] - 1;
        v28 = v39;
        v10 = v35;
        v11 = v43;
      }

      while (*&v41.f64[0] != 1);
    }

    else
    {

      x = COERCE_DOUBLE(_swiftEmptyArrayStorage);
      v28 = v39;
    }

    (*(*&v28 + 8))(v10, v40);
  }

  else
  {
    (*(*&x + 8))(&v30, v40);
  }

  return *&x;
}

uint64_t MLObjectDetector.DataSource.stratifiedSplit(proportions:seed:annotationColumn:)(__int128 *a1, uint64_t a2, uint64_t a3, void *a4, __m128 a5)
{
  result = static _ImageUtilities.getImageURLsAndObjectAnnotations(from:imageColumnName:labelColumnName:)(v6, 0, 0, 0, 0, a5);
  if (!v5)
  {
    if (a2 < 0)
    {
      BUG();
    }

    v12 = v13;
    v9 = v14;
    v10 = type metadata accessor for MersenneTwisterGenerator();
    swift_allocObject(v10, 136, 7);
    v13 = MersenneTwisterGenerator.init(seed:)(a2);
    specialized stratifiedSplitGenerator<A>(proportions:generator:dataTable:on:)(a1, &v13, v12, v14, a3, a4, *a5.i64);

    return outlined consume of Result<_DataTable, Error>(v12, v9);
  }

  return result;
}

uint64_t MLObjectDetector.ObjectAnnotation.label.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t MLObjectDetector.ObjectAnnotation.label.setter(uint64_t a1, uint64_t a2)
{
  result = v2[1];
  *v2 = a1;
  v2[1] = a2;
  return result;
}

void MLObjectDetector.ObjectAnnotation.boundingBox.setter(double a1, double a2, double a3, double a4)
{
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = a4;
}

char MLObjectDetector.DecodableAnnotation.Coordinates.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  if (a2 ^ 0xE100000000000000 | a1 ^ 0x78 && (_stringCompareWithSmolCheck(_:_:expecting:)(120, 0xE100000000000000, a1, a2, 0) & 1) == 0)
  {
    if (a2 ^ 0xE100000000000000 | a1 ^ 0x79 && (_stringCompareWithSmolCheck(_:_:expecting:)(121, 0xE100000000000000, a1, a2, 0) & 1) == 0)
    {
      if (a1 ^ 0x6874646977 | a2 ^ 0xE500000000000000 && (_stringCompareWithSmolCheck(_:_:expecting:)(0x6874646977, 0xE500000000000000, a1, a2, 0) & 1) == 0)
      {
        if (a1 ^ 0x746867696568 | a2 ^ 0xE600000000000000)
        {
          v3 = _stringCompareWithSmolCheck(_:_:expecting:)(0x746867696568, 0xE600000000000000, a1, a2, 0);
          a2;
          return 4 - (v3 & 1);
        }

        else
        {
          a2;
          return 3;
        }
      }

      else
      {
        a2;
        return 2;
      }
    }

    else
    {
      a2;
      return 1;
    }
  }

  else
  {
    a2;
    return 0;
  }
}

Swift::Int MLObjectDetector.DecodableAnnotation.Coordinates.CodingKeys.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)(0);
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

uint64_t MLObjectDetector.DecodableAnnotation.Coordinates.CodingKeys.stringValue.getter(char a1)
{
  switch(a1)
  {
    case 0:
      result = 120;
      break;
    case 1:
      result = 121;
      break;
    case 2:
      result = 0x6874646977;
      break;
    case 3:
      result = 0x746867696568;
      break;
  }

  return result;
}

uint64_t MLObjectDetector.DecodableAnnotation.Coordinates.encode(to:)(void *a1, float a2, float a3, float a4, float a5)
{
  v17 = v5;
  v22 = a5;
  v21 = a4;
  v20 = a3;
  *v27 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for KeyedEncodingContainer<MLObjectDetector.DecodableAnnotation.Coordinates.CodingKeys>);
  v19 = *(v6 - 8);
  v7 = *(v19 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v10 = a1[3];
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v10);
  v11 = lazy protocol witness table accessor for type MLObjectDetector.DecodableAnnotation.Coordinates.CodingKeys and conformance MLObjectDetector.DecodableAnnotation.Coordinates.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)(&unk_38FE00, &unk_38FE00, v11, v10, v18);
  v23 = 0;
  v12 = *v27;
  v27[0] = &v17;
  v13 = v17;
  KeyedEncodingContainer.encode(_:forKey:)(&v23, v6, v12);
  if (v13)
  {
    return (*(v19 + 8))(v27[0], v6);
  }

  v15 = v19;
  v24 = 1;
  KeyedEncodingContainer.encode(_:forKey:)(&v24, v6, v20);
  v25 = 2;
  KeyedEncodingContainer.encode(_:forKey:)(&v25, v6, v21);
  v26 = 3;
  v16 = v27[0];
  KeyedEncodingContainer.encode(_:forKey:)(&v26, v6, v22);
  return (*(v15 + 8))(v16, v6);
}

uint64_t MLObjectDetector.DecodableAnnotation.Coordinates.init(from:)(void *a1, float a2)
{
  v20 = v2;
  v21 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for KeyedDecodingContainer<MLObjectDetector.DecodableAnnotation.Coordinates.CodingKeys>);
  v15 = *(v21 - 8);
  v3 = *(v15 + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v6 = a1[3];
  v7 = a1[4];
  v16 = a1;
  __swift_project_boxed_opaque_existential_0Tm(a1, v6);
  v8 = lazy protocol witness table accessor for type MLObjectDetector.DecodableAnnotation.Coordinates.CodingKeys and conformance MLObjectDetector.DecodableAnnotation.Coordinates.CodingKeys();
  v26 = &v15;
  dispatch thunk of Decoder.container<A>(keyedBy:)(&unk_38FE00, &unk_38FE00, v8, v6, v7);
  v9 = v15;
  v22 = 0;
  v10 = v21;
  KeyedDecodingContainer.decode(_:forKey:)(&v22, v21);
  *&v20 = a2;
  v23 = 1;
  KeyedDecodingContainer.decode(_:forKey:)(&v23, v10);
  v11 = v9;
  v17 = a2;
  v24 = 2;
  KeyedDecodingContainer.decode(_:forKey:)(&v24, v21);
  v18 = a2;
  v25 = 3;
  v12 = v21;
  v13 = v26;
  KeyedDecodingContainer.decode(_:forKey:)(&v25, v21);
  v19 = a2;
  (*(v11 + 8))(v13, v12);
  return __swift_destroy_boxed_opaque_existential_1Tm(v16);
}

char protocol witness for CodingKey.init(stringValue:) in conformance MLObjectDetector.DecodableAnnotation.Coordinates.CodingKeys(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  result = MLObjectDetector.DecodableAnnotation.Coordinates.CodingKeys.init(stringValue:)(a1, a2);
  *v3 = result;
  return result;
}

char protocol witness for CodingKey.init(intValue:) in conformance MLObjectDetector.DecodableAnnotation.Coordinates.CodingKeys()
{
  v1 = v0;
  result = MLObjectDetector.DecodableAnnotation.Coordinates.CodingKeys.init(intValue:)();
  *v1 = result;
  return result;
}

uint64_t protocol witness for Decodable.init(from:) in conformance MLObjectDetector.DecodableAnnotation.Coordinates(void *a1, float a2, float a3, float a4, float a5)
{
  v7 = v5;
  result = MLObjectDetector.DecodableAnnotation.Coordinates.init(from:)(a1, a2);
  if (!v6)
  {
    *v7 = a2;
    v7[1] = a3;
    v7[2] = a4;
    v7[3] = a5;
  }

  return result;
}

void *MLObjectDetector.DecodableAnnotation.init(from:)(void *a1, unint64_t a2, __m128i a3)
{
  v4 = *a1;
  if (!*(*a1 + 16))
  {
    goto LABEL_15;
  }

  v5 = v3;

  *&v6 = 0x6C6562616CLL;
  *(&v6 + 1) = 0xE500000000000000;
  specialized __RawDictionaryStorage.find<A>(_:)(v6, 2, *a3.i64);
  if ((v8 & 1) == 0)
  {
    v4;
LABEL_15:
    v4;
    v29 = 0xD00000000000001ELL;
    v30 = ", Bounding Box: ";
LABEL_16:
    v31 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v31, 0, 0);
    *v32 = v29;
    *(v32 + 8) = v30 | 0x8000000000000000;
    *(v32 + 16) = 0;
    *(v32 + 32) = 0;
    *(v32 + 48) = 0;
    return swift_willThrow();
  }

  v66 = v5;
  v9 = *(v4 + 56);
  v10 = 24 * v7;
  v11 = *(v9 + v10);
  v12 = *(v9 + v10 + 8);
  v13 = *(v9 + v10 + 16);
  outlined copy of MLDataValue(v11, v12, v13);
  v4;
  if (v13 != 2)
  {
    outlined consume of MLDataValue(v11, v12, v13);
    goto LABEL_15;
  }

  v74 = v11;
  v73 = v12;
  if (!*(v4 + 16) || (*&v14 = 0x616E6964726F6F63, *(&v14 + 1) = 0xEB00000000736574, specialized __RawDictionaryStorage.find<A>(_:)(v14, 2, *a3.i64), (v16 & 1) == 0))
  {
    v4;
LABEL_18:
    outlined consume of MLDataValue(v74, v73, 2);
    v29 = 0xD000000000000024;
    v30 = "Missing label from annotation.";
    goto LABEL_16;
  }

  v17 = *(v4 + 56);
  v18 = 24 * v15;
  v19 = *(v17 + v18);
  v20 = *(v17 + v18 + 8);
  v21 = *(v17 + v18 + 16);
  outlined copy of MLDataValue(v19, v20, v21);
  v4;
  if (v21 != 4)
  {
    outlined consume of MLDataValue(v19, v20, v21);
    goto LABEL_18;
  }

  if (!v19[2])
  {
LABEL_21:
    v29 = 0xD000000000000034;
    outlined consume of MLDataValue(v74, v73, 2);
    outlined consume of MLDataValue(v19, v20, 4);
    v30 = "tes from annotation.";
    goto LABEL_16;
  }

  *&v22 = 120;
  *(&v22 + 1) = 0xE100000000000000;
  specialized __RawDictionaryStorage.find<A>(_:)(v22, 2, *a3.i64);
  if ((v24 & 1) == 0)
  {
    outlined consume of MLDataValue(v19, v20, 4);
    goto LABEL_21;
  }

  v25 = v19[7];
  v26 = 24 * v23;
  v27 = *(v25 + v26 + 16);
  v28 = *(v25 + v26);
  v67 = *(v25 + v26 + 8);
  outlined copy of MLDataValue(v28, v67, *(v25 + v26 + 16));
  outlined consume of MLDataValue(v19, v20, 4);
  if (v27)
  {
    if (v27 == 2)
    {
      v34 = _sSdySdSgxcSyRzlufCSS_Tt0g5(v28, v67);
      if ((v35 & 1) == 0)
      {
        a3 = v34;
        goto LABEL_27;
      }
    }

    else
    {
      if (v27 == 1)
      {
        a3 = v28;
        goto LABEL_27;
      }

      outlined consume of MLDataValue(v28, v67, v27);
    }

    a3 = _mm_loadl_epi64(&qword_33E410);
  }

  else
  {
    *a3.i64 = v28;
  }

LABEL_27:
  if (!v19[2])
  {
LABEL_34:
    v29 = 0xD000000000000034;
    outlined consume of MLDataValue(v74, v73, 2);
    outlined consume of MLDataValue(v19, v20, 4);
    v30 = "ate from annotation.";
    goto LABEL_16;
  }

  v68 = a3;

  *&v36 = 121;
  *(&v36 + 1) = 0xE100000000000000;
  specialized __RawDictionaryStorage.find<A>(_:)(v36, 2, *a3.i64);
  if ((v38 & 1) == 0)
  {
    outlined consume of MLDataValue(v19, v20, 4);
    goto LABEL_34;
  }

  v39 = v19[7];
  v40 = 24 * v37;
  v41 = *(v39 + v40);
  v42 = *(v39 + v40 + 16);
  v69 = *(v39 + v40 + 8);
  outlined copy of MLDataValue(v41, v69, *(v39 + v40 + 16));
  outlined consume of MLDataValue(v19, v20, 4);
  if (v42)
  {
    if (v42 == 2)
    {
      v43 = _sSdySdSgxcSyRzlufCSS_Tt0g5(v41, v69);
      if ((v44 & 1) == 0)
      {
        a3 = v43;
        goto LABEL_40;
      }
    }

    else
    {
      if (v42 == 1)
      {
        a3 = v41;
        goto LABEL_40;
      }

      outlined consume of MLDataValue(v41, v69, v42);
    }

    a3 = _mm_loadl_epi64(&qword_33E410);
  }

  else
  {
    *a3.i64 = v41;
  }

LABEL_40:
  if (!v19[2])
  {
LABEL_47:
    outlined consume of MLDataValue(v74, v73, 2);
    outlined consume of MLDataValue(v19, v20, 4);
    v29 = 0xD000000000000033;
    v30 = "ate from annotation.";
    goto LABEL_16;
  }

  v70 = a3;

  *&v45 = 0x6874646977;
  *(&v45 + 1) = 0xE500000000000000;
  specialized __RawDictionaryStorage.find<A>(_:)(v45, 2, *a3.i64);
  if ((v47 & 1) == 0)
  {
    outlined consume of MLDataValue(v19, v20, 4);
    goto LABEL_47;
  }

  v48 = v19[7];
  v49 = 24 * v46;
  v50 = v19;
  v51 = *(v48 + v49);
  v52 = *(v48 + v49 + 16);
  v71.i64[0] = *(v48 + v49 + 8);
  outlined copy of MLDataValue(v51, v71.i64[0], v52);
  v72 = v50;
  outlined consume of MLDataValue(v50, v20, 4);
  if (!v52)
  {
    *a3.i64 = v51;
    goto LABEL_53;
  }

  if (v52 == 2)
  {
    v53 = _sSdySdSgxcSyRzlufCSS_Tt0g5(v51, v71.i64[0]);
    if ((v54 & 1) == 0)
    {
      a3 = v53;
      goto LABEL_53;
    }

LABEL_52:
    a3 = _mm_loadl_epi64(&qword_33E410);
    goto LABEL_53;
  }

  if (v52 != 1)
  {
    outlined consume of MLDataValue(v51, v71.i64[0], v52);
    goto LABEL_52;
  }

  a3 = v51;
LABEL_53:
  v71 = a3;
  if (!*(v72 + 2) || (*&v55 = 0x746867696568, *(&v55 + 1) = 0xE600000000000000, specialized __RawDictionaryStorage.find<A>(_:)(v55, 2, *a3.i64), (v57 & 1) == 0))
  {
    v29 = 0xD000000000000034;
    outlined consume of MLDataValue(v72, v20, 4);
    outlined consume of MLDataValue(v74, v73, 2);
    v30 = "ue from annotation.";
    goto LABEL_16;
  }

  v58 = *(v72 + 7);
  v59 = 24 * v56;
  v60 = v72;
  v61 = *(v58 + v59);
  v62 = *(v58 + v59 + 16);
  v72 = *(v58 + v59 + 8);
  outlined copy of MLDataValue(v61, v72, v62);
  outlined consume of MLDataValue(v60, v20, 4);
  if (!v62)
  {
    *a3.i64 = v61;
    goto LABEL_65;
  }

  if (v62 == 2)
  {
    v63 = _sSdySdSgxcSyRzlufCSS_Tt0g5(v61, v72);
    if ((v64 & 1) == 0)
    {
      a3 = v63;
      goto LABEL_65;
    }

LABEL_64:
    a3 = _mm_loadl_epi64(&qword_33E410);
    goto LABEL_65;
  }

  if (v62 != 1)
  {
    outlined consume of MLDataValue(v61, v72, v62);
    goto LABEL_64;
  }

  a3 = v61;
LABEL_65:
  result = v73;
  v65 = _mm_cvtpd_ps(_mm_unpacklo_epi64(_mm_load_si128(&v71), a3));
  *v66 = v74;
  *(v66 + 8) = result;
  *(v66 + 16) = _mm_unpacklo_pd(_mm_cvtpd_ps(_mm_unpacklo_pd(v68, v70)), v65);
  return result;
}

uint64_t static MLObjectDetector.DecodableAnnotation.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a2 + 8);
  if (!(*a2 ^ v4 | v5 ^ a1[1]) || (v2 = 0, (_stringCompareWithSmolCheck(_:_:expecting:)(v4, a1[1], *a2, v5, 0) & 1) != 0))
  {
    if (*(a1 + 4) != *(a2 + 16))
    {
      return 0;
    }

    v6 = _mm_cmpeq_ps(*(a1 + 20), *(a2 + 20));
    v7 = _mm_movemask_pd(_mm_unpacklo_ps(v6, v6));
    if ((v7 & 1) == 0)
    {
      return 0;
    }

    if (!(v7 >> 1))
    {
      return 0;
    }

    LOBYTE(v2) = 1;
    if (*(a1 + 7) != *(a2 + 28))
    {
      return 0;
    }
  }

  return v2;
}

char MLObjectDetector.DecodableAnnotation.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  if (a1 ^ 0x6C6562616CLL | a2 ^ 0xE500000000000000 && (_stringCompareWithSmolCheck(_:_:expecting:)(0x6C6562616CLL, 0xE500000000000000, a1, a2, 0) & 1) == 0)
  {
    if (a1 ^ 0x616E6964726F6F63 | a2 ^ 0xEB00000000736574)
    {
      v3 = _stringCompareWithSmolCheck(_:_:expecting:)(0x616E6964726F6F63, 0xEB00000000736574, a1, a2, 0);
      a2;
      return 2 - (v3 & 1);
    }

    else
    {
      a2;
      return 1;
    }
  }

  else
  {
    a2;
    return 0;
  }
}

uint64_t MLObjectDetector.DecodableAnnotation.CodingKeys.stringValue.getter(char a1)
{
  result = 0x6C6562616CLL;
  if (a1)
  {
    return 0x616E6964726F6F63;
  }

  return result;
}

uint64_t MLObjectDetector.DecodableAnnotation.encode(to:)(void *a1)
{
  v15 = v1;
  v18 = v2;
  v16 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for KeyedEncodingContainer<MLObjectDetector.DecodableAnnotation.CodingKeys>);
  v19 = *(v16 - 8);
  v3 = *(v19 + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v6 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v6);
  v7 = lazy protocol witness table accessor for type MLObjectDetector.DecodableAnnotation.CodingKeys and conformance MLObjectDetector.DecodableAnnotation.CodingKeys();
  v8 = v16;
  dispatch thunk of Encoder.container<A>(keyedBy:)(&unk_38FCE8, &unk_38FCE8, v7, v6, v17);
  v9 = *v18;
  v10 = *(v18 + 8);
  LOBYTE(v14) = 0;
  v11 = v15;
  KeyedEncodingContainer.encode(_:forKey:)(v9, v10, &v14, v8);
  if (!v11)
  {
    v14 = *(v18 + 16);
    v20[0] = 1;
    v13 = lazy protocol witness table accessor for type MLObjectDetector.DecodableAnnotation.Coordinates and conformance MLObjectDetector.DecodableAnnotation.Coordinates();
    KeyedEncodingContainer.encode<A>(_:forKey:)(&v14, v20, v8, &type metadata for MLObjectDetector.DecodableAnnotation.Coordinates, v13);
  }

  return (*(v19 + 8))(&v14, v8);
}

uint64_t *MLObjectDetector.DecodableAnnotation.init(from:)(void *a1)
{
  v20 = v2;
  v16 = v1;
  *&v18 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for KeyedDecodingContainer<MLObjectDetector.DecodableAnnotation.CodingKeys>);
  v15 = *(v18 - 8);
  v3 = *(v15 + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v6 = a1[3];
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v6);
  v7 = lazy protocol witness table accessor for type MLObjectDetector.DecodableAnnotation.CodingKeys and conformance MLObjectDetector.DecodableAnnotation.CodingKeys();
  v21 = &v14;
  dispatch thunk of Decoder.container<A>(keyedBy:)(&unk_38FCE8, &unk_38FCE8, v7, v6, v19);
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v8 = v15;
  v20 = a1;
  LOBYTE(v14) = 0;
  v17 = KeyedDecodingContainer.decode(_:forKey:)(&v14, v18);
  v22[0] = 1;
  v10 = v9;
  v11 = lazy protocol witness table accessor for type MLObjectDetector.DecodableAnnotation.Coordinates and conformance MLObjectDetector.DecodableAnnotation.Coordinates();
  v19 = v10;

  KeyedDecodingContainer.decode<A>(_:forKey:)(&type metadata for MLObjectDetector.DecodableAnnotation.Coordinates, v22, v18, &type metadata for MLObjectDetector.DecodableAnnotation.Coordinates, v11);
  (*(v8 + 8))(v21, v18);
  v18 = v14;
  __swift_destroy_boxed_opaque_existential_1Tm(v20);
  v12 = v19;
  v19;
  result = v16;
  *v16 = v17;
  result[1] = v12;
  *(result + 1) = v18;
  return result;
}

char protocol witness for CodingKey.init(stringValue:) in conformance MLObjectDetector.DecodableAnnotation.CodingKeys(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  result = MLObjectDetector.DecodableAnnotation.CodingKeys.init(stringValue:)(a1, a2);
  *v3 = result;
  return result;
}

uint64_t *protocol witness for Decodable.init(from:) in conformance MLObjectDetector.DecodableAnnotation(void *a1)
{
  v3 = v1;
  result = MLObjectDetector.DecodableAnnotation.init(from:)(a1);
  if (!v2)
  {
    v3[1] = v6;
    *v3 = v5;
  }

  return result;
}

char static MLObjectDetector.NormalizedAnnotation.== infix(_:_:)(float *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a2 + 8);
  if (*a2 ^ v3 | v4 ^ *(a1 + 1) && (_stringCompareWithSmolCheck(_:_:expecting:)(v3, *(a1 + 1), *a2, v4, 0) & 1) == 0)
  {
    return 0;
  }

  else
  {
    return static Rectangle.== infix(_:_:)(COERCE_FLOAT(*(a1 + 2)), _mm_movehdup_ps(*(a1 + 2)), *(a1 + 6), a1[7], COERCE_FLOAT(*(a2 + 16)), _mm_movehdup_ps(*(a2 + 16)), *(a2 + 24), *(a2 + 28));
  }
}

void MLObjectDetector.NormalizedAnnotation.hash(into:)(uint64_t a1)
{
  v2 = *v1;

  String.hash(into:)(a1, v2);
  outlined release of MLObjectDetector.NormalizedAnnotation(v1);
  Rectangle.hash(into:)(*(v1 + 16), _mm_movehdup_ps(*(v1 + 16)), *(v1 + 24), *(v1 + 28));
}

Swift::Int MLObjectDetector.NormalizedAnnotation.hashValue.getter()
{
  Hasher.init(_seed:)(0);
  v1 = *v0;

  String.hash(into:)(v3, v1);
  outlined release of MLObjectDetector.NormalizedAnnotation(v0);
  Rectangle.hash(into:)(*(v0 + 16), _mm_movehdup_ps(*(v0 + 16)), *(v0 + 24), *(v0 + 28));
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MLObjectDetector.NormalizedAnnotation(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 28);
  Hasher.init(_seed:)(a1);

  String.hash(into:)(v5, v2);
  v3;
  Rectangle.hash(into:)(v6, _mm_movehdup_ps(v6), v7, v8);
  return Hasher._finalize()();
}

uint64_t MLObjectDetector.ObjectAnnotation.description.getter()
{
  v14 = *v0;
  v1 = *(v0 + 8);
  v17 = *(v0 + 24);
  v16 = *(v0 + 32);
  v15 = *(v0 + 40);
  v13 = *(v0 + 48);
  v2._countAndFlagsBits = Double.description.getter(*(v0 + 16));
  object = v2._object;
  String.append(_:)(v2);
  object;
  v4._countAndFlagsBits = Double.description.getter(v17);
  v5 = v4._object;
  String.append(_:)(v4);
  v5;
  v6._countAndFlagsBits = 0x203A79202CLL;
  v6._object = 0xE500000000000000;
  String.append(_:)(v6);
  0;
  v7._countAndFlagsBits = Double.description.getter(v16);
  v8 = v7._object;
  String.append(_:)(v7);
  v8;
  v6._countAndFlagsBits = 0x3A6874646977202CLL;
  v6._object = 0xE900000000000020;
  String.append(_:)(v6);
  32;
  v9._countAndFlagsBits = Double.description.getter(v15);
  v10 = v9._object;
  String.append(_:)(v9);
  v10;

  v6._countAndFlagsBits = 41;
  v6._object = 0xE100000000000000;
  String.append(_:)(v6);
  58;
  v6._countAndFlagsBits = 0x746867696568202CLL;
  v6._object = 0xEA0000000000203ALL;
  String.append(_:)(v6);
  58;
  _StringGuts.grow(_:)(44);
  0;

  v6._countAndFlagsBits = v14;
  v6._object = v1;
  String.append(_:)(v6);
  v1;
  v6._countAndFlagsBits = 0x6469666E6F43202CLL;
  v6._object = 0xEE00203A65636E65;
  String.append(_:)(v6);
  v11._countAndFlagsBits = Double.description.getter(v13);
  LOBYTE(v1) = v11._object;
  String.append(_:)(v11);
  v1;
  v6._object = "ect annotations, found " + 0x8000000000000000;
  v6._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v6);
  v6._countAndFlagsBits = 540702760;
  v6._object = 0xE400000000000000;
  String.append(_:)(v6);
  0;
  v6._countAndFlagsBits = 10;
  v6._object = 0xE100000000000000;
  String.append(_:)(v6);
  return 0x203A6C6562614CLL;
}

uint64_t MLObjectDetector.ObjectAnnotation.debugDescription.getter()
{
  v1 = *(v0 + 8);

  v2 = MLObjectDetector.ObjectAnnotation.description.getter();
  v1;
  return v2;
}

void *MLObjectDetector.ObjectAnnotation.playgroundDescription.getter()
{
  v2 = v0;
  v3 = *(v1 + 8);

  v4 = MLObjectDetector.ObjectAnnotation.description.getter();
  v6 = v5;
  v3;
  result = &type metadata for String;
  v2[3] = &type metadata for String;
  *v2 = v4;
  v2[1] = v6;
  return result;
}

uint64_t *specialized stratifiedSplitGenerator<A>(proportions:generator:dataTable:on:)(__int128 *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, void *a6, double a7)
{
  v73 = a2;
  v9 = v8;
  v94._countAndFlagsBits = a5;
  v74 = a1;
  v81 = a3;
  v75 = v7;
  v99 = a4;
  v82 = a6;
  if (a4)
  {
    v98 = v8;
    outlined copy of Result<_DataTable, Error>(a3, 1);
    v11 = tc_v1_flex_list_create(0);
    if (!v11)
    {
      BUG();
    }

    v12 = v11;
    v13 = type metadata accessor for CMLSequence();
    v14 = swift_allocObject(v13, 25, 7);
    *(v14 + 16) = v12;
    *(v14 + 24) = 1;
    outlined consume of Result<_DataTable, Error>(a3, 1);
    v15 = v82;
    v9 = v98;
  }

  else
  {
    v15 = a6;
    outlined copy of Result<_DataTable, Error>(a3, 0);
    _DataTable.columnNames.getter();
    outlined consume of Result<_DataTable, Error>(a3, 0);
    v14 = v103;
  }

  v98 = &v72;
  *&v101 = v94._countAndFlagsBits;
  *(&v101 + 1) = v15;
  v17 = alloca(24);
  v18 = alloca(32);
  v74 = &v101;
  v19 = v9;
  v20 = v15;
  v21 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, &v72, v14);

  if (v21)
  {
    v94._object = v19;
    v22 = v81;
    *&v101 = v81;
    v23 = v99;
    v100 = v99;
    LOBYTE(v23) = v99 & 1;
    BYTE8(v101) = v99 & 1;
    outlined copy of Result<_DataTable, Error>(v81, v99);
    v24._countAndFlagsBits = v94._countAndFlagsBits;
    v24._object = v20;
    MLDataTable.subscript.getter(v24);
    outlined consume of Result<_DataTable, Error>(v101, SBYTE8(v101));
    v86 = v103;
    v87 = v104;
    MLUntypedColumn.dropDuplicates()();
    outlined consume of Result<_DataTable, Error>(v86, v87);
    v103 = v101;
    LOBYTE(v104) = BYTE8(v101);
    v91 = Array<A>.init(_:)(&v103, a7);
    *&v101 = v22;
    BYTE8(v101) = v23;
    outlined copy of Result<_DataTable, Error>(v22, v100);
    v25 = MLDataTable.size.getter();
    outlined consume of Result<_DataTable, Error>(v101, SBYTE8(v101));
    if (v25 < 0)
    {
      BUG();
    }

    v26 = specialized _copyCollectionToContiguousArray<A>(_:)(0, v25);
    v103 = v22;
    LOBYTE(v104) = v23;
    *&v101 = v22;
    v99 = v23;
    BYTE8(v101) = v23;
    v27 = v100;
    outlined copy of Result<_DataTable, Error>(v22, v100);
    outlined copy of Result<_DataTable, Error>(v22, v27);
    v28 = MLDataTable.size.getter();
    outlined consume of Result<_DataTable, Error>(v101, SBYTE8(v101));
    v95 = _sSa9repeating5countSayxGx_SitcfCSi_Tt1g5(0, v28);
    v29 = v91;
    v77 = v91[2];
    if (v77)
    {
      v97 = v26;
      v30 = 0;
      v31 = v99;
      countAndFlagsBits = v94._countAndFlagsBits;
      v33 = v100;
      while (1)
      {
        if (v30 >= v29[2])
        {
          BUG();
        }

        v76 = v30;
        v34 = 3 * v30;
        v35 = v29[3 * v30 + 4];
        v36 = v29[3 * v30 + 5];
        v37 = v29[v34 + 6];
        *&v101 = v81;
        BYTE8(v101) = v31;
        outlined copy of Result<_DataTable, Error>(v81, v33);
        outlined copy of MLDataValue(v35, v36, v37);
        v38._countAndFlagsBits = countAndFlagsBits;
        v38._object = v82;
        MLDataTable.subscript.getter(v38);
        outlined consume of Result<_DataTable, Error>(v101, SBYTE8(v101));
        v92 = v79;
        LOBYTE(v93) = v80;
        v84 = v35;
        v83 = v36;
        *(&v101 + 1) = v36;
        v96 = v37;
        v102 = v37;
        static MLUntypedColumn.== infix(_:_:)(&v92, &v101);
        outlined consume of Result<_DataTable, Error>(v92, v93);
        *&v101 = v86;
        BYTE8(v101) = v87;
        v39 = Array<A>.init(_:)(&v101, a7);
        v40 = v39[2];
        if (v40)
        {
          v98 = v97[2];

          v78 = v39;
          v41 = v39 + 6;
          v42 = 0;
          v43 = _swiftEmptyArrayStorage;
          v90 = v40;
          do
          {
            if (v98 == v42)
            {
              break;
            }

            if (v42 >= v97[2])
            {
              BUG();
            }

            if (!*v41 && *(v41 - 2) == 1)
            {
              v89 = *(v41 - 1);
              v44 = v97[v42 + 4];
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v43);
              *&v101 = v43;
              v88 = v44;
              if (!isUniquelyReferenced_nonNull_native)
              {
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v43[2] + 1, 1);
                v43 = v101;
              }

              v46 = v43[2];
              v47 = v43[3];
              v48 = v46 + 1;
              if (v47 >> 1 <= v46)
              {
                v85 = v46 + 1;
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v47 >= 2, v46 + 1, 1);
                v48 = v85;
                v43 = v101;
              }

              v43[2] = v48;
              v49 = 4 * v46;
              v43[v49 + 4] = 1;
              v43[v49 + 5] = v89;
              LOBYTE(v43[v49 + 6]) = 0;
              v43[v49 + 7] = v88;
              v40 = v90;
            }

            ++v42;
            v41 += 24;
          }

          while (v40 != v42);

          LOBYTE(v39) = v78;
        }

        else
        {
          v43 = _swiftEmptyArrayStorage;
        }

        v39;
        object = v94._object;
        ML11MLDataValueO_SitG_Sis5NeverOTg503_s8d4ML11fg20OS2iIgnyd_AC_SitSis5h126OIegnrzr_TR03_s8a68ML24stratifiedSplitGenerator11proportions9generator9dataTable2onAA06c31I0VSaySdG_xzAHSStKSGRzlFSiAA0K5D11O_N16XEfU0_Tf3nnnpf_nTf1cn_n = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay8CreateML11MLDataValueO_SitG_Sis5NeverOTg503_s8d4ML11fg20OS2iIgnyd_AC_SitSis5h126OIegnrzr_TR03_s8a68ML24stratifiedSplitGenerator11proportions9generator9dataTable2onAA06c31I0VSaySdG_xzAHSStKSGRzlFSiAA0K5D11O_N16XEfU0_Tf3nnnpf_nTf1cn_n(v43);

        v52 = specialized _copyCollectionToContiguousArray<A>(_:)(0, ML11MLDataValueO_SitG_Sis5NeverOTg503_s8d4ML11fg20OS2iIgnyd_AC_SitSis5h126OIegnrzr_TR03_s8a68ML24stratifiedSplitGenerator11proportions9generator9dataTable2onAA06c31I0VSaySdG_xzAHSStKSGRzlFSiAA0K5D11O_N16XEfU0_Tf3nnnpf_nTf1cn_n[2]);
        v53 = v74;
        v54 = specialized randomSplit<A>(indices:proportions:generator:)(v52, v74, v73);
        v94._object = object;
        if (object)
        {
          break;
        }

        v55 = v54;

        v90 = *(v53 + 16);
        if (v90)
        {
          v56 = 0;
          v57 = v95;
          v88 = v55;
          v89 = ML11MLDataValueO_SitG_Sis5NeverOTg503_s8d4ML11fg20OS2iIgnyd_AC_SitSis5h126OIegnrzr_TR03_s8a68ML24stratifiedSplitGenerator11proportions9generator9dataTable2onAA06c31I0VSaySdG_xzAHSStKSGRzlFSiAA0K5D11O_N16XEfU0_Tf3nnnpf_nTf1cn_n;
          do
          {
            if (v56 >= v55[2])
            {
              BUG();
            }

            v98 = *(v55[v56 + 4] + 16);
            if (v98)
            {
              v58 = 0;
              do
              {
                v59 = v55[v56 + 4];
                if (v58 >= *(v59 + 16))
                {
                  BUG();
                }

                v60 = *(v59 + 8 * v58 + 32);
                if (v60 < 0)
                {
                  BUG();
                }

                if (v60 >= ML11MLDataValueO_SitG_Sis5NeverOTg503_s8d4ML11fg20OS2iIgnyd_AC_SitSis5h126OIegnrzr_TR03_s8a68ML24stratifiedSplitGenerator11proportions9generator9dataTable2onAA06c31I0VSaySdG_xzAHSStKSGRzlFSiAA0K5D11O_N16XEfU0_Tf3nnnpf_nTf1cn_n[2])
                {
                  BUG();
                }

                v61 = ML11MLDataValueO_SitG_Sis5NeverOTg503_s8d4ML11fg20OS2iIgnyd_AC_SitSis5h126OIegnrzr_TR03_s8a68ML24stratifiedSplitGenerator11proportions9generator9dataTable2onAA06c31I0VSaySdG_xzAHSStKSGRzlFSiAA0K5D11O_N16XEfU0_Tf3nnnpf_nTf1cn_n[v60 + 4];
                if (!swift_isUniquelyReferenced_nonNull_native(v57))
                {
                  v57 = specialized _ArrayBuffer._consumeAndCreateNew()(v57);
                }

                if (v61 < 0)
                {
                  BUG();
                }

                if (v61 >= v57[2])
                {
                  BUG();
                }

                ++v58;
                v57[v61 + 4] = v56;
                ML11MLDataValueO_SitG_Sis5NeverOTg503_s8d4ML11fg20OS2iIgnyd_AC_SitSis5h126OIegnrzr_TR03_s8a68ML24stratifiedSplitGenerator11proportions9generator9dataTable2onAA06c31I0VSaySdG_xzAHSStKSGRzlFSiAA0K5D11O_N16XEfU0_Tf3nnnpf_nTf1cn_n = v89;
                v55 = v88;
              }

              while (v98 != v58);
            }

            ++v56;
          }

          while (v56 != v90);
          v95 = v57;
        }

        ML11MLDataValueO_SitG_Sis5NeverOTg503_s8d4ML11fg20OS2iIgnyd_AC_SitSis5h126OIegnrzr_TR03_s8a68ML24stratifiedSplitGenerator11proportions9generator9dataTable2onAA06c31I0VSaySdG_xzAHSStKSGRzlFSiAA0K5D11O_N16XEfU0_Tf3nnnpf_nTf1cn_n;
        v55;
        v30 = v76 + 1;
        outlined consume of MLDataValue(v84, v83, v96);
        v31 = v99;
        countAndFlagsBits = v94._countAndFlagsBits;
        v33 = v100;
        v29 = v91;
        if (v30 == v77)
        {
          goto LABEL_43;
        }
      }

      ML11MLDataValueO_SitG_Sis5NeverOTg503_s8d4ML11fg20OS2iIgnyd_AC_SitSis5h126OIegnrzr_TR03_s8a68ML24stratifiedSplitGenerator11proportions9generator9dataTable2onAA06c31I0VSaySdG_xzAHSStKSGRzlFSiAA0K5D11O_N16XEfU0_Tf3nnnpf_nTf1cn_n;

      outlined consume of MLDataValue(v84, v83, v96);
      v95;
      v91;

      return outlined consume of Result<_DataTable, Error>(v103, v104);
    }

    else
    {
LABEL_43:

      v29;
      LOBYTE(v101) = v95;
      v65 = alloca(24);
      v66 = alloca(32);
      v105 = &v101;
      ML14_UntypedColumnC_s5Error_pTt1g5 = _ss6ResultOsRi_zrlE8catchingAByxq_Gxyq_YKXE_tcfC8CreateML14_UntypedColumnC_s5Error_pTt1g5(partial apply for specialized closure #1 in MLUntypedColumn.init<A>(_:));
      v69 = v68;
      v101;
      MLDataTable.willMutate()();
      *&v101 = ML14_UntypedColumnC_s5Error_pTt1g5;
      BYTE8(v101) = v69 & 1;
      outlined copy of Result<_DataTable, Error>(ML14_UntypedColumnC_s5Error_pTt1g5, v69);
      MLDataTable.addImpl(newColumn:named:)(&v101, 0x6F69746974726170, 0xE90000000000006ELL);
      outlined consume of Result<_DataTable, Error>(v101, SBYTE8(v101));
      v70 = v104;
      if (v104)
      {
        outlined consume of Result<_DataTable, Error>(ML14_UntypedColumnC_s5Error_pTt1g5, v69);
        v71 = v103;
      }

      else
      {
        v71 = v103;
        outlined copy of Result<_DataTable, Error>(v103, 0);
        _DataTable.columnNamesDidChange()();
        outlined consume of Result<_DataTable, Error>(v71, 0);
        outlined consume of Result<_DataTable, Error>(ML14_UntypedColumnC_s5Error_pTt1g5, v69);
      }

      result = v75;
      *v75 = v71;
      *(result + 8) = v70;
    }
  }

  else
  {
    v62 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v62, 0, 0);
    *v63 = 0xD000000000000022;
    *(v63 + 8) = "lue from annotation." + 0x8000000000000000;
    *(v63 + 16) = 0;
    *(v63 + 32) = 0;
    *(v63 + 48) = 0;
    return swift_willThrow();
  }

  return result;
}

void *_sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_11TabularData8JSONTypeOTt0gq5(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (String, JSONType));
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v30 = &v26;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _DictionaryStorage<String, JSONType>);
    v7 = static _DictionaryStorage.allocate(capacity:)(v6);
    v8 = *(a1 + 16);
    if (v8)
    {
      v27 = v30 + *(v1 + 48);
      v9 = (*(v2 + 80) + 32) & ~*(v2 + 80);
      v29 = a1;
      v10 = a1 + v9;
      v28 = *(v2 + 72);

      do
      {
        v26 = v8;
        v11 = v30;
        outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v10, v30, &demangling cache variable for type metadata for (String, JSONType));
        v12 = *v11;
        v13 = v11[1];
        *&v14 = *v11;
        *(&v14 + 1) = v13;
        v15 = specialized __RawDictionaryStorage.find<A>(_:)(v14);
        if (v16)
        {
          BUG();
        }

        v17 = v15;
        v7[(v15 >> 6) + 8] |= 1 << v15;
        v18 = v7[6];
        v19 = 16 * v17;
        *(v18 + v19) = v12;
        *(v18 + v19 + 8) = v13;
        v20 = v7[7];
        v21 = type metadata accessor for JSONType(0);
        (*(*(v21 - 8) + 32))(v20 + v17 * *(*(v21 - 8) + 72), v27, v21);
        v22 = v7[2];
        v23 = __OFADD__(1, v22);
        v24 = v22 + 1;
        if (v23)
        {
          BUG();
        }

        v7[2] = v24;
        v10 += v28;
        v8 = v26 - 1;
      }

      while (v26 != 1);

      LOBYTE(a1) = v29;
    }
  }

  else
  {
    v7 = _swiftEmptyDictionarySingleton;
  }

  a1;
  return v7;
}

uint64_t *initializeBufferWithCopyOfBuffer for MLObjectDetector.DataSource(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v9 = *a2;
    *v3 = *a2;
    v3 = (v9 + ((v4 + 16) & ~v4));
  }

  else
  {
    switch(swift_getEnumCaseMultiPayload(a2, a3))
    {
      case 0u:
        v6 = type metadata accessor for URL(0);
        (*(*(v6 - 8) + 16))(a1, a2, v6);
        v7 = a3;
        v8 = 0;
        goto LABEL_9;
      case 1u:
        v16 = type metadata accessor for URL(0);
        v17 = *(*(v16 - 8) + 16);
        v17(a1, a2, v16);
        v18 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL));
        v17((a1 + *(v18 + 48)), *(v18 + 48) + a2, v16);
        v20 = 1;
        goto LABEL_8;
      case 2u:
        v10 = *a2;
        v11 = *(a2 + 8);
        outlined copy of Result<_DataTable, Error>(*a2, v11);
        *a1 = v10;
        *(a1 + 8) = v11;
        a1[2] = *(a2 + 16);
        a1[3] = *(a2 + 24);
        a1[4] = *(a2 + 32);
        a1[5] = *(a2 + 40);

        v20 = 2;
        goto LABEL_8;
      case 3u:
        v12 = type metadata accessor for DataFrame(0);
        (*(*(v12 - 8) + 16))(a1, a2, v12);
        v13 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, imageColumn: String, annotationColumn: String));
        v14 = *(v13 + 48);
        *(a1 + v14) = *(a2 + v14);
        *(a1 + v14 + 8) = *(a2 + v14 + 8);
        v15 = *(v13 + 64);
        *(a1 + v15) = *(a2 + v15);
        *(a1 + v15 + 8) = *(a2 + v15 + 8);

        v20 = 3;
LABEL_8:
        v8 = v20;
        v7 = a3;
LABEL_9:
        swift_storeEnumTagMultiPayload(a1, v7, v8);
        break;
    }
  }

  return v3;
}

uint64_t destroy for MLObjectDetector.DataSource(uint64_t a1, uint64_t a2)
{
  result = swift_getEnumCaseMultiPayload(a1, a2);
  switch(result)
  {
    case 0:
      v3 = type metadata accessor for URL(0);
      result = (*(*(v3 - 8) + 8))(a1, v3);
      break;
    case 1:
      v6 = type metadata accessor for URL(0);
      v7 = *(*(v6 - 8) + 8);
      v7(a1, v6);
      v8 = a1 + *(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL)) + 48);
      result = (v7)(v8, v6);
      break;
    case 2:
      outlined consume of Result<_DataTable, Error>(*a1, *(a1 + 8));
      *(a1 + 24);
      result = *(a1 + 40);
      break;
    case 3:
      v4 = type metadata accessor for DataFrame(0);
      (*(*(v4 - 8) + 8))(a1, v4);
      v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, imageColumn: String, annotationColumn: String));
      *(a1 + *(v5 + 48) + 8);
      result = *(a1 + *(v5 + 64) + 8);
      break;
    default:
      return result;
  }

  return result;
}

uint64_t *initializeWithCopy for MLObjectDetector.DataSource(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  switch(swift_getEnumCaseMultiPayload(a2, a3))
  {
    case 0u:
      v4 = type metadata accessor for URL(0);
      (*(*(v4 - 8) + 16))(a1, a2, v4);
      v5 = a3;
      v6 = 0;
      goto LABEL_7;
    case 1u:
      v13 = type metadata accessor for URL(0);
      v14 = *(*(v13 - 8) + 16);
      v14(a1, a2, v13);
      v15 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL));
      v14((a1 + *(v15 + 48)), *(v15 + 48) + a2, v13);
      v17 = 1;
      goto LABEL_6;
    case 2u:
      v7 = *a2;
      v8 = *(a2 + 8);
      outlined copy of Result<_DataTable, Error>(*a2, v8);
      *a1 = v7;
      *(a1 + 8) = v8;
      a1[2] = *(a2 + 16);
      a1[3] = *(a2 + 24);
      a1[4] = *(a2 + 32);
      a1[5] = *(a2 + 40);

      v17 = 2;
      goto LABEL_6;
    case 3u:
      v9 = type metadata accessor for DataFrame(0);
      (*(*(v9 - 8) + 16))(a1, a2, v9);
      v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, imageColumn: String, annotationColumn: String));
      v11 = *(v10 + 48);
      *(a1 + v11) = *(a2 + v11);
      *(a1 + v11 + 8) = *(a2 + v11 + 8);
      v12 = *(v10 + 64);
      *(a1 + v12) = *(a2 + v12);
      *(a1 + v12 + 8) = *(a2 + v12 + 8);

      v17 = 3;
LABEL_6:
      v6 = v17;
      v5 = a3;
LABEL_7:
      swift_storeEnumTagMultiPayload(a1, v5, v6);
      return a1;
  }
}

uint64_t *assignWithCopy for MLObjectDetector.DataSource(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    outlined destroy of MLObjectDetector.DataSource(a1);
    switch(swift_getEnumCaseMultiPayload(a2, a3))
    {
      case 0u:
        v4 = type metadata accessor for URL(0);
        (*(*(v4 - 8) + 16))(a1, a2, v4);
        v5 = a3;
        v6 = 0;
        goto LABEL_8;
      case 1u:
        v13 = type metadata accessor for URL(0);
        v14 = *(*(v13 - 8) + 16);
        v14(a1, a2, v13);
        v15 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL));
        v14((a1 + *(v15 + 48)), *(v15 + 48) + a2, v13);
        v17 = 1;
        goto LABEL_7;
      case 2u:
        v7 = *a2;
        v8 = *(a2 + 8);
        outlined copy of Result<_DataTable, Error>(*a2, v8);
        *a1 = v7;
        *(a1 + 8) = v8;
        a1[2] = *(a2 + 16);
        a1[3] = *(a2 + 24);
        a1[4] = *(a2 + 32);
        a1[5] = *(a2 + 40);

        v17 = 2;
        goto LABEL_7;
      case 3u:
        v9 = type metadata accessor for DataFrame(0);
        (*(*(v9 - 8) + 16))(a1, a2, v9);
        v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, imageColumn: String, annotationColumn: String));
        v11 = *(v10 + 48);
        *(a1 + v11) = *(a2 + v11);
        *(a1 + v11 + 8) = *(a2 + v11 + 8);
        v12 = *(v10 + 64);
        *(a1 + v12) = *(a2 + v12);
        *(a1 + v12 + 8) = *(a2 + v12 + 8);

        v17 = 3;
LABEL_7:
        v6 = v17;
        v5 = a3;
LABEL_8:
        swift_storeEnumTagMultiPayload(a1, v5, v6);
        break;
    }
  }

  return a1;
}

uint64_t outlined destroy of MLObjectDetector.DataSource(uint64_t a1)
{
  v1 = type metadata accessor for MLObjectDetector.DataSource(0);
  (*(*(v1 - 8) + 8))(a1, v1);
  return a1;
}

char *initializeWithTake for MLObjectDetector.DataSource(char *__dst, char *__src, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(__src, a3);
  switch(EnumCaseMultiPayload)
  {
    case 3:
      v11 = type metadata accessor for DataFrame(0);
      (*(*(v11 - 8) + 32))(__dst, __src, v11);
      v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, imageColumn: String, annotationColumn: String));
      *&__dst[*(v12 + 48)] = *&__src[*(v12 + 48)];
      *&__dst[*(v12 + 64)] = *&__src[*(v12 + 64)];
      v14 = 3;
      goto LABEL_7;
    case 1:
      v8 = type metadata accessor for URL(0);
      v9 = *(*(v8 - 8) + 32);
      v9(__dst, __src, v8);
      v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL));
      v9(&__dst[*(v10 + 48)], &__src[*(v10 + 48)], v8);
      v14 = 1;
LABEL_7:
      v7 = v14;
      v6 = a3;
      goto LABEL_8;
    case 0:
      v5 = type metadata accessor for URL(0);
      (*(*(v5 - 8) + 32))(__dst, __src, v5);
      v6 = a3;
      v7 = 0;
LABEL_8:
      swift_storeEnumTagMultiPayload(__dst, v6, v7);
      return __dst;
  }

  return memcpy(__dst, __src, *(*(a3 - 8) + 64));
}

char *assignWithTake for MLObjectDetector.DataSource(char *__dst, char *__src, uint64_t a3)
{
  if (__dst == __src)
  {
    return __dst;
  }

  outlined destroy of MLObjectDetector.DataSource(__dst);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(__src, a3);
  switch(EnumCaseMultiPayload)
  {
    case 3:
      v11 = type metadata accessor for DataFrame(0);
      (*(*(v11 - 8) + 32))(__dst, __src, v11);
      v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, imageColumn: String, annotationColumn: String));
      *&__dst[*(v12 + 48)] = *&__src[*(v12 + 48)];
      *&__dst[*(v12 + 64)] = *&__src[*(v12 + 64)];
      v14 = 3;
      goto LABEL_8;
    case 1:
      v8 = type metadata accessor for URL(0);
      v9 = *(*(v8 - 8) + 32);
      v9(__dst, __src, v8);
      v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL));
      v9(&__dst[*(v10 + 48)], &__src[*(v10 + 48)], v8);
      v14 = 1;
LABEL_8:
      v7 = v14;
      v6 = a3;
      goto LABEL_9;
    case 0:
      v5 = type metadata accessor for URL(0);
      (*(*(v5 - 8) + 32))(__dst, __src, v5);
      v6 = a3;
      v7 = 0;
LABEL_9:
      swift_storeEnumTagMultiPayload(__dst, v6, v7);
      return __dst;
  }

  return memcpy(__dst, __src, *(*(a3 - 8) + 64));
}

uint64_t type metadata completion function for MLObjectDetector.DataSource(uint64_t a1)
{
  result = type metadata accessor for URL(319);
  if (v2 <= 0x3F)
  {
    v8[0] = *(result - 8) + 64;
    swift_getTupleTypeLayout2(v6, v8[0]);
    v8[1] = v6;
    v8[2] = "0";
    result = type metadata accessor for DataFrame(319);
    if (v3 <= 0x3F)
    {
      swift_getTupleTypeLayout3(v7, *(result - 8) + 64, &unk_33E930, &unk_33E930);
      v8[3] = v7;
      swift_initEnumMetadataMultiPayload(a1, 256, 4, v8, v4, v5);
      return 0;
    }
  }

  return result;
}

uint64_t initializeWithCopy for MLObjectDetector.ObjectAnnotation(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v2 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v2;
  *(a1 + 48) = *(a2 + 48);

  return a1;
}

void *assignWithCopy for MLObjectDetector.ObjectAnnotation(void *a1, void *a2)
{
  *a1 = *a2;
  v2 = a1[1];
  a1[1] = a2[1];

  v2;
  a1[2] = a2[2];
  a1[3] = a2[3];
  a1[4] = a2[4];
  a1[5] = a2[5];
  a1[6] = a2[6];
  return a1;
}

uint64_t __swift_memcpy56_8(uint64_t a1, __int128 *a2)
{
  result = a1;
  *(a1 + 48) = *(a2 + 6);
  v3 = *a2;
  v4 = a2[1];
  *(a1 + 32) = a2[2];
  *(a1 + 16) = v4;
  *a1 = v3;
  return result;
}

uint64_t assignWithTake for MLObjectDetector.ObjectAnnotation(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);
  v3;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  return a1;
}

uint64_t getEnumTagSinglePayload for MLObjectDetector.ObjectAnnotation(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      v2 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = (*(a1 + 8) & 0xFFFFFFFF00000001) != 0 ? -1 : *(a1 + 8) >> 1;
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

void storeEnumTagSinglePayload for MLObjectDetector.ObjectAnnotation(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 40) = 0;
    *(a1 + 24) = 0;
    *(a1 + 8) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 56) = 1;
    }
  }

  else
  {
    if (a3 < 0)
    {
      *(a1 + 56) = 0;
    }

    if (a2)
    {
      *(a1 + 8) = 2 * (a2 - 1);
    }
  }
}

uint64_t assignWithCopy for MLObjectDetector.NormalizedAnnotation(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);

  v2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  return a1;
}

void *assignWithTake for MLObjectDetector.NormalizedAnnotation(void *a1, void *a2)
{
  *a1 = *a2;
  v3 = a1[1];
  a1[1] = a2[1];
  v3;
  a1[2] = a2[2];
  a1[3] = a2[3];
  return a1;
}

uint64_t lazy protocol witness table accessor for type MLObjectDetector.NormalizedAnnotation and conformance MLObjectDetector.NormalizedAnnotation()
{
  result = lazy protocol witness table cache variable for type MLObjectDetector.NormalizedAnnotation and conformance MLObjectDetector.NormalizedAnnotation;
  if (!lazy protocol witness table cache variable for type MLObjectDetector.NormalizedAnnotation and conformance MLObjectDetector.NormalizedAnnotation)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLObjectDetector.NormalizedAnnotation, &type metadata for MLObjectDetector.NormalizedAnnotation);
    lazy protocol witness table cache variable for type MLObjectDetector.NormalizedAnnotation and conformance MLObjectDetector.NormalizedAnnotation = result;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [MLObjectDetector.DecodableAnnotation] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [MLObjectDetector.DecodableAnnotation] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [MLObjectDetector.DecodableAnnotation] and conformance <A> [A])
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstract(&demangling cache variable for type metadata for [MLObjectDetector.DecodableAnnotation]);
    lazy protocol witness table accessor for type MLObjectDetector.DecodableAnnotation and conformance MLObjectDetector.DecodableAnnotation();
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> [A], v1);
    lazy protocol witness table cache variable for type [MLObjectDetector.DecodableAnnotation] and conformance <A> [A] = result;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type MLObjectDetector.DecodableAnnotation and conformance MLObjectDetector.DecodableAnnotation()
{
  result = lazy protocol witness table cache variable for type MLObjectDetector.DecodableAnnotation and conformance MLObjectDetector.DecodableAnnotation;
  if (!lazy protocol witness table cache variable for type MLObjectDetector.DecodableAnnotation and conformance MLObjectDetector.DecodableAnnotation)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLObjectDetector.DecodableAnnotation, &type metadata for MLObjectDetector.DecodableAnnotation);
    lazy protocol witness table cache variable for type MLObjectDetector.DecodableAnnotation and conformance MLObjectDetector.DecodableAnnotation = result;
  }

  return result;
}

uint64_t initializeWithCopy for MLObjectDetector.NormalizedAnnotation(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

{
  return initializeWithCopy for MLObjectDetector.DecodableAnnotation(a1, a2);
}

uint64_t assignWithCopy for MLObjectDetector.DecodableAnnotation(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);

  v2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  return a1;
}

uint64_t assignWithTake for MLObjectDetector.DecodableAnnotation(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);
  v3;
  *(a1 + 16) = *(a2 + 16);
  return a1;
}

void *__swift_project_boxed_opaque_existential_0Tm(void *a1, uint64_t a2)
{
  result = a1;
  v3 = *(*(a2 - 8) + 80);
  if ((v3 & 0x20000) != 0)
  {
    return (*a1 + ((v3 + 16) & ~v3));
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type MLObjectDetector.DecodableAnnotation.CodingKeys and conformance MLObjectDetector.DecodableAnnotation.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MLObjectDetector.DecodableAnnotation.CodingKeys and conformance MLObjectDetector.DecodableAnnotation.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLObjectDetector.DecodableAnnotation.CodingKeys and conformance MLObjectDetector.DecodableAnnotation.CodingKeys)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLObjectDetector.DecodableAnnotation.CodingKeys, &unk_38FCE8);
    lazy protocol witness table cache variable for type MLObjectDetector.DecodableAnnotation.CodingKeys and conformance MLObjectDetector.DecodableAnnotation.CodingKeys = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLObjectDetector.DecodableAnnotation.CodingKeys and conformance MLObjectDetector.DecodableAnnotation.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLObjectDetector.DecodableAnnotation.CodingKeys and conformance MLObjectDetector.DecodableAnnotation.CodingKeys)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLObjectDetector.DecodableAnnotation.CodingKeys, &unk_38FCE8);
    lazy protocol witness table cache variable for type MLObjectDetector.DecodableAnnotation.CodingKeys and conformance MLObjectDetector.DecodableAnnotation.CodingKeys = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLObjectDetector.DecodableAnnotation.CodingKeys and conformance MLObjectDetector.DecodableAnnotation.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLObjectDetector.DecodableAnnotation.CodingKeys and conformance MLObjectDetector.DecodableAnnotation.CodingKeys)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLObjectDetector.DecodableAnnotation.CodingKeys, &unk_38FCE8);
    lazy protocol witness table cache variable for type MLObjectDetector.DecodableAnnotation.CodingKeys and conformance MLObjectDetector.DecodableAnnotation.CodingKeys = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLObjectDetector.DecodableAnnotation.CodingKeys and conformance MLObjectDetector.DecodableAnnotation.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLObjectDetector.DecodableAnnotation.CodingKeys and conformance MLObjectDetector.DecodableAnnotation.CodingKeys)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLObjectDetector.DecodableAnnotation.CodingKeys, &unk_38FCE8);
    lazy protocol witness table cache variable for type MLObjectDetector.DecodableAnnotation.CodingKeys and conformance MLObjectDetector.DecodableAnnotation.CodingKeys = result;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type MLObjectDetector.DecodableAnnotation.Coordinates and conformance MLObjectDetector.DecodableAnnotation.Coordinates()
{
  result = lazy protocol witness table cache variable for type MLObjectDetector.DecodableAnnotation.Coordinates and conformance MLObjectDetector.DecodableAnnotation.Coordinates;
  if (!lazy protocol witness table cache variable for type MLObjectDetector.DecodableAnnotation.Coordinates and conformance MLObjectDetector.DecodableAnnotation.Coordinates)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLObjectDetector.DecodableAnnotation.Coordinates, &type metadata for MLObjectDetector.DecodableAnnotation.Coordinates);
    lazy protocol witness table cache variable for type MLObjectDetector.DecodableAnnotation.Coordinates and conformance MLObjectDetector.DecodableAnnotation.Coordinates = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLObjectDetector.DecodableAnnotation.Coordinates and conformance MLObjectDetector.DecodableAnnotation.Coordinates;
  if (!lazy protocol witness table cache variable for type MLObjectDetector.DecodableAnnotation.Coordinates and conformance MLObjectDetector.DecodableAnnotation.Coordinates)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLObjectDetector.DecodableAnnotation.Coordinates, &type metadata for MLObjectDetector.DecodableAnnotation.Coordinates);
    lazy protocol witness table cache variable for type MLObjectDetector.DecodableAnnotation.Coordinates and conformance MLObjectDetector.DecodableAnnotation.Coordinates = result;
  }

  return result;
}

_OWORD *__swift_memcpy16_4(_OWORD *a1, _OWORD *a2)
{
  result = a1;
  *a1 = *a2;
  return result;
}

uint64_t lazy protocol witness table accessor for type MLObjectDetector.DecodableAnnotation.Coordinates.CodingKeys and conformance MLObjectDetector.DecodableAnnotation.Coordinates.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MLObjectDetector.DecodableAnnotation.Coordinates.CodingKeys and conformance MLObjectDetector.DecodableAnnotation.Coordinates.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLObjectDetector.DecodableAnnotation.Coordinates.CodingKeys and conformance MLObjectDetector.DecodableAnnotation.Coordinates.CodingKeys)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLObjectDetector.DecodableAnnotation.Coordinates.CodingKeys, &unk_38FE00);
    lazy protocol witness table cache variable for type MLObjectDetector.DecodableAnnotation.Coordinates.CodingKeys and conformance MLObjectDetector.DecodableAnnotation.Coordinates.CodingKeys = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLObjectDetector.DecodableAnnotation.Coordinates.CodingKeys and conformance MLObjectDetector.DecodableAnnotation.Coordinates.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLObjectDetector.DecodableAnnotation.Coordinates.CodingKeys and conformance MLObjectDetector.DecodableAnnotation.Coordinates.CodingKeys)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLObjectDetector.DecodableAnnotation.Coordinates.CodingKeys, &unk_38FE00);
    lazy protocol witness table cache variable for type MLObjectDetector.DecodableAnnotation.Coordinates.CodingKeys and conformance MLObjectDetector.DecodableAnnotation.Coordinates.CodingKeys = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLObjectDetector.DecodableAnnotation.Coordinates.CodingKeys and conformance MLObjectDetector.DecodableAnnotation.Coordinates.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLObjectDetector.DecodableAnnotation.Coordinates.CodingKeys and conformance MLObjectDetector.DecodableAnnotation.Coordinates.CodingKeys)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLObjectDetector.DecodableAnnotation.Coordinates.CodingKeys, &unk_38FE00);
    lazy protocol witness table cache variable for type MLObjectDetector.DecodableAnnotation.Coordinates.CodingKeys and conformance MLObjectDetector.DecodableAnnotation.Coordinates.CodingKeys = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLObjectDetector.DecodableAnnotation.Coordinates.CodingKeys and conformance MLObjectDetector.DecodableAnnotation.Coordinates.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLObjectDetector.DecodableAnnotation.Coordinates.CodingKeys and conformance MLObjectDetector.DecodableAnnotation.Coordinates.CodingKeys)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLObjectDetector.DecodableAnnotation.Coordinates.CodingKeys, &unk_38FE00);
    lazy protocol witness table cache variable for type MLObjectDetector.DecodableAnnotation.Coordinates.CodingKeys and conformance MLObjectDetector.DecodableAnnotation.Coordinates.CodingKeys = result;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MLObjectDetector.DecodableAnnotation.Coordinates.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 < 0xFD)
    {
      goto LABEL_13;
    }

    v2 = a2 + 3;
    v3 = 1;
    if (v2 >= 0xFF00)
    {
      v3 = 2 * (v2 >= 0xFFFF00) + 2;
    }

    if (v3 == 4)
    {
      v4 = *(a1 + 1);
    }

    else
    {
      v4 = v3 == 2 ? *(a1 + 1) : a1[1];
    }

    if (v4)
    {
      v5 = *a1 + (v4 << 8) - 4;
    }

    else
    {
LABEL_13:
      v6 = *a1;
      v7 = v6 - 4;
      v8 = v6 < 4;
      v5 = -1;
      if (!v8)
      {
        v5 = v7;
      }
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for MLObjectDetector.DecodableAnnotation.Coordinates.CodingKeys(_BYTE *a1, unsigned int a2, unsigned int a3)
{
  LODWORD(result) = 0;
  if (a3 >= 0xFD)
  {
    v4 = a3 + 3;
    LODWORD(result) = 1;
    if (v4 >= 0xFF00)
    {
      LODWORD(result) = 2 * (v4 >= 0xFFFF00) + 2;
    }
  }

  if (a2 > 0xFC)
  {
    v5 = a2 - 253;
    v6 = (v5 >> 8) + 1;
    *a1 = v5;
    result = result;
    switch(result)
    {
      case 0:
        return result;
      case 1:
        a1[1] = v6;
        break;
      case 2:
        *(a1 + 1) = v6;
        break;
      case 3:
LABEL_16:
        BUG();
      case 4:
        *(a1 + 1) = v6;
        break;
    }
  }

  else
  {
    result = result;
    switch(result)
    {
      case 0:
        goto LABEL_11;
      case 1:
        a1[1] = 0;
        goto LABEL_11;
      case 2:
        *(a1 + 1) = 0;
        goto LABEL_11;
      case 3:
        goto LABEL_16;
      case 4:
        *(a1 + 1) = 0;
LABEL_11:
        if (a2)
        {
          *a1 = a2 + 3;
        }

        break;
      case 5:
        JUMPOUT(0x64130);
    }
  }

  return result;
}

uint64_t MLClassifier.init<A>(model:)(uint64_t a1, uint64_t a2)
{
  v55 = a1;
  v43 = v2;
  v54 = type metadata accessor for MLSupportVectorClassifier(0);
  v3 = *(*(v54 - 8) + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v53 = &v40;
  v52 = type metadata accessor for MLLogisticRegressionClassifier(0);
  v6 = *(*(v52 - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v51 = &v40;
  v50 = type metadata accessor for MLRandomForestClassifier(0);
  v9 = *(*(v50 - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v49 = &v40;
  v48 = type metadata accessor for MLDecisionTreeClassifier(0);
  v12 = *(*(v48 - 8) + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v47 = &v40;
  v15 = type metadata accessor for MLBoostedTreeClassifier(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = alloca(v16);
  v18 = alloca(v16);
  v46 = &v40;
  v19 = *(a2 - 8);
  v20 = *(v19 + 64);
  v21 = alloca(v20);
  v22 = alloca(v20);
  v45 = type metadata accessor for MLClassifier(0);
  v23 = *(*(v45 - 8) + 64);
  v24 = alloca(v23);
  v25 = alloca(v23);
  v44 = v19;
  (*(v19 + 16))(&v40, v55, a2);
  v26 = v46;
  v56 = a2;
  if (swift_dynamicCast(v46, &v40, a2, v15, 0))
  {
    outlined init with take of MLClassifierMetrics(v26, &v40, type metadata accessor for MLBoostedTreeClassifier);
    v27 = 0;
  }

  else
  {
    v28 = v47;
    if (swift_dynamicCast(v47, &v40, v56, v48, 0))
    {
      outlined init with take of MLClassifierMetrics(v28, &v40, type metadata accessor for MLDecisionTreeClassifier);
      v39 = 1;
    }

    else
    {
      v29 = v49;
      if (swift_dynamicCast(v49, &v40, v56, v50, 0))
      {
        outlined init with take of MLClassifierMetrics(v29, &v40, type metadata accessor for MLRandomForestClassifier);
        v39 = 2;
      }

      else
      {
        v30 = v51;
        if (swift_dynamicCast(v51, &v40, v56, v52, 0))
        {
          outlined init with take of MLClassifierMetrics(v30, &v40, type metadata accessor for MLLogisticRegressionClassifier);
          v39 = 3;
        }

        else
        {
          v31 = v53;
          if (!swift_dynamicCast(v53, &v40, v56, v54, 0))
          {
            v41 = 0;
            v42 = 0xE000000000000000;
            _StringGuts.grow(_:)(22);
            v42;
            v41 = 0xD000000000000013;
            v42 = "CreateML/MLRegressor.swift" + 0x8000000000000000;
            DynamicType = swift_getDynamicType(v55, v56, 0);
            v36._countAndFlagsBits = _typeName(_:qualified:)(DynamicType, 0);
            object = v36._object;
            String.append(_:)(v36);
            object;
            v38._countAndFlagsBits = 46;
            v38._object = 0xE100000000000000;
            String.append(_:)(v38);
            _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, v41, v42, "CreateML/MLClassifier.swift", 27, 2, 68, 0);
            BUG();
          }

          outlined init with take of MLClassifierMetrics(v31, &v40, type metadata accessor for MLSupportVectorClassifier);
          v39 = 4;
        }
      }
    }

    v27 = v39;
  }

  swift_storeEnumTagMultiPayload(&v40, v45, v27);
  v32 = *(v44 + 8);
  v33 = v56;
  v32(&v40, v56);
  outlined init with take of MLClassifierMetrics(&v40, v43, type metadata accessor for MLClassifier);
  return v32(v55, v33);
}

uint64_t MLClassifier.init(trainingData:targetColumn:featureColumns:)(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v185 = v5;
  v188 = a4;
  v187 = *&a3;
  v154 = v4;
  v6 = *(*(type metadata accessor for MLClassifierMetrics.Precomputed(0) - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v160 = &v145;
  v165 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ClassificationMetrics<Int>);
  v166 = *(v165 - 8);
  v9 = *(v166 + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v161 = &v145;
  v167 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ClassificationMetrics<String>);
  v168 = *(v167 - 8);
  v12 = *(v168 + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v169 = &v145;
  v162 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
  v15 = *(*(v162 - 8) + 64);
  v16 = alloca(v15);
  v17 = alloca(v15);
  v150 = &v145;
  v18 = alloca(v15);
  v19 = alloca(v15);
  v151 = &v145;
  v20 = *(*(type metadata accessor for AnyClassificationMetrics(0) - 8) + 64);
  v21 = alloca(v20);
  v22 = alloca(v20);
  v163 = &v145;
  v23 = alloca(v20);
  v24 = alloca(v20);
  v164 = &v145;
  v158 = type metadata accessor for MLClassifierMetrics.Contents(0);
  v25 = *(*(v158 - 8) + 64);
  v26 = alloca(v25);
  v27 = alloca(v25);
  v148 = &v145;
  v28 = alloca(v25);
  v29 = alloca(v25);
  v149 = &v145;
  v30 = *(*(type metadata accessor for MLClassifierMetrics(0) - 8) + 64);
  v31 = alloca(v30);
  v32 = alloca(v30);
  v159 = &v145;
  v33 = alloca(v30);
  v34 = alloca(v30);
  v178 = &v145;
  v35 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
  v36 = alloca(v35);
  v37 = alloca(v35);
  v171 = &v145;
  v184 = type metadata accessor for DataFrame(0);
  v38 = *(v184 - 8);
  v39 = *(v38 + 64);
  v40 = alloca(v39);
  v41 = alloca(v39);
  v172 = &v145;
  v42 = alloca(v39);
  v43 = alloca(v39);
  v179 = &v145;
  v180 = type metadata accessor for DataFrame.Slice(0);
  v44 = *(v180 - 8);
  v45 = *(v44 + 64);
  v46 = alloca(v45);
  v47 = alloca(v45);
  v186 = COERCE_DOUBLE(&v145);
  v48 = alloca(v45);
  v49 = alloca(v45);
  v182 = &v145;
  v50 = alloca(v45);
  v51 = alloca(v45);
  v181 = &v145;
  v174 = a1;
  v52 = LOBYTE(v187);
  v53 = v185;
  v54 = static _FeatureUtilities.selectFeaturesFromTrainingData(trainingData:targetColumn:featureColumns:)(a1, a2, *&v187, v188);
  v177 = v53;
  if (v53)
  {
    (*(v38 + 8))(v174, v184);
    v52;
    return v188;
  }

  v173 = v54;
  v152 = a2;
  v176 = v38;
  v175 = v44;
  v188;
  v56 = v184;
  v57 = v174;
  DataFrameProtocol.randomSplit(by:seed:)(v181, v182, 0, 0, v184, &protocol witness table for DataFrame, 0.1);
  if (DataFrameProtocol.isEmpty.getter(v180, &protocol witness table for DataFrame.Slice))
  {
    SLOBYTE(v187);
    v173;
    v58 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v58, 0, 0);
    *v59 = 0xD000000000000045;
    *(v59 + 8) = "filenames, for example: " + 0x8000000000000000;
    *(v59 + 16) = 0;
    *(v59 + 32) = 0;
    *(v59 + 48) = 0;
    swift_willThrow();
    (*(v176 + 8))(v57, v56);
    v60 = *(v175 + 8);
    v61 = v180;
    v60(v182, v180);
    return (v60)(v181, v61);
  }

  v62 = *(v175 + 16);
  v63 = *&v186;
  v64 = v180;
  v62(*&v186, v181, v180);
  DataFrame.init(_:)(v63);
  v62(v63, v182, v64);
  DataFrame.init(_:)(v63);
  v65 = v173;
  v66 = static MLClassifier.selectClassifiers(featureCount:)(*(v173 + 2));
  v67 = *(v66 + 2);
  if (v67 == 0.0)
  {
    v65;
    v89 = _swiftEmptyArrayStorage;
LABEL_23:
    v66;
    SLOBYTE(v187);
    v171 = v89[2];
    v90 = v178;
    if (!v171)
    {
      v155 = 0;
      v156 = 0;
      v157 = 0;
      goto LABEL_58;
    }

    v188 = v89;
    outlined init with copy of TabularRegressionTask((v89 + 4), &v145);

    v91 = v188;
    *&v92 = v188 + 9;
    v93 = (&dword_0 + 1);
    while (1)
    {
      if (v171 == v93)
      {
        outlined init with take of TabularRegressionTask(&v145, &v155);
        v91;
        if (*(&v156 + 1))
        {
          v91;
          outlined init with take of TabularRegressionTask(&v155, &v145);
          v131 = v146;
          v132 = __swift_project_boxed_opaque_existential_0Tm(&v145, v146);
          v133 = *(v131 - 8);
          v134 = *(v133 + 64);
          v135 = alloca(v134);
          v136 = alloca(v134);
          (*(v133 + 16))(&v145, v132, v131);
          MLClassifier.init<A>(model:)(&v145, v131);
          v137 = *(v176 + 8);
          v138 = v184;
          v137(v174, v184);
          v137(v172, v138);
          v137(v179, v138);
          v139 = *(v175 + 8);
          v140 = v180;
          v139(v182, v180);
          v139(v181, v140);
          return __swift_destroy_boxed_opaque_existential_1Tm(&v145);
        }

LABEL_58:
        BUG();
      }

      if (v93 >= v91[2])
      {
        BUG();
      }

      v185 = v93;
      v187 = v92;
      outlined init with copy of TabularRegressionTask(*&v92, &v155);
      v94 = *(&v156 + 1);
      v95 = v157;
      __swift_project_boxed_opaque_existential_0Tm(&v155, *(&v156 + 1));
      (*(v95 + 24))(v94, v95);
      v96 = v149;
      outlined init with copy of MLTrainingSessionParameters(v90, v149, type metadata accessor for MLClassifierMetrics.Contents);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v96, v158);
      v98 = v96;
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload != 1)
        {
          outlined destroy of MLActivityClassifier.ModelParameters(v96, type metadata accessor for MLClassifierMetrics.Contents);
          v186 = 0.0;
          goto LABEL_36;
        }

        v99 = v160;
        outlined init with take of MLClassifierMetrics(v98, v160, type metadata accessor for MLClassifierMetrics.Precomputed);
        v186 = 1.0 - *v99;
        v100 = v99;
        v101 = type metadata accessor for MLClassifierMetrics.Precomputed;
      }

      else
      {
        v102 = v164;
        outlined init with take of MLClassifierMetrics(v98, v164, type metadata accessor for AnyClassificationMetrics);
        v103 = v102;
        v104 = v151;
        outlined init with copy of Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>(v103, v151);
        v105 = swift_getEnumCaseMultiPayload(v104, v162);
        v106 = v161;
        if (v105 == 1)
        {
          v107 = v104;
          v108 = v161;
          v109 = v165;
          v110 = v165;
          v111 = v166;
        }

        else
        {
          v108 = v169;
          v106 = v169;
          v107 = v104;
          v109 = v167;
          v110 = v167;
          v111 = v168;
        }

        (*(v111 + 32))(v106, v107, v110);
        v186 = ClassificationMetrics.accuracy.getter(v109);
        (*(v111 + 8))(v108, v109);
        v100 = v164;
        v101 = type metadata accessor for AnyClassificationMetrics;
      }

      outlined destroy of MLActivityClassifier.ModelParameters(v100, v101);
LABEL_36:
      outlined destroy of MLActivityClassifier.ModelParameters(v90, type metadata accessor for MLClassifierMetrics);
      v112 = v146;
      v113 = v147;
      __swift_project_boxed_opaque_existential_0Tm(&v145, v146);
      v114 = v159;
      (*(v113 + 24))(v112, v113);
      v115 = v148;
      outlined init with copy of MLTrainingSessionParameters(v114, v148, type metadata accessor for MLClassifierMetrics.Contents);
      v116 = swift_getEnumCaseMultiPayload(v115, v158);
      v117 = v115;
      if (v116)
      {
        if (v116 == 1)
        {
          v118 = v160;
          outlined init with take of MLClassifierMetrics(v117, v160, type metadata accessor for MLClassifierMetrics.Precomputed);
          v183 = 1.0 - *v118;
          outlined destroy of MLActivityClassifier.ModelParameters(v118, type metadata accessor for MLClassifierMetrics.Precomputed);
          v119 = v183;
        }

        else
        {
          outlined destroy of MLActivityClassifier.ModelParameters(v115, type metadata accessor for MLClassifierMetrics.Contents);
          v119 = 0.0;
        }

        v90 = v178;
        v128 = v187;
      }

      else
      {
        v120 = v163;
        outlined init with take of MLClassifierMetrics(v117, v163, type metadata accessor for AnyClassificationMetrics);
        v121 = v120;
        v122 = v150;
        outlined init with copy of Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>(v121, v150);
        if (swift_getEnumCaseMultiPayload(v122, v162) == 1)
        {
          v123 = v122;
          v124 = v161;
          v125 = v165;
          v126 = v166;
          (*(v166 + 32))(v161, v123, v165);
          v183 = ClassificationMetrics.accuracy.getter(v125);
          v127 = v124;
        }

        else
        {
          v129 = v169;
          v130 = v122;
          v125 = v167;
          v126 = v168;
          (*(v168 + 32))(v169, v130, v167);
          v127 = v129;
          v183 = ClassificationMetrics.accuracy.getter(v125);
        }

        (*(v126 + 8))(v127, v125);
        v90 = v178;
        outlined destroy of MLActivityClassifier.ModelParameters(v163, type metadata accessor for AnyClassificationMetrics);
        v114 = v159;
        v128 = v187;
        v119 = v183;
      }

      v187 = 1.0 - v186;
      v186 = 1.0 - v119;
      outlined destroy of MLActivityClassifier.ModelParameters(v114, type metadata accessor for MLClassifierMetrics);
      if (v186 <= v187)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(&v155);
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_1Tm(&v145);
        outlined init with take of TabularRegressionTask(&v155, &v145);
      }

      *&v92 = *&v128 + 40;
      v93 = (v185 + 1);
      v91 = v188;
    }
  }

  v153 = *(v176 + 16);
  v170 = v66;
  v68 = v66 + 5;
  v188 = _swiftEmptyArrayStorage;
  v69 = v184;
  v70 = v179;
  while (1)
  {
    v186 = v67;
    v71 = *(v68 - 1);
    v183 = *&v68;
    v72 = *v68;
    v73 = v171;
    v153(v171, v70, v69);
    __swift_storeEnumTagSinglePayload(v73, 0, 1, v69);
    v74 = *(v72 + 8);
    v185 = *(v74 + 24);
    v75 = v173;

    v76 = v177;
    v77 = (v185)(v172, v73, v152, *&v187, v75, v71, v74);
    v177 = v76;
    if (v76)
    {
      break;
    }

    v78 = v77;
    outlined destroy of DataFrame?(v73);
    v75;
    v185 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for TabularClassificationTask);
    v79 = _arrayForceCast<A, B>(_:)(v78, v71, v185);
    v78;
    v80 = *(v79 + 16);
    v81 = v188[2];
    v82 = v80 + v81;
    if (__OFADD__(v80, v81))
    {
      BUG();
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v188);
    v84 = v188;
    if (!isUniquelyReferenced_nonNull_native || v188[3] >> 1 < v82)
    {
      if (v81 > v82)
      {
        v82 = v81;
      }

      v84 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v82, 1, v188);
    }

    v85 = *(v79 + 16) == 0;
    v188 = v84;
    if (v85)
    {
      if (v80)
      {
        BUG();
      }
    }

    else
    {
      v86 = v84[2];
      if ((v84[3] >> 1) - v86 < v80)
      {
        BUG();
      }

      swift_arrayInitWithCopy(&v84[5 * v86 + 4], v79 + 32, v80, v185);
      if (v80)
      {
        v87 = __OFADD__(v188[2], v80);
        v88 = v188[2] + v80;
        if (v87)
        {
          BUG();
        }

        v188[2] = v88;
      }
    }

    v79;
    v68 = (*&v183 + 16);
    *&v67 = *&v186 - 1;
    v69 = v184;
    v70 = v179;
    if (*&v186 == 1)
    {
      v173;
      v89 = v188;
      LOBYTE(v66) = v170;
      goto LABEL_23;
    }
  }

  SLOBYTE(v187);
  swift_bridgeObjectRelease_n(v75, 2);
  v141 = *(v176 + 8);
  v142 = v184;
  v141(v174, v184);
  outlined destroy of DataFrame?(v73);
  v188;
  v170;
  v141(v172, v142);
  v141(v179, v142);
  v143 = *(v175 + 8);
  v144 = v180;
  v143(v182, v180);
  return (v143)(v181, v144);
}

void *static MLClassifier.selectClassifiers(featureCount:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<TabularClassificationTask.Type>);
  if (a1 > 199)
  {
    v2 = swift_allocObject(v1, 48, 7);
    v2[2] = 1;
    v2[3] = 2;
    v2[4] = type metadata accessor for MLLogisticRegressionClassifier(0);
    v2[5] = &protocol witness table for MLLogisticRegressionClassifier;
  }

  else
  {
    v2 = swift_allocObject(v1, 96, 7);
    v2[2] = 4;
    v2[3] = 8;
    v2[4] = type metadata accessor for MLLogisticRegressionClassifier(0);
    v2[5] = &protocol witness table for MLLogisticRegressionClassifier;
    v2[6] = type metadata accessor for MLBoostedTreeClassifier(0);
    v2[7] = &protocol witness table for MLBoostedTreeClassifier;
    v2[8] = type metadata accessor for MLDecisionTreeClassifier(0);
    v2[9] = &protocol witness table for MLDecisionTreeClassifier;
    v2[10] = type metadata accessor for MLRandomForestClassifier(0);
    v2[11] = &protocol witness table for MLRandomForestClassifier;
  }

  return v2;
}

uint64_t MLClassifier.init(trainingData:targetColumn:featureColumns:)(uint64_t *a1, uint64_t a2, void *a3, void *a4)
{
  v12 = a4;
  v13 = a3;
  v4 = *(*(type metadata accessor for DataFrame(0) - 8) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v7 = *(a1 + 8);
  v10 = *a1;
  v11 = v7;
  DataFrame.init(_:)(&v10);
  return MLClassifier.init(trainingData:targetColumn:featureColumns:)(&v9, a2, v13, v12);
}

uint64_t MLClassifier.predictions(from:)(uint64_t a1)
{
  v76 = v2;
  v59 = v3;
  v77 = a1;
  v78 = v1;
  v61 = *(type metadata accessor for MLSupportVectorClassifier(0) - 8);
  v4 = *(v61 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v74 = &v59;
  v60 = v4;
  v7 = alloca(v4);
  v8 = alloca(v4);
  v73 = &v59;
  v63 = type metadata accessor for MLLogisticRegressionClassifier(0);
  v9 = *(*(v63 - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v62 = &v59;
  v65 = type metadata accessor for MLRandomForestClassifier(0);
  v12 = *(*(v65 - 8) + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v64 = &v59;
  v67 = type metadata accessor for MLDecisionTreeClassifier(0);
  v15 = *(*(v67 - 8) + 64);
  v16 = alloca(v15);
  v17 = alloca(v15);
  v66 = &v59;
  v80 = type metadata accessor for DataFrame(0);
  v79 = *(v80 - 8);
  v18 = *(v79 + 64);
  v19 = alloca(v18);
  v20 = alloca(v18);
  v75 = &v59;
  v21 = alloca(v18);
  v22 = alloca(v18);
  v68 = &v59;
  v23 = alloca(v18);
  v24 = alloca(v18);
  v69 = &v59;
  v25 = alloca(v18);
  v26 = alloca(v18);
  v71 = &v59;
  v27 = alloca(v18);
  v28 = alloca(v18);
  v72 = &v59;
  v29 = type metadata accessor for MLBoostedTreeClassifier(0);
  v30 = *(*(v29 - 8) + 64);
  v31 = alloca(v30);
  v32 = alloca(v30);
  v70 = &v59;
  v33 = type metadata accessor for MLClassifier(0);
  v34 = *(*(v33 - 8) + 64);
  v35 = alloca(v34);
  v36 = alloca(v34);
  outlined init with copy of MLTrainingSessionParameters(v59, &v59, type metadata accessor for MLClassifier);
  switch(swift_getEnumCaseMultiPayload(&v59, v33))
  {
    case 0u:
      v37 = v70;
      outlined init with take of MLClassifierMetrics(&v59, v70, type metadata accessor for MLBoostedTreeClassifier);
      v38 = v77;
      DataFrame.validateContainsColumns(_:context:)(*(v37 + *(v29 + 28)), __PAIR128__(0xE700000000000000, 0x65727574616546));
      if (!v39)
      {
        v40 = v72;
        AnyTreeClassifierModel.applied(to:eventHandler:)(v38, 0, 0);
        DataFrame.subscript.getter(*v37, v37[1]);
        (*(v79 + 8))(v40, v80);
      }

      v41 = type metadata accessor for MLBoostedTreeClassifier;
      goto LABEL_15;
    case 1u:
      v56 = v71;
      v37 = v66;
      outlined init with take of MLClassifierMetrics(&v59, v66, type metadata accessor for MLDecisionTreeClassifier);
      v57 = v77;
      DataFrame.validateContainsColumns(_:context:)(*(v37 + *(v67 + 28)), __PAIR128__(0xE700000000000000, 0x65727574616546));
      if (!v58)
      {
        AnyTreeClassifierModel.applied(to:eventHandler:)(v57, 0, 0);
        DataFrame.subscript.getter(*v37, v37[1]);
        (*(v79 + 8))(v56, v80);
      }

      v41 = type metadata accessor for MLDecisionTreeClassifier;
      goto LABEL_15;
    case 2u:
      v50 = v69;
      v37 = v64;
      outlined init with take of MLClassifierMetrics(&v59, v64, type metadata accessor for MLRandomForestClassifier);
      v51 = v77;
      DataFrame.validateContainsColumns(_:context:)(*(v37 + *(v65 + 28)), __PAIR128__(0xE700000000000000, 0x65727574616546));
      if (!v52)
      {
        AnyTreeClassifierModel.applied(to:eventHandler:)(v51, 0, 0);
        DataFrame.subscript.getter(*v37, v37[1]);
        (*(v79 + 8))(v50, v80);
      }

      v41 = type metadata accessor for MLRandomForestClassifier;
      goto LABEL_15;
    case 3u:
      v53 = v68;
      v37 = v62;
      outlined init with take of MLClassifierMetrics(&v59, v62, type metadata accessor for MLLogisticRegressionClassifier);
      v54 = v77;
      DataFrame.validateContainsColumns(_:context:)(*(v37 + *(v63 + 28)), __PAIR128__(0xE700000000000000, 0x65727574616546));
      if (!v55)
      {
        MLLogisticRegressionClassifier.Model.applied(to:eventHandler:)(v54, 0, 0);
        DataFrame.subscript.getter(*v37, v37[1]);
        (*(v79 + 8))(v53, v80);
      }

      v41 = type metadata accessor for MLLogisticRegressionClassifier;
LABEL_15:
      result = outlined destroy of MLActivityClassifier.ModelParameters(v37, v41);
      break;
    case 4u:
      v42 = v73;
      outlined init with take of MLClassifierMetrics(&v59, v73, type metadata accessor for MLSupportVectorClassifier);
      v43 = v79;
      (*(v79 + 16))(v75, v77, v80);
      outlined init with copy of MLTrainingSessionParameters(v42, v74, type metadata accessor for MLSupportVectorClassifier);
      v44 = *(v43 + 80);
      v45 = ~*(v43 + 80) & (v44 + 16);
      v46 = *(v61 + 80);
      v47 = ~v46 & (v45 + v46 + v18);
      v48 = swift_allocObject(&unk_38FE20, v47 + v60, v46 | v44 | 7);
      (*(v43 + 32))(v48 + v45, v75, v80);
      outlined init with take of MLClassifierMetrics(v74, v48 + v47, type metadata accessor for MLSupportVectorClassifier);
      specialized blockAwait<A>(_:)(&async function pointer to partial apply for closure #1 in MLSupportVectorClassifier.predictions(from:), v48);

      result = outlined destroy of MLActivityClassifier.ModelParameters(v73, type metadata accessor for MLSupportVectorClassifier);
      break;
  }

  return result;
}

uint64_t MLClassifier.predictions(from:)(uint64_t a1, __m128 a2)
{
  v110 = v3;
  v87 = v4;
  v112 = v2;
  v5 = *(*(type metadata accessor for MLSupportVectorClassifier(0) - 8) + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v88 = &v87;
  v89 = type metadata accessor for MLLogisticRegressionClassifier(0);
  v8 = *(*(v89 - 8) + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v105 = &v87;
  v90 = type metadata accessor for MLRandomForestClassifier(0);
  v11 = *(*(v90 - 8) + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v106 = &v87;
  v92 = type metadata accessor for MLDecisionTreeClassifier(0);
  v14 = *(*(v92 - 8) + 64);
  v15 = alloca(v14);
  v16 = alloca(v14);
  v91 = &v87;
  v113 = type metadata accessor for DataFrame(0);
  v114 = *(v113 - 8);
  v17 = *(v114 + 64);
  v18 = alloca(v17);
  v19 = alloca(v17);
  v98 = &v87;
  v20 = alloca(v17);
  v21 = alloca(v17);
  v95 = &v87;
  v22 = alloca(v17);
  v23 = alloca(v17);
  v99 = &v87;
  v24 = alloca(v17);
  v25 = alloca(v17);
  v96 = &v87;
  v26 = alloca(v17);
  v27 = alloca(v17);
  v100 = &v87;
  v28 = alloca(v17);
  v29 = alloca(v17);
  v97 = &v87;
  v30 = alloca(v17);
  v31 = alloca(v17);
  v94 = &v87;
  v32 = alloca(v17);
  v33 = alloca(v17);
  v93 = &v87;
  v34 = *(*(type metadata accessor for AnyColumn(0) - 8) + 64);
  v35 = alloca(v34);
  v36 = alloca(v34);
  v101 = &v87;
  v37 = alloca(v34);
  v38 = alloca(v34);
  v102 = &v87;
  v39 = alloca(v34);
  v40 = alloca(v34);
  v103 = &v87;
  v41 = alloca(v34);
  v42 = alloca(v34);
  v104 = &v87;
  v43 = type metadata accessor for MLBoostedTreeClassifier(0);
  v44 = *(*(v43 - 8) + 64);
  v45 = alloca(v44);
  v46 = alloca(v44);
  v109 = &v87;
  v47 = type metadata accessor for MLClassifier(0);
  v48 = *(*(v47 - 8) + 64);
  v49 = alloca(v48);
  v50 = alloca(v48);
  v111 = *a1;
  v51 = *(a1 + 8);
  outlined init with copy of MLTrainingSessionParameters(v87, &v87, type metadata accessor for MLClassifier);
  switch(swift_getEnumCaseMultiPayload(&v87, v47))
  {
    case 0u:
      v52 = v109;
      outlined init with take of MLClassifierMetrics(&v87, v109, type metadata accessor for MLBoostedTreeClassifier);
      v107 = v111;
      v108 = v51 & 1;
      outlined copy of Result<_DataTable, Error>(v111, v51);
      v53 = v93;
      DataFrame.init(_:)(&v107);
      DataFrame.validateContainsColumns(_:context:)(*(v52 + *(v43 + 28)), __PAIR128__(0xE700000000000000, 0x65727574616546));
      if (v55)
      {
        (*(v114 + 8))(v53, v113);
      }

      else
      {
        v56 = v94;
        AnyTreeClassifierModel.applied(to:eventHandler:)(v53, 0, 0);
        DataFrame.subscript.getter(*v109, v109[1]);
        v77 = v56;
        v78 = *(v114 + 8);
        v79 = v53;
        v80 = v113;
        v78(v77, v113);
        *v54.i64 = v78(v79, v80);
        MLUntypedColumn.init(_:convertArraysToShapedArrays:)(v104, 1, v54);
        v52 = v109;
      }

      v57 = type metadata accessor for MLBoostedTreeClassifier;
      v58 = v52;
      return outlined destroy of MLActivityClassifier.ModelParameters(v58, v57);
    case 1u:
      v61 = v91;
      outlined init with take of MLClassifierMetrics(&v87, v91, type metadata accessor for MLDecisionTreeClassifier);
      v107 = v111;
      v108 = v51 & 1;
      outlined copy of Result<_DataTable, Error>(v111, v51);
      v68 = v97;
      DataFrame.init(_:)(&v107);
      DataFrame.validateContainsColumns(_:context:)(*(v61 + *(v92 + 28)), __PAIR128__(0xE700000000000000, 0x65727574616546));
      if (v70)
      {
        (*(v114 + 8))(v68, v113);
      }

      else
      {
        AnyTreeClassifierModel.applied(to:eventHandler:)(v68, 0, 0);
        v81 = v100;
        DataFrame.subscript.getter(*v61, v61[1]);
        v82 = *(v114 + 8);
        v83 = v81;
        v84 = v61;
        v85 = v113;
        v82(v83, v113);
        v86 = v85;
        v61 = v84;
        *v69.i64 = v82(v97, v86);
        MLUntypedColumn.init(_:convertArraysToShapedArrays:)(v103, 1, v69);
      }

      v57 = type metadata accessor for MLDecisionTreeClassifier;
      goto LABEL_17;
    case 2u:
      v61 = v106;
      outlined init with take of MLClassifierMetrics(&v87, v106, type metadata accessor for MLRandomForestClassifier);
      v107 = v111;
      v108 = v51 & 1;
      outlined copy of Result<_DataTable, Error>(v111, v51);
      v62 = v96;
      DataFrame.init(_:)(&v107);
      DataFrame.validateContainsColumns(_:context:)(*(v61 + *(v90 + 28)), __PAIR128__(0xE700000000000000, 0x65727574616546));
      if (!v64)
      {
        AnyTreeClassifierModel.applied(to:eventHandler:)(v62, 0, 0);
        v71 = v99;
        DataFrame.subscript.getter(*v61, v61[1]);
        v72 = *(v114 + 8);
        v73 = v113;
        v72(v71, v113);
        *v63.i64 = v72(v96, v73);
        MLUntypedColumn.init(_:convertArraysToShapedArrays:)(v102, 1, v63);
        v57 = type metadata accessor for MLRandomForestClassifier;
        v58 = v106;
        return outlined destroy of MLActivityClassifier.ModelParameters(v58, v57);
      }

      (*(v114 + 8))(v62, v113);
      v57 = type metadata accessor for MLRandomForestClassifier;
      goto LABEL_17;
    case 3u:
      v61 = v105;
      outlined init with take of MLClassifierMetrics(&v87, v105, type metadata accessor for MLLogisticRegressionClassifier);
      v107 = v111;
      v108 = v51 & 1;
      outlined copy of Result<_DataTable, Error>(v111, v51);
      v65 = v95;
      DataFrame.init(_:)(&v107);
      DataFrame.validateContainsColumns(_:context:)(*(v61 + *(v89 + 28)), __PAIR128__(0xE700000000000000, 0x65727574616546));
      if (v67)
      {
        (*(v114 + 8))(v65, v113);
        v57 = type metadata accessor for MLLogisticRegressionClassifier;
LABEL_17:
        v58 = v61;
      }

      else
      {
        MLLogisticRegressionClassifier.Model.applied(to:eventHandler:)(v65, 0, 0);
        v74 = v98;
        DataFrame.subscript.getter(*v61, v61[1]);
        v75 = *(v114 + 8);
        v76 = v113;
        v75(v74, v113);
        *v66.i64 = v75(v95, v76);
        MLUntypedColumn.init(_:convertArraysToShapedArrays:)(v101, 1, v66);
        v57 = type metadata accessor for MLLogisticRegressionClassifier;
        v58 = v105;
      }

      return outlined destroy of MLActivityClassifier.ModelParameters(v58, v57);
    case 4u:
      v59 = v88;
      outlined init with take of MLClassifierMetrics(&v87, v88, type metadata accessor for MLSupportVectorClassifier);
      v107 = v111;
      v108 = v51 & 1;
      MLSupportVectorClassifier.predictions(from:)(&v107, a2);
      return outlined destroy of MLActivityClassifier.ModelParameters(v59, type metadata accessor for MLSupportVectorClassifier);
  }
}

uint64_t MLClassifier.evaluation(on:)(uint64_t a1)
{
  v3 = v2;
  v31 = a1;
  v32 = v1;
  v4 = *(*(type metadata accessor for MLSupportVectorClassifier(0) - 8) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v28 = &v28;
  v7 = *(*(type metadata accessor for MLLogisticRegressionClassifier(0) - 8) + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v29 = &v28;
  v10 = *(*(type metadata accessor for MLRandomForestClassifier(0) - 8) + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v30 = &v28;
  v13 = *(*(type metadata accessor for MLDecisionTreeClassifier(0) - 8) + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v16 = *(*(type metadata accessor for MLBoostedTreeClassifier(0) - 8) + 64);
  v17 = alloca(v16);
  v18 = alloca(v16);
  v19 = &v28;
  v20 = type metadata accessor for MLClassifier(0);
  v21 = *(*(v20 - 8) + 64);
  v22 = alloca(v21);
  v23 = alloca(v21);
  outlined init with copy of MLTrainingSessionParameters(v3, &v28, type metadata accessor for MLClassifier);
  switch(swift_getEnumCaseMultiPayload(&v28, v20))
  {
    case 0u:
      v24 = type metadata accessor for MLBoostedTreeClassifier;
      outlined init with take of MLClassifierMetrics(&v28, &v28, type metadata accessor for MLBoostedTreeClassifier);
      MLBoostedTreeClassifier.evaluation(on:)(v31);
      goto LABEL_6;
    case 1u:
      outlined init with take of MLClassifierMetrics(&v28, &v28, type metadata accessor for MLDecisionTreeClassifier);
      MLDecisionTreeClassifier.evaluation(on:)(v31);
      v25 = &v28;
      v26 = type metadata accessor for MLDecisionTreeClassifier;
      return outlined destroy of MLActivityClassifier.ModelParameters(v25, v26);
    case 2u:
      v24 = type metadata accessor for MLRandomForestClassifier;
      v19 = v30;
      outlined init with take of MLClassifierMetrics(&v28, v30, type metadata accessor for MLRandomForestClassifier);
      MLRandomForestClassifier.evaluation(on:)(v31);
      goto LABEL_6;
    case 3u:
      v24 = type metadata accessor for MLLogisticRegressionClassifier;
      v19 = v29;
      outlined init with take of MLClassifierMetrics(&v28, v29, type metadata accessor for MLLogisticRegressionClassifier);
      MLLogisticRegressionClassifier.evaluation(on:)(v31);
      goto LABEL_6;
    case 4u:
      v24 = type metadata accessor for MLSupportVectorClassifier;
      v19 = v28;
      outlined init with take of MLClassifierMetrics(&v28, v28, type metadata accessor for MLSupportVectorClassifier);
      MLSupportVectorClassifier.evaluation(on:)(v31);
LABEL_6:
      v25 = v19;
      v26 = v24;
      return outlined destroy of MLActivityClassifier.ModelParameters(v25, v26);
  }
}

{
  v31 = v2;
  v38 = v1;
  v3 = *(*(type metadata accessor for MLSupportVectorClassifier(0) - 8) + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v32 = &v31;
  v6 = *(*(type metadata accessor for MLLogisticRegressionClassifier(0) - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v33 = &v31;
  v9 = *(*(type metadata accessor for MLRandomForestClassifier(0) - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v34 = &v31;
  v12 = *(*(type metadata accessor for MLDecisionTreeClassifier(0) - 8) + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v35 = &v31;
  v40 = type metadata accessor for DataFrame(0);
  v39 = *(v40 - 8);
  v15 = *(v39 + 64);
  v16 = alloca(v15);
  v17 = alloca(v15);
  v41 = &v31;
  v18 = *(*(type metadata accessor for MLBoostedTreeClassifier(0) - 8) + 64);
  v19 = alloca(v18);
  v20 = alloca(v18);
  v21 = type metadata accessor for MLClassifier(0);
  v22 = *(*(v21 - 8) + 64);
  v23 = alloca(v22);
  v24 = alloca(v22);
  v25 = *a1;
  v26 = *(a1 + 8);
  outlined init with copy of MLTrainingSessionParameters(v31, &v31, type metadata accessor for MLClassifier);
  switch(swift_getEnumCaseMultiPayload(&v31, v21))
  {
    case 0u:
      v27 = &v31;
      v28 = type metadata accessor for MLBoostedTreeClassifier;
      outlined init with take of MLClassifierMetrics(&v31, &v31, type metadata accessor for MLBoostedTreeClassifier);
      v36 = v25;
      v37 = v26 & 1;
      outlined copy of Result<_DataTable, Error>(v25, v26);
      v29 = v41;
      DataFrame.init(_:)(&v36);
      MLBoostedTreeClassifier.evaluation(on:)(v29);
      break;
    case 1u:
      v28 = type metadata accessor for MLDecisionTreeClassifier;
      v27 = v35;
      outlined init with take of MLClassifierMetrics(&v31, v35, type metadata accessor for MLDecisionTreeClassifier);
      v36 = v25;
      v37 = v26 & 1;
      outlined copy of Result<_DataTable, Error>(v25, v26);
      v29 = v41;
      DataFrame.init(_:)(&v36);
      MLDecisionTreeClassifier.evaluation(on:)(v29);
      break;
    case 2u:
      v28 = type metadata accessor for MLRandomForestClassifier;
      v27 = v34;
      outlined init with take of MLClassifierMetrics(&v31, v34, type metadata accessor for MLRandomForestClassifier);
      v36 = v25;
      v37 = v26 & 1;
      outlined copy of Result<_DataTable, Error>(v25, v26);
      v29 = v41;
      DataFrame.init(_:)(&v36);
      MLRandomForestClassifier.evaluation(on:)(v29);
      break;
    case 3u:
      v28 = type metadata accessor for MLLogisticRegressionClassifier;
      v27 = v33;
      outlined init with take of MLClassifierMetrics(&v31, v33, type metadata accessor for MLLogisticRegressionClassifier);
      v36 = v25;
      v37 = v26 & 1;
      outlined copy of Result<_DataTable, Error>(v25, v26);
      v29 = v41;
      DataFrame.init(_:)(&v36);
      MLLogisticRegressionClassifier.evaluation(on:)(v29);
      break;
    case 4u:
      v28 = type metadata accessor for MLSupportVectorClassifier;
      v27 = v32;
      outlined init with take of MLClassifierMetrics(&v31, v32, type metadata accessor for MLSupportVectorClassifier);
      v36 = v25;
      v37 = v26 & 1;
      outlined copy of Result<_DataTable, Error>(v25, v26);
      v29 = v41;
      DataFrame.init(_:)(&v36);
      MLSupportVectorClassifier.evaluation(on:)(v29);
      break;
  }

  (*(v39 + 8))(v29, v40);
  return outlined destroy of MLActivityClassifier.ModelParameters(v27, v28);
}

uint64_t MLClassifier.write(to:metadata:)(uint64_t a1, const void *a2)
{
  v31 = a2;
  v30 = a1;
  v3 = *(*(type metadata accessor for MLSupportVectorClassifier(0) - 8) + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v26 = v25;
  v6 = *(*(type metadata accessor for MLLogisticRegressionClassifier(0) - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v27 = v25;
  v9 = *(*(type metadata accessor for MLRandomForestClassifier(0) - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v28 = v25;
  v12 = *(*(type metadata accessor for MLDecisionTreeClassifier(0) - 8) + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v29 = v25;
  v15 = *(*(type metadata accessor for MLBoostedTreeClassifier(0) - 8) + 64);
  v16 = alloca(v15);
  v17 = alloca(v15);
  v18 = v25;
  v19 = type metadata accessor for MLClassifier(0);
  v20 = *(*(v19 - 8) + 64);
  v21 = alloca(v20);
  v22 = alloca(v20);
  outlined init with copy of MLTrainingSessionParameters(v2, v25, type metadata accessor for MLClassifier);
  switch(swift_getEnumCaseMultiPayload(v25, v19))
  {
    case 0u:
      v23 = type metadata accessor for MLBoostedTreeClassifier;
      outlined init with take of MLClassifierMetrics(v25, v25, type metadata accessor for MLBoostedTreeClassifier);
      qmemcpy(v25, v31, sizeof(v25));
      MLBoostedTreeClassifier.write(to:metadata:)(v30, v25);
      break;
    case 1u:
      v23 = type metadata accessor for MLDecisionTreeClassifier;
      v18 = v29;
      outlined init with take of MLClassifierMetrics(v25, v29, type metadata accessor for MLDecisionTreeClassifier);
      qmemcpy(v25, v31, sizeof(v25));
      MLDecisionTreeClassifier.write(to:metadata:)(v30, v25);
      break;
    case 2u:
      v23 = type metadata accessor for MLRandomForestClassifier;
      v18 = v28;
      outlined init with take of MLClassifierMetrics(v25, v28, type metadata accessor for MLRandomForestClassifier);
      qmemcpy(v25, v31, sizeof(v25));
      MLRandomForestClassifier.write(to:metadata:)(v30, v25);
      break;
    case 3u:
      v23 = type metadata accessor for MLLogisticRegressionClassifier;
      v18 = v27;
      outlined init with take of MLClassifierMetrics(v25, v27, type metadata accessor for MLLogisticRegressionClassifier);
      qmemcpy(v25, v31, sizeof(v25));
      MLLogisticRegressionClassifier.write(to:metadata:)(v30, v25);
      break;
    case 4u:
      v23 = type metadata accessor for MLSupportVectorClassifier;
      v18 = v26;
      outlined init with take of MLClassifierMetrics(v25, v26, type metadata accessor for MLSupportVectorClassifier);
      qmemcpy(v25, v31, sizeof(v25));
      MLSupportVectorClassifier.write(to:metadata:)(v30, v25);
      break;
  }

  return outlined destroy of MLActivityClassifier.ModelParameters(v18, v23);
}

uint64_t MLClassifier.write(toFile:metadata:)(uint64_t a1, uint64_t a2, const void *a3)
{
  v73 = v3;
  v61 = v4;
  v62 = a3;
  v74 = a2;
  v75 = a1;
  v5 = *(*(type metadata accessor for MLSupportVectorClassifier(0) - 8) + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v69 = v59;
  v8 = *(*(type metadata accessor for MLLogisticRegressionClassifier(0) - 8) + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v70 = v59;
  v11 = *(*(type metadata accessor for MLRandomForestClassifier(0) - 8) + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v71 = v59;
  v14 = *(*(type metadata accessor for MLDecisionTreeClassifier(0) - 8) + 64);
  v15 = alloca(v14);
  v16 = alloca(v14);
  v72 = v59;
  v78 = type metadata accessor for URL.DirectoryHint(0);
  v77 = *(v78 - 8);
  v17 = *(v77 + 64);
  v18 = alloca(v17);
  v19 = alloca(v17);
  v76 = v59;
  v20 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?) - 8) + 64);
  v21 = alloca(v20);
  v22 = alloca(v20);
  v80 = type metadata accessor for URL(0);
  v79 = *(v80 - 8);
  v23 = *(v79 + 64);
  v24 = alloca(v23);
  v25 = alloca(v23);
  v64 = v59;
  v26 = alloca(v23);
  v27 = alloca(v23);
  v65 = v59;
  v28 = alloca(v23);
  v29 = alloca(v23);
  v66 = v59;
  v30 = alloca(v23);
  v31 = alloca(v23);
  v67 = v59;
  v32 = alloca(v23);
  v33 = alloca(v23);
  v68 = v59;
  v34 = *(*(type metadata accessor for MLBoostedTreeClassifier(0) - 8) + 64);
  v35 = alloca(v34);
  v36 = alloca(v34);
  v37 = type metadata accessor for MLClassifier(0);
  v38 = *(*(v37 - 8) + 64);
  v39 = alloca(v38);
  v40 = alloca(v38);
  qmemcpy(v60, v62, sizeof(v60));
  outlined init with copy of MLTrainingSessionParameters(v61, v59, type metadata accessor for MLClassifier);
  switch(swift_getEnumCaseMultiPayload(v59, v37))
  {
    case 0u:
      outlined init with take of MLClassifierMetrics(v59, v59, type metadata accessor for MLBoostedTreeClassifier);
      v63 = v59;
      __swift_storeEnumTagSinglePayload(v59, 1, 1, v80);
      v41 = v76;
      (*(v77 + 104))(v76, enum case for URL.DirectoryHint.inferFromPath(_:), v78);
      v42 = v74;

      v43 = v68;
      URL.init(filePath:directoryHint:relativeTo:)(v75, v42, v41, v63);
      qmemcpy(v59, v60, sizeof(v59));
      MLBoostedTreeClassifier.write(to:metadata:)(v43, v59);
      (*(v79 + 8))(v68, v80);
      v44 = type metadata accessor for MLBoostedTreeClassifier;
      v45 = v59;
      break;
    case 1u:
      outlined init with take of MLClassifierMetrics(v59, v72, type metadata accessor for MLDecisionTreeClassifier);
      __swift_storeEnumTagSinglePayload(v59, 1, 1, v80);
      v55 = v76;
      (*(v77 + 104))(v76, enum case for URL.DirectoryHint.inferFromPath(_:), v78);
      v56 = v74;

      v57 = v67;
      URL.init(filePath:directoryHint:relativeTo:)(v75, v56, v55, v59);
      qmemcpy(v59, v60, sizeof(v59));
      MLDecisionTreeClassifier.write(to:metadata:)(v57, v59);
      (*(v79 + 8))(v67, v80);
      v44 = type metadata accessor for MLDecisionTreeClassifier;
      v45 = v72;
      break;
    case 2u:
      outlined init with take of MLClassifierMetrics(v59, v71, type metadata accessor for MLRandomForestClassifier);
      __swift_storeEnumTagSinglePayload(v59, 1, 1, v80);
      v49 = v76;
      (*(v77 + 104))(v76, enum case for URL.DirectoryHint.inferFromPath(_:), v78);
      v50 = v74;

      v51 = v66;
      URL.init(filePath:directoryHint:relativeTo:)(v75, v50, v49, v59);
      qmemcpy(v59, v60, sizeof(v59));
      MLRandomForestClassifier.write(to:metadata:)(v51, v59);
      (*(v79 + 8))(v66, v80);
      v44 = type metadata accessor for MLRandomForestClassifier;
      v45 = v71;
      break;
    case 3u:
      outlined init with take of MLClassifierMetrics(v59, v70, type metadata accessor for MLLogisticRegressionClassifier);
      __swift_storeEnumTagSinglePayload(v59, 1, 1, v80);
      v52 = v76;
      (*(v77 + 104))(v76, enum case for URL.DirectoryHint.inferFromPath(_:), v78);
      v53 = v74;

      v54 = v65;
      URL.init(filePath:directoryHint:relativeTo:)(v75, v53, v52, v59);
      qmemcpy(v59, v60, sizeof(v59));
      MLLogisticRegressionClassifier.write(to:metadata:)(v54, v59);
      (*(v79 + 8))(v65, v80);
      v44 = type metadata accessor for MLLogisticRegressionClassifier;
      v45 = v70;
      break;
    case 4u:
      outlined init with take of MLClassifierMetrics(v59, v69, type metadata accessor for MLSupportVectorClassifier);
      __swift_storeEnumTagSinglePayload(v59, 1, 1, v80);
      v46 = v76;
      (*(v77 + 104))(v76, enum case for URL.DirectoryHint.inferFromPath(_:), v78);
      v47 = v74;

      v48 = v64;
      URL.init(filePath:directoryHint:relativeTo:)(v75, v47, v46, v59);
      qmemcpy(v59, v60, sizeof(v59));
      MLSupportVectorClassifier.write(to:metadata:)(v48, v59);
      (*(v79 + 8))(v64, v80);
      v44 = type metadata accessor for MLSupportVectorClassifier;
      v45 = v69;
      break;
  }

  return outlined destroy of MLActivityClassifier.ModelParameters(v45, v44);
}

id MLClassifier.model.getter()
{
  v30 = v0;
  v31 = type metadata accessor for MLSupportVectorClassifier(0);
  v1 = *(*(v31 - 8) + 64);
  v2 = alloca(v1);
  v3 = alloca(v1);
  v32 = v29;
  v33 = type metadata accessor for MLLogisticRegressionClassifier(0);
  v4 = *(*(v33 - 8) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v34 = v29;
  v35 = type metadata accessor for MLRandomForestClassifier(0);
  v7 = *(*(v35 - 8) + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v36 = v29;
  v10 = type metadata accessor for MLDecisionTreeClassifier(0);
  v11 = *(*(v10 - 8) + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v37 = v29;
  v14 = type metadata accessor for MLBoostedTreeClassifier(0);
  v15 = *(*(v14 - 8) + 64);
  v16 = alloca(v15);
  v17 = alloca(v15);
  v18 = type metadata accessor for MLClassifier(0);
  v19 = *(*(v18 - 8) + 64);
  v20 = alloca(v19);
  v21 = alloca(v19);
  outlined init with copy of MLTrainingSessionParameters(v30, v29, type metadata accessor for MLClassifier);
  switch(swift_getEnumCaseMultiPayload(v29, v18))
  {
    case 0u:
      outlined init with take of MLClassifierMetrics(v29, v29, type metadata accessor for MLBoostedTreeClassifier);
      v22 = *&v29[*(v14 + 20)];
      outlined destroy of MLActivityClassifier.ModelParameters(v29, type metadata accessor for MLBoostedTreeClassifier);
      return v22;
    case 1u:
      v24 = type metadata accessor for MLDecisionTreeClassifier;
      v25 = v37;
      outlined init with take of MLClassifierMetrics(v29, v37, type metadata accessor for MLDecisionTreeClassifier);
      v27 = *(v10 + 20);
      goto LABEL_8;
    case 2u:
      v24 = type metadata accessor for MLRandomForestClassifier;
      v25 = v36;
      outlined init with take of MLClassifierMetrics(v29, v36, type metadata accessor for MLRandomForestClassifier);
      v26 = v35;
      goto LABEL_6;
    case 3u:
      v24 = type metadata accessor for MLLogisticRegressionClassifier;
      v25 = v34;
      outlined init with take of MLClassifierMetrics(v29, v34, type metadata accessor for MLLogisticRegressionClassifier);
      v26 = v33;
      goto LABEL_6;
    case 4u:
      v24 = type metadata accessor for MLSupportVectorClassifier;
      v25 = v32;
      outlined init with take of MLClassifierMetrics(v29, v32, type metadata accessor for MLSupportVectorClassifier);
      v26 = v31;
LABEL_6:
      v27 = *(v26 + 20);
LABEL_8:
      v28 = *(v25 + v27);
      outlined destroy of MLActivityClassifier.ModelParameters(v25, v24);
      return v28;
  }
}

uint64_t MLClassifier.trainingMetrics.getter()
{
  v32 = v1;
  v40 = v0;
  v34 = type metadata accessor for MLSupportVectorClassifier(0);
  v2 = *(*(v34 - 8) + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v33 = &v32;
  v36 = type metadata accessor for MLLogisticRegressionClassifier(0);
  v5 = *(*(v36 - 8) + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v35 = &v32;
  v8 = type metadata accessor for MLRandomForestClassifier(0);
  v9 = *(*(v8 - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v37 = &v32;
  v12 = type metadata accessor for MLDecisionTreeClassifier(0);
  v13 = *(*(v12 - 8) + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v38 = &v32;
  v16 = type metadata accessor for MLBoostedTreeClassifier(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = alloca(v17);
  v19 = alloca(v17);
  v39 = &v32;
  v20 = type metadata accessor for MLClassifier(0);
  v21 = *(*(v20 - 8) + 64);
  v22 = alloca(v21);
  v23 = alloca(v21);
  outlined init with copy of MLTrainingSessionParameters(v32, &v32, type metadata accessor for MLClassifier);
  switch(swift_getEnumCaseMultiPayload(&v32, v20))
  {
    case 0u:
      v24 = v39;
      outlined init with take of MLClassifierMetrics(&v32, v39, type metadata accessor for MLBoostedTreeClassifier);
      outlined init with copy of MLTrainingSessionParameters(v24 + *(v16 + 36), v40, type metadata accessor for MLClassifierMetrics);
      v25 = v24;
      v26 = type metadata accessor for MLBoostedTreeClassifier;
      return outlined destroy of MLActivityClassifier.ModelParameters(v25, v26);
    case 1u:
      v27 = type metadata accessor for MLDecisionTreeClassifier;
      v28 = v38;
      outlined init with take of MLClassifierMetrics(&v32, v38, type metadata accessor for MLDecisionTreeClassifier);
      v30 = *(v12 + 36);
      goto LABEL_8;
    case 2u:
      v27 = type metadata accessor for MLRandomForestClassifier;
      v28 = v37;
      outlined init with take of MLClassifierMetrics(&v32, v37, type metadata accessor for MLRandomForestClassifier);
      v30 = *(v8 + 36);
      goto LABEL_8;
    case 3u:
      v27 = type metadata accessor for MLLogisticRegressionClassifier;
      v28 = v35;
      outlined init with take of MLClassifierMetrics(&v32, v35, type metadata accessor for MLLogisticRegressionClassifier);
      v29 = v36;
      goto LABEL_6;
    case 4u:
      v27 = type metadata accessor for MLSupportVectorClassifier;
      v28 = v33;
      outlined init with take of MLClassifierMetrics(&v32, v33, type metadata accessor for MLSupportVectorClassifier);
      v29 = v34;
LABEL_6:
      v30 = *(v29 + 36);
LABEL_8:
      outlined init with copy of MLTrainingSessionParameters(v28 + v30, v40, type metadata accessor for MLClassifierMetrics);
      v25 = v28;
      v26 = v27;
      return outlined destroy of MLActivityClassifier.ModelParameters(v25, v26);
  }
}

uint64_t MLClassifier.validationMetrics.getter()
{
  v32 = v1;
  v40 = v0;
  v34 = type metadata accessor for MLSupportVectorClassifier(0);
  v2 = *(*(v34 - 8) + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v33 = &v32;
  v36 = type metadata accessor for MLLogisticRegressionClassifier(0);
  v5 = *(*(v36 - 8) + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v35 = &v32;
  v8 = type metadata accessor for MLRandomForestClassifier(0);
  v9 = *(*(v8 - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v37 = &v32;
  v12 = type metadata accessor for MLDecisionTreeClassifier(0);
  v13 = *(*(v12 - 8) + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v38 = &v32;
  v16 = type metadata accessor for MLBoostedTreeClassifier(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = alloca(v17);
  v19 = alloca(v17);
  v39 = &v32;
  v20 = type metadata accessor for MLClassifier(0);
  v21 = *(*(v20 - 8) + 64);
  v22 = alloca(v21);
  v23 = alloca(v21);
  outlined init with copy of MLTrainingSessionParameters(v32, &v32, type metadata accessor for MLClassifier);
  switch(swift_getEnumCaseMultiPayload(&v32, v20))
  {
    case 0u:
      v24 = v39;
      outlined init with take of MLClassifierMetrics(&v32, v39, type metadata accessor for MLBoostedTreeClassifier);
      outlined init with copy of MLTrainingSessionParameters(v24 + *(v16 + 40), v40, type metadata accessor for MLClassifierMetrics);
      v25 = v24;
      v26 = type metadata accessor for MLBoostedTreeClassifier;
      return outlined destroy of MLActivityClassifier.ModelParameters(v25, v26);
    case 1u:
      v27 = type metadata accessor for MLDecisionTreeClassifier;
      v28 = v38;
      outlined init with take of MLClassifierMetrics(&v32, v38, type metadata accessor for MLDecisionTreeClassifier);
      v30 = *(v12 + 40);
      goto LABEL_8;
    case 2u:
      v27 = type metadata accessor for MLRandomForestClassifier;
      v28 = v37;
      outlined init with take of MLClassifierMetrics(&v32, v37, type metadata accessor for MLRandomForestClassifier);
      v30 = *(v8 + 40);
      goto LABEL_8;
    case 3u:
      v27 = type metadata accessor for MLLogisticRegressionClassifier;
      v28 = v35;
      outlined init with take of MLClassifierMetrics(&v32, v35, type metadata accessor for MLLogisticRegressionClassifier);
      v29 = v36;
      goto LABEL_6;
    case 4u:
      v27 = type metadata accessor for MLSupportVectorClassifier;
      v28 = v33;
      outlined init with take of MLClassifierMetrics(&v32, v33, type metadata accessor for MLSupportVectorClassifier);
      v29 = v34;
LABEL_6:
      v30 = *(v29 + 40);
LABEL_8:
      outlined init with copy of MLTrainingSessionParameters(v28 + v30, v40, type metadata accessor for MLClassifierMetrics);
      v25 = v28;
      v26 = v27;
      return outlined destroy of MLActivityClassifier.ModelParameters(v25, v26);
  }
}

uint64_t MLClassifier.targetColumn.getter()
{
  v31 = v0;
  v32 = type metadata accessor for MLSupportVectorClassifier(0);
  v1 = *(*(v32 - 8) + 64);
  v2 = alloca(v1);
  v3 = alloca(v1);
  v33 = v30;
  v34 = type metadata accessor for MLLogisticRegressionClassifier(0);
  v4 = *(*(v34 - 8) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v35 = v30;
  v36 = type metadata accessor for MLRandomForestClassifier(0);
  v7 = *(*(v36 - 8) + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v37 = v30;
  v10 = type metadata accessor for MLDecisionTreeClassifier(0);
  v11 = *(*(v10 - 8) + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v38 = v30;
  v14 = type metadata accessor for MLBoostedTreeClassifier(0);
  v15 = *(*(v14 - 8) + 64);
  v16 = alloca(v15);
  v17 = alloca(v15);
  v18 = type metadata accessor for MLClassifier(0);
  v19 = *(*(v18 - 8) + 64);
  v20 = alloca(v19);
  v21 = alloca(v19);
  outlined init with copy of MLTrainingSessionParameters(v31, v30, type metadata accessor for MLClassifier);
  switch(swift_getEnumCaseMultiPayload(v30, v18))
  {
    case 0u:
      outlined init with take of MLClassifierMetrics(v30, v30, type metadata accessor for MLBoostedTreeClassifier);
      v22 = *&v30[*(v14 + 24)];

      v23 = v30;
      v24 = type metadata accessor for MLBoostedTreeClassifier;
      goto LABEL_9;
    case 1u:
      v25 = type metadata accessor for MLDecisionTreeClassifier;
      v26 = v38;
      outlined init with take of MLClassifierMetrics(v30, v38, type metadata accessor for MLDecisionTreeClassifier);
      v28 = *(v10 + 24);
      goto LABEL_8;
    case 2u:
      v25 = type metadata accessor for MLRandomForestClassifier;
      v26 = v37;
      outlined init with take of MLClassifierMetrics(v30, v37, type metadata accessor for MLRandomForestClassifier);
      v27 = v36;
      goto LABEL_6;
    case 3u:
      v25 = type metadata accessor for MLLogisticRegressionClassifier;
      v26 = v35;
      outlined init with take of MLClassifierMetrics(v30, v35, type metadata accessor for MLLogisticRegressionClassifier);
      v27 = v34;
      goto LABEL_6;
    case 4u:
      v25 = type metadata accessor for MLSupportVectorClassifier;
      v26 = v33;
      outlined init with take of MLClassifierMetrics(v30, v33, type metadata accessor for MLSupportVectorClassifier);
      v27 = v32;
LABEL_6:
      v28 = *(v27 + 24);
LABEL_8:
      v22 = *(v26 + v28);

      v23 = v26;
      v24 = v25;
LABEL_9:
      outlined destroy of MLActivityClassifier.ModelParameters(v23, v24);
      return v22;
  }
}

uint64_t MLClassifier.featureColumns.getter()
{
  v31 = v0;
  v32 = type metadata accessor for MLSupportVectorClassifier(0);
  v1 = *(*(v32 - 8) + 64);
  v2 = alloca(v1);
  v3 = alloca(v1);
  v33 = v30;
  v34 = type metadata accessor for MLLogisticRegressionClassifier(0);
  v4 = *(*(v34 - 8) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v35 = v30;
  v36 = type metadata accessor for MLRandomForestClassifier(0);
  v7 = *(*(v36 - 8) + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v37 = v30;
  v10 = type metadata accessor for MLDecisionTreeClassifier(0);
  v11 = *(*(v10 - 8) + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v38 = v30;
  v14 = type metadata accessor for MLBoostedTreeClassifier(0);
  v15 = *(*(v14 - 8) + 64);
  v16 = alloca(v15);
  v17 = alloca(v15);
  v18 = type metadata accessor for MLClassifier(0);
  v19 = *(*(v18 - 8) + 64);
  v20 = alloca(v19);
  v21 = alloca(v19);
  outlined init with copy of MLTrainingSessionParameters(v31, v30, type metadata accessor for MLClassifier);
  switch(swift_getEnumCaseMultiPayload(v30, v18))
  {
    case 0u:
      outlined init with take of MLClassifierMetrics(v30, v30, type metadata accessor for MLBoostedTreeClassifier);
      v22 = *&v30[*(v14 + 28)];

      v23 = v30;
      v24 = type metadata accessor for MLBoostedTreeClassifier;
      goto LABEL_9;
    case 1u:
      v25 = type metadata accessor for MLDecisionTreeClassifier;
      v26 = v38;
      outlined init with take of MLClassifierMetrics(v30, v38, type metadata accessor for MLDecisionTreeClassifier);
      v28 = *(v10 + 28);
      goto LABEL_8;
    case 2u:
      v25 = type metadata accessor for MLRandomForestClassifier;
      v26 = v37;
      outlined init with take of MLClassifierMetrics(v30, v37, type metadata accessor for MLRandomForestClassifier);
      v27 = v36;
      goto LABEL_6;
    case 3u:
      v25 = type metadata accessor for MLLogisticRegressionClassifier;
      v26 = v35;
      outlined init with take of MLClassifierMetrics(v30, v35, type metadata accessor for MLLogisticRegressionClassifier);
      v27 = v34;
      goto LABEL_6;
    case 4u:
      v25 = type metadata accessor for MLSupportVectorClassifier;
      v26 = v33;
      outlined init with take of MLClassifierMetrics(v30, v33, type metadata accessor for MLSupportVectorClassifier);
      v27 = v32;
LABEL_6:
      v28 = *(v27 + 28);
LABEL_8:
      v22 = *(v26 + v28);

      v23 = v26;
      v24 = v25;
LABEL_9:
      outlined destroy of MLActivityClassifier.ModelParameters(v23, v24);
      return v22;
  }
}

unint64_t MLClassifier.description.getter()
{
  return MLClassifier.description.getter();
}

{
  v1 = *(*(type metadata accessor for MLSupportVectorClassifier(0) - 8) + 64);
  v2 = alloca(v1);
  v3 = alloca(v1);
  v27 = &v27;
  v4 = *(*(type metadata accessor for MLLogisticRegressionClassifier(0) - 8) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v28 = &v27;
  v7 = *(*(type metadata accessor for MLRandomForestClassifier(0) - 8) + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v29 = &v27;
  v10 = *(*(type metadata accessor for MLDecisionTreeClassifier(0) - 8) + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v13 = *(*(type metadata accessor for MLBoostedTreeClassifier(0) - 8) + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v16 = type metadata accessor for MLClassifier(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = alloca(v17);
  v19 = alloca(v17);
  outlined init with copy of MLTrainingSessionParameters(v0, &v27, type metadata accessor for MLClassifier);
  switch(swift_getEnumCaseMultiPayload(&v27, v16))
  {
    case 0u:
      outlined init with take of MLClassifierMetrics(&v27, &v27, type metadata accessor for MLBoostedTreeClassifier);
      v20 = MLBoostedTreeClassifier.debugDescription.getter();
      v21 = &v27;
      v22 = type metadata accessor for MLBoostedTreeClassifier;
      goto LABEL_9;
    case 1u:
      v23 = type metadata accessor for MLDecisionTreeClassifier;
      outlined init with take of MLClassifierMetrics(&v27, &v27, type metadata accessor for MLDecisionTreeClassifier);
      v20 = MLDecisionTreeClassifier.debugDescription.getter();
      v21 = &v27;
      goto LABEL_8;
    case 2u:
      v23 = type metadata accessor for MLRandomForestClassifier;
      v24 = v29;
      outlined init with take of MLClassifierMetrics(&v27, v29, type metadata accessor for MLRandomForestClassifier);
      v25 = MLRandomForestClassifier.debugDescription.getter();
      goto LABEL_6;
    case 3u:
      v23 = type metadata accessor for MLLogisticRegressionClassifier;
      v24 = v28;
      outlined init with take of MLClassifierMetrics(&v27, v28, type metadata accessor for MLLogisticRegressionClassifier);
      v25 = MLLogisticRegressionClassifier.debugDescription.getter();
      goto LABEL_6;
    case 4u:
      v23 = type metadata accessor for MLSupportVectorClassifier;
      v24 = v27;
      outlined init with take of MLClassifierMetrics(&v27, v27, type metadata accessor for MLSupportVectorClassifier);
      v25 = MLSupportVectorClassifier.debugDescription.getter();
LABEL_6:
      v20 = v25;
      v21 = v24;
LABEL_8:
      v22 = v23;
LABEL_9:
      outlined destroy of MLActivityClassifier.ModelParameters(v21, v22);
      return v20;
  }
}

uint64_t MLClassifier.playgroundDescription.getter()
{
  v44 = v0;
  v2 = *(*(type metadata accessor for MLSupportVectorClassifier(0) - 8) + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v41 = &v40;
  v5 = *(*(type metadata accessor for MLLogisticRegressionClassifier(0) - 8) + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v42 = &v40;
  v8 = *(*(type metadata accessor for MLRandomForestClassifier(0) - 8) + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v43 = &v40;
  v11 = *(*(type metadata accessor for MLDecisionTreeClassifier(0) - 8) + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v14 = *(*(type metadata accessor for MLBoostedTreeClassifier(0) - 8) + 64);
  v15 = alloca(v14);
  v16 = alloca(v14);
  v17 = type metadata accessor for MLClassifier(0);
  v18 = *(*(v17 - 8) + 64);
  v19 = alloca(v18);
  v20 = alloca(v18);
  outlined init with copy of MLTrainingSessionParameters(v1, &v40, type metadata accessor for MLClassifier);
  switch(swift_getEnumCaseMultiPayload(&v40, v17))
  {
    case 0u:
      outlined init with take of MLClassifierMetrics(&v40, &v40, type metadata accessor for MLBoostedTreeClassifier);
      v21 = type metadata accessor for NSAttributedString();
      v22._countAndFlagsBits = MLBoostedTreeClassifier.debugDescription.getter();
      v22._object = v23;
      v24.super.isa = NSAttributedString.__allocating_init(string:)(v22).super.isa;
      v25 = v44;
      v44[3].super.isa = v21;
      v25->super.isa = v24.super.isa;
      v26 = &v40;
      v27 = type metadata accessor for MLBoostedTreeClassifier;
      return outlined destroy of MLActivityClassifier.ModelParameters(v26, v27);
    case 1u:
      v28 = type metadata accessor for MLDecisionTreeClassifier;
      outlined init with take of MLClassifierMetrics(&v40, &v40, type metadata accessor for MLDecisionTreeClassifier);
      v34 = type metadata accessor for NSAttributedString();
      v35._countAndFlagsBits = MLDecisionTreeClassifier.debugDescription.getter();
      v35._object = v36;
      v37.super.isa = NSAttributedString.__allocating_init(string:)(v35).super.isa;
      v38 = v44;
      v44[3].super.isa = v34;
      v38->super.isa = v37.super.isa;
      v26 = &v40;
      goto LABEL_8;
    case 2u:
      v28 = type metadata accessor for MLRandomForestClassifier;
      v29 = v43;
      outlined init with take of MLClassifierMetrics(&v40, v43, type metadata accessor for MLRandomForestClassifier);
      v30 = type metadata accessor for NSAttributedString();
      v31._countAndFlagsBits = MLRandomForestClassifier.debugDescription.getter();
      goto LABEL_6;
    case 3u:
      v28 = type metadata accessor for MLLogisticRegressionClassifier;
      v29 = v42;
      outlined init with take of MLClassifierMetrics(&v40, v42, type metadata accessor for MLLogisticRegressionClassifier);
      v30 = type metadata accessor for NSAttributedString();
      v31._countAndFlagsBits = MLLogisticRegressionClassifier.debugDescription.getter();
      goto LABEL_6;
    case 4u:
      v28 = type metadata accessor for MLSupportVectorClassifier;
      v29 = v41;
      outlined init with take of MLClassifierMetrics(&v40, v41, type metadata accessor for MLSupportVectorClassifier);
      v30 = type metadata accessor for NSAttributedString();
      v31._countAndFlagsBits = MLSupportVectorClassifier.debugDescription.getter();
LABEL_6:
      v32.super.isa = NSAttributedString.__allocating_init(string:)(v31).super.isa;
      v33 = v44;
      v44[3].super.isa = v30;
      v33->super.isa = v32.super.isa;
      v26 = v29;
LABEL_8:
      v27 = v28;
      return outlined destroy of MLActivityClassifier.ModelParameters(v26, v27);
  }
}

uint64_t outlined destroy of DataFrame?(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?);
  (*(*(v1 - 8) + 8))(a1, v1);
  return a1;
}

uint64_t type metadata accessor for MLClassifier(uint64_t a1)
{
  result = type metadata singleton initialization cache for MLClassifier;
  if (!type metadata singleton initialization cache for MLClassifier)
  {
    return swift_getSingletonMetadata(a1, &nominal type descriptor for MLClassifier);
  }

  return result;
}

uint64_t sub_67DF1()
{
  v1 = type metadata accessor for DataFrame(0);
  v2 = *(v1 - 8);
  v30 = *(v2 + 80);
  v3 = ~*(v2 + 80) & (v30 + 16);
  v4 = v3 + *(v2 + 64);
  v5 = type metadata accessor for MLSupportVectorClassifier(0);
  v6 = *(v5 - 8);
  v31 = *(v6 + 80);
  v7 = ~v31 & (v31 + v4);
  v32 = *(v6 + 64);
  v35 = v1;
  v8 = v1;
  v9 = v5;
  v34 = *(v2 + 8);
  v34(v0 + v3, v8);
  v10 = v7 + v0;
  *(v0 + v7 + 8);
  *(v0 + v7 + 16);
  v29 = v0;
  *(v0 + v7 + 32);
  v11 = v7 + v0 + *(type metadata accessor for MLSupportVectorClassifier.Model(0) + 24);
  v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LinearSupportVectorClassifierModel<Double, String>, LinearSupportVectorClassifierModel<Double, Int>>);
  v13 = &demangling cache variable for type metadata for LinearSupportVectorClassifierModel<Double, String>;
  if (swift_getEnumCaseMultiPayload(v11, v12) == 1)
  {
    v13 = &demangling cache variable for type metadata for LinearSupportVectorClassifierModel<Double, Int>;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledName(v13);
  (*(*(v14 - 8) + 8))(v11, v14);

  *(v9[6] + v10 + 8);
  *(v9[7] + v10);
  v15 = v9[8];
  if (*(v15 + v10 + 32))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v10 + v15 + 8));
  }

  v16 = (v10 + v9[9]);
  v17 = type metadata accessor for MLClassifierMetrics.Contents(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v16, v17);
  switch(EnumCaseMultiPayload)
  {
    case 2:
      *v16;
      break;
    case 1:
      v33 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v34(v16 + *(v33 + 20), v35);
      v34(v16 + *(v33 + 24), v35);
      break;
    case 0:
      v19 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
      if (swift_getEnumCaseMultiPayload(v16, v19) == 1)
      {
        v20 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
      }

      else
      {
        v20 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
      }

      v21 = __swift_instantiateConcreteTypeFromMangledName(v20);
      (*(*(v21 - 8) + 8))(v16, v21);
      break;
  }

  v22 = (v9[10] + v10);
  v23 = swift_getEnumCaseMultiPayload(v22, v17);
  switch(v23)
  {
    case 2:
      *v22;
      break;
    case 1:
      v26 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v34(v22 + *(v26 + 20), v35);
      v34(v22 + *(v26 + 24), v35);
      break;
    case 0:
      v24 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
      if (swift_getEnumCaseMultiPayload(v22, v24) == 1)
      {
        v25 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
      }

      else
      {
        v25 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
      }

      v27 = __swift_instantiateConcreteTypeFromMangledName(v25);
      (*(*(v27 - 8) + 8))(v22, v27);
      break;
  }

  return swift_deallocObject(v29, v32 + v7, v31 | v30 | 7);
}

uint64_t partial apply for closure #1 in MLSupportVectorClassifier.predictions(from:)(uint64_t a1)
{
  v3 = *(type metadata accessor for DataFrame(0) - 8);
  v4 = ~*(v3 + 80) & (*(v3 + 80) + 16);
  v5 = v4 + *(v3 + 64);
  v6 = *(*(type metadata accessor for MLSupportVectorClassifier(0) - 8) + 80);
  v7 = swift_task_alloc(48);
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in MLActivityClassifier.init(trainingData:featureColumns:labelColumn:recordingFileColumn:parameters:);
  return closure #1 in MLSupportVectorClassifier.predictions(from:)(a1, v1 + v4, v1 + ((v6 + v5) & ~v6));
}

void *initializeBufferWithCopyOfBuffer for MLClassifier(void *a1, void *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v10 = *a2;
    *v3 = *a2;
    v3 = (v10 + ((v4 + 16) & ~v4));
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(a2, a3);
    *a1 = *a2;
    a1[1] = a2[1];
    v6 = a1 + 2;
    v7 = a2 + 2;
    switch(EnumCaseMultiPayload)
    {
      case 0:
        v8 = *v7;

        if (v8)
        {
          a1[2] = v8;
          v9 = a2;
          a1[3] = a2[3];
          a1[4] = a2[4];
        }

        else
        {
          a1[4] = a2[4];
          *v6 = *v7;
          v9 = a2;
        }

        v91 = type metadata accessor for AnyTreeClassifierModel(0);
        v92 = *(v91 + 24);
        v93 = type metadata accessor for BaseTreeClassifierModel(0);
        (*(*(v93 - 8) + 16))(a1 + v92, &v9[v92], v93);
        v94 = *(v91 + 28);
        v95 = v9[v94 + 8];
        *(a1 + v94) = *&v9[v94];
        *(a1 + v94 + 8) = v95;
        v96 = type metadata accessor for MLBoostedTreeClassifier(0);
        v97 = v96[5];
        v309 = *&v9[v97];
        *(a1 + v97) = v309;
        v98 = v96[6];
        *(a1 + v98) = *&v9[v98];
        *(a1 + v98 + 8) = *&v9[v98 + 8];
        *(a1 + v96[7]) = *&v9[v96[7]];
        v292 = v96;
        v99 = v96[8];
        v100 = a1 + v99;
        v101 = &v9[v99];
        v102 = *&v9[v99 + 24];

        v309;

        if (v102)
        {
          *(v100 + 3) = v102;
          (**(v102 - 8))(v100, v101, v102);
        }

        else
        {
          v116 = *v101;
          *(v100 + 1) = *(v101 + 1);
          *v100 = v116;
        }

        *(v100 + 2) = *(v101 + 2);
        *(v100 + 3) = *(v101 + 3);
        *(v100 + 4) = *(v101 + 4);
        *(v100 + 10) = *(v101 + 10);
        v100[88] = v101[88];
        *(v100 + 6) = *(v101 + 6);
        v117 = v292[9];
        v118 = (a1 + v117);
        v119 = &v9[v117];
        v120 = type metadata accessor for MLClassifierMetrics.Contents(0);
        v121 = swift_getEnumCaseMultiPayload(v119, v120);
        v258 = v121;
        if (v121 == 2)
        {
          v142 = *v119;
          swift_errorRetain(v142);
          *v118 = v142;
        }

        else if (v121 == 1)
        {
          *v118 = *v119;
          v249 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
          v310 = v118;
          v122 = v249[5];
          v242 = v310 + v122;
          v276 = v120;
          v123 = type metadata accessor for DataFrame(0);
          v124 = *(*(v123 - 8) + 16);
          v125 = v119 + v122;
          v118 = v310;
          v124(v242, v125, v123);
          v126 = v123;
          v120 = v276;
          v124(v310 + v249[6], v119 + v249[6], v126);
          v9 = a2;
        }

        else
        {
          v270 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
          v196 = swift_getEnumCaseMultiPayload(v119, v270);
          v284 = v196 == 1;
          v197 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
          if (v196 == 1)
          {
            v197 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
          }

          v198 = __swift_instantiateConcreteTypeFromMangledName(v197);
          (*(*(v198 - 8) + 16))(v118, v119, v198);
          swift_storeEnumTagMultiPayload(v118, v270, v284);
        }

        swift_storeEnumTagMultiPayload(v118, v120, v258);
        v199 = v292[10];
        v200 = (v3 + v199);
        v201 = &v9[v199];
        v202 = swift_getEnumCaseMultiPayload(v201, v120);
        if (v202 == 2)
        {
          v208 = *v201;
          swift_errorRetain(v208);
          *v200 = v208;
          goto LABEL_96;
        }

        v271 = v202;
        if (v202 == 1)
        {
          *v200 = *v201;
          v263 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
          v203 = *(v263 + 20);
          v317 = v200 + v203;
          v285 = v120;
          v204 = type metadata accessor for DataFrame(0);
          v300 = v200;
          v205 = *(*(v204 - 8) + 16);
          v206 = v201 + v203;
          v202 = 1;
          v205(v317, v206, v204);
          v207 = v204;
          v120 = v285;
          v205(v300 + *(v263 + 24), v201 + *(v263 + 24), v207);
          v200 = v300;
LABEL_96:
          v209 = a3;
          goto LABEL_108;
        }

        v302 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
        v223 = swift_getEnumCaseMultiPayload(v201, v302);
        v224 = v223 == 1;
        v225 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
        if (v223 == 1)
        {
          v225 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
        }

        v226 = __swift_instantiateConcreteTypeFromMangledName(v225);
        (*(*(v226 - 8) + 16))(v200, v201, v226);
        swift_storeEnumTagMultiPayload(v200, v302, v224);
        v209 = a3;
        v202 = v271;
LABEL_108:
        swift_storeEnumTagMultiPayload(v200, v120, v202);
        v227 = v3;
        v228 = v209;
        v229 = 0;
        goto LABEL_114;
      case 1:
        v29 = *v7;

        if (v29)
        {
          a1[2] = v29;
          v30 = a2;
          a1[3] = a2[3];
          a1[4] = a2[4];
        }

        else
        {
          a1[4] = a2[4];
          *v6 = *v7;
          v30 = a2;
        }

        v103 = type metadata accessor for AnyTreeClassifierModel(0);
        v104 = *(v103 + 24);
        v105 = type metadata accessor for BaseTreeClassifierModel(0);
        (*(*(v105 - 8) + 16))(a1 + v104, &v30[v104], v105);
        v106 = *(v103 + 28);
        v107 = v30[v106 + 8];
        *(a1 + v106) = *&v30[v106];
        *(a1 + v106 + 8) = v107;
        v108 = type metadata accessor for MLDecisionTreeClassifier(0);
        v109 = v108[5];
        v248 = *&v30[v109];
        *(a1 + v109) = v248;
        v110 = v108[6];
        *(a1 + v110) = *&v30[v110];
        *(a1 + v110 + 8) = *&v30[v110 + 8];
        *(a1 + v108[7]) = *&v30[v108[7]];
        v293 = v108;
        v111 = v108[8];
        v112 = v30;
        v113 = a1 + v111;
        v257 = v112 + v111;
        v114 = (v112 + v111 + 8);
        v241 = (a1 + v111 + 8);
        *(a1 + v111) = *(v112 + v111);
        v115 = *(v112 + v111 + 32);

        v248;

        if (v115)
        {
          *(v113 + 4) = v115;
          (**(v115 - 8))(v241, v114, v115);
        }

        else
        {
          v127 = *v114;
          v241[1] = v114[1];
          *v241 = v127;
        }

        *(v113 + 40) = *(v257 + 40);
        *(v113 + 7) = *(v257 + 7);
        v128 = v293[9];
        v129 = (a1 + v128);
        v130 = a2;
        v131 = (a2 + v128);
        v132 = type metadata accessor for MLClassifierMetrics.Contents(0);
        v133 = swift_getEnumCaseMultiPayload(v131, v132);
        v259 = v133;
        if (v133 == 2)
        {
          v143 = *v131;
          swift_errorRetain(v143);
          *v129 = v143;
        }

        else if (v133 == 1)
        {
          *v129 = *v131;
          v250 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
          v311 = v129;
          v134 = v250[5];
          v243 = v311 + v134;
          v277 = v132;
          v135 = type metadata accessor for DataFrame(0);
          v136 = *(*(v135 - 8) + 16);
          v137 = v131 + v134;
          v129 = v311;
          v136(v243, v137, v135);
          v138 = v135;
          v132 = v277;
          v136(v311 + v250[6], v131 + v250[6], v138);
          v130 = a2;
        }

        else
        {
          v286 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
          v210 = swift_getEnumCaseMultiPayload(v131, v286);
          v318 = v210 == 1;
          v211 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
          if (v210 == 1)
          {
            v211 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
          }

          v212 = __swift_instantiateConcreteTypeFromMangledName(v211);
          (*(*(v212 - 8) + 16))(v129, v131, v212);
          swift_storeEnumTagMultiPayload(v129, v286, v318);
        }

        swift_storeEnumTagMultiPayload(v129, v132, v259);
        v213 = v293[10];
        v214 = (v3 + v213);
        v215 = (v130 + v213);
        v216 = swift_getEnumCaseMultiPayload(v215, v132);
        if (v216 == 2)
        {
          v222 = *v215;
          swift_errorRetain(v222);
          *v214 = v222;
        }

        else
        {
          v272 = v216;
          if (v216 != 1)
          {
            v303 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
            v230 = swift_getEnumCaseMultiPayload(v215, v303);
            v231 = v230 == 1;
            v232 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
            if (v230 == 1)
            {
              v232 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
            }

            v233 = __swift_instantiateConcreteTypeFromMangledName(v232);
            (*(*(v233 - 8) + 16))(v214, v215, v233);
            swift_storeEnumTagMultiPayload(v214, v303, v231);
            v157 = a3;
            v216 = v272;
            goto LABEL_112;
          }

          *v214 = *v215;
          v264 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
          v217 = *(v264 + 20);
          v319 = v214 + v217;
          v287 = v132;
          v218 = type metadata accessor for DataFrame(0);
          v301 = v214;
          v219 = *(*(v218 - 8) + 16);
          v220 = v215 + v217;
          v216 = 1;
          v219(v319, v220, v218);
          v221 = v218;
          v132 = v287;
          v219(v301 + *(v264 + 24), v215 + *(v264 + 24), v221);
          v214 = v301;
        }

        v157 = a3;
LABEL_112:
        swift_storeEnumTagMultiPayload(v214, v132, v216);
        v235 = 1;
        goto LABEL_113;
      case 2:
        v25 = *v7;

        if (v25)
        {
          a1[2] = v25;
          v26 = a2;
          a1[3] = a2[3];
          a1[4] = a2[4];
        }

        else
        {
          a1[4] = a2[4];
          *v6 = *v7;
          v26 = a2;
        }

        v43 = type metadata accessor for AnyTreeClassifierModel(0);
        v44 = *(v43 + 24);
        v45 = type metadata accessor for BaseTreeClassifierModel(0);
        (*(*(v45 - 8) + 16))(a1 + v44, &v26[v44], v45);
        v46 = *(v43 + 28);
        v47 = v26[v46 + 8];
        *(a1 + v46) = *&v26[v46];
        *(a1 + v46 + 8) = v47;
        v48 = type metadata accessor for MLRandomForestClassifier(0);
        v49 = v48[5];
        v306 = *&v26[v49];
        *(a1 + v49) = v306;
        v50 = v48[6];
        *(a1 + v50) = *&v26[v50];
        *(a1 + v50 + 8) = *&v26[v50 + 8];
        *(a1 + v48[7]) = *&v26[v48[7]];
        v290 = v48;
        v51 = v48[8];
        v52 = a1 + v51;
        v53 = &v26[v51];
        v54 = *&v26[v51 + 24];

        v306;

        if (v54)
        {
          *(v52 + 3) = v54;
          (**(v54 - 8))(v52, v53, v54);
        }

        else
        {
          v55 = *v53;
          *(v52 + 1) = *(v53 + 1);
          *v52 = v55;
        }

        *(v52 + 2) = *(v53 + 2);
        *(v52 + 3) = *(v53 + 3);
        *(v52 + 4) = *(v53 + 4);
        *(v52 + 10) = *(v53 + 10);
        v56 = v290[9];
        v57 = (a1 + v56);
        v58 = &v26[v56];
        v59 = type metadata accessor for MLClassifierMetrics.Contents(0);
        v60 = swift_getEnumCaseMultiPayload(v58, v59);
        v254 = v60;
        if (v60 == 2)
        {
          v140 = *v58;
          swift_errorRetain(v140);
          *v57 = v140;
        }

        else if (v60 == 1)
        {
          *v57 = *v58;
          v245 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
          v307 = v57;
          v61 = v245[5];
          v238 = v307 + v61;
          v274 = v59;
          v62 = type metadata accessor for DataFrame(0);
          v63 = *(*(v62 - 8) + 16);
          v64 = v58 + v61;
          v57 = v307;
          v63(v238, v64, v62);
          v65 = v62;
          v59 = v274;
          v63(v307 + v245[6], v58 + v245[6], v65);
          v26 = a2;
        }

        else
        {
          v267 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
          v162 = swift_getEnumCaseMultiPayload(v58, v267);
          v280 = v162 == 1;
          v163 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
          if (v162 == 1)
          {
            v163 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
          }

          v164 = __swift_instantiateConcreteTypeFromMangledName(v163);
          (*(*(v164 - 8) + 16))(v57, v58, v164);
          swift_storeEnumTagMultiPayload(v57, v267, v280);
        }

        swift_storeEnumTagMultiPayload(v57, v59, v254);
        v165 = v290[10];
        v166 = (v3 + v165);
        v167 = &v26[v165];
        v168 = swift_getEnumCaseMultiPayload(v167, v59);
        if (v168 == 2)
        {
          v174 = *v167;
          swift_errorRetain(v174);
          *v166 = v174;
          goto LABEL_72;
        }

        v268 = v168;
        if (v168 == 1)
        {
          *v166 = *v167;
          v261 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
          v169 = *(v261 + 20);
          v314 = v166 + v169;
          v281 = v59;
          v170 = type metadata accessor for DataFrame(0);
          v296 = v166;
          v171 = *(*(v170 - 8) + 16);
          v172 = v167 + v169;
          v168 = 1;
          v171(v314, v172, v170);
          v173 = v170;
          v59 = v281;
          v171(v296 + *(v261 + 24), v167 + *(v261 + 24), v173);
          v166 = v296;
LABEL_72:
          v157 = a3;
          goto LABEL_76;
        }

        v297 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
        v175 = swift_getEnumCaseMultiPayload(v167, v297);
        v176 = v175 == 1;
        v177 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
        if (v175 == 1)
        {
          v177 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
        }

        v178 = __swift_instantiateConcreteTypeFromMangledName(v177);
        (*(*(v178 - 8) + 16))(v166, v167, v178);
        swift_storeEnumTagMultiPayload(v166, v297, v176);
        v157 = a3;
        v168 = v268;
LABEL_76:
        swift_storeEnumTagMultiPayload(v166, v59, v168);
        v235 = 2;
        goto LABEL_113;
      case 3:
        v27 = *v7;

        if (v27)
        {
          a1[2] = v27;
          v28 = a2;
          a1[3] = a2[3];
          a1[4] = a2[4];
        }

        else
        {
          a1[4] = a2[4];
          *v6 = *v7;
          v28 = a2;
        }

        v66 = type metadata accessor for MLLogisticRegressionClassifier.Model(0);
        v67 = *(v66 + 24);
        v68 = type metadata accessor for BaseLogisticRegressionClassifierModel(0);
        (*(*(v68 - 8) + 16))(a1 + v67, &v28[v67], v68);
        v69 = *(v66 + 28);
        v70 = v28[v69 + 8];
        *(a1 + v69) = *&v28[v69];
        *(a1 + v69 + 8) = v70;
        v71 = type metadata accessor for MLLogisticRegressionClassifier(0);
        v72 = v71[5];
        v246 = *&v28[v72];
        *(a1 + v72) = v246;
        v73 = v71[6];
        *(a1 + v73) = *&v28[v73];
        *(a1 + v73 + 8) = *&v28[v73 + 8];
        *(a1 + v71[7]) = *&v28[v71[7]];
        v291 = v71;
        v74 = v71[8];
        v75 = v28;
        v76 = a1 + v74;
        v255 = v75 + v74;
        v77 = (v75 + v74 + 8);
        v239 = (a1 + v74 + 8);
        *(a1 + v74) = *(v75 + v74);
        v78 = *(v75 + v74 + 32);

        v246;

        if (v78)
        {
          *(v76 + 4) = v78;
          (**(v78 - 8))(v239, v77, v78);
        }

        else
        {
          v79 = *v77;
          v239[1] = v77[1];
          *v239 = v79;
        }

        *(v76 + 40) = *(v255 + 40);
        *(v76 + 56) = *(v255 + 56);
        v76[72] = v255[72];
        v80 = v291[9];
        v81 = (a1 + v80);
        v82 = a2;
        v83 = (a2 + v80);
        v84 = type metadata accessor for MLClassifierMetrics.Contents(0);
        v85 = swift_getEnumCaseMultiPayload(v83, v84);
        v256 = v85;
        if (v85 == 2)
        {
          v141 = *v83;
          swift_errorRetain(v141);
          *v81 = v141;
        }

        else if (v85 == 1)
        {
          *v81 = *v83;
          v247 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
          v308 = v81;
          v86 = v247[5];
          v240 = v308 + v86;
          v275 = v84;
          v87 = type metadata accessor for DataFrame(0);
          v88 = *(*(v87 - 8) + 16);
          v89 = v83 + v86;
          v81 = v308;
          v88(v240, v89, v87);
          v90 = v87;
          v84 = v275;
          v88(v308 + v247[6], v83 + v247[6], v90);
          v82 = a2;
        }

        else
        {
          v282 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
          v179 = swift_getEnumCaseMultiPayload(v83, v282);
          v315 = v179 == 1;
          v180 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
          if (v179 == 1)
          {
            v180 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
          }

          v181 = __swift_instantiateConcreteTypeFromMangledName(v180);
          (*(*(v181 - 8) + 16))(v81, v83, v181);
          swift_storeEnumTagMultiPayload(v81, v282, v315);
        }

        swift_storeEnumTagMultiPayload(v81, v84, v256);
        v182 = v291[10];
        v183 = (v3 + v182);
        v184 = (v82 + v182);
        v185 = swift_getEnumCaseMultiPayload(v184, v84);
        if (v185 == 2)
        {
          v191 = *v184;
          swift_errorRetain(v191);
          *v183 = v191;
          goto LABEL_84;
        }

        v269 = v185;
        if (v185 == 1)
        {
          *v183 = *v184;
          v262 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
          v186 = *(v262 + 20);
          v316 = v183 + v186;
          v283 = v84;
          v187 = type metadata accessor for DataFrame(0);
          v298 = v183;
          v188 = *(*(v187 - 8) + 16);
          v189 = v184 + v186;
          v185 = 1;
          v188(v316, v189, v187);
          v190 = v187;
          v84 = v283;
          v188(v298 + *(v262 + 24), v184 + *(v262 + 24), v190);
          v183 = v298;
LABEL_84:
          v157 = a3;
          goto LABEL_88;
        }

        v299 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
        v192 = swift_getEnumCaseMultiPayload(v184, v299);
        v193 = v192 == 1;
        v194 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
        if (v192 == 1)
        {
          v194 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
        }

        v195 = __swift_instantiateConcreteTypeFromMangledName(v194);
        (*(*(v195 - 8) + 16))(v183, v184, v195);
        swift_storeEnumTagMultiPayload(v183, v299, v193);
        v157 = a3;
        v185 = v269;
LABEL_88:
        swift_storeEnumTagMultiPayload(v183, v84, v185);
        v235 = 3;
        goto LABEL_113;
      case 4:
        a1[2] = a2[2];
        a1[3] = a2[3];
        a1[4] = a2[4];
        v11 = *(type metadata accessor for MLSupportVectorClassifier.Model(0) + 24);
        v288 = a1 + v11;
        v12 = a2 + v11;

        v251 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LinearSupportVectorClassifierModel<Double, String>, LinearSupportVectorClassifierModel<Double, Int>>);
        v13 = swift_getEnumCaseMultiPayload(v12, v251);
        v14 = v13 == 1;
        v15 = &demangling cache variable for type metadata for LinearSupportVectorClassifierModel<Double, String>;
        if (v13 == 1)
        {
          v15 = &demangling cache variable for type metadata for LinearSupportVectorClassifierModel<Double, Int>;
        }

        v16 = __swift_instantiateConcreteTypeFromMangledName(v15);
        (*(*(v16 - 8) + 16))(v288, v12, v16);
        swift_storeEnumTagMultiPayload(v288, v251, v14);
        v17 = type metadata accessor for MLSupportVectorClassifier(0);
        v18 = v17[5];
        v19 = *(a2 + v18);
        *(v3 + v18) = v19;
        v20 = v17[6];
        *(v3 + v20) = *(a2 + v20);
        *(v3 + v20 + 8) = *(a2 + v20 + 8);
        *(v3 + v17[7]) = *(a2 + v17[7]);
        v289 = v17;
        v21 = v17[8];
        v304 = v3 + v21;
        v252 = a2 + v21;
        v22 = (a2 + v21 + 8);
        v23 = (v3 + v21 + 8);
        *(v3 + v21) = *(a2 + v21);
        v24 = *(a2 + v21 + 32);
        v19;

        if (v24)
        {
          *(v304 + 4) = v24;
          (**(v24 - 8))(v23, v22, v24);
        }

        else
        {
          v31 = *v22;
          v23[1] = v22[1];
          *v23 = v31;
        }

        *(v304 + 40) = *(v252 + 40);
        v304[56] = v252[56];
        v32 = v289[9];
        v33 = (v3 + v32);
        v34 = a2;
        v35 = (a2 + v32);
        v36 = type metadata accessor for MLClassifierMetrics.Contents(0);
        v37 = swift_getEnumCaseMultiPayload(v35, v36);
        v253 = v37;
        if (v37 == 2)
        {
          v139 = *v35;
          swift_errorRetain(v139);
          *v33 = v139;
        }

        else if (v37 == 1)
        {
          *v33 = *v35;
          v244 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
          v305 = v33;
          v38 = v244[5];
          v237 = v305 + v38;
          v273 = v36;
          v39 = type metadata accessor for DataFrame(0);
          v40 = *(*(v39 - 8) + 16);
          v41 = v35 + v38;
          v33 = v305;
          v40(v237, v41, v39);
          v42 = v39;
          v36 = v273;
          v40(v305 + v244[6], v35 + v244[6], v42);
          v34 = a2;
        }

        else
        {
          v278 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
          v144 = swift_getEnumCaseMultiPayload(v35, v278);
          v312 = v144 == 1;
          v145 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
          if (v144 == 1)
          {
            v145 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
          }

          v146 = __swift_instantiateConcreteTypeFromMangledName(v145);
          (*(*(v146 - 8) + 16))(v33, v35, v146);
          swift_storeEnumTagMultiPayload(v33, v278, v312);
        }

        swift_storeEnumTagMultiPayload(v33, v36, v253);
        v147 = v289[10];
        v148 = (v3 + v147);
        v149 = (v34 + v147);
        v150 = swift_getEnumCaseMultiPayload(v149, v36);
        if (v150 == 2)
        {
          v156 = *v149;
          swift_errorRetain(v156);
          *v148 = v156;
          goto LABEL_60;
        }

        v266 = v150;
        if (v150 == 1)
        {
          *v148 = *v149;
          v260 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
          v151 = *(v260 + 20);
          v313 = v148 + v151;
          v279 = v36;
          v152 = type metadata accessor for DataFrame(0);
          v294 = v148;
          v153 = *(*(v152 - 8) + 16);
          v154 = v149 + v151;
          v150 = 1;
          v153(v313, v154, v152);
          v155 = v152;
          v36 = v279;
          v153(v294 + *(v260 + 24), v149 + *(v260 + 24), v155);
          v148 = v294;
LABEL_60:
          v157 = a3;
          goto LABEL_64;
        }

        v295 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
        v158 = swift_getEnumCaseMultiPayload(v149, v295);
        v159 = v158 == 1;
        v160 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
        if (v158 == 1)
        {
          v160 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
        }

        v161 = __swift_instantiateConcreteTypeFromMangledName(v160);
        (*(*(v161 - 8) + 16))(v148, v149, v161);
        swift_storeEnumTagMultiPayload(v148, v295, v159);
        v157 = a3;
        v150 = v266;
LABEL_64:
        swift_storeEnumTagMultiPayload(v148, v36, v150);
        v235 = 4;
LABEL_113:
        v229 = v235;
        v227 = v3;
        v228 = v157;
LABEL_114:
        swift_storeEnumTagMultiPayload(v227, v228, v229);
        break;
    }
  }

  return v3;
}