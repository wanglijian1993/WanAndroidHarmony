import { MainView } from '../views/MainView'
@Entry
@Component
struct Index {
  @State message: string = 'Hello World'

  build() {
    Column(){
      MainView()
    }
  }
}