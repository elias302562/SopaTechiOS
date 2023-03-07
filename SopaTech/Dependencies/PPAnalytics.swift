protocol PPAnalytics {
    func logEvent()
}

struct PPAnalyticsImpl: PPAnalytics {
    func logEvent() {
        //mock
    }
}
