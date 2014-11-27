package {	
	import starling.display.Sprite;
	import feathers.controls.PanelScreen;
	import starling.events.Event;
	import feathers.controls.Button;
	//import feathers.controls.Screen;
	import feathers.controls.Panel;
	import feathers.layout.VerticalLayout;
	import feathers.events.FeathersEventType;
/*	import feathers.controls.ScrollContainer;
	import feathers.controls.ScrollText;*/
	import feathers.controls.ImageLoader;
	import starling.textures.Texture;
	import starling.textures.TextureAtlas;
	import flash.display.BitmapData;
	import flash.display.Bitmap;	
	import starling.display.Image;
	import starling.utils.AssetManager;
	import feathers.layout.AnchorLayout;
	import feathers.layout.AnchorLayoutData;
	import starling.display.Quad;
	import flash.media.Sound;
	import flash.media.SoundChannel;
	import Utils;
	public class ScreenB extends PanelScreen {
        
		[Embed(source = "sprites/LooneyImages.xml", mimeType = "application/octet-stream")]
	
		public static const ATLAS_XML: Class;
		[Embed(source = "sprites/LooneyImages.png")]
		public static const ATLAS_TEXTURE: Class;
			[Embed(source = 'sounds/ThemeSong.mp3')]
		public static const Intro: Class;
		private var atlas: TextureAtlas;
		private var atlasTexture: Texture;
		private var textureOne: Texture;
		private var textureTwo: Texture;
		private var textureThree: Texture;
		private var textureFour: Texture;
		private var textureFive: Texture;
		private var textureSix: Texture;
		private var textureSeven: Texture;
		private var textureEight: Texture;
		private var textureNine: Texture;
		private var textureTen: Texture;
		private var textureEleven: Texture;
		private var textureTwelve: Texture;
		private var textureThirteen: Texture;
		private var textureFourteen: Texture;
		private var textureFifteen: Texture;
		private var textureSixteen: Texture;
		private var textureSeventeen: Texture;
		private var textureEighteen: Texture;
		private var textureNineteen: Texture;
		private var textureTwenty: Texture;
		private var textureTwentyOne: Texture;
		private var textureTwentyTwo: Texture;
		private var textureTwentyThree: Texture;
		private var bgImgLoader: ImageLoader;
		private var bgImgLoader2: ImageLoader;
		private var bgImgLoader3: ImageLoader;
		private var bgImgLoader4: ImageLoader;
		private var bgImgLoader5: ImageLoader;
		private var bgImgLoader6: ImageLoader;
		private var bgImgLoader7: ImageLoader;
		private var bgImgLoader8: ImageLoader;
		private var bgImgLoader9: ImageLoader;
		private var bgImgLoader10: ImageLoader;
		private var bgImgLoader11: ImageLoader;
		private var bgImgLoader12: ImageLoader;
		private var bgImgLoader13: ImageLoader;
		private var bgImgLoader14: ImageLoader;
		private var bgImgLoader15: ImageLoader;
		private var bgImgLoader16: ImageLoader;
		private var bgImgLoader17: ImageLoader;
		private var bgImgLoader18: ImageLoader;
		private var bgImgLoader19: ImageLoader;
		private var bgImgLoader20: ImageLoader;
		private var bgImgLoader21: ImageLoader;
		private var bgImgLoader22: ImageLoader;
		private var bgImgLoader23: ImageLoader;
		//private var button: Button;
		private var contentPanel: Panel;
		//private var buttonPanel: Panel;
		private var assetMgr: AssetManager;
		
		
		public function ScreenB() {
			trace("An object of ScreenB has has created");
			//super();
			this.addEventListener(FeathersEventType.INITIALIZE, initializeHandler);

		}
		private function initializeHandler(): void {
			trace("ScreenA object initialized");
			this.removeEventListener(FeathersEventType.INITIALIZE, initializeHandler);
			this.headerProperties.title = "LooneyTunes Images";
				
			
			this.stage.addEventListener(Event.RESIZE, stageResized);
			assetMgr = new AssetManager();
			assetMgr.verbose = true;
			assetMgr.enqueue(Utils);
			assetMgr.loadQueue(handleAssetsLoading);
						
			var screenLayout: AnchorLayout = new AnchorLayout();
			this.layout = screenLayout;
			this.width = this.stage.stageWidth;
			this.height = this.stage.stageHeight;
			atlasTexture = Texture.fromBitmap(new ATLAS_TEXTURE());
			var xml: XML = XML(new ATLAS_XML());
			atlas = new TextureAtlas(atlasTexture, xml);
			
			this.contentPanel = new Panel();
			var contentPanelLayoutData: AnchorLayoutData = new AnchorLayoutData();
			contentPanelLayoutData.top = 20;
			contentPanelLayoutData.bottom = 20;
			contentPanelLayoutData.left = 20;
			contentPanelLayoutData.right = 20;
			//contentPanelLayoutData.bottomAnchorDisplayObject = this.buttonPanel;
			contentPanel.layoutData = contentPanelLayoutData;
			this.addChild(contentPanel);
			
			
			textureOne = atlas.getTexture("AllCharacters");
			//textureOne = atlas.getTexture("RoadRunner1");
			bgImgLoader = new ImageLoader();
			bgImgLoader.source = textureOne;
			bgImgLoader.width = 1270 * this.dpiScale;
			bgImgLoader.x = 10;
			bgImgLoader.y = 10;
			/*bgImgLoader.left = 10;
			bgImgLoader.right = 10;
			bgImgLoader.top = 10;*/
			bgImgLoader.maintainAspectRatio = true;
			contentPanel.addChild(bgImgLoader);
			
			textureTwo = atlas.getTexture("RoadRunner1");
			//textureOne = atlas.getTexture("RoadRunner1");
			bgImgLoader2 = new ImageLoader();
			bgImgLoader2.source = textureTwo;
			bgImgLoader2.width = 1270 * this.dpiScale;
			bgImgLoader2.x = 10;
			bgImgLoader2.y = 300;
			/*bgImgLoader.left = 10;
			bgImgLoader.right = 10;
			bgImgLoader.top = 10;*/
			bgImgLoader2.maintainAspectRatio = true;
			contentPanel.addChild(bgImgLoader2);
			//bgImgLoader.addEventListener(Event.TRIGGERED, HomeImageClick);
			
			textureThree = atlas.getTexture("RoadRunner2");
			//textureOne = atlas.getTexture("RoadRunner1");
			bgImgLoader3 = new ImageLoader();
			bgImgLoader3.source = textureThree;
			bgImgLoader3.width = 1270 * this.dpiScale;
			bgImgLoader3.x = 10;
			bgImgLoader3.y = 700;
			/*bgImgLoader.left = 10;
			bgImgLoader.right = 10;
			bgImgLoader.top = 10;*/
			bgImgLoader3.maintainAspectRatio = true;
			contentPanel.addChild(bgImgLoader3);
			
			
			textureFour = atlas.getTexture("SqunkTweetyDaffy");
			//textureOne = atlas.getTexture("RoadRunner1");
			bgImgLoader4 = new ImageLoader();
			bgImgLoader4.source = textureFour;
			bgImgLoader4.width = 1270 * this.dpiScale;
			bgImgLoader4.x = 10;
			bgImgLoader4.y = 980;
			/*bgImgLoader.left = 10;
			bgImgLoader.right = 10;
			bgImgLoader.top = 10;*/
			bgImgLoader4.maintainAspectRatio = true;
			contentPanel.addChild(bgImgLoader4);
			
			textureFive = atlas.getTexture("Skunk1");
			//textureOne = atlas.getTexture("RoadRunner1");
			bgImgLoader5 = new ImageLoader();
			bgImgLoader5.source = textureFive;
			bgImgLoader5.width = 1270 * this.dpiScale;
			bgImgLoader5.x = 10;
			bgImgLoader5.y = 1200;
			/*bgImgLoader.left = 10;
			bgImgLoader.right = 10;
			bgImgLoader.top = 10;*/
			bgImgLoader5.maintainAspectRatio = true;
			contentPanel.addChild(bgImgLoader5);
			
			textureSix = atlas.getTexture("Skunk2");
			//textureOne = atlas.getTexture("RoadRunner1");
			bgImgLoader6 = new ImageLoader();
			bgImgLoader6.source = textureSix;
			bgImgLoader6.width = 1270 * this.dpiScale;
			bgImgLoader6.x = 10;
			bgImgLoader6.y = 1500;
			/*bgImgLoader.left = 10;
			bgImgLoader.right = 10;
			bgImgLoader.top = 10;*/
			bgImgLoader6.maintainAspectRatio = true;
			contentPanel.addChild(bgImgLoader6);
			
				textureSeven = atlas.getTexture("Speedy3");
			//textureOne = atlas.getTexture("RoadRunner1");
			bgImgLoader7 = new ImageLoader();
			bgImgLoader7.source = textureSeven;
			bgImgLoader7.width = 1270 * this.dpiScale;
			bgImgLoader7.x = 10;
			bgImgLoader7.y = 1800;
			/*bgImgLoader.left = 10;
			bgImgLoader.right = 10;
			bgImgLoader.top = 10;*/
			bgImgLoader7.maintainAspectRatio = true;
			contentPanel.addChild(bgImgLoader7);
			
			textureEight = atlas.getTexture("SpeedyG1");
			//textureOne = atlas.getTexture("RoadRunner1");
			bgImgLoader8 = new ImageLoader();
			bgImgLoader8.source = textureEight;
			bgImgLoader8.width = 1270 * this.dpiScale;
			bgImgLoader8.x = 10;
			bgImgLoader8.y = 2250;
			/*bgImgLoader.left = 10;
			bgImgLoader.right = 10;
			bgImgLoader.top = 10;*/
			bgImgLoader8.maintainAspectRatio = true;
			contentPanel.addChild(bgImgLoader8);
			
			textureNine = atlas.getTexture("Taz_Title_Img");
			//textureOne = atlas.getTexture("RoadRunner1");
			bgImgLoader9 = new ImageLoader();
			bgImgLoader9.source = textureNine;
			bgImgLoader9.width = 1270 * this.dpiScale;
			bgImgLoader9.x = 10;
			bgImgLoader9.y = 2620;
			/*bgImgLoader.left = 10;
			bgImgLoader.right = 10;
			bgImgLoader.top = 10;*/
			bgImgLoader9.maintainAspectRatio = true;
			contentPanel.addChild(bgImgLoader9);
			
			textureTen = atlas.getTexture("TAZ1");
			//textureOne = atlas.getTexture("RoadRunner1");
			bgImgLoader10 = new ImageLoader();
			bgImgLoader10.source = textureTen;
			bgImgLoader10.width = 1270 * this.dpiScale;
			bgImgLoader10.x = 10;
			bgImgLoader10.y = 2920;
			/*bgImgLoader.left = 10;
			bgImgLoader.right = 10;
			bgImgLoader.top = 10;*/
			bgImgLoader10.maintainAspectRatio = true;
			contentPanel.addChild(bgImgLoader10);
			
			textureEleven = atlas.getTexture("Taz3");
			//textureOne = atlas.getTexture("RoadRunner1");
			bgImgLoader11 = new ImageLoader();
			bgImgLoader11.source = textureEleven;
			bgImgLoader11.width = 1270 * this.dpiScale;
			bgImgLoader11.x = 10;
			bgImgLoader11.y = 3320;
			/*bgImgLoader.left = 10;
			bgImgLoader.right = 10;
			bgImgLoader.top = 10;*/
			bgImgLoader11.maintainAspectRatio = true;
			contentPanel.addChild(bgImgLoader11);
			
						
			textureTwelve = atlas.getTexture("TazMad");
			//textureOne = atlas.getTexture("RoadRunner1");
			bgImgLoader12 = new ImageLoader();
			bgImgLoader12.source = textureTwelve;
			bgImgLoader12.width = 1270 * this.dpiScale;
			bgImgLoader12.x = 10;
			bgImgLoader12.y = 3630;
			/*bgImgLoader.left = 10;
			bgImgLoader.right = 10;
			bgImgLoader.top = 10;*/
			bgImgLoader12.maintainAspectRatio = true;
			contentPanel.addChild(bgImgLoader12);
								
			textureThirteen = atlas.getTexture("TazWithRose");
			//textureOne = atlas.getTexture("RoadRunner1");
			bgImgLoader13 = new ImageLoader();
			bgImgLoader13.source = textureThirteen;
			bgImgLoader13.width = 1270 * this.dpiScale;
			bgImgLoader13.x = 10;
			bgImgLoader13.y = 3940;
			/*bgImgLoader.left = 10;
			bgImgLoader.right = 10;
			bgImgLoader.top = 10;*/
			bgImgLoader13.maintainAspectRatio = true;
			contentPanel.addChild(bgImgLoader13);	
			
			textureFourteen = atlas.getTexture("BugsBunny1");
			//textureOne = atlas.getTexture("RoadRunner1");
			bgImgLoader14 = new ImageLoader();
			bgImgLoader14.source = textureFourteen;
			bgImgLoader14.width = 1270 * this.dpiScale;
			bgImgLoader14.x = 10;
			bgImgLoader14.y = 4240;
			/*bgImgLoader.left = 10;
			bgImgLoader.right = 10;
			bgImgLoader.top = 10;*/
			bgImgLoader14.maintainAspectRatio = true;
			contentPanel.addChild(bgImgLoader14);	
			
			textureFifteen = atlas.getTexture("BugsGirl1");
			//textureOne = atlas.getTexture("RoadRunner1");
			bgImgLoader15 = new ImageLoader();
			bgImgLoader15.source = textureFifteen;
			bgImgLoader15.width = 1270 * this.dpiScale;
			bgImgLoader15.x = 10;
			bgImgLoader15.y = 4600;
			/*bgImgLoader.left = 10;
			bgImgLoader.right = 10;
			bgImgLoader.top = 10;*/
			bgImgLoader15.maintainAspectRatio = true;
			contentPanel.addChild(bgImgLoader15);	
			
		    textureSixteen = atlas.getTexture("FunnyBugsAndDaffy_TitleImage");
			//textureOne = atlas.getTexture("RoadRunner1");
			bgImgLoader16 = new ImageLoader();
			bgImgLoader16.source = textureSixteen;
			bgImgLoader16.width = 1270 * this.dpiScale;
			bgImgLoader16.x = 10;
			bgImgLoader16.y = 4900;
			/*bgImgLoader.left = 10;
			bgImgLoader.right = 10;
			bgImgLoader.top = 10;*/
			bgImgLoader16.maintainAspectRatio = true;
			contentPanel.addChild(bgImgLoader16);	
			
			textureSeventeen = atlas.getTexture("DaffyDuck1");
			//textureOne = atlas.getTexture("RoadRunner1");
			bgImgLoader17 = new ImageLoader();
			bgImgLoader17.source = textureSeventeen;
			bgImgLoader17.width = 1270 * this.dpiScale;
			bgImgLoader17.x = 10;
			bgImgLoader17.y = 5130;
			/*bgImgLoader.left = 10;
			bgImgLoader.right = 10;
			bgImgLoader.top = 10;*/
			bgImgLoader17.maintainAspectRatio = true;
			contentPanel.addChild(bgImgLoader17);
			
			textureEighteen = atlas.getTexture("Squirrels1");
			//textureOne = atlas.getTexture("RoadRunner1");
			bgImgLoader18 = new ImageLoader();
			bgImgLoader18.source = textureEighteen;
			bgImgLoader18.width = 1270 * this.dpiScale;
			bgImgLoader18.x = 10;
			bgImgLoader18.y = 5430;
			/*bgImgLoader.left = 10;
			bgImgLoader.right = 10;
			bgImgLoader.top = 10;*/
			bgImgLoader18.maintainAspectRatio = true;
			contentPanel.addChild(bgImgLoader18);
			
			textureNineteen = atlas.getTexture("MacAndToshInSnow_Squirrels");
			//textureOne = atlas.getTexture("RoadRunner1");
			bgImgLoader19 = new ImageLoader();
			bgImgLoader19.source = textureNineteen;
			bgImgLoader19.width = 1270 * this.dpiScale;
			bgImgLoader19.x = 10;
			bgImgLoader19.y = 5720;
			/*bgImgLoader.left = 10;
			bgImgLoader.right = 10;
			bgImgLoader.top = 10;*/
			bgImgLoader19.maintainAspectRatio = true;
			contentPanel.addChild(bgImgLoader19);
			
			
			textureTwenty = atlas.getTexture("FoghomLeghom");
			//textureOne = atlas.getTexture("RoadRunner1");
			bgImgLoader20 = new ImageLoader();
			bgImgLoader20.source = textureTwenty;
			bgImgLoader20.width = 1270 * this.dpiScale;
			bgImgLoader20.height = 1100 * this.dpiScale;
			bgImgLoader20.x = 10;
			bgImgLoader20.y = 5980;
			/*bgImgLoader.left = 10;
			bgImgLoader.right = 10;
			bgImgLoader.top = 10;*/
			bgImgLoader20.maintainAspectRatio = true;
			contentPanel.addChild(bgImgLoader20);
			
			textureTwentyOne = atlas.getTexture("CatAndBird");
			//textureOne = atlas.getTexture("RoadRunner1");
			bgImgLoader21 = new ImageLoader();
			bgImgLoader21.source = textureTwentyOne;
			bgImgLoader21.width = 1270 * this.dpiScale;
			bgImgLoader21.height = 1100 * this.dpiScale;
			bgImgLoader21.x = 10;
			bgImgLoader21.y = 6280;
			/*bgImgLoader.left = 10;
			bgImgLoader.right = 10;
			bgImgLoader.top = 10;*/
			bgImgLoader21.maintainAspectRatio = true;
			contentPanel.addChild(bgImgLoader21);
			
			textureTwentyTwo = atlas.getTexture("Tweety1");
			//textureOne = atlas.getTexture("RoadRunner1");
			bgImgLoader22 = new ImageLoader();
			bgImgLoader22.source = textureTwentyTwo;
			bgImgLoader22.width = 1270 * this.dpiScale;
			bgImgLoader22.height = 1100 * this.dpiScale;
			bgImgLoader22.x = 10;
			bgImgLoader22.y = 6580;
			/*bgImgLoader.left = 10;
			bgImgLoader.right = 10;
			bgImgLoader.top = 10;*/
			bgImgLoader22.maintainAspectRatio = true;
			contentPanel.addChild(bgImgLoader22);
			
			textureTwentyThree = atlas.getTexture("Pig_ThatsALLFolks");
			//textureOne = atlas.getTexture("RoadRunner1");
			bgImgLoader23 = new ImageLoader();
			bgImgLoader23.source = textureTwentyThree;
			bgImgLoader23.width = 1270 * this.dpiScale;
			bgImgLoader23.height = 1100 * this.dpiScale;
			bgImgLoader23.x = 10;
			bgImgLoader23.y = 6880;
			/*bgImgLoader.left = 10;
			bgImgLoader.right = 10;
			bgImgLoader.top = 10;*/
			bgImgLoader23.maintainAspectRatio = true;
			contentPanel.addChild(bgImgLoader23);
			
			
			
			var theLayout: VerticalLayout = new VerticalLayout();
			theLayout.gap = 2;
			theLayout.horizontalAlign = VerticalLayout.HORIZONTAL_ALIGN_CENTER;
			theLayout.manageVisibility = true;
			this.layout = theLayout;
			//this.verticalScrollPolicy = ScrollContainer.SCROLL_POLICY_ON;
			this.snapScrollPositionsToPixels = true;
			////for (var i: int = 0; i < 100; i++) {
			//var size: Number = (1) * this.dpiScale;
			//	var quad: Quad = new Quad(270, 300, 0xff8800);
			//   
			//	
			//	this.addChild(quad);
			//}
			
			var screenAButton: Button;
			screenAButton = new Button();
			screenAButton.label = "Home";
			screenAButton.width = 270;
			
				screenAButton.height =30;
		
			this.addChild(screenAButton);
			screenAButton.addEventListener(Event.TRIGGERED, handlerScreenAButtonClick);
			var screenBButton: Button;
			screenBButton = new Button();
			screenBButton.label = "LooneyTunes Images";
			screenBButton.width = 270;
				screenBButton.height = 30;
			this.addChild(screenBButton);
			screenBButton.addEventListener(Event.TRIGGERED, handlerScreenBButtonClick);
			
			var screenCButton: Button;
			screenCButton = new Button();
			screenCButton.label = "LooneyTunes Videos";
			screenCButton.width = 270;
				screenCButton.height = 30;
			this.addChild(screenCButton);
			screenCButton.addEventListener(Event.TRIGGERED, handlerScreenCButtonClick);
			
			var screenDButton: Button;
			screenDButton = new Button();
			screenDButton.label = "LooneyTunes Music";
			screenDButton.width = 270;
				screenDButton.height = 30;
			this.addChild(screenDButton);
			screenDButton.addEventListener(Event.TRIGGERED, handlerScreenDButtonClick);
			
			var screenEButton: Button;
			screenEButton = new Button();
			screenEButton.label = "About LooneyTunes";
			
			screenEButton.width = 270;
				screenEButton.height = 30;
			this.addChild(screenEButton);
			screenEButton.addEventListener(Event.TRIGGERED, handlerScreenEButtonClick);
			
			
				
		}
				private function stageResized(e: Event): void {
			//this.width = this.stage.stageWidth;
			//this.height = this.stage.stageHeight;
		/*	bgImgLoader.width =300;
			bgImgLoader.height = 300;
			bgImgLoader2.width =300;
			bgImgLoader2.height = 300;
			bgImgLoader3.width =300;
			bgImgLoader3.height = 300;	
			bgImgLoader4.width =300;
			bgImgLoader4.height = 300;
			bgImgLoader5.width =300;
			bgImgLoader5.height = 300;
			bgImgLoader6.width =300;
			bgImgLoader6.height = 300;
			bgImgLoader7.width =300;
			bgImgLoader7.height = 300;
			bgImgLoader8.width =300;
			bgImgLoader8.height = 300;
			bgImgLoader9.width =300;
			bgImgLoader9.height = 300;
			bgImgLoader10.width =300;
			bgImgLoader10.height = 300;
			bgImgLoader11.width =300;
			bgImgLoader11.height = 300;
			bgImgLoader12.width =300;
			bgImgLoader12.height = 30000;*/
		}
	/*	private function HomeImageClick(e:Event): void {
			
			assetMgr.playSound("Intro");
			trace("image clicked");
		}*/
		
		private function handlerScreenBButtonClick(e: Event): void {
			this.dispatchEventWith("showScreenB");
					//assetMgr.stopSound("Intro");
		}
		private function handlerScreenCButtonClick(e: Event): void {
			this.dispatchEventWith("showScreenC");
		}
		private function handlerScreenDButtonClick(e: Event): void {
			this.dispatchEventWith("showScreenD");
		}
			private function handlerScreenEButtonClick(e: Event): void {
			this.dispatchEventWith("showScreenE");
		}
			private function handlerScreenAButtonClick(e: Event): void {
			//this.dispatchEventWith("showScreenA");
			
					trace("A btn clicked");
		}
			private function handleAssetsLoading(ratioLoaded: Number): void {
			trace("handleAssetsLoading: " + ratioLoaded);
			if (ratioLoaded == 1) {
					//assetMgr.stopSound("Intro");
				
				}
				
			
			
		}
	}
	
}
