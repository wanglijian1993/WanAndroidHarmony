import { NewsTypeBean } from '../../bean/MainBean';
import Const  from '../../constants/CommonConstants';
import MainContent from './MainContent';
@Component
export struct MainView{

@State currentIndex:number=0;
@State tabsType:Array<NewsTypeBean>=Const.TABS_TYPES
tabControl:TabsController = new TabsController()
  @Builder TabBuilder(title:string,targetIndex:number,selectedImg:Resource,normalImg : Resource){
    Column(){
      Image(this.currentIndex==targetIndex ? selectedImg : normalImg)
        .size({ width: 25, height: 25 })
      Text(title)
        .fontColor(this.currentIndex === targetIndex ? $r('app.color.main_menu_select_color') :$r('app.color.main_menu_non_select_color'))
    }

  }

  build(){
    Tabs({barPosition:BarPosition.End,controller:this.tabControl}){
      ForEach(this.tabsType,(item:NewsTypeBean,index:number)=>{
        TabContent(){
           Column(){
             MainContent({content:item.name})
           }
        }
        .tabBar(this.TabBuilder(item.name,index,item.selectIcon,item.nonSelectIcon))
      },(item:NewsTypeBean)=>JSON.stringify(item))
    }
    
  }

}