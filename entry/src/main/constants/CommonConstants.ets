
import { NewsTypeBean } from '../bean/MainBean'

export default  class CommonConstants{

   static readonly TABS_TYPES:Array<NewsTypeBean>=
    [
      {id:0,name:"首页",selectIcon:$r('app.media.ic_home_select'),nonSelectIcon:$r('app.media.ic_home_non_select')},
      {id:1,name:"体系",selectIcon:$r('app.media.ic_system_select'),nonSelectIcon:$r('app.media.ic_system_non_select')},
      {id:2,name:"导航",selectIcon:$r('app.media.ic_navi_select'),nonSelectIcon:$r('app.media.ic_navi_non_select')},
      {id:3,name:"项目",selectIcon:$r('app.media.ic_project_select'),nonSelectIcon:$r('app.media.ic_project_non_select')},
      {id:4,name:"我的",selectIcon:$r('app.media.ic_mine_select'),nonSelectIcon:$r('app.media.ic_mine_non_select')},
    ]


}


