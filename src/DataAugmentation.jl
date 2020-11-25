module DataAugmentation

using ColorBlendModes
using CoordinateTransformations
using ImageDraw
using Images
using Images: Colorant, permuteddimsview
using ImageTransformations
using ImageTransformations: center, _center, box_extrapolation, warp!
using Interpolations
using LinearAlgebra: I
using Parameters
using Rotations
using Setfield
using StaticArrays


include("./base.jl")
include("./wrapper.jl")
include("./buffered.jl")
include("./sequence.jl")
include("./utils/draw.jl")
include("./items/arrayitem.jl")
include("./projective/base.jl")
include("./projective/bounds.jl")
include("./projective/compose.jl")
include("./projective/crop.jl")
include("./projective/affine.jl")
include("./items/image.jl")
include("./items/keypoints.jl")
include("./items/mask.jl")

export Item,
    Transform,
    ArrayItem,
    MapElem,
    Identity,
    Sequence,
    Project,
    Image,
    Keypoints,
    Polygon,
    MaskMulti,
    MaskBinary,
    BoundingBox,
    ScaleKeepAspect,
    ScaleRatio,
    itemdata,
    CenterCrop,
    RandomCrop,
    ScaleFixed,
    Rotate,
    RandomResizeCrop,
    CenterResizeCrop,
    Buffered,
    BufferedThreadsafe,
    apply,
    Reflect,
    FlipX,
    FlipY,
    PinOrigin,
    apply!,
    showitem


end # module
