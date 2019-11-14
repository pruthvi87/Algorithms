class MeetingRooms {
    
    public func canAttendAllMeetings(_ meeting: [[Int]]) -> Int {
        
        let startTimes = meeting.map{return $0.first!}
        let endTimes = meeting.map{return $0.last!}
        
        var index = 0
        var counter = 1
        
        while (index + 1) < startTimes.count {
            
            if startTimes[index + 1] < endTimes[index] {
               
            } else {
                 counter += 1
            }
            index += 1
        }
        
        return counter
    }
}

let meetingTimes = [[0,30], [5,10], [15, 20]]
print(MeetingRooms().canAttendAllMeetings(meetingTimes))
