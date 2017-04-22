//
//  EventLine.swift
//  ManagementEvents
//
//  Created by Cntt28 on 4/22/17.
//  Copyright © 2017 Cntt28. All rights reserved.
//

import Foundation

class EventLine{

    var name: String
    var events: [Event]
    
    init(named: String, includeEvents: [Event])
    {
        name = named
        events = includeEvents
    }
    
    class func eventLines() -> [EventLine]
    {
        return [self.Monday(), self.Tuesday(), self.Wednesday(), self.Thursday(), self.Friday(), self.Saturday(), self.Sunday()]
    }
    
    private class func Monday() -> EventLine
    {
        var events = [Event]()
        
        events.append(Event(titled: "Chạy bộ", details: "Chạy bộ giúp cơ thể khoẻ mạnh"))
        events.append(Event(titled: "Ăn sáng", details: "Bổ sung cho cơ thể nhiều chất dinh dưỡng"))
        events.append(Event(titled: "Đi học", details: "Đi học vào lúc 7h30"))
        events.append(Event(titled: "Làm bài tập", details: "Giải hết các bài tập trong ngày"))
        events.append(Event(titled: "Chơi thể thao", details: "Chơi bóng đá lúc 16h30 với team"))
        events.append(Event(titled: "Ăn tối", details: "Ăn tối cùng gia đình lúc 19h30"))
        events.append(Event(titled: "Ôn bài", details: "Ôn lại bài tập và chuẩn bị cho giấc ngủ"))
        events.append(Event(titled: "Chơi game", details: "Chơi game để giải trí"))
        
        return EventLine(named: "Monday", includeEvents: events)
    }
    
    private class func Tuesday() -> EventLine
    {
        var events = [Event]()
        
        events.append(Event(titled: "Chạy bộ", details: "Chạy bộ giúp cơ thể khoẻ mạnh"))
        events.append(Event(titled: "Ăn sáng", details: "Bổ sung cho cơ thể nhiều chất dinh dưỡng"))
        events.append(Event(titled: "Đi học", details: "Đi học vào lúc 7h30"))
        events.append(Event(titled: "Làm bài tập", details: "Giải hết các bài tập trong ngày"))
        events.append(Event(titled: "Chơi thể thao", details: "Chơi bóng đá lúc 16h30 với team"))
        events.append(Event(titled: "Ăn tối", details: "Ăn tối cùng gia đình lúc 19h30"))
        events.append(Event(titled: "Ôn bài", details: "Ôn lại bài tập và chuẩn bị cho giấc ngủ"))
        
        return EventLine(named: "Tuesday", includeEvents: events)
    }
    
    private class func Wednesday() -> EventLine
    {
        var events = [Event]()
        
        events.append(Event(titled: "Chạy bộ", details: "Chạy bộ giúp cơ thể khoẻ mạnh"))
        events.append(Event(titled: "Ăn sáng", details: "Bổ sung cho cơ thể nhiều chất dinh dưỡng"))
        events.append(Event(titled: "Đi học", details: "Đi học vào lúc 7h30"))
        events.append(Event(titled: "Làm bài tập", details: "Giải hết các bài tập trong ngày"))
        events.append(Event(titled: "Chơi thể thao", details: "Chơi bóng đá lúc 16h30 với team"))
        events.append(Event(titled: "Ăn tối", details: "Ăn tối cùng gia đình lúc 19h30"))
        events.append(Event(titled: "Ôn bài", details: "Ôn lại bài tập và chuẩn bị cho giấc ngủ"))
        
        return EventLine(named: "Wednesday", includeEvents: events)
    }
    
    private class func Thursday() -> EventLine
    {
        var events = [Event]()
        
        events.append(Event(titled: "Chạy bộ", details: "Chạy bộ giúp cơ thể khoẻ mạnh"))
        events.append(Event(titled: "Ăn sáng", details: "Bổ sung cho cơ thể nhiều chất dinh dưỡng"))
        events.append(Event(titled: "Đi học", details: "Đi học vào lúc 7h30"))
        events.append(Event(titled: "Làm bài tập", details: "Giải hết các bài tập trong ngày"))
        events.append(Event(titled: "Chơi thể thao", details: "Chơi bóng đá lúc 16h30 với team"))
        events.append(Event(titled: "Ăn tối", details: "Ăn tối cùng gia đình lúc 19h30"))
        events.append(Event(titled: "Ôn bài", details: "Ôn lại bài tập và chuẩn bị cho giấc ngủ"))
        
        return EventLine(named: "Thursday", includeEvents: events)
    }
    
    private class func Friday() -> EventLine
    {
        var events = [Event]()
        
        events.append(Event(titled: "Chạy bộ", details: "Chạy bộ giúp cơ thể khoẻ mạnh"))
        events.append(Event(titled: "Ăn sáng", details: "Bổ sung cho cơ thể nhiều chất dinh dưỡng"))
        events.append(Event(titled: "Đi học", details: "Đi học vào lúc 7h30"))
        events.append(Event(titled: "Làm bài tập", details: "Giải hết các bài tập trong ngày"))
        events.append(Event(titled: "Chơi thể thao", details: "Chơi bóng đá lúc 16h30 với team"))
        events.append(Event(titled: "Ăn tối", details: "Ăn tối cùng gia đình lúc 19h30"))
        events.append(Event(titled: "Ôn bài", details: "Ôn lại bài tập và chuẩn bị cho giấc ngủ"))
        
        return EventLine(named: "Friday", includeEvents: events)
    }
    
    private class func Saturday() -> EventLine
    {
        var events = [Event]()
        
        events.append(Event(titled: "Chạy bộ", details: "Chạy bộ giúp cơ thể khoẻ mạnh"))
        events.append(Event(titled: "Ăn sáng", details: "Bổ sung cho cơ thể nhiều chất dinh dưỡng"))
        events.append(Event(titled: "Đi học", details: "Đi học vào lúc 7h30"))
        events.append(Event(titled: "Làm bài tập", details: "Giải hết các bài tập trong ngày"))
        events.append(Event(titled: "Chơi thể thao", details: "Chơi bóng đá lúc 16h30 với team"))
        events.append(Event(titled: "Ăn tối", details: "Ăn tối cùng gia đình lúc 19h30"))
        events.append(Event(titled: "Ôn bài", details: "Ôn lại bài tập và chuẩn bị cho giấc ngủ"))
        
        return EventLine(named: "Saturday", includeEvents: events)
    }
    
    private class func Sunday() -> EventLine
    {
        var events = [Event]()
        
        events.append(Event(titled: "Chạy bộ", details: "Chạy bộ giúp cơ thể khoẻ mạnh"))
        events.append(Event(titled: "Ăn sáng", details: "Bổ sung cho cơ thể nhiều chất dinh dưỡng"))
        events.append(Event(titled: "Đi học", details: "Đi học vào lúc 7h30"))
        events.append(Event(titled: "Làm bài tập", details: "Giải hết các bài tập trong ngày"))
        events.append(Event(titled: "Chơi thể thao", details: "Chơi bóng đá lúc 16h30 với team"))
        events.append(Event(titled: "Ăn tối", details: "Ăn tối cùng gia đình lúc 19h30"))
        events.append(Event(titled: "Ôn bài", details: "Ôn lại bài tập và chuẩn bị cho giấc ngủ"))
        
        return EventLine(named: "Sunday", includeEvents: events)
    }
}
