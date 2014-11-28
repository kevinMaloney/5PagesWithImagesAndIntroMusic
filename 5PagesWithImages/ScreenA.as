package {	
	import starling.display.Sprite;
	import feathers.controls.PanelScreen;
	import starling.events.Event;
	import feathers.controls.Button;
	//import feathers.controls.Screen;
	import feathers.controls.Panel;
	
	import feathers.layout.VerticalLayout;
	import feathers.events.FeathersEventType;
	import feathers.controls.ScrollContainer;
	import feathers.controls.ScrollText;
	import feathers.controls.Button;
	import starling.events.Event;
	import Utils;
	import feathers.controls.ImageLoader;

	import starling.textures.Texture;
	import starling.textures.TextureAtlas;
	import starling.display.Image;
	import starling.utils.AssetManager;
	import flash.display.BitmapData;
	import flash.display.Bitmap;
		import feathers.layout.AnchorLayout;
	import feathers.layout.AnchorLayoutData;
	
	import starling.display.Quad;

	public class ScreenA extends PanelScreen {
        
		[Embed(source = "sprites/LooneyImages.xml", mimeType = "application/octet-stream")]
	
		public static const ATLAS_XML: Class;
		[Embed(source = "sprites/LooneyImages.png")]
		public static const ATLAS_TEXTURE: Class;
		
		private var atlas: TextureAtlas;
		private var atlasTexture: Texture;
		private var bgTexture: Texture;
		private var bgImgLoader: ImageLoader;
		//private var button: Button;
		private var contentPanel: Panel;
		//private var buttonPanel: Panel;
		//private var assetMgr: AssetManager;
		
		
		public function ScreenA() {
			trace("An object of ScreenA has has created");
			//super();
			this.addEventListener(FeathersEventType.INITIALIZE, initializeHandler);
		}
		private function initializeHandler(): void {
			trace("ScreenA object initialized");
			this.removeEventListener(FeathersEventType.INITIALIZE, initializeHandler);
			this.headerProperties.title = "LooneyTunes Home";
				
			
			//this.stage.addEventListener(Event.RESIZE, stageResized);
			/*assetMgr = new AssetManager();
			assetMgr.verbose = true;
			assetMgr.enqueue(Utils);
			assetMgr.loadQueue(handleAssetsLoading);*/
			
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
			
			
			
			
			bgTexture = atlas.getTexture("TitleImage5");
			bgImgLoader = new ImageLoader();
			bgImgLoader.source = bgTexture;
			bgImgLoader.width = 1250 * this.dpiScale;
			bgImgLoader.x = 10;
			bgImgLoader.y = 10;
			/*bgImgLoader.left = 10;
			bgImgLoader.right = 10;
			bgImgLoader.top = 10;*/
			bgImgLoader.maintainAspectRatio = true;
			contentPanel.addChild(bgImgLoader);
			
			var theLayout: VerticalLayout = new VerticalLayout();
			theLayout.gap = 2;
			theLayout.horizontalAlign = VerticalLayout.HORIZONTAL_ALIGN_CENTER;
			theLayout.manageVisibility = true;
			this.layout = theLayout;
			this.verticalScrollPolicy = ScrollContainer.SCROLL_POLICY_ON;
			this.snapScrollPositionsToPixels = true;
			////for (var i: int = 0; i < 100; i++) {
			//var size: Number = (1) * this.dpiScale;
			//	var quad: Quad = new Quad(250, 300, 0xff8800);
			//   
			//	
			//	this.addChild(quad);
			//}
			
			var screenAButton: Button;
			screenAButton = new Button();
			screenAButton.label = "Home";
			screenAButton.width = 200;
				screenAButton.height =30;
		
			this.addChild(screenAButton);
			screenAButton.addEventListener(Event.TRIGGERED, handlerScreenAButtonClick);
			var screenBButton: Button;
			screenBButton = new Button();
			screenBButton.label = "LooneyTunes Images";
			screenBButton.width = 200;
				screenBButton.height = 30;
			this.addChild(screenBButton);
			screenBButton.addEventListener(Event.TRIGGERED, handlerScreenBButtonClick);
			
			var screenCButton: Button;
			screenCButton = new Button();
			screenCButton.label = "LooneyTunes Videos";
			screenCButton.width = 200;
				screenCButton.height = 30;
			this.addChild(screenCButton);
			screenCButton.addEventListener(Event.TRIGGERED, handlerScreenCButtonClick);
			
			var screenDButton: Button;
			screenDButton = new Button();
			screenDButton.label = "LooneyTunes Music";
			screenDButton.width = 200;
				screenDButton.height = 30;
			this.addChild(screenDButton);
			screenDButton.addEventListener(Event.TRIGGERED, handlerScreenDButtonClick);
			
			var screenEButton: Button;
			screenEButton = new Button();
			screenEButton.label = "About LooneyTunes";
			
			screenEButton.width = 200;
				screenEButton.height = 30;
			this.addChild(screenEButton);
			screenEButton.addEventListener(Event.TRIGGERED, handlerScreenEButtonClick);
			
			
		}
/*				private function stageResized(e: Event): void {
			this.width = this.stage.stageWidth;
			this.height = this.stage.stageHeight;
			bgImgLoader.width = this.width;
			bgImgLoader.height = this.height;
		}
		*/
		private function handlerScreenBButtonClick(e: Event): void {
			this.dispatchEventWith("showScreenB");
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
			this.dispatchEventWith("showScreenA");
		}
	}
	
}
