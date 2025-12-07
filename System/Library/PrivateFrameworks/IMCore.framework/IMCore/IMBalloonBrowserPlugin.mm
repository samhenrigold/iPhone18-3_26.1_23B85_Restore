@interface IMBalloonBrowserPlugin
- (IMBalloonBrowserPlugin)initWithIdentifier:(id)identifier browserDisplayName:(id)name browserImageName:(id)imageName browserClass:(Class)class presentationContext:(unint64_t)context;
- (IMBalloonBrowserPlugin)initWithIdentifier:(id)identifier browserDisplayName:(id)name browserImagePath:(id)path;
@end

@implementation IMBalloonBrowserPlugin

- (IMBalloonBrowserPlugin)initWithIdentifier:(id)identifier browserDisplayName:(id)name browserImagePath:(id)path
{
  identifierCopy = identifier;
  nameCopy = name;
  pathCopy = path;
  v16.receiver = self;
  v16.super_class = IMBalloonBrowserPlugin;
  v11 = [(IMBalloonPlugin *)&v16 initWithBundle:0];
  v12 = v11;
  if (v11)
  {
    v13 = [(IMBalloonPlugin *)v11 app];
    [v13 setIdentifier:identifierCopy];

    v14 = [(IMBalloonPlugin *)v12 app];
    [v14 setBrowserDisplayName:nameCopy];

    [(IMBalloonPlugin *)v12 setBrowserImagePath:pathCopy];
  }

  return v12;
}

- (IMBalloonBrowserPlugin)initWithIdentifier:(id)identifier browserDisplayName:(id)name browserImageName:(id)imageName browserClass:(Class)class presentationContext:(unint64_t)context
{
  identifierCopy = identifier;
  nameCopy = name;
  imageNameCopy = imageName;
  v22.receiver = self;
  v22.super_class = IMBalloonBrowserPlugin;
  v15 = [(IMBalloonPlugin *)&v22 initWithBundle:0];
  v16 = v15;
  if (v15)
  {
    v17 = [(IMBalloonPlugin *)v15 app];
    [v17 setIdentifier:identifierCopy];

    v18 = [(IMBalloonPlugin *)v16 app];
    [v18 setBrowserDisplayName:nameCopy];

    [(IMBalloonPlugin *)v16 setBrowserImageName:imageNameCopy];
    v19 = [(IMBalloonPlugin *)v16 app];
    [v19 setBrowserClass:class];

    v20 = [(IMBalloonPlugin *)v16 app];
    [v20 setPresentationContexts:context];
  }

  return v16;
}

@end