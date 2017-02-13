CXX = cc
CXXFLAGS = -std=c++11
LDFLAGS = -lstdc++ -lz

SRCDIR = src
OBJDIR = obj
BINDIR = bin

SOURCES = $(wildcard $(SRCDIR)/*.cpp)
OBJECTS = $(SOURCES:$(SRCDIR)/%.cpp=$(OBJDIR)/%.o)

# Platform Specific Boost Libraries
UNAME_S := $(shell uname -s)
ifeq ($(UNAME_S),Linux)
	LDFLAGS += -lboost_system -lboost_filesystem
else
	LDFLAGS += -lboost_system-mt -lboost_filesystem-mt
endif

$(BINDIR)/ezflash: $(OBJECTS)
	@mkdir -p $(@D)
	$(CXX) $(CXXFLAGS) -o $@ $(LDFLAGS) $(OBJECTS)

$(OBJDIR)/%.o: $(SRCDIR)/%.cpp
	@mkdir -p $(@D)
	$(CXX) $(CXXFLAGS) -I$(SRCDIR) -c $< -o $@

.PHONY: clean

clean:
	rm -rf $(BINDIR) $(OBJDIR)
